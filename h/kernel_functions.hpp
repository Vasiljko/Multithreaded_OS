//
// Created by os on 5/9/22.
//

#ifndef FUNCTIONS_HPP
#define FUNCTIONS_HPP

#include "MemoryAllocator.hpp"

void* kmem_alloc(size_t size);
int kmem_free(void*);

class TCB;
typedef TCB* thread_t;

int kthread_create(
    thread_t* handle,
    void(*start_routine)(void*),
    void* arg
);

void kthread_dispatch();

void kputc(char c);
void kprintString(char const* string);
void kprintInteger(uint64 intg);
#endif
