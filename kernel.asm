
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	04813103          	ld	sp,72(sp) # 80007048 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	740030ef          	jal	ra,8000375c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    add sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04b13c23          	sd	a1,88(sp)
    80001024:	06c13023          	sd	a2,96(sp)
    80001028:	06d13423          	sd	a3,104(sp)
    8000102c:	06e13823          	sd	a4,112(sp)
    80001030:	06f13c23          	sd	a5,120(sp)
    80001034:	09013023          	sd	a6,128(sp)
    80001038:	09113423          	sd	a7,136(sp)
    8000103c:	09213823          	sd	s2,144(sp)
    80001040:	09313c23          	sd	s3,152(sp)
    80001044:	0b413023          	sd	s4,160(sp)
    80001048:	0b513423          	sd	s5,168(sp)
    8000104c:	0b613823          	sd	s6,176(sp)
    80001050:	0b713c23          	sd	s7,184(sp)
    80001054:	0d813023          	sd	s8,192(sp)
    80001058:	0d913423          	sd	s9,200(sp)
    8000105c:	0da13823          	sd	s10,208(sp)
    80001060:	0db13c23          	sd	s11,216(sp)
    80001064:	0fc13023          	sd	t3,224(sp)
    80001068:	0fd13423          	sd	t4,232(sp)
    8000106c:	0fe13823          	sd	t5,240(sp)
    80001070:	0ff13c23          	sd	t6,248(sp)
    ret
    80001074:	00008067          	ret

0000000080001078 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001078:	01813183          	ld	gp,24(sp)
    8000107c:	02013203          	ld	tp,32(sp)
    80001080:	02813283          	ld	t0,40(sp)
    80001084:	03013303          	ld	t1,48(sp)
    80001088:	03813383          	ld	t2,56(sp)
    8000108c:	04013403          	ld	s0,64(sp)
    80001090:	04813483          	ld	s1,72(sp)
    80001094:	05813583          	ld	a1,88(sp)
    80001098:	06013603          	ld	a2,96(sp)
    8000109c:	06813683          	ld	a3,104(sp)
    800010a0:	07013703          	ld	a4,112(sp)
    800010a4:	07813783          	ld	a5,120(sp)
    800010a8:	08013803          	ld	a6,128(sp)
    800010ac:	08813883          	ld	a7,136(sp)
    800010b0:	09013903          	ld	s2,144(sp)
    800010b4:	09813983          	ld	s3,152(sp)
    800010b8:	0a013a03          	ld	s4,160(sp)
    800010bc:	0a813a83          	ld	s5,168(sp)
    800010c0:	0b013b03          	ld	s6,176(sp)
    800010c4:	0b813b83          	ld	s7,184(sp)
    800010c8:	0c013c03          	ld	s8,192(sp)
    800010cc:	0c813c83          	ld	s9,200(sp)
    800010d0:	0d013d03          	ld	s10,208(sp)
    800010d4:	0d813d83          	ld	s11,216(sp)
    800010d8:	0e013e03          	ld	t3,224(sp)
    800010dc:	0e813e83          	ld	t4,232(sp)
    800010e0:	0f013f03          	ld	t5,240(sp)
    800010e4:	0f813f83          	ld	t6,248(sp)
    add sp, sp, 256
    800010e8:	10010113          	addi	sp,sp,256
    ret
    800010ec:	00008067          	ret

00000000800010f0 <_ZN13SemaphoreBase13pushRegistersEv>:


.global _ZN13SemaphoreBase13pushRegistersEv
.type _ZN13SemaphoreBase13pushRegistersEv, @function
_ZN13SemaphoreBase13pushRegistersEv:
    add sp, sp, -256
    800010f0:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800010f4:	00313c23          	sd	gp,24(sp)
    800010f8:	02413023          	sd	tp,32(sp)
    800010fc:	02513423          	sd	t0,40(sp)
    80001100:	02613823          	sd	t1,48(sp)
    80001104:	02713c23          	sd	t2,56(sp)
    80001108:	04813023          	sd	s0,64(sp)
    8000110c:	04913423          	sd	s1,72(sp)
    80001110:	04b13c23          	sd	a1,88(sp)
    80001114:	06c13023          	sd	a2,96(sp)
    80001118:	06d13423          	sd	a3,104(sp)
    8000111c:	06e13823          	sd	a4,112(sp)
    80001120:	06f13c23          	sd	a5,120(sp)
    80001124:	09013023          	sd	a6,128(sp)
    80001128:	09113423          	sd	a7,136(sp)
    8000112c:	09213823          	sd	s2,144(sp)
    80001130:	09313c23          	sd	s3,152(sp)
    80001134:	0b413023          	sd	s4,160(sp)
    80001138:	0b513423          	sd	s5,168(sp)
    8000113c:	0b613823          	sd	s6,176(sp)
    80001140:	0b713c23          	sd	s7,184(sp)
    80001144:	0d813023          	sd	s8,192(sp)
    80001148:	0d913423          	sd	s9,200(sp)
    8000114c:	0da13823          	sd	s10,208(sp)
    80001150:	0db13c23          	sd	s11,216(sp)
    80001154:	0fc13023          	sd	t3,224(sp)
    80001158:	0fd13423          	sd	t4,232(sp)
    8000115c:	0fe13823          	sd	t5,240(sp)
    80001160:	0ff13c23          	sd	t6,248(sp)
    ret
    80001164:	00008067          	ret

0000000080001168 <_ZN13SemaphoreBase12popRegistersEv>:
.global _ZN13SemaphoreBase12popRegistersEv
.type _ZN13SemaphoreBase12popRegistersEv, @function
_ZN13SemaphoreBase12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001168:	01813183          	ld	gp,24(sp)
    8000116c:	02013203          	ld	tp,32(sp)
    80001170:	02813283          	ld	t0,40(sp)
    80001174:	03013303          	ld	t1,48(sp)
    80001178:	03813383          	ld	t2,56(sp)
    8000117c:	04013403          	ld	s0,64(sp)
    80001180:	04813483          	ld	s1,72(sp)
    80001184:	05813583          	ld	a1,88(sp)
    80001188:	06013603          	ld	a2,96(sp)
    8000118c:	06813683          	ld	a3,104(sp)
    80001190:	07013703          	ld	a4,112(sp)
    80001194:	07813783          	ld	a5,120(sp)
    80001198:	08013803          	ld	a6,128(sp)
    8000119c:	08813883          	ld	a7,136(sp)
    800011a0:	09013903          	ld	s2,144(sp)
    800011a4:	09813983          	ld	s3,152(sp)
    800011a8:	0a013a03          	ld	s4,160(sp)
    800011ac:	0a813a83          	ld	s5,168(sp)
    800011b0:	0b013b03          	ld	s6,176(sp)
    800011b4:	0b813b83          	ld	s7,184(sp)
    800011b8:	0c013c03          	ld	s8,192(sp)
    800011bc:	0c813c83          	ld	s9,200(sp)
    800011c0:	0d013d03          	ld	s10,208(sp)
    800011c4:	0d813d83          	ld	s11,216(sp)
    800011c8:	0e013e03          	ld	t3,224(sp)
    800011cc:	0e813e83          	ld	t4,232(sp)
    800011d0:	0f013f03          	ld	t5,240(sp)
    800011d4:	0f813f83          	ld	t6,248(sp)
    add sp, sp, 256
    800011d8:	10010113          	addi	sp,sp,256
    ret
    800011dc:	00008067          	ret

00000000800011e0 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    800011e0:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800011e4:	00013023          	sd	zero,0(sp)
    800011e8:	00113423          	sd	ra,8(sp)
    800011ec:	00213823          	sd	sp,16(sp)
    800011f0:	00313c23          	sd	gp,24(sp)
    800011f4:	02413023          	sd	tp,32(sp)
    800011f8:	02513423          	sd	t0,40(sp)
    800011fc:	02613823          	sd	t1,48(sp)
    80001200:	02713c23          	sd	t2,56(sp)
    80001204:	04813023          	sd	s0,64(sp)
    80001208:	04913423          	sd	s1,72(sp)
    8000120c:	04a13823          	sd	a0,80(sp)
    80001210:	04b13c23          	sd	a1,88(sp)
    80001214:	06c13023          	sd	a2,96(sp)
    80001218:	06d13423          	sd	a3,104(sp)
    8000121c:	06e13823          	sd	a4,112(sp)
    80001220:	06f13c23          	sd	a5,120(sp)
    80001224:	09013023          	sd	a6,128(sp)
    80001228:	09113423          	sd	a7,136(sp)
    8000122c:	09213823          	sd	s2,144(sp)
    80001230:	09313c23          	sd	s3,152(sp)
    80001234:	0b413023          	sd	s4,160(sp)
    80001238:	0b513423          	sd	s5,168(sp)
    8000123c:	0b613823          	sd	s6,176(sp)
    80001240:	0b713c23          	sd	s7,184(sp)
    80001244:	0d813023          	sd	s8,192(sp)
    80001248:	0d913423          	sd	s9,200(sp)
    8000124c:	0da13823          	sd	s10,208(sp)
    80001250:	0db13c23          	sd	s11,216(sp)
    80001254:	0fc13023          	sd	t3,224(sp)
    80001258:	0fd13423          	sd	t4,232(sp)
    8000125c:	0fe13823          	sd	t5,240(sp)
    80001260:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001264:	449000ef          	jal	ra,80001eac <_ZN5Riscv20handleSupervisorTrapEv>

    addi s6, s6, 1337 # 1337 is written in handleSupervisorTrap for system calls in order to know if
    80001268:	539b0b13          	addi	s6,s6,1337
    addi s5, s5, 1337 # a0 should be restored or not (if both are 1337 then don't restore a0 since it
    8000126c:	539a8a93          	addi	s5,s5,1337
                      # holds result from the handleSupervisorTrap function

    beqz s6, L1
    80001270:	080b0663          	beqz	s6,800012fc <L1>


    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001274:	00013003          	ld	zero,0(sp)
    80001278:	00813083          	ld	ra,8(sp)
    8000127c:	01013103          	ld	sp,16(sp)
    80001280:	01813183          	ld	gp,24(sp)
    80001284:	02013203          	ld	tp,32(sp)
    80001288:	02813283          	ld	t0,40(sp)
    8000128c:	03013303          	ld	t1,48(sp)
    80001290:	03813383          	ld	t2,56(sp)
    80001294:	04013403          	ld	s0,64(sp)
    80001298:	04813483          	ld	s1,72(sp)
    8000129c:	05013503          	ld	a0,80(sp)
    800012a0:	05813583          	ld	a1,88(sp)
    800012a4:	06013603          	ld	a2,96(sp)
    800012a8:	06813683          	ld	a3,104(sp)
    800012ac:	07013703          	ld	a4,112(sp)
    800012b0:	07813783          	ld	a5,120(sp)
    800012b4:	08013803          	ld	a6,128(sp)
    800012b8:	08813883          	ld	a7,136(sp)
    800012bc:	09013903          	ld	s2,144(sp)
    800012c0:	09813983          	ld	s3,152(sp)
    800012c4:	0a013a03          	ld	s4,160(sp)
    800012c8:	0a813a83          	ld	s5,168(sp)
    800012cc:	0b013b03          	ld	s6,176(sp)
    800012d0:	0b813b83          	ld	s7,184(sp)
    800012d4:	0c013c03          	ld	s8,192(sp)
    800012d8:	0c813c83          	ld	s9,200(sp)
    800012dc:	0d013d03          	ld	s10,208(sp)
    800012e0:	0d813d83          	ld	s11,216(sp)
    800012e4:	0e013e03          	ld	t3,224(sp)
    800012e8:	0e813e83          	ld	t4,232(sp)
    800012ec:	0f013f03          	ld	t5,240(sp)
    800012f0:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800012f4:	10010113          	addi	sp,sp,256

    #sret
    beq x0, x0, Rtrn
    800012f8:	10000a63          	beqz	zero,8000140c <Rtrn>

00000000800012fc <L1>:

L1:
    beqz s5, L2
    800012fc:	080a8663          	beqz	s5,80001388 <L2>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001300:	00013003          	ld	zero,0(sp)
    80001304:	00813083          	ld	ra,8(sp)
    80001308:	01013103          	ld	sp,16(sp)
    8000130c:	01813183          	ld	gp,24(sp)
    80001310:	02013203          	ld	tp,32(sp)
    80001314:	02813283          	ld	t0,40(sp)
    80001318:	03013303          	ld	t1,48(sp)
    8000131c:	03813383          	ld	t2,56(sp)
    80001320:	04013403          	ld	s0,64(sp)
    80001324:	04813483          	ld	s1,72(sp)
    80001328:	05013503          	ld	a0,80(sp)
    8000132c:	05813583          	ld	a1,88(sp)
    80001330:	06013603          	ld	a2,96(sp)
    80001334:	06813683          	ld	a3,104(sp)
    80001338:	07013703          	ld	a4,112(sp)
    8000133c:	07813783          	ld	a5,120(sp)
    80001340:	08013803          	ld	a6,128(sp)
    80001344:	08813883          	ld	a7,136(sp)
    80001348:	09013903          	ld	s2,144(sp)
    8000134c:	09813983          	ld	s3,152(sp)
    80001350:	0a013a03          	ld	s4,160(sp)
    80001354:	0a813a83          	ld	s5,168(sp)
    80001358:	0b013b03          	ld	s6,176(sp)
    8000135c:	0b813b83          	ld	s7,184(sp)
    80001360:	0c013c03          	ld	s8,192(sp)
    80001364:	0c813c83          	ld	s9,200(sp)
    80001368:	0d013d03          	ld	s10,208(sp)
    8000136c:	0d813d83          	ld	s11,216(sp)
    80001370:	0e013e03          	ld	t3,224(sp)
    80001374:	0e813e83          	ld	t4,232(sp)
    80001378:	0f013f03          	ld	t5,240(sp)
    8000137c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001380:	10010113          	addi	sp,sp,256

    #sret
    beq x0, x0, Rtrn
    80001384:	08000463          	beqz	zero,8000140c <Rtrn>

0000000080001388 <L2>:

L2:
    # pop all registers from stack without a0 = x10
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001388:	00013003          	ld	zero,0(sp)
    8000138c:	00813083          	ld	ra,8(sp)
    80001390:	01013103          	ld	sp,16(sp)
    80001394:	01813183          	ld	gp,24(sp)
    80001398:	02013203          	ld	tp,32(sp)
    8000139c:	02813283          	ld	t0,40(sp)
    800013a0:	03013303          	ld	t1,48(sp)
    800013a4:	03813383          	ld	t2,56(sp)
    800013a8:	04013403          	ld	s0,64(sp)
    800013ac:	04813483          	ld	s1,72(sp)
    800013b0:	05813583          	ld	a1,88(sp)
    800013b4:	06013603          	ld	a2,96(sp)
    800013b8:	06813683          	ld	a3,104(sp)
    800013bc:	07013703          	ld	a4,112(sp)
    800013c0:	07813783          	ld	a5,120(sp)
    800013c4:	08013803          	ld	a6,128(sp)
    800013c8:	08813883          	ld	a7,136(sp)
    800013cc:	09013903          	ld	s2,144(sp)
    800013d0:	09813983          	ld	s3,152(sp)
    800013d4:	0a013a03          	ld	s4,160(sp)
    800013d8:	0a813a83          	ld	s5,168(sp)
    800013dc:	0b013b03          	ld	s6,176(sp)
    800013e0:	0b813b83          	ld	s7,184(sp)
    800013e4:	0c013c03          	ld	s8,192(sp)
    800013e8:	0c813c83          	ld	s9,200(sp)
    800013ec:	0d013d03          	ld	s10,208(sp)
    800013f0:	0d813d83          	ld	s11,216(sp)
    800013f4:	0e013e03          	ld	t3,224(sp)
    800013f8:	0e813e83          	ld	t4,232(sp)
    800013fc:	0f013f03          	ld	t5,240(sp)
    80001400:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001404:	10010113          	addi	sp,sp,256

    beq x0, x0, Rtrn
    80001408:	00000263          	beqz	zero,8000140c <Rtrn>

000000008000140c <Rtrn>:

Rtrn:
    8000140c:	10200073          	sret

0000000080001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # &old->context - a0
    # &runnign->contex - a1

    sd ra, 0 * 8(a0)
    80001410:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001414:	00253423          	sd	sp,8(a0)
    sd a0, 2 * 8(a0)
    80001418:	00a53823          	sd	a0,16(a0)

    ld ra, 0 * 8(a1)
    8000141c:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001420:	0085b103          	ld	sp,8(a1)
    ld a0, 2 * 8(a1)
    80001424:	0105b503          	ld	a0,16(a1)

    80001428:	00008067          	ret

000000008000142c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000142c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001430:	00b29a63          	bne	t0,a1,80001444 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001434:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001438:	fe029ae3          	bnez	t0,8000142c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000143c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001440:	00008067          	ret

0000000080001444 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001444:	00100513          	li	a0,1
    80001448:	00008067          	ret

000000008000144c <callSupervisedTrap>:
#include "../h/syscall_c.h"
#include "../lib/console.h"

extern "C" void callSupervisedTrap(int id, void* arg1 = nullptr, void* arg2 = nullptr, void* arg3 = nullptr, void* arg4=  nullptr){
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001458:	00000073          	ecall
}
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <mem_alloc>:

