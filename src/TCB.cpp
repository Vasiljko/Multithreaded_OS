#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
uint64 TCB::numberOfActiveThreads = 0;

TCB *TCB::createThread(Body body, void* arg, void* stack){
    numberOfActiveThreads++;
    return (TCB*)(new TCB(body, TIME_SLICE, arg, stack));
}

void TCB::yield(){
    __asm__ volatile("ecall");
}

void TCB::dispatch(){
    TCB* old = running;

    if(!old->isFinished()){
        Scheduler::put(&old->schedulerNode);
    }else{
        numberOfActiveThreads--;
    }

    running = Scheduler::get()->data;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

    Riscv::popSppSpie();
    __asm__ volatile("addi sp, sp, 16");
    running->body((void*)running->context.arg);
    running->setFinished(true);
    thread_dispatch();
}

TCB::~TCB(){
    kmem_free(stack);
}

TCB::TCB(TCB::Body body, uint64 timeSlice, void *arg, void *stack) :
    body(body),
    stack((uint64*)stack),
    context({
            (uint64)&threadWrapper,
            stack != nullptr ? (uint64)stack : 0,
            arg != nullptr ? (uint64)arg : 0
            }),
    schedulerNode(this, nullptr),
    finished(false),
    timeSlice(timeSlice)
{
    if(body != nullptr)Scheduler::put(&schedulerNode);
}

