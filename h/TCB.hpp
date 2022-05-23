#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "kernel_functions.hpp"
#include "SchedulerNode.hpp"

class TCB{
public:
    ~TCB();
    bool isFinished() const{return finished;}

    void setFinished(bool finished){this->finished = finished;}
    uint64 getTimeSlice() const { return timeSlice;}

    using Body = void(*)(void*);

    static TCB *createThread(Body, void*, void*);

    static void yield();

    static TCB* running;
private:
    ///  ADD new[], delete and delete[]
    /// \param size
    /// \return
    void *operator new(size_t size){
        void *p = kmem_alloc(size);
        return p;
    }



    explicit TCB(Body body, uint64 timeSlice, void* arg, void* stack);

    struct Context{
        uint64 ra;
        uint64 sp;
        uint64 arg; //stored in a0 register
    };


    Body body;
    uint64* stack;
    Context context;
    SchedulerNode schedulerNode;
    bool finished;
    uint64 timeSlice;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);
    static void dispatch();

    static uint64 timeSliceCounter;
    static uint64 numberOfActiveThreads;

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;

    friend class Riscv;
    friend class Scheduler;
    friend class SemaphoreBase;
};


#endif