extern "C" void* mem_alloc (size_t size){
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00113423          	sd	ra,8(sp)
    80001470:	00813023          	sd	s0,0(sp)
    80001474:	01010413          	addi	s0,sp,16
    size_t numberOfBlocks = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    80001478:	03f50593          	addi	a1,a0,63
    callSupervisedTrap(0x01, (void*)numberOfBlocks);
    8000147c:	00000713          	li	a4,0
    80001480:	00000693          	li	a3,0
    80001484:	00000613          	li	a2,0
    80001488:	0065d593          	srli	a1,a1,0x6
    8000148c:	00100513          	li	a0,1
    80001490:	00000097          	auipc	ra,0x0
    80001494:	fbc080e7          	jalr	-68(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    80001498:	00050a93          	mv	s5,a0
    void* result = 0;
    __asm__ volatile("mv %0,s5":"=r"(result));
    8000149c:	000a8513          	mv	a0,s5
    return result;
}
    800014a0:	00813083          	ld	ra,8(sp)
    800014a4:	00013403          	ld	s0,0(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <mem_free>:

extern "C" int mem_free (void* addr){
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
    800014c0:	00050593          	mv	a1,a0
    callSupervisedTrap(0x02, addr);
    800014c4:	00000713          	li	a4,0
    800014c8:	00000693          	li	a3,0
    800014cc:	00000613          	li	a2,0
    800014d0:	00200513          	li	a0,2
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f78080e7          	jalr	-136(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    800014dc:	00050a93          	mv	s5,a0
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    800014e0:	000a8513          	mv	a0,s5
    return result;
}
    800014e4:	0005051b          	sext.w	a0,a0
    800014e8:	00813083          	ld	ra,8(sp)
    800014ec:	00013403          	ld	s0,0(sp)
    800014f0:	01010113          	addi	sp,sp,16
    800014f4:	00008067          	ret

00000000800014f8 <thread_create>:

extern "C" int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    800014f8:	fd010113          	addi	sp,sp,-48
    800014fc:	02113423          	sd	ra,40(sp)
    80001500:	02813023          	sd	s0,32(sp)
    80001504:	00913c23          	sd	s1,24(sp)
    80001508:	01213823          	sd	s2,16(sp)
    8000150c:	01313423          	sd	s3,8(sp)
    80001510:	03010413          	addi	s0,sp,48
    80001514:	00050493          	mv	s1,a0
    80001518:	00058913          	mv	s2,a1
    8000151c:	00060993          	mv	s3,a2
    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001520:	00001537          	lui	a0,0x1
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f44080e7          	jalr	-188(ra) # 80001468 <mem_alloc>
    if(!stack)return -1;
    8000152c:	04050663          	beqz	a0,80001578 <thread_create+0x80>

    callSupervisedTrap(0x11, handle, (void*)start_routine, arg, &stack[DEFAULT_STACK_SIZE]);
    80001530:	00008737          	lui	a4,0x8
    80001534:	00e50733          	add	a4,a0,a4
    80001538:	00098693          	mv	a3,s3
    8000153c:	00090613          	mv	a2,s2
    80001540:	00048593          	mv	a1,s1
    80001544:	01100513          	li	a0,17
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	f04080e7          	jalr	-252(ra) # 8000144c <callSupervisedTrap>
    if(!(*handle))return -1;
    80001550:	0004b783          	ld	a5,0(s1)
    80001554:	02078663          	beqz	a5,80001580 <thread_create+0x88>
    return 0;
    80001558:	00000513          	li	a0,0
}
    8000155c:	02813083          	ld	ra,40(sp)
    80001560:	02013403          	ld	s0,32(sp)
    80001564:	01813483          	ld	s1,24(sp)
    80001568:	01013903          	ld	s2,16(sp)
    8000156c:	00813983          	ld	s3,8(sp)
    80001570:	03010113          	addi	sp,sp,48
    80001574:	00008067          	ret
    if(!stack)return -1;
    80001578:	fff00513          	li	a0,-1
    8000157c:	fe1ff06f          	j	8000155c <thread_create+0x64>
    if(!(*handle))return -1;
    80001580:	fff00513          	li	a0,-1
    80001584:	fd9ff06f          	j	8000155c <thread_create+0x64>

0000000080001588 <thread_exit>:

extern "C" int thread_exit(){
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
    callSupervisedTrap(0x12);
    80001598:	00000713          	li	a4,0
    8000159c:	00000693          	li	a3,0
    800015a0:	00000613          	li	a2,0
    800015a4:	00000593          	li	a1,0
    800015a8:	01200513          	li	a0,18
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	ea0080e7          	jalr	-352(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    800015b4:	00050a93          	mv	s5,a0
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    800015b8:	000a8513          	mv	a0,s5
    return result;
}
    800015bc:	0005051b          	sext.w	a0,a0
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <thread_dispatch>:

extern "C" void thread_dispatch(){
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    callSupervisedTrap(0x13);
    800015e0:	00000713          	li	a4,0
    800015e4:	00000693          	li	a3,0
    800015e8:	00000613          	li	a2,0
    800015ec:	00000593          	li	a1,0
    800015f0:	01300513          	li	a0,19
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	e58080e7          	jalr	-424(ra) # 8000144c <callSupervisedTrap>
}
    800015fc:	00813083          	ld	ra,8(sp)
    80001600:	00013403          	ld	s0,0(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <sem_open>:

extern "C" int sem_open (sem_t* handle, unsigned init){
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
    80001620:	00050493          	mv	s1,a0
    callSupervisedTrap(0x21, handle, (void*)(uint64)init);
    80001624:	00000713          	li	a4,0
    80001628:	00000693          	li	a3,0
    8000162c:	02059613          	slli	a2,a1,0x20
    80001630:	02065613          	srli	a2,a2,0x20
    80001634:	00050593          	mv	a1,a0
    80001638:	02100513          	li	a0,33
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	e10080e7          	jalr	-496(ra) # 8000144c <callSupervisedTrap>
    if(!(*handle))return -1;
    80001644:	0004b783          	ld	a5,0(s1)
    80001648:	00078e63          	beqz	a5,80001664 <sem_open+0x58>
    return 0;
    8000164c:	00000513          	li	a0,0
}
    80001650:	01813083          	ld	ra,24(sp)
    80001654:	01013403          	ld	s0,16(sp)
    80001658:	00813483          	ld	s1,8(sp)
    8000165c:	02010113          	addi	sp,sp,32
    80001660:	00008067          	ret
    if(!(*handle))return -1;
    80001664:	fff00513          	li	a0,-1
    80001668:	fe9ff06f          	j	80001650 <sem_open+0x44>

000000008000166c <sem_close>:

extern "C" int sem_close (sem_t handle){
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    8000167c:	00050593          	mv	a1,a0
    callSupervisedTrap(0x22, handle);
    80001680:	00000713          	li	a4,0
    80001684:	00000693          	li	a3,0
    80001688:	00000613          	li	a2,0
    8000168c:	02200513          	li	a0,34
    80001690:	00000097          	auipc	ra,0x0
    80001694:	dbc080e7          	jalr	-580(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    80001698:	00050a93          	mv	s5,a0
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    8000169c:	000a8513          	mv	a0,s5
    return result;
}
    800016a0:	0005051b          	sext.w	a0,a0
    800016a4:	00813083          	ld	ra,8(sp)
    800016a8:	00013403          	ld	s0,0(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <sem_wait>:

extern "C" int sem_wait (sem_t id){
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00113423          	sd	ra,8(sp)
    800016bc:	00813023          	sd	s0,0(sp)
    800016c0:	01010413          	addi	s0,sp,16
    800016c4:	00050593          	mv	a1,a0
    callSupervisedTrap(0x23, id);
    800016c8:	00000713          	li	a4,0
    800016cc:	00000693          	li	a3,0
    800016d0:	00000613          	li	a2,0
    800016d4:	02300513          	li	a0,35
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	d74080e7          	jalr	-652(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    800016e0:	00050a93          	mv	s5,a0
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    800016e4:	000a8513          	mv	a0,s5
    return result;
}
    800016e8:	0005051b          	sext.w	a0,a0
    800016ec:	00813083          	ld	ra,8(sp)
    800016f0:	00013403          	ld	s0,0(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret

00000000800016fc <sem_signal>:

extern "C" int sem_signal (sem_t id){
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00113423          	sd	ra,8(sp)
    80001704:	00813023          	sd	s0,0(sp)
    80001708:	01010413          	addi	s0,sp,16
    8000170c:	00050593          	mv	a1,a0
    callSupervisedTrap(0x24, id);
    80001710:	00000713          	li	a4,0
    80001714:	00000693          	li	a3,0
    80001718:	00000613          	li	a2,0
    8000171c:	02400513          	li	a0,36
    80001720:	00000097          	auipc	ra,0x0
    80001724:	d2c080e7          	jalr	-724(ra) # 8000144c <callSupervisedTrap>

    __asm__ volatile("mv s5,a0");
    80001728:	00050a93          	mv	s5,a0
    int result;
    __asm__ volatile("mv %0,s5":"=r"(result));
    8000172c:	000a8513          	mv	a0,s5
    return result;
}
    80001730:	0005051b          	sext.w	a0,a0
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <getc>:



extern "C" char getc (){
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00113423          	sd	ra,8(sp)
    8000174c:	00813023          	sd	s0,0(sp)
    80001750:	01010413          	addi	s0,sp,16
    /*char c = __getc();
    return c;*/
    callSupervisedTrap(0x41);
    80001754:	00000713          	li	a4,0
    80001758:	00000693          	li	a3,0
    8000175c:	00000613          	li	a2,0
    80001760:	00000593          	li	a1,0
    80001764:	04100513          	li	a0,65
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	ce4080e7          	jalr	-796(ra) # 8000144c <callSupervisedTrap>
    char c;
    __asm__ volatile("mv %[c],a0":[c]"=r"(c));
    80001770:	00050513          	mv	a0,a0
    return c;
}
    80001774:	0ff57513          	andi	a0,a0,255
    80001778:	00813083          	ld	ra,8(sp)
    8000177c:	00013403          	ld	s0,0(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <putc>:

extern "C" void putc(char c){
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
    __putc(c);
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	084080e7          	jalr	132(ra) # 8000581c <__putc>
    //callSupervisedTrap(0x42, (void*)(uint64)c);
    800017a0:	00813083          	ld	ra,8(sp)
    800017a4:	00013403          	ld	s0,0(sp)
    800017a8:	01010113          	addi	sp,sp,16
    800017ac:	00008067          	ret

00000000800017b0 <_ZN9Scheduler3getEv>:
#include "../h/Scheduler.hpp"

SchedulerNode* Scheduler::head, *Scheduler::tail;

SchedulerNode *Scheduler::get() {
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00813423          	sd	s0,8(sp)
    800017b8:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    800017bc:	00006517          	auipc	a0,0x6
    800017c0:	8e453503          	ld	a0,-1820(a0) # 800070a0 <_ZN9Scheduler4headE>
    800017c4:	00050c63          	beqz	a0,800017dc <_ZN9Scheduler3getEv+0x2c>

    SchedulerNode* elem = head;
    head = head->next;
    800017c8:	00853783          	ld	a5,8(a0)
    800017cc:	00006717          	auipc	a4,0x6
    800017d0:	8cf73a23          	sd	a5,-1836(a4) # 800070a0 <_ZN9Scheduler4headE>

    if(!head) tail = nullptr;
    800017d4:	00078a63          	beqz	a5,800017e8 <_ZN9Scheduler3getEv+0x38>
    elem->next = nullptr;
    800017d8:	00053423          	sd	zero,8(a0)
    return elem;
}
    800017dc:	00813403          	ld	s0,8(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret
    if(!head) tail = nullptr;
    800017e8:	00006797          	auipc	a5,0x6
    800017ec:	8c07b023          	sd	zero,-1856(a5) # 800070a8 <_ZN9Scheduler4tailE>
    800017f0:	fe9ff06f          	j	800017d8 <_ZN9Scheduler3getEv+0x28>

00000000800017f4 <_ZN9Scheduler3putEP13SchedulerNode>:
void Scheduler::put(SchedulerNode *schedulerNode) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16

    if(tail){
    80001800:	00006797          	auipc	a5,0x6
    80001804:	8a87b783          	ld	a5,-1880(a5) # 800070a8 <_ZN9Scheduler4tailE>
    80001808:	00078e63          	beqz	a5,80001824 <_ZN9Scheduler3putEP13SchedulerNode+0x30>
        tail->next = schedulerNode;
    8000180c:	00a7b423          	sd	a0,8(a5)
        tail = schedulerNode;
    80001810:	00006797          	auipc	a5,0x6
    80001814:	88a7bc23          	sd	a0,-1896(a5) # 800070a8 <_ZN9Scheduler4tailE>
    }else{
        head = tail = schedulerNode;
    }
}
    80001818:	00813403          	ld	s0,8(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret
        head = tail = schedulerNode;
    80001824:	00006797          	auipc	a5,0x6
    80001828:	87c78793          	addi	a5,a5,-1924 # 800070a0 <_ZN9Scheduler4headE>
    8000182c:	00a7b423          	sd	a0,8(a5)
    80001830:	00a7b023          	sd	a0,0(a5)
}
    80001834:	fe5ff06f          	j	80001818 <_ZN9Scheduler3putEP13SchedulerNode+0x24>

0000000080001838 <_Z12idleFunctionPv>:
    int x;

    A(int val = 0) :x(val) {};
};

void idleFunction(void* arg){
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00813423          	sd	s0,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    for(;;);
    80001844:	0000006f          	j	80001844 <_Z12idleFunctionPv+0xc>

0000000080001848 <_Z13enterUserModev>:
}

void enterUserMode(){
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16
inline void Riscv::ms_sstatus(uint64 mask){
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask){
    __asm__ volatile("csrc sstatus, %[mask]": : [mask]"r"(mask));
    80001854:	10000793          	li	a5,256
    80001858:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    //Riscv::mc_sie(Riscv::SIP_SSIP);
    __asm__ volatile("csrw sepc, ra");
    8000185c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001860:	10200073          	sret
}
    80001864:	00813403          	ld	s0,8(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <_Z10getPcVaulev>:
    void run() override{
        for(;;);
    }
};

void getPcVaule(){
    80001870:	ff010113          	addi	sp,sp,-16
    80001874:	00813423          	sd	s0,8(sp)
    80001878:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv s6, ra");
    8000187c:	00008b13          	mv	s6,ra
    return;
}
    80001880:	00813403          	ld	s0,8(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <main>:

int main() {
    8000188c:	fd010113          	addi	sp,sp,-48
    80001890:	02113423          	sd	ra,40(sp)
    80001894:	02813023          	sd	s0,32(sp)
    80001898:	00913c23          	sd	s1,24(sp)
    8000189c:	01213823          	sd	s2,16(sp)
    800018a0:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv s4, ra");
    800018a4:	00008a13          	mv	s4,ra
    thread_t mainThread;
    //Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    kthread_create(&mainThread, nullptr, nullptr);
    800018a8:	00000613          	li	a2,0
    800018ac:	00000593          	li	a1,0
    800018b0:	fd840513          	addi	a0,s0,-40
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	2e0080e7          	jalr	736(ra) # 80002b94 <_Z14kthread_createPP3TCBPFvPvES2_>

    TCB::running = mainThread;
    800018bc:	00005797          	auipc	a5,0x5
    800018c0:	7947b783          	ld	a5,1940(a5) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018c4:	fd843703          	ld	a4,-40(s0)
    800018c8:	00e7b023          	sd	a4,0(a5)
    //kprintString("Main\n");

    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    800018cc:	00005797          	auipc	a5,0x5
    800018d0:	76c7b783          	ld	a5,1900(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec]"r"(stvec));
    800018d4:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
    800018d8:	00200793          	li	a5,2
    800018dc:	1007a073          	csrs	sstatus,a5
        return kmem_alloc(sz);
    800018e0:	02800513          	li	a0,40
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	258080e7          	jalr	600(ra) # 80002b3c <_Z10kmem_allocm>
    800018ec:	00050493          	mv	s1,a0
    userMainThread():Thread(){}
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	31c080e7          	jalr	796(ra) # 80001c0c <_ZN6ThreadC1Ev>
    800018f8:	00005797          	auipc	a5,0x5
    800018fc:	6c878793          	addi	a5,a5,1736 # 80006fc0 <_ZTV14userMainThread+0x10>
    80001900:	00f4b023          	sd	a5,0(s1)
    80001904:	0204a023          	sw	zero,32(s1)
    //__asm__ volatile("li a0, 0x88");
    //__asm__ volatile("ecall");
    //__asm__ volatile("li a0, 0x1");


    enterUserMode();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f40080e7          	jalr	-192(ra) # 80001848 <_Z13enterUserModev>
    __asm__ volatile("addi sp, sp, 16");
    80001910:	01010113          	addi	sp,sp,16
        __putc(a);
        if(a=='x')return 0;
    }*/


     __asm__ volatile("li a0, 0x101");
    80001914:	10100513          	li	a0,257
     __asm__ volatile("ecall");
    80001918:	00000073          	ecall

    /*thread_t thr = 0;
    thread_create(&thr, userMainWrapper, nullptr);
    while(!thr->isFinished())thread_dispatch();*/
    //kprintString("wtf\n");
    thr->start();
    8000191c:	00048513          	mv	a0,s1
    80001920:	00000097          	auipc	ra,0x0
    80001924:	27c080e7          	jalr	636(ra) # 80001b9c <_ZN6Thread5startEv>
    //thr = 0;
    //kprintString("kako\n");
    while(!thr->finished)thread_dispatch();
    80001928:	0204a783          	lw	a5,32(s1)
    8000192c:	02079663          	bnez	a5,80001958 <main+0xcc>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	ca0080e7          	jalr	-864(ra) # 800015d0 <thread_dispatch>
    80001938:	ff1ff06f          	j	80001928 <main+0x9c>
    8000193c:	00050913          	mv	s2,a0
    userMainThread *thr = new userMainThread();
    80001940:	00048513          	mv	a0,s1
    80001944:	00000097          	auipc	ra,0x0
    80001948:	16c080e7          	jalr	364(ra) # 80001ab0 <_ZdlPv>
    8000194c:	00090513          	mv	a0,s2
    80001950:	00007097          	auipc	ra,0x7
    80001954:	878080e7          	jalr	-1928(ra) # 800081c8 <_Unwind_Resume>
    }*/
    //kprintString("lmao\n");
    /*uint64 volatile sstatus = Riscv::r_sstatus();
    kprintInteger(sstatus);
    kprintString("\n je sstatus\n");*/
    getPcVaule();
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	f18080e7          	jalr	-232(ra) # 80001870 <_Z10getPcVaulev>
    __asm__ volatile("li a0,0x99");
    80001960:	09900513          	li	a0,153
    __asm__ volatile("ecall");
    80001964:	00000073          	ecall
    //kprintString("dasdad\n");
    //Riscv::w_sstatus(0);
    //kprintString("xd\n");
    return 0;
}
    80001968:	00000513          	li	a0,0
    8000196c:	02813083          	ld	ra,40(sp)
    80001970:	02013403          	ld	s0,32(sp)
    80001974:	01813483          	ld	s1,24(sp)
    80001978:	01013903          	ld	s2,16(sp)
    8000197c:	03010113          	addi	sp,sp,48
    80001980:	00008067          	ret

0000000080001984 <_ZN14userMainThread3runEv>:
    void run() override{
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050493          	mv	s1,a0
        userMain();
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	b1c080e7          	jalr	-1252(ra) # 800034b8 <_Z8userMainv>
        finished = true;
    800019a4:	00100793          	li	a5,1
    800019a8:	02f4a023          	sw	a5,32(s1)
    }
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN14userMainThreadD1Ev>:
class userMainThread : public Thread{
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    800019d0:	00005797          	auipc	a5,0x5
    800019d4:	5f078793          	addi	a5,a5,1520 # 80006fc0 <_ZTV14userMainThread+0x10>
    800019d8:	00f53023          	sd	a5,0(a0)
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	0fc080e7          	jalr	252(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    800019e4:	00813083          	ld	ra,8(sp)
    800019e8:	00013403          	ld	s0,0(sp)
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret

00000000800019f4 <_ZN14userMainThreadD0Ev>:
    800019f4:	fe010113          	addi	sp,sp,-32
    800019f8:	00113c23          	sd	ra,24(sp)
    800019fc:	00813823          	sd	s0,16(sp)
    80001a00:	00913423          	sd	s1,8(sp)
    80001a04:	02010413          	addi	s0,sp,32
    80001a08:	00050493          	mv	s1,a0
    80001a0c:	00005797          	auipc	a5,0x5
    80001a10:	5b478793          	addi	a5,a5,1460 # 80006fc0 <_ZTV14userMainThread+0x10>
    80001a14:	00f53023          	sd	a5,0(a0)
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	0c0080e7          	jalr	192(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	08c080e7          	jalr	140(ra) # 80001ab0 <_ZdlPv>
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN6Thread10runWrapperEPv>:
    thread_dispatch();
}

void Thread::runWrapper(void *arg) {
    Thread* thr = (Thread*)arg;
    if(!thr)return;
    80001a40:	04050263          	beqz	a0,80001a84 <_ZN6Thread10runWrapperEPv+0x44>
void Thread::runWrapper(void *arg) {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    if(thr->body){
    80001a54:	01053783          	ld	a5,16(a0)
    80001a58:	00078e63          	beqz	a5,80001a74 <_ZN6Thread10runWrapperEPv+0x34>
        thr->body(thr->arg);
    80001a5c:	01853503          	ld	a0,24(a0)
    80001a60:	000780e7          	jalr	a5
    }else{
        thr->run();
    }
    //dispatch();
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret
        thr->run();
    80001a74:	00053783          	ld	a5,0(a0)
    80001a78:	0107b783          	ld	a5,16(a5)
    80001a7c:	000780e7          	jalr	a5
    80001a80:	fe5ff06f          	j	80001a64 <_ZN6Thread10runWrapperEPv+0x24>
    80001a84:	00008067          	ret

0000000080001a88 <_Znwm>:
void* operator new (size_t sz){
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00113423          	sd	ra,8(sp)
    80001a90:	00813023          	sd	s0,0(sp)
    80001a94:	01010413          	addi	s0,sp,16
    return mem_alloc(sz);
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	9d0080e7          	jalr	-1584(ra) # 80001468 <mem_alloc>
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZdlPv>:
void operator delete (void* p){
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	9f0080e7          	jalr	-1552(ra) # 800014b0 <mem_free>
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN6ThreadD1Ev>:

Thread::Thread(){

}

Thread::~Thread() {
    80001ad8:	fe010113          	addi	sp,sp,-32
    80001adc:	00113c23          	sd	ra,24(sp)
    80001ae0:	00813823          	sd	s0,16(sp)
    80001ae4:	00913423          	sd	s1,8(sp)
    80001ae8:	02010413          	addi	s0,sp,32
    80001aec:	00005797          	auipc	a5,0x5
    80001af0:	50478793          	addi	a5,a5,1284 # 80006ff0 <_ZTV6Thread+0x10>
    80001af4:	00f53023          	sd	a5,0(a0)
    if(myHandle)delete myHandle;
    80001af8:	00853483          	ld	s1,8(a0)
    80001afc:	00048e63          	beqz	s1,80001b18 <_ZN6ThreadD1Ev+0x40>
    80001b00:	00048513          	mv	a0,s1
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	24c080e7          	jalr	588(ra) # 80001d50 <_ZN3TCBD1Ev>
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	fa0080e7          	jalr	-96(ra) # 80001ab0 <_ZdlPv>
    myHandle = nullptr;
    body = nullptr;
    arg = nullptr;
}
    80001b18:	01813083          	ld	ra,24(sp)
    80001b1c:	01013403          	ld	s0,16(sp)
    80001b20:	00813483          	ld	s1,8(sp)
    80001b24:	02010113          	addi	sp,sp,32
    80001b28:	00008067          	ret

0000000080001b2c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b2c:	fe010113          	addi	sp,sp,-32
    80001b30:	00113c23          	sd	ra,24(sp)
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	02010413          	addi	s0,sp,32
    80001b40:	00050493          	mv	s1,a0
}
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	f94080e7          	jalr	-108(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	f60080e7          	jalr	-160(ra) # 80001ab0 <_ZdlPv>
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	02010113          	addi	sp,sp,32
    80001b68:	00008067          	ret

0000000080001b6c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00813423          	sd	s0,8(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	00005797          	auipc	a5,0x5
    80001b7c:	47878793          	addi	a5,a5,1144 # 80006ff0 <_ZTV6Thread+0x10>
    80001b80:	00f53023          	sd	a5,0(a0)
    80001b84:	00053423          	sd	zero,8(a0)
    this->body = body;
    80001b88:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001b8c:	00c53c23          	sd	a2,24(a0)
}
    80001b90:	00813403          	ld	s0,8(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)return -2; // start method has been initiated in the past
    80001b9c:	00853783          	ld	a5,8(a0)
    80001ba0:	02079e63          	bnez	a5,80001bdc <_ZN6Thread5startEv+0x40>
int Thread::start(){
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00113423          	sd	ra,8(sp)
    80001bac:	00813023          	sd	s0,0(sp)
    80001bb0:	01010413          	addi	s0,sp,16
    int status = thread_create(&myHandle, runWrapper, this);
    80001bb4:	00050613          	mv	a2,a0
    80001bb8:	00000597          	auipc	a1,0x0
    80001bbc:	e8858593          	addi	a1,a1,-376 # 80001a40 <_ZN6Thread10runWrapperEPv>
    80001bc0:	00850513          	addi	a0,a0,8
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	934080e7          	jalr	-1740(ra) # 800014f8 <thread_create>
}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret
    if(myHandle != nullptr)return -2; // start method has been initiated in the past
    80001bdc:	ffe00513          	li	a0,-2
}
    80001be0:	00008067          	ret

0000000080001be4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	9dc080e7          	jalr	-1572(ra) # 800015d0 <thread_dispatch>
}
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00813423          	sd	s0,8(sp)
    80001c14:	01010413          	addi	s0,sp,16
    80001c18:	00005797          	auipc	a5,0x5
    80001c1c:	3d878793          	addi	a5,a5,984 # 80006ff0 <_ZTV6Thread+0x10>
    80001c20:	00f53023          	sd	a5,0(a0)
    80001c24:	00053423          	sd	zero,8(a0)
    80001c28:	00053823          	sd	zero,16(a0)
    80001c2c:	00053c23          	sd	zero,24(a0)
}
    80001c30:	00813403          	ld	s0,8(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00813423          	sd	s0,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get()->data;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	224080e7          	jalr	548(ra) # 80001e8c <_ZN5Riscv10popSppSpieEv>
    __asm__ volatile("addi sp, sp, 16");
    80001c70:	01010113          	addi	sp,sp,16
    running->body((void*)running->context.arg);
    80001c74:	00005497          	auipc	s1,0x5
    80001c78:	43c48493          	addi	s1,s1,1084 # 800070b0 <_ZN3TCB7runningE>
    80001c7c:	0004b783          	ld	a5,0(s1)
    80001c80:	0007b703          	ld	a4,0(a5)
    80001c84:	0207b503          	ld	a0,32(a5)
    80001c88:	000700e7          	jalr	a4
    running->setFinished(true);
    80001c8c:	0004b783          	ld	a5,0(s1)
class TCB{
public:
    ~TCB();
    bool isFinished() const{return finished;}

    void setFinished(bool finished){this->finished = finished;}
    80001c90:	00100713          	li	a4,1
    80001c94:	02e78c23          	sb	a4,56(a5)
    thread_dispatch();
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	938080e7          	jalr	-1736(ra) # 800015d0 <thread_dispatch>
}
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret

0000000080001cb4 <_ZN3TCB5yieldEv>:
void TCB::yield(){
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00813423          	sd	s0,8(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001cc0:	00000073          	ecall
}
    80001cc4:	00813403          	ld	s0,8(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001cd0:	fe010113          	addi	sp,sp,-32
    80001cd4:	00113c23          	sd	ra,24(sp)
    80001cd8:	00813823          	sd	s0,16(sp)
    80001cdc:	00913423          	sd	s1,8(sp)
    80001ce0:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001ce4:	00005497          	auipc	s1,0x5
    80001ce8:	3cc4b483          	ld	s1,972(s1) # 800070b0 <_ZN3TCB7runningE>
    bool isFinished() const{return finished;}
    80001cec:	0384c783          	lbu	a5,56(s1)
    if(!old->isFinished()){
    80001cf0:	04078863          	beqz	a5,80001d40 <_ZN3TCB8dispatchEv+0x70>
        numberOfActiveThreads--;
    80001cf4:	00005717          	auipc	a4,0x5
    80001cf8:	3bc70713          	addi	a4,a4,956 # 800070b0 <_ZN3TCB7runningE>
    80001cfc:	00873783          	ld	a5,8(a4)
    80001d00:	fff78793          	addi	a5,a5,-1
    80001d04:	00f73423          	sd	a5,8(a4)
    running = Scheduler::get()->data;
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	aa8080e7          	jalr	-1368(ra) # 800017b0 <_ZN9Scheduler3getEv>
    80001d10:	00053583          	ld	a1,0(a0)
    80001d14:	00005797          	auipc	a5,0x5
    80001d18:	38b7be23          	sd	a1,924(a5) # 800070b0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001d1c:	01058593          	addi	a1,a1,16
    80001d20:	01048513          	addi	a0,s1,16
    80001d24:	fffff097          	auipc	ra,0xfffff
    80001d28:	6ec080e7          	jalr	1772(ra) # 80001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d2c:	01813083          	ld	ra,24(sp)
    80001d30:	01013403          	ld	s0,16(sp)
    80001d34:	00813483          	ld	s1,8(sp)
    80001d38:	02010113          	addi	sp,sp,32
    80001d3c:	00008067          	ret
        Scheduler::put(&old->schedulerNode);
    80001d40:	02848513          	addi	a0,s1,40
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	ab0080e7          	jalr	-1360(ra) # 800017f4 <_ZN9Scheduler3putEP13SchedulerNode>
    80001d4c:	fbdff06f          	j	80001d08 <_ZN3TCB8dispatchEv+0x38>

0000000080001d50 <_ZN3TCBD1Ev>:

TCB::~TCB(){
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    kmem_free(stack);
    80001d60:	00853503          	ld	a0,8(a0)
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	e08080e7          	jalr	-504(ra) # 80002b6c <_Z9kmem_freePv>
}
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN3TCBC1EPFvPvEmS0_S0_>:

TCB::TCB(TCB::Body body, uint64 timeSlice, void *arg, void *stack) :
    80001d7c:	00050793          	mv	a5,a0
            stack != nullptr ? (uint64)stack : 0,
            arg != nullptr ? (uint64)arg : 0
            }),
    schedulerNode(this, nullptr),
    finished(false),
    timeSlice(timeSlice)
    80001d80:	00b53023          	sd	a1,0(a0)
    80001d84:	00e53423          	sd	a4,8(a0)
    80001d88:	00000517          	auipc	a0,0x0
    80001d8c:	ecc50513          	addi	a0,a0,-308 # 80001c54 <_ZN3TCB13threadWrapperEv>
    80001d90:	00a7b823          	sd	a0,16(a5)
    80001d94:	00e7bc23          	sd	a4,24(a5)
    80001d98:	02d7b023          	sd	a3,32(a5)

class TCB;
class SchedulerNode{
    TCB* data;
    SchedulerNode* next;
    SchedulerNode(TCB* data, SchedulerNode* next):data(data), next(next){}
    80001d9c:	02f7b423          	sd	a5,40(a5)
    80001da0:	0207b823          	sd	zero,48(a5)
    80001da4:	02078c23          	sb	zero,56(a5)
    80001da8:	04c7b023          	sd	a2,64(a5)
{
    if(body != nullptr)Scheduler::put(&schedulerNode);
    80001dac:	02058863          	beqz	a1,80001ddc <_ZN3TCBC1EPFvPvEmS0_S0_+0x60>
TCB::TCB(TCB::Body body, uint64 timeSlice, void *arg, void *stack) :
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    80001dc0:	02878513          	addi	a0,a5,40
    if(body != nullptr)Scheduler::put(&schedulerNode);
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	a30080e7          	jalr	-1488(ra) # 800017f4 <_ZN9Scheduler3putEP13SchedulerNode>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void* arg, void* stack){
    80001de0:	fd010113          	addi	sp,sp,-48
    80001de4:	02113423          	sd	ra,40(sp)
    80001de8:	02813023          	sd	s0,32(sp)
    80001dec:	00913c23          	sd	s1,24(sp)
    80001df0:	01213823          	sd	s2,16(sp)
    80001df4:	01313423          	sd	s3,8(sp)
    80001df8:	01413023          	sd	s4,0(sp)
    80001dfc:	03010413          	addi	s0,sp,48
    80001e00:	00050913          	mv	s2,a0
    80001e04:	00058993          	mv	s3,a1
    80001e08:	00060a13          	mv	s4,a2
    numberOfActiveThreads++;
    80001e0c:	00005717          	auipc	a4,0x5
    80001e10:	2a470713          	addi	a4,a4,676 # 800070b0 <_ZN3TCB7runningE>
    80001e14:	00873783          	ld	a5,8(a4)
    80001e18:	00178793          	addi	a5,a5,1
    80001e1c:	00f73423          	sd	a5,8(a4)
private:
    ///  ADD new[], delete and delete[]
    /// \param size
    /// \return
    void *operator new(size_t size){
        void *p = kmem_alloc(size);
    80001e20:	04800513          	li	a0,72
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	d18080e7          	jalr	-744(ra) # 80002b3c <_Z10kmem_allocm>
    80001e2c:	00050493          	mv	s1,a0
    return (TCB*)(new TCB(body, TIME_SLICE, arg, stack));
    80001e30:	000a0713          	mv	a4,s4
    80001e34:	00098693          	mv	a3,s3
    80001e38:	00200613          	li	a2,2
    80001e3c:	00090593          	mv	a1,s2
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	f3c080e7          	jalr	-196(ra) # 80001d7c <_ZN3TCBC1EPFvPvEmS0_S0_>
    80001e48:	0200006f          	j	80001e68 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x88>
    80001e4c:	00050913          	mv	s2,a0
    80001e50:	00048513          	mv	a0,s1
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	c5c080e7          	jalr	-932(ra) # 80001ab0 <_ZdlPv>
    80001e5c:	00090513          	mv	a0,s2
    80001e60:	00006097          	auipc	ra,0x6
    80001e64:	368080e7          	jalr	872(ra) # 800081c8 <_Unwind_Resume>
}
    80001e68:	00048513          	mv	a0,s1
    80001e6c:	02813083          	ld	ra,40(sp)
    80001e70:	02013403          	ld	s0,32(sp)
    80001e74:	01813483          	ld	s1,24(sp)
    80001e78:	01013903          	ld	s2,16(sp)
    80001e7c:	00813983          	ld	s3,8(sp)
    80001e80:	00013a03          	ld	s4,0(sp)
    80001e84:	03010113          	addi	sp,sp,48
    80001e88:	00008067          	ret

0000000080001e8c <_ZN5Riscv10popSppSpieEv>:
#include "../h/TCB.hpp"
#include "../h/SemaphoreBase.hpp"
#include "../h/kernel_functions.hpp"


void Riscv::popSppSpie(){
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00813423          	sd	s0,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001e98:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001e9c:	10200073          	sret
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN5Riscv20handleSupervisorTrapEv>:


void Riscv::handleSupervisorTrap(){
    80001eac:	ef010113          	addi	sp,sp,-272
    80001eb0:	10113423          	sd	ra,264(sp)
    80001eb4:	10813023          	sd	s0,256(sp)
    80001eb8:	0e913c23          	sd	s1,248(sp)
    80001ebc:	0f213823          	sd	s2,240(sp)
    80001ec0:	0f313423          	sd	s3,232(sp)
    80001ec4:	11010413          	addi	s0,sp,272
    __asm__ volatile("mv s1, a0");
    80001ec8:	00050493          	mv	s1,a0
    __asm__ volatile("mv s2, a1");
    80001ecc:	00058913          	mv	s2,a1
    __asm__ volatile("mv s3, a2");
    80001ed0:	00060993          	mv	s3,a2
    __asm__ volatile("mv s4, a3");
    80001ed4:	00068a13          	mv	s4,a3
    __asm__ volatile("mv s5, a4");
    80001ed8:	00070a93          	mv	s5,a4
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001edc:	142027f3          	csrr	a5,scause
    80001ee0:	f6f43023          	sd	a5,-160(s0)
    return scause;
    80001ee4:	f6043783          	ld	a5,-160(s0)
    uint64 volatile scause = r_scause();
    80001ee8:	fcf43423          	sd	a5,-56(s0)

    if(scause == 0x8000000000000001UL){
    80001eec:	fc843703          	ld	a4,-56(s0)
    80001ef0:	fff00793          	li	a5,-1
    80001ef4:	03f79793          	slli	a5,a5,0x3f
    80001ef8:	00178793          	addi	a5,a5,1
    80001efc:	0cf70463          	beq	a4,a5,80001fc4 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if(scause == 0x8000000000000009UL){
    80001f00:	fc843703          	ld	a4,-56(s0)
    80001f04:	fff00793          	li	a5,-1
    80001f08:	03f79793          	slli	a5,a5,0x3f
    80001f0c:	00978793          	addi	a5,a5,9
    80001f10:	14f70863          	beq	a4,a5,80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
        }

        plic_complete(deviceInterrupt);*/
        console_handler();
    }
    else if(scause == 8) {
    80001f14:	fc843703          	ld	a4,-56(s0)
    80001f18:	00800793          	li	a5,8
    80001f1c:	14f70863          	beq	a4,a5,8000206c <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        __asm__ volatile("li s5,-1337");
        uint64 volatile sepc = Riscv::r_sepc();
        Riscv::w_sepc(sepc+4);
        //Riscv::mc_sstatus(0x02);
    }
    else if(scause == 9){
    80001f20:	fc843703          	ld	a4,-56(s0)
    80001f24:	00900793          	li	a5,9
    80001f28:	5cf71663          	bne	a4,a5,800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x648>
        // CALL 1 and 2 ARE NEEDED
        uint32 id;
        __asm__ volatile("mv %0,s1":"=r"(id));
    80001f2c:	00048793          	mv	a5,s1
    80001f30:	0007879b          	sext.w	a5,a5
        if(id == 0x01){
    80001f34:	00100713          	li	a4,1
    80001f38:	38e78263          	beq	a5,a4,800022bc <_ZN5Riscv20handleSupervisorTrapEv+0x410>
            size_t sz;
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
            void* result = MemoryAllocator::malloc(sz);
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case
        }else if(id == 0x02) {
    80001f3c:	00200713          	li	a4,2
    80001f40:	3ae78a63          	beq	a5,a4,800022f4 <_ZN5Riscv20handleSupervisorTrapEv+0x448>
            //__asm__ volatile("mv s1,a1"); // in case addr is stored in register a1, so it's not overwritten
            void *addr = 0;
            __asm__ volatile("mv %0,s2":"=r"(addr));
            int result = MemoryAllocator::free(addr);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }else if(id == 0x11){
    80001f44:	01100713          	li	a4,17
    80001f48:	3ce78063          	beq	a5,a4,80002308 <_ZN5Riscv20handleSupervisorTrapEv+0x45c>
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));

            *handle = TCB::createThread(start_routine, arg, stack);
        }else if(id == 0x12){
    80001f4c:	01200713          	li	a4,18
    80001f50:	3ce78c63          	beq	a5,a4,80002328 <_ZN5Riscv20handleSupervisorTrapEv+0x47c>
                TCB* old = TCB::running;
                numberOfActiveThreads--;
                TCB::running = Scheduler::get()->data;
                TCB::contextSwitch(&old->context, &TCB::running->context);
            }
        }else if(id == 0x13){
    80001f54:	01300713          	li	a4,19
    80001f58:	42e78263          	beq	a5,a4,8000237c <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>

            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
            return;
        }else if(id == 0x21) {
    80001f5c:	02100713          	li	a4,33
    80001f60:	46e78463          	beq	a5,a4,800023c8 <_ZN5Riscv20handleSupervisorTrapEv+0x51c>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            __asm__ volatile("mv %[val],s3":[val]"=r"(val));


            *handle = new SemaphoreBase(val);
        }else if(id == 0x22){
    80001f64:	02200713          	li	a4,34
    80001f68:	48e78663          	beq	a5,a4,800023f4 <_ZN5Riscv20handleSupervisorTrapEv+0x548>
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->close();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x23){
    80001f6c:	02300713          	li	a4,35
    80001f70:	48e78c63          	beq	a5,a4,80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x55c>
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->wait();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x24){
    80001f74:	02400713          	li	a4,36
    80001f78:	4ae78263          	beq	a5,a4,8000241c <_ZN5Riscv20handleSupervisorTrapEv+0x570>
            SemaphoreBase* handle;
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
            int status = handle->signal();
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
        }else if(id == 0x41) {
    80001f7c:	04100713          	li	a4,65
    80001f80:	4ae78863          	beq	a5,a4,80002430 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
            //ms_sstatus(SSTATUS_SIE);
            char c = __getc();
            //mc_sstatus(SSTATUS_SIE);
            //console_handler();
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
        }else if(id == 0x42){
    80001f84:	04200713          	li	a4,66
    80001f88:	4ae78c63          	beq	a5,a4,80002440 <_ZN5Riscv20handleSupervisorTrapEv+0x594>
            char c;
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
            __putc(c);
            //console_handler();
        }else if(id == 0x66) {
    80001f8c:	06600713          	li	a4,102
    80001f90:	4ce78263          	beq	a5,a4,80002454 <_ZN5Riscv20handleSupervisorTrapEv+0x5a8>
            TCB::contextSwitch(&old->context, &TCB::running->context);

            w_sstatus(sstatus);
            w_sepc(sepc);
            return;
        }else if(id==0x88) {
    80001f94:	08800713          	li	a4,136
    80001f98:	52e78a63          	beq	a5,a4,800024cc <_ZN5Riscv20handleSupervisorTrapEv+0x620>
            Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
            uint64 volatile sepc = r_sepc();
            w_sepc(sepc + 4);
            return;
        }else if(id == 0x99){
    80001f9c:	09900713          	li	a4,153
    80001fa0:	32e79663          	bne	a5,a4,800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
    80001fa4:	10000793          	li	a5,256
    80001fa8:	1007a073          	csrs	sstatus,a5
            ms_sstatus(SSTATUS_SPP);
            uint64 volatile pc;
            __asm__ volatile("mv %[pc], s6":[pc]"=r"(pc));
    80001fac:	000b0793          	mv	a5,s6
    80001fb0:	f4f43823          	sd	a5,-176(s0)
            w_sepc(pc + 8);
    80001fb4:	f5043783          	ld	a5,-176(s0)
    80001fb8:	00878793          	addi	a5,a5,8
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    80001fbc:	14179073          	csrw	sepc,a5
            return;
    80001fc0:	03c0006f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        TCB::timeSliceCounter++;
    80001fc4:	00005717          	auipc	a4,0x5
    80001fc8:	07c73703          	ld	a4,124(a4) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fcc:	00073783          	ld	a5,0(a4)
    80001fd0:	00178793          	addi	a5,a5,1
    80001fd4:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80001fd8:	00005717          	auipc	a4,0x5
    80001fdc:	07873703          	ld	a4,120(a4) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fe0:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice;}
    80001fe4:	04073703          	ld	a4,64(a4)
    80001fe8:	02e7f863          	bgeu	a5,a4,80002018 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile("csrc sip, %[mask]": : [mask]"r"(mask));
    80001fec:	00200793          	li	a5,2
    80001ff0:	1447b073          	csrc	sip,a5
        kprintString("scause :");
        kprintInteger(scause);
        kprintString("\n");
    }

    console_handler();
    80001ff4:	00004097          	auipc	ra,0x4
    80001ff8:	89c080e7          	jalr	-1892(ra) # 80005890 <console_handler>
    80001ffc:	10813083          	ld	ra,264(sp)
    80002000:	10013403          	ld	s0,256(sp)
    80002004:	0f813483          	ld	s1,248(sp)
    80002008:	0f013903          	ld	s2,240(sp)
    8000200c:	0e813983          	ld	s3,232(sp)
    80002010:	11010113          	addi	sp,sp,272
    80002014:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    80002018:	141027f3          	csrr	a5,sepc
    8000201c:	f6f43823          	sd	a5,-144(s0)
    return sepc;
    80002020:	f7043783          	ld	a5,-144(s0)
            uint64 volatile sepc = r_sepc();
    80002024:	eef43823          	sd	a5,-272(s0)
}

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002028:	100027f3          	csrr	a5,sstatus
    8000202c:	f6f43423          	sd	a5,-152(s0)
    return sstatus;
    80002030:	f6843783          	ld	a5,-152(s0)
            uint64 volatile sstatus = r_sstatus();
    80002034:	eef43c23          	sd	a5,-264(s0)
            TCB::timeSliceCounter = 0;
    80002038:	00005797          	auipc	a5,0x5
    8000203c:	0087b783          	ld	a5,8(a5) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002040:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002044:	00000097          	auipc	ra,0x0
    80002048:	c8c080e7          	jalr	-884(ra) # 80001cd0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000204c:	ef843783          	ld	a5,-264(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus){
    __asm__ volatile ("csrw sstatus, %[sstatus]": : [sstatus]"r"(sstatus));
    80002050:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002054:	ef043783          	ld	a5,-272(s0)
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    80002058:	14179073          	csrw	sepc,a5
}
    8000205c:	f91ff06f          	j	80001fec <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        console_handler();
    80002060:	00004097          	auipc	ra,0x4
    80002064:	830080e7          	jalr	-2000(ra) # 80005890 <console_handler>
    80002068:	f8dff06f          	j	80001ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        __asm__ volatile("mv %0,s1":"=r"(id));
    8000206c:	00048793          	mv	a5,s1
    80002070:	0007879b          	sext.w	a5,a5
        if(id == 0x01){
    80002074:	00100713          	li	a4,1
    80002078:	08e78263          	beq	a5,a4,800020fc <_ZN5Riscv20handleSupervisorTrapEv+0x250>
        }else if(id == 0x02) {
    8000207c:	00200713          	li	a4,2
    80002080:	0ae78a63          	beq	a5,a4,80002134 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
        }else if(id == 0x11){
    80002084:	01100713          	li	a4,17
    80002088:	0ce78063          	beq	a5,a4,80002148 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
        }else if(id == 0x12){
    8000208c:	01200713          	li	a4,18
    80002090:	0ce78c63          	beq	a5,a4,80002168 <_ZN5Riscv20handleSupervisorTrapEv+0x2bc>
        }else if(id == 0x13){
    80002094:	01300713          	li	a4,19
    80002098:	12e78263          	beq	a5,a4,800021bc <_ZN5Riscv20handleSupervisorTrapEv+0x310>
        }else if(id == 0x21) {
    8000209c:	02100713          	li	a4,33
    800020a0:	16e78463          	beq	a5,a4,80002208 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        }else if(id == 0x22){
    800020a4:	02200713          	li	a4,34
    800020a8:	18e78663          	beq	a5,a4,80002234 <_ZN5Riscv20handleSupervisorTrapEv+0x388>
        }else if(id == 0x23){
    800020ac:	02300713          	li	a4,35
    800020b0:	18e78c63          	beq	a5,a4,80002248 <_ZN5Riscv20handleSupervisorTrapEv+0x39c>
        }else if(id == 0x24){
    800020b4:	02400713          	li	a4,36
    800020b8:	1ae78263          	beq	a5,a4,8000225c <_ZN5Riscv20handleSupervisorTrapEv+0x3b0>
        }else if(id == 0x41) {
    800020bc:	04100713          	li	a4,65
    800020c0:	1ae78863          	beq	a5,a4,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x3c4>
        }else if(id == 0x42){
    800020c4:	04200713          	li	a4,66
    800020c8:	1ce78063          	beq	a5,a4,80002288 <_ZN5Riscv20handleSupervisorTrapEv+0x3dc>
        }else if(id == 0x99){
    800020cc:	09900713          	li	a4,153
    800020d0:	1ce78663          	beq	a5,a4,8000229c <_ZN5Riscv20handleSupervisorTrapEv+0x3f0>
        }else if(id == 0x101){
    800020d4:	10100713          	li	a4,257
    800020d8:	02e79a63          	bne	a5,a4,8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    800020dc:	141027f3          	csrr	a5,sepc
    800020e0:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800020e4:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    800020e8:	f0f43c23          	sd	a5,-232(s0)
            w_sepc(sepc + 4);
    800020ec:	f1843783          	ld	a5,-232(s0)
    800020f0:	00478793          	addi	a5,a5,4
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800020f4:	14179073          	csrw	sepc,a5
            return;
    800020f8:	f05ff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
    800020fc:	00090513          	mv	a0,s2
            void* result = MemoryAllocator::malloc(sz);
    80002100:	00000097          	auipc	ra,0x0
    80002104:	45c080e7          	jalr	1116(ra) # 8000255c <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case
    80002108:	00050513          	mv	a0,a0
        __asm__ volatile("li s6,-1337");
    8000210c:	ac700b13          	li	s6,-1337
        __asm__ volatile("li s5,-1337");
    80002110:	ac700a93          	li	s5,-1337
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    80002114:	141027f3          	csrr	a5,sepc
    80002118:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    8000211c:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sepc = Riscv::r_sepc();
    80002120:	f2f43023          	sd	a5,-224(s0)
        Riscv::w_sepc(sepc+4);
    80002124:	f2043783          	ld	a5,-224(s0)
    80002128:	00478793          	addi	a5,a5,4
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    8000212c:	14179073          	csrw	sepc,a5
}
    80002130:	ec5ff06f          	j	80001ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0,s2":"=r"(addr));
    80002134:	00090513          	mv	a0,s2
            int result = MemoryAllocator::free(addr);
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	574080e7          	jalr	1396(ra) # 800026ac <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0,%0"::"r"(result));
    80002140:	00050513          	mv	a0,a0
    80002144:	fc9ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002148:	00090493          	mv	s1,s2
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
    8000214c:	00098513          	mv	a0,s3
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
    80002150:	000a0593          	mv	a1,s4
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));
    80002154:	000a8613          	mv	a2,s5
            *handle = TCB::createThread(start_routine, arg, stack);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	c88080e7          	jalr	-888(ra) # 80001de0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002160:	00a4b023          	sd	a0,0(s1)
    80002164:	fa9ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            int numberOfActiveThreads = TCB::numberOfActiveThreads;
    80002168:	00005797          	auipc	a5,0x5
    8000216c:	ec07b783          	ld	a5,-320(a5) # 80007028 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002170:	0007a703          	lw	a4,0(a5)
            if(numberOfActiveThreads == 1){
    80002174:	00100793          	li	a5,1
    80002178:	00f71663          	bne	a4,a5,80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
                __asm__ volatile("li a0,-1");
    8000217c:	fff00513          	li	a0,-1
    80002180:	f8dff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
                TCB::running->setFinished(true);
    80002184:	00005917          	auipc	s2,0x5
    80002188:	ecc93903          	ld	s2,-308(s2) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000218c:	00093483          	ld	s1,0(s2)
    void setFinished(bool finished){this->finished = finished;}
    80002190:	00100793          	li	a5,1
    80002194:	02f48c23          	sb	a5,56(s1)
                TCB::running = Scheduler::get()->data;
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	618080e7          	jalr	1560(ra) # 800017b0 <_ZN9Scheduler3getEv>
    800021a0:	00053583          	ld	a1,0(a0)
    800021a4:	00b93023          	sd	a1,0(s2)
                TCB::contextSwitch(&old->context, &TCB::running->context);
    800021a8:	01058593          	addi	a1,a1,16
    800021ac:	01048513          	addi	a0,s1,16
    800021b0:	fffff097          	auipc	ra,0xfffff
    800021b4:	260080e7          	jalr	608(ra) # 80001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    800021b8:	f55ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    800021bc:	141027f3          	csrr	a5,sepc
    800021c0:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    800021c4:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sepc = r_sepc() + 4;
    800021c8:	00478793          	addi	a5,a5,4
    800021cc:	f0f43023          	sd	a5,-256(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800021d0:	100027f3          	csrr	a5,sstatus
    800021d4:	f6f43c23          	sd	a5,-136(s0)
    return sstatus;
    800021d8:	f7843783          	ld	a5,-136(s0)
            uint64 volatile sstatus = r_sstatus();
    800021dc:	f0f43423          	sd	a5,-248(s0)
            TCB::timeSliceCounter = 0;
    800021e0:	00005797          	auipc	a5,0x5
    800021e4:	e607b783          	ld	a5,-416(a5) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021e8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	ae4080e7          	jalr	-1308(ra) # 80001cd0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800021f4:	f0843783          	ld	a5,-248(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]": : [sstatus]"r"(sstatus));
    800021f8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800021fc:	f0043783          	ld	a5,-256(s0)
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    80002200:	14179073          	csrw	sepc,a5
            return;
    80002204:	df9ff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002208:	00090913          	mv	s2,s2
            __asm__ volatile("mv %[val],s3":[val]"=r"(val));
    8000220c:	00098993          	mv	s3,s3
    int wait();
    int signal();


    void *operator new(size_t size){
        void *p = kmem_alloc(size);
    80002210:	01800513          	li	a0,24
    80002214:	00001097          	auipc	ra,0x1
    80002218:	928080e7          	jalr	-1752(ra) # 80002b3c <_Z10kmem_allocm>
    8000221c:	00050493          	mv	s1,a0
            *handle = new SemaphoreBase(val);
    80002220:	0009859b          	sext.w	a1,s3
    80002224:	00000097          	auipc	ra,0x0
    80002228:	668080e7          	jalr	1640(ra) # 8000288c <_ZN13SemaphoreBaseC1Ei>
    8000222c:	00993023          	sd	s1,0(s2)
    80002230:	eddff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002234:	00090513          	mv	a0,s2
            int status = handle->close();
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	844080e7          	jalr	-1980(ra) # 80002a7c <_ZN13SemaphoreBase5closeEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002240:	00050513          	mv	a0,a0
    80002244:	ec9ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002248:	00090513          	mv	a0,s2
            int status = handle->wait();
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	794080e7          	jalr	1940(ra) # 800029e0 <_ZN13SemaphoreBase4waitEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002254:	00050513          	mv	a0,a0
    80002258:	eb5ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    8000225c:	00090513          	mv	a0,s2
            int status = handle->signal();
    80002260:	00001097          	auipc	ra,0x1
    80002264:	898080e7          	jalr	-1896(ra) # 80002af8 <_ZN13SemaphoreBase6signalEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002268:	00050513          	mv	a0,a0
    8000226c:	ea1ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            char c = __getc();
    80002270:	00003097          	auipc	ra,0x3
    80002274:	5e8080e7          	jalr	1512(ra) # 80005858 <__getc>
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
    80002278:	00050513          	mv	a0,a0
            console_handler();
    8000227c:	00003097          	auipc	ra,0x3
    80002280:	614080e7          	jalr	1556(ra) # 80005890 <console_handler>
    80002284:	e89ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
    80002288:	00090513          	mv	a0,s2
            __putc(c);
    8000228c:	0ff57513          	andi	a0,a0,255
    80002290:	00003097          	auipc	ra,0x3
    80002294:	58c080e7          	jalr	1420(ra) # 8000581c <__putc>
    80002298:	e75ff06f          	j	8000210c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
    8000229c:	10000793          	li	a5,256
    800022a0:	1007a073          	csrs	sstatus,a5
            __asm__ volatile("mv %[pc], s6":[pc]"=r"(pc));
    800022a4:	000b0793          	mv	a5,s6
    800022a8:	f0f43823          	sd	a5,-240(s0)
            w_sepc(pc + 8);
    800022ac:	f1043783          	ld	a5,-240(s0)
    800022b0:	00878793          	addi	a5,a5,8
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800022b4:	14179073          	csrw	sepc,a5
            return;
    800022b8:	d45ff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            __asm__ volatile("mv %[sz],s2": [sz]"=r"(sz));
    800022bc:	00090513          	mv	a0,s2
            void* result = MemoryAllocator::malloc(sz);
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	29c080e7          	jalr	668(ra) # 8000255c <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0,%0"::"r"(result)); // result is already in a0, but just in case
    800022c8:	00050513          	mv	a0,a0
        __asm__ volatile("li s6,-1337");
    800022cc:	ac700b13          	li	s6,-1337
        __asm__ volatile("li s5,-1337");
    800022d0:	ac700a93          	li	s5,-1337
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    800022d4:	141027f3          	csrr	a5,sepc
    800022d8:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    800022dc:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sepc = Riscv::r_sepc();
    800022e0:	f4f43c23          	sd	a5,-168(s0)
        Riscv::w_sepc(sepc+4);
    800022e4:	f5843783          	ld	a5,-168(s0)
    800022e8:	00478793          	addi	a5,a5,4
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800022ec:	14179073          	csrw	sepc,a5
}
    800022f0:	d05ff06f          	j	80001ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0,s2":"=r"(addr));
    800022f4:	00090513          	mv	a0,s2
            int result = MemoryAllocator::free(addr);
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	3b4080e7          	jalr	948(ra) # 800026ac <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0,%0"::"r"(result));
    80002300:	00050513          	mv	a0,a0
    80002304:	fc9ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002308:	00090493          	mv	s1,s2
            __asm__ volatile("mv %[start_routine],s3":[start_routine]"=r"(start_routine));
    8000230c:	00098513          	mv	a0,s3
            __asm__ volatile("mv %[arg],s4":[arg]"=r"(arg));
    80002310:	000a0593          	mv	a1,s4
            __asm__ volatile("mv %[stack],s5":[stack]"=r"(stack));
    80002314:	000a8613          	mv	a2,s5
            *handle = TCB::createThread(start_routine, arg, stack);
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	ac8080e7          	jalr	-1336(ra) # 80001de0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002320:	00a4b023          	sd	a0,0(s1)
    80002324:	fa9ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            int numberOfActiveThreads = TCB::numberOfActiveThreads;
    80002328:	00005797          	auipc	a5,0x5
    8000232c:	d007b783          	ld	a5,-768(a5) # 80007028 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002330:	0007a703          	lw	a4,0(a5)
            if(numberOfActiveThreads == 1){
    80002334:	00100793          	li	a5,1
    80002338:	00f71663          	bne	a4,a5,80002344 <_ZN5Riscv20handleSupervisorTrapEv+0x498>
                __asm__ volatile("li a0,-1");
    8000233c:	fff00513          	li	a0,-1
    80002340:	f8dff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
                TCB::running->setFinished(true);
    80002344:	00005917          	auipc	s2,0x5
    80002348:	d0c93903          	ld	s2,-756(s2) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000234c:	00093483          	ld	s1,0(s2)
    80002350:	00100793          	li	a5,1
    80002354:	02f48c23          	sb	a5,56(s1)
                TCB::running = Scheduler::get()->data;
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	458080e7          	jalr	1112(ra) # 800017b0 <_ZN9Scheduler3getEv>
    80002360:	00053583          	ld	a1,0(a0)
    80002364:	00b93023          	sd	a1,0(s2)
                TCB::contextSwitch(&old->context, &TCB::running->context);
    80002368:	01058593          	addi	a1,a1,16
    8000236c:	01048513          	addi	a0,s1,16
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	0a0080e7          	jalr	160(ra) # 80001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80002378:	f55ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    8000237c:	141027f3          	csrr	a5,sepc
    80002380:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002384:	fa043783          	ld	a5,-96(s0)
            uint64 volatile sepc = r_sepc() + 4;
    80002388:	00478793          	addi	a5,a5,4
    8000238c:	f2f43423          	sd	a5,-216(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002390:	100027f3          	csrr	a5,sstatus
    80002394:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002398:	f9843783          	ld	a5,-104(s0)
            uint64 volatile sstatus = r_sstatus();
    8000239c:	f2f43823          	sd	a5,-208(s0)
            TCB::timeSliceCounter = 0;
    800023a0:	00005797          	auipc	a5,0x5
    800023a4:	ca07b783          	ld	a5,-864(a5) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023a8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	924080e7          	jalr	-1756(ra) # 80001cd0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800023b4:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]": : [sstatus]"r"(sstatus));
    800023b8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800023bc:	f2843783          	ld	a5,-216(s0)
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800023c0:	14179073          	csrw	sepc,a5
            return;
    800023c4:	c39ff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    800023c8:	00090913          	mv	s2,s2
            __asm__ volatile("mv %[val],s3":[val]"=r"(val));
    800023cc:	00098993          	mv	s3,s3
    800023d0:	01800513          	li	a0,24
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	768080e7          	jalr	1896(ra) # 80002b3c <_Z10kmem_allocm>
    800023dc:	00050493          	mv	s1,a0
            *handle = new SemaphoreBase(val);
    800023e0:	0009859b          	sext.w	a1,s3
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	4a8080e7          	jalr	1192(ra) # 8000288c <_ZN13SemaphoreBaseC1Ei>
    800023ec:	00993023          	sd	s1,0(s2)
    800023f0:	eddff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    800023f4:	00090513          	mv	a0,s2
            int status = handle->close();
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	684080e7          	jalr	1668(ra) # 80002a7c <_ZN13SemaphoreBase5closeEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002400:	00050513          	mv	a0,a0
    80002404:	ec9ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    80002408:	00090513          	mv	a0,s2
            int status = handle->wait();
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	5d4080e7          	jalr	1492(ra) # 800029e0 <_ZN13SemaphoreBase4waitEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002414:	00050513          	mv	a0,a0
    80002418:	eb5ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            __asm__ volatile("mv %[handle],s2":[handle]"=r"(handle));
    8000241c:	00090513          	mv	a0,s2
            int status = handle->signal();
    80002420:	00000097          	auipc	ra,0x0
    80002424:	6d8080e7          	jalr	1752(ra) # 80002af8 <_ZN13SemaphoreBase6signalEv>
            __asm__ volatile("mv a0,%[status]"::[status]"r"(status));
    80002428:	00050513          	mv	a0,a0
    8000242c:	ea1ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            char c = __getc();
    80002430:	00003097          	auipc	ra,0x3
    80002434:	428080e7          	jalr	1064(ra) # 80005858 <__getc>
            __asm__ volatile("mv a0,%[c]"::[c]"r"(c));
    80002438:	00050513          	mv	a0,a0
    8000243c:	e91ff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            __asm__ volatile("mv %[c],s2":[c]"=r"(c));
    80002440:	00090513          	mv	a0,s2
            __putc(c);
    80002444:	0ff57513          	andi	a0,a0,255
    80002448:	00003097          	auipc	ra,0x3
    8000244c:	3d4080e7          	jalr	980(ra) # 8000581c <__putc>
    80002450:	e7dff06f          	j	800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    80002454:	141027f3          	csrr	a5,sepc
    80002458:	faf43823          	sd	a5,-80(s0)
    return sepc;
    8000245c:	fb043783          	ld	a5,-80(s0)
            uint64 volatile sepc = r_sepc() + 4;
    80002460:	00478793          	addi	a5,a5,4
    80002464:	f2f43c23          	sd	a5,-200(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002468:	100027f3          	csrr	a5,sstatus
    8000246c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002470:	fa843783          	ld	a5,-88(s0)
            uint64 volatile sstatus = r_sstatus();
    80002474:	f4f43023          	sd	a5,-192(s0)
            TCB* old = TCB::running;
    80002478:	00005497          	auipc	s1,0x5
    8000247c:	bd84b483          	ld	s1,-1064(s1) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002480:	0004b903          	ld	s2,0(s1)
            TCB::numberOfActiveThreads--;
    80002484:	00005717          	auipc	a4,0x5
    80002488:	ba473703          	ld	a4,-1116(a4) # 80007028 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000248c:	00073783          	ld	a5,0(a4)
    80002490:	fff78793          	addi	a5,a5,-1
    80002494:	00f73023          	sd	a5,0(a4)
            TCB::running = Scheduler::get()->data;
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	318080e7          	jalr	792(ra) # 800017b0 <_ZN9Scheduler3getEv>
    800024a0:	00053583          	ld	a1,0(a0)
    800024a4:	00b4b023          	sd	a1,0(s1)
            TCB::contextSwitch(&old->context, &TCB::running->context);
    800024a8:	01058593          	addi	a1,a1,16
    800024ac:	01090513          	addi	a0,s2,16
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	f60080e7          	jalr	-160(ra) # 80001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
            w_sstatus(sstatus);
    800024b8:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]": : [sstatus]"r"(sstatus));
    800024bc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800024c0:	f3843783          	ld	a5,-200(s0)
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800024c4:	14179073          	csrw	sepc,a5
            return;
    800024c8:	b35ff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    __asm__ volatile("csrc sstatus, %[mask]": : [mask]"r"(mask));
    800024cc:	10000793          	li	a5,256
    800024d0:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrr %[sepc], sepc" :[sepc]"=r"(sepc));
    800024d4:	141027f3          	csrr	a5,sepc
    800024d8:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800024dc:	fb843783          	ld	a5,-72(s0)
            uint64 volatile sepc = r_sepc();
    800024e0:	f4f43423          	sd	a5,-184(s0)
            w_sepc(sepc + 4);
    800024e4:	f4843783          	ld	a5,-184(s0)
    800024e8:	00478793          	addi	a5,a5,4
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    800024ec:	14179073          	csrw	sepc,a5
            return;
    800024f0:	b0dff06f          	j	80001ffc <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        kprintString("scause :");
    800024f4:	00004517          	auipc	a0,0x4
    800024f8:	b2c50513          	addi	a0,a0,-1236 # 80006020 <CONSOLE_STATUS+0x10>
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	790080e7          	jalr	1936(ra) # 80002c8c <_Z12kprintStringPKc>
        kprintInteger(scause);
    80002504:	fc843503          	ld	a0,-56(s0)
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	7f4080e7          	jalr	2036(ra) # 80002cfc <_Z13kprintIntegerm>
        kprintString("\n");
    80002510:	00004517          	auipc	a0,0x4
    80002514:	b7050513          	addi	a0,a0,-1168 # 80006080 <_ZZ13kprintIntegermE6digits+0x50>
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	774080e7          	jalr	1908(ra) # 80002c8c <_Z12kprintStringPKc>
    80002520:	ad5ff06f          	j	80001ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    80002524:	00050913          	mv	s2,a0
            *handle = new SemaphoreBase(val);
    80002528:	00048513          	mv	a0,s1
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	584080e7          	jalr	1412(ra) # 80001ab0 <_ZdlPv>
    80002534:	00090513          	mv	a0,s2
    80002538:	00006097          	auipc	ra,0x6
    8000253c:	c90080e7          	jalr	-880(ra) # 800081c8 <_Unwind_Resume>
    80002540:	00050913          	mv	s2,a0
            *handle = new SemaphoreBase(val);
    80002544:	00048513          	mv	a0,s1
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	568080e7          	jalr	1384(ra) # 80001ab0 <_ZdlPv>
    80002550:	00090513          	mv	a0,s2
    80002554:	00006097          	auipc	ra,0x6
    80002558:	c74080e7          	jalr	-908(ra) # 800081c8 <_Unwind_Resume>

000000008000255c <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::BlockHeaderAllocated* MemoryAllocator::allocatedMemHead = nullptr;
bool MemoryAllocator::calledOnce = false;


//size is in bytes
void* MemoryAllocator::malloc(size_t size){
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00813423          	sd	s0,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    /*
    If malloc hasn't been called once before, then initialization of freeMemHead needs to be done
    */
    size = size * MEM_BLOCK_SIZE;
    80002568:	00651713          	slli	a4,a0,0x6
    if(!calledOnce){
    8000256c:	00005797          	auipc	a5,0x5
    80002570:	b5c7c783          	lbu	a5,-1188(a5) # 800070c8 <_ZN15MemoryAllocator10calledOnceE>
    80002574:	04079463          	bnez	a5,800025bc <_ZN15MemoryAllocator6mallocEm+0x60>
        freeMemHead = (BlockHeader*)HEAP_START_ADDR;
    80002578:	00005617          	auipc	a2,0x5
    8000257c:	ab863603          	ld	a2,-1352(a2) # 80007030 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002580:	00063783          	ld	a5,0(a2)
    80002584:	00005697          	auipc	a3,0x5
    80002588:	b4468693          	addi	a3,a3,-1212 # 800070c8 <_ZN15MemoryAllocator10calledOnceE>
    8000258c:	00f6b423          	sd	a5,8(a3)
        freeMemHead->next = nullptr;
    80002590:	0007b023          	sd	zero,0(a5)
        freeMemHead->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - (size_t)sizeof(BlockHeader);
    80002594:	00005797          	auipc	a5,0x5
    80002598:	ac47b783          	ld	a5,-1340(a5) # 80007058 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000259c:	0007b783          	ld	a5,0(a5)
    800025a0:	00063603          	ld	a2,0(a2)
    800025a4:	40c787b3          	sub	a5,a5,a2
    800025a8:	0086b603          	ld	a2,8(a3)
    800025ac:	ff078793          	addi	a5,a5,-16
    800025b0:	00f63423          	sd	a5,8(a2)
        calledOnce = true;
    800025b4:	00100793          	li	a5,1
    800025b8:	00f68023          	sb	a5,0(a3)
    }

    BlockHeader *blk = freeMemHead, *prev = nullptr;
    800025bc:	00005517          	auipc	a0,0x5
    800025c0:	b1453503          	ld	a0,-1260(a0) # 800070d0 <_ZN15MemoryAllocator11freeMemHeadE>
    800025c4:	00000693          	li	a3,0
    for(; blk!=nullptr; prev = blk, blk = blk->next){
    800025c8:	00050c63          	beqz	a0,800025e0 <_ZN15MemoryAllocator6mallocEm+0x84>
        if(blk->size >= size)break;
    800025cc:	00853783          	ld	a5,8(a0)
    800025d0:	00e7f863          	bgeu	a5,a4,800025e0 <_ZN15MemoryAllocator6mallocEm+0x84>
    for(; blk!=nullptr; prev = blk, blk = blk->next){
    800025d4:	00050693          	mv	a3,a0
    800025d8:	00053503          	ld	a0,0(a0)
    800025dc:	fedff06f          	j	800025c8 <_ZN15MemoryAllocator6mallocEm+0x6c>
    }

    // No space for allocating such chunk of memory
    if(blk == nullptr){
    800025e0:	0a050863          	beqz	a0,80002690 <_ZN15MemoryAllocator6mallocEm+0x134>
        return 0;
    }

    size_t remainingSize = blk->size - size;
    800025e4:	00853783          	ld	a5,8(a0)
    800025e8:	40e787b3          	sub	a5,a5,a4
    if(remainingSize >= sizeof(BlockHeader) + MEM_BLOCK_SIZE){
    800025ec:	04f00613          	li	a2,79
    800025f0:	06f67063          	bgeu	a2,a5,80002650 <_ZN15MemoryAllocator6mallocEm+0xf4>
        blk->size = size;
    800025f4:	00e53423          	sd	a4,8(a0)
        size_t offset = sizeof(BlockHeader) + size;
    800025f8:	01070713          	addi	a4,a4,16
        BlockHeader* newBlk = (BlockHeader*)((char*)blk+offset);
    800025fc:	00e50733          	add	a4,a0,a4
        if(prev)prev->next = newBlk;
    80002600:	04068263          	beqz	a3,80002644 <_ZN15MemoryAllocator6mallocEm+0xe8>
    80002604:	00e6b023          	sd	a4,0(a3)
        else freeMemHead = newBlk;
        newBlk->next = blk->next;
    80002608:	00053683          	ld	a3,0(a0)
    8000260c:	00d73023          	sd	a3,0(a4)
        newBlk->size = remainingSize - sizeof(BlockHeader);
    80002610:	ff078793          	addi	a5,a5,-16
    80002614:	00f73423          	sd	a5,8(a4)
    }else{
        if(prev)prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->next = nullptr;
    80002618:	00053023          	sd	zero,0(a0)

    BlockHeaderAllocated* blkAllocated = (BlockHeaderAllocated*)blk;
    blkAllocated->next = nullptr;
    blkAllocated->size = blk->size;

    if(!allocatedMemHead)allocatedMemHead = blkAllocated;
    8000261c:	00005697          	auipc	a3,0x5
    80002620:	abc6b683          	ld	a3,-1348(a3) # 800070d8 <_ZN15MemoryAllocator16allocatedMemHeadE>
    80002624:	04068663          	beqz	a3,80002670 <_ZN15MemoryAllocator6mallocEm+0x114>
    else{
        BlockHeaderAllocated* cur = allocatedMemHead, *prev = nullptr;
    80002628:	00068793          	mv	a5,a3
    8000262c:	00000713          	li	a4,0
        for(; cur!=nullptr; prev = cur, cur = cur->next){
    80002630:	04078663          	beqz	a5,8000267c <_ZN15MemoryAllocator6mallocEm+0x120>
            if((char*)cur > (char*)blkAllocated)break;
    80002634:	04f56463          	bltu	a0,a5,8000267c <_ZN15MemoryAllocator6mallocEm+0x120>
        for(; cur!=nullptr; prev = cur, cur = cur->next){
    80002638:	00078713          	mv	a4,a5
    8000263c:	0007b783          	ld	a5,0(a5)
    80002640:	ff1ff06f          	j	80002630 <_ZN15MemoryAllocator6mallocEm+0xd4>
        else freeMemHead = newBlk;
    80002644:	00005697          	auipc	a3,0x5
    80002648:	a8e6b623          	sd	a4,-1396(a3) # 800070d0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000264c:	fbdff06f          	j	80002608 <_ZN15MemoryAllocator6mallocEm+0xac>
        if(prev)prev->next = blk->next;
    80002650:	00068863          	beqz	a3,80002660 <_ZN15MemoryAllocator6mallocEm+0x104>
    80002654:	00053783          	ld	a5,0(a0)
    80002658:	00f6b023          	sd	a5,0(a3)
    8000265c:	fbdff06f          	j	80002618 <_ZN15MemoryAllocator6mallocEm+0xbc>
        else freeMemHead = blk->next;
    80002660:	00053783          	ld	a5,0(a0)
    80002664:	00005717          	auipc	a4,0x5
    80002668:	a6f73623          	sd	a5,-1428(a4) # 800070d0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000266c:	fadff06f          	j	80002618 <_ZN15MemoryAllocator6mallocEm+0xbc>
    if(!allocatedMemHead)allocatedMemHead = blkAllocated;
    80002670:	00005797          	auipc	a5,0x5
    80002674:	a6a7b423          	sd	a0,-1432(a5) # 800070d8 <_ZN15MemoryAllocator16allocatedMemHeadE>
    80002678:	0140006f          	j	8000268c <_ZN15MemoryAllocator6mallocEm+0x130>
        }
        if(!prev){
    8000267c:	02070063          	beqz	a4,8000269c <_ZN15MemoryAllocator6mallocEm+0x140>
            blkAllocated->next = allocatedMemHead;
            allocatedMemHead = blkAllocated;
        }else{
            blkAllocated->next = prev->next;
    80002680:	00073783          	ld	a5,0(a4)
    80002684:	00f53023          	sd	a5,0(a0)
            prev->next = blkAllocated;
    80002688:	00a73023          	sd	a0,0(a4)
        }
    }
    return (void*)((char*)blk+sizeof(BlockHeader));
    8000268c:	01050513          	addi	a0,a0,16
}
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret
            blkAllocated->next = allocatedMemHead;
    8000269c:	00d53023          	sd	a3,0(a0)
            allocatedMemHead = blkAllocated;
    800026a0:	00005797          	auipc	a5,0x5
    800026a4:	a2a7bc23          	sd	a0,-1480(a5) # 800070d8 <_ZN15MemoryAllocator16allocatedMemHeadE>
    800026a8:	fe5ff06f          	j	8000268c <_ZN15MemoryAllocator6mallocEm+0x130>

00000000800026ac <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* addr){
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    //address out of bounds => code -1
    if(addr<HEAP_START_ADDR || addr>=HEAP_END_ADDR)return -1;
    800026b8:	00005797          	auipc	a5,0x5
    800026bc:	9787b783          	ld	a5,-1672(a5) # 80007030 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026c0:	0007b783          	ld	a5,0(a5)
    800026c4:	18f56863          	bltu	a0,a5,80002854 <_ZN15MemoryAllocator4freeEPv+0x1a8>
    800026c8:	00005797          	auipc	a5,0x5
    800026cc:	9907b783          	ld	a5,-1648(a5) # 80007058 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026d0:	0007b783          	ld	a5,0(a5)
    800026d4:	18f57463          	bgeu	a0,a5,8000285c <_ZN15MemoryAllocator4freeEPv+0x1b0>
    //if malloc hasn't been called before then there is nothing to free => code -2
    if(!calledOnce)return -2;
    800026d8:	00005797          	auipc	a5,0x5
    800026dc:	9f07c783          	lbu	a5,-1552(a5) # 800070c8 <_ZN15MemoryAllocator10calledOnceE>
    800026e0:	18078263          	beqz	a5,80002864 <_ZN15MemoryAllocator4freeEPv+0x1b8>


    BlockHeaderAllocated* cur = allocatedMemHead, *prev = nullptr;
    800026e4:	00005797          	auipc	a5,0x5
    800026e8:	9f47b783          	ld	a5,-1548(a5) # 800070d8 <_ZN15MemoryAllocator16allocatedMemHeadE>
    800026ec:	00000693          	li	a3,0
    for(; cur!=nullptr; prev = cur, cur = cur->next){
    800026f0:	00078c63          	beqz	a5,80002708 <_ZN15MemoryAllocator4freeEPv+0x5c>
        if((char*)cur+sizeof(BlockHeaderAllocated)==(char*)addr)break;
    800026f4:	01078713          	addi	a4,a5,16
    800026f8:	00a70863          	beq	a4,a0,80002708 <_ZN15MemoryAllocator4freeEPv+0x5c>
    for(; cur!=nullptr; prev = cur, cur = cur->next){
    800026fc:	00078693          	mv	a3,a5
    80002700:	0007b783          	ld	a5,0(a5)
    80002704:	fedff06f          	j	800026f0 <_ZN15MemoryAllocator4freeEPv+0x44>
    }

    if(!cur){
    80002708:	16078263          	beqz	a5,8000286c <_ZN15MemoryAllocator4freeEPv+0x1c0>
        // address is not the same that was given by malloc function
        return -3;
    }else{
        if(!prev)allocatedMemHead = cur->next;
    8000270c:	02068a63          	beqz	a3,80002740 <_ZN15MemoryAllocator4freeEPv+0x94>
        else prev->next = cur->next;
    80002710:	0007b703          	ld	a4,0(a5)
    80002714:	00e6b023          	sd	a4,0(a3)
        cur->next = nullptr;
    80002718:	0007b023          	sd	zero,0(a5)


        BlockHeader* freeBlk = (BlockHeader*)cur, *curBlk = freeMemHead, *prev = nullptr;
    8000271c:	00005617          	auipc	a2,0x5
    80002720:	9b463603          	ld	a2,-1612(a2) # 800070d0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002724:	00060713          	mv	a4,a2
    80002728:	00000693          	li	a3,0
        for(; curBlk!=nullptr; prev = curBlk, curBlk = curBlk->next){
    8000272c:	02070263          	beqz	a4,80002750 <_ZN15MemoryAllocator4freeEPv+0xa4>
            if((char*)curBlk > (char*)freeBlk)break;
    80002730:	02e7e063          	bltu	a5,a4,80002750 <_ZN15MemoryAllocator4freeEPv+0xa4>
        for(; curBlk!=nullptr; prev = curBlk, curBlk = curBlk->next){
    80002734:	00070693          	mv	a3,a4
    80002738:	00073703          	ld	a4,0(a4)
    8000273c:	ff1ff06f          	j	8000272c <_ZN15MemoryAllocator4freeEPv+0x80>
        if(!prev)allocatedMemHead = cur->next;
    80002740:	0007b703          	ld	a4,0(a5)
    80002744:	00005697          	auipc	a3,0x5
    80002748:	98e6ba23          	sd	a4,-1644(a3) # 800070d8 <_ZN15MemoryAllocator16allocatedMemHeadE>
    8000274c:	fcdff06f          	j	80002718 <_ZN15MemoryAllocator4freeEPv+0x6c>
        }

        if(!prev){
    80002750:	04068463          	beqz	a3,80002798 <_ZN15MemoryAllocator4freeEPv+0xec>
            if(freeBlk->next && (char*)freeBlk+sizeof(BlockHeader)+freeBlk->size == (char*)freeBlk->next) {
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
                freeBlk->next = freeBlk->next->next;
            }
        }else{
            freeBlk->next = prev->next;
    80002754:	0006b703          	ld	a4,0(a3)
    80002758:	00e7b023          	sd	a4,0(a5)
            prev->next = freeBlk;
    8000275c:	00f6b023          	sd	a5,0(a3)
            //Try to merge previous free block and newly added one
            if((char*)prev+sizeof(BlockHeader)+prev->size == (char*)freeBlk) {
    80002760:	0086b603          	ld	a2,8(a3)
    80002764:	01060713          	addi	a4,a2,16
    80002768:	00e68733          	add	a4,a3,a4
    8000276c:	06f70c63          	beq	a4,a5,800027e4 <_ZN15MemoryAllocator4freeEPv+0x138>
                    prev->size += prev->next->size + sizeof(BlockHeader);
                    prev->next = prev->next->next;
                }
            }
            //Try to merge newly added free block with next one
            else if(freeBlk->next && (char*)freeBlk+sizeof(BlockHeader)+freeBlk->size == (char*)freeBlk->next) {
    80002770:	0007b703          	ld	a4,0(a5)
    80002774:	10070863          	beqz	a4,80002884 <_ZN15MemoryAllocator4freeEPv+0x1d8>
    80002778:	0087b603          	ld	a2,8(a5)
    8000277c:	01060693          	addi	a3,a2,16
    80002780:	00d786b3          	add	a3,a5,a3
    80002784:	0ad70863          	beq	a4,a3,80002834 <_ZN15MemoryAllocator4freeEPv+0x188>
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
                freeBlk->next = freeBlk->next->next;
            }
        }
    }
    return 0;
    80002788:	00000513          	li	a0,0
}
    8000278c:	00813403          	ld	s0,8(sp)
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret
            freeBlk->next = freeMemHead;
    80002798:	00c7b023          	sd	a2,0(a5)
            freeMemHead = freeBlk;
    8000279c:	00005717          	auipc	a4,0x5
    800027a0:	92f73a23          	sd	a5,-1740(a4) # 800070d0 <_ZN15MemoryAllocator11freeMemHeadE>
            if(freeBlk->next && (char*)freeBlk+sizeof(BlockHeader)+freeBlk->size == (char*)freeBlk->next) {
    800027a4:	0007b703          	ld	a4,0(a5)
    800027a8:	0c070663          	beqz	a4,80002874 <_ZN15MemoryAllocator4freeEPv+0x1c8>
    800027ac:	0087b603          	ld	a2,8(a5)
    800027b0:	01060693          	addi	a3,a2,16
    800027b4:	00d786b3          	add	a3,a5,a3
    800027b8:	00d70663          	beq	a4,a3,800027c4 <_ZN15MemoryAllocator4freeEPv+0x118>
    return 0;
    800027bc:	00000513          	li	a0,0
    800027c0:	fcdff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
    800027c4:	00873683          	ld	a3,8(a4)
    800027c8:	00d606b3          	add	a3,a2,a3
    800027cc:	01068693          	addi	a3,a3,16
    800027d0:	00d7b423          	sd	a3,8(a5)
                freeBlk->next = freeBlk->next->next;
    800027d4:	00073703          	ld	a4,0(a4)
    800027d8:	00e7b023          	sd	a4,0(a5)
    return 0;
    800027dc:	00000513          	li	a0,0
    800027e0:	fadff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
                prev->size += freeBlk->size + sizeof(BlockHeader);
    800027e4:	0087b703          	ld	a4,8(a5)
    800027e8:	00e60633          	add	a2,a2,a4
    800027ec:	01060613          	addi	a2,a2,16
    800027f0:	00c6b423          	sd	a2,8(a3)
                prev->next = freeBlk->next;
    800027f4:	0007b703          	ld	a4,0(a5)
    800027f8:	00e6b023          	sd	a4,0(a3)
                if (prev->next && (char *) prev + sizeof(BlockHeader) + prev->size == (char *) prev->next) {
    800027fc:	08070063          	beqz	a4,8000287c <_ZN15MemoryAllocator4freeEPv+0x1d0>
    80002800:	01060793          	addi	a5,a2,16
    80002804:	00f687b3          	add	a5,a3,a5
    80002808:	00f70663          	beq	a4,a5,80002814 <_ZN15MemoryAllocator4freeEPv+0x168>
    return 0;
    8000280c:	00000513          	li	a0,0
    80002810:	f7dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
                    prev->size += prev->next->size + sizeof(BlockHeader);
    80002814:	00873783          	ld	a5,8(a4)
    80002818:	00f607b3          	add	a5,a2,a5
    8000281c:	01078793          	addi	a5,a5,16
    80002820:	00f6b423          	sd	a5,8(a3)
                    prev->next = prev->next->next;
    80002824:	00073783          	ld	a5,0(a4)
    80002828:	00f6b023          	sd	a5,0(a3)
    return 0;
    8000282c:	00000513          	li	a0,0
    80002830:	f5dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
                freeBlk->size += freeBlk->next->size + sizeof(BlockHeader);
    80002834:	00873683          	ld	a3,8(a4)
    80002838:	00d606b3          	add	a3,a2,a3
    8000283c:	01068693          	addi	a3,a3,16
    80002840:	00d7b423          	sd	a3,8(a5)
                freeBlk->next = freeBlk->next->next;
    80002844:	00073703          	ld	a4,0(a4)
    80002848:	00e7b023          	sd	a4,0(a5)
    return 0;
    8000284c:	00000513          	li	a0,0
    80002850:	f3dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    if(addr<HEAP_START_ADDR || addr>=HEAP_END_ADDR)return -1;
    80002854:	fff00513          	li	a0,-1
    80002858:	f35ff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    8000285c:	fff00513          	li	a0,-1
    80002860:	f2dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    if(!calledOnce)return -2;
    80002864:	ffe00513          	li	a0,-2
    80002868:	f25ff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
        return -3;
    8000286c:	ffd00513          	li	a0,-3
    80002870:	f1dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    return 0;
    80002874:	00000513          	li	a0,0
    80002878:	f15ff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    8000287c:	00000513          	li	a0,0
    80002880:	f0dff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>
    80002884:	00000513          	li	a0,0
    80002888:	f05ff06f          	j	8000278c <_ZN15MemoryAllocator4freeEPv+0xe0>

000000008000288c <_ZN13SemaphoreBaseC1Ei>:

#include "../h/SemaphoreBase.hpp"
#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"

SemaphoreBase::SemaphoreBase(int v):val(v), head(nullptr), tail(nullptr){
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00813423          	sd	s0,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00052023          	sw	zero,0(a0)
    8000289c:	00b52223          	sw	a1,4(a0)
    800028a0:	00053423          	sd	zero,8(a0)
    800028a4:	00053823          	sd	zero,16(a0)

}
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN13SemaphoreBase48contextSwitchWithoutSavingRunningNodeInSchedulerEv>:

void SemaphoreBase::contextSwitchWithoutSavingRunningNodeInScheduler(){
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	01213023          	sd	s2,0(sp)
    800028c8:	02010413          	addi	s0,sp,32
    pushRegisters();
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	824080e7          	jalr	-2012(ra) # 800010f0 <_ZN13SemaphoreBase13pushRegistersEv>

    TCB* old = TCB::running;
    800028d4:	00004497          	auipc	s1,0x4
    800028d8:	77c4b483          	ld	s1,1916(s1) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    800028dc:	0004b903          	ld	s2,0(s1)
    TCB::numberOfActiveThreads--;
    800028e0:	00004717          	auipc	a4,0x4
    800028e4:	74873703          	ld	a4,1864(a4) # 80007028 <_GLOBAL_OFFSET_TABLE_+0x8>
    800028e8:	00073783          	ld	a5,0(a4)
    800028ec:	fff78793          	addi	a5,a5,-1
    800028f0:	00f73023          	sd	a5,0(a4)

    TCB::running = Scheduler::get()->data;
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	ebc080e7          	jalr	-324(ra) # 800017b0 <_ZN9Scheduler3getEv>
    800028fc:	00053583          	ld	a1,0(a0)
    80002900:	00b4b023          	sd	a1,0(s1)
    TCB::contextSwitch(&old->context, &TCB::running->context);
    80002904:	01058593          	addi	a1,a1,16
    80002908:	01090513          	addi	a0,s2,16
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	b04080e7          	jalr	-1276(ra) # 80001410 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>

    popRegisters();
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	854080e7          	jalr	-1964(ra) # 80001168 <_ZN13SemaphoreBase12popRegistersEv>
}
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	00013903          	ld	s2,0(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret

0000000080002934 <_ZN13SemaphoreBase5blockEv>:
        return status;
    }
    return 0;
}

int SemaphoreBase::block(){
    80002934:	fd010113          	addi	sp,sp,-48
    80002938:	02113423          	sd	ra,40(sp)
    8000293c:	02813023          	sd	s0,32(sp)
    80002940:	00913c23          	sd	s1,24(sp)
    80002944:	01213823          	sd	s2,16(sp)
    80002948:	01313423          	sd	s3,8(sp)
    8000294c:	03010413          	addi	s0,sp,48
    80002950:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002954:	00004797          	auipc	a5,0x4
    80002958:	6fc7b783          	ld	a5,1788(a5) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000295c:	0007b983          	ld	s3,0(a5)
    SemaphoreNode* next;
    int waitingWhileClosedSem = 0; // if Node is waiting and then semaphore is closed -> 1, after that return -1 from wait() method
    //SemaphoreNode(TCB* data, SemaphoreNode* next):data(data), next(next){}

    static SemaphoreNode* createNode(TCB* tcb, SemaphoreNode* nxt){
        SemaphoreNode* p = (SemaphoreNode*) kmem_alloc(sizeof(SemaphoreNode));
    80002960:	01800513          	li	a0,24
    80002964:	00000097          	auipc	ra,0x0
    80002968:	1d8080e7          	jalr	472(ra) # 80002b3c <_Z10kmem_allocm>
    8000296c:	00050493          	mv	s1,a0
        p->data = tcb;
    80002970:	01353023          	sd	s3,0(a0)
        p->next = nxt;
    80002974:	00053423          	sd	zero,8(a0)
    SemaphoreNode* node = SemaphoreNode::createNode(old, nullptr);//new SemaphoreNode(old, nullptr);
    if(tail){
    80002978:	01093783          	ld	a5,16(s2)
    8000297c:	04078863          	beqz	a5,800029cc <_ZN13SemaphoreBase5blockEv+0x98>
        tail->next = node;
    80002980:	00a7b423          	sd	a0,8(a5)
        tail = node;
    80002984:	00a93823          	sd	a0,16(s2)
    }else{
        head = tail = node;
    }

    contextSwitchWithoutSavingRunningNodeInScheduler();
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	f2c080e7          	jalr	-212(ra) # 800028b4 <_ZN13SemaphoreBase48contextSwitchWithoutSavingRunningNodeInSchedulerEv>
    int status = node->waitingWhileClosedSem;
    80002990:	0104a903          	lw	s2,16(s1)
    node->data = nullptr;
    80002994:	0004b023          	sd	zero,0(s1)
    node->next = nullptr;
    80002998:	0004b423          	sd	zero,8(s1)
    }

    static void deleteNode(SemaphoreNode* node){
        node->data = nullptr;
        node->next = nullptr;
        kmem_free(node);
    8000299c:	00048513          	mv	a0,s1
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	1cc080e7          	jalr	460(ra) # 80002b6c <_Z9kmem_freePv>
    SemaphoreNode::deleteNode(node);

    if(status == 0)return 0;
    800029a8:	02091863          	bnez	s2,800029d8 <_ZN13SemaphoreBase5blockEv+0xa4>
    return -1;
}
    800029ac:	00090513          	mv	a0,s2
    800029b0:	02813083          	ld	ra,40(sp)
    800029b4:	02013403          	ld	s0,32(sp)
    800029b8:	01813483          	ld	s1,24(sp)
    800029bc:	01013903          	ld	s2,16(sp)
    800029c0:	00813983          	ld	s3,8(sp)
    800029c4:	03010113          	addi	sp,sp,48
    800029c8:	00008067          	ret
        head = tail = node;
    800029cc:	00a93823          	sd	a0,16(s2)
    800029d0:	00a93423          	sd	a0,8(s2)
    800029d4:	fb5ff06f          	j	80002988 <_ZN13SemaphoreBase5blockEv+0x54>
    return -1;
    800029d8:	fff00913          	li	s2,-1
    800029dc:	fd1ff06f          	j	800029ac <_ZN13SemaphoreBase5blockEv+0x78>

00000000800029e0 <_ZN13SemaphoreBase4waitEv>:
    if(--val < 0) {
    800029e0:	00452783          	lw	a5,4(a0)
    800029e4:	fff7879b          	addiw	a5,a5,-1
    800029e8:	00f52223          	sw	a5,4(a0)
    800029ec:	02079713          	slli	a4,a5,0x20
    800029f0:	00074663          	bltz	a4,800029fc <_ZN13SemaphoreBase4waitEv+0x1c>
    return 0;
    800029f4:	00000513          	li	a0,0
}
    800029f8:	00008067          	ret
int SemaphoreBase::wait() {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
        int status = block();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	f28080e7          	jalr	-216(ra) # 80002934 <_ZN13SemaphoreBase5blockEv>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN13SemaphoreBase7unblockEv>:

int SemaphoreBase::unblock(){
    if(!head)return -1;
    80002a24:	00853783          	ld	a5,8(a0)
    80002a28:	04078663          	beqz	a5,80002a74 <_ZN13SemaphoreBase7unblockEv+0x50>
int SemaphoreBase::unblock(){
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	01010413          	addi	s0,sp,16

    SemaphoreNode* elem = head;
    head = head->next;
    80002a3c:	0087b703          	ld	a4,8(a5)
    80002a40:	00e53423          	sd	a4,8(a0)

    if(!head) tail = nullptr;
    80002a44:	02070463          	beqz	a4,80002a6c <_ZN13SemaphoreBase7unblockEv+0x48>

    Scheduler::put(&elem->data->schedulerNode);
    80002a48:	0007b503          	ld	a0,0(a5)
    80002a4c:	02850513          	addi	a0,a0,40
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	da4080e7          	jalr	-604(ra) # 800017f4 <_ZN9Scheduler3putEP13SchedulerNode>
    return 0;
    80002a58:	00000513          	li	a0,0
}
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret
    if(!head) tail = nullptr;
    80002a6c:	00053823          	sd	zero,16(a0)
    80002a70:	fd9ff06f          	j	80002a48 <_ZN13SemaphoreBase7unblockEv+0x24>
    if(!head)return -1;
    80002a74:	fff00513          	li	a0,-1
}
    80002a78:	00008067          	ret

0000000080002a7c <_ZN13SemaphoreBase5closeEv>:
int SemaphoreBase::close() {
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	01213023          	sd	s2,0(sp)
    80002a90:	02010413          	addi	s0,sp,32
    if(closed)return -2;
    80002a94:	00052903          	lw	s2,0(a0)
    80002a98:	04091c63          	bnez	s2,80002af0 <_ZN13SemaphoreBase5closeEv+0x74>
    80002a9c:	00050493          	mv	s1,a0
    closed = 1;
    80002aa0:	00100793          	li	a5,1
    80002aa4:	00f52023          	sw	a5,0(a0)
    if(!head)return 0;
    80002aa8:	00853783          	ld	a5,8(a0)
    80002aac:	02078463          	beqz	a5,80002ad4 <_ZN13SemaphoreBase5closeEv+0x58>
    while(head) {
    80002ab0:	0084b783          	ld	a5,8(s1)
    80002ab4:	02078063          	beqz	a5,80002ad4 <_ZN13SemaphoreBase5closeEv+0x58>
        head->waitingWhileClosedSem = 1;
    80002ab8:	00100713          	li	a4,1
    80002abc:	00e7a823          	sw	a4,16(a5)
        int status = unblock();
    80002ac0:	00048513          	mv	a0,s1
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	f60080e7          	jalr	-160(ra) # 80002a24 <_ZN13SemaphoreBase7unblockEv>
        if(status<0)return status;
    80002acc:	fe0552e3          	bgez	a0,80002ab0 <_ZN13SemaphoreBase5closeEv+0x34>
    80002ad0:	00050913          	mv	s2,a0
}
    80002ad4:	00090513          	mv	a0,s2
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
    if(closed)return -2;
    80002af0:	ffe00913          	li	s2,-2
    80002af4:	fe1ff06f          	j	80002ad4 <_ZN13SemaphoreBase5closeEv+0x58>

0000000080002af8 <_ZN13SemaphoreBase6signalEv>:
    if(++val <= 0) {
    80002af8:	00452783          	lw	a5,4(a0)
    80002afc:	0017879b          	addiw	a5,a5,1
    80002b00:	0007871b          	sext.w	a4,a5
    80002b04:	00f52223          	sw	a5,4(a0)
    80002b08:	00e05663          	blez	a4,80002b14 <_ZN13SemaphoreBase6signalEv+0x1c>
    return 0;
    80002b0c:	00000513          	li	a0,0
}
    80002b10:	00008067          	ret
int SemaphoreBase::signal() {
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00113423          	sd	ra,8(sp)
    80002b1c:	00813023          	sd	s0,0(sp)
    80002b20:	01010413          	addi	s0,sp,16
        int status = unblock();
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	f00080e7          	jalr	-256(ra) # 80002a24 <_ZN13SemaphoreBase7unblockEv>
}
    80002b2c:	00813083          	ld	ra,8(sp)
    80002b30:	00013403          	ld	s0,0(sp)
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00008067          	ret

0000000080002b3c <_Z10kmem_allocm>:
#include "../lib/console.h"




void* kmem_alloc (size_t size){
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00113423          	sd	ra,8(sp)
    80002b44:	00813023          	sd	s0,0(sp)
    80002b48:	01010413          	addi	s0,sp,16
    size_t numberOfBlocks = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    80002b4c:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::malloc(numberOfBlocks);
    80002b50:	00655513          	srli	a0,a0,0x6
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	a08080e7          	jalr	-1528(ra) # 8000255c <_ZN15MemoryAllocator6mallocEm>
}
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_Z9kmem_freePv>:

int kmem_free (void* addr){
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00113423          	sd	ra,8(sp)
    80002b74:	00813023          	sd	s0,0(sp)
    80002b78:	01010413          	addi	s0,sp,16
    return MemoryAllocator::free(addr);
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	b30080e7          	jalr	-1232(ra) # 800026ac <_ZN15MemoryAllocator4freeEPv>
}
    80002b84:	00813083          	ld	ra,8(sp)
    80002b88:	00013403          	ld	s0,0(sp)
    80002b8c:	01010113          	addi	sp,sp,16
    80002b90:	00008067          	ret

0000000080002b94 <_Z14kthread_createPP3TCBPFvPvES2_>:

int kthread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    80002b94:	fd010113          	addi	sp,sp,-48
    80002b98:	02113423          	sd	ra,40(sp)
    80002b9c:	02813023          	sd	s0,32(sp)
    80002ba0:	00913c23          	sd	s1,24(sp)
    80002ba4:	01213823          	sd	s2,16(sp)
    80002ba8:	01313423          	sd	s3,8(sp)
    80002bac:	03010413          	addi	s0,sp,48
    80002bb0:	00050993          	mv	s3,a0
    80002bb4:	00058493          	mv	s1,a1
    80002bb8:	00060913          	mv	s2,a2
    if(!start_routine){
    80002bbc:	04058a63          	beqz	a1,80002c10 <_Z14kthread_createPP3TCBPFvPvES2_+0x7c>
        *handle = TCB::createThread(start_routine, arg, 0);
        if(!(*handle))return -1;
        return 0;
    }

    uint64* stack = (uint64*) kmem_alloc(DEFAULT_STACK_SIZE);
    80002bc0:	00001537          	lui	a0,0x1
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	f78080e7          	jalr	-136(ra) # 80002b3c <_Z10kmem_allocm>
    if(!stack)return -1;
    80002bcc:	06050863          	beqz	a0,80002c3c <_Z14kthread_createPP3TCBPFvPvES2_+0xa8>

    *handle = TCB::createThread(start_routine, arg, &stack[DEFAULT_STACK_SIZE]);
    80002bd0:	00008637          	lui	a2,0x8
    80002bd4:	00c50633          	add	a2,a0,a2
    80002bd8:	00090593          	mv	a1,s2
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	200080e7          	jalr	512(ra) # 80001de0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002be8:	00a9b023          	sd	a0,0(s3)
    if(!(*handle))return -1;
    80002bec:	04050c63          	beqz	a0,80002c44 <_Z14kthread_createPP3TCBPFvPvES2_+0xb0>
    return 0;
    80002bf0:	00000513          	li	a0,0
}
    80002bf4:	02813083          	ld	ra,40(sp)
    80002bf8:	02013403          	ld	s0,32(sp)
    80002bfc:	01813483          	ld	s1,24(sp)
    80002c00:	01013903          	ld	s2,16(sp)
    80002c04:	00813983          	ld	s3,8(sp)
    80002c08:	03010113          	addi	sp,sp,48
    80002c0c:	00008067          	ret
        *handle = TCB::createThread(start_routine, arg, 0);
    80002c10:	00000613          	li	a2,0
    80002c14:	00090593          	mv	a1,s2
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	1c4080e7          	jalr	452(ra) # 80001de0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002c24:	00a9b023          	sd	a0,0(s3)
        if(!(*handle))return -1;
    80002c28:	00050663          	beqz	a0,80002c34 <_Z14kthread_createPP3TCBPFvPvES2_+0xa0>
        return 0;
    80002c2c:	00000513          	li	a0,0
    80002c30:	fc5ff06f          	j	80002bf4 <_Z14kthread_createPP3TCBPFvPvES2_+0x60>
        if(!(*handle))return -1;
    80002c34:	fff00513          	li	a0,-1
    80002c38:	fbdff06f          	j	80002bf4 <_Z14kthread_createPP3TCBPFvPvES2_+0x60>
    if(!stack)return -1;
    80002c3c:	fff00513          	li	a0,-1
    80002c40:	fb5ff06f          	j	80002bf4 <_Z14kthread_createPP3TCBPFvPvES2_+0x60>
    if(!(*handle))return -1;
    80002c44:	fff00513          	li	a0,-1
    80002c48:	fadff06f          	j	80002bf4 <_Z14kthread_createPP3TCBPFvPvES2_+0x60>

0000000080002c4c <_Z16kthread_dispatchv>:

void kthread_dispatch(){
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16

}
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret

0000000080002c64 <_Z5kputcc>:

void kputc(char c){
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00113423          	sd	ra,8(sp)
    80002c6c:	00813023          	sd	s0,0(sp)
    80002c70:	01010413          	addi	s0,sp,16
    __putc(c);
    80002c74:	00003097          	auipc	ra,0x3
    80002c78:	ba8080e7          	jalr	-1112(ra) # 8000581c <__putc>
}
    80002c7c:	00813083          	ld	ra,8(sp)
    80002c80:	00013403          	ld	s0,0(sp)
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00008067          	ret

0000000080002c8c <_Z12kprintStringPKc>:




void kprintString(char const* string){
    80002c8c:	fd010113          	addi	sp,sp,-48
    80002c90:	02113423          	sd	ra,40(sp)
    80002c94:	02813023          	sd	s0,32(sp)
    80002c98:	00913c23          	sd	s1,24(sp)
    80002c9c:	03010413          	addi	s0,sp,48
    80002ca0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002ca4:	100027f3          	csrr	a5,sstatus
    80002ca8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002cac:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = Riscv::r_sstatus();
    80002cb0:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask]"r"(mask));
    80002cb4:	00200793          	li	a5,2
    80002cb8:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while(*string!='\0'){
    80002cbc:	0004c503          	lbu	a0,0(s1)
    80002cc0:	00050a63          	beqz	a0,80002cd4 <_Z12kprintStringPKc+0x48>
        kputc(*string);
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	fa0080e7          	jalr	-96(ra) # 80002c64 <_Z5kputcc>
        string++;
    80002ccc:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002cd0:	fedff06f          	j	80002cbc <_Z12kprintStringPKc+0x30>
    }

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002cd4:	fd843783          	ld	a5,-40(s0)
    80002cd8:	0007879b          	sext.w	a5,a5
    80002cdc:	0027f793          	andi	a5,a5,2
    80002ce0:	0007879b          	sext.w	a5,a5
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
    80002ce4:	1007a073          	csrs	sstatus,a5
}
    80002ce8:	02813083          	ld	ra,40(sp)
    80002cec:	02013403          	ld	s0,32(sp)
    80002cf0:	01813483          	ld	s1,24(sp)
    80002cf4:	03010113          	addi	sp,sp,48
    80002cf8:	00008067          	ret

0000000080002cfc <_Z13kprintIntegerm>:

void kprintInteger(uint64 intg){
    80002cfc:	fc010113          	addi	sp,sp,-64
    80002d00:	02113c23          	sd	ra,56(sp)
    80002d04:	02813823          	sd	s0,48(sp)
    80002d08:	02913423          	sd	s1,40(sp)
    80002d0c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002d10:	100027f3          	csrr	a5,sstatus
    80002d14:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d18:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sstatus = Riscv::r_sstatus();
    80002d1c:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask]"r"(mask));
    80002d20:	00200793          	li	a5,2
    80002d24:	1007b073          	csrc	sstatus,a5
    neg = 0;
    if(intg<0){
        neg = 1;
        x = -intg;
    }else{
        x=intg;
    80002d28:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002d2c:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    80002d30:	00a00613          	li	a2,10
    80002d34:	02c5773b          	remuw	a4,a0,a2
    80002d38:	02071693          	slli	a3,a4,0x20
    80002d3c:	0206d693          	srli	a3,a3,0x20
    80002d40:	00003717          	auipc	a4,0x3
    80002d44:	2f070713          	addi	a4,a4,752 # 80006030 <_ZZ13kprintIntegermE6digits>
    80002d48:	00d70733          	add	a4,a4,a3
    80002d4c:	00074703          	lbu	a4,0(a4)
    80002d50:	fe040693          	addi	a3,s0,-32
    80002d54:	009687b3          	add	a5,a3,s1
    80002d58:	0014849b          	addiw	s1,s1,1
    80002d5c:	fee78423          	sb	a4,-24(a5)
    }while((x/=10)!=0);
    80002d60:	0005071b          	sext.w	a4,a0
    80002d64:	02c5553b          	divuw	a0,a0,a2
    80002d68:	00900793          	li	a5,9
    80002d6c:	fce7e2e3          	bltu	a5,a4,80002d30 <_Z13kprintIntegerm+0x34>

    if(neg)buf[i++] = '-';

    while(--i>=0)kputc(buf[i]);
    80002d70:	fff4849b          	addiw	s1,s1,-1
    80002d74:	0004ce63          	bltz	s1,80002d90 <_Z13kprintIntegerm+0x94>
    80002d78:	fe040793          	addi	a5,s0,-32
    80002d7c:	009787b3          	add	a5,a5,s1
    80002d80:	fe87c503          	lbu	a0,-24(a5)
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	ee0080e7          	jalr	-288(ra) # 80002c64 <_Z5kputcc>
    80002d8c:	fe5ff06f          	j	80002d70 <_Z13kprintIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002d90:	fd843783          	ld	a5,-40(s0)
    80002d94:	0007879b          	sext.w	a5,a5
    80002d98:	0027f793          	andi	a5,a5,2
    80002d9c:	0007879b          	sext.w	a5,a5
    __asm__ volatile("csrs sstatus, %[mask]": : [mask]"r"(mask));
    80002da0:	1007a073          	csrs	sstatus,a5
    80002da4:	03813083          	ld	ra,56(sp)
    80002da8:	03013403          	ld	s0,48(sp)
    80002dac:	02813483          	ld	s1,40(sp)
    80002db0:	04010113          	addi	sp,sp,64
    80002db4:	00008067          	ret

0000000080002db8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00050493          	mv	s1,a0
    LOCK();
    80002dd0:	00100613          	li	a2,1
    80002dd4:	00000593          	li	a1,0
    80002dd8:	00004517          	auipc	a0,0x4
    80002ddc:	30850513          	addi	a0,a0,776 # 800070e0 <lockPrint>
    80002de0:	ffffe097          	auipc	ra,0xffffe
    80002de4:	64c080e7          	jalr	1612(ra) # 8000142c <copy_and_swap>
    80002de8:	fe0514e3          	bnez	a0,80002dd0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002dec:	0004c503          	lbu	a0,0(s1)
    80002df0:	00050a63          	beqz	a0,80002e04 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	994080e7          	jalr	-1644(ra) # 80001788 <putc>
        string++;
    80002dfc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002e00:	fedff06f          	j	80002dec <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002e04:	00000613          	li	a2,0
    80002e08:	00100593          	li	a1,1
    80002e0c:	00004517          	auipc	a0,0x4
    80002e10:	2d450513          	addi	a0,a0,724 # 800070e0 <lockPrint>
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	618080e7          	jalr	1560(ra) # 8000142c <copy_and_swap>
    80002e1c:	fe0514e3          	bnez	a0,80002e04 <_Z11printStringPKc+0x4c>
}
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	01013403          	ld	s0,16(sp)
    80002e28:	00813483          	ld	s1,8(sp)
    80002e2c:	02010113          	addi	sp,sp,32
    80002e30:	00008067          	ret

0000000080002e34 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002e34:	fd010113          	addi	sp,sp,-48
    80002e38:	02113423          	sd	ra,40(sp)
    80002e3c:	02813023          	sd	s0,32(sp)
    80002e40:	00913c23          	sd	s1,24(sp)
    80002e44:	01213823          	sd	s2,16(sp)
    80002e48:	01313423          	sd	s3,8(sp)
    80002e4c:	01413023          	sd	s4,0(sp)
    80002e50:	03010413          	addi	s0,sp,48
    80002e54:	00050993          	mv	s3,a0
    80002e58:	00058a13          	mv	s4,a1
    LOCK();
    80002e5c:	00100613          	li	a2,1
    80002e60:	00000593          	li	a1,0
    80002e64:	00004517          	auipc	a0,0x4
    80002e68:	27c50513          	addi	a0,a0,636 # 800070e0 <lockPrint>
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	5c0080e7          	jalr	1472(ra) # 8000142c <copy_and_swap>
    80002e74:	fe0514e3          	bnez	a0,80002e5c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002e78:	00000913          	li	s2,0
    80002e7c:	00090493          	mv	s1,s2
    80002e80:	0019091b          	addiw	s2,s2,1
    80002e84:	03495a63          	bge	s2,s4,80002eb8 <_Z9getStringPci+0x84>
        cc = getc();
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	8bc080e7          	jalr	-1860(ra) # 80001744 <getc>
        if(cc < 1)
    80002e90:	02050463          	beqz	a0,80002eb8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002e94:	009984b3          	add	s1,s3,s1
    80002e98:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002e9c:	00a00793          	li	a5,10
    80002ea0:	00f50a63          	beq	a0,a5,80002eb4 <_Z9getStringPci+0x80>
    80002ea4:	00d00793          	li	a5,13
    80002ea8:	fcf51ae3          	bne	a0,a5,80002e7c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002eac:	00090493          	mv	s1,s2
    80002eb0:	0080006f          	j	80002eb8 <_Z9getStringPci+0x84>
    80002eb4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002eb8:	009984b3          	add	s1,s3,s1
    80002ebc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002ec0:	00000613          	li	a2,0
    80002ec4:	00100593          	li	a1,1
    80002ec8:	00004517          	auipc	a0,0x4
    80002ecc:	21850513          	addi	a0,a0,536 # 800070e0 <lockPrint>
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	55c080e7          	jalr	1372(ra) # 8000142c <copy_and_swap>
    80002ed8:	fe0514e3          	bnez	a0,80002ec0 <_Z9getStringPci+0x8c>
    return buf;
}
    80002edc:	00098513          	mv	a0,s3
    80002ee0:	02813083          	ld	ra,40(sp)
    80002ee4:	02013403          	ld	s0,32(sp)
    80002ee8:	01813483          	ld	s1,24(sp)
    80002eec:	01013903          	ld	s2,16(sp)
    80002ef0:	00813983          	ld	s3,8(sp)
    80002ef4:	00013a03          	ld	s4,0(sp)
    80002ef8:	03010113          	addi	sp,sp,48
    80002efc:	00008067          	ret

0000000080002f00 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00813423          	sd	s0,8(sp)
    80002f08:	01010413          	addi	s0,sp,16
    80002f0c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002f10:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002f14:	0006c603          	lbu	a2,0(a3)
    80002f18:	fd06071b          	addiw	a4,a2,-48
    80002f1c:	0ff77713          	andi	a4,a4,255
    80002f20:	00900793          	li	a5,9
    80002f24:	02e7e063          	bltu	a5,a4,80002f44 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002f28:	0025179b          	slliw	a5,a0,0x2
    80002f2c:	00a787bb          	addw	a5,a5,a0
    80002f30:	0017979b          	slliw	a5,a5,0x1
    80002f34:	00168693          	addi	a3,a3,1
    80002f38:	00c787bb          	addw	a5,a5,a2
    80002f3c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002f40:	fd5ff06f          	j	80002f14 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002f44:	00813403          	ld	s0,8(sp)
    80002f48:	01010113          	addi	sp,sp,16
    80002f4c:	00008067          	ret

0000000080002f50 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002f50:	fc010113          	addi	sp,sp,-64
    80002f54:	02113c23          	sd	ra,56(sp)
    80002f58:	02813823          	sd	s0,48(sp)
    80002f5c:	02913423          	sd	s1,40(sp)
    80002f60:	03213023          	sd	s2,32(sp)
    80002f64:	01313c23          	sd	s3,24(sp)
    80002f68:	04010413          	addi	s0,sp,64
    80002f6c:	00050493          	mv	s1,a0
    80002f70:	00058913          	mv	s2,a1
    80002f74:	00060993          	mv	s3,a2
    LOCK();
    80002f78:	00100613          	li	a2,1
    80002f7c:	00000593          	li	a1,0
    80002f80:	00004517          	auipc	a0,0x4
    80002f84:	16050513          	addi	a0,a0,352 # 800070e0 <lockPrint>
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	4a4080e7          	jalr	1188(ra) # 8000142c <copy_and_swap>
    80002f90:	fe0514e3          	bnez	a0,80002f78 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002f94:	00098463          	beqz	s3,80002f9c <_Z8printIntiii+0x4c>
    80002f98:	0804c463          	bltz	s1,80003020 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002f9c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002fa0:	00000593          	li	a1,0
    }

    i = 0;
    80002fa4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002fa8:	0009079b          	sext.w	a5,s2
    80002fac:	0325773b          	remuw	a4,a0,s2
    80002fb0:	00048613          	mv	a2,s1
    80002fb4:	0014849b          	addiw	s1,s1,1
    80002fb8:	02071693          	slli	a3,a4,0x20
    80002fbc:	0206d693          	srli	a3,a3,0x20
    80002fc0:	00004717          	auipc	a4,0x4
    80002fc4:	04870713          	addi	a4,a4,72 # 80007008 <digits>
    80002fc8:	00d70733          	add	a4,a4,a3
    80002fcc:	00074683          	lbu	a3,0(a4)
    80002fd0:	fd040713          	addi	a4,s0,-48
    80002fd4:	00c70733          	add	a4,a4,a2
    80002fd8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002fdc:	0005071b          	sext.w	a4,a0
    80002fe0:	0325553b          	divuw	a0,a0,s2
    80002fe4:	fcf772e3          	bgeu	a4,a5,80002fa8 <_Z8printIntiii+0x58>
    if(neg)
    80002fe8:	00058c63          	beqz	a1,80003000 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002fec:	fd040793          	addi	a5,s0,-48
    80002ff0:	009784b3          	add	s1,a5,s1
    80002ff4:	02d00793          	li	a5,45
    80002ff8:	fef48823          	sb	a5,-16(s1)
    80002ffc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003000:	fff4849b          	addiw	s1,s1,-1
    80003004:	0204c463          	bltz	s1,8000302c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003008:	fd040793          	addi	a5,s0,-48
    8000300c:	009787b3          	add	a5,a5,s1
    80003010:	ff07c503          	lbu	a0,-16(a5)
    80003014:	ffffe097          	auipc	ra,0xffffe
    80003018:	774080e7          	jalr	1908(ra) # 80001788 <putc>
    8000301c:	fe5ff06f          	j	80003000 <_Z8printIntiii+0xb0>
        x = -xx;
    80003020:	4090053b          	negw	a0,s1
        neg = 1;
    80003024:	00100593          	li	a1,1
        x = -xx;
    80003028:	f7dff06f          	j	80002fa4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000302c:	00000613          	li	a2,0
    80003030:	00100593          	li	a1,1
    80003034:	00004517          	auipc	a0,0x4
    80003038:	0ac50513          	addi	a0,a0,172 # 800070e0 <lockPrint>
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	3f0080e7          	jalr	1008(ra) # 8000142c <copy_and_swap>
    80003044:	fe0514e3          	bnez	a0,8000302c <_Z8printIntiii+0xdc>
    80003048:	03813083          	ld	ra,56(sp)
    8000304c:	03013403          	ld	s0,48(sp)
    80003050:	02813483          	ld	s1,40(sp)
    80003054:	02013903          	ld	s2,32(sp)
    80003058:	01813983          	ld	s3,24(sp)
    8000305c:	04010113          	addi	sp,sp,64
    80003060:	00008067          	ret

0000000080003064 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80003064:	fe010113          	addi	sp,sp,-32
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	00813823          	sd	s0,16(sp)
    80003070:	00913423          	sd	s1,8(sp)
    80003074:	01213023          	sd	s2,0(sp)
    80003078:	02010413          	addi	s0,sp,32
    8000307c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003080:	00000493          	li	s1,0
    80003084:	0140006f          	j	80003098 <_Z16producerKeyboardPv+0x34>
    while (key != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	548080e7          	jalr	1352(ra) # 800015d0 <thread_dispatch>
        }
        if(i==15)key = 0x1b;
    80003090:	00f00793          	li	a5,15
    80003094:	02f48c63          	beq	s1,a5,800030cc <_Z16producerKeyboardPv+0x68>
        data->buffer->put(key);
    80003098:	04100593          	li	a1,65
    8000309c:	00893503          	ld	a0,8(s2)
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	5a0080e7          	jalr	1440(ra) # 80003640 <_ZN6Buffer3putEi>
        i++;
    800030a8:	0014871b          	addiw	a4,s1,1
    800030ac:	0007049b          	sext.w	s1,a4
        if (i % (10 * data->id) == 0) {
    800030b0:	00092683          	lw	a3,0(s2)
    800030b4:	0026979b          	slliw	a5,a3,0x2
    800030b8:	00d787bb          	addw	a5,a5,a3
    800030bc:	0017979b          	slliw	a5,a5,0x1
    800030c0:	02f767bb          	remw	a5,a4,a5
    800030c4:	fc0796e3          	bnez	a5,80003090 <_Z16producerKeyboardPv+0x2c>
    800030c8:	fc1ff06f          	j	80003088 <_Z16producerKeyboardPv+0x24>
    }

    threadEnd = 1;
    800030cc:	00100793          	li	a5,1
    800030d0:	00004717          	auipc	a4,0x4
    800030d4:	00f72c23          	sw	a5,24(a4) # 800070e8 <threadEnd>

    delete data->buffer;
    800030d8:	00893483          	ld	s1,8(s2)
    800030dc:	00048e63          	beqz	s1,800030f8 <_Z16producerKeyboardPv+0x94>
    800030e0:	00048513          	mv	a0,s1
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	484080e7          	jalr	1156(ra) # 80003568 <_ZN6BufferD1Ev>
    800030ec:	00048513          	mv	a0,s1
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	9c0080e7          	jalr	-1600(ra) # 80001ab0 <_ZdlPv>

    sem_signal(data->wait);
    800030f8:	01093503          	ld	a0,16(s2)
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	600080e7          	jalr	1536(ra) # 800016fc <sem_signal>
}
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	00013903          	ld	s2,0(sp)
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00008067          	ret

000000008000311c <_Z8producerPv>:

void producer(void *arg) {
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	01213023          	sd	s2,0(sp)
    80003130:	02010413          	addi	s0,sp,32
    80003134:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003138:	00000913          	li	s2,0
    8000313c:	00c0006f          	j	80003148 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	490080e7          	jalr	1168(ra) # 800015d0 <thread_dispatch>
    while (!threadEnd) {
    80003148:	00004797          	auipc	a5,0x4
    8000314c:	fa07a783          	lw	a5,-96(a5) # 800070e8 <threadEnd>
    80003150:	02079e63          	bnez	a5,8000318c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003154:	0004a583          	lw	a1,0(s1)
    80003158:	0305859b          	addiw	a1,a1,48
    8000315c:	0084b503          	ld	a0,8(s1)
    80003160:	00000097          	auipc	ra,0x0
    80003164:	4e0080e7          	jalr	1248(ra) # 80003640 <_ZN6Buffer3putEi>
        i++;
    80003168:	0019071b          	addiw	a4,s2,1
    8000316c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003170:	0004a683          	lw	a3,0(s1)
    80003174:	0026979b          	slliw	a5,a3,0x2
    80003178:	00d787bb          	addw	a5,a5,a3
    8000317c:	0017979b          	slliw	a5,a5,0x1
    80003180:	02f767bb          	remw	a5,a4,a5
    80003184:	fc0792e3          	bnez	a5,80003148 <_Z8producerPv+0x2c>
    80003188:	fb9ff06f          	j	80003140 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000318c:	0104b503          	ld	a0,16(s1)
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	56c080e7          	jalr	1388(ra) # 800016fc <sem_signal>
}
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret

00000000800031b0 <_Z8consumerPv>:

void consumer(void *arg) {
    800031b0:	fd010113          	addi	sp,sp,-48
    800031b4:	02113423          	sd	ra,40(sp)
    800031b8:	02813023          	sd	s0,32(sp)
    800031bc:	00913c23          	sd	s1,24(sp)
    800031c0:	01213823          	sd	s2,16(sp)
    800031c4:	01313423          	sd	s3,8(sp)
    800031c8:	03010413          	addi	s0,sp,48
    800031cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800031d0:	00000993          	li	s3,0
    800031d4:	01c0006f          	j	800031f0 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	3f8080e7          	jalr	1016(ra) # 800015d0 <thread_dispatch>
    800031e0:	0500006f          	j	80003230 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031e4:	00a00513          	li	a0,10
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	5a0080e7          	jalr	1440(ra) # 80001788 <putc>
    while (!threadEnd) {
    800031f0:	00004797          	auipc	a5,0x4
    800031f4:	ef87a783          	lw	a5,-264(a5) # 800070e8 <threadEnd>
    800031f8:	04079463          	bnez	a5,80003240 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    800031fc:	00893503          	ld	a0,8(s2)
    80003200:	00000097          	auipc	ra,0x0
    80003204:	4d0080e7          	jalr	1232(ra) # 800036d0 <_ZN6Buffer3getEv>
        i++;
    80003208:	0019849b          	addiw	s1,s3,1
    8000320c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003210:	0ff57513          	andi	a0,a0,255
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	574080e7          	jalr	1396(ra) # 80001788 <putc>
        if (i % (5 * data->id) == 0) {
    8000321c:	00092703          	lw	a4,0(s2)
    80003220:	0027179b          	slliw	a5,a4,0x2
    80003224:	00e787bb          	addw	a5,a5,a4
    80003228:	02f4e7bb          	remw	a5,s1,a5
    8000322c:	fa0786e3          	beqz	a5,800031d8 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80003230:	05000793          	li	a5,80
    80003234:	02f4e4bb          	remw	s1,s1,a5
    80003238:	fa049ce3          	bnez	s1,800031f0 <_Z8consumerPv+0x40>
    8000323c:	fa9ff06f          	j	800031e4 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80003240:	01093503          	ld	a0,16(s2)
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	4b8080e7          	jalr	1208(ra) # 800016fc <sem_signal>
}
    8000324c:	02813083          	ld	ra,40(sp)
    80003250:	02013403          	ld	s0,32(sp)
    80003254:	01813483          	ld	s1,24(sp)
    80003258:	01013903          	ld	s2,16(sp)
    8000325c:	00813983          	ld	s3,8(sp)
    80003260:	03010113          	addi	sp,sp,48
    80003264:	00008067          	ret

0000000080003268 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003268:	fb010113          	addi	sp,sp,-80
    8000326c:	04113423          	sd	ra,72(sp)
    80003270:	04813023          	sd	s0,64(sp)
    80003274:	02913c23          	sd	s1,56(sp)
    80003278:	03213823          	sd	s2,48(sp)
    8000327c:	03313423          	sd	s3,40(sp)
    80003280:	03413023          	sd	s4,32(sp)
    80003284:	01513c23          	sd	s5,24(sp)
    80003288:	05010413          	addi	s0,sp,80
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	db450513          	addi	a0,a0,-588 # 80006040 <_ZZ13kprintIntegermE6digits+0x10>
    80003294:	00000097          	auipc	ra,0x0
    80003298:	b24080e7          	jalr	-1244(ra) # 80002db8 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = stringToInt("1");
    8000329c:	00003517          	auipc	a0,0x3
    800032a0:	dc450513          	addi	a0,a0,-572 # 80006060 <_ZZ13kprintIntegermE6digits+0x30>
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	c5c080e7          	jalr	-932(ra) # 80002f00 <_Z11stringToIntPKc>
    800032ac:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    800032b0:	00003517          	auipc	a0,0x3
    800032b4:	db850513          	addi	a0,a0,-584 # 80006068 <_ZZ13kprintIntegermE6digits+0x38>
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	b00080e7          	jalr	-1280(ra) # 80002db8 <_Z11printStringPKc>
    //getString(input, 30);
    n = stringToInt("5");
    800032c0:	00003517          	auipc	a0,0x3
    800032c4:	dc850513          	addi	a0,a0,-568 # 80006088 <_ZZ13kprintIntegermE6digits+0x58>
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	c38080e7          	jalr	-968(ra) # 80002f00 <_Z11stringToIntPKc>
    800032d0:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    800032d4:	00003517          	auipc	a0,0x3
    800032d8:	dbc50513          	addi	a0,a0,-580 # 80006090 <_ZZ13kprintIntegermE6digits+0x60>
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	adc080e7          	jalr	-1316(ra) # 80002db8 <_Z11printStringPKc>
    800032e4:	00000613          	li	a2,0
    800032e8:	00a00593          	li	a1,10
    800032ec:	00090513          	mv	a0,s2
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	c60080e7          	jalr	-928(ra) # 80002f50 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800032f8:	00003517          	auipc	a0,0x3
    800032fc:	db050513          	addi	a0,a0,-592 # 800060a8 <_ZZ13kprintIntegermE6digits+0x78>
    80003300:	00000097          	auipc	ra,0x0
    80003304:	ab8080e7          	jalr	-1352(ra) # 80002db8 <_Z11printStringPKc>
    80003308:	00000613          	li	a2,0
    8000330c:	00a00593          	li	a1,10
    80003310:	00048513          	mv	a0,s1
    80003314:	00000097          	auipc	ra,0x0
    80003318:	c3c080e7          	jalr	-964(ra) # 80002f50 <_Z8printIntiii>
    printString(".\n");
    8000331c:	00003517          	auipc	a0,0x3
    80003320:	da450513          	addi	a0,a0,-604 # 800060c0 <_ZZ13kprintIntegermE6digits+0x90>
    80003324:	00000097          	auipc	ra,0x0
    80003328:	a94080e7          	jalr	-1388(ra) # 80002db8 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(1);
    8000332c:	03800513          	li	a0,56
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	758080e7          	jalr	1880(ra) # 80001a88 <_Znwm>
    80003338:	00050a13          	mv	s4,a0
    8000333c:	00100593          	li	a1,1
    80003340:	00000097          	auipc	ra,0x0
    80003344:	1a0080e7          	jalr	416(ra) # 800034e0 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003348:	00000593          	li	a1,0
    8000334c:	00004517          	auipc	a0,0x4
    80003350:	da450513          	addi	a0,a0,-604 # 800070f0 <waitForAll>
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	2b8080e7          	jalr	696(ra) # 8000160c <sem_open>

    thread_t threads[threadNum];
    8000335c:	00391793          	slli	a5,s2,0x3
    80003360:	00f78793          	addi	a5,a5,15
    80003364:	ff07f793          	andi	a5,a5,-16
    80003368:	40f10133          	sub	sp,sp,a5
    8000336c:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80003370:	0019071b          	addiw	a4,s2,1
    80003374:	00171793          	slli	a5,a4,0x1
    80003378:	00e787b3          	add	a5,a5,a4
    8000337c:	00379793          	slli	a5,a5,0x3
    80003380:	00f78793          	addi	a5,a5,15
    80003384:	ff07f793          	andi	a5,a5,-16
    80003388:	40f10133          	sub	sp,sp,a5
    8000338c:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80003390:	00191613          	slli	a2,s2,0x1
    80003394:	012607b3          	add	a5,a2,s2
    80003398:	00379793          	slli	a5,a5,0x3
    8000339c:	00f987b3          	add	a5,s3,a5
    800033a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800033a4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800033a8:	00004717          	auipc	a4,0x4
    800033ac:	d4873703          	ld	a4,-696(a4) # 800070f0 <waitForAll>
    800033b0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800033b4:	00078613          	mv	a2,a5
    800033b8:	00000597          	auipc	a1,0x0
    800033bc:	df858593          	addi	a1,a1,-520 # 800031b0 <_Z8consumerPv>
    800033c0:	fb840513          	addi	a0,s0,-72
    800033c4:	ffffe097          	auipc	ra,0xffffe
    800033c8:	134080e7          	jalr	308(ra) # 800014f8 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800033cc:	00000493          	li	s1,0
    800033d0:	0280006f          	j	800033f8 <_Z22producerConsumer_C_APIv+0x190>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    800033d4:	00000597          	auipc	a1,0x0
    800033d8:	c9058593          	addi	a1,a1,-880 # 80003064 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800033dc:	00179613          	slli	a2,a5,0x1
    800033e0:	00f60633          	add	a2,a2,a5
    800033e4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800033e8:	00c98633          	add	a2,s3,a2
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	10c080e7          	jalr	268(ra) # 800014f8 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033f4:	0014849b          	addiw	s1,s1,1
    800033f8:	0524d263          	bge	s1,s2,8000343c <_Z22producerConsumer_C_APIv+0x1d4>
        data[i].id = i;
    800033fc:	00149793          	slli	a5,s1,0x1
    80003400:	009787b3          	add	a5,a5,s1
    80003404:	00379793          	slli	a5,a5,0x3
    80003408:	00f987b3          	add	a5,s3,a5
    8000340c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003410:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003414:	00004717          	auipc	a4,0x4
    80003418:	cdc73703          	ld	a4,-804(a4) # 800070f0 <waitForAll>
    8000341c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003420:	00048793          	mv	a5,s1
    80003424:	00349513          	slli	a0,s1,0x3
    80003428:	00aa8533          	add	a0,s5,a0
    8000342c:	fa9054e3          	blez	s1,800033d4 <_Z22producerConsumer_C_APIv+0x16c>
    80003430:	00000597          	auipc	a1,0x0
    80003434:	cec58593          	addi	a1,a1,-788 # 8000311c <_Z8producerPv>
    80003438:	fa5ff06f          	j	800033dc <_Z22producerConsumer_C_APIv+0x174>
    }

    thread_dispatch();
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	194080e7          	jalr	404(ra) # 800015d0 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003444:	00000493          	li	s1,0
    80003448:	00994e63          	blt	s2,s1,80003464 <_Z22producerConsumer_C_APIv+0x1fc>
        sem_wait(waitForAll);
    8000344c:	00004517          	auipc	a0,0x4
    80003450:	ca453503          	ld	a0,-860(a0) # 800070f0 <waitForAll>
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	260080e7          	jalr	608(ra) # 800016b4 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000345c:	0014849b          	addiw	s1,s1,1
    80003460:	fe9ff06f          	j	80003448 <_Z22producerConsumer_C_APIv+0x1e0>
    }

    sem_close(waitForAll);
    80003464:	00004517          	auipc	a0,0x4
    80003468:	c8c53503          	ld	a0,-884(a0) # 800070f0 <waitForAll>
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	200080e7          	jalr	512(ra) # 8000166c <sem_close>
}
    80003474:	fb040113          	addi	sp,s0,-80
    80003478:	04813083          	ld	ra,72(sp)
    8000347c:	04013403          	ld	s0,64(sp)
    80003480:	03813483          	ld	s1,56(sp)
    80003484:	03013903          	ld	s2,48(sp)
    80003488:	02813983          	ld	s3,40(sp)
    8000348c:	02013a03          	ld	s4,32(sp)
    80003490:	01813a83          	ld	s5,24(sp)
    80003494:	05010113          	addi	sp,sp,80
    80003498:	00008067          	ret
    8000349c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(1);
    800034a0:	000a0513          	mv	a0,s4
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	60c080e7          	jalr	1548(ra) # 80001ab0 <_ZdlPv>
    800034ac:	00048513          	mv	a0,s1
    800034b0:	00005097          	auipc	ra,0x5
    800034b4:	d18080e7          	jalr	-744(ra) # 800081c8 <_Unwind_Resume>

00000000800034b8 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00113423          	sd	ra,8(sp)
    800034c0:	00813023          	sd	s0,0(sp)
    800034c4:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	da0080e7          	jalr	-608(ra) # 80003268 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800034d0:	00813083          	ld	ra,8(sp)
    800034d4:	00013403          	ld	s0,0(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	00813823          	sd	s0,16(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	02010413          	addi	s0,sp,32
    800034f4:	00050493          	mv	s1,a0
    800034f8:	00b52023          	sw	a1,0(a0)
    800034fc:	00052823          	sw	zero,16(a0)
    80003500:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003504:	00259513          	slli	a0,a1,0x2
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	f60080e7          	jalr	-160(ra) # 80001468 <mem_alloc>
    80003510:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003514:	00000593          	li	a1,0
    80003518:	02048513          	addi	a0,s1,32
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	0f0080e7          	jalr	240(ra) # 8000160c <sem_open>
    sem_open(&spaceAvailable, cap);
    80003524:	0004a583          	lw	a1,0(s1)
    80003528:	01848513          	addi	a0,s1,24
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	0e0080e7          	jalr	224(ra) # 8000160c <sem_open>
    sem_open(&mutexHead, 1);
    80003534:	00100593          	li	a1,1
    80003538:	02848513          	addi	a0,s1,40
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	0d0080e7          	jalr	208(ra) # 8000160c <sem_open>
    sem_open(&mutexTail, 1);
    80003544:	00100593          	li	a1,1
    80003548:	03048513          	addi	a0,s1,48
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	0c0080e7          	jalr	192(ra) # 8000160c <sem_open>
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	02010113          	addi	sp,sp,32
    80003564:	00008067          	ret

0000000080003568 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80003568:	fe010113          	addi	sp,sp,-32
    8000356c:	00113c23          	sd	ra,24(sp)
    80003570:	00813823          	sd	s0,16(sp)
    80003574:	00913423          	sd	s1,8(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050493          	mv	s1,a0
    putc('\n');
    80003580:	00a00513          	li	a0,10
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	204080e7          	jalr	516(ra) # 80001788 <putc>
    printString("Buffer deleted!\n");
    8000358c:	00003517          	auipc	a0,0x3
    80003590:	b3c50513          	addi	a0,a0,-1220 # 800060c8 <_ZZ13kprintIntegermE6digits+0x98>
    80003594:	00000097          	auipc	ra,0x0
    80003598:	824080e7          	jalr	-2012(ra) # 80002db8 <_Z11printStringPKc>
    while (head != tail) {
    8000359c:	0104a783          	lw	a5,16(s1)
    800035a0:	0144a703          	lw	a4,20(s1)
    800035a4:	02e78a63          	beq	a5,a4,800035d8 <_ZN6BufferD1Ev+0x70>
        char ch = buffer[head];
    800035a8:	0084b703          	ld	a4,8(s1)
    800035ac:	00279793          	slli	a5,a5,0x2
    800035b0:	00f707b3          	add	a5,a4,a5
        putc(ch);
    800035b4:	0007c503          	lbu	a0,0(a5)
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	1d0080e7          	jalr	464(ra) # 80001788 <putc>
        head = (head + 1) % cap;
    800035c0:	0104a783          	lw	a5,16(s1)
    800035c4:	0017879b          	addiw	a5,a5,1
    800035c8:	0004a703          	lw	a4,0(s1)
    800035cc:	02e7e7bb          	remw	a5,a5,a4
    800035d0:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800035d4:	fc9ff06f          	j	8000359c <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800035d8:	02100513          	li	a0,33
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	1ac080e7          	jalr	428(ra) # 80001788 <putc>
    putc('\n');
    800035e4:	00a00513          	li	a0,10
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	1a0080e7          	jalr	416(ra) # 80001788 <putc>

    mem_free(buffer);
    800035f0:	0084b503          	ld	a0,8(s1)
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	ebc080e7          	jalr	-324(ra) # 800014b0 <mem_free>
    sem_close(itemAvailable);
    800035fc:	0204b503          	ld	a0,32(s1)
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	06c080e7          	jalr	108(ra) # 8000166c <sem_close>
    sem_close(spaceAvailable);
    80003608:	0184b503          	ld	a0,24(s1)
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	060080e7          	jalr	96(ra) # 8000166c <sem_close>
    sem_close(mutexTail);
    80003614:	0304b503          	ld	a0,48(s1)
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	054080e7          	jalr	84(ra) # 8000166c <sem_close>
    sem_close(mutexHead);
    80003620:	0284b503          	ld	a0,40(s1)
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	048080e7          	jalr	72(ra) # 8000166c <sem_close>
}
    8000362c:	01813083          	ld	ra,24(sp)
    80003630:	01013403          	ld	s0,16(sp)
    80003634:	00813483          	ld	s1,8(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret

0000000080003640 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00113c23          	sd	ra,24(sp)
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	01213023          	sd	s2,0(sp)
    80003654:	02010413          	addi	s0,sp,32
    80003658:	00050493          	mv	s1,a0
    8000365c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003660:	01853503          	ld	a0,24(a0)
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	050080e7          	jalr	80(ra) # 800016b4 <sem_wait>

    sem_wait(mutexTail);
    8000366c:	0304b503          	ld	a0,48(s1)
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	044080e7          	jalr	68(ra) # 800016b4 <sem_wait>
    buffer[tail] = val;
    80003678:	0084b783          	ld	a5,8(s1)
    8000367c:	0144a703          	lw	a4,20(s1)
    80003680:	00271713          	slli	a4,a4,0x2
    80003684:	00e787b3          	add	a5,a5,a4
    80003688:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000368c:	0144a783          	lw	a5,20(s1)
    80003690:	0017879b          	addiw	a5,a5,1
    80003694:	0004a703          	lw	a4,0(s1)
    80003698:	02e7e7bb          	remw	a5,a5,a4
    8000369c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800036a0:	0304b503          	ld	a0,48(s1)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	058080e7          	jalr	88(ra) # 800016fc <sem_signal>

    sem_signal(itemAvailable);
    800036ac:	0204b503          	ld	a0,32(s1)
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	04c080e7          	jalr	76(ra) # 800016fc <sem_signal>

}
    800036b8:	01813083          	ld	ra,24(sp)
    800036bc:	01013403          	ld	s0,16(sp)
    800036c0:	00813483          	ld	s1,8(sp)
    800036c4:	00013903          	ld	s2,0(sp)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00008067          	ret

00000000800036d0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800036d0:	fe010113          	addi	sp,sp,-32
    800036d4:	00113c23          	sd	ra,24(sp)
    800036d8:	00813823          	sd	s0,16(sp)
    800036dc:	00913423          	sd	s1,8(sp)
    800036e0:	01213023          	sd	s2,0(sp)
    800036e4:	02010413          	addi	s0,sp,32
    800036e8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800036ec:	02053503          	ld	a0,32(a0)
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	fc4080e7          	jalr	-60(ra) # 800016b4 <sem_wait>

    sem_wait(mutexHead);
    800036f8:	0284b503          	ld	a0,40(s1)
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	fb8080e7          	jalr	-72(ra) # 800016b4 <sem_wait>

    int ret = buffer[head];
    80003704:	0084b703          	ld	a4,8(s1)
    80003708:	0104a783          	lw	a5,16(s1)
    8000370c:	00279693          	slli	a3,a5,0x2
    80003710:	00d70733          	add	a4,a4,a3
    80003714:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003718:	0017879b          	addiw	a5,a5,1
    8000371c:	0004a703          	lw	a4,0(s1)
    80003720:	02e7e7bb          	remw	a5,a5,a4
    80003724:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003728:	0284b503          	ld	a0,40(s1)
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	fd0080e7          	jalr	-48(ra) # 800016fc <sem_signal>

    sem_signal(spaceAvailable);
    80003734:	0184b503          	ld	a0,24(s1)
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	fc4080e7          	jalr	-60(ra) # 800016fc <sem_signal>

    return ret;
}
    80003740:	00090513          	mv	a0,s2
    80003744:	01813083          	ld	ra,24(sp)
    80003748:	01013403          	ld	s0,16(sp)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	00013903          	ld	s2,0(sp)
    80003754:	02010113          	addi	sp,sp,32
    80003758:	00008067          	ret

000000008000375c <start>:
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	300027f3          	csrr	a5,mstatus
    8000376c:	ffffe737          	lui	a4,0xffffe
    80003770:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff649f>
    80003774:	00e7f7b3          	and	a5,a5,a4
    80003778:	00001737          	lui	a4,0x1
    8000377c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003780:	00e7e7b3          	or	a5,a5,a4
    80003784:	30079073          	csrw	mstatus,a5
    80003788:	00000797          	auipc	a5,0x0
    8000378c:	16078793          	addi	a5,a5,352 # 800038e8 <system_main>
    80003790:	34179073          	csrw	mepc,a5
    80003794:	00000793          	li	a5,0
    80003798:	18079073          	csrw	satp,a5
    8000379c:	000107b7          	lui	a5,0x10
    800037a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800037a4:	30279073          	csrw	medeleg,a5
    800037a8:	30379073          	csrw	mideleg,a5
    800037ac:	104027f3          	csrr	a5,sie
    800037b0:	2227e793          	ori	a5,a5,546
    800037b4:	10479073          	csrw	sie,a5
    800037b8:	fff00793          	li	a5,-1
    800037bc:	00a7d793          	srli	a5,a5,0xa
    800037c0:	3b079073          	csrw	pmpaddr0,a5
    800037c4:	00f00793          	li	a5,15
    800037c8:	3a079073          	csrw	pmpcfg0,a5
    800037cc:	f14027f3          	csrr	a5,mhartid
    800037d0:	0200c737          	lui	a4,0x200c
    800037d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037d8:	0007869b          	sext.w	a3,a5
    800037dc:	00269713          	slli	a4,a3,0x2
    800037e0:	000f4637          	lui	a2,0xf4
    800037e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037e8:	00d70733          	add	a4,a4,a3
    800037ec:	0037979b          	slliw	a5,a5,0x3
    800037f0:	020046b7          	lui	a3,0x2004
    800037f4:	00d787b3          	add	a5,a5,a3
    800037f8:	00c585b3          	add	a1,a1,a2
    800037fc:	00371693          	slli	a3,a4,0x3
    80003800:	00004717          	auipc	a4,0x4
    80003804:	90070713          	addi	a4,a4,-1792 # 80007100 <timer_scratch>
    80003808:	00b7b023          	sd	a1,0(a5)
    8000380c:	00d70733          	add	a4,a4,a3
    80003810:	00f73c23          	sd	a5,24(a4)
    80003814:	02c73023          	sd	a2,32(a4)
    80003818:	34071073          	csrw	mscratch,a4
    8000381c:	00000797          	auipc	a5,0x0
    80003820:	6e478793          	addi	a5,a5,1764 # 80003f00 <timervec>
    80003824:	30579073          	csrw	mtvec,a5
    80003828:	300027f3          	csrr	a5,mstatus
    8000382c:	0087e793          	ori	a5,a5,8
    80003830:	30079073          	csrw	mstatus,a5
    80003834:	304027f3          	csrr	a5,mie
    80003838:	0807e793          	ori	a5,a5,128
    8000383c:	30479073          	csrw	mie,a5
    80003840:	f14027f3          	csrr	a5,mhartid
    80003844:	0007879b          	sext.w	a5,a5
    80003848:	00078213          	mv	tp,a5
    8000384c:	30200073          	mret
    80003850:	00813403          	ld	s0,8(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret

000000008000385c <timerinit>:
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00813423          	sd	s0,8(sp)
    80003864:	01010413          	addi	s0,sp,16
    80003868:	f14027f3          	csrr	a5,mhartid
    8000386c:	0200c737          	lui	a4,0x200c
    80003870:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003874:	0007869b          	sext.w	a3,a5
    80003878:	00269713          	slli	a4,a3,0x2
    8000387c:	000f4637          	lui	a2,0xf4
    80003880:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003884:	00d70733          	add	a4,a4,a3
    80003888:	0037979b          	slliw	a5,a5,0x3
    8000388c:	020046b7          	lui	a3,0x2004
    80003890:	00d787b3          	add	a5,a5,a3
    80003894:	00c585b3          	add	a1,a1,a2
    80003898:	00371693          	slli	a3,a4,0x3
    8000389c:	00004717          	auipc	a4,0x4
    800038a0:	86470713          	addi	a4,a4,-1948 # 80007100 <timer_scratch>
    800038a4:	00b7b023          	sd	a1,0(a5)
    800038a8:	00d70733          	add	a4,a4,a3
    800038ac:	00f73c23          	sd	a5,24(a4)
    800038b0:	02c73023          	sd	a2,32(a4)
    800038b4:	34071073          	csrw	mscratch,a4
    800038b8:	00000797          	auipc	a5,0x0
    800038bc:	64878793          	addi	a5,a5,1608 # 80003f00 <timervec>
    800038c0:	30579073          	csrw	mtvec,a5
    800038c4:	300027f3          	csrr	a5,mstatus
    800038c8:	0087e793          	ori	a5,a5,8
    800038cc:	30079073          	csrw	mstatus,a5
    800038d0:	304027f3          	csrr	a5,mie
    800038d4:	0807e793          	ori	a5,a5,128
    800038d8:	30479073          	csrw	mie,a5
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <system_main>:
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00913423          	sd	s1,8(sp)
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	02010413          	addi	s0,sp,32
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	0c4080e7          	jalr	196(ra) # 800039c0 <cpuid>
    80003904:	00003497          	auipc	s1,0x3
    80003908:	76c48493          	addi	s1,s1,1900 # 80007070 <started>
    8000390c:	02050263          	beqz	a0,80003930 <system_main+0x48>
    80003910:	0004a783          	lw	a5,0(s1)
    80003914:	0007879b          	sext.w	a5,a5
    80003918:	fe078ce3          	beqz	a5,80003910 <system_main+0x28>
    8000391c:	0ff0000f          	fence
    80003920:	00002517          	auipc	a0,0x2
    80003924:	7f050513          	addi	a0,a0,2032 # 80006110 <_ZZ13kprintIntegermE6digits+0xe0>
    80003928:	00001097          	auipc	ra,0x1
    8000392c:	a74080e7          	jalr	-1420(ra) # 8000439c <panic>
    80003930:	00001097          	auipc	ra,0x1
    80003934:	9c8080e7          	jalr	-1592(ra) # 800042f8 <consoleinit>
    80003938:	00001097          	auipc	ra,0x1
    8000393c:	154080e7          	jalr	340(ra) # 80004a8c <printfinit>
    80003940:	00002517          	auipc	a0,0x2
    80003944:	74050513          	addi	a0,a0,1856 # 80006080 <_ZZ13kprintIntegermE6digits+0x50>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	ab0080e7          	jalr	-1360(ra) # 800043f8 <__printf>
    80003950:	00002517          	auipc	a0,0x2
    80003954:	79050513          	addi	a0,a0,1936 # 800060e0 <_ZZ13kprintIntegermE6digits+0xb0>
    80003958:	00001097          	auipc	ra,0x1
    8000395c:	aa0080e7          	jalr	-1376(ra) # 800043f8 <__printf>
    80003960:	00002517          	auipc	a0,0x2
    80003964:	72050513          	addi	a0,a0,1824 # 80006080 <_ZZ13kprintIntegermE6digits+0x50>
    80003968:	00001097          	auipc	ra,0x1
    8000396c:	a90080e7          	jalr	-1392(ra) # 800043f8 <__printf>
    80003970:	00001097          	auipc	ra,0x1
    80003974:	4a8080e7          	jalr	1192(ra) # 80004e18 <kinit>
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	148080e7          	jalr	328(ra) # 80003ac0 <trapinit>
    80003980:	00000097          	auipc	ra,0x0
    80003984:	16c080e7          	jalr	364(ra) # 80003aec <trapinithart>
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	5b8080e7          	jalr	1464(ra) # 80003f40 <plicinit>
    80003990:	00000097          	auipc	ra,0x0
    80003994:	5d8080e7          	jalr	1496(ra) # 80003f68 <plicinithart>
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	078080e7          	jalr	120(ra) # 80003a10 <userinit>
    800039a0:	0ff0000f          	fence
    800039a4:	00100793          	li	a5,1
    800039a8:	00002517          	auipc	a0,0x2
    800039ac:	75050513          	addi	a0,a0,1872 # 800060f8 <_ZZ13kprintIntegermE6digits+0xc8>
    800039b0:	00f4a023          	sw	a5,0(s1)
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	a44080e7          	jalr	-1468(ra) # 800043f8 <__printf>
    800039bc:	0000006f          	j	800039bc <system_main+0xd4>

00000000800039c0 <cpuid>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813423          	sd	s0,8(sp)
    800039c8:	01010413          	addi	s0,sp,16
    800039cc:	00020513          	mv	a0,tp
    800039d0:	00813403          	ld	s0,8(sp)
    800039d4:	0005051b          	sext.w	a0,a0
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret

00000000800039e0 <mycpu>:
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00813423          	sd	s0,8(sp)
    800039e8:	01010413          	addi	s0,sp,16
    800039ec:	00020793          	mv	a5,tp
    800039f0:	00813403          	ld	s0,8(sp)
    800039f4:	0007879b          	sext.w	a5,a5
    800039f8:	00779793          	slli	a5,a5,0x7
    800039fc:	00004517          	auipc	a0,0x4
    80003a00:	73450513          	addi	a0,a0,1844 # 80008130 <cpus>
    80003a04:	00f50533          	add	a0,a0,a5
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <userinit>:
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00813423          	sd	s0,8(sp)
    80003a18:	01010413          	addi	s0,sp,16
    80003a1c:	00813403          	ld	s0,8(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	ffffe317          	auipc	t1,0xffffe
    80003a28:	e6830067          	jr	-408(t1) # 8000188c <main>

0000000080003a2c <either_copyout>:
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813023          	sd	s0,0(sp)
    80003a34:	00113423          	sd	ra,8(sp)
    80003a38:	01010413          	addi	s0,sp,16
    80003a3c:	02051663          	bnez	a0,80003a68 <either_copyout+0x3c>
    80003a40:	00058513          	mv	a0,a1
    80003a44:	00060593          	mv	a1,a2
    80003a48:	0006861b          	sext.w	a2,a3
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	c58080e7          	jalr	-936(ra) # 800056a4 <__memmove>
    80003a54:	00813083          	ld	ra,8(sp)
    80003a58:	00013403          	ld	s0,0(sp)
    80003a5c:	00000513          	li	a0,0
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	6d050513          	addi	a0,a0,1744 # 80006138 <_ZZ13kprintIntegermE6digits+0x108>
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	92c080e7          	jalr	-1748(ra) # 8000439c <panic>

0000000080003a78 <either_copyin>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813023          	sd	s0,0(sp)
    80003a80:	00113423          	sd	ra,8(sp)
    80003a84:	01010413          	addi	s0,sp,16
    80003a88:	02059463          	bnez	a1,80003ab0 <either_copyin+0x38>
    80003a8c:	00060593          	mv	a1,a2
    80003a90:	0006861b          	sext.w	a2,a3
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	c10080e7          	jalr	-1008(ra) # 800056a4 <__memmove>
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	00000513          	li	a0,0
    80003aa8:	01010113          	addi	sp,sp,16
    80003aac:	00008067          	ret
    80003ab0:	00002517          	auipc	a0,0x2
    80003ab4:	6b050513          	addi	a0,a0,1712 # 80006160 <_ZZ13kprintIntegermE6digits+0x130>
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	8e4080e7          	jalr	-1820(ra) # 8000439c <panic>

0000000080003ac0 <trapinit>:
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00813423          	sd	s0,8(sp)
    80003ac8:	01010413          	addi	s0,sp,16
    80003acc:	00813403          	ld	s0,8(sp)
    80003ad0:	00002597          	auipc	a1,0x2
    80003ad4:	6b858593          	addi	a1,a1,1720 # 80006188 <_ZZ13kprintIntegermE6digits+0x158>
    80003ad8:	00004517          	auipc	a0,0x4
    80003adc:	6d850513          	addi	a0,a0,1752 # 800081b0 <tickslock>
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00001317          	auipc	t1,0x1
    80003ae8:	5c430067          	jr	1476(t1) # 800050a8 <initlock>

0000000080003aec <trapinithart>:
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
    80003af8:	00000797          	auipc	a5,0x0
    80003afc:	2f878793          	addi	a5,a5,760 # 80003df0 <kernelvec>
    80003b00:	10579073          	csrw	stvec,a5
    80003b04:	00813403          	ld	s0,8(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <usertrap>:
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
    80003b1c:	00813403          	ld	s0,8(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret

0000000080003b28 <usertrapret>:
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00813423          	sd	s0,8(sp)
    80003b30:	01010413          	addi	s0,sp,16
    80003b34:	00813403          	ld	s0,8(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <kerneltrap>:
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00113c23          	sd	ra,24(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	142025f3          	csrr	a1,scause
    80003b58:	100027f3          	csrr	a5,sstatus
    80003b5c:	0027f793          	andi	a5,a5,2
    80003b60:	10079c63          	bnez	a5,80003c78 <kerneltrap+0x138>
    80003b64:	142027f3          	csrr	a5,scause
    80003b68:	0207ce63          	bltz	a5,80003ba4 <kerneltrap+0x64>
    80003b6c:	00002517          	auipc	a0,0x2
    80003b70:	66450513          	addi	a0,a0,1636 # 800061d0 <_ZZ13kprintIntegermE6digits+0x1a0>
    80003b74:	00001097          	auipc	ra,0x1
    80003b78:	884080e7          	jalr	-1916(ra) # 800043f8 <__printf>
    80003b7c:	141025f3          	csrr	a1,sepc
    80003b80:	14302673          	csrr	a2,stval
    80003b84:	00002517          	auipc	a0,0x2
    80003b88:	65c50513          	addi	a0,a0,1628 # 800061e0 <_ZZ13kprintIntegermE6digits+0x1b0>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	86c080e7          	jalr	-1940(ra) # 800043f8 <__printf>
    80003b94:	00002517          	auipc	a0,0x2
    80003b98:	66450513          	addi	a0,a0,1636 # 800061f8 <_ZZ13kprintIntegermE6digits+0x1c8>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	800080e7          	jalr	-2048(ra) # 8000439c <panic>
    80003ba4:	0ff7f713          	andi	a4,a5,255
    80003ba8:	00900693          	li	a3,9
    80003bac:	04d70063          	beq	a4,a3,80003bec <kerneltrap+0xac>
    80003bb0:	fff00713          	li	a4,-1
    80003bb4:	03f71713          	slli	a4,a4,0x3f
    80003bb8:	00170713          	addi	a4,a4,1
    80003bbc:	fae798e3          	bne	a5,a4,80003b6c <kerneltrap+0x2c>
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	e00080e7          	jalr	-512(ra) # 800039c0 <cpuid>
    80003bc8:	06050663          	beqz	a0,80003c34 <kerneltrap+0xf4>
    80003bcc:	144027f3          	csrr	a5,sip
    80003bd0:	ffd7f793          	andi	a5,a5,-3
    80003bd4:	14479073          	csrw	sip,a5
    80003bd8:	01813083          	ld	ra,24(sp)
    80003bdc:	01013403          	ld	s0,16(sp)
    80003be0:	00813483          	ld	s1,8(sp)
    80003be4:	02010113          	addi	sp,sp,32
    80003be8:	00008067          	ret
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	3c8080e7          	jalr	968(ra) # 80003fb4 <plic_claim>
    80003bf4:	00a00793          	li	a5,10
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	06f50863          	beq	a0,a5,80003c6c <kerneltrap+0x12c>
    80003c00:	fc050ce3          	beqz	a0,80003bd8 <kerneltrap+0x98>
    80003c04:	00050593          	mv	a1,a0
    80003c08:	00002517          	auipc	a0,0x2
    80003c0c:	5a850513          	addi	a0,a0,1448 # 800061b0 <_ZZ13kprintIntegermE6digits+0x180>
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	7e8080e7          	jalr	2024(ra) # 800043f8 <__printf>
    80003c18:	01013403          	ld	s0,16(sp)
    80003c1c:	01813083          	ld	ra,24(sp)
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00813483          	ld	s1,8(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00000317          	auipc	t1,0x0
    80003c30:	3c030067          	jr	960(t1) # 80003fec <plic_complete>
    80003c34:	00004517          	auipc	a0,0x4
    80003c38:	57c50513          	addi	a0,a0,1404 # 800081b0 <tickslock>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	490080e7          	jalr	1168(ra) # 800050cc <acquire>
    80003c44:	00003717          	auipc	a4,0x3
    80003c48:	43070713          	addi	a4,a4,1072 # 80007074 <ticks>
    80003c4c:	00072783          	lw	a5,0(a4)
    80003c50:	00004517          	auipc	a0,0x4
    80003c54:	56050513          	addi	a0,a0,1376 # 800081b0 <tickslock>
    80003c58:	0017879b          	addiw	a5,a5,1
    80003c5c:	00f72023          	sw	a5,0(a4)
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	538080e7          	jalr	1336(ra) # 80005198 <release>
    80003c68:	f65ff06f          	j	80003bcc <kerneltrap+0x8c>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	094080e7          	jalr	148(ra) # 80004d00 <uartintr>
    80003c74:	fa5ff06f          	j	80003c18 <kerneltrap+0xd8>
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	51850513          	addi	a0,a0,1304 # 80006190 <_ZZ13kprintIntegermE6digits+0x160>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	71c080e7          	jalr	1820(ra) # 8000439c <panic>

0000000080003c88 <clockintr>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00913423          	sd	s1,8(sp)
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00004497          	auipc	s1,0x4
    80003ca0:	51448493          	addi	s1,s1,1300 # 800081b0 <tickslock>
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	424080e7          	jalr	1060(ra) # 800050cc <acquire>
    80003cb0:	00003717          	auipc	a4,0x3
    80003cb4:	3c470713          	addi	a4,a4,964 # 80007074 <ticks>
    80003cb8:	00072783          	lw	a5,0(a4)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	0017879b          	addiw	a5,a5,1
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	00f72023          	sw	a5,0(a4)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00001317          	auipc	t1,0x1
    80003cdc:	4c030067          	jr	1216(t1) # 80005198 <release>

0000000080003ce0 <devintr>:
    80003ce0:	142027f3          	csrr	a5,scause
    80003ce4:	00000513          	li	a0,0
    80003ce8:	0007c463          	bltz	a5,80003cf0 <devintr+0x10>
    80003cec:	00008067          	ret
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00913423          	sd	s1,8(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	0ff7f713          	andi	a4,a5,255
    80003d08:	00900693          	li	a3,9
    80003d0c:	04d70c63          	beq	a4,a3,80003d64 <devintr+0x84>
    80003d10:	fff00713          	li	a4,-1
    80003d14:	03f71713          	slli	a4,a4,0x3f
    80003d18:	00170713          	addi	a4,a4,1
    80003d1c:	00e78c63          	beq	a5,a4,80003d34 <devintr+0x54>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	02010113          	addi	sp,sp,32
    80003d30:	00008067          	ret
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	c8c080e7          	jalr	-884(ra) # 800039c0 <cpuid>
    80003d3c:	06050663          	beqz	a0,80003da8 <devintr+0xc8>
    80003d40:	144027f3          	csrr	a5,sip
    80003d44:	ffd7f793          	andi	a5,a5,-3
    80003d48:	14479073          	csrw	sip,a5
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	00200513          	li	a0,2
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	250080e7          	jalr	592(ra) # 80003fb4 <plic_claim>
    80003d6c:	00a00793          	li	a5,10
    80003d70:	00050493          	mv	s1,a0
    80003d74:	06f50663          	beq	a0,a5,80003de0 <devintr+0x100>
    80003d78:	00100513          	li	a0,1
    80003d7c:	fa0482e3          	beqz	s1,80003d20 <devintr+0x40>
    80003d80:	00048593          	mv	a1,s1
    80003d84:	00002517          	auipc	a0,0x2
    80003d88:	42c50513          	addi	a0,a0,1068 # 800061b0 <_ZZ13kprintIntegermE6digits+0x180>
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	66c080e7          	jalr	1644(ra) # 800043f8 <__printf>
    80003d94:	00048513          	mv	a0,s1
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	254080e7          	jalr	596(ra) # 80003fec <plic_complete>
    80003da0:	00100513          	li	a0,1
    80003da4:	f7dff06f          	j	80003d20 <devintr+0x40>
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	40850513          	addi	a0,a0,1032 # 800081b0 <tickslock>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	31c080e7          	jalr	796(ra) # 800050cc <acquire>
    80003db8:	00003717          	auipc	a4,0x3
    80003dbc:	2bc70713          	addi	a4,a4,700 # 80007074 <ticks>
    80003dc0:	00072783          	lw	a5,0(a4)
    80003dc4:	00004517          	auipc	a0,0x4
    80003dc8:	3ec50513          	addi	a0,a0,1004 # 800081b0 <tickslock>
    80003dcc:	0017879b          	addiw	a5,a5,1
    80003dd0:	00f72023          	sw	a5,0(a4)
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	3c4080e7          	jalr	964(ra) # 80005198 <release>
    80003ddc:	f65ff06f          	j	80003d40 <devintr+0x60>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	f20080e7          	jalr	-224(ra) # 80004d00 <uartintr>
    80003de8:	fadff06f          	j	80003d94 <devintr+0xb4>
    80003dec:	0000                	unimp
	...

0000000080003df0 <kernelvec>:
    80003df0:	f0010113          	addi	sp,sp,-256
    80003df4:	00113023          	sd	ra,0(sp)
    80003df8:	00213423          	sd	sp,8(sp)
    80003dfc:	00313823          	sd	gp,16(sp)
    80003e00:	00413c23          	sd	tp,24(sp)
    80003e04:	02513023          	sd	t0,32(sp)
    80003e08:	02613423          	sd	t1,40(sp)
    80003e0c:	02713823          	sd	t2,48(sp)
    80003e10:	02813c23          	sd	s0,56(sp)
    80003e14:	04913023          	sd	s1,64(sp)
    80003e18:	04a13423          	sd	a0,72(sp)
    80003e1c:	04b13823          	sd	a1,80(sp)
    80003e20:	04c13c23          	sd	a2,88(sp)
    80003e24:	06d13023          	sd	a3,96(sp)
    80003e28:	06e13423          	sd	a4,104(sp)
    80003e2c:	06f13823          	sd	a5,112(sp)
    80003e30:	07013c23          	sd	a6,120(sp)
    80003e34:	09113023          	sd	a7,128(sp)
    80003e38:	09213423          	sd	s2,136(sp)
    80003e3c:	09313823          	sd	s3,144(sp)
    80003e40:	09413c23          	sd	s4,152(sp)
    80003e44:	0b513023          	sd	s5,160(sp)
    80003e48:	0b613423          	sd	s6,168(sp)
    80003e4c:	0b713823          	sd	s7,176(sp)
    80003e50:	0b813c23          	sd	s8,184(sp)
    80003e54:	0d913023          	sd	s9,192(sp)
    80003e58:	0da13423          	sd	s10,200(sp)
    80003e5c:	0db13823          	sd	s11,208(sp)
    80003e60:	0dc13c23          	sd	t3,216(sp)
    80003e64:	0fd13023          	sd	t4,224(sp)
    80003e68:	0fe13423          	sd	t5,232(sp)
    80003e6c:	0ff13823          	sd	t6,240(sp)
    80003e70:	cd1ff0ef          	jal	ra,80003b40 <kerneltrap>
    80003e74:	00013083          	ld	ra,0(sp)
    80003e78:	00813103          	ld	sp,8(sp)
    80003e7c:	01013183          	ld	gp,16(sp)
    80003e80:	02013283          	ld	t0,32(sp)
    80003e84:	02813303          	ld	t1,40(sp)
    80003e88:	03013383          	ld	t2,48(sp)
    80003e8c:	03813403          	ld	s0,56(sp)
    80003e90:	04013483          	ld	s1,64(sp)
    80003e94:	04813503          	ld	a0,72(sp)
    80003e98:	05013583          	ld	a1,80(sp)
    80003e9c:	05813603          	ld	a2,88(sp)
    80003ea0:	06013683          	ld	a3,96(sp)
    80003ea4:	06813703          	ld	a4,104(sp)
    80003ea8:	07013783          	ld	a5,112(sp)
    80003eac:	07813803          	ld	a6,120(sp)
    80003eb0:	08013883          	ld	a7,128(sp)
    80003eb4:	08813903          	ld	s2,136(sp)
    80003eb8:	09013983          	ld	s3,144(sp)
    80003ebc:	09813a03          	ld	s4,152(sp)
    80003ec0:	0a013a83          	ld	s5,160(sp)
    80003ec4:	0a813b03          	ld	s6,168(sp)
    80003ec8:	0b013b83          	ld	s7,176(sp)
    80003ecc:	0b813c03          	ld	s8,184(sp)
    80003ed0:	0c013c83          	ld	s9,192(sp)
    80003ed4:	0c813d03          	ld	s10,200(sp)
    80003ed8:	0d013d83          	ld	s11,208(sp)
    80003edc:	0d813e03          	ld	t3,216(sp)
    80003ee0:	0e013e83          	ld	t4,224(sp)
    80003ee4:	0e813f03          	ld	t5,232(sp)
    80003ee8:	0f013f83          	ld	t6,240(sp)
    80003eec:	10010113          	addi	sp,sp,256
    80003ef0:	10200073          	sret
    80003ef4:	00000013          	nop
    80003ef8:	00000013          	nop
    80003efc:	00000013          	nop

0000000080003f00 <timervec>:
    80003f00:	34051573          	csrrw	a0,mscratch,a0
    80003f04:	00b53023          	sd	a1,0(a0)
    80003f08:	00c53423          	sd	a2,8(a0)
    80003f0c:	00d53823          	sd	a3,16(a0)
    80003f10:	01853583          	ld	a1,24(a0)
    80003f14:	02053603          	ld	a2,32(a0)
    80003f18:	0005b683          	ld	a3,0(a1)
    80003f1c:	00c686b3          	add	a3,a3,a2
    80003f20:	00d5b023          	sd	a3,0(a1)
    80003f24:	00200593          	li	a1,2
    80003f28:	14459073          	csrw	sip,a1
    80003f2c:	01053683          	ld	a3,16(a0)
    80003f30:	00853603          	ld	a2,8(a0)
    80003f34:	00053583          	ld	a1,0(a0)
    80003f38:	34051573          	csrrw	a0,mscratch,a0
    80003f3c:	30200073          	mret

0000000080003f40 <plicinit>:
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813423          	sd	s0,8(sp)
    80003f48:	01010413          	addi	s0,sp,16
    80003f4c:	00813403          	ld	s0,8(sp)
    80003f50:	0c0007b7          	lui	a5,0xc000
    80003f54:	00100713          	li	a4,1
    80003f58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003f5c:	00e7a223          	sw	a4,4(a5)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <plicinithart>:
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	00113423          	sd	ra,8(sp)
    80003f74:	01010413          	addi	s0,sp,16
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	a48080e7          	jalr	-1464(ra) # 800039c0 <cpuid>
    80003f80:	0085171b          	slliw	a4,a0,0x8
    80003f84:	0c0027b7          	lui	a5,0xc002
    80003f88:	00e787b3          	add	a5,a5,a4
    80003f8c:	40200713          	li	a4,1026
    80003f90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003f94:	00813083          	ld	ra,8(sp)
    80003f98:	00013403          	ld	s0,0(sp)
    80003f9c:	00d5151b          	slliw	a0,a0,0xd
    80003fa0:	0c2017b7          	lui	a5,0xc201
    80003fa4:	00a78533          	add	a0,a5,a0
    80003fa8:	00052023          	sw	zero,0(a0)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret

0000000080003fb4 <plic_claim>:
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00813023          	sd	s0,0(sp)
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	9fc080e7          	jalr	-1540(ra) # 800039c0 <cpuid>
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	00d5151b          	slliw	a0,a0,0xd
    80003fd8:	0c2017b7          	lui	a5,0xc201
    80003fdc:	00a78533          	add	a0,a5,a0
    80003fe0:	00452503          	lw	a0,4(a0)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <plic_complete>:
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	00050493          	mv	s1,a0
    80004004:	00000097          	auipc	ra,0x0
    80004008:	9bc080e7          	jalr	-1604(ra) # 800039c0 <cpuid>
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	00d5179b          	slliw	a5,a0,0xd
    80004018:	0c201737          	lui	a4,0xc201
    8000401c:	00f707b3          	add	a5,a4,a5
    80004020:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	02010113          	addi	sp,sp,32
    8000402c:	00008067          	ret

0000000080004030 <consolewrite>:
    80004030:	fb010113          	addi	sp,sp,-80
    80004034:	04813023          	sd	s0,64(sp)
    80004038:	04113423          	sd	ra,72(sp)
    8000403c:	02913c23          	sd	s1,56(sp)
    80004040:	03213823          	sd	s2,48(sp)
    80004044:	03313423          	sd	s3,40(sp)
    80004048:	03413023          	sd	s4,32(sp)
    8000404c:	01513c23          	sd	s5,24(sp)
    80004050:	05010413          	addi	s0,sp,80
    80004054:	06c05c63          	blez	a2,800040cc <consolewrite+0x9c>
    80004058:	00060993          	mv	s3,a2
    8000405c:	00050a13          	mv	s4,a0
    80004060:	00058493          	mv	s1,a1
    80004064:	00000913          	li	s2,0
    80004068:	fff00a93          	li	s5,-1
    8000406c:	01c0006f          	j	80004088 <consolewrite+0x58>
    80004070:	fbf44503          	lbu	a0,-65(s0)
    80004074:	0019091b          	addiw	s2,s2,1
    80004078:	00148493          	addi	s1,s1,1
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	a9c080e7          	jalr	-1380(ra) # 80004b18 <uartputc>
    80004084:	03298063          	beq	s3,s2,800040a4 <consolewrite+0x74>
    80004088:	00048613          	mv	a2,s1
    8000408c:	00100693          	li	a3,1
    80004090:	000a0593          	mv	a1,s4
    80004094:	fbf40513          	addi	a0,s0,-65
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	9e0080e7          	jalr	-1568(ra) # 80003a78 <either_copyin>
    800040a0:	fd5518e3          	bne	a0,s5,80004070 <consolewrite+0x40>
    800040a4:	04813083          	ld	ra,72(sp)
    800040a8:	04013403          	ld	s0,64(sp)
    800040ac:	03813483          	ld	s1,56(sp)
    800040b0:	02813983          	ld	s3,40(sp)
    800040b4:	02013a03          	ld	s4,32(sp)
    800040b8:	01813a83          	ld	s5,24(sp)
    800040bc:	00090513          	mv	a0,s2
    800040c0:	03013903          	ld	s2,48(sp)
    800040c4:	05010113          	addi	sp,sp,80
    800040c8:	00008067          	ret
    800040cc:	00000913          	li	s2,0
    800040d0:	fd5ff06f          	j	800040a4 <consolewrite+0x74>

00000000800040d4 <consoleread>:
    800040d4:	f9010113          	addi	sp,sp,-112
    800040d8:	06813023          	sd	s0,96(sp)
    800040dc:	04913c23          	sd	s1,88(sp)
    800040e0:	05213823          	sd	s2,80(sp)
    800040e4:	05313423          	sd	s3,72(sp)
    800040e8:	05413023          	sd	s4,64(sp)
    800040ec:	03513c23          	sd	s5,56(sp)
    800040f0:	03613823          	sd	s6,48(sp)
    800040f4:	03713423          	sd	s7,40(sp)
    800040f8:	03813023          	sd	s8,32(sp)
    800040fc:	06113423          	sd	ra,104(sp)
    80004100:	01913c23          	sd	s9,24(sp)
    80004104:	07010413          	addi	s0,sp,112
    80004108:	00060b93          	mv	s7,a2
    8000410c:	00050913          	mv	s2,a0
    80004110:	00058c13          	mv	s8,a1
    80004114:	00060b1b          	sext.w	s6,a2
    80004118:	00004497          	auipc	s1,0x4
    8000411c:	0c048493          	addi	s1,s1,192 # 800081d8 <cons>
    80004120:	00400993          	li	s3,4
    80004124:	fff00a13          	li	s4,-1
    80004128:	00a00a93          	li	s5,10
    8000412c:	05705e63          	blez	s7,80004188 <consoleread+0xb4>
    80004130:	09c4a703          	lw	a4,156(s1)
    80004134:	0984a783          	lw	a5,152(s1)
    80004138:	0007071b          	sext.w	a4,a4
    8000413c:	08e78463          	beq	a5,a4,800041c4 <consoleread+0xf0>
    80004140:	07f7f713          	andi	a4,a5,127
    80004144:	00e48733          	add	a4,s1,a4
    80004148:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000414c:	0017869b          	addiw	a3,a5,1
    80004150:	08d4ac23          	sw	a3,152(s1)
    80004154:	00070c9b          	sext.w	s9,a4
    80004158:	0b370663          	beq	a4,s3,80004204 <consoleread+0x130>
    8000415c:	00100693          	li	a3,1
    80004160:	f9f40613          	addi	a2,s0,-97
    80004164:	000c0593          	mv	a1,s8
    80004168:	00090513          	mv	a0,s2
    8000416c:	f8e40fa3          	sb	a4,-97(s0)
    80004170:	00000097          	auipc	ra,0x0
    80004174:	8bc080e7          	jalr	-1860(ra) # 80003a2c <either_copyout>
    80004178:	01450863          	beq	a0,s4,80004188 <consoleread+0xb4>
    8000417c:	001c0c13          	addi	s8,s8,1
    80004180:	fffb8b9b          	addiw	s7,s7,-1
    80004184:	fb5c94e3          	bne	s9,s5,8000412c <consoleread+0x58>
    80004188:	000b851b          	sext.w	a0,s7
    8000418c:	06813083          	ld	ra,104(sp)
    80004190:	06013403          	ld	s0,96(sp)
    80004194:	05813483          	ld	s1,88(sp)
    80004198:	05013903          	ld	s2,80(sp)
    8000419c:	04813983          	ld	s3,72(sp)
    800041a0:	04013a03          	ld	s4,64(sp)
    800041a4:	03813a83          	ld	s5,56(sp)
    800041a8:	02813b83          	ld	s7,40(sp)
    800041ac:	02013c03          	ld	s8,32(sp)
    800041b0:	01813c83          	ld	s9,24(sp)
    800041b4:	40ab053b          	subw	a0,s6,a0
    800041b8:	03013b03          	ld	s6,48(sp)
    800041bc:	07010113          	addi	sp,sp,112
    800041c0:	00008067          	ret
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	1d8080e7          	jalr	472(ra) # 8000539c <push_on>
    800041cc:	0984a703          	lw	a4,152(s1)
    800041d0:	09c4a783          	lw	a5,156(s1)
    800041d4:	0007879b          	sext.w	a5,a5
    800041d8:	fef70ce3          	beq	a4,a5,800041d0 <consoleread+0xfc>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	234080e7          	jalr	564(ra) # 80005410 <pop_on>
    800041e4:	0984a783          	lw	a5,152(s1)
    800041e8:	07f7f713          	andi	a4,a5,127
    800041ec:	00e48733          	add	a4,s1,a4
    800041f0:	01874703          	lbu	a4,24(a4)
    800041f4:	0017869b          	addiw	a3,a5,1
    800041f8:	08d4ac23          	sw	a3,152(s1)
    800041fc:	00070c9b          	sext.w	s9,a4
    80004200:	f5371ee3          	bne	a4,s3,8000415c <consoleread+0x88>
    80004204:	000b851b          	sext.w	a0,s7
    80004208:	f96bf2e3          	bgeu	s7,s6,8000418c <consoleread+0xb8>
    8000420c:	08f4ac23          	sw	a5,152(s1)
    80004210:	f7dff06f          	j	8000418c <consoleread+0xb8>

0000000080004214 <consputc>:
    80004214:	10000793          	li	a5,256
    80004218:	00f50663          	beq	a0,a5,80004224 <consputc+0x10>
    8000421c:	00001317          	auipc	t1,0x1
    80004220:	9f430067          	jr	-1548(t1) # 80004c10 <uartputc_sync>
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    80004234:	00800513          	li	a0,8
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	9d8080e7          	jalr	-1576(ra) # 80004c10 <uartputc_sync>
    80004240:	02000513          	li	a0,32
    80004244:	00001097          	auipc	ra,0x1
    80004248:	9cc080e7          	jalr	-1588(ra) # 80004c10 <uartputc_sync>
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00800513          	li	a0,8
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00001317          	auipc	t1,0x1
    80004260:	9b430067          	jr	-1612(t1) # 80004c10 <uartputc_sync>

0000000080004264 <consoleintr>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	01213023          	sd	s2,0(sp)
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	02010413          	addi	s0,sp,32
    8000427c:	00004917          	auipc	s2,0x4
    80004280:	f5c90913          	addi	s2,s2,-164 # 800081d8 <cons>
    80004284:	00050493          	mv	s1,a0
    80004288:	00090513          	mv	a0,s2
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	e40080e7          	jalr	-448(ra) # 800050cc <acquire>
    80004294:	02048c63          	beqz	s1,800042cc <consoleintr+0x68>
    80004298:	0a092783          	lw	a5,160(s2)
    8000429c:	09892703          	lw	a4,152(s2)
    800042a0:	07f00693          	li	a3,127
    800042a4:	40e7873b          	subw	a4,a5,a4
    800042a8:	02e6e263          	bltu	a3,a4,800042cc <consoleintr+0x68>
    800042ac:	00d00713          	li	a4,13
    800042b0:	04e48063          	beq	s1,a4,800042f0 <consoleintr+0x8c>
    800042b4:	07f7f713          	andi	a4,a5,127
    800042b8:	00e90733          	add	a4,s2,a4
    800042bc:	0017879b          	addiw	a5,a5,1
    800042c0:	0af92023          	sw	a5,160(s2)
    800042c4:	00970c23          	sb	s1,24(a4)
    800042c8:	08f92e23          	sw	a5,156(s2)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	00013903          	ld	s2,0(sp)
    800042dc:	00004517          	auipc	a0,0x4
    800042e0:	efc50513          	addi	a0,a0,-260 # 800081d8 <cons>
    800042e4:	02010113          	addi	sp,sp,32
    800042e8:	00001317          	auipc	t1,0x1
    800042ec:	eb030067          	jr	-336(t1) # 80005198 <release>
    800042f0:	00a00493          	li	s1,10
    800042f4:	fc1ff06f          	j	800042b4 <consoleintr+0x50>

00000000800042f8 <consoleinit>:
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	02010413          	addi	s0,sp,32
    8000430c:	00004497          	auipc	s1,0x4
    80004310:	ecc48493          	addi	s1,s1,-308 # 800081d8 <cons>
    80004314:	00048513          	mv	a0,s1
    80004318:	00002597          	auipc	a1,0x2
    8000431c:	ef058593          	addi	a1,a1,-272 # 80006208 <_ZZ13kprintIntegermE6digits+0x1d8>
    80004320:	00001097          	auipc	ra,0x1
    80004324:	d88080e7          	jalr	-632(ra) # 800050a8 <initlock>
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	7ac080e7          	jalr	1964(ra) # 80004ad4 <uartinit>
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00000797          	auipc	a5,0x0
    8000433c:	d9c78793          	addi	a5,a5,-612 # 800040d4 <consoleread>
    80004340:	0af4bc23          	sd	a5,184(s1)
    80004344:	00000797          	auipc	a5,0x0
    80004348:	cec78793          	addi	a5,a5,-788 # 80004030 <consolewrite>
    8000434c:	0cf4b023          	sd	a5,192(s1)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret

000000008000435c <console_read>:
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00813423          	sd	s0,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	00004317          	auipc	t1,0x4
    80004370:	f2433303          	ld	t1,-220(t1) # 80008290 <devsw+0x10>
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00030067          	jr	t1

000000008000437c <console_write>:
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00813423          	sd	s0,8(sp)
    80004384:	01010413          	addi	s0,sp,16
    80004388:	00813403          	ld	s0,8(sp)
    8000438c:	00004317          	auipc	t1,0x4
    80004390:	f0c33303          	ld	t1,-244(t1) # 80008298 <devsw+0x18>
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00030067          	jr	t1

000000008000439c <panic>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00002517          	auipc	a0,0x2
    800043b8:	e5c50513          	addi	a0,a0,-420 # 80006210 <_ZZ13kprintIntegermE6digits+0x1e0>
    800043bc:	00004797          	auipc	a5,0x4
    800043c0:	f607ae23          	sw	zero,-132(a5) # 80008338 <pr+0x18>
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	034080e7          	jalr	52(ra) # 800043f8 <__printf>
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	028080e7          	jalr	40(ra) # 800043f8 <__printf>
    800043d8:	00002517          	auipc	a0,0x2
    800043dc:	ca850513          	addi	a0,a0,-856 # 80006080 <_ZZ13kprintIntegermE6digits+0x50>
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	018080e7          	jalr	24(ra) # 800043f8 <__printf>
    800043e8:	00100793          	li	a5,1
    800043ec:	00003717          	auipc	a4,0x3
    800043f0:	c8f72623          	sw	a5,-884(a4) # 80007078 <panicked>
    800043f4:	0000006f          	j	800043f4 <panic+0x58>

00000000800043f8 <__printf>:
    800043f8:	f3010113          	addi	sp,sp,-208
    800043fc:	08813023          	sd	s0,128(sp)
    80004400:	07313423          	sd	s3,104(sp)
    80004404:	09010413          	addi	s0,sp,144
    80004408:	05813023          	sd	s8,64(sp)
    8000440c:	08113423          	sd	ra,136(sp)
    80004410:	06913c23          	sd	s1,120(sp)
    80004414:	07213823          	sd	s2,112(sp)
    80004418:	07413023          	sd	s4,96(sp)
    8000441c:	05513c23          	sd	s5,88(sp)
    80004420:	05613823          	sd	s6,80(sp)
    80004424:	05713423          	sd	s7,72(sp)
    80004428:	03913c23          	sd	s9,56(sp)
    8000442c:	03a13823          	sd	s10,48(sp)
    80004430:	03b13423          	sd	s11,40(sp)
    80004434:	00004317          	auipc	t1,0x4
    80004438:	eec30313          	addi	t1,t1,-276 # 80008320 <pr>
    8000443c:	01832c03          	lw	s8,24(t1)
    80004440:	00b43423          	sd	a1,8(s0)
    80004444:	00c43823          	sd	a2,16(s0)
    80004448:	00d43c23          	sd	a3,24(s0)
    8000444c:	02e43023          	sd	a4,32(s0)
    80004450:	02f43423          	sd	a5,40(s0)
    80004454:	03043823          	sd	a6,48(s0)
    80004458:	03143c23          	sd	a7,56(s0)
    8000445c:	00050993          	mv	s3,a0
    80004460:	4a0c1663          	bnez	s8,8000490c <__printf+0x514>
    80004464:	60098c63          	beqz	s3,80004a7c <__printf+0x684>
    80004468:	0009c503          	lbu	a0,0(s3)
    8000446c:	00840793          	addi	a5,s0,8
    80004470:	f6f43c23          	sd	a5,-136(s0)
    80004474:	00000493          	li	s1,0
    80004478:	22050063          	beqz	a0,80004698 <__printf+0x2a0>
    8000447c:	00002a37          	lui	s4,0x2
    80004480:	00018ab7          	lui	s5,0x18
    80004484:	000f4b37          	lui	s6,0xf4
    80004488:	00989bb7          	lui	s7,0x989
    8000448c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004490:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004494:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004498:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000449c:	00148c9b          	addiw	s9,s1,1
    800044a0:	02500793          	li	a5,37
    800044a4:	01998933          	add	s2,s3,s9
    800044a8:	38f51263          	bne	a0,a5,8000482c <__printf+0x434>
    800044ac:	00094783          	lbu	a5,0(s2)
    800044b0:	00078c9b          	sext.w	s9,a5
    800044b4:	1e078263          	beqz	a5,80004698 <__printf+0x2a0>
    800044b8:	0024849b          	addiw	s1,s1,2
    800044bc:	07000713          	li	a4,112
    800044c0:	00998933          	add	s2,s3,s1
    800044c4:	38e78a63          	beq	a5,a4,80004858 <__printf+0x460>
    800044c8:	20f76863          	bltu	a4,a5,800046d8 <__printf+0x2e0>
    800044cc:	42a78863          	beq	a5,a0,800048fc <__printf+0x504>
    800044d0:	06400713          	li	a4,100
    800044d4:	40e79663          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800044d8:	f7843783          	ld	a5,-136(s0)
    800044dc:	0007a603          	lw	a2,0(a5)
    800044e0:	00878793          	addi	a5,a5,8
    800044e4:	f6f43c23          	sd	a5,-136(s0)
    800044e8:	42064a63          	bltz	a2,8000491c <__printf+0x524>
    800044ec:	00a00713          	li	a4,10
    800044f0:	02e677bb          	remuw	a5,a2,a4
    800044f4:	00002d97          	auipc	s11,0x2
    800044f8:	d44d8d93          	addi	s11,s11,-700 # 80006238 <digits>
    800044fc:	00900593          	li	a1,9
    80004500:	0006051b          	sext.w	a0,a2
    80004504:	00000c93          	li	s9,0
    80004508:	02079793          	slli	a5,a5,0x20
    8000450c:	0207d793          	srli	a5,a5,0x20
    80004510:	00fd87b3          	add	a5,s11,a5
    80004514:	0007c783          	lbu	a5,0(a5)
    80004518:	02e656bb          	divuw	a3,a2,a4
    8000451c:	f8f40023          	sb	a5,-128(s0)
    80004520:	14c5d863          	bge	a1,a2,80004670 <__printf+0x278>
    80004524:	06300593          	li	a1,99
    80004528:	00100c93          	li	s9,1
    8000452c:	02e6f7bb          	remuw	a5,a3,a4
    80004530:	02079793          	slli	a5,a5,0x20
    80004534:	0207d793          	srli	a5,a5,0x20
    80004538:	00fd87b3          	add	a5,s11,a5
    8000453c:	0007c783          	lbu	a5,0(a5)
    80004540:	02e6d73b          	divuw	a4,a3,a4
    80004544:	f8f400a3          	sb	a5,-127(s0)
    80004548:	12a5f463          	bgeu	a1,a0,80004670 <__printf+0x278>
    8000454c:	00a00693          	li	a3,10
    80004550:	00900593          	li	a1,9
    80004554:	02d777bb          	remuw	a5,a4,a3
    80004558:	02079793          	slli	a5,a5,0x20
    8000455c:	0207d793          	srli	a5,a5,0x20
    80004560:	00fd87b3          	add	a5,s11,a5
    80004564:	0007c503          	lbu	a0,0(a5)
    80004568:	02d757bb          	divuw	a5,a4,a3
    8000456c:	f8a40123          	sb	a0,-126(s0)
    80004570:	48e5f263          	bgeu	a1,a4,800049f4 <__printf+0x5fc>
    80004574:	06300513          	li	a0,99
    80004578:	02d7f5bb          	remuw	a1,a5,a3
    8000457c:	02059593          	slli	a1,a1,0x20
    80004580:	0205d593          	srli	a1,a1,0x20
    80004584:	00bd85b3          	add	a1,s11,a1
    80004588:	0005c583          	lbu	a1,0(a1)
    8000458c:	02d7d7bb          	divuw	a5,a5,a3
    80004590:	f8b401a3          	sb	a1,-125(s0)
    80004594:	48e57263          	bgeu	a0,a4,80004a18 <__printf+0x620>
    80004598:	3e700513          	li	a0,999
    8000459c:	02d7f5bb          	remuw	a1,a5,a3
    800045a0:	02059593          	slli	a1,a1,0x20
    800045a4:	0205d593          	srli	a1,a1,0x20
    800045a8:	00bd85b3          	add	a1,s11,a1
    800045ac:	0005c583          	lbu	a1,0(a1)
    800045b0:	02d7d7bb          	divuw	a5,a5,a3
    800045b4:	f8b40223          	sb	a1,-124(s0)
    800045b8:	46e57663          	bgeu	a0,a4,80004a24 <__printf+0x62c>
    800045bc:	02d7f5bb          	remuw	a1,a5,a3
    800045c0:	02059593          	slli	a1,a1,0x20
    800045c4:	0205d593          	srli	a1,a1,0x20
    800045c8:	00bd85b3          	add	a1,s11,a1
    800045cc:	0005c583          	lbu	a1,0(a1)
    800045d0:	02d7d7bb          	divuw	a5,a5,a3
    800045d4:	f8b402a3          	sb	a1,-123(s0)
    800045d8:	46ea7863          	bgeu	s4,a4,80004a48 <__printf+0x650>
    800045dc:	02d7f5bb          	remuw	a1,a5,a3
    800045e0:	02059593          	slli	a1,a1,0x20
    800045e4:	0205d593          	srli	a1,a1,0x20
    800045e8:	00bd85b3          	add	a1,s11,a1
    800045ec:	0005c583          	lbu	a1,0(a1)
    800045f0:	02d7d7bb          	divuw	a5,a5,a3
    800045f4:	f8b40323          	sb	a1,-122(s0)
    800045f8:	3eeaf863          	bgeu	s5,a4,800049e8 <__printf+0x5f0>
    800045fc:	02d7f5bb          	remuw	a1,a5,a3
    80004600:	02059593          	slli	a1,a1,0x20
    80004604:	0205d593          	srli	a1,a1,0x20
    80004608:	00bd85b3          	add	a1,s11,a1
    8000460c:	0005c583          	lbu	a1,0(a1)
    80004610:	02d7d7bb          	divuw	a5,a5,a3
    80004614:	f8b403a3          	sb	a1,-121(s0)
    80004618:	42eb7e63          	bgeu	s6,a4,80004a54 <__printf+0x65c>
    8000461c:	02d7f5bb          	remuw	a1,a5,a3
    80004620:	02059593          	slli	a1,a1,0x20
    80004624:	0205d593          	srli	a1,a1,0x20
    80004628:	00bd85b3          	add	a1,s11,a1
    8000462c:	0005c583          	lbu	a1,0(a1)
    80004630:	02d7d7bb          	divuw	a5,a5,a3
    80004634:	f8b40423          	sb	a1,-120(s0)
    80004638:	42ebfc63          	bgeu	s7,a4,80004a70 <__printf+0x678>
    8000463c:	02079793          	slli	a5,a5,0x20
    80004640:	0207d793          	srli	a5,a5,0x20
    80004644:	00fd8db3          	add	s11,s11,a5
    80004648:	000dc703          	lbu	a4,0(s11)
    8000464c:	00a00793          	li	a5,10
    80004650:	00900c93          	li	s9,9
    80004654:	f8e404a3          	sb	a4,-119(s0)
    80004658:	00065c63          	bgez	a2,80004670 <__printf+0x278>
    8000465c:	f9040713          	addi	a4,s0,-112
    80004660:	00f70733          	add	a4,a4,a5
    80004664:	02d00693          	li	a3,45
    80004668:	fed70823          	sb	a3,-16(a4)
    8000466c:	00078c93          	mv	s9,a5
    80004670:	f8040793          	addi	a5,s0,-128
    80004674:	01978cb3          	add	s9,a5,s9
    80004678:	f7f40d13          	addi	s10,s0,-129
    8000467c:	000cc503          	lbu	a0,0(s9)
    80004680:	fffc8c93          	addi	s9,s9,-1
    80004684:	00000097          	auipc	ra,0x0
    80004688:	b90080e7          	jalr	-1136(ra) # 80004214 <consputc>
    8000468c:	ffac98e3          	bne	s9,s10,8000467c <__printf+0x284>
    80004690:	00094503          	lbu	a0,0(s2)
    80004694:	e00514e3          	bnez	a0,8000449c <__printf+0xa4>
    80004698:	1a0c1663          	bnez	s8,80004844 <__printf+0x44c>
    8000469c:	08813083          	ld	ra,136(sp)
    800046a0:	08013403          	ld	s0,128(sp)
    800046a4:	07813483          	ld	s1,120(sp)
    800046a8:	07013903          	ld	s2,112(sp)
    800046ac:	06813983          	ld	s3,104(sp)
    800046b0:	06013a03          	ld	s4,96(sp)
    800046b4:	05813a83          	ld	s5,88(sp)
    800046b8:	05013b03          	ld	s6,80(sp)
    800046bc:	04813b83          	ld	s7,72(sp)
    800046c0:	04013c03          	ld	s8,64(sp)
    800046c4:	03813c83          	ld	s9,56(sp)
    800046c8:	03013d03          	ld	s10,48(sp)
    800046cc:	02813d83          	ld	s11,40(sp)
    800046d0:	0d010113          	addi	sp,sp,208
    800046d4:	00008067          	ret
    800046d8:	07300713          	li	a4,115
    800046dc:	1ce78a63          	beq	a5,a4,800048b0 <__printf+0x4b8>
    800046e0:	07800713          	li	a4,120
    800046e4:	1ee79e63          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	0007a703          	lw	a4,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	f6f43c23          	sd	a5,-136(s0)
    800046f8:	28074263          	bltz	a4,8000497c <__printf+0x584>
    800046fc:	00002d97          	auipc	s11,0x2
    80004700:	b3cd8d93          	addi	s11,s11,-1220 # 80006238 <digits>
    80004704:	00f77793          	andi	a5,a4,15
    80004708:	00fd87b3          	add	a5,s11,a5
    8000470c:	0007c683          	lbu	a3,0(a5)
    80004710:	00f00613          	li	a2,15
    80004714:	0007079b          	sext.w	a5,a4
    80004718:	f8d40023          	sb	a3,-128(s0)
    8000471c:	0047559b          	srliw	a1,a4,0x4
    80004720:	0047569b          	srliw	a3,a4,0x4
    80004724:	00000c93          	li	s9,0
    80004728:	0ee65063          	bge	a2,a4,80004808 <__printf+0x410>
    8000472c:	00f6f693          	andi	a3,a3,15
    80004730:	00dd86b3          	add	a3,s11,a3
    80004734:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004738:	0087d79b          	srliw	a5,a5,0x8
    8000473c:	00100c93          	li	s9,1
    80004740:	f8d400a3          	sb	a3,-127(s0)
    80004744:	0cb67263          	bgeu	a2,a1,80004808 <__printf+0x410>
    80004748:	00f7f693          	andi	a3,a5,15
    8000474c:	00dd86b3          	add	a3,s11,a3
    80004750:	0006c583          	lbu	a1,0(a3)
    80004754:	00f00613          	li	a2,15
    80004758:	0047d69b          	srliw	a3,a5,0x4
    8000475c:	f8b40123          	sb	a1,-126(s0)
    80004760:	0047d593          	srli	a1,a5,0x4
    80004764:	28f67e63          	bgeu	a2,a5,80004a00 <__printf+0x608>
    80004768:	00f6f693          	andi	a3,a3,15
    8000476c:	00dd86b3          	add	a3,s11,a3
    80004770:	0006c503          	lbu	a0,0(a3)
    80004774:	0087d813          	srli	a6,a5,0x8
    80004778:	0087d69b          	srliw	a3,a5,0x8
    8000477c:	f8a401a3          	sb	a0,-125(s0)
    80004780:	28b67663          	bgeu	a2,a1,80004a0c <__printf+0x614>
    80004784:	00f6f693          	andi	a3,a3,15
    80004788:	00dd86b3          	add	a3,s11,a3
    8000478c:	0006c583          	lbu	a1,0(a3)
    80004790:	00c7d513          	srli	a0,a5,0xc
    80004794:	00c7d69b          	srliw	a3,a5,0xc
    80004798:	f8b40223          	sb	a1,-124(s0)
    8000479c:	29067a63          	bgeu	a2,a6,80004a30 <__printf+0x638>
    800047a0:	00f6f693          	andi	a3,a3,15
    800047a4:	00dd86b3          	add	a3,s11,a3
    800047a8:	0006c583          	lbu	a1,0(a3)
    800047ac:	0107d813          	srli	a6,a5,0x10
    800047b0:	0107d69b          	srliw	a3,a5,0x10
    800047b4:	f8b402a3          	sb	a1,-123(s0)
    800047b8:	28a67263          	bgeu	a2,a0,80004a3c <__printf+0x644>
    800047bc:	00f6f693          	andi	a3,a3,15
    800047c0:	00dd86b3          	add	a3,s11,a3
    800047c4:	0006c683          	lbu	a3,0(a3)
    800047c8:	0147d79b          	srliw	a5,a5,0x14
    800047cc:	f8d40323          	sb	a3,-122(s0)
    800047d0:	21067663          	bgeu	a2,a6,800049dc <__printf+0x5e4>
    800047d4:	02079793          	slli	a5,a5,0x20
    800047d8:	0207d793          	srli	a5,a5,0x20
    800047dc:	00fd8db3          	add	s11,s11,a5
    800047e0:	000dc683          	lbu	a3,0(s11)
    800047e4:	00800793          	li	a5,8
    800047e8:	00700c93          	li	s9,7
    800047ec:	f8d403a3          	sb	a3,-121(s0)
    800047f0:	00075c63          	bgez	a4,80004808 <__printf+0x410>
    800047f4:	f9040713          	addi	a4,s0,-112
    800047f8:	00f70733          	add	a4,a4,a5
    800047fc:	02d00693          	li	a3,45
    80004800:	fed70823          	sb	a3,-16(a4)
    80004804:	00078c93          	mv	s9,a5
    80004808:	f8040793          	addi	a5,s0,-128
    8000480c:	01978cb3          	add	s9,a5,s9
    80004810:	f7f40d13          	addi	s10,s0,-129
    80004814:	000cc503          	lbu	a0,0(s9)
    80004818:	fffc8c93          	addi	s9,s9,-1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	9f8080e7          	jalr	-1544(ra) # 80004214 <consputc>
    80004824:	ff9d18e3          	bne	s10,s9,80004814 <__printf+0x41c>
    80004828:	0100006f          	j	80004838 <__printf+0x440>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	9e8080e7          	jalr	-1560(ra) # 80004214 <consputc>
    80004834:	000c8493          	mv	s1,s9
    80004838:	00094503          	lbu	a0,0(s2)
    8000483c:	c60510e3          	bnez	a0,8000449c <__printf+0xa4>
    80004840:	e40c0ee3          	beqz	s8,8000469c <__printf+0x2a4>
    80004844:	00004517          	auipc	a0,0x4
    80004848:	adc50513          	addi	a0,a0,-1316 # 80008320 <pr>
    8000484c:	00001097          	auipc	ra,0x1
    80004850:	94c080e7          	jalr	-1716(ra) # 80005198 <release>
    80004854:	e49ff06f          	j	8000469c <__printf+0x2a4>
    80004858:	f7843783          	ld	a5,-136(s0)
    8000485c:	03000513          	li	a0,48
    80004860:	01000d13          	li	s10,16
    80004864:	00878713          	addi	a4,a5,8
    80004868:	0007bc83          	ld	s9,0(a5)
    8000486c:	f6e43c23          	sd	a4,-136(s0)
    80004870:	00000097          	auipc	ra,0x0
    80004874:	9a4080e7          	jalr	-1628(ra) # 80004214 <consputc>
    80004878:	07800513          	li	a0,120
    8000487c:	00000097          	auipc	ra,0x0
    80004880:	998080e7          	jalr	-1640(ra) # 80004214 <consputc>
    80004884:	00002d97          	auipc	s11,0x2
    80004888:	9b4d8d93          	addi	s11,s11,-1612 # 80006238 <digits>
    8000488c:	03ccd793          	srli	a5,s9,0x3c
    80004890:	00fd87b3          	add	a5,s11,a5
    80004894:	0007c503          	lbu	a0,0(a5)
    80004898:	fffd0d1b          	addiw	s10,s10,-1
    8000489c:	004c9c93          	slli	s9,s9,0x4
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	974080e7          	jalr	-1676(ra) # 80004214 <consputc>
    800048a8:	fe0d12e3          	bnez	s10,8000488c <__printf+0x494>
    800048ac:	f8dff06f          	j	80004838 <__printf+0x440>
    800048b0:	f7843783          	ld	a5,-136(s0)
    800048b4:	0007bc83          	ld	s9,0(a5)
    800048b8:	00878793          	addi	a5,a5,8
    800048bc:	f6f43c23          	sd	a5,-136(s0)
    800048c0:	000c9a63          	bnez	s9,800048d4 <__printf+0x4dc>
    800048c4:	1080006f          	j	800049cc <__printf+0x5d4>
    800048c8:	001c8c93          	addi	s9,s9,1
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	948080e7          	jalr	-1720(ra) # 80004214 <consputc>
    800048d4:	000cc503          	lbu	a0,0(s9)
    800048d8:	fe0518e3          	bnez	a0,800048c8 <__printf+0x4d0>
    800048dc:	f5dff06f          	j	80004838 <__printf+0x440>
    800048e0:	02500513          	li	a0,37
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	930080e7          	jalr	-1744(ra) # 80004214 <consputc>
    800048ec:	000c8513          	mv	a0,s9
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	924080e7          	jalr	-1756(ra) # 80004214 <consputc>
    800048f8:	f41ff06f          	j	80004838 <__printf+0x440>
    800048fc:	02500513          	li	a0,37
    80004900:	00000097          	auipc	ra,0x0
    80004904:	914080e7          	jalr	-1772(ra) # 80004214 <consputc>
    80004908:	f31ff06f          	j	80004838 <__printf+0x440>
    8000490c:	00030513          	mv	a0,t1
    80004910:	00000097          	auipc	ra,0x0
    80004914:	7bc080e7          	jalr	1980(ra) # 800050cc <acquire>
    80004918:	b4dff06f          	j	80004464 <__printf+0x6c>
    8000491c:	40c0053b          	negw	a0,a2
    80004920:	00a00713          	li	a4,10
    80004924:	02e576bb          	remuw	a3,a0,a4
    80004928:	00002d97          	auipc	s11,0x2
    8000492c:	910d8d93          	addi	s11,s11,-1776 # 80006238 <digits>
    80004930:	ff700593          	li	a1,-9
    80004934:	02069693          	slli	a3,a3,0x20
    80004938:	0206d693          	srli	a3,a3,0x20
    8000493c:	00dd86b3          	add	a3,s11,a3
    80004940:	0006c683          	lbu	a3,0(a3)
    80004944:	02e557bb          	divuw	a5,a0,a4
    80004948:	f8d40023          	sb	a3,-128(s0)
    8000494c:	10b65e63          	bge	a2,a1,80004a68 <__printf+0x670>
    80004950:	06300593          	li	a1,99
    80004954:	02e7f6bb          	remuw	a3,a5,a4
    80004958:	02069693          	slli	a3,a3,0x20
    8000495c:	0206d693          	srli	a3,a3,0x20
    80004960:	00dd86b3          	add	a3,s11,a3
    80004964:	0006c683          	lbu	a3,0(a3)
    80004968:	02e7d73b          	divuw	a4,a5,a4
    8000496c:	00200793          	li	a5,2
    80004970:	f8d400a3          	sb	a3,-127(s0)
    80004974:	bca5ece3          	bltu	a1,a0,8000454c <__printf+0x154>
    80004978:	ce5ff06f          	j	8000465c <__printf+0x264>
    8000497c:	40e007bb          	negw	a5,a4
    80004980:	00002d97          	auipc	s11,0x2
    80004984:	8b8d8d93          	addi	s11,s11,-1864 # 80006238 <digits>
    80004988:	00f7f693          	andi	a3,a5,15
    8000498c:	00dd86b3          	add	a3,s11,a3
    80004990:	0006c583          	lbu	a1,0(a3)
    80004994:	ff100613          	li	a2,-15
    80004998:	0047d69b          	srliw	a3,a5,0x4
    8000499c:	f8b40023          	sb	a1,-128(s0)
    800049a0:	0047d59b          	srliw	a1,a5,0x4
    800049a4:	0ac75e63          	bge	a4,a2,80004a60 <__printf+0x668>
    800049a8:	00f6f693          	andi	a3,a3,15
    800049ac:	00dd86b3          	add	a3,s11,a3
    800049b0:	0006c603          	lbu	a2,0(a3)
    800049b4:	00f00693          	li	a3,15
    800049b8:	0087d79b          	srliw	a5,a5,0x8
    800049bc:	f8c400a3          	sb	a2,-127(s0)
    800049c0:	d8b6e4e3          	bltu	a3,a1,80004748 <__printf+0x350>
    800049c4:	00200793          	li	a5,2
    800049c8:	e2dff06f          	j	800047f4 <__printf+0x3fc>
    800049cc:	00002c97          	auipc	s9,0x2
    800049d0:	84cc8c93          	addi	s9,s9,-1972 # 80006218 <_ZZ13kprintIntegermE6digits+0x1e8>
    800049d4:	02800513          	li	a0,40
    800049d8:	ef1ff06f          	j	800048c8 <__printf+0x4d0>
    800049dc:	00700793          	li	a5,7
    800049e0:	00600c93          	li	s9,6
    800049e4:	e0dff06f          	j	800047f0 <__printf+0x3f8>
    800049e8:	00700793          	li	a5,7
    800049ec:	00600c93          	li	s9,6
    800049f0:	c69ff06f          	j	80004658 <__printf+0x260>
    800049f4:	00300793          	li	a5,3
    800049f8:	00200c93          	li	s9,2
    800049fc:	c5dff06f          	j	80004658 <__printf+0x260>
    80004a00:	00300793          	li	a5,3
    80004a04:	00200c93          	li	s9,2
    80004a08:	de9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a0c:	00400793          	li	a5,4
    80004a10:	00300c93          	li	s9,3
    80004a14:	dddff06f          	j	800047f0 <__printf+0x3f8>
    80004a18:	00400793          	li	a5,4
    80004a1c:	00300c93          	li	s9,3
    80004a20:	c39ff06f          	j	80004658 <__printf+0x260>
    80004a24:	00500793          	li	a5,5
    80004a28:	00400c93          	li	s9,4
    80004a2c:	c2dff06f          	j	80004658 <__printf+0x260>
    80004a30:	00500793          	li	a5,5
    80004a34:	00400c93          	li	s9,4
    80004a38:	db9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a3c:	00600793          	li	a5,6
    80004a40:	00500c93          	li	s9,5
    80004a44:	dadff06f          	j	800047f0 <__printf+0x3f8>
    80004a48:	00600793          	li	a5,6
    80004a4c:	00500c93          	li	s9,5
    80004a50:	c09ff06f          	j	80004658 <__printf+0x260>
    80004a54:	00800793          	li	a5,8
    80004a58:	00700c93          	li	s9,7
    80004a5c:	bfdff06f          	j	80004658 <__printf+0x260>
    80004a60:	00100793          	li	a5,1
    80004a64:	d91ff06f          	j	800047f4 <__printf+0x3fc>
    80004a68:	00100793          	li	a5,1
    80004a6c:	bf1ff06f          	j	8000465c <__printf+0x264>
    80004a70:	00900793          	li	a5,9
    80004a74:	00800c93          	li	s9,8
    80004a78:	be1ff06f          	j	80004658 <__printf+0x260>
    80004a7c:	00001517          	auipc	a0,0x1
    80004a80:	7a450513          	addi	a0,a0,1956 # 80006220 <_ZZ13kprintIntegermE6digits+0x1f0>
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	918080e7          	jalr	-1768(ra) # 8000439c <panic>

0000000080004a8c <printfinit>:
    80004a8c:	fe010113          	addi	sp,sp,-32
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00913423          	sd	s1,8(sp)
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	02010413          	addi	s0,sp,32
    80004aa0:	00004497          	auipc	s1,0x4
    80004aa4:	88048493          	addi	s1,s1,-1920 # 80008320 <pr>
    80004aa8:	00048513          	mv	a0,s1
    80004aac:	00001597          	auipc	a1,0x1
    80004ab0:	78458593          	addi	a1,a1,1924 # 80006230 <_ZZ13kprintIntegermE6digits+0x200>
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	5f4080e7          	jalr	1524(ra) # 800050a8 <initlock>
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	0004ac23          	sw	zero,24(s1)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret

0000000080004ad4 <uartinit>:
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00813423          	sd	s0,8(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	100007b7          	lui	a5,0x10000
    80004ae4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004ae8:	f8000713          	li	a4,-128
    80004aec:	00e781a3          	sb	a4,3(a5)
    80004af0:	00300713          	li	a4,3
    80004af4:	00e78023          	sb	a4,0(a5)
    80004af8:	000780a3          	sb	zero,1(a5)
    80004afc:	00e781a3          	sb	a4,3(a5)
    80004b00:	00700693          	li	a3,7
    80004b04:	00d78123          	sb	a3,2(a5)
    80004b08:	00e780a3          	sb	a4,1(a5)
    80004b0c:	00813403          	ld	s0,8(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <uartputc>:
    80004b18:	00002797          	auipc	a5,0x2
    80004b1c:	5607a783          	lw	a5,1376(a5) # 80007078 <panicked>
    80004b20:	00078463          	beqz	a5,80004b28 <uartputc+0x10>
    80004b24:	0000006f          	j	80004b24 <uartputc+0xc>
    80004b28:	fd010113          	addi	sp,sp,-48
    80004b2c:	02813023          	sd	s0,32(sp)
    80004b30:	00913c23          	sd	s1,24(sp)
    80004b34:	01213823          	sd	s2,16(sp)
    80004b38:	01313423          	sd	s3,8(sp)
    80004b3c:	02113423          	sd	ra,40(sp)
    80004b40:	03010413          	addi	s0,sp,48
    80004b44:	00002917          	auipc	s2,0x2
    80004b48:	53c90913          	addi	s2,s2,1340 # 80007080 <uart_tx_r>
    80004b4c:	00093783          	ld	a5,0(s2)
    80004b50:	00002497          	auipc	s1,0x2
    80004b54:	53848493          	addi	s1,s1,1336 # 80007088 <uart_tx_w>
    80004b58:	0004b703          	ld	a4,0(s1)
    80004b5c:	02078693          	addi	a3,a5,32
    80004b60:	00050993          	mv	s3,a0
    80004b64:	02e69c63          	bne	a3,a4,80004b9c <uartputc+0x84>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	834080e7          	jalr	-1996(ra) # 8000539c <push_on>
    80004b70:	00093783          	ld	a5,0(s2)
    80004b74:	0004b703          	ld	a4,0(s1)
    80004b78:	02078793          	addi	a5,a5,32
    80004b7c:	00e79463          	bne	a5,a4,80004b84 <uartputc+0x6c>
    80004b80:	0000006f          	j	80004b80 <uartputc+0x68>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	88c080e7          	jalr	-1908(ra) # 80005410 <pop_on>
    80004b8c:	00093783          	ld	a5,0(s2)
    80004b90:	0004b703          	ld	a4,0(s1)
    80004b94:	02078693          	addi	a3,a5,32
    80004b98:	fce688e3          	beq	a3,a4,80004b68 <uartputc+0x50>
    80004b9c:	01f77693          	andi	a3,a4,31
    80004ba0:	00003597          	auipc	a1,0x3
    80004ba4:	7a058593          	addi	a1,a1,1952 # 80008340 <uart_tx_buf>
    80004ba8:	00d586b3          	add	a3,a1,a3
    80004bac:	00170713          	addi	a4,a4,1
    80004bb0:	01368023          	sb	s3,0(a3)
    80004bb4:	00e4b023          	sd	a4,0(s1)
    80004bb8:	10000637          	lui	a2,0x10000
    80004bbc:	02f71063          	bne	a4,a5,80004bdc <uartputc+0xc4>
    80004bc0:	0340006f          	j	80004bf4 <uartputc+0xdc>
    80004bc4:	00074703          	lbu	a4,0(a4)
    80004bc8:	00f93023          	sd	a5,0(s2)
    80004bcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004bd0:	00093783          	ld	a5,0(s2)
    80004bd4:	0004b703          	ld	a4,0(s1)
    80004bd8:	00f70e63          	beq	a4,a5,80004bf4 <uartputc+0xdc>
    80004bdc:	00564683          	lbu	a3,5(a2)
    80004be0:	01f7f713          	andi	a4,a5,31
    80004be4:	00e58733          	add	a4,a1,a4
    80004be8:	0206f693          	andi	a3,a3,32
    80004bec:	00178793          	addi	a5,a5,1
    80004bf0:	fc069ae3          	bnez	a3,80004bc4 <uartputc+0xac>
    80004bf4:	02813083          	ld	ra,40(sp)
    80004bf8:	02013403          	ld	s0,32(sp)
    80004bfc:	01813483          	ld	s1,24(sp)
    80004c00:	01013903          	ld	s2,16(sp)
    80004c04:	00813983          	ld	s3,8(sp)
    80004c08:	03010113          	addi	sp,sp,48
    80004c0c:	00008067          	ret

0000000080004c10 <uartputc_sync>:
    80004c10:	ff010113          	addi	sp,sp,-16
    80004c14:	00813423          	sd	s0,8(sp)
    80004c18:	01010413          	addi	s0,sp,16
    80004c1c:	00002717          	auipc	a4,0x2
    80004c20:	45c72703          	lw	a4,1116(a4) # 80007078 <panicked>
    80004c24:	02071663          	bnez	a4,80004c50 <uartputc_sync+0x40>
    80004c28:	00050793          	mv	a5,a0
    80004c2c:	100006b7          	lui	a3,0x10000
    80004c30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004c34:	02077713          	andi	a4,a4,32
    80004c38:	fe070ce3          	beqz	a4,80004c30 <uartputc_sync+0x20>
    80004c3c:	0ff7f793          	andi	a5,a5,255
    80004c40:	00f68023          	sb	a5,0(a3)
    80004c44:	00813403          	ld	s0,8(sp)
    80004c48:	01010113          	addi	sp,sp,16
    80004c4c:	00008067          	ret
    80004c50:	0000006f          	j	80004c50 <uartputc_sync+0x40>

0000000080004c54 <uartstart>:
    80004c54:	ff010113          	addi	sp,sp,-16
    80004c58:	00813423          	sd	s0,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	00002617          	auipc	a2,0x2
    80004c64:	42060613          	addi	a2,a2,1056 # 80007080 <uart_tx_r>
    80004c68:	00002517          	auipc	a0,0x2
    80004c6c:	42050513          	addi	a0,a0,1056 # 80007088 <uart_tx_w>
    80004c70:	00063783          	ld	a5,0(a2)
    80004c74:	00053703          	ld	a4,0(a0)
    80004c78:	04f70263          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004c7c:	100005b7          	lui	a1,0x10000
    80004c80:	00003817          	auipc	a6,0x3
    80004c84:	6c080813          	addi	a6,a6,1728 # 80008340 <uart_tx_buf>
    80004c88:	01c0006f          	j	80004ca4 <uartstart+0x50>
    80004c8c:	0006c703          	lbu	a4,0(a3)
    80004c90:	00f63023          	sd	a5,0(a2)
    80004c94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c98:	00063783          	ld	a5,0(a2)
    80004c9c:	00053703          	ld	a4,0(a0)
    80004ca0:	00f70e63          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004ca4:	01f7f713          	andi	a4,a5,31
    80004ca8:	00e806b3          	add	a3,a6,a4
    80004cac:	0055c703          	lbu	a4,5(a1)
    80004cb0:	00178793          	addi	a5,a5,1
    80004cb4:	02077713          	andi	a4,a4,32
    80004cb8:	fc071ae3          	bnez	a4,80004c8c <uartstart+0x38>
    80004cbc:	00813403          	ld	s0,8(sp)
    80004cc0:	01010113          	addi	sp,sp,16
    80004cc4:	00008067          	ret

0000000080004cc8 <uartgetc>:
    80004cc8:	ff010113          	addi	sp,sp,-16
    80004ccc:	00813423          	sd	s0,8(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    80004cd4:	10000737          	lui	a4,0x10000
    80004cd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004cdc:	0017f793          	andi	a5,a5,1
    80004ce0:	00078c63          	beqz	a5,80004cf8 <uartgetc+0x30>
    80004ce4:	00074503          	lbu	a0,0(a4)
    80004ce8:	0ff57513          	andi	a0,a0,255
    80004cec:	00813403          	ld	s0,8(sp)
    80004cf0:	01010113          	addi	sp,sp,16
    80004cf4:	00008067          	ret
    80004cf8:	fff00513          	li	a0,-1
    80004cfc:	ff1ff06f          	j	80004cec <uartgetc+0x24>

0000000080004d00 <uartintr>:
    80004d00:	100007b7          	lui	a5,0x10000
    80004d04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d08:	0017f793          	andi	a5,a5,1
    80004d0c:	0a078463          	beqz	a5,80004db4 <uartintr+0xb4>
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	100004b7          	lui	s1,0x10000
    80004d28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004d2c:	0ff57513          	andi	a0,a0,255
    80004d30:	fffff097          	auipc	ra,0xfffff
    80004d34:	534080e7          	jalr	1332(ra) # 80004264 <consoleintr>
    80004d38:	0054c783          	lbu	a5,5(s1)
    80004d3c:	0017f793          	andi	a5,a5,1
    80004d40:	fe0794e3          	bnez	a5,80004d28 <uartintr+0x28>
    80004d44:	00002617          	auipc	a2,0x2
    80004d48:	33c60613          	addi	a2,a2,828 # 80007080 <uart_tx_r>
    80004d4c:	00002517          	auipc	a0,0x2
    80004d50:	33c50513          	addi	a0,a0,828 # 80007088 <uart_tx_w>
    80004d54:	00063783          	ld	a5,0(a2)
    80004d58:	00053703          	ld	a4,0(a0)
    80004d5c:	04f70263          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d60:	100005b7          	lui	a1,0x10000
    80004d64:	00003817          	auipc	a6,0x3
    80004d68:	5dc80813          	addi	a6,a6,1500 # 80008340 <uart_tx_buf>
    80004d6c:	01c0006f          	j	80004d88 <uartintr+0x88>
    80004d70:	0006c703          	lbu	a4,0(a3)
    80004d74:	00f63023          	sd	a5,0(a2)
    80004d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d7c:	00063783          	ld	a5,0(a2)
    80004d80:	00053703          	ld	a4,0(a0)
    80004d84:	00f70e63          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d88:	01f7f713          	andi	a4,a5,31
    80004d8c:	00e806b3          	add	a3,a6,a4
    80004d90:	0055c703          	lbu	a4,5(a1)
    80004d94:	00178793          	addi	a5,a5,1
    80004d98:	02077713          	andi	a4,a4,32
    80004d9c:	fc071ae3          	bnez	a4,80004d70 <uartintr+0x70>
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret
    80004db4:	00002617          	auipc	a2,0x2
    80004db8:	2cc60613          	addi	a2,a2,716 # 80007080 <uart_tx_r>
    80004dbc:	00002517          	auipc	a0,0x2
    80004dc0:	2cc50513          	addi	a0,a0,716 # 80007088 <uart_tx_w>
    80004dc4:	00063783          	ld	a5,0(a2)
    80004dc8:	00053703          	ld	a4,0(a0)
    80004dcc:	04f70263          	beq	a4,a5,80004e10 <uartintr+0x110>
    80004dd0:	100005b7          	lui	a1,0x10000
    80004dd4:	00003817          	auipc	a6,0x3
    80004dd8:	56c80813          	addi	a6,a6,1388 # 80008340 <uart_tx_buf>
    80004ddc:	01c0006f          	j	80004df8 <uartintr+0xf8>
    80004de0:	0006c703          	lbu	a4,0(a3)
    80004de4:	00f63023          	sd	a5,0(a2)
    80004de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dec:	00063783          	ld	a5,0(a2)
    80004df0:	00053703          	ld	a4,0(a0)
    80004df4:	02f70063          	beq	a4,a5,80004e14 <uartintr+0x114>
    80004df8:	01f7f713          	andi	a4,a5,31
    80004dfc:	00e806b3          	add	a3,a6,a4
    80004e00:	0055c703          	lbu	a4,5(a1)
    80004e04:	00178793          	addi	a5,a5,1
    80004e08:	02077713          	andi	a4,a4,32
    80004e0c:	fc071ae3          	bnez	a4,80004de0 <uartintr+0xe0>
    80004e10:	00008067          	ret
    80004e14:	00008067          	ret

0000000080004e18 <kinit>:
    80004e18:	fc010113          	addi	sp,sp,-64
    80004e1c:	02913423          	sd	s1,40(sp)
    80004e20:	fffff7b7          	lui	a5,0xfffff
    80004e24:	00004497          	auipc	s1,0x4
    80004e28:	53b48493          	addi	s1,s1,1339 # 8000935f <end+0xfff>
    80004e2c:	02813823          	sd	s0,48(sp)
    80004e30:	01313c23          	sd	s3,24(sp)
    80004e34:	00f4f4b3          	and	s1,s1,a5
    80004e38:	02113c23          	sd	ra,56(sp)
    80004e3c:	03213023          	sd	s2,32(sp)
    80004e40:	01413823          	sd	s4,16(sp)
    80004e44:	01513423          	sd	s5,8(sp)
    80004e48:	04010413          	addi	s0,sp,64
    80004e4c:	000017b7          	lui	a5,0x1
    80004e50:	01100993          	li	s3,17
    80004e54:	00f487b3          	add	a5,s1,a5
    80004e58:	01b99993          	slli	s3,s3,0x1b
    80004e5c:	06f9e063          	bltu	s3,a5,80004ebc <kinit+0xa4>
    80004e60:	00003a97          	auipc	s5,0x3
    80004e64:	500a8a93          	addi	s5,s5,1280 # 80008360 <end>
    80004e68:	0754ec63          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e6c:	0734fa63          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e70:	00088a37          	lui	s4,0x88
    80004e74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004e78:	00002917          	auipc	s2,0x2
    80004e7c:	21890913          	addi	s2,s2,536 # 80007090 <kmem>
    80004e80:	00ca1a13          	slli	s4,s4,0xc
    80004e84:	0140006f          	j	80004e98 <kinit+0x80>
    80004e88:	000017b7          	lui	a5,0x1
    80004e8c:	00f484b3          	add	s1,s1,a5
    80004e90:	0554e863          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e94:	0534f663          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e98:	00001637          	lui	a2,0x1
    80004e9c:	00100593          	li	a1,1
    80004ea0:	00048513          	mv	a0,s1
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	5e4080e7          	jalr	1508(ra) # 80005488 <__memset>
    80004eac:	00093783          	ld	a5,0(s2)
    80004eb0:	00f4b023          	sd	a5,0(s1)
    80004eb4:	00993023          	sd	s1,0(s2)
    80004eb8:	fd4498e3          	bne	s1,s4,80004e88 <kinit+0x70>
    80004ebc:	03813083          	ld	ra,56(sp)
    80004ec0:	03013403          	ld	s0,48(sp)
    80004ec4:	02813483          	ld	s1,40(sp)
    80004ec8:	02013903          	ld	s2,32(sp)
    80004ecc:	01813983          	ld	s3,24(sp)
    80004ed0:	01013a03          	ld	s4,16(sp)
    80004ed4:	00813a83          	ld	s5,8(sp)
    80004ed8:	04010113          	addi	sp,sp,64
    80004edc:	00008067          	ret
    80004ee0:	00001517          	auipc	a0,0x1
    80004ee4:	37050513          	addi	a0,a0,880 # 80006250 <digits+0x18>
    80004ee8:	fffff097          	auipc	ra,0xfffff
    80004eec:	4b4080e7          	jalr	1204(ra) # 8000439c <panic>

0000000080004ef0 <freerange>:
    80004ef0:	fc010113          	addi	sp,sp,-64
    80004ef4:	000017b7          	lui	a5,0x1
    80004ef8:	02913423          	sd	s1,40(sp)
    80004efc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f00:	009504b3          	add	s1,a0,s1
    80004f04:	fffff537          	lui	a0,0xfffff
    80004f08:	02813823          	sd	s0,48(sp)
    80004f0c:	02113c23          	sd	ra,56(sp)
    80004f10:	03213023          	sd	s2,32(sp)
    80004f14:	01313c23          	sd	s3,24(sp)
    80004f18:	01413823          	sd	s4,16(sp)
    80004f1c:	01513423          	sd	s5,8(sp)
    80004f20:	01613023          	sd	s6,0(sp)
    80004f24:	04010413          	addi	s0,sp,64
    80004f28:	00a4f4b3          	and	s1,s1,a0
    80004f2c:	00f487b3          	add	a5,s1,a5
    80004f30:	06f5e463          	bltu	a1,a5,80004f98 <freerange+0xa8>
    80004f34:	00003a97          	auipc	s5,0x3
    80004f38:	42ca8a93          	addi	s5,s5,1068 # 80008360 <end>
    80004f3c:	0954e263          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f40:	01100993          	li	s3,17
    80004f44:	01b99993          	slli	s3,s3,0x1b
    80004f48:	0734fc63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f4c:	00058a13          	mv	s4,a1
    80004f50:	00002917          	auipc	s2,0x2
    80004f54:	14090913          	addi	s2,s2,320 # 80007090 <kmem>
    80004f58:	00002b37          	lui	s6,0x2
    80004f5c:	0140006f          	j	80004f70 <freerange+0x80>
    80004f60:	000017b7          	lui	a5,0x1
    80004f64:	00f484b3          	add	s1,s1,a5
    80004f68:	0554ec63          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f6c:	0534fa63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f70:	00001637          	lui	a2,0x1
    80004f74:	00100593          	li	a1,1
    80004f78:	00048513          	mv	a0,s1
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	50c080e7          	jalr	1292(ra) # 80005488 <__memset>
    80004f84:	00093703          	ld	a4,0(s2)
    80004f88:	016487b3          	add	a5,s1,s6
    80004f8c:	00e4b023          	sd	a4,0(s1)
    80004f90:	00993023          	sd	s1,0(s2)
    80004f94:	fcfa76e3          	bgeu	s4,a5,80004f60 <freerange+0x70>
    80004f98:	03813083          	ld	ra,56(sp)
    80004f9c:	03013403          	ld	s0,48(sp)
    80004fa0:	02813483          	ld	s1,40(sp)
    80004fa4:	02013903          	ld	s2,32(sp)
    80004fa8:	01813983          	ld	s3,24(sp)
    80004fac:	01013a03          	ld	s4,16(sp)
    80004fb0:	00813a83          	ld	s5,8(sp)
    80004fb4:	00013b03          	ld	s6,0(sp)
    80004fb8:	04010113          	addi	sp,sp,64
    80004fbc:	00008067          	ret
    80004fc0:	00001517          	auipc	a0,0x1
    80004fc4:	29050513          	addi	a0,a0,656 # 80006250 <digits+0x18>
    80004fc8:	fffff097          	auipc	ra,0xfffff
    80004fcc:	3d4080e7          	jalr	980(ra) # 8000439c <panic>

0000000080004fd0 <kfree>:
    80004fd0:	fe010113          	addi	sp,sp,-32
    80004fd4:	00813823          	sd	s0,16(sp)
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00913423          	sd	s1,8(sp)
    80004fe0:	02010413          	addi	s0,sp,32
    80004fe4:	03451793          	slli	a5,a0,0x34
    80004fe8:	04079c63          	bnez	a5,80005040 <kfree+0x70>
    80004fec:	00003797          	auipc	a5,0x3
    80004ff0:	37478793          	addi	a5,a5,884 # 80008360 <end>
    80004ff4:	00050493          	mv	s1,a0
    80004ff8:	04f56463          	bltu	a0,a5,80005040 <kfree+0x70>
    80004ffc:	01100793          	li	a5,17
    80005000:	01b79793          	slli	a5,a5,0x1b
    80005004:	02f57e63          	bgeu	a0,a5,80005040 <kfree+0x70>
    80005008:	00001637          	lui	a2,0x1
    8000500c:	00100593          	li	a1,1
    80005010:	00000097          	auipc	ra,0x0
    80005014:	478080e7          	jalr	1144(ra) # 80005488 <__memset>
    80005018:	00002797          	auipc	a5,0x2
    8000501c:	07878793          	addi	a5,a5,120 # 80007090 <kmem>
    80005020:	0007b703          	ld	a4,0(a5)
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00e4b023          	sd	a4,0(s1)
    80005030:	0097b023          	sd	s1,0(a5)
    80005034:	00813483          	ld	s1,8(sp)
    80005038:	02010113          	addi	sp,sp,32
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	21050513          	addi	a0,a0,528 # 80006250 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	354080e7          	jalr	852(ra) # 8000439c <panic>

0000000080005050 <kalloc>:
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00913423          	sd	s1,8(sp)
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	02010413          	addi	s0,sp,32
    80005064:	00002797          	auipc	a5,0x2
    80005068:	02c78793          	addi	a5,a5,44 # 80007090 <kmem>
    8000506c:	0007b483          	ld	s1,0(a5)
    80005070:	02048063          	beqz	s1,80005090 <kalloc+0x40>
    80005074:	0004b703          	ld	a4,0(s1)
    80005078:	00001637          	lui	a2,0x1
    8000507c:	00500593          	li	a1,5
    80005080:	00048513          	mv	a0,s1
    80005084:	00e7b023          	sd	a4,0(a5)
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	400080e7          	jalr	1024(ra) # 80005488 <__memset>
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	01013403          	ld	s0,16(sp)
    80005098:	00048513          	mv	a0,s1
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	02010113          	addi	sp,sp,32
    800050a4:	00008067          	ret

00000000800050a8 <initlock>:
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00813423          	sd	s0,8(sp)
    800050b0:	01010413          	addi	s0,sp,16
    800050b4:	00813403          	ld	s0,8(sp)
    800050b8:	00b53423          	sd	a1,8(a0)
    800050bc:	00052023          	sw	zero,0(a0)
    800050c0:	00053823          	sd	zero,16(a0)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <acquire>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00813823          	sd	s0,16(sp)
    800050d4:	00913423          	sd	s1,8(sp)
    800050d8:	00113c23          	sd	ra,24(sp)
    800050dc:	01213023          	sd	s2,0(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00050493          	mv	s1,a0
    800050e8:	10002973          	csrr	s2,sstatus
    800050ec:	100027f3          	csrr	a5,sstatus
    800050f0:	ffd7f793          	andi	a5,a5,-3
    800050f4:	10079073          	csrw	sstatus,a5
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	8e8080e7          	jalr	-1816(ra) # 800039e0 <mycpu>
    80005100:	07852783          	lw	a5,120(a0)
    80005104:	06078e63          	beqz	a5,80005180 <acquire+0xb4>
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	8d8080e7          	jalr	-1832(ra) # 800039e0 <mycpu>
    80005110:	07852783          	lw	a5,120(a0)
    80005114:	0004a703          	lw	a4,0(s1)
    80005118:	0017879b          	addiw	a5,a5,1
    8000511c:	06f52c23          	sw	a5,120(a0)
    80005120:	04071063          	bnez	a4,80005160 <acquire+0x94>
    80005124:	00100713          	li	a4,1
    80005128:	00070793          	mv	a5,a4
    8000512c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005130:	0007879b          	sext.w	a5,a5
    80005134:	fe079ae3          	bnez	a5,80005128 <acquire+0x5c>
    80005138:	0ff0000f          	fence
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	8a4080e7          	jalr	-1884(ra) # 800039e0 <mycpu>
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00a4b823          	sd	a0,16(s1)
    80005150:	00013903          	ld	s2,0(sp)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	02010113          	addi	sp,sp,32
    8000515c:	00008067          	ret
    80005160:	0104b903          	ld	s2,16(s1)
    80005164:	fffff097          	auipc	ra,0xfffff
    80005168:	87c080e7          	jalr	-1924(ra) # 800039e0 <mycpu>
    8000516c:	faa91ce3          	bne	s2,a0,80005124 <acquire+0x58>
    80005170:	00001517          	auipc	a0,0x1
    80005174:	0e850513          	addi	a0,a0,232 # 80006258 <digits+0x20>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	224080e7          	jalr	548(ra) # 8000439c <panic>
    80005180:	00195913          	srli	s2,s2,0x1
    80005184:	fffff097          	auipc	ra,0xfffff
    80005188:	85c080e7          	jalr	-1956(ra) # 800039e0 <mycpu>
    8000518c:	00197913          	andi	s2,s2,1
    80005190:	07252e23          	sw	s2,124(a0)
    80005194:	f75ff06f          	j	80005108 <acquire+0x3c>

0000000080005198 <release>:
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00813823          	sd	s0,16(sp)
    800051a0:	00113c23          	sd	ra,24(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00052783          	lw	a5,0(a0)
    800051b4:	00079a63          	bnez	a5,800051c8 <release+0x30>
    800051b8:	00001517          	auipc	a0,0x1
    800051bc:	0a850513          	addi	a0,a0,168 # 80006260 <digits+0x28>
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	1dc080e7          	jalr	476(ra) # 8000439c <panic>
    800051c8:	01053903          	ld	s2,16(a0)
    800051cc:	00050493          	mv	s1,a0
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	810080e7          	jalr	-2032(ra) # 800039e0 <mycpu>
    800051d8:	fea910e3          	bne	s2,a0,800051b8 <release+0x20>
    800051dc:	0004b823          	sd	zero,16(s1)
    800051e0:	0ff0000f          	fence
    800051e4:	0f50000f          	fence	iorw,ow
    800051e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800051ec:	ffffe097          	auipc	ra,0xffffe
    800051f0:	7f4080e7          	jalr	2036(ra) # 800039e0 <mycpu>
    800051f4:	100027f3          	csrr	a5,sstatus
    800051f8:	0027f793          	andi	a5,a5,2
    800051fc:	04079a63          	bnez	a5,80005250 <release+0xb8>
    80005200:	07852783          	lw	a5,120(a0)
    80005204:	02f05e63          	blez	a5,80005240 <release+0xa8>
    80005208:	fff7871b          	addiw	a4,a5,-1
    8000520c:	06e52c23          	sw	a4,120(a0)
    80005210:	00071c63          	bnez	a4,80005228 <release+0x90>
    80005214:	07c52783          	lw	a5,124(a0)
    80005218:	00078863          	beqz	a5,80005228 <release+0x90>
    8000521c:	100027f3          	csrr	a5,sstatus
    80005220:	0027e793          	ori	a5,a5,2
    80005224:	10079073          	csrw	sstatus,a5
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	00013903          	ld	s2,0(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret
    80005240:	00001517          	auipc	a0,0x1
    80005244:	04050513          	addi	a0,a0,64 # 80006280 <digits+0x48>
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	154080e7          	jalr	340(ra) # 8000439c <panic>
    80005250:	00001517          	auipc	a0,0x1
    80005254:	01850513          	addi	a0,a0,24 # 80006268 <digits+0x30>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	144080e7          	jalr	324(ra) # 8000439c <panic>

0000000080005260 <holding>:
    80005260:	00052783          	lw	a5,0(a0)
    80005264:	00079663          	bnez	a5,80005270 <holding+0x10>
    80005268:	00000513          	li	a0,0
    8000526c:	00008067          	ret
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	01053483          	ld	s1,16(a0)
    80005288:	ffffe097          	auipc	ra,0xffffe
    8000528c:	758080e7          	jalr	1880(ra) # 800039e0 <mycpu>
    80005290:	01813083          	ld	ra,24(sp)
    80005294:	01013403          	ld	s0,16(sp)
    80005298:	40a48533          	sub	a0,s1,a0
    8000529c:	00153513          	seqz	a0,a0
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <push_off>:
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00813823          	sd	s0,16(sp)
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	02010413          	addi	s0,sp,32
    800052c0:	100024f3          	csrr	s1,sstatus
    800052c4:	100027f3          	csrr	a5,sstatus
    800052c8:	ffd7f793          	andi	a5,a5,-3
    800052cc:	10079073          	csrw	sstatus,a5
    800052d0:	ffffe097          	auipc	ra,0xffffe
    800052d4:	710080e7          	jalr	1808(ra) # 800039e0 <mycpu>
    800052d8:	07852783          	lw	a5,120(a0)
    800052dc:	02078663          	beqz	a5,80005308 <push_off+0x5c>
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	700080e7          	jalr	1792(ra) # 800039e0 <mycpu>
    800052e8:	07852783          	lw	a5,120(a0)
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	0017879b          	addiw	a5,a5,1
    800052f8:	06f52c23          	sw	a5,120(a0)
    800052fc:	00813483          	ld	s1,8(sp)
    80005300:	02010113          	addi	sp,sp,32
    80005304:	00008067          	ret
    80005308:	0014d493          	srli	s1,s1,0x1
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	6d4080e7          	jalr	1748(ra) # 800039e0 <mycpu>
    80005314:	0014f493          	andi	s1,s1,1
    80005318:	06952e23          	sw	s1,124(a0)
    8000531c:	fc5ff06f          	j	800052e0 <push_off+0x34>

0000000080005320 <pop_off>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813023          	sd	s0,0(sp)
    80005328:	00113423          	sd	ra,8(sp)
    8000532c:	01010413          	addi	s0,sp,16
    80005330:	ffffe097          	auipc	ra,0xffffe
    80005334:	6b0080e7          	jalr	1712(ra) # 800039e0 <mycpu>
    80005338:	100027f3          	csrr	a5,sstatus
    8000533c:	0027f793          	andi	a5,a5,2
    80005340:	04079663          	bnez	a5,8000538c <pop_off+0x6c>
    80005344:	07852783          	lw	a5,120(a0)
    80005348:	02f05a63          	blez	a5,8000537c <pop_off+0x5c>
    8000534c:	fff7871b          	addiw	a4,a5,-1
    80005350:	06e52c23          	sw	a4,120(a0)
    80005354:	00071c63          	bnez	a4,8000536c <pop_off+0x4c>
    80005358:	07c52783          	lw	a5,124(a0)
    8000535c:	00078863          	beqz	a5,8000536c <pop_off+0x4c>
    80005360:	100027f3          	csrr	a5,sstatus
    80005364:	0027e793          	ori	a5,a5,2
    80005368:	10079073          	csrw	sstatus,a5
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret
    8000537c:	00001517          	auipc	a0,0x1
    80005380:	f0450513          	addi	a0,a0,-252 # 80006280 <digits+0x48>
    80005384:	fffff097          	auipc	ra,0xfffff
    80005388:	018080e7          	jalr	24(ra) # 8000439c <panic>
    8000538c:	00001517          	auipc	a0,0x1
    80005390:	edc50513          	addi	a0,a0,-292 # 80006268 <digits+0x30>
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	008080e7          	jalr	8(ra) # 8000439c <panic>

000000008000539c <push_on>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00113c23          	sd	ra,24(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	02010413          	addi	s0,sp,32
    800053b0:	100024f3          	csrr	s1,sstatus
    800053b4:	100027f3          	csrr	a5,sstatus
    800053b8:	0027e793          	ori	a5,a5,2
    800053bc:	10079073          	csrw	sstatus,a5
    800053c0:	ffffe097          	auipc	ra,0xffffe
    800053c4:	620080e7          	jalr	1568(ra) # 800039e0 <mycpu>
    800053c8:	07852783          	lw	a5,120(a0)
    800053cc:	02078663          	beqz	a5,800053f8 <push_on+0x5c>
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	610080e7          	jalr	1552(ra) # 800039e0 <mycpu>
    800053d8:	07852783          	lw	a5,120(a0)
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	0017879b          	addiw	a5,a5,1
    800053e8:	06f52c23          	sw	a5,120(a0)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	02010113          	addi	sp,sp,32
    800053f4:	00008067          	ret
    800053f8:	0014d493          	srli	s1,s1,0x1
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	5e4080e7          	jalr	1508(ra) # 800039e0 <mycpu>
    80005404:	0014f493          	andi	s1,s1,1
    80005408:	06952e23          	sw	s1,124(a0)
    8000540c:	fc5ff06f          	j	800053d0 <push_on+0x34>

0000000080005410 <pop_on>:
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00813023          	sd	s0,0(sp)
    80005418:	00113423          	sd	ra,8(sp)
    8000541c:	01010413          	addi	s0,sp,16
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	5c0080e7          	jalr	1472(ra) # 800039e0 <mycpu>
    80005428:	100027f3          	csrr	a5,sstatus
    8000542c:	0027f793          	andi	a5,a5,2
    80005430:	04078463          	beqz	a5,80005478 <pop_on+0x68>
    80005434:	07852783          	lw	a5,120(a0)
    80005438:	02f05863          	blez	a5,80005468 <pop_on+0x58>
    8000543c:	fff7879b          	addiw	a5,a5,-1
    80005440:	06f52c23          	sw	a5,120(a0)
    80005444:	07853783          	ld	a5,120(a0)
    80005448:	00079863          	bnez	a5,80005458 <pop_on+0x48>
    8000544c:	100027f3          	csrr	a5,sstatus
    80005450:	ffd7f793          	andi	a5,a5,-3
    80005454:	10079073          	csrw	sstatus,a5
    80005458:	00813083          	ld	ra,8(sp)
    8000545c:	00013403          	ld	s0,0(sp)
    80005460:	01010113          	addi	sp,sp,16
    80005464:	00008067          	ret
    80005468:	00001517          	auipc	a0,0x1
    8000546c:	e4050513          	addi	a0,a0,-448 # 800062a8 <digits+0x70>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	f2c080e7          	jalr	-212(ra) # 8000439c <panic>
    80005478:	00001517          	auipc	a0,0x1
    8000547c:	e1050513          	addi	a0,a0,-496 # 80006288 <digits+0x50>
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	f1c080e7          	jalr	-228(ra) # 8000439c <panic>

0000000080005488 <__memset>:
    80005488:	ff010113          	addi	sp,sp,-16
    8000548c:	00813423          	sd	s0,8(sp)
    80005490:	01010413          	addi	s0,sp,16
    80005494:	1a060e63          	beqz	a2,80005650 <__memset+0x1c8>
    80005498:	40a007b3          	neg	a5,a0
    8000549c:	0077f793          	andi	a5,a5,7
    800054a0:	00778693          	addi	a3,a5,7
    800054a4:	00b00813          	li	a6,11
    800054a8:	0ff5f593          	andi	a1,a1,255
    800054ac:	fff6071b          	addiw	a4,a2,-1
    800054b0:	1b06e663          	bltu	a3,a6,8000565c <__memset+0x1d4>
    800054b4:	1cd76463          	bltu	a4,a3,8000567c <__memset+0x1f4>
    800054b8:	1a078e63          	beqz	a5,80005674 <__memset+0x1ec>
    800054bc:	00b50023          	sb	a1,0(a0)
    800054c0:	00100713          	li	a4,1
    800054c4:	1ae78463          	beq	a5,a4,8000566c <__memset+0x1e4>
    800054c8:	00b500a3          	sb	a1,1(a0)
    800054cc:	00200713          	li	a4,2
    800054d0:	1ae78a63          	beq	a5,a4,80005684 <__memset+0x1fc>
    800054d4:	00b50123          	sb	a1,2(a0)
    800054d8:	00300713          	li	a4,3
    800054dc:	18e78463          	beq	a5,a4,80005664 <__memset+0x1dc>
    800054e0:	00b501a3          	sb	a1,3(a0)
    800054e4:	00400713          	li	a4,4
    800054e8:	1ae78263          	beq	a5,a4,8000568c <__memset+0x204>
    800054ec:	00b50223          	sb	a1,4(a0)
    800054f0:	00500713          	li	a4,5
    800054f4:	1ae78063          	beq	a5,a4,80005694 <__memset+0x20c>
    800054f8:	00b502a3          	sb	a1,5(a0)
    800054fc:	00700713          	li	a4,7
    80005500:	18e79e63          	bne	a5,a4,8000569c <__memset+0x214>
    80005504:	00b50323          	sb	a1,6(a0)
    80005508:	00700e93          	li	t4,7
    8000550c:	00859713          	slli	a4,a1,0x8
    80005510:	00e5e733          	or	a4,a1,a4
    80005514:	01059e13          	slli	t3,a1,0x10
    80005518:	01c76e33          	or	t3,a4,t3
    8000551c:	01859313          	slli	t1,a1,0x18
    80005520:	006e6333          	or	t1,t3,t1
    80005524:	02059893          	slli	a7,a1,0x20
    80005528:	40f60e3b          	subw	t3,a2,a5
    8000552c:	011368b3          	or	a7,t1,a7
    80005530:	02859813          	slli	a6,a1,0x28
    80005534:	0108e833          	or	a6,a7,a6
    80005538:	03059693          	slli	a3,a1,0x30
    8000553c:	003e589b          	srliw	a7,t3,0x3
    80005540:	00d866b3          	or	a3,a6,a3
    80005544:	03859713          	slli	a4,a1,0x38
    80005548:	00389813          	slli	a6,a7,0x3
    8000554c:	00f507b3          	add	a5,a0,a5
    80005550:	00e6e733          	or	a4,a3,a4
    80005554:	000e089b          	sext.w	a7,t3
    80005558:	00f806b3          	add	a3,a6,a5
    8000555c:	00e7b023          	sd	a4,0(a5)
    80005560:	00878793          	addi	a5,a5,8
    80005564:	fed79ce3          	bne	a5,a3,8000555c <__memset+0xd4>
    80005568:	ff8e7793          	andi	a5,t3,-8
    8000556c:	0007871b          	sext.w	a4,a5
    80005570:	01d787bb          	addw	a5,a5,t4
    80005574:	0ce88e63          	beq	a7,a4,80005650 <__memset+0x1c8>
    80005578:	00f50733          	add	a4,a0,a5
    8000557c:	00b70023          	sb	a1,0(a4)
    80005580:	0017871b          	addiw	a4,a5,1
    80005584:	0cc77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005588:	00e50733          	add	a4,a0,a4
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	0027871b          	addiw	a4,a5,2
    80005594:	0ac77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005598:	00e50733          	add	a4,a0,a4
    8000559c:	00b70023          	sb	a1,0(a4)
    800055a0:	0037871b          	addiw	a4,a5,3
    800055a4:	0ac77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055a8:	00e50733          	add	a4,a0,a4
    800055ac:	00b70023          	sb	a1,0(a4)
    800055b0:	0047871b          	addiw	a4,a5,4
    800055b4:	08c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055b8:	00e50733          	add	a4,a0,a4
    800055bc:	00b70023          	sb	a1,0(a4)
    800055c0:	0057871b          	addiw	a4,a5,5
    800055c4:	08c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055c8:	00e50733          	add	a4,a0,a4
    800055cc:	00b70023          	sb	a1,0(a4)
    800055d0:	0067871b          	addiw	a4,a5,6
    800055d4:	06c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055d8:	00e50733          	add	a4,a0,a4
    800055dc:	00b70023          	sb	a1,0(a4)
    800055e0:	0077871b          	addiw	a4,a5,7
    800055e4:	06c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055e8:	00e50733          	add	a4,a0,a4
    800055ec:	00b70023          	sb	a1,0(a4)
    800055f0:	0087871b          	addiw	a4,a5,8
    800055f4:	04c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055f8:	00e50733          	add	a4,a0,a4
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0097871b          	addiw	a4,a5,9
    80005604:	04c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	00a7871b          	addiw	a4,a5,10
    80005614:	02c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	00b7871b          	addiw	a4,a5,11
    80005624:	02c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	00c7871b          	addiw	a4,a5,12
    80005634:	00c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	00d7879b          	addiw	a5,a5,13
    80005644:	00c7f663          	bgeu	a5,a2,80005650 <__memset+0x1c8>
    80005648:	00f507b3          	add	a5,a0,a5
    8000564c:	00b78023          	sb	a1,0(a5)
    80005650:	00813403          	ld	s0,8(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret
    8000565c:	00b00693          	li	a3,11
    80005660:	e55ff06f          	j	800054b4 <__memset+0x2c>
    80005664:	00300e93          	li	t4,3
    80005668:	ea5ff06f          	j	8000550c <__memset+0x84>
    8000566c:	00100e93          	li	t4,1
    80005670:	e9dff06f          	j	8000550c <__memset+0x84>
    80005674:	00000e93          	li	t4,0
    80005678:	e95ff06f          	j	8000550c <__memset+0x84>
    8000567c:	00000793          	li	a5,0
    80005680:	ef9ff06f          	j	80005578 <__memset+0xf0>
    80005684:	00200e93          	li	t4,2
    80005688:	e85ff06f          	j	8000550c <__memset+0x84>
    8000568c:	00400e93          	li	t4,4
    80005690:	e7dff06f          	j	8000550c <__memset+0x84>
    80005694:	00500e93          	li	t4,5
    80005698:	e75ff06f          	j	8000550c <__memset+0x84>
    8000569c:	00600e93          	li	t4,6
    800056a0:	e6dff06f          	j	8000550c <__memset+0x84>

00000000800056a4 <__memmove>:
    800056a4:	ff010113          	addi	sp,sp,-16
    800056a8:	00813423          	sd	s0,8(sp)
    800056ac:	01010413          	addi	s0,sp,16
    800056b0:	0e060863          	beqz	a2,800057a0 <__memmove+0xfc>
    800056b4:	fff6069b          	addiw	a3,a2,-1
    800056b8:	0006881b          	sext.w	a6,a3
    800056bc:	0ea5e863          	bltu	a1,a0,800057ac <__memmove+0x108>
    800056c0:	00758713          	addi	a4,a1,7
    800056c4:	00a5e7b3          	or	a5,a1,a0
    800056c8:	40a70733          	sub	a4,a4,a0
    800056cc:	0077f793          	andi	a5,a5,7
    800056d0:	00f73713          	sltiu	a4,a4,15
    800056d4:	00174713          	xori	a4,a4,1
    800056d8:	0017b793          	seqz	a5,a5
    800056dc:	00e7f7b3          	and	a5,a5,a4
    800056e0:	10078863          	beqz	a5,800057f0 <__memmove+0x14c>
    800056e4:	00900793          	li	a5,9
    800056e8:	1107f463          	bgeu	a5,a6,800057f0 <__memmove+0x14c>
    800056ec:	0036581b          	srliw	a6,a2,0x3
    800056f0:	fff8081b          	addiw	a6,a6,-1
    800056f4:	02081813          	slli	a6,a6,0x20
    800056f8:	01d85893          	srli	a7,a6,0x1d
    800056fc:	00858813          	addi	a6,a1,8
    80005700:	00058793          	mv	a5,a1
    80005704:	00050713          	mv	a4,a0
    80005708:	01088833          	add	a6,a7,a6
    8000570c:	0007b883          	ld	a7,0(a5)
    80005710:	00878793          	addi	a5,a5,8
    80005714:	00870713          	addi	a4,a4,8
    80005718:	ff173c23          	sd	a7,-8(a4)
    8000571c:	ff0798e3          	bne	a5,a6,8000570c <__memmove+0x68>
    80005720:	ff867713          	andi	a4,a2,-8
    80005724:	02071793          	slli	a5,a4,0x20
    80005728:	0207d793          	srli	a5,a5,0x20
    8000572c:	00f585b3          	add	a1,a1,a5
    80005730:	40e686bb          	subw	a3,a3,a4
    80005734:	00f507b3          	add	a5,a0,a5
    80005738:	06e60463          	beq	a2,a4,800057a0 <__memmove+0xfc>
    8000573c:	0005c703          	lbu	a4,0(a1)
    80005740:	00e78023          	sb	a4,0(a5)
    80005744:	04068e63          	beqz	a3,800057a0 <__memmove+0xfc>
    80005748:	0015c603          	lbu	a2,1(a1)
    8000574c:	00100713          	li	a4,1
    80005750:	00c780a3          	sb	a2,1(a5)
    80005754:	04e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005758:	0025c603          	lbu	a2,2(a1)
    8000575c:	00200713          	li	a4,2
    80005760:	00c78123          	sb	a2,2(a5)
    80005764:	02e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005768:	0035c603          	lbu	a2,3(a1)
    8000576c:	00300713          	li	a4,3
    80005770:	00c781a3          	sb	a2,3(a5)
    80005774:	02e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005778:	0045c603          	lbu	a2,4(a1)
    8000577c:	00400713          	li	a4,4
    80005780:	00c78223          	sb	a2,4(a5)
    80005784:	00e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005788:	0055c603          	lbu	a2,5(a1)
    8000578c:	00500713          	li	a4,5
    80005790:	00c782a3          	sb	a2,5(a5)
    80005794:	00e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005798:	0065c703          	lbu	a4,6(a1)
    8000579c:	00e78323          	sb	a4,6(a5)
    800057a0:	00813403          	ld	s0,8(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret
    800057ac:	02061713          	slli	a4,a2,0x20
    800057b0:	02075713          	srli	a4,a4,0x20
    800057b4:	00e587b3          	add	a5,a1,a4
    800057b8:	f0f574e3          	bgeu	a0,a5,800056c0 <__memmove+0x1c>
    800057bc:	02069613          	slli	a2,a3,0x20
    800057c0:	02065613          	srli	a2,a2,0x20
    800057c4:	fff64613          	not	a2,a2
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00c78633          	add	a2,a5,a2
    800057d0:	fff7c683          	lbu	a3,-1(a5)
    800057d4:	fff78793          	addi	a5,a5,-1
    800057d8:	fff70713          	addi	a4,a4,-1
    800057dc:	00d70023          	sb	a3,0(a4)
    800057e0:	fec798e3          	bne	a5,a2,800057d0 <__memmove+0x12c>
    800057e4:	00813403          	ld	s0,8(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret
    800057f0:	02069713          	slli	a4,a3,0x20
    800057f4:	02075713          	srli	a4,a4,0x20
    800057f8:	00170713          	addi	a4,a4,1
    800057fc:	00e50733          	add	a4,a0,a4
    80005800:	00050793          	mv	a5,a0
    80005804:	0005c683          	lbu	a3,0(a1)
    80005808:	00178793          	addi	a5,a5,1
    8000580c:	00158593          	addi	a1,a1,1
    80005810:	fed78fa3          	sb	a3,-1(a5)
    80005814:	fee798e3          	bne	a5,a4,80005804 <__memmove+0x160>
    80005818:	f89ff06f          	j	800057a0 <__memmove+0xfc>

000000008000581c <__putc>:
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	02010413          	addi	s0,sp,32
    8000582c:	00050793          	mv	a5,a0
    80005830:	fef40593          	addi	a1,s0,-17
    80005834:	00100613          	li	a2,1
    80005838:	00000513          	li	a0,0
    8000583c:	fef407a3          	sb	a5,-17(s0)
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	b3c080e7          	jalr	-1220(ra) # 8000437c <console_write>
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret

0000000080005858 <__getc>:
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	02010413          	addi	s0,sp,32
    80005868:	fe840593          	addi	a1,s0,-24
    8000586c:	00100613          	li	a2,1
    80005870:	00000513          	li	a0,0
    80005874:	fffff097          	auipc	ra,0xfffff
    80005878:	ae8080e7          	jalr	-1304(ra) # 8000435c <console_read>
    8000587c:	fe844503          	lbu	a0,-24(s0)
    80005880:	01813083          	ld	ra,24(sp)
    80005884:	01013403          	ld	s0,16(sp)
    80005888:	02010113          	addi	sp,sp,32
    8000588c:	00008067          	ret

0000000080005890 <console_handler>:
    80005890:	fe010113          	addi	sp,sp,-32
    80005894:	00813823          	sd	s0,16(sp)
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00913423          	sd	s1,8(sp)
    800058a0:	02010413          	addi	s0,sp,32
    800058a4:	14202773          	csrr	a4,scause
    800058a8:	100027f3          	csrr	a5,sstatus
    800058ac:	0027f793          	andi	a5,a5,2
    800058b0:	06079e63          	bnez	a5,8000592c <console_handler+0x9c>
    800058b4:	00074c63          	bltz	a4,800058cc <console_handler+0x3c>
    800058b8:	01813083          	ld	ra,24(sp)
    800058bc:	01013403          	ld	s0,16(sp)
    800058c0:	00813483          	ld	s1,8(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret
    800058cc:	0ff77713          	andi	a4,a4,255
    800058d0:	00900793          	li	a5,9
    800058d4:	fef712e3          	bne	a4,a5,800058b8 <console_handler+0x28>
    800058d8:	ffffe097          	auipc	ra,0xffffe
    800058dc:	6dc080e7          	jalr	1756(ra) # 80003fb4 <plic_claim>
    800058e0:	00a00793          	li	a5,10
    800058e4:	00050493          	mv	s1,a0
    800058e8:	02f50c63          	beq	a0,a5,80005920 <console_handler+0x90>
    800058ec:	fc0506e3          	beqz	a0,800058b8 <console_handler+0x28>
    800058f0:	00050593          	mv	a1,a0
    800058f4:	00001517          	auipc	a0,0x1
    800058f8:	8bc50513          	addi	a0,a0,-1860 # 800061b0 <_ZZ13kprintIntegermE6digits+0x180>
    800058fc:	fffff097          	auipc	ra,0xfffff
    80005900:	afc080e7          	jalr	-1284(ra) # 800043f8 <__printf>
    80005904:	01013403          	ld	s0,16(sp)
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	00048513          	mv	a0,s1
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	02010113          	addi	sp,sp,32
    80005918:	ffffe317          	auipc	t1,0xffffe
    8000591c:	6d430067          	jr	1748(t1) # 80003fec <plic_complete>
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	3e0080e7          	jalr	992(ra) # 80004d00 <uartintr>
    80005928:	fddff06f          	j	80005904 <console_handler+0x74>
    8000592c:	00001517          	auipc	a0,0x1
    80005930:	98450513          	addi	a0,a0,-1660 # 800062b0 <digits+0x78>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	a68080e7          	jalr	-1432(ra) # 8000439c <panic>
	...
