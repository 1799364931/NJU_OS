## libco 协程库实现 

### 协程库思想
将程序运行的状态作为协程记录，以程序是状态机的思想，利用协程进行任务间的切换。在切换协程的过程中，记录上一个协程的现场，然后提取下一个协程的现场，进而完成协程切换。


### co 协程结构体

```cpp
enum co_status {
    CO_NEW = 1, // 新创建，还未执行过
    CO_RUNNING, // 已经执行过
    CO_WAITING, // 在 co_wait 上等待
    CO_DEAD,    // 已经结束，但还未释放资源
};

struct co {
    char *name;
    void (*func)(void *); // co_start 指定的入口地址和参数
    void *arg;

    enum co_status status;  // 协程的状态
    struct co * waiter;  // 是否有其他协程在等待当前协程
    jmp_buf     context; // 寄存器现场
    __uint8_t   stack[STACK_SIZE]; // 协程的堆栈  
};

struct co* current_co=NULL;
struct co* co_list[MAX_LENGTH];
int length_co_list=0;
```
<S> 犯蠢情况</s>
### co_init 实现
```cpp
__attribute__((constructor)) void co_init(){
    current_co=co_start("main",NULL,NULL);
}
```
co_init 在main开始前进行协程的初始化操作，即创建main协程，将当前运行的协程设置为main。

### co_start 实现
```cpp
struct co *co_start(const char *name, void (*func)(void *), void *arg) {
    struct co* new_co=malloc(sizeof(struct co));
    new_co->func=func;
    new_co->name=malloc(sizeof(char)*(strlen(name)+1));
    strcpy(new_co->name,name);
    new_co->arg=arg;
    new_co->status=CO_NEW;
    co_list[length_co_list++]=new_co;
    return new_co;
}
```
co_start用于创建新的协程，将新协程加入到协程列表中。

### co_yield 协程切换
协程的切换利用了`setjmp`和`longjmp`函数，利用`setjmp`记录当前状态，然后利用`longjmp`进行状态的切换。\
由于`setjmp`存在本身调用的返回和通过`longjmp`的返回，所以要利用`val`区分。\
```cpp
void co_yield() {
    int val =setjmp(current_co->context);
    if(val==0){
        int randval=rand()%(length_co_list);
        struct co* next_co=co_list[randval];
        if(next_co->status==CO_RUNNING || next_co->status==CO_WAITING){
             current_co=next_co;
           // printf("\n hehe \n");
            longjmp(next_co->context,1);
        }
        else if(next_co->status==CO_NEW ){
            current_co=next_co;
            next_co->status=CO_RUNNING;
            stack_switch_call((void*)(next_co->stack + STACK_SIZE),co_wrapper,next_co);
        }
        else{
            return;
        }
    }
    else{
        return;
    }
}
```
如果要切换到的协程已经运行过了，直接进行切换，若未运行过，则通过内嵌汇编，手动进入函数，传递参数，切换栈指针，完成首次的函数调用。\
此处完成:\
- 栈指针切换
- 参数传递
(x86-64以寄存器+栈传参，32以栈传参，所以这里两者的传参不同，前者将参数写入rdi,后者将参数压栈)
- 栈对齐
(如果不进行栈对齐，printf函数会在`movaps %xmm0,0x40(%rsp)`崩溃，这是因为`movaps`将`xmm`保存的单精度浮点数(16bytes)写入内存，而该指令对内存写入有对齐要求，因此栈必须以16位进行对齐)
- 函数跳转
```cpp
static inline void
stack_switch_call(void *sp, void *entry, void* arg) {
    asm volatile (
#if __x86_64__
        "movq %0,%%rsp\n\t"
        "movq %2,%%rdi\n\t"
        "andq $-16, %%rsp\n\t"  // Ensure stack is 16-byte aligned
        "call *%1\n\t"
          :
          : "r"(sp),
            "r"(entry),
            "r"(arg)
          : "memory"
#else
        "movl %0, %%esp\n\t"
        "andl $-16, %%esp\n\t"
        "pushl %2\n\t"  // Ensure stack is 16-byte aligned
        "call *%1\n\t"
          :
          : "b"((__uint32_t)sp),
            "d"(entry),
            "a"(arg)
          : "memory"
#endif
    );
}
```
### 协程包装
如果直接执行协程所进入的函数，那最后协程返回时需要在主函数中手动设置协程的结束。\
将协程利用函数进行包装，当协程进入时，进入包装函数，结束时，也回到包装函数，在结束后就可以直接设置结束状态，同时，更新协程列表，切换协程。\
此时尚不能释放内存，如果在协程切换前释放，则会导致`setjmp`访问空内存；如果在协程切换后释放，由于当前协程已从列表除去，所以永远不会返回到当前协程，因此后续的释放无效。\
```cpp
void co_wrapper(struct co *co) {
    co->func(co->arg);
    co->status = CO_DEAD;
    delete_co_to_list(co); //从列表中除去协程
    co_yield();
}
```
### co_wait 协程阻塞等待 
主函数要等待其他协程才能继续执行，直接利用循环进行阻塞，当协程状态为结束时，才允许当前协程继续运行。\
当该阻塞函数确定了被等待的协程已经执行完毕后，此时可以进行内存的释放。\
此处不能通过当前协程的状态进行循环判断，由于其等待的协程可以先于当前协程完成，若等待协程已经完成，则无法去除后面添加的等待情况。
```cpp
void co_wait(struct co *co) {
    current_co->status=CO_WAITING;
    co->waiter=current_co;
    while(co->status!=CO_DEAD){
        co_yield();
    }
    current_co->status=CO_RUNNING;
    free(co->name);
    free(co);
    return;
}

```


### 程序泄露检验
利用valgrind工具进行内存泄漏检测:\
`valgrind --leak-check=full ./program`  
```
 ==218508== LEAK SUMMARY:
==218508==    definitely lost: 0 bytes in 0 blocks
==218508==    indirectly lost: 0 bytes in 0 blocks
==218508==      possibly lost: 0 bytes in 0 blocks
==218508==    still reachable: 65,781 bytes in 2 blocks
==218508==         suppressed: 0 bytes in 0 blocks
==218508== Reachable blocks (those to which a pointer was found) are not shown.
```
说明程序退出时所有在程序运行时分配的内存已经被释放<s>really?</s>。\
事实上在程序退出后把`co_init`隐式地释放掉了(<s>进程都结束了肯定没了</s>)，但是如果希望显式的释放掉内存，则需要利用到`atexit()`函数，它会在main执行结束后调用其注册的函数。
```cpp
void co_cleanup() {
    if (current_co) {
        free(current_co->name);
        free(current_co);
    }
}
__attribute__((constructor)) void co_init() {
    //* 巴拉巴拉一大堆 
    atexit(co_cleanup);
}
```
此时再调用valgrind查看释放情况,程序优雅完美地释放掉了所分配的内存。
```
==219882== HEAP SUMMARY:
==219882==     in use at exit: 0 bytes in 0 blocks
==219882==   total heap usage: 415 allocs, 415 frees, 467,323 bytes allocated
==219882== 
==219882== All heap blocks were freed -- no leaks are possible
```
