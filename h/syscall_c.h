#ifndef SYSCALL_C_H
#define SYSCALL_C_H
#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
#include "TCB.hpp"
#include "SemaphoreBase.hpp"

extern "C" void* mem_alloc(size_t size);
extern "C" int mem_free(void*);

typedef TCB* thread_t;

extern "C" int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

extern "C" int thread_exit ();

extern "C" void thread_dispatch ();

typedef SemaphoreBase* sem_t;

extern "C" int sem_open (sem_t* handle, unsigned init);

extern "C" int sem_close (sem_t handle);

extern "C" int sem_wait (sem_t id);

extern "C" int sem_signal (sem_t id);






const int EOF = -1;
extern "C" char getc ();
extern "C" void putc(char);


#endif