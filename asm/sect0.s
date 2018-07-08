// forward references
.equ start_, 0x08000000
.equ start_static_80001B0, 0x080001B0
.equ start_static80001C4, 0x080001C4
.equ dword_80001D8, 0x080001D8
.equ off_80001DC, 0x080001DC
.equ dword_80001E0, 0x080001E0
.equ dword_80001E4, 0x080001E4
.equ off_80001E8, 0x080001E8
.equ dword_80001EC, 0x080001EC
.equ off_80001F0, 0x080001F0
.equ dword_80001F4, 0x080001F4
.equ off_80001F8, 0x080001F8
.equ off_80001FC, 0x080001FC
.equ dword_8000200, 0x08000200
.equ off_8000204, 0x08000204
.equ off_8000208, 0x08000208
.equ off_800020C, 0x0800020C
.equ off_8000210, 0x08000210
.equ off_8000214, 0x08000214
.equ off_8000218, 0x08000218
.equ dword_800021C, 0x0800021C
.equ off_8000220, 0x08000220
.equ off_8000224, 0x08000224
.equ start_800025C, 0x0800025C
.equ off_8000280, 0x08000280
.equ start_8000284, 0x08000284
.equ off_8000294, 0x08000294
.equ off_8000298, 0x08000298
.equ main_, 0x0800029C
.equ off_8000324, 0x08000324
.equ off_8000328, 0x08000328
.equ off_800032C, 0x0800032C
.equ main_static_800036C, 0x0800036C
.equ off_8000390, 0x08000390
.equ off_8000394, 0x08000394
.equ off_8000398, 0x08000398
.equ main_static_800039C, 0x0800039C
.equ off_80003AC, 0x080003AC
.equ main_static_80003B0, 0x080003B0
.equ off_8000414, 0x08000414
.equ main_static_8000418, 0x08000418
.equ main_static_8000456, 0x08000456
.equ off_80004F0, 0x080004F0
.equ off_80004F4, 0x080004F4
.equ off_80004F8, 0x080004F8
.equ main_static_80004FC, 0x080004FC
.equ dword_8000528, 0x08000528
.equ off_800052C, 0x0800052C
.equ dword_8000534, 0x08000534
.equ dword_8000548, 0x08000548
.equ f500_8000550, 0x08000550
.equ f500_8000558, 0x08000558
.equ f500_8000560, 0x08000560
.equ f500_800057E, 0x0800057E
.equ f500_static_8000596, 0x08000596
.equ f500_static_80005A8, 0x080005A8
.equ f500_80005BA, 0x080005BA
.equ f500_80005D2, 0x080005D2
.equ f500_80005EA, 0x080005EA
.equ off_8000648, 0x08000648
.equ off_800064C, 0x0800064C
.equ f500_80006CC, 0x080006CC
.equ f500_80006E8, 0x080006E8
.equ f500_80006FA, 0x080006FA
.equ f500_8000706, 0x08000706
.equ off_8000730, 0x08000730
.equ f500_static_8000734, 0x08000734
.equ off_8000750, 0x08000750
.equ off_8000758, 0x08000758
.equ off_800075C, 0x0800075C
.equ off_8000760, 0x08000760
.equ off_8000764, 0x08000764
.equ off_8000768, 0x08000768
.equ off_800076C, 0x0800076C
.equ off_8000770, 0x08000770
.equ off_8000774, 0x08000774
.equ off_8000778, 0x08000778
.equ off_800077C, 0x0800077C
.equ off_8000780, 0x08000780
.equ off_8000784, 0x08000784
.equ f800_static_8000788, 0x08000788
.equ off_80007A4, 0x080007A4
.equ off_80007A8, 0x080007A8
.equ file800_static_80007B8, 0x080007B8
.equ off_80007F0, 0x080007F0
.equ dword_80007F4, 0x080007F4
.equ f800_80007F8, 0x080007F8
.equ f800_8000800, 0x08000800
.equ f800_static_800086C, 0x0800086C
.equ off_80008A4, 0x080008A4
.equ dword_80008A8, 0x080008A8
.equ off_80008B4, 0x080008B4
.equ off_80008B8, 0x080008B8
.equ f800_dead_80008BC, 0x080008BC
.equ f800_dead_80008D4, 0x080008D4
.equ f800_80008EC, 0x080008EC
.equ f900_8000904, 0x08000904

