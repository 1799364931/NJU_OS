#include "iostream"
#include "thread"
#include "mutex"
#include "condition_variable"
using namespace std;
class ZeroEvenOdd {
private:
    int n;
    condition_variable a,b,c;
    mutex mtx;
    int cnt=1;
    int cur=2;
public:
    ZeroEvenOdd(int n) {
        this->n = n;
    }

    //如果n=1 那就是01
    //如果n=2 那就是0102
    //如果n=3 那就是010203
    // printNumber(x) outputs "x", where x is an integer.
    void zero() {
        unique_lock<mutex> lock(mtx);
        while(cur!=2){
            a.wait(lock);
        }
       cout<<"0";
        cur=cnt%2;
        if(cur==1){
            c.notify_one();
        }
        else{
            b.notify_one();
        }
        lock.unlock();
    }

    void even() {
        unique_lock<mutex> lock(mtx);
        while(cur!=0){
            b.wait(lock);
        }
        cout<<cnt;
        cur=2;
        cnt++;
        a.notify_one();
        lock.unlock();
    }

    void odd() {
        unique_lock<mutex> lock(mtx);
        while(cur!=1){
            c.wait(lock);
        }
        cout<<cnt;
        cur=2;
        cnt++;
        a.notify_one();
        lock.unlock();
    }
};


int main(){
    ZeroEvenOdd z(5);
    thread t1(z.even);

}