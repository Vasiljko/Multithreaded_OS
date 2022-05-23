#ifndef SEMAPHORENODE_HPP
#define SEMAPHORENODE_HPP

#include "kernel_functions.hpp"

class TCB;
class SemaphoreNode{
    TCB* data;
    SemaphoreNode* next;
    int waitingWhileClosedSem = 0; // if Node is waiting and then semaphore is closed -> 1, after that return -1 from wait() method
    //SemaphoreNode(TCB* data, SemaphoreNode* next):data(data), next(next){}

    static SemaphoreNode* createNode(TCB* tcb, SemaphoreNode* nxt){
        SemaphoreNode* p = (SemaphoreNode*) kmem_alloc(sizeof(SemaphoreNode));
        p->data = tcb;
        p->next = nxt;
        return p;
    }

    static void deleteNode(SemaphoreNode* node){
        node->data = nullptr;
        node->next = nullptr;
        kmem_free(node);
    }

    friend class SemaphoreBase;
};

#endif