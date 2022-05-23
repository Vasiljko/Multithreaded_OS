#include "../h/Scheduler.hpp"

SchedulerNode* Scheduler::head, *Scheduler::tail;

SchedulerNode *Scheduler::get() {
    if(!head)return nullptr;

    SchedulerNode* elem = head;
    head = head->next;

    if(!head) tail = nullptr;
    elem->next = nullptr;
    return elem;
}
void Scheduler::put(SchedulerNode *schedulerNode) {

    if(tail){
        tail->next = schedulerNode;
        tail = schedulerNode;
    }else{
        head = tail = schedulerNode;
    }
}
