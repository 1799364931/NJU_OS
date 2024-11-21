#include "iostream"
#include "thread"
#include "mutex"
#include "vector"
#define N 1000000
#define T_cnt 100
using namespace std;

typedef struct counter_t{
    int count=0;
    mutex llock[T_cnt];
    vector<int> lcount;
    mutex glock;
    int flag=1000;
}counter_t;

void update(counter_t *c, int num,int amt){
    c->llock[num].lock();
    c->lcount[num]+=amt;
    if(c->lcount[num]>=c->flag){
        c->glock.lock();
        c->count+=c->lcount[num];
        c->lcount[num]=0;
        c->glock.unlock();
    }
    c->llock[num].unlock();
}

int get_count(counter_t *c){
    int count;
    c->glock.lock();
    count = c->count;
    c->glock.unlock();
    return count;
}

void T_sum( counter_t *c ,int num){
    for(int i=0;i<N;i++){
        update(c,num,1);
    }
}

int main(){
    counter_t counter;
    counter.lcount.reserve(T_cnt);
    vector<thread> thread_pool(T_cnt);
    int i=0;
    for(auto &it:thread_pool){
        it = thread(T_sum,&counter,i++);
    }
    for(auto &it:thread_pool){
        it.join();
    }
    cout<<get_count(&counter)<<endl;
}