//
// Created by os on 5/9/22.
//

#include "../h/kernel_functions.hpp"
#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"




void* kmem_alloc (size_t size){
    size_t numberOfBlocks = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    return MemoryAllocator::malloc(numberOfBlocks);
}

int kmem_free (void* addr){
    return MemoryAllocator::free(addr);
}

int kthread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    if(!start_routine){
        *handle = TCB::createThread(start_routine, arg, 0);
        if(!(*handle))return -1;
        return 0;
    }

    uint64* stack = (uint64*) kmem_alloc(DEFAULT_STACK_SIZE);
    if(!stack)return -1;

    *handle = TCB::createThread(start_routine, arg, &stack[DEFAULT_STACK_SIZE]);
    if(!(*handle))return -1;
    return 0;
}

void kthread_dispatch(){

}

void kputc(char c){
    __putc(c);
}




void kprintString(char const* string){
    uint64 volatile sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while(*string!='\0'){
        kputc(*string);
        string++;
    }

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void kprintInteger(uint64 intg){
    uint64 volatile sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(intg<0){
        neg = 1;
        x = -intg;
    }else{
        x=intg;
    }

    i=0;
    do{
        buf[i++]=digits[x%10];
    }while((x/=10)!=0);

    if(neg)buf[i++] = '-';

    while(--i>=0)kputc(buf[i]);

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}