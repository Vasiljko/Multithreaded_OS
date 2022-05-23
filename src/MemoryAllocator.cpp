#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
MemoryAllocator::BlockHeader* MemoryAllocator::freeMemHead = nullptr;
MemoryAllocator::BlockHeaderAllocated* MemoryAllocator::allocatedMemHead = nullptr;
bool MemoryAllocator::calledOnce = false;


//size is in bytes
void* MemoryAllocator::malloc(size_t size){
    /*
    If malloc hasn't been called once before, then initialization of freeMemHead needs to be done
    */
    size = size * MEM_BLOCK_SIZE;
    if(!calledOnce){
        freeMemHead = (BlockHeader*)HEAP_START_ADDR;
        freeMemHead->next = nullptr;
        freeMemHead->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - (size_t)sizeof(BlockHeader);
        calledOnce = true;
    }

    BlockHeader *blk = freeMemHead, *prev = nullptr;
    for(; blk!=nullptr; prev = blk, blk = blk->next){
        if(blk->size >= size)break;
    }

    // No space for allocating such chunk of memory
    if(blk == nullptr){
        return 0;
    }

    size_t remainingSize = blk->size - size;
    if(remainingSize >= sizeof(BlockHeader) + MEM_BLOCK_SIZE){
        blk->size = size;
        size_t offset = sizeof(BlockHeader) + size;
        BlockHeader* newBlk = (BlockHeader*)((char*)blk+offset);
        if(prev)prev->next = newBlk;
        else freeMemHead = newBlk;
        newBlk->next = blk->next;
        newBlk->size = remainingSize - sizeof(BlockHeader);
    }else{
        if(prev)prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->next = nullptr;

    BlockHeaderAllocated* blkAllocated = (BlockHeaderAllocated*)blk;
    blkAllocated->next = nullptr;
    blkAllocated->size = blk->size;

    if(!allocatedMemHead)allocatedMemHead = blkAllocated;
    else{
        BlockHeaderAllocated* cur = allocatedMemHead, *prev = nullptr;
        for(; cur!=nullptr; prev = cur, cur = cur->next){
            if((char*)cur > (char*)blkAllocated)break;
        }
        if(!prev){
            blkAllocated->next = allocatedMemHead;
            allocatedMemHead = blkAllocated;
        }else{
            blkAllocated->next = prev->next;
            prev->next = blkAllocated;
        }
    }
    return (void*)((char*)blk+sizeof(BlockHeader));
}

int MemoryAllocator::free(void* addr){
    //address out of bounds => code -1
    if(addr<HEAP_START_ADDR || addr>=HEAP_END_ADDR)return -1;
    //if malloc hasn't been called before then there is nothing to free => code -2
    if(!calledOnce)return -2;


    BlockHeaderAllocated* cur = allocatedMemHead, *prev = nullptr;
    for(; cur!=nullptr; prev = cur, cur = cur->next){
        if((char*)cur+sizeof(BlockHeaderAllocated)==(char*)addr)break;
    }

    if(!cur){
        // address is not the same that was given by malloc function
        return -3;
    }else{
        if(!prev)allocatedMemHead = cur->next;
        else prev->next = cur->next;
        cur->next = nullptr;


        BlockHeader* freeBlk = (BlockHeader*)cur, *curBlk = freeMemHead, *prev = nullptr;
        for(; curBlk!=nullptr; prev = curBlk, curBlk = curBlk->next){
            if((char*)curBlk > (char*)freeBlk)break;
        }

        if(!prev){
            freeBlk->next = freeMemHead;
            freeMemHead = freeBlk;

            if(freeBlk->next && (char*)freeBlk+sizeof(BlockHeader)+freeBlk->size == (char*)freeBlk->next) {
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
                freeBlk->next = freeBlk->next->next;
            }
        }else{
            freeBlk->next = prev->next;
            prev->next = freeBlk;
            //Try to merge previous free block and newly added one
            if((char*)prev+sizeof(BlockHeader)+prev->size == (char*)freeBlk) {
                prev->size += freeBlk->size + sizeof(BlockHeader);
                prev->next = freeBlk->next;
                //Try to merge current free block (previous + new free block) with next free block
                if (prev->next && (char *) prev + sizeof(BlockHeader) + prev->size == (char *) prev->next) {
                    prev->size += prev->next->size + sizeof(BlockHeader);
                    prev->next = prev->next->next;
                }
            }
            //Try to merge newly added free block with next one
            else if(freeBlk->next && (char*)freeBlk+sizeof(BlockHeader)+freeBlk->size == (char*)freeBlk->next) {
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
                freeBlk->next = freeBlk->next->next;
            }
        }
    }
    return 0;
}

