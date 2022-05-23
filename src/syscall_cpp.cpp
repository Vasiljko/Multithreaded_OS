//
// Created by os on 5/16/22.
//

#include "../h/syscall_cpp.hpp"


void* operator new (size_t sz){
    return mem_alloc(sz);
}
void operator delete (void* p){
    mem_free(p);
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

int Thread::start(){
    if(myHandle != nullptr)return -2; // start method has been initiated in the past
    int status = thread_create(&myHandle, runWrapper, this);
    return status;
}

void Thread::dispatch(){
    thread_dispatch();
}

void Thread::runWrapper(void *arg) {
    Thread* thr = (Thread*)arg;
    if(!thr)return;
    if(thr->body){
        thr->body(thr->arg);
    }else{
        thr->run();
    }
    //dispatch();
}

Thread::Thread(){

}

Thread::~Thread() {
    if(myHandle)delete myHandle;
    myHandle = nullptr;
    body = nullptr;
    arg = nullptr;
}
