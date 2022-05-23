#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"
#include "SchedulerNode.hpp"


class Scheduler {
private:
    static SchedulerNode *head, *tail;
public:
    static SchedulerNode* get();
    static void put(SchedulerNode*);
};


#endif
