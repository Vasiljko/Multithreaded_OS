//
// Created by os on 5/20/22.
//

#ifndef SEMAPHOREBASE_HPP
#define SEMAPHOREBASE_HPP

#include "SemaphoreNode.hpp"
#include "kernel_functions.hpp"

class SemaphoreBase {
    int closed = 0;
    int val;
    SemaphoreNode *head, *tail;

    int block();
    int unblock();

    static void contextSwitchWithoutSavingRunningNodeInScheduler();
    static void pushRegisters();
    static void popRegisters();
public:
    SemaphoreBase(int v);

    int close();
    int wait();
    int signal();


    void *operator new(size_t size){
        void *p = kmem_alloc(size);
        return p;
    }


    friend class Riscv;
};


#endif