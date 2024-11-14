#include "iostream"
#include "thread"
#include "atomic"
#define N 100000

using namespace std;

int volatile lock_t=0,sum=0;

int compare_swap(int volatile *ptr, int new_) {
   //int old_;
    asm volatile(
        //xchg本身就是原子性的
        " xchg %1, %2\n"
        : "+m"(*ptr), "+r"(new_)
        :
        : "memory"
    );
    return new_;
}


void lock(){
    while(compare_swap( &lock_t,1) == 1);
}

void unlock(){
    compare_swap(&lock_t,0);
}

void T_sum(){
    lock();
    cout<<"进来了"<<endl;
    for(int i=0;i<N;i++){
        sum++;
      //  cout<<sum<<"\n";
    }
    unlock();
}

int main(){
    thread t1(T_sum);
    thread t2(T_sum);
    t1.join();t2.join();
    cout<<sum<<endl;
}

