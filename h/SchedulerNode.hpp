#ifndef SCHEDULERNODE_HPP
#define SCHEDULERNODE_HPP


class TCB;
class SchedulerNode{
    TCB* data;
    SchedulerNode* next;
    SchedulerNode(TCB* data, SchedulerNode* next):data(data), next(next){}

    friend class Scheduler;
    friend class SemaphoreBase;
    friend class TCB;
    friend class Riscv;
};

#endif