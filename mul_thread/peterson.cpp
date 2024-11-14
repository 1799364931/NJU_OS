#include "iostream"
#include "thread"
#define N 100000
#define A 1
#define B 2

int volatile a=0,b=0,turn,sum=0;


void T_A(){
    //while(1){
        a=1;
        turn =B;
        while(1){
            if(b!=1) break;
            if(turn!=B) break;
        }
        
        for(int i=0;i<N;i++){
            sum++;
        }

        a=0;
        
    //}
    
}


void T_B(){
   // while(1){
        b=1;
        turn =A;
        while(1){
            if(a!=1) break;
            if(turn!=A) break;
        }
        
        for(int i=0;i<N;i++){
            sum++;
        }

        b=0;
        
   // }
    
}

using namespace std;
int main(){

    thread t1(T_A);
    thread t2(T_B);
    t1.join();t2.join();
    cout<<sum<<'\n';
}