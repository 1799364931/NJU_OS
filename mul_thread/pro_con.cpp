#include <iostream> 
#include <thread>
#include <mutex> 
#include <condition_variable> 
#include <vector> 
#include <cassert> 
#include <chrono> 
#include <random>
#define MAX 100
#define LENGTH 100
using namespace std;

vector<char> buffer(MAX);
int count=0;
int put_pos=0;
int get_pos=0;
mutex mtx;
condition_variable empty_,fill_;


random_device rd;
 mt19937 gen(rd());
 uniform_int_distribution<> dis(1, 100);
void put_(){
    assert(count<MAX);
    buffer[put_pos]='(';
    put_pos=(put_pos+1)%MAX;
    cout<<'(';
    count++;
}

void get_(){
    assert(count>0);
    get_pos=(get_pos+1)%MAX;
    cout<<')';
    count--;
}

void producer(){
    for(int i=0;i<LENGTH;i++){
        unique_lock<mutex> lock(mtx);
        while(count==MAX){
            empty_.wait(lock);
        }
        put_();
        fill_.notify_one(); //唤醒的时间比循环执行完毕的时间要长，所以当LENGTH 和MAX 较小时候，会有确定的结果 即 MAX个( MAX个)这样的循环
        lock.unlock();
        //this_thread::sleep_for(chrono::milliseconds(dis(gen)));
    }
}

void consumer(){
    for(int i=0;i<LENGTH;i++){
        unique_lock<mutex> lock(mtx);
        while(count==0){
            fill_.wait(lock);
        }
        get_();

        empty_.notify_one();
        lock.unlock();
        //this_thread::sleep_for(chrono::milliseconds(dis(gen)));
    }
}

int main(){
   //如果 producer >consumer
   //那意味着 左括号数目更多
   //若没有消费者，那producer就会一直等待消费，形成死锁
   //当producer产生的数据没有超过缓冲区数目+消费者消化的数据时，不会形成死锁。


   //反之，若没有生产者，消费者会一直等待生产，形成死锁

   //可以添加一个计时器，当循环到一定次数时，直接退出线程，防止死锁。 
   
    thread t1(consumer);
    thread t2(producer);
    
    //thread t3(producer);
    t1.join();
    t2.join();
    //t3.join();
    cout<<'\n';
}
