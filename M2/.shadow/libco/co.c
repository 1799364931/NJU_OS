#include "co.h"
#include <stdlib.h>
#include <string.h>
#include <setjmp.h>
#include <stdlib.h>
#include <stdio.h>
#define MAX_LENGTH 100
#define STACK_SIZE 1024*4048

enum co_status {
    CO_NEW = 1, // 新创建，还未执行过
    CO_RUNNING, // 已经执行过
    CO_WAITING, // 在 co_wait 上等待
    CO_DEAD,    // 已经结束，但还未释放资源
};
//export LD_LIBRARY_PATH=/root/NJUOS/M2/libco
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


__attribute__((constructor)) void co_init(){
    current_co=malloc(sizeof(struct co));
    current_co->func=(void*)(0x80000000);
    current_co->name=malloc(sizeof(char)*5);
    strncpy(current_co->name,"main",5);
    current_co->arg=NULL;
    current_co->status=CO_RUNNING;
    co_list[length_co_list++]=current_co;
    
}

struct co *co_start(const char *name, void (*func)(void *), void *arg) {
   
    struct co* new_co=malloc(sizeof(struct co));
    new_co->func=func;
    new_co->name=malloc(sizeof(char)*(strlen(name)+1));
    strcpy(new_co->name,name);
    new_co->arg=arg;
    new_co->status=CO_NEW;
    co_list[length_co_list++]=new_co;
    
    //co_yield();
     //printf("huilai!!\n");
    return new_co;
}

void delete_co_to_list(struct co* co){
    for(int i=0;i<length_co_list;i++){
        if(co_list[i]==co){
            for(int j=i;j<length_co_list-1;j++){
                co_list[j]=co_list[j+1];
            }
            length_co_list--;
            return;
        }
    }
}

void co_wait(struct co *co) {
    //如果当前协程调用了 wait，那就让当前协程进行等待
    current_co->status=CO_WAITING;
    co->waiter=current_co;
    while(co->status!=CO_DEAD){
        co_yield();
    } // 如果进程co没结束，就一直等待
    
    delete_co_to_list(co);
    
    free(co->name);
    free(co);
   // co=NULL;
    return;
}


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
        "movl %2, 4(%0)\n\t"
        "andl $-16, %%esp\n\t"  // Ensure stack is 16-byte aligned
        "call *%1\n\t"
          :
          : "b"((__uint32_t)sp - 8),
            "d"(entry),
            "a"(arg)
          : "memory"
#endif
    );
}

void co_wrapper(struct co *co) {
    co->func(co->arg);
    co->status = CO_DEAD;
    if (co->waiter) {
        co->waiter->status = CO_RUNNING;
    }
    co_yield();
}

void co_yield() {
    int val=setjmp(current_co->context);
    if(val==0){
        //保存现场的
        //随机选择一个切换
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
       // else if(next_co->status==CO_WAITING){
            
       // }
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

