## 多线程 ##
### 多线程地址空间 ###
多线程的地址空间主要在空闲区中进行多栈处理，即每个线程分配一个栈。\
同时，在线程切换时和进程的上下文切换相似，都是保存状态后切换。

### 多线程竞态 ###
```cpp
int volatile sum=0; //不允许优化

void T_sum(){
    for(int i=0;i<(int)1e6;i++){
        sum++;
    }
}
```
如果用两个线程执行上述代码，由于sum++是非原子操作，即可分为
```asm
    load sum
    add 1 sum
    store sum
```
当线程T1读取到sum时，进程切换到T2后，T2也会读取到sum，此时T1和T2读取到同一个数值的sum，但是一共进行了两次add操作，最后sum=sum+1。所以会导致错误。

### 锁 ###

#### 1. 简单的单变量互斥锁？ ###

```cpp
int lock=0;

//上锁
void Lock(){
    while(lock ==1);
    lock = 1;
}

//解锁
void UnLock(){
    lock=0;
}

```
由于``while(lock==1)``到``lock =1``的临界过程中，T1未执行``lock =1``就切换到了T2执行，此时T2也能获得锁。故无法实现互斥。

#### 2. 自旋锁 ###

```cpp
//old_ptr是锁
//new_是进程所拥有的东西
//只有当new_换取到了锁=0，才能执行线程
int test_and_set(int *old_ptr,int new_){
    int old=*old_ptr;
    *old_ptr=new_;
    //这里和xchg只少了一步 new_=old
    //本质上也是想知道换出来的锁是什么
    return old;
}

lock=0;

void Lock(){
    //想上锁就得等到返回为0时
    while(test_and_set(&lock,1)!=0);
}

void UnLock(){
    lock=0;
}
```
锁是共享的，当T1进入后，若T2提前加锁，则会返回到加锁的结果。相当于二次检查了lock \
\
锁相当于一个key，每个线程有自己的key_，只有当线程用自己的key_换取到key后，才能上锁。而这个换取的过程是原子的。\
\
在X86中，``test_and_set``的过程由xchg指令实现，其原子性由硬件实现，即当该指令执行时，锁住总线，执行后再解锁总线。

互斥锁还有一种实现方法
```cpp



int compare_swap(int volatile *ptr, int new_) {
    asm volatile(
        //xchg本身就是原子性的
        " xchg %1, %2\n"
        : "+m"(*ptr), "+r"(new_)
        :
        : "memory"
    );
    return new_;
}

int lock=0;

void Lock(){
    while(compare_swap(&lock,1)==1);
}

void Unlock(){
    compare_swap(&lock,0);
}

```

### LL/SC 锁 ###
```cpp

int LL(int *lock){
    return *lock;
}

//返回是否获得🔒
int SC(int *lock,int new_){
    if(/*在LL之后到现在lock没有改变*/){
        //🔒住
        *lock=new_;
        return 1;
    }
    else{
        return 0;
    }
}
int volatile lock_=0;

void lock(){
    while(1){
        //等待锁空闲
        while(LL(&lock_)==1);
        if(SC(&lock_,1)==1)
            return;
    }
}

void unlock(){
    lock=0;
}
```
事实上LL/SC锁和自旋锁也相似，首先用LL将🔒加载出来，当🔓时，然后尝试将🔒通过SC写入到锁中，若🔒被更新过了，那就写入失败。在实现的过程中LL,SC是原子性的。

### 休眠代替自旋 🔒 ###
```cpp
typedef struct lock_t{
    int flag;
    int guard;
    queue_t *q;
}lock_t;

lock_t m;

int test_and_set(int *old_ptr,int new_){
    int old=*old_ptr;
    *old_ptr=new_;
    return old;
}

void lock(){
    //获取调度权限
    while(test_and_set(&(m.guard),1)==1);
    //当线程获取到guard后，尝试获取锁
    if(m.flag==0){
        m.flag=1;
        m.guard=0;//释放掉这个guard，让其他线程获取它，以便进行休眠。
    }
    else{
        queue_add(m.q,getpid());
        m.guard=0;
        park();//休眠
    }
}

void unlock(){
    //获取调度权限
    while(test_and_set(&(m.guard),1)==1);
    if(queue_empty(m.q)){
        m.flag=0;
    }
    else{
        unpark(m.q.pop());//唤醒下一个线程。
    }
    m.guard=0;
}
//队列确保了每一次竞态条件下，只有一个线程在获取锁，执行，提高了CPU的使用率。
```
这里的guard可以认为是一个门卫，当线程想要获取🔒或🔓的时候，线程先等待到自己与这个门卫的会面，即``while(test_and_set(&(m.guard),1)==1);``。

🔒:此时若门卫拿着🔒，就将🔒分配给这个线程``m.flag=1;``,然后释放掉门卫``m.guard=0;``,让这个门卫和下一个线程会面。\
若门卫没有🔒，则让该线程回去睡觉。

🔓:若某个线程想要释放锁，它先要争取到和门卫的会面，若此时没有想要这把锁的线程，则将锁交还给门卫。若此时有想要这把锁的进程，则将这把锁给这个进程。在这里锁传递实际上是线程切换，锁依旧保留，但线程被切换了，所以锁也传递给了下一个线程，而这个线程从``pack()``处返回，即从lock中得到返回，即得到了锁。


### 条件变量 ###

条件变量是一种控制多线程同步的手段，总的来说就是线程获得🔒后，先判断是否满足线程执行的要求，如果不满足就使用条件变量进行等待，将🔒释放，等待其他线程执行完毕将该线程唤醒后，判断是否满足，若满足就继续执行，否则就继续等待。
```cpp
//条件变量的框架

bool flag1();
bool flag2();

condition_variable cv;
mutex mtx;
//线程1
void T_A(){
    unique_lock<mutex> lock(mtx);
    while( !flag1()){
        cv.wait(lock);
    }
    //执行线程
    //修改状态
    //唤醒线程
    cv.notify_one();
    lock.unlock();
}
//线程2
void T_B(){
    unique_lock<mutex> lock(mtx);
    while( !flag2()){
        cv.wait(lock);
    }
    //执行线程
    //修改状态
    //唤醒线程
    cv.notify_one();
    lock.unlock();
}
```
需要注意的是，notify_one只能唤醒单个线程，若有两个以上的线程在等待同一个条件变量，需要利用notify_all进行广播唤醒。同时要注意线程是否能被执行，若某个线程一直等待被执行却从未被唤醒，则会使线程陷入死锁。