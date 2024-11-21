#include "iostream"
#include "thread"
#include "mutex"
#include "condition_variable"
#define LENGTH(arr) (sizeof(arr) / sizeof(arr[0]))
using namespace std;

//有三个线程 不同线程打印 A B C
//要求 A->B B->C

//状态机就是 A->B B->C C->A C->B



struct rule{
    int from,ch,to;
}rules[]={
    {1,'A',2},
    {2,'B',3},
    {3,'C',4},
    {1,'B',3},
    {1,'C',4},
    {4,'A',2},
    {4,'B',3},
    {4,'C',4},
};

//同步条件
condition_variable cv;
mutex mtx;


int cur=1; //当前状态

int next(char ch){
    for(int i=0;i<LENGTH(rules);i++){
        if(rules[i].from==cur && rules[i].ch==ch){
            return rules[i].to;
        }
    }
    return 0;
}

//什么时候 当前的可以print？
//缓冲区还有空间

bool can_printf(char ch){
    return next(ch)!=0;
}

// void printfA(){
//     //获取lock
//     unique_lock<mutex> lock(mtx);
//     //等待到自己的条件
//     while()
// }

// void printfB(){

// }

// void printfC(){

// }

char roles[]={'A','B','C'};

void print_(int id){
    char role=roles[id];
  
    //while(1){
        unique_lock<mutex> lock(mtx);
        while(!can_printf(role)){
            cv.wait(lock);
        }
        putchar(role);
        cur=next(role);
        cv.notify_all();
        lock.unlock();
    //}
}



int main(){
    thread pool[3];
    // for(int i=0;i<LENGTH(roles);i++){
    //     pool[i]=thread(print_,i);
    // }

    for(int i=0;i<LENGTH(roles);i++){
        pool[i].join();
    }
     
}