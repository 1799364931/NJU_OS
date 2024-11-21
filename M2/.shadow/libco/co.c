#include "co.h"
#include <stdlib.h>
#include <string.h>
#include <setjmp.h>
#include <stdlib.h>
#define MAX_LENGTH 100
struct context{
    //registers
    
};

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
    struct co *    waiter;  // 是否有其他协程在等待当前协程
    jmp_buf context; // 寄存器现场
    //uint8_t        stack[STACK_SIZE]; // 协程的堆栈

};


struct co* current_co;
struct co* co_list[MAX_LENGTH];
int length_co_list=0;

struct co *co_start(const char *name, void (*func)(void *), void *arg) {
    struct co* new_co=malloc(sizeof(struct co));
    new_co->func=func;
    new_co->name=malloc(sizeof(char)*strlen(name));
    strcpy(new_co->name,name);
    new_co->arg=arg;
    new_co->status=CO_NEW;
    co_list[length_co_list++]=new_co;
    return NULL;
}

void co_wait(struct co *co) {
    //如果当前协程调用了 wait，那就让当前协程进行等待
    current_co->status=CO_WAITING;
    co->waiter=co;
    while(co->status!=CO_DEAD) // 如果进程co没结束，就一直等待

    free(co);
    co=NULL;
    return;
}


static inline void
stack_switch_call(void *sp, void *entry, __uint64_t arg) {
    asm volatile (
#if __x86_64__
        "movq %0, %%rsp"
        "movq %2, %%rdi"
        "jmp *%1"
          :
          : "b"((__uint64_t)sp),
            "d"(entry),
            "a"(arg)
          : "memory"
#else
        "movl %0, %%esp"
        "movl %2, 4(%0)"
        "jmp *%1"
          :
          : "b"((__uint32_t)sp - 8),
            "d"(entry),
            "a"(arg)
          : "memory"
#endif
    );
}

void co_yield() {
    int val=setjmp(current_co->context);
    if(val==0){
        //保存现场的

        
        //随机选择一个切换
        struct co* next_co=co_list[rand()%length_co_list];
        if(next_co->status==CO_RUNNING){
            longjmp(next_co->context,0);
        }
        else if(next_co->status==CO_NEW){
            void *sp;
            asm volatile(
                "movq %rsp,%0"
                :"b"(sp)
            );
            stack_switch_call(sp,next_co->func,&next_co->arg);
        }
        else if(next_co->status==CO_WAITING){

        }
        //DEAD
        else{
            return;
        }
    }
    else{
        //从别的地方返回的
        return;
    }
}
