#include "../h/List.hpp"
#include "../lib/console.h"
#include "../h/Riscv.hpp"
#include "../h/TCB.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/kernel_functions.hpp"
#include "../h/syscall_cpp.hpp"


class A {
public:
    int x;

    A(int val = 0) :x(val) {};
};

void idleFunction(void* arg){
    for(;;);
}

void enterUserMode(){
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    //Riscv::mc_sie(Riscv::SIP_SSIP);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


extern void userMain();

class userMainThread : public Thread{
public:
    void* operator new(size_t sz){
        return kmem_alloc(sz);
    }

    userMainThread():Thread(){}
    int finished = false;
    void run() override{
        userMain();
        finished = true;
    }
};


class IdleThread : public Thread{
public:
    void* operator new(size_t sz){
        return kmem_alloc(sz);
    }
    void run() override{
        for(;;);
    }
};

void getPcVaule(){
    __asm__ volatile("mv s6, ra");
    return;
}

int main() {
    __asm__ volatile("mv s4, ra");
    thread_t mainThread;
    //Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    kthread_create(&mainThread, nullptr, nullptr);

    TCB::running = mainThread;
    //kprintString("Main\n");

    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE); // TREBA MS A NE MC
    //kprintString("wtf\n");

    userMainThread *thr = new userMainThread();

    //Thread* idleThread = new IdleThread();

    //idleThread->start();

    //__asm__ volatile("li a0, 0x88");
    //__asm__ volatile("ecall");
    //__asm__ volatile("li a0, 0x1");


    enterUserMode();
    __asm__ volatile("addi sp, sp, 16");

    /*while(1){
        for(int i=0;i<10000;i++){
            for(int j=0;j<10000;j++){}
        }
        __putc('?');
        __putc('\n');

        char a = __getc();
        __putc(a);
        if(a=='x')return 0;
    }*/


     __asm__ volatile("li a0, 0x101");
     __asm__ volatile("ecall");

    /*thread_t thr = 0;
    thread_create(&thr, userMainWrapper, nullptr);
    while(!thr->isFinished())thread_dispatch();*/
    //kprintString("wtf\n");
    thr->start();
    //thr = 0;
    //kprintString("kako\n");
    while(!thr->finished)thread_dispatch();
    //kprintString("wtf\n");
    /*while(1) {
        char a = getc();
        __putc(a+30);
    }*/
    //kprintString("lmao\n");
    /*uint64 volatile sstatus = Riscv::r_sstatus();
    kprintInteger(sstatus);
    kprintString("\n je sstatus\n");*/
    getPcVaule();
    __asm__ volatile("li a0,0x99");
    __asm__ volatile("ecall");
    //kprintString("dasdad\n");
    Riscv::w_sstatus(0);
    //kprintString("xd\n");
    return 0;
}
