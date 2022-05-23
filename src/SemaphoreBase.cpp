//
// Created by os on 5/20/22.
//

#include "../h/SemaphoreBase.hpp"
#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"

SemaphoreBase::SemaphoreBase(int v):val(v), head(nullptr), tail(nullptr){

}

void SemaphoreBase::contextSwitchWithoutSavingRunningNodeInScheduler(){
    pushRegisters();

    TCB* old = TCB::running;
    TCB::numberOfActiveThreads--;

    TCB::running = Scheduler::get()->data;
    TCB::contextSwitch(&old->context, &TCB::running->context);

    popRegisters();
}

int SemaphoreBase::close() {
    if(closed)return -2;
    closed = 1;

    if(!head)return 0;
    while(head) {
        head->waitingWhileClosedSem = 1;
        int status = unblock();
        if(status<0)return status;
    }

    return 0;
}

int SemaphoreBase::wait() {
    if(--val < 0) {
        int status = block();
        return status;
    }
    return 0;
}

int SemaphoreBase::signal() {
    if(++val <= 0) {
        int status = unblock();
        return status;
    }
    return 0;
}

int SemaphoreBase::block(){
    TCB* old = TCB::running;
    SemaphoreNode* node = SemaphoreNode::createNode(old, nullptr);//new SemaphoreNode(old, nullptr);
    if(tail){
        tail->next = node;
        tail = node;
    }else{
        head = tail = node;
    }

    contextSwitchWithoutSavingRunningNodeInScheduler();
    int status = node->waitingWhileClosedSem;
    node->data = nullptr;
    node->next = nullptr;
    SemaphoreNode::deleteNode(node);

    if(status == 0)return 0;
    return -1;
}

int SemaphoreBase::unblock(){
    if(!head)return -1;

    SemaphoreNode* elem = head;
    head = head->next;

    if(!head) tail = nullptr;

    Scheduler::put(&elem->data->schedulerNode);
    return 0;
}
