#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"
class MemoryAllocator{
    struct BlockHeader{
        BlockHeader* next;
        size_t size;
    };

    struct BlockHeaderAllocated{
        BlockHeaderAllocated* next;
        uint64 size;
    };

    static bool calledOnce;
    static BlockHeader* freeMemHead;
    static BlockHeaderAllocated* allocatedMemHead;
public:
    static void* malloc(size_t);
    static int free(void*);
    static int getHeaderSize(){
        return sizeof(BlockHeader);
    }
    static size_t getsize(){
        return freeMemHead->size;
    }
    static void* getAddr(){
        return (void*)freeMemHead;
    }
private:
    MemoryAllocator() = delete; // it was default before, check if there is any difference

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;
    MemoryAllocator(MemoryAllocator&&) = delete;
    MemoryAllocator& operator=(MemoryAllocator&&) = delete;
    ~MemoryAllocator() = delete;
};

#endif