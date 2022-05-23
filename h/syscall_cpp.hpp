#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.h"

void* operator new (size_t);
void operator delete (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle = nullptr;

    void(*body)(void*) = nullptr;
    void* arg = nullptr;

    static void runWrapper(void*);
};

#endif