#include "stdio.h"
#include "iostream"
#include "thread"
#include "atomic"
#define N 1000000
std:: atomic<long> sum(0);

void T_sum() { for (int i = 0; i < N; i++) sum++; }

int main() {
    std::thread t1(T_sum);
    std::thread t2(T_sum);
    // T_sum();
    t1.join();
    t2.join();
    std::cout<<sum<<'\n';
    //printf("sum = %ld\n", sum);
}