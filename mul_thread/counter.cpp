#include "iostream"
#include "thread"
#include "mutex"
#include "vector"
#define N 1000000
#define T_cnt 100
using namespace std;

typedef struct counter_t{
    int count=0;
    mutex mtx;
}counter_t;


void update(counter_t *c,int amt){
    c->mtx.lock();
    c->count+=amt;
    c->mtx.unlock();
}

void T_sum(counter_t *counter){
   
    for(int i=0;i<N;i++){
        update(counter,1);
    }
    
}

int main(){
    counter_t counter;
    vector<thread> thread_pool(T_cnt);
    for(auto &it:thread_pool){
        it = thread(T_sum,&counter);
    }
    for(auto &it:thread_pool){
        it.join();
    }
    cout<<counter.count<<endl;
}