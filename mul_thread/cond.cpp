#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>

using namespace std;

mutex mtx;
condition_variable cv;
bool done = false;

void child() {
    cout << "child" << endl;
    {
        unique_lock<mutex> lock(mtx);
        done = true;
    }
    cv.notify_one();
}

void thr_join() {
    unique_lock<mutex> lock(mtx);
    while (!done) {
        cv.wait(lock);
    }
}

int main() {
    cout << "begin:" << endl;
    thread t1(child);
    thr_join();
    cout << "parent" << endl;
    return 0;
}
