//
// Created by os on 5/5/22.
//

#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"
#include "../h/SemaphoreBase.hpp"
#include "../h/kernel_functions.hpp"


void Riscv::popSppSpie(){
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


void Riscv::handleSupervisorTrap(){
    __asm__ volatile("mv s1, a0");
    __asm__ volatile("mv s2, a1");
    __asm__ volatile("mv s3, a2");
    __asm__ volatile("mv s4, a3");
    __asm__ volatile("mv s5, a4");
    uint64 volatile scause = r_scause();

    if(scause == 0x8000000000000001UL){
        // interrupt: yes, cause: supervisor software interrupt (timer)
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if(scause == 0x8000000000000009UL){
        // interrupt: yes, cause: supervisor external interrupt (timer)
        /*int deviceInterrupt = plic_claim();

        if(deviceInterrupt == 0x0a){
            if(flag == 0){
                //__putc('@');
                //__putc('\n');
                flag = 1;
            }
        }

        plic_complete(deviceInterrupt);*/
        console_handler();
    }
    else if(scause == 8) {
        uint32 id;
        __asm__ volatile("mv %0,s1":"=r"(id));
        if(id == 0x01){
            size_t sz;
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
            void* result = MemoryAllocator::malloc(sz);
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case
        }else if(id == 0x02) {
            void *addr = 0;
            __asm__ volatile("mv %0,s2":"=r"(addr));
            int result = MemoryAllocator::free(addr);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }else if(id == 0x11){
            TCB** handle;
            void(*start_routine)(void*);
            void* arg;
            void* stack;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));

            *handle = TCB::createThread(start_routine, arg, stack);
        }else if(id == 0x12){
            int numberOfActiveThreads = TCB::numberOfActiveThreads;
            if(numberOfActiveThreads == 1){
                __asm__ volatile("li a0,-1");
            }else{
                TCB::running->setFinished(true);

                TCB* old = TCB::running;
                numberOfActiveThreads--;
                TCB::running = Scheduler::get()->data;
                TCB::contextSwitch(&old->context, &TCB::running->context);
            }
        }else if(id == 0x13){
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;

            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
            return;
        }else if(id == 0x21) {
            SemaphoreBase** handle;
            unsigned val;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[val],s3":[val]"=r"(val));

            *handle = new SemaphoreBase(val);
        }else if(id == 0x22){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->close();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x23){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->wait();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x24){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->signal();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x41) {
            //ms_sstatus(SSTATUS_SIE);
            char c = __getc();
            //mc_sstatus(SSTATUS_SIE);
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
            console_handler();
        }else if(id == 0x42){
            char c;
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
            __putc(c);
            //console_handler();
        }else if(id == 0x99){
            ms_sstatus(SSTATUS_SPP);
            uint64 volatile pc;
            __asm__ volatile("mv %[pc], s6":[pc]"=r"(pc));
            w_sepc(pc + 8);
            return;
        }else if(id == 0x101){
            uint64 volatile sepc = r_sepc();
            w_sepc(sepc + 4);
            return;
        }
        /**
            TREBA U SVAKOJ IF GRANI GDE SE VRACA REZULTAT KROZ a0 DA SE OVE DVE LINIJE
            ISPOS UBACE, NE TREBA ZA SVE.


            MEMORY ALLOCATOR - ONEMOGUCITI KORISNIKU DA KORISTI DIREKTNO

        */
        __asm__ volatile("li s6,-1337");
        __asm__ volatile("li s5,-1337");
        uint64 volatile sepc = Riscv::r_sepc();
        Riscv::w_sepc(sepc+4);
        //Riscv::mc_sstatus(0x02);
    }
    else if(scause == 9){
        // CALL 1 and 2 ARE NEEDED
        uint32 id;
        __asm__ volatile("mv %0,s1":"=r"(id));
        if(id == 0x01){
            size_t sz;
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
            void* result = MemoryAllocator::malloc(sz);
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case
        }else if(id == 0x02) {
            //__asm__ volatile("mv s1,a1"); // in case addr is stored in register a1, so it's not overwritten
            void *addr = 0;
            __asm__ volatile("mv %0,s2":"=r"(addr));
            int result = MemoryAllocator::free(addr);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }else if(id == 0x11){
            //callSupervisedTrap(0x11, handle, (void*)start_routine, arg, stack);
            TCB** handle;
            void(*start_routine)(void*);
            void* arg;
            void* stack;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));

            *handle = TCB::createThread(start_routine, arg, stack);
        }else if(id == 0x12){
            int numberOfActiveThreads = TCB::numberOfActiveThreads;
            if(numberOfActiveThreads == 1){
                __asm__ volatile("li a0,-1");
            }else{
                TCB::running->setFinished(true);

                TCB* old = TCB::running;
                numberOfActiveThreads--;
                TCB::running = Scheduler::get()->data;
                TCB::contextSwitch(&old->context, &TCB::running->context);
            }
        }else if(id == 0x13){
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;

            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
            return;
        }else if(id == 0x21) {
            SemaphoreBase** handle;
            unsigned val;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[val],s3":[val]"=r"(val));


            *handle = new SemaphoreBase(val);
        }else if(id == 0x22){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->close();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x23){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->wait();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x24){
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->signal();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x41) {
            //ms_sstatus(SSTATUS_SIE);
            char c = __getc();
            //mc_sstatus(SSTATUS_SIE);
            //console_handler();
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
        }else if(id == 0x42){
            char c;
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
            __putc(c);
            //console_handler();
        }else if(id == 0x66) {
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();

            TCB* old = TCB::running;
            TCB::numberOfActiveThreads--;

            TCB::running = Scheduler::get()->data;
            TCB::contextSwitch(&old->context, &TCB::running->context);

            w_sstatus(sstatus);
            w_sepc(sepc);
            return;
        }else if(id==0x88) {
            Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
            uint64 volatile sepc = r_sepc();
            w_sepc(sepc + 4);
            return;
        }else if(id == 0x99){
            ms_sstatus(SSTATUS_SPP);
            uint64 volatile pc;
            __asm__ volatile("mv %[pc], s6":[pc]"=r"(pc));
            w_sepc(pc + 8);
            return;
        }
        /**
            TREBA U SVAKOJ IF GRANI GDE SE VRACA REZULTAT KROZ a0 DA SE OVE DVE LINIJE
            ISPOS UBACE, NE TREBA ZA SVE.


            MEMORY ALLOCATOR - ONEMOGUCITI KORISNIKU DA KORISTI DIREKTNO

        */
        __asm__ volatile("li s6,-1337");
        __asm__ volatile("li s5,-1337");

        uint64 volatile sepc = Riscv::r_sepc();
        Riscv::w_sepc(sepc+4);
        /*uint32 id;
        __asm__ volatile("mv s2, a1");
        __asm__ volatile("mv s3, a2");
        __asm__ volatile("mv s4, a3");
        __asm__ volatile("mv s5, a4");
        __asm__ volatile("mv %0,a0":"=r"(id));
        if(id == 0x01){
            size_t sz;
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
            void* result = MemoryAllocator::malloc(sz);
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case

        }else if(id == 0x02) {
            //__asm__ volatile("mv s1,a1"); // in case addr is stored in register a1, so it's not overwritten
            void *addr = 0;
            __asm__ volatile("mv %0,s2":"=r"(addr));
            int result = MemoryAllocator::free(addr);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }
        else if(id == 0x11){
            //callSupervisedTrap(0x11, handle, (void*)start_routine, arg, stack);
            TCB** handle;
            void(*start_routine)(void*);
            void* arg;
            void* stack;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));

            *handle = TCB::createThread(start_routine, arg, stack);
            Riscv::w_sepc(Riscv::r_sepc()+4);
            __asm__ volatile("li s6,-1337");
            __asm__ volatile("li s5,-1337");
        }else if(id == 0x13) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }else if(id == 0x41){
            char c = __getc();
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
            Riscv::w_sepc(Riscv::r_sepc()+4);
        }else if(id == 0x42){
            char c;
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
            __putc(c);
            Riscv::w_sepc(Riscv::r_sepc()+4);
        }else {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        __asm__ volatile("li s6,-1337");
        __asm__ volatile("li s5,-1337");*/
    }
    else{
        kprintString("scause :");
        kprintInteger(scause);
        kprintString("\n");
    }

    console_handler();
}