.arm
start_:
    b start_init
dword_8000004:    .word 0x51AEFF24, 0x21A29A69, 0xA82843D, 0xAD09E484, 0x988B2411
    .word 0x217F81C0, 0x19BE52A3, 0x20CE0993, 0x4A4A4610, 0xEC3127F8
    .word 0x33E8C758, 0xBFCEE382, 0x94DFF485, 0xC1094BCE, 0xC08A5694
    .word 0xFCA77213, 0x734D849F, 0x619ACAA3, 0x27A39758, 0x769803FC
    .word 0x61C71D23, 0x56AE0403, 0x8438BF, 0xFD0EA740, 0x3FE52FF
    .word 0xF130956F, 0x85C0FB97, 0x2580D660, 0x3BE63A9, 0xE2384E01
    .word 0xFF34A2F9, 0x44033EBB, 0xCB900078, 0x943A1188, 0x637CC065
    .word 0xAF3CF087, 0x8BE425D6, 0x72AC0A38, 0x7F8D421, 0x4B434F52
    .word 0x4558455F, 0x53525F34, 0x4A573442, 0x963830, 0x0
    .word 0x0
    .word 0x2901
start_init:
    mov r0, #0x12
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001d8-0x80000c8-8] // =0x3007BA0
    mov r0, #0x11
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000d4-8] // loc_3007FFC
    mov r0, #0x1b
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000e0-8] // loc_3007FFC
    mov r0, #0x17
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000ec-8] // loc_3007FFC
    mov r0, #0x13
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001e0-0x80000f8-8] // =0x3007FE0
    mov r0, #0x1f
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001e4-0x8000104-8] // =0x3007700
    ldr r0, [pc, #0x80001e8-0x8000108-8] // GamePakWaitstateControl
    ldr r1, [pc, #0x80001ec-0x800010c-8] // =0x45B4
    str r1, [r0]
    mov r0, #0x3000000
    mov r1, #0x7e00
    bl start_static_80001B0
    mov r0, #0x2000000
    mov r1, #0x40000
    bl start_static_80001B0
    ldr r0, [pc, #0x80001f0-0x800012c-8] // sub_8212700
    ldr r1, [pc, #0x80001f4-0x8000130-8] // =0x3005800
    ldr r2, [pc, #0x80001f8-0x8000134-8] // =0x17C8
    bl start_static80001C4
    ldr r0, [pc, #0x80001fc-0x800013c-8] // start_800025c+1
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x80001dc-0x8000148-8] // loc_3007FFC
    ldr r1, [pc, #0x8000200-0x800014c-8] // =0x3005800
    str r1, [r0]
    ldr r0, [pc, #0x8000204-0x8000154-8] // InterruptEnableRegister
    mov r1, #1
    orr r1, r1, #4
    orr r1, r1, #0x2000
    strh r1, [r0]
    ldr r0, [pc, #0x8000208-0x8000168-8] // dword_2008920
    mov r1, #0
    strb r1, [r0]
    ldr r0, [pc, #0x800020c-0x8000174-8] // dword_200A338
    mov r1, #1
    str r1, [r0]
    ldr r0, [pc, #0x8000210-0x8000180-8] // dword_200ACB0
    mov r1, #0
    str r1, [r0]
    ldr r0, [pc, #0x8000214-0x800018c-8] // generallcdstatus_stat_lyc_
    mov r1, #8
    strh r1, [r0]
    ldr r0, [pc, #0x8000218-0x8000198-8] // KeyInterruptControl
    ldr r1, [pc, #0x800021c-0x800019c-8] // =0x83FF
    strh r1, [r0]
    ldr r0, [pc, #0x8000220-0x80001a4-8] // main_+1
    bx r0
    b start_
// end of function start_

.arm
start_static_80001B0:
    mov r2, #0
loc_80001B4:
    subs r1, r1, #4
    str r2, [r0,r1]
    bne loc_80001B4
    bx lr
// end of function start_static_80001B0

.arm
start_static80001C4:
    subs r2, r2, #4
    ldr r3, [r0,r2]
    str r3, [r1,r2]
    bne start_static80001C4
    bx lr
dword_80001D8:    .word 0x3007BA0
off_80001DC:    .word loc_3007FFC
dword_80001E0:    .word 0x3007FE0
dword_80001E4:    .word 0x3007700
off_80001E8:    .word GamePakWaitstateControl
dword_80001EC:    .word 0x45B4
off_80001F0:    .word sub_8212700
dword_80001F4:    .word 0x3005800
off_80001F8:    .word 0x17CC
off_80001FC:    .word start_800025C+1
dword_8000200:    .word 0x3005800
off_8000204:    .word InterruptEnableRegister
off_8000208:    .word dword_2008920
off_800020C:    .word dword_200A338
off_8000210:    .word dword_200ACB0
off_8000214:    .word GeneralLCDStatus_STAT_LYC_
off_8000218:    .word KeyInterruptControl
dword_800021C:    .word 0x83FF
off_8000220:    .word main_+1
off_8000224:    .word sub_811104C+1
    .word sub_811103C+1
    .word 0x300593F, 0x300593D, 0x300593D, 0x300593D, 0x300593D
    .word 0x300593D, 0x300593D, 0x300593D, 0x300593D, 0x300593D
    .word 0x300593D, 0x300593D
// end of function start_static80001C4

.thumb
start_800025C:
    push {r4}
    ldr r4, [pc, #0x8000298-0x800025e-2] // InterruptMasterEnableRegister
    mov r0, #0
    strh r0, [r4]
    mov r0, #0
    ldr r1, [pc, #0x8000280-0x8000266-2] // off_8000224
    ldr r2, [pc, #0x8000294-0x8000268-4] // dword_3002000
loc_800026A:
    ldr r3, [r1]
    str r3, [r2]
    add r0, #1
    add r1, #4
    add r2, #4
    cmp r0, #0xe
    blt loc_800026A
    mov r0, #1
    strh r0, [r4]
    pop {r4}
    bx lr
off_8000280:    .word off_8000224
// end of function start_800025C

.thumb
start_8000284:
    ldr r3, [pc, #0x8000298-0x8000284-4] // InterruptMasterEnableRegister
    mov r2, #0
    strh r2, [r3]
    ldr r2, [pc, #0x8000294-0x800028a-2] // dword_3002000
    str r1, [r2,r0]
    mov r2, #1
    strh r2, [r3]
    bx lr
off_8000294:    .word dword_3002000
off_8000298:    .word InterruptMasterEnableRegister
// end of function start_8000284

.thumb
// main routine here
main_:
    bl main_static_8000456
    bl sub_8001AD8
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x14
    strb r1, [r0]
    bl sub_802D6B8
game_routine:
    bl main_static_800039C
    bl main_static_800036C
    bl f500_8000706
    bl loc_8001EA0
    bl sub_8001CB8
    bl sub_8025BBC
    bl f800_8000800
    bl loc_800256C
    bl sub_8001D6E
    bl sub_80027DC
    bl sub_80029C0
    bl sub_8001B94
    bl main_static_80003B0
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r1, [r0]
    add r1, #1
    strh r1, [r0]
    bl fA00_8000C24
    ldr r0, [pc, #0x8000328-0x80002f2-2] // off_800032C
    mov r7, r10
    ldr r1, [r7]
    ldrb r1, [r1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0  // change CPU modes?
    bl sub_8007BD0
    tst r0, r0
    beq loc_800030C
    bl sub_8005B6E
loc_800030C:
    bl loc_804DFC4
    bl loc_8001E94
    bl loc_80020A0
    ldr r0, [pc, #0x8000324-0x8000318-4] // loc_30063F8+1
    mov lr, pc
    bx r0
    bl main_static_8000418
    b game_routine
off_8000324:    .word loc_30063F8+1
off_8000328:    .word off_800032C
off_800032C:    .word loc_8025268+1
    .word loc_8004B70+1
    .word loc_8006AF4+1
    .word loc_80297F0+1
    .word loc_802CFF2+1
    .word loc_802D6D2+1
    .word loc_80489EC+1
    .word loc_802DECC+1
    .word loc_8043238+1
    .word loc_8043864+1
    .word loc_804903C+1
    .word loc_8049CE8+1
    .word loc_804BDFC+1
    .word loc_8044FA8+1
    .word loc_8110000+1
    .word loc_80405E4+1
// end of function main_

.thumb
main_static_800036C:
    push {lr}
loc_800036E:
    ldr r0, [pc, #0x8000398-0x800036e-2] // generallcdstatus_stat_lyc_
    mov r2, #1
loc_8000372:
    ldrh r1, [r0]
    tst r1, r2
    beq loc_8000372
    ldr r0, [pc, #0x8000390-0x8000378-4] // dword_200ACB0
    ldr r2, [r0]
    ldr r1, [pc, #0x8000394-0x800037c-4] // dword_200A338
    ldr r1, [r1]
    cmp r2, r1
    blt loc_800036E
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
    .word dword_200A4D0
off_8000390:    .word dword_200ACB0
off_8000394:    .word dword_200A338
off_8000398:    .word GeneralLCDStatus_STAT_LYC_
// end of function main_static_800036C

.thumb
main_static_800039C:
    push {lr}
    ldr r0, [pc, #0x80003ac-0x800039e-2] // generallcdstatus_stat_lyc_
    mov r2, #1
loc_80003A2:
    ldrh r1, [r0]
    tst r1, r2
    bne loc_80003A2
    pop {pc}
    .balign 4, 0x00
off_80003AC:    .word GeneralLCDStatus_STAT_LYC_
// end of function main_static_800039C

.thumb
main_static_80003B0:
    mov r7, r10
    ldr r0, [r7,#4]
    ldrb r7, [r0,#0x13]
    add r7, #1
    cmp r7, #4
    ble loc_80003BE
    mov r7, #0
loc_80003BE:
    strb r7, [r0,#0x13]
    ldr r4, [pc, #0x8000414-0x80003c0-4] // KeyStatus
    ldrh r4, [r4]
    mvn r4, r4
    ldrh r5, [r0]
    strh r5, [r0,#6]
    strh r4, [r0]
    add r6, r4, #0
    and r6, r5
    mov r1, #8
    mov r3, #0
loc_80003D4:
    mov r2, #1
    lsl r2, r3
    and r2, r6
    beq loc_80003F4
    ldrb r2, [r0,r1]
    cmp r2, #0x10
    bge loc_80003FA
    add r2, #1
    strb r2, [r0,r1]
    cmp r2, #1
    beq loc_8000402
loc_80003EA:
    mov r2, #1
    lsl r2, r3
    mvn r2, r2
    and r6, r2
    b loc_8000402
loc_80003F4:
    mov r2, #0
    strb r2, [r0,r1]
    b loc_8000402
loc_80003FA:
    ldrb r7, [r0,#0x13]
    cmp r7, #0
    beq loc_8000402
    b loc_80003EA
loc_8000402:
    add r3, #1
    add r1, #1
    cmp r1, #0x12
    blt loc_80003D4
    strh r6, [r0,#4]
    mvn r5, r5
    and r4, r5
    strh r4, [r0,#2]
    mov pc, lr
off_8000414:    .word KeyStatus
// end of function main_static_80003B0

.thumb
main_static_8000418:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq locret_8000454
    mov r7, r10
    ldr r0, [r7,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    ldr r1, [r7]
    add r1, #4
    ldrb r4, [r1]
    sub r4, #1
    cmp r4, #0
    bgt loc_8000452
    mov r4, #0
    mov r3, #0xf
    and r0, r3
    cmp r0, r3
    bne loc_8000452
    and r2, r3
    tst r2, r2
    beq loc_8000452
    push {r1}
    bl start_800025C
    bl main_static_8000456
    pop {r1}
    mov r4, #0xa
loc_8000452:
    strb r4, [r1]
locret_8000454:
    pop {r4-r7,pc}
// end of function main_static_8000418

.thumb
main_static_8000456:
    mov r0, #1
    b loc_800045C
    mov r0, #0
loc_800045C:
    push {r5,lr}
    push {r0}
    bl sub_80060AC
    bl sub_8006108
    pop {r0}
    ldr r1, [pc, #0x80004f0-0x800046a-2] // =0x40
    tst r0, r0
    beq loc_8000472
    ldr r1, [pc, #0x80004f4-0x8000470-4] // =0xC0
loc_8000472:
    mov r0, r10
    ldr r0, [r0,#8]
    strh r1, [r0]
    bl sub_8001D44
    bl sub_8001CB8
    bl main_static_80004FC
    bl f500_80006FA
    bl sub_8001E74
    bl sub_800262E
    bl sub_8003836
    bl sub_8001B78
    bl sub_8002798
    bl sub_802525C
    bl sub_8025B60
    bl f800_80007F8
    bl sub_804DF48
    bl sub_8025CDC
    bl sub_8004988
    bl sub_8004908
    bl sub_802BCA4
    bl sub_802BCE0
    bl sub_8002008
    bl sub_80024F4
    bl sub_8001D60
    bl sub_8005B50
    bl sub_800609C
    bl sub_804819C
    bl sub_8110BF4
    ldr r0, [pc, #0x80004f8-0x80004dc-4] // dword_200A338
    mov r1, #1
    strh r1, [r0]
    mov r0, r10
    ldr r0, [r0]
    mov r1, #8
    bl f900_8000930
    pop {r5,pc}
    .byte 0, 0
off_80004F0:    .word 0x40
off_80004F4:    .word 0xC0
off_80004F8:    .word dword_200A338
// end of function main_static_8000456

.thumb
main_static_80004FC:
    push {lr}
    bl sub_8112630
    ldr r0, [pc, #0x8000528-0x8000502-2] // =0x93040D
    bl sub_8112BCC
    mov r0, #0x10
    ldr r1, [pc, #0x8000534-0x800050a-2] // =0x30059C4
    bl start_8000284
    ldr r0, [pc, #0x800052c-0x8000510-4] // generallcdstatus_stat_lyc_
    ldrh r1, [r0]
    mov r2, #0xff
    and r1, r2
    mov r2, #0x20 
    orr r1, r2
    mov r2, #0x50 
    lsl r2, r2, #8
    orr r1, r2
    strh r1, [r0]
    pop {pc}
    .balign 4, 0x00
dword_8000528:    .word 0x93040D
off_800052C:    .word GeneralLCDStatus_STAT_LYC_
    .word dword_3002000
dword_8000534:    .word 0x30059C5
// end of function main_static_80004FC

    push {lr}
    bl sub_81126A8
    pop {pc}
    .word unk_2007400
    .word dword_8000548
dword_8000548:    .word 0x4425121C, 0x0
.thumb
f500_8000550:
    push {lr}
    bl sub_8111FD4
    pop {pc}
// end of function f500_8000550

.thumb
f500_8000558:
    push {r1-r7,lr}
    bl f500_static_8000596
    pop {r1-r7,pc}
// end of function f500_8000558

.thumb
f500_8000560:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r1, [r7,#0x19]
    cmp r0, r1
    beq locret_800057C
    strb r0, [r7,#0x19]
    cmp r0, #0xff
    bne loc_8000578
    bl f500_static_80005A8
    b locret_800057C
loc_8000578:
    bl f500_static_8000596
locret_800057C:
    pop {r1-r7,pc}
// end of function f500_8000560

.thumb
f500_800057E:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x19]
    cmp r0, #0xff
    bne loc_8000590
    bl f500_static_80005A8
    b locret_8000594
loc_8000590:
    bl f500_static_8000596
locret_8000594:
    pop {r1-r7,pc}
// end of function f500_800057E

.thumb
f500_static_8000596:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000758-0x800059c-4] // sub_81126B4+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_8000596

.thumb
f500_static_80005A8:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800075c-0x80005ae-2] // sub_81127E8+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_80005A8

.thumb
f500_80005BA:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000648-0x80005be-2] // off_800064C
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x8000760-0x80005c6-2] // sub_811365C+1
    bl f500_static_8000734
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function f500_80005BA

.thumb
f500_80005D2:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000648-0x80005d4-4] // off_800064C
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r2, r10
    push {r2}
    ldr r3, [pc, #0x8000764-0x80005de-2] // sub_8112610+1
    bl f500_static_8000734
    pop {r2}
    mov r10, r2
    pop {r4-r7,pc}
// end of function f500_80005D2

.thumb
f500_80005EA:
    push {r4-r7,lr}
    cmp r0, #0x21 
    bgt loc_80005F8
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x19]
    b loc_80005F8
loc_80005F8:
    mov r4, r12
    mov r5, r8
    mov r6, r9
    mov r7, r10
    push {r4-r7}
    ldr r7, [pc, #0x8000648-0x8000602-2] // off_800064C
    lsl r2, r2, #2
    ldr r7, [r7,r2]
    add r4, r0, #0
    add r5, r1, #0
    ldr r3, [pc, #0x8000768-0x800060c-4] // sub_81126B4+1
    bl f500_static_8000734
    add r0, r7, #0
    ldr r3, [pc, #0x800076c-0x8000614-4] // sub_81128A4+1
    bl f500_static_8000734
    add r0, r7, #0
    mov r1, #0xff
    mov r2, #0
    ldr r3, [pc, #0x8000770-0x8000620-4] // sub_811365C+1
    bl f500_static_8000734
    add r0, r4, #0
    ldr r3, [pc, #0x8000774-0x8000628-4] // sub_8112780+1
    bl f500_static_8000734
    add r0, r7, #0
    add r1, r5, #0
    ldr r3, [pc, #0x8000778-0x8000632-2] // loc_811287C+1
    bl f500_static_8000734
    pop {r4-r7}
    mov r12, r4
    mov r8, r5
    mov r9, r6
    mov r10, r7
    pop {r4-r7,pc}
    .word unk_2011AA0
off_8000648:    .word off_800064C
off_800064C:    .word unk_20118A0
    .word unk_2011B20
    .word unk_2011B60
    .word unk_2011E30
    .word unk_2011D60
    .word unk_2011760
    .word unk_2011860
    .word unk_2011AE0
    .word unk_2011DF0
    .word unk_2011820
    .word unk_2011BA0
    .word unk_2011E70
    .word unk_2011CE0
    .word unk_2011720
    .word unk_2011A20
    .word unk_2011CA0
    .word unk_20117E0
    .word unk_2011D20
    .word unk_20119E0
    .word unk_20116A0
    .word unk_2011920
    .word unk_20119A0
    .word unk_2011C60
    .word unk_20116E0
    .word unk_2011960
    .word unk_2011BE0
    .word unk_20118E0
    .word unk_2011DB0
    .word unk_2011A60
    .word unk_2011C20
    .word unk_20117A0
    .word unk_2011AA0
// end of function f500_80005EA

.thumb
f500_80006CC:
    push {r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800077c-0x80006d2-2] // sub_81127E8+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0xff
    strb r0, [r7,#0x19]
    pop {r7,pc}
    .balign 4, 0x00
// end of function f500_80006CC

.thumb
f500_80006E8:
    push {r1-r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000780-0x80006ee-2] // sub_8112780+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {r1-r7,pc}
// end of function f500_80006E8

.thumb
f500_80006FA:
    push {lr}
    ldr r0, [pc, #0x8000750-0x80006fc-4] // dword_200A800
    ldr r1, [pc, #0x8000784-0x80006fe-2] // =0x204
    bl f900_8000930
    pop {pc}
// end of function f500_80006FA

.thumb
f500_8000706:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8000750-0x8000708-4] // dword_200A800
    ldr r7, [r5]
    cmp r7, #0
    beq loc_8000728
    mov r6, #4
    add r6, r6, r5
loc_8000714:
    ldmia r6!, {r0-r3}
    mov r4, r10
    push {r4}
    ldr r4, [pc, #0x8000730-0x800071a-2] // loc_8000720+1
    mov lr, r4
    bx r3
loc_8000720:
    pop {r4}
    mov r10, r4
    sub r7, #1
    bne loc_8000714
loc_8000728:
    mov r0, #0
    str r0, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
off_8000730:    .word loc_8000720+1
// end of function f500_8000706

.thumb
f500_static_8000734:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8000750-0x8000736-2] // dword_200A800
    ldr r7, [r5]
    cmp r7, #0x20 
    blt loc_8000740
    b locret_800074C
loc_8000740:
    add r6, r7, #1
    str r6, [r5]
    lsl r7, r7, #4
    add r7, #4
    add r7, r7, r5
    stmia r7!, {r0-r3}
locret_800074C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8000750:    .word dword_200A800
    .word unk_2010BB0
off_8000758:    .word sub_81126B4+1
off_800075C:    .word sub_81127E8+1
off_8000760:    .word sub_811365C+1
off_8000764:    .word sub_8112610+1
off_8000768:    .word sub_81126B4+1
off_800076C:    .word sub_81128A4+1
off_8000770:    .word sub_811365C+1
off_8000774:    .word sub_8112780+1
off_8000778:    .word loc_811287C+1
off_800077C:    .word sub_81127E8+1
off_8000780:    .word sub_8112780+1
off_8000784:    .word 0x204
// end of function f500_static_8000734

.thumb
f800_static_8000788:
    push {r4-r7,lr}
    lsl r3, r3, #2
    ldr r5, [pc, #0x80007a4-0x800078c-4] // off_80007A8
    ldr r5, [r5,r3]
    mov r3, #8
    ldr r7, [pc, #0x80007f4-0x8000792-2] // =0x80000000
loc_8000794:
    ldr r6, [r5,r3]
    and r6, r7
    bne loc_8000794
    str r0, [r5]
    str r1, [r5,#4]
    orr r4, r2
    str r4, [r5,#8]
    pop {r4-r7,pc}
off_80007A4:    .word off_80007A8
off_80007A8:    .word DMA0SourceAddress
    .word DMA1SourceAddress
    .word DMA2SourceAddress
    .word DMA3SourceAddress
// end of function f800_static_8000788

.thumb
file800_static_80007B8:
    push {r4,lr}
    ldr r3, [pc, #0x80007f0-0x80007ba-2] // DMA0SourceAddress
loc_80007BC:
    mov r1, #0
    mov r4, #1
    tst r0, r4
    beq loc_80007C8
    ldr r2, [r3,#(DMA0WordCount - 0x40000b0)]
    orr r1, r2
loc_80007C8:
    mov r4, #2
    tst r0, r4
    beq loc_80007D2
    ldr r2, [r3,#(DMA1WordCount - 0x40000b0)]
    orr r1, r2
loc_80007D2:
    mov r4, #4
    tst r0, r4
    beq loc_80007DC
    ldr r2, [r3,#(DMA2WordCount - 0x40000b0)]
    orr r1, r2
loc_80007DC:
    mov r4, #8
    tst r0, r4
    beq loc_80007E6
    ldr r2, [r3,#(DMA3WordCount - 0x40000b0)]
    orr r1, r2
loc_80007E6:
    ldr r2, [pc, #0x80007f4-0x80007e6-2] // =0x80000000
    and r1, r2
    bne loc_80007BC
    pop {r4,pc}
    .byte 0, 0
off_80007F0:    .word DMA0SourceAddress
dword_80007F4:    .word 0x80000000
// end of function file800_static_80007B8

.thumb
f800_80007F8:
    ldr r0, [pc, #0x80008b4-0x80007f8-4] // dword_200B134
    mov r1, #0
    str r1, [r0]
    mov pc, lr
// end of function f800_80007F8

.thumb
f800_8000800:
    push {lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1,r4-r7}
    ldr r0, [pc, #0x80008b4-0x8000808-4] // dword_200B134
    ldr r1, [r0]
    ldr r2, [pc, #0x80008b8-0x800080c-4] // dword_200D120
loc_800080E:
    sub r1, #1
    blt loc_800085E
    mov r8, r1
    mov r9, r2
    ldr r4, [r2,#0x10]
    cmp r4, #1
    beq loc_800083C
    cmp r4, #2
    beq loc_800084C
    ldr r4, [r2,#0xc]
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    lsr r2, r2, #2
    mov r3, #3
    bl f800_static_8000788
    mov r0, #8
    bl file800_static_80007B8
    mov r1, r8
    mov r2, r9
    b loc_800085A
loc_800083C:
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    bl f900_800098C
    mov r1, r8
    mov r2, r9
    b loc_800085A
loc_800084C:
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    bl f900_80009A0
    mov r1, r8
    mov r2, r9
loc_800085A:
    add r2, #0x14
    b loc_800080E
loc_800085E:
    bl f800_80007F8
    pop {r0,r1,r4-r7}
    mov r8, r0
    mov r9, r1
    pop {pc}
    .balign 4, 0x00
// end of function f800_8000800

.thumb
f800_static_800086C:
    mov r3, #0
    b loc_8000876
loc_8000870:
    mov r3, #1
    b loc_8000876
loc_8000874:
    mov r3, #2
loc_8000876:
    push {r4-r7}
    add r7, r3, #0
    ldr r3, [pc, #0x80008b4-0x800087a-2] // dword_200B134
    ldr r4, [r3]
    cmp r4, #0x60 
    bge loc_80008A0
    add r5, r4, #0
    add r4, #1
    str r4, [r3]
    ldr r4, [pc, #0x80008b8-0x8000888-4] // dword_200D120
    mov r6, #0x14
    mul r5, r6
    add r4, r4, r5
    str r0, [r4]
    str r1, [r4,#4]
    str r2, [r4,#8]
    str r7, [r4,#0x10]
    ldr r3, [pc, #0x80008a4-0x8000898-4] // dword_80008A8
    lsl r7, r7, #2
    ldr r3, [r3,r7]
    str r3, [r4,#0xc]
loc_80008A0:
    pop {r4-r7}
    mov pc, lr
off_80008A4:    .word dword_80008A8
dword_80008A8:    .word 0x84000000, 0xFFFFFFFF, 0xFFFFFFFF
off_80008B4:    .word dword_200B134
off_80008B8:    .word dword_200D120
// end of function f800_static_800086C

.thumb
f800_dead_80008BC:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008C0:
    ldr r0, [r7]
    tst r0, r0
    beq locret_80008D2
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl f800_static_800086C
    add r7, #0xc
    b loc_80008C0
locret_80008D2:
    pop {r4-r7,pc}
// end of function f800_dead_80008BC

.thumb
f800_dead_80008D4:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008D8:
    ldr r0, [r7]
    tst r0, r0
    beq locret_80008EA
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000870
    add r7, #0xc
    b loc_80008D8
locret_80008EA:
    pop {r4-r7,pc}
// end of function f800_dead_80008D4

.thumb
f800_80008EC:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008F0:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8000902
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000874
    add r7, #0xc
    b loc_80008F0
locret_8000902:
    pop {r4-r7,pc}
// end of function f800_80008EC

.thumb
f900_8000904:
    push {r0-r2,lr}
    mov r2, #0
loc_8000908:
    sub r1, #1
    strb r2, [r0,r1]
    bne loc_8000908
    pop {r0-r2,pc}
// end of function f900_8000904
