#include "../h/syscall_c.h"
#include "../lib/console.h"

extern "C" void callSupervisedTrap(int id, void* arg1 = nullptr, void* arg2 = nullptr, void* arg3 = nullptr, void* arg4=  nullptr){
    __asm__ volatile("ecall");
}

extern "C" void* mem_alloc (size_t size){
    size_t numberOfBlocks = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    callSupervisedTrap(0x01, (void*)numberOfBlocks);

    __asm__ volatile("mv s5,a0");
    void* result = 0;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}

extern "C" int mem_free (void* addr){
    callSupervisedTrap(0x02, addr);

    __asm__ volatile("mv s5,a0");
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}

extern "C" int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    if(!stack)return -1;

    callSupervisedTrap(0x11, handle, (void*)start_routine, arg, &stack[DEFAULT_STACK_SIZE]);
    if(!(*handle))return -1;
    return 0;
}

extern "C" int thread_exit(){
    callSupervisedTrap(0x12);

    __asm__ volatile("mv s5,a0");
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}

extern "C" void thread_dispatch(){
    callSupervisedTrap(0x13);
}

extern "C" int sem_open (sem_t* handle, unsigned init){
    callSupervisedTrap(0x21, handle, (void*)(uint64)init);
    if(!(*handle))return -1;
    return 0;
}

extern "C" int sem_close (sem_t handle){
    callSupervisedTrap(0x22, handle);

    __asm__ volatile("mv s5,a0");
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}

extern "C" int sem_wait (sem_t id){
    callSupervisedTrap(0x23, id);

    __asm__ volatile("mv s5,a0");
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}

extern "C" int sem_signal (sem_t id){
    callSupervisedTrap(0x24, id);

    __asm__ volatile("mv s5,a0");
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    return result;
}



extern "C" char getc (){
    /*char c = __getc();
    return c;*/
    callSupervisedTrap(0x41);
    char c;
    __asm__ volatile("mv %[c],a0":[c]"=r"(c));
    return c;
}

extern "C" void putc(char c){
    __putc(c);
    //callSupervisedTrap(0x42, (void*)(uint64)c);
}