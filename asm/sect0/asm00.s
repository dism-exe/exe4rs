.include "sect0/asm00.inc"

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
    ldr r0, [pc, #0x80001f0-0x800012c-8] // function_chunks_loc_8212700
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
    ldr r0, [pc, #0x8000214-0x800018c-8] // GeneralLCDStatus_STAT_LYC_
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
off_80001F0:    .word function_chunks_loc_8212700
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
    bl sub_8001EA0
    bl sub_8001CB8
    bl sub_8025BBC
    bl f800_8000800
    bl sub_800256C
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
    ldr r0, [pc, #0x8000328-0x80002f2-2] // jt_mainCallbacks
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
    bl sub_8001E94
    bl sub_80020A0
    ldr r0, [pc, #0x8000324-0x8000318-4] // loc_30063F8+1
    mov lr, pc
    bx r0
    bl main_static_8000418
    b game_routine
off_8000324:    .word loc_30063F8+1
off_8000328:    .word jt_mainCallbacks
jt_mainCallbacks:    .word ho_cb_8025268+1
    .word ho_8004B70+1
    .word ho_8006AF4+1
    .word loc_80297F0+1
    .word sub_802CFF2+1
    .word loc_802D6D2+1
    .word loc_80489EC+1
    .word loc_802DECC+1
    .word loc_8043238+1
    .word sub_8043864+1
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
    ldr r0, [pc, #0x8000398-0x800036e-2] // GeneralLCDStatus_STAT_LYC_
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
    ldr r0, [pc, #0x80003ac-0x800039e-2] // GeneralLCDStatus_STAT_LYC_
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
    .byte 1
    .byte 0xBC
    .byte 0x21 
    .byte 0x49 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0xD0
    .byte 0x20
    .byte 0x49 
    .byte 0x50 
    .byte 0x46 
    .byte 0x80
    .byte 0x68 
    .byte 1
    .byte 0x80
    .byte 1
    .byte 0xF0
    .byte 0x64 
    .byte 0xFC
    .byte 1
    .byte 0xF0
    .byte 0x1C
    .byte 0xFC
    .byte 0
    .byte 0xF0
    .byte 0x3C 
    .byte 0xF8
    .byte 0
    .byte 0xF0
    .byte 0x39 
    .byte 0xF9
    .byte 1
    .byte 0xF0
    .byte 0xF4
    .byte 0xFC
    .byte 2
    .byte 0xF0
    .byte 0xCF
    .byte 0xF8
    .byte 3
    .byte 0xF0
    .byte 0xD1
    .byte 0xF9
    .byte 1
    .byte 0xF0
    .byte 0x70 
    .byte 0xFB
    .byte 2
    .byte 0xF0
    .byte 0x7E 
    .byte 0xF9
    .byte 0x24 
    .byte 0xF0
    .byte 0xDE
    .byte 0xFE
    .byte 0x25 
    .byte 0xF0
    .byte 0x5E 
    .byte 0xFB
    .byte 0
    .byte 0xF0
    .byte 0xA8
    .byte 0xF9
    .byte 0x4D 
    .byte 0xF0
    .byte 0x4E 
    .byte 0xFD
    .byte 0x25 
    .byte 0xF0
    .byte 0x16
    .byte 0xFC
    .byte 4
    .byte 0xF0
    .byte 0x6A 
    .byte 0xFA
    .byte 4
    .byte 0xF0
    .byte 0x28 
    .byte 0xFA
    .byte 0x2B 
    .byte 0xF0
    .byte 0xF4
    .byte 0xFB
    .byte 0x2B 
    .byte 0xF0
    .byte 0x10
    .byte 0xFC
    .byte 1
    .byte 0xF0
    .byte 0xA2
    .byte 0xFD
    .byte 2
    .byte 0xF0
    .byte 0x16
    .byte 0xF8
    .byte 1
    .byte 0xF0
    .byte 0x4A 
    .byte 0xFC
    .byte 5
    .byte 0xF0
    .byte 0x40 
    .byte 0xFB
    .byte 5
    .byte 0xF0
    .byte 0xE4
    .byte 0xFD
    .byte 0x47 
    .byte 0xF0
    .byte 0x62 
    .byte 0xFE
    .byte 0x10
    .byte 0xF1
    .byte 0x8C
    .byte 0xFB
    .byte 6
    .byte 0x48 
    .byte 1
    .byte 0x21 
    .byte 1
    .byte 0x80
    .byte 0x50 
    .byte 0x46 
    .byte 0
    .byte 0x68 
    .byte 8
    .byte 0x21 
    .byte 0
    .byte 0xF0
    .byte 0x22 
    .byte 0xFA
    .byte 0x20
    .byte 0xBD
    .byte 0, 0
    .word 0x40
    .word 0xC0
    .word dword_200A338
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
    ldr r0, [pc, #0x800052c-0x8000510-4] // GeneralLCDStatus_STAT_LYC_
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

.thumb
sub_8000538:
    push {lr}
    bl sub_81126A8
    pop {pc}
    .word unk_2007400
    .word dword_8000548
dword_8000548:    .word 0x4425121C, 0x0
// end of function sub_8000538

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

.thumb
f900_8000910:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800092c-0x8000912-2] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800092C:    .word 0x1000000
// end of function f900_8000910

.thumb
f900_8000930:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800094c-0x8000932-2] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800094C:    .word 0x5000000
// end of function f900_8000930

.thumb
f900_8000950:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800096c-0x8000952-2] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl sub_81116E8
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800096C:    .word 0x1000000
// end of function f900_8000950

.thumb
f900_8000970:
    sub r2, #1
    ldrb r3, [r0,r2]
    strb r3, [r1,r2]
    bne f900_8000970
    mov pc, lr
// end of function f900_8000970

.thumb
f900_800097A:
    push {r0-r3,lr}
    ldr r3, [pc, #0x8000988-0x800097c-4] // =0x0
    lsr r2, r2, #1
    orr r2, r3
    bl sub_81116EC
    pop {r0-r3,pc}
dword_8000988:    .word 0x0
// end of function f900_800097A

.thumb
f900_800098C:
    push {r0-r3,lr}
    ldr r3, [pc, #0x800099c-0x800098e-2] // LCDControl
    lsr r2, r2, #2
    orr r2, r3
    bl sub_81116EC
    pop {r0-r3,pc}
    .balign 4, 0x00
off_800099C:    .word LCDControl
// end of function f900_800098C

.thumb
f900_80009A0:
    push {r0-r3,lr}
    ldr r3, [pc, #0x80009b0-0x80009a2-2] // =0x0
    lsr r2, r2, #2
    orr r2, r3
    bl sub_81116E8
    pop {r0-r3,pc}
    .byte 0, 0
dword_80009B0:    .word 0x0
// end of function f900_80009A0

.thumb
f900_80009B4:
    sub r1, #1
    strb r2, [r0,r1]
    bne f900_80009B4
    mov pc, lr
// end of function f900_80009B4

.thumb
f900_80009BC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009d8-0x80009c0-4] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009D8:    .word 0x1000000
// end of function f900_80009BC

.thumb
f900_80009DC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009f8-0x80009e0-4] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009F8:    .word 0x5000000
// end of function f900_80009DC

.thumb
f900_80009FC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x8000a18-0x8000a00-4] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl sub_81116E8
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_8000A18:    .word 0x1000000
// end of function f900_80009FC

.thumb
fA00_dead_8000A1C:
    ldr r0, [pc, #0x8000a28-0x8000a1c-4] // VerticalCounter_LY_
    ldrh r0, [r0]
    ldr r1, [pc, #0x8000a2c-0x8000a20-4] // dword_200A4D0
    ldr r1, [r1]
    add r0, r0, r1
    mov pc, lr
off_8000A28:    .word VerticalCounter_LY_
off_8000A2C:    .word dword_200A4D0
// end of function fA00_dead_8000A1C

.thumb
fA00_8000A30:
    push {r4,r7,lr}
    ldr r1, [pc, #0x8000a84-0x8000a32-2] // =0x5F5E0FF
    cmp r0, r1
    bmi loc_8000A3C
    ldr r0, [pc, #0x8000a88-0x8000a38-4] // =0x99999999
    b locret_8000A5C
loc_8000A3C:
    ldr r7, [pc, #0x8000a60-0x8000a3c-4] // dword_8000A64
    mov r2, #0
    mov r3, #8
loc_8000A42:
    lsl r2, r2, #4
    ldr r1, [r7]
    mov r4, #0
loc_8000A48:
    cmp r0, r1
    bmi loc_8000A52
    sub r0, r0, r1
    add r4, #1
    b loc_8000A48
loc_8000A52:
    orr r2, r4
    add r7, #4
    sub r3, #1
    bne loc_8000A42
    add r0, r2, #0
locret_8000A5C:
    pop {r4,r7,pc}
    .byte 0, 0
off_8000A60:    .word dword_8000A64
dword_8000A64:    .word 0x989680
    .word 0xF4240, 0x186A0, 0x2710, 0x3E8, 0x64, 0xA, 0x1
dword_8000A84:    .word 0x5F5E0FF
dword_8000A88:    .word 0x99999999
// end of function fA00_8000A30

.thumb
fA00_8000A8C:
    mov r1, #1
    tst r0, r0
    beq loc_8000A9E
    mov r1, #0
loc_8000A94:
    tst r0, r0
    beq loc_8000A9E
    add r1, #1
    lsr r0, r0, #4
    b loc_8000A94
loc_8000A9E:
    add r0, r1, #0
    mov pc, lr
// end of function fA00_8000A8C

.thumb
fA00_8000AA2:
    push {r4-r6,lr}
loc_8000AA4:
    push {r0,r2}
    push {r1}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000AA4
    pop {r4-r6,pc}
// end of function fA00_8000AA2

.thumb
fA00_dead_8000AD6:
    push {r4-r6,lr}
loc_8000AD8:
    push {r0,r2}
    push {r1}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000AD8
    pop {r4-r6,pc}
// end of function fA00_dead_8000AD6

.thumb
fA00_8000B0A:
    push {r4-r6,lr}
loc_8000B0C:
    push {r0,r2}
    push {r1}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000B0C
    pop {r4-r6,pc}
// end of function fA00_8000B0A

.thumb
fA00_8000B42:
    push {r4-r6,lr}
loc_8000B44:
    push {r0,r2}
    push {r1}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000B44
    pop {r4-r6,pc}
// end of function fA00_8000B42

.thumb
fA00_dead_8000B7A:
    push {r7,lr}
    add r7, r0, #0
    push {r1,r7}
    bl sub_8001AF6
    pop {r1,r7}
    bl sub_81116F0
    ldrb r0, [r7,r1]
    pop {r7,pc}
// end of function fA00_dead_8000B7A

.thumb
fA00_dead_8000B8E:
    push {r4,r6,lr}
    cmp r1, #2
    bmi locret_8000BB2
    mov r3, #1
loc_8000B96:
    ldrb r2, [r0,r3]
    mov r4, #0
loc_8000B9A:
    ldrb r6, [r0,r4]
    cmp r2, r6
    bhi loc_8000BA4
    strb r2, [r0,r4]
    add r2, r6, #0
loc_8000BA4:
    add r4, #1
    cmp r4, r3
    bmi loc_8000B9A
    strb r2, [r0,r3]
    add r3, #1
    cmp r3, r1
    bmi loc_8000B96
locret_8000BB2:
    pop {r4,r6,pc}
// end of function fA00_dead_8000B8E

.thumb
fA00_8000BB4:
    push {r4,r7,lr}
    ldr r1, [pc, #0x8000c18-0x8000bb6-2] // =0x1499700
    cmp r0, r1
    bmi loc_8000BC0
    ldr r0, [pc, #0x8000c1c-0x8000bbc-4] // =0x99595999
    pop {pc}
loc_8000BC0:
    ldr r7, [pc, #0x8000bf4-0x8000bc0-4] // dword_8000BF8
    mov r2, #0
    mov r3, #6
loc_8000BC6:
    lsl r2, r2, #4
    ldr r1, [r7]
    mov r4, #0
loc_8000BCC:
    cmp r0, r1
    bmi loc_8000BD6
    sub r0, r0, r1
    add r4, #1
    b loc_8000BCC
loc_8000BD6:
    orr r2, r4
    add r7, #4
    sub r3, #1
    bne loc_8000BC6
    lsl r2, r2, #8
    push {r2}
    ldr r1, [pc, #0x8000c20-0x8000be2-2] // =0x1AAAA
    mul r0, r1
    lsr r0, r0, #0x10
    bl fA00_8000A30
    pop {r2}
    orr r0, r2
    pop {r4,r7,pc}
    .balign 4, 0x00
off_8000BF4:    .word dword_8000BF8
dword_8000BF8:    .word 0x20F580
    .word 0x34BC0, 0x8CA0, 0xE10, 0x258, 0x3C, 0xA, 0x1
dword_8000C18:    .word 0x1499700
dword_8000C1C:    .word 0x99595999
dword_8000C20:    .word 0x1AAAA
// end of function fA00_8000BB4

.thumb
fA00_8000C24:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldr r0, [r3,#0x2c]
    add r0, #1
    ldr r1, [pc, #0x8000c38-0x8000c2c-4] // =0x14988F0
    cmp r0, r1
    ble loc_8000C34
    add r0, r1, #0
loc_8000C34:
    str r0, [r3,#0x2c]
    mov pc, lr
dword_8000C38:    .word 0x14988F0
// end of function fA00_8000C24

.thumb
fA00_8000C3C:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    mov pc, lr
// end of function fA00_8000C3C

.thumb
fA00_8000C44:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    cmp r0, #2
    blt locret_8000C50
    mov r0, #2
locret_8000C50:
    mov pc, lr
// end of function fA00_8000C44

.thumb
fA00_8000C52:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    cmp r0, #0x62 
    bge locret_8000C60
    add r0, #1
    strb r0, [r3,#0xd]
locret_8000C60:
    mov pc, lr
// end of function fA00_8000C52

.thumb
fA00_8000C62:
    push {r4,lr}
    sub sp, sp, #8
    ldr r1, [pc, #0x8000c8c-0x8000c66-2] // =0x34BC0
    bl sub_81116F0
    str r0, [sp]
    add r0, r1, #0
    ldr r1, [pc, #0x8000c90-0x8000c70-4] // =0xE10
    bl sub_81116F0
    str r0, [sp,#4]
    add r0, r1, #0
    ldr r1, [pc, #0x8000c94-0x8000c7a-2] // =0x3C
    bl sub_81116F0
    add r3, r0, #0
    add r4, r1, #0
    ldr r1, [sp]
    ldr r2, [sp,#4]
    add sp, sp, #8
    pop {r4,pc}
dword_8000C8C:    .word 0x34BC0
off_8000C90:    .word 0xE10
off_8000C94:    .word 0x3C
// end of function fA00_8000C62

.thumb
sub_8000C98:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_8001AE0
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    pop {r6,r7}
    sub r7, #1
    push {r6,r7}
    mov r1, #0
loc_8000CAC:
    ldrb r3, [r6,r7]
    add r1, r1, r3
    sub r7, #1
    bge loc_8000CAC
    svc 6
    add r1, #1
    mov r2, #0
    pop {r6,r7}
    mov r0, #0
loc_8000CBE:
    ldrb r3, [r6,r2]
    add r0, r0, r3
    cmp r0, r1
    bge loc_8000CCA
    add r2, #1
    b loc_8000CBE
loc_8000CCA:
    add r0, r2, #0
    pop {r4-r7,pc}
// end of function sub_8000C98

.thumb
dead_8000CCE:
    push {r5,r6,lr}
    add r5, r0, r1
    add r6, r0, #0
    add r7, r0, #0
loc_8000CD6:
    ldrb r2, [r6]
    cmp r2, #0xff
    beq loc_8000CE0
    strb r2, [r7]
    add r7, #1
loc_8000CE0:
    add r6, #1
    sub r1, #1
    bne loc_8000CD6
    mov r1, #0xff
loc_8000CE8:
    cmp r7, r5
    beq locret_8000CF2
    strb r1, [r7]
    add r7, #1
    b loc_8000CE8
locret_8000CF2:
    pop {r5,r6,pc}
// end of function dead_8000CCE

.thumb
sub_8000CF4:
    push {r5-r7,lr}
    add r2, r1, r1
    add r5, r0, r2
    add r6, r0, #0
    add r7, r0, #0
    ldr r3, [pc, #0x8000d1c-0x8000cfe-2] // =0xFFFF
loc_8000D00:
    ldrh r2, [r6]
    cmp r2, r3
    beq loc_8000D0A
    strh r2, [r7]
    add r7, #2
loc_8000D0A:
    add r6, #2
    sub r1, #1
    bne loc_8000D00
loc_8000D10:
    cmp r7, r5
    beq locret_8000D1A
    strh r3, [r7]
    add r7, #2
    b loc_8000D10
locret_8000D1A:
    pop {r5-r7,pc}
dword_8000D1C:    .word 0xFFFF
// end of function sub_8000CF4

.thumb
sub_8000D20:
    push {r4-r7,lr}
    mov r4, #0
    mov r7, #0
    mov r0, #5
    mov r1, #0
    bl sub_8024FF0
    beq loc_8000D36
    add r4, #1
    mov r0, #0x80
    orr r7, r0
loc_8000D36:
    ldr r6, [pc, #0x8000da8-0x8000d36-2] // word_8000DAC
    mov r5, #0
loc_8000D3A:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_8000D4E
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_8000D4A
    add r5, #1
loc_8000D4A:
    add r6, #2
    b loc_8000D3A
loc_8000D4E:
    cmp r5, #6
    bne loc_8000D58
    add r4, #1
    mov r0, #0x40 
    orr r7, r0
loc_8000D58:
    bl sub_80372BC
    cmp r0, #0x96
    bne loc_8000D66
    add r4, #1
    mov r0, #0x20 
    orr r7, r0
loc_8000D66:
    bl sub_8037304
    cmp r0, #0x3c 
    bne loc_8000D74
    add r4, #1
    mov r0, #0x10
    orr r7, r0
loc_8000D74:
    bl sub_8037364
    cmp r0, #5
    bne loc_8000D82
    add r4, #1
    mov r0, #8
    orr r7, r0
loc_8000D82:
    bl sub_8037404
    cmp r0, #0x1e
    bne loc_8000D90
    add r4, #1
    mov r0, #4
    orr r7, r0
loc_8000D90:
    mov r0, #0
    mov r1, #0x6f 
    bl sub_8024FF0
    beq loc_8000DA0
    add r4, #1
    mov r0, #2
    orr r7, r0
loc_8000DA0:
    add r0, r4, #0
    add r1, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8000DA8:    .word word_8000DAC
word_8000DAC:    .hword 0x17
    .hword 0x18
    .byte 0x19
    .byte 0
    .byte 0x1A
    .byte 0
    .byte 0x1B
    .byte 0
    .byte 0x1C
    .byte 0
    .byte 0
    .byte 0
// end of function sub_8000D20

.thumb
sub_8000DBA:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_80487E8
    .byte 0xC
    .byte 0xD1
    .byte 5
    .byte 0x20
    .byte 0
    .byte 0x21 
    .byte 0x24 
    .byte 0xF0
    .byte 0xE8
    .byte 0xF8
    .byte 0
    .byte 0x20
    .byte 0x6E 
    .byte 0x21 
    .byte 0x24 
    .byte 0xF0
    .byte 0xE4
    .byte 0xF8
    .byte 0x50 
    .byte 0x46 
    .byte 0x40 
    .byte 0x6C 
    .byte 0xC4
    .byte 0x62 
    .byte 0x47 
    .byte 0xF0
    .byte 0xBD
    .byte 0xFC
    .byte 0xF0
    .byte 0xBD
// end of function sub_8000DBA

.thumb
sub_8000DE0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000eac-0x8000de2-2] // word_202A000
    add r0, r7, #0
    ldr r1, [pc, #0x8000eb0-0x8000de6-2] // =0x16000
    bl f900_8000950
    bl sub_8000EB4
    bl sub_8000FE2
    bl sub_8001070
    bl sub_80010A4
    bl sub_80011B0
    bl sub_8001218
    bl sub_80012FC
    bl sub_8001344
    bl sub_800136C
    bl sub_8001394
    bl sub_800141C
    bl sub_8001470
    bl sub_8000F5C
    bl sub_80014A4
    mov r0, #3
    mvn r0, r0
    add r7, #3
    and r7, r0
    bl sub_8001660
    bl sub_8004988
    bl sub_8004908
    ldr r7, [pc, #0x8000eac-0x8000e38-4] // word_202A000
    bl dword_8000F00
    bl sub_800101C
    bl sub_8001086
    bl sub_800110E
    bl sub_80011D8
    bl sub_800127C
    bl sub_8001318
    bl sub_8001354
    bl sub_800137E
    bl sub_80013CC
    bl sub_8001440
    bl sub_8001486
    bl sub_8000FA4
    bl sub_800156C
    mov r0, #3
    mvn r0, r0
    add r7, #3
    and r7, r0
    bl sub_80016D0
    bl fA00_8000C52
    bl sub_802F604
    bl sub_8035044
    bl sub_802D414
    bl sub_80ADE98
    mov r0, #5
    mov r1, #0
    bl sub_8024F9C
    mov r0, #0
    mov r1, #0x6e 
    bl sub_8024FB8
    mov r0, #0
    pop {r4-r7,pc}
    .byte 1
    .byte 0x20
    .byte 0x70 
    .byte 0xBD
    .byte 0
    .byte 0
off_8000EAC:    .word word_202A000
dword_8000EB0:    .word 0x16000
// end of function sub_8000DE0

.thumb
sub_8000EB4:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8000f4c-0x8000eb6-2] // =0xA0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f50-0x8000ec8-4] // =0xB0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f54-0x8000eda-2] // =0x80
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f58-0x8000eec-4] // =0xC0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #0xbd
    bl f900_8000970
    add r7, #0xbd
    pop {r4-r6,pc}
dword_8000F00:    .word 0x1C38B570
// end of function sub_8000EB4

.thumb
dead_8000F04:
    ldr r1, [pc, #0x8000f4c-0x8000f04-4] // =0xA0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f50-0x8000f16-2] // =0xB0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f54-0x8000f28-4] // =0x80
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f58-0x8000f3a-2] // =0xC0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #0xbd
    bl f900_8000970
    add r7, #0xbd
    pop {r4-r6,pc}
off_8000F4C:    .word 0xA0
off_8000F50:    .word 0xB0
off_8000F54:    .word 0x80
off_8000F58:    .word 0xC0
// end of function dead_8000F04

.thumb
sub_8000F5C:
    push {r4-r6,lr}
    mov r4, #0
    ldr r5, [pc, #0x8000fa0-0x8000f60-4] // =0x15D0
loc_8000F62:
    mov r6, #0
    add r0, r5, #0
    bl sub_8024FF4
    beq loc_8000F6E
    mov r6, #1
loc_8000F6E:
    strb r6, [r7]
    add r4, #1
    add r5, #1
    add r7, #1
    cmp r4, #0xb
    ble loc_8000F62
    mov r6, #0
    mov r0, #0x15
    mov r1, #0xc0
    bl sub_8024FF0
    beq loc_8000F88
    mov r6, #1
loc_8000F88:
    strb r6, [r7]
    add r7, #1
    mov r6, #0
    mov r0, #0x15
    mov r1, #0xcc
    bl sub_8024FF0
    beq loc_8000F9A
    mov r6, #1
loc_8000F9A:
    strb r6, [r7]
    add r7, #1
    pop {r4-r6,pc}
off_8000FA0:    .word 0x15D0
// end of function sub_8000F5C

.thumb
sub_8000FA4:
    push {r4-r6,lr}
    mov r4, #0
    mov r6, #0x75 
loc_8000FAA:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8000FB6
    add r0, r6, #0
    bl sub_8024FA0
loc_8000FB6:
    add r4, #1
    add r6, #1
    add r7, #1
    cmp r4, #0xb
    ble loc_8000FAA
    ldrb r0, [r7]
    add r7, #1
    tst r0, r0
    beq loc_8000FD0
    mov r0, #0
    mov r1, #0x81
    bl sub_8024F9C
loc_8000FD0:
    ldrb r0, [r7]
    add r7, #1
    tst r0, r0
    beq locret_8000FE0
    mov r0, #0
    mov r1, #0x82
    bl sub_8024F9C
locret_8000FE0:
    pop {r4-r6,pc}
// end of function sub_8000FA4

.thumb
sub_8000FE2:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001058-0x8000fe4-4] // =0x2D8
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x800105c-0x8000fee-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001060-0x8000ff6-2] // =0x318
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x8001064-0x8001000-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001068-0x8001008-4] // =0x358
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x800106c-0x8001012-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8000FE2

.thumb
sub_800101C:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001058-0x8001020-4] // =0x2D8
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x800105c-0x8001028-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001060-0x8001032-2] // =0x318
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x8001064-0x800103a-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001068-0x8001044-4] // =0x358
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x800106c-0x800104c-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8001058:    .word 0x2D8
off_800105C:    .word 0x40
off_8001060:    .word 0x318
off_8001064:    .word 0x40
off_8001068:    .word 0x358
off_800106C:    .word 0x40
// end of function sub_800101C

.thumb
sub_8001070:
    push {r4-r6,lr}
    ldr r0, [pc, #0x800109c-0x8001072-2] // =0x3D8
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x80010a0-0x800107c-4] // =0x8
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001070

.thumb
sub_8001086:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x800109c-0x800108a-2] // =0x3D8
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x80010a0-0x8001092-2] // =0x8
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_800109C:    .word 0x3D8
dword_80010A0:    .word 0x8
// end of function sub_8001086

.thumb
sub_80010A4:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x78]
    add r1, r7, #0
    ldr r2, [pc, #0x8001190-0x80010ac-4] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x7c 
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001194-0x80010bc-4] // =0x700
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001178-0x80010c4-4] // unk_2001610
    add r1, r7, #0
    ldr r2, [pc, #0x8001198-0x80010c8-4] // =0x160
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800117c-0x80010d0-4] // unk_2007230
    add r1, r7, #0
    ldr r2, [pc, #0x800119c-0x80010d4-4] // =0x160
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001180-0x80010dc-4] // unk_20001E0
    add r1, r7, #0
    ldr r2, [pc, #0x80011a0-0x80010e0-4] // =0x58
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001184-0x80010e8-4] // word_2006F50
    add r1, r7, #0
    ldr r2, [pc, #0x80011a4-0x80010ec-4] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001188-0x80010f4-4] // word_2001BB0
    add r1, r7, #0
    ldr r2, [pc, #0x80011a8-0x80010f8-4] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800118c-0x8001100-4] // unk_2000000
    add r1, r7, #0
    ldr r2, [pc, #0x80011ac-0x8001104-4] // =0x180
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80010A4

.thumb
sub_800110E:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x78]
    ldr r2, [pc, #0x8001190-0x8001116-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x7c 
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001194-0x8001126-2] // =0x700
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001178-0x8001130-4] // unk_2001610
    ldr r2, [pc, #0x8001198-0x8001132-2] // =0x160
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800117c-0x800113c-4] // unk_2007230
    ldr r2, [pc, #0x800119c-0x800113e-2] // =0x160
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001180-0x8001148-4] // unk_20001E0
    ldr r2, [pc, #0x80011a0-0x800114a-2] // =0x58
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001184-0x8001154-4] // word_2006F50
    ldr r2, [pc, #0x80011a4-0x8001156-2] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001188-0x8001160-4] // word_2001BB0
    ldr r2, [pc, #0x80011a8-0x8001162-2] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800118c-0x800116c-4] // unk_2000000
    ldr r2, [pc, #0x80011ac-0x800116e-2] // =0x180
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001178:    .word unk_2001610
off_800117C:    .word unk_2007230
off_8001180:    .word unk_20001E0
off_8001184:    .word word_2006F50
off_8001188:    .word word_2001BB0
off_800118C:    .word unk_2000000
off_8001190:    .word 0x200
off_8001194:    .word 0x700
off_8001198:    .word 0x160
off_800119C:    .word 0x160
off_80011A0:    .word 0x58
off_80011A4:    .word 0x2E0
off_80011A8:    .word 0x2E0
off_80011AC:    .word 0x180
// end of function sub_800110E

.thumb
sub_80011B0:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001200-0x80011b2-2] // unk_20008A0
    add r1, r7, #0
    ldr r2, [pc, #0x800120c-0x80011b6-2] // =0xBC0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001204-0x80011be-2] // unk_2000520
    add r1, r7, #0
    ldr r2, [pc, #0x8001210-0x80011c2-2] // =0xB8
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001208-0x80011ca-2] // unk_2001770
    add r1, r7, #0
    ldr r2, [pc, #0x8001214-0x80011ce-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80011B0

.thumb
sub_80011D8:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001200-0x80011dc-4] // unk_20008A0
    ldr r2, [pc, #0x800120c-0x80011de-2] // =0xBC0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001204-0x80011e8-4] // unk_2000520
    ldr r2, [pc, #0x8001210-0x80011ea-2] // =0xB8
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001208-0x80011f4-4] // unk_2001770
    ldr r2, [pc, #0x8001214-0x80011f6-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001200:    .word unk_20008A0
off_8001204:    .word unk_2000520
off_8001208:    .word unk_2001770
off_800120C:    .word 0xBC0
off_8001210:    .word 0xB8
dword_8001214:    .word 0x20
// end of function sub_80011D8

.thumb
sub_8001218:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x5c]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e0-0x8001220-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x60]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e4-0x800122e-2] // =0xC8
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x64]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e8-0x800123c-4] // =0x10
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x68]
    add r1, r7, #0
    ldr r2, [pc, #0x80012ec-0x800124a-2] // =0x0
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x6c]
    add r1, r7, #0
    ldr r2, [pc, #0x80012f0-0x8001258-4] // =0x0
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x70]
    add r1, r7, #0
    ldr r2, [pc, #0x80012f4-0x8001266-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x80012f8-0x800126e-2] // unk_2000190
    add r1, r7, #0
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001218

.thumb
sub_800127C:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x5c]
    ldr r2, [pc, #0x80012e0-0x8001284-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x60]
    ldr r2, [pc, #0x80012e4-0x8001292-2] // =0xC8
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x64]
    ldr r2, [pc, #0x80012e8-0x80012a0-4] // =0x10
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x68]
    ldr r2, [pc, #0x80012ec-0x80012ae-2] // =0x0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x6c]
    ldr r2, [pc, #0x80012f0-0x80012bc-4] // =0x0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x70]
    ldr r2, [pc, #0x80012f4-0x80012ca-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x80012f8-0x80012d4-4] // unk_2000190
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
dword_80012E0:    .word 0x20
off_80012E4:    .word 0xC8
dword_80012E8:    .word 0x10
dword_80012EC:    .word 0x1
dword_80012F0:    .word 0x2
dword_80012F4:    .word 0xE
off_80012F8:    .word unk_2000190
// end of function sub_800127C

.thumb
sub_80012FC:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001334-0x80012fe-2] // unk_2006F40
    add r1, r7, #0
    ldr r2, [pc, #0x800133c-0x8001302-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001338-0x800130a-2] // unk_20014F0
    add r1, r7, #0
    ldr r2, [pc, #0x8001340-0x800130e-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80012FC

.thumb
sub_8001318:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001334-0x800131c-4] // unk_2006F40
    ldr r2, [pc, #0x800133c-0x800131e-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001338-0x8001328-4] // unk_20014F0
    ldr r2, [pc, #0x8001340-0x800132a-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001334:    .word unk_2006F40
off_8001338:    .word unk_20014F0
dword_800133C:    .word 0xE
dword_8001340:    .word 0xE
// end of function sub_8001318

.thumb
sub_8001344:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001364-0x8001346-2] // unk_20073A0
    add r1, r7, #0
    ldr r2, [pc, #0x8001368-0x800134a-2] // =0x30
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001344

.thumb
sub_8001354:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001364-0x8001358-4] // unk_20073A0
    ldr r2, [pc, #0x8001368-0x800135a-2] // =0x30
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001364:    .word unk_20073A0
off_8001368:    .word 0x30
// end of function sub_8001354

.thumb
sub_800136C:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x58]
    add r1, r7, #0
    ldr r2, [pc, #0x8001390-0x8001374-4] // =0xDC0
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_800136C

.thumb
sub_800137E:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x58]
    ldr r2, [pc, #0x8001390-0x8001386-2] // =0xDC0
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001390:    .word 0xDC0
// end of function sub_800137E

.thumb
sub_8001394:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x4c]
    add r1, r7, #0
    ldr r2, [pc, #0x800140c-0x800139c-4] // =0xB4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x50]
    add r1, r7, #0
    ldr r2, [pc, #0x8001410-0x80013aa-2] // =0xF00
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001404-0x80013b2-2] // word_20073D0
    add r1, r7, #0
    ldr r2, [pc, #0x8001414-0x80013b6-2] // =0x0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001408-0x80013be-2] // unk_2001E9C
    add r1, r7, #0
    ldr r2, [pc, #0x8001418-0x80013c2-2] // =0x4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001394

.thumb
sub_80013CC:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x4c]
    ldr r2, [pc, #0x800140c-0x80013d4-4] // =0xB4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x50]
    ldr r2, [pc, #0x8001410-0x80013e2-2] // =0xF00
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001404-0x80013ec-4] // word_20073D0
    ldr r2, [pc, #0x8001414-0x80013ee-2] // =0x0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001408-0x80013f8-4] // unk_2001E9C
    ldr r2, [pc, #0x8001418-0x80013fa-2] // =0x4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001404:    .word word_20073D0
off_8001408:    .word unk_2001E9C
off_800140C:    .word 0xB4
off_8001410:    .word 0xF00
dword_8001414:    .word 0x2
dword_8001418:    .word 0x4
// end of function sub_80013CC

.thumb
sub_800141C:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001464-0x800141e-2] // =0x1A0
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x8001468-0x8001428-4] // =0x80
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x74]
    add r1, r7, #0
    ldr r2, [pc, #0x800146c-0x8001436-2] // =0x800
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_800141C

.thumb
sub_8001440:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001464-0x8001444-4] // =0x1A0
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x8001468-0x800144c-4] // =0x80
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x74]
    ldr r2, [pc, #0x800146c-0x800145a-2] // =0x800
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001464:    .word 0x1A0
off_8001468:    .word 0x80
off_800146C:    .word 0x800
// end of function sub_8001440

.thumb
sub_8001470:
    push {r4-r6,lr}
    ldr r0, [pc, #0x800149c-0x8001472-2] // =0x0
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x80014a0-0x800147c-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001470

.thumb
sub_8001486:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x800149c-0x800148a-2] // =0x0
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x80014a0-0x8001492-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
dword_800149C:    .word 0x0
dword_80014A0:    .word 0x20
// end of function sub_8001486

.thumb
sub_80014A4:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001634-0x80014a6-2] // unk_2000240
    add r1, r7, #0
    ldr r2, [pc, #0x8001638-0x80014aa-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x80
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001638-0x80014ba-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800163c-0x80014c2-2] // unk_2000670
    add r1, r7, #0
    ldr r2, [pc, #0x8001640-0x80014c6-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x84
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001640-0x80014d6-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001644-0x80014de-2] // dword_2000180
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x8c
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001648-0x80014fa-2] // dword_2001E94
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x90
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800164c-0x8001516-2] // unk_20019A0
    add r1, r7, #0
    ldr r2, [pc, #0x8001650-0x800151a-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x88
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001650-0x800152a-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001654-0x8001532-2] // unk_20003D0
    add r1, r7, #0
    ldr r2, [pc, #0x8001658-0x8001536-2] // =0xFF
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x94
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001658-0x8001546-2] // =0xFF
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800165c-0x800154e-2] // dword_2001BA0
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x98
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80014A4

.thumb
sub_800156C:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001634-0x8001570-4] // unk_2000240
    ldr r2, [pc, #0x8001638-0x8001572-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x80
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001638-0x8001582-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800163c-0x800158c-4] // unk_2000670
    ldr r2, [pc, #0x8001640-0x800158e-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x84
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001640-0x800159e-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001644-0x80015a8-4] // dword_2000180
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x8c
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001648-0x80015c4-4] // dword_2001E94
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x90
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800164c-0x80015e0-4] // unk_20019A0
    ldr r2, [pc, #0x8001650-0x80015e2-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x88
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001650-0x80015f2-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001654-0x80015fc-4] // unk_20003D0
    ldr r2, [pc, #0x8001658-0x80015fe-2] // =0xFF
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x94
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001658-0x800160e-2] // =0xFF
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800165c-0x8001618-4] // dword_2001BA0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x98
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001634:    .word unk_2000240
off_8001638:    .word 0x190
off_800163C:    .word unk_2000670
off_8001640:    .word 0x200
off_8001644:    .word dword_2000180
off_8001648:    .word dword_2001E94
off_800164C:    .word unk_20019A0
off_8001650:    .word 0x200
off_8001654:    .word unk_20003D0
off_8001658:    .word 0x100
off_800165C:    .word dword_2001BA0
// end of function sub_800156C

.thumb
sub_8001660:
    push {r4-r6,lr}
    mov r4, r10
    ldr r3, [r4,#0x40]
    ldr r0, [r3,#0x74]
    str r0, [r7]
    ldr r0, [r3,#0x78]
    str r0, [r7,#4]
    ldrh r0, [r3,#0x22]
    str r0, [r7,#8]
    ldrh r0, [r3,#0x20]
    str r0, [r7,#0xc]
    ldrb r0, [r3,#2]
    str r0, [r7,#0x10]
    ldrb r0, [r3,#0x1c]
    strb r0, [r7,#0x14]
    ldrb r0, [r3,#0x1d]
    strb r0, [r7,#0x15]
    ldrb r0, [r3,#0x1e]
    strb r0, [r7,#0x16]
    ldrb r0, [r3,#0x1f]
    strb r0, [r7,#0x17]
    ldrb r0, [r3,#0x18]
    str r0, [r7,#0x18]
    ldrb r0, [r3,#0x14]
    str r0, [r7,#0x1c]
    add r7, #0x20 
    ldr r3, [r4,#0x44]
    ldr r0, [r3,#0x2c]
    str r0, [r7]
    ldrh r0, [r3,#0x1c]
    str r0, [r7,#4]
    ldrh r0, [r3,#0x1e]
    str r0, [r7,#8]
    ldrh r0, [r3,#0x20]
    str r0, [r7,#0xc]
    ldrh r0, [r3,#0x22]
    str r0, [r7,#0x10]
    ldrh r0, [r3,#0x24]
    str r0, [r7,#0x14]
    ldrb r0, [r3,#0xd]
    str r0, [r7,#0x18]
    ldrh r0, [r3,#0x16]
    str r0, [r7,#0x1c]
    ldrh r0, [r3,#0x14]
    str r0, [r7,#0x20]
    ldrb r0, [r3,#6]
    str r0, [r7,#0x24]
    add r7, #0x28 
    add r0, r3, #0
    add r0, #0x70 
    add r1, r7, #0
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001660

.thumb
sub_80016D0:
    push {r4-r6,lr}
    mov r4, r10
    ldr r3, [r4,#0x40]
    ldr r0, [r7]
    str r0, [r3,#0x74]
    ldr r0, [r7,#4]
    str r0, [r3,#0x78]
    ldr r0, [r7,#8]
    strh r0, [r3,#0x22]
    ldr r0, [r7,#0xc]
    strh r0, [r3,#0x20]
    ldr r0, [r7,#0x10]
    strb r0, [r3,#2]
    ldrb r0, [r7,#0x14]
    strb r0, [r3,#0x1c]
    ldrb r0, [r7,#0x15]
    strb r0, [r3,#0x1d]
    ldrb r0, [r7,#0x16]
    strb r0, [r3,#0x1e]
    ldrb r0, [r7,#0x17]
    strb r0, [r3,#0x1f]
    ldr r0, [r7,#0x18]
    strb r0, [r3,#0x18]
    ldr r0, [r7,#0x1c]
    strb r0, [r3,#0x14]
    add r7, #0x20 
    ldr r3, [r4,#0x44]
    ldr r0, [r7]
    str r0, [r3,#0x2c]
    ldr r0, [r7,#4]
    strh r0, [r3,#0x1c]
    ldr r0, [r7,#8]
    strh r0, [r3,#0x1e]
    ldr r0, [r7,#0xc]
    strh r0, [r3,#0x20]
    ldr r0, [r7,#0x10]
    strh r0, [r3,#0x22]
    ldr r0, [r7,#0x14]
    strh r0, [r3,#0x24]
    ldr r0, [r7,#0x18]
    strb r0, [r3,#0xd]
    ldr r0, [r7,#0x1c]
    strh r0, [r3,#0x16]
    ldr r0, [r7,#0x20]
    strh r0, [r3,#0x14]
    ldr r0, [r7,#0x24]
    strb r0, [r3,#6]
    add r7, #0x28 
    add r0, r7, #0
    add r1, r3, #0
    add r1, #0x70 
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80016D0

.thumb
sub_8001740:
    push {lr}
    asr r2, r0, #0x10
    asr r0, r1, #0x10
    add r1, r2, #0
    svc 0xa
    lsr r0, r0, #8
    pop {pc}
// end of function sub_8001740

.thumb
sub_800174E:
    push {lr}
    add r2, r0, #0
    orr r2, r1
    beq locret_8001762
    bl sub_8001740
    add r0, #0x20 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x1e
    add r0, #1
locret_8001762:
    pop {pc}
// end of function sub_800174E

.thumb
dead_8001764:
    push {r5,lr}
    push {r0}
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x34]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r2, [r7,#0x28]
    ldr r3, [r7,#0x24]
    sub r0, r2, r0
    sub r1, r3, r1
    bl sub_8001740
    pop {r1}
    sub r0, r0, r1
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    pop {r5,pc}
// end of function dead_8001764

.thumb
sub_8001788:
    lsl r0, r0, #1
    ldr r2, [pc, #0x80017a0-0x800178a-2] // word_8005DF8
    ldrsh r3, [r2,r0]
    ldr r2, [pc, #0x80017a4-0x800178e-2] // unk_8005E78
    ldrsh r2, [r2,r0]
    neg r2, r2
    mul r3, r1
    asr r0, r3, #8
    mul r2, r1
    asr r1, r2, #8
    mov pc, lr
    .byte 0, 0
off_80017A0:    .word word_8005DF8
off_80017A4:    .word unk_8005E78
// end of function sub_8001788

.thumb
sub_80017A8:
    push {lr}
    tst r0, r0
    beq loc_80017B8
    sub r0, #1
    lsl r0, r0, #6
    bl sub_8001788
    pop {pc}
loc_80017B8:
    mov r0, #0
    mov r1, #0
    pop {pc}
// end of function sub_80017A8

.thumb
sub_80017BE:
    sub r0, r0, r2
    add r0, r0, r4
    lsl r2, r4, #1
    cmp r0, r2
    bcs loc_80017D4
    sub r1, r1, r3
    add r1, r1, r4
    cmp r1, r2
    bcs loc_80017D4
    mov r0, #1
    mov pc, lr
loc_80017D4:
    mov r0, #0
    mov pc, lr
// end of function sub_80017BE

.thumb
sub_80017D8:
    sub r0, r0, r2
    sub r1, r1, r3
    add r2, r4, #0
    mul r4, r2
    add r2, r0, #0
    mul r0, r2
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    cmp r4, r0
    bmi loc_80017F2
    mov r0, #1
    mov pc, lr
loc_80017F2:
    mov r0, #0
    mov pc, lr
// end of function sub_80017D8

.thumb
dead_80017F6:
    push {lr}
    ldr r0, [r5,#0x34]
    asr r0, r0, #0xc
    ldr r1, [r5,#0x38]
    asr r1, r1, #0xc
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r2, [r7,#0x24]
    asr r2, r2, #0xc
    ldr r3, [r7,#0x28]
    asr r3, r3, #0xc
    bl sub_80017D8
    pop {pc}
// end of function dead_80017F6

.thumb
sub_8001814:
    push {r5,lr}
    tst r4, r4
    bne loc_8001842
loc_800181A:
    ldr r0, [r0,#8]
    sub r0, r3, r0
    bmi loc_8001826
    add r0, r4, #0
    mov r1, #0
    pop {r5,pc}
loc_8001826:
    lsr r1, r6, #8
    bl sub_81116F0
    bl sub_8111704
    mov r2, #0
    mov r1, #0xff
    tst r0, r1
    beq loc_800183A
    mov r2, #1
loc_800183A:
    lsr r0, r0, #8
    add r1, r0, r2
    mov r0, #0
    pop {r5,pc}
loc_8001842:
    ldmia r0!, {r5,r7}
    push {r0,r3}
    sub r1, r1, r5
    asr r1, r1, #8
    add r5, r1, #0
    mul r1, r5
    sub r2, r2, r7
    asr r2, r2, #8
    add r5, r2, #0
    mul r2, r5
    add r0, r1, r2
    bl sub_8111704
    lsl r0, r0, #8
    push {r4}
    add r1, r4, #0
    bl sub_81116F0
    pop {r4}
    lsr r4, r4, #1
    cmp r1, r4
    bmi loc_8001870
    add r0, #1
loc_8001870:
    add r1, r0, #0
    pop {r0,r3}
    tst r1, r1
    beq loc_800181A
    ldr r0, [r0]
    sub r0, r3, r0
    push {r1}
    bl sub_81116F0
    pop {r1}
    neg r2, r6
    mul r2, r1
    lsr r2, r2, #1
    add r0, r0, r2
    pop {r5,pc}
// end of function sub_8001814

.thumb
sub_800188E:
    push {lr}
    ldr r7, [r0]
    sub r1, r1, r7
    ldr r7, [r0,#4]
    sub r2, r2, r7
    push {r1,r2}
    lsl r0, r3, #1
    neg r1, r4
    bl sub_81116F0
    lsr r3, r3, #1
    cmp r1, r3
    bmi loc_80018AA
    add r0, #1
loc_80018AA:
    pop {r1,r2}
    push {r0,r1}
    add r1, r0, #0
    add r0, r2, #0
    bl sub_81116F0
    add r2, r0, #0
    pop {r0,r1}
    push {r0,r2}
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
    bl sub_81116F0
    add r1, r0, #0
    pop {r0,r2}
    pop {pc}
// end of function sub_800188E

.thumb
sub_80018CC:
    push {lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #8
    str r5, [sp]
    push {r4,r6}
    ldmia r0!, {r3-r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl sub_8001740
    mov r8, r0
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    lsl r1, r1, #1
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_8001788
    pop {r4,r6}
    push {r0,r1}
    lsl r0, r4, #1
    add r1, r6, #0
    mul r1, r6
    lsl r0, r0, #0x10
    bl sub_81116F0
    neg r3, r0
    mul r0, r6
    add r2, r0, #0
    pop {r0,r1}
    ldr r5, [sp]
    add sp, sp, #8
    mov r4, r8
    add r4, #0x20 
    mov r6, #0xe0
    and r4, r6
    lsr r4, r4, #5
    pop {r7}
    mov r8, r7
    pop {pc}
// end of function sub_80018CC

.thumb
sub_8001936:
    push {r4-r6,lr}
    push {r3,r4,r6}
    add r6, r4, #0
    ldmia r0!, {r3-r5}
    push {r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl sub_8001740
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_8001788
    pop {r5}
    pop {r3,r4,r6}
    push {r0,r1}
    add r0, r4, #0
    mul r0, r4
    mul r0, r6
    asr r0, r0, #1
    sub r3, r3, r5
    sub r0, r3, r0
    add r1, r4, #0
    svc 6
    add r2, r0, #0
    pop {r0,r1}
    pop {r4-r6,pc}
// end of function sub_8001936

.thumb
sub_8001988:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x64]
    orr r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8001988

.thumb
sub_8001994:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x64]
    bic r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8001994

.thumb
sub_80019A0:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x64]
    mov pc, lr
// end of function sub_80019A0

.thumb
sub_80019A8:
    mov r1, r10
    ldr r1, [r1,#0x18]
    str r0, [r1,#0x64]
    mov pc, lr
// end of function sub_80019A8

.thumb
sub_80019B0:
    push {r4-r7,lr}
    sub sp, sp, #0x40
    str r6, [sp,#4]
    str r7, [sp,#0x10]
    ldr r7, [pc, #0x8001abc-0x80019b8-4] // byte_200A3C8
    ldrb r7, [r7]
    str r3, [sp,#0x24]
    str r4, [sp,#0x28]
    str r2, [sp]
    mov r2, #0xff
    and r2, r1
    str r2, [sp,#0x20]
    add r2, r1, #0
    lsl r2, r2, #0x17
    lsr r2, r2, #0x1f
    eor r2, r7
    str r2, [sp,#0x38]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x18]
    add r2, r1, #0
    lsl r2, r2, #0x16
    lsr r2, r2, #0x1f
    str r2, [sp,#0x3c]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x1c]
    lsl r5, r5, #0xc
    str r5, [sp,#0x2c]
    ldr r1, [sp,#0x20]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    add r1, r1, r0
    ldr r2, [r1,#4]
    add r2, r2, r0
    str r2, [sp,#0xc]
    ldr r2, [r1]
    add r2, r2, r0
    str r2, [sp,#8]
    ldr r2, [r1,#8]
    ldr r3, [r2,r0]
    add r2, r2, r3
    add r2, r2, r0
    ldrb r2, [r2]
    lsl r2, r2, #2
    ldr r3, [r1,#0xc]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r3, r3, r2
    ldr r2, [sp]
    ldr r4, [sp,#4]
    mov r1, #0
    str r1, [sp,#0x14]
loc_8001A1E:
    ldrb r0, [r3]
    cmp r0, #0xff
    beq loc_8001AAE
    ldr r1, [sp,#0x10]
    sub r1, #8
    str r1, [sp,#0x10]
    blt loc_8001AAE
    ldr r1, [sp,#0x2c]
    add r0, r0, r1
    ldr r1, [sp,#4]
    add r0, r0, r1
    str r0, [r2,#4]
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    lsl r4, r0, #2
    add r4, r4, r1
    add r4, r4, r4
    ldr r5, [pc, #0x8001ab8-0x8001a44-4] // word_8001AC0
    add r4, r4, r5
    ldrb r5, [r4]
    ldr r6, [sp,#0x38]
    mul r5, r6
    str r5, [sp,#0x30]
    ldrb r5, [r4,#1]
    ldr r6, [sp,#0x3c]
    mul r5, r6
    str r5, [sp,#0x34]
    lsl r0, r0, #0xe
    lsl r1, r1, #0x1e
    add r0, r0, r1
    mov r1, #2
    ldrsb r4, [r3,r1]
    ldr r1, [sp,#0x1c]
    mul r1, r4
    ldr r4, [sp,#0x28]
    add r1, r1, r4
    ldr r4, [sp,#0x34]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r3,r1]
    ldr r4, [sp,#0x18]
    mul r1, r4
    ldr r4, [sp,#0x24]
    add r1, r1, r4
    ldr r4, [sp,#0x30]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #7
    add r0, r0, r1
    ldr r1, [sp,#0x38]
    lsl r1, r1, #0x1c
    ldrb r4, [r3,#3]
    mov r5, #0xf0
    and r5, r4
    lsl r5, r5, #0x16
    eor r1, r5
    add r0, r0, r1
    ldr r1, [sp,#0x3c]
    lsl r1, r1, #0x1d
    add r0, r0, r1
    str r0, [r2]
    ldr r1, [sp,#0x14]
    add r1, #1
    str r1, [sp,#0x14]
    add r2, #8
    add r3, #5
    b loc_8001A1E
loc_8001AAE:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x14]
    add sp, sp, #0x40
    pop {r4-r7,pc}
off_8001AB8:    .word word_8001AC0
off_8001ABC:    .word byte_200A3C8
word_8001AC0:    .hword 0x808
    .word 0x20201010
    .word 0x8104040
    .word 0x10200820
    .word 0x10082040
    .word 0x20102008
    .hword 0x4020
// end of function sub_80019B0

.thumb
sub_8001AD8:
    ldr r0, [pc, #0x8001b58-0x8001ad8-4] // =0xA338244F
    ldr r1, [pc, #0x8001b5c-0x8001ada-2] // dword_2001790
    str r0, [r1]
    mov pc, lr
// end of function sub_8001AD8

.thumb
sub_8001AE0:
    push {r7,lr}
    ldr r7, [pc, #0x8001b60-0x8001ae2-2] // dword_2001790
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001ae6-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_8001AE0

.thumb
sub_8001AF6:
    push {r7,lr}
    ldr r7, [pc, #0x8001b68-0x8001af8-4] // dword_2001790
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001afc-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001AF6

.thumb
sub_8001B10:
    push {r7,lr}
    ldr r7, [pc, #0x8001b6c-0x8001b12-2] // dword_20015D4
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b16-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_8001B10

.thumb
sub_8001B26:
    push {r7,lr}
    ldr r7, [pc, #0x8001b70-0x8001b28-4] // dword_20015D4
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b2c-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001B26

.thumb
sub_8001B40:
    push {r7,lr}
    ldr r7, [pc, #0x8001b74-0x8001b42-2] // dword_2001E98
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b46-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
    .balign 4, 0x00
dword_8001B58:    .word 0xA338244F
off_8001B5C:    .word dword_2001790
off_8001B60:    .word dword_2001790
dword_8001B64:    .word 0x873CA9E5
off_8001B68:    .word dword_2001790
off_8001B6C:    .word dword_20015D4
off_8001B70:    .word dword_20015D4
off_8001B74:    .word dword_2001E98
// end of function sub_8001B40

.thumb
sub_8001B78:
    push {lr}
    ldr r0, [pc, #0x8001b8c-0x8001b7a-2] // =0x600E000
    ldr r1, [pc, #0x8001b90-0x8001b7c-4] // =0x2000
    bl f900_8000950
    bl sub_8001D88
    bl sub_8001D9C
    pop {pc}
dword_8001B8C:    .word 0x600E000
off_8001B90:    .word 0x2000
// end of function sub_8001B78

.thumb
sub_8001B94:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001bb8-0x8001b9a-2] // =0x600E000
    ldr r2, [pc, #0x8001bbc-0x8001b9c-4] // =0x2000
    bl f900_80009A0
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001bc0-0x8001ba6-2] // =0x800
    ldr r2, [pc, #0x8001bc4-0x8001ba8-4] // =0x2FF02FF
    bl f900_80009FC
    ldr r0, [pc, #0x8001bc0-0x8001bae-2] // =0x800
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
dword_8001BB8:    .word 0x600E000
off_8001BBC:    .word 0x2000
off_8001BC0:    .word 0x800
dword_8001BC4:    .word 0x2FF02FF
// end of function sub_8001B94

.thumb
sub_8001BC8:
    ldr r1, [pc, #0x8001be0-0x8001bc8-4] // dword_8001BE4
    lsl r0, r0, #3
    add r1, r1, r0
    mov r3, r10
    ldr r2, [r3,#8]
    add r2, #4
    ldr r0, [r1]
    str r0, [r2]
    ldr r0, [r1,#4]
    str r0, [r2,#4]
    mov pc, lr
    .byte 0, 0
off_8001BE0:    .word dword_8001BE4
dword_8001BE4:    .word 0x0, 0x0
    .word 0x3C08
    .word 0x0
    .word 0x3D013C08, 0x0
    .word 0x3C08
    .word 0x0
    .word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E06, 0x3D833C08
    .word 0x3F8D3E82, 0x3D0B3C08, 0x3F8D3E82, 0x3D833C08, 0x3F0A3E83
    .word 0x3D833C08, 0x3F0B3E82, 0x3D033C08, 0x3F093E02, 0x3D033C08
    .word 0x3E06, 0x3D833C08, 0x3F813E02, 0x3D033C08, 0x3F815E02
    .word 0x3D033C08, 0x3F853E02, 0x3D033C08, 0x3F8B3E87, 0x3D033C08
    .word 0x3F053E02, 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E02
    .word 0x3D0B3C08, 0x3F093E0A, 0x3D833C08, 0x3F8D3E82, 0x0
    .word 0x5D805D81
// end of function sub_8001BC8

.thumb
sub_8001C94:
    push {lr}
    cmp r0, #0x80
    bge loc_8001C9E
    ldr r3, [pc, #0x8001cb0-0x8001c9a-2] // off_8029184
    b loc_8001CA2
loc_8001C9E:
    ldr r3, [pc, #0x8001cb4-0x8001c9e-2] // dword_802919C
    sub r0, #0x80
loc_8001CA2:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    add r3, r3, r1
    ldrb r0, [r3]
    bl sub_8001BC8
    pop {pc}
off_8001CB0:    .word off_8029184
off_8001CB4:    .word dword_802919C
// end of function sub_8001C94

.thumb
sub_8001CB8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001cf4-0x8001cbe-2] // MosaicSize
    ldrh r2, [r5,#2]
    strh r2, [r1]
    add r0, r5, #0
    add r0, #4
    ldr r1, [pc, #0x8001cf8-0x8001cc8-4] // BG0Control
    mov r2, #0x38 
    bl f900_800098C
    ldr r0, [r7,#0x1c]
    ldr r1, [pc, #0x8001cfc-0x8001cd2-2] // Window0HorizontalDimensions
    mov r2, #0xc
    bl f900_800097A
    ldr r5, [r7,#0x20]
    ldr r1, [pc, #0x8001d00-0x8001cdc-4] // ColorSpecialEffectsSelection
    ldr r2, [r5]
    str r2, [r1]
    ldrh r2, [r5,#4]
    strh r2, [r1,#(Brightness_Fade_In_Out_Coefficient - 0x4000050)]
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001cf0-0x8001ce8-4] // LCDControl
    ldrh r2, [r5]
    strh r2, [r1]
    pop {r4-r7,pc}
off_8001CF0:    .word LCDControl
off_8001CF4:    .word MosaicSize
off_8001CF8:    .word BG0Control
off_8001CFC:    .word Window0HorizontalDimensions
off_8001D00:    .word ColorSpecialEffectsSelection
// end of function sub_8001CB8

.thumb
sub_8001D04:
    push {lr}
    ldr r0, [pc, #0x8001d28-0x8001d06-2] // =0x6000000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d2c-0x8001d0e-2] // =0x6004000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d30-0x8001d16-2] // =0x6008000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d34-0x8001d1e-2] // =0x600C000
    mov r1, #0x20 
    bl f900_8000950
    pop {pc}
dword_8001D28:    .word 0x6000000
dword_8001D2C:    .word 0x6004000
dword_8001D30:    .word 0x6008000
dword_8001D34:    .word 0x600C000
// end of function sub_8001D04

.thumb
sub_8001D38:
    push {lr}
    ldr r0, [pc, #0x8001d58-0x8001d3a-2] // word_3002A50
    mov r1, #2
    bl f900_8000910
    pop {pc}
// end of function sub_8001D38

.thumb
sub_8001D44:
    push {lr}
    ldr r0, [pc, #0x8001d58-0x8001d46-2] // word_3002A50
    mov r1, #2
    bl f900_8000910
    ldr r0, [pc, #0x8001d5c-0x8001d4e-2] // =0x5000000
    mov r1, #2
    bl f900_8000910
    pop {pc}
off_8001D58:    .word word_3002A50
dword_8001D5C:    .word 0x5000000
// end of function sub_8001D44

.thumb
sub_8001D60:
    push {lr}
    mov r2, r10
    ldr r0, [r2,#0x20]
    mov r1, #8
    bl f900_8000930
    pop {pc}
// end of function sub_8001D60

.thumb
sub_8001D6E:
    push {lr}
    ldr r0, [pc, #0x8001d80-0x8001d70-4] // unk_3002C50
    ldr r1, [pc, #0x8001d84-0x8001d72-2] // =0x5000000
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009A0
    pop {pc}
    .byte 0, 0
off_8001D80:    .word unk_3002C50
dword_8001D84:    .word 0x5000000
// end of function sub_8001D6E

.thumb
sub_8001D88:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001d98-0x8001d8e-2] // =0x2000
    bl f900_8000950
    pop {pc}
    .balign 4, 0x00
off_8001D98:    .word 0x2000
// end of function sub_8001D88

.thumb
sub_8001D9C:
    push {lr}
    ldr r0, [pc, #0x8001db4-0x8001d9e-2] // dword_8694A24
    ldr r1, [pc, #0x8001db8-0x8001da0-4] // =0x600D800
    ldr r2, [pc, #0x8001dbc-0x8001da2-2] // =0x800
    bl f900_80009A0
    ldr r0, [pc, #0x8001dc0-0x8001da8-4] // dword_8753B14
    ldr r1, [pc, #0x8001dc4-0x8001daa-2] // unk_3002C30
    mov r2, #0x20 
    bl f900_80009A0
    pop {pc}
off_8001DB4:    .word dword_8694A24
dword_8001DB8:    .word 0x600D800
off_8001DBC:    .word 0x800
off_8001DC0:    .word dword_8753B14
off_8001DC4:    .word unk_3002C30
// end of function sub_8001D9C

.thumb
sub_8001DC8:
    lsl r0, r0, #1
    lsl r1, r1, #6
    lsl r2, r2, #0xb
    add r0, r0, r1
    add r0, r0, r2
    mov r1, r10
    ldr r1, [r1,#0x28]
    add r1, r1, r0
    strh r3, [r1]
    mov pc, lr
// end of function sub_8001DC8

.thumb
sub_8001DDC:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001df0-0x8001dde-2] // sub_30059E8+1
    mov lr, pc
    bx r7
    pop {r6,r7,pc}
// end of function sub_8001DDC

.thumb
sub_8001DE6:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001df4-0x8001de8-4] // loc_3005A22+1
    mov lr, pc
    bx r7
    pop {r6,r7,pc}
off_8001DF0:    .word sub_30059E8+1
off_8001DF4:    .word loc_3005A22+1
// end of function sub_8001DE6

.thumb
sub_8001DF8:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001e0c-0x8001dfa-2] // loc_3005A5C+1
    mov lr, pc
    bx r7
    .word 0xB5C0BDC0, 0x46FE4F02, 0xBDC04738
off_8001E0C:    .word loc_3005A5C+1
    .word 0x3005A93
// end of function sub_8001DF8

.thumb
sub_8001E14:
    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r1, r1, #6
    add r6, r6, r1
loc_8001E22:
    ldrh r7, [r3]
    lsl r1, r0, #1
    strh r7, [r6,r1]
    add r0, #1
    mov r1, #0x1f
    and r0, r1
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_8001E22
    pop {r6,r7,pc}
// end of function sub_8001E14

.thumb
sub_8001E38:
    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r0, r0, #1
    add r6, r6, r0
loc_8001E46:
    ldrh r7, [r3]
    lsl r0, r1, #6
    strh r7, [r6,r0]
    add r1, #1
    mov r0, #0x1f
    and r1, r0
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_8001E46
    pop {r6,r7,pc}
// end of function sub_8001E38

.thumb
sub_8001E5C:
    push {lr}
    tst r0, r0
    beq locret_8001E72
    ldr r3, [pc, #0x8001eac-0x8001e62-2] // dword_200ACF0
    str r0, [r3]
    str r1, [r3,#(dword_200ACF8 - 0x200acf0)]
    str r2, [r3,#(dword_200ACF4 - 0x200acf0)]
    mov r0, #0xc
    add r1, r2, #0
    bl start_8000284
locret_8001E72:
    pop {pc}
// end of function sub_8001E5C

.thumb
sub_8001E74:
    push {lr}
    ldr r2, [pc, #0x8001eac-0x8001e76-2] // dword_200ACF0
    ldr r0, [pc, #0x8001e8c-0x8001e78-4] // nullsub_88+1
    str r0, [r2]
    str r0, [r2,#(dword_200ACF8 - 0x200acf0)]
    ldr r1, [pc, #0x8001e90-0x8001e7e-2] // =0x300593C
    str r1, [r2,#(dword_200ACF4 - 0x200acf0)]
    mov r0, #0xc
    bl start_8000284
    pop {pc}
    .balign 4, 0x00
off_8001E8C:    .word nullsub_88+1
dword_8001E90:    .word 0x300593D
// end of function sub_8001E74

.thumb
sub_8001E94:
    push {lr}
    ldr r1, [pc, #0x8001eac-0x8001e96-2] // dword_200ACF0
    ldr r0, [r1]
    mov lr, pc
    bx r0
    pop {pc}
// end of function sub_8001E94

.thumb
sub_8001EA0:
    push {lr}
    ldr r1, [pc, #0x8001eac-0x8001ea2-2] // dword_200ACF0
    ldr r0, [r1,#(dword_200ACF8 - 0x200acf0)]
    mov lr, pc
    bx r0
    pop {pc}
off_8001EAC:    .word dword_200ACF0
// end of function sub_8001EA0

.thumb
nullsub_87:
    mov pc, lr
// end of function nullsub_87

.thumb
sub_8001EB2:
    ldr r1, [pc, #0x8001f90-0x8001eb2-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#(dword_200A154 - 0x200a150)]
    sub r3, #4
    str r3, [r1,#(dword_200A154 - 0x200a150)]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    strh r3, [r1,#0x12]
    mov pc, lr
// end of function sub_8001EB2

.thumb
sub_8001ECE:
    ldr r1, [pc, #0x8001f90-0x8001ece-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#(dword_200A154 - 0x200a150)]
    sub r3, #4
    str r3, [r1,#(dword_200A154 - 0x200a150)]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    strh r3, [r1,#0x1a]
    mov pc, lr
// end of function sub_8001ECE

.thumb
sub_8001EEA:
    ldr r1, [pc, #0x8001f90-0x8001eea-2] // dword_200A150
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x1a]
    mov pc, lr
// end of function sub_8001EEA

.thumb
sub_8001EFC:
    ldr r1, [pc, #0x8001f90-0x8001efc-4] // dword_200A150
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x12]
    mov pc, lr
// end of function sub_8001EFC

.thumb
sub_8001F0E:
    ldr r1, [pc, #0x8001f90-0x8001f0e-2] // dword_200A150
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x12]
    mov pc, lr
// end of function sub_8001F0E

.thumb
sub_8001F20:
    ldr r1, [pc, #0x8001f90-0x8001f20-4] // dword_200A150
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x1a]
    mov pc, lr
// end of function sub_8001F20

.thumb
sub_8001F32:
    ldr r1, [pc, #0x8001f90-0x8001f32-2] // dword_200A150
    ldr r2, [r1]
    add r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
// end of function sub_8001F32

.thumb
sub_8001F44:
    ldr r1, [pc, #0x8001f90-0x8001f44-4] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
// end of function sub_8001F44

.thumb
sub_8001F56:
    ldr r1, [pc, #0x8001f90-0x8001f56-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    mov pc, lr
// end of function sub_8001F56

.thumb
sub_8001F68:
    ldr r1, [pc, #0x8001f90-0x8001f68-4] // dword_200A150
    ldr r2, [r1]
    mov r3, #1
    lsl r3, r3, #0xc
    sub r2, r2, r3
    mov r3, #4
    lsl r3, r3, #0x10
    neg r3, r3
    cmp r2, r3
    bge loc_8001F7E
    add r2, r3, #0
loc_8001F7E:
    str r2, [r1]
    asr r2, r2, #0x10
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r3, [r1,#0x10]
    add r3, r3, r2
    strh r3, [r1,#0x10]
    mov pc, lr
    .byte 0, 0
off_8001F90:    .word dword_200A150
// end of function sub_8001F68

.thumb
nullsub_88:
    mov pc, lr
    .balign 4, 0x00
pt_8001F98:    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
off_8001FA4:    .word unk_200F780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word word_200F980
    .word unk_200FB80
    .word unk_200FC00
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
// end of function nullsub_88

.thumb
sub_8002008:
    push {lr}
    ldr r0, [pc, #0x8002144-0x800200a-2] // byte_2009F50
    ldr r1, [pc, #0x8002014-0x800200c-4] // =0x1B0
    bl f900_8000930
    pop {pc}
off_8002014:    .word 0x1B0
// end of function sub_8002008

.thumb
sub_8002018:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8002024-0x800201a-2] // pt_8001F98
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8002024:    .word pt_8001F98
// end of function sub_8002018

.thumb
sub_8002028:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8002144-0x8002032-2] // byte_2009F50
    ldrb r1, [r0,#9]
    mov r2, #0x18
    mul r2, r1
    add r7, r7, r2
    strb r1, [r7,#1]
    ldr r1, [r0]
    str r1, [r7,#0xc]
    ldr r2, [r0,#4]
    str r2, [r7,#0x10]
    ldr r3, [r0,#8]
    str r3, [r7,#0x14]
    add r0, #0xc
    mov r6, #1
    cmp r3, #8
    beq loc_8002054
    ldr r6, [r0,#4]
loc_8002054:
    strh r6, [r7,#2]
    mov r6, #1
    strb r6, [r7]
    str r0, [r7,#4]
    str r0, [r7,#8]
    ldr r6, [pc, #0x8002074-0x800205e-2] // off_800212C
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8002074:    .word off_800212C
// end of function sub_8002028

.thumb
sub_8002078:
    push {r4-r7,lr}
    push {r0}
    ldr r7, [pc, #0x8002144-0x800207c-4] // byte_2009F50
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    mov r0, #0
    strb r0, [r7]
    pop {r0}
    bl sub_8002526
    pop {r4-r7,pc}
// end of function sub_8002078

.thumb
sub_8002090:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8002144-0x8002092-2] // byte_2009F50
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    ldrb r0, [r7]
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8002090

.thumb
sub_80020A0:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8002144-0x80020aa-2] // byte_2009F50
    mov r4, #0
loc_80020AE:
    ldrb r1, [r7]
    tst r1, r1
    bne loc_80020BE
loc_80020B4:
    add r7, #0x18
    add r4, #1
    cmp r4, #0x12
    bge loc_8002100
    b loc_80020AE
loc_80020BE:
    ldrh r1, [r7,#2]
    sub r1, #1
    strh r1, [r7,#2]
    cmp r1, #0
    bgt loc_80020B4
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x800210c-0x80020ca-2] // dword_8002114
    ldrb r2, [r7,#0x14]
    ldr r1, [r1,r2]
    add r0, r0, r1
    ldr r1, [r0]
    cmp r1, #0
    beq loc_80020FA
    cmp r1, #2
    beq loc_80020E4
    cmp r1, #1
    bne loc_80020E8
    ldr r0, [r7,#4]
    b loc_80020E8
loc_80020E4:
    ldr r0, [r0,#4]
    str r0, [r7,#4]
loc_80020E8:
    str r0, [r7,#8]
    ldr r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r6, [pc, #0x8002110-0x80020ee-2] // off_800212C
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    b loc_80020B4
loc_80020FA:
    mov r1, #0
    strb r1, [r7]
    b loc_80020B4
loc_8002100:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800210C:    .word dword_8002114
off_8002110:    .word off_800212C
dword_8002114:    .word 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
off_800212C:    .word sub_8002148+1
    .word sub_8002198+1
    .word sub_8002156+1
    .word sub_800249C+1
    .word sub_80024B6+1
    .word sub_80024C4+1
off_8002144:    .word byte_2009F50
// end of function sub_80020A0

.thumb
sub_8002148:
    push {lr}
    ldr r0, [r0]
    ldr r1, [r7,#0xc]
    ldr r2, [r7,#0x10]
    bl loc_8000874
    pop {pc}
// end of function sub_8002148

.thumb
sub_8002156:
    push {lr}
    ldr r5, [pc, #0x8002194-0x8002158-4] // byte_200D8E0
    ldr r5, [r5,#(dword_200D8EC - 0x200d8e0)]
    ldrb r2, [r7,#0x17]
    lsl r2, r2, #2
    add r2, #4
    ldr r2, [r5,r2]
    add r5, r5, r2
    mov r6, #0xf0
    lsl r6, r6, #8
    ldrb r2, [r7,#0x16]
    mov r8, r7
loc_800216E:
    ldr r1, [r0]
    ldr r7, [r0,#4]
    ldrh r3, [r5,r1]
    and r3, r6
    orr r3, r7
    strh r3, [r5,r1]
    add r0, #8
    sub r2, #1
    bgt loc_800216E
    mov r7, r8
    push {r4,r7}
    ldr r5, [pc, #0x8002194-0x8002184-4] // byte_200D8E0
    bl loc_8026460
    pop {r4,r7}
    mov r0, #0
    strb r0, [r7]
    pop {pc}
    .balign 4, 0x00
off_8002194:    .word byte_200D8E0
// end of function sub_8002156

.thumb
sub_8002198:
    push {r4,r7,lr}
    ldr r6, [r0]
    ldr r5, [pc, #0x80021e8-0x800219c-4] // pt_8001F98
    ldrb r4, [r7,#0x17]
    lsl r4, r4, #2
    ldr r5, [r5,r4]
    ldr r4, [r7,#0xc]
    mov r1, #0
    push {r0}
loc_80021AA:
    ldrh r2, [r6,r1]
    lsl r3, r2, #0x16
    lsr r3, r3, #0x16
    lsl r3, r3, #5
    push {r4,r6}
    add r4, r4, r3
    ldr r0, [pc, #0x80021ec-0x80021b6-2] // sub_80021F0
    lsr r2, r2, #0xa
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
    pop {r4,r6}
    add r5, #0x20 
    add r1, #2
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #1
    cmp r1, r2
    blt loc_80021AA
    pop {r0}
    ldr r0, [pc, #0x80021e8-0x80021d2-2] // pt_8001F98
    ldrb r1, [r7,#0x17]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldr r1, [r7,#0x10]
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #5
    bl loc_8000874
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80021E8:    .word pt_8001F98
off_80021EC:    .word sub_80021F0
// end of function sub_8002198

.thumb
sub_80021F0:
    mov r2, #1
    lsr r0, r0, #0x20
    mov r2, #0x23 
    lsr r0, r0, #0x20
    mov r3, #0x4b 
    lsr r0, r0, #0x20
    mov r3, #0x6d 
    lsr r0, r0, #0x20
    ldr r0, [r4]
    str r0, [r5]
    ldr r0, [r4,#4]
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    str r0, [r5,#0x1c]
    mov pc, lr
// end of function sub_80021F0

.thumb
sub_8002222:
    ldr r2, [pc, #0x8002498-0x8002222-2] // =0xF0F0F0F0
    mov r9, r2
    ldr r2, [pc, #0x8002494-0x8002226-2] // =0xFF00FF00
    mov r8, r2
    ldr r0, [r4]
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5]
    ldr r0, [r4,#4]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x1c]
    mov pc, lr
// end of function sub_8002222

.thumb
sub_800234A:
    ldr r0, [r4]
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    str r0, [r5]
    mov pc, lr
// end of function sub_800234A

.thumb
sub_800236C:
    ldr r2, [pc, #0x8002498-0x800236c-4] // =0xF0F0F0F0
    mov r9, r2
    ldr r2, [pc, #0x8002494-0x8002370-4] // =0xFF00FF00
    mov r8, r2
    ldr r0, [r4]
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5]
    mov pc, lr
dword_8002494:    .word 0xFF00FF00
dword_8002498:    .word 0xF0F0F0F0
// end of function sub_800236C

.thumb
sub_800249C:
    push {lr}
    push {r4,r7}
    ldr r1, [r0]
    lsl r1, r1, #1
    lsr r1, r1, #1
    ldrb r0, [r7,#0xc]
    ldrb r2, [r7,#0x16]
    ldrb r3, [r7,#1]
    ldr r4, [r7,#0x10]
    bl sub_8002504
    pop {r4,r7}
    pop {pc}
// end of function sub_800249C

.thumb
sub_80024B6:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt locret_80024C2
    bl f500_8000558
locret_80024C2:
    pop {pc}
// end of function sub_80024B6

.thumb
sub_80024C4:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt loc_80024D4
    .hword 0x1C00
    bl sub_8024FA0
    b locret_80024DE
loc_80024D4:
    lsl r0, r0, #1
    lsr r0, r0, #1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
locret_80024DE:
    pop {pc}
// end of function sub_80024C4

.thumb
sub_80024E0:
    push {r5,lr}
    add r5, r0, #0
loc_80024E4:
    ldr r0, [r5]
    cmp r0, #0
    blt locret_80024F2
    bl sub_8002028
    add r5, #4
    b loc_80024E4
locret_80024F2:
    pop {r5,pc}
// end of function sub_80024E0

.thumb
sub_80024F4:
    push {lr}
    ldr r0, [pc, #0x80025f0-0x80024f6-2] // byte_200A230
    ldr r1, [pc, #0x8002500-0x80024f8-4] // =0x105
    bl f900_8000930
    pop {pc}
off_8002500:    .word 0x108
// end of function sub_80024F4

.thumb
sub_8002504:
    push {r5-r7,lr}
    ldr r7, [pc, #0x80025f0-0x8002506-2] // byte_200A230
    mov r6, #0xc
    mul r3, r6
    add r7, r7, r3
    mov r3, #0
    tst r1, r1
    beq loc_8002522
    tst r2, r2
    beq loc_8002522
    strb r0, [r7,#1]
    str r1, [r7,#4]
    strb r2, [r7,#2]
    mov r3, #1
    str r4, [r7,#8]
loc_8002522:
    strb r3, [r7]
    pop {r5-r7,pc}
// end of function sub_8002504

.thumb
sub_8002526:
    ldr r2, [pc, #0x80025f0-0x8002526-2] // byte_200A230
    mov r1, #0xc
    mul r0, r1
    add r2, r2, r0
    mov r0, #0
    strb r0, [r2]
    mov pc, lr
// end of function sub_8002526

.thumb
sub_8002534:
    push {lr}
    ldr r0, [pc, #0x80025f0-0x8002536-2] // byte_200A230
    ldr r1, [pc, #0x8002540-0x8002538-4] // =0xD8
    bl f900_8000930
    pop {pc}
off_8002540:    .word 0xD8
// end of function sub_8002534

.thumb
sub_8002544:
    ldr r2, [pc, #0x80025f0-0x8002544-4] // byte_200A230
    mov r1, #0xc
    mul r1, r0
    add r2, r2, r1
    ldrb r0, [r2]
    tst r0, r0
    mov pc, lr
// end of function sub_8002544

.thumb
sub_8002552:
    ldr r2, [pc, #0x80025f0-0x8002552-2] // byte_200A230
    ldr r3, [pc, #0x8002568-0x8002554-4] // =0x105
loc_8002556:
    ldrb r0, [r2]
    tst r0, r0
    bne locret_8002564
    add r2, #0xc
    cmp r2, r3
    blt loc_8002556
    mov r0, #0
locret_8002564:
    mov pc, lr
    .balign 4, 0x00
off_8002568:    .word 0x108
// end of function sub_8002552

.thumb
sub_800256C:
    push {r5-r7,lr}
    ldr r0, [pc, #0x80025c8-0x800256e-2] // word_3002A50
    ldr r1, [pc, #0x80025cc-0x8002570-4] // unk_3002C50
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009A0
    ldr r0, [pc, #0x80025d0-0x800257a-2] // unk_3002640
    ldr r1, [pc, #0x80025d4-0x800257c-4] // unk_3002840
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009A0
    ldr r5, [pc, #0x80025f0-0x8002586-2] // byte_200A230
loc_8002588:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_80025B4
    ldr r0, [r5,#(dword_200A234 - 0x200a230)]
    ldrb r2, [r5,#(byte_200A231 - 0x200a230)]
    ldrb r6, [r5,#(byte_200A232 - 0x200a230)]
    ldr r7, [r5,#(dword_200A238 - 0x200a230)]
    cmp r7, #6
    bge loc_80025AA
    ldr r6, [pc, #0x80025c4-0x800259a-2] // unk_2010BA0
    add r7, r7, r6
    ldrb r1, [r7]
    ldrb r6, [r7,#1]
    sub r6, r6, r1
    ldr r7, [pc, #0x80025d4-0x80025a4-4] // unk_3002840
    lsl r1, r1, #5
    add r7, r7, r1
loc_80025AA:
    lsl r6, r6, #5
    ldr r3, [pc, #0x80025d8-0x80025ac-4] // dword_80025DC
    ldr r3, [r3,r2]
    mov lr, pc
    bx r3
loc_80025B4:
    add r5, #0xc
    ldr r6, [pc, #0x80025f0-0x80025b6-2] // byte_200A230
    ldr r0, [pc, #0x80025ec-0x80025b8-4] // =0x105
    add r6, r6, r0
    cmp r5, r6
    blt loc_8002588
    pop {r5-r7,pc}
    .balign 4, 0x00
off_80025C4:    .word unk_2010BA0
off_80025C8:    .word word_3002A50
off_80025CC:    .word unk_3002C50
off_80025D0:    .word unk_3002640
off_80025D4:    .word unk_3002840
off_80025D8:    .word dword_80025DC
dword_80025DC:    .word 0x3005AC9, 0x3005AC9, 0x3005B51, 0x3005B51
off_80025EC:    .word 0x108
off_80025F0:    .word byte_200A230
// end of function sub_800256C

.thumb
sub_80025F4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8002654-0x80025f6-2] // byte_200AAC0
    push {r0-r2}
    add r0, r5, #0
    mov r1, #0x50 
    bl f900_8000930
    pop {r0-r2}
    str r0, [r5,#(dword_200AAC4 - 0x200aac0)]
    str r1, [r5,#(dword_200AAC8 - 0x200aac0)]
    str r2, [r5,#(dword_200AACC - 0x200aac0)]
    mov r0, #1
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_80025F4

.thumb
sub_8002610:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8002654-0x8002612-2] // byte_200AAC0
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8002624
    ldr r0, [r5,#(dword_200AAC8 - 0x200aac0)]
    tst r0, r0
    beq loc_8002624
    mov lr, pc
    bx r0
loc_8002624:
    add r0, r5, #0
    mov r1, #0x50 
    bl f900_8000930
    pop {r4-r7,pc}
// end of function sub_8002610

.thumb
sub_800262E:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8002654-0x8002630-4] // byte_200AAC0
    mov r1, #0x50 
    bl f900_8000930
    pop {r4-r7,pc}
// end of function sub_800262E

.thumb
sub_800263A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8002654-0x800263c-4] // byte_200AAC0
    ldrb r0, [r5]
    tst r0, r0
    beq locret_800264A
    ldr r0, [r5,#(dword_200AAC4 - 0x200aac0)]
    mov lr, pc
    bx r0
locret_800264A:
    pop {r4-r7,pc}
// end of function sub_800263A

.thumb
sub_800264C:
    ldr r1, [pc, #0x8002654-0x800264c-4] // byte_200AAC0
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
off_8002654:    .word byte_200AAC0
// end of function sub_800264C

.thumb
sub_8002658:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    mov r4, #4
    b loc_800266E
// end of function sub_8002658

.thumb
sub_8002664:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    mov r4, #0
loc_800266E:
    ldr r6, [pc, #0x800274c-0x800266e-2] // dword_8002750
    add r6, r6, r4
    mov r8, r6
    mov r9, r1
    add r4, r2, #0
    mov r6, #1
    tst r2, r6
    beq loc_8002680
    add r2, #1
loc_8002680:
    lsr r7, r2, #1
    add r5, r3, #0
    tst r3, r6
    beq loc_800268A
    add r3, #1
loc_800268A:
    lsr r6, r3, #1
    bl sub_80035C0
    push {r0,r1}
    sub r0, #0x78 
    sub r1, #0x50 
    neg r0, r0
    neg r1, r1
    mov r2, #0xf0
    sub r2, r2, r4
    lsr r2, r2, #1
    sub r0, r0, r2
    mov r2, #0xa0
    sub r2, r2, r5
    lsr r2, r2, #1
    sub r1, r1, r2
    mov r2, r10
    ldr r2, [r2,#8]
    mov r3, r8
    ldrb r3, [r3]
    strh r0, [r2,r3]
    mov r3, r8
    ldrb r3, [r3,#(byte_8002755 - 0x8002754)]
    strh r1, [r2,r3]
    mov r2, r8
    ldrb r2, [r2,#(byte_8002756 - 0x8002754)]
    mov r3, r9
    lsr r4, r4, #3
    mov r0, #0
    mov r1, #0
    lsr r5, r5, #3
    bl sub_8001DDC
    pop {r0,r1}
    mov r5, r10
    ldr r5, [r5,#0x1c]
    cmp r0, r7
    bge loc_80026DA
    mov r2, #0
    b loc_80026EA
loc_80026DA:
    mov r4, #0xf0
    add r4, r4, r7
    cmp r0, r4
    ble loc_80026E6
    mov r2, #0xf0
    b loc_80026EA
loc_80026E6:
    add r4, r7, #0
    sub r2, r0, r4
loc_80026EA:
    strb r2, [r5,#3]
    add r4, r7, #0
    neg r4, r4
    cmp r0, r4
    bge loc_80026F8
    mov r2, #0
    b loc_8002708
loc_80026F8:
    mov r3, #0xf0
    sub r3, r3, r7
    cmp r0, r3
    ble loc_8002704
    mov r2, #0xf0
    b loc_8002708
loc_8002704:
    add r4, r7, #0
    add r2, r0, r4
loc_8002708:
    strb r2, [r5,#2]
    mov r4, #0xa0
    add r4, r4, r6
    cmp r1, r6
    bge loc_8002716
    mov r2, #0
    b loc_8002722
loc_8002716:
    cmp r1, r4
    ble loc_800271E
    mov r2, #0xa0
    b loc_8002722
loc_800271E:
    add r4, r6, #0
    sub r2, r1, r4
loc_8002722:
    strb r2, [r5,#7]
    add r4, r6, #0
    neg r4, r4
    cmp r1, r4
    bge loc_8002730
    mov r2, #0
    b loc_8002740
loc_8002730:
    mov r3, #0xa0
    sub r3, r3, r6
    cmp r1, r3
    ble loc_800273C
    mov r2, #0xa0
    b loc_8002740
loc_800273C:
    add r4, r6, #0
    add r2, r1, r4
loc_8002740:
    strb r2, [r5,#6]
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800274C:    .word dword_8002750
dword_8002750:    .word 0xFF031A18
byte_8002754:    .byte 0x14
byte_8002755:    .byte 0x16
byte_8002756:    .byte 0x2
    .byte 0xFF
dword_8002758:    .word 0x7FFF0000, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
    .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
// end of function sub_8002664

.thumb
sub_8002798:
    push {r4,lr}
    ldr r0, [pc, #0x80027c8-0x800279a-2] // =0x7000000
    ldr r1, [pc, #0x80027cc-0x800279c-4] // =0x400
    bl f900_8000950
    ldr r0, [pc, #0x80027d0-0x80027a2-2] // =0x6010000
    ldr r1, [pc, #0x80027d4-0x80027a4-4] // =0x8000
    bl f900_8000950
    bl sub_80027F4
    bl sub_8003488
    bl sub_80034B0
    bl sub_80034BA
    bl sub_80029C0
    ldr r0, [pc, #0x80027d8-0x80027be-2] // unk_2010BA0
    mov r1, #7
    bl f900_8000904
    pop {r4,pc}
dword_80027C8:    .word 0x7000000
off_80027CC:    .word 0x400
dword_80027D0:    .word 0x6010000
dword_80027D4:    .word 0x8000
off_80027D8:    .word unk_2010BA0
// end of function sub_8002798

.thumb
sub_80027DC:
    push {lr}
    ldr r0, [pc, #0x80027ec-0x80027de-2] // unk_3002840
    ldr r1, [pc, #0x80027f0-0x80027e0-4] // =0x5000200
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009A0
    pop {pc}
off_80027EC:    .word unk_3002840
dword_80027F0:    .word 0x5000200
// end of function sub_80027DC

.thumb
sub_80027F4:
    push {lr}
    ldr r0, [pc, #0x8002804-0x80027f6-2] // dword_8002758
    ldr r1, [pc, #0x8002808-0x80027f8-4] // unk_3002820
    mov r2, #0x20 
    bl f900_80009A0
    pop {pc}
    .balign 4, 0x00
off_8002804:    .word dword_8002758
off_8002808:    .word unk_3002820
// end of function sub_80027F4

.thumb
sub_800280C:
    push {lr}
    ldr r2, [pc, #0x8002818-0x800280e-2] // loc_300602C+1
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_8002818:    .word loc_300602C+1
// end of function sub_800280C

.thumb
sub_800281C:
    push {r4,r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    ldr r4, [pc, #0x8002838-0x8002826-2] // loc_300632C+1
    mov lr, pc
    bx r4
// end of function sub_800281C

    pop {r4,r5,pc}
.thumb
sub_800282E:
    push {r4,lr}
    ldr r4, [pc, #0x8002838-0x8002830-4] // loc_300632C+1
    mov lr, pc
    bx r4
    pop {r4,pc}
off_8002838:    .word loc_300632C+1
// end of function sub_800282E

.thumb
sub_800283C:
    push {r4,r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    ldr r4, [pc, #0x8002858-0x8002846-2] // loc_3006376+1
    mov lr, pc
    bx r4
    pop {r4,r5,pc}
// end of function sub_800283C

.thumb
sub_800284E:
    push {r4,lr}
    ldr r4, [pc, #0x8002858-0x8002850-4] // loc_3006376+1
    mov lr, pc
    bx r4
    pop {r4,pc}
off_8002858:    .word loc_3006376+1
// end of function sub_800284E

.thumb
sub_800285C:
    push {r4,r5,lr}
    ldrb r3, [r5]
    mov r4, #8
    bic r3, r4
    strb r3, [r5]
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    push {r0-r2}
    lsl r0, r1, #8
    orr r0, r2
    bl sub_8002AAA
    pop {r1-r3}
    tst r0, r0
    beq loc_8002880
    b loc_800288E
loc_8002880:
    ldr r4, [pc, #0x800289c-0x8002880-4] // unk_8027890
    ldr r4, [r4,r2]
    lsl r3, r3, #2
    ldr r0, [r4,r3]
    cmp r0, #0
    bge loc_800288E
    ldr r0, [pc, #0x80028a0-0x800288c-4] // dword_84B5478
loc_800288E:
    push {r1}
    bl sub_80028A4
    pop {r1}
    strb r1, [r5,#3]
    pop {r4,r5,pc}
    .balign 4, 0x00
dword_800289C:    .word 0x8027890
off_80028A0:    .word dword_84B5478
// end of function sub_800285C

.thumb
sub_80028A4:
    add r0, #4
    str r0, [r5,#0x18]
    mov r0, #0
    strb r0, [r5,#3]
    strb r0, [r5]
    str r0, [r5,#0x24]
    strb r0, [r5,#4]
    strh r0, [r5,#0xa]
    strh r0, [r5,#6]
    str r0, [r5,#0x2c]
    strh r0, [r5,#0x10]
    strh r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    strb r0, [r5,#5]
    str r0, [r5,#0x30]
    str r0, [r5,#0x34]
    mvn r0, r0
    str r0, [r5,#0x28]
    mov r0, #8
    strb r0, [r5,#0x15]
    mov r0, #8
    strh r0, [r5,#0x16]
    mov pc, lr
// end of function sub_80028A4

.thumb
sub_80028D2:
    push {lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x80028e4-0x80028d6-2] // dword_8027CEC+672
    ldr r0, [r0,r1]
    bl sub_80028A4
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {pc}
off_80028E4:    .word dword_8027CEC+0x2A0
// end of function sub_80028D2

.thumb
sub_80028E8:
    mov r2, #0x80
    b loc_80028EE
loc_80028EC:
    mov r2, #0
loc_80028EE:
    push {r4-r6,lr}
    add r6, r2, #0
    add r4, r1, #0
    add r5, #0x20 
    lsl r0, r0, #2
    ldr r1, [pc, #0x8002910-0x80028f8-4] // dword_8027CEC+1080
    ldr r0, [r0,r1]
    cmp r0, #0
    bge loc_8002902
    add r0, r4, #0
loc_8002902:
    bl sub_80028A4
    strb r6, [r5,#3]
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {r4-r6,pc}
    .byte 0, 0
off_8002910:    .word dword_8027CEC+0x438
// end of function sub_80028E8

.thumb
sub_8002914:
    push {r5,lr}
    add r5, #0x20 
    lsl r0, r0, #2
    ldr r1, [pc, #0x8002928-0x800291a-2] // dword_8027CEC+672
    ldr r0, [r0,r1]
    bl sub_80028A4
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {r5,pc}
off_8002928:    .word dword_8027CEC+0x2A0
// end of function sub_8002914

.thumb
sub_800292C:
    ldr r0, [pc, #0x8002934-0x800292c-4] // dword_2010B90
    ldr r1, [pc, #0x8002938-0x800292e-2] // =0x0
    str r1, [r0]
    mov pc, lr
off_8002934:    .word dword_2010B90
dword_8002938:    .word 0x1
// end of function sub_800292C

.thumb
sub_800293C:
    push {lr}
    ldr r0, [r5,#0x34]
    tst r0, r0
    bne loc_800294E
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#4]
    add r0, #4
    ldr r1, [r5,#0x18]
    add r0, r0, r1
loc_800294E:
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#5]
    add r1, r1, r2
    lsl r1, r1, #5
    add r0, r0, r1
    ldrb r1, [r5,#0x15]
    lsr r1, r1, #4
    ldr r3, [pc, #0x800298c-0x800295c-4] // unk_3002640
    lsl r1, r1, #5
    add r3, r3, r1
    mov r6, #0
loc_8002964:
    ldr r2, [r0,r6]
    str r2, [r3,r6]
    add r6, #4
    cmp r6, #0x20 
    blt loc_8002964
    ldrh r7, [r5,#6]
    tst r7, r7
    beq locret_8002986
    lsl r0, r7, #0x11
    lsr r0, r0, #0x11
    lsr r2, r7, #0xf
    lsl r2, r2, #2
    mov r6, #0x20 
    add r7, r3, #0
    ldr r1, [pc, #0x8002988-0x8002980-4] // loc_3005AC8+1
    mov lr, pc
    bx r1
locret_8002986:
    pop {pc}
off_8002988:    .word loc_3005AC8+1
off_800298C:    .word unk_3002640
// end of function sub_800293C

.thumb
sub_8002990:
    ldr r0, [pc, #0x80029f0-0x8002990-4] // dword_2010B80
    mov r1, #0
    str r1, [r0]
    mov pc, lr
// end of function sub_8002990

.thumb
sub_8002998:
    push {r5,lr}
    ldr r2, [r5,#0x24]
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    cmp r0, r2
    beq locret_80029BA
    str r0, [r5,#0x24]
    ldr r2, [r0]
    add r0, #4
    ldr r1, [pc, #0x80029bc-0x80029ae-2] // =0x6010000
    ldrh r3, [r5,#8]
    lsl r3, r3, #5
    add r1, r1, r3
    bl loc_8000874
locret_80029BA:
    pop {r5,pc}
dword_80029BC:    .word 0x6010000
// end of function sub_8002998

.thumb
sub_80029C0:
    push {lr}
    ldr r1, [pc, #0x80029d8-0x80029c2-2] // dword_2009E64
    mov r0, #0
    str r0, [r1]
    ldr r0, [pc, #0x80029dc-0x80029c8-4] // dword_200AE50
    ldr r1, [pc, #0x80029e0-0x80029ca-2] // =0x2C4
    mov r2, #0
    mvn r2, r2
    bl f900_80009DC
    pop {pc}
    .balign 4, 0x00
off_80029D8:    .word dword_2009E64
off_80029DC:    .word dword_200AE50
off_80029E0:    .word 0x2C8
// end of function sub_80029C0

.thumb
sub_80029E4:
    ldr r1, [pc, #0x80029f0-0x80029e4-4] // dword_2010B80
    ldr r1, [r1]
    ldr r2, [pc, #0x80029f4-0x80029e8-4] // =0x2010BA1
    strb r1, [r2,r0]
    mov pc, lr
    .byte 0, 0
off_80029F0:    .word dword_2010B80
dword_80029F4:    .word 0x2010BA1
// end of function sub_80029E4

.thumb
sub_80029F8:
    push {r5,lr}
    ldr r5, [pc, #0x8002c58-0x80029fa-2] // byte_200F720
    push {r0}
    add r0, r5, #0
    mov r1, #0x38 
    bl f900_8000930
    pop {r0}
    str r0, [r5,#(dword_200F754 - 0x200f720)]
    add r0, r5, #0
    add r0, #4
    mov r1, #0x10
    mov r2, #0x80
    lsl r2, r2, #0x18
    mvn r2, r2
    lsr r2, r2, #0x10
    bl f900_80009BC
    add r0, r5, #0
    add r0, #0x14
    mov r1, #0x20 
    mov r2, #0xff
    bl f900_80009B4
    pop {r5,pc}
// end of function sub_80029F8

.thumb
sub_8002A2A:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    push {r1,r2}
    ldr r5, [pc, #0x8002c58-0x8002a32-2] // byte_200F720
    ldr r1, [r5,#(dword_200F754 - 0x200f720)]
    ldr r4, [pc, #0x8002c28-0x8002a36-2] // unk_8027890
    ldr r6, [pc, #0x8002c2c-0x8002a38-4] // =0x2040000
    add r7, r0, #0
loc_8002A3C:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8002A96
    ldrb r3, [r7,#1]
    lsl r3, r3, #2
    ldr r2, [r4,r0]
    ldr r2, [r2,r3]
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsl r0, r0, #8
    lsr r3, r3, #2
    orr r0, r3
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002AA0
    mov r9, r0
    ldrb r0, [r5]
    cmp r0, #8
    mov r0, r9
    bge loc_8002AA0
    push {r7}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x14
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    add r3, #1
    strb r3, [r5]
    push {r1,r2,r4-r6}
    mov r0, r8
    bl sub_8111700
    pop {r1,r2,r4-r6}
    add r1, r1, r2
    str r1, [r5,#0x34]
    pop {r7}
    add r7, #2
    b loc_8002A3C
loc_8002A96:
    mov r0, #1
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r4-r7,pc}
loc_8002AA0:
    mov r0, #0
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r4-r7,pc}
// end of function sub_8002A2A

.thumb
sub_8002AAA:
    push {r5,lr}
    ldr r5, [pc, #0x8002c58-0x8002aac-4] // byte_200F720
    mov r2, #0
loc_8002AB0:
    lsl r1, r2, #1
    add r1, #4
    ldrh r1, [r5,r1]
    cmp r0, r1
    bne loc_8002AC2
    lsl r1, r2, #2
    add r1, #0x14
    ldr r0, [r5,r1]
    pop {r5,pc}
loc_8002AC2:
    add r2, #1
    cmp r2, #8
    blt loc_8002AB0
    mov r0, #0
    pop {r5,pc}
// end of function sub_8002AAA

.thumb
sub_8002ACC:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8002c58-0x8002ad6-2] // byte_200F720
    ldr r1, [r5,#(dword_200F754 - 0x200f720)]
    ldr r4, [pc, #0x8002c28-0x8002ada-2] // unk_8027890
    ldr r6, [pc, #0x8002c30-0x8002adc-4] // dword_2033000
    add r7, r0, #0
loc_8002AE0:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8002B6E
    ldrb r2, [r7,#3]
    cmp r2, #0
    beq loc_8002B6A
    push {r1}
    bl sub_8011824
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#3]
    cmp r0, #0xff
    bne loc_8002AFC
    mov r1, #0x7f
loc_8002AFC:
    lsl r0, r0, #8
    orr r0, r1
    pop {r1}
    add r3, r5, #0
    add r3, #4
    mov r9, r1
    mov r2, #0
loc_8002B0A:
    ldrh r1, [r3,r2]
    cmp r0, r1
    mov r1, r9
    beq loc_8002B6A
    add r2, #2
    cmp r2, #0x10
    blt loc_8002B0A
    mov r1, r9
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge loc_8002B6A
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002B7A
    mov r12, r0
    ldrb r0, [r5]
    cmp r0, #8
    mov r0, r12
    bge loc_8002B7A
    push {r7}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x14
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    add r3, #1
    strb r3, [r5]
    push {r1,r2,r4-r6}
    mov r0, r8
    bl sub_8111700
    pop {r1,r2,r4-r6}
    add r1, r1, r2
    str r1, [r5,#0x34]
    pop {r7}
loc_8002B6A:
    add r7, #4
    b loc_8002AE0
loc_8002B6E:
    mov r0, #1
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
loc_8002B7A:
    mov r0, #0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
// end of function sub_8002ACC

.thumb
sub_8002B86:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8002c58-0x8002b90-4] // byte_200F720
    bl sub_8002C34
    ldr r1, [r5,#(dword_200F754 - 0x200f720)]
    ldr r4, [pc, #0x8002c28-0x8002b98-4] // unk_8027890
    ldr r6, [pc, #0x8002c30-0x8002b9a-2] // dword_2033000
    push {r1,r4-r6}
    bl sub_8011824
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#3]
    cmp r0, #0xff
    bne loc_8002BAC
    mov r1, #0x7f
loc_8002BAC:
    lsl r0, r0, #8
    orr r0, r1
    pop {r1,r4-r6}
    add r3, r5, #0
    add r3, #4
    mov r9, r1
    mov r2, #0
loc_8002BBA:
    ldrh r1, [r3,r2]
    cmp r0, r1
    mov r1, r9
    beq loc_8002C1A
    add r2, #2
    cmp r2, #0x10
    blt loc_8002BBA
    mov r1, r9
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge loc_8002C1A
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002C1A
    mov r12, r0
    ldrb r0, [r5]
    cmp r0, #8
    mov r0, r12
    bge loc_8002C1A
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x14
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    push {r1,r2,r4-r6}
    mov r0, r8
    bl sub_8111700
    pop {r1,r2,r4-r6}
    mov r0, #1
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
loc_8002C1A:
    mov r0, #0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8002C28:    .word unk_8027890
dword_8002C2C:    .word 0x2040000
off_8002C30:    .word dword_2033000
// end of function sub_8002B86

.thumb
sub_8002C34:
    push {r0-r7,lr}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    mov r0, #0xff
    mov r1, #0x7f
    lsl r0, r0, #8
    orr r0, r1
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x14
    mov r0, #0
    mvn r0, r0
    str r0, [r5,r7]
    pop {r0-r7,pc}
// end of function sub_8002C34

.thumb
sub_8002C52:
    push {r5,lr}
    pop {r5,pc}
    .balign 4, 0x00
off_8002C58:    .word byte_200F720
    .word dword_8002C60
dword_8002C60:    .word 0x4E550016, 0x504D4F43, 0x7838250A, 0x0
// end of function sub_8002C52

.thumb
sub_8002C70:
    push {r5,lr}
    push {r0-r2}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002C82
    push {r5,lr}
    push {r0-r2}
loc_8002C82:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r0, r1
    beq loc_8002C9A
    ldrb r3, [r5,#0x13]
    mov r1, #0x3e 
    and r3, r1
    lsr r3, r3, #1
    pop {r0-r2}
    bl sub_8025C2A
    pop {r5,pc}
loc_8002C9A:
    pop {r0-r2}
    pop {r5,pc}
// end of function sub_8002C70

.thumb
sub_8002C9E:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    mov r0, #8
    orr r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002C9E

.thumb
sub_8002CB4:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002CB4

.thumb
sub_8002CC6:
    mov r2, #4
    b loc_8002CCA
loc_8002CCA:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    push {r7}
    ldrb r1, [r3,#0x11]
    mov r7, #0xc
    bic r1, r7
    orr r1, r2
    strb r1, [r3,#0x11]
    pop {r7}
    mov r3, r10
    ldr r3, [r3,#0x20]
    ldrb r1, [r3]
    mov r2, #0xc0
    bic r1, r2
    mov r2, #0
    orr r1, r2
    strb r1, [r3]
    strb r0, [r3,#2]
    sub r0, #0x10
    neg r0, r0
    strb r0, [r3,#3]
    mov r0, #0
    strb r0, [r3]
    mov r0, #0x3f 
    strb r0, [r3,#1]
    mov pc, lr
// end of function sub_8002CC6

.thumb
sub_8002D02:
    mov r0, #0xc
    b loc_8002D06
loc_8002D06:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    bic r1, r0
    mov r2, #4
    orr r1, r2
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002D02

.thumb
sub_8002D1A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002D1A

.thumb
sub_8002D2C:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r1, [r3,#0x11]
    mov r2, #0xc
    and r2, r1
    mov r3, r10
    ldr r3, [r3,#0x20]
    ldrb r0, [r3,#2]
    mov pc, lr
// end of function sub_8002D2C

.thumb
sub_8002D42:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r1, [r3,#0x11]
    mov r0, #4
    and r0, r1
    mov pc, lr
// end of function sub_8002D42

.thumb
sub_8002D52:
    push {r5,lr}
    ldr r3, [pc, #0x8002d5c-0x8002d54-4] // loc_3005DC0+1
    mov lr, pc
    bx r3
    pop {r5,pc}
off_8002D5C:    .word loc_3005DC0+1
// end of function sub_8002D52

.thumb
sub_8002D60:
    push {r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002D6E
    push {r5,lr}
loc_8002D6E:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r1, r0
    bne loc_8002D9A
    bl sub_8025BF8
    cmp r0, #0xff
    beq loc_8002D9A
    ldrb r2, [r5,#0x11]
    mov r1, #3
    orr r2, r1
    strb r2, [r5,#0x11]
    push {r7}
    ldrb r7, [r5,#0x13]
    mov r1, #0x3e 
    bic r7, r1
    lsl r0, r0, #1
    orr r7, r0
    strb r7, [r5,#0x13]
    pop {r7}
    mov r0, #1
    pop {r5,pc}
loc_8002D9A:
    mov r0, #0
    pop {r5,pc}
// end of function sub_8002D60

.thumb
sub_8002D9E:
    push {r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002DAC
    push {r5,lr}
loc_8002DAC:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r1, r0
    beq locret_8002DCA
    bic r0, r1
    strb r0, [r5,#0x11]
    ldrb r0, [r5,#0x13]
    add r2, r0, #0
    mov r1, #0x3e 
    and r0, r1
    lsr r0, r0, #1
    bic r2, r1
    strb r2, [r5,#0x13]
    bl sub_8025C1A
locret_8002DCA:
    pop {r5,pc}
// end of function sub_8002D9E

.thumb
sub_8002DCC:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3,#4]
    mov pc, lr
// end of function sub_8002DCC

.thumb
sub_8002DD8:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#4]
    mov pc, lr
// end of function sub_8002DD8

.thumb
sub_8002DE4:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3]
    mov pc, lr
// end of function sub_8002DE4

.thumb
sub_8002DF0:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3]
    mov pc, lr
// end of function sub_8002DF0

.thumb
sub_8002DFC:
    mov r1, #0xf0
    b loc_8002E00
loc_8002E00:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x15]
    mov r2, #0xf0
    bic r0, r2
    orr r0, r1
    strb r0, [r3,#0x15]
    mov pc, lr
// end of function sub_8002DFC

.thumb
sub_8002E14:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x15]
    mov r1, #0xf0
    and r1, r0
    mov pc, lr
// end of function sub_8002E14

.thumb
sub_8002E24:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x15]
    mov r1, #0xf0
    bic r0, r1
    strb r0, [r3,#0x15]
    mov pc, lr
// end of function sub_8002E24

.thumb
sub_8002E36:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#2]
    ldrb r1, [r3,#1]
    cmp r1, #0
    beq loc_8002E4A
    mov r1, #0xc0
    bic r0, r1
loc_8002E4A:
    ldrb r1, [r3]
    ldrb r2, [r3]
    mov pc, lr
// end of function sub_8002E36

.thumb
sub_8002E50:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #8
    and r0, r1
    mov pc, lr
// end of function sub_8002E50

.thumb
sub_8002E60:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r2, #0xc
    ldrb r1, [r3,#0x15]
    bic r1, r2
    lsl r0, r0, #2
    orr r1, r0
    strb r1, [r3,#0x15]
    mov pc, lr
// end of function sub_8002E60

.thumb
sub_8002E76:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #1
    orr r0, r1
    mov r1, #4
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002E76

.thumb
sub_8002E8C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #1
    bic r0, r1
    mov r1, #4
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002E8C

.thumb
sub_8002EA2:
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    ldr r0, [r0]
    lsr r0, r0, #5
    mov pc, lr
// end of function sub_8002EA2

.thumb
sub_8002EB0:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8002ED6
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r2, #0xc
    ldrsh r1, [r3,r2]
    mov r2, #0xe
    ldrsb r2, [r3,r2]
    mov r0, #0x10
    lsl r0, r0, #4
    add r0, #0xff
    and r1, r0
    mov r0, #0xff
    and r2, r0
    mov r0, #1
    mov pc, lr
loc_8002ED6:
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov pc, lr
// end of function sub_8002EB0

.thumb
sub_8002EDE:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x16]
    mov r1, #2
    orr r0, r1
    strb r0, [r3,#0x16]
    mov pc, lr
// end of function sub_8002EDE

.thumb
sub_8002EF0:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x16]
    mov r1, #2
    bic r0, r1
    strb r0, [r3,#0x16]
    mov pc, lr
// end of function sub_8002EF0

.thumb
sub_8002F02:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002F02

.thumb
sub_8002F0E:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002F0E

.thumb
sub_8002F1A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r0, #0
    strh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002F1A

.thumb
sub_8002F28:
    lsl r1, r1, #4
    orr r0, r1
    mov r2, #0x10
    b loc_8002F38
    mov r2, #0x10
    b loc_8002F38
loc_8002F34:
    tst r2, r2
    beq sub_8002F5E
loc_8002F38:
    tst r0, r0
    beq sub_8002F5E
    lsl r0, r0, #8
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    orr r1, r2
    strb r1, [r3,#0x11]
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r1, [r3,#2]
    mov r2, #0xff
    lsl r2, r2, #8
    bic r1, r2
    orr r1, r0
    strh r1, [r3,#2]
    mov pc, lr
// end of function sub_8002F28

.thumb
sub_8002F5E:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0x10
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002F5E

.thumb
sub_8002F70:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x11]
    mov r2, #0x10
    and r2, r0
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#2]
    mov r1, #0xff
    bic r0, r1
    lsr r0, r0, #8
    mov pc, lr
// end of function sub_8002F70

.thumb
sub_8002F8C:
    mov r0, #0
loc_8002F8E:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r2, [r3,#0x13]
    mov r1, #0x30 
    bic r2, r1
    lsl r0, r0, #4
    orr r2, r0
    strb r2, [r3,#0x13]
    and r2, r1
    ldrb r1, [r3,#0x16]
    mov r0, #0x30 
    bic r1, r0
    orr r1, r2
    strb r1, [r3,#0x16]
    mov pc, lr
// end of function sub_8002F8C

.thumb
sub_8002FB0:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x16]
    mov r1, #0x30 
    and r0, r1
    lsr r0, r0, #4
    mov pc, lr
// end of function sub_8002FB0

.thumb
sub_8002FC2:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #4
    orr r0, r1
    mov r1, #1
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002FC2

.thumb
sub_8002FD8:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8002FD8

.thumb
sub_8002FE4:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldr r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8002FE4

.thumb
sub_8002FF0:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r3,#0x2c]
    orr r0, r1
    str r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8002FF0

.thumb
sub_8003006:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r3,#0x2c]
    bic r0, r1
    str r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8003006

.thumb
sub_800301C:
    mov r0, #0
loc_800301E:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x30]
    mov pc, lr
// end of function sub_800301C

.thumb
sub_800302A:
    mov r0, #0
loc_800302C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x34]
    mov pc, lr
// end of function sub_800302A

.thumb
sub_8003038:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #0x20 
    orr r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8003038

.thumb
sub_800304A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #0x20 
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_800304A

.thumb
sub_800305C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x16]
    mov r2, #0xc
    bic r1, r2
    mov r2, #2
    lsl r0, r2
    orr r1, r0
    strb r1, [r3,#0x16]
    ldrb r0, [r3,#3]
    mov r1, #0x40 
    orr r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_800305C

.thumb
sub_800307C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x15]
    mov r2, #0xf0
    bic r1, r2
    lsl r0, r0, #4
    orr r1, r0
    strb r1, [r3,#0x15]
    mov pc, lr
    .balign 4, 0x00
jt_8003094:    .word sub_80038B4+1
    .word sub_8003298+1
    .word sub_8004204+1
    .word sub_80032D0+1
    .word sub_8003324+1
    .word sub_8004440+1
jt_80030AC:    .word sub_80038EE+1
    .word sub_80033B4+1
    .word sub_800425A+1
    .word sub_80033B4+1
    .word sub_80033B4+1
    .word sub_800447A+1
pt_80030C4:    .word byte_200A610
    .word byte_203B180
    .word byte_2006140
    .word byte_203C080
    .word byte_2037D10
    .word byte_200B820
pt_80030DC:    .word dword_200A5FC
    .word unk_2035800
    .word dword_20015D0
    .word unk_20360B0
    .word unk_2037A60
    .word dword_200B140
off_80030F4:    .word 0xA8
    .word 0xD8
    .word 0xD8
    .word 0xD8
    .word 0xC8
    .word 0xB8
// end of function sub_800307C

.thumb
sub_800310C:
    ldr r0, [pc, #0x8003124-0x800310c-4] // dword_2009E40
    ldr r1, [pc, #0x8003128-0x800310e-2] // dword_200A4C0
    ldr r2, [pc, #0x8003120-0x8003110-4] // dword_200B48C
    mov r3, #0
    str r3, [r2]
    str r3, [r0]
    str r1, [r0,#(dword_2009E44 - 0x2009e40)]
    str r0, [r1]
    str r3, [r1,#(dword_200A4C4 - 0x200a4c0)]
    mov pc, lr
off_8003120:    .word dword_200B48C
off_8003124:    .word dword_2009E40
off_8003128:    .word dword_200A4C0
// end of function sub_800310C

.thumb
sub_800312C:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    ldr r7, [pc, #0x800318c-0x8003134-4] // dword_2009E40
loc_8003136:
    ldr r7, [r7,#4]
    ldr r0, [pc, #0x8003190-0x8003138-4] // dword_200A4C0
    cmp r7, r0
    beq loc_8003180
    ldr r0, [pc, #0x80031ac-0x800313e-2] // dword_200B48C
    str r7, [r0]
    mov r5, #0x10
    add r5, r5, r7
    ldrb r4, [r5]
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#9]
    tst r0, r0
    beq loc_8003158
    mov r0, #4
    tst r4, r0
    beq loc_800317E
loc_8003158:
    bl sub_8007920
    beq loc_8003164
    mov r0, #0x10
    tst r4, r0
    beq loc_800317E
loc_8003164:
    ldrb r0, [r5,#2]
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8003194-0x800316c-4] // dword_8003198
    ldr r0, [r0,r1]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    push {r7}
    mov lr, pc
    bx r0
    pop {r7}
loc_800317E:
    b loc_8003136
loc_8003180:
    mov r0, #0
    ldr r1, [pc, #0x80031ac-0x8003182-2] // dword_200B48C
    str r0, [r1]
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800318C:    .word dword_2009E40
off_8003190:    .word dword_200A4C0
off_8003194:    .word dword_8003198
dword_8003198:    .word 0x0
    .word jt_8003A04
    .word 0x0
    .word jt_huge_8003C20
    .word off_8003F58
off_80031AC:    .word dword_200B48C
    .word off_80031B4
off_80031B4:    .word dword_80031C8, dword_80031D0, dword_80031D8, dword_80031E0, dword_80031E8
dword_80031C8:    .word 0x2550001B
    .word 0x783230
dword_80031D0:    .word 0x2545001B
    .word 0x783230
dword_80031D8:    .word 0x254D001B
    .word 0x783230
dword_80031E0:    .word 0x2553001B
    .word 0x783230
dword_80031E8:    .word 0x2546001B
    .word 0x783230
// end of function sub_800312C

.thumb
sub_80031F0:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #4
    ldr r1, [pc, #0x8003244-0x80031fc-4] // dword_8003248
    add r7, r0, r1
    ldr r1, [r7]
    mov r2, #1
    lsl r2, r2, #0x1f
    ldr r3, [r7,#8]
    ldrb r4, [r7,#0xc]
    ldr r5, [r7,#4]
    ldr r6, [r1]
loc_800320E:
    tst r6, r2
    beq loc_800321E
    lsr r2, r2, #1
    add r5, r5, r4
    cmp r5, r3
    blt loc_800320E
    mov r5, #0
    b loc_8003240
loc_800321E:
    orr r6, r2
    str r6, [r1]
    add r5, #0x10
    mov r0, #4
    add r0, r0, r5
    ldrb r1, [r7,#0xd]
    bl f900_8000930
    ldrb r0, [r7,#0xe]
    strb r0, [r5]
    ldr r7, [sp]
    ldmia r7!, {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    str r3, [r5,#0x3c]
    str r4, [r5,#4]
loc_8003240:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
off_8003244:    .word dword_8003248
dword_8003248:    .word 0x0, 0x0, 0x0, 0x0
    .word unk_2035800
    .word unk_203B170
    .word byte_203B830
    .word 0x198CD8, 0x0, 0x0, 0x0, 0x0
    .word unk_20360B0
    .word unk_203C070
    .word word_203DB70
    .word 0x98CD8
    .word 0x2037A60
    .word 0x2037D00
    .word 0x2039600
    .word 0x197CC8
// end of function sub_80031F0

.thumb
sub_8003298:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #1
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_80032B0
    bl sub_800335C
loc_80032B0:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_8003298

.thumb
sub_80032B4:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #1
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_80032CC
    bl sub_8003384
loc_80032CC:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_80032B4

.thumb
sub_80032D0:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_80032E8
    bl sub_800335C
loc_80032E8:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_80032D0

.thumb
sub_80032EC:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_8003304
    bl sub_8003384
loc_8003304:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_80032EC

.thumb
sub_8003308:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_8003320
    bl sub_800339C
loc_8003320:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_8003308

.thumb
sub_8003324:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #4
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_800333C
    bl sub_800335C
loc_800333C:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_8003324

.thumb
sub_8003340:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #1
    mov r1, sp
    bl sub_80031F0
    tst r5, r5
    beq loc_8003358
    bl sub_8003384
loc_8003358:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_8003340

.thumb
sub_800335C:
    push {lr}
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x8003380-0x8003362-2] // dword_200B48C
    ldr r1, [r1]
    cmp r0, r1
    beq loc_800337A
    tst r1, r1
    beq loc_800337A
    str r1, [r0]
    ldr r2, [r1,#4]
    str r0, [r1,#4]
    str r2, [r0,#4]
    str r0, [r2]
    b locret_800337E
loc_800337A:
    bl sub_8003384
locret_800337E:
    pop {pc}
off_8003380:    .word dword_200B48C
// end of function sub_800335C

.thumb
sub_8003384:
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x8003398-0x8003388-4] // dword_200A4C0
    ldr r2, [r1]
    str r0, [r2,#4]
    str r2, [r0]
    str r1, [r0,#4]
    str r0, [r1]
    mov pc, lr
    .balign 4, 0x00
off_8003398:    .word dword_200A4C0
// end of function sub_8003384

.thumb
sub_800339C:
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x80033b0-0x80033a0-4] // dword_2009E40
    ldr r2, [r1,#(dword_2009E44 - 0x2009e40)]
    str r0, [r1,#(dword_2009E44 - 0x2009e40)]
    str r2, [r0,#4]
    str r1, [r0]
    str r0, [r2]
    mov pc, lr
    .byte 0, 0
off_80033B0:    .word dword_2009E40
// end of function sub_800339C

.thumb
sub_80033B4:
    push {r5,lr}
    mov r1, #0
    strb r1, [r5]
    ldrb r1, [r5,#2]
    mov r2, #0xf
    and r1, r2
    lsl r1, r1, #2
    ldr r2, [pc, #0x80033e8-0x80033c2-2] // pt_80030DC
    ldr r1, [r2,r1]
    ldrb r2, [r5,#3]
    mov r3, #1
    lsl r3, r3, #0x1f
    lsr r3, r2
    ldr r2, [r1]
    bic r2, r3
    str r2, [r1]
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [r0]
    ldr r2, [r0,#4]
    str r2, [r1,#4]
    str r1, [r2]
    bl sub_8002D9E
    pop {r5,pc}
    .balign 4, 0x00
off_80033E8:    .word pt_80030DC
// end of function sub_80033B4

.thumb
sub_80033EC:
    push {r4,r7,lr}
    lsl r1, r0, #2
    ldr r7, [pc, #0x8003484-0x80033f0-4] // pt_80030DC
    mov r2, #0
    ldr r1, [r7,r1]
    str r2, [r1]
    ldr r7, [pc, #0x8003420-0x80033f8-4] // off_8003424
    lsl r1, r0, #4
    add r7, r7, r1
    ldr r0, [r7]
    ldrh r1, [r7,#8]
    bl f900_80009DC
    ldr r0, [r7,#4]
    mov r1, #0
    ldrb r2, [r7,#0xa]
    ldrb r3, [r7,#0xc]
    ldrb r4, [r7,#0xb]
loc_8003410:
    strb r2, [r0,#2]
    strb r1, [r0,#3]
    add r0, r0, r4
    add r1, #1
    cmp r1, r3
    blt loc_8003410
    pop {r4,r7,pc}
    .byte 0, 0
off_8003420:    .word off_8003424
off_8003424:    .word byte_200A610
    .word byte_200A610
    .word 0xA87000A8, 0x1, 0x203B170, 0x203B180, 0xD89106C0, 0x8
    .word 0x2006140, 0x2006140, 0xD8A20D80, 0x10, 0x203C070, 0x203C080
    .word 0xD8931B00, 0x20, 0x2037D00, 0x2037D10, 0xC8841900, 0x20
    .word 0x200B820, 0x200B820, 0xB8851700, 0x20
off_8003484:    .word pt_80030DC
// end of function sub_80033EC

.thumb
sub_8003488:
    push {lr}
    mov r0, #0
    bl sub_80033EC
    pop {pc}
// end of function sub_8003488

.thumb
sub_8003492:
    push {lr}
    mov r0, #1
    bl sub_80033EC
    pop {pc}
// end of function sub_8003492

.thumb
sub_800349C:
    push {lr}
    mov r0, #3
    bl sub_80033EC
    pop {pc}
// end of function sub_800349C

.thumb
sub_80034A6:
    push {lr}
    mov r0, #4
    bl sub_80033EC
    pop {pc}
// end of function sub_80034A6

.thumb
sub_80034B0:
    push {lr}
    mov r0, #2
    bl sub_80033EC
    pop {pc}
// end of function sub_80034B0

.thumb
sub_80034BA:
    push {lr}
    mov r0, #5
    bl sub_80033EC
    pop {pc}
// end of function sub_80034BA

.thumb
sub_80034C4:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
loc_80034CA:
    ldr r0, [pc, #0x800362c-0x80034ca-2] // jt_8003094
    ldrb r1, [r7]
    cmp r1, #0xff
    beq loc_80034F2
    lsl r1, r1, #2
    ldr r6, [r0,r1]
    push {r4,r7}
    ldrb r0, [r7,#1]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldr r3, [r7,#0xc]
    ldr r4, [r7,#0x10]
    mov lr, pc
    bx r6
    pop {r4,r7}
    tst r5, r5
    beq loc_80034EE
    add r4, #1
loc_80034EE:
    add r7, #0x14
    b loc_80034CA
loc_80034F2:
    add r0, r4, #0
    pop {r4-r7,pc}
// end of function sub_80034C4

.thumb
sub_80034F6:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8003548-0x80034f8-4] // jt_80030AC
    ldr r2, [pc, #0x800354c-0x80034fa-2] // pt_80030C4
    ldr r3, [pc, #0x8003550-0x80034fc-4] // pt_80030DC
    ldr r4, [pc, #0x8003554-0x80034fe-2] // off_80030F4
loc_8003500:
    mov r5, #0
    cmp r0, r5
    beq locret_8003546
    mov r5, #1
    and r5, r0
    beq loc_800353A
    push {r0}
    ldr r0, [r2]
    mov r5, #0x80
    lsl r5, r5, #0x18
    ldr r6, [r3]
    ldr r6, [r6]
loc_8003518:
    tst r6, r5
    beq loc_8003528
    push {r0-r6}
    ldr r7, [r1]
    add r5, r0, #0
    mov lr, pc
    bx r7
    pop {r0-r6}
loc_8003528:
    mov r7, #0
    bic r6, r5
    lsr r5, r5, #1
    cmp r6, r7
    beq loc_8003538
    ldr r7, [r4]
    add r0, r0, r7
    b loc_8003518
loc_8003538:
    pop {r0}
loc_800353A:
    lsr r0, r0, #1
    add r1, #4
    add r2, #4
    add r3, #4
    add r4, #4
    b loc_8003500
locret_8003546:
    pop {r4-r7,pc}
off_8003548:    .word jt_80030AC
off_800354C:    .word pt_80030C4
off_8003550:    .word pt_80030DC
off_8003554:    .word off_80030F4
// end of function sub_80034F6

.thumb
sub_8003558:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0xc]
    mov r2, #2
    ldrsh r1, [r0,r2]
    ldr r4, [r3,#0x38]
    asr r4, r4, #0x10
    sub r1, r1, r4
    ldr r6, [pc, #0x80035bc-0x8003568-4] // byte_200A3C8
    ldrb r6, [r6]
    tst r6, r6
    beq loc_8003572
    neg r1, r1
loc_8003572:
    add r1, #0x78 
    mov r2, #6
    ldrsh r6, [r0,r2]
    ldr r4, [r3,#0x3c]
    asr r4, r4, #0x10
    sub r6, r6, r4
    add r6, #0x50 
    mov r2, #0xa
    ldrsh r4, [r0,r2]
    ldr r2, [r3,#0x40]
    asr r2, r2, #0x10
    sub r4, r4, r2
    sub r6, r6, r4
    mov r2, #0x20 
    neg r2, r2
    cmp r1, r2
    blt loc_80035B4
    mov r2, #0xf0
    add r2, #0x20 
    cmp r1, r2
    bge loc_80035B4
    mov r2, #0x20 
    neg r2, r2
    cmp r6, r2
    blt loc_80035B4
    mov r2, #0xa0
    add r2, #0x40 
    cmp r6, r2
    bge loc_80035B4
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #1
    pop {r4-r7,pc}
loc_80035B4:
    mov r0, #0xa0
    mov r1, #0x50 
    mov r2, #0
    pop {r4-r7,pc}
off_80035BC:    .word byte_200A3C8
// end of function sub_8003558

.thumb
sub_80035C0:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r1, [r0]
    ldr r4, [r3,#0x38]
    sub r1, r1, r4
    mov r8, r1
    ldr r6, [r0,#4]
    ldr r4, [r3,#0x3c]
    sub r6, r6, r4
    add r1, r1, r6
    asr r1, r1, #0x10
    add r1, #0x78 
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    add r7, r6, #0
    ldr r4, [r0,#8]
    sub r6, r6, r4
    ldr r2, [r3,#0x40]
    add r6, r6, r2
    asr r6, r6, #0x10
    add r6, #0x52 
    mov r2, #0x20 
    neg r2, r2
    cmp r1, r2
    blt loc_800361E
    mov r2, #0xf0
    add r2, #0x20 
    cmp r1, r2
    bge loc_800361E
    mov r2, #0x20 
    neg r2, r2
    cmp r6, r2
    blt loc_800361E
    mov r2, #0xa0
    add r2, #0x40 
    cmp r6, r2
    bge loc_800361E
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #1
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
loc_800361E:
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #0
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800362C:    .word jt_8003094
// end of function sub_80035C0

.thumb
sub_8003630:
    push {lr}
    ldr r0, [pc, #0x8003644-0x8003632-2] // unk_2008930
    mov r1, #0x14
    bl f900_8000930
    ldr r0, [pc, #0x8003648-0x800363a-2] // dword_200B130
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
off_8003644:    .word unk_2008930
off_8003648:    .word dword_200B130
// end of function sub_8003630

.thumb
sub_800364C:
    push {lr}
    mov r7, #0x80
    lsl r7, r7, #8
    add r0, r0, r7
    lsr r0, r0, #0x10
    add r1, r1, r7
    lsr r1, r1, #0x10
    lsl r1, r1, #0x10
    orr r1, r0
    add r2, r2, r7
    lsr r2, r2, #0x10
    lsl r3, r3, #0x10
    orr r2, r3
    ldr r7, [pc, #0x8003690-0x8003666-2] // dword_200B130
    ldr r0, [r7]
    cmp r0, #0x20 
    nop 
    bmi loc_8003672
    pop {pc}
loc_8003672:
    mov r7, #0x14
    mul r7, r0
    ldr r0, [pc, #0x8003694-0x8003676-2] // unk_2008930
    add r7, r7, r0
    str r1, [r7]
    str r2, [r7,#4]
    str r4, [r7,#8]
    str r5, [r7,#0xc]
    str r6, [r7,#0x10]
    ldr r7, [pc, #0x8003690-0x8003684-4] // dword_200B130
    ldr r0, [r7]
    add r0, #1
    str r0, [r7]
    pop {pc}
    .byte 0, 0
off_8003690:    .word dword_200B130
off_8003694:    .word unk_2008930
// end of function sub_800364C

.thumb
sub_8003698:
    push {r5,lr}
    mov r0, #0
loc_800369C:
    ldr r2, [pc, #0x8003700-0x800369c-4] // dword_200B130
    ldr r2, [r2]
    sub r2, #1
    cmp r0, r2
    bmi loc_80036AE
    mov r0, #0
    ldr r1, [pc, #0x8003700-0x80036a8-4] // dword_200B130
    str r0, [r1]
    pop {r5,pc}
loc_80036AE:
    add r1, r0, #1
    push {r0}
loc_80036B2:
    push {r0,r1}
    ldr r5, [pc, #0x8003704-0x80036b4-4] // unk_2008930
    mov r6, #0x14
    mul r0, r6
    add r3, r5, r0
    mul r1, r6
    add r4, r5, r1
    add r0, r3, #0
    add r1, r4, #0
    push {r3,r4}
    bl sub_8003708
    pop {r3,r4}
    tst r0, r0
    beq loc_80036EC
    ldr r0, [r3,#0xc]
    ldr r1, [r4,#8]
    and r0, r1
    ldr r7, [r3,#0x10]
    ldr r1, [r7]
    orr r0, r1
    str r0, [r7]
    ldr r0, [r3,#8]
    ldr r1, [r4,#0xc]
    and r0, r1
    ldr r7, [r4,#0x10]
    ldr r1, [r7]
    orr r0, r1
    str r0, [r7]
loc_80036EC:
    pop {r0,r1}
    add r1, #1
    ldr r2, [pc, #0x8003700-0x80036f0-4] // dword_200B130
    ldr r2, [r2]
    cmp r1, r2
    bmi loc_80036B2
    pop {r0}
    add r0, #1
    b loc_800369C
    .byte 0, 0
off_8003700:    .word dword_200B130
off_8003704:    .word unk_2008930
// end of function sub_8003698

.thumb
sub_8003708:
    push {lr}
    mov r6, #0
    ldrsh r2, [r0,r6]
    ldrsh r3, [r1,r6]
    sub r2, r2, r3
    mov r6, #2
    ldrsh r3, [r0,r6]
    ldrsh r4, [r1,r6]
    sub r3, r3, r4
    add r5, r2, #0
    mul r2, r5
    add r5, r3, #0
    mul r3, r5
    add r2, r2, r3
    ldrb r3, [r0,#6]
    ldrb r4, [r1,#6]
    add r3, r3, r4
    add r4, r3, #0
    mul r3, r4
    cmp r2, r3
    bmi loc_8003736
    mov r0, #0
    pop {pc}
loc_8003736:
    mov r6, #4
    ldrsh r2, [r0,r6]
    ldrsh r3, [r1,r6]
    cmp r2, r3
    bmi loc_800374C
    ldrb r4, [r1,#7]
    add r3, r3, r4
    cmp r2, r3
    ble loc_8003758
    mov r0, #0
    pop {pc}
loc_800374C:
    ldrb r4, [r0,#7]
    add r2, r2, r4
    cmp r3, r2
    ble loc_8003758
    mov r0, #0
    pop {pc}
loc_8003758:
    mov r0, #1
    pop {pc}
off_800375C:    .word sub_809ED84+1
    .word 0x0, 0x0, 0x0
    .word sub_809FFA6+1
    .word 0x0, 0x0
    .word 0x1, 0x80A02DF, 0x0, 0x0
    .word 0x1, 0x80A04C1, 0x0, 0x0
    .word 0x1, 0x80A1BF9, 0x0, 0x0
    .word 0x1, 0x80A0669, 0x0, 0x0, 0x0
    .word sub_80A2C2E+1
    .word 0x0, 0x0
    .word 0x1, 0x80A4205, 0x0, 0x0
    .word 0x1
// end of function sub_8003708

.thumb
sub_80037DC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80038a8-0x80037de-2] // byte_20004D0
    mov r1, #0x48 
    bl f900_8000930
    pop {r4-r7,pc}
// end of function sub_80037DC

.thumb
sub_80037E8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x80037ea-2] // byte_20004D0
    push {r0}
    add r0, r5, #0
    mov r1, #0x48 
    bl f900_8000930
    pop {r0}
    strb r0, [r5,#(byte_20004D1 - 0x20004d0)]
    ldr r7, [pc, #0x80038ac-0x80037fa-2] // off_800375C
    mov r1, #0x10
    ldrb r0, [r5,#(byte_20004D1 - 0x20004d0)]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#8]
    str r0, [r5,#(dword_20004D4 - 0x20004d0)]
    ldr r0, [r7,#0xc]
    strb r0, [r5,#(byte_20004D2 - 0x20004d0)]
    mov r0, #1
    strb r0, [r5]
    strb r0, [r5,#(byte_20004D3 - 0x20004d0)]
    pop {r4-r7,pc}
// end of function sub_80037E8

.thumb
sub_8003814:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x8003816-2] // byte_20004D0
    ldr r7, [pc, #0x80038ac-0x8003818-4] // off_800375C
    mov r1, #0x10
    ldrb r0, [r5,#(byte_20004D1 - 0x20004d0)]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    tst r0, r0
    beq loc_800382C
    mov lr, pc
    bx r0
loc_800382C:
    add r0, r5, #0
    mov r1, #0x48 
    bl f900_8000930
    pop {r4-r7,pc}
// end of function sub_8003814

.thumb
sub_8003836:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x8003838-4] // byte_20004D0
    ldrb r0, [r5,#(byte_20004D2 - 0x20004d0)]
    tst r0, r0
    bne loc_8003848
    add r0, r5, #0
    mov r1, #0x48 
    bl f900_8000930
loc_8003848:
    mov r0, #1
    strb r0, [r5,#(byte_20004D3 - 0x20004d0)]
    pop {r4-r7,pc}
// end of function sub_8003836

.thumb
sub_800384E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x8003850-4] // byte_20004D0
    mov r0, #1
    strb r0, [r5,#(byte_20004D3 - 0x20004d0)]
    pop {r4-r7,pc}
// end of function sub_800384E

.thumb
sub_8003858:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x800385a-2] // byte_20004D0
    mov r0, #1
    ldrb r0, [r5]
    tst r0, r0
    beq locret_800386C
    mov r1, #0x80
    ldrb r0, [r5]
    orr r0, r1
    strb r0, [r5]
locret_800386C:
    pop {r4-r7,pc}
// end of function sub_8003858

.thumb
sub_800386E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x8003870-4] // byte_20004D0
    mov r0, #1
    ldrb r0, [r5]
    mov r1, #0x7f
    and r0, r1
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_800386E

.thumb
sub_800387E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80038a8-0x8003880-4] // byte_20004D0
    ldrb r0, [r5]
    tst r0, r0
    beq locret_800389E
    mov r1, #0x80
    tst r0, r1
    bne locret_800389E
    ldr r7, [pc, #0x80038ac-0x800388e-2] // off_800375C
    mov r1, #0x10
    ldrb r0, [r5,#(byte_20004D1 - 0x20004d0)]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7]
    mov lr, pc
    bx r0
locret_800389E:
    pop {r4-r7,pc}
// end of function sub_800387E

.thumb
sub_80038A0:
    ldr r1, [pc, #0x80038a8-0x80038a0-4] // byte_20004D0
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
off_80038A8:    .word byte_20004D0
off_80038AC:    .word off_800375C
off_80038B0:    .word loc_80A5CA0+1
// end of function sub_80038A0

.thumb
sub_80038B4:
    push {r0-r4,lr}
    ldr r0, [pc, #0x80039f8-0x80038b6-2] // dword_200A5FC
    ldr r2, [r0]
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x80039fc-0x80038be-2] // byte_200A610
    ldr r3, [pc, #0x8003a00-0x80038c0-4] // unk_200A6B8
loc_80038C2:
    tst r2, r1
    beq loc_80038D0
    lsr r1, r1, #1
    add r5, #0xa8
    cmp r5, r3
    bge loc_80038EA
    b loc_80038C2
loc_80038D0:
    orr r2, r1
    str r2, [r0]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x24]
    str r2, [r5,#0x28]
    str r3, [r5,#0x2c]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_80038EA:
    mov r5, #0
    pop {r0-r4,pc}
// end of function sub_80038B4

.thumb
sub_80038EE:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    lsr r0, r1
    ldr r1, [pc, #0x80039f8-0x80038f8-4] // dword_200A5FC
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov r1, #0
    strb r1, [r5]
    bl sub_8002D9E
    pop {pc}
// end of function sub_80038EE

.thumb
sub_800390A:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    sub sp, sp, #8
    ldr r5, [pc, #0x80039fc-0x8003916-2] // byte_200A610
    ldr r0, [pc, #0x8003958-0x8003918-4] // off_80038B0
    ldr r1, [pc, #0x8003a00-0x800391a-2] // unk_200A6B8
    str r0, [sp]
    str r1, [sp,#4]
loc_8003920:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_8003944
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r1, [r7,#9]
    tst r1, r1
    beq loc_8003938
    mov r1, #4
    tst r0, r1
    beq loc_8003944
loc_8003938:
    ldr r0, [sp]
    ldrb r1, [r5,#(byte_200A611 - 0x200a610)]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_8003944:
    add r5, #0xa8
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_8003920
    add sp, sp, #8
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8003958:    .word off_80038B0
// end of function sub_800390A

.thumb
sub_800395C:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #1
    mov r1, #0
    ldr r5, [pc, #0x80039fc-0x800396a-2] // byte_200A610
loc_800396C:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8003998
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x80039d0-0x800397a-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #0
    ldr r1, [pc, #0x80039cc-0x8003982-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0x70 
    ldr r2, [pc, #0x80039d4-0x800398e-2] // =0x2C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_80039B4
loc_8003998:
    add r4, r5, #0
    add r4, #0x70 
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_80039B4
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x80039d0-0x80039ac-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_80039B4:
    add r1, #1
    add r5, #0xa8
    cmp r1, r0
    blt loc_800396C
    mov r0, #0
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_80039CC:    .word loc_3005C00+1
off_80039D0:    .word loc_3005DC0+1
unk_80039D4:    .byte 0x2D 
    .byte 0x60 
    .byte 0
    .byte 3
// end of function sub_800395C

.thumb
sub_80039D8:
    push {lr}
    mov r0, #0
    bl sub_80029E4
    pop {pc}
// end of function sub_80039D8

.thumb
sub_80039E2:
    mov r0, #0
    ldr r3, [pc, #0x80039fc-0x80039e4-4] // byte_200A610
loc_80039E6:
    add r1, r3, #0
    add r1, #0x70 
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xa8
    add r0, #1
    cmp r0, #1
    blt loc_80039E6
    mov pc, lr
off_80039F8:    .word dword_200A5FC
off_80039FC:    .word byte_200A610
off_8003A00:    .word unk_200A6B8
jt_8003A04:    .word sub_80B3514+1
    .word loc_80B351C+1
    .word loc_80B35D0+1
    .word loc_80B3C80+1
    .word loc_80B4104+1
    .word loc_80B5018+1
    .word nullsub_67+1
    .word loc_80B5C98+1
    .word loc_80B621C+1
    .word loc_80B68B4+1
    .word loc_80B73CC+1
    .word loc_80B7738+1
    .word loc_80B7DB8+1
    .word loc_80B8210+1
    .word loc_80B8524+1
    .word loc_80B87B0+1
    .word loc_80B89C4+1
    .word loc_80B8BBC+1
    .word loc_80B928E+1
    .word loc_80B94D0+1
    .word loc_80B9978+1
    .word loc_80B9B20+1
    .word loc_80BA078+1
    .word loc_80BA3D0+1
    .word loc_80BA7C0+1
    .word loc_80BAD34+1
    .word loc_80BAF4C+1
    .word loc_80BB11C+1
    .word loc_80BB5D0+1
    .word loc_80BC080+1
    .word loc_80BC398+1
    .word loc_80BC9BC+1
    .word loc_80BD030+1
    .word loc_80BD44C+1
    .word loc_80BD95C+1
    .word loc_80BE104+1
    .word loc_80BE2E8+1
    .word loc_80BE804+1
    .word loc_80BEAD4+1
    .word loc_80BF04C+1
    .word loc_80BF5C4+1
    .word loc_80BFA58+1
    .word loc_80C0360+1
    .word loc_80C1158+1
    .word loc_80C147C+1
    .word loc_80C1AA0+1
    .word loc_80C26D8+1
    .word loc_80C29E4+1
    .word loc_80C317C+1
    .word loc_80C34A4+1
    .word loc_80C373C+1
    .word loc_80C3A38+1
    .word loc_80C3CF0+1
    .word loc_80C3EFC+1
    .word loc_80C45D4+1
    .word loc_80C5860+1
    .word loc_80C5AC4+1
    .word loc_80C5FA4+1
    .word loc_80C61B8+1
    .word loc_80C6790+1
    .word loc_80C6E14+1
    .word loc_80C7178+1
    .word loc_80C762C+1
    .word loc_80C77A8+1
    .word loc_80C7C84+1
    .word loc_80C8060+1
    .word loc_80C8338+1
    .word loc_80C8528+1
    .word loc_80C8968+1
    .word loc_80C8C04+1
    .word loc_80C8E00+1
    .word loc_80C90E8+1
    .word dword_80C9518+17
    .word dword_80C9518+565
    .word loc_80C9A2C+1
    .word loc_80CA404+1
    .word loc_80CA6AC+1
    .word loc_80CA8F4+1
    .word loc_80CAB24+1
    .word loc_80CAD00+1
    .word loc_80CB03C+1
    .word loc_80CB260+1
    .word loc_80CB64C+1
    .word loc_80CBA80+1
    .word loc_80CBBF0+1
    .word loc_80CBD80+1
    .word loc_80CBF40+1
    .word loc_80CC2CC+1
    .word loc_80CC518+1
    .word loc_80CC620+1
    .word loc_80CC830+1
    .word loc_80CC9C0+1
    .word loc_80CCB90+1
    .word loc_80CCE50+1
    .word loc_80CD074+1
// end of function sub_80039E2

.thumb
sub_8003B80:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #8
    mov r1, #0
    ldr r5, [pc, #0x8003c1c-0x8003b8e-2] // byte_203B180
loc_8003B90:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8003BBC
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003bf4-0x8003b9e-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #1
    ldr r1, [pc, #0x8003bf0-0x8003ba6-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x90
    ldr r2, [pc, #0x8003bf8-0x8003bb2-2] // =0x2C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_8003BD8
loc_8003BBC:
    add r4, r5, #0
    add r4, #0x90
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8003BD8
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003bf4-0x8003bd0-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_8003BD8:
    add r1, #1
    add r5, #0xd8
    cmp r1, r0
    blt loc_8003B90
    mov r0, #1
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8003BF0:    .word loc_3005C00+1
off_8003BF4:    .word loc_3005DC0+1
unk_8003BF8:    .byte 0x2D 
    .byte 0x60 
    .byte 0
    .byte 3
// end of function sub_8003B80

.thumb
sub_8003BFC:
    push {lr}
    mov r0, #1
    bl sub_80029E4
    pop {pc}
// end of function sub_8003BFC

.thumb
sub_8003C06:
    mov r0, #0
    ldr r3, [pc, #0x8003c1c-0x8003c08-4] // byte_203B180
loc_8003C0A:
    add r1, r3, #0
    add r1, #0x90
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #8
    blt loc_8003C0A
    mov pc, lr
off_8003C1C:    .word byte_203B180
jt_huge_8003C20:    .word loc_80CD224+1
    .word loc_80CD370+1
    .word loc_80CD4EC+1
    .word loc_80CD61C+1
    .word loc_80CD72C+1
    .word loc_80CD8DC+1
    .word loc_80CDC54+1
    .word loc_80CDDA8+1
    .word loc_80CDF94+1
    .word loc_80CE1C8+1
    .word loc_80CE3C0+1
    .word loc_80CE5D0+1
    .word loc_80CE730+1
    .word loc_80CE964+1
    .word loc_80CEDA8+1
    .word loc_80CEEC4+1
    .word loc_80CF024+1
    .word loc_80CF1F0+1
    .word loc_80CF310+1
    .word loc_80CF4A8+1
    .word loc_80CF65C+1
    .word loc_80CF968+1
    .word sub_80CFAA0+1
    .word loc_80CFC38+1
    .word loc_80CFD4C+1
    .word loc_80CFE70+1
    .word loc_80D003E+1
    .word loc_80D01E8+1
    .word loc_80D044C+1
    .word loc_80D07AC+1
    .word loc_80D0964+1
    .word 0x80D0AAD
    .word 0x80D0C55
    .word 0x80D0EED
    .word 0x80D0FC1
    .word 0x80D11AD
    .word 0x80D1339
    .word 0x80D1569
    .word 0x80D162D
    .word 0x80D1835
    .word 0x80D1B15
    .word 0x80D1CC1
    .word 0x80D1EF1
    .word 0x80D2115
    .word 0x80D224D
    .word 0x80D2459
    .word 0x80D2679
    .word 0x80D2A19
    .word 0x80D2CD9
    .word 0x80D2ECD
    .word 0x80D3125
    .word 0x80D3359
    .word 0x80D3639
    .word 0x80D373D
    .word 0x80D396D
    .word 0x80D3DE1
    .word 0x80D3F41
    .word 0x80D4049
    .word 0x80D45CD
    .word 0x80D4805
    .word 0x80D49F5
    .word 0x80D4C21
    .word 0x80D4E31
    .word 0x80D52B1
    .word 0x80D54C9
    .word sub_80D5640+1
    .word loc_80D57DE+1
    .word sub_80D5A74+1
    .word loc_80D5B40+1
    .word loc_80D5CE4+1
    .word loc_80D5EE8+1
    .word loc_80D6010+1
    .word loc_80D6378+1
    .word loc_80D6614+1
    .word loc_80D67BC+1
    .word loc_80D6AE8+1
    .word loc_80D6DC4+1
    .word loc_80D6FF0+1
    .word loc_80D717C+1
    .word loc_80D72B8+1
    .word loc_80D745C+1
    .word loc_80D78A8+1
    .word loc_80D7A54+1
    .word loc_80D7C84+1
    .word loc_80D7FD4+1
    .word loc_80D81E8+1
    .word loc_80D849A+1
    .word loc_80D86A0+1
    .word loc_80D8768+1
    .word loc_80D88C8+1
    .word loc_80D8AB8+1
    .word loc_80D8BA4+1
    .word loc_80D8DEC+1
    .word loc_80D8FB8+1
    .word loc_80D91C4+1
    .word sub_80D9370+1
    .word loc_80D94BC+1
    .word loc_80D9718+1
    .word loc_80D99B8+1
    .word loc_80D9B48+1
    .word loc_80D9CCC+1
    .word loc_80D9E90+1
    .word loc_80DA110+1
    .word loc_80DA320+1
    .word loc_80DA5A4+1
    .word loc_80DA754+1
    .word loc_80DA980+1
    .word loc_80DAB44+1
    .word sub_80DAE44+1
    .word loc_80DAEAC+1
    .word loc_80DAFDC+1
    .word loc_80DB174+1
    .word sub_80DB2E8+1
    .word sub_80DB430+1
    .word sub_80DB5EC+1
    .word loc_80DB6D8+1
    .word loc_80DBADC+1
    .word loc_80DBB90+1
    .word loc_80DBC84+1
    .word loc_80DBF38+1
    .word loc_80DC22C+1
    .word loc_80DC568+1
    .word loc_80DC69C+1
    .word loc_80DC994+1
    .word loc_80DCB4C+1
    .word loc_80DCC98+1
    .word loc_80DCF9C+1
    .word loc_80DD144+1
    .word loc_80DD28C+1
    .word loc_80DD428+1
    .word loc_80DD688+1
    .word loc_80DD8DC+1
    .word loc_80DDA24+1
    .word loc_80DDCDE+1
    .word loc_80DDEDC+1
    .word loc_80DE050+1
    .word loc_80DE1C0+1
    .word loc_80DE504+1
    .word loc_80DE778+1
    .word loc_80DE884+1
    .word loc_80DEA60+1
    .word loc_80DEC50+1
    .word loc_80DEEDC+1
    .word loc_80DF018+1
    .word loc_80DF25C+1
    .word loc_80DF3D4+1
    .word loc_80DF57C+1
    .word loc_80DF6E8+1
    .word loc_80DF8A0+1
    .word loc_80DF968+1
    .word loc_80DFC44+1
    .word loc_80DFE7C+1
    .word loc_80E007C+1
    .word loc_80E0208+1
    .word loc_80E0394+1
    .word loc_80E04E8+1
    .word loc_80E059C+1
    .word loc_80E074C+1
    .word loc_80E0A36+1
    .word loc_80E0BC4+1
    .word loc_80E0CFC+1
    .word loc_80E0F18+1
    .word loc_80E117C+1
    .word loc_80E12EC+1
    .word loc_80E14B8+1
// end of function sub_8003C06

.thumb
sub_8003EB4:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x20 
    mov r1, #0
    ldr r5, [pc, #0x8003f50-0x8003ec2-2] // byte_203C080
loc_8003EC4:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8003EF0
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003f28-0x8003ed2-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #3
    ldr r1, [pc, #0x8003f24-0x8003eda-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x90
    ldr r2, [pc, #0x8003f2c-0x8003ee6-2] // =0x2C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_8003F0C
loc_8003EF0:
    add r4, r5, #0
    add r4, #0x90
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8003F0C
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003f28-0x8003f04-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_8003F0C:
    add r1, #1
    add r5, #0xd8
    cmp r1, r0
    blt loc_8003EC4
    mov r0, #3
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8003F24:    .word loc_3005C00+1
off_8003F28:    .word loc_3005DC0+1
unk_8003F2C:    .byte 0x2D 
    .byte 0x60 
    .byte 0
    .byte 3
// end of function sub_8003EB4

.thumb
sub_8003F30:
    push {lr}
    mov r0, #3
    bl sub_80029E4
    pop {pc}
// end of function sub_8003F30

.thumb
sub_8003F3A:
    mov r0, #0x30 
    ldr r3, [pc, #0x8003f54-0x8003f3c-4] // unk_203C070
loc_8003F3E:
    add r1, r3, #0
    add r1, #0x90
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #0x20 
    blt loc_8003F3E
    mov pc, lr
off_8003F50:    .word byte_203C080
off_8003F54:    .word unk_203C070
off_8003F58:    .word loc_80E1744+1
dword_8003F5C:    .word 0x80E17F0, 0x80E17F1, 0x80E1E55, 0x80E1FB5, 0x80E204D
    .word 0x80E21B9, 0x80E2309, 0x80E255D, 0x80E2805, 0x80E2909
    .word 0x80E2A45, 0x80E2B15, 0x80E2DB1, 0x80E2EDD, 0x80E2FAD
    .word 0x80E30D9, 0x80E3219, 0x80E32D1, 0x80E3505, 0x80E36E1
    .word 0x80E3771, 0x80E3841, 0x80E3981, 0x80E39D1, 0x80E3AA1
    .word 0x80E3B7D, 0x80E3CED, 0x80E3DF5, 0x80E3EF5, 0x80E3FCD
    .word 0x80E423D, 0x80E446D, 0x80E4501, 0x80E4635, 0x80E47D1
    .word 0x80E48EF, 0x80E49B9, 0x80E4A6D, 0x80E4B21, 0x80E4E41
    .word 0x80E4F21, 0x80E4FB5, 0x80E50A1, 0x80E526D, 0x80E5339
    .word 0x80E5461, 0x80E5619, 0x80E56D1, 0x80E578D, 0x80E5A29
    .word 0x80E5ACD, 0x80E5B69, 0x80E5D11, 0x80E5DCD, 0x80E5F85
    .word 0x80E6029, 0x80E6105, 0x80E6199, 0x80E6261, 0x80E6345
    .word 0x80E6349, 0x80E63D5, 0x80E64B9, 0x80E65F1, 0x80E66F9
    .word 0x80E68F1, 0x80E6A1D, 0x80E6C4D, 0x80E6D40, 0x80E6D41
    .word 0x80E6E6D, 0x80E700D
    .word loc_80E711C+1
    .word loc_80E71E8+1
    .word loc_80E72B4+1
    .word loc_80E73B8+1
    .word loc_80E75F4+1
    .word loc_80E76C0+1
    .word loc_80E7890+1
    .word loc_80E7AC8+1
    .word loc_80E7BB8+1
    .word loc_80E7DA8+1
    .word loc_80E7E5C+1
    .word loc_80E7EEC+1
    .word loc_80E7FC4+1
    .word loc_80E809C+1
    .word loc_80E815C+1
    .word loc_80E82D0+1
    .word loc_80E836C+1
    .word loc_80E840C+1
    .word loc_80E8534+1
    .word loc_80E865C+1
    .word loc_80E8940+1
    .word loc_80E89D4+1
    .word loc_80E8A80+1
    .word loc_80E8B50+1
    .word loc_80E8BEC+1
    .word loc_80E8D54+1
    .word loc_80E8E78+1
    .word sub_80E8FA4+1
    .word loc_80E90D8+1
    .word loc_80E92D4+1
    .word loc_80E93A4+1
    .word loc_80E94B8+1
    .word loc_80E95E4+1
    .word loc_80E9710+1
    .word loc_80E97B8+1
    .word loc_80E9874+1
    .word loc_80E9928+1
    .word loc_80E99B8+1
    .word loc_80E9B08+1
    .word loc_80E9CB4+1
    .word loc_80E9D84+1
    .word loc_80E9F34+1
    .word loc_80EA014+1
    .word loc_80EA194+1
    .word loc_80EA2D0+1
    .word loc_80EA3A0+1
    .word loc_80EA470+1
    .word loc_80EA540+1
    .word loc_80EA6B0+1
    .word loc_80EA7D8+1
    .word loc_80EA960+1
    .word loc_80EAA30+1
    .word nullsub_68+1
    .word loc_80EAAD4+1
    .word loc_80EAB70+1
    .word loc_80EAC2C+1
    .word loc_80EACCC+1
// end of function sub_8003F3A

.thumb
sub_8004160:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x20 
    mov r1, #0
    ldr r5, [pc, #0x80041fc-0x800416e-2] // byte_2037D10
loc_8004170:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_800419C
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x80041d4-0x800417e-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #4
    ldr r1, [pc, #0x80041d0-0x8004186-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x80
    ldr r2, [pc, #0x80041d8-0x8004192-2] // loc_300602C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_80041B8
loc_800419C:
    add r4, r5, #0
    add r4, #0x80
    mov r3, #0
    str r3, [r4,#(dword_2037DB4 - 0x2037d90)]
    mov r3, #1
    tst r2, r3
    beq loc_80041B8
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x80041d4-0x80041b0-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_80041B8:
    add r1, #1
    add r5, #0xc8
    cmp r1, r0
    blt loc_8004170
    mov r0, #4
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_80041D0:    .word loc_3005C00+1
off_80041D4:    .word loc_3005DC0+1
dword_80041D8:    .word 0x300602D
// end of function sub_8004160

.thumb
sub_80041DC:
    push {lr}
    mov r0, #4
    bl sub_80029E4
    pop {pc}
// end of function sub_80041DC

.thumb
sub_80041E6:
    mov r0, #0
    ldr r3, [pc, #0x80041fc-0x80041e8-4] // byte_2037D10
loc_80041EA:
    add r1, r3, #0
    add r1, #0x80
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xc8
    add r0, #1
    cmp r0, #0x20 
    blt loc_80041EA
    mov pc, lr
off_80041FC:    .word byte_2037D10
off_8004200:    .word loc_80A8100+1
// end of function sub_80041E6

.thumb
sub_8004204:
    push {r0-r4,lr}
    ldr r0, [pc, #0x8004370-0x8004206-2] // dword_20015D0
    ldr r2, [r0]
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x8004374-0x800420e-2] // byte_2006140
    ldr r3, [pc, #0x8004378-0x8004210-4] // byte_2006EC0
loc_8004212:
    tst r2, r1
    beq loc_8004220
    lsr r1, r1, #1
    add r5, #0xd8
    cmp r5, r3
    bge loc_8004256
    b loc_8004212
loc_8004220:
    orr r2, r1
    str r2, [r0]
    mov r0, #4
    add r0, r0, r5
    mov r1, #0x4e 
    lsl r1, r1, #1
    mov r2, #0x7e 
    bl f900_80009B4
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x24]
    str r2, [r5,#0x28]
    str r3, [r5,#0x2c]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    str r0, [r5,#0x54]
    str r0, [r5,#0x5c]
    strb r0, [r5,#0x1f]
    mov r1, #0x80
    str r0, [r5,r1]
    mov r1, #0x8c
    str r0, [r5,r1]
    pop {pc}
loc_8004256:
    mov r5, #0
    pop {r0-r4,pc}
// end of function sub_8004204

.thumb
sub_800425A:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    lsr r0, r1
    ldr r1, [pc, #0x8004370-0x8004264-4] // dword_20015D0
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov r1, #0
    strb r1, [r5]
    bl sub_8002D9E
    pop {pc}
// end of function sub_800425A

.thumb
sub_8004276:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x11
    mov r1, #0x62 
    bl sub_8024FF0
    bne loc_80042C4
    sub sp, sp, #8
    ldr r5, [pc, #0x8004374-0x800428c-4] // byte_2006140
    ldr r0, [pc, #0x80042d0-0x800428e-2] // off_8004200
    ldr r1, [pc, #0x8004378-0x8004290-4] // byte_2006EC0
    str r0, [sp]
    str r1, [sp,#4]
loc_8004296:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_80042BA
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r1, [r7,#9]
    tst r1, r1
    beq loc_80042AE
    mov r1, #4
    tst r0, r1
    beq loc_80042BA
loc_80042AE:
    ldr r0, [sp]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_80042BA:
    add r5, #0xd8
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_8004296
    add sp, sp, #8
loc_80042C4:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .byte 0, 0
off_80042D0:    .word off_8004200
dword_80042D4:    .word 0x4644B5F0
    .word 0x4666464D
// end of function sub_8004276

.thumb
sub_80042DC:
    push {r4-r6}
    mov r0, #0x10
    mov r1, #0
    ldr r5, [pc, #0x8004374-0x80042e2-2] // byte_2006140
loc_80042E4:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8004310
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x8004348-0x80042f2-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #2
    ldr r1, [pc, #0x8004344-0x80042fa-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0xa0
    ldr r2, [pc, #0x800434c-0x8004306-2] // loc_300602C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_800432C
loc_8004310:
    add r4, r5, #0
    add r4, #0xa0
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_800432C
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x8004348-0x8004324-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_800432C:
    add r1, #1
    add r5, #0xd8
    cmp r1, r0
    blt loc_80042E4
    mov r0, #2
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8004344:    .word loc_3005C00+1
off_8004348:    .word loc_3005DC0+1
dword_800434C:    .word 0x300602D
// end of function sub_80042DC

.thumb
sub_8004350:
    push {lr}
    mov r0, #2
    bl sub_80029E4
    pop {pc}
// end of function sub_8004350

.thumb
sub_800435A:
    mov r0, #0
    ldr r3, [pc, #0x8004374-0x800435c-4] // byte_2006140
loc_800435E:
    add r1, r3, #0
    add r1, #0xa0
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #0x10
    blt loc_800435E
    mov pc, lr
off_8004370:    .word dword_20015D0
off_8004374:    .word byte_2006140
off_8004378:    .word byte_2006EC0
off_800437C:    .word loc_80AE404+1
    .word loc_80AE4C8+1
    .word loc_80AE5E8+1
    .word loc_80AE6C0+1
    .word loc_80AE874+1
    .word sub_80AE94C+1
    .word loc_80AEEDC+1
    .word loc_80AEFA0+1
    .word loc_80AF068+1
    .word loc_80AF250+1
    .word loc_80AF3F2+1
    .word 0x80AFB1B
    .word loc_80B021A+1
    .word loc_80B05E0+1
    .word loc_80B0798+1
    .word loc_80B0814+1
    .word loc_80B0B5C+1
    .word loc_80B0CA8+1
    .word loc_80B0D5C+1
    .word loc_80B0E04+1
    .word loc_80B0EE8+1
    .word loc_80B0FF0+1
    .word loc_80B10CC+1
    .word loc_80B1248+1
    .word loc_80B132C+1
    .word loc_80B1460+1
    .word loc_80B1558+1
    .word loc_80B1660+1
    .word loc_80B16D8+1
    .word loc_80B1794+1
    .word loc_80B1824+1
    .word loc_80B18BC+1
    .word loc_80B19C8+1
    .word loc_80B1BDC+1
    .word loc_80B1CE4+1
    .word loc_80B1D84+1
    .word loc_80B1E18+1
    .word loc_80B20A4+1
    .word ho_cb_80B2328+1
    .word loc_80B23D8+1
    .word loc_80B2640+1
    .word loc_80B2934+1
    .word loc_80B2B6C+1
    .word loc_80B2BF8+1
    .word loc_80B3090+1
    .word loc_80B321C+1
    .word loc_80B335A+1
    .word loc_80B3438+1
    .word loc_80B34A4+1
// end of function sub_800435A

.thumb
sub_8004440:
    push {r0-r4,lr}
    ldr r0, [pc, #0x8004594-0x8004442-2] // dword_200B140
    ldr r2, [r0]
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x8004598-0x800444a-2] // byte_200B820
    ldr r3, [pc, #0x800459c-0x800444c-4] // unk_200CF20
loc_800444E:
    tst r2, r1
    beq loc_800445C
    lsr r1, r1, #1
    add r5, #0xb8
    cmp r5, r3
    bge loc_8004476
    b loc_800444E
loc_800445C:
    orr r2, r1
    str r2, [r0]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    str r3, [r5,#0x3c]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_8004476:
    mov r5, #0
    pop {r0-r4,pc}
// end of function sub_8004440

.thumb
sub_800447A:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    lsr r0, r1
    ldr r1, [pc, #0x8004594-0x8004484-4] // dword_200B140
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov r1, #0
    strb r1, [r5]
    bl sub_8002D9E
    pop {pc}
// end of function sub_800447A

.thumb
sub_8004496:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x11
    mov r1, #0x63 
    bl sub_8024FF0
    bne loc_80044E4
    sub sp, sp, #8
    ldr r5, [pc, #0x8004598-0x80044ac-4] // byte_200B820
    ldr r0, [pc, #0x80044f0-0x80044ae-2] // off_800437C
    ldr r1, [pc, #0x800459c-0x80044b0-4] // unk_200CF20
    str r0, [sp]
    str r1, [sp,#4]
loc_80044B6:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_80044DA
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r1, [r7,#9]
    tst r1, r1
    beq loc_80044CE
    mov r1, #4
    tst r0, r1
    beq loc_80044DA
loc_80044CE:
    ldr r0, [sp]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_80044DA:
    add r5, #0xb8
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_80044B6
    add sp, sp, #8
loc_80044E4:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .byte 0, 0
off_80044F0:    .word off_800437C
    .word unk_200CF20
// end of function sub_8004496

.thumb
sub_80044F8:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x20 
    mov r1, #0
    ldr r5, [pc, #0x8004598-0x8004506-2] // byte_200B820
loc_8004508:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8004534
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x800456c-0x8004516-2] // loc_3005DC0+1
    mov lr, pc
    bx r1
    mov r0, #5
    ldr r1, [pc, #0x8004568-0x800451e-2] // loc_3005C00+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0x80
    ldr r2, [pc, #0x8004570-0x800452a-2] // =0x2C
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_8004550
loc_8004534:
    add r4, r5, #0
    add r4, #0x80
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8004550
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x800456c-0x8004548-4] // loc_3005DC0+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_8004550:
    add r1, #1
    add r5, #0xb8
    cmp r1, r0
    blt loc_8004508
    mov r0, #5
    bl sub_80029E4
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8004568:    .word loc_3005C00+1
off_800456C:    .word loc_3005DC0+1
unk_8004570:    .byte 0x2D 
    .byte 0x60 
    .byte 0
    .byte 3
// end of function sub_80044F8

.thumb
sub_8004574:
    push {lr}
    mov r0, #5
    bl sub_80029E4
    pop {pc}
// end of function sub_8004574

.thumb
sub_800457E:
    mov r0, #0
    ldr r3, [pc, #0x8004598-0x8004580-4] // byte_200B820
loc_8004582:
    add r1, r3, #0
    add r1, #0x80
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xb8
    add r0, #1
    cmp r0, #0x20 
    blt loc_8004582
    mov pc, lr
off_8004594:    .word dword_200B140
off_8004598:    .word byte_200B820
off_800459C:    .word unk_200CF20
// end of function sub_800457E

.thumb
sub_80045A0:
    push {lr}
    ldr r0, [pc, #0x80048ec-0x80045a2-2] // byte_2007408
    ldr r1, [pc, #0x80045b4-0x80045a4-4] // =0x400
    bl f900_8000950
    ldr r0, [pc, #0x80048e8-0x80045aa-2] // dword_2007808
    ldr r1, [pc, #0x80048ec-0x80045ac-4] // byte_2007408
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
off_80045B4:    .word 0x400
// end of function sub_80045A0

.thumb
sub_80045B8:
    push {lr}
    pop {pc}
// end of function sub_80045B8

.thumb
sub_80045BC:
    push {r0-r7}
    sub sp, sp, #0x24
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    str r4, [sp,#0xc]
    str r5, [sp,#0x10]
    str r6, [sp,#0x14]
    str r7, [sp,#0x18]
    mov r7, #0
    str r7, [sp,#0x1c]
    mov r7, r8
    str r7, [sp,#0x20]
    ldr r5, [pc, #0x80046cc-0x80045d6-2] // =0x2007806
    mov r1, #0
    mov r8, r1
    ldr r1, [pc, #0x80048e8-0x80045dc-4] // dword_2007808
    ldr r1, [r1]
    cmp r1, r5
    bge loc_8004670
    ldrb r2, [r0]
    strb r2, [r1]
    add r0, #1
    add r1, #1
    ldrb r2, [r0]
    strb r2, [r1]
    add r0, #1
    add r1, #1
loc_80045F4:
    ldrb r2, [r0]
    mov r3, #0
    cmp r2, r3
    beq loc_8004666
    mov r3, #0xa
    cmp r2, r3
    bne loc_800460A
    mov r3, #0xfe
    strh r3, [r1]
    add r1, #2
    b loc_8004662
loc_800460A:
    mov r3, #0x20 
    cmp r2, r3
    blt loc_8004662
    mov r3, #0x60 
    cmp r2, r3
    bge loc_8004662
    cmp r1, r5
    bge loc_8004666
    mov r3, #0x25 
    cmp r2, r3
    bne loc_800465C
    mov r3, #0
    mov r8, r3
loc_8004624:
    add r0, #1
    ldrb r2, [r0]
    ldr r3, [pc, #0x80046d0-0x8004628-4] // dword_80046D4
loc_800462A:
    ldrb r4, [r3]
    cmp r4, #0
    beq loc_8004662
    cmp r2, r4
    beq loc_8004638
    add r3, #1
    b loc_800462A
loc_8004638:
    ldr r2, [sp,#0x1c]
    add r4, r2, #0
    add r4, #4
    str r4, [sp,#0x1c]
    add r2, sp
    ldr r2, [r2]
    ldr r4, [pc, #0x80046d0-0x8004644-4] // dword_80046D4
    sub r3, r3, r4
    lsl r3, r3, #2
    ldr r4, [pc, #0x800467c-0x800464a-2] // off_8004680
    add r4, r4, r3
    ldr r4, [r4]
    lsr r3, r3, #2
    mov lr, pc
    bx r4
    cmp r4, #0
    beq loc_8004624
    b loc_8004662
loc_800465C:
    sub r2, #0x20 
    strh r2, [r1]
    add r1, #2
loc_8004662:
    add r0, #1
    b loc_80045F4
loc_8004666:
    mov r2, #0xff
    strh r2, [r1]
    add r1, #2
    ldr r0, [pc, #0x80048e8-0x800466c-4] // dword_2007808
    str r1, [r0]
loc_8004670:
    ldr r7, [sp,#0x20]
    mov r8, r7
    add sp, sp, #0x24
    pop {r0-r7}
    pop {pc}
    .balign 4, 0x00
off_800467C:    .word off_8004680
off_8004680:    .word sub_8004732+1
    .word sub_8004732+1
    .word sub_8004788+1
    .word sub_8004788+1
    .word sub_8004822+1
    .word sub_8004822+1
    .word 0x800486F, 0x8004851, 0x8004851, 0x8004851, 0x8004851
    .word 0x8004851, 0x8004851, 0x8004851, 0x8004851, 0x8004851
    .word 0x8004851, 0x800487F, 0x800487F
dword_80046CC:    .word 0x2007806
off_80046D0:    .word dword_80046D4
dword_80046D4:    .word 0x78586444
    .word 0x30257353
    .word 0x34333231
    .word 0x38373635
    .word 0x624239
// end of function sub_80045BC

.thumb
dead_80046E8:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80048ec-0x80046ea-2] // byte_2007408
    mov r7, #0xf2
    lsl r7, r7, #8
    ldr r5, [pc, #0x80048e8-0x80046f0-4] // dword_2007808
    ldr r5, [r5]
    sub r5, r5, r4
    mov r2, #0
loc_80046F8:
    cmp r5, #0
    beq loc_800472A
    ldrb r6, [r4]
    add r0, r6, #0
    ldrb r1, [r4,#1]
    add r4, #2
    sub r5, #2
loc_8004706:
    ldrb r3, [r4]
    add r4, #2
    sub r5, #2
    cmp r3, #0xff
    beq loc_80046F8
    cmp r3, #0xfe
    bne loc_800471A
    add r0, r6, #0
    add r1, #1
    b loc_8004706
loc_800471A:
    push {r0-r7}
    orr r3, r7
    add r3, #0xc0
    bl sub_8001DC8
    pop {r0-r7}
    add r0, #1
    b loc_8004706
loc_800472A:
    ldr r4, [pc, #0x80048e8-0x800472a-2] // dword_2007808
    ldr r1, [pc, #0x80048ec-0x800472c-4] // byte_2007408
    str r1, [r4]
    pop {r4-r7,pc}
// end of function dead_80046E8

.thumb
sub_8004732:
    push {r0,r5-r7,lr}
    cmp r2, #0
    bge loc_800474E
    cmp r1, r5
    bge loc_8004756
    push {r3}
    mov r3, #0xd
    strh r3, [r1]
    add r1, #2
    mov r3, #0
    mvn r3, r3
    eor r2, r3
    add r2, #1
    pop {r3}
loc_800474E:
    ldr r0, [pc, #0x800475c-0x800474e-2] // dword_8004760
    mov r6, #0xa
    bl sub_80047BC
loc_8004756:
    mov r4, #1
    pop {r0,r5-r7,pc}
    .balign 4, 0x00
off_800475C:    .word dword_8004760
dword_8004760:    .word 0x3B9ACA00, 0x5F5E100, 0x989680, 0xF4240, 0x186A0
    .word 0x2710, 0x3E8, 0x64, 0xA, 0x1
// end of function sub_8004732

.thumb
sub_8004788:
    push {r0,r5-r7,lr}
    sub r3, #2
    ldr r0, [pc, #0x8004798-0x800478c-4] // dword_800479C
    mov r6, #8
    bl sub_80047BC
    mov r4, #1
    pop {r0,r5-r7,pc}
off_8004798:    .word dword_800479C
dword_800479C:    .word 0x10000000, 0x1000000, 0x100000, 0x10000, 0x1000, 0x100
    .word 0x10, 0x1
// end of function sub_8004788

.thumb
sub_80047BC:
    mov r7, r8
    cmp r7, #0
    beq loc_80047C6
    cmp r7, r6
    blt loc_80047C8
loc_80047C6:
    add r7, r6, #0
loc_80047C8:
    sub r6, r6, r7
    mov r8, r6
    add r7, r3, #0
loc_80047CE:
    mov r3, #0
    ldr r4, [r0]
loc_80047D2:
    cmp r2, #0
    blt loc_80047E0
    cmp r2, r4
    blt loc_80047EA
    sub r2, r2, r4
    add r3, #1
    b loc_80047D2
loc_80047E0:
    cmp r2, r4
    bge loc_80047EA
    sub r2, r2, r4
    add r3, #1
    b loc_80047D2
loc_80047EA:
    mov r6, r8
    cmp r6, #0
    beq loc_80047F6
    sub r6, #1
    mov r8, r6
    b loc_800481A
loc_80047F6:
    mov r6, #1
    and r6, r7
    bne loc_8004804
    cmp r4, #1
    beq loc_8004804
    cmp r3, #0
    beq loc_800481A
loc_8004804:
    mov r6, #1
    orr r7, r6
    cmp r1, r5
    bge locret_8004820
    ldr r6, [pc, #0x80048f0-0x800480c-4] // byte_80048F4
    add r6, r6, r3
    ldrb r3, [r6]
    sub r3, #0x20 
    strh r3, [r1]
    mov r3, #0
    add r1, #2
loc_800481A:
    add r0, #4
    cmp r4, #1
    bne loc_80047CE
locret_8004820:
    mov pc, lr
// end of function sub_80047BC

.thumb
sub_8004822:
    push {r0,r5-r7,lr}
    mov r7, r8
    cmp r7, #0
    bne loc_800482E
    mov r6, #0xff
    mov r8, r6
loc_800482E:
    mov r6, r8
    cmp r6, #0
    beq loc_800484C
    sub r6, #1
    mov r8, r6
    ldrb r3, [r2]
    cmp r3, #0
    beq loc_800484C
    cmp r1, r5
    bge loc_800484C
    sub r3, #0x20 
    strh r3, [r1]
    add r1, #2
    add r2, #1
    b loc_800482E
loc_800484C:
    mov r4, #1
    pop {r0,r5-r7,pc}
    .word 0x3A049A07, 0x23009207
    .word 0x44432400
    .byte 1
    .byte 0x34 
    .byte 0xA
    .byte 0x2C 
    .byte 0xFB
    .byte 0xDB
    .byte 4
    .byte 0x78 
    .byte 0x30 
    .byte 0x3C 
    .byte 0x1B
    .byte 0x19
    .byte 0x98
    .byte 0x46 
    .byte 0
    .byte 0x24 
    .byte 0xF7
    .byte 0x46 
    .byte 7
    .byte 0x9A
    .byte 4
    .byte 0x3A 
    .byte 7
    .byte 0x92
    .byte 5
    .byte 0x23 
    .byte 0xB
    .byte 0x80
    .byte 2
    .byte 0x31 
    .byte 0
    .byte 0x24 
    .byte 0xF7
    .byte 0x46 
    .byte 0xE1
    .byte 0xB5
    .byte 0x11
    .byte 0x3B 
    .byte 0x20
    .byte 0x26 
    .byte 0
    .byte 0xF0
    .byte 2
    .byte 0xF8
    .byte 1
    .byte 0x24 
    .byte 0xE1
    .byte 0xBD
    .byte 0x47 
    .byte 0x46 
    .byte 0
    .byte 0x2F 
    .byte 1
    .byte 0xD0
    .byte 0xB7
    .byte 0x42 
    .byte 0
    .byte 0xDB
    .byte 0x37 
    .byte 0x1C
    .byte 0xF6
    .byte 0x1B
    .byte 0xB0
    .byte 0x46 
    .byte 0x1F
    .byte 0x1C
    .byte 0x80
    .byte 0x24 
    .byte 0x24 
    .byte 6
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x42 
    .byte 2
    .byte 0xD0
    .byte 0xA2
    .byte 0x43 
    .byte 1
    .byte 0x33 
    .byte 0xFA
    .byte 0xE7
    .byte 0x46 
    .byte 0x46 
    .byte 0
    .byte 0x2E 
    .byte 2
    .byte 0xD0
    .byte 1
    .byte 0x3E 
    .byte 0xB0
    .byte 0x46 
    .byte 0x11
    .byte 0xE0
    .byte 1
    .byte 0x26 
    .byte 0x3E 
    .byte 0x40 
    .byte 3
    .byte 0xD1
    .byte 1
    .byte 0x2C 
    .byte 1
    .byte 0xD0
    .word 0xD00A2B00
    .word 0x43372601
    .word 0xDA0942A9, 0x18F64E07, 0x3B207833, 0x2300800B, 0x8643102
    .word 0xD1DE2C00, 0x46F7
off_80048E8:    .word dword_2007808
off_80048EC:    .word byte_2007408
off_80048F0:    .word byte_80048F4
byte_80048F4:    .byte 0x30
    .byte 0x31 
    .byte 0x32 
    .byte 0x33 
    .byte 0x34 
    .byte 0x35 
    .byte 0x36 
    .byte 0x37 
    .byte 0x38 
    .byte 0x39 
    .byte 0x41 
    .byte 0x42 
    .byte 0x43 
    .byte 0x44 
    .byte 0x45 
    .byte 0x46 
    .byte 0
    .byte 0x0, 0x0, 0x0
// end of function sub_8004822

.thumb
sub_8004908:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    strb r0, [r5]
    mov r0, #8
    strb r0, [r5,#0x12]
    mov r0, #0x10
    strb r0, [r5,#0x13]
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#3]
    strb r0, [r5,#0x11]
    strb r0, [r5,#9]
    mov r0, #0xff
    strb r0, [r5,#0x19]
    mov r0, #0
    strb r0, [r5,#0x1b]
    strb r0, [r5,#0x1a]
    ldr r1, [pc, #0x800497c-0x800492e-2] // byte_2010C30
    strb r0, [r1]
    ldr r1, [pc, #0x8004978-0x8004932-2] // byte_200B1F0
    mov r0, #0
    strb r0, [r1]
    str r0, [r1,#(dword_200B208 - 0x200b1f0)]
    str r0, [r1,#(dword_200B210 - 0x200b1f0)]
    mov r0, #0xff
    strb r0, [r1,#(byte_200B20C - 0x200b1f0)]
    bl sub_80A6D16
    bl sub_802D938
    mov r0, #0
    ldr r1, [pc, #0x8004980-0x800494a-2] // byte_200A3C8
    strb r0, [r1]
    ldr r1, [pc, #0x8004984-0x800494e-2] // dword_200A190
    strb r0, [r1]
    bl sub_800435A
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x7b 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x87
    bl sub_8024FB8
    bl sub_802F604
    bl sub_800386E
    pop {r4-r7,pc}
off_8004978:    .word byte_200B1F0
off_800497C:    .word byte_2010C30
off_8004980:    .word byte_200A3C8
off_8004984:    .word dword_200A190
// end of function sub_8004908

.thumb
sub_8004988:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x34]
    ldr r0, [pc, #0x8004b54-0x8004992-2] // =0xFFFF
    strh r0, [r5,#0xc]
    mov r0, #0
    str r0, [r5,#0x74]
    str r0, [r5,#0x78]
    mov r1, r10
    ldr r1, [r1,#0x44]
    mov r0, #0
    str r0, [r1,#0x2c]
    mov r0, #1
    strb r0, [r1,#6]
    mov r0, #0
    strh r0, [r1,#0x26]
    strh r0, [r1,#0x28]
    strh r0, [r1,#0x38]
    str r0, [r5,#0x2c]
    strb r0, [r5,#0x18]
    strh r0, [r1,#0x1c]
    strh r0, [r1,#0x1e]
    strh r0, [r1,#0x20]
    strh r0, [r1,#0x22]
    strh r0, [r1,#0x24]
    str r0, [r1]
    strh r0, [r1,#0x18]
    strb r0, [r1,#4]
    str r0, [r1,#0x30]
    strh r0, [r1,#0x1a]
    strb r0, [r1,#0xd]
    strb r0, [r1,#7]
    ldr r0, [pc, #0x8004b68-0x80049cc-4] // =0x64
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    strh r0, [r1,#0x14]
    strh r0, [r1,#0x16]
    mov r0, #0
    strb r0, [r5,#2]
    str r0, [r1,#0x40]
    str r0, [r1,#0x44]
    mov r0, #0xff
    strb r0, [r5,#0x1c]
    strb r0, [r5,#0x1d]
    strb r0, [r5,#0x1e]
    strb r0, [r5,#0x1f]
    strb r0, [r1,#0x10]
    strb r0, [r1,#0xa]
    mov r0, #0xff
    strb r0, [r1,#5]
    mov r0, #0
    strh r0, [r1,#0x2a]
    bl sub_80437CC
    bl sub_8044798
    bl sub_80444FC
    bl sub_8024F50
    bl sub_802512A
    bl sub_8025148
    bl sub_804BA5C
    bl sub_802D360
    mov r0, #0
    strb r0, [r5,#0x15]
    bl sub_80A6F22
    bl sub_80A6F54
    bl sub_80A6F5C
    bl sub_80A6F76
    bl sub_804720C
    bl sub_8042ECC
    bl sub_804722C
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0
    strb r0, [r1,#0x14]
    bl sub_808F45C
    bl sub_809F5C4
    bl sub_80A52AC
    bl sub_80037DC
    bl sub_8050D7C
    bl sub_80ADDC8
    bl sub_80ADE98
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024F9C
    mov r0, #5
    mov r1, #0x3a 
    mov r2, #4
    bl sub_802500A
    mov r0, #1
    mov r1, #0xa2
    mov r2, #4
    bl sub_802500A
    mov r0, #7
    mov r1, #0x95
    mov r2, #6
    bl sub_802500A
    mov r0, #7
    mov r1, #0xa1
    mov r2, #3
    bl sub_802500A
    mov r0, #0xa
    mov r1, #0x87
    mov r2, #6
    bl sub_802500A
    mov r0, #1
    mov r1, #0xcf
    mov r2, #7
    bl sub_802500A
    mov r0, #0xa
    mov r1, #0xe0
    mov r2, #4
    bl sub_802500A
    mov r0, #0xb
    mov r1, #0xcc
    mov r2, #4
    bl sub_802500A
    mov r0, #0xc
    mov r1, #0x1d
    bl sub_8024F9C
    mov r0, #8
    mov r1, #0xd0
    bl sub_8024F9C
    mov r0, #0
    bl sub_802D684
    bl sub_8034EC0
    bl sub_8034ED4
    mov r0, #0
    mov r1, #0x2c 
    bl sub_8024FB8
    bl sub_80ADDDC
    bl sub_8043E30
    bl sub_80061E8
    ldr r0, [pc, #0x8004b50-0x8004ae2-2] // =0x4
    strh r0, [r5,#4]
    str r0, [r5,#0x58]
    str r0, [r5,#0x6c]
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#7]
    ldr r1, [pc, #0x8004b58-0x8004af0-4] // dword_8004B5C
    ldr r0, [r1]
    str r0, [r5,#0x38]
    str r0, [r5,#0x48]
    str r0, [r5,#0x5c]
    ldr r0, [r1,#(dword_8004B60 - 0x8004b5c)]
    str r0, [r5,#0x3c]
    str r0, [r5,#0x4c]
    str r0, [r5,#0x60]
    ldr r0, [r1,#(dword_8004B64 - 0x8004b5c)]
    str r0, [r5,#0x40]
    str r0, [r5,#0x50]
    str r0, [r5,#0x64]
    mov r0, #4
    str r0, [r5,#0x44]
    str r0, [r5,#0x54]
    str r0, [r5,#0x68]
    bl sub_8019648
    bl sub_80191E8
    ldr r0, [pc, #0x8004b6c-0x8004b1a-2] // dword_8017C08
    mov r1, #0
    bl sub_8019020
    bl sub_8042FA0
    bl sub_8043104
    bl sub_8043120
    bl sub_800D618
    bl sub_8007FB8
    bl sub_803C48E
    bl sub_800E884
    bl sub_800EBF8
    bl sub_800EB60
    bl sub_80476D8
    bl sub_80A054C
    pop {r4-r7,pc}
dword_8004B50:    .word 0x5
dword_8004B54:    .word 0xFFFF
off_8004B58:    .word dword_8004B5C
dword_8004B5C:    .word 0x40000
dword_8004B60:    .word 0x1000000
dword_8004B64:    .word 0x0
off_8004B68:    .word 0x64
off_8004B6C:    .word dword_8017C08
// end of function sub_8004988

.thumb
ho_8004B70:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8004b8c-0x8004b72-2] // jt_8004B90
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8001AE0
    bl sub_8001B10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8004B8C:    .word jt_8004B90
jt_8004B90:    .word sub_8004BC0+1
    .word sub_8004CBE+1
    .word sub_8004D30+1
    .word sub_8004DB2+1
    .word sub_8004DF2+1
    .word sub_8004E6E+1
    .word 0x8004F4F
    .word 0x8004FCF
    .word 0x8005059
    .word 0x80050C9
    .word 0x8005139
    .word 0x80051A9
// end of function ho_8004B70

.thumb
sub_8004BC0:
    push {lr}
    bl sub_8005B5C
    beq locret_8004CBA
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8024F64
    bl sub_8024F80
    bl sub_802BCA4
    bl sub_802BCE0
    bl sub_80A907C
    bl sub_8025B60
    bl sub_8025CDC
    bl sub_8006108
    .byte 0x30 
    .byte 0xF0
    .byte 0x20
    .byte 0xFA
    .byte 0x55 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x6C 
    .byte 0x11
    .byte 0x20
    .byte 0x6F 
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xF0
    .byte 0xF9
    .byte 8
    .byte 0xD1
    .byte 0x28 
    .byte 0x79 
    .byte 0x29 
    .byte 0x7B 
    .byte 0x88
    .byte 0x42 
    .byte 4
    .byte 0xD1
    .byte 0x68 
    .byte 0x79 
    .byte 0x69 
    .byte 0x7B 
    .byte 0x88
    .byte 0x42 
    .byte 0
    .byte 0xD1
    .byte 6
    .byte 0xE0
    .byte 0
    .byte 0x20
    .byte 0xE8
    .byte 0x62 
    .byte 0x56 
    .byte 0x46 
    .byte 0x76 
    .byte 0x6C 
    .byte 0xB0
    .byte 0x63 
    .byte 0xB0
    .byte 0x64 
    .byte 0x70 
    .byte 0x64 
    .byte 0x11
    .byte 0x20
    .byte 0x6F 
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xBF
    .byte 0xF9
    .byte 0x11
    .byte 0x20
    .byte 0x7A 
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xBB
    .byte 0xF9
    .byte 0x11
    .byte 0x20
    .byte 0x62 
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xB7
    .byte 0xF9
    .byte 0x11
    .byte 0x20
    .byte 0x63 
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xB3
    .byte 0xF9
    .byte 0x11
    .byte 0x20
    .byte 0x82
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xCB
    .byte 0xF9
    .byte 5
    .byte 0xD0
    .byte 0xA
    .byte 0xF0
    .byte 0x74 
    .byte 0xFC
    .byte 0x11
    .byte 0x20
    .byte 0x82
    .byte 0x21 
    .byte 0x20
    .byte 0xF0
    .byte 0xA8
    .byte 0xF9
    .byte 0x25 
    .byte 0xF0
    .byte 0x2C 
    .byte 0xFD
    .byte 0
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte 0x68 
    .byte 0x74 
    .byte 0xE8
    .byte 0x70 
    .byte 0x24 
    .byte 0xF0
    .byte 0xF8
    .byte 0xFA
    .byte 0x57 
    .byte 0x46 
    .byte 0xB8
    .byte 0x68 
    .byte 0xF
    .byte 0x49 
    .byte 1
    .byte 0x80
    .byte 0x28 
    .byte 0x79 
    .byte 0x69 
    .byte 0x79 
    .byte 0x21 
    .byte 0xF0
    .byte 0xF2
    .byte 0xFC
    .byte 0x28 
    .byte 0x79 
    .byte 0x69 
    .byte 0x79 
    .byte 0xFD
    .byte 0xF7
    .byte 2
    .byte 0xF8
    .byte 0x28 
    .byte 0x79 
    .byte 0x69 
    .byte 0x79 
    .byte 0x25 
    .byte 0xF0
    .byte 0xBC
    .byte 0xF8
    .byte 0x28 
    .byte 0x79 
    .byte 0x21 
    .byte 0xF0
    .byte 0xCF
    .byte 0xFC
    .byte 0xA8
    .byte 0x7C 
    .byte 0xE9
    .byte 0x7C 
    .byte 0
    .byte 0xF0
    .byte 0x1B
    .byte 0xFF
    .byte 8
    .byte 0x20
    .byte 0xA8
    .byte 0x74 
    .byte 0x10
    .byte 0x20
    .byte 0xE8
    .byte 0x74 
    .byte 0x50 
    .byte 0x46 
    .byte 0x40 
    .byte 0x69 
    .byte 0
    .byte 0x21 
    .byte 1
    .byte 0x74 
    .byte 4
    .byte 0x20
    .byte 0x28 
    .byte 0x70 
locret_8004CBA:
    pop {pc}
// end of function sub_8004BC0

.thumb
sub_8004CBC:
    asr r0, r0, #0x1d
// end of function sub_8004CBC

.thumb
sub_8004CBE:
    push {lr}
    bl sub_802BCE0
    bl sub_80A7058
    bl sub_80A6FC2
    bl sub_8029E74
    mov r0, #0
    strb r0, [r5,#0xe]
    bl sub_8003630
    bl sub_800390A
    bl sub_8004276
    bl sub_8004496
    bl sub_80A90B4
    bl ho_8029308
    bl sub_800387E
    bl sub_8003698
    bl ho_8025D94
    bl sub_8026208
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_800522C
    bl sub_8005374
    bl sub_80053DA
    pop {pc}
    .byte 0, 0
// end of function sub_8004CBE

.thumb
sub_8004D30:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8004DAE
    bl sub_804E448
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    bl sub_80A0CE4
    bl sub_80A1508
    bl sub_8006644
    mov r7, r10
    ldr r0, [r7]
    mov r1, #8
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl loc_8025B64
    bl sub_8025CDC
    bl sub_8006108
    .byte 0x55 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x6C 
locret_8004DAE:
    pop {pc}
    .hword 0x40
// end of function sub_8004D30

.thumb
sub_8004DB2:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8004DF0
    bl sub_804E448
    mov r0, #0
    bl sub_8005552
locret_8004DF0:
    pop {pc}
// end of function sub_8004DB2

.thumb
sub_8004DF2:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8004E68
    bl sub_804E448
    mov r0, #0x25 
    bl sub_80034F6
    bl sub_80297E0
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0xc
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    .byte 0x30 
    .byte 0xF0
    .byte 0xF4
    .byte 0xF8
    .byte 0x55 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x6C 
    .byte 0x57 
    .byte 0x46 
    .byte 0xB8
    .byte 0x68 
    .byte 1
    .byte 0x49 
    .byte 1
    .byte 0x80
locret_8004E68:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8004DF2

.thumb
sub_8004E6C:
    lsl r0, r0, #1
// end of function sub_8004E6C

.thumb
sub_8004E6E:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    ldr r0, [pc, #0x8004f10-0x8004e9c-4] // byte_200F770
    ldrb r1, [r0,#(byte_200F771 - 0x200f770)]
    cmp r1, #1
    bne loc_8004EE2
    bl sub_8005B5C
    beq loc_8004EE2
    bl sub_8001D9C
    mov r4, r10
    ldr r4, [r4,#0x20]
    strb r1, [r4]
    strb r1, [r4,#1]
    strb r1, [r4,#2]
    strb r1, [r4,#3]
    bl sub_802DEA4
    bl sub_8004F14
    bl sub_8006108
    .byte 0x30 
    .byte 0xF0
    .byte 0xBD
    .byte 0xF8
    .byte 0x55 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x6C 
    .byte 0x11
    .byte 0x20
    .byte 0xFD
    .byte 0xF7
    .byte 0xD2
    .byte 0xF8
    .byte 0x4F 
    .byte 0xF0
    .byte 0xF1
    .byte 0xF8
    .byte 0x9B
    .byte 0xF0
    .byte 4
    .byte 0xFF
    .byte 0x9C
    .byte 0xF0
    .byte 0x14
    .byte 0xFB
    .byte 0x15
    .byte 0xE0
loc_8004EE2:
    bl ho_802D9A0
    .byte 1
    .byte 0x28 
    .byte 2
    .byte 0xD0
    .byte 2
    .byte 0x28 
    .byte 8
    .byte 0xD0
    .byte 0xE
    .byte 0xE0
    .byte 0
    .byte 0xF0
    .byte 0x34 
    .byte 0xFE
    .byte 0xB
    .byte 0xD0
    .byte 0xC
    .byte 0x20
    .byte 0x10
    .byte 0x21 
    .byte 0
    .byte 0xF0
    .byte 0xEF
    .byte 0xFD
    .byte 6
    .byte 0xE0
    .byte 0x11
    .byte 0x20
    .byte 0xFD
    .byte 0xF7
    .byte 0xB9
    .byte 0xF8
    .byte 0xFE
    .byte 0xF7
    .byte 0xA2
    .byte 0xFC
    .byte 4
    .byte 0x20
    .byte 0x28 
    .byte 0x70 
    .byte 0
    .byte 0xBD
off_8004F10:    .word byte_200F770
// end of function sub_8004E6E

.thumb
sub_8004F14:
    push {lr}
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x1c
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8004f4c-0x8004f44-4] // =0x40
    strh r1, [r0]
    pop {pc}
    .balign 4, 0x00
word_8004F4C:    .hword 0x40
// end of function sub_8004F14

.thumb
sub_8004F4E:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8004FCA
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    mov r0, #0x14
    bl sub_8001BC8
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    bl sub_8035044
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8004fcc-0x8004fba-2] // =0x40
    strh r1, [r0]
    bl sub_80431E4
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x20 
    strb r1, [r0]
locret_8004FCA:
    pop {pc}
word_8004FCC:    .hword 0x40
// end of function sub_8004F4E

.thumb
dead_8004FCE:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_800501E
    bl sub_8005020
    bl sub_8006108
    bl sub_8035044
    mov r5, r10
    ldr r5, [r5,#0x40]
    bl sub_8043800
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x24 
    strb r1, [r0]
locret_800501E:
    pop {pc}
// end of function dead_8004FCE

.thumb
sub_8005020:
    push {r7,lr}
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    mov r0, #0x13
    bl sub_8001BC8
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8005054-0x800504e-2] // =0x40
    strh r1, [r0]
    pop {r7,pc}
off_8005054:    .word 0x40
// end of function sub_8005020

.thumb
dead_8005058:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_80050C6
    bl sub_804E448
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    bl sub_8035044
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x28 
    strb r1, [r0]
locret_80050C6:
    pop {pc}
// end of function dead_8005058

.thumb
dead_80050C8:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8005136
    bl sub_804E448
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    .byte 0x2F 
    .byte 0xF0
    .byte 0x8D
    .byte 0xFF
    .byte 0x55 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x6C 
    .byte 0x57 
    .byte 0x46 
    .byte 0x38 
    .byte 0x68 
    .byte 0x2C 
    .byte 0x21 
    .byte 1
    .byte 0x70 
locret_8005136:
    pop {pc}
// end of function dead_80050C8

.thumb
sub_8005138:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_80051A6
    bl sub_804E448
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    bl sub_8035044
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x30 
    strb r1, [r0]
locret_80051A6:
    pop {pc}
// end of function sub_8005138

.thumb
sub_80051A8:
    push {lr}
    bl ho_8029308
    bl sub_800387E
    bl sub_800292C
    bl sub_8002990
    bl sub_800395C
    bl sub_8003BFC
    bl dword_80042D4
    bl sub_8003F30
    bl sub_80041DC
    bl sub_80044F8
    bl sub_800263A
    bl sub_8005B5C
    beq locret_8005224
    mov r0, #0x21 
    bl sub_80034F6
    bl sub_800435A
    mov r0, #0x13
    bl sub_8001BC8
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8006108
    bl sub_8035044
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8005228-0x8005214-4] // =0x40
    strh r1, [r0]
    bl sub_8043800
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x34 
    strb r1, [r0]
locret_8005224:
    pop {pc}
    .balign 4, 0x00
off_8005228:    .word 0x40
// end of function sub_80051A8

.thumb
sub_800522C:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_8005294
    bl sub_80A6FB6
    bne locret_8005294
    bl sub_8005654
    bne locret_8005294
    mov r0, #1
    bl sub_802D92C
    bne locret_8005294
    bl sub_8005B5C
    beq locret_8005294
    bl sub_802BCF2
    bne locret_8005294
    ldr r0, [r5,#0x28]
    add r0, #0x24 
    bl sub_8027646
    add r4, r1, #0
    cmp r4, #1
    blt locret_8005294
    cmp r4, #0xf
    bgt locret_8005294
    ldr r1, [pc, #0x8005298-0x800526a-2] // =0x1150
    add r1, r1, r4
    add r0, r1, #0
    bl sub_8024FF4
    bne locret_8005294
    mov r2, r10
    ldr r2, [r2,#0x14]
    mov r0, #1
    strb r0, [r2,#0x10]
    strb r4, [r2,#0x12]
    ldr r2, [r2,#0x14]
    mov r0, #0x10
    sub r4, #1
    mul r4, r0
    add r2, r2, r4
    ldrb r0, [r2,#2]
    ldr r1, [pc, #0x800529c-0x800528c-4] // off_80052A0
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_8005294:
    pop {r5,pc}
    .balign 4, 0x00
off_8005298:    .word 0x1150
off_800529C:    .word off_80052A0
off_80052A0:    .word sub_80052C0+1
    .word sub_80052D8+1
    .word sub_80052F0+1
    .word sub_8005304+1
    .word sub_8005318+1
    .word sub_800532C+1
    .word sub_800533C+1
    .word sub_8005350+1
// end of function sub_800522C

.thumb
sub_80052C0:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024F9C
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0xc
    strb r0, [r5]
    pop {pc}
// end of function sub_80052C0

.thumb
sub_80052D8:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024F9C
    mov r0, #4
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0xc
    strb r0, [r5]
    pop {pc}
// end of function sub_80052D8

.thumb
sub_80052F0:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    ldr r0, [pc, #0x8005364-0x80052fa-2] // =0x809D3A0
    mov r1, #0
    bl sub_802BC60
    pop {pc}
// end of function sub_80052F0

.thumb
sub_8005304:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024F9C
    ldr r0, [pc, #0x800536c-0x800530e-2] // unk_809D414
    mov r1, #0
    bl sub_802BC60
    pop {pc}
// end of function sub_8005304

.thumb
sub_8005318:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    ldr r0, [pc, #0x8005368-0x8005322-2] // =0x809D3A0
    mov r1, #0
    bl sub_802BC60
    pop {pc}
// end of function sub_8005318

.thumb
sub_800532C:
    push {lr}
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    bl sub_8005754
    pop {pc}
// end of function sub_800532C

.thumb
sub_800533C:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    ldr r0, [pc, #0x8005370-0x8005346-2] // unk_809D474
    mov r1, #0
    bl sub_802BC60
    pop {pc}
// end of function sub_800533C

.thumb
sub_8005350:
    push {lr}
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    ldr r0, [pc, #0x8005370-0x800535a-2] // unk_809D474
    mov r1, #1
    bl sub_802BC60
    pop {pc}
dword_8005364:    .word 0x809D3C6
dword_8005368:    .word 0x809D3DF
off_800536C:    .word unk_809D414
off_8005370:    .word unk_809D474
// end of function sub_8005350

.thumb
sub_8005374:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_80053D8
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne locret_80053D8
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne locret_80053D8
    bl sub_80A6FB6
    bne locret_80053D8
    mov r0, #0x11
    mov r1, #0x61 
    bl sub_8024FF0
    bne locret_80053D8
    bl sub_8005654
    bne locret_80053D8
    mov r0, #1
    bl sub_802D92C
    bne locret_80053D8
    bl sub_8005B5C
    beq locret_80053D8
    bl sub_802BCF2
    bne locret_80053D8
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80053D8
    bl sub_80F522C
    tst r0, r0
    beq locret_80053D8
    mov r1, #1
    mov r2, #0xff
    mov r3, #1
    bl sub_8005524
locret_80053D8:
    pop {r5,pc}
// end of function sub_8005374

.thumb
sub_80053DA:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_800546E
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne locret_800546E
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne locret_800546E
    bl sub_80A6FB6
    bne locret_800546E
    bl sub_8005654
    bne locret_800546E
    mov r0, #1
    bl sub_802D92C
    bne loc_8005466
    bl sub_8005B5C
    beq locret_800546E
    bl sub_802BCF2
    bne locret_800546E
    mov r0, #0x80
    bl sub_80539A0
    bne locret_800546E
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r1, [r0,#2]
    mov r2, #8
    tst r1, r2
    beq locret_800546E
    mov r0, #0x11
    mov r1, #0x70 
    bl sub_8024FF0
    bne locret_800546E
    mov r0, #0
    bl sub_802D3F8
    beq loc_8005446
    mov r0, #0x7a 
    bl f500_8000558
loc_8005446:
    mov r0, #0
    bl sub_802D3F8
    beq locret_800546E
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    bl sub_802D944
    b loc_800546A
loc_8005466:
    bl sub_802D970
loc_800546A:
    mov r0, #0x14
    strb r0, [r5]
locret_800546E:
    pop {r5,pc}
// end of function sub_80053DA

.thumb
sub_8005470:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    strb r4, [r5,#0xf]
    add r4, r1, #0
    str r0, [r5,#0x2c]
    tst r3, r3
    beq loc_8005486
    mov r3, r10
    ldr r3, [r3,#0x44]
    str r0, [r3,#0x38]
loc_8005486:
    strb r2, [r5,#0xb]
    mov r0, #8
    strb r0, [r5]
    mov r0, #2
    tst r4, r0
    bne loc_800549A
    mov r0, #0x2c 
    mov r1, #0x10
    bl sub_8005ADC
loc_800549A:
    mov r0, #1
    tst r4, r0
    beq loc_80054B2
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
loc_80054B2:
    mov r0, #0x80
    tst r4, r0
    beq loc_80054C2
    mov r0, #0
    str r0, [r5,#0x34]
    mov r0, #0x25 
    bl sub_80034F6
loc_80054C2:
    bl f500_80006CC
    mov r0, #0x78 
    bl f500_8000558
    pop {r4-r7,pc}
// end of function sub_8005470

.thumb
sub_80054CE:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    strb r4, [r5,#0xf]
    add r4, r1, #0
    str r0, [r5,#0x2c]
    tst r3, r3
    beq loc_80054E4
    mov r3, r10
    ldr r3, [r3,#0x44]
    str r0, [r3,#0x38]
loc_80054E4:
    strb r2, [r5,#0xb]
    mov r0, #2
    tst r4, r0
    bne loc_80055D8
    mov r0, #4
    mov r1, #0x10
    bl sub_8005ADC
    bl f500_80006CC
    mov r0, #0x78 
    bl f500_8000558
    pop {r4-r7,pc}
// end of function sub_80054CE

.thumb
sub_8005500:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    strb r4, [r5,#0xf]
    add r4, r1, #0
    str r0, [r5,#0x2c]
    tst r3, r3
    beq loc_8005516
    mov r3, r10
    ldr r3, [r3,#0x44]
    str r0, [r3,#0x38]
loc_8005516:
    strb r2, [r5,#0xb]
    bl f500_80006CC
    mov r0, #0x78 
    bl f500_8000558
    pop {r4-r7,pc}
// end of function sub_8005500

.thumb
sub_8005524:
    push {r4,lr}
    mov r4, #0xff
    bl sub_8005470
    pop {r4,pc}
// end of function sub_8005524

.thumb
sub_800552E:
    push {r4,lr}
    ldr r0, [pc, #0x80058f4-0x8005530-4] // byte_200B480
    mov r3, #0
    mov r4, #0xff
    bl sub_80054CE
    pop {r4,pc}
// end of function sub_800552E

.thumb
sub_800553C:
    push {r4,r5,lr}
    bl sub_80054CE
    pop {r4,r5,pc}
// end of function sub_800553C

.thumb
sub_8005544:
    push {r4,lr}
    ldr r0, [pc, #0x80058f8-0x8005546-2] // byte_200B480
    mov r3, #0
    mov r4, #0xff
    bl sub_8005500
    pop {r4,pc}
// end of function sub_8005544

.thumb
sub_8005552:
    push {r4-r7,lr}
    push {r0}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x34]
    mov r0, #0x25 
    bl sub_80034F6
    mov r0, #0x11
    mov r1, #0x61 
    bl sub_8024FB8
    mov r5, r10
    ldr r1, [r5,#0x14]
    ldr r0, [r1,#0x14]
    mov r2, #0x10
    ldrb r3, [r1,#0x12]
    sub r3, #1
    mul r3, r2
    add r0, r0, r3
    bl f900_800098C
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8001C94
    mov r5, r10
    ldr r0, [r5,#8]
    ldr r1, [pc, #0x8005640-0x8005590-4] // =0x40
    strh r1, [r0]
    ldr r7, [r5,#0x14]
    ldr r5, [r5,#0x40]
    mov r0, #0x11
    mov r1, #0x7b 
    bl sub_8024FF0
    bne loc_80055D8
    ldrb r1, [r7]
    ldrb r2, [r5,#4]
    mov r3, #0x80
    add r4, r1, #0
    eor r4, r2
    tst r4, r3
    beq loc_80055D8
    tst r1, r3
    bne loc_80055B8
    mov r6, #0x5c 
    b loc_80055BA
loc_80055B8:
    mov r6, #0x48 
loc_80055BA:
    ldr r0, [r5,#0x28]
    ldr r1, [r0,#0x24]
    ldr r2, [r0,#0x28]
    ldr r3, [r0,#0x2c]
    ldrb r4, [r0,#0x10]
    add r6, r6, r5
    str r1, [r6]
    str r2, [r6,#4]
    str r3, [r6,#8]
    str r4, [r6,#0xc]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    lsl r1, r1, #8
    orr r1, r0
    str r1, [r6,#0x10]
loc_80055D8:
    mov r0, #0x11
    mov r1, #0x7b 
    bl sub_8024FB8
    pop {r0}
    cmp r0, #1
    beq loc_80055FA
    cmp r0, #2
    beq loc_8005606
    mov r1, #2
    strb r1, [r7,#0x10]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldr r3, [r7,#0xc]
    ldrb r4, [r7,#3]
    ldrh r6, [r7]
    b loc_8005610
loc_80055FA:
    ldr r1, [r5,#0x48]
    ldr r2, [r5,#0x4c]
    ldr r3, [r5,#0x50]
    ldr r4, [r5,#0x54]
    ldr r6, [r5,#0x58]
    b loc_8005610
loc_8005606:
    ldr r1, [r5,#0x5c]
    ldr r2, [r5,#0x60]
    ldr r3, [r5,#0x64]
    ldr r4, [r5,#0x68]
    ldr r6, [r5,#0x6c]
loc_8005610:
    str r1, [r5,#0x38]
    str r2, [r5,#0x3c]
    str r3, [r5,#0x40]
    str r4, [r5,#0x44]
    lsr r7, r6, #8
    mov r0, #0xff
    and r6, r0
    mov r1, #0
    strb r1, [r5]
    ldrb r1, [r5,#5]
    strb r1, [r5,#0xd]
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#0xc]
    strb r1, [r5,#0xc]
    strb r6, [r5,#4]
    strb r7, [r5,#5]
    push {r1}
    mov r7, r10
    ldr r7, [r7,#0x44]
    mov r0, #0
    strh r0, [r7,#0x26]
    strh r0, [r7,#0x28]
    pop {r1}
    pop {r4-r7,pc}
off_8005640:    .word 0x40
// end of function sub_8005552

.thumb
sub_8005644:
    mov r3, r10
    ldr r3, [r3,#0x14]
    mov r2, #1
    strb r2, [r3,#0x10]
    add r2, r1, #1
    strb r2, [r3,#0x12]
    str r0, [r3,#0x14]
    mov pc, lr
// end of function sub_8005644

.thumb
sub_8005654:
    mov r0, r10
    ldr r0, [r0,#0x14]
    ldrb r1, [r0,#0x10]
    cmp r1, #0
    mov pc, lr
// end of function sub_8005654

.thumb
sub_800565E:
    push {r5,lr}
    bl sub_80489E0
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0x18
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8035044
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x80058f0-0x800568c-4] // =0x40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    pop {r5,pc}
// end of function sub_800565E

.thumb
dead_80056A0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x34]
    mov r0, #0x25 
    bl sub_80034F6
    bl sub_802CFE4
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0x10
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8035044
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x80058f0-0x80056dc-4] // =0x40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    pop {r5,pc}
// end of function dead_80056A0

.thumb
sub_80056F0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x34]
    mov r0, #0x25 
    bl sub_80034F6
    bl loc_802D6BC
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0x14
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8035044
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x80058f0-0x800572c-4] // =0x40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    pop {r5,pc}
// end of function sub_80056F0

.thumb
sub_8005740:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r2, [pc, #0x8005750-0x8005744-4] // dword_200A140
    str r0, [r2,#(dword_200A148 - 0x200a140)]
    strb r1, [r2,#(dword_200A140+3 - 0x200a140)]
    mov r0, #0x10
    strb r0, [r3]
    mov pc, lr
off_8005750:    .word dword_200A140
// end of function sub_8005740

.thumb
sub_8005754:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r1, #0x18
    strb r1, [r5]
    pop {r5,pc}
// end of function sub_8005754

.thumb
sub_8005772:
    push {r4,r5,lr}
    ldr r3, [pc, #0x80057a0-0x8005774-4] // unk_2006130
    add r3, r3, r0
    mov r4, #1
    strb r4, [r3]
    ldr r3, [pc, #0x80057a4-0x800577c-4] // byte_200ACC0
    strb r0, [r3,#(byte_200ACC5 - 0x200acc0)]
    strb r1, [r3,#(byte_200ACC6 - 0x200acc0)]
    strb r2, [r3,#(byte_200ACC7 - 0x200acc0)]
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r1, #0x1c
    strb r1, [r5]
    pop {r4,r5,pc}
off_80057A0:    .word unk_2006130
off_80057A4:    .word byte_200ACC0
// end of function sub_8005772

.thumb
sub_80057A8:
    push {r4,r5,lr}
    ldr r3, [pc, #0x8005804-0x80057aa-2] // unk_20014F0
    mov r4, #0
loc_80057AE:
    mov r1, #2
    mul r1, r4
    add r1, r1, r3
    ldrb r0, [r1]
    cmp r0, #0xff
    bne loc_80057C6
    add r4, #1
    cmp r4, #7
    blt loc_80057AE
    mov r0, #0
    tst r0, r0
    pop {r4,r5,pc}
loc_80057C6:
    ldr r3, [pc, #0x8005800-0x80057c6-2] // unk_2006130
    add r3, r3, r0
    mov r4, #1
    strb r4, [r3]
    bl sub_8044798
    ldr r3, [pc, #0x8005808-0x80057d2-2] // byte_200ACC0
    mov r0, #3
    strb r0, [r3,#(byte_200ACC5 - 0x200acc0)]
    mov r1, #0
    strb r1, [r3,#(byte_200ACC6 - 0x200acc0)]
    mov r2, #3
    strb r2, [r3,#(byte_200ACC7 - 0x200acc0)]
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r1, #0x2c 
    strb r1, [r5]
    mov r0, #1
    tst r0, r0
    pop {r4,r5,pc}
off_8005800:    .word unk_2006130
off_8005804:    .word unk_20014F0
off_8005808:    .word byte_200ACC0
// end of function sub_80057A8

.thumb
sub_800580C:
    push {r5,lr}
    bl sub_8049010
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r0, #0x20 
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_800580C

.thumb
sub_8005838:
    push {r5,lr}
    bl sub_8049CB0
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r1, #0x24 
    strb r1, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_8005838

.thumb
sub_8005864:
    push {r5,lr}
    push {r0}
    bl byte_803A9C4
    pop {r0}
    beq loc_8005874
    mov r0, #1
    pop {r5,pc}
loc_8005874:
    bl sub_804BDD4
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r1, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r1,#0x28]
    str r0, [r5,#0x3c]
    ldr r0, [r1,#0x2c]
    str r0, [r5,#0x40]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x44]
    mov r1, #0x28 
    strb r1, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0
    pop {r5,pc}
// end of function sub_8005864

.thumb
sub_800589E:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x34]
    mov r0, #0x25 
    bl sub_80034F6
    bl sub_810FFF4
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0x38 
    strb r1, [r0]
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8003836
    bl sub_8001D60
    bl sub_8035044
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x80058f0-0x80058da-2] // =0x40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    pop {r5,pc}
    .byte 0, 0
off_80058F0:    .word 0x40
off_80058F4:    .word byte_200B480
off_80058F8:    .word byte_200B480
off_80058FC:    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C56+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
    .word sub_8005BBE+1
    .word sub_8005C14+1
off_800595C:    .word unk_3002C50
    .word unk_3002840
    .word 0xFF, 0x81010, 0x3002C50, 0x3002840, 0xFF, 0x10081010
    .word 0x3002C50, 0x3002840, 0xFF, 0xC1010, 0x3002C50, 0x3002840
    .word 0xFF, 0x100C1010, 0x3002C50, 0x3002840, 0xFF, 0xC0A09
    .word 0x3002C50, 0x3002840, 0xFF, 0x40C0A09, 0x3002C50, 0x3002840
    .word 0xFF, 0xC0D0F, 0x3002C50, 0x3002840, 0xFF, 0x100C0D0F
    .word 0x3002C50, 0x3002840, 0xFF, 0x80D0F, 0x3002C50, 0x3002840
    .word 0xFF, 0x10080D0F, 0x3002C50, 0x3002840, 0xFF, 0x81010
    .word 0x3002C50, 0x3002840, 0xFF, 0x10081010, 0x3002C50, 0x30029A0
    .word 0xFF, 0x80100, 0x3002C50, 0x30029A0, 0xFF, 0x10080100
    .word 0x3002C50, 0x3002840, 0xFF, 0xC0009, 0x3002C50, 0x3002840
    .word 0xFF, 0x40C0009, 0x3002C50, 0x3002840, 0xFF, 0xC0010
    .word 0x3002C50, 0x3002840, 0xFF, 0x100C0010, 0x3002C50, 0x3002840
    .word 0xFF, 0xC0001, 0x3002C50, 0x3002840, 0xFF, 0x100C0001
    .word 0x3002C50, 0x3002840, 0xFF, 0xC0A09, 0x3002C50, 0x3002840
    .word 0xFF, 0x50C0A09, 0x3002D70, 0x3002980, 0xFF, 0xC0405
    .word 0x3002D70, 0x3002980, 0xFF, 0x30C0405
// end of function sub_800589E

.thumb
sub_8005ADC:
    mov r3, #0
    b loc_8005AE2
loc_8005AE0:
    mov r3, #0x20 
loc_8005AE2:
    push {r5,lr}
    cmp r0, #0xff
    beq locret_8005B2C
    ldr r5, [pc, #0x8005c10-0x8005ae8-4] // byte_200A7A0
    add r5, r5, r3
    push {r0,r1}
    add r0, r3, #0
    bl sub_8005B94
    pop {r0,r1}
    strb r0, [r5,#(byte_200A7A1 - 0x200a7a0)]
    ldr r2, [pc, #0x8005b30-0x8005af8-4] // off_800595C
    lsl r0, r0, #2
    add r2, r2, r0
    ldr r0, [r2]
    str r0, [r5,#(dword_200A7B0 - 0x200a7a0)]
    ldr r0, [r2,#4]
    str r0, [r5,#(dword_200A7B4 - 0x200a7a0)]
    ldrb r0, [r2,#0xc]
    strh r0, [r5,#(word_200A7B8 - 0x200a7a0)]
    ldrb r0, [r2,#0xd]
    strh r0, [r5,#(word_200A7BC - 0x200a7a0)]
    ldrb r0, [r2,#0xe]
    strh r0, [r5,#(word_200A7A8 - 0x200a7a0)]
    ldrb r0, [r2,#0xf]
    lsl r0, r0, #4
    strh r0, [r5,#(word_200A7AA - 0x200a7a0)]
    mov r0, #1
    strb r0, [r5]
    mov r0, #1
    strb r0, [r5,#(byte_200A7A3 - 0x200a7a0)]
    mov r0, #0
    strb r0, [r5,#(byte_200A7A2 - 0x200a7a0)]
    cmp r1, #0xff
    bne loc_8005B2A
    add r1, #1
loc_8005B2A:
    strh r1, [r5,#(word_200A7A4 - 0x200a7a0)]
locret_8005B2C:
    pop {r5,pc}
    .byte 0, 0
off_8005B30:    .word off_800595C
// end of function sub_8005ADC

.thumb
sub_8005B34:
    push {r5,lr}
    mov r0, #0
    b loc_8005B3E
// end of function sub_8005B34

.thumb
sub_8005B3A:
    push {r5,lr}
    mov r0, #0x20 
loc_8005B3E:
    ldr r5, [pc, #0x8005c10-0x8005b3e-2] // byte_200A7A0
    add r5, r5, r0
    bl sub_8005B94
    add r0, r5, #0
    mov r1, #0x20 
    bl f900_8000930
    pop {r5,pc}
// end of function sub_8005B3A

.thumb
sub_8005B50:
    push {lr}
    bl sub_8005B34
    bl sub_8005B3A
    pop {pc}
// end of function sub_8005B50

.thumb
sub_8005B5C:
    mov r3, #0
    b loc_8005B62
loc_8005B60:
    mov r3, #0x20 
loc_8005B62:
    ldr r0, [pc, #0x8005c10-0x8005b62-2] // byte_200A7A0
    add r0, r0, r3
    ldrb r0, [r0,#(byte_200A7A3 - 0x200a7a0)]
    mov r1, #1
    cmp r0, r1
    mov pc, lr
// end of function sub_8005B5C

.thumb
sub_8005B6E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8005c10-0x8005b70-4] // byte_200A7A0
    mov r4, #0
loc_8005B74:
    ldrb r0, [r5]
    mov r1, #1
    cmp r0, r1
    bne loc_8005B86
    ldrb r2, [r5,#1]
    ldr r0, [pc, #0x8005b90-0x8005b7e-2] // off_80058FC
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
loc_8005B86:
    add r5, #0x20 
    add r4, #1
    cmp r4, #2
    blt loc_8005B74
    pop {r4-r7,pc}
off_8005B90:    .word off_80058FC
// end of function sub_8005B6E

.thumb
sub_8005B94:
    push {r5,lr}
    ldr r5, [pc, #0x8005c10-0x8005b96-2] // byte_200A7A0
    add r5, r5, r0
    lsr r2, r0, #4
    strb r2, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#3]
    mov r0, #0
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#2]
    strb r0, [r5,#0xd]
    ldrb r0, [r5,#0xc]
    add r0, #0x12
    bl sub_8002526
    ldrb r0, [r5,#0xc]
    add r0, #0x13
    bl sub_8002526
    pop {r5,pc}
// end of function sub_8005B94

.thumb
sub_8005BBE:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    ldrb r3, [r5,#2]
    mov r4, #1
    strb r4, [r5,#2]
    tst r3, r3
    beq loc_8005BD0
    sub r1, r1, r2
loc_8005BD0:
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    blt loc_8005C04
    strh r1, [r5,#6]
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002504
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002504
    pop {r4-r7,pc}
loc_8005C04:
    ldr r0, [pc, #0x8005c10-0x8005c04-4] // byte_200A7A0
    sub r0, r5, r0
    bl sub_8005B94
    pop {r4-r7,pc}
    .byte 0, 0
off_8005C10:    .word byte_200A7A0
// end of function sub_8005BBE

.thumb
sub_8005C14:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    add r1, r1, r2
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    blt loc_8005C28
    mov r0, #0
    strb r0, [r5,#3]
    add r1, r2, #0
loc_8005C28:
    strh r1, [r5,#6]
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002504
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002504
    pop {r4-r7,pc}
// end of function sub_8005C14

.thumb
sub_8005C56:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    add r1, r1, r2
    mov r7, #0
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    blt loc_8005C6E
    mov r0, #0
    strb r0, [r5,#3]
    mov r7, #4
    add r1, r2, #0
loc_8005C6E:
    strh r1, [r5,#6]
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002504
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002504
    ldr r0, [pc, #0x8005ca4-0x8005c9a-2] // jt_8005CA8
    ldr r0, [r0,r7]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_8005CA4:    .word jt_8005CA8
jt_8005CA8:    .word sub_8005CB0+1
    .word sub_8005D18+1
// end of function sub_8005C56

.thumb
sub_8005CB0:
    push {r4-r7,lr}
    mov r0, #0
    ldr r1, [pc, #0x8005d50-0x8005cb4-4] // dword_8005D54
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    mov r2, #0x10
    mov r3, #0x14
    ldr r4, [r5,#0x10]
    bl sub_8002504
    mov r0, #0
    ldr r1, [pc, #0x8005d50-0x8005cc8-4] // dword_8005D54
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    mov r2, #0x10
    mov r3, #0x15
    ldr r4, [r5,#0x14]
    bl sub_8002504
    ldr r0, [pc, #0x8005d4c-0x8005cda-2] // dword_200A190
    mov r1, #0x40 
    str r1, [r0]
    ldrb r0, [r5,#0xd]
    add r0, #1
    cmp r0, #0x10
    bge loc_8005CEA
    strb r0, [r5,#0xd]
loc_8005CEA:
    mov r0, r10
    ldr r0, [r0,#8]
    mov r2, #0x40 
    ldrh r1, [r0,#6]
    orr r1, r2
    strh r1, [r0,#6]
    ldrh r1, [r0,#8]
    orr r1, r2
    strh r1, [r0,#8]
    ldrh r1, [r0,#0xa]
    orr r1, r2
    strh r1, [r0,#0xa]
    ldrh r2, [r5,#6]
    lsr r2, r2, #4
    mov r1, #0
    orr r1, r2
    lsl r2, r2, #4
    lsl r2, r2, #4
    orr r1, r2
    lsl r2, r2, #4
    orr r1, r2
    strh r1, [r0,#2]
    pop {r4-r7,pc}
// end of function sub_8005CB0

.thumb
sub_8005D18:
    push {r4-r7,lr}
    mov r0, #0x14
    bl sub_8002526
    mov r0, #0x15
    bl sub_8002526
    ldr r0, [pc, #0x8005d4c-0x8005d26-2] // dword_200A190
    mov r1, #0
    str r1, [r0]
    strb r1, [r5,#0xd]
    mov r0, r10
    ldr r0, [r0,#8]
    mov r2, #0x40 
    ldrh r1, [r0,#6]
    bic r1, r2
    strh r1, [r0,#6]
    ldrh r1, [r0,#8]
    bic r1, r2
    strh r1, [r0,#8]
    ldrh r1, [r0,#0xa]
    bic r1, r2
    strh r1, [r0,#0xa]
    mov r1, #0
    strh r1, [r0,#2]
    pop {r4-r7,pc}
off_8005D4C:    .word dword_200A190
off_8005D50:    .word dword_8005D54
dword_8005D54:    .word 0x18001000, 0x28002000, 0x38003000, 0x48004000
    .word 0x58005000
    .word 0x68006000, 0x78007000, 0x7C007C00, 0x7C00
word_8005D78:    .hword 0x0
    .hword 0x6
    .word 0x12000C, 0x1F0019, 0x2B0025, 0x380031, 0x44003E, 0x50004A
    .word 0x5C0056, 0x670061, 0x73006D, 0x7E0078, 0x880083, 0x93008E
    .word 0x9D0098, 0xA700A2, 0xB000AB, 0xB900B5, 0xC100BD, 0xC900C5
    .word 0xD100CD, 0xD800D4, 0xDE00DB, 0xE400E1, 0xEA00E7, 0xEE00EC
    .word 0xF300F1, 0xF600F4, 0xF900F8, 0xFC00FB, 0xFE00FD, 0xFF00FE
    .word 0xFF00FF
word_8005DF8:    .hword 0x100
    .hword 0xFF
    .word 0xFF00FF, 0xFE00FE, 0xFC00FD, 0xF900FB, 0xF600F8, 0xF300F4
    .word 0xEE00F1, 0xEA00EC, 0xE400E7, 0xDE00E1, 0xD800DB, 0xD100D4
    .word 0xC900CD, 0xC100C5, 0xB900BD, 0xB000B5, 0xA700AB, 0x9D00A2
    .word 0x930098, 0x88008E, 0x7E0083, 0x730078, 0x67006D, 0x5C0061
    .word 0x500056, 0x44004A, 0x38003E, 0x2B0031, 0x1F0025, 0x120019
    .word 0x6000C
unk_8005E78:    .byte 0
    .byte 0
    .byte 0xFA
    .byte 0xFF
    .byte 0xF4
    .byte 0xFF
    .byte 0xEE
    .byte 0xFF
    .byte 0xE7
    .byte 0xFF
    .byte 0xE1
    .byte 0xFF
    .byte 0xDB
    .byte 0xFF
    .byte 0xD5
    .byte 0xFF
    .byte 0xCF
    .byte 0xFF
    .byte 0xC8
    .byte 0xFF
    .byte 0xC2
    .byte 0xFF
    .byte 0xBC
    .byte 0xFF
    .byte 0xB6
    .byte 0xFF
    .byte 0xB0
    .byte 0xFF
    .byte 0xAA
    .byte 0xFF
    .byte 0xA4
    .byte 0xFF
    .byte 0x9F
    .byte 0xFF
    .byte 0x99
    .byte 0xFF
    .byte 0x93
    .byte 0xFF
    .byte 0x8D
    .byte 0xFF
    .byte 0x88
    .byte 0xFF
    .byte 0x82
    .byte 0xFF
    .byte 0x7D 
    .byte 0xFF
    .byte 0x78 
    .byte 0xFF
    .byte 0x72 
    .byte 0xFF
    .byte 0x6D 
    .byte 0xFF
    .byte 0x68 
    .byte 0xFF
    .byte 0x63 
    .byte 0xFF
    .byte 0x5E 
    .byte 0xFF
    .byte 0x59 
    .byte 0xFF
    .byte 0x55 
    .byte 0xFF
    .byte 0x50 
    .byte 0xFF
    .byte 0x4B 
    .byte 0xFF
    .byte 0x47 
    .byte 0xFF
    .byte 0x43 
    .byte 0xFF
    .byte 0x3F 
    .byte 0xFF
    .byte 0x3B 
    .byte 0xFF
    .byte 0x37 
    .byte 0xFF
    .byte 0x33 
    .byte 0xFF
    .byte 0x2F 
    .byte 0xFF
    .byte 0x2C 
    .byte 0xFF
    .byte 0x28 
    .byte 0xFF
    .byte 0x25 
    .byte 0xFF
    .byte 0x22 
    .byte 0xFF
    .byte 0x1F
    .byte 0xFF
    .byte 0x1C
    .byte 0xFF
    .byte 0x19
    .byte 0xFF
    .byte 0x16
    .byte 0xFF
    .byte 0x14
    .byte 0xFF
    .byte 0x12
    .byte 0xFF
    .byte 0xF
    .byte 0xFF
    .byte 0xD
    .byte 0xFF
    .byte 0xC
    .byte 0xFF
    .byte 0xA
    .byte 0xFF
    .byte 8
    .byte 0xFF
    .byte 7
    .byte 0xFF
    .byte 5
    .byte 0xFF
    .byte 4
    .byte 0xFF
    .byte 3
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 3
    .byte 0xFF
    .byte 4
    .byte 0xFF
    .byte 5
    .byte 0xFF
    .byte 7
    .byte 0xFF
    .byte 8
    .byte 0xFF
    .byte 0xA
    .byte 0xFF
    .byte 0xC
    .byte 0xFF
    .byte 0xD
    .byte 0xFF
    .byte 0xF
    .byte 0xFF
    .byte 0x12
    .byte 0xFF
    .byte 0x14
    .byte 0xFF
    .byte 0x16
    .byte 0xFF
    .byte 0x19
    .byte 0xFF
    .byte 0x1C
    .byte 0xFF
    .byte 0x1F
    .byte 0xFF
    .byte 0x22 
    .byte 0xFF
    .byte 0x25 
    .byte 0xFF
    .byte 0x28 
    .byte 0xFF
    .byte 0x2C 
    .byte 0xFF
    .byte 0x2F 
    .byte 0xFF
    .byte 0x33 
    .byte 0xFF
    .byte 0x37 
    .byte 0xFF
    .byte 0x3B 
    .byte 0xFF
    .byte 0x3F 
    .byte 0xFF
    .byte 0x43 
    .byte 0xFF
    .byte 0x47 
    .byte 0xFF
    .byte 0x4B 
    .byte 0xFF
    .byte 0x50 
    .byte 0xFF
    .byte 0x55 
    .byte 0xFF
    .byte 0x59 
    .byte 0xFF
    .byte 0x5E 
    .byte 0xFF
    .byte 0x63 
    .byte 0xFF
    .byte 0x68 
    .byte 0xFF
    .byte 0x6D 
    .byte 0xFF
    .byte 0x72 
    .byte 0xFF
    .byte 0x78 
    .byte 0xFF
    .byte 0x7D 
    .byte 0xFF
    .byte 0x82
    .byte 0xFF
    .byte 0x88
    .byte 0xFF
    .byte 0x8D
    .byte 0xFF
    .byte 0x93
    .byte 0xFF
    .byte 0x99
    .byte 0xFF
    .byte 0x9F
    .byte 0xFF
    .byte 0xA4
    .byte 0xFF
    .byte 0xAA
    .byte 0xFF
    .byte 0xB0
    .byte 0xFF
    .byte 0xB6
    .byte 0xFF
    .byte 0xBC
    .byte 0xFF
    .byte 0xC2
    .byte 0xFF
    .byte 0xC8
    .byte 0xFF
    .byte 0xCF
    .byte 0xFF
    .byte 0xD5
    .byte 0xFF
    .byte 0xDB
    .byte 0xFF
    .byte 0xE1
    .byte 0xFF
    .byte 0xE7
    .byte 0xFF
    .byte 0xEE
    .byte 0xFF
    .byte 0xF4
    .byte 0xFF
    .byte 0xFA
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 6
    .byte 0
    .byte 0xC
    .byte 0
    .byte 0x12
    .byte 0
    .byte 0x19
    .byte 0
    .byte 0x1F
    .byte 0
    .byte 0x25 
    .byte 0
    .byte 0x2B 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x56 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x6D 
    .byte 0
    .byte 0x73 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x7E 
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x88
    .byte 0
    .byte 0x8E
    .byte 0
    .byte 0x93
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x9D
    .byte 0
    .byte 0xA2
    .byte 0
    .byte 0xA7
    .byte 0
    .byte 0xAB
    .byte 0
    .byte 0xB0
    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0xB9
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0xC1
    .byte 0
    .byte 0xC5
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xCD
    .byte 0
    .byte 0xD1
    .byte 0
    .byte 0xD4
    .byte 0
    .byte 0xD8
    .byte 0
    .byte 0xDB
    .byte 0
    .byte 0xDE
    .byte 0
    .byte 0xE1
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0xE7
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0xEC
    .byte 0
    .byte 0xEE
    .byte 0
    .byte 0xF1
    .byte 0
    .byte 0xF3
    .byte 0
    .byte 0xF4
    .byte 0
    .byte 0xF6
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF9
    .byte 0
    .byte 0xFB
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFD
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFD
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFB
    .byte 0
    .byte 0xF9
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF6
    .byte 0
    .byte 0xF4
    .byte 0
    .byte 0xF3
    .byte 0
    .byte 0xF1
    .byte 0
    .byte 0xEE
    .byte 0
    .byte 0xEC
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0xE7
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0xE1
    .byte 0
    .byte 0xDE
    .byte 0
    .byte 0xDB
    .byte 0
    .byte 0xD8
    .byte 0
    .byte 0xD4
    .byte 0
    .byte 0xD1
    .byte 0
    .byte 0xCD
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xC5
    .byte 0
    .byte 0xC1
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0xB9
    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0xB0
    .byte 0
    .byte 0xAB
    .byte 0
    .byte 0xA7
    .byte 0
    .byte 0xA2
    .byte 0
    .byte 0x9D
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x93
    .byte 0
    .byte 0x8E
    .byte 0
    .byte 0x88
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x7E 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x73 
    .byte 0
    .byte 0x6D 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x56 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x2B 
    .byte 0
    .byte 0x25 
    .byte 0
    .byte 0x1F
    .byte 0
    .byte 0x19
    .byte 0
    .byte 0x12
    .byte 0
    .byte 0xC
    .byte 0
    .byte 6
    .byte 0
// end of function sub_8005D18

.thumb
sub_8006078:
    push {lr}
    bl f900_800098C
    pop {pc}
    .byte 5
    .byte 0x4C 
    .byte 0x23 
    .byte 0x43 
// end of function sub_8006078

.thumb
sub_8006084:
    push {lr}
    ldr r7, [pc, #0x80060a8-0x8006086-2] // dword_2008920
    mov r4, #1
    str r4, [r7]
    strb r2, [r7,#(dword_2008920+1 - 0x2008920)]
    lsr r3, r3, #0x10
    strh r3, [r7,#(dword_2008920+2 - 0x2008920)]
    str r0, [r7,#(dword_2008924 - 0x2008920)]
    str r1, [r7,#(dword_2008928 - 0x2008920)]
    pop {pc}
    .byte 0
    .byte 0
    .byte 0x60 
    .byte 0xA2
// end of function sub_8006084

.thumb
sub_800609C:
    push {lr}
    ldr r1, [pc, #0x80060a8-0x800609e-2] // dword_2008920
    mov r0, #0x80
    strb r0, [r1]
    pop {pc}
    .balign 4, 0x00
off_80060A8:    .word dword_2008920
// end of function sub_800609C

.thumb
sub_80060AC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80060c4-0x80060ae-2] // off_80060C8
    ldr r1, [pc, #0x80060c0-0x80060b0-4] // unk_2009E70
    mov r2, #0x40 
    bl f900_800098C
    ldr r0, [pc, #0x80060c0-0x80060b8-4] // unk_2009E70
    mov r10, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80060C0:    .word unk_2009E70
off_80060C4:    .word off_80060C8
off_80060C8:    .word byte_200A7E0
    .word unk_200A700
    .word unk_200B150
    .word unk_200A380
    .word unk_200AA20
    .word unk_200A430
    .word unk_2035810
    .word dword_2010BC0
    .word word_200A220
    .word unk_200A6B8
    .word unk_3000000
    .word unk_200A500
    .word unk_2039A10
    .word unk_200A450
    .word byte_200A6C0
    .word unk_2001460
// end of function sub_80060AC

.thumb
sub_8006108:
    push {r4-r7,lr}
    bl sub_8001AE0
    mov r1, #0xfe
    lsl r1, r1, #1
    and r0, r1
    add r4, r0, #0
    ldr r5, [pc, #0x8006178-0x8006116-2] // dword_2001550
    ldr r3, [r5]
    str r4, [r5]
    ldr r0, [pc, #0x8006174-0x800611c-4] // unk_2002130
    add r0, r0, r3
    ldr r1, [pc, #0x8006174-0x8006120-4] // unk_2002130
    add r1, r1, r4
    ldr r2, [pc, #0x800617c-0x8006124-4] // =0x3CF0
    ldr r3, [pc, #0x8006180-0x8006126-2] // sub_3006FA4+1
    mov lr, pc
    bx r3
    mov r0, r10
    mov r1, #0x40 
    add r0, r0, r1
    mov r1, #0
    ldr r2, [pc, #0x8006174-0x8006134-4] // unk_2002130
    ldr r3, [r5]
    add r2, r2, r3
    ldr r3, [pc, #0x8006188-0x800613a-2] // dword_800618C
loc_800613C:
    ldr r4, [r3,r1]
    add r4, r4, r2
    str r4, [r0,r1]
    add r1, #4
    cmp r1, #0x5c 
    blt loc_800613C
    pop {r4-r7,pc}
// end of function sub_8006108

.thumb
sub_800614A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8006178-0x800614c-4] // dword_2001550
    mov r0, r10
    mov r1, #0x40 
    add r0, r0, r1
    mov r1, #0
    ldr r2, [pc, #0x8006174-0x8006156-2] // unk_2002130
    ldr r3, [r5]
    mov r4, #0xfe
    lsl r4, r4, #1
    and r3, r4
    add r2, r2, r3
    ldr r3, [pc, #0x8006188-0x8006162-2] // dword_800618C
loc_8006164:
    ldr r4, [r3,r1]
    add r4, r4, r2
    str r4, [r0,r1]
    add r1, #4
    cmp r1, #0x5c 
    blt loc_8006164
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8006174:    .word unk_2002130
off_8006178:    .word dword_2001550
off_800617C:    .word 0x3CF0
off_8006180:    .word sub_3006FA4+1
    .word unk_2009E70
off_8006188:    .word dword_800618C
dword_800618C:    .word 0x0
    .word 0x84
    .word 0x118
    .word 0x4FC
    .word 0x5B4
    .word 0x14B8
    .word 0x164C
    .word 0x2410
    .word 0x2434
    .word 0x2500
    .word 0x2514
    .word 0x2518
    .word 0x251C
    .word 0x252C
    .word 0x2D30
    .word 0x2F34
    .word 0x3638
    .word 0x37CC
    .word 0x39D0
    .word 0x3BD4
    .word 0x3BDC
    .word 0x3BE4
    .word 0x3CE8
// end of function sub_800614A

.thumb
sub_80061E8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x800635c-0x80061ea-2] // dword_2001550
    ldr r4, [r5]
    add r0, r5, #0
    mov r1, #0x80
    bl f900_8000930
    str r4, [r5]
    bl sub_8001AE0
    str r0, [r5,#(dword_2001554 - 0x2001550)]
    mov r6, r10
    mov r0, #0x80
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x80062e0-0x8006204-4] // unk_2000240
    ldr r7, [pc, #0x80062e4-0x8006206-2] // =0x190
loc_8006208:
    sub r7, #1
    blt loc_8006224
loc_800620C:
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    mov r1, #0x2c 
    eor r0, r1
    tst r0, r0
    beq loc_800620C
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8006208
loc_8006224:
    mov r6, r10
    mov r0, #0x84
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x80062e8-0x800622a-2] // unk_2000670
    ldr r7, [pc, #0x80062ec-0x800622c-4] // =0x200
loc_800622E:
    sub r7, #1
    blt loc_800624A
loc_8006232:
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    mov r1, #0x64 
    eor r0, r1
    tst r0, r0
    beq loc_8006232
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_800622E
loc_800624A:
    mov r6, r10
    mov r0, #0x88
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x80062f0-0x8006250-4] // unk_20019A0
    ldr r7, [pc, #0x80062f4-0x8006252-2] // =0x200
loc_8006254:
    sub r7, #1
    blt loc_8006270
loc_8006258:
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    mov r1, #0x38 
    eor r0, r1
    tst r0, r0
    beq loc_8006258
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8006254
loc_8006270:
    ldr r4, [pc, #0x80062f8-0x8006270-4] // dword_2000180
    ldr r6, [pc, #0x80062fc-0x8006272-2] // dword_8011974
loc_8006274:
    bl sub_8001AE0
    lsl r0, r0, #0xc
    lsr r0, r0, #0xc
    eor r0, r6
    tst r0, r0
    beq loc_8006274
    str r0, [r4]
    bl sub_8006478
    ldr r4, [pc, #0x8006300-0x8006288-4] // dword_2001E94
    ldr r6, [pc, #0x8006304-0x800628a-2] // loc_80C0F9C
loc_800628C:
    bl sub_8001AE0
    lsl r0, r0, #0xc
    lsr r0, r0, #0xc
    eor r0, r6
    tst r0, r0
    beq loc_800628C
    str r0, [r4]
    bl sub_80064B4
    mov r6, r10
    mov r0, #0x94
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x8006308-0x80062a6-2] // unk_20003D0
    ldr r7, [pc, #0x800630c-0x80062a8-4] // =0xFF
loc_80062AA:
    sub r7, #1
    blt loc_80062C6
loc_80062AE:
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    mov r1, #0x43 
    eor r0, r1
    tst r0, r0
    beq loc_80062AE
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_80062AA
loc_80062C6:
    ldr r4, [pc, #0x8006310-0x80062c6-2] // dword_2001BA0
    ldr r6, [pc, #0x8006314-0x80062c8-4] // =0x8125E40
loc_80062CA:
    bl sub_8001AE0
    lsl r0, r0, #0xc
    lsr r0, r0, #0xc
    eor r0, r6
    tst r0, r0
    beq loc_80062CA
    str r0, [r4]
    bl sub_8006538
    pop {r4-r7,pc}
off_80062E0:    .word unk_2000240
off_80062E4:    .word 0x190
off_80062E8:    .word unk_2000670
off_80062EC:    .word 0x200
off_80062F0:    .word unk_20019A0
off_80062F4:    .word 0x200
off_80062F8:    .word dword_2000180
off_80062FC:    .word dword_8011974
off_8006300:    .word dword_2001E94
off_8006304:    .word loc_80C0F9C
off_8006308:    .word unk_20003D0
off_800630C:    .word 0x100
off_8006310:    .word dword_2001BA0
dword_8006314:    .word 0x8126511
// end of function sub_80061E8

.thumb
sub_8006318:
    push {r4-r7,lr}
    ldr r7, [pc, #0x800635c-0x800631a-2] // dword_2001550
    ldr r7, [r7,#(dword_2001554 - 0x2001550)]
    sub r1, #1
loc_8006320:
    ldrb r3, [r0,r1]
    eor r3, r7
    strb r3, [r0,r1]
    sub r1, #1
    bge loc_8006320
    ldr r0, [pc, #0x800635c-0x800632a-2] // dword_2001550
    str r7, [r0,#(dword_2001554 - 0x2001550)]
    pop {r4-r7,pc}
// end of function sub_8006318

.thumb
sub_8006330:
    push {r4-r7,lr}
    ldr r7, [pc, #0x800635c-0x8006332-2] // dword_2001550
    ldr r7, [r7,#(dword_2001554 - 0x2001550)]
    sub r1, #1
loc_8006338:
    ldrb r3, [r0,r1]
    eor r3, r7
    strb r3, [r0,r1]
    sub r1, #1
    bge loc_8006338
    ldr r0, [pc, #0x800635c-0x8006342-2] // dword_2001550
    str r7, [r0,#(dword_2001554 - 0x2001550)]
    pop {r4-r7,pc}
// end of function sub_8006330

.thumb
sub_8006348:
    push {r4-r7,lr}
    ldr r7, [pc, #0x800635c-0x800634a-2] // dword_2001550
loc_800634C:
    bl sub_8001AE0
    mvn r0, r0
    tst r0, r0
    beq loc_800634C
    str r0, [r7,#(dword_2001554 - 0x2001550)]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800635C:    .word dword_2001550
// end of function sub_8006348

.thumb
sub_8006360:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006390-0x8006362-2] // unk_2000240
    mov r7, r10
    mov r1, #0x80
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x2c 
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function sub_8006360

.thumb
sub_8006374:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006390-0x8006376-2] // unk_2000240
    mov r7, r10
    mov r1, #0x80
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x2c 
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_800638C
    mov r0, #1
locret_800638C:
    pop {r1-r7,pc}
    .byte 0, 0
off_8006390:    .word unk_2000240
// end of function sub_8006374

.thumb
sub_8006394:
    push {r1-r7,lr}
    ldr r5, [pc, #0x80063c4-0x8006396-2] // unk_2000670
    mov r7, r10
    mov r1, #0x84
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x64 
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function sub_8006394

.thumb
sub_80063A8:
    push {r1-r7,lr}
    ldr r5, [pc, #0x80063c4-0x80063aa-2] // unk_2000670
    mov r7, r10
    mov r1, #0x84
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x64 
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_80063C0
    mov r0, #1
locret_80063C0:
    pop {r1-r7,pc}
    .balign 4, 0x00
off_80063C4:    .word unk_2000670
// end of function sub_80063A8

.thumb
sub_80063C8:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_80063A8
    bne loc_8006408
    cmp r4, #0xff
    beq loc_8006404
    add r0, r7, #0
    bl sub_8019010
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_80063F6
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_80063F6
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_80063F6
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_8006408
loc_80063F6:
    add r0, r7, #0
    add r1, r4, #0
    bl sub_80191FC
    ldrb r0, [r0]
    tst r0, r0
    beq loc_8006408
loc_8006404:
    mov r0, #0
    pop {r1-r7,pc}
loc_8006408:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_80063C8

.thumb
sub_800640C:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_80063A8
    bne loc_800643E
    cmp r4, #0xff
    beq loc_800643A
    add r0, r7, #0
    bl sub_8019010
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_800643A
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_800643A
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_800643A
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_800643E
loc_800643A:
    mov r0, #0
    pop {r1-r7,pc}
loc_800643E:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_800640C

.thumb
sub_8006442:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_800659E
    bne loc_8006474
    cmp r4, #0xff
    beq loc_8006470
    add r0, r7, #0
    bl sub_8019010
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_8006470
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_8006470
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_8006470
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_8006474
loc_8006470:
    mov r0, #0
    pop {r1-r7,pc}
loc_8006474:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_8006442

.thumb
sub_8006478:
    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x74]
    ldr r1, [pc, #0x80064b0-0x8006480-4] // dword_2000180
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x8c
    ldr r1, [r1,r2]
    str r0, [r1]
    pop {r0-r7,pc}
// end of function sub_8006478

.thumb
sub_8006490:
    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x74]
    ldr r1, [pc, #0x80064b0-0x8006498-4] // dword_2000180
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x8c
    ldr r1, [r1,r2]
    ldr r1, [r1]
    cmp r0, r1
    beq locret_80064AC
    mov r0, #1
locret_80064AC:
    pop {r0-r7,pc}
    .byte 0, 0
off_80064B0:    .word dword_2000180
// end of function sub_8006490

.thumb
sub_80064B4:
    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x78]
    ldr r1, [pc, #0x80064ec-0x80064bc-4] // dword_2001E94
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x90
    ldr r1, [r1,r2]
    str r0, [r1]
    pop {r0-r7,pc}
// end of function sub_80064B4

.thumb
sub_80064CC:
    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x78]
    ldr r1, [pc, #0x80064ec-0x80064d4-4] // dword_2001E94
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x90
    ldr r1, [r1,r2]
    ldr r1, [r1]
    cmp r0, r1
    beq locret_80064E8
    mov r0, #1
locret_80064E8:
    pop {r0-r7,pc}
    .balign 4, 0x00
off_80064EC:    .word dword_2001E94
// end of function sub_80064CC

.thumb
sub_80064F0:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006534-0x80064f2-2] // unk_20003D0
    mov r7, r10
    mov r1, #0x94
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x43 
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function sub_80064F0

.thumb
sub_8006504:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006534-0x8006506-2] // unk_20003D0
    mov r7, r10
    mov r1, #0x94
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x43 
    eor r1, r2
    mvn r1, r1
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function sub_8006504

.thumb
sub_800651A:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006534-0x800651c-4] // unk_20003D0
    mov r7, r10
    mov r1, #0x94
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x43 
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_8006532
    mov r0, #1
locret_8006532:
    pop {r1-r7,pc}
off_8006534:    .word unk_20003D0
// end of function sub_800651A

.thumb
sub_8006538:
    push {r0-r7,lr}
    mov r0, #0x36 
    bl sub_800D752
    ldr r1, [pc, #0x8006570-0x8006540-4] // dword_2001BA0
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x98
    ldr r1, [r1,r2]
    str r0, [r1]
    pop {r0-r7,pc}
// end of function sub_8006538

.thumb
sub_8006550:
    push {r0-r7,lr}
    mov r0, #0x36 
    bl sub_800D752
    ldr r1, [pc, #0x8006570-0x8006558-4] // dword_2001BA0
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x98
    ldr r1, [r1,r2]
    ldr r1, [r1]
    cmp r0, r1
    beq locret_800656C
    mov r0, #1
locret_800656C:
    pop {r0-r7,pc}
    .byte 0, 0
off_8006570:    .word dword_2001BA0
// end of function sub_8006550

.thumb
sub_8006574:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006628-0x8006576-2] // unk_20019A0
    ldr r4, [pc, #0x800662c-0x8006578-4] // =0x18C0
    ldr r6, [pc, #0x8006630-0x800657a-2] // =0x200
    mov r7, #0
loc_800657E:
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_8006594
    mov r0, r10
    mov r1, #0x88
    ldr r0, [r0,r1]
    ldrb r1, [r5,r7]
    mov r2, #0x38 
    eor r1, r2
    strb r1, [r0,r7]
loc_8006594:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_800657E
    pop {r1-r7,pc}
// end of function sub_8006574

.thumb
sub_800659E:
    push {r1-r7,lr}
    push {r0}
    bl sub_80063A8
    pop {r0}
    beq locret_80065C0
    ldr r5, [pc, #0x8006628-0x80065aa-2] // unk_20019A0
    mov r7, r10
    mov r1, #0x88
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x38 
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_80065C0
    mov r0, #1
locret_80065C0:
    pop {r1-r7,pc}
// end of function sub_800659E

.thumb
sub_80065C2:
    push {r1-r7,lr}
    ldr r4, [pc, #0x800662c-0x80065c4-4] // =0x18C0
    ldr r6, [pc, #0x8006630-0x80065c6-2] // =0x200
    mov r7, #0
loc_80065CA:
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_80065DA
    add r0, r7, #0
    bl sub_800659E
    bne loc_8006622
loc_80065DA:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_80065CA
    ldr r4, [pc, #0x8006634-0x80065e2-2] // =0x1AC0
    ldr r6, [pc, #0x8006638-0x80065e4-4] // =0x200
    mov r7, #0
loc_80065E8:
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_80065F8
    add r0, r7, #0
    bl sub_800659E
    bne loc_8006622
loc_80065F8:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_80065E8
    ldr r4, [pc, #0x800663c-0x8006600-4] // =0x16C0
    ldr r6, [pc, #0x8006640-0x8006602-2] // =0x200
    mov r7, #0
loc_8006606:
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_8006616
    add r0, r7, #0
    bl sub_80063A8
    bne loc_8006622
loc_8006616:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_8006606
    mov r0, #0
    pop {r1-r7,pc}
loc_8006622:
    mov r0, #1
    pop {r1-r7,pc}
    .balign 4, 0x00
off_8006628:    .word unk_20019A0
off_800662C:    .word 0x18C0
off_8006630:    .word 0x200
off_8006634:    .word 0x1AC0
off_8006638:    .word 0x200
off_800663C:    .word 0x16C0
off_8006640:    .word 0x200
// end of function sub_80065C2

.thumb
sub_8006644:
    push {r5,lr}
    bl sub_80405D8
    bne loc_8006650
    bl sub_8035044
loc_8006650:
    mov r5, r10
    ldr r5, [r5,#0x18]
    add r0, r5, #0
    mov r1, #0xa0
    bl f900_8000930
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r1, [r0,#0x2c]
    str r1, [r5,#0x3c]
    mov r0, #0x58 
    add r0, r0, r5
    mov r1, #8
    mov r2, #0xff
    bl f900_80009B4
    mov r0, #1
    strb r0, [r5,#0x1b]
    ldr r0, [pc, #0x80066f4-0x8006674-4] // dword_2037C40
    mov r1, #0x10
    bl f900_8000904
    ldr r0, [pc, #0x80066f8-0x800667c-4] // =0x3000800
    mov r1, #0x18
    lsl r1, r1, #8
    bl f900_8000950
    mov r0, #0
    ldr r1, [pc, #0x80066fc-0x8006688-4] // byte_200A3C8
    strb r0, [r1]
    bl sub_80078A4
    bl sub_8006A20
    bl sub_8085444
    bl sub_8006A80
    bl sub_8017A04
    bl sub_800B79A
    mov r0, #0
    bl sub_800D640
    mov r0, #1
    bl sub_800D640
    bl sub_80090D4
    bl sub_8007A7C
    bl sub_8007D38
    bl sub_8007DF0
    bl sub_801904C
    bl sub_800802A
    bl sub_800C63E
    bl sub_80027F4
    bl sub_800EEB4
    bl sub_8022EFC
    bl sub_8007C3A
    bl sub_80078BA
    bl sub_8022C92
    ldr r0, [pc, #0x8006700-0x80066e4-4] // dword_2037810
    ldr r1, [pc, #0x8006704-0x80066e6-2] // =0x6014000
    str r1, [r0]
    add r1, r0, #0
    add r1, #8
    str r1, [r0,#(dword_2037814 - 0x2037810)]
    pop {r5,pc}
    .balign 4, 0x00
off_80066F4:    .word dword_2037C40
dword_80066F8:    .word 0x3000800
off_80066FC:    .word byte_200A3C8
off_8006700:    .word dword_2037810
dword_8006704:    .word 0x6014000
// end of function sub_8006644

.thumb
sub_8006708:
    push {lr}
    bl sub_8026104
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0xf0
    mov r4, #0
    bl sub_8025CFC
    mov r0, #0
    bl sub_8025F1E
    pop {pc}
// end of function sub_8006708

.thumb
sub_8006724:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r0, [r0,#8]
    bl ho_8006734
    bl sub_80F5628
    pop {pc}
// end of function sub_8006724

.thumb
ho_8006734:
    push {r6,lr}
    add r6, r0, #0
loc_8006738:
    ldrb r0, [r6]
    cmp r0, #0xff
    beq loc_800674E
    ldrb r0, [r6,#3]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8006754-0x8006742-2] // jt_8006758
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    add r6, #4
    b loc_8006738
loc_800674E:
    ldrh r0, [r5,#4]
    strh r0, [r5,#0x12]
    pop {r6,pc}
off_8006754:    .word jt_8006758
jt_8006758:    .word sub_800677C+1
    .word sub_8006794+1
    .word sub_8006838+1
    .word sub_8006860+1
    .word sub_8006892+1
    .word sub_80068A0+1
    .word sub_80068BE+1
    .word sub_80068D4+1
    .word sub_8006794+1
// end of function ho_8006734

.thumb
sub_800677C:
    push {lr}
    ldrb r2, [r6]
    mov r0, #4
    add r0, r0, r2
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    bl sub_80068E8
    pop {pc}
// end of function sub_800677C

.thumb
sub_8006794:
    push {r4,r7,lr}
    mov r8, r0
    push {r0}
    ldrb r0, [r6]
    bl sub_800B002
    mov r8, r0
    bl sub_8011824
    add r7, r0, #0
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    bl sub_800AB0A
    mov r3, #0
    add r2, r1, #0
    add r1, r0, #0
    ldrb r0, [r7,#2]
    ldrb r4, [r7,#5]
    push {r5}
    bl sub_8003298
    add r4, r5, #0
    pop {r5}
    beq loc_8006832
    ldrb r0, [r4]
    mov r1, #4
    orr r0, r1
    strb r0, [r4]
    mov r0, r8
    strb r0, [r4,#0xf]
    ldrb r1, [r5,#7]
    mov r2, #0x60 
    add r2, r2, r1
    strb r0, [r5,r2]
    add r1, #1
    strb r1, [r5,#7]
    ldrb r0, [r5,#9]
    strb r0, [r4,#0xe]
    add r0, #1
    strb r0, [r5,#9]
    ldrh r1, [r7]
    add r2, r1, #0
    lsl r2, r2, #0x14
    lsr r2, r2, #0x14
    strh r2, [r4,#0x24]
    strh r2, [r4,#0x26]
    lsr r1, r1, #0xc
    strb r1, [r4,#0x17]
    ldrh r0, [r7,#0xa]
    strh r0, [r4,#0x2c]
    mov r0, #0xa
    strh r0, [r4,#0x2e]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    strb r0, [r4,#0x12]
    strb r1, [r4,#0x13]
    strb r0, [r4,#0x14]
    strb r1, [r4,#0x15]
    ldr r0, [pc, #0x8006ae4-0x800680a-2] // =0xFFFF
    strh r0, [r4,#0x2a]
    ldrb r2, [r6,#3]
    cmp r2, #8
    bne loc_8006822
    mov r0, #0
    strb r0, [r4,#0x16]
    ldrb r0, [r5,#4]
    add r1, r0, #1
    strb r1, [r5,#4]
    str r4, [r5,#0x44]
    b loc_8006832
loc_8006822:
    mov r0, #1
    strb r0, [r4,#0x16]
    ldrb r0, [r5,#5]
    add r1, r0, #1
    strb r1, [r5,#5]
    lsl r0, r0, #2
    add r0, #0x48 
    str r4, [r5,r0]
loc_8006832:
    pop {r0}
    mov r8, r0
    pop {r4,r7,pc}
// end of function sub_8006794

.thumb
sub_8006838:
    push {r4,lr}
    bl sub_8001AF6
    mov r1, #0xf
    svc 6
    ldrb r0, [r6]
    mov r2, #0xf
    and r2, r0
    cmp r0, r1
    ble locret_800685E
    lsr r0, r0, #4
    bl sub_80CF946
    add r4, r0, #0
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    mov r2, #0
    bl sub_80CF924
locret_800685E:
    pop {r4,pc}
// end of function sub_8006838

.thumb
sub_8006860:
    push {r4,r6,r7,lr}
    mov r7, #0x80
    add r7, r7, r5
    ldr r0, [r7]
    tst r0, r0
    beq loc_8006874
    add r7, #4
    ldr r0, [r7]
    tst r0, r0
    bne locret_8006890
loc_8006874:
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    bl sub_8009A52
    mov r1, #0x20 
    and r0, r1
    lsr r4, r0, #5
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    mov r2, #0
    mov r6, #0x64 
    bl sub_80DB14E
    str r0, [r7]
locret_8006890:
    pop {r4,r6,r7,pc}
// end of function sub_8006860

.thumb
sub_8006892:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r2, [r6]
    bl sub_8006930
    pop {pc}
// end of function sub_8006892

.thumb
sub_80068A0:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    mov r2, #0
    mov r3, #0
    push {r4,r6,r7}
    mov r4, #0
    mov r6, #0x94
    lsl r6, r6, #0x10
    add r6, #0x14
    mov r7, #0
    bl sub_80DBEF6
    pop {r4,r6,r7}
    pop {pc}
// end of function sub_80068A0

.thumb
sub_80068BE:
    push {r4,lr}
    mov r4, #1
    lsl r4, r4, #8
    ldrb r0, [r6,#1]
    add r4, r4, r0
    lsl r4, r4, #8
    ldrb r0, [r6]
    add r4, r4, r0
    bl sub_80E680A
    pop {r4,pc}
// end of function sub_80068BE

.thumb
sub_80068D4:
    push {lr}
    ldrb r1, [r6,#1]
    ldrb r2, [r6,#2]
    ldrb r3, [r6]
    lsr r4, r3, #7
    lsl r3, r3, #0x19
    lsr r3, r3, #0x16
    bl sub_80E069A
    pop {pc}
// end of function sub_80068D4

.thumb
sub_80068E8:
    push {r4,lr}
    push {r0-r2,r5}
    mov r4, #0
    mov r0, #0
    bl sub_8003298
    add r4, r5, #0
    pop {r0-r2,r5}
    beq locret_800692E
    strb r2, [r4,#0x16]
    strb r0, [r4,#0x12]
    strb r1, [r4,#0x13]
    strb r0, [r4,#0x14]
    strb r1, [r4,#0x15]
    bl sub_800AB0A
    str r0, [r4,#0x34]
    str r1, [r4,#0x38]
    mov r2, #0
    str r2, [r4,#0x3c]
    ldrb r0, [r4]
    mov r1, #4
    orr r0, r1
    strb r0, [r4]
    ldrb r0, [r4,#0x16]
    bl sub_800BFB8
    str r0, [r4,#0x58]
    mov r0, #0x44 
    ldrb r1, [r5,#0xd]
    ldrb r2, [r4,#0x16]
    eor r2, r1
    lsl r2, r2, #2
    add r0, r0, r2
    str r4, [r5,r0]
locret_800692E:
    pop {r4,pc}
// end of function sub_80068E8

.thumb
sub_8006930:
    push {r4,lr}
    sub sp, sp, #0x1c
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, #4
    mul r0, r2
    ldr r1, [pc, #0x8006ae8-0x800693e-2] // byte_200AB10
    add r0, r0, r1
    ldrb r3, [r0]
    str r3, [sp,#0xc]
    ldrb r4, [r0,#1]
    str r4, [sp,#0x10]
    ldrb r3, [r0,#2]
    str r3, [sp,#0x14]
    mov r0, #4
    add r0, r0, r2
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    mov r0, r10
    ldr r0, [r0,#0x78]
    mov r1, #0x40 
    mul r1, r4
    add r0, r0, r1
    mov r1, #0x40 
    mul r2, r1
    ldr r1, [pc, #0x8006aec-0x8006966-2] // unk_203BEC0
    add r1, r1, r2
    mov r2, #0x40 
    bl f900_800098C
    mov r1, #0xe0
    mul r1, r4
    mov r0, r10
    ldr r0, [r0,#0x7c]
    add r0, r0, r1
    mov r1, #0xe0
    ldr r2, [sp,#8]
    mul r2, r1
    ldr r1, [pc, #0x8006af0-0x8006980-4] // unk_20358B0
    add r1, r1, r2
    bl sub_800F1B4
    ldr r0, [sp,#8]
    mov r1, #0x23 
    ldr r2, [sp,#0xc]
    bl sub_800D706
    ldr r0, [sp,#8]
    mov r1, #0x24 
    mov r2, #0
    bl sub_800D706
    ldr r0, [sp,#8]
    mov r1, #0x26 
    mov r2, #1
    bl sub_800D706
    str r5, [sp,#0x18]
    ldr r4, [sp,#0x14]
    mov r0, #0
    bl sub_8003298
    add r4, r5, #0
    ldr r5, [sp,#0x18]
    beq loc_8006A1C
    ldr r2, [sp,#8]
    strb r2, [r4,#0x16]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    strb r0, [r4,#0x12]
    strb r1, [r4,#0x13]
    strb r0, [r4,#0x14]
    strb r1, [r4,#0x15]
    bl sub_800AB0A
    str r0, [r4,#0x34]
    str r1, [r4,#0x38]
    mov r2, #0
    str r2, [r4,#0x3c]
    ldrb r0, [r4]
    mov r1, #4
    orr r0, r1
    strb r0, [r4]
    ldr r0, [sp,#0xc]
    add r0, #0xf0
    strb r0, [r4,#0xf]
    bl sub_8011824
    ldrh r0, [r0]
    lsr r0, r0, #0xc
    strb r0, [r4,#0x17]
    ldrb r0, [r4,#0x16]
    bl sub_800BFB8
    str r0, [r4,#0x58]
    mov r0, #0x44 
    ldrb r1, [r5,#0xd]
    ldrb r2, [r4,#0x16]
    eor r2, r1
    lsl r2, r2, #2
    add r0, r0, r2
    str r4, [r5,r0]
    ldrb r0, [r4,#0x16]
    tst r0, r0
    beq loc_8006A1C
    ldrb r0, [r4,#0xf]
    ldrb r1, [r5,#7]
    mov r2, #0x60 
    add r2, r2, r1
    strb r0, [r5,r2]
    add r1, #1
    strb r1, [r5,#7]
    ldrb r0, [r5,#9]
    strb r0, [r4,#0xe]
    add r0, #1
    strb r0, [r5,#9]
loc_8006A1C:
    add sp, sp, #0x1c
    pop {r4,pc}
// end of function sub_8006930

.thumb
sub_8006A20:
    push {r5,lr}
    ldr r0, [pc, #0x8006a7c-0x8006a22-2] // =0x6008000
    mov r1, #0x40 
    bl f900_8000930
    ldr r0, [pc, #0x8006a70-0x8006a2a-2] // =0x6008000
    mov r1, #0x40 
    bl f900_8000930
    ldr r0, [pc, #0x8006a44-0x8006a32-2] // aPpP
    bl f800_80008EC
    ldr r0, [pc, #0x8006a74-0x8006a38-4] // dword_8702300
    ldr r1, [pc, #0x8006a78-0x8006a3a-2] // =0x6001460
    bl sub_81116FC
    pop {r5,pc}
    .balign 4, 0x00
off_8006A44:    .word aPpP
aPpP:    .byte 0x60, 0x50, 0x70, 0x8
    .byte 0x70, 0x2A, 0x0
    .byte 0x3
    .word 0x100
    .word dword_8705160
    .word word_3002A50
    .word 0x20
    .word dword_8705160
    .word word_3002780
    .word 0x20
    .word 0x0
dword_8006A70:    .word 0x6008000
off_8006A74:    .word dword_8702300
dword_8006A78:    .word 0x6001460
dword_8006A7C:    .word 0x6008000
// end of function sub_8006A20

.thumb
sub_8006A80:
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x8006aac-0x8006a84-4] // word_8006AB4
loc_8006A86:
    ldrh r2, [r1]
    cmp r2, #0xff
    beq loc_8006A94
    ldrh r3, [r1,#2]
    strh r3, [r0,r2]
    add r1, #4
    b loc_8006A86
loc_8006A94:
    mov r0, r10
    ldr r0, [r0,#0x1c]
    ldr r1, [pc, #0x8006ab0-0x8006a98-4] // word_8006ACA
loc_8006A9A:
    ldrh r2, [r1]
    cmp r2, #0xff
    beq locret_8006AA8
    ldrh r3, [r1,#2]
    strh r3, [r0,r2]
    add r1, #4
    b loc_8006A9A
locret_8006AA8:
    mov pc, lr
    .balign 4, 0x00
off_8006AAC:    .word word_8006AB4
off_8006AB0:    .word word_8006ACA
word_8006AB4:    .hword 0x4
word_8006AB6:    .hword 0x1C08
    .word 0x1D030006, 0x1E020008, 0x1F00000A, 0x7F600000
    .byte 0xFF, 0x0
word_8006ACA:    .hword 0x0
word_8006ACC:    .hword 0xF000
    .hword 0x2
    .word 0x4F000, 0x6A000, 0x8A000, 0xA3F3F, 0xFF3F3F
dword_8006AE4:    .word 0xFFFF
off_8006AE8:    .word byte_200AB10
off_8006AEC:    .word unk_203BEC0
off_8006AF0:    .word unk_20358B0
// end of function sub_8006A80

.thumb
ho_8006AF4:
    push {r5,lr}
    bl sub_8017A60
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldr r1, [pc, #0x8006b0c-0x8006afe-2] // jt_8006B10
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_8006B0C:    .word jt_8006B10
jt_8006B10:    .word ho_cb_8006B24+1
    .word cb_8006C94+1
    .word ho_cb_8006D4A+1
    .word ho_cb_8006F46+1
    .word cb_8006FFC+1
// end of function ho_8006AF4

.thumb
ho_cb_8006B24:
    push {r4,lr}
    bl sub_8017AC8
    cmp r0, #4
    bne loc_8006B4C
loc_8006B2E:
    bl sub_8110A8C
    bl sub_8017A58
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #5
    strb r0, [r1,#0x10]
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8006B72
loc_8006B4C:
    cmp r0, #2
    bne loc_8006B68
    add r4, r0, #0
    bl sub_8017ACE
    mov r0, #8
    and r4, r0
    bne locret_8006B72
    ldr r1, [pc, #0x8006b74-0x8006b5c-4] // jt_8006B78
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,pc}
loc_8006B68:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0xb4
    bge loc_8006B2E
locret_8006B72:
    pop {r4,pc}
off_8006B74:    .word jt_8006B78
jt_8006B78:    .word sub_8006B84+1
    .word sub_8006BAC+1
    .word sub_8006C58+1
// end of function ho_cb_8006B24

.thumb
sub_8006B84:
    push {lr}
    bl sub_800310C
    bl sub_8003492
    bl sub_800349C
    bl sub_80034A6
    bl sub_8006708
    bl sub_800792C
    bl sub_8015888
    bl sub_8022D74
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_8006B84

.thumb
sub_8006BAC:
    push {lr}
    ldr r1, [pc, #0x8006bbc-0x8006bae-2] // off_8006BC0
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8006BBC:    .word off_8006BC0
off_8006BC0:    .word sub_8006BD0+1
    .word sub_8006BDC+1
    .word sub_8006C04+1
    .word sub_8006C28+1
// end of function sub_8006BAC

.thumb
sub_8006BD0:
    push {lr}
    bl sub_8017A28
    mov r0, #4
    strb r0, [r5,#2]
    pop {pc}
// end of function sub_8006BD0

.thumb
sub_8006BDC:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8006BEA
    mov r0, #0
    b loc_8006BEE
loc_8006BEA:
    bl sub_8048104
loc_8006BEE:
    strb r0, [r5,#0xd]
    ldr r1, [pc, #0x8006c00-0x8006bf0-4] // byte_200A3C8
    strb r0, [r1]
    bl sub_80086D4
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
    .byte 0, 0
off_8006C00:    .word byte_200A3C8
// end of function sub_8006BDC

.thumb
sub_8006C04:
    push {lr}
    ldr r0, [pc, #0x8006c24-0x8006c06-2] // =0x12345678
    bl sub_80089D8
    tst r0, r0
    beq locret_8006C22
    bl sub_80089CC
    bl sub_8008774
    bl sub_800887A
    mov r0, #0xc
    strh r0, [r5,#2]
    b locret_8006C22
locret_8006C22:
    pop {pc}
dword_8006C24:    .word 0x12345678
// end of function sub_8006C04

.thumb
sub_8006C28:
    push {lr}
    ldr r0, [pc, #0x8006c54-0x8006c2a-2] // =0x23456789
    bl sub_80089D8
    tst r0, r0
    beq locret_8006C50
    bl sub_80089CC
    bl sub_8008896
    bl sub_8007ABA
    ldrb r0, [r5,#6]
    bl sub_80090EC
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8006C50
locret_8006C50:
    pop {pc}
    .balign 4, 0x00
dword_8006C54:    .word 0x23456789
// end of function sub_8006C28

.thumb
sub_8006C58:
    push {lr}
    bl sub_801241C
    bl sub_8009A3C
    bl sub_800310C
    bl sub_800920C
    ldr r0, [pc, #0x8006c90-0x8006c6a-2] // word_2014000
    bl sub_80029F8
    ldrb r0, [r5,#0xf]
    cmp r0, #0x46 
    bge loc_8006C7E
    ldr r0, [r5,#0x3c]
    ldr r0, [r0,#8]
    bl sub_8002ACC
loc_8006C7E:
    mov r0, #0x58 
    add r0, r0, r5
    mov r1, #8
    mov r2, #0xff
    bl f900_80009B4
    mov r0, #4
    str r0, [r5]
    pop {pc}
off_8006C90:    .word word_2014000
// end of function sub_8006C58

.thumb
cb_8006C94:
    push {r4,lr}
    bl sub_8017AC8
    cmp r0, #4
    bne loc_8006CA4
    mov r0, #0xc
    str r0, [r5]
    b loc_8006D18
loc_8006CA4:
    cmp r0, #2
    bne loc_8006D18
    add r4, r0, #0
    bl sub_8017ACE
    mov r0, #8
    and r4, r0
    bne loc_8006D18
    bl sub_80078A4
    bl sub_8009A2C
    bl sub_8007404
    bl sub_800312C
    bl ho_8025D94
    bl sub_800920C
    bl ho_8014648
    bl sub_8022F70
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#9]
    tst r0, r0
    bne loc_8006D04
    bl sub_8007920
    bne loc_8006D00
    bl sub_8008440
    ldrb r0, [r5,#0xe]
    add r0, #1
    cmp r0, #0xa
    blt loc_8006CF2
    mov r0, #0
loc_8006CF2:
    strb r0, [r5,#0xe]
    ldrb r0, [r5,#0x16]
    add r0, #1
    cmp r0, #2
    blt loc_8006CFE
    mov r0, #0
loc_8006CFE:
    strb r0, [r5,#0x16]
loc_8006D00:
    bl sub_802219A
loc_8006D04:
    mov r0, #0
    bl sub_800C158
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_8006D18
    mov r0, #1
    bl sub_800C158
loc_8006D18:
    bl sub_800292C
    bl sub_8002990
    bl sub_8003B80
    bl sub_8003EB4
    bl sub_8004160
    bl sub_8009278
    bl sub_8014CB0
    bl sub_8022E02
    bl sub_80039D8
    bl sub_8004350
    bl sub_8004574
    bl sub_8007854
    pop {r4,pc}
// end of function cb_8006C94

.thumb
ho_cb_8006D4A:
    push {lr}
    bl sub_80078A4
    bl sub_8009A2C
    ldr r1, [pc, #0x8006d7c-0x8006d54-4] // jt_8006D80
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#1]
    cmp r0, #4
    beq loc_8006D74
    bl sub_800312C
    bl sub_800920C
    bl sub_800292C
    bl sub_8002990
loc_8006D74:
    bl sub_80078A4
    pop {pc}
    .balign 4, 0x00
off_8006D7C:    .word jt_8006D80
jt_8006D80:    .word sub_8006D88+1
    .word sub_8006DFE+1
// end of function ho_cb_8006D4A

.thumb
sub_8006D88:
    push {lr}
    ldr r1, [pc, #0x8006d98-0x8006d8a-2] // off_8006D9C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8006D98:    .word off_8006D9C
off_8006D9C:    .word sub_8006DA4+1
    .word sub_8006DC4+1
// end of function sub_8006D88

.thumb
sub_8006DA4:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8006DB6
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8006DC2
loc_8006DB6:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8006DC2
    mov r0, #4
    strh r0, [r5,#2]
locret_8006DC2:
    pop {pc}
// end of function sub_8006DA4

.thumb
sub_8006DC4:
    push {lr}
    bl sub_8017A52
    tst r0, r0
    beq loc_8006DF4
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8006DDE
    bl sub_8048120
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8006DFC
loc_8006DDE:
    bl sub_8048164
    tst r0, r0
    beq loc_8006DEC
    ldrb r0, [r4,#1]
    cmp r0, #2
    beq locret_8006DFC
loc_8006DEC:
    bl sub_8110A8C
    bl sub_8017A58
loc_8006DF4:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8006DFC:
    pop {pc}
// end of function sub_8006DC4

.thumb
sub_8006DFE:
    push {r4,r6,r7,lr}
    bl f500_80006CC
    mov r4, r10
    ldr r4, [r4,#0x44]
    mov r6, r10
    ldr r6, [r6]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x10]
    cmp r0, #5
    beq loc_8006E5C
    bl sub_8007E16
    cmp r0, #0x49 
    beq loc_8006E26
    cmp r0, #0x48 
    beq loc_8006E26
    cmp r0, #0x4a 
    bne loc_8006E5C
loc_8006E26:
    bl sub_80084AA
    tst r0, r0
    bne loc_8006E4C
    bl sub_8007D6E
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    ldr r0, [r5,#0x18]
    push {r0}
    bl sub_8006644
    pop {r0}
    str r0, [r5,#0x18]
    b locret_8006F44
loc_8006E4C:
    mov r1, #3
    cmp r0, #2
    beq loc_8006E5A
    mov r1, #1
    cmp r0, #1
    beq loc_8006E5A
    mov r1, #2
loc_8006E5A:
    strb r1, [r7,#0x10]
loc_8006E5C:
    bl sub_8007E16
    cmp r0, #0x44 
    bne loc_8006E6A
    bl sub_8008070
    b loc_8006EA2
loc_8006E6A:
    ldrb r0, [r7,#0x10]
    cmp r0, #1
    beq loc_8006E88
    cmp r0, #4
    beq loc_8006E88
    cmp r0, #5
    beq loc_8006EE8
    bl sub_8007EBC
    mov r1, #4
    tst r0, r1
    beq loc_8006EA2
    bl sub_800565E
    b locret_8006F44
loc_8006E88:
    mov r1, #0
    strb r1, [r7,#9]
    mov r0, #0
    bl sub_800EF54
    bl sub_8007EBC
    mov r1, #0x80
    tst r0, r1
    bne loc_8006EA2
    ldrh r0, [r5,#0x34]
    strh r0, [r7,#0x20]
    strh r0, [r4,#0x14]
loc_8006EA2:
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_8006EDA
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#6]
    mov r1, #0x40 
    tst r0, r1
    bne loc_8006EC6
    ldrb r0, [r5,#0xd]
    bl sub_800F552
    add r1, r0, #0
    mov r0, #0x36 
    bl sub_800D74A
    bl sub_8006538
loc_8006EC6:
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8006EDA
    ldrb r0, [r5,#0xd]
    bl sub_800F448
    mov r1, r10
    ldr r1, [r1,#0x78]
    strb r2, [r1]
loc_8006EDA:
    bl sub_8007EBC
    mov r1, #0x10
    tst r0, r1
    beq loc_8006EE8
    bl sub_802D414
loc_8006EE8:
    bl sub_80449E8
    beq loc_8006F08
    mov r0, #1
    mov r1, #0x25 
    bl sub_800D722
    push {r0}
    mov r0, #0
    mov r1, #0x25 
    bl sub_800D722
    pop {r1}
    bl sub_80449B8
    b loc_8006F34
loc_8006F08:
    bl sub_80405D8
    beq loc_8006F14
    bl sub_8040560
    b loc_8006F34
loc_8006F14:
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_8006F24
    ldrb r0, [r5,#0x1e]
    bl sub_803AA54
    b loc_8006F34
loc_8006F24:
    mov r1, #0
    strb r1, [r7]
    ldrb r1, [r7,#4]
    strb r1, [r7,#0xc]
    ldrb r1, [r7,#5]
    strb r1, [r7,#0xd]
    mov r1, #4
    strb r1, [r6]
loc_8006F34:
    mov r0, #0
    strb r0, [r7,#9]
    bl sub_80024F4
    mov r7, r10
    ldr r7, [r7,#8]
    mov r1, #0x40 
    strh r1, [r7]
locret_8006F44:
    pop {r4,r6,r7,pc}
// end of function sub_8006DFE

.thumb
ho_cb_8006F46:
    push {lr}
    bl sub_80078A4
    ldr r1, [pc, #0x8006f90-0x8006f4c-4] // jt_8006F94
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_800292C
    bl sub_8002990
    bl sub_8003B80
    bl sub_8003EB4
    bl sub_8004160
    bl sub_8009278
    bl sub_8014CB0
    bl sub_8022E02
    bl sub_80039D8
    bl sub_8004350
    bl sub_8004574
    bl sub_8007854
    ldr r1, [pc, #0x8006ffc-0x8006f86-2] // dword_203F6D4
    mov r0, #2
    strb r0, [r1,#(dword_203F6D4+1 - 0x203f6d4)]
    pop {pc}
    .byte 0, 0
off_8006F90:    .word jt_8006F94
jt_8006F94:    .word sub_8006FA0+1
    .word sub_8006FCC+1
    .word sub_8006FE4+1
// end of function ho_cb_8006F46

.thumb
sub_8006FA0:
    push {lr}
    bl sub_80078B0
    bl sub_8110A8C
    bl sub_8017A58
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #5
    strb r0, [r1,#0x10]
    bl sub_8005B50
    ldr r0, [pc, #0x8006fc8-0x8006fba-2] // dword_8753658
    mov r1, #0xb
    bl sub_804E2A4
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
off_8006FC8:    .word dword_8753658
// end of function sub_8006FA0

.thumb
sub_8006FCC:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8006FE2
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5,#1]
locret_8006FE2:
    pop {pc}
// end of function sub_8006FCC

.thumb
sub_8006FE4:
    push {lr}
    bl sub_8005B5C
    tst r0, r0
    bne locret_8006FFA
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8006FFA:
    pop {pc}
cb_8006FFC:    .word dword_203F6D4
// end of function sub_8006FE4

.thumb
ho_8007000:
    push {r5,lr}
    ldr r5, [pc, #0x8007038-0x8007002-2] // byte_203BCB0
    ldr r1, [pc, #0x8007018-0x8007004-4] // jt_800701C
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80221F0
    ldrb r0, [r5,#(byte_203BCB4 - 0x203bcb0)]
    pop {r5,pc}
    .balign 4, 0x00
off_8007018:    .word jt_800701C
jt_800701C:    .word sub_800703C+1
    .word sub_80070C8+1
    .word sub_8007174+1
    .word sub_800722A+1
    .word sub_80072C8+1
    .word ho_cb_8007336+1
    .word sub_80073D0+1
off_8007038:    .word byte_203BCB0
// end of function ho_8007000

.thumb
sub_800703C:
    push {lr}
    mov r0, #0
    bl sub_800BA44
    mov r0, #1
    bl sub_800BA44
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800709E
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_8007E1E
    tst r0, r0
    beq loc_8007072
    mov r0, #0xa5
    lsl r0, r0, #2
    sub r0, #1
    strh r0, [r5,#0xa]
    mov r0, #0x10
    mov r1, #0
    b loc_800709A
loc_8007072:
    bl sub_80405D8
    beq loc_8007084
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#8]
    cmp r1, #1
    bne loc_80070A6
    b loc_800708C
loc_8007084:
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8007092
loc_800708C:
    mov r0, #0
    mov r1, #0
    b loc_800709A
loc_8007092:
    mov r0, #0xc
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#8]
loc_800709A:
    bl sub_80160D2
loc_800709E:
    bl sub_801609C
    cmp r0, #0
    bne locret_80070C4
loc_80070A6:
    mov r0, #0xff
    bl sub_80169BE
    bl sub_8007E16
    cmp r0, #0x44 
    bne loc_80070C0
    bl sub_801691A
    bl sub_80080B8
    bl sub_8016818
loc_80070C0:
    mov r0, #4
    str r0, [r5]
locret_80070C4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_800703C

.thumb
sub_80070C8:
    push {lr}
    mov r0, #0
    bl sub_800BA44
    mov r0, #1
    bl sub_800BA44
    bl sub_80078BA
    mov r0, #1
    bl sub_8007A4C
    bl sub_800833C
    bl sub_8007B88
    bl sub_8007E1E
    tst r0, r0
    beq loc_80070F4
    bl sub_8008036
loc_80070F4:
    bl sub_80079AE
    cmp r0, #1
    bne loc_800710C
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #8
    str r0, [r5]
    b locret_8007172
loc_800710C:
    cmp r0, #2
    bne loc_8007120
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0xc
    str r0, [r5]
    b locret_8007172
loc_8007120:
    cmp r0, #7
    bne loc_800712A
    mov r0, #0x14
    str r0, [r5]
    b locret_8007172
loc_800712A:
    bl sub_8007C88
    tst r0, r0
    beq loc_800713C
    bl sub_80078B0
    bl sub_8007F84
    b locret_8007172
loc_800713C:
    bl sub_80078CC
    cmp r0, #0xff
    beq loc_8007154
    strb r0, [r5,#5]
    bl sub_80078B0
    mov r0, #0x18
    str r0, [r5]
    bl sub_8016610
    b locret_8007172
loc_8007154:
    bl sub_8007CE0
    beq loc_8007160
    bl sub_8020E70
    b loc_8007166
loc_8007160:
    bl sub_8007A06
    beq locret_8007172
loc_8007166:
    bl sub_80078B0
    bl sub_800B9EC
    mov r0, #6
    strb r0, [r5,#4]
locret_8007172:
    pop {pc}
// end of function sub_80070C8

.thumb
sub_8007174:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800720A
    ldr r0, [pc, #0x8007400-0x800717c-4] // =0x33449A
    bl sub_8015AFA
    ldr r0, [pc, #0x8007400-0x8007182-2] // =0x33449A
    bl sub_8015902
    bl sub_800B590
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5,#3]
    mov r1, #0xe0
    mov r2, #0xe3
    bl sub_8007CB6
    tst r0, r0
    beq loc_80071AA
    mov r0, #0x66 
    strh r0, [r5,#8]
    b loc_80071D6
loc_80071AA:
    bl sub_8007E16
    cmp r0, #0x42 
    beq loc_80071B6
    cmp r0, #0x43 
    bne loc_80071BC
loc_80071B6:
    mov r2, #0x18
    mov r4, #0x41 
    b loc_80071CE
loc_80071BC:
    bl sub_8007EBC
    mov r4, #0x41 
    mov r2, #0x18
    mov r1, #2
    tst r0, r1
    bne loc_80071CE
    mov r2, #0x1e
    mov r4, #0x66 
loc_80071CE:
    add r0, r2, #0
    bl f500_8000560
    strh r4, [r5,#8]
loc_80071D6:
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_80071F0
    bl sub_80405D8
    beq loc_80071F8
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_80084DE
    b loc_8007206
loc_80071F0:
    mov r0, #0
    bl sub_80084DE
    b loc_8007206
loc_80071F8:
    bl sub_80079AE
    add r1, r0, #0
    mov r0, #4
    cmp r1, #7
    bne loc_8007206
    mov r0, #0x14
loc_8007206:
    bl sub_80160D2
loc_800720A:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801609C
    cmp r0, #0
    bne locret_8007228
    ldrh r0, [r5,#8]
    tst r0, r0
    bne locret_8007228
    mov r0, #1
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#0x10]
locret_8007228:
    pop {r4,pc}
// end of function sub_8007174

.thumb
sub_800722A:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80072A8
    ldr r0, [pc, #0x8007400-0x8007232-2] // =0x33449A
    bl sub_8015AFA
    ldr r0, [pc, #0x8007400-0x8007238-4] // =0x33449A
    bl sub_8015902
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    mov r2, #1
    eor r1, r2
    strb r1, [r0,#0x10]
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_8007258
    mov r0, #0x19
    bl f500_8000560
loc_8007258:
    bl sub_8007EBC
    mov r1, #2
    tst r0, r1
    bne loc_8007266
    mov r4, #0x66 
    b loc_8007268
loc_8007266:
    mov r4, #0x41 
loc_8007268:
    strh r4, [r5,#8]
    bl sub_8007E16
    cmp r0, #0x44 
    bne loc_8007280
    mov r0, #0x1e
    bl f500_8000560
    mov r0, #1
    bl sub_80084DE
    b loc_80072A0
loc_8007280:
    bl sub_80405D8
    beq loc_8007292
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8008500
    b loc_80072A0
loc_8007292:
    bl sub_80079AE
    add r1, r0, #0
    mov r0, #8
    cmp r1, #7
    bne loc_80072A0
    mov r0, #0x18
loc_80072A0:
    bl sub_80160D2
    mov r0, #4
    strb r0, [r5,#3]
loc_80072A8:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801609C
    cmp r0, #0
    bne locret_80072C6
    ldrh r0, [r5,#8]
    tst r0, r0
    bne locret_80072C6
    mov r0, #2
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#0x10]
locret_80072C6:
    pop {r4,pc}
// end of function sub_800722A

.thumb
sub_80072C8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80072EA
    ldr r0, [pc, #0x8007400-0x80072d0-4] // =0x33449A
    bl sub_8015AFA
    ldr r0, [pc, #0x8007400-0x80072d6-2] // =0x33449A
    bl sub_8015902
    mov r0, #0x66 
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0x1c
    bl sub_80160D2
loc_80072EA:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801609C
    cmp r0, #0
    bne locret_8007334
    ldrh r0, [r5,#8]
    tst r0, r0
    blt locret_8007334
    bl sub_8007E16
    cmp r0, #0x49 
    beq loc_800730E
    cmp r0, #0x48 
    beq loc_800730E
    cmp r0, #0x4a 
    bne loc_800732A
loc_800730E:
    bl sub_80084AA
    cmp r0, #0
    beq loc_800732A
    cmp r0, #2
    beq loc_800732A
    cmp r0, #1
    bne loc_8007324
    mov r0, #8
    str r0, [r5]
    b locret_8007334
loc_8007324:
    mov r0, #0xc
    str r0, [r5]
    b locret_8007334
loc_800732A:
    mov r0, #3
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#0x10]
locret_8007334:
    pop {pc}
// end of function sub_80072C8

.thumb
ho_cb_8007336:
    push {lr}
    ldr r1, [pc, #0x8007344-0x8007338-4] // jt_8007348
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8007344:    .word jt_8007348
jt_8007348:    .word sub_8007350+1
    .word sub_8007376+1
// end of function ho_cb_8007336

.thumb
sub_8007350:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007360
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8007360:
    ldrh r0, [r5,#8]
    add r0, #1
    strh r0, [r5,#8]
    cmp r0, #0x3c 
    blt locret_8007374
    mov r0, #0x80
    bl sub_8015AFA
    mov r0, #4
    strh r0, [r5,#2]
locret_8007374:
    pop {pc}
// end of function sub_8007350

.thumb
sub_8007376:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800739A
    mov r0, #1
    bl sub_800C736
    push {r0}
    mov r0, #0
    bl sub_800C736
    add r1, r0, #0
    pop {r0}
    bl sub_8021EA8
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80073CE
loc_800739A:
    bl ho_8021EE8
    tst r0, r0
    bne locret_80073CE
    cmp r1, #1
    bne loc_80073B6
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #8
    str r0, [r5]
    b locret_80073CE
loc_80073B6:
    cmp r1, #2
    bne loc_80073CA
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0xc
    str r0, [r5]
    b locret_80073CE
loc_80073CA:
    mov r0, #0x10
    str r0, [r5]
locret_80073CE:
    pop {pc}
// end of function sub_8007376

.thumb
sub_80073D0:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_8007904
    tst r0, r0
    beq locret_80073E6
    mov r0, #4
    str r0, [r5]
    ldr r0, [pc, #0x80073ec-0x80073e0-4] // =0x1000
    bl sub_8015AFA
locret_80073E6:
    pop {pc}
    .word dword_2037C40
off_80073EC:    .word 0x1000
// end of function sub_80073D0

.thumb
sub_80073F0:
    push {lr}
    ldr r0, [pc, #0x80073fc-0x80073f2-2] // byte_203BCB0
    mov r1, #0xc
    bl f900_8000930
    pop {pc}
off_80073FC:    .word byte_203BCB0
dword_8007400:    .word 0x33449A
// end of function sub_80073F0

.thumb
sub_8007404:
    push {lr}
    ldr r1, [pc, #0x8007414-0x8007406-2] // off_8007418
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8007414:    .word off_8007418
off_8007418:    .word sub_800743C+1
    .word sub_8007528+1
    .word sub_80075E0+1
    .word sub_800761A+1
    .word sub_80076F0+1
    .word sub_800776E+1
    .word sub_80077B6+1
    .word sub_80077EA+1
    .word sub_800781E+1
// end of function sub_8007404

.thumb
sub_800743C:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800749C
    bl sub_8007E16
    cmp r0, #0x49 
    beq loc_800745C
    cmp r0, #0x48 
    beq loc_800745C
    cmp r0, #0x4a 
    beq loc_800745C
    ldr r1, [r5,#0x3c]
    ldrb r1, [r1,#7]
    strb r1, [r5,#0x1a]
    b loc_8007462
loc_800745C:
    ldrb r1, [r5,#0x1a]
    add r1, #1
    strb r1, [r5,#0x1a]
loc_8007462:
    mov r4, #4
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#6]
    mov r1, #0x20 
    tst r0, r1
    bne loc_8007470
    mov r4, #7
loc_8007470:
    bl sub_80E1E22
    bl sub_8006724
    bl sub_80078B0
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800748C
    sub r0, #0x46 
    ldr r1, [pc, #0x80074e0-0x8007486-2] // dword_80074E8
    ldrb r0, [r1,r0]
    b loc_8007490
loc_800748C:
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#3]
loc_8007490:
    cmp r0, #0xff
    beq loc_8007498
    bl f500_8000560
loc_8007498:
    mov r0, #4
    strb r0, [r5,#3]
loc_800749C:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_80074B4
    ldr r0, [r5,#0x3c]
    ldrb r1, [r0,#6]
    mov r2, #0x20 
    tst r1, r2
    bne loc_80074B0
    bl sub_80074F0
loc_80074B0:
    mov r0, #4
    strb r0, [r5,#2]
loc_80074B4:
    bl sub_80019A0
    lsr r0, r0, #2
    bcc locret_80074DE
    ldr r0, [r5,#0x3c]
    ldrb r1, [r0,#6]
    mov r2, #0x20 
    tst r1, r2
    beq loc_80074CA
    bl sub_80074F0
loc_80074CA:
    ldr r0, [pc, #0x80074e4-0x80074ca-2] // =0x4000
    bl sub_80158F8
    ldr r0, [pc, #0x80074e4-0x80074d0-4] // =0x4000
    bl sub_8015DCC
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80074DE:
    pop {r4,r6,r7,pc}
off_80074E0:    .word dword_80074E8
dword_80074E4:    .word 0x4000
dword_80074E8:    .word 0x15151414
    .word 0x171717
// end of function sub_800743C

.thumb
sub_80074F0:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_800751E
    ldr r0, [pc, #0x8007524-0x80074fa-2] // =0x404
    bl sub_80158F8
    ldr r0, [pc, #0x8007524-0x8007500-4] // =0x404
    bl sub_8015DCC
    bl sub_80405D8
    bne loc_8007512
    bl sub_8016940
    b loc_8007516
loc_8007512:
    bl sub_80169C6
loc_8007516:
    mov r0, #0
    mov r1, #0
    bl sub_8015ACA
loc_800751E:
    bl sub_8015950
    pop {pc}
off_8007524:    .word 0x405
// end of function sub_80074F0

.thumb
sub_8007528:
    push {lr}
    ldr r1, [pc, #0x8007538-0x800752a-2] // off_800753C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8007538:    .word off_800753C
off_800753C:    .word sub_8007548+1
    .word sub_8007588+1
    .word sub_80075AC+1
// end of function sub_8007528

.thumb
sub_8007548:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007560
    ldrb r1, [r5,#0x1a]
    tst r1, r1
    beq loc_800756E
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8007586
loc_8007560:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8007586
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_800756E:
    bl sub_8022D04
    beq loc_800757E
    mov r0, #0xf
    bl sub_8020E70
    mov r0, #0x20 
    b loc_8007580
loc_800757E:
    mov r0, #8
loc_8007580:
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007586:
    pop {pc}
// end of function sub_8007548

.thumb
sub_8007588:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800759E
    mov r0, #0
    ldrb r1, [r5,#0x1a]
    bl sub_80160D2
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80075AA
loc_800759E:
    bl sub_801609C
    tst r0, r0
    bne locret_80075AA
    mov r0, #8
    strh r0, [r5,#2]
locret_80075AA:
    pop {pc}
// end of function sub_8007588

.thumb
sub_80075AC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80075BE
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80075DE
loc_80075BE:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_80075DE
    bl sub_8022D04
    beq loc_80075D6
    mov r0, #0xf
    bl sub_8020E70
    mov r0, #0x20 
    b loc_80075D8
loc_80075D6:
    mov r0, #8
loc_80075D8:
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80075DE:
    pop {pc}
// end of function sub_80075AC

.thumb
sub_80075E0:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_80075FE
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_8007610
    mov r0, #4
    bl sub_8007E9A
    mov r0, #1
    strb r0, [r5,#3]
    bl sub_801DB68
loc_80075FE:
    bl ho_801E02C
    cmp r0, #0
    beq locret_8007618
    cmp r0, #2
    bne loc_8007610
    bl sub_8007F84
    b locret_8007618
loc_8007610:
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007618:
    pop {pc}
// end of function sub_80075E0

.thumb
sub_800761A:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800762A
    bl sub_80073F0
    mov r0, #4
    strb r0, [r5,#3]
loc_800762A:
    bl ho_8007000
    bl sub_8008628
    cmp r0, #6
    bne loc_800764A
    bl sub_8022D04
    beq loc_8007640
    mov r0, #0x20 
    b loc_8007642
loc_8007640:
    mov r0, #8
loc_8007642:
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_80076EE
loc_800764A:
    cmp r0, #0
    beq locret_80076EE
    push {r0}
    ldrb r0, [r5,#0xd]
    bl sub_800F568
    add r1, r0, #0
    ldrb r0, [r5,#0xd]
    bl sub_800F55C
    ldrb r0, [r5,#0xd]
    bl sub_800F670
    pop {r0}
    cmp r0, #1
    bne loc_80076AA
    bl sub_8008524
    strb r0, [r5,#0x1e]
    bl sub_8007E16
    mov r2, #0x18
    cmp r0, #0x42 
    beq loc_80076E8
    mov r2, #0x1c
    cmp r0, #0x43 
    beq loc_80076E8
    bl sub_8007EBC
    mov r1, #2
    tst r0, r1
    beq loc_80076E6
    bl sub_8007E16
    mov r2, #0x10
    cmp r0, #0x49 
    beq loc_800769C
    cmp r0, #0x48 
    beq loc_800769C
    cmp r0, #0x4a 
    bne loc_80076E8
loc_800769C:
    push {r2}
    bl sub_80084AA
    tst r0, r0
    pop {r2}
    beq loc_80076E6
    b loc_80076E8
loc_80076AA:
    cmp r0, #2
    bne loc_80076E6
    bl sub_8008524
    strb r0, [r5,#0x1e]
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_80076E6
    bl sub_8007EBC
    mov r1, #2
    tst r0, r1
    beq loc_80076E6
    bl sub_8007E16
    mov r2, #0x10
    cmp r0, #0x49 
    beq loc_80076D8
    cmp r0, #0x48 
    beq loc_80076D8
    cmp r0, #0x4a 
    bne loc_80076E8
loc_80076D8:
    push {r2}
    bl sub_80084AA
    tst r0, r0
    pop {r2}
    beq loc_80076E6
    b loc_80076E8
loc_80076E6:
    mov r2, #0x14
loc_80076E8:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80076EE:
    pop {r4,pc}
// end of function sub_800761A

.thumb
sub_80076F0:
    push {lr}
    ldr r1, [pc, #0x8007700-0x80076f2-2] // off_8007704
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8007700:    .word off_8007704
off_8007704:    .word sub_800770C+1
    .word sub_800774A+1
// end of function sub_80076F0

.thumb
sub_800770C:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007722
    bl sub_800893A
    mov r0, #0
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8007748
loc_8007722:
    ldr r0, [pc, #0x8007844-0x8007722-2] // =0x1F2F3F4F
    bl sub_80089D8
    tst r0, r0
    beq loc_800773A
    bl sub_80089CC
    bl sub_8008964
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_800773A:
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
    cmp r0, #0xb4
    ble locret_8007748
    mov r0, #0xc
    str r0, [r5]
locret_8007748:
    pop {pc}
// end of function sub_800770C

.thumb
sub_800774A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800775C
    ldr r0, [pc, #0x8007848-0x8007752-2] // unk_20363D0
    bl sub_802180A
    mov r0, #4
    strb r0, [r5,#3]
loc_800775C:
    bl sub_8021288
    .byte 0
    .byte 0x42 
    .byte 3
    .byte 0xD1
    .byte 0x14
    .byte 0x20
    .byte 0x68 
    .byte 0x70 
    .byte 0
    .byte 0x20
    .byte 0x68 
    .byte 0x80
    .byte 0
    .byte 0xBD
// end of function sub_800774A

.thumb
sub_800776E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80077A0
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0xe0
    mov r2, #0xe3
    bl sub_80B656C
    add sp, sp, #0x10
    cmp r0, #0
    beq loc_8007792
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x10]
    cmp r0, #1
    beq loc_80077A6
loc_8007792:
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80077B4
loc_80077A0:
    bl sub_8005B5C
    beq locret_80077B4
loc_80077A6:
    bl f500_80006CC
    mov r0, #0x1a
    bl sub_80034F6
    mov r0, #8
    str r0, [r5]
locret_80077B4:
    pop {pc}
// end of function sub_800776E

.thumb
sub_80077B6:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80077CC
    ldr r0, [pc, #0x800784c-0x80077be-2] // unk_87496AC
    mov r1, #0xb
    bl sub_804E2A4
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80077E8
loc_80077CC:
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80077E8
    bl sub_8007EBC
    mov r2, #0x10
    mov r1, #2
    tst r0, r1
    bne loc_80077E2
    mov r2, #0x14
loc_80077E2:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80077E8:
    pop {pc}
// end of function sub_80077B6

.thumb
sub_80077EA:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007800
    ldr r0, [pc, #0x8007850-0x80077f2-2] // unk_8749B60
    mov r1, #0xb
    bl sub_804E2A4
    mov r0, #4
    strb r0, [r5,#3]
    b locret_800781C
loc_8007800:
    mov r0, #0x80
    bl sub_80539A0
    bne locret_800781C
    bl sub_8007EBC
    mov r2, #0x10
    mov r1, #2
    tst r0, r1
    bne loc_8007816
    mov r2, #0x14
loc_8007816:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_800781C:
    pop {pc}
// end of function sub_80077EA

.thumb
sub_800781E:
    push {lr}
    bl ho_8020EA4
    cmp r0, #0
    beq locret_8007840
    bl sub_800B98C
    bl sub_8015A80
    bl sub_8016796
    bl sub_8015AB0
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007840:
    pop {pc}
    .balign 4, 0x00
dword_8007844:    .word 0x1F2F3F4F
off_8007848:    .word unk_20363D0
off_800784C:    .word unk_87496AC
off_8007850:    .word unk_8749B60
// end of function sub_800781E

.thumb
sub_8007854:
    push {r5-r7,lr}
    ldr r6, [pc, #0x800787c-0x8007856-2] // dword_3002038
    ldr r6, [r6]
    ldr r7, [pc, #0x8007878-0x800785a-2] // dword_3003260
loc_800785C:
    tst r6, r6
    beq locret_8007876
    sub r6, #1
    ldr r0, [r7]
    ldr r1, [r7,#(dword_3003264 - 0x3003260)]
    ldr r2, [r7,#(dword_3003268 - 0x3003260)]
    ldr r3, [r7,#(dword_300326C - 0x3003260)]
    push {r6,r7}
    bl sub_8025BD8
    pop {r6,r7}
    add r7, #0x10
    b loc_800785C
locret_8007876:
    pop {r5-r7,pc}
off_8007878:    .word dword_3003260
off_800787C:    .word dword_3002038
// end of function sub_8007854

.thumb
sub_8007880:
    push {r4,r6,r7,lr}
    ldr r6, [pc, #0x80078a0-0x8007882-2] // dword_3002038
    ldr r4, [r6]
    ldr r7, [pc, #0x800789c-0x8007886-2] // dword_3003260
    lsl r4, r4, #4
    add r7, r7, r4
    str r0, [r7]
    str r1, [r7,#4]
    str r2, [r7,#8]
    str r3, [r7,#0xc]
    lsr r4, r4, #4
    add r4, #1
    str r4, [r6]
    pop {r4,r6,r7,pc}
off_800789C:    .word dword_3003260
off_80078A0:    .word dword_3002038
// end of function sub_8007880

.thumb
sub_80078A4:
    mov r0, #0
    ldr r1, [pc, #0x80078ac-0x80078a6-2] // dword_3002038
    str r0, [r1]
    mov pc, lr
off_80078AC:    .word dword_3002038
// end of function sub_80078A4

.thumb
sub_80078B0:
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #1
    strb r0, [r1,#9]
    mov pc, lr
// end of function sub_80078B0

.thumb
sub_80078BA:
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0
    strb r0, [r1,#9]
    mov pc, lr
// end of function sub_80078BA

.thumb
sub_80078C4:
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r0, [r1,#9]
    mov pc, lr
// end of function sub_80078C4

.thumb
sub_80078CC:
    push {lr}
    bl sub_80079EA
    add r1, r0, #0
    mov r0, #0xff
    tst r1, r1
    bne locret_80078FC
    bl sub_8007920
    add r1, r0, #0
    mov r0, #0xff
    tst r1, r1
    bne locret_80078FC
    ldr r3, [pc, #0x8007900-0x80078e6-2] // dword_2037C40
    ldrh r1, [r3,#(dword_2037C44 - 0x2037c40)]
    mov r2, #8
    tst r1, r2
    beq loc_80078F4
    mov r0, #0
    pop {pc}
loc_80078F4:
    ldrh r1, [r3,#(dword_2037C4C - 0x2037c40)]
    tst r1, r2
    beq locret_80078FC
    mov r0, #1
locret_80078FC:
    pop {pc}
    .byte 0, 0
off_8007900:    .word dword_2037C40
// end of function sub_80078CC

.thumb
sub_8007904:
    mov r2, #8
    mul r0, r2
    ldr r3, [pc, #0x800791c-0x8007908-4] // dword_2037C40
    add r3, r3, r0
    ldrh r1, [r3,#4]
    mov r2, #8
    mov r0, #0
    tst r1, r2
    beq locret_8007918
    mov r0, #1
locret_8007918:
    mov pc, lr
    .balign 4, 0x00
off_800791C:    .word dword_2037C40
// end of function sub_8007904

.thumb
sub_8007920:
    push {lr}
    bl sub_8007A64
    mov r1, #4
    and r0, r1
    pop {pc}
// end of function sub_8007920

.thumb
sub_800792C:
    ldr r0, [pc, #0x8007954-0x800792c-4] // dword_2037C40
    mov r1, #0
    str r1, [r0]
    str r1, [r0,#(dword_2037C44 - 0x2037c40)]
    add r0, #8
    str r1, [r0]
    str r1, [r0,#(dword_2037C4C - 0x2037c48)]
    mov pc, lr
// end of function sub_800792C

.thumb
sub_800793C:
    lsl r0, r0, #3
    ldr r3, [pc, #0x8007954-0x800793e-2] // dword_2037C40
    add r3, r3, r0
    ldrh r2, [r3,#2]
    strh r1, [r3,#2]
    mvn r0, r2
    and r0, r1
    strh r0, [r3,#4]
    mvn r0, r1
    and r2, r0
    strh r2, [r3,#6]
    mov pc, lr
off_8007954:    .word dword_2037C40
// end of function sub_800793C

.thumb
sub_8007958:
    mov r1, #8
    mul r0, r1
    ldr r1, [pc, #0x8007964-0x800795c-4] // dword_2037C40
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_8007964:    .word dword_2037C40
// end of function sub_8007958

.thumb
sub_8007968:
    ldrb r0, [r5,#0x16]
    add r0, #4
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
    mov pc, lr
// end of function sub_8007968

.thumb
sub_8007978:
    ldrb r0, [r5,#0x16]
    add r0, #0x12
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
    mov r2, #0
    add r1, #0x44 
loc_800798A:
    ldr r0, [r1]
    cmp r0, r5
    bne loc_8007994
    mov r0, #0
    str r0, [r1]
loc_8007994:
    add r1, #4
    add r2, #1
    cmp r2, #4
    blt loc_800798A
    mov pc, lr
// end of function sub_8007978

.thumb
sub_800799E:
    ldrb r0, [r5,#0x16]
    add r0, #0x12
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
    mov pc, lr
// end of function sub_800799E

.thumb
sub_80079AE:
    push {lr}
    bl sub_8007920
    bne loc_80079E6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r2, [r0,#0xd]
    ldrb r1, [r0,#4]
    tst r1, r1
    bne loc_80079CC
    mov r0, #2
    tst r2, r2
    beq locret_80079E8
    mov r0, #1
    b locret_80079E8
loc_80079CC:
    ldrb r1, [r0,#5]
    tst r1, r1
    bne loc_80079DC
    mov r0, #1
    tst r2, r2
    beq locret_80079E8
    mov r0, #2
    b locret_80079E8
loc_80079DC:
    ldrb r1, [r0,#0xb]
    tst r1, r1
    beq loc_80079E6
    mov r0, #7
    b locret_80079E8
loc_80079E6:
    mov r0, #0
locret_80079E8:
    pop {pc}
// end of function sub_80079AE

.thumb
sub_80079EA:
    mov r0, #1
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x12]
    tst r1, r1
    beq locret_8007A04
    ldrb r1, [r3,#0x13]
    tst r1, r1
    beq locret_8007A04
    ldrb r1, [r3,#0xb]
    tst r1, r1
    bne locret_8007A04
    mov r0, #0
locret_8007A04:
    mov pc, lr
// end of function sub_80079EA

.thumb
sub_8007A06:
    push {lr}
    bl sub_8007920
    bne loc_8007A3C
    bl sub_80079EA
    tst r0, r0
    bne loc_8007A3C
    bl sub_8007E1E
    tst r0, r0
    bne loc_8007A3C
    bl sub_8007A64
    mov r1, #2
    tst r0, r1
    beq locret_8007A3E
    ldr r2, [pc, #0x8007a40-0x8007a28-4] // dword_2037C40
    ldrh r1, [r2,#(dword_2037C44 - 0x2037c40)]
    ldrh r2, [r2,#(dword_2037C4C - 0x2037c40)]
    orr r1, r2
    mov r2, #3
    lsl r2, r2, #8
    tst r1, r2
    beq loc_8007A3C
    mov r0, #1
    pop {pc}
loc_8007A3C:
    mov r0, #0
locret_8007A3E:
    pop {pc}
off_8007A40:    .word dword_2037C40
// end of function sub_8007A06

.thumb
sub_8007A44:
    mov r1, r10
    ldr r1, [r1,#0x18]
    strh r0, [r1,#0x32]
    mov pc, lr
// end of function sub_8007A44

.thumb
sub_8007A4C:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r2, [r1,#0x32]
    orr r2, r0
    strh r2, [r1,#0x32]
    mov pc, lr
// end of function sub_8007A4C

.thumb
sub_8007A58:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r2, [r1,#0x32]
    bic r2, r0
    strh r2, [r1,#0x32]
    mov pc, lr
// end of function sub_8007A58

.thumb
sub_8007A64:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r0, [r1,#0x32]
    mov pc, lr
// end of function sub_8007A64

.thumb
sub_8007A6C:
    mov r1, #0xc
    mul r1, r0
    ldr r0, [pc, #0x8007a78-0x8007a70-4] // dword_80FA7D4
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_8007A78:    .word dword_80FA7D4
// end of function sub_8007A6C

.thumb
sub_8007A7C:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x78]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrh r0, [r3,#0x20]
    strh r0, [r4,#0x30]
    ldrh r0, [r3,#0x22]
    strh r0, [r4,#0x32]
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrh r0, [r3,#0x16]
    strh r0, [r4,#0x34]
    mov r1, #0x64 
    svc 6
    mov r1, #0x25 
    strb r0, [r4,r1]
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r1, [r2,#0x2c]
    str r1, [r3,#0x3c]
    ldrb r0, [r2,#0xb]
    cmp r0, #0xff
    bne loc_8007AB2
    ldrb r0, [r1,#4]
loc_8007AB2:
    strb r0, [r3,#0xf]
    ldrb r0, [r1,#1]
    strb r0, [r3,#6]
    pop {r4,pc}
// end of function sub_8007A7C

.thumb
sub_8007ABA:
    push {r4,lr}
    mov r7, #0
    bl sub_8007E16
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r1, [pc, #0x8007b38-0x8007ac6-2] // dword_8018550
    ldr r0, [r1,r0]
    tst r0, r0
    bne loc_8007AD2
    mov r0, r10
    ldr r0, [r0,#0x4c]
loc_8007AD2:
    mov r1, r10
    ldr r1, [r1,#0x4c]
    cmp r0, r1
    bne loc_8007AE8
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#2]
    mov r2, #0x3c 
    mul r1, r2
    add r0, r0, r1
    mov r7, #1
loc_8007AE8:
    push {r0}
    ldr r1, [pc, #0x8007dc4-0x8007aea-2] // word_203BE80
    mov r2, #0x3c 
    bl f900_800097A
    pop {r0}
    tst r7, r7
    bne loc_8007AFC
    bl sub_8007B40
loc_8007AFC:
    ldr r0, [pc, #0x8007b3c-0x8007afc-4] // dword_801867C
    ldrb r0, [r4,r0]
    tst r0, r0
    beq locret_8007B36
    mov r4, #0
loc_8007B06:
    ldr r0, [pc, #0x8007dc8-0x8007b06-2] // word_203BE80
    mov r1, #0x1e
    mov r2, #0x1e
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#0x1c]
    cmp r3, #0xff
    beq loc_8007B24
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r4, #1
    strb r4, [r3,#0x17]
    ldr r0, [pc, #0x8007dcc-0x8007b1e-2] // =0x203BE82
    mov r1, #0x1d
    mov r2, #0x1d
loc_8007B24:
    bl fA00_8000B42
    bl sub_8007B62
    tst r0, r0
    beq locret_8007B36
    add r4, #1
    cmp r4, #3
    blt loc_8007B06
locret_8007B36:
    pop {r4,pc}
off_8007B38:    .word dword_8018550
off_8007B3C:    .word dword_801867C
// end of function sub_8007ABA

.thumb
sub_8007B40:
    push {r4,r6,lr}
    add r4, r0, #0
    mov r6, #0
loc_8007B46:
    ldrh r0, [r4]
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r2, #0
    push {r0}
    bl sub_8006394
    pop {r0}
    add r4, #2
    add r6, #1
    cmp r6, #0x1e
    blt loc_8007B46
    pop {r4,r6,pc}
// end of function sub_8007B40

.thumb
sub_8007B62:
    push {r4,r5,lr}
    add r4, r0, #0
    mov r5, #0
loc_8007B68:
    ldrh r0, [r4]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #2
    beq loc_8007B84
    add r4, #2
    add r5, #1
    cmp r5, #0xf
    blt loc_8007B68
    mov r0, #0
    pop {r4,r5,pc}
loc_8007B84:
    mov r0, #1
    pop {r4,r5,pc}
// end of function sub_8007B62

.thumb
sub_8007B88:
    push {lr}
    bl sub_8007920
    bne locret_8007BB2
    bl sub_80078C4
    tst r0, r0
    bne locret_8007BB2
    bl sub_80079EA
    bne locret_8007BB2
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_8007BB2
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r1, [r0,#0x40]
    add r1, #1
    str r1, [r0,#0x40]
locret_8007BB2:
    pop {pc}
// end of function sub_8007B88

.thumb
sub_8007BB4:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x40]
    mov pc, lr
// end of function sub_8007BB4

.thumb
sub_8007BBC:
    mov r1, #0xc
    mul r1, r0
    ldr r0, [pc, #0x8007dd0-0x8007bc0-4] // dword_80FA7D4
    add r0, r0, r1
    mov pc, lr
// end of function sub_8007BBC

.thumb
sub_8007BC6:
    mov r1, #0xc
    mul r1, r0
    ldr r0, [pc, #0x8007dd4-0x8007bca-2] // dword_80FC00C
    add r0, r0, r1
    mov pc, lr
// end of function sub_8007BC6

.thumb
sub_8007BD0:
    push {lr}
    mov r0, #1
    mov r3, r10
    ldr r3, [r3]
    ldrb r1, [r3]
    cmp r1, #8
    bne locret_8007BE8
    ldr r3, [pc, #0x8007bec-0x8007bde-2] // dword_203F6D4
    ldrb r1, [r3,#(dword_203F6D4+1 - 0x203f6d4)]
    cmp r1, #2
    beq locret_8007BE8
    mov r0, #0
locret_8007BE8:
    pop {pc}
    .balign 4, 0x00
off_8007BEC:    .word dword_203F6D4
// end of function sub_8007BD0

.thumb
sub_8007BF0:
    push {lr}
    push {r0}
    bl sub_80019A0
    pop {r2}
    mov r1, #4
    tst r2, r2
    beq loc_8007C02
    mov r1, #8
loc_8007C02:
    tst r0, r1
    beq loc_8007C0A
    mov r0, #1
    pop {pc}
loc_8007C0A:
    mov r0, #0
    pop {pc}
// end of function sub_8007BF0

.thumb
sub_8007C0E:
    push {lr}
    push {r0}
    bl sub_800BFB8
    ldrh r1, [r0,#0x3a]
    tst r1, r1
    pop {r0}
    bne loc_8007C36
    push {r0}
    bl sub_80019A0
    pop {r2}
    mov r1, #4
    tst r2, r2
    beq loc_8007C2E
    mov r1, #8
loc_8007C2E:
    tst r0, r1
    beq loc_8007C36
    mov r0, #1
    pop {pc}
loc_8007C36:
    mov r0, #0
    pop {pc}
// end of function sub_8007C0E

.thumb
sub_8007C3A:
    push {lr}
    mov r0, #0xc
    bl sub_80019A8
    pop {pc}
// end of function sub_8007C3A

.thumb
sub_8007C44:
    push {r7,lr}
    ldr r7, [pc, #0x8007dd8-0x8007c46-2] // byte_200B480
    strb r0, [r7,#(byte_200B481 - 0x200b480)]
    strb r1, [r7,#(byte_200B482 - 0x200b480)]
    strb r2, [r7,#(byte_200B483 - 0x200b480)]
    strb r3, [r7,#(byte_200B484 - 0x200b480)]
    strb r4, [r7,#(byte_200B485 - 0x200b480)]
    strb r5, [r7,#(byte_200B486 - 0x200b480)]
    strb r6, [r7,#(byte_200B487 - 0x200b480)]
    ldr r0, [pc, #0x8007ddc-0x8007c56-2] // dword_200A120
    str r0, [r7,#(dword_200B488 - 0x200b480)]
    mov r0, #0
    strb r0, [r7]
    pop {r7,pc}
// end of function sub_8007C44

.thumb
sub_8007C60:
    push {r4,lr}
    ldr r0, [pc, #0x8007de0-0x8007c62-2] // dword_200A120
    add r4, r0, #0
    mov r1, #0x20 
    mov r2, #0xff
    bl f900_80009B4
    ldr r0, [pc, #0x8007c78-0x8007c6e-2] // =0x20200
    str r0, [r4]
    ldr r0, [pc, #0x8007c7c-0x8007c72-2] // =0x1020501
    str r0, [r4,#(dword_200A124 - 0x200a120)]
    pop {r4,pc}
dword_8007C78:    .word 0x20200
dword_8007C7C:    .word 0x1020501
// end of function sub_8007C60

.thumb
sub_8007C80:
    ldr r2, [pc, #0x8007de4-0x8007c80-4] // dword_200A120
    lsl r0, r0, #2
    str r1, [r2,r0]
    mov pc, lr
// end of function sub_8007C80

.thumb
sub_8007C88:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x44 
    bne loc_8007CB2
    bl sub_8007920
    bne loc_8007CB2
    bl sub_80079EA
    tst r0, r0
    bne loc_8007CB2
    ldr r3, [pc, #0x8007db8-0x8007ca0-4] // dword_2037C40
    ldrh r1, [r3,#(dword_2037C44 - 0x2037c40)]
    ldrh r2, [r3,#(dword_2037C4C - 0x2037c40)]
    orr r1, r2
    mov r2, #4
    tst r1, r2
    beq loc_8007CB2
    mov r0, #1
    pop {pc}
loc_8007CB2:
    mov r0, #0
    pop {pc}
// end of function sub_8007C88

.thumb
sub_8007CB6:
    push {r4-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x18]
    add r6, #0x48 
    mov r3, #0
    mov r4, #0
loc_8007CC2:
    ldr r7, [r6,r3]
    cmp r7, #0
    beq loc_8007CD4
    ldrb r5, [r7,#0xf]
    cmp r5, r1
    blt loc_8007CD4
    cmp r5, r2
    bgt loc_8007CD4
    add r4, #1
loc_8007CD4:
    add r3, #4
    cmp r3, #0x10
    blt loc_8007CC2
    add r0, r4, #0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8007CB6

.thumb
sub_8007CE0:
    push {lr}
    bl sub_8022D04
    beq loc_8007D0A
    bl sub_8007920
    bne loc_8007D0A
    bl sub_80079EA
    tst r0, r0
    bne loc_8007D0A
    mov r0, #0
    bl sub_8007D0E
    push {r0}
    mov r0, #1
    bl sub_8007D0E
    pop {r1}
    orr r0, r1
    pop {pc}
loc_8007D0A:
    mov r0, #0
    pop {pc}
// end of function sub_8007CE0

.thumb
sub_8007D0E:
    push {r4,lr}
    lsl r4, r0, #1
    mov r1, #8
    mul r1, r0
    add r1, #4
    ldr r2, [pc, #0x8007db8-0x8007d18-4] // dword_2037C40
    ldrh r1, [r2,r1]
    mov r2, #0x80
    tst r1, r2
    beq loc_8007D28
    mov r0, #1
    lsl r0, r4
    b locret_8007D36
loc_8007D28:
    mov r2, #0x40 
    tst r1, r2
    beq loc_8007D34
    mov r0, #2
    lsl r0, r4
    b locret_8007D36
loc_8007D34:
    mov r0, #0
locret_8007D36:
    pop {r4,pc}
// end of function sub_8007D0E

.thumb
sub_8007D38:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x1a]
    tst r0, r0
    bne locret_8007D6C
    bl sub_8007E16
    mov r6, #2
    cmp r0, #0x4a 
    beq loc_8007D56
    mov r6, #0
    cmp r0, #0x47 
    ble loc_8007D56
    mov r6, #1
loc_8007D56:
    ldr r4, [pc, #0x8007de8-0x8007d56-2] // byte_2035CA0
    mov r5, #0
loc_8007D5A:
    add r0, r6, #0
    bl sub_803A974
    strb r0, [r4]
    strb r1, [r4,#1]
    add r4, #2
    add r5, #1
    cmp r5, #4
    blt loc_8007D5A
locret_8007D6C:
    pop {r4-r6,pc}
// end of function sub_8007D38

.thumb
sub_8007D6E:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldrb r0, [r5,#0x1a]
    mov r1, #2
    mul r0, r1
    ldr r2, [pc, #0x8007dec-0x8007d7e-2] // byte_2035CA0
    add r2, r2, r0
    ldrb r1, [r2,#1]
    strb r1, [r4,#0xf]
    ldrb r0, [r2]
    bl sub_8007BC6
    str r0, [r4,#0x2c]
    pop {r4,r5,pc}
// end of function sub_8007D6E

.thumb
sub_8007D90:
    push {lr}
    ldrb r3, [r0,#2]
    ldrb r1, [r0,#6]
    mov r2, #0x80
    tst r1, r2
    bne loc_8007DB4
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#0xd]
    cmp r1, #2
    ble loc_8007DA8
    mov r1, #2
loc_8007DA8:
    mov r2, #0x3c 
    mul r1, r2
    add r3, r3, r1
    cmp r3, #0xff
    ble loc_8007DB4
    mov r3, #0xff
loc_8007DB4:
    add r0, r3, #0
    pop {pc}
off_8007DB8:    .word dword_2037C40
    .word word_203AC10
    .word word_2037BC0
off_8007DC4:    .word word_203BE80
off_8007DC8:    .word word_203BE80
dword_8007DCC:    .word 0x203BE82
off_8007DD0:    .word dword_80FA7D4
off_8007DD4:    .word dword_80FC00C
off_8007DD8:    .word byte_200B480
off_8007DDC:    .word dword_200A120
off_8007DE0:    .word dword_200A120
off_8007DE4:    .word dword_200A120
off_8007DE8:    .word byte_2035CA0
off_8007DEC:    .word byte_2035CA0
// end of function sub_8007D90

.thumb
sub_8007DF0:
    push {lr}
    ldr r0, [pc, #0x8008154-0x8007df2-2] // byte_2035CB0
    bl sub_8007E00
    ldr r0, [pc, #0x8008158-0x8007df8-4] // byte_2035D00
    bl sub_8007E00
    pop {pc}
// end of function sub_8007DF0

.thumb
sub_8007E00:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x50 
    bl f900_8000930
    add r0, r4, #2
    mov r1, #0xc
    mov r2, #0xff
    bl f900_80009B4
    pop {r4,pc}
// end of function sub_8007E00

.thumb
sub_8007E16:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xf]
    mov pc, lr
// end of function sub_8007E16

.thumb
sub_8007E1E:
    push {lr}
    bl sub_80405D8
    bne loc_8007E3A
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0xf]
    cmp r1, #0x46 
    blt loc_8007E3A
    ldrb r1, [r3,#8]
    cmp r1, #0xf
    blt loc_8007E3A
    mov r0, #1
    pop {pc}
loc_8007E3A:
    mov r0, #0
    pop {pc}
// end of function sub_8007E1E

.thumb
sub_8007E3E:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    add r3, #0x48 
    add r2, r0, #0
    mov r0, #0
    mov r4, #0
loc_8007E4C:
    ldr r1, [r3]
    tst r1, r1
    beq loc_8007E58
    ldrb r1, [r1,#0xf]
    strb r1, [r2,r0]
    add r0, #1
loc_8007E58:
    add r3, #4
    add r4, #1
    cmp r4, #4
    blt loc_8007E4C
    pop {r4,pc}
// end of function sub_8007E3E

.thumb
sub_8007E62:
    push {r4,lr}
    bl sub_800BFAE
    add r4, r0, #0
    ldrb r0, [r4]
    add r0, r0, r0
    add r4, r4, r0
    add r4, #0x32 
loc_8007E72:
    ldrh r0, [r4]
    ldr r1, [pc, #0x800815c-0x8007e74-4] // =0xFFFF
    cmp r0, r1
    beq locret_8007E82
    bl sub_8007E84
    add r4, #2
    b loc_8007E72
locret_8007E82:
    pop {r4,pc}
// end of function sub_8007E62

.thumb
sub_8007E84:
    ldr r1, [pc, #0x8008160-0x8007e84-4] // byte_20364A8
    ldrb r3, [r1]
    add r3, r3, r3
    ldr r2, [pc, #0x8008164-0x8007e8a-2] // word_203DB70
    strh r0, [r2,r3]
    ldrb r3, [r1]
    add r3, #1
    mov r0, #0x3f 
    and r3, r0
    strb r3, [r1]
    mov pc, lr
// end of function sub_8007E84

.thumb
sub_8007E9A:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x11]
    orr r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8007E9A

.thumb
sub_8007EA6:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x11]
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8007EA6

.thumb
sub_8007EB2:
    mov r3, r10
    ldr r3, [r3,#0x18]
    add r0, #0x14
    ldrb r0, [r3,r0]
    mov pc, lr
// end of function sub_8007EB2

.thumb
sub_8007EBC:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r0, [r3,#0xf]
    add r0, r0, r0
    ldr r1, [pc, #0x8008168-0x8007ec4-4] // =0x80186C0
    ldrh r0, [r1,r0]
    mov pc, lr
// end of function sub_8007EBC

.thumb
sub_8007ECA:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,#0xd]
    eor r0, r2
    mov pc, lr
// end of function sub_8007ECA

.thumb
sub_8007ED4:
    mov r0, r10
    ldr r0, [r0,#0x18]
    mov r1, #0x58 
    add r0, r0, r1
    mov r2, #0
    ldrb r0, [r0]
    ldrb r1, [r5,#0xe]
    cmp r0, r1
    bne loc_8007EE8
    mov r2, #1
loc_8007EE8:
    add r0, r2, #0
    mov pc, lr
// end of function sub_8007ED4

.thumb
sub_8007EEC:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x18]
    mov r0, #0x58 
    add r7, r7, r0
    ldrb r2, [r5,#0xe]
    mov r0, #0
loc_8007EFA:
    ldrb r1, [r7,r0]
    cmp r1, r2
    beq loc_8007F0E
    cmp r1, #0xff
    bne loc_8007F08
    strb r2, [r7,r0]
    b loc_8007F12
loc_8007F08:
    add r0, #1
    cmp r0, #8
    bne loc_8007EFA
loc_8007F0E:
    mov r0, #0
    pop {r7,pc}
loc_8007F12:
    mov r0, #1
    pop {r7,pc}
// end of function sub_8007EEC

.thumb
sub_8007F16:
    push {lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r0, #0x58 
    add r3, r3, r0
    ldrb r2, [r5,#0xe]
    mov r0, #0
loc_8007F24:
    ldrb r1, [r3,r0]
    cmp r2, r1
    bne loc_8007F2E
    mov r1, #0xff
    strb r1, [r3,r0]
loc_8007F2E:
    add r0, #1
    cmp r0, #8
    bne loc_8007F24
    bl sub_8007F3A
    pop {pc}
// end of function sub_8007F16

.thumb
sub_8007F3A:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r0, #0x58 
    add r3, r3, r0
    add r1, r3, #0
    mov r4, #7
    add r4, r4, r3
    mov r0, #0
loc_8007F4C:
    ldrb r0, [r3]
    cmp r0, #0xff
    beq loc_8007F56
    strb r0, [r1]
    add r1, #1
loc_8007F56:
    add r3, #1
    cmp r3, r4
    bne loc_8007F4C
loc_8007F5C:
    cmp r1, r4
    beq locret_8007F68
    mov r0, #0xff
    strb r0, [r3]
    add r1, #1
    b loc_8007F5C
locret_8007F68:
    pop {r4,pc}
// end of function sub_8007F3A

.thumb
sub_8007F6A:
    mov r3, r10
    ldr r3, [r3,#0x18]
    add r3, #0x58 
    mov r0, #0
    mov r2, #0
loc_8007F74:
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    beq loc_8007F7C
    add r0, #1
loc_8007F7C:
    add r2, #1
    cmp r2, #8
    blt loc_8007F74
    mov pc, lr
// end of function sub_8007F6A

.thumb
sub_8007F84:
    push {r5,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #4
    strb r0, [r1,#0x10]
    bl sub_800B590
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldrb r0, [r5,#0xd]
    bl sub_800F568
    add r1, r0, #0
    ldrb r0, [r5,#0xd]
    bl sub_800F55C
    ldrb r0, [r5,#0xd]
    bl sub_800F670
    mov r0, r10
    ldr r0, [r0,#0x18]
    mov r1, #0x14
    strb r1, [r0,#1]
    mov r1, #0
    strh r1, [r0,#2]
    pop {r5,pc}
// end of function sub_8007F84

.thumb
sub_8007FB8:
    push {r4,lr}
    mov r4, #0
loc_8007FBC:
    add r0, r4, #0
    bl sub_8007FCA
    add r4, #1
    cmp r4, #8
    blt loc_8007FBC
    pop {r4,pc}
// end of function sub_8007FB8

.thumb
sub_8007FCA:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x2c 
    mul r0, r1
    ldr r2, [pc, #0x800816c-0x8007fd2-2] // unk_2001610
    add r0, r0, r2
    mov r2, #0
    mvn r2, r2
    bl f900_80009DC
    mov r1, #0x2c 
    mul r4, r1
    ldr r0, [pc, #0x8008170-0x8007fe2-2] // unk_2007230
    add r0, r0, r4
    mov r2, #0
    mvn r2, r2
    bl f900_80009DC
    pop {r4,pc}
// end of function sub_8007FCA

.thumb
sub_8007FF0:
    ldr r3, [pc, #0x8008174-0x8007ff0-4] // unk_203DC80
    lsl r0, r0, #3
    add r3, r3, r0
    strb r2, [r3,r1]
    mov pc, lr
// end of function sub_8007FF0

.thumb
sub_8007FFA:
    ldr r3, [pc, #0x8008178-0x8007ffa-2] // unk_203DC80
    lsl r0, r0, #3
    add r3, r3, r0
    ldrb r0, [r3,r1]
    mov pc, lr
// end of function sub_8007FFA

.thumb
sub_8008004:
    ldr r3, [pc, #0x800817c-0x8008004-4] // unk_203DC80
    lsl r0, r0, #3
    add r3, r3, r0
    ldrb r0, [r3,r1]
    add r0, r0, r2
    cmp r0, #0xff
    ble loc_8008014
    mov r0, #0xff
loc_8008014:
    strb r0, [r3,r1]
    mov pc, lr
// end of function sub_8008004

.thumb
sub_8008018:
    ldr r3, [pc, #0x8008180-0x8008018-4] // unk_203DC80
    lsl r0, r0, #3
    add r3, r3, r0
    ldrb r0, [r3,r1]
    sub r0, r0, r2
    bge loc_8008026
    mov r0, #0
loc_8008026:
    strb r0, [r3,r1]
    mov pc, lr
// end of function sub_8008018

.thumb
sub_800802A:
    push {lr}
    ldr r0, [pc, #0x8008184-0x800802c-4] // unk_203DC80
    mov r1, #0x10
    bl f900_8000930
    pop {pc}
// end of function sub_800802A

.thumb
sub_8008036:
    push {r4,lr}
    ldr r4, [pc, #0x8008188-0x8008038-4] // byte_203BCB0
    bl sub_80078C4
    tst r0, r0
    bne loc_8008064
    bl sub_8007920
    tst r0, r0
    bne loc_8008064
    bl sub_80079EA
    bne loc_8008064
    ldrh r0, [r4,#(word_203BCBA - 0x203bcb0)]
    cmp r0, #0x3c 
    blt loc_800805C
    sub r0, #1
    strh r0, [r4,#(word_203BCBA - 0x203bcb0)]
    b loc_8008064
loc_800805C:
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r0, #1
    strb r0, [r2,#0xb]
loc_8008064:
    ldrh r0, [r4,#(word_203BCBA - 0x203bcb0)]
    mov r1, #0x3c 
    svc 6
    bl sub_80162B6
    pop {r4,pc}
// end of function sub_8008036

.thumb
sub_8008070:
    push {r4-r6,lr}
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#0x10]
    cmp r0, #4
    bne locret_80080B6
    mov r0, #0
    mov r1, #0x25 
    bl sub_800D722
    add r4, r0, #0
    mov r0, #1
    mov r1, #0x25 
    bl sub_800D722
    add r5, r0, #0
    sub r4, r4, r5
    add r4, #8
    cmp r4, #0xe
    ble loc_800809C
    mov r4, #0xe
    b loc_80080A2
loc_800809C:
    cmp r4, #1
    bge loc_80080A2
    mov r4, #1
loc_80080A2:
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    cmp r0, r4
    bgt loc_80080B2
    mov r0, #1
    b loc_80080B4
loc_80080B2:
    mov r0, #2
loc_80080B4:
    strb r0, [r6,#0x10]
locret_80080B6:
    pop {r4-r6,pc}
// end of function sub_8008070

.thumb
sub_80080B8:
    push {lr}
    mov r0, #0
    mov r1, #0x23 
    bl sub_800D722
    add r1, r0, #0
    mov r0, #0
    push {r1}
    bl sub_80080EC
    add r1, r0, #0
    pop {r0}
    push {r0,r1}
    mov r0, #1
    mov r1, #0x23 
    bl sub_800D722
    add r1, r0, #0
    mov r0, #1
    push {r1}
    bl sub_80080EC
    add r3, r0, #0
    pop {r2}
    pop {r0,r1}
    pop {pc}
// end of function sub_80080B8

.thumb
sub_80080EC:
    push {lr}
    cmp r1, #0xc
    bgt loc_80080F8
    bl sub_800EB54
    b locret_800810E
loc_80080F8:
    push {r1}
    mov r1, #0x25 
    bl sub_800D722
    pop {r1}
    sub r1, #0xd
    mov r2, #0xb
    mul r1, r2
    ldr r2, [pc, #0x8008110-0x8008108-4] // unk_8008114
    add r2, r2, r1
    ldrb r0, [r2,r0]
locret_800810E:
    pop {pc}
off_8008110:    .word unk_8008114
unk_8008114:    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 1
    .byte 1
    .byte 2
    .byte 2
    .byte 2
    .byte 3
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 1
    .byte 1
    .byte 2
    .byte 2
    .byte 2
    .byte 3
    .byte 0
    .byte 0
// end of function sub_80080EC

.thumb
sub_800812C:
    push {r4,lr}
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r4, [r4,#0xd]
    lsl r4, r4, #8
    add r4, #0x48 
    bl sub_80E17DE
    mov r0, #0xe
    add r0, #0xff
    bl f500_8000558
    pop {r4,pc}
    .byte 0
    .byte 0
off_8008154:    .word byte_2035CB0
off_8008158:    .word byte_2035D00
dword_800815C:    .word 0xFFFF
off_8008160:    .word byte_20364A8
off_8008164:    .word word_203DB70
dword_8008168:    .word 0x80186C7
off_800816C:    .word unk_2001610
off_8008170:    .word unk_2007230
off_8008174:    .word unk_203DC80
off_8008178:    .word unk_203DC80
off_800817C:    .word unk_203DC80
off_8008180:    .word unk_203DC80
off_8008184:    .word unk_203DC80
off_8008188:    .word byte_203BCB0
// end of function sub_800812C

.thumb
sub_800818C:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x14
    mov r2, #0xf
    cmp r0, #2
    bne loc_8008198
    mov r2, #0x71 
loc_8008198:
    str r0, [sp]
    str r2, [sp,#0x10]
    str r1, [sp,#0x14]
    mov r0, #0
    str r0, [sp,#4]
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_80081D8
    bl sub_8007BB4
    bl fA00_8000BB4
    ldr r2, [sp]
    mov r1, #0xc
    mul r1, r2
    ldr r7, [pc, #0x8008304-0x80081b8-4] // off_800830C
    add r7, r7, r1
    mov r2, #0
loc_80081BE:
    ldr r1, [r7]
    cmp r0, r1
    ble loc_80081CC
    add r7, #4
    add r2, #1
    cmp r2, #3
    blt loc_80081BE
loc_80081CC:
    ldr r1, [sp]
    lsl r1, r1, #2
    ldr r7, [pc, #0x8008308-0x80081d0-4] // unk_8008330
    add r7, r7, r1
    ldrb r0, [r7,r2]
    str r0, [sp,#4]
loc_80081D8:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_80081FC
    ldr r0, [sp,#0x14]
    mov r1, #3
    bl sub_8007FFA
    cmp r0, #4
    bge loc_80081F2
    neg r0, r0
    add r0, #1
    b loc_80081F6
loc_80081F2:
    mov r0, #0
    sub r0, #3
loc_80081F6:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_80081FC:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800821A
    ldr r0, [sp,#0x14]
    mov r1, #4
    bl sub_8007FFA
    mov r1, #1
    cmp r0, #2
    ble loc_8008214
    mov r1, #0
loc_8008214:
    ldr r0, [sp,#4]
    add r0, r0, r1
    str r0, [sp,#4]
loc_800821A:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_8008232
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x1b]
    sub r0, #1
    add r0, r0, r0
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_8008232:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800826A
    ldr r0, [sp,#0x14]
    bl sub_800C41A
    tst r0, r0
    beq loc_800826A
    ldrh r2, [r0,#0x24]
    ldrh r3, [r0,#0x26]
    mov r0, #0
    lsr r4, r3, #1
    cmp r2, r4
    blt loc_8008264
    mov r0, #1
    lsr r4, r3, #2
    lsr r1, r3, #1
    add r4, r4, r1
    cmp r2, r4
    blt loc_8008264
    mov r0, #2
    cmp r2, r3
    blt loc_8008264
    mov r0, #3
loc_8008264:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800826A:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800829C
    ldr r0, [sp,#0x14]
    mov r1, #5
    bl sub_8007FFA
    mov r1, #0
    tst r0, r0
    beq loc_8008296
    cmp r0, #1
    bne loc_8008288
    mov r1, #1
    b loc_8008294
loc_8008288:
    cmp r0, #4
    blt loc_800828E
    mov r0, #3
loc_800828E:
    add r1, r0, #0
    sub r1, #1
    add r1, r1, r1
loc_8008294:
    neg r1, r1
loc_8008296:
    ldr r0, [sp,#4]
    add r0, r0, r1
    str r0, [sp,#4]
loc_800829C:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_80082EA
    ldr r0, [sp,#0x14]
    bl sub_800C41A
    tst r0, r0
    beq loc_80082EA
    ldrh r6, [r0,#0x26]
    ldr r0, [sp,#0x14]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq loc_80082EA
    ldrh r7, [r0,#0x26]
    mov r4, #0
    sub r6, r6, r7
    bge loc_80082CA
    mov r4, #1
    neg r6, r6
loc_80082CA:
    add r0, r6, #0
    mov r1, #0x64 
    svc 6
    cmp r0, #1
    ble loc_80082DE
    lsr r0, r0, #1
    lsl r0, r0, #1
    cmp r0, #4
    ble loc_80082DE
    mov r0, #4
loc_80082DE:
    tst r4, r4
    bne loc_80082E4
    neg r0, r0
loc_80082E4:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_80082EA:
    ldr r0, [sp,#4]
    tst r0, r0
    ble loc_80082F8
    cmp r0, #0xb
    ble loc_80082FA
    mov r0, #0xb
    b loc_80082FA
loc_80082F8:
    mov r0, #1
loc_80082FA:
    str r0, [sp,#4]
    ldr r0, [sp,#4]
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8008304:    .word off_800830C
off_8008308:    .word unk_8008330
off_800830C:    .word 0x500
    .word 0x1200
    .word 0x3600
    .word 0x3000
    .word 0x4000, 0x5000, 0x3000, 0x4500, 0x10000
unk_8008330:    .byte 7
    .byte 6
    .byte 5
    .byte 4
    .byte 0xA
    .byte 8
    .byte 6
    .byte 4
    .byte 0xA
    .byte 8
    .byte 6
    .byte 4
// end of function sub_800818C

.thumb
sub_800833C:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r0, [r4,#0x1c]
    ldrb r1, [r4,#0x1b]
    cmp r0, r1
    ble loc_8008356
    strb r0, [r4,#0x1b]
    cmp r0, #2
    blt loc_8008356
    sub r0, #2
    bl sub_80161E0
loc_8008356:
    ldrb r0, [r4,#0x1d]
    tst r0, r0
    beq loc_8008362
    sub r0, #1
    strb r0, [r4,#0x1d]
    b locret_8008366
loc_8008362:
    mov r0, #0
    strb r0, [r4,#0x1c]
locret_8008366:
    pop {r4,pc}
// end of function sub_800833C

.thumb
sub_8008368:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x1c]
    add r0, #1
    strb r0, [r1,#0x1c]
    mov r0, #0xa
    strb r0, [r1,#0x1d]
    mov pc, lr
// end of function sub_8008368

.thumb
sub_8008378:
    push {r4,r6,r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r4, [r3,#0xd]
    eor r2, r4
    lsl r2, r2, #1
    ldr r4, [pc, #0x80083b0-0x8008384-4] // unk_80083B4
    add r4, r4, r2
    ldrb r2, [r4]
    add r3, r3, r2
    ldrb r2, [r4,#1]
loc_800838E:
    ldr r4, [r3]
    tst r4, r4
    beq loc_80083A4
    ldrb r6, [r4,#0x12]
    cmp r6, r0
    bne loc_80083A4
    ldrb r6, [r4,#0x13]
    cmp r6, r1
    bne loc_80083A4
    add r0, r4, #0
    pop {r4,r6,r7,pc}
loc_80083A4:
    add r3, #4
    sub r2, #1
    bne loc_800838E
    mov r0, #0
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_80083B0:    .word unk_80083B4
unk_80083B4:    .byte 0x44 
    .byte 1
    .byte 0x48 
    .byte 3
// end of function sub_8008378

.thumb
sub_80083B8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    mov r1, #0x60 
    ldrb r1, [r0,r1]
    mov r0, #0
    ldr r2, [pc, #0x80083d8-0x80083c4-4] // unk_80083DC
loc_80083C6:
    ldrb r3, [r2,r0]
    cmp r1, r3
    beq locret_80083D4
    add r0, #1
    cmp r0, #0x16
    blt loc_80083C6
    mov r0, #0xff
locret_80083D4:
    pop {pc}
    .balign 4, 0x00
off_80083D8:    .word unk_80083DC
unk_80083DC:    .byte 0x83
    .byte 0x87
    .byte 0x8B
    .byte 0x8F
    .byte 0x93
    .byte 0x97
    .byte 0x9B
    .byte 0x9F
    .byte 0xA3
    .byte 0xA7
    .byte 0xAB
    .byte 0xAF
    .byte 0xB3
    .byte 0xB7
    .byte 0xBB
    .byte 0xBF
    .byte 0xC3
    .byte 0xD3
    .byte 0xD7
    .byte 0xDB
    .byte 0xE5
    .byte 0xE3
    .byte 0
    .byte 0
// end of function sub_80083B8

.thumb
sub_80083F4:
    push {r5,r7,lr}
    push {r0,r1}
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r2, [r7]
    mov r3, #0xf
    and r2, r3
    bne loc_800840A
    mov r0, #0x79 
    bl f500_8000558
loc_800840A:
    pop {r0,r1}
    b loc_8008410
    .byte 0xA0
    .byte 0xB5
loc_8008410:
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r2, [r7]
    mov r3, #8
    and r2, r3
    lsr r2, r2, #1
    ldr r6, [pc, #0x800843c-0x800841c-4] // =0xD360
    add r6, r6, r2
    push {r0,r1,r6}
    mov r2, #0x40 
    lsl r2, r2, #8
    orr r0, r2
    lsl r0, r0, #0x10
    orr r0, r1
    add r1, r6, #0
    mov r2, #0
    mov r3, #0
    bl sub_8007880
    pop {r0,r1,r6}
    pop {r5,r7,pc}
    .byte 0
    .byte 0
dword_800843C:    .word 0xD360
// end of function sub_80083F4

.thumb
sub_8008440:
    push {r4-r6,lr}
    ldr r4, [pc, #0x80086cc-0x8008442-2] // byte_2035CB0
    ldrb r0, [r4]
    add r0, r0, r0
    add r0, #2
    add r5, r4, r0
    ldrh r0, [r5]
    add r6, r0, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x80
    tst r1, r2
    beq loc_8008466
    add r0, r6, #0
    mov r1, #0
    bl ho_8019288
    strh r0, [r5,#0xc]
loc_8008466:
    add r4, #0x50 
    ldrb r0, [r4]
    add r0, r0, r0
    add r0, #2
    add r5, r4, r0
    ldrh r0, [r5]
    add r6, r0, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x80
    tst r1, r2
    beq locret_800848A
    add r0, r6, #0
    mov r1, #1
    bl ho_8019288
    strh r0, [r5,#0xc]
locret_800848A:
    pop {r4-r6,pc}
// end of function sub_8008440

.thumb
sub_800848C:
    push {lr}
    ldr r0, [pc, #0x80086d0-0x800848e-2] // =0x4000
    bl sub_8016764
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    bne locret_80084A8
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    ldr r1, [pc, #0x80086d0-0x80084a4-4] // =0x4000
    strh r1, [r0,#0x28]
locret_80084A8:
    pop {pc}
// end of function sub_800848C

.thumb
sub_80084AA:
    push {r4,r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldrb r0, [r5,#0x18]
    ldrb r1, [r5,#0x19]
    ldrb r2, [r5,#0x1a]
    neg r4, r2
    add r4, #3
    add r5, r1, r4
    cmp r0, r5
    bgt loc_80084CC
    add r5, r0, r4
    cmp r1, r5
    bgt loc_80084D0
    cmp r2, #3
    bge loc_80084D6
    b loc_80084DA
loc_80084CC:
    mov r0, #1
    b locret_80084DC
loc_80084D0:
    mov r0, #1
    neg r0, r0
    b locret_80084DC
loc_80084D6:
    mov r0, #2
    b locret_80084DC
loc_80084DA:
    mov r0, #0
locret_80084DC:
    pop {r4,r5,pc}
// end of function sub_80084AA

.thumb
sub_80084DE:
    push {lr}
    mov r1, #0x23 
    bl sub_800D722
    ldr r1, [pc, #0x80084ec-0x80084e6-2] // byte_80084F0
    ldrb r0, [r1,r0]
    pop {pc}
off_80084EC:    .word byte_80084F0
byte_80084F0:    .byte 0x38
    .byte 0x3C 
    .byte 0x40 
    .byte 0x44 
    .byte 0x48 
    .byte 0x4C 
    .byte 0x50 
    .byte 0x54 
    .byte 0x58 
    .byte 0x5C 
    .byte 0x60 
    .byte 0x64 
    .byte 0x68 
    .byte 0x6C 
    .byte 0x70 
    .byte 0
// end of function sub_80084DE

.thumb
sub_8008500:
    push {lr}
    mov r1, #0x23 
    bl sub_800D722
    ldr r1, [pc, #0x8008510-0x8008508-4] // dword_8008514
    ldrb r0, [r1,r0]
    pop {pc}
    .byte 0, 0
off_8008510:    .word dword_8008514
dword_8008514:    .word 0x7C787408
    .word 0x8C888480
    .word 0x9C989490
    .word 0x808A0
// end of function sub_8008500

.thumb
sub_8008524:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8008542
    bl sub_8007EBC
    add r2, r0, #0
    mov r0, #0
    mov r1, #0
    mov r3, #8
    tst r2, r3
    beq loc_8008558
    mov r0, #1
    b loc_8008558
loc_8008542:
    mov r0, #2
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#0x10]
    cmp r2, #1
    beq loc_8008558
    mov r2, #1
    eor r1, r2
loc_8008558:
    bl sub_800818C
    pop {pc}
// end of function sub_8008524

.thumb
sub_800855E:
    push {r1-r7,lr}
    add r4, r0, #0
    mov r6, #0
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800856E
    mov r6, #1
loc_800856E:
    bl sub_8022D04
    orr r6, r0
    push {r6}
    lsr r0, r4, #9
    cmp r0, #0x1b
    beq loc_80085AA
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r6, [r0,#8]
    cmp r6, #1
    beq loc_800858E
    cmp r6, #2
    bne loc_80085AA
loc_800858E:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x12
    add r1, r1, r6
    bl sub_800D722
    ldr r1, [pc, #0x80086c4-0x800859c-4] // dword_2037BD8
    ldrb r1, [r1,r6]
    cmp r1, r0
    ble loc_80085AA
    mov r0, #0
    cmp r0, #1
    b loc_80085BA
loc_80085AA:
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    ldr r1, [pc, #0x80086c0-0x80085ae-2] // =0x160
    cmp r0, r1
    bge loc_80085BA
    bl sub_80063A8
    b loc_80085BC
loc_80085BA:
    cmp r0, r0
loc_80085BC:
    pop {r0}
    pop {r1-r7,pc}
// end of function sub_800855E

.thumb
sub_80085C0:
    push {r1-r7,lr}
    add r4, r0, #0
    mov r6, #0
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_80085D0
    mov r6, #1
loc_80085D0:
    bl sub_8022D04
    orr r6, r0
    push {r6}
    lsr r0, r4, #9
    cmp r0, #0x1b
    beq loc_800860C
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r6, [r0,#8]
    cmp r6, #1
    beq loc_80085F0
    cmp r6, #2
    bne loc_800860C
loc_80085F0:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x12
    add r1, r1, r6
    bl sub_800D722
    ldr r1, [pc, #0x80086c4-0x80085fe-2] // dword_2037BD8
    ldrb r1, [r1,r6]
    cmp r1, r0
    ble loc_800860C
    mov r0, #0
    cmp r0, #1
    b loc_8008624
loc_800860C:
    lsr r1, r4, #9
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    cmp r1, #0x1b
    bne loc_8008618
    mov r1, #0xff
loc_8008618:
    ldr r2, [pc, #0x80086c0-0x8008618-4] // =0x160
    cmp r0, r2
    blt loc_8008620
    mov r1, #0xff
loc_8008620:
    bl sub_800640C
loc_8008624:
    pop {r0}
    pop {r1-r7,pc}
// end of function sub_80085C0

.thumb
sub_8008628:
    push {r0-r7,lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1}
    bl sub_8022D04
    cmp r0, #0
    bne loc_80086B6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    add r6, r0, #0
    mov r9, r0
    ldrb r0, [r6]
    mov r8, r0
    lsl r0, r0, #1
    add r0, #2
    add r6, r6, r0
    ldrh r0, [r6]
    add r4, r0, #0
    mov r1, #0xff
    lsl r1, r1, #8
    add r1, #0xff
    cmp r0, r1
    beq loc_80086B6
    mov r1, r9
    mov r2, r8
    add r2, #0x44 
    ldrb r1, [r1,r2]
    mov r2, #2
    tst r1, r2
    bne loc_8008674
    mov r1, #0xff
    bl sub_800640C
    bne loc_80086B2
loc_8008674:
    cmp r4, #0xbb
    blt loc_800867C
    cmp r4, #0xc2
    ble loc_80086B6
loc_800867C:
    add r0, r4, #0
    bl sub_8019010
    ldrb r7, [r0,#8]
    cmp r7, #1
    beq loc_800868C
    cmp r7, #2
    bne loc_80086B6
loc_800868C:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x12
    add r1, r1, r7
    bl sub_800D722
    mov r0, r9
    mov r1, r8
    add r1, #0x44 
    ldrb r1, [r0,r1]
    mov r2, #2
    tst r1, r2
    beq loc_80086AA
    add r0, #1
loc_80086AA:
    ldr r1, [pc, #0x80086c4-0x80086aa-2] // dword_2037BD8
    ldrb r1, [r1,r7]
    cmp r1, r0
    blt loc_80086B6
loc_80086B2:
    ldr r0, [pc, #0x80086c8-0x80086b2-2] // =0x184
    strh r0, [r6]
loc_80086B6:
    pop {r0,r1}
    mov r8, r0
    mov r9, r1
    pop {r0-r7,pc}
    .byte 0, 0
off_80086C0:    .word 0x160
off_80086C4:    .word dword_2037BD8
off_80086C8:    .word 0x184
off_80086CC:    .word byte_2035CB0
dword_80086D0:    .word 0x4000
// end of function sub_8008628

.thumb
sub_80086D4:
    push {r4,r6,lr}
    ldr r4, [pc, #0x80089f0-0x80086d6-2] // dword_203BD40
    ldr r0, [pc, #0x80089f4-0x80086d8-4] // dword_2001790
    ldr r0, [r0]
    str r0, [r4,#(dword_203BD44 - 0x203bd40)]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    str r0, [r4,#(dword_203BD48 - 0x203bd40)]
    bl sub_8006550
    beq loc_80086FA
    mov r0, #0x36 
    mov r1, #0xfa
    add r1, r1, r1
    bl sub_800D74A
    bl sub_8006538
loc_80086FA:
    mov r0, r10
    ldr r0, [r0,#0x78]
    mov r1, #0xc
    add r1, r1, r4
    add r6, r1, #0
    mov r2, #0x40 
    bl f900_800098C
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800871C
    mov r0, #0x11
    mov r1, #0x84
    bl sub_8024FF0
    bne loc_8008720
loc_800871C:
    mov r0, #1
    b loc_8008722
loc_8008720:
    mov r0, #0
loc_8008722:
    mov r1, #(byte_203BD76 - 0x203bd4c)
    strb r0, [r6,r1]
    ldr r0, [pc, #0x80089f8-0x8008726-2] // unk_2001610
    mov r1, #0x4c 
    add r1, r1, r4
    mov r2, #0x2c 
    bl f900_800098C
    ldr r0, [pc, #0x80089fc-0x8008732-2] // unk_2007230
    mov r1, #0x78 
    add r1, r1, r4
    mov r2, #0x2c 
    bl f900_800098C
    mov r0, r10
    ldr r0, [r0,#0x64]
    mov r1, #0xa4
    add r1, r1, r4
    mov r2, #0x10
    bl f900_800098C
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r2, [r0,#0x20]
    mov r1, #(dword_203BDF4 - 0x203bd40)
    str r2, [r4,r1]
    ldr r2, [r0,#0x24]
    mov r1, #(dword_203BDF8 - 0x203bd40)
    str r2, [r4,r1]
    ldr r0, [pc, #0x8008a00-0x800875c-4] // byte_2035CA0
    mov r1, #0xbc
    add r1, r1, r4
    mov r2, #8
    bl f900_800098C
    ldr r0, [pc, #0x8008a04-0x8008768-4] // =0x12345678
    str r0, [r4]
    mov r0, #0x31 
    bl sub_8017B98
    pop {r4,r6,pc}
// end of function sub_80086D4

.thumb
sub_8008774:
    push {r4,r5,lr}
    ldr r0, [pc, #0x8008a08-0x8008776-2] // unk_203E39C
    ldr r1, [pc, #0x8008a0c-0x8008778-4] // unk_203BEC0
    mov r2, #0x40 
    bl f900_800098C
    ldr r0, [pc, #0x8008a10-0x8008780-4] // unk_203E39C
    ldr r1, [pc, #0x8008a14-0x8008782-2] // unk_203BCC0
    mov r2, #0x40 
    bl f900_800098C
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_80087A6
    ldr r0, [pc, #0x8008a18-0x8008792-2] // unk_203E49C
    ldr r1, [pc, #0x8008a1c-0x8008794-4] // unk_203BF00
    mov r2, #0x40 
    bl f900_800098C
    ldr r0, [pc, #0x8008a20-0x800879c-4] // unk_203E49C
    ldr r1, [pc, #0x8008a24-0x800879e-2] // unk_203BD00
    mov r2, #0x40 
    bl f900_800098C
loc_80087A6:
    ldr r0, [pc, #0x8008a28-0x80087a6-2] // dword_203E394
    ldr r0, [r0]
    ldr r1, [pc, #0x8008a2c-0x80087aa-2] // dword_2001790
    str r0, [r1]
    ldr r0, [pc, #0x8008a30-0x80087ae-2] // unk_203E3DC
    ldr r1, [pc, #0x8008a34-0x80087b0-4] // unk_2037C80
    mov r2, #0x2c 
    bl f900_800098C
    ldr r0, [pc, #0x8008a38-0x80087b8-4] // unk_203E4DC
    ldr r1, [pc, #0x8008a3c-0x80087ba-2] // unk_2037CAC
    mov r2, #0x2c 
    bl f900_800098C
    ldr r0, [pc, #0x8008a40-0x80087c2-2] // unk_203E408
    ldr r1, [pc, #0x8008a44-0x80087c4-4] // unk_2037BE0
    mov r2, #0x2c 
    bl f900_800098C
    ldr r0, [pc, #0x8008a48-0x80087cc-4] // unk_203E508
    ldr r1, [pc, #0x8008a4c-0x80087ce-2] // unk_2037C0C
    mov r2, #0x2c 
    bl f900_800098C
    ldr r0, [pc, #0x8008a50-0x80087d6-2] // unk_203E434
    ldr r1, [pc, #0x8008a54-0x80087d8-4] // unk_203F6E0
    mov r2, #0x10
    bl f900_800098C
    ldr r0, [pc, #0x8008a58-0x80087e0-4] // unk_203E534
    ldr r1, [pc, #0x8008a5c-0x80087e2-2] // unk_203F6F0
    mov r2, #0x10
    bl f900_800098C
    ldr r3, [pc, #0x8008a60-0x80087ea-2] // dword_203E390
    ldr r0, [pc, #0x8008a64-0x80087ec-4] // =0xB4
    add r0, r0, r3
    ldr r1, [pc, #0x8008a68-0x80087f0-4] // dword_203BE70
    ldr r2, [r0]
    str r2, [r1]
    ldr r2, [r0,#(dword_203E448 - 0x203e444)]
    str r2, [r1,#(dword_203BE74 - 0x203be70)]
    ldr r0, [pc, #0x8008a6c-0x80087fa-2] // =0x1B4
    add r0, r0, r3
    ldr r1, [pc, #0x8008a70-0x80087fe-2] // dword_203BE78
    ldr r2, [r0]
    str r2, [r1]
    ldr r2, [r0,#(dword_203E548 - 0x203e544)]
    str r2, [r1,#(dword_203BE7C - 0x203be78)]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    cmp r0, #1
    bne loc_800881E
    ldr r0, [pc, #0x8008a74-0x8008812-2] // dword_203E390
    add r0, #0xbc
    ldr r1, [pc, #0x8008a78-0x8008816-2] // byte_2035CA0
    mov r2, #8
    bl f900_800098C
loc_800881E:
    bl sub_80449E8
    tst r0, r0
    bne loc_8008856
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8008856
    mov r0, #1
    mov r1, #0xad
    bl sub_8024FF0
    beq loc_8008842
    mov r0, #0
    mov r1, #0xd
    mov r2, #0xff
    bl sub_800D706
loc_8008842:
    mov r0, #1
    mov r1, #0xae
    bl sub_8024FF0
    beq loc_8008856
    mov r0, #0
    mov r1, #0x12
    mov r2, #0
    bl sub_800D706
loc_8008856:
    bl sub_8007E16
    sub r0, #0x40 
    cmp r0, #3
    bhi locret_8008878
    mov r0, #0
    bl sub_800D6F2
    add r4, r0, #0
    bl sub_800D66E
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrh r1, [r0,#0x16]
    strh r1, [r4,#0x30]
    strh r1, [r4,#0x32]
    strh r1, [r4,#0x34]
locret_8008878:
    pop {r4,r5,pc}
// end of function sub_8008774

.thumb
sub_800887A:
    push {r4,lr}
    ldr r4, [pc, #0x8008a7c-0x800887c-4] // dword_203BD40
    ldr r0, [pc, #0x8008a80-0x800887e-2] // =0x23456789
    str r0, [r4]
    mov r0, r10
    ldr r0, [r0,#0x7c]
    mov r1, #4
    add r1, r1, r4
    bl sub_800F1B4
    mov r0, #0x39 
    bl sub_8017B98
    pop {r4,pc}
// end of function sub_800887A

.thumb
sub_8008896:
    push {lr}
    ldr r0, [pc, #0x8008a84-0x8008898-4] // dword_203E394
    ldr r1, [pc, #0x8008a88-0x800889a-2] // unk_20358B0
    mov r2, #0xe0
    bl f900_80009A0
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_80088B4
    ldr r0, [pc, #0x8008a8c-0x80088aa-2] // byte_203E494
    ldr r1, [pc, #0x8008a90-0x80088ac-4] // unk_2035990
    mov r2, #0xe0
    bl f900_80009A0
locret_80088B4:
    pop {pc}
// end of function sub_8008896

.thumb
sub_80088B6:
    push {lr}
    ldr r0, [pc, #0x8008a94-0x80088b8-4] // byte_2037A10
    ldr r1, [pc, #0x8008a98-0x80088ba-2] // dword_203BD44
    mov r2, #0x50 
    bl f900_800098C
    ldr r0, [pc, #0x8008a9c-0x80088c2-2] // =0x56789123
    ldr r1, [pc, #0x8008aa0-0x80088c4-4] // dword_203BD40
    str r0, [r1]
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    bl sub_800D6F2
    ldr r1, [pc, #0x8008aa4-0x80088d2-2] // unk_203BD94
    mov r2, #0x40 
    bl f900_800098C
    mov r0, #0x25 
    bl sub_8017B98
    pop {pc}
// end of function sub_80088B6

.thumb
sub_80088E2:
    push {r4,lr}
    ldr r4, [pc, #0x8008aa8-0x80088e4-4] // dword_203E394
    ldrb r1, [r4]
    cmp r1, #0xff
    beq loc_80088FC
    add r0, r4, #0
    ldr r1, [pc, #0x8008aac-0x80088ee-2] // byte_2035CB0
    mov r2, #0x50 
    bl f900_800098C
    mov r0, #0
    bl sub_8007E62
loc_80088FC:
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800891C
    ldr r4, [pc, #0x8008ab0-0x8008904-4] // byte_203E494
    ldrb r1, [r4]
    cmp r1, #0xff
    beq loc_800891C
    add r0, r4, #0
    ldr r1, [pc, #0x8008ab4-0x800890e-2] // byte_2035D00
    mov r2, #0x50 
    bl f900_800098C
    mov r0, #1
    bl sub_8007E62
loc_800891C:
    ldr r0, [pc, #0x8008ab8-0x800891c-4] // unk_203E3E4
    ldr r1, [pc, #0x8008abc-0x800891e-2] // unk_203BEC0
    mov r2, #0x40 
    bl f900_800098C
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_8008938
    ldr r0, [pc, #0x8008ac0-0x800892e-2] // unk_203E4E4
    ldr r1, [pc, #0x8008ac4-0x8008930-4] // unk_203BF00
    mov r2, #0x40 
    bl f900_800098C
locret_8008938:
    pop {r4,pc}
// end of function sub_80088E2

.thumb
sub_800893A:
    push {lr}
    ldr r0, [pc, #0x8008ac8-0x800893c-4] // dword_203BD44
    bl sub_8021D86
    mov r0, r10
    ldr r0, [r0,#0x48]
    ldr r1, [pc, #0x8008960-0x8008946-2] // =0x2D8
    add r0, r0, r1
    ldr r1, [pc, #0x8008acc-0x800894a-2] // unk_203BD50
    mov r2, #0x28 
    bl f900_8000970
    ldr r0, [pc, #0x8008ad0-0x8008952-2] // =0x1F2F3F4F
    ldr r1, [pc, #0x8008ad4-0x8008954-4] // dword_203BD40
    str r0, [r1]
    mov r0, #0xe
    bl sub_8017B98
    pop {pc}
off_8008960:    .word 0x2D8
// end of function sub_800893A

.thumb
sub_8008964:
    push {lr}
    ldr r0, [pc, #0x8008ad8-0x8008966-2] // dword_203E394
    ldr r1, [pc, #0x8008adc-0x8008968-4] // unk_20363D0
    mov r2, #0xc
    bl f900_800098C
    ldr r0, [pc, #0x8008ae0-0x8008970-4] // byte_203E494
    ldr r1, [pc, #0x8008ae4-0x8008972-2] // unk_20363DC
    mov r2, #0xc
    bl f900_800098C
    ldr r0, [pc, #0x8008ae8-0x800897a-2] // unk_203E3A0
    ldr r1, [pc, #0x8008aec-0x800897c-4] // unk_203E4A0
    ldr r2, [pc, #0x8008af0-0x800897e-2] // unk_2037B90
    bl sub_80F5C94
    bl sub_8021E4C
    pop {pc}
// end of function sub_8008964

.thumb
sub_800898A:
    push {r4,lr}
    add r4, r0, #0
    ldr r0, [pc, #0x8008af4-0x800898e-2] // =0x1A2B3C4D
    ldr r1, [pc, #0x8008af8-0x8008990-4] // dword_203BD40
    str r0, [r1]
    ldr r1, [pc, #0x8008afc-0x8008994-4] // dword_203BD44
    str r4, [r1]
    mov r0, #2
    bl sub_8017B98
    pop {r4,pc}
// end of function sub_800898A

.thumb
sub_80089A0:
    push {lr}
    mov r0, #0
    bl sub_8022CDE
    ldr r1, [pc, #0x8008b00-0x80089a8-4] // dword_203E394
    ldrb r2, [r1]
    strb r2, [r0,#6]
    ldrb r2, [r1,#(dword_203E394+1 - 0x203e394)]
    strb r2, [r0,#7]
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_80089CA
    mov r0, #1
    bl sub_8022CDE
    ldr r1, [pc, #0x8008b04-0x80089c0-4] // byte_203E494
    ldrb r2, [r1]
    strb r2, [r0,#6]
    ldrb r2, [r1,#(byte_203E495 - 0x203e494)]
    strb r2, [r0,#7]
locret_80089CA:
    pop {pc}
// end of function sub_80089A0

.thumb
sub_80089CC:
    mov r0, #0
    ldr r1, [pc, #0x8008b08-0x80089ce-2] // dword_203E390
    str r0, [r1]
    ldr r1, [pc, #0x8008b0c-0x80089d2-2] // dword_203E490
    str r0, [r1]
    mov pc, lr
// end of function sub_80089CC

.thumb
sub_80089D8:
    add r3, r0, #0
    mov r0, #0
    ldr r1, [pc, #0x8008b10-0x80089dc-4] // dword_203E390
    ldr r1, [r1]
    ldr r2, [pc, #0x8008b14-0x80089e0-4] // dword_203E490
    ldr r2, [r2]
    cmp r1, r3
    bne locret_80089EE
    cmp r2, r3
    bne locret_80089EE
    mov r0, #1
locret_80089EE:
    mov pc, lr
off_80089F0:    .word dword_203BD40
off_80089F4:    .word dword_2001790
off_80089F8:    .word unk_2001610
off_80089FC:    .word unk_2007230
off_8008A00:    .word byte_2035CA0
dword_8008A04:    .word 0x12345678
off_8008A08:    .word unk_203E39C
off_8008A0C:    .word unk_203BEC0
off_8008A10:    .word unk_203E39C
off_8008A14:    .word unk_203BCC0
off_8008A18:    .word unk_203E49C
off_8008A1C:    .word unk_203BF00
off_8008A20:    .word unk_203E49C
off_8008A24:    .word unk_203BD00
off_8008A28:    .word dword_203E394
off_8008A2C:    .word dword_2001790
off_8008A30:    .word unk_203E3DC
off_8008A34:    .word unk_2037C80
off_8008A38:    .word unk_203E4DC
off_8008A3C:    .word unk_2037CAC
off_8008A40:    .word unk_203E408
off_8008A44:    .word unk_2037BE0
off_8008A48:    .word unk_203E508
off_8008A4C:    .word unk_2037C0C
off_8008A50:    .word unk_203E434
off_8008A54:    .word unk_203F6E0
off_8008A58:    .word unk_203E534
off_8008A5C:    .word unk_203F6F0
off_8008A60:    .word dword_203E390
off_8008A64:    .word 0xB4
off_8008A68:    .word dword_203BE70
off_8008A6C:    .word 0x1B4
off_8008A70:    .word dword_203BE78
off_8008A74:    .word dword_203E390
off_8008A78:    .word byte_2035CA0
off_8008A7C:    .word dword_203BD40
dword_8008A80:    .word 0x23456789
off_8008A84:    .word dword_203E394
off_8008A88:    .word unk_20358B0
off_8008A8C:    .word byte_203E494
off_8008A90:    .word unk_2035990
off_8008A94:    .word byte_2037A10
off_8008A98:    .word dword_203BD44
dword_8008A9C:    .word 0x56789123
off_8008AA0:    .word dword_203BD40
off_8008AA4:    .word unk_203BD94
off_8008AA8:    .word dword_203E394
off_8008AAC:    .word byte_2035CB0
off_8008AB0:    .word byte_203E494
off_8008AB4:    .word byte_2035D00
off_8008AB8:    .word unk_203E3E4
off_8008ABC:    .word unk_203BEC0
off_8008AC0:    .word unk_203E4E4
off_8008AC4:    .word unk_203BF00
off_8008AC8:    .word dword_203BD44
off_8008ACC:    .word unk_203BD50
dword_8008AD0:    .word 0x1F2F3F4F
off_8008AD4:    .word dword_203BD40
off_8008AD8:    .word dword_203E394
off_8008ADC:    .word unk_20363D0
off_8008AE0:    .word byte_203E494
off_8008AE4:    .word unk_20363DC
off_8008AE8:    .word unk_203E3A0
off_8008AEC:    .word unk_203E4A0
off_8008AF0:    .word unk_2037B90
dword_8008AF4:    .word 0x1A2B3C4D
off_8008AF8:    .word dword_203BD40
off_8008AFC:    .word dword_203BD44
off_8008B00:    .word dword_203E394
off_8008B04:    .word byte_203E494
off_8008B08:    .word dword_203E390
off_8008B0C:    .word dword_203E490
off_8008B10:    .word dword_203E390
off_8008B14:    .word dword_203E490
// end of function sub_80089D8

.thumb
sub_8008B18:
    push {lr}
    push {r1}
    bl sub_80090CA
    pop {r1}
    strb r1, [r0,#1]
    pop {pc}
// end of function sub_8008B18

.thumb
sub_8008B26:
    push {lr}
    bl sub_80090CA
    ldrb r0, [r0,#1]
    pop {pc}
// end of function sub_8008B26

.thumb
sub_8008B30:
    push {lr}
    bl sub_80090CA
    mov r1, #0
    strb r1, [r0,#1]
    mov r1, #0
    str r1, [r0,#8]
    pop {pc}
// end of function sub_8008B30

.thumb
sub_8008B40:
    push {r4,lr}
    add r4, r0, #0
    mov r0, #0
    bl sub_80090CA
    strb r4, [r0]
    mov r0, #1
    bl sub_80090CA
    strb r4, [r0]
    pop {r4,pc}
// end of function sub_8008B40

.thumb
sub_8008B56:
    push {lr}
    push {r0}
    bl sub_80090CA
    ldrb r1, [r0]
    pop {r2}
    mov r0, #0
    cmp r1, r2
    bne locret_8008B6A
    mov r0, #1
locret_8008B6A:
    pop {pc}
// end of function sub_8008B56

.thumb
sub_8008B6C:
    push {lr}
    push {r0}
    bl sub_80090CA
    ldrb r1, [r0,#3]
    pop {r2}
    mov r0, #0
    cmp r1, r2
    bne locret_8008B80
    mov r0, #1
locret_8008B80:
    pop {pc}
// end of function sub_8008B6C

.thumb
sub_8008B82:
    push {r4,lr}
    mov r1, #1
    eor r0, r1
    mov r1, #3
    mul r0, r1
    add r0, #2
    mov r1, #4
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x78 
    lsl r3, r3, #0x10
    mov r4, #0x22 
    bl sub_80E17DE
    pop {r4,pc}
// end of function sub_8008B82

.thumb
sub_8008BA4:
    push {lr}
    mov r0, #0x10
    bl sub_8015AFA
    ldrb r0, [r5,#0x16]
    bl sub_8008B6C
    tst r0, r0
    beq loc_8008BBC
    mov r0, #4
    bl sub_8007A4C
loc_8008BBC:
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
    .balign 4, 0x00
// end of function sub_8008BA4

.thumb
sub_8008BC4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008BDC
    mov r0, #0x3c 
    mov r1, #4
    bl sub_8005ADC
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8008BDC:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    bl sub_8005B5C
    tst r0, r0
    bne locret_8008BF4
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8008BF4:
    pop {pc}
// end of function sub_8008BC4

.thumb
sub_8008BF6:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008C50
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #3
    beq loc_8008C1A
    cmp r0, #0
    beq loc_8008C1A
    b locret_8008CC0
loc_8008C1A:
    ldrh r0, [r5,#0x30]
    bl sub_8019010
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_8008C2E
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_8008C2E:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    pop {r0-r2}
    bne loc_8008C44
    bl sub_80163A8
    b loc_8008C4A
loc_8008C44:
    mov r3, #0
    bl sub_8016408
loc_8008C4A:
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_8008CC0
loc_8008C50:
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    bne loc_8008C60
    bl sub_8016394
    b loc_8008C64
loc_8008C60:
    bl sub_80163F8
loc_8008C64:
    tst r0, r0
    bne locret_8008CC0
    ldrb r0, [r5,#0x16]
    bl sub_8008B56
    tst r0, r0
    bne loc_8008C8E
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #0
    beq loc_8008C8E
    cmp r0, #5
    beq loc_8008C8E
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_8008B18
    b locret_8008CC0
loc_8008C8E:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    bl sub_80090CA
    ldrb r1, [r0,#2]
    tst r1, r1
    bne loc_8008CB6
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_8008CB6
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8008CC0
loc_8008CB6:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8008CC0:
    pop {pc}
// end of function sub_8008BF6

.thumb
sub_8008CC2:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008D26
    ldrb r0, [r5,#0x16]
    bl sub_8008B26
    cmp r0, #4
    beq loc_8008CF0
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #3
    beq loc_8008CF0
    cmp r0, #0
    beq loc_8008CF0
    b locret_8008DAA
loc_8008CF0:
    ldrh r0, [r5,#0x30]
    bl sub_8019010
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_8008D04
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_8008D04:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    pop {r0-r2}
    bne loc_8008D1A
    bl sub_80163A8
    b loc_8008D20
loc_8008D1A:
    mov r3, #0
    bl sub_8016408
loc_8008D20:
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_8008DAA
loc_8008D26:
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    bne loc_8008D36
    bl sub_8016394
    b loc_8008D3A
loc_8008D36:
    bl sub_80163F8
loc_8008D3A:
    tst r0, r0
    bne locret_8008DAA
    ldrb r0, [r5,#0x16]
    bl sub_8008B56
    tst r0, r0
    bne loc_8008D64
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #0
    beq loc_8008D64
    cmp r0, #5
    beq loc_8008D64
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_8008B18
    b locret_8008DAA
loc_8008D64:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    bl sub_80090CA
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_8008D86
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8008DAA
loc_8008D86:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8022F20
    cmp r0, #0x90
    beq loc_8008DA0
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8008DAA
loc_8008DA0:
    ldrb r0, [r5,#9]
    sub r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8008DAA:
    pop {pc}
// end of function sub_8008CC2

.thumb
sub_8008DAC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008E18
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #3
    beq loc_8008DD0
    cmp r0, #0
    beq loc_8008DD0
    b locret_8008E82
loc_8008DD0:
    ldrh r0, [r5,#0x30]
    bl sub_8019010
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_8008DE4
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_8008DE4:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    pop {r0-r2}
    bne loc_8008E06
    ldrb r3, [r5,#7]
    cmp r3, #1
    bne loc_8008E00
    ldr r0, [pc, #0x80090e0-0x8008dfa-2] // =0x171
    mov r1, #0
    mov r2, #0
loc_8008E00:
    bl sub_80163A8
    b loc_8008E12
loc_8008E06:
    ldr r0, [pc, #0x80090e0-0x8008e06-2] // =0x171
    mov r1, #0
    mov r2, #0
    mov r3, #0
    bl sub_8016408
loc_8008E12:
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_8008E82
loc_8008E18:
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    bne loc_8008E28
    bl sub_8016394
    b loc_8008E2C
loc_8008E28:
    bl sub_80163F8
loc_8008E2C:
    tst r0, r0
    bne locret_8008E82
    ldrb r0, [r5,#0x16]
    bl sub_8008B56
    tst r0, r0
    bne loc_8008E56
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #0
    beq loc_8008E56
    cmp r0, #5
    beq loc_8008E56
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_8008B18
    b locret_8008E82
loc_8008E56:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    bl sub_80090CA
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_8008E78
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8008E82
loc_8008E78:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8008E82:
    pop {pc}
// end of function sub_8008DAC

.thumb
sub_8008E84:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008EAC
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #5
    beq loc_8008EA0
    cmp r0, #0
    beq loc_8008EA0
    b loc_8008EB4
loc_8008EA0:
    mov r0, #0x38 
    mov r1, #4
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8008EAC:
    bl sub_8005B5C
    tst r0, r0
    bne locret_8008EB8
loc_8008EB4:
    mov r0, #8
    str r0, [r5,#8]
locret_8008EB8:
    pop {pc}
// end of function sub_8008E84

.thumb
sub_8008EBA:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    beq loc_8008EC8
    bl sub_80033B4
    pop {pc}
loc_8008EC8:
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B26
    cmp r0, #5
    beq loc_8008EE4
    cmp r0, #0
    beq loc_8008EE4
    b locret_8008F28
loc_8008EE4:
    ldrb r0, [r5,#0x16]
    bl sub_8008B6C
    tst r0, r0
    beq loc_8008F16
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80090CA
    ldr r1, [r0,#8]
    tst r1, r1
    beq loc_8008F06
    mov r2, #8
    str r2, [r1,#8]
    mov r2, #4
    strb r2, [r1,#0xb]
loc_8008F06:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8008B30
    mov r0, #4
    bl sub_8007A58
loc_8008F16:
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    bl sub_8008B30
    bl sub_80033B4
locret_8008F28:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8008EBA

.thumb
sub_8008F2C:
    push {lr}
    ldr r1, [pc, #0x8008f3c-0x8008f2e-2] // off_8008F40
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8008F3C:    .word off_8008F40
off_8008F40:    .word sub_8008F4C+1
    .word sub_8008F80+1
    .word sub_8008FA0+1
// end of function sub_8008F2C

.thumb
sub_8008F4C:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8022F20
    cmp r0, #0x90
    beq loc_8008F68
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8008F7C
loc_8008F68:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_8008B18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800812C
    mov r0, #4
    strh r0, [r5,#0xa]
locret_8008F7C:
    pop {r4,pc}
    .byte 0, 0
// end of function sub_8008F4C

.thumb
sub_8008F80:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008F92
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_8008F9E
loc_8008F92:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_8008F9E
    mov r0, #8
    strh r0, [r5,#0xa]
locret_8008F9E:
    pop {pc}
// end of function sub_8008F80

.thumb
sub_8008FA0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8008FD2
    mov r0, #0x90
    mov r1, #0
    mov r2, #0
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8007ECA
    tst r0, r0
    pop {r0-r2}
    bne loc_8008FC6
    bl sub_80163A8
    b loc_8008FCC
loc_8008FC6:
    mov r3, #0
    bl sub_8016408
loc_8008FCC:
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_8009050
loc_8008FD2:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8007ECA
    tst r0, r0
    bne loc_8008FE6
    bl sub_8016394
    b loc_8008FEA
loc_8008FE6:
    bl sub_80163F8
loc_8008FEA:
    tst r0, r0
    bne locret_8009050
    ldrb r0, [r5,#0x16]
    bl sub_8008B30
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#0x16]
    bl sub_8008B40
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_8008B18
    ldrb r0, [r5,#0x16]
    bl sub_80090CA
    ldr r3, [r0,#8]
    tst r3, r3
    beq loc_800901C
    mov r1, #8
    str r1, [r3,#8]
    mov r1, #4
    strb r1, [r3,#0xb]
loc_800901C:
    push {r4}
    ldrb r4, [r5,#0x16]
    mov r0, #0
    bl sub_80090CA
    strb r4, [r0,#3]
    mov r0, #1
    bl sub_80090CA
    strb r4, [r0,#3]
    pop {r4}
    ldrb r0, [r5,#0x16]
    bl sub_8022F20
    add r0, r3, #0
    beq loc_8009040
    ldrh r1, [r0,#0x12]
    strh r1, [r5,#0x12]
loc_8009040:
    ldrb r0, [r5,#0x16]
    bl sub_8022F4E
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8009050:
    pop {pc}
// end of function sub_8008FA0

.thumb
sub_8009052:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_80090CA
    ldrb r2, [r0,#1]
    cmp r2, #0
    beq loc_8009066
    cmp r2, #3
    beq loc_8009066
    b loc_8009080
loc_8009066:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80090CA
    ldrb r2, [r0,#2]
    tst r2, r2
    bne loc_8009080
    ldrb r2, [r0,#1]
    cmp r2, #2
    bne loc_8009080
    mov r0, #1
    pop {pc}
loc_8009080:
    mov r0, #0
    pop {pc}
// end of function sub_8009052

.thumb
sub_8009084:
    push {r4,lr}
    push {r0-r2}
    add r4, r0, #0
    mov r0, #0
    bl sub_80090CA
    strb r4, [r0,#3]
    mov r0, #1
    bl sub_80090CA
    strb r4, [r0,#3]
    pop {r0-r2}
    b loc_80090A0
loc_800909E:
    push {r4,lr}
loc_80090A0:
    push {r0-r2}
    bl sub_8008B40
    pop {r0-r2}
    push {r1,r2}
    bl sub_80090CA
    ldr r3, [r0,#8]
    tst r3, r3
    pop {r1,r2}
    beq loc_80090BE
    mov r4, #8
    str r4, [r3,#8]
    mov r4, #4
    strb r4, [r3,#0xb]
loc_80090BE:
    strb r1, [r0,#2]
    str r2, [r0,#8]
    str r5, [r0,#0xc]
    mov r1, #1
    strb r1, [r0,#1]
    pop {r4,pc}
// end of function sub_8009084

.thumb
sub_80090CA:
    mov r1, #0x50 
    mul r0, r1
    ldr r1, [pc, #0x80090e4-0x80090ce-2] // unk_203BF90
    add r0, r0, r1
    mov pc, lr
// end of function sub_80090CA

.thumb
sub_80090D4:
    push {lr}
    ldr r0, [pc, #0x80090e8-0x80090d6-2] // unk_203BF90
    mov r1, #0xa0
    bl f900_8000930
    pop {pc}
off_80090E0:    .word 0x171
off_80090E4:    .word unk_203BF90
off_80090E8:    .word unk_203BF90
// end of function sub_80090D4

.thumb
sub_80090EC:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    ldr r7, [pc, #0x8009178-0x80090f0-4] // byte_203AC70
    add r0, r7, #0
    mov r1, #0x50 
    lsl r1, r1, #4
    bl f900_8000904
    add r2, r7, #0
    ldr r0, [pc, #0x8009174-0x80090fe-2] // =0x258
    ldr r3, [pc, #0x800917c-0x8009100-4] // =0x3C0
    ldr r4, [pc, #0x8009184-0x8009102-2] // =0x80BE
    mov r1, #0
loc_8009106:
    strh r0, [r2,#0xc]
    strh r3, [r2,#0xe]
    strh r4, [r2,#0x12]
    add r2, #0x20 
    add r1, #1
    cmp r1, #0x28 
    blt loc_8009106
    ldr r0, [pc, #0x8009170-0x8009114-4] // unk_203BF40
    mov r1, #0x20 
    bl f900_8000904
    ldr r0, [pc, #0x8009164-0x800911c-4] // byte_2037AB0
    mov r1, #0xd8
    bl f900_8000904
    add r0, r6, #0
    bl sub_8009188
    ldr r7, [pc, #0x8009164-0x800912a-2] // byte_2037AB0
    mov r0, #0
    strb r0, [r7,#(byte_2037AB2 - 0x2037ab0)]
    strb r0, [r7,#(byte_2037AB4 - 0x2037ab0)]
    strb r0, [r7,#(byte_2037AB6 - 0x2037ab0)]
    strb r0, [r7,#(byte_2037AB8 - 0x2037ab0)]
    strb r0, [r7,#(byte_2037ABA - 0x2037ab0)]
    strb r0, [r7,#(byte_2037ABC - 0x2037ab0)]
    mov r0, #0xe
    strb r0, [r7,#(byte_2037AB3 - 0x2037ab0)]
    mov r0, #0xd
    strb r0, [r7,#(byte_2037AB5 - 0x2037ab0)]
    mov r0, #0xc
    strb r0, [r7,#(byte_2037AB7 - 0x2037ab0)]
    mov r0, #0xb
    strb r0, [r7,#(byte_2037AB9 - 0x2037ab0)]
    mov r0, #0xa
    strb r0, [r7,#(byte_2037ABB - 0x2037ab0)]
    mov r0, #9
    strb r0, [r7,#(byte_2037ABD - 0x2037ab0)]
    ldr r0, [pc, #0x8009180-0x8009152-2] // =0x2037B36
    mov r1, #0
    mov r3, #0x40 
loc_8009158:
    strb r3, [r0,r1]
    add r1, #1
    cmp r1, #0x28 
    blt loc_8009158
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8009164:    .word byte_2037AB0
    .word dword_800A3F0
    .word unk_203BF60
off_8009170:    .word unk_203BF40
off_8009174:    .word 0x258
off_8009178:    .word byte_203AC70
off_800917C:    .word 0x3C0
dword_8009180:    .word 0x2037B36
dword_8009184:    .word 0x80BE
// end of function sub_80090EC

.thumb
sub_8009188:
    push {r4,r5,r7,lr}
    add r7, r0, #0
    bl sub_80091C0
    mov r1, #0xc
    mul r7, r1
    ldr r1, [pc, #0x80091b8-0x8009194-4] // dword_800A3F0
    add r7, r7, r1
    ldr r3, [pc, #0x80091bc-0x8009198-4] // byte_203AD90
    mov r5, #3
loc_800919C:
    mov r4, #6
    ldr r1, [r7]
loc_80091A0:
    mov r2, #0xf
    and r2, r1
    strb r2, [r3]
    add r3, #0x20 
    lsr r1, r1, #4
    sub r4, #1
    bgt loc_80091A0
    add r3, #0x40 
    add r7, #4
    sub r5, #1
    bgt loc_800919C
    pop {r4,r5,r7,pc}
off_80091B8:    .word dword_800A3F0
off_80091BC:    .word byte_203AD90
// end of function sub_8009188

.thumb
sub_80091C0:
    push {r4,lr}
    mov r0, #0
    mov r1, #0
    ldr r3, [pc, #0x80091e0-0x80091c6-2] // dword_80091E4
    ldr r4, [pc, #0x80091dc-0x80091c8-4] // byte_203AC70
loc_80091CA:
    strb r1, [r7]
    ldrb r2, [r3,r0]
    strb r2, [r4,#1]
    add r4, #0x20 
    add r0, #1
    cmp r0, #0x28 
    blt loc_80091CA
    pop {r4,pc}
    .balign 4, 0x00
off_80091DC:    .word byte_203AC70
off_80091E0:    .word dword_80091E4
dword_80091E4:    .word 0x0, 0x0, 0x0
    .word 0x10101, 0x0
    .word 0x10101, 0x0
    .word 0x10101, 0x0, 0x0
// end of function sub_80091C0

.thumb
sub_800920C:
    push {r5,r7,lr}
    sub sp, sp, #0xc
    bl sub_80078C4
    tst r0, r0
    bne loc_8009270
    bl sub_8007920
    bne loc_800926C
    bl sub_8009838
    ldr r0, [pc, #0x8009274-0x8009222-2] // byte_203AD90
    str r0, [sp,#8]
    mov r0, #1
    str r0, [sp,#4]
loc_800922A:
    mov r0, #1
    str r0, [sp]
loc_800922E:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800970C
    ldr r7, [sp,#8]
    mov r0, #0
    ldrb r1, [r7]
    cmp r1, #3
    bne loc_800924A
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A52
    ldr r7, [sp,#8]
loc_800924A:
    str r0, [r7,#8]
    ldr r7, [sp,#8]
    add r7, #0x20 
    str r7, [sp,#8]
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_800922E
    add r7, #0x40 
    str r7, [sp,#8]
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
    cmp r1, #3
    ble loc_800922A
    b loc_8009270
loc_800926C:
    bl sub_8009A04
loc_8009270:
    add sp, sp, #0xc
    pop {r5,r7,pc}
off_8009274:    .word byte_203AD90
// end of function sub_800920C

.thumb
sub_8009278:
    push {r4-r7,lr}
    sub sp, sp, #0x20
    ldr r0, [pc, #0x80093c0-0x800927c-4] // byte_2037AB0
    ldrb r1, [r0]
    tst r1, r1
    bne loc_8009288
    add sp, sp, #0x20
    pop {r4-r7,pc}
loc_8009288:
    bl sub_8009522
    ldr r0, [pc, #0x80093a8-0x800928c-4] // =0x2037ABE
    str r0, [sp,#0xc]
    ldr r0, [pc, #0x80093b0-0x8009290-4] // =0x2037AE6
    str r0, [sp,#0x10]
    ldr r0, [pc, #0x80093b4-0x8009294-4] // =0x2037B0E
    str r0, [sp,#0x14]
    ldr r0, [pc, #0x80093b8-0x8009298-4] // =0x2037B36
    str r0, [sp,#0x18]
    ldr r0, [pc, #0x80093bc-0x800929c-4] // =0x2037B5E
    str r0, [sp,#0x1c]
    mov r0, #0
    str r0, [sp,#4]
loc_80092A4:
    mov r0, #0
    str r0, [sp]
loc_80092A8:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009E64
    tst r0, r0
    beq loc_800930A
    ldr r0, [sp,#0xc]
    ldrb r0, [r0]
    tst r0, r0
    bne loc_80092F8
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#0x18]
    ldrb r2, [r2]
    mov r4, #0x40 
    tst r2, r4
    bne loc_80092CE
    mov r2, #0xff
    b loc_80092F2
loc_80092CE:
    mov r4, #0x80
    tst r2, r4
    beq loc_80092DA
    mov r4, #0xf
    and r2, r4
    b loc_80092DE
loc_80092DA:
    ldr r2, [sp,#0x10]
    ldrb r2, [r2]
loc_80092DE:
    ldr r3, [sp,#0x1c]
    ldrb r3, [r3]
    mov r4, #0x80
    tst r3, r4
    beq loc_80092EE
    mov r4, #0xf
    and r3, r4
    b loc_80092F2
loc_80092EE:
    ldr r3, [sp,#0x14]
    ldrb r3, [r3]
loc_80092F2:
    bl sub_80093C8
    b loc_800930A
loc_80092F8:
    ldr r2, [sp,#0x18]
    ldrb r2, [r2]
    mov r4, #0x40 
    tst r2, r4
    beq loc_800930A
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009456
loc_800930A:
    ldr r7, [sp,#0xc]
    add r7, #1
    str r7, [sp,#0xc]
    ldr r7, [sp,#0x10]
    add r7, #1
    str r7, [sp,#0x10]
    ldr r7, [sp,#0x14]
    add r7, #1
    str r7, [sp,#0x14]
    ldr r7, [sp,#0x18]
    add r7, #1
    str r7, [sp,#0x18]
    ldr r7, [sp,#0x1c]
    add r7, #1
    str r7, [sp,#0x1c]
    ldr r0, [sp]
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #8
    blt loc_80092A8
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
    cmp r1, #3
    ble loc_80092A4
    ldr r0, [pc, #0x80093ac-0x800933e-2] // =0x2037B26
    str r0, [sp,#8]
    ldr r0, [pc, #0x80093c4-0x8009342-2] // =0x2037B4E
    str r0, [sp,#0x18]
    mov r0, #3
    str r0, [sp,#4]
    mov r0, #0
    str r0, [sp]
loc_800934E:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009E64
    tst r0, r0
    beq loc_8009378
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add r1, #1
    ldr r7, [sp,#0x18]
    ldrb r2, [r7]
    mov r3, #0x40 
    tst r2, r3
    beq loc_8009374
    ldr r7, [sp,#8]
    ldrb r2, [r7]
    bl sub_8009490
    b loc_8009378
loc_8009374:
    bl sub_80094C8
loc_8009378:
    ldr r7, [sp,#8]
    add r7, #1
    str r7, [sp,#8]
    ldr r7, [sp,#0x18]
    add r7, #1
    str r7, [sp,#0x18]
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #8
    blt loc_800934E
    ldr r0, [pc, #0x80093b8-0x800938e-2] // =0x2037B36
    mov r1, #0
    mov r3, #0x80
loc_8009394:
    ldrb r2, [r0,r1]
    bic r2, r3
    strb r2, [r0,r1]
    add r1, #1
    cmp r1, #0x50 
    blt loc_8009394
    add sp, sp, #0x20
    pop {r4-r7,pc}
    .word byte_203AC70
dword_80093A8:    .word 0x2037ABE
dword_80093AC:    .word 0x2037B26
dword_80093B0:    .word 0x2037AE6
dword_80093B4:    .word 0x2037B0E
dword_80093B8:    .word 0x2037B36
dword_80093BC:    .word 0x2037B5E
off_80093C0:    .word byte_2037AB0
dword_80093C4:    .word 0x2037B4E
// end of function sub_8009278

.thumb
sub_80093C8:
    push {lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    eor r3, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x8009424-0x80093d6-2] // =0x8009444
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x8009420-0x80093e6-2] // dword_8009428
    cmp r2, #0xff
    beq loc_8009400
    mov r4, #6
    mul r4, r2
    mov r2, #3
    mul r3, r2
    add r4, r4, r3
    add r4, r4, r1
    sub r4, #1
    ldr r6, [pc, #0x8009418-0x80093fa-2] // byte_87042E0
    lsl r7, r4, #5
    add r6, r6, r7
loc_8009400:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #3
    ldr r6, [pc, #0x800941c-0x800940c-4] // sub_30059E8+1
    mov lr, pc
    bx r6
    add sp, sp, #0x28
    pop {pc}
    .balign 4, 0x00
off_8009418:    .word byte_87042E0
off_800941C:    .word sub_30059E8+1
off_8009420:    .word dword_8009428
dword_8009424:    .word 0x8009446
dword_8009428:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFB0000, 0x140F0A05, 0x191E1E19, 0x50A0F14
    .byte 0x0, 0xFB
// end of function sub_80093C8

.thumb
sub_8009456:
    push {lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    lsl r4, r4, #3
    ldr r6, [pc, #0x800948c-0x8009462-2] // =0x8009444
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    ldr r3, [pc, #0x8009488-0x8009478-4] // dword_8704BE0
    mov r4, #5
    mov r5, #3
    bl sub_8001DDC
    add sp, sp, #0x28
    pop {pc}
    .balign 4, 0x00
off_8009488:    .word dword_8704BE0
dword_800948C:    .word 0x8009446
// end of function sub_8009456

.thumb
sub_8009490:
    push {lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    eor r2, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x8009504-0x800949e-2] // =0x8009510
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x80094fc-0x80094ae-2] // dword_8704C00
    lsl r7, r2, #5
    add r6, r6, r7
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #1
    bl sub_8001DDC
    add sp, sp, #0x28
    pop {pc}
// end of function sub_8009490

.thumb
sub_80094C8:
    push {lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    eor r2, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x8009504-0x80094d6-2] // =0x8009510
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x8009500-0x80094e6-2] // dword_8009508
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #1
    bl sub_8001DDC
    add sp, sp, #0x28
    pop {pc}
off_80094FC:    .word dword_8704C00
off_8009500:    .word dword_8009508
dword_8009504:    .word 0x8009512
dword_8009508:    .word 0x0, 0x0
    .word 0xFB0000, 0x140F0A05, 0x191E1E19, 0x50A0F14
    .byte 0x0, 0xFB
// end of function sub_80094C8

.thumb
sub_8009522:
    push {r5,lr}
    add r5, r0, #0
    ldrb r0, [r5,#3]
    sub r0, #1
    strb r0, [r5,#3]
    bne loc_800954C
    mov r0, #0xe
    strb r0, [r5,#3]
    ldrb r0, [r5,#2]
    add r0, #1
    cmp r0, #0xa
    blt loc_800953C
    mov r0, #0
loc_800953C:
    strb r0, [r5,#2]
    ldr r1, [pc, #0x8009610-0x800953e-2] // off_8009614
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x800960c-0x8009544-4] // unk_3002A70
    mov r2, #0x20 
    bl f900_80009A0
loc_800954C:
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne loc_8009572
    mov r0, #0xe
    strb r0, [r5,#5]
    ldrb r0, [r5,#4]
    add r0, #1
    cmp r0, #0xa
    blt loc_8009562
    mov r0, #0
loc_8009562:
    strb r0, [r5,#4]
    ldr r1, [pc, #0x8009640-0x8009564-4] // off_8009644
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x800963c-0x800956a-2] // unk_3002AF0
    mov r2, #0x20 
    bl f900_80009A0
loc_8009572:
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bne loc_8009598
    mov r0, #0xe
    strb r0, [r5,#7]
    ldrb r0, [r5,#6]
    add r0, #1
    cmp r0, #6
    blt loc_8009588
    mov r0, #0
loc_8009588:
    strb r0, [r5,#6]
    ldr r1, [pc, #0x8009670-0x800958a-2] // off_8009674
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x800966c-0x8009590-4] // unk_3002AB0
    mov r2, #0x20 
    bl f900_80009A0
loc_8009598:
    ldrb r0, [r5,#9]
    sub r0, #1
    strb r0, [r5,#9]
    bne loc_80095BE
    mov r0, #0xe
    strb r0, [r5,#9]
    ldrb r0, [r5,#8]
    add r0, #1
    cmp r0, #6
    blt loc_80095AE
    mov r0, #0
loc_80095AE:
    strb r0, [r5,#8]
    ldr r1, [pc, #0x8009690-0x80095b0-4] // off_8009694
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x800968c-0x80095b6-2] // unk_3002B30
    mov r2, #0x20 
    bl f900_80009A0
loc_80095BE:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne loc_80095E4
    mov r0, #0xe
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0xa]
    add r0, #1
    cmp r0, #0xa
    blt loc_80095D4
    mov r0, #0
loc_80095D4:
    strb r0, [r5,#0xa]
    ldr r1, [pc, #0x80096b0-0x80095d6-2] // off_80096B4
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x80096ac-0x80095dc-4] // unk_3002AD0
    mov r2, #0x20 
    bl f900_80009A0
loc_80095E4:
    ldrb r0, [r5,#0xd]
    sub r0, #1
    strb r0, [r5,#0xd]
    bne locret_800960A
    mov r0, #0xe
    strb r0, [r5,#0xd]
    ldrb r0, [r5,#0xc]
    add r0, #1
    cmp r0, #0xa
    blt loc_80095FA
    mov r0, #0
loc_80095FA:
    strb r0, [r5,#0xc]
    ldr r1, [pc, #0x80096e0-0x80095fc-4] // off_80096E4
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x80096dc-0x8009602-2] // unk_3002B50
    mov r2, #0x20 
    bl f900_80009A0
locret_800960A:
    pop {r5,pc}
off_800960C:    .word unk_3002A70
off_8009610:    .word off_8009614
off_8009614:    .word dword_8705060
    .word dword_8704C40
    .word dword_8704C60
    .word dword_8704C80
    .word dword_8704CA0
    .word dword_8704CC0
    .word dword_8704CA0
    .word dword_8704C80
    .word dword_8704C60
    .word dword_8704C40
off_800963C:    .word unk_3002AF0
off_8009640:    .word off_8009644
off_8009644:    .word dword_87050E0
    .word dword_8704E40
    .word dword_8704E60
    .word dword_8704E80
    .word dword_8704EA0
    .word dword_8704EC0
    .word dword_8704EA0
    .word dword_8704E80
    .word dword_8704E60
    .word dword_8704E40
off_800966C:    .word unk_3002AB0
off_8009670:    .word off_8009674
off_8009674:    .word dword_87050A0
    .word dword_8704CE0
    .word dword_8704D00
    .word dword_8704D20
    .word dword_8704D40
    .word dword_8704D60
off_800968C:    .word unk_3002B30
off_8009690:    .word off_8009694
off_8009694:    .word dword_8705120
    .word dword_8704EE0
    .word dword_8704F00
    .word dword_8704F20
    .word dword_8704F40
    .word dword_8704F60
off_80096AC:    .word unk_3002AD0
off_80096B0:    .word off_80096B4
off_80096B4:    .word dword_87050C0
    .word dword_8704D80
    .word dword_8704DA0
    .word dword_8704DC0
    .word dword_8704DE0
    .word dword_8704E00
    .word dword_8704DE0
    .word dword_8704DC0
    .word dword_8704DA0
    .word dword_8704D80
off_80096DC:    .word unk_3002B50
off_80096E0:    .word off_80096E4
off_80096E4:    .word dword_8705140
    .word dword_8704F80
    .word dword_8704FA0
    .word dword_8704FC0
    .word dword_8704FE0
    .word dword_8705000
    .word dword_8704FE0
    .word dword_8704FC0
    .word dword_8704FA0
    .word dword_8704F80
// end of function sub_8009522

.thumb
sub_800970C:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    str r0, [sp]
    str r1, [sp,#4]
    ldr r7, [pc, #0x8009818-0x8009714-4] // byte_203AC70
    ldr r6, [pc, #0x800981c-0x8009716-2] // =0x2037AE6
    mov r2, #8
    mul r2, r1
    add r2, r2, r0
    add r6, r6, r2
    str r6, [sp,#0x10]
    mov r3, #0x20 
    mul r2, r3
    add r7, r7, r2
    ldrb r0, [r7]
    str r0, [sp,#8]
    cmp r0, #0
    beq loc_8009814
    cmp r0, #1
    beq loc_800974A
    cmp r0, #3
    beq loc_8009778
    ldr r1, [pc, #0x8009820-0x8009738-4] // =0x258
    strh r1, [r7,#0xc]
    cmp r0, #8
    beq loc_80097AC
    cmp r0, #0xa
    beq loc_80097DA
    ldr r1, [pc, #0x8009830-0x8009744-4] // =0x3C0
    strh r1, [r7,#0xe]
    b loc_800980E
loc_800974A:
    ldrh r1, [r7,#0xc]
    sub r1, #1
    strh r1, [r7,#0xc]
    tst r1, r1
    bne loc_8009768
    mov r0, #2
    strb r0, [r7]
    str r0, [sp,#8]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r1, [pc, #0x8009820-0x8009762-2] // =0x258
    strh r1, [r7,#0xc]
    b loc_800980E
loc_8009768:
    cmp r1, #0x3c 
    bgt loc_8009776
    mov r2, #2
    tst r1, r2
    beq loc_8009776
    mov r0, #2
    str r0, [sp,#8]
loc_8009776:
    b loc_800980E
loc_8009778:
    ldr r1, [pc, #0x8009828-0x8009778-4] // =0xF800000
    ldr r0, [r7,#8]
    tst r0, r1
    beq loc_80097AA
    ldr r1, [pc, #0x800982c-0x8009780-4] // =0x100000
    tst r0, r1
    bne loc_80097AA
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A52
    ldr r1, [pc, #0x8009824-0x800978e-2] // =0xF880080
    tst r0, r1
    bne loc_80097AA
    mov r0, #1
    strb r0, [r7]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r1, [pc, #0x8009820-0x80097a0-4] // =0x258
    strh r1, [r7,#0xc]
    mov r0, #0x95
    bl f500_8000558
loc_80097AA:
    b loc_800980E
loc_80097AC:
    ldrh r1, [r7,#0xe]
    sub r1, #1
    strh r1, [r7,#0xe]
    tst r1, r1
    bne loc_80097CA
    mov r0, #2
    strb r0, [r7]
    str r0, [sp,#8]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r1, [pc, #0x8009820-0x80097c4-4] // =0x258
    strh r1, [r7,#0xc]
    b loc_800980E
loc_80097CA:
    cmp r1, #0x3c 
    bgt loc_80097D8
    mov r2, #2
    tst r1, r2
    beq loc_80097D8
    mov r0, #2
    str r0, [sp,#8]
loc_80097D8:
    b loc_800980E
loc_80097DA:
    ldrh r1, [r7,#0x12]
    add r0, r1, #0
    lsl r0, r0, #0x11
    bcc loc_80097F4
    ldr r2, [r7,#4]
    ldr r1, [pc, #0x800982c-0x80097e4-4] // =0x100000
    tst r2, r1
    bne loc_800980E
    ldr r1, [pc, #0x8009834-0x80097ea-2] // =0xF800000
    tst r2, r1
    beq loc_800980E
    lsr r0, r0, #0x11
    strh r0, [r7,#0x12]
loc_80097F4:
    ldrh r0, [r7,#0x12]
    tst r0, r0
    beq loc_8009800
    sub r0, #1
    strh r0, [r7,#0x12]
    bgt loc_800980E
loc_8009800:
    mov r0, #2
    strb r0, [r7]
    str r0, [sp,#8]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
loc_800980E:
    ldr r0, [sp,#8]
    ldr r6, [sp,#0x10]
    strb r0, [r6]
loc_8009814:
    add sp, sp, #0x18
    pop {r6,r7,pc}
off_8009818:    .word byte_203AC70
dword_800981C:    .word 0x2037AE6
off_8009820:    .word 0x258
dword_8009824:    .word 0xF880080
dword_8009828:    .word 0xF800000
dword_800982C:    .word 0x100000
off_8009830:    .word 0x3C0
dword_8009834:    .word 0xF800000
// end of function sub_800970C

.thumb
sub_8009838:
    push {r6,r7,lr}
    sub sp, sp, #0x1c
    mov r0, #1
    str r0, [sp]
    ldr r0, [pc, #0x80099e0-0x8009840-4] // unk_203BF44
    str r0, [sp,#4]
loc_8009844:
    ldr r7, [sp,#4]
    ldrh r0, [r7]
    tst r0, r0
    beq loc_8009850
    sub r0, #1
    strh r0, [r7]
loc_8009850:
    mov r0, #1
    str r0, [sp,#8]
    mov r0, #0
    str r0, [sp,#0xc]
    ldr r6, [pc, #0x80099ec-0x8009858-4] // dword_80099FC
    ldr r0, [sp]
    ldrb r0, [r6,r0]
    str r0, [sp,#0x14]
loc_8009860:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldr r2, [sp,#0x14]
    eor r1, r2
    beq loc_8009880
    ldr r7, [sp,#4]
    ldrh r1, [r7]
    tst r1, r1
    bne loc_8009886
    ldr r1, [r0,#4]
    ldr r2, [pc, #0x80099e4-0x800987a-2] // =0xF880080
    tst r1, r2
    bne loc_8009886
loc_8009880:
    ldr r1, [sp,#0xc]
    add r1, #1
    str r1, [sp,#0xc]
loc_8009886:
    ldr r0, [sp,#8]
    add r0, #1
    str r0, [sp,#8]
    cmp r0, #3
    ble loc_8009860
    ldr r7, [sp,#4]
    ldr r0, [sp,#0xc]
    strb r0, [r7,#2]
    add r7, #4
    str r7, [sp,#4]
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_8009844
    mov r0, #6
    str r0, [sp]
    ldr r0, [pc, #0x80099e8-0x80098a8-4] // unk_203BF58
    str r0, [sp,#0xc]
    mov r0, #0
    str r0, [sp,#0x18]
loc_80098B0:
    ldr r7, [sp,#0xc]
    ldrb r0, [r7,#2]
    str r0, [sp,#0x10]
    mov r0, #1
    str r0, [sp,#4]
    ldr r1, [pc, #0x80099ec-0x80098ba-2] // dword_80099FC
    ldr r0, [sp]
    ldrb r0, [r1,r0]
    str r0, [sp,#0x14]
loc_80098C2:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A88
    ldr r1, [sp,#0x18]
    tst r1, r1
    bne loc_80098DA
    ldr r1, [sp,#0x10]
    cmp r1, #3
    beq loc_80098DE
    mov r1, #1
    str r1, [sp,#0x18]
loc_80098DA:
    ldrb r2, [r0,#1]
    b loc_80098F6
loc_80098DE:
    ldr r1, [sp,#0x14]
    ldrb r2, [r0,#1]
    cmp r1, r2
    beq loc_80098F6
    strb r1, [r0,#1]
    mov r1, #0x5a 
    strh r1, [r0,#0x10]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r2, [sp,#0x14]
loc_80098F6:
    ldr r7, [pc, #0x80099f0-0x80098f6-2] // =0x2037B0E
    ldr r0, [sp]
    ldr r1, [sp,#4]
    lsl r1, r1, #3
    add r0, r0, r1
    strb r2, [r7,r0]
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #3
    ble loc_80098C2
    ldr r0, [sp,#0xc]
    sub r0, #4
    str r0, [sp,#0xc]
    ldr r0, [sp]
    sub r0, #1
    str r0, [sp]
    cmp r0, #4
    bge loc_80098B0
    mov r0, #1
    str r0, [sp]
    ldr r0, [pc, #0x80099e0-0x8009920-4] // unk_203BF44
    str r0, [sp,#0xc]
    mov r0, #0
    str r0, [sp,#0x18]
loc_8009928:
    ldr r7, [sp,#0xc]
    ldrb r0, [r7,#2]
    str r0, [sp,#0x10]
    mov r0, #1
    str r0, [sp,#4]
    ldr r0, [pc, #0x80099ec-0x8009932-2] // dword_80099FC
    ldr r1, [sp]
    ldrb r0, [r0,r1]
    str r0, [sp,#0x14]
loc_800993A:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A88
    ldr r1, [sp,#0x18]
    tst r1, r1
    bne loc_8009952
    ldr r1, [sp,#0x10]
    cmp r1, #3
    beq loc_8009956
    mov r1, #1
    str r1, [sp,#0x18]
loc_8009952:
    ldrb r2, [r0,#1]
    b loc_800996E
loc_8009956:
    ldr r1, [sp,#0x14]
    ldrb r2, [r0,#1]
    cmp r1, r2
    beq loc_800996E
    strb r1, [r0,#1]
    mov r1, #0x5a 
    strh r1, [r0,#0x10]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r2, [sp,#0x14]
loc_800996E:
    ldr r7, [pc, #0x80099f0-0x800996e-2] // =0x2037B0E
    ldr r0, [sp]
    ldr r1, [sp,#4]
    lsl r1, r1, #3
    add r0, r0, r1
    strb r2, [r7,r0]
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #3
    ble loc_800993A
    ldr r0, [sp,#0xc]
    add r0, #4
    str r0, [sp,#0xc]
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #3
    ble loc_8009928
    mov r0, #1
    str r0, [sp,#4]
loc_8009998:
    mov r0, #1
    str r0, [sp]
loc_800999C:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A88
    ldrh r1, [r0,#0x10]
    tst r1, r1
    beq loc_80099C6
    sub r1, #1
    strh r1, [r0,#0x10]
    ldr r2, [sp,#4]
    lsl r2, r2, #3
    ldr r3, [sp]
    add r2, r2, r3
    ldr r3, [pc, #0x80099f0-0x80099b6-2] // =0x2037B0E
    add r2, r2, r3
    mov r3, #4
    and r3, r1
    lsr r3, r3, #2
    ldrb r4, [r2]
    eor r4, r3
    strb r4, [r2]
loc_80099C6:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_800999C
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #3
    ble loc_8009998
    add sp, sp, #0x1c
    pop {r6,r7,pc}
    .byte 0, 0
off_80099E0:    .word unk_203BF44
dword_80099E4:    .word 0xF880080
off_80099E8:    .word unk_203BF58
off_80099EC:    .word dword_80099FC
dword_80099F0:    .word 0x2037B0E
    .word unk_203BF40
    .word byte_203AC70
dword_80099FC:    .word 0x0
    .word 0x10101
// end of function sub_8009838

.thumb
sub_8009A04:
    push {r5,lr}
    mov r4, #0
    ldr r5, [pc, #0x8009a20-0x8009a08-4] // byte_203AC70
    ldr r6, [pc, #0x8009a24-0x8009a0a-2] // =0x2037AE6
    ldr r7, [pc, #0x8009a28-0x8009a0c-4] // =0x2037B0E
loc_8009A0E:
    ldrb r0, [r5]
    strb r0, [r6,r4]
    ldrb r0, [r5,#1]
    strb r0, [r7,r4]
    add r5, #0x20 
    add r4, #1
    cmp r4, #0x28 
    blt loc_8009A0E
    pop {r5,pc}
off_8009A20:    .word byte_203AC70
dword_8009A24:    .word 0x2037AE6
dword_8009A28:    .word 0x2037B0E
// end of function sub_8009A04

.thumb
sub_8009A2C:
    push {lr}
    ldr r0, [pc, #0x8009a38-0x8009a2e-2] // =0x2037ABE
    mov r1, #0x28 
    bl f900_8000904
    pop {pc}
dword_8009A38:    .word 0x2037ABE
// end of function sub_8009A2C

.thumb
sub_8009A3C:
    push {lr}
    bl sub_8009A98
    pop {pc}
// end of function sub_8009A3C

.thumb
sub_8009A44:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq locret_8009A50
    str r2, [r0,#4]
locret_8009A50:
    pop {pc}
// end of function sub_8009A44

.thumb
sub_8009A52:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009A60
    ldr r0, [r0,#4]
    pop {pc}
loc_8009A60:
    mov r0, #0
    pop {pc}
// end of function sub_8009A52

.thumb
sub_8009A64:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq locret_8009A74
    ldr r1, [r0,#4]
    orr r1, r2
    str r1, [r0,#4]
locret_8009A74:
    pop {pc}
// end of function sub_8009A64

.thumb
sub_8009A76:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq locret_8009A86
    ldr r1, [r0,#4]
    bic r1, r2
    str r1, [r0,#4]
locret_8009A86:
    pop {pc}
// end of function sub_8009A76

.thumb
sub_8009A88:
    push {lr}
    ldr r2, [pc, #0x8009a94-0x8009a8a-2] // sub_800A3A4+1
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_8009A94:    .word sub_800A3A4+1
// end of function sub_8009A88

.thumb
sub_8009A98:
    push {lr}
    ldr r0, [pc, #0x8009aa4-0x8009a9a-2] // sub_800A31C+1
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8009AA4:    .word sub_800A31C+1
// end of function sub_8009A98

.thumb
sub_8009AA8:
    push {lr}
    ldr r2, [pc, #0x8009ab4-0x8009aaa-2] // sub_800A334+1
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_8009AB4:    .word sub_800A334+1
// end of function sub_8009AA8

.thumb
sub_8009AB8:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009B0C
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009B0C
    mov r2, #2
    lsl r2, r2, #0x10
    tst r1, r2
    bne loc_8009B0C
    mov r2, #0x40 
    tst r1, r2
    bne loc_8009AF0
    orr r1, r2
    ldr r2, [pc, #0x8009b18-0x8009ada-2] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009AF0:
    ldr r2, [pc, #0x8009b10-0x8009af0-4] // =0xF8A0080
    tst r1, r2
    bne loc_8009B0C
    ldr r2, [pc, #0x8009b14-0x8009af6-2] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009B0C:
    mov r0, #0
    pop {pc}
dword_8009B10:    .word 0xF8A0080
dword_8009B14:    .word 0x23F5F
dword_8009B18:    .word 0x23F0F
// end of function sub_8009AB8

.thumb
sub_8009B1C:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009B68
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009B68
    mov r2, #0x40 
    tst r1, r2
    bne loc_8009B4C
    orr r1, r2
    ldr r2, [pc, #0x8009b74-0x8009b36-2] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009B4C:
    ldr r2, [pc, #0x8009b6c-0x8009b4c-4] // =0xF8A0080
    tst r1, r2
    bne loc_8009B68
    ldr r2, [pc, #0x8009b70-0x8009b52-2] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009B68:
    mov r0, #0
    pop {pc}
dword_8009B6C:    .word 0xF8A0080
dword_8009B70:    .word 0x23F5F
dword_8009B74:    .word 0x23F0F
// end of function sub_8009B1C

.thumb
sub_8009B78:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009BAE
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009BAE
    mov r2, #2
    lsl r2, r2, #0x10
    tst r1, r2
    bne loc_8009BAE
    ldr r2, [pc, #0x8009bb4-0x8009b92-2] // =0xF8A0080
    tst r1, r2
    bne loc_8009BAE
    ldr r2, [pc, #0x8009bb8-0x8009b98-4] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009BAE:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_8009BB4:    .word 0xF8A0080
dword_8009BB8:    .word 0x23F5F
// end of function sub_8009B78

.thumb
sub_8009BBC:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009C08
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009C08
    mov r2, #2
    lsl r2, r2, #0x10
    tst r1, r2
    bne loc_8009C08
    ldr r2, [pc, #0x8009c0c-0x8009bd6-2] // =0xF0A0080
    tst r1, r2
    bne loc_8009BF2
    ldr r2, [pc, #0x8009c10-0x8009bdc-4] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009BF2:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x8009c14-0x8009bf6-2] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
loc_8009C08:
    mov r0, #0
    pop {pc}
dword_8009C0C:    .word 0xF0A0080
dword_8009C10:    .word 0x23F5F
dword_8009C14:    .word 0x23F0F
// end of function sub_8009BBC

.thumb
sub_8009C18:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009C68
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009C68
    mov r2, #2
    lsl r2, r2, #0x10
    tst r1, r2
    bne loc_8009C68
    ldr r2, [pc, #0x8009c6c-0x8009c32-2] // =0xF8A0080
    tst r1, r2
    bne loc_8009C4E
    ldr r2, [pc, #0x8009c70-0x8009c38-4] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009C4E:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x8009c74-0x8009c52-2] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009C68:
    mov r0, #0
    pop {pc}
dword_8009C6C:    .word 0xF8A0080
dword_8009C70:    .word 0x23F5F
dword_8009C74:    .word 0x23F0F
// end of function sub_8009C18

.thumb
sub_8009C78:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009CC0
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009CC0
    ldr r2, [pc, #0x8009cc4-0x8009c8a-2] // =0xF8A0080
    tst r1, r2
    bne loc_8009CA6
    ldr r2, [pc, #0x8009cc8-0x8009c90-4] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009CA6:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x8009ccc-0x8009caa-2] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0x95
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009CC0:
    mov r0, #0
    pop {pc}
dword_8009CC4:    .word 0xF8A0080
dword_8009CC8:    .word 0x23F5F
dword_8009CCC:    .word 0x23F0F
// end of function sub_8009C78

.thumb
sub_8009CD0:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009D24
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009D24
    mov r2, #2
    lsl r2, r2, #0x10
    tst r1, r2
    bne loc_8009D24
    ldr r2, [pc, #0x8009d28-0x8009cea-2] // =0xF8A0080
    tst r1, r2
    bne loc_8009D08
    ldr r2, [pc, #0x8009d2c-0x8009cf0-4] // =0x23F5F
    bic r1, r2
    add r1, #1
    str r1, [r0,#4]
    mov r2, #1
    strb r2, [r0]
    mov r0, #0xaa
    add r0, #0xff
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009D08:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x8009d30-0x8009d0c-4] // =0x23F0F
    bic r1, r2
    add r1, #3
    str r1, [r0,#4]
    mov r2, #3
    strb r2, [r0]
    mov r0, #0xaa
    add r0, #0xff
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009D24:
    mov r0, #0
    pop {pc}
dword_8009D28:    .word 0xF8A0080
dword_8009D2C:    .word 0x23F5F
dword_8009D30:    .word 0x23F0F
// end of function sub_8009CD0

.thumb
sub_8009D34:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8009D60
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8009D60
    ldr r2, [pc, #0x8009d64-0x8009d46-2] // =0x23F5F
    bic r1, r2
    ldr r2, [pc, #0x8009d68-0x8009d4a-2] // =0x114
    orr r1, r2
    str r1, [r0,#4]
    mov r2, #4
    strb r2, [r0]
    mov r0, #0x25 
    add r0, #0xff
    bl f500_8000558
    mov r0, #1
    pop {pc}
loc_8009D60:
    mov r0, #0
    pop {pc}
dword_8009D64:    .word 0x23F5F
off_8009D68:    .word 0x114
// end of function sub_8009D34

.thumb
sub_8009D6C:
    push {lr}
    add r2, r0, #0
    add r3, r1, #0
    bl sub_8009E64
    tst r0, r0
    beq locret_8009D88
    add r0, r2, #0
    add r1, r3, #0
    ldr r3, [pc, #0x8009d8c-0x8009d7e-2] // =0x2037ABE
    lsl r1, r1, #3
    add r1, r1, r0
    mov r2, #1
    strb r2, [r3,r1]
locret_8009D88:
    pop {pc}
    .balign 4, 0x00
dword_8009D8C:    .word 0x2037ABE
// end of function sub_8009D6C

.thumb
sub_8009D90:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    bl sub_8009A88
    ldrb r3, [r0]
    tst r3, r3
    beq locret_8009DB0
    strb r6, [r0]
    mov r1, #0xbe
    strh r1, [r0,#0x12]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_8009AA8
locret_8009DB0:
    pop {r4-r6,pc}
// end of function sub_8009D90

.thumb
sub_8009DB2:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_8009A88
    add r7, r0, #0
    pop {r0,r1}
    ldrb r3, [r7]
    cmp r3, #2
    bne locret_8009DCA
    strb r2, [r7]
    bl sub_8009AA8
locret_8009DCA:
    pop {r4-r7,pc}
// end of function sub_8009DB2

.thumb
sub_8009DCC:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    bl sub_8009A88
    ldrb r3, [r0]
    tst r3, r3
    beq locret_8009DEC
    strb r6, [r0,#1]
    mov r2, #0
    strh r2, [r0,#0x10]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_8009AA8
locret_8009DEC:
    pop {r4-r6,pc}
// end of function sub_8009DCC

.thumb
sub_8009DEE:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8009dfc-0x8009df0-4] // unk_203BF40
    add r1, r1, r0
    ldr r0, [pc, #0x8009e00-0x8009df4-4] // =0x708
    strh r0, [r1]
    mov pc, lr
    .balign 4, 0x00
off_8009DFC:    .word unk_203BF40
off_8009E00:    .word 0x708
// end of function sub_8009DEE

.thumb
sub_8009E04:
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x8009e24-0x8009e08-4] // =0x2037B36
    add r0, r0, r1
    mov r1, #0x80
    orr r2, r1
    ldrb r1, [r0]
    lsr r1, r1, #4
    lsl r1, r1, #4
    orr r1, r2
    strb r1, [r0]
    add r0, #0x28 
    mov r1, #0x80
    orr r3, r1
    strb r3, [r0]
    mov pc, lr
dword_8009E24:    .word 0x2037B36
// end of function sub_8009E04

.thumb
sub_8009E28:
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x8009e3c-0x8009e2c-4] // =0x2037B36
    add r0, r0, r1
    ldrb r2, [r0]
    mov r1, #0x40 
    orr r2, r1
    strb r2, [r0]
    mov pc, lr
    .balign 4, 0x00
dword_8009E3C:    .word 0x2037B36
// end of function sub_8009E28

.thumb
sub_8009E40:
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x8009e54-0x8009e44-4] // =0x2037B36
    add r0, r0, r1
    ldrb r2, [r0]
    mov r1, #0x40 
    bic r2, r1
    strb r2, [r0]
    mov pc, lr
    .balign 4, 0x00
dword_8009E54:    .word 0x2037B36
// end of function sub_8009E40

.thumb
sub_8009E58:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009E64
    pop {pc}
// end of function sub_8009E58

.thumb
sub_8009E64:
    sub r0, #1
    cmp r0, #6
    bcs loc_8009E74
    sub r1, #1
    cmp r1, #3
    bcs loc_8009E74
    mov r0, #1
    mov pc, lr
loc_8009E74:
    mov r0, #0
    mov pc, lr
// end of function sub_8009E64

.thumb
sub_8009E78:
    push {r4,r5,lr}
    add r4, r2, #0
    add r5, r3, #0
    bl sub_8009A52
    tst r0, r0
    beq loc_8009E94
    tst r0, r5
    bne loc_8009E94
    and r0, r4
    cmp r0, r4
    bne loc_8009E94
    mov r0, #1
    pop {r4,r5,pc}
loc_8009E94:
    mov r0, #0
    pop {r4,r5,pc}
// end of function sub_8009E78

.thumb
sub_8009E98:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009EA4
    pop {pc}
// end of function sub_8009E98

.thumb
sub_8009EA4:
    push {lr}
    bl sub_8009A52
    mov r1, #0x10
    and r0, r1
    pop {pc}
// end of function sub_8009EA4

.thumb
sub_8009EB0:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#8]
    ldrb r1, [r3,#9]
    ldrb r2, [r3,#1]
    ldrb r3, [r5,#0x16]
    bl sub_8009EC2
    pop {pc}
// end of function sub_8009EB0

.thumb
sub_8009EC2:
    push {r4,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    ldr r3, [sp,#0xc]
    mov r0, #1
    tst r3, r3
    beq loc_8009ED8
    neg r0, r0
loc_8009ED8:
    str r0, [sp,#0xc]
    ldr r4, [pc, #0x8009f08-0x8009eda-2] // off_801255C
    ldr r2, [sp,#8]
    lsl r2, r2, #2
    ldr r4, [r4,r2]
loc_8009EE2:
    ldrb r0, [r4]
    cmp r0, #0x7f
    beq loc_8009F04
    mov r0, #0
    ldrsb r0, [r4,r0]
    ldr r1, [sp,#0xc]
    mul r1, r0
    ldr r0, [sp]
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#4]
    add r1, r1, r2
    bl sub_8009D6C
    add r4, #2
    b loc_8009EE2
loc_8009F04:
    add sp, sp, #0x10
    pop {r4,pc}
off_8009F08:    .word off_801255C
// end of function sub_8009EC2

.thumb
sub_8009F0C:
    push {lr}
    sub sp, sp, #0x14
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    mov r0, #0
    str r0, [sp,#0x10]
    mov r0, #1
    str r0, [sp]
    mov r1, #1
    str r1, [sp,#4]
loc_8009F20:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldr r2, [sp,#0xc]
    cmp r1, r2
    bne loc_8009F3E
    ldrb r1, [r0]
    ldr r2, [sp,#8]
    cmp r1, r2
    bne loc_8009F3E
    ldr r0, [sp,#0x10]
    add r0, #1
    str r0, [sp,#0x10]
loc_8009F3E:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_8009F20
    mov r0, #1
    str r0, [sp]
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
    cmp r1, #3
    ble loc_8009F20
    ldr r0, [sp,#0x10]
    add sp, sp, #0x14
    pop {pc}
// end of function sub_8009F0C

.thumb
sub_8009F5C:
    push {r4,r6,r7,lr}
    add r2, r0, #0
    add r3, r1, #0
    mov r6, #0
    mov r1, #3
loc_8009F66:
    mov r0, #6
loc_8009F68:
    push {r0-r3,r6}
    bl sub_8009A88
    add r7, r0, #0
    pop {r0-r3,r6}
    beq loc_8009F8A
    ldrb r4, [r7,#1]
    cmp r3, r4
    bne loc_8009F82
    ldrb r4, [r7]
    cmp r2, r4
    beq loc_8009F82
    add r6, #1
loc_8009F82:
    sub r0, #1
    bne loc_8009F68
    sub r1, #1
    bne loc_8009F66
loc_8009F8A:
    add r0, r6, #0
    pop {r4,r6,r7,pc}
    .byte 0, 0
// end of function sub_8009F5C

.thumb
sub_8009F90:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_8009F96:
    mov r0, #6
loc_8009F98:
    push {r0-r3,r6,r7}
    bl sub_8009A52
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_8009FC0
    and r4, r2
    cmp r4, r2
    bne loc_8009FC0
    ldrb r4, [r5,#0x12]
    cmp r0, r4
    bne loc_8009FB8
    ldrb r4, [r5,#0x13]
    cmp r1, r4
    beq loc_8009FC0
loc_8009FB8:
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_8009FC0:
    sub r0, #1
    bne loc_8009F98
    sub r1, #1
    bne loc_8009F96
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_8009F90

.thumb
sub_8009FCC:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_8009FD2:
    mov r0, #6
loc_8009FD4:
    push {r0-r3,r6,r7}
    bl sub_8009A52
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_8009FF0
    and r4, r2
    cmp r4, r2
    bne loc_8009FF0
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_8009FF0:
    sub r0, #1
    bne loc_8009FD4
    sub r1, #1
    bne loc_8009FD2
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_8009FCC

.thumb
sub_8009FFC:
    push {r7,lr}
    sub sp, sp, #0x10
    push {r1}
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r2, r2, r1
    tst r1, r1
    bne loc_800A012
    mov r1, #7
    sub r1, r1, r0
    add r0, r1, #0
loc_800A012:
    pop {r1}
    ldr r3, [r2,#4]
    ldr r2, [r2]
    add r7, sp, #0
    bl sub_800A040
    tst r0, r0
    beq loc_800A03A
    push {r0}
    bl sub_8001AF6
    pop {r1}
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x10
    pop {r7,pc}
loc_800A03A:
    add sp, sp, #0x10
    add r2, r0, #0
    pop {r7,pc}
// end of function sub_8009FFC

.thumb
sub_800A040:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r1, #0
    mov r1, #1
loc_800A048:
    cmp r1, r4
    beq loc_800A064
    push {r0-r3}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3}
    beq loc_800A064
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800A064:
    add r1, #1
    cmp r1, #3
    ble loc_800A048
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800A040

.thumb
sub_800A06E:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r0, #0
    mov r1, #1
loc_800A076:
    cmp r1, r4
    beq loc_800A09A
    mov r0, #1
loc_800A07C:
    push {r0-r3}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3}
    beq loc_800A094
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800A094:
    add r0, #1
    cmp r0, #6
    ble loc_800A07C
loc_800A09A:
    add r1, #1
    cmp r1, #3
    ble loc_800A076
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800A06E

.thumb
sub_800A0A4:
    push {r4-r7,lr}
    sub sp, sp, #8
    add r4, r0, #0
    mov r5, #1
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
loc_800A0B2:
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl sub_8009E78
    tst r0, r0
    beq loc_800A0CE
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_800A0CE:
    add r5, #1
    cmp r5, #3
    ble loc_800A0B2
    add r0, r6, #0
    add sp, sp, #8
    pop {r4-r7,pc}
// end of function sub_800A0A4

.thumb
sub_800A0DA:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r4, #1
    add r5, r0, #0
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
loc_800A0E8:
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl sub_8009E78
    tst r0, r0
    beq loc_800A104
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_800A104:
    add r4, #1
    cmp r4, #6
    ble loc_800A0E8
    add r0, r6, #0
    add sp, sp, #8
    pop {r4-r7,pc}
// end of function sub_800A0DA

.thumb
sub_800A110:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r0, #0
    mov r1, #1
loc_800A118:
    mov r0, #1
loc_800A11A:
    cmp r0, r4
    beq loc_800A136
    push {r0-r3}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3}
    beq loc_800A136
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800A136:
    add r0, #1
    cmp r0, #6
    ble loc_800A11A
    add r1, #1
    cmp r1, #3
    ble loc_800A118
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800A110

.thumb
sub_800A146:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq loc_800A15A
    ldrb r0, [r0,#0x13]
    pop {pc}
loc_800A15A:
    ldrb r0, [r5,#0x13]
    pop {pc}
// end of function sub_800A146

.thumb
sub_800A15E:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq loc_800A174
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    pop {pc}
loc_800A174:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    pop {pc}
// end of function sub_800A15E

.thumb
sub_800A17A:
    push {r4,r5,lr}
    push {r0-r3}
    bl loc_800AB56
    add r5, r0, #0
    neg r5, r5
    pop {r0-r3}
    add r4, r0, #0
    mov r0, #5
    mul r0, r4
    neg r0, r0
    add r0, #6
loc_800A192:
    push {r0-r3}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3}
    bne locret_800A1AE
    add r0, r0, r5
    push {r0-r3}
    bl sub_8009E64
    tst r0, r0
    pop {r0-r3}
    bne loc_800A192
    mov r0, #0
locret_800A1AE:
    pop {r4,r5,pc}
// end of function sub_800A17A

.thumb
sub_800A1B0:
    push {r4,lr}
    sub sp, sp, #0x14
    str r0, [sp,#0xc]
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r0, #1
    str r0, [sp,#0x10]
    mov r4, #0
loc_800A1C0:
    ldr r0, [sp,#0xc]
    ldr r1, [sp,#0x10]
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_800A17A
    tst r0, r0
    beq loc_800A1D6
    add r1, sp, #0
    strb r0, [r1,r4]
    add r4, #1
loc_800A1D6:
    ldr r0, [sp,#0x10]
    add r0, #1
    str r0, [sp,#0x10]
    cmp r0, #3
    ble loc_800A1C0
    tst r4, r4
    beq loc_800A20A
    add r3, sp, #0
    ldrb r0, [r3]
    mov r1, #1
loc_800A1EA:
    cmp r1, r4
    bge loc_800A20C
    ldr r2, [sp,#0xc]
    tst r2, r2
    bne loc_800A1FE
    ldrb r2, [r3,r1]
    cmp r2, r0
    blt loc_800A1FC
    add r0, r2, #0
loc_800A1FC:
    b loc_800A206
loc_800A1FE:
    ldrb r2, [r3,r1]
    cmp r2, r0
    bgt loc_800A206
    add r0, r2, #0
loc_800A206:
    add r1, #1
    b loc_800A1EA
loc_800A20A:
    mov r0, #0
loc_800A20C:
    add sp, sp, #0x14
    pop {r4,pc}
// end of function sub_800A1B0

.thumb
sub_800A210:
    push {r6,lr}
    sub sp, sp, #0x1c
    str r0, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r6, #0
    bl loc_800AB56
    add r1, r0, #0
    neg r1, r1
    str r1, [sp,#0xc]
    ldr r0, [sp]
    add r1, r0, #0
    mov r0, #5
    mul r0, r1
    neg r0, r0
    add r0, #6
    str r0, [sp,#0x10]
    str r0, [sp,#0x14]
    mov r1, #1
    str r1, [sp,#0x18]
loc_800A23A:
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0x18]
    bl sub_8009A88
    tst r0, r0
    beq loc_800A276
    ldrb r1, [r0,#1]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800A26C
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0x18]
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_8009E78
    tst r0, r0
    beq loc_800A276
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0x18]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    b loc_800A276
loc_800A26C:
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0xc]
    add r0, r0, r1
    str r0, [sp,#0x14]
    b loc_800A23A
loc_800A276:
    ldr r0, [sp,#0x10]
    str r0, [sp,#0x14]
    ldr r0, [sp,#0x18]
    add r0, #1
    str r0, [sp,#0x18]
    cmp r0, #3
    ble loc_800A23A
    add r0, r6, #0
    add sp, sp, #0x1c
    pop {r6,pc}
    .balign 4, 0x00
// end of function sub_800A210

.thumb
sub_800A28C:
    push {r4-r7,lr}
    mov r4, #0
    add r5, r1, #0
    add r6, r0, #0
    mov r7, #1
loc_800A296:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A88
    ldrb r1, [r0,#1]
    cmp r1, r5
    bne loc_800A2A6
    add r4, #1
loc_800A2A6:
    add r7, #1
    cmp r7, #3
    ble loc_800A296
    add r0, r4, #0
    pop {r4-r7,pc}
// end of function sub_800A28C

.thumb
sub_800A2B0:
    push {r4-r6,lr}
    sub sp, sp, #0xc
    str r1, [sp]
    str r5, [sp,#8]
    mov r6, #0
    mov r1, #3
loc_800A2BC:
    mov r0, #0
    str r0, [sp,#4]
    mov r0, #3
    ldr r5, [sp,#8]
    ldrb r5, [r5,#0x16]
    tst r5, r5
    bne loc_800A2CC
    mov r0, #4
loc_800A2CC:
    push {r0-r3,r6,r7}
    bl sub_8009A52
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    ldr r5, [sp,#4]
    tst r5, r5
    bne loc_800A2E8
    ldr r5, [sp]
    tst r4, r5
    beq loc_800A2FA
    mov r5, #1
    str r5, [sp,#4]
    b loc_800A2FA
loc_800A2E8:
    tst r4, r3
    bne loc_800A2FA
    and r4, r2
    cmp r4, r2
    bne loc_800A2FA
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_800A2FA:
    ldr r5, [sp,#8]
    ldrb r5, [r5,#0x16]
    tst r5, r5
    beq loc_800A30A
    add r0, #1
    cmp r0, #7
    bne loc_800A2CC
    b loc_800A310
loc_800A30A:
    sub r0, #1
    cmp r0, #0
    bne loc_800A2CC
loc_800A310:
    sub r1, #1
    bne loc_800A2BC
    add r0, r6, #0
    add sp, sp, #0xc
    pop {r4-r6,pc}
    .balign 4, 0x00
// end of function sub_800A2B0

.thumb
sub_800A31C:
    push {r4,r5,lr}
    mov r5, #4
loc_800A320:
    mov r4, #7
loc_800A322:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800A334
    sub r4, #1
    bgt loc_800A322
    sub r5, #1
    bgt loc_800A320
    pop {r4,r5,pc}
// end of function sub_800A31C

.thumb
sub_800A334:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    bl sub_800A3A4
    tst r0, r0
    beq locret_800A36C
    ldrb r1, [r0]
    lsl r2, r1, #2
    ldr r3, [pc, #0x800a370-0x800a346-2] // dword_800A374
    ldr r3, [r3,r2]
    orr r1, r3
    ldrb r2, [r0,#1]
    lsl r2, r2, #5
    orr r1, r2
    ldr r2, [r0,#0x14]
    tst r2, r2
    beq loc_800A35A
    mov r2, #0x80
loc_800A35A:
    orr r1, r2
    add r7, r0, #0
    add r6, r1, #0
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800A3C4
    orr r6, r0
    str r6, [r7,#4]
locret_800A36C:
    pop {r4-r7,pc}
    .byte 0, 0
off_800A370:    .word dword_800A374
dword_800A374:    .word 0x18000, 0x14000, 0x10010, 0x10050, 0x10110
    .word 0x30010, 0x10410, 0x10810, 0x11010, 0x12010
    .word 0x10210, 0x10010
// end of function sub_800A334

.thumb
sub_800A3A4:
    sub r3, r0, #1
    cmp r3, #6
    bcs loc_800A3BC
    sub r3, r1, #1
    cmp r3, #3
    bcs loc_800A3BC
    lsl r1, r1, #3
    add r1, r1, r0
    lsl r0, r1, #5
    ldr r1, [pc, #0x800a3c0-0x800a3b6-2] // byte_203AC70
    add r0, r0, r1
    mov pc, lr
loc_800A3BC:
    mov r0, #0
    mov pc, lr
off_800A3C0:    .word byte_203AC70
// end of function sub_800A3A4

.thumb
sub_800A3C4:
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x800a3ec-0x800a3ca-2] // unk_20360C0
    ldr r2, [r0,r1]
    mov r1, r10
    ldr r1, [r1,#0x30]
    mov r0, #0
loc_800A3D4:
    lsl r2, r2, #1
    bcs loc_800A3DC
    beq locret_800A3E8
    b loc_800A3E4
loc_800A3DC:
    ldr r3, [r1,#0x58]
    lsr r3, r3, #0x10
    lsl r3, r3, #0x10
    orr r0, r3
loc_800A3E4:
    add r1, #0x90
    b loc_800A3D4
locret_800A3E8:
    mov pc, lr
    .balign 4, 0x00
off_800A3EC:    .word unk_20360C0
dword_800A3F0:    .word 0x222222, 0x222222, 0x222222, 0x223232, 0x222222
    .word 0x232322, 0x232232, 0x222222, 0x232232, 0x222222
    .word 0x322322, 0x223223, 0x223222, 0x222223, 0x322322
    .word 0x222232, 0x323223, 0x232322, 0x232223, 0x222322
    .word 0x322222, 0x232233, 0x323322, 0x223223, 0x233332
    .word 0x222222, 0x332233, 0x322233, 0x322223, 0x332223
    .word 0x223223, 0x232222, 0x222322, 0x222222, 0x333333
    .word 0x222222, 0x322322, 0x323323, 0x223223, 0x332233
    .word 0x222222, 0x332233, 0x222222, 0x232232, 0x222222
    .word 0x333333, 0x333333, 0x333333, 0x22220, 0x222222
    .word 0x22220, 0x222222, 0x202202, 0x222222, 0x220220
    .word 0x222222, 0x22022, 0x220022, 0x222222, 0x220022
    .word 0x202202, 0x222222, 0x202202, 0x22022, 0x222222
    .word 0x22022, 0x220220, 0x222222, 0x220220, 0x220222
    .word 0x222222, 0x222022, 0x222022, 0x222222, 0x220222
    .word 0x22222, 0x222222, 0x222220, 0x222220, 0x222222
    .word 0x22222, 0x2200, 0x222222, 0x22220, 0x220022
    .word 0x222222, 0x22220, 0x22220, 0x222222, 0x220022
    .word 0x2222, 0x222222, 0x222200, 0x222200, 0x222222
    .word 0x2222, 0x666666, 0x666666, 0x666666, 0x266662
    .word 0x266626, 0x626222, 0x662222, 0x666666, 0x222266
    .word 0x226622, 0x266662, 0x226622, 0x666622, 0x266662
    .word 0x226666, 0x666666, 0x222222, 0x666666, 0x262262
    .word 0x626626, 0x262262, 0x222666, 0x262262, 0x666222
    .word 0x662226, 0x662266, 0x622266, 0x622262, 0x266262
    .word 0x226626, 0x622226, 0x226622, 0x622226, 0x232263
    .word 0x622622, 0x362223, 0x263226, 0x322362, 0x226223
    .word 0x322623, 0x262226, 0x623232, 0x362636, 0x626322
    .word 0x632662, 0x626323, 0x263662, 0x336326, 0x555555
    .word 0x555555, 0x555555, 0x222222, 0x555555, 0x222222
    .word 0x555555, 0x533335, 0x555555, 0x353353, 0x555555
    .word 0x353353, 0x255552, 0x255552, 0x255552, 0x55055
    .word 0x555555, 0x550550, 0x505505, 0x555555, 0x505505
    .word 0x555222, 0x222555, 0x555222, 0x222555, 0x555222
    .word 0x222555, 0x252525, 0x525252, 0x252525, 0x353535
    .word 0x535353, 0x353535, 0x552255, 0x225522, 0x552255
    .word 0x553355, 0x335533, 0x553355, 0x555555, 0x522225
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x66AA66, 0x6AAAA6, 0x66AA66
    .word 0x66AA66, 0x6A66A6, 0x66A666, 0xA6AA6A, 0x666666
    .word 0xA6AA6A, 0xAA6666, 0x66AA66, 0x6666AA, 0xAA66AA
    .word 0x666666, 0xAA66AA, 0x6AAAA6, 0x666666, 0x6AAAA6
    .word 0xAAAAAA, 0xA6AA6A, 0xAAAAAA, 0xA66A66, 0x666666
    .word 0x66A66A, 0xA6666A, 0x666666, 0x6A66A6, 0x6A666A
    .word 0x666A66, 0x66A666, 0x666666, 0x6A66A6, 0x666666
    .word 0x666666, 0x6AAAA6, 0x666666, 0x66A666, 0x66AA66
    .word 0x6AAAA6, 0x6A6666, 0xA6666A, 0x6666A6, 0x6A66A6
    .word 0x66AA66, 0x6A66A6, 0x555555, 0x555555, 0x555555
    .word 0x777777, 0x777777, 0x777777, 0x222777, 0x277772
    .word 0x777222, 0x277772, 0x277772, 0x277772, 0x222777
    .word 0x772277, 0x777222, 0x772277, 0x772277, 0x772277
    .word 0x222272, 0x272272, 0x722222, 0x272222, 0x272727
    .word 0x727772, 0x777227, 0x272727, 0x222272, 0x277222
    .word 0x277772, 0x222772, 0x227272, 0x777777, 0x272722
    .word 0x777777, 0x707707, 0x777777, 0x777770, 0x777777
    .word 0x77777, 0x77777, 0x777777, 0x777770, 0x770777
    .word 0x777777, 0x777077, 0x777077, 0x777777, 0x770777
    .word 0x555555, 0x555555, 0x555555, 0x444444, 0x424424
    .word 0x444444, 0x224422, 0x224422, 0x224422, 0x244442
    .word 0x244442, 0x244442, 0x442244, 0x222222, 0x442244
    .word 0x222244, 0x224422, 0x442222, 0x222442, 0x242242
    .word 0x244222, 0x664466, 0x644446, 0x664466, 0x664464
    .word 0x664466, 0x466666, 0x646644, 0x466466, 0x664666
    .word 0x664646, 0x466666, 0x646464, 0x666666, 0x444444
    .word 0x666666, 0x744777, 0x774477, 0x777447, 0x774774
    .word 0x474474, 0x477477, 0x447447, 0x777777, 0x744744
    .word 0x777477, 0x477774, 0x774777, 0x555555, 0x555555
    .word 0x555555, 0x668866, 0x688886, 0x668866, 0x666666
    .word 0x686686, 0x666666, 0x668866, 0x668866, 0x866668
    .word 0x222222, 0x282282, 0x222222, 0x228822, 0x222222
    .word 0x822228, 0x882222, 0x822228, 0x222288, 0x888882
    .word 0x888822, 0x882222, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x555555
    .word 0x555555, 0x555555, 0x555555, 0x555555, 0x999999
    .word 0x999999, 0x999999, 0x229922, 0x229922, 0x229922
    .word 0x222222, 0x999999, 0x222222, 0x222222, 0x292292
    .word 0x222222, 0x292292, 0x292292, 0x292292, 0x299299
    .word 0x222222, 0x992992, 0x929929, 0x222222, 0x929929
    .word 0x929292, 0x292929, 0x929292, 0x292222, 0x222222
    .word 0x222292, 0x222922, 0x292222, 0x922292, 0x999222
    .word 0x999222, 0x999222, 0x992992, 0x992992, 0x992992
    .word 0x299299, 0x299299, 0x299299, 0x299222, 0x299299
    .word 0x222299, 0x222922, 0x922229, 0x229222, 0x292222
    .word 0x999222, 0x292222, 0x0, 0x222222, 0x222222
    .word 0x888888, 0x222222, 0x777777, 0x222222, 0x200002
    .word 0x222222, 0x2222, 0x2222, 0x2222
// end of function sub_800A3C4

.thumb
sub_800AAE0:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    bl sub_800AAEC
    pop {pc}
// end of function sub_800AAE0

.thumb
sub_800AAEC:
    push {r5,r6,lr}
    add r6, r1, #0
    asr r0, r0, #0x10
    add r0, #0xa0
    mov r1, #0x28 
    svc 6
    push {r0}
    add r0, r6, #0
    asr r0, r0, #0x10
    add r0, #0x20 
    mov r1, #0x18
    svc 6
    add r1, r0, #0
    pop {r0}
    pop {r5,r6,pc}
// end of function sub_800AAEC

.thumb
sub_800AB0A:
    mov r2, #0x28 
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    mul r0, r2
    lsl r0, r0, #0x10
    mov r2, #0x18
    lsl r1, r1, #0x18
    asr r1, r1, #0x18
    mul r1, r2
    lsl r1, r1, #0x10
    ldr r2, [pc, #0x800ab28-0x800ab1e-2] // =0xFF740000
    add r0, r0, r2
    ldr r2, [pc, #0x800ab2c-0x800ab22-2] // =0xFFEC0000
    add r1, r1, r2
    mov pc, lr
dword_800AB28:    .word 0xFF740000
dword_800AB2C:    .word 0xFFEC0000
// end of function sub_800AB0A

.thumb
sub_800AB30:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    pop {pc}
// end of function sub_800AB30

.thumb
sub_800AB40:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #0
    ldr r2, [r5,#0x3c]
    bl sub_800AAEC
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    pop {pc}
// end of function sub_800AB40

.thumb
sub_800AB54:
    ldrb r0, [r5,#0x16]
loc_800AB56:
    lsl r0, r0, #1
    sub r0, #1
    neg r0, r0
    mov pc, lr
// end of function sub_800AB54

.thumb
sub_800AB5E:
    ldrh r1, [r5,#0x24]
    sub r1, r1, r0
    bge loc_800AB66
    mov r1, #0
loc_800AB66:
    strh r1, [r5,#0x24]
    mov pc, lr
// end of function sub_800AB5E

.thumb
sub_800AB6A:
    push {lr}
    push {r0}
    add r1, r0, #0
    lsl r1, r1, #7
    ldrb r0, [r5,#0x16]
    bl sub_8022CBC
    pop {r0}
    ldrh r1, [r5,#0x24]
    sub r1, r1, r0
    bge loc_800AB82
    mov r1, #0
loc_800AB82:
    strh r1, [r5,#0x24]
    pop {pc}
// end of function sub_800AB6A

.thumb
sub_800AB86:
    ldrh r1, [r5,#0x24]
    add r1, r1, r0
    ldrh r0, [r5,#0x26]
    cmp r1, r0
    ble loc_800AB92
    add r1, r0, #0
loc_800AB92:
    strh r1, [r5,#0x24]
    mov pc, lr
// end of function sub_800AB86

.thumb
sub_800AB96:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8022F20
    add r7, r0, #0
    cmp r0, #0x93
    beq loc_800ABC4
    add r0, r6, #0
    bl sub_800AB86
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x9a
    bl f500_8000558
    b locret_800ABEA
loc_800ABC4:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    bl sub_80E5316
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800812C
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_8022F4E
locret_800ABEA:
    pop {r4,r6,r7,pc}
// end of function sub_800AB96

.thumb
sub_800ABEC:
    push {r4,lr}
    ldr r3, [r5,#0x54]
    add r3, #0x2a 
    mov r1, #5
    mov r0, #0
loc_800ABF6:
    ldrh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800ABF6
    ldr r3, [r5,#0x54]
    strh r0, [r3,#0x28]
    pop {r4,pc}
// end of function sub_800ABEC

.thumb
sub_800AC06:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    mov r4, #0
    ldrb r1, [r0]
    cmp r1, #9
    bne loc_800AC1C
    mov r4, #1
loc_800AC1C:
    ldr r3, [r5,#0x54]
    add r3, #0x2a 
    mov r1, #5
    mov r0, #0
loc_800AC24:
    ldrh r2, [r3]
    add r2, r2, r4
    lsr r2, r4
    strh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800AC24
    bl sub_80221AC
    ldr r3, [r5,#0x54]
    strh r0, [r3,#0x28]
    pop {r4,pc}
// end of function sub_800AC06

.thumb
sub_800AC3E:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    mov r4, #0
    ldrb r1, [r0]
    cmp r1, #9
    bne loc_800AC54
    mov r4, #1
loc_800AC54:
    ldr r3, [r5,#0x54]
    add r3, #0x2a 
    mov r1, #5
    mov r0, #0
loc_800AC5C:
    ldrh r2, [r3]
    add r2, r2, r4
    lsr r2, r4
    strh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800AC5C
    ldr r3, [r5,#0x54]
    strh r0, [r3,#0x28]
    pop {r4,pc}
// end of function sub_800AC3E

.thumb
sub_800AC72:
    ldrb r0, [r5,#0x16]
    mov pc, lr
// end of function sub_800AC72

.thumb
sub_800AC76:
    push {lr}
    bl sub_800AB54
    ldr r3, [r5,#0x54]
    ldrb r1, [r3,#0xd]
    lsr r1, r1, #2
    mov r2, #0
loc_800AC84:
    lsr r1, r1, #1
    bcs loc_800AC8E
    add r2, #1
    cmp r2, #6
    blt loc_800AC84
loc_800AC8E:
    mov r1, #3
    mul r2, r1
    ldr r1, [pc, #0x800aca4-0x800ac92-2] // dword_800ACA8
    add r2, r2, r1
    mov r1, #0
    ldrsb r1, [r2,r1]
    mul r0, r1
    mov r1, #1
    ldrsb r1, [r2,r1]
    ldrb r2, [r2,#2]
    pop {pc}
off_800ACA4:    .word dword_800ACA8
dword_800ACA8:    .word 0xFF060001, 0x10600, 0x100FF01, 0x1FF00, 0x101, 0x0
// end of function sub_800AC76

.thumb
sub_800ACC0:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E64
    beq loc_800ACF2
    bl sub_8012F4A
    mov r2, #0
    mov r1, #0x10
    and r1, r0
    beq loc_800ACDA
    mov r2, #0x10
loc_800ACDA:
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r2, r2, r1
    ldr r1, [pc, #0x800adb8-0x800ace0-4] // dword_800ADBC
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E78
    pop {r6,r7,pc}
loc_800ACF2:
    mov r0, #0
    pop {r6,r7,pc}
// end of function sub_800ACC0

.thumb
sub_800ACF6:
    push {r4,lr}
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x800b0f4-0x800acfe-2] // =0x5040
    tst r4, r1
    bne loc_800AD1C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #0xa
    bne loc_800AD18
    mov r1, #0x20 
    tst r4, r1
    beq loc_800AD1C
loc_800AD18:
    mov r0, #1
    pop {r4,pc}
loc_800AD1C:
    mov r0, #0
    pop {r4,pc}
// end of function sub_800ACF6

.thumb
sub_800AD20:
    push {r4,lr}
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x800b0f8-0x800ad28-4] // =0x1040
    tst r4, r1
    bne loc_800AD46
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #0xa
    bne loc_800AD42
    mov r1, #0x20 
    tst r4, r1
    beq loc_800AD46
loc_800AD42:
    mov r0, #1
    pop {r4,pc}
loc_800AD46:
    mov r0, #0
    pop {r4,pc}
// end of function sub_800AD20

.thumb
sub_800AD4A:
    push {r4,lr}
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x800b0fc-0x800ad52-2] // =0x105040
    tst r4, r1
    bne loc_800AD70
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #0xa
    bne loc_800AD6C
    mov r1, #0x20 
    tst r4, r1
    beq loc_800AD70
loc_800AD6C:
    mov r0, #1
    pop {r4,pc}
loc_800AD70:
    mov r0, #0
    pop {r4,pc}
// end of function sub_800AD4A

.thumb
sub_800AD74:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E64
    beq loc_800ADB2
    bl sub_8012F4A
    mov r1, #0x10
    tst r0, r1
    bne loc_800AD98
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009EA4
    beq loc_800AD98
    mov r0, #0
    b loc_800AD9A
loc_800AD98:
    mov r0, #0x10
loc_800AD9A:
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x800adb8-0x800ada0-4] // dword_800ADBC
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E78
    pop {r6,r7,pc}
loc_800ADB2:
    mov r0, #0
    pop {r6,r7,pc}
    .balign 4, 0x00
off_800ADB8:    .word dword_800ADBC
dword_800ADBC:    .word 0x10, 0xB8800A0, 0x30, 0x7880080, 0x0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xB
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 7
// end of function sub_800AD74

.thumb
sub_800ADDC:
    mov r3, #0
    cmp r0, r1
    bgt loc_800ADEE
    cmp r2, r0
    ble loc_800ADF8
    cmp r2, r1
    bgt loc_800ADF8
    mov r3, #1
    b loc_800ADF8
loc_800ADEE:
    cmp r2, r1
    ble loc_800ADF8
    cmp r2, r0
    bgt loc_800ADF8
    mov r3, #1
loc_800ADF8:
    add r0, r3, #0
    mov pc, lr
// end of function sub_800ADDC

.thumb
sub_800ADFC:
    mov r3, #0
    cmp r0, r2
    beq loc_800AE1E
    cmp r1, r2
    beq loc_800AE1E
    cmp r0, r1
    bgt loc_800AE16
    cmp r2, r0
    ble loc_800AE20
    cmp r2, r1
    bgt loc_800AE20
    mov r3, #1
    b loc_800AE20
loc_800AE16:
    cmp r2, r1
    blt loc_800AE20
    cmp r2, r0
    bgt loc_800AE20
loc_800AE1E:
    mov r3, #1
loc_800AE20:
    add r0, r3, #0
    mov pc, lr
// end of function sub_800ADFC

.thumb
sub_800AE24:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    bl sub_8012F64
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldrh r0, [r6,#0x10]
    sub r0, #1
    strh r0, [r6,#0x10]
    bgt loc_800AE4A
    ldr r0, [pc, #0x800b100-0x800ae38-4] // =0x800
    bl sub_8012F40
    mov r0, #8
    bl sub_8012F5A
    mov r0, #0
    strh r0, [r6,#0x10]
    b loc_800AE96
loc_800AE4A:
    ldr r1, [sp]
    mov r0, #8
    tst r1, r0
    beq loc_800AE6E
    mov r0, #0x88
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800AE62
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800AE62:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r6,#0x12]
loc_800AE6E:
    ldr r0, [pc, #0x800b104-0x800ae6e-2] // =0x8000
    bl sub_8012F40
    bl sub_8012F4A
    ldr r1, [pc, #0x800b100-0x800ae78-4] // =0x800
    tst r0, r1
    bne loc_800AE96
    add r0, r1, #0
    bl sub_8012F36
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800AE8E
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800AE8E:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_800AE96:
    ldrh r0, [r6,#0x12]
    sub r0, #1
    strh r0, [r6,#0x12]
    bgt loc_800AEB2
    ldr r0, [pc, #0x800b104-0x800ae9e-2] // =0x8000
    bl sub_8012F40
    mov r0, #0x80
    bl sub_8012F5A
    mov r0, #0
    strh r0, [r6,#0x12]
    str r0, [r6,#0x6c]
    b loc_800AEE0
loc_800AEB2:
    ldr r1, [sp]
    mov r0, #0x80
    tst r1, r0
    beq loc_800AEC4
    mov r0, #0x88
    bl sub_8012F5A
    mov r0, #0
    strh r0, [r6,#0x10]
loc_800AEC4:
    ldr r0, [pc, #0x800b104-0x800aec4-4] // =0x8000
    bl sub_8012F36
    ldr r0, [pc, #0x800b100-0x800aeca-2] // =0x800
    bl sub_8012F40
    mov r7, #0x6c 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800AEE0
    mov r4, #0
    bl sub_80E22A2
loc_800AEE0:
    ldrh r0, [r6,#0x16]
    sub r0, #1
    strh r0, [r6,#0x16]
    bgt loc_800AEF4
    ldr r0, [pc, #0x800b108-0x800aee8-4] // =0x4000
    bl sub_8012F40
    mov r0, #0
    strh r0, [r6,#0x16]
    b loc_800AF06
loc_800AEF4:
    ldr r1, [sp]
    mov r0, #0x40 
    tst r1, r0
    beq loc_800AF06
    bl sub_8012F5A
    ldr r0, [pc, #0x800b108-0x800af00-4] // =0x4000
    bl sub_8012F36
loc_800AF06:
    ldrh r0, [r6,#0x14]
    sub r0, #1
    strh r0, [r6,#0x14]
    bgt loc_800AF1C
    ldr r0, [pc, #0x800b10c-0x800af0e-2] // =0x2000
    bl sub_8012F40
    mov r0, #0
    strh r0, [r6,#0x14]
    str r0, [r6,#0x70]
    b loc_800AF3E
loc_800AF1C:
    ldr r1, [sp]
    mov r0, #0x20 
    tst r1, r0
    beq loc_800AF3E
    bl sub_8012F5A
    ldr r0, [pc, #0x800b10c-0x800af28-4] // =0x2000
    bl sub_8012F36
    mov r7, #0x70 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800AF3E
    mov r4, #1
    bl sub_80E22A2
loc_800AF3E:
    ldrh r0, [r6,#0x1c]
    sub r0, #1
    strh r0, [r6,#0x1c]
    bgt loc_800AF52
    mov r0, #8
    bl sub_8012F40
    mov r0, #0
    strh r0, [r6,#0x1c]
    b loc_800AF58
loc_800AF52:
    mov r0, #8
    bl sub_8012F36
loc_800AF58:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_800AE24

.thumb
sub_800AF5C:
    sub r0, r0, r2
    bgt loc_800AF78
    blt loc_800AF74
    sub r1, r1, r3
    bgt loc_800AF70
    blt loc_800AF6C
    mov r0, #0
    mov pc, lr
loc_800AF6C:
    mov r0, #1
    mov pc, lr
loc_800AF70:
    mov r0, #2
    mov pc, lr
loc_800AF74:
    mov r0, #3
    mov pc, lr
loc_800AF78:
    mov r0, #4
    mov pc, lr
// end of function sub_800AF5C

.thumb
sub_800AF7C:
    push {lr}
    bl sub_800AF5C
    ldr r1, [r5,#0x54]
    strb r0, [r1,#0xa]
    pop {pc}
// end of function sub_800AF7C

.thumb
sub_800AF88:
    push {r4,lr}
    add r4, r0, #0
    ldrb r3, [r5,#1]
    cmp r3, #0
    bne loc_800AFA0
    bl sub_80405D8
    beq loc_800AFA0
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_800AFA4
loc_800AFA0:
    ldr r3, [r5,#0x54]
    strb r4, [r3,#0xb]
locret_800AFA4:
    pop {r4,pc}
// end of function sub_800AF88

.thumb
sub_800AFA6:
    push {lr}
    ldr r0, [pc, #0x800b110-0x800afa8-4] // =0x1FC
    bl sub_8012F5A
    ldr r3, [r5,#0x54]
    mov r0, #0
    strh r0, [r3,#0x28]
    strh r0, [r3,#0x2c]
    strh r0, [r3,#0x2e]
    strh r0, [r3,#0x30]
    strh r0, [r3,#0x32]
    mov r1, #0x36 
    strh r0, [r3,r1]
    pop {pc}
// end of function sub_800AFA6

.thumb
sub_800AFC2:
    push {lr}
    ldr r0, [pc, #0x800b110-0x800afc4-4] // =0x1FC
    bl sub_8012F5A
    ldr r3, [r5,#0x54]
    mov r0, #0
    strh r0, [r3,#0x28]
    strh r0, [r3,#0x2c]
    strh r0, [r3,#0x2e]
    strh r0, [r3,#0x30]
    strh r0, [r3,#0x32]
    strh r0, [r3,#0x34]
    mov r1, #0x36 
    strh r0, [r3,r1]
    pop {pc}
    .byte 0xD0
    .byte 0xB5
    .byte 0xD0
    .byte 0xBD
// end of function sub_800AFC2

.thumb
sub_800AFE4:
    push {lr}
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x1c]
    mov r0, #8
    bl sub_8012F36
    pop {pc}
// end of function sub_800AFE4

.thumb
sub_800AFF2:
    push {lr}
    ldr r1, [r5,#0x54]
    mov r0, #0
    strh r0, [r1,#0x1c]
    mov r0, #8
    bl sub_8012F40
    pop {pc}
// end of function sub_800AFF2

.thumb
sub_800B002:
    push {r4,r5,lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r1, [r1,#0x3c]
    ldrb r1, [r1,#6]
    mov r2, #0x80
    tst r1, r2
    bne locret_800B058
    add r4, r0, #0
    beq locret_800B058
    bl sub_8011824
    add r5, r0, #0
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r3, [r3,#0xd]
    cmp r3, #2
    ble loc_800B028
    mov r3, #2
loc_800B028:
    cmp r4, #0x80
    bge loc_800B040
    ldrb r1, [r5,#5]
    mov r0, #5
    sub r0, r0, r1
    ble loc_800B056
    add r3, r3, r3
    cmp r3, r0
    ble loc_800B03C
    add r3, r0, #0
loc_800B03C:
    add r0, r4, r3
    b locret_800B058
loc_800B040:
    cmp r4, #0xe4
    bge loc_800B056
    ldrb r1, [r5,#5]
    mov r0, #2
    sub r0, r0, r1
    ble loc_800B056
    cmp r3, r0
    ble loc_800B052
    add r3, r0, #0
loc_800B052:
    add r0, r4, r3
    b locret_800B058
loc_800B056:
    add r0, r4, #0
locret_800B058:
    pop {r4,r5,pc}
// end of function sub_800B002

.thumb
sub_800B05A:
    push {lr}
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x54]
    mov r1, #0x40 
    tst r0, r1
    beq locret_800B076
    mov r1, #0x12
    strb r1, [r3,#0xf]
    ldr r0, [pc, #0x800b104-0x800b06a-2] // =0x8000
    bl sub_8012F50
    mov r0, #6
    bl sub_8012F5A
locret_800B076:
    pop {pc}
// end of function sub_800B05A

.thumb
sub_800B078:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldr r0, [r4,#0x54]
    mov r1, #0x40 
    tst r0, r1
    beq locret_800B094
    mov r1, #0x12
    strb r1, [r4,#0xf]
    ldr r0, [pc, #0x800b104-0x800b088-4] // =0x8000
    bl sub_8012F50
    mov r0, #6
    bl sub_8012F5A
locret_800B094:
    pop {r4,pc}
// end of function sub_800B078

.thumb
sub_800B096:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r1, [r2,#0xd]
    eor r0, r1
    beq loc_800B0BE
    push {r5}
    ldr r5, [r2,#0x44]
    tst r5, r5
    bne loc_800B0AE
    pop {r5}
    b loc_800B0BE
loc_800B0AE:
    bl sub_8012F4A
    ldr r1, [pc, #0x800b10c-0x800b0b2-2] // =0x2000
    tst r0, r1
    pop {r5}
    beq loc_800B0BE
    mov r0, #0
    pop {pc}
loc_800B0BE:
    mov r0, #1
    pop {pc}
// end of function sub_800B096

.thumb
sub_800B0C2:
    push {r4,r6,lr}
    ldr r1, [r5,#0x54]
    ldr r0, [r1,#0x54]
    ldr r1, [pc, #0x800b0f0-0x800b0c8-4] // =0x20000
    tst r1, r0
    beq locret_800B0EC
    mov r0, #0x6e 
    bl f500_8000558
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0x10
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r0, #0xf
    bl sub_80145C0
    mov r4, #8
    bl sub_80E2030
locret_800B0EC:
    pop {r4,r6,pc}
    .byte 0, 0
dword_800B0F0:    .word 0x20000
dword_800B0F4:    .word 0x5040
off_800B0F8:    .word 0x1040
dword_800B0FC:    .word 0x105040
off_800B100:    .word 0x800
dword_800B104:    .word 0x8000
dword_800B108:    .word 0x4000
off_800B10C:    .word 0x2000
dword_800B110:    .word 0x1FE
// end of function sub_800B0C2

.thumb
sub_800B114:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E64
    beq loc_800B12E
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800b134-0x800b124-4] // =0x10
    ldr r3, [pc, #0x800b138-0x800b126-2] // =0x3880080
    bl sub_8009E78
    pop {r6,r7,pc}
loc_800B12E:
    mov r0, #0
    pop {r6,r7,pc}
    .byte 0
    .byte 0
dword_800B134:    .word 0x10
dword_800B138:    .word 0x3880080
// end of function sub_800B114

.thumb
sub_800B13C:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E64
    beq loc_800B156
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800b15c-0x800b14c-4] // =0x10
    ldr r3, [pc, #0x800b160-0x800b14e-2] // =0xF880080
    bl sub_8009E78
    pop {r6,r7,pc}
loc_800B156:
    mov r0, #0
    pop {r6,r7,pc}
    .byte 0
    .byte 0
dword_800B15C:    .word 0x10
dword_800B160:    .word 0xF880080
// end of function sub_800B13C

.thumb
sub_800B164:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E64
    beq loc_800B17E
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800b184-0x800b174-4] // =0x10
    ldr r3, [pc, #0x800b188-0x800b176-2] // =0x3800000
    bl sub_8009E78
    pop {r6,r7,pc}
loc_800B17E:
    mov r0, #0
    pop {r6,r7,pc}
    .byte 0
    .byte 0
dword_800B184:    .word 0x10
dword_800B188:    .word 0x3800000
// end of function sub_800B164

.thumb
sub_800B18C:
    push {lr}
    ldr r3, [r5,#0x54]
    mov r0, #1
    ldr r1, [r3,#0x54]
    mov r2, #0x80
    ldr r2, [r3,r2]
    orr r1, r2
    ldr r2, [pc, #0x800b1e0-0x800b19a-2] // =0x51000000
    tst r1, r2
    bne loc_800B1A4
    neg r0, r0
    b loc_800B1B2
loc_800B1A4:
    ldr r2, [pc, #0x800b1dc-0x800b1a4-4] // =0xA2000000
    tst r1, r2
    beq loc_800B1B2
    mov r0, #0
    mov r1, #0
    mov r2, #0
    pop {pc}
loc_800B1B2:
    ldrb r1, [r3,#0xd]
    lsr r1, r1, #2
    mov r2, #0
loc_800B1B8:
    lsr r1, r1, #1
    bcs loc_800B1C2
    add r2, #1
    cmp r2, #6
    blt loc_800B1B8
loc_800B1C2:
    mov r1, #3
    mul r2, r1
    ldr r1, [pc, #0x800b1d8-0x800b1c6-2] // unk_800B1E4
    add r2, r2, r1
    mov r1, #0
    ldrsb r1, [r2,r1]
    mul r0, r1
    mov r1, #1
    ldrsb r1, [r2,r1]
    ldrb r2, [r2,#2]
    pop {pc}
off_800B1D8:    .word unk_800B1E4
dword_800B1DC:    .word 0xA2000000
dword_800B1E0:    .word 0x51000000
unk_800B1E4:    .byte 1
    .byte 0
    .byte 6
    .byte 0xFF
    .byte 0
    .byte 6
    .byte 1
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 1
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800B18C

.thumb
sub_800B1FC:
    push {lr}
    mov r3, #0xc
    mul r3, r1
    mov r1, r10
    ldr r1, [r1,#0x18]
    add r1, r1, r3
    lsl r3, r2, #3
    add r1, r1, r3
    add r1, #0x68 
    tst r2, r2
    bne loc_800B230
    ldr r2, [r1]
    ldr r3, [r1,#4]
    tst r2, r2
    bne loc_800B21E
    str r0, [r1]
    b locret_800B23C
loc_800B21E:
    tst r3, r3
    bne loc_800B226
    str r0, [r1,#4]
    b locret_800B23C
loc_800B226:
    str r3, [r1]
    str r0, [r1,#4]
    mov r3, #0
    strh r3, [r2,#0x24]
    b locret_800B23C
loc_800B230:
    ldr r2, [r1]
    str r0, [r1]
    tst r2, r2
    beq locret_800B23C
    mov r3, #0
    strh r3, [r2,#0x24]
locret_800B23C:
    pop {pc}
// end of function sub_800B1FC

.thumb
sub_800B23E:
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0x68 
    mov r1, #0
loc_800B246:
    ldr r2, [r0]
    cmp r2, r5
    bne loc_800B250
    mov r2, #0
    str r2, [r0]
loc_800B250:
    add r0, #4
    add r1, #1
    cmp r1, #6
    blt loc_800B246
    mov pc, lr
// end of function sub_800B23E

.thumb
sub_800B25A:
    push {lr}
    bl sub_80079EA
    tst r0, r0
    bne loc_800B272
    bl sub_8007920
    bne locret_800B28C
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_800B27C
loc_800B272:
    bl sub_8012D74
    mov r0, #0
    strh r0, [r5,#0x24]
    pop {pc}
loc_800B27C:
    cmp r0, #0xb4
    bhi locret_800B28C
    lsr r0, r0, #2
    bcc locret_800B28C
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
locret_800B28C:
    pop {pc}
// end of function sub_800B25A

.thumb
sub_800B28E:
    push {r5,lr}
    strb r2, [r0,#0x1c]
    strb r3, [r0,#0x1d]
    strh r4, [r0,#0x28]
    str r6, [r0,#0x2c]
    add r5, r0, #0
    ldr r0, [pc, #0x800b46c-0x800b29a-2] // =0x400
    tst r1, r1
    beq loc_800B2A2
    ldr r0, [pc, #0x800b470-0x800b2a0-4] // =0x800
loc_800B2A2:
    bl sub_8012F50
    pop {r5,pc}
// end of function sub_800B28E

.thumb
sub_800B2A8:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r6, [pc, #0x800b320-0x800b2b2-2] // off_800B328
    add r6, r6, r0
    ldr r2, [r6]
    ldr r3, [r6,#4]
    bl sub_8009FCC
    add r1, r0, #0
    beq loc_800B2D8
    push {r1}
    bl sub_8001AF6
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
loc_800B2D8:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r6, [pc, #0x800b324-0x800b2dc-4] // dword_800B338
    add r6, r6, r0
    ldr r2, [r6]
    ldr r3, [r6,#4]
    bl sub_8009F90
    add r1, r0, #0
    beq loc_800B302
    push {r1}
    bl sub_8001AF6
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
loc_800B302:
    mov r2, #0
    mov r3, #0
    bl sub_8009FCC
    push {r0}
    bl sub_8001AF6
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
off_800B320:    .word off_800B328
off_800B324:    .word dword_800B338
off_800B328:    .word LCDControl
    .byte 0, 0, 0, 0
    .word start_
    .byte 0, 0, 0, 0
dword_800B338:    .word 0x20, 0x0, 0x0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800B2A8

.thumb
sub_800B348:
    push {lr}
    bl sub_800AB0A
    ldrh r2, [r5,#0x36]
    lsl r2, r2, #0x10
    ldrh r3, [r5,#0x3a]
    lsl r3, r3, #0x10
    sub r2, r0, r2
    sub r0, r1, r3
    add r1, r2, #0
    push {r0,r1}
    push {r5}
    bl sub_8001740
    pop {r5}
    strb r0, [r5,#0xc]
    mov r1, #8
    lsl r1, r1, #0x10
    push {r1}
    bl sub_8001788
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r4}
    pop {r0,r1}
    lsr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    lsr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r4, #0
    svc 6
    tst r0, r0
    beq loc_800B3A4
    push {r0}
    add r1, r0, #0
    mov r0, #0x40 
    lsl r0, r0, #0x10
    svc 6
    str r0, [r5,#0x48]
    pop {r0}
    pop {pc}
loc_800B3A4:
    mov r0, #8
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #0
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    mov r0, #8
    pop {pc}
// end of function sub_800B348

.thumb
sub_800B3B4:
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x18]
    add r1, #0x68 
    mov r2, #0
loc_800B3BE:
    ldr r3, [r1]
    tst r3, r3
    beq loc_800B3E2
    ldrb r4, [r3,#2]
    cmp r4, #0x93
    bne loc_800B3D6
    ldrb r4, [r3,#1]
    cmp r4, #0x4c 
    beq loc_800B3E2
    cmp r4, #0x8c
    beq loc_800B3E2
    b locret_800B3EC
loc_800B3D6:
    ldrb r4, [r3,#2]
    cmp r4, #0x84
    bne locret_800B3EC
    ldrb r4, [r3,#1]
    cmp r4, #0x6e 
    bne locret_800B3EC
loc_800B3E2:
    add r1, #4
    add r2, #1
    cmp r2, #8
    blt loc_800B3BE
    mov r0, #0
locret_800B3EC:
    mov pc, lr
// end of function sub_800B3B4

.thumb
sub_800B3EE:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0x68 
    mov r1, #0
loc_800B3F8:
    ldr r2, [r0]
    cmp r2, r5
    beq loc_800B406
    add r0, #4
    add r1, #1
    cmp r1, #6
    blt loc_800B3F8
loc_800B406:
    ldr r0, [pc, #0x800b40c-0x800b406-2] // unk_800B410
    ldrb r0, [r0,r1]
    pop {pc}
off_800B40C:    .word unk_800B410
unk_800B410:    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
// end of function sub_800B3EE

.thumb
sub_800B418:
    push {r5,lr}
    ldrb r2, [r5,#0x16]
    ldr r3, [r5,#0x2c]
    add r5, r0, #0
    ldr r0, [pc, #0x800b474-0x800b420-4] // =0x2000
    tst r1, r1
    beq loc_800B42C
    ldr r0, [pc, #0x800b478-0x800b426-2] // =0x4000
    strb r2, [r5,#0x16]
    str r3, [r5,#0x2c]
loc_800B42C:
    bl sub_8012F50
    pop {r5,pc}
    .byte 0x10
    .byte 0xB5
    .byte 0x6C 
    .byte 0x6D 
    .byte 0xA8
    .byte 0x7C 
    .byte 0xE9
    .byte 0x7C 
    .byte 0xFE
    .byte 0xF7
    .byte 0x25 
    .byte 0xFB
    .byte 0
    .byte 0x24 
    .byte 1
    .byte 0x78 
    .byte 9
    .byte 0x29 
    .byte 0
    .byte 0xD1
    .byte 1
    .byte 0x24 
    .byte 0x6B 
    .byte 0x6D 
    .byte 0x2A 
    .byte 0x33 
    .byte 5
    .byte 0x21 
    .byte 0
    .byte 0x20
    .byte 0x1A
    .byte 0x88
    .byte 0x12
    .byte 0x19
    .byte 0xE2
    .byte 0x40 
    .byte 0x1A
    .byte 0x80
    .byte 0x80
    .byte 0x18
    .byte 2
    .byte 0x33 
    .byte 1
    .byte 0x39 
    .byte 0xF7
    .byte 0xDC
    .byte 0x16
    .byte 0xF0
    .byte 0xA4
    .byte 0xFE
    .byte 0x6B 
    .byte 0x6D 
    .byte 0x18
    .byte 0x85
    .byte 0x10
    .byte 0xBD
    .byte 0
    .byte 0
off_800B46C:    .word 0x400
off_800B470:    .word 0x800
off_800B474:    .word 0x2000
dword_800B478:    .word 0x4000
// end of function sub_800B418

.thumb
sub_800B47C:
    push {r6,r7,lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800B4C0
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_800B4A4
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x1c]
    lsr r1, r1, #4
    mov r2, #3
loc_800B49C:
    lsr r1, r1, #1
    bcs loc_800B4C4
    sub r2, #1
    bge loc_800B49C
loc_800B4A4:
    mov r1, #0xd
    bl sub_800D77A
    cmp r0, #0
    beq loc_800B4C0
    cmp r0, #0xff
    beq loc_800B4C0
    add r1, r0, #0
    lsr r1, r1, #4
    mov r2, #3
loc_800B4B8:
    lsr r1, r1, #1
    bcs loc_800B4D8
    sub r2, #1
    bge loc_800B4B8
loc_800B4C0:
    mov r0, #0
    b locret_800B502
loc_800B4C4:
    add r6, r2, #0
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    beq loc_800B4D6
    ldr r2, [pc, #0x800b508-0x800b4d2-2] // unk_800B51C
    ldrb r6, [r2,r6]
loc_800B4D6:
    add r2, r6, #0
loc_800B4D8:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    add r2, r2, r2
    add r0, r0, r2
    ldr r2, [pc, #0x800b504-0x800b4e0-4] // unk_800B50C
    add r2, r2, r0
    mov r1, #0
    ldrsb r1, [r2,r1]
    ldrb r0, [r5,#0x12]
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r2,r1]
    ldrb r2, [r5,#0x13]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800AD74
    beq loc_800B4C0
    add r0, r6, #0
    add r1, r7, #0
locret_800B502:
    pop {r6,r7,pc}
off_800B504:    .word unk_800B50C
off_800B508:    .word unk_800B51C
unk_800B50C:    .byte 0
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 0
unk_800B51C:    .byte 1
    .byte 0
    .byte 3
    .byte 2
// end of function sub_800B47C

.thumb
sub_800B520:
    push {r4,r6,lr}
    ldr r4, [r5,#0x58]
    bl sub_80079EA
    tst r0, r0
    bne loc_800B54C
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #1
    beq loc_800B54C
    bl sub_80078C4
    tst r0, r0
    bne locret_800B54A
    bl ho_800BD80
    bl sub_800BB42
    bl sub_800BB14
locret_800B54A:
    pop {r4,r6,pc}
loc_800B54C:
    mov r1, #0
    strh r1, [r4,#0x1c]
    strh r1, [r4,#0x22]
    strh r1, [r4,#0x1e]
    strh r1, [r4,#0x20]
    pop {r4,r6,pc}
    .byte 0x40 
    .byte 0x7C 
    .byte 3
    .byte 2
// end of function sub_800B520

.thumb
sub_800B55C:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    add r4, r0, #0
    add r6, r1, #0
    add r7, r3, #0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    str r0, [sp]
    str r1, [sp,#4]
    add r3, r7, #0
    bl sub_80CD34E
    ldrb r0, [r5,#0x16]
    mov r1, #6
    bl sub_800D722
    add r2, r0, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800B6A8
    add sp, sp, #8
    pop {r4,r6,r7,pc}
// end of function sub_800B55C

.thumb
sub_800B590:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r0, [r4,#0xd]
    bl sub_800C41A
    tst r0, r0
    beq locret_800B5A4
    ldrh r1, [r0,#0x24]
    strh r1, [r4,#0x34]
locret_800B5A4:
    pop {r4,pc}
// end of function sub_800B590

.thumb
sub_800B5A6:
    push {lr}
    push {r0}
    mov r1, #0x23 
    bl sub_800D77A
    add r2, r0, #0
    cmp r0, #0
    pop {r0}
    bne loc_800B5BE
    bl sub_80CC508
    pop {pc}
loc_800B5BE:
    ldr r1, [pc, #0x800b5cc-0x800b5be-2] // off_800B5D0
    lsl r2, r2, #2
    ldr r2, [r1,r2]
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_800B5CC:    .word off_800B5D0
off_800B5D0:    .word nullsub_89+1
    .word nullsub_90+1
    .word nullsub_91+1
    .word sub_800B60A+1
    .word nullsub_2+1
    .word nullsub_3+1
    .word nullsub_4+1
    .word nullsub_5+1
    .word nullsub_6+1
    .word nullsub_7+1
    .word nullsub_8+1
    .word nullsub_9+1
    .word nullsub_10+1
// end of function sub_800B5A6

.thumb
nullsub_89:
    mov pc, lr
// end of function nullsub_89

.thumb
nullsub_90:
    mov pc, lr
// end of function nullsub_90

.thumb
nullsub_91:
    mov pc, lr
// end of function nullsub_91

.thumb
sub_800B60A:
    push {lr}
    bl sub_80CCE48
    pop {pc}
// end of function sub_800B60A

.thumb
nullsub_2:
    mov pc, lr
// end of function nullsub_2

.thumb
nullsub_3:
    mov pc, lr
// end of function nullsub_3

.thumb
nullsub_4:
    mov pc, lr
// end of function nullsub_4

.thumb
nullsub_5:
    mov pc, lr
// end of function nullsub_5

.thumb
nullsub_6:
    mov pc, lr
// end of function nullsub_6

.thumb
nullsub_7:
    mov pc, lr
// end of function nullsub_7

.thumb
nullsub_8:
    mov pc, lr
// end of function nullsub_8

.thumb
nullsub_9:
    mov pc, lr
// end of function nullsub_9

.thumb
nullsub_10:
    mov pc, lr
// end of function nullsub_10

.thumb
sub_800B624:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    bl sub_8007920
    bne locret_800B6A0
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne loc_800B69C
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r2, r0, #0
    ldrb r1, [r2]
    add r1, r1, r1
    add r1, #2
    ldrh r4, [r2,r1]
    add r0, r4, #0
    ldr r1, [pc, #0x800b6a4-0x800b64c-4] // =0xFFFF
    cmp r0, r1
    beq loc_800B666
    bl sub_8019010
    ldrb r1, [r0,#7]
    cmp r1, #0xf
    bne loc_800B666
    add r0, r4, #0
    bl sub_800B8F0
    strb r0, [r7,#0x10]
    pop {r4,r7,pc}
loc_800B666:
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    beq loc_800B69C
    cmp r0, #0xf
    bne loc_800B684
    mov r0, #0x2c 
    ldrsh r0, [r7,r0]
    tst r0, r0
    ble loc_800B69C
    sub r0, #1
    strh r0, [r7,#0x2c]
    bgt loc_800B69C
    b loc_800B690
loc_800B684:
    ldrb r0, [r7,#0x18]
    cmp r0, #0xff
    beq loc_800B69C
    ldrb r1, [r7,#0x19]
    cmp r0, r1
    blt loc_800B69C
loc_800B690:
    mov r0, #0
    strb r0, [r7,#0x10]
    mov r0, #0x40 
    bl sub_800BF7A
    pop {r4,r7,pc}
loc_800B69C:
    mov r0, #0xff
    strb r0, [r7,#0x10]
locret_800B6A0:
    pop {r4,r7,pc}
    .balign 4, 0x00
dword_800B6A4:    .word 0xFFFF
// end of function sub_800B624

.thumb
sub_800B6A8:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    str r2, [sp,#4]
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800AB54
    add r4, r0, #0
    mov r0, #0
    str r0, [sp]
loc_800B6BC:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    tst r0, r0
    beq loc_800B6D8
    ldr r1, [pc, #0x800b6f4-0x800b6c8-4] // =0xF880080
    tst r0, r1
    bne loc_800B6D8
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    add r6, r6, r4
    b loc_800B6BC
loc_800B6D8:
    ldr r0, [sp]
    cmp r0, #5
    ble loc_800B6E0
    mov r0, #5
loc_800B6E0:
    ldr r1, [sp,#4]
    mov r2, #6
    mul r1, r2
    add r1, r1, r0
    ldr r0, [pc, #0x800b6f0-0x800b6e8-4] // dword_8018470
    ldrb r0, [r0,r1]
    add sp, sp, #8
    pop {r4,r6,r7,pc}
off_800B6F0:    .word dword_8018470
dword_800B6F4:    .word 0xF880080
// end of function sub_800B6A8

.thumb
sub_800B6F8:
    push {r4,r7,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x800b770-0x800b6fe-2] // =0x1000
    tst r0, r1
    bne loc_800B730
    bl sub_800BF94
    add r4, r0, #0
    mov r1, #0xc
    and r4, r1
    bne loc_800B734
    mov r1, #0x1a
    bl sub_800D77A
    tst r0, r0
    beq loc_800B730
    ldrb r0, [r5,#0x16]
    bl sub_8007C0E
    tst r0, r0
    beq loc_800B730
    bl sub_800BF9A
    mov r4, #4
    ldr r1, [pc, #0x800b774-0x800b72a-2] // =0xFFFF
    cmp r0, r1
    bne loc_800B734
loc_800B730:
    ldr r0, [pc, #0x800b774-0x800b730-4] // =0xFFFF
    pop {r4,r7,pc}
loc_800B734:
    mov r0, #0
    mov r1, #8
    tst r4, r1
    beq loc_800B748
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #5
    beq loc_800B756
    mov r0, #1
loc_800B748:
    ldr r7, [r5,#0x58]
    add r7, #0x70 
    bl sub_800D464
    bl sub_800C960
    b loc_800B760
loc_800B756:
    bl sub_800D5E8
    bl sub_800C960
    b loc_800B760
loc_800B760:
    mov r0, #0xc
    bl sub_800BF84
    ldrh r0, [r7,#0x14]
    ldrh r1, [r7,#8]
    ldrh r2, [r7,#6]
    pop {r4,r7,pc}
    .byte 0, 0
off_800B770:    .word 0x1000
dword_800B774:    .word 0xFFFF
// end of function sub_800B6F8

.thumb
sub_800B778:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r3, r0, #0
    ldrb r0, [r3]
    cmp r0, #5
    bge locret_800B798
    lsl r1, r0, #1
    add r1, #2
    ldrh r1, [r3,r1]
    ldr r2, [pc, #0x800baac-0x800b78e-2] // =0xFFFF
    cmp r1, r2
    beq locret_800B798
    add r0, #1
    strb r0, [r3]
locret_800B798:
    pop {pc}
// end of function sub_800B778

.thumb
sub_800B79A:
    push {r4,r5,lr}
    ldr r4, [pc, #0x800bab0-0x800b79c-4] // unk_2035B20
    ldr r5, [pc, #0x800bab4-0x800b79e-2] // unk_2035BE0
    add r0, r4, #0
    mov r1, #0xc0
    add r1, r1, r1
    bl f900_8000930
    ldr r0, [pc, #0x800bab8-0x800b7aa-2] // unk_2035A70
    str r0, [r4,#(dword_2035B70 - 0x2035b20)]
    ldr r0, [pc, #0x800babc-0x800b7ae-2] // unk_2035AB0
    str r0, [r5,#(dword_2035C30 - 0x2035be0)]
    pop {r4,r5,pc}
// end of function sub_800B79A

.thumb
sub_800B7B4:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    ldr r0, [r7,#0x48]
    tst r0, r0
    beq loc_800B7C6
    bl sub_80CC508
    mov r0, #0
    str r0, [r7,#0x48]
loc_800B7C6:
    mov r1, #0x24 
    bl sub_800D77A
    add r0, r0, r0
    ldr r1, [pc, #0x800bac0-0x800b7ce-2] // dword_8017FA8
    ldrh r4, [r1,r0]
    tst r4, r4
    beq locret_800B7DC
    bl sub_80CC4E8
    str r0, [r7,#0x48]
locret_800B7DC:
    pop {r4,r7,pc}
// end of function sub_800B7B4

.thumb
ho_800B7DE:
    push {r4,r6,r7,lr}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800B80C
    mov r0, #0
    str r0, [r7]
    mov r1, #0x24 
    bl sub_800D77A
    add r0, r0, r0
    ldr r1, [pc, #0x800bac4-0x800b7f6-2] // dword_8017FA8
    ldrh r4, [r1,r0]
    tst r4, r4
    beq locret_800B80A
    mov r0, #1
    lsl r0, r0, #0x10
    add r4, r4, r0
    bl sub_80CC4E8
    str r0, [r7]
locret_800B80A:
    pop {r4,r6,r7,pc}
loc_800B80C:
    ldr r1, [pc, #0x800b818-0x800b80c-4] // jt_800B81C
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4,r6,r7,pc}
off_800B818:    .word jt_800B81C
jt_800B81C:    .word nullsub_92+1
    .word nullsub_93+1
    .word nullsub_94+1
    .word sub_800B856+1
    .word nullsub_11+1
    .word nullsub_12+1
    .word nullsub_13+1
    .word nullsub_14+1
    .word nullsub_15+1
    .word nullsub_16+1
    .word nullsub_17+1
    .word nullsub_18+1
    .word nullsub_19+1
// end of function ho_800B7DE

.thumb
nullsub_92:
    mov pc, lr
// end of function nullsub_92

.thumb
nullsub_93:
    mov pc, lr
// end of function nullsub_93

.thumb
nullsub_94:
    mov pc, lr
// end of function nullsub_94

.thumb
sub_800B856:
    push {lr}
    mov r4, #1
    lsl r4, r4, #0x10
    add r4, #2
    bl sub_80CCE28
    str r0, [r7]
    mov r1, #0
    str r1, [r0,#0x60]
    pop {pc}
// end of function sub_800B856

.thumb
nullsub_11:
    mov pc, lr
// end of function nullsub_11

.thumb
nullsub_12:
    mov pc, lr
// end of function nullsub_12

.thumb
nullsub_13:
    mov pc, lr
// end of function nullsub_13

.thumb
nullsub_14:
    mov pc, lr
// end of function nullsub_14

.thumb
nullsub_15:
    mov pc, lr
// end of function nullsub_15

.thumb
nullsub_16:
    mov pc, lr
// end of function nullsub_16

.thumb
nullsub_17:
    mov pc, lr
// end of function nullsub_17

.thumb
nullsub_18:
    mov pc, lr
// end of function nullsub_18

.thumb
nullsub_19:
    mov pc, lr
// end of function nullsub_19

.thumb
sub_800B87C:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne loc_800B8AA
    bl sub_800BF94
    ldr r3, [r5,#0x58]
    ldr r1, [pc, #0x800bac8-0x800b890-4] // =0x1000
    tst r0, r1
    beq loc_800B89C
    mov r0, #0xf
    strb r0, [r3,#0x10]
    b loc_800B8A6
loc_800B89C:
    ldrb r1, [r3,#0x10]
    cmp r1, #0xff
    beq loc_800B8AA
    cmp r1, #0
    beq loc_800B8AA
loc_800B8A6:
    mov r0, #1
    pop {pc}
loc_800B8AA:
    mov r0, #0
    pop {pc}
// end of function sub_800B87C

.thumb
sub_800B8AE:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne loc_800B8D2
    bl sub_800E1F0
    tst r0, r0
    bne loc_800B8CE
    bl sub_800BF94
    mov r1, #0x40 
    tst r0, r1
    beq loc_800B8D2
loc_800B8CE:
    mov r0, #1
    pop {pc}
loc_800B8D2:
    mov r0, #0
    pop {pc}
// end of function sub_800B8AE

.thumb
sub_800B8D6:
    add r3, r0, r0
    ldr r2, [pc, #0x800bacc-0x800b8d8-4] // dword_8017ED8
    add r2, r2, r3
    mov r3, #0
    cmp r0, #0
    bne loc_800B8E8
    cmp r1, #0xf
    beq loc_800B8E8
    add r3, r1, #0
loc_800B8E8:
    ldrb r1, [r2]
    ldrb r2, [r2,#1]
    add r2, r2, r3
    mov pc, lr
// end of function sub_800B8D6

.thumb
sub_800B8F0:
    push {r4,lr}
    add r4, r0, #0
    bl sub_8019010
    ldrb r1, [r0,#7]
    cmp r1, #0xf
    bne locret_800B906
    ldr r0, [pc, #0x800bad0-0x800b8fe-2] // =0x160
    sub r0, r4, r0
    pop {r4,pc}
    mov r0, #0
locret_800B906:
    pop {r4,pc}
// end of function sub_800B8F0

.thumb
sub_800B908:
    push {lr}
    mov r1, #0x24 
    bl sub_800D77A
    add r0, r0, r0
    ldr r3, [r5,#0x58]
    ldr r1, [pc, #0x800bad4-0x800b914-4] // dword_8017FC8
    ldrh r0, [r1,r0]
    strh r0, [r3,#0x2c]
    pop {pc}
// end of function sub_800B908

.thumb
sub_800B91C:
    ldr r1, [pc, #0x800b974-0x800b91c-4] // dword_800B97C+1
    ldrb r0, [r1,r0]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x800b970-0x800b922-2] // off_800B978
    ldrb r1, [r1,r2]
    mul r0, r1
    mov pc, lr
// end of function sub_800B91C

.thumb
sub_800B92A:
    push {lr}
    bl sub_80449E8
    tst r0, r0
    beq loc_800B938
    mov r0, #0
    pop {pc}
loc_800B938:
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800b974-0x800b93e-2] // dword_800B97C+1
    ldrb r0, [r1,r0]
    push {r0}
    mov r1, #0x26 
    bl sub_800D77A
    mov r2, #4
    cmp r0, #1
    pop {r0}
    beq loc_800B954
    mov r2, #0
loc_800B954:
    ldr r1, [pc, #0x800b970-0x800b954-4] // off_800B978
    ldrb r1, [r1,r2]
    mul r0, r1
    pop {pc}
// end of function sub_800B92A

.thumb
sub_800B95C:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800b974-0x800b964-4] // dword_800B97C+1
    ldrb r0, [r1,r0]
    mov r1, #1
    mul r0, r1
    pop {pc}
    .byte 0, 0
off_800B970:    .word off_800B978
off_800B974:    .word dword_800B97C+1
off_800B978:    .word unk_2000000
dword_800B97C:    .word 0x1020103
    .word 0x2010202
    .word 0x2020102
    .word 0x1010201
// end of function sub_800B95C

.thumb
sub_800B98C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x23 
    bl sub_800D722
    add r0, r0, r0
    ldr r2, [pc, #0x800b9ac-0x800b99c-4] // dword_800B9B0
    add r2, r2, r0
    mov r0, #0
    ldrsb r0, [r2,r0]
    mov r1, #1
    ldrsb r1, [r2,r1]
    pop {pc}
    .balign 4, 0x00
off_800B9AC:    .word dword_800B9B0
dword_800B9B0:    .word 0xBD00C900, 0xACF4C5F8, 0xB803C000, 0xC2FFB8FC, 0xB1FBBAFB
    .word 0xC4FAC404, 0xB510B3F7, 0x21241C04, 0xFEA7F001, 0x49041800
    .word 0xB4025A09, 0xF0001C20, 0x8D80FAEB, 0xBD10BC02, 0x8017FC8
// end of function sub_800B98C

.thumb
sub_800B9EC:
    push {lr}
    ldr r0, [pc, #0x800bad8-0x800b9ee-2] // unk_2035B20
    ldrb r1, [r0,#(byte_2035B38 - 0x2035b20)]
    cmp r1, #0xff
    beq loc_800B9FA
    add r1, #1
    strb r1, [r0,#(byte_2035B38 - 0x2035b20)]
loc_800B9FA:
    add r0, #0xc0
    ldrb r1, [r0,#(byte_2035BF8 - 0x2035be0)]
    cmp r1, #0xff
    beq locret_800BA06
    add r1, #1
    strb r1, [r0,#(byte_2035BF8 - 0x2035be0)]
locret_800BA06:
    pop {pc}
// end of function sub_800B9EC

.thumb
sub_800BA08:
    ldr r2, [r5,#0x58]
    ldr r1, [pc, #0x800ba18-0x800ba0a-2] // dword_8017FE8
    ldrb r0, [r1,r0]
    strb r0, [r2,#0x19]
    mov r0, #0
    strb r0, [r2,#0x18]
    mov pc, lr
    .balign 4, 0x00
off_800BA18:    .word dword_8017FE8
// end of function sub_800BA08

.thumb
sub_800BA1C:
    push {r5,lr}
    push {r1}
    bl sub_800C41A
    add r5, r0, #0
    pop {r1}
    beq locret_800BA30
    mov r0, #4
    bl sub_800BF7A
locret_800BA30:
    pop {r5,pc}
// end of function sub_800BA1C

.thumb
sub_800BA32:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_800BA42
    mov r0, #0x10
    bl sub_800AF88
locret_800BA42:
    pop {pc}
// end of function sub_800BA32

.thumb
sub_800BA44:
    push {r4,r6,lr}
    add r7, r0, #0
    bl sub_800BFB8
    add r4, r0, #0
    bl sub_80079EA
    tst r0, r0
    bne loc_800BA9C
    ldr r1, [pc, #0x800baa8-0x800ba56-2] // dword_2037C40
    mov r3, #8
    mul r3, r7
    add r1, r1, r3
    ldrh r6, [r1,#2]
    add r3, r6, #0
    ldrh r2, [r4,#0x1c]
    strh r2, [r4,#0x22]
    strh r3, [r4,#0x1c]
    mvn r0, r2
    and r0, r3
    strh r0, [r4,#0x1e]
    mvn r0, r3
    and r0, r2
    strh r0, [r4,#0x20]
    bl sub_8007920
    bne loc_800BA86
    mov r0, #0
    strh r0, [r4,#0x2a]
    strh r0, [r4,#0x24]
    strh r0, [r4,#0x26]
    strh r0, [r4,#0x28]
    b locret_800BA9A
loc_800BA86:
    add r3, r6, #0
    ldrh r2, [r4,#0x24]
    strh r2, [r4,#0x2a]
    strh r3, [r4,#0x24]
    mvn r0, r2
    and r0, r3
    strh r0, [r4,#0x26]
    mvn r0, r3
    and r0, r2
    strh r0, [r4,#0x28]
locret_800BA9A:
    pop {r4,r6,pc}
loc_800BA9C:
    mov r1, #0
    strh r1, [r4,#0x1c]
    strh r1, [r4,#0x22]
    strh r1, [r4,#0x1e]
    strh r1, [r4,#0x20]
    pop {r4,r6,pc}
off_800BAA8:    .word dword_2037C40
dword_800BAAC:    .word 0xFFFF
off_800BAB0:    .word unk_2035B20
off_800BAB4:    .word unk_2035BE0
off_800BAB8:    .word unk_2035A70
off_800BABC:    .word unk_2035AB0
off_800BAC0:    .word dword_8017FA8
off_800BAC4:    .word dword_8017FA8
off_800BAC8:    .word 0x1000
off_800BACC:    .word dword_8017ED8
off_800BAD0:    .word 0x160
off_800BAD4:    .word dword_8017FC8
off_800BAD8:    .word unk_2035B20
// end of function sub_800BA44

.thumb
sub_800BADC:
    push {lr}
    ldr r3, [r5,#0x58]
    mov r0, #0x2c 
    ldrsh r0, [r3,r0]
    tst r0, r0
    ble locret_800BAFE
    cmp r0, #0x5a 
    bgt locret_800BAFE
    bl sub_8007BB4
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x800bb00-0x800baf4-4] // unk_800BB04
    ldrb r0, [r1,r0]
    lsl r0, r0, #0xa
    bl sub_8002F02
locret_800BAFE:
    pop {pc}
off_800BB00:    .word unk_800BB04
unk_800BB04:    .byte 4
    .word 0x14100C08
    .word 0x1F1F1C18
    .word 0x1014181C
    .byte 0xC
    .byte 0x8
    .byte 0x4
// end of function sub_800BADC

.thumb
sub_800BB14:
    mov r2, #3
    ldr r3, [r5,#0x58]
    ldrh r0, [r3,#0x30]
    ldrh r1, [r3,#0x34]
    cmp r0, r1
    bge loc_800BB28
    mov r2, #0
    cmp r0, #0xa
    blt loc_800BB28
    mov r2, #1
loc_800BB28:
    strb r2, [r3,#0xa]
    mov r2, #3
    ldr r3, [r5,#0x58]
    ldrh r0, [r3,#0x32]
    ldrh r1, [r3,#0x36]
    cmp r0, r1
    bge loc_800BB3E
    mov r2, #0
    cmp r0, #0xa
    blt loc_800BB3E
    mov r2, #1
loc_800BB3E:
    strb r2, [r3,#0xb]
    mov pc, lr
// end of function sub_800BB14

.thumb
sub_800BB42:
    push {lr}
    mov r1, #0x26 
    bl sub_800D77A
    ldr r1, [pc, #0x800bb58-0x800bb4a-2] // off_800BB5C
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800BB58:    .word off_800BB5C
off_800BB5C:    .word sub_800BB68+1
    .word nullsub_20+1
    .word sub_800BC98+1
// end of function sub_800BB42

.thumb
sub_800BB68:
    push {r4,r6,lr}
    bl sub_8007920
    bne locret_800BC38
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0xf
    beq locret_800BC38
    bl sub_800BF94
    mov r1, #0x2f 
    tst r0, r1
    bne loc_800BC30
    bl sub_800C1C6
    mov r1, #0x10
    tst r0, r1
    beq loc_800BC30
    bl sub_800BF9A
    add r6, r0, #0
    add r4, r0, #1
    lsl r4, r4, #0x10
    lsr r4, r4, #0x10
    ldr r3, [r5,#0x58]
    ldrh r1, [r3,#0x1c]
    ldrb r0, [r3,#9]
    tst r0, r0
    bne loc_800BBB6
    mov r2, #2
    tst r1, r2
    bne loc_800BBE2
    tst r4, r4
    beq loc_800BC30
    mov r2, #1
    tst r1, r2
    bne loc_800BC04
    b loc_800BC30
loc_800BBB6:
    cmp r0, #1
    bne loc_800BBCE
    ldrh r0, [r3,#0x1e]
    mov r2, #2
    tst r0, r2
    bne loc_800BBE2
    tst r4, r4
    beq loc_800BC30
    mov r2, #1
    tst r1, r2
    bne loc_800BC04
    b loc_800BC30
loc_800BBCE:
    tst r4, r4
    beq loc_800BBDA
    ldrh r0, [r3,#0x1e]
    mov r2, #1
    tst r0, r2
    bne loc_800BC04
loc_800BBDA:
    mov r2, #2
    tst r1, r2
    bne loc_800BBE2
    b loc_800BC30
loc_800BBE2:
    mov r0, #0
    ldrb r1, [r3,#0xf]
    cmp r1, #0xff
    beq loc_800BBF8
    ldrh r0, [r3,#0x32]
    add r0, #1
    lsr r1, r0, #1
    cmp r1, #0xff
    ble loc_800BBF8
    mov r0, #0xff
    add r0, r0, r0
loc_800BBF8:
    strh r0, [r3,#0x32]
    mov r0, #0
    strh r0, [r3,#0x30]
    mov r0, #2
    strb r0, [r3,#9]
    pop {r4,r6,pc}
loc_800BC04:
    push {r3}
    add r0, r6, #0
    bl sub_800BC3C
    add r1, r0, #0
    mov r0, #0
    tst r1, r1
    pop {r3}
    beq loc_800BC24
    ldrh r0, [r3,#0x30]
    add r0, #1
    lsr r1, r0, #1
    cmp r1, #0xff
    ble loc_800BC24
    mov r0, #0xff
    add r0, r0, r0
loc_800BC24:
    strh r0, [r3,#0x30]
    mov r0, #0
    strh r0, [r3,#0x32]
    mov r0, #1
    strb r0, [r3,#9]
    pop {r4,r6,pc}
loc_800BC30:
    mov r0, #0
    strb r0, [r3,#9]
    strh r0, [r3,#0x30]
    strh r0, [r3,#0x32]
locret_800BC38:
    pop {r4,r6,pc}
// end of function sub_800BB68

.thumb
nullsub_20:
    mov pc, lr
// end of function nullsub_20

.thumb
sub_800BC3C:
    push {r4,r6,r7,lr}
    bl sub_8019010
    ldrb r4, [r0,#7]
    ldrb r7, [r0,#9]
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #7
    bne loc_800BC5C
    cmp r4, #6
    bne loc_800BC5C
    mov r1, #1
    tst r7, r1
    bne loc_800BC5C
    b loc_800BC90
loc_800BC5C:
    cmp r0, #9
    bne loc_800BC74
    mov r1, #1
    tst r7, r1
    bne loc_800BC74
    mov r1, #2
    tst r7, r1
    beq loc_800BC74
    cmp r4, #0xb
    beq loc_800BC90
    cmp r4, #0xc
    beq loc_800BC90
loc_800BC74:
    cmp r0, #5
    bne loc_800BC7E
    cmp r4, #0
    bne loc_800BC7E
    b loc_800BC90
loc_800BC7E:
    cmp r0, #0xb
    bne loc_800BC8E
    mov r1, #1
    tst r7, r1
    bne loc_800BC8E
    cmp r4, #1
    bne loc_800BC8E
    b loc_800BC90
loc_800BC8E:
    b loc_800BC94
loc_800BC90:
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_800BC94:
    mov r0, #0
    pop {r4,r6,r7,pc}
// end of function sub_800BC3C

.thumb
sub_800BC98:
    push {lr}
    bl sub_800BF94
    mov r1, #0x80
    tst r0, r1
    beq locret_800BCB6
    bl sub_800C1C6
    mov r1, #0x10
    tst r0, r1
    beq locret_800BCB6
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x32]
    add r1, #1
    strh r1, [r0,#0x32]
locret_800BCB6:
    pop {pc}
// end of function sub_800BC98

.thumb
sub_800BCB8:
    push {lr}
    ldr r3, [r5,#0x58]
    mov r2, #0xff
    ldrb r0, [r3,#0xe]
    cmp r0, #0xff
    beq loc_800BCDE
    push {r0}
    ldrb r0, [r5,#0x16]
    mov r1, #7
    bl sub_800D722
    add r1, r0, #0
    pop {r0}
    mov r2, #0xa
    mul r0, r2
    add r1, r1, r1
    add r0, r0, r1
    ldr r1, [pc, #0x800bd08-0x800bcda-2] // dword_8017FF8
    ldrh r2, [r0,r1]
loc_800BCDE:
    strh r2, [r3,#0x34]
    mov r2, #0xff
    ldrb r0, [r3,#0xf]
    cmp r0, #0xff
    beq loc_800BD02
    push {r0}
    ldrb r0, [r5,#0x16]
    mov r1, #7
    bl sub_800D722
    add r1, r0, #0
    pop {r0}
    mov r2, #0xa
    mul r0, r2
    add r1, r1, r1
    add r0, r0, r1
    ldr r1, [pc, #0x800bd08-0x800bcfe-2] // dword_8017FF8
    ldrh r2, [r0,r1]
loc_800BD02:
    strh r2, [r3,#0x36]
    pop {pc}
    .balign 4, 0x00
off_800BD08:    .word dword_8017FF8
// end of function sub_800BCB8

.thumb
sub_800BD0C:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    beq loc_800BD26
    lsl r0, r0, #2
    ldr r1, [pc, #0x800bd48-0x800bd1c-4] // dword_8018430
    add r0, r0, r1
    ldr r1, [r0]
    str r1, [r4,#0xc]
    pop {r4,pc}
loc_800BD26:
    mov r1, #9
    bl sub_800D77A
    strb r0, [r4,#0xd]
    mov r1, #0xa
    bl sub_800D77A
    strb r0, [r4,#0xf]
    mov r0, #0xff
    strb r0, [r4,#0xc]
    strb r0, [r4,#0xe]
    mov r1, #0xc
    bl sub_800D77A
    strb r0, [r4]
    pop {r4,pc}
    .balign 4, 0x00
off_800BD48:    .word dword_8018430
// end of function sub_800BD0C

.thumb
sub_800BD4C:
    push {r7,lr}
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x58]
    tst r0, r0
    bne locret_800BD6C
    ldrb r0, [r3,#0xa]
    tst r0, r0
    bne loc_800BD62
    ldrb r0, [r3,#0xb]
    tst r0, r0
    beq locret_800BD6C
loc_800BD62:
    mov r7, #0x58 
    add r7, r7, r3
    bl sub_80E217E
    str r0, [r7]
locret_800BD6C:
    pop {r7,pc}
// end of function sub_800BD4C

.thumb
sub_800BD6E:
    push {lr}
    ldr r3, [r5,#0x58]
    mov r0, #0
    strb r0, [r3,#9]
    strb r0, [r3,#0xa]
    strh r0, [r3,#0x30]
    strb r0, [r3,#0xb]
    strh r0, [r3,#0x32]
    pop {pc}
// end of function sub_800BD6E

.thumb
ho_800BD80:
    push {lr}
    mov r1, #0x26 
    bl sub_800D77A
    ldr r1, [pc, #0x800bd94-0x800bd88-4] // jt_800BD98
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_800BD94:    .word jt_800BD98
jt_800BD98:    .word sub_800BDA4+1
    .word nullsub_21+1
    .word sub_800BEE0+1
// end of function ho_800BD80

.thumb
sub_800BDA4:
    push {r4,r6,r7,lr}
    bl sub_800BF94
    add r6, r0, #0
    bl sub_8007920
    beq loc_800BDE2
    ldrb r0, [r5,#0x16]
    bl sub_8007C0E
    tst r0, r0
    bne loc_800BDBE
    pop {r4,r6,r7,pc}
loc_800BDBE:
    ldr r1, [pc, #0x800c110-0x800bdbe-2] // =0x800
    tst r1, r6
    bne locret_800BDE0
    bl sub_800BF9A
    add r1, r0, #1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    beq locret_800BDE0
    ldrh r0, [r4,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_800BDDA
    b locret_800BDE0
loc_800BDDA:
    ldr r0, [pc, #0x800c110-0x800bdda-2] // =0x800
    bl sub_800BF7A
locret_800BDE0:
    pop {r4,r6,r7,pc}
loc_800BDE2:
    mov r1, #0x24 
    bl sub_800D77A
    add r7, r0, #0
    ldr r4, [r5,#0x58]
    cmp r7, #0xf
    beq loc_800BE90
    mov r1, #3
    tst r1, r6
    bne loc_800BE14
    ldrh r0, [r4,#0x20]
    mov r1, #2
    tst r0, r1
    beq loc_800BE14
    mov r0, #1
    ldrb r1, [r4,#0xb]
    cmp r1, #3
    blt loc_800BE08
    mov r0, #2
loc_800BE08:
    bl sub_800BF7A
    ldrb r0, [r4,#0xa]
    strb r0, [r4,#0x14]
    ldrb r0, [r4,#0xb]
    strb r0, [r4,#0x15]
loc_800BE14:
    cmp r7, #2
    bne loc_800BE5A
    mov r1, #0x20 
    tst r1, r6
    bne loc_800BE5A
    ldrh r0, [r4,#0x1e]
    mov r1, #2
    tst r0, r1
    beq loc_800BE30
    ldrb r0, [r4,#0x12]
    add r0, #1
    strb r0, [r4,#0x12]
    mov r0, #0xa
    strb r0, [r4,#0x11]
loc_800BE30:
    ldrb r0, [r4,#0x11]
    tst r0, r0
    beq loc_800BE40
    sub r0, #1
    strb r0, [r4,#0x11]
    bgt loc_800BE40
    mov r0, #0
    strb r0, [r4,#0x12]
loc_800BE40:
    ldrb r0, [r4,#0x12]
    cmp r0, #6
    blt loc_800BE5A
    mov r0, #0
    ldrb r0, [r4,#0x12]
    strb r0, [r4,#0x11]
    mov r0, #0x20 
    bl sub_800BF7A
    ldrb r0, [r4,#0xa]
    strb r0, [r4,#0x14]
    ldrb r0, [r4,#0xb]
    strb r0, [r4,#0x15]
loc_800BE5A:
    ldrb r0, [r4]
    cmp r0, #0xff
    beq loc_800BE90
    ldrb r0, [r4,#0x1a]
    tst r0, r0
    bne loc_800BE90
    ldrh r2, [r4,#0x1e]
    ldrb r0, [r4,#0x16]
    tst r0, r0
    bne loc_800BE78
    mov r1, #2
    tst r2, r1
    beq loc_800BE90
    mov r0, #8
    strb r0, [r4,#0x16]
loc_800BE78:
    mov r1, #0x20 
    tst r2, r1
    beq loc_800BE86
    mov r0, #0x10
    bl sub_800BF7A
    b loc_800BE8C
loc_800BE86:
    sub r0, #1
    strb r0, [r4,#0x16]
    b loc_800BE90
loc_800BE8C:
    mov r0, #0
    strb r0, [r4,#0x16]
loc_800BE90:
    ldrb r0, [r5,#0x16]
    bl sub_8007C0E
    tst r0, r0
    beq locret_800BEDC
    mov r1, #0xc
    tst r1, r6
    bne locret_800BEDC
    bl sub_800BF9A
    add r1, r0, #1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    beq locret_800BEDC
    bl sub_800BC3C
    tst r0, r0
    bne loc_800BEBE
    ldrh r0, [r4,#0x1e]
    mov r1, #1
    tst r0, r1
    bne loc_800BEC6
    b locret_800BEDC
loc_800BEBE:
    ldrh r0, [r4,#0x20]
    mov r1, #1
    tst r0, r1
    beq locret_800BEDC
loc_800BEC6:
    mov r0, #4
    ldrb r1, [r4,#0xa]
    cmp r1, #3
    bne loc_800BED0
    mov r0, #8
loc_800BED0:
    bl sub_800BF7A
    ldrb r0, [r4,#0xa]
    strb r0, [r4,#0x14]
    ldrb r0, [r4,#0xb]
    strb r0, [r4,#0x15]
locret_800BEDC:
    pop {r4,r6,r7,pc}
// end of function sub_800BDA4

.thumb
nullsub_21:
    mov pc, lr
// end of function nullsub_21

.thumb
sub_800BEE0:
    push {r4,r6,r7,lr}
    ldr r6, [r5,#0x58]
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    add r7, r0, #0
    bl sub_8007920
    bne locret_800BF4E
    ldrh r4, [r6,#0x1e]
    bl sub_8012F4A
    ldr r3, [pc, #0x800c114-0x800bef8-4] // =0x8000
    and r3, r0
    bl sub_800AB54
    mov r1, #0x10
    tst r4, r1
    beq loc_800BF20
    tst r3, r3
    bne loc_800BF2A
loc_800BF0A:
    ldrb r1, [r7,#0x11]
    add r0, r0, r1
    push {r0}
    ldrb r1, [r5,#0x16]
    bl sub_800A28C
    tst r0, r0
    pop {r0}
    beq loc_800BF36
    strb r0, [r7,#0x11]
    b loc_800BF36
loc_800BF20:
    mov r1, #0x20 
    tst r4, r1
    beq loc_800BF36
    tst r3, r3
    bne loc_800BF0A
loc_800BF2A:
    ldrb r1, [r7,#0x11]
    sub r1, r1, r0
    sub r2, r1, #1
    cmp r2, #5
    bhi loc_800BF36
    strb r1, [r7,#0x11]
loc_800BF36:
    bl sub_800BF50
    ldrb r1, [r5,#0x16]
    ldrb r2, [r7,#0x11]
    tst r1, r1
    bne loc_800BF48
    cmp r2, r0
    ble locret_800BF4E
    b loc_800BF4C
loc_800BF48:
    cmp r2, r0
    bge locret_800BF4E
loc_800BF4C:
    strb r0, [r7,#0x11]
locret_800BF4E:
    pop {r4,r6,r7,pc}
// end of function sub_800BEE0

.thumb
sub_800BF50:
    push {r4,lr}
    bl sub_800AB54
    add r4, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
loc_800BF60:
    push {r0}
    ldrb r1, [r5,#0x16]
    bl sub_800A28C
    tst r0, r0
    pop {r0}
    beq loc_800BF76
    add r0, r0, r4
    sub r1, r0, #1
    cmp r1, #5
    bls loc_800BF60
loc_800BF76:
    sub r0, r0, r4
    pop {r4,pc}
// end of function sub_800BF50

.thumb
sub_800BF7A:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x44]
    orr r1, r0
    str r1, [r3,#0x44]
    mov pc, lr
// end of function sub_800BF7A

.thumb
sub_800BF84:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x44]
    bic r1, r0
    str r1, [r3,#0x44]
    mov pc, lr
// end of function sub_800BF84

.thumb
sub_800BF8E:
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x44]
    mov pc, lr
// end of function sub_800BF8E

.thumb
sub_800BF94:
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x44]
    mov pc, lr
// end of function sub_800BF94

.thumb
sub_800BF9A:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r2, r0, #0
    ldrb r1, [r2]
    add r1, r1, r1
    add r1, #2
    ldrh r0, [r2,r1]
    pop {pc}
// end of function sub_800BF9A

.thumb
sub_800BFAE:
    mov r1, #0x50 
    mul r0, r1
    ldr r1, [pc, #0x800c118-0x800bfb2-2] // byte_2035CB0
    add r0, r0, r1
    mov pc, lr
// end of function sub_800BFAE

.thumb
sub_800BFB8:
    mov r1, #0xc0
    mul r0, r1
    ldr r1, [pc, #0x800c11c-0x800bfbc-4] // unk_2035B20
    add r0, r0, r1
    mov pc, lr
// end of function sub_800BFB8

.thumb
sub_800BFC2:
    push {r4,lr}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800C00C
    mov r4, #1
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_800BFFE
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0xf
    beq loc_800BFFE
    mov r4, #0
    cmp r0, #0
    bne loc_800C012
    mov r1, #0
    bl sub_800D77A
    mov r4, #4
    cmp r0, #0xff
    beq loc_800BFFE
    ldrb r0, [r5,#0x16]
    bl sub_800F552
    bl sub_800C016
    add r4, r0, #0
loc_800BFFE:
    mov r1, #0x27 
    bl sub_800D77A
    mov r1, #5
    mul r0, r1
    add r4, r4, r0
    b loc_800C012
loc_800C00C:
    bl sub_800B92A
    pop {r4,pc}
loc_800C012:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_800BFC2

.thumb
sub_800C016:
    push {r4,lr}
    mov r4, #4
    mov r1, #0xfa
    lsl r1, r1, #2
    cmp r0, r1
    bge loc_800C038
    mov r4, #0
    mov r1, #0xfa
    add r1, r1, r1
    cmp r0, r1
    bge loc_800C038
    mov r4, #3
    mov r1, #0xeb
    add r1, r1, r1
    cmp r0, r1
    bge loc_800C038
    mov r4, #2
loc_800C038:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_800C016

.thumb
sub_800C03C:
    push {r4,lr}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800C04C
    mov r0, #2
    pop {r4,pc}
loc_800C04C:
    bl sub_800B95C
    pop {r4,pc}
// end of function sub_800C03C

.thumb
sub_800C052:
    push {lr}
    bl sub_800BFC2
    bl sub_8002DCC
    pop {pc}
// end of function sub_800C052

.thumb
sub_800C05E:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    str r0, [r5,#0x58]
    pop {pc}
// end of function sub_800C05E

.thumb
sub_800C06A:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    bl sub_8012F4A
    mov r1, #4
    tst r0, r1
    beq loc_800C08E
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldr r0, [r4,#0x7c]
    tst r0, r0
    bne locret_800C09C
    bl sub_80E649A
    str r0, [r4,#0x7c]
    b locret_800C09C
loc_800C08E:
    ldr r0, [r4,#0x7c]
    tst r0, r0
    beq locret_800C09C
    bl sub_80E64B2
    mov r0, #0
    str r0, [r4,#0x7c]
locret_800C09C:
    pop {r4,pc}
// end of function sub_800C06A

.thumb
sub_800C09E:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrh r1, [r4,#0x1a]
    ldr r2, [pc, #0x800c120-0x800c0a4-4] // =0xFFFF
    cmp r1, r2
    beq loc_800C0BA
    sub r1, #1
    blt loc_800C0CC
    strh r1, [r4,#0x1a]
    tst r1, r1
    bne loc_800C0BA
    mov r0, #0xb0
    bl f500_8000558
loc_800C0BA:
    bl sub_8012F4A
    ldr r1, [pc, #0x800c124-0x800c0be-2] // =0x400000
    tst r0, r1
    bne loc_800C0CC
    mov r0, #4
    bl sub_8012F36
    b locret_800C0D2
loc_800C0CC:
    mov r0, #4
    bl sub_8012F40
locret_800C0D2:
    pop {r4,pc}
// end of function sub_800C09E

.thumb
sub_800C0D4:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrh r1, [r3,#0x1a]
    tst r1, r1
    beq locret_800C0E8
    ldr r0, [r3,#0x54]
    tst r0, r0
    beq locret_800C0E8
    mov r0, #0
    strh r0, [r3,#0x1a]
locret_800C0E8:
    pop {pc}
// end of function sub_800C0D4

.thumb
sub_800C0EA:
    push {lr}
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x1a]
    mov r0, #4
    bl sub_8012F36
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    pop {pc}
// end of function sub_800C0EA

.thumb
sub_800C100:
    push {lr}
    ldr r1, [r5,#0x54]
    mov r0, #0
    strh r0, [r1,#0x1a]
    mov r0, #4
    bl sub_8012F40
    pop {pc}
off_800C110:    .word 0x800
dword_800C114:    .word 0x8000
off_800C118:    .word byte_2035CB0
off_800C11C:    .word unk_2035B20
dword_800C120:    .word 0xFFFF
dword_800C124:    .word 0x400000
// end of function sub_800C100

.thumb
sub_800C128:
    push {r4,lr}
    bl sub_8007920
    bne locret_800C156
    ldr r4, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    cmp r0, #1
    ble locret_800C156
    mov r1, #0xe
    bl sub_800D77A
    tst r0, r0
    beq loc_800C152
    ldrb r3, [r4,#3]
    add r3, #1
    strb r3, [r4,#3]
    cmp r3, r0
    blt locret_800C156
    mov r0, #1
    bl sub_800AB5E
loc_800C152:
    mov r0, #0
    strb r0, [r4,#3]
locret_800C156:
    pop {r4,pc}
// end of function sub_800C128

.thumb
sub_800C158:
    push {r4-r6,lr}
    add r4, r0, #0
    bl sub_8007EB2
    mov r1, #1
    tst r0, r1
    beq loc_800C194
    add r0, r4, #0
    mov r1, #0xf
    bl sub_800D722
    add r6, r0, #0
    beq loc_800C194
    add r0, r4, #0
    bl sub_800C41A
    add r5, r0, #0
    beq locret_800C198
    ldr r4, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    cmp r0, #1
    ble locret_800C198
    ldrb r3, [r4,#4]
    add r3, #1
    strb r3, [r4,#4]
    cmp r3, r6
    blt locret_800C198
    mov r0, #1
    bl sub_800AB5E
loc_800C194:
    mov r0, #0
    strb r0, [r4,#4]
locret_800C198:
    pop {r4-r6,pc}
// end of function sub_800C158

.thumb
sub_800C19A:
    mov r2, r10
    ldr r2, [r2,#0x18]
    lsl r1, r1, #2
    add r1, #0x44 
    ldr r1, [r2,r1]
    ldr r1, [r1,#0x58]
    ldr r1, [r1,#0x4c]
    and r0, r1
    mov pc, lr
// end of function sub_800C19A

.thumb
sub_800C1AC:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x4c]
    orr r1, r0
    str r1, [r3,#0x4c]
    mov pc, lr
// end of function sub_800C1AC

.thumb
sub_800C1B6:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x4c]
    bic r1, r0
    str r1, [r3,#0x4c]
    mov pc, lr
// end of function sub_800C1B6

.thumb
sub_800C1C0:
    ldr r3, [r5,#0x58]
    str r0, [r3,#0x4c]
    mov pc, lr
// end of function sub_800C1C0

.thumb
sub_800C1C6:
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x4c]
    mov pc, lr
// end of function sub_800C1C6

.thumb
sub_800C1CC:
    push {r4,lr}
    mov r1, #0x23 
    bl sub_800D77A
    add r4, r0, #0
    bl sub_80405D8
    bne loc_800C1F6
    ldrb r0, [r5,#4]
    mov r1, #0x8f
    mul r0, r1
    ldr r6, [pc, #0x800c1fc-0x800c1e2-2] // unk_800C204
    add r6, r6, r0
    mov r1, #0x25 
    bl sub_800D77A
    mov r2, #0xb
    mul r2, r4
    add r0, r0, r2
    ldrb r0, [r6,r0]
    pop {r4,pc}
loc_800C1F6:
    ldr r0, [pc, #0x800c200-0x800c1f6-2] // =0x800C3B1
    ldrb r0, [r0,r4]
    pop {r4,pc}
off_800C1FC:    .word unk_800C204
dword_800C200:    .word 0x800C3B1
unk_800C204:    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x18
    .byte 0x18
    .byte 0x18
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0xE
    .byte 0xE
    .byte 0xE
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x40 
    .byte 0x40 
    .byte 0x2E 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x50 
    .byte 0x50 
    .byte 0x50 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x18
    .byte 0x18
    .byte 0x18
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0xE
    .byte 0xE
    .byte 0xE
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x40 
    .byte 0x40 
    .byte 0x2E 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x50 
    .byte 0x50 
    .byte 0x50 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0xC
    .byte 0xC
    .byte 0xC
    .byte 0xC
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 8
    .byte 8
    .byte 8
    .byte 8
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x2A 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x24 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x2D 
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x18
    .byte 0x18
    .byte 0x18
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0xE
    .byte 0xE
    .byte 0xE
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1A
    .byte 0x1A
    .byte 0x1A
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x16
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x40 
    .byte 0x40 
    .byte 0x2E 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x5A 
    .byte 0x50 
    .byte 0x50 
    .byte 0x50 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x46 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x3C 
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x28 
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 4
    .byte 0
    .byte 0
// end of function sub_800C1CC

.thumb
sub_800C3C0:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x800c3dc-0x800c3c6-2] // unk_800C3E0
    mov r2, #0x10
    tst r0, r2
    beq loc_800C3D0
    add r1, #0x10
loc_800C3D0:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    pop {pc}
off_800C3DC:    .word unk_800C3E0
unk_800C3E0:    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x30 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
// end of function sub_800C3C0

.thumb
sub_800C400:
    push {lr}
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0xf
    bne locret_800C418
    ldr r0, [r5,#0x54]
    mov r1, #3
    strh r1, [r0,#0x18]
    mov r0, #2
    bl sub_8012F36
locret_800C418:
    pop {pc}
// end of function sub_800C400

.thumb
sub_800C41A:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0xd]
    eor r1, r0
    bne loc_800C42A
    ldr r0, [r3,#0x44]
    pop {r4,pc}
loc_800C42A:
    add r3, #0x48 
    mov r1, #0
loc_800C42E:
    ldr r0, [r3]
    bne locret_800C438
    add r1, #1
    cmp r1, #3
    blt loc_800C42E
locret_800C438:
    pop {r4,pc}
// end of function sub_800C41A

.thumb
sub_800C43A:
    push {r4,lr}
    mov r4, #0
    push {r1}
    bl sub_8019010
    pop {r2}
    cmp r2, #9
    bne loc_800C45A
    ldrb r1, [r0,#7]
    cmp r1, #0xb
    beq loc_800C456
    cmp r1, #0xc
    beq loc_800C456
    b loc_800C45A
loc_800C456:
    ldr r4, [pc, #0x800c47c-0x800c456-2] // =0x8000
    b loc_800C476
loc_800C45A:
    cmp r2, #0xb
    bne loc_800C468
    ldrb r1, [r0,#7]
    cmp r1, #1
    bne loc_800C476
    ldr r4, [pc, #0x800c47c-0x800c464-4] // =0x8000
    b loc_800C476
loc_800C468:
    cmp r2, #7
    bne loc_800C476
    ldrb r1, [r0,#7]
    cmp r1, #6
    bne loc_800C476
    ldr r4, [pc, #0x800c47c-0x800c472-2] // =0x8000
    b loc_800C476
loc_800C476:
    add r0, r4, #0
    pop {r4,pc}
    .balign 4, 0x00
dword_800C47C:    .word 0x8000
    .word 0x400A
// end of function sub_800C43A

.thumb
sub_800C484:
    push {r4,lr}
    mov r4, #0
    push {r1}
    bl sub_8019010
    pop {r2}
    cmp r2, #6
    bne loc_800C4B2
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800C4B2
    mov r2, #1
    tst r1, r2
    bne loc_800C4B2
    ldrb r1, [r0,#7]
    cmp r1, #0xc
    beq loc_800C4AE
    cmp r1, #2
    beq loc_800C4AE
    b loc_800C4B2
loc_800C4AE:
    ldr r4, [pc, #0x800c4b8-0x800c4ae-2] // =0x4000
    b loc_800C4B2
loc_800C4B2:
    add r0, r4, #0
    pop {r4,pc}
    .balign 4, 0x00
dword_800C4B8:    .word 0x4000
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0
// end of function sub_800C484

.thumb
sub_800C4C0:
    ldr r0, [r5,#0x58]
    ldr r1, [r0,#0x54]
    add r1, #1
    str r1, [r0,#0x54]
    mov pc, lr
// end of function sub_800C4C0

.thumb
sub_800C4CA:
    ldr r0, [r5,#0x58]
    mov r1, #0
    str r1, [r0,#0x54]
    mov pc, lr
// end of function sub_800C4CA

.thumb
sub_800C4D2:
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x54]
    mov pc, lr
// end of function sub_800C4D2

.thumb
sub_800C4D8:
    push {lr}
    bl sub_8007920
    bne locret_800C4FA
    bl sub_80405D8
    bne locret_800C4FA
    bl sub_8012F4A
    ldr r1, [pc, #0x800c4fc-0x800c4ea-2] // =0xC00
    tst r0, r1
    beq loc_800C4F6
    bl sub_800C4C0
    b locret_800C4FA
loc_800C4F6:
    bl sub_800C4CA
locret_800C4FA:
    pop {pc}
off_800C4FC:    .word 0xC00
// end of function sub_800C4D8

.thumb
sub_800C500:
    push {r4,lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x15
    tst r0, r1
    bne locret_800C51E
    bl sub_800C4D2
    cmp r0, #0x78 
    blt locret_800C51E
    mov r0, #1
    lsl r0, r0, #9
    bl sub_8012F50
locret_800C51E:
    pop {r4,pc}
// end of function sub_800C500

.thumb
sub_800C520:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800C598
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800C598
    ldrb r0, [r5,#0x16]
    bl sub_800F448
    cmp r0, #5
    beq loc_800C598
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_800C598
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x15
    tst r0, r1
    bne loc_800C57E
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #9
    tst r0, r1
    beq locret_800C5A8
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #0x15
    bl sub_8012F36
    mov r0, #0x96
    lsl r0, r0, #2
    strh r0, [r4,#0x2e]
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_800F48A
    b locret_800C5A8
loc_800C57E:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_8012F5A
    ldrh r0, [r4,#0x2e]
    tst r0, r0
    beq loc_800C592
    sub r0, #1
    strh r0, [r4,#0x2e]
    bgt locret_800C5A8
loc_800C592:
    bl sub_800C5AA
    b locret_800C5A8
loc_800C598:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #0x15
    bl sub_8012F40
locret_800C5A8:
    pop {r4,pc}
// end of function sub_800C520

.thumb
sub_800C5AA:
    push {lr}
    mov r0, #1
    lsl r0, r0, #0x15
    bl sub_8012F40
    bl sub_800C63E
    ldr r1, [r5,#0x58]
    mov r0, #0
    strh r0, [r1,#0x2e]
    strb r0, [r1,#1]
    strb r0, [r1,#2]
    str r0, [r1,#0x54]
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_800F48A
    pop {pc}
// end of function sub_800C5AA

.thumb
sub_800C5CE:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    ldr r3, [r5,#0x54]
    ldrb r2, [r3,#0xd]
    mov r0, #1
    tst r2, r0
    bne loc_800C5E4
    ldrb r2, [r3,#0xf]
    lsr r2, r2, #4
    cmp r2, #1
    bne loc_800C5EE
loc_800C5E4:
    ldrb r0, [r4,#1]
    add r0, #1
    strb r0, [r4,#1]
    mov r0, #0x5a 
    strb r0, [r4,#2]
loc_800C5EE:
    ldrb r0, [r4,#2]
    tst r0, r0
    beq loc_800C5FA
    sub r0, #1
    strb r0, [r4,#2]
    bgt loc_800C5FE
loc_800C5FA:
    mov r0, #0
    strb r0, [r4,#1]
loc_800C5FE:
    ldrb r0, [r4,#1]
    pop {r4,pc}
// end of function sub_800C5CE

.thumb
sub_800C602:
    mov r2, #0xc0
    add r2, r2, r2
    mul r0, r2
    ldr r2, [pc, #0x800c944-0x800c608-4] // byte_2039600
    add r2, r2, r0
    ldrb r0, [r2]
    add r3, r0, #1
    cmp r3, #0x3c 
    blt loc_800C616
    mov r3, #0
loc_800C616:
    strb r3, [r2]
    add r0, r0, r0
    add r0, #4
    strh r1, [r2,r0]
    ldrh r0, [r2,#2]
    add r0, r0, r1
    strh r0, [r2,#2]
    ldrb r0, [r2,#1]
    add r3, r0, #1
    cmp r3, #0x3c 
    blt loc_800C62E
    mov r3, #0
loc_800C62E:
    strb r3, [r2,#1]
    add r0, r0, r0
    add r0, #4
    ldrh r1, [r2,r0]
    ldrh r0, [r2,#2]
    sub r0, r0, r1
    strh r0, [r2,#2]
    mov pc, lr
// end of function sub_800C602

.thumb
sub_800C63E:
    push {lr}
    ldr r0, [pc, #0x800c948-0x800c640-4] // byte_2039600
    mov r1, #0xc0
    lsl r1, r1, #2
    bl f900_8000930
    ldr r1, [pc, #0x800c94c-0x800c64a-2] // byte_2039600
    mov r0, #0xb3
    strb r0, [r1]
    ldr r1, [pc, #0x800c950-0x800c650-4] // byte_2039780
    mov r0, #0xb3
    strb r0, [r1]
    pop {pc}
    mov r2, #0xc0
    add r2, r2, r2
    mul r0, r2
    ldr r2, [pc, #0x800c954-0x800c65e-2] // byte_2039600
    add r2, r2, r0
    ldrh r0, [r2,#2]
    mov pc, lr
// end of function sub_800C63E

.thumb
sub_800C666:
    push {lr}
    ldr r0, [r5,#0x58]
    ldrh r0, [r0,#0x2e]
    tst r0, r0
    beq locret_800C676
    ldr r0, [pc, #0x800c678-0x800c670-4] // =0xC
    bl sub_8002F02
locret_800C676:
    pop {pc}
dword_800C678:    .word 0xF
// end of function sub_800C666

.thumb
sub_800C67C:
    push {lr}
    ldr r2, [r5,#0x54]
    strh r4, [r2,#0x18]
    mov r0, #2
    bl sub_8012F36
    mov r0, #0xa
    add r0, #0xff
    bl f500_8000558
    pop {pc}
// end of function sub_800C67C

.thumb
sub_800C692:
    push {r4,r7,lr}
    bl sub_80405D8
    bne loc_800C6C6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    push {r1,r2}
    bl sub_800AB54
    pop {r1,r2}
    lsl r0, r0, #0x12
    add r1, r1, r0
    mov r3, #0x30 
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_80E3762
    mov r0, #0x25 
    add r0, #0xff
    bl f500_8000558
    pop {r4,r7,pc}
loc_800C6C6:
    ldr r7, [r5,#0x58]
    add r7, #0x70 
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    ldrb r1, [r7,#0xc]
    add r1, r1, r1
    add r1, #0x36 
    ldrh r2, [r7,#8]
    ldrh r3, [r0,r1]
    add r3, r3, r2
    strh r3, [r0,r1]
    pop {r4,r7,pc}
// end of function sub_800C692

.thumb
sub_800C6E0:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xc
    mul r0, r1
    add r0, #0x68 
    mov r7, r10
    ldr r7, [r7,#0x18]
    add r7, r7, r0
    mov r6, #0
loc_800C6F2:
    ldr r0, [r7]
    tst r0, r0
    beq loc_800C712
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_800C712
    ldrh r1, [r0,#0x26]
    strh r1, [r0,#0x24]
    add r0, #0x34 
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x9a
    bl f500_8000558
loc_800C712:
    add r7, #4
    add r6, #1
    cmp r6, #3
    blt loc_800C6F2
    pop {r4,r6,r7,pc}
// end of function sub_800C6E0

.thumb
sub_800C71C:
    push {r4,lr}
    add r4, r0, #0
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    ldrh r1, [r0,#6]
    add r1, r1, r4
    ldr r2, [pc, #0x800c958-0x800c72a-2] // =0xFFFF
    cmp r1, r2
    ble loc_800C732
    add r1, r2, #0
loc_800C732:
    strh r1, [r0,#6]
    pop {r4,pc}
// end of function sub_800C71C

.thumb
sub_800C736:
    push {lr}
    bl sub_800BFB8
    ldrh r0, [r0,#6]
    pop {pc}
// end of function sub_800C736

.thumb
sub_800C740:
    push {lr}
    push {r0}
    mov r0, #0x10
    bl sub_800C1B6
    mov r0, #0x10
    bl sub_8015AFA
    ldrb r0, [r5,#0x16]
    bl sub_8022F20
    ldr r3, [r5,#0x58]
    add r3, #0x70 
    str r1, [r3,#8]
    strh r2, [r3,#6]
    strh r0, [r3,#0x14]
    mov r0, #0
    strb r0, [r3,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    tst r0, r0
    beq loc_800C782
    ldr r3, [r5,#0x58]
    add r3, #0x70 
    ldrh r0, [r3,#0x14]
    tst r0, r0
    beq loc_800C782
    ldrh r1, [r3,#8]
    ldrh r2, [r3,#6]
    mov r3, #1
    bl sub_8016408
loc_800C782:
    pop {r1}
    mov r0, #0x38 
    ldr r2, [pc, #0x800c95c-0x800c786-2] // =0x200
    tst r1, r2
    bne loc_800C78E
    mov r0, #0x39 
loc_800C78E:
    bl sub_800C960
    pop {pc}
// end of function sub_800C740

.thumb
sub_800C794:
    push {r4,r6,r7,lr}
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800C7EA
    mov r1, #0x18
    bl sub_800D77A
    cmp r0, #0xff
    beq loc_800C7EA
    mov r2, #4
    tst r0, r2
    beq loc_800C7EA
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #2
    ldrh r1, [r5,#0x24]
    cmp r0, r1
    bcc loc_800C7EA
    mov r1, #0x18
    bl sub_800D77A
    mov r2, #4
    bic r0, r2
    add r2, r0, #0
    mov r1, #0x18
    bl sub_800D75A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #2
    mov r6, #0
    ldr r7, [pc, #0x800c7f0-0x800c7d6-2] // =0x181
    bl sub_80EA2AE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_8009084
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_800C7EA:
    mov r0, #0
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_800C7F0:    .word 0x181
// end of function sub_800C794

.thumb
sub_800C7F4:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800C86A
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r6, r0, #0
    mov r1, #0x18
    bl sub_800D722
    cmp r0, #0xff
    beq loc_800C86A
    mov r2, #2
    tst r0, r2
    beq loc_800C86A
    add r0, r4, #0
    bl sub_8019010
    ldrb r1, [r0,#8]
    cmp r1, #1
    beq loc_800C828
    cmp r1, #2
    bne loc_800C86A
loc_800C828:
    add r0, r6, #0
    mov r1, #0x18
    bl sub_800D722
    mov r2, #2
    bic r0, r2
    add r2, r0, #0
    mov r1, #0x18
    add r0, r6, #0
    bl sub_800D706
    add r0, r6, #0
    bl sub_800C41A
    push {r5}
    add r5, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #1
    mov r6, #0
    ldr r7, [pc, #0x800c870-0x800c854-4] // =0x180
    bl sub_80EA2AE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_8009084
    pop {r5}
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_800C86A:
    mov r0, #0
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_800C870:    .word 0x180
// end of function sub_800C7F4

.thumb
sub_800C874:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800C8E8
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r6, r0, #0
    mov r1, #0x18
    bl sub_800D722
    cmp r0, #0xff
    beq loc_800C8E8
    mov r2, #1
    tst r0, r2
    beq loc_800C8E8
    add r0, r4, #0
    bl sub_8019010
    ldrb r1, [r0,#0x16]
    mov r2, #2
    tst r1, r2
    beq loc_800C8E8
    add r0, r6, #0
    mov r1, #0x18
    bl sub_800D722
    mov r2, #1
    bic r0, r2
    add r2, r0, #0
    mov r1, #0x18
    add r0, r6, #0
    bl sub_800D706
    add r0, r6, #0
    bl sub_800C41A
    push {r5}
    add r5, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #0
    mov r6, #0
    ldr r7, [pc, #0x800c8ec-0x800c8d2-2] // =0x17C
    bl sub_80EA2AE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_8009084
    pop {r5}
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_800C8E8:
    mov r0, #0
    pop {r4,r6,r7,pc}
dword_800C8EC:    .word 0x17F
// end of function sub_800C874

.thumb
sub_800C8F0:
    push {r4,lr}
    ldr r4, [pc, #0x800c914-0x800c8f2-2] // dword_800C918
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800C90A
    mov r1, #0x24 
    bl sub_800D77A
    ldr r1, [pc, #0x800c914-0x800c904-4] // dword_800C918
    ldrb r0, [r4,r0]
    b loc_800C90C
loc_800C90A:
    ldrb r0, [r4,r0]
loc_800C90C:
    bl sub_8012838
    pop {r4,pc}
    .balign 4, 0x00
off_800C914:    .word dword_800C918
dword_800C918:    .word 0x0
    .byte 0
    .byte 1
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 4
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800C8F0

.thumb
sub_800C928:
    push {lr}
    bl sub_80405D8
    beq loc_800C934
    mov r3, #3
    pop {pc}
loc_800C934:
    mov r1, #0x23 
    bl sub_800D77A
    mov r3, #0
    cmp r0, #0
    beq locret_800C942
    mov r3, #3
locret_800C942:
    pop {pc}
off_800C944:    .word byte_2039600
off_800C948:    .word byte_2039600
off_800C94C:    .word byte_2039600
off_800C950:    .word byte_2039780
off_800C954:    .word byte_2039600
dword_800C958:    .word 0xFFFF
off_800C95C:    .word 0x200
// end of function sub_800C928

.thumb
sub_800C960:
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldr r1, [r5,#0x58]
    add r1, #0x70 
    strh r0, [r1]
    mov pc, lr
// end of function sub_800C960

.thumb
sub_800C96E:
    push {lr}
    ldr r3, [r5,#0x58]
    add r3, #0x70 
    strb r0, [r3,#0x16]
    strb r1, [r3,#0x17]
    strh r2, [r3,#0x18]
    mov r0, #7
    bl sub_800C960
    bl loc_80EB0B0
    pop {pc}
// end of function sub_800C96E

.thumb
ho_800C986:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    ldr r1, [pc, #0x800ca2c-0x800c98e-2] // jt_800CA30
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
// end of function ho_800C986

.thumb
ho_800C99C:
    push {r6,r7,lr}
    mov r7, #0x70 
    add r7, r7, r6
    ldr r1, [pc, #0x800ca2c-0x800c9a2-2] // jt_800CA30
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
// end of function ho_800C99C

.thumb
sub_800C9B0:
    push {r7,lr}
    mov r0, #0x3f 
    bl sub_800BF84
    ldr r1, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r1
    ldrb r0, [r7,#5]
    strh r0, [r1,#0x3a]
    bl sub_800BD6E
    mov r0, #1
    lsl r0, r0, #0x16
    bl sub_8012F40
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r7]
    pop {r7,pc}
// end of function sub_800C9B0

.thumb
sub_800C9DC:
    push {r7,lr}
    mov r0, #0x3f 
    bl sub_800BF84
    bl sub_800BD6E
    mov r0, #1
    lsl r0, r0, #0x16
    bl sub_8012F40
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r7]
    pop {r7,pc}
// end of function sub_800C9DC

.thumb
sub_800C9FE:
    push {r7,lr}
    ldr r1, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r1
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r7]
    pop {r7,pc}
// end of function sub_800C9FE

.thumb
sub_800CA14:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    ldr r1, [pc, #0x800ca2c-0x800ca1c-4] // jt_800CA30
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_800CA2C:    .word jt_800CA30
jt_800CA30:    .word sub_800CBE2+1
    .word sub_800CC08+1
    .word sub_800CC32+1
    .word sub_800CC86+1
    .word dword_800CCB4+3
    .word sub_800CCE2+1
    .word sub_800CD16+1
    .word sub_800CD32+1
    .word sub_800CD52+1
    .word sub_800D1B4+1
    .word sub_800CD78+1
    .word sub_800CD96+1
    .word sub_800CC62+1
    .word nullsub_95+1
    .word sub_800CBE2+1
    .word nullsub_95+1
    .word sub_800CBE2+1
    .word sub_800CDBC+1
    .word nullsub_95+1
    .word sub_800CDDC+1
    .word sub_800CE00+1
    .word nullsub_95+1
    .word sub_800CBE2+1
    .word nullsub_95+1
    .word sub_800CEB4+1
    .word sub_800CBE2+1
    .word sub_800CBE2+1
    .word sub_800CE50+1
    .word sub_800CE70+1
    .word sub_800CE90+1
    .word sub_800CE10+1
    .word sub_800CE30+1
    .word sub_800CF80+1
    .word sub_800CF9C+1
    .word sub_800CED4+1
    .word sub_800CEF6+1
    .word sub_800CF16+1
    .word sub_800CF3C+1
    .word sub_800CF5C+1
    .word loc_800CFB4+1
    .word sub_800CFCE+1
    .word sub_800CFD4+1
    .word sub_800CFDE+1
    .word sub_800CFE8+1
    .word sub_800CFF2+1
    .word sub_800CFFC+1
    .word sub_800D006+1
    .word sub_800D010+1
    .word sub_800D01A+1
    .word sub_800D024+1
    .word sub_800D054+1
    .word sub_800D05E+1
    .word sub_800D068+1
    .word sub_800D08E+1
    .word sub_800D0B4+1
    .word sub_800D0BE+1
    .word sub_800D0C8+1
    .word sub_800CC32+1
    .word sub_800D0D6+1
    .word sub_800D0E0+1
    .word sub_800D0E4+1
    .word sub_800D0EE+1
    .word sub_800D0F8+1
    .word sub_800D102+1
    .word sub_800D10C+1
    .word sub_800D116+1
    .word sub_800D120+1
    .word sub_800D12A+1
    .word sub_800D134+1
    .word sub_800D13E+1
    .word sub_800D148+1
    .word sub_800D152+1
    .word sub_800D15C+1
    .word sub_800D166+1
    .word sub_800D170+1
    .word sub_800D196+1
    .word sub_800D1A0+1
    .word sub_800D1AA+1
    .word sub_800D1C6+1
    .word sub_800D1D0+1
    .word sub_800D1DA+1
    .word sub_800D1E4+1
    .word sub_800D1EE+1
    .word sub_800D1F8+1
    .word sub_800D202+1
    .word sub_800D20C+1
    .word sub_800D216+1
    .word sub_800D220+1
    .word loc_800D248+1
    .word sub_800D264+1
    .word sub_800D28A+1
    .word sub_800D2B0+1
    .word sub_800D2BA+1
    .word sub_800D2C4+1
    .word sub_800D2CE+1
    .word sub_800D2D8+1
    .word sub_800D2E2+1
    .word sub_800CE00+1
    .word sub_800D2EC+1
    .word sub_800D2F6+1
    .word sub_800D30C+1
    .word nullsub_69+1
    .word nullsub_69+1
    .word nullsub_69+1
    .word sub_800D324+1
    .word sub_800D34A+1
    .word sub_800D370+1
    .word sub_800D398+1
// end of function sub_800CA14

.thumb
nullsub_95:
    mov pc, lr
// end of function nullsub_95

.thumb
sub_800CBE2:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800CBE2

.thumb
sub_800CC08:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    mov r1, #0xa
    mul r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x24 
    pop {pc}
// end of function sub_800CC08

.thumb
sub_800CC32:
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    ldrb r0, [r6,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x800cc58-0x800cc46-2] // dword_800CC5C
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cc54-0x800cc4c-4] // =0x1E00
    str r0, [r7,#0xc]
    mov r0, #0x19
    mov pc, lr
dword_800CC54:    .word 0x1E05
off_800CC58:    .word dword_800CC5C
dword_800CC5C:    .word 0x500032
    .hword 0x64
// end of function sub_800CC32

.thumb
sub_800CC62:
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cc80-0x800cc78-4] // =0x1E00
    str r0, [r7,#0xc]
    mov r0, #0x19
    mov pc, lr
dword_800CC80:    .word 0x1E03
// end of function sub_800CC62

.thumb
nullsub_69:
    mov pc, lr
// end of function nullsub_69

.thumb
sub_800CC86:
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    strh r0, [r7,#0xa]
    ldrb r0, [r6,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x800ccac-0x800cc9c-4] // dword_800CCB0
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0xd
    str r0, [r7,#0xc]
    mov r0, #0x1e
    mov pc, lr
    .balign 4, 0x00
off_800CCAC:    .word dword_800CCB0
dword_800CCB0:    .word 0x28001E
dword_800CCB4:    .word 0x20030032
// end of function sub_800CC86

.thumb
sub_800CCB8:
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    str r0, [r7,#0xc]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    ldrb r0, [r6,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x800ccd8-0x800ccce-2] // dword_800CCDC
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0x47 
    mov pc, lr
off_800CCD8:    .word dword_800CCDC
dword_800CCDC:    .word 0x28001E
    .hword 0x32
// end of function sub_800CCB8

.thumb
sub_800CCE2:
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    ldrb r0, [r6,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x800cd0c-0x800ccf8-4] // byte_800CD10
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cd08-0x800ccfe-2] // =0x200000
    str r0, [r7,#0xc]
    mov r0, #0x28 
    mov pc, lr
    .balign 4, 0x00
dword_800CD08:    .word 0x200000
off_800CD0C:    .word byte_800CD10
byte_800CD10:    .byte 0xA
    .word 0x14000F00
    .byte 0
// end of function sub_800CCE2

.thumb
sub_800CD16:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #3
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    mov r0, #0x5a 
    str r0, [r7,#0xc]
    mov r0, #0x20 
    mov pc, lr
// end of function sub_800CD16

.thumb
sub_800CD32:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xa8
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x1c
    mov pc, lr
// end of function sub_800CD32

.thumb
sub_800CD52:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xbc
    strh r0, [r7,#0xa]
    mov r0, #0x3c 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cd74-0x800cd6a-2] // =0x4050601
    str r0, [r7,#0xc]
    mov r0, #0x12
    mov pc, lr
    .balign 4, 0x00
dword_800CD74:    .word 0x4050601
// end of function sub_800CD52

.thumb
sub_800CD78:
    push {lr}
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    str r0, [r7,#0xc]
    mov r0, #0x85
    strh r0, [r7,#0xa]
    mov r0, #0x3e 
    pop {pc}
// end of function sub_800CD78

.thumb
sub_800CD96:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #5
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800CD96

.thumb
sub_800CDBC:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x15
    mov pc, lr
// end of function sub_800CDBC

.thumb
sub_800CDDC:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xa8
    strh r0, [r7,#0xa]
    mov r0, #0x96
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cdfc-0x800cdf4-4] // =0x6050601
    str r0, [r7,#0xc]
    mov r0, #0x14
    mov pc, lr
dword_800CDFC:    .word 0x6050601
// end of function sub_800CDDC

.thumb
sub_800CE00:
    push {lr}
    mov r0, #0x7e 
    add r0, #0xff
    bl sub_800D3B6
    mov r1, #0x94
    strh r1, [r7,#0xa]
    pop {pc}
// end of function sub_800CE00

.thumb
sub_800CE10:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xa8
    strh r0, [r7,#0xa]
    mov r0, #0x28 
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x13
    mov pc, lr
// end of function sub_800CE10

.thumb
sub_800CE30:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xb2
    strh r0, [r7,#0xa]
    mov r0, #0xc8
    strh r0, [r7,#8]
    mov r0, #1
    str r0, [r7,#0xc]
    mov r0, #0x73 
    mov pc, lr
// end of function sub_800CE30

.thumb
sub_800CE50:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #2
    str r0, [r7,#0xc]
    mov r0, #0xf
    mov pc, lr
// end of function sub_800CE50

.thumb
sub_800CE70:
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x1e
    strh r0, [r7,#8]
    mov r0, #1
    str r0, [r7,#0xc]
    mov r0, #0x18
    mov pc, lr
// end of function sub_800CE70

.thumb
sub_800CE90:
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800ceb0-0x800cea8-4] // =0x20A00
    str r0, [r7,#0xc]
    mov r0, #0x16
    mov pc, lr
dword_800CEB0:    .word 0x20A00
// end of function sub_800CE90

.thumb
sub_800CEB4:
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xbc
    strh r0, [r7,#0xa]
    mov r0, #0x50 
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x6b 
    mov pc, lr
// end of function sub_800CEB4

.thumb
sub_800CED4:
    push {lr}
    mov r0, #0x1e
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x1b
    pop {pc}
// end of function sub_800CED4

.thumb
sub_800CEF6:
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#8]
    mov r0, #0xd
    str r0, [r7,#0xc]
    mov r0, #0x1e
    mov pc, lr
// end of function sub_800CEF6

.thumb
sub_800CF16:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0xa8
    strh r0, [r7,#0xa]
    mov r0, #0x3c 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cf38-0x800cf2e-2] // =0x4050601
    str r0, [r7,#0xc]
    mov r0, #0x12
    mov pc, lr
    .balign 4, 0x00
dword_800CF38:    .word 0x4050601
// end of function sub_800CF16

.thumb
sub_800CF3C:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #3
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cf58-0x800cf50-4] // =0x214
    str r0, [r7,#0xc]
    mov r0, #0x25 
    mov pc, lr
off_800CF58:    .word 0x214
// end of function sub_800CF3C

.thumb
sub_800CF5C:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r0, #0x64 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800cf7c-0x800cf72-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x25 
    mov pc, lr
    .balign 4, 0x00
off_800CF7C:    .word 0x114
// end of function sub_800CF5C

.thumb
sub_800CF80:
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#3]
    mov r0, #0x64 
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x29 
    mov pc, lr
// end of function sub_800CF80

.thumb
sub_800CF9C:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    str r0, [r7,#0xc]
    mov r0, #0x2a 
    mov pc, lr
// end of function sub_800CF9C

loc_800CFB4:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    str r0, [r7,#0xc]
    mov r0, #0x64 
    strh r0, [r7,#8]
    mov r0, #0x72 
    mov pc, lr
.thumb
sub_800CFCE:
    push {lr}
    mov r0, #0x10
    pop {pc}
// end of function sub_800CFCE

.thumb
sub_800CFD4:
    push {lr}
    mov r0, #1
    bl sub_800D3B6
    pop {pc}
// end of function sub_800CFD4

.thumb
sub_800CFDE:
    push {lr}
    mov r0, #0x1d
    bl sub_800D3B6
    pop {pc}
// end of function sub_800CFDE

.thumb
sub_800CFE8:
    push {lr}
    mov r0, #0x13
    bl sub_800D3B6
    pop {pc}
// end of function sub_800CFE8

.thumb
sub_800CFF2:
    push {lr}
    mov r0, #0x16
    bl sub_800D3B6
    pop {pc}
// end of function sub_800CFF2

.thumb
sub_800CFFC:
    push {lr}
    mov r0, #0x39 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800CFFC

.thumb
sub_800D006:
    push {lr}
    mov r0, #0x30 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D006

.thumb
sub_800D010:
    push {lr}
    mov r0, #0x12
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D010

.thumb
sub_800D01A:
    push {lr}
    mov r0, #0x48 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D01A

.thumb
sub_800D024:
    push {lr}
    bl sub_8001AF6
    mov r1, #8
    svc 6
    ldr r0, [pc, #0x800d040-0x800d02e-2] // dword_800D044
    add r1, r1, r1
    ldrh r0, [r1,r0]
    bl sub_800D3B6
    mov r1, #1
    strb r1, [r7,#0xf]
    pop {pc}
    .byte 0, 0
off_800D040:    .word dword_800D044
dword_800D044:    .word 0x8D008C
    .word 0x8F008E
    .word 0x910090
    .word 0x930092
// end of function sub_800D024

.thumb
sub_800D054:
    push {lr}
    mov r0, #0x7b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D054

.thumb
sub_800D05E:
    push {lr}
    mov r0, #0x4b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D05E

.thumb
sub_800D068:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #7
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D068

.thumb
sub_800D08E:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #8
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D08E

.thumb
sub_800D0B4:
    push {lr}
    mov r0, #0x5b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0B4

.thumb
sub_800D0BE:
    push {lr}
    mov r0, #0x94
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0BE

.thumb
sub_800D0C8:
    push {lr}
    mov r0, #9
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0C8

    push {lr}
    pop {pc}
.thumb
sub_800D0D6:
    push {lr}
    mov r0, #0x3a 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0D6

.thumb
sub_800D0E0:
    push {lr}
    pop {pc}
// end of function sub_800D0E0

.thumb
sub_800D0E4:
    push {lr}
    mov r0, #0x5c 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0E4

.thumb
sub_800D0EE:
    push {lr}
    mov r0, #0x85
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0EE

.thumb
sub_800D0F8:
    push {lr}
    mov r0, #0x31 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D0F8

.thumb
sub_800D102:
    push {lr}
    mov r0, #0x5e 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D102

.thumb
sub_800D10C:
    push {lr}
    mov r0, #0x6b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D10C

.thumb
sub_800D116:
    push {lr}
    mov r0, #0x51 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D116

.thumb
sub_800D120:
    push {lr}
    mov r0, #0x52 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D120

.thumb
sub_800D12A:
    push {lr}
    mov r0, #0xa
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D12A

.thumb
sub_800D134:
    push {lr}
    mov r0, #0x2f 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D134

.thumb
sub_800D13E:
    push {lr}
    mov r0, #0x1e
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D13E

.thumb
sub_800D148:
    push {lr}
    mov r0, #0x3b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D148

.thumb
sub_800D152:
    push {lr}
    mov r0, #0x4c 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D152

.thumb
sub_800D15C:
    push {lr}
    mov r0, #0x5d 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D15C

.thumb
sub_800D166:
    push {lr}
    mov r0, #0x32 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D166

.thumb
sub_800D170:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #9
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D170

.thumb
sub_800D196:
    push {lr}
    mov r0, #0xd1
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D196

.thumb
sub_800D1A0:
    push {lr}
    mov r0, #0xb
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1A0

.thumb
sub_800D1AA:
    push {lr}
    mov r0, #0x4d 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1AA

.thumb
sub_800D1B4:
    push {lr}
    mov r0, #0x35 
    bl sub_800D3B6
    mov r1, #0x32 
    strh r1, [r7,#8]
    mov r1, #0x9e
    strh r1, [r7,#0xa]
    pop {pc}
// end of function sub_800D1B4

.thumb
sub_800D1C6:
    push {lr}
    mov r0, #0x35 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1C6

.thumb
sub_800D1D0:
    push {lr}
    mov r0, #0x1f
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1D0

.thumb
sub_800D1DA:
    push {lr}
    mov r0, #0x2c 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1DA

.thumb
sub_800D1E4:
    push {lr}
    mov r0, #0x29 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1E4

.thumb
sub_800D1EE:
    push {lr}
    mov r0, #0x33 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1EE

.thumb
sub_800D1F8:
    push {lr}
    mov r0, #0x34 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D1F8

.thumb
sub_800D202:
    push {lr}
    mov r0, #0x8a
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D202

.thumb
sub_800D20C:
    push {lr}
    mov r0, #0x7a 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D20C

.thumb
sub_800D216:
    push {lr}
    mov r0, #0x49 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D216

.thumb
sub_800D220:
    push {lr}
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x84
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800d244-0x800d23a-2] // =0x200000
    str r0, [r7,#0xc]
    mov r0, #0x28 
    pop {pc}
    .balign 4, 0x00
dword_800D244:    .word 0x200000
// end of function sub_800D220

loc_800D248:
    mov r0, #3
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    str r0, [r7,#0xc]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#8]
    mov r0, #0x47 
    mov pc, lr
.thumb
sub_800D264:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0xa
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D264

.thumb
sub_800D28A:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0xb
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D28A

.thumb
sub_800D2B0:
    push {lr}
    mov r0, #5
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2B0

.thumb
sub_800D2BA:
    push {lr}
    mov r0, #6
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2BA

.thumb
sub_800D2C4:
    push {lr}
    mov r0, #0x2b 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2C4

.thumb
sub_800D2CE:
    push {lr}
    mov r0, #0x73 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2CE

.thumb
sub_800D2D8:
    push {lr}
    mov r0, #4
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2D8

.thumb
sub_800D2E2:
    push {lr}
    mov r0, #0x2a 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2E2

.thumb
sub_800D2EC:
    push {lr}
    mov r0, #0x58 
    bl sub_800D3B6
    pop {pc}
// end of function sub_800D2EC

.thumb
sub_800D2F6:
    push {lr}
    mov r0, #0x30 
    bl sub_800D3B6
    mov r1, #0x50 
    strh r1, [r7,#8]
    mov r1, #0x9e
    strh r1, [r7,#0xa]
    mov r1, #0xc
    strb r1, [r7,#3]
    pop {pc}
// end of function sub_800D2F6

.thumb
sub_800D30C:
    push {lr}
    mov r0, #0x74 
    add r0, #0xff
    bl sub_800D3B6
    mov r1, #0x50 
    str r1, [r7,#8]
    mov r1, #2
    strb r1, [r7,#3]
    mov r1, #3
    strb r1, [r7,#0xc]
    pop {pc}
// end of function sub_800D30C

.thumb
sub_800D324:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0xd
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D324

.thumb
sub_800D34A:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800D722
    add r0, #1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0xe
    str r0, [r7,#0xc]
    mov r0, #8
    pop {pc}
// end of function sub_800D34A

.thumb
sub_800D370:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800d394-0x800d386-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r6,#0x1a]
    mov r0, #0x25 
    mov pc, lr
    .balign 4, 0x00
off_800D394:    .word 0x114
// end of function sub_800D370

.thumb
sub_800D398:
    push {lr}
    mov r0, #4
    bl sub_800D3B6
    mov r1, #5
    strh r1, [r7,#8]
    mov r1, #0x85
    strh r1, [r7,#0xa]
    mov r1, #1
    strb r1, [r7,#3]
    pop {pc}
// end of function sub_800D398

    push {r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0x70 
    b loc_800D3B8
.thumb
sub_800D3B6:
    push {r7,lr}
loc_800D3B8:
    strh r0, [r7,#0x14]
    bl sub_8019010
    ldr r1, [r0,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r0,#0xa]
    lsl r1, r1, #0x10
    ldrh r2, [r0,#0x1a]
    add r1, r1, r2
    str r1, [r7,#8]
    ldrb r1, [r0,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7,#6]
    ldrb r1, [r0,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r0,#4]
    strb r1, [r7,#2]
    strb r1, [r7,#4]
    ldrb r0, [r0,#0xb]
    pop {r7,pc}
// end of function sub_800D3B6

.thumb
sub_800D3E2:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    push {r0}
    bl loc_800AB56
    add r6, r0, #0
    pop {r0}
    lsl r1, r0, #3
    ldr r7, [pc, #0x800d41c-0x800d3f2-2] // dword_800D424
    add r7, r7, r1
    ldr r2, [r7]
    ldr r3, [r7,#4]
    ldr r7, [pc, #0x800d420-0x800d3fa-2] // loc_800D434
    ldrb r0, [r7,r0]
loc_800D3FE:
    mov r1, #3
loc_800D400:
    push {r0-r3,r6}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3,r6}
    bne locret_800D41A
    sub r1, #1
    bne loc_800D400
    add r0, r0, r6
    sub r4, r0, #1
    cmp r4, #6
    bls loc_800D3FE
    mov r0, #0
locret_800D41A:
    pop {r4,r6,r7,pc}
off_800D41C:    .word dword_800D424
off_800D420:    .word loc_800D434
dword_800D424:    .word 0x200000, 0x20, 0x400020, 0x0
// end of function sub_800D3E2

loc_800D434:
    lsl r1, r0, #0x18
.thumb
sub_800D436:
    push {r4,r6,r7,lr}
    add r4, r1, #0
    add r6, r2, #0
    add r7, r3, #0
loc_800D43E:
    sub r0, #4
    bmi loc_800D460
    sub r7, #1
    ldr r2, [r6,r0]
    ldrb r1, [r7]
    ldrh r3, [r2,r1]
    tst r3, r3
    beq loc_800D45C
    cmp r4, r3
    bne loc_800D43E
    add r1, #2
    strb r1, [r7]
    ldr r3, [r2,r1]
    tst r3, r3
    bne loc_800D43E
loc_800D45C:
    lsr r0, r0, #2
    pop {r4,r6,r7,pc}
loc_800D460:
    mov r0, #0xff
    pop {r4,r6,r7,pc}
// end of function sub_800D436

.thumb
sub_800D464:
    push {r4,r6,r7,lr}
    mov r1, r8
    mov r2, r9
    push {r1,r2}
    strb r0, [r7,#4]
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r6, r0, #0
    ldrb r0, [r6]
    mov r9, r0
    add r4, r0, r0
    add r4, #2
    add r4, r4, r6
    ldrh r0, [r4]
    strh r0, [r7,#0x14]
    cmp r0, #0xbc
    bne loc_800D490
    ldrb r1, [r5,#0x16]
    bl ho_8019288
    b loc_800D492
loc_800D490:
    ldrh r0, [r4,#0xc]
loc_800D492:
    strh r0, [r7,#8]
    ldrh r0, [r4,#0x18]
    ldrh r1, [r4,#0x24]
    add r0, r0, r1
    strh r0, [r7,#6]
    ldrh r0, [r7,#0x14]
    mov r1, r9
    add r1, #0x44 
    ldrb r1, [r6,r1]
    mov r2, r9
    add r2, #0x3e 
    ldrb r2, [r6,r2]
    bl sub_800EC14
    ldrh r0, [r7,#0x14]
    bl sub_8019010
    mov r8, r4
    add r4, r0, #0
    ldrb r1, [r4,#0xa]
    strh r1, [r7,#0xa]
    ldrb r1, [r4,#4]
    strb r1, [r7,#2]
    ldrb r1, [r4,#0xc]
    strb r1, [r7,#3]
    ldr r1, [r4,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r4,#0x14]
    strb r1, [r7,#5]
    mov r1, #0x24 
    bl sub_800D77A
    add r1, r0, #0
    ldrh r0, [r7,#0x14]
    ldrb r2, [r7,#4]
    tst r2, r2
    beq loc_800D4F4
    bl sub_800C43A
    ldr r2, [pc, #0x800d614-0x800d4e0-4] // =0x8000
    tst r0, r2
    beq loc_800D4F2
    push {r0}
    mov r0, #0xbc
    add r0, #0xff
    bl f500_8000558
    pop {r0}
loc_800D4F2:
    b loc_800D4F8
loc_800D4F4:
    bl sub_800C484
loc_800D4F8:
    ldrh r1, [r7,#8]
    add r1, r1, r0
    strh r1, [r7,#8]
    ldrh r0, [r7,#0x14]
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800D538
    ldrb r0, [r5,#0x16]
    bl sub_800F448
    cmp r0, #2
    bne loc_800D528
    ldrb r0, [r5,#0x16]
    mov r1, #0x99
    bl sub_800F48A
    mov r0, #0xbc
    add r0, #0xff
    bl f500_8000558
    b loc_800D530
loc_800D528:
    cmp r0, #3
    bne loc_800D538
    bl sub_800C5AA
loc_800D530:
    ldrh r1, [r7,#8]
    ldr r2, [pc, #0x800d614-0x800d532-2] // =0x8000
    orr r1, r2
    strh r1, [r7,#8]
loc_800D538:
    ldrb r0, [r4,#9]
    mov r1, #4
    tst r0, r1
    beq loc_800D54A
    ldrb r0, [r5,#0x16]
    mov r1, #6
    mov r2, #1
    bl sub_8008004
loc_800D54A:
    mov r1, r9
    add r1, #0x44 
    ldrb r1, [r6,r1]
    mov r2, #2
    tst r1, r2
    bne loc_800D580
    ldrb r0, [r4,#9]
    lsr r0, r0, #6
    bcc loc_800D580
    ldrb r0, [r5,#0x16]
    mov r1, #2
    mov r2, #1
    bl sub_8007FF0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#6]
    mov r1, #0x40 
    tst r0, r1
    bne loc_800D580
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_800F48A
    bl sub_800C5AA
loc_800D580:
    ldrh r0, [r7,#0x14]
    bl sub_800ECAA
    ldrb r0, [r5,#0x16]
    bl sub_800F552
    add r1, r0, #0
    mov r2, #0xeb
    add r2, r2, r2
    ldrb r0, [r4,#0x15]
    cmp r0, #0
    beq loc_800D5AE
    cmp r0, #1
    bne loc_800D5A2
    cmp r1, r2
    bge loc_800D5AE
    b loc_800D5A6
loc_800D5A2:
    cmp r1, r2
    blt loc_800D5AE
loc_800D5A6:
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0x20 
    b loc_800D5B0
loc_800D5AE:
    ldrb r0, [r4,#0xb]
loc_800D5B0:
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r4,r6,r7,pc}
// end of function sub_800D464

.thumb
sub_800D5B8:
    push {r4,lr}
    bl sub_8019010
    add r4, r0, #0
    ldrb r0, [r5,#0x16]
    bl sub_800F552
    add r1, r0, #0
    mov r2, #0xf0
    add r2, r2, r2
    ldrb r0, [r4,#0x15]
    cmp r0, #0
    beq loc_800D5E4
    cmp r0, #1
    bne loc_800D5DC
    cmp r1, r2
    bge loc_800D5E4
    b loc_800D5E0
loc_800D5DC:
    cmp r1, r2
    blt loc_800D5E4
loc_800D5E0:
    mov r0, #0
    pop {r4,pc}
loc_800D5E4:
    mov r0, #1
    pop {r4,pc}
// end of function sub_800D5B8

.thumb
sub_800D5E8:
    push {r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0x70 
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0x14]
    mov r0, #0xa8
    strh r0, [r7,#0xa]
    mov r0, #0x96
    strh r0, [r7,#8]
    ldr r0, [pc, #0x800d610-0x800d606-2] // =0x1E00
    str r0, [r7,#0xc]
    mov r0, #0x19
    pop {r7,pc}
    .byte 0, 0
dword_800D610:    .word 0x1E05
dword_800D614:    .word 0x8000
// end of function sub_800D5E8

.thumb
sub_800D618:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x78]
    mov r5, #0
loc_800D620:
    add r0, r5, #0
    bl sub_800D62E
    add r5, #1
    cmp r5, #8
    blt loc_800D620
    pop {r4,r5,pc}
// end of function sub_800D618

.thumb
sub_800D62E:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x78]
    mov r1, #0x40 
    mul r0, r1
    add r0, r0, r2
    bl sub_800D66E
    pop {pc}
// end of function sub_800D62E

.thumb
sub_800D640:
    push {lr}
    ldr r2, [pc, #0x800d650-0x800d642-2] // unk_203BEC0
    mov r1, #0x40 
    mul r0, r1
    add r0, r0, r2
    bl sub_800D66E
    pop {pc}
off_800D650:    .word unk_203BEC0
// end of function sub_800D640

.thumb
sub_800D654:
    push {lr}
    ldr r2, [pc, #0x800d664-0x800d656-2] // unk_203BEC0
    mov r1, #0x40 
    mul r0, r1
    add r0, r0, r2
    bl sub_800D668
    pop {pc}
off_800D664:    .word unk_203BEC0
// end of function sub_800D654

.thumb
sub_800D668:
    push {r4,lr}
    add r4, r0, #0
    b loc_800D67A
// end of function sub_800D668

.thumb
sub_800D66E:
    push {r4,lr}
    add r4, r0, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl f900_8000930
loc_800D67A:
    mov r0, #0xfa
    add r0, r0, r0
    strh r0, [r4,#0x36]
    mov r0, #1
    strb r0, [r4,#0xa]
    mov r0, #0xff
    strb r0, [r4,#0xc]
    mov r0, #0
    strb r0, [r4,#0xe]
    mov r0, #0
    strb r0, [r4,#0xf]
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r0, #0x20 
    strb r0, [r4,#0x10]
    mov r0, #4
    strb r0, [r4,#0x11]
    mov r0, #5
    strb r0, [r4,#0x12]
    mov r0, #5
    strb r0, [r4,#0x13]
    mov r0, #1
    strb r0, [r4,#0x14]
    mov r0, #0
    strb r0, [r4,#0x18]
    mov r0, #0
    strb r0, [r4,#0x19]
    mov r0, #0xff
    strb r0, [r4,#0x1b]
    mov r0, #1
    mov r1, #0x20 
    strb r0, [r4,r1]
    mov r0, #0x1f
    strb r0, [r4,#0x17]
    mov r0, #0
    strb r0, [r4,#0x15]
    mov r0, #1
    mov r1, #0x2a 
    strb r0, [r4,r1]
    mov r0, #0x99
    strb r0, [r4]
    mov r0, #0x64 
    strh r0, [r4,#0x30]
    strh r0, [r4,#0x32]
    strh r0, [r4,#0x34]
    pop {r4,pc}
// end of function sub_800D66E

    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x78]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrh r0, [r3,#0x20]
    strh r0, [r1,#0x30]
    ldrh r0, [r3,#0x22]
    strh r0, [r1,#0x32]
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrh r0, [r3,#0x16]
    strh r0, [r1,#0x34]
    pop {pc}
.thumb
sub_800D6F2:
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x800dab4-0x800d6f6-2] // unk_203BEC0
    add r0, r0, r1
    mov pc, lr
// end of function sub_800D6F2

.thumb
sub_800D6FC:
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x800dab8-0x800d700-4] // unk_203BCC0
    add r0, r0, r1
    mov pc, lr
// end of function sub_800D6FC

.thumb
sub_800D706:
    push {r6,r7,lr}
    add r6, r1, #0
    add r7, r2, #0
    bl sub_800D6F2
    strb r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_800D706

    push {r6,r7,lr}
    add r6, r1, #0
    add r7, r2, #0
    bl sub_800D6F2
    strh r7, [r0,r6]
    pop {r6,r7,pc}
.thumb
sub_800D722:
    push {r6,lr}
    add r6, r1, #0
    bl sub_800D6F2
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_800D722

.thumb
sub_800D72E:
    push {r6,lr}
    add r6, r1, #0
    bl sub_800D6F2
    ldrh r0, [r0,r6]
    pop {r6,pc}
// end of function sub_800D72E

.thumb
sub_800D73A:
    mov r3, r10
    ldr r3, [r3,#0x78]
    strb r1, [r3,r0]
    mov pc, lr
// end of function sub_800D73A

.thumb
sub_800D742:
    mov r3, r10
    ldr r3, [r3,#0x78]
    ldrb r0, [r3,r0]
    mov pc, lr
// end of function sub_800D742

.thumb
sub_800D74A:
    mov r3, r10
    ldr r3, [r3,#0x78]
    strh r1, [r3,r0]
    mov pc, lr
// end of function sub_800D74A

.thumb
sub_800D752:
    mov r3, r10
    ldr r3, [r3,#0x78]
    ldrh r0, [r3,r0]
    mov pc, lr
// end of function sub_800D752

.thumb
sub_800D75A:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    add r7, r2, #0
    bl sub_800D6F2
    strb r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_800D75A

    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    add r7, r2, #0
    bl sub_800D6F2
    strh r7, [r0,r6]
    pop {r6,r7,pc}
.thumb
sub_800D77A:
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    bl sub_800D6F2
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_800D77A

.thumb
sub_800D788:
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    bl sub_800D6F2
    ldrh r0, [r0,r6]
    pop {r6,pc}
// end of function sub_800D788

    mov r3, #0x40 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x78]
    add r3, r3, r0
    strb r2, [r3,r1]
    mov pc, lr
    mov r3, #0x40 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x78]
    add r3, r3, r0
    ldrb r0, [r3,r1]
    mov pc, lr
    mov r3, #0x40 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x78]
    add r3, r3, r0
    strh r2, [r3,r1]
    mov pc, lr
    mov r3, #0x40 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x78]
    add r3, r3, r0
    ldrh r0, [r3,r1]
    mov pc, lr
.thumb
sub_800D7CE:
    push {r4,lr}
    add r4, r1, #0
    bl sub_800D6FC
    ldrb r0, [r0,r4]
    pop {r4,pc}
// end of function sub_800D7CE

    push {r4,lr}
    add r4, r1, #0
    bl sub_800D6FC
    ldrh r0, [r0,r4]
    pop {r4,pc}
.thumb
sub_800D7E6:
    push {r6,r7,lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    bne loc_800D7F8
    bl function_chunks_loc_800D9CC
    pop {r6,r7,pc}
loc_800D7F8:
    ldrb r0, [r5,#0x16]
    bl sub_800D6F2
    add r6, r0, #0
    ldr r7, [r5,#0x58]
    mov r0, #0xa
    strh r0, [r5,#0x2e]
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_800D822
    bl sub_8007EBC
    mov r1, #8
    tst r0, r1
    bne loc_800D822
    mov r1, #0
    bl sub_800D77A
    cmp r0, #0xff
    beq loc_800D842
loc_800D822:
    ldrb r0, [r5,#0x16]
    mov r1, #0x36 
    bl sub_800D72E
    push {r0}
    mov r1, #0x1f
    bl sub_800D77A
    add r1, r0, #0
    pop {r0}
    bl sub_800F516
    mov r1, #0
    add r2, r0, #0
    bl sub_800D75A
loc_800D842:
    mov r1, #0x21 
    bl sub_800D77A
    cmp r0, #0
    beq loc_800D860
    push {r0}
    bl sub_8012D82
    pop {r4}
    push {r7}
    mov r7, #0x50 
    add r7, r7, r5
    bl sub_80E2512
    pop {r7}
loc_800D860:
    mov r1, #0xd
    bl sub_800D77A
    cmp r0, #0xff
    bne loc_800D870
    ldr r0, [r5,#0x54]
    ldr r1, [pc, #0x800dabc-0x800d86c-4] // =0x2D0
    strh r1, [r0,#0x12]
loc_800D870:
    b loc_800D87E
// end of function sub_800D7E6

.thumb
sub_800D872:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800D6F2
    add r6, r0, #0
    ldr r7, [r5,#0x58]
loc_800D87E:
    ldrb r0, [r6,#0xa]
    strb r0, [r7,#0xf]
    ldrb r0, [r6,#0xb]
    strb r0, [r7,#8]
    ldrb r0, [r6,#0xc]
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#5]
    ldr r0, [pc, #0x800dac0-0x800d88e-2] // start_
    bl sub_8012F40
    mov r0, #0x28 
    ldrb r0, [r6,r0]
    cmp r0, #1
    bne loc_800D8A2
    mov r0, #1
    bl sub_8012F36
loc_800D8A2:
    bl sub_800AFF2
    ldr r0, [r7,#0x5c]
    tst r0, r0
    beq loc_800D8B4
    bl sub_80E6894
    mov r0, #0
    str r0, [r7,#0x5c]
loc_800D8B4:
    b loc_800D8CE
// end of function sub_800D872

.thumb
sub_800D8B6:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800D6F2
    add r6, r0, #0
    ldr r7, [r5,#0x58]
    ldrb r0, [r6,#0xa]
    strb r0, [r7,#0xf]
    ldrb r0, [r6,#0xb]
    strb r0, [r7,#8]
    ldrb r0, [r6,#0xc]
    strb r0, [r7]
loc_800D8CE:
    mov r0, #0x20 
    ldrb r1, [r6,#2]
    tst r1, r1
    beq loc_800D8E8
    bl sub_8012F36
    bl sub_800C928
    mov r1, #0x10
    mov r2, #2
    bl sub_8012E84
    b loc_800D8F8
loc_800D8E8:
    bl sub_8012F40
    bl sub_800C928
    mov r1, #1
    mov r2, #2
    bl sub_8012E84
loc_800D8F8:
    mov r0, #0x10
    ldrb r1, [r6,#3]
    tst r1, r1
    beq loc_800D906
    bl sub_8012F36
    b loc_800D90A
loc_800D906:
    bl sub_8012F40
loc_800D90A:
    ldr r0, [pc, #0x800dac4-0x800d90a-2] // unk_2000000
    bl sub_8012F36
    mov r0, #1
    lsl r0, r0, #0x12
    ldrb r1, [r6,#4]
    tst r1, r1
    beq loc_800D920
    bl sub_8012F36
    b loc_800D924
loc_800D920:
    bl sub_8012F40
loc_800D924:
    mov r0, #1
    lsl r0, r0, #0x11
    ldrb r1, [r6,#1]
    tst r1, r1
    beq loc_800D934
    bl sub_8012F36
    b locret_800D938
loc_800D934:
    bl sub_8012F40
locret_800D938:
    pop {r6,r7,pc}
// end of function sub_800D8B6

.thumb
sub_800D93A:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800D97E
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800D97E
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_800D97E
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_800D996
    ldrb r0, [r5,#0x16]
    bl sub_800F448
    cmp r0, #2
    bne loc_800D97E
    mov r1, #0x22 
    mov r2, #1
    bl sub_800D75A
    ldr r7, [r5,#0x58]
    add r7, #0x60 
    ldr r0, [r7]
    tst r0, r0
    bne loc_800D986
    bl sub_80CD16A
    b loc_800D986
loc_800D97E:
    mov r1, #0x22 
    mov r2, #0
    bl sub_800D75A
loc_800D986:
    mov r1, #0x28 
    bl sub_800D77A
    tst r0, r0
    beq locret_800D996
    mov r0, #1
    bl sub_8012F36
locret_800D996:
    pop {pc}
// end of function sub_800D93A

.thumb
sub_800D998:
    push {lr}
    ldr r3, [r5,#0x54]
    mov r1, #0x48 
    ldrb r1, [r3,r1]
    tst r1, r1
    beq loc_800D9C2
    cmp r1, #0xff
    bne loc_800D9B6
    ldrb r0, [r5,#0x16]
    mov r1, #0x49 
    ldrb r1, [r3,r1]
    mov r2, #1
    bl sub_8047608
    b loc_800D9BE
loc_800D9B6:
    mov r2, #0x49 
    ldrb r2, [r3,r2]
    bl sub_800D75A
loc_800D9BE:
    bl sub_800D8B6
loc_800D9C2:
    bl sub_800BD0C
    bl sub_800BCB8
    pop {pc}
// end of function sub_800D998

function_chunks_loc_800D9CC:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800D654
    b loc_800D9DE
.thumb
sub_800D9D6:
    push {r4,r6,lr}
    ldr r0, [pc, #0x800dac8-0x800d9d8-4] // =0x20000
    bl sub_8012F40
loc_800D9DE:
    mov r1, #0x23 
    bl sub_800D77A
    add r6, r0, #0
    lsl r6, r6, #2
    ldr r1, [pc, #0x800d9f4-0x800d9e8-4] // jt_800D9F8
    ldr r1, [r6,r1]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .balign 4, 0x00
off_800D9F4:    .word jt_800D9F8
jt_800D9F8:    .word nullsub_70+1
    .word sub_800DA2E+1
    .word sub_800DA4A+1
    .word sub_800DA64+1
    .word nullsub_70+1
    .word nullsub_70+1
    .word nullsub_70+1
    .word nullsub_70+1
    .word nullsub_70+1
    .word sub_800DA88+1
    .word nullsub_70+1
    .word nullsub_70+1
    .word nullsub_70+1
// end of function sub_800D9D6

.thumb
nullsub_70:
    mov pc, lr
// end of function nullsub_70

.thumb
sub_800DA2E:
    push {lr}
    mov r0, #0x20 
    bl sub_8012F36
    mov r1, #0x10
    mov r2, #2
    mov r3, #0
    bl sub_8012E84
    mov r1, #2
    mov r2, #1
    bl sub_800D75A
    pop {pc}
// end of function sub_800DA2E

.thumb
sub_800DA4A:
    push {lr}
    ldr r0, [pc, #0x800dacc-0x800da4c-4] // =0x60000
    bl sub_8012F36
    mov r1, #1
    mov r2, #1
    bl sub_800D75A
    mov r1, #4
    mov r2, #1
    bl sub_800D75A
    pop {pc}
// end of function sub_800DA4A

.thumb
sub_800DA64:
    push {lr}
    mov r0, #0x30 
    bl sub_8012F36
    mov r1, #0x10
    mov r2, #2
    mov r3, #0
    bl sub_8012E84
    mov r1, #2
    mov r2, #1
    bl sub_800D75A
    mov r1, #3
    mov r2, #1
    bl sub_800D75A
    pop {pc}
// end of function sub_800DA64

.thumb
sub_800DA88:
    push {lr}
    ldr r0, [pc, #0x800dac8-0x800da8a-2] // =0x20000
    bl sub_8012F36
    mov r1, #1
    mov r2, #1
    bl sub_800D75A
    mov r0, #0x20 
    bl sub_8012F36
    mov r1, #0x10
    mov r2, #2
    mov r3, #0
    bl sub_8012E84
    mov r1, #2
    mov r2, #1
    bl sub_800D75A
    pop {pc}
    .balign 4, 0x00
off_800DAB4:    .word unk_203BEC0
off_800DAB8:    .word unk_203BCC0
off_800DABC:    .word 0x2D0
dword_800DAC0:    .word 0x8000001
off_800DAC4:    .word unk_2000000
dword_800DAC8:    .word 0x20000
dword_800DACC:    .word 0x60000
// end of function sub_800DA88

.thumb
ho_800DAD0:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    lsl r0, r0, #2
    ldr r1, [pc, #0x800dae4-0x800dada-2] // jt_800DAE8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_800DAE4:    .word jt_800DAE8
jt_800DAE8:    .word locret_800DB1C+1
    .word locret_800DB1E+1
    .word locret_800DB20+1
    .word sub_800DB22+1
    .word nullsub_22+1
    .word sub_800DB4C+1
    .word sub_800DB5C+1
    .word sub_800DB94+1
    .word sub_800DBC8+1
    .word sub_800DBD4+1
    .word sub_800DC04+1
    .word sub_800DC38+1
    .word nullsub_23+1
// end of function ho_800DAD0

locret_800DB1C:
    mov pc, lr
locret_800DB1E:
    mov pc, lr
locret_800DB20:
    mov pc, lr
.thumb
sub_800DB22:
    push {r4,lr}
    mov r4, #2
    bl sub_80CCE28
    str r0, [r5,#0x64]
    tst r0, r0
    beq loc_800DB36
    mov r1, #0x60 
    add r1, r1, r5
    str r1, [r0,#0x60]
loc_800DB36:
    mov r4, #3
    bl sub_80CCE28
    str r0, [r5,#0x68]
    tst r0, r0
    beq locret_800DB48
    mov r1, #0x60 
    add r1, r1, r5
    str r1, [r0,#0x60]
locret_800DB48:
    pop {r4,pc}
// end of function sub_800DB22

.thumb
nullsub_22:
    mov pc, lr
// end of function nullsub_22

.thumb
sub_800DB4C:
    push {r4,lr}
    mov r4, #8
    lsl r4, r4, #8
    add r4, #0x10
    bl sub_80CC4E8
    str r0, [r5,#0x60]
    pop {r4,pc}
// end of function sub_800DB4C

.thumb
sub_800DB5C:
    push {lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    beq locret_800DB82
    mov r1, #0x25 
    bl sub_800D77A
    add r2, r0, #0
    mov r1, #8
    mul r1, r0
    mov r0, #0x14
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r3, [pc, #0x800db84-0x800db7a-2] // dword_800DB88
    ldrb r1, [r3,r2]
    bl sub_80C3CCC
locret_800DB82:
    pop {pc}
off_800DB84:    .word dword_800DB88
dword_800DB88:    .word 0x0
    .word 0x2010101
    .word 0x20202
// end of function sub_800DB5C

.thumb
sub_800DB94:
    push {r7,lr}
    mov r1, #0x25 
    bl sub_800D77A
    ldr r1, [pc, #0x800dbb8-0x800db9c-4] // dword_800DBBC
    ldrb r0, [r1,r0]
    str r0, [r5,#0x64]
    mov r0, #2
    bl sub_80F2F6C
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    ldr r0, [r7,#8]
    str r0, [r5,#0x60]
    mov r0, #0
    str r0, [r5,#0x6c]
    pop {r7,pc}
off_800DBB8:    .word dword_800DBBC
dword_800DBBC:    .word 0x0
    .word 0x2010101
    .word 0x20202
// end of function sub_800DB94

.thumb
sub_800DBC8:
    push {r4,lr}
    mov r4, #0
    bl sub_80CCE28
    str r0, [r5,#0x74]
    pop {r4,pc}
// end of function sub_800DBC8

.thumb
sub_800DBD4:
    push {lr}
    mov r0, #3
    bl sub_80F3EA4
    mov r1, #0x26 
    bl sub_800D77A
    bl sub_80C789C
    mov r1, #0x25 
    bl sub_800D77A
    ldr r1, [pc, #0x800dbf4-0x800dbec-4] // dword_800DBF8
    ldrb r0, [r1,r0]
    str r0, [r5,#0x60]
    pop {pc}
off_800DBF4:    .word dword_800DBF8
dword_800DBF8:    .word 0x0
    .word 0x2010101
    .word 0x20202
// end of function sub_800DBD4

.thumb
sub_800DC04:
    push {r7,lr}
    bl sub_80C91BC
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    mov r0, #2
    bl sub_80F42BC
    ldr r0, [r7,#8]
    str r0, [r5,#0x68]
    mov r1, #0x25 
    bl sub_800D77A
    ldr r1, [pc, #0x800dc28-0x800dc20-4] // dword_800DC2C
    ldrb r0, [r1,r0]
    str r0, [r5,#0x60]
    pop {r7,pc}
off_800DC28:    .word dword_800DC2C
dword_800DC2C:    .word 0x0
    .word 0x2010101
    .word 0x20202
// end of function sub_800DC04

.thumb
sub_800DC38:
    push {r4,lr}
    bl sub_800BFC2
    lsl r4, r0, #8
    add r4, #1
    bl sub_80CCE28
    str r0, [r5,#0x74]
    pop {r4,pc}
// end of function sub_800DC38

.thumb
nullsub_23:
    mov pc, lr
// end of function nullsub_23

.thumb
ho_800DC4C:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    lsl r0, r0, #2
    ldr r1, [pc, #0x800dc60-0x800dc56-2] // jt_800DC64
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_800DC60:    .word jt_800DC64
jt_800DC64:    .word sub_800DC98+1
    .word nullsub_24+1
    .word nullsub_25+1
    .word nullsub_26+1
    .word nullsub_27+1
    .word sub_800DCAC+1
    .word nullsub_28+1
    .word nullsub_29+1
    .word nullsub_30+1
    .word nullsub_31+1
    .word nullsub_32+1
    .word nullsub_33+1
    .word nullsub_34+1
// end of function ho_800DC4C

.thumb
sub_800DC98:
    push {lr}
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x48]
    bl sub_80CC50E
    pop {pc}
// end of function sub_800DC98

.thumb
nullsub_24:
    mov pc, lr
// end of function nullsub_24

.thumb
nullsub_25:
    mov pc, lr
// end of function nullsub_25

.thumb
nullsub_26:
    mov pc, lr
// end of function nullsub_26

.thumb
nullsub_27:
    mov pc, lr
// end of function nullsub_27

.thumb
sub_800DCAC:
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_80CC50E
    pop {pc}
// end of function sub_800DCAC

.thumb
nullsub_28:
    mov pc, lr
// end of function nullsub_28

.thumb
nullsub_29:
    mov pc, lr
// end of function nullsub_29

.thumb
nullsub_30:
    mov pc, lr
// end of function nullsub_30

.thumb
nullsub_31:
    mov pc, lr
// end of function nullsub_31

.thumb
nullsub_32:
    mov pc, lr
// end of function nullsub_32

.thumb
nullsub_33:
    mov pc, lr
// end of function nullsub_33

.thumb
nullsub_34:
    mov pc, lr
// end of function nullsub_34

.thumb
sub_800DCC4:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    lsl r0, r0, #2
    ldr r1, [pc, #0x800dcd8-0x800dcce-2] // jt_800DCDC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_800DCD8:    .word jt_800DCDC
jt_800DCDC:    .word locret_800DD10+1
    .word locret_800DD12+1
    .word locret_800DD14+1
    .word locret_800DD16+1
    .word locret_800DD18+1
    .word sub_800DD1A+1
    .word nullsub_35+1
    .word nullsub_36+1
    .word nullsub_37+1
    .word nullsub_38+1
    .word nullsub_39+1
    .word nullsub_40+1
    .word nullsub_41+1
// end of function sub_800DCC4

locret_800DD10:
    mov pc, lr
locret_800DD12:
    mov pc, lr
locret_800DD14:
    mov pc, lr
locret_800DD16:
    mov pc, lr
locret_800DD18:
    mov pc, lr
.thumb
sub_800DD1A:
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_80CC50E
    pop {pc}
// end of function sub_800DD1A

.thumb
nullsub_35:
    mov pc, lr
// end of function nullsub_35

.thumb
nullsub_36:
    mov pc, lr
// end of function nullsub_36

.thumb
nullsub_37:
    mov pc, lr
// end of function nullsub_37

.thumb
nullsub_38:
    mov pc, lr
// end of function nullsub_38

.thumb
nullsub_39:
    mov pc, lr
// end of function nullsub_39

.thumb
nullsub_40:
    mov pc, lr
// end of function nullsub_40

.thumb
nullsub_41:
    mov pc, lr
// end of function nullsub_41

.thumb
sub_800DD32:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    lsl r0, r0, #2
    ldr r1, [pc, #0x800dd48-0x800dd3c-4] // off_800DD4C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800DD48:    .word off_800DD4C
off_800DD4C:    .word locret_800DD80+1
    .word locret_800DD82+1
    .word locret_800DD84+1
    .word locret_800DD86+1
    .word locret_800DD88+1
    .word sub_800DD8A+1
    .word nullsub_42+1
    .word nullsub_43+1
    .word nullsub_44+1
    .word nullsub_45+1
    .word nullsub_46+1
    .word nullsub_47+1
    .word nullsub_48+1
// end of function sub_800DD32

locret_800DD80:
    mov pc, lr
locret_800DD82:
    mov pc, lr
locret_800DD84:
    mov pc, lr
locret_800DD86:
    mov pc, lr
locret_800DD88:
    mov pc, lr
.thumb
sub_800DD8A:
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_80CC50E
    pop {pc}
// end of function sub_800DD8A

.thumb
nullsub_42:
    mov pc, lr
// end of function nullsub_42

.thumb
nullsub_43:
    mov pc, lr
// end of function nullsub_43

.thumb
nullsub_44:
    mov pc, lr
// end of function nullsub_44

.thumb
nullsub_45:
    mov pc, lr
// end of function nullsub_45

.thumb
nullsub_46:
    mov pc, lr
// end of function nullsub_46

.thumb
nullsub_47:
    mov pc, lr
// end of function nullsub_47

.thumb
nullsub_48:
    mov pc, lr
// end of function nullsub_48

.thumb
sub_800DDA2:
    push {lr}
    ldr r1, [pc, #0x800ddb4-0x800dda4-4] // off_800DDB8
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_800DDB4:    .word off_800DDB8
off_800DDB8:    .word sub_800DDC4+1
    .word sub_800DE08+1
    .word sub_800DE3A+1
// end of function sub_800DDA2

.thumb
sub_800DDC4:
    push {lr}
    bl sub_80405D8
    beq loc_800DDD8
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800ddf4-0x800ddd2-2] // byte_800DDF8
    ldrb r1, [r1,r0]
    b loc_800DDEE
loc_800DDD8:
    mov r1, #0x23 
    bl sub_800D77A
    mov r1, #0
    cmp r0, #0
    beq loc_800DDEE
    mov r1, #0x25 
    bl sub_800D77A
    mov r1, #0xa
    mul r1, r0
loc_800DDEE:
    strh r1, [r5,#0x2c]
    pop {pc}
    .balign 4, 0x00
off_800DDF4:    .word byte_800DDF8
byte_800DDF8:    .byte 0x50
    .byte 0x46 
    .byte 0x64 
    .byte 0x50 
    .byte 0x50 
    .byte 0x5A 
    .byte 0x50 
    .byte 0x50 
    .byte 0x46 
    .byte 0x64 
    .byte 0x5A 
    .byte 0x46 
    .byte 0x64 
    .byte 0
    .balign 4, 0x00
// end of function sub_800DDC4

.thumb
sub_800DE08:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800de1c-0x800de10-4] // dword_800DE20
    add r0, r0, r0
    ldrh r0, [r1,r0]
    strh r0, [r5,#0x2c]
    pop {pc}
    .balign 4, 0x00
off_800DE1C:    .word dword_800DE20
dword_800DE20:    .word 0xC80000, 0xC800A0, 0xA000C8, 0x2800C8, 0xC800A0, 0xA000C8
    .hword 0xC8
// end of function sub_800DE08

.thumb
sub_800DE3A:
    push {lr}
    mov r1, #0x25 
    bl sub_800D77A
    mov r1, #0xa
    mul r0, r1
    strh r0, [r5,#0x2c]
    pop {pc}
// end of function sub_800DE3A

.thumb
ho_800DE4A:
    push {lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800DE74
    mov r1, #0x32 
    bl sub_800D788
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    bl sub_8007EBC
    mov r1, #1
    tst r0, r1
    bne loc_800DE72
    mov r1, #0x30 
    bl sub_800D788
    strh r0, [r5,#0x24]
loc_800DE72:
    b loc_800DE96
loc_800DE74:
    cmp r0, #1
    bne loc_800DE86
    ldr r1, [pc, #0x800dea4-0x800de78-4] // jt_800DEAC
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b loc_800DE96
loc_800DE86:
    mov r1, #0x23 
    bl sub_800D77A
    add r1, r0, r0
    ldr r0, [pc, #0x800dea8-0x800de8e-2] // loc_800DEB8
    ldrh r0, [r1,r0]
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
loc_800DE96:
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    bne locret_800DEA2
    bl sub_8015AEA
locret_800DEA2:
    pop {pc}
off_800DEA4:    .word jt_800DEAC
off_800DEA8:    .word loc_800DEB8
jt_800DEAC:    .word sub_800DED2+1
    .word sub_800DEE0+1
    .word sub_800DF2E+1
// end of function ho_800DE4A

loc_800DEB8:
    lsl r0, r4, #0xc
    lsl r4, r7, #0xa
    lsl r0, r5, #0xf
    lsl r0, r4, #0xc
    lsl r0, r4, #0xc
    lsl r4, r0, #0xe
    lsl r0, r4, #0xc
    lsl r0, r4, #0xc
    lsl r4, r7, #0xa
    lsl r0, r5, #0xf
    lsl r4, r0, #0xe
    lsl r4, r7, #0xa
    lsl r0, r5, #0xf
.thumb
sub_800DED2:
    push {lr}
    mov r1, #0x32 
    bl sub_800D788
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    pop {pc}
// end of function sub_800DED2

.thumb
sub_800DEE0:
    push {r4,lr}
    mov r1, #0x32 
    bl sub_800D788
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800df10-0x800def2-2] // dword_800DF14
    add r0, r0, r0
    ldrh r4, [r1,r0]
    tst r4, r4
    beq locret_800DF0C
    mov r1, #0x25 
    bl sub_800D77A
    mov r1, #0x64 
    mul r0, r1
    add r0, r0, r4
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
locret_800DF0C:
    pop {r4,pc}
    .byte 0, 0
off_800DF10:    .word dword_800DF14
dword_800DF14:    .word 0x1F40000, 0x1F401F4, 0x25802BC, 0x1F401F4, 0x1F401F4
    .word 0x1F40258
// end of function sub_800DEE0

    lsl r0, r4, #0xc
.thumb
sub_800DF2E:
    push {lr}
    mov r1, #0x32 
    bl sub_800D788
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x800df5c-0x800df40-4] // dword_800DF60
    add r0, r0, r0
    ldrh r4, [r1,r0]
    tst r4, r4
    beq locret_800DF5A
    mov r1, #0x25 
    bl sub_800D77A
    mov r1, #0x64 
    mul r0, r1
    add r0, r0, r4
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
locret_800DF5A:
    pop {pc}
off_800DF5C:    .word dword_800DF60
dword_800DF60:    .word 0x0
    .word 0x1F4
    .word 0x0, 0x0, 0x0
    .word 0x12C0000, 0x0
// end of function sub_800DF2E

.thumb
ho_800DF7C:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    lsl r0, r0, #2
    ldr r1, [pc, #0x800df90-0x800df86-2] // jt_800DF94
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_800DF90:    .word jt_800DF94
jt_800DF94:    .word locret_800DFC8+1
    .word locret_800DFCA+1
    .word locret_800DFCC+1
    .word locret_800DFCE+1
    .word sub_800DFD0+1
    .word nullsub_49+1
    .word sub_800DFD6+1
    .word sub_800DFDA+1
    .word nullsub_50+1
    .word sub_800DFEA+1
    .word sub_800DFEE+1
    .word nullsub_51+1
    .word nullsub_52+1
// end of function ho_800DF7C

locret_800DFC8:
    mov pc, lr
locret_800DFCA:
    mov pc, lr
locret_800DFCC:
    mov pc, lr
locret_800DFCE:
    mov pc, lr
.thumb
sub_800DFD0:
    push {lr}
    pop {pc}
// end of function sub_800DFD0

.thumb
nullsub_49:
    mov pc, lr
// end of function nullsub_49

.thumb
sub_800DFD6:
    push {lr}
    pop {pc}
// end of function sub_800DFD6

.thumb
sub_800DFDA:
    push {r7,lr}
    ldr r0, [r5,#0x64]
    tst r0, r0
    beq locret_800DFE6
    bl sub_80C5F3C
locret_800DFE6:
    pop {r7,pc}
// end of function sub_800DFDA

.thumb
nullsub_50:
    mov pc, lr
// end of function nullsub_50

.thumb
sub_800DFEA:
    push {lr}
    pop {pc}
// end of function sub_800DFEA

.thumb
sub_800DFEE:
    push {lr}
    mov r0, #0x6f 
    bl sub_80C93D8
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    beq locret_800E004
    bl sub_80C93EE
locret_800E004:
    pop {pc}
// end of function sub_800DFEE

.thumb
nullsub_51:
    mov pc, lr
// end of function nullsub_51

.thumb
nullsub_52:
    mov pc, lr
    .balign 4, 0x00
// end of function nullsub_52

.thumb
ho_800E00C:
    push {r4,lr}
    bl sub_800D872
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r0, #0x26 
    mov r1, #0xc
    bl f900_8000910
    mov r1, #0x24 
    bl sub_800D77A
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r1, [pc, #0x800e04c-0x800e02a-2] // jt_800E050
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    add r0, r4, #0
    bl sub_800BA08
    bl sub_800BD6E
    bl sub_800BD0C
    bl sub_800BCB8
    bl sub_800C8F0
    pop {r4,pc}
    .balign 4, 0x00
off_800E04C:    .word jt_800E050
jt_800E050:    .word locret_800E090+1
    .word locret_800E092+1
    .word sub_800E094+1
    .word sub_800E0A4+1
    .word sub_800E0EE+1
    .word sub_800E0CC+1
    .word locret_800E090+1
    .word loc_800E0DC+1
    .word sub_800E0E4+1
    .word locret_800E090+1
    .word sub_800E0F6+1
    .word locret_800E090+1
    .word sub_800E124+1
    .word locret_800E090+1
    .word locret_800E090+1
    .word sub_800E12E+1
// end of function ho_800E00C

locret_800E090:
    mov pc, lr
locret_800E092:
    mov pc, lr
.thumb
sub_800E094:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800E17A
    pop {r4,pc}
    .byte 0, 0
    .word 0xA0203
// end of function sub_800E094

.thumb
sub_800E0A4:
    push {r4,lr}
    mov r0, #0x30 
    bl sub_8012F36
    mov r1, #0x10
    mov r2, #2
    mov r3, #0
    bl sub_8012E84
    mov r4, #1
    bl sub_80E67D0
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x5c]
    ldrb r0, [r5,#0x16]
    bl sub_800E1B8
    pop {r4,pc}
    .word 0x1B00FF80
// end of function sub_800E0A4

.thumb
sub_800E0CC:
    push {r4,lr}
    ldr r4, [pc, #0x800e0d8-0x800e0ce-2] // =0xA0306
    bl sub_80E34EC
    pop {r4,pc}
    .balign 4, 0x00
dword_800E0D8:    .word 0xA0306
// end of function sub_800E0CC

loc_800E0DC:
    ldr r0, [r5,#0x58]
    mov r1, #0x6a 
    strb r1, [r0]
    mov pc, lr
.thumb
sub_800E0E4:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800E144
    pop {pc}
// end of function sub_800E0E4

.thumb
sub_800E0EE:
    push {lr}
    bl sub_80E6D24
    pop {pc}
// end of function sub_800E0EE

.thumb
sub_800E0F6:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    ldrb r6, [r5,#0x16]
    lsl r6, r6, #2
    ldr r4, [pc, #0x800e114-0x800e104-4] // dword_800E118
    ldr r4, [r4,r6]
    mov r6, #0
    ldr r7, [pc, #0x800e120-0x800e10a-2] // =0x2100
    bl sub_80CD712
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_800E114:    .word dword_800E118
dword_800E118:    .word 0x1705FF85, 0x1705FF84
off_800E120:    .word 0x2100
// end of function sub_800E0F6

.thumb
sub_800E124:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800E244
    pop {pc}
// end of function sub_800E124

.thumb
sub_800E12E:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_800F48A
    ldr r0, [pc, #0x800e23c-0x800e138-4] // start_
    bl sub_8012F36
    bl sub_800EA70
    pop {pc}
// end of function sub_800E12E

.thumb
sub_800E144:
    push {r4,r6,lr}
    bl sub_800BFAE
    add r4, r0, #0
    ldrb r6, [r4]
    add r6, r6, r6
    add r6, #2
    add r6, r6, r4
loc_800E154:
    ldrh r0, [r6]
    ldr r1, [pc, #0x800e240-0x800e156-2] // =0xFFFF
    cmp r0, r1
    beq locret_800E178
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800E174
    ldrb r1, [r0,#7]
    cmp r1, #0xc
    bne loc_800E174
    ldrh r1, [r6,#0x24]
    add r1, #0xa
    strh r1, [r6,#0x24]
loc_800E174:
    add r6, #2
    b loc_800E154
locret_800E178:
    pop {r4,r6,pc}
// end of function sub_800E144

.thumb
sub_800E17A:
    push {r4,r6,lr}
    bl sub_800BFAE
    add r4, r0, #0
    ldrb r6, [r4]
    add r6, r6, r6
    add r6, #2
    add r6, r6, r4
loc_800E18A:
    ldrh r0, [r6]
    ldr r1, [pc, #0x800e240-0x800e18c-4] // =0xFFFF
    cmp r0, r1
    beq locret_800E1B6
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800E1B2
    ldrb r1, [r0,#7]
    cmp r1, #0xc
    beq loc_800E1AC
    ldrb r1, [r0,#7]
    cmp r1, #8
    beq loc_800E1AC
    b loc_800E1B2
loc_800E1AC:
    ldrh r1, [r6,#0x24]
    add r1, #0x1e
    strh r1, [r6,#0x24]
loc_800E1B2:
    add r6, #2
    b loc_800E18A
locret_800E1B6:
    pop {r4,r6,pc}
// end of function sub_800E17A

.thumb
sub_800E1B8:
    push {r4,r6,lr}
    bl sub_800BFAE
    add r4, r0, #0
    ldrb r6, [r4]
    add r6, r6, r6
    add r6, #2
    add r6, r6, r4
loc_800E1C8:
    ldrh r0, [r6]
    ldr r1, [pc, #0x800e240-0x800e1ca-2] // =0xFFFF
    cmp r0, r1
    beq locret_800E1EE
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800E1EA
    ldrb r1, [r0,#7]
    cmp r1, #0xa
    beq loc_800E1E4
    b loc_800E1EA
loc_800E1E4:
    ldrh r1, [r6,#0x24]
    add r1, #0xa
    strh r1, [r6,#0x24]
loc_800E1EA:
    add r6, #2
    b loc_800E1C8
locret_800E1EE:
    pop {r4,r6,pc}
// end of function sub_800E1B8

.thumb
sub_800E1F0:
    mov r0, #0
    mov pc, lr
// end of function sub_800E1F0

    ldr r3, [r5,#0x58]
    ldrb r0, [r3,#5]
    cmp r0, #5
    bge loc_800E200
    mov r0, #0
    mov pc, lr
loc_800E200:
    mov r0, #1
    mov pc, lr
    mov pc, lr
    push {lr}
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    beq locret_800E21C
    cmp r0, #0xf
    beq locret_800E21C
    ldr r1, [r5,#0x58]
    mov r2, #1
    strh r2, [r1,#0x2c]
locret_800E21C:
    pop {pc}
.thumb
sub_800E21E:
    push {lr}
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0
    beq locret_800E23A
    cmp r0, #0xf
    beq locret_800E23A
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#5]
    cmp r0, #5
    bge locret_800E23A
    add r0, #1
    strb r0, [r1,#5]
locret_800E23A:
    pop {pc}
off_800E23C:    .word start_
dword_800E240:    .word 0xFFFF
// end of function sub_800E21E

.thumb
sub_800E244:
    push {r4-r7,lr}
    bl sub_800BFAE
    ldrb r4, [r0]
    add r4, r4, r4
    add r4, #2
    add r4, r4, r0
loc_800E252:
    ldrh r0, [r4]
    ldr r3, [pc, #0x800e2d4-0x800e254-4] // =0xFFFF
    cmp r0, r3
    beq locret_800E2D2
    bl sub_8019010
    ldrb r1, [r0,#7]
    cmp r1, #3
    bne loc_800E2CE
    add r5, r4, #2
    ldrh r0, [r5]
    ldr r3, [pc, #0x800e2d4-0x800e268-4] // =0xFFFF
    cmp r0, r3
    beq locret_800E2D2
    bl sub_8019010
    ldrb r1, [r0,#7]
    cmp r1, #0xf
    beq loc_800E2CE
    cmp r1, #0xe
    beq loc_800E2CE
    cmp r1, #0xc
    bne loc_800E2CE
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800E2CE
    ldrh r0, [r5,#0xc]
    ldrh r1, [r4,#0xc]
    add r1, r1, r0
    strh r1, [r4,#0xc]
    ldrh r0, [r5,#0x18]
    ldrh r1, [r4,#0x18]
    add r1, r1, r0
    strh r1, [r4,#0x18]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r4,#0x24]
    add r1, r1, r0
    strh r1, [r4,#0x24]
loc_800E2A0:
    add r6, r5, #2
    ldrh r0, [r6,#0xc]
    strh r0, [r5,#0xc]
    ldrh r0, [r6,#0x18]
    strh r0, [r5,#0x18]
    ldrh r0, [r6,#0x24]
    strh r0, [r5,#0x24]
    ldrh r0, [r6,#0x30]
    strh r0, [r5,#0x30]
    mov r1, #0x3c 
    ldrb r0, [r6,r1]
    strb r0, [r5,r1]
    mov r1, #0x42 
    ldrb r0, [r6,r1]
    strb r0, [r5,r1]
    ldrh r0, [r6]
    strh r0, [r5]
    ldr r1, [pc, #0x800e2d4-0x800e2c2-2] // =0xFFFF
    cmp r0, r1
    beq loc_800E2CE
    add r5, #2
    add r6, #2
    b loc_800E2A0
loc_800E2CE:
    add r4, #2
    b loc_800E252
locret_800E2D2:
    pop {r4-r7,pc}
dword_800E2D4:    .word 0xFFFF
// end of function sub_800E244

.thumb
sub_800E2D8:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    ldr r7, [r6,#0x50]
    ldrb r0, [r7,#1]
    ldr r1, [pc, #0x800e2ec-0x800e2e0-4] // off_800E2F0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,r7,pc}
    .balign 4, 0x00
off_800E2EC:    .word off_800E2F0
off_800E2F0:    .word sub_800E2F8+1
    .word sub_800E788+1
// end of function sub_800E2D8

.thumb
sub_800E2F8:
    push {lr}
    ldrb r0, [r7,#2]
    ldr r1, [pc, #0x800e308-0x800e2fc-4] // off_800E30C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800E308:    .word off_800E30C
off_800E30C:    .word sub_800E320+1
    .word sub_800E3CC+1
    .word sub_800E3E0+1
    .word sub_800E456+1
    .word sub_800E488+1
// end of function sub_800E2F8

.thumb
sub_800E320:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8007C0E
    tst r0, r0
    bne loc_800E332
    mov r0, #0
    strb r0, [r7]
    pop {pc}
loc_800E332:
    mov r1, #4
    strb r1, [r7,#2]
    bl sub_800EA4C
    cmp r0, #0x32 
    blt loc_800E356
    bl sub_800E8BA
    ldr r1, [pc, #0x800e3c8-0x800e342-2] // =0xFFFF
    cmp r0, r1
    beq loc_800E356
    bl sub_800EAC8
    bl sub_800E95E
    mov r0, #0
    strh r0, [r7,#0x20]
    pop {pc}
loc_800E356:
    bl sub_800EA5E
    cmp r0, #0x32 
    blt loc_800E376
    bl sub_800E8FC
    ldr r1, [pc, #0x800e3c8-0x800e362-2] // =0xFFFF
    cmp r0, r1
    beq loc_800E376
    bl sub_800EAC8
    bl sub_800E95E
    mov r0, #0
    strh r0, [r7,#0x22]
    pop {pc}
loc_800E376:
    ldrb r0, [r7,#4]
    cmp r0, #5
    blt loc_800E380
    bl sub_800EB0A
loc_800E380:
    bl sub_800E93E
    ldr r1, [pc, #0x800e3c8-0x800e384-4] // =0xFFFF
    cmp r0, r1
    beq loc_800E3BE
    strh r0, [r7,#0x24]
    lsr r0, r0, #0x10
    bcc loc_800E39A
    mov r0, #8
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#0xb]
    pop {pc}
loc_800E39A:
    ldrh r0, [r7,#0x24]
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    beq loc_800E3B4
    ldrb r0, [r7,#4]
    tst r0, r0
    bne loc_800E3B4
    mov r0, #0x10
    strb r0, [r7,#2]
    pop {pc}
loc_800E3B4:
    mov r0, #4
    strb r0, [r7,#1]
    mov r0, #0
    strb r0, [r7,#3]
    pop {pc}
loc_800E3BE:
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
    pop {pc}
    .balign 4, 0x00
dword_800E3C8:    .word 0xFFFF
// end of function sub_800E320

.thumb
sub_800E3CC:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8001AF6
    lsr r0, r0, #1
    bcc locret_800E3DE
    mov r0, #0
    strb r0, [r7]
locret_800E3DE:
    pop {pc}
// end of function sub_800E3CC

.thumb
sub_800E3E0:
    push {r4,lr}
    ldrh r0, [r7,#0x24]
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    bl sub_800E94A
    add r4, r0, #0
    ldrb r0, [r7,#5]
    bl sub_800E7E4
    tst r0, r0
    beq loc_800E434
    strb r1, [r7,#5]
    ldrb r1, [r0,#0x12]
    ldrb r2, [r0,#0x13]
    push {r1,r2}
    bl sub_800AB54
    mov r2, #0
    ldrsb r2, [r4,r2]
    mul r2, r0
    mov r3, #1
    ldrsb r3, [r4,r3]
    pop {r0,r1}
    add r0, r0, r2
    add r1, r1, r3
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    push {r2}
    bl sub_800AD74
    tst r0, r0
    pop {r2}
    pop {r0,r1}
    beq loc_800E434
    bl sub_800C96E
    mov r0, #0xc
    strb r0, [r7,#2]
    pop {r4,pc}
loc_800E434:
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
    bl sub_800E860
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_800E3E0

.thumb
sub_800E456:
    push {lr}
    ldrh r0, [r7,#0x24]
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    bl sub_800E94A
    ldrb r1, [r7,#0xb]
    add r2, r1, #1
    strb r2, [r7,#0xb]
    add r1, r1, r1
    add r1, #2
    ldrh r0, [r0,r1]
    ldr r1, [pc, #0x800e484-0x800e46e-2] // =0xFFFF
    cmp r0, r1
    bne loc_800E47E
    bl sub_800E95E
    mov r0, #4
    strb r0, [r7,#2]
    pop {pc}
loc_800E47E:
    bl sub_800EAC8
    pop {pc}
dword_800E484:    .word 0xFFFF
// end of function sub_800E456

.thumb
sub_800E488:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_800E488

.thumb
sub_800E4A8:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    ldr r7, [r6,#0x50]
    ldrb r0, [r7,#1]
    ldr r1, [pc, #0x800e4bc-0x800e4b0-4] // off_800E4C0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,r7,pc}
    .balign 4, 0x00
off_800E4BC:    .word off_800E4C0
off_800E4C0:    .word sub_800E4C8+1
    .word sub_800E788+1
// end of function sub_800E4A8

.thumb
sub_800E4C8:
    push {lr}
    ldrb r0, [r7,#2]
    ldr r1, [pc, #0x800e4d8-0x800e4cc-4] // jt_800E4DC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800E4D8:    .word jt_800E4DC
jt_800E4DC:    .word sub_800E4F8+1
    .word sub_800E5B8+1
    .word sub_800E5CC+1
    .word sub_800E62C+1
    .word sub_800E6BE+1
    .word sub_800E734+1
    .word sub_800E768+1
// end of function sub_800E4C8

.thumb
sub_800E4F8:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8007C0E
    tst r0, r0
    beq loc_800E59E
    bl sub_800EA4C
    cmp r0, #0x32 
    blt loc_800E524
    bl sub_800E8BA
    ldr r1, [pc, #0x800e5b4-0x800e510-4] // =0xFFFF
    cmp r0, r1
    beq loc_800E524
    bl sub_800EAC8
    bl sub_800E95E
    mov r0, #0
    strh r0, [r7,#0x20]
    pop {pc}
loc_800E524:
    bl sub_800EA5E
    cmp r0, #0x32 
    blt loc_800E544
    bl sub_800E8FC
    ldr r1, [pc, #0x800e5b4-0x800e530-4] // =0xFFFF
    cmp r0, r1
    beq loc_800E544
    bl sub_800EAC8
    bl sub_800E95E
    mov r0, #0
    strh r0, [r7,#0x22]
    pop {pc}
loc_800E544:
    ldrb r0, [r7,#4]
    cmp r0, #5
    blt loc_800E54E
    bl sub_800EB0A
loc_800E54E:
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #0xc
    bge loc_800E59E
    bl sub_800E93E
    ldr r1, [pc, #0x800e5b4-0x800e55e-2] // =0xFFFF
    cmp r0, r1
    beq loc_800E598
    strh r0, [r7,#0x24]
    lsr r0, r0, #0x10
    bcc loc_800E574
    mov r0, #0x10
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#0xb]
    pop {pc}
loc_800E574:
    ldrh r0, [r7,#0x24]
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    beq loc_800E58E
    ldrb r0, [r7,#4]
    tst r0, r0
    bne loc_800E58E
    mov r0, #0x18
    strb r0, [r7,#2]
    pop {pc}
loc_800E58E:
    mov r0, #4
    strb r0, [r7,#1]
    mov r0, #0
    strb r0, [r7,#3]
    pop {pc}
loc_800E598:
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
loc_800E59E:
    bl sub_8001AF6
    mov r1, #0xc
    lsr r0, r0, #1
    bcc loc_800E5AA
    mov r1, #8
loc_800E5AA:
    strb r1, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#9]
    pop {pc}
dword_800E5B4:    .word 0xFFFF
// end of function sub_800E4F8

.thumb
sub_800E5B8:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8001AF6
    lsr r0, r0, #1
    bcc locret_800E5CA
    mov r0, #0
    strb r0, [r7]
locret_800E5CA:
    pop {pc}
// end of function sub_800E5B8

.thumb
sub_800E5CC:
    push {lr}
    ldrb r0, [r7,#3]
    ldr r1, [pc, #0x800e5dc-0x800e5d0-4] // off_800E5E0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800E5DC:    .word off_800E5E0
off_800E5E0:    .word sub_800E5E8+1
    .word sub_800E606+1
// end of function sub_800E5CC

.thumb
sub_800E5E8:
    push {lr}
    mov r0, #4
    strb r0, [r7,#3]
    bl sub_800F9B8
    tst r0, r0
    beq locret_800E604
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_800E604:
    pop {pc}
// end of function sub_800E5E8

.thumb
sub_800E606:
    push {lr}
    mov r0, #0x10
    bl sub_8015AFA
    bl ho_800C986
    bl sub_800C960
    ldrb r0, [r7,#9]
    add r0, #1
    strb r0, [r7,#9]
    cmp r0, #2
    bge loc_800E626
    mov r0, #0
    strb r0, [r7,#3]
    b locret_800E62A
loc_800E626:
    mov r0, #0
    strb r0, [r7,#2]
locret_800E62A:
    pop {pc}
// end of function sub_800E606

.thumb
sub_800E62C:
    push {lr}
    ldrb r0, [r7,#3]
    ldr r1, [pc, #0x800e63c-0x800e630-4] // jt_800E640
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_800E63C:    .word jt_800E640
jt_800E640:    .word sub_800E64C+1
    .word sub_800E666+1
    .word sub_800E6AA+1
// end of function sub_800E62C

.thumb
sub_800E64C:
    push {lr}
    bl sub_8007BB4
    str r0, [r7,#0x30]
    mov r0, #2
    strb r0, [r6,#9]
    mov r0, #0
    strh r0, [r6,#0x32]
    mov r0, #0x28 
    strh r0, [r6,#0x36]
    mov r0, #4
    strb r0, [r7,#3]
    pop {pc}
// end of function sub_800E64C

.thumb
sub_800E666:
    push {lr}
    bl sub_8007BB4
    ldr r1, [r7,#0x30]
    sub r0, r0, r1
    strh r0, [r6,#0x32]
    cmp r0, #0x32 
    bge loc_800E68E
    bl sub_800FA40
    tst r0, r0
    beq locret_800E6A8
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    b locret_800E6A8
loc_800E68E:
    bl sub_800F9B8
    tst r0, r0
    beq loc_800E6A4
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
loc_800E6A4:
    mov r0, #8
    strb r0, [r7,#3]
locret_800E6A8:
    pop {pc}
// end of function sub_800E666

.thumb
sub_800E6AA:
    push {lr}
    bl sub_800BD6E
    bl sub_800CA14
    bl sub_800C960
    mov r0, #0
    strb r0, [r7,#2]
    pop {pc}
// end of function sub_800E6AA

.thumb
sub_800E6BE:
    push {r4,lr}
    ldrh r0, [r7,#0x24]
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    bl sub_800E94A
    add r4, r0, #0
    ldrb r0, [r7,#5]
    bl sub_800E7E4
    tst r0, r0
    beq loc_800E712
    strb r1, [r7,#5]
    ldrb r1, [r0,#0x12]
    ldrb r2, [r0,#0x13]
    push {r1,r2}
    bl sub_800AB54
    mov r2, #0
    ldrsb r2, [r4,r2]
    mul r2, r0
    mov r3, #1
    ldrsb r3, [r4,r3]
    pop {r0,r1}
    add r0, r0, r2
    add r1, r1, r3
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    push {r2}
    bl sub_800AD74
    tst r0, r0
    pop {r2}
    pop {r0,r1}
    beq loc_800E712
    bl sub_800C96E
    mov r0, #0x14
    strb r0, [r7,#2]
    pop {r4,pc}
loc_800E712:
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
    bl sub_800E860
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_800E6BE

.thumb
sub_800E734:
    push {lr}
    ldrh r0, [r7,#0x24]
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    bl sub_800E94A
    ldrb r1, [r7,#0xb]
    add r2, r1, #1
    strb r2, [r7,#0xb]
    add r1, r1, r1
    add r1, #2
    ldrh r0, [r0,r1]
    ldr r1, [pc, #0x800e764-0x800e74c-4] // =0xFFFF
    cmp r0, r1
    bne loc_800E75C
    bl sub_800E95E
    mov r0, #4
    strb r0, [r7,#2]
    pop {pc}
loc_800E75C:
    bl sub_800EAC8
    pop {pc}
    .balign 4, 0x00
dword_800E764:    .word 0xFFFF
// end of function sub_800E734

.thumb
sub_800E768:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_800E768

.thumb
sub_800E788:
    push {lr}
    ldrb r0, [r7,#3]
    tst r0, r0
    bne loc_800E7A2
    bl sub_800E806
    add r1, r0, #0
    beq loc_800E7BA
    ldrh r0, [r7,#0x24]
    bl sub_800F42C
    mov r0, #4
    strb r0, [r7,#3]
loc_800E7A2:
    bl ho_800F340
    tst r0, r0
    bne locret_800E7C4
    tst r1, r1
    beq loc_800E7BA
    add r0, r2, #0
    bl sub_800EAC8
    bl sub_800E95E
    b loc_800E7C0
loc_800E7BA:
    ldrb r0, [r7,#4]
    add r0, #1
    strb r0, [r7,#4]
loc_800E7C0:
    mov r0, #0
    strb r0, [r7,#1]
locret_800E7C4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_800E788

.thumb
sub_800E7C8:
    push {lr}
    mov r1, #0x34 
    bl sub_800D788
    mov r1, #0x64 
    svc 6
    add r2, r0, #0
    mov r1, #0x25 
    bl sub_800D75A
    ldrb r0, [r5,#0x16]
    bl sub_800E8A8
    pop {pc}
// end of function sub_800E7C8

.thumb
sub_800E7E4:
    push {r4,r6,lr}
    add r4, r0, #0
    add r6, r0, #0
loc_800E7EA:
    add r0, r6, #0
    bl sub_800E82E
    tst r0, r0
    bne loc_800E802
    add r6, #1
    cmp r6, #4
    ble loc_800E7FC
    mov r6, #0
loc_800E7FC:
    cmp r4, r6
    bne loc_800E7EA
    mov r0, #0
loc_800E802:
    add r1, r6, #0
    pop {r4,r6,pc}
// end of function sub_800E7E4

.thumb
sub_800E806:
    push {r4,r6,r7,lr}
    ldr r7, [r5,#0x58]
    ldrb r0, [r7,#0x17]
    add r4, r0, #0
    add r6, r0, #0
loc_800E810:
    add r0, r6, #0
    bl sub_800E82E
    tst r0, r0
    bne loc_800E828
    add r6, #1
    cmp r6, #4
    ble loc_800E822
    mov r6, #0
loc_800E822:
    cmp r4, r6
    bne loc_800E810
    mov r0, #0
loc_800E828:
    add r1, r6, #0
    strb r1, [r7,#0x17]
    pop {r4,r6,r7,pc}
// end of function sub_800E806

.thumb
sub_800E82E:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r5,#0x16]
    mov r2, #1
    eor r1, r2
    tst r0, r0
    bne loc_800E846
    mov r2, #0xc
    mul r1, r2
    add r1, #0x70 
    ldr r0, [r3,r1]
    mov pc, lr
loc_800E846:
    ldrb r2, [r3,#0xd]
    eor r1, r2
    lsl r1, r1, #2
    cmp r0, #1
    bne loc_800E856
    add r1, #0x44 
    ldr r0, [r3,r1]
    mov pc, lr
loc_800E856:
    sub r0, #2
    lsl r0, r0, #2
    add r0, #0x48 
    ldr r0, [r3,r0]
    mov pc, lr
// end of function sub_800E82E

.thumb
sub_800E860:
    push {r4,lr}
    mov r4, #1
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_800E874
    ldrb r0, [r5,#0x16]
    tst r0, r0
    bne loc_800E874
    mov r4, #4
loc_800E874:
    ldr r0, [r5,#0x58]
    ldrb r1, [r0,#0x17]
    add r1, #1
    cmp r1, r4
    ble loc_800E880
    mov r1, #0
loc_800E880:
    strb r1, [r0,#0x17]
    pop {r4,pc}
// end of function sub_800E860

.thumb
sub_800E884:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x7c]
    ldr r1, [pc, #0x800ebc0-0x800e88a-2] // =0x700
    mov r2, #0
    mvn r2, r2
    bl f900_80009FC
    pop {pc}
// end of function sub_800E884

.thumb
sub_800E896:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x7c]
    mov r1, #0xe0
    mov r2, #0
    mvn r2, r2
    bl f900_80009FC
    pop {pc}
// end of function sub_800E896

.thumb
sub_800E8A8:
    push {lr}
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x800ebc4-0x800e8ae-2] // unk_2035A70
    add r0, r0, r1
    mov r1, #0x40 
    bl f900_8000930
    pop {pc}
// end of function sub_800E8A8

.thumb
sub_800E8BA:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xe0
    mul r0, r1
    ldr r4, [pc, #0x800ebc8-0x800e8c2-2] // unk_20358B0
    add r4, r4, r0
    mov r5, #0
loc_800E8C8:
    add r1, r5, r5
    ldrh r6, [r4,r1]
    ldr r0, [pc, #0x800ebcc-0x800e8cc-4] // =0xFFFF
    cmp r6, r0
    beq loc_800E8EC
    lsl r6, r6, #0x11
    bcs loc_800E8E6
    lsr r6, r6, #0x11
    add r0, r6, #0
    bl sub_8019010
    ldrb r1, [r0,#0xe]
    mov r2, #1
    tst r1, r2
    bne loc_800E8F0
loc_800E8E6:
    add r5, #1
    cmp r5, #0x1e
    blt loc_800E8C8
loc_800E8EC:
    ldr r0, [pc, #0x800ebcc-0x800e8ec-4] // =0xFFFF
    pop {r4-r7,pc}
loc_800E8F0:
    ldrh r1, [r4]
    add r2, r5, r5
    ldrh r0, [r4,r2]
    strh r1, [r4,r2]
    strh r0, [r4]
    pop {r4-r7,pc}
// end of function sub_800E8BA

.thumb
sub_800E8FC:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xe0
    mul r0, r1
    ldr r4, [pc, #0x800ebd0-0x800e904-4] // unk_20358B0
    add r4, r4, r0
    mov r5, #0
loc_800E90A:
    add r1, r5, r5
    ldrh r6, [r4,r1]
    ldr r0, [pc, #0x800ebcc-0x800e90e-2] // =0xFFFF
    cmp r6, r0
    beq loc_800E92E
    lsl r6, r6, #0x11
    bcs loc_800E928
    lsr r6, r6, #0x11
    add r0, r6, #0
    bl sub_8019010
    ldrb r1, [r0,#0xe]
    mov r2, #2
    tst r1, r2
    bne loc_800E932
loc_800E928:
    add r5, #1
    cmp r5, #0x2a 
    blt loc_800E90A
loc_800E92E:
    ldr r0, [pc, #0x800ebcc-0x800e92e-2] // =0xFFFF
    pop {r4-r7,pc}
loc_800E932:
    ldrh r1, [r4]
    add r2, r5, r5
    ldrh r0, [r4,r2]
    strh r1, [r4,r2]
    strh r0, [r4]
    pop {r4-r7,pc}
// end of function sub_800E8FC

.thumb
sub_800E93E:
    ldrb r0, [r5,#0x16]
    mov r1, #0xe0
    mul r0, r1
    ldr r1, [pc, #0x800ebd4-0x800e944-4] // unk_20358B0
    ldrh r0, [r0,r1]
    mov pc, lr
// end of function sub_800E93E

.thumb
sub_800E94A:
    ldrb r2, [r5,#0x16]
    mov r3, #0xe0
    mul r2, r3
    ldr r3, [pc, #0x800ebd8-0x800e950-4] // unk_20358B0
    add r3, r3, r2
    add r3, #0x58 
    mov r2, #0x10
    mul r0, r2
    add r0, r0, r3
    mov pc, lr
// end of function sub_800E94A

.thumb
sub_800E95E:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xe0
    mul r0, r1
    ldr r4, [pc, #0x800ebdc-0x800e966-2] // unk_20358B0
    add r4, r4, r0
    ldr r1, [pc, #0x800ebcc-0x800e96a-2] // =0xFFFF
    ldrh r6, [r4]
    strh r1, [r4]
    ldr r1, [r4,#0x54]
    add r0, r4, #0
    bl sub_8000CF4
    ldr r0, [r4,#0x54]
    sub r0, #1
    add r0, r0, r0
    strh r6, [r4,r0]
    mov r0, #0
    ldr r1, [r5,#0x58]
    ldr r1, [r1,#0x50]
    strb r0, [r1,#4]
    pop {r4,r6,pc}
// end of function sub_800E95E

.thumb
sub_800E98A:
    push {r6,lr}
    bl sub_8007920
    bne locret_800E9BE
    ldr r6, [r5,#0x58]
    ldr r6, [r6,#0x50]
    ldrb r0, [r5,#0x16]
    bl sub_800E9C0
    strb r0, [r6,#8]
    mov r1, #0
    tst r0, r0
    beq loc_800E9A8
    ldrh r1, [r6,#0x20]
    add r1, #1
loc_800E9A8:
    strh r1, [r6,#0x20]
    ldrb r0, [r5,#0x16]
    bl sub_800EA08
    strb r0, [r6,#6]
    mov r1, #0
    tst r0, r0
    beq loc_800E9BC
    ldrh r1, [r6,#0x22]
    add r1, #1
loc_800E9BC:
    strh r1, [r6,#0x22]
locret_800E9BE:
    pop {r6,pc}
// end of function sub_800E98A

.thumb
sub_800E9C0:
    push {r6,lr}
    sub sp, sp, #0x10
    mov r6, #0
    str r0, [sp,#0xc]
    add r1, r0, #3
    str r1, [sp]
    bl loc_800AB56
    neg r0, r0
    str r0, [sp,#8]
loc_800E9D4:
    mov r0, #1
    str r0, [sp,#4]
loc_800E9D8:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A88
    tst r0, r0
    beq loc_800EA02
    ldrb r1, [r0,#1]
    ldr r2, [sp,#0xc]
    cmp r1, r2
    beq loc_800E9EE
    add r6, #1
loc_800E9EE:
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #3
    ble loc_800E9D8
    ldr r0, [sp]
    ldr r1, [sp,#8]
    add r0, r0, r1
    str r0, [sp]
    b loc_800E9D4
loc_800EA02:
    add r0, r6, #0
    add sp, sp, #0x10
    pop {r6,pc}
// end of function sub_800E9C0

.thumb
sub_800EA08:
    push {r6,lr}
    sub sp, sp, #0x10
    str r0, [sp,#8]
    mov r6, #0
    mov r0, #1
    str r0, [sp]
loc_800EA14:
    mov r1, #1
    str r1, [sp,#4]
loc_800EA18:
    ldr r0, [sp]
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldr r2, [sp,#8]
    cmp r1, r2
    bne loc_800EA32
    ldrb r1, [r0]
    cmp r1, #4
    beq loc_800EA30
    cmp r1, #1
    bne loc_800EA32
loc_800EA30:
    add r6, #1
loc_800EA32:
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
    cmp r1, #3
    ble loc_800EA18
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_800EA14
    add r0, r6, #0
    add sp, sp, #0x10
    pop {r6,pc}
// end of function sub_800EA08

.thumb
sub_800EA4C:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    ldr r4, [r4,#0x50]
    ldrh r0, [r4,#0x20]
    mov r1, #0x3c 
    svc 6
    ldrb r1, [r4,#8]
    mul r0, r1
    pop {r4,pc}
// end of function sub_800EA4C

.thumb
sub_800EA5E:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    ldr r4, [r4,#0x50]
    ldrh r0, [r4,#0x22]
    mov r1, #0x3c 
    svc 6
    ldrb r1, [r4,#6]
    mul r0, r1
    pop {r4,pc}
// end of function sub_800EA5E

.thumb
sub_800EA70:
    push {lr}
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x50]
    mov r1, #0x40 
    bl f900_8000950
    pop {pc}
// end of function sub_800EA70

.thumb
sub_800EA7E:
    push {r4,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    ldr r0, [pc, #0x800ebe0-0x800ea8a-2] // off_801255C
    lsl r4, r4, #2
    ldr r4, [r0,r4]
    bl sub_800AB54
    str r0, [sp,#0x10]
loc_800EA96:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_800EAC2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x10]
    mul r0, r2
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#8]
    cmp r0, r2
    bne loc_800EABE
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldr r2, [sp,#0xc]
    cmp r1, r2
    bne loc_800EABE
    mov r0, #1
    b loc_800EAC4
loc_800EABE:
    add r4, #2
    b loc_800EA96
loc_800EAC2:
    mov r0, #0
loc_800EAC4:
    add sp, sp, #0x14
    pop {r4,pc}
// end of function sub_800EA7E

.thumb
sub_800EAC8:
    push {r4,r6,r7,lr}
    ldr r4, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r4
    strh r0, [r7,#0x14]
    bl sub_8019010
    add r6, r0, #0
    ldrb r1, [r6,#0xa]
    strh r1, [r7,#0xa]
    ldrh r1, [r6,#4]
    strh r1, [r7,#2]
    mov r1, #0
    strh r1, [r7,#6]
    ldr r1, [r6,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r6,#0xc]
    strb r1, [r7,#3]
    mov r1, #0
    strh r1, [r7]
    strb r1, [r7,#4]
    ldrh r0, [r7,#0x14]
    ldrb r1, [r5,#0x16]
    bl ho_8019288
    strh r0, [r7,#8]
    ldrb r1, [r6,#0x14]
    strb r1, [r7,#5]
    ldrb r0, [r6,#0xb]
    bl sub_800C960
    pop {r4,r6,r7,pc}
// end of function sub_800EAC8

    mov pc, lr
.thumb
sub_800EB0A:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xe0
    mul r0, r1
    ldr r6, [pc, #0x800ebe4-0x800eb12-2] // unk_20358B0
    add r6, r6, r0
    ldrh r4, [r6]
    bl sub_8001AF6
    ldr r1, [r6,#0x54]
    sub r1, #1
    ble locret_800EB2E
    svc 6
    add r1, #1
    add r1, r1, r1
    ldrh r0, [r6,r1]
    strh r4, [r6,r1]
    strh r0, [r6]
locret_800EB2E:
    pop {r4,r6,pc}
// end of function sub_800EB0A

.thumb
sub_800EB30:
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x50]
    ldrb r0, [r0]
    mov pc, lr
// end of function sub_800EB30

.thumb
sub_800EB38:
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x50]
    mov r1, #1
    strb r1, [r0]
    mov pc, lr
// end of function sub_800EB38

.thumb
sub_800EB42:
    push {r4,lr}
    mov r4, #4
    mul r0, r4
    ldr r4, [pc, #0x800ebe8-0x800eb48-4] // byte_200AB10
    add r0, r0, r4
    strb r1, [r0,#1]
    strb r2, [r0]
    strb r3, [r0,#2]
    pop {r4,pc}
// end of function sub_800EB42

.thumb
sub_800EB54:
    mov r3, #4
    mul r0, r3
    ldr r3, [pc, #0x800ebec-0x800eb58-4] // byte_200AB10
    add r3, r3, r0
    ldrb r0, [r3,#1]
    mov pc, lr
// end of function sub_800EB54

.thumb
sub_800EB60:
    ldr r0, [pc, #0x800ebf0-0x800eb60-4] // byte_200AB10
    ldr r1, [pc, #0x800ebf4-0x800eb62-2] // byte_200AB14
    mov r2, #2
    strb r2, [r0]
    strb r2, [r1]
    mov r2, #1
    strb r2, [r0,#(byte_200AB11 - 0x200ab10)]
    strb r2, [r1,#(byte_200AB15 - 0x200ab14)]
    mov pc, lr
// end of function sub_800EB60

.thumb
sub_800EB72:
    push {r6,r7,lr}
    mov r7, #0
    ldr r6, [r5,#0x58]
    ldrb r1, [r6,#0x1b]
    tst r1, r1
    bne loc_800EBBA
    ldrb r0, [r5,#0x16]
    bl sub_800F448
    cmp r0, #5
    bne loc_800EBBA
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800EBBA
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_800EBBA
    mov r1, #0xe0
    mov r2, #0xe3
    bl sub_8007CB6
    tst r0, r0
    bne loc_800EBBA
    ldrb r0, [r5,#0x16]
    mov r1, #1
    mov r2, #1
    bl sub_8007FF0
    ldr r1, [r5,#0x58]
    mov r0, #1
    strb r0, [r1,#0x1b]
    mov r7, #1
loc_800EBBA:
    add r0, r7, #0
    pop {r6,r7,pc}
    .byte 0, 0
off_800EBC0:    .word 0x700
off_800EBC4:    .word unk_2035A70
off_800EBC8:    .word unk_20358B0
dword_800EBCC:    .word 0xFFFF
off_800EBD0:    .word unk_20358B0
off_800EBD4:    .word unk_20358B0
off_800EBD8:    .word unk_20358B0
off_800EBDC:    .word unk_20358B0
off_800EBE0:    .word off_801255C
off_800EBE4:    .word unk_20358B0
off_800EBE8:    .word byte_200AB10
off_800EBEC:    .word byte_200AB10
off_800EBF0:    .word byte_200AB10
off_800EBF4:    .word byte_200AB14
// end of function sub_800EB72

.thumb
sub_800EBF8:
    push {lr}
    ldr r0, [pc, #0x800ef08-0x800ebfa-2] // word_2006F50
    ldr r1, [pc, #0x800ef0c-0x800ebfc-4] // =0x2E0
    bl f900_8000930
    ldr r0, [pc, #0x800ef10-0x800ec02-2] // word_2001BB0
    ldr r1, [pc, #0x800ef0c-0x800ec04-4] // =0x2E0
    bl f900_8000930
    ldr r0, [pc, #0x800ef14-0x800ec0a-2] // unk_2000000
    ldr r1, [pc, #0x800ef18-0x800ec0c-4] // =0x180
    bl f900_8000930
    pop {pc}
// end of function sub_800EBF8

.thumb
sub_800EC14:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r2, #0
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r2, [r2,#0xd]
    ldrb r3, [r5,#0x16]
    eor r2, r3
    bne locret_800EC90
    push {r1}
    bl sub_8019010
    ldrb r1, [r0,#0xe]
    mov r2, #4
    tst r1, r2
    pop {r1}
    beq locret_800EC90
    mov r4, #0
    cmp r2, #1
    bgt loc_800EC50
    mov r4, #1
    mov r3, #1
    tst r1, r3
    beq loc_800EC50
    mov r4, #4
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_800EC50
    mov r4, #8
loc_800EC50:
    add r0, r6, #0
    add r1, r4, #0
    bl sub_800EC92
    add r0, r6, #0
    bl sub_8019010
    ldrb r2, [r0,#8]
    cmp r2, #0
    bne loc_800EC6E
    mov r1, #1
    cmp r7, #1
    ble loc_800EC6C
    mov r1, #3
loc_800EC6C:
    b loc_800EC8A
loc_800EC6E:
    cmp r2, #1
    bne loc_800EC7C
    mov r1, #1
    cmp r7, #1
    ble loc_800EC7A
    mov r1, #3
loc_800EC7A:
    b loc_800EC8A
loc_800EC7C:
    cmp r2, #2
    bne loc_800EC84
    mov r1, #1
    b loc_800EC8A
loc_800EC84:
    cmp r2, #4
    bne locret_800EC90
    mov r1, #1
loc_800EC8A:
    add r0, r6, #0
    bl sub_800EC9E
locret_800EC90:
    pop {r4,r6,r7,pc}
// end of function sub_800EC14

.thumb
sub_800EC92:
    lsl r0, r0, #1
    ldr r2, [pc, #0x800ef1c-0x800ec94-4] // word_2001BB0
    ldrh r3, [r2,r0]
    add r3, r3, r1
    strh r3, [r2,r0]
    mov pc, lr
// end of function sub_800EC92

.thumb
sub_800EC9E:
    lsl r0, r0, #1
    ldr r2, [pc, #0x800ef20-0x800eca0-4] // word_2006F50
    ldrh r3, [r2,r0]
    add r3, r3, r1
    strh r3, [r2,r0]
    mov pc, lr
// end of function sub_800EC9E

.thumb
sub_800ECAA:
    push {r6,r7,lr}
    add r6, r0, #0
    bl sub_8019010
    ldrb r1, [r0,#0xe]
    mov r2, #4
    tst r1, r2
    beq loc_800ECEC
    ldrb r0, [r5,#0x16]
    mov r1, #0x10
    mul r0, r1
    ldr r7, [pc, #0x800ef24-0x800ecc0-4] // unk_2037C60
    add r7, r7, r0
    ldrb r0, [r7]
    tst r0, r0
    beq loc_800ECD6
    ldrh r0, [r5,#0x12]
    ldrh r1, [r7,#2]
    cmp r0, r1
    beq loc_800ECDA
    bl sub_800ECF2
loc_800ECD6:
    ldrh r0, [r5,#0x12]
    strh r0, [r7,#2]
loc_800ECDA:
    ldrb r0, [r7]
    add r1, r0, r0
    add r1, #4
    strh r6, [r7,r1]
    add r0, #1
    strb r0, [r7]
    mov r0, #0x1e
    strb r0, [r7,#1]
    pop {r6,r7,pc}
loc_800ECEC:
    bl sub_800ECF2
    pop {r6,r7,pc}
// end of function sub_800ECAA

.thumb
sub_800ECF2:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x20
    ldrb r0, [r5,#0x16]
    mov r1, #0xc
    mul r0, r1
    ldr r6, [pc, #0x800ef28-0x800ecfc-4] // unk_2037A90
    add r6, r6, r0
    ldrb r0, [r5,#0x16]
    mov r1, #0x10
    mul r0, r1
    ldr r7, [pc, #0x800ef2c-0x800ed06-2] // unk_2037C60
    add r7, r7, r0
    ldrb r0, [r5,#0x16]
    mov r1, #0x84
    mul r0, r1
    ldr r4, [pc, #0x800ef30-0x800ed10-4] // byte_2039900
    add r4, r4, r0
    ldrb r0, [r7]
    cmp r0, #2
    blt loc_800EDC4
    mov r0, #0xff
    str r0, [sp]
    str r0, [sp,#0x10]
    str r0, [sp,#4]
    str r0, [sp,#0x14]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6]
    cmp r1, #0xff
    beq loc_800ED48
    ldrb r2, [r5,#0x13]
    ldrb r3, [r6,#1]
    sub r1, r1, r0
    str r1, [sp,#8]
    cmp r1, #0
    bge loc_800ED3A
    neg r1, r1
loc_800ED3A:
    str r1, [sp]
    sub r3, r3, r2
    str r3, [sp,#0xc]
    cmp r3, #0
    bge loc_800ED46
    neg r3, r3
loc_800ED46:
    str r3, [sp,#4]
loc_800ED48:
    add r0, r6, #2
    ldrb r1, [r0]
    cmp r1, #0xff
    beq loc_800ED6E
    ldrb r3, [r0,#1]
    ldrb r0, [r5,#0x12]
    ldrb r2, [r5,#0x13]
    sub r1, r1, r0
    str r1, [sp,#0x18]
    cmp r1, #0
    bge loc_800ED60
    neg r1, r1
loc_800ED60:
    str r1, [sp,#0x10]
    sub r3, r3, r2
    str r3, [sp,#0x1c]
    cmp r3, #0
    bge loc_800ED6C
    neg r3, r3
loc_800ED6C:
    str r3, [sp,#0x14]
loc_800ED6E:
    mov r2, #0
    ldr r0, [sp,#4]
    ldr r1, [sp,#0x14]
    cmp r0, #0xff
    bne loc_800ED7C
    cmp r1, #0xff
    beq loc_800EDC4
loc_800ED7C:
    cmp r0, r1
    blt loc_800ED8E
    bgt loc_800ED8C
    ldr r0, [sp]
    ldr r1, [sp,#0x10]
    cmp r0, r1
    blt loc_800ED8E
    bgt loc_800ED8C
loc_800ED8C:
    mov r2, #0x10
loc_800ED8E:
    add r0, sp, #0
    add r2, r2, r0
    ldr r0, [r2,#8]
    strb r0, [r7,#2]
    ldr r1, [r2,#0xc]
    strb r1, [r7,#3]
    bl sub_800AB54
    neg r0, r0
    mov r1, #2
    ldrsb r1, [r7,r1]
    mul r1, r0
    strb r1, [r7,#2]
    ldrb r0, [r4]
    cmp r0, #8
    bge loc_800EDC4
    mov r1, #0x10
    mul r1, r0
    add r1, r1, r4
    add r1, #4
    add r0, r7, #2
    mov r2, #0xc
    bl f900_800097A
    ldrb r0, [r4]
    add r0, #1
    strb r0, [r4]
loc_800EDC4:
    mov r0, #0
    strh r0, [r7]
    mvn r0, r0
    str r0, [r7,#4]
    str r0, [r7,#8]
    str r0, [r7,#0xc]
    str r0, [r6]
    str r0, [r6,#4]
    str r0, [r6,#8]
    add sp, sp, #0x20
    pop {r4,r6,r7,pc}
// end of function sub_800ECF2

.thumb
sub_800EDDA:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0x10
    mul r0, r1
    ldr r7, [pc, #0x800ef34-0x800ede2-2] // unk_2037C60
    add r7, r7, r0
    ldrb r0, [r7,#1]
    tst r0, r0
    beq locret_800EDF6
    sub r0, #1
    strb r0, [r7,#1]
    bgt locret_800EDF6
    bl sub_800ECF2
locret_800EDF6:
    pop {r7,pc}
// end of function sub_800EDDA

.thumb
sub_800EDF8:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #0xc
    mul r0, r1
    ldr r6, [pc, #0x800ef38-0x800ee04-4] // unk_2037A90
    add r6, r6, r0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #0x10
    mul r0, r1
    ldr r7, [pc, #0x800ef3c-0x800ee12-2] // unk_2037C60
    add r7, r7, r0
    ldrb r0, [r7]
    tst r0, r0
    beq loc_800EE42
    sub r0, #1
    add r0, r0, r0
    add r4, r6, r0
    ldrb r2, [r4]
    cmp r2, #0xff
    beq loc_800EE38
    mov r0, #2
    add r0, r0, r7
    add r1, r4, #0
    mov r2, #0x12
    add r2, r2, r5
    bl sub_800EE4E
    b loc_800EE3C
loc_800EE38:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_800EE3C:
    strb r0, [r4]
    strb r1, [r4,#1]
    pop {r4,r6,r7,pc}
loc_800EE42:
    mov r0, #0
    mvn r0, r0
    str r0, [r6]
    str r0, [r6,#4]
    str r0, [r6,#8]
    pop {r4,r6,r7,pc}
// end of function sub_800EDF8

.thumb
sub_800EE4E:
    sub sp, sp, #0x20
    ldrb r3, [r1]
    str r3, [sp,#8]
    ldrb r3, [r1,#1]
    str r3, [sp,#0xc]
    ldrb r3, [r2]
    str r3, [sp,#0x18]
    ldrb r3, [r2,#1]
    str r3, [sp,#0x1c]
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    ldr r2, [sp,#8]
    sub r2, r2, r0
    cmp r2, #0
    bge loc_800EE6E
    neg r2, r2
loc_800EE6E:
    str r2, [sp]
    ldr r3, [sp,#0xc]
    sub r3, r3, r1
    cmp r3, #0
    bge loc_800EE7A
    neg r3, r3
loc_800EE7A:
    str r3, [sp,#4]
    ldr r2, [sp,#0x18]
    sub r2, r2, r0
    cmp r2, #0
    bge loc_800EE86
    neg r2, r2
loc_800EE86:
    str r2, [sp,#0x10]
    ldr r3, [sp,#0x1c]
    sub r3, r3, r1
    cmp r3, #0
    bge loc_800EE92
    neg r3, r3
loc_800EE92:
    str r3, [sp,#0x14]
    mov r2, #0
    ldr r0, [sp,#4]
    ldr r1, [sp,#0x14]
    cmp r0, r1
    blt loc_800EEAA
    bgt loc_800EEA8
    ldr r0, [sp]
    ldr r1, [sp,#0x10]
    cmp r0, r1
    blt loc_800EEAA
loc_800EEA8:
    mov r2, #0x10
loc_800EEAA:
    add r2, sp
    ldr r0, [r2,#8]
    ldr r1, [r2,#0xc]
    add sp, sp, #0x20
    mov pc, lr
// end of function sub_800EE4E

.thumb
sub_800EEB4:
    push {lr}
    ldr r0, [pc, #0x800eef4-0x800eeb6-2] // dword_800EEF8
    ldr r1, [pc, #0x800ef40-0x800eeb8-4] // unk_2037C60
    mov r2, #0x10
    bl f900_800098C
    ldr r0, [pc, #0x800eef4-0x800eec0-4] // dword_800EEF8
    ldr r1, [pc, #0x800ef44-0x800eec2-2] // unk_2037C70
    mov r2, #0x10
    bl f900_800098C
    ldr r0, [pc, #0x800ef48-0x800eeca-2] // unk_2037A90
    mov r1, #0x18
    mov r2, #0
    mvn r2, r2
    bl f900_80009DC
    ldr r0, [pc, #0x800ef4c-0x800eed6-2] // byte_2039900
    mov r1, #0x84
    add r1, r1, r1
    bl f900_8000930
    ldr r0, [pc, #0x800ef50-0x800eee0-4] // byte_2039900
    add r0, #4
    mov r1, #0
    mov r2, #0xa
loc_800EEE8:
    str r2, [r0,#0xc]
    add r0, #0x10
    add r1, #1
    cmp r1, #8
    blt loc_800EEE8
    pop {pc}
off_800EEF4:    .word dword_800EEF8
dword_800EEF8:    .word 0x0
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
off_800EF08:    .word word_2006F50
off_800EF0C:    .word 0x2E0
off_800EF10:    .word word_2001BB0
off_800EF14:    .word unk_2000000
off_800EF18:    .word 0x180
off_800EF1C:    .word word_2001BB0
off_800EF20:    .word word_2006F50
off_800EF24:    .word unk_2037C60
off_800EF28:    .word unk_2037A90
off_800EF2C:    .word unk_2037C60
off_800EF30:    .word byte_2039900
off_800EF34:    .word unk_2037C60
off_800EF38:    .word unk_2037A90
off_800EF3C:    .word unk_2037C60
off_800EF40:    .word unk_2037C60
off_800EF44:    .word unk_2037C70
off_800EF48:    .word unk_2037A90
off_800EF4C:    .word byte_2039900
off_800EF50:    .word byte_2039900
// end of function sub_800EEB4

.thumb
sub_800EF54:
    push {r4-r7,lr}
    sub sp, sp, #0x58
    mov r1, #0xe0
    mul r0, r1
    mov r1, r10
    ldr r1, [r1,#0x7c]
    add r0, r0, r1
    str r0, [sp,#0x54]
    ldr r0, [pc, #0x800f2cc-0x800ef64-4] // dword_2033000
    ldr r1, [pc, #0x800f2d0-0x800ef66-2] // =0x2800
    bl f900_8000950
    ldr r6, [pc, #0x800f2d4-0x800ef6c-4] // word_2006F50
    mov r7, #0
loc_800EF70:
    ldrh r4, [r6]
    tst r4, r4
    beq loc_800EF94
    add r0, r7, #0
    bl sub_8019010
    ldrb r0, [r0,#8]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800f118-0x800ef80-4] // off_800F120
    ldr r0, [r0,r1]
    ldr r1, [r0]
    lsl r2, r1, #2
    add r2, r2, r0
    add r2, #4
    strh r7, [r2]
    strh r4, [r2,#2]
    add r1, #1
    str r1, [r0]
loc_800EF94:
    add r6, #2
    add r7, #1
    mov r0, #0xb8
    add r0, r0, r0
    cmp r7, r0
    blt loc_800EF70
    ldr r0, [pc, #0x800f2d8-0x800efa0-4] // dword_2033000
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2dc-0x800efaa-2] // dword_2033400
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2e0-0x800efb4-4] // dword_2033800
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2e4-0x800efbe-2] // dword_2033C00
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2e8-0x800efc8-4] // dword_2034000
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r6, [pc, #0x800f2ec-0x800efd2-2] // word_2001BB0
    mov r7, #0
loc_800EFD6:
    ldrh r4, [r6]
    tst r4, r4
    beq loc_800EFFA
    add r0, r7, #0
    bl sub_8019010
    ldrb r0, [r0,#8]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800f11c-0x800efe6-2] // off_800F134
    ldr r0, [r0,r1]
    ldr r1, [r0]
    lsl r2, r1, #2
    add r2, r2, r0
    add r2, #4
    strh r7, [r2]
    strh r4, [r2,#2]
    add r1, #1
    str r1, [r0]
loc_800EFFA:
    add r6, #2
    add r7, #1
    mov r0, #0xb8
    add r0, r0, r0
    cmp r7, r0
    blt loc_800EFD6
    ldr r0, [pc, #0x800f2f0-0x800f006-2] // dword_2034400
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2f4-0x800f010-4] // dword_2034800
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2f8-0x800f01a-2] // dword_2034C00
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f2fc-0x800f024-4] // dword_2035000
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f300-0x800f02e-2] // dword_2035400
    ldr r1, [r0]
    add r0, #4
    bl sub_8110A48
    ldr r0, [pc, #0x800f304-0x800f038-4] // unk_2000000
    mov r1, #0
loc_800F03C:
    ldr r2, [r0,#0xc]
    tst r2, r2
    beq loc_800F052
    sub r2, #1
    bgt loc_800F048
    mov r2, #1
loc_800F048:
    str r2, [r0,#0xc]
    add r0, #0x10
    add r1, #1
    cmp r1, #0x10
    blt loc_800F03C
loc_800F052:
    ldr r4, [pc, #0x800f308-0x800f052-2] // byte_2039900
    ldrb r7, [r4]
    add r4, #4
loc_800F058:
    sub r7, #1
    blt loc_800F08A
    ldr r6, [pc, #0x800f30c-0x800f05c-4] // unk_2000000
    mov r5, #0
loc_800F060:
    ldr r0, [r6,#0xc]
    tst r0, r0
    beq loc_800F086
    add r0, r4, #0
    add r1, r6, #0
    bl sub_800F1F4
    tst r0, r0
    beq loc_800F07E
    ldr r0, [r6,#0xc]
    add r0, #5
    str r0, [r6,#0xc]
    mov r0, #0
    str r0, [r4,#0xc]
    b loc_800F086
loc_800F07E:
    add r6, #0x10
    add r5, #1
    cmp r5, #0x10
    blt loc_800F060
loc_800F086:
    add r4, #0x10
    b loc_800F058
loc_800F08A:
    ldr r0, [pc, #0x800f310-0x800f08a-2] // byte_2039900
    ldr r1, [pc, #0x800f314-0x800f08c-4] // unk_2000100
    ldrb r2, [r0]
    mov r3, #0x10
    mul r2, r3
    add r0, #4
    bl f900_800098C
    ldr r0, [pc, #0x800f318-0x800f09a-2] // unk_2000000
    mov r1, #0x18
    mov r2, #0x10
    mov r3, #0xc
    bl sub_800F216
    add r7, sp, #0
    add r0, r7, #0
    mov r1, #3
    ldr r2, [pc, #0x800f31c-0x800f0ac-4] // dword_2034400
    ldr r3, [r2]
    add r2, #4
    bl sub_800F148
    add r0, r7, #6
    mov r1, #0x18
    ldr r2, [pc, #0x800f320-0x800f0ba-2] // dword_2033000
    ldr r3, [r2]
    add r2, #4
    bl sub_800F16E
    mov r0, #0x36 
    add r0, r0, r7
    mov r1, #5
    ldr r2, [pc, #0x800f324-0x800f0ca-2] // dword_2033400
    ldr r3, [r2]
    add r2, #4
    bl sub_800F148
    mov r0, #0x40 
    add r0, r0, r7
    mov r1, #1
    ldr r2, [pc, #0x800f328-0x800f0da-2] // dword_2033800
    ldr r3, [r2]
    add r2, #4
    bl sub_800F148
    mov r0, #0x42 
    add r0, r0, r7
    mov r1, #8
    bl sub_800F288
    mov r0, #0x52 
    add r0, r0, r7
    mov r1, #1
    ldr r2, [pc, #0x800f32c-0x800f0f4-4] // dword_2034000
    ldr r3, [r2]
    add r2, #4
    bl sub_800F148
    add r0, sp, #0
    ldr r1, [sp,#0x54]
    mov r2, #0x54 
    bl f900_800097A
    ldr r0, [pc, #0x800f330-0x800f108-4] // unk_2000000
    ldr r1, [sp,#0x54]
    add r1, #0x58 
    mov r2, #0x80
    bl f900_800098C
    add sp, sp, #0x58
    pop {r4-r7,pc}
off_800F118:    .word off_800F120
off_800F11C:    .word off_800F134
off_800F120:    .word dword_2033000
    .word dword_2033400
    .word dword_2033800
    .word dword_2033C00
    .word dword_2034000
off_800F134:    .word dword_2034400
    .word dword_2034800
    .word dword_2034C00
    .word dword_2035000
    .word dword_2035400
// end of function sub_800EF54

.thumb
sub_800F148:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    add r7, r3, #0
    add r1, r1, r1
    ldr r2, [pc, #0x800f334-0x800f154-4] // =0xFFFF
    bl f900_80009BC
loc_800F15A:
    sub r7, #1
    blt locret_800F16C
    sub r5, #1
    blt locret_800F16C
    ldrh r0, [r6]
    strh r0, [r4]
    add r6, #4
    add r4, #2
    b loc_800F15A
locret_800F16C:
    pop {r4-r7,pc}
// end of function sub_800F148

.thumb
sub_800F16E:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    add r7, r3, #0
    add r1, r1, r1
    ldr r2, [pc, #0x800f334-0x800f17a-2] // =0xFFFF
    bl f900_80009BC
    mov r3, #0
loc_800F182:
    sub r7, #1
    blt locret_800F19E
    ldrh r0, [r6]
    ldr r1, [pc, #0x800f1a0-0x800f188-4] // off_800F1A4
    ldrb r1, [r1,r3]
loc_800F18C:
    strh r0, [r4]
    add r4, #2
    sub r1, #1
    bgt loc_800F18C
    add r3, #1
    cmp r3, #0x10
    bge locret_800F19E
    add r6, #4
    b loc_800F182
locret_800F19E:
    pop {r4-r7,pc}
off_800F1A0:    .word off_800F1A4
off_800F1A4:    .word unk_2020404
// end of function sub_800F16E

    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
.thumb
sub_800F1B4:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    mov r2, #0xe0
    bl f900_800098C
    add r0, r7, #0
    mov r1, #3
    mov r2, #3
    bl fA00_8000B0A
    add r0, r7, #6
    mov r1, #0x27 
    mov r2, #0x27 
    bl fA00_8000B0A
    add r0, r7, #0
    mov r1, #0x2a 
    bl sub_8000CF4
    add r0, r7, #0
    mov r1, #0
    ldr r2, [pc, #0x800f334-0x800f1e0-4] // =0xFFFF
loc_800F1E2:
    ldrh r3, [r0]
    add r0, #2
    cmp r3, r2
    beq loc_800F1F0
    add r1, #1
    cmp r1, #0x2a 
    blt loc_800F1E2
loc_800F1F0:
    str r1, [r7,#0x54]
    pop {r6,r7,pc}
// end of function sub_800F1B4

.thumb
sub_800F1F4:
    push {lr}
    ldr r2, [r0]
    ldr r3, [r1]
    cmp r2, r3
    bne loc_800F212
    ldr r2, [r0,#4]
    ldr r3, [r1,#4]
    cmp r2, r3
    bne loc_800F212
    ldr r2, [r0,#8]
    ldr r3, [r1,#8]
    cmp r2, r3
    bne loc_800F212
    mov r0, #1
    pop {pc}
loc_800F212:
    mov r0, #0
    pop {pc}
// end of function sub_800F1F4

.thumb
sub_800F216:
    push {r4-r7,lr}
    sub sp, sp, #0x20
    str r0, [sp,#0x14]
    str r1, [sp,#0x18]
    str r2, [sp,#0x10]
    str r3, [sp,#0x1c]
    mov r4, #1
loc_800F224:
    ldr r0, [sp,#0x18]
    cmp r4, r0
    bge loc_800F284
    ldr r0, [sp,#0x10]
    mul r0, r4
    ldr r1, [sp,#0x14]
    add r0, r0, r1
    add r1, sp, #0
    ldr r2, [sp,#0x10]
    bl f900_800098C
    sub r5, r4, #1
    blt loc_800F280
loc_800F23E:
    add r0, sp, #0
    ldr r2, [sp,#0x1c]
    ldr r0, [r0,r2]
    ldr r2, [sp,#0x10]
    mul r2, r5
    ldr r1, [sp,#0x14]
    add r1, r1, r2
    ldr r2, [sp,#0x1c]
    ldr r1, [r1,r2]
    cmp r0, r1
    ble loc_800F26E
    add r0, r5, #1
    ldr r2, [sp,#0x10]
    mul r0, r2
    ldr r1, [sp,#0x14]
    add r1, r1, r0
    mul r2, r5
    ldr r0, [sp,#0x14]
    add r0, r0, r2
    ldr r2, [sp,#0x10]
    bl f900_800098C
    sub r5, #1
    bge loc_800F23E
loc_800F26E:
    add r0, sp, #0
    add r1, r5, #1
    ldr r2, [sp,#0x10]
    mul r2, r1
    ldr r1, [sp,#0x14]
    add r1, r1, r2
    ldr r2, [sp,#0x10]
    bl f900_800098C
loc_800F280:
    add r4, #1
    b loc_800F224
loc_800F284:
    add sp, sp, #0x20
    pop {r4-r7,pc}
// end of function sub_800F216

.thumb
sub_800F288:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r1, r1, r1
    ldr r2, [pc, #0x800f334-0x800f290-4] // =0xFFFF
    bl f900_80009BC
    ldr r2, [pc, #0x800f338-0x800f296-2] // unk_2000000
    mov r3, #0
loc_800F29A:
    cmp r3, #0x10
    bge locret_800F2B6
    ldr r0, [r2,#0xc]
    tst r0, r0
    beq locret_800F2B6
    sub r5, #1
    blt locret_800F2B6
    ldr r0, [pc, #0x800f33c-0x800f2a8-4] // =0x8000
    add r0, r0, r3
    strh r0, [r4]
    add r3, #1
    add r4, #2
    add r2, #0x10
    b loc_800F29A
locret_800F2B6:
    pop {r4,r5,pc}
// end of function sub_800F288

    push {lr}
    mov r2, #0xe0
    mul r1, r2
    mov r2, r10
    ldr r2, [r2,#0x7c]
    add r1, r1, r2
    mov r2, #0xe0
    bl f900_80009A0
    pop {pc}
off_800F2CC:    .word dword_2033000
off_800F2D0:    .word 0x2800
off_800F2D4:    .word word_2006F50
off_800F2D8:    .word dword_2033000
off_800F2DC:    .word dword_2033400
off_800F2E0:    .word dword_2033800
off_800F2E4:    .word dword_2033C00
off_800F2E8:    .word dword_2034000
off_800F2EC:    .word word_2001BB0
off_800F2F0:    .word dword_2034400
off_800F2F4:    .word dword_2034800
off_800F2F8:    .word dword_2034C00
off_800F2FC:    .word dword_2035000
off_800F300:    .word dword_2035400
off_800F304:    .word unk_2000000
off_800F308:    .word byte_2039900
off_800F30C:    .word unk_2000000
off_800F310:    .word byte_2039900
off_800F314:    .word unk_2000100
off_800F318:    .word unk_2000000
off_800F31C:    .word dword_2034400
off_800F320:    .word dword_2033000
off_800F324:    .word dword_2033400
off_800F328:    .word dword_2033800
off_800F32C:    .word dword_2034000
off_800F330:    .word unk_2000000
dword_800F334:    .word 0xFFFF
off_800F338:    .word unk_2000000
dword_800F33C:    .word 0x8000
.thumb
ho_800F340:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0x10
    mul r0, r1
    ldr r7, [pc, #0x800f370-0x800f348-4] // unk_203C030
    add r7, r7, r0
    mov r0, #1
    strb r0, [r7,#2]
    ldrh r0, [r7,#4]
    bl sub_8019010
    ldrb r0, [r0,#0xd]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800f36c-0x800f35a-2] // jt_800F374
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    ldrb r0, [r7,#2]
    ldrb r1, [r7,#3]
    ldrh r2, [r7,#4]
    pop {r7,pc}
    .balign 4, 0x00
off_800F36C:    .word jt_800F374
off_800F370:    .word unk_203C030
jt_800F374:    .word sub_80230A0+1
    .word sub_8023148+1
    .word sub_802319C+1
    .word sub_8023218+1
    .word sub_8023280+1
    .word sub_8023300+1
    .word sub_802330C+1
    .word sub_8023344+1
    .word sub_8023370+1
    .word sub_8023430+1
    .word sub_802351C+1
    .word sub_80235E4+1
    .word sub_80236C8+1
    .word sub_8023850+1
    .word sub_80238B0+1
    .word sub_80239C8+1
    .word sub_8023A48+1
    .word sub_8023B08+1
    .word ho_8023B80+1
    .word sub_8023BF8+1
    .word sub_8023CC4+1
    .word sub_8023D98+1
    .word sub_8023DF4+1
    .word sub_8023E50+1
    .word sub_8023EB0+1
    .word sub_8023EE0+1
    .word sub_8023F10+1
    .word sub_8023F3C+1
    .word sub_8023F8C+1
    .word sub_802404C+1
    .word sub_802408C+1
    .word sub_8024138+1
    .word sub_8024194+1
    .word sub_8024264+1
    .word sub_8024384+1
    .word sub_80243FC+1
    .word sub_8024474+1
    .word sub_802450C+1
    .word sub_8024538+1
    .word sub_80245AC+1
    .word sub_8024684+1
    .word sub_80247C4+1
    .word sub_8024870+1
    .word sub_8024914+1
    .word sub_8024A04+1
    .word sub_8024AB4+1
// end of function ho_800F340

.thumb
sub_800F42C:
    ldrb r2, [r5,#0x16]
    mov r3, #0x10
    mul r2, r3
    ldr r3, [pc, #0x800f444-0x800f432-2] // unk_203C030
    add r3, r3, r2
    strh r0, [r3,#4]
    str r1, [r3,#8]
    mov r0, #0
    strh r0, [r3]
    strb r0, [r3,#3]
    mov pc, lr
    .balign 4, 0x00
off_800F444:    .word unk_203C030
// end of function sub_800F42C

.thumb
sub_800F448:
    push {r4,r6,lr}
    add r4, r0, #0
    bl sub_800D6F2
    add r6, r0, #0
    add r0, r4, #0
    bl sub_800BFB8
    add r4, r0, #0
    ldrb r2, [r6]
    mov r0, #4
    mov r1, #0x24 
    ldrb r1, [r6,r1]
    cmp r1, #0
    beq loc_800F46C
    cmp r1, #0xf
    bne locret_800F488
    mov r1, #0
loc_800F46C:
    mov r0, #3
    ldrh r3, [r4,#0x2e]
    tst r3, r3
    bne locret_800F488
    mov r0, #5
    tst r2, r2
    beq locret_800F488
    mov r0, #2
    cmp r2, #0xff
    beq locret_800F488
    mov r0, #0
    cmp r2, #0x41 
    bge locret_800F488
    mov r0, #1
locret_800F488:
    pop {r4,r6,pc}
// end of function sub_800F448

.thumb
sub_800F48A:
    push {r4,lr}
    add r4, r1, #0
    push {r0,r1}
    bl sub_80405D8
    pop {r0,r1}
    bne locret_800F4A4
    bl sub_800D6F2
    ldrb r1, [r0]
    tst r1, r1
    beq locret_800F4A4
    strb r4, [r0]
locret_800F4A4:
    pop {r4,pc}
// end of function sub_800F48A

.thumb
sub_800F4A6:
    push {r4,lr}
    push {r0,r1}
    bl sub_80405D8
    pop {r0,r1}
    bne locret_800F4C8
    add r4, r1, #0
    bl sub_800D6F2
    ldrb r1, [r0]
    tst r1, r1
    beq loc_800F4C6
    add r1, r1, r4
    cmp r1, #0xff
    ble loc_800F4C6
    mov r1, #0xff
loc_800F4C6:
    strb r1, [r0]
locret_800F4C8:
    pop {r4,pc}
// end of function sub_800F4A6

.thumb
sub_800F4CA:
    push {r4,lr}
    push {r0,r1}
    bl sub_80405D8
    pop {r0,r1}
    bne locret_800F4F0
    add r4, r1, #0
    bl sub_800D6F2
    ldrb r1, [r0]
    cmp r1, #0xff
    beq locret_800F4F0
    tst r1, r1
    beq loc_800F4EE
    add r1, r1, r4
    cmp r1, #0xfe
    ble loc_800F4EE
    mov r1, #0xfe
loc_800F4EE:
    strb r1, [r0]
locret_800F4F0:
    pop {r4,pc}
// end of function sub_800F4CA

.thumb
sub_800F4F2:
    push {r4,lr}
    push {r0,r1}
    bl sub_80405D8
    pop {r0,r1}
    bne locret_800F514
    add r4, r1, #0
    bl sub_800D6F2
    ldrb r1, [r0]
    tst r1, r1
    beq locret_800F514
    sub r1, r1, r4
    cmp r1, #1
    bge loc_800F512
    mov r1, #1
loc_800F512:
    strb r1, [r0]
locret_800F514:
    pop {r4,pc}
// end of function sub_800F4F2

.thumb
sub_800F516:
    push {lr}
    add r3, r1, #0
    add r2, r0, #0
    mov r0, #0
    mov r1, #0xeb
    add r1, r1, r1
    cmp r2, r1
    blt locret_800F546
    mov r0, #0x40 
    mov r1, #0xfa
    cmp r2, r1
    blt locret_800F546
    mov r0, #0xff
    cmp r3, #1
    beq locret_800F546
    mov r0, #0xbe
    mov r1, #0xfa
    lsl r1, r1, #2
    cmp r2, r1
    bge locret_800F546
    add r0, r2, #0
    mov r1, #0x14
    svc 6
    add r0, #0x80
locret_800F546:
    pop {pc}
// end of function sub_800F516

.thumb
sub_800F548:
    mov r0, r10
    ldr r0, [r0,#0x78]
    mov r1, #0
    strb r1, [r0]
    mov pc, lr
// end of function sub_800F548

.thumb
sub_800F552:
    push {lr}
    bl sub_800D6F2
    ldrh r0, [r0,#0x36]
    pop {pc}
// end of function sub_800F552

.thumb
sub_800F55C:
    push {r4,lr}
    add r4, r1, #0
    bl sub_800D6F2
    strh r4, [r0,#0x36]
    pop {r4,pc}
// end of function sub_800F55C

.thumb
sub_800F568:
    push {r4,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    bl sub_800F552
    str r0, [sp,#4]
    str r0, [sp,#8]
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r1, [r1,#0x3c]
    ldrb r1, [r1,#6]
    mov r2, #0x40 
    tst r1, r2
    bne loc_800F658
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_800F658
    ldr r0, [sp]
    mov r1, #1
    bl sub_8007FFA
    tst r0, r0
    beq loc_800F5BA
    ldr r0, [sp,#4]
    mov r1, #0xfa
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F5A8
    mov r0, #0xf0
    add r0, r0, r0
    b loc_800F5B6
loc_800F5A8:
    mov r1, #0xeb
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F5B4
    sub r0, #0xa
    b loc_800F5B6
loc_800F5B4:
    sub r0, #1
loc_800F5B6:
    str r0, [sp,#4]
    b loc_800F658
loc_800F5BA:
    ldr r0, [sp]
    mov r1, #2
    bl sub_8007FFA
    tst r0, r0
    beq loc_800F5E8
    ldr r0, [sp,#4]
    mov r1, #0xfa
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F5D6
    mov r0, #0xf0
    add r0, r0, r0
    b loc_800F5E4
loc_800F5D6:
    mov r1, #0xeb
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F5E2
    sub r0, #4
    b loc_800F5E4
loc_800F5E2:
    sub r0, #1
loc_800F5E4:
    str r0, [sp,#4]
    b loc_800F658
loc_800F5E8:
    ldr r0, [sp]
    mov r1, #0x1e
    bl sub_800D722
    tst r0, r0
    bne loc_800F622
    ldr r0, [sp,#4]
    mov r1, #0xfa
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F612
    str r0, [sp,#8]
    ldr r0, [sp]
    mov r1, #0x20 
    bl sub_800D722
    tst r0, r0
    ldr r0, [sp,#8]
    beq loc_800F61E
    add r0, #1
    b loc_800F61E
loc_800F612:
    mov r1, #0x96
    add r1, r1, r1
    cmp r0, r1
    blt loc_800F61E
    add r0, #1
    b loc_800F61E
loc_800F61E:
    str r0, [sp,#4]
    b loc_800F658
loc_800F622:
    bl sub_8007E16
    cmp r0, #0x46 
    ldr r0, [sp,#8]
    bge loc_800F61E
    str r0, [sp,#8]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrh r0, [r0,#0x16]
    add r0, #4
    mov r1, #5
    svc 6
    push {r0}
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldr r0, [r4,#0x3c]
    bl sub_8007D90
    add r1, r0, #0
    pop {r0}
    cmp r0, r1
    ldr r0, [sp,#8]
    ble loc_800F654
    add r0, #1
    b loc_800F61E
loc_800F654:
    add r0, #3
    b loc_800F61E
loc_800F658:
    ldr r0, [sp,#4]
    cmp r0, #0
    bge loc_800F662
    mov r0, #0
    b loc_800F66C
loc_800F662:
    mov r1, #0xfa
    lsl r1, r1, #2
    cmp r0, r1
    ble loc_800F66C
    add r0, r1, #0
loc_800F66C:
    add sp, sp, #0xc
    pop {r4,pc}
// end of function sub_800F568

.thumb
sub_800F670:
    push {r4,r5,lr}
    add r5, r0, #0
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldr r1, [r4,#0x3c]
    ldrb r1, [r1,#6]
    mov r2, #0x40 
    tst r1, r2
    bne locret_800F6DA
    bl sub_8007E16
    cmp r0, #0x46 
    bge locret_800F6DA
    add r0, r5, #0
    mov r1, #1
    bl sub_8007FFA
    tst r0, r0
    bne loc_800F6A4
    add r0, r5, #0
    mov r1, #2
    bl sub_8007FFA
    tst r0, r0
    bne loc_800F6A4
    b locret_800F6DA
loc_800F6A4:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrh r1, [r3,#0x2a]
    ldr r2, [pc, #0x800f6dc-0x800f6aa-2] // =0x1F0
    cmp r1, r2
    bge locret_800F6DA
    ldrh r0, [r3,#0x16]
    cmp r0, #1
    ble locret_800F6DA
    sub r0, #1
    strh r0, [r3,#0x16]
    add r1, #1
    strh r1, [r3,#0x2a]
    bl sub_802D424
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrh r0, [r3,#0x22]
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldr r2, [r2,#0x44]
    strh r0, [r2,#0x26]
    ldrh r1, [r4,#0x34]
    cmp r1, r0
    ble locret_800F6DA
    strh r0, [r2,#0x24]
    strh r0, [r4,#0x34]
locret_800F6DA:
    pop {r4,r5,pc}
dword_800F6DC:    .word 0x1F3
// end of function sub_800F670

.thumb
sub_800F6E0:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x800f718-0x800f6e8-4] // unk_800F71C
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    beq loc_800F710
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_800F714
loc_800F710:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_800F714:
    add sp, sp, #0x18
    pop {r7,pc}
off_800F718:    .word unk_800F71C
unk_800F71C:    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x30 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
// end of function sub_800F6E0

.thumb
sub_800F72C:
    push {lr}
    sub sp, sp, #0x34
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    str r2, [sp,#0x18]
    str r3, [sp,#0x1c]
    str r4, [sp,#0x28]
    mov r0, #0
    str r0, [sp,#0x20]
    str r0, [sp,#0x24]
    str r0, [sp,#0x2c]
    str r0, [sp,#0x30]
    ldrb r0, [r5,#0x16]
    bl loc_800AB56
    neg r0, r0
    str r0, [sp,#0x10]
    ldr r1, [sp,#8]
    add r1, r1, r0
    str r1, [sp,#8]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800f7dc-0x800f758-4] // unk_800F7E0
    ldr r0, [r1,r0]
    str r0, [sp,#0x14]
loc_800F75E:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_8009A52
    ldr r1, [sp,#0x14]
    tst r0, r1
    beq loc_800F780
    ldr r2, [sp,#8]
    str r2, [sp,#0x2c]
    ldr r2, [sp,#0xc]
    str r2, [sp,#0x30]
    ldr r0, [sp,#0x24]
    add r0, #1
    str r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bgt loc_800F7BC
loc_800F780:
    ldr r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bne loc_800F7AA
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x18]
    ldr r3, [sp,#0x1c]
    bl sub_8009E78
    tst r0, r0
    beq loc_800F7AA
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    ldr r2, [sp,#0x20]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x20]
loc_800F7AA:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_8009E64
    tst r0, r0
    bne loc_800F75E
loc_800F7BC:
    ldr r0, [sp,#0x20]
    tst r0, r0
    beq loc_800F7D4
    bl sub_8001AF6
    ldr r1, [sp,#0x20]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800F7D4:
    ldr r2, [sp,#0x2c]
    ldr r3, [sp,#0x30]
    add sp, sp, #0x34
    pop {pc}
off_800F7DC:    .word unk_800F7E0
unk_800F7E0:    .byte 0
    .byte 0
    .byte 0x80
    .byte 1
    .byte 0
    .byte 0
    .byte 0x80
    .byte 2
// end of function sub_800F72C

.thumb
sub_800F7E8:
    push {r4,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    bl sub_800AB54
    str r0, [sp,#0x18]
    mov r0, #0
    str r0, [sp,#0x2c]
loc_800F7FE:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_800F83C
    ldr r1, [sp,#0x18]
    mul r0, r1
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl sub_8009E78
    tst r0, r0
    beq loc_800F838
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [sp,#0x2c]
    add r2, sp, #0
    strb r0, [r2,r1]
    add r1, #1
    str r1, [sp,#0x2c]
loc_800F838:
    add r4, #2
    b loc_800F7FE
loc_800F83C:
    ldr r0, [sp,#0x2c]
    tst r0, r0
    beq loc_800F854
    bl sub_8001AF6
    ldr r1, [sp,#0x2c]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800F854:
    add sp, sp, #0x38
    pop {r4,pc}
// end of function sub_800F7E8

.thumb
sub_800F858:
    push {r4,lr}
    sub sp, sp, #0x38
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    mov r0, #0
    str r0, [sp,#0x2c]
loc_800F864:
    ldrb r0, [r4]
    cmp r0, #0x7f
    beq loc_800F892
    ldrb r1, [r4,#1]
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl sub_8009E78
    tst r0, r0
    beq loc_800F88E
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [sp,#0x2c]
    add r2, sp, #0
    strb r0, [r2,r1]
    add r1, #1
    str r1, [sp,#0x2c]
loc_800F88E:
    add r4, #2
    b loc_800F864
loc_800F892:
    ldr r0, [sp,#0x2c]
    tst r0, r0
    beq loc_800F8AA
    bl sub_8001AF6
    ldr r1, [sp,#0x2c]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800F8AA:
    add sp, sp, #0x38
    pop {r4,pc}
// end of function sub_800F858

.thumb
sub_800F8AE:
    push {r4,r7,lr}
    ldr r7, [pc, #0x800fc50-0x800f8b0-4] // off_801255C
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    bl sub_800F8CE
    pop {r4,r7,pc}
// end of function sub_800F8AE

.thumb
sub_800F8BC:
    push {r4,r6,r7,lr}
    ldr r7, [pc, #0x800fc54-0x800f8be-2] // off_801DA10
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    mov r7, #1
    eor r6, r7
    bl sub_800F8CE
    pop {r4,r6,r7,pc}
// end of function sub_800F8BC

.thumb
sub_800F8CE:
    push {r4,r6,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    add r0, r6, #0
    bl loc_800AB56
    str r0, [sp,#0x2c]
    mov r6, #0
loc_800F8E4:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_800F91E
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x2c]
    mul r0, r2
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    str r0, [sp,#0x30]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl sub_8009E78
    tst r0, r0
    beq loc_800F91A
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r6]
    add r6, #1
loc_800F91A:
    add r4, #2
    b loc_800F8E4
loc_800F91E:
    add r2, r6, #0
    add r0, r6, #0
    beq loc_800F938
    bl sub_8001AF6
    add r1, r6, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r2, r6, #0
loc_800F938:
    add sp, sp, #0x38
    pop {r4,r6,pc}
// end of function sub_800F8CE

.thumb
sub_800F93C:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    str r0, [sp,#0x10]
    add r7, sp, #0
    bl sub_800A210
    tst r0, r0
    beq loc_800F9A4
    str r0, [sp,#0x14]
    mov r6, #0
    mov r7, #0
loc_800F952:
    ldr r0, [sp,#0x10]
    bl loc_800AB56
    add r2, r0, #0
    add r1, sp, #0
    ldrb r0, [r1,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r0, r0, r2
    bl sub_8009A52
    ldr r2, [sp,#0x10]
    lsl r2, r2, #2
    ldr r1, [pc, #0x800f9a8-0x800f96e-2] // dword_800F9B0
    ldr r1, [r1,r2]
    tst r0, r1
    bne loc_800F986
    ldr r1, [pc, #0x800f9ac-0x800f976-2] // =0x10000
    tst r0, r1
    beq loc_800F986
    add r1, sp, #0
    add r2, sp, #4
    ldrb r0, [r1,r6]
    strb r0, [r2,r7]
    add r7, #1
loc_800F986:
    add r6, #1
    ldr r0, [sp,#0x14]
    cmp r6, r0
    blt loc_800F952
    add r0, r7, #0
    beq loc_800F9A4
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #4
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800F9A4:
    add sp, sp, #0x18
    pop {r6,r7,pc}
off_800F9A8:    .word dword_800F9B0
dword_800F9AC:    .word 0x10000
dword_800F9B0:    .word 0x1800000, 0x2800000
// end of function sub_800F93C

.thumb
sub_800F9B8:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800fa20-0x800f9c0-4] // off_800FA28
    ldr r2, [r1,r0]
    mov r3, #0
    add r7, sp, #0
    bl sub_8009F90
    add r4, r0, #0
    beq loc_800FA1C
    mov r6, #6
    add r7, sp, #0
loc_800F9D4:
    ldrb r0, [r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r0, [r5,#0x13]
    sub r0, r0, r1
    cmp r0, #0
    bge loc_800F9E6
    neg r0, r0
loc_800F9E6:
    cmp r0, r6
    bge loc_800F9EE
    add r6, r0, #0
    str r1, [sp,#4]
loc_800F9EE:
    sub r4, #1
    bgt loc_800F9D4
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x800fa24-0x800f9f6-2] // dword_800FA30
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    ldr r0, [sp,#4]
    add r7, sp, #0
    bl sub_800A0DA
    add r4, r0, #0
    beq loc_800FA1C
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800FA1C:
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
off_800FA20:    .word off_800FA28
off_800FA24:    .word dword_800FA30
off_800FA28:    .word LCDControl
    .word start_
dword_800FA30:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_800F9B8

.thumb
sub_800FA40:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x800fa60-0x800fa46-2] // dword_800FA64
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    ldr r4, [pc, #0x800fa5c-0x800fa4e-2] // unk_800FA74
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800F7E8
    pop {r4,pc}
    .balign 4, 0x00
off_800FA5C:    .word unk_800FA74
off_800FA60:    .word dword_800FA64
dword_800FA64:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
unk_800FA74:    .byte 0
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0x7F 
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800FA40

.thumb
sub_800FA7C:
    push {r7,lr}
    sub sp, sp, #4
    ldrb r0, [r5,#0x16]
    add r7, sp, #0
    bl sub_800A210
    add r7, r0, #0
    beq loc_800FA9E
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800FA9E:
    add sp, sp, #4
    pop {r7,pc}
// end of function sub_800FA7C

.thumb
sub_800FAA2:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x800fad4-0x800faaa-2] // unk_800FAD8
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_800FACE
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r2, sp, #0
    ldrb r0, [r2,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_800FACE:
    add sp, sp, #0x18
    pop {r7,pc}
    .byte 0
    .byte 0
off_800FAD4:    .word unk_800FAD8
unk_800FAD8:    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x400000, 0x0
// end of function sub_800FAA2

.thumb
sub_800FAE8:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x30
    ldrb r0, [r5,#0x16]
    str r0, [sp,#0x1c]
    lsl r0, r0, #3
    ldr r1, [pc, #0x800fbe0-0x800faf2-2] // dword_800FBE4
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009F90
    add r7, r0, #0
    beq loc_800FBDA
    mov r4, #0
    mov r6, #0
loc_800FB08:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r1, [r5,#0x12]
    ldr r2, [sp,#0x1c]
    tst r2, r2
    bne loc_800FB20
    cmp r0, r1
    bge loc_800FB24
    b loc_800FB2E
loc_800FB20:
    cmp r0, r1
    bgt loc_800FB2E
loc_800FB24:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_800FB2E:
    add r6, #1
    cmp r6, r7
    blt loc_800FB08
    tst r4, r4
    beq loc_800FBA4
loc_800FB38:
    add r7, r4, #0
    add r1, sp, #0x18
    ldrb r0, [r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    ldrb r2, [r5,#0x12]
    sub r0, r0, r2
    cmp r0, #0
    bge loc_800FB52
    neg r0, r0
loc_800FB52:
    str r0, [sp,#0x28]
    ldrb r2, [r5,#0x13]
    sub r1, r1, r2
    cmp r1, #0
    bge loc_800FB5E
    neg r1, r1
loc_800FB5E:
    str r1, [sp,#0x2c]
    mov r6, #1
loc_800FB62:
    cmp r6, r7
    bge loc_800FB9E
    add r1, sp, #0x18
    ldrb r0, [r1,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r2, [r5,#0x12]
    sub r2, r2, r0
    cmp r2, #0
    bge loc_800FB7A
    neg r2, r2
loc_800FB7A:
    ldrb r3, [r5,#0x13]
    sub r3, r3, r1
    cmp r3, #0
    bge loc_800FB84
    neg r3, r3
loc_800FB84:
    ldr r4, [sp,#0x28]
    cmp r2, r4
    bgt loc_800FB9A
    blt loc_800FB92
    ldr r4, [sp,#0x24]
    cmp r1, r4
    blt loc_800FB92
loc_800FB92:
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    str r2, [sp,#0x28]
    str r3, [sp,#0x2c]
loc_800FB9A:
    add r6, #1
    b loc_800FB62
loc_800FB9E:
    ldr r0, [sp,#0x20]
    ldr r1, [sp,#0x24]
    b loc_800FBDA
loc_800FBA4:
    mov r4, #0
    mov r6, #0
loc_800FBA8:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r1, [r5,#0x12]
    ldr r2, [sp,#0x1c]
    tst r2, r2
    bne loc_800FBC0
    cmp r0, r1
    blt loc_800FBC4
    b loc_800FBCE
loc_800FBC0:
    cmp r0, r1
    ble loc_800FBCE
loc_800FBC4:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_800FBCE:
    add r6, #1
    cmp r6, r7
    blt loc_800FBA8
    tst r4, r4
    bne loc_800FB38
    mov r0, #0
loc_800FBDA:
    add sp, sp, #0x30
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_800FBE0:    .word dword_800FBE4
dword_800FBE4:    .word 0x200000, 0x0
    .word 0x400000, 0x0
// end of function sub_800FAE8

.thumb
sub_800FBF4:
    push {lr}
    ldrb r0, [r5,#0x16]
    lsl r2, r0, #3
    ldr r1, [pc, #0x800fc28-0x800fbfa-2] // dword_800FC30
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r1, #1
    eor r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800A17A
    tst r0, r0
    bne locret_800FC26
    ldrb r0, [r5,#0x16]
    lsl r2, r0, #3
    ldr r1, [pc, #0x800fc2c-0x800fc14-4] // dword_800FC40
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r1, #1
    eor r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800A17A
locret_800FC26:
    pop {pc}
off_800FC28:    .word dword_800FC30
off_800FC2C:    .word dword_800FC40
dword_800FC30:    .word 0x200020
    .word 0x0
    .word 0x400000, 0x20
dword_800FC40:    .word 0x20, 0x0, 0x0
    .word 0x20
off_800FC50:    .word off_801255C
off_800FC54:    .word off_801DA10
// end of function sub_800FBF4

.thumb
sub_800FC58:
    push {lr}
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_800FC7A
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#6]
    mov r1, #0x20 
    tst r0, r1
    beq loc_800FC74
    bl ho_800FC8A
    b locret_800FC88
loc_800FC74:
    bl sub_800FDAC
    b locret_800FC88
loc_800FC7A:
    cmp r0, #1
    bne loc_800FC84
    bl ho_800FED2
    b locret_800FC88
loc_800FC84:
    bl ho_800FFD6
locret_800FC88:
    pop {pc}
// end of function sub_800FC58

.thumb
ho_800FC8A:
    push {lr}
    ldr r1, [pc, #0x800fc98-0x800fc8c-4] // jt_800FC9C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_800FC98:    .word jt_800FC9C
jt_800FC9C:    .word sub_800FCA8+1
    .word sub_800FD2C+1
    .word sub_800FD5C+1
// end of function ho_800FC8A

.thumb
sub_800FCA8:
    push {r4,r6,r7,lr}
    mov r0, r8
    push {r0}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r8, r5
    bl sub_800AC72
    add r6, r0, #0
    mov r0, #0x34 
    add r0, r0, r5
    bl sub_8003558
    add r3, r0, #0
    add r4, r1, #0
    mov r0, #0xa8
    ldr r0, [r5,r0]
    lsl r6, r6, #8
    add r1, r6, #0
    ldrb r6, [r5,#0x10]
    add r1, r1, r6
    ldr r6, [pc, #0x800fd28-0x800fcd6-2] // dword_2037810
    ldr r2, [r6,#(dword_2037814 - 0x2037810)]
    str r2, [r5,#0x4c]
    add r5, r2, #0
    add r5, #0x40 
    str r5, [r6,#(dword_2037814 - 0x2037810)]
    mov r5, #0xa
    ldr r6, [r6]
    lsl r6, r6, #0x10
    lsr r6, r6, #0x15
    mov r7, #0x40 
    bl sub_80019B0
    mov r5, r8
    strb r2, [r5,#0xc]
    ldr r6, [pc, #0x800fd28-0x800fcf4-4] // dword_2037810
    add r4, r1, #0
    ldr r2, [r0]
    ldr r1, [r6]
    add r3, r1, r2
    str r3, [r6]
    add r0, #4
    bl loc_8000874
    ldr r6, [r5,#0x4c]
    ldrb r4, [r5,#0xc]
loc_800FD0A:
    sub r4, #1
    blt loc_800FD1E
    ldr r0, [r6]
    ldr r1, [r6,#4]
    mov r2, #2
    mov r3, #0
    bl sub_8007880
    add r6, #8
    b loc_800FD0A
loc_800FD1E:
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r0}
    mov r8, r0
    pop {r4,r6,r7,pc}
off_800FD28:    .word dword_2037810
// end of function sub_800FCA8

.thumb
sub_800FD2C:
    push {r6,lr}
    bl sub_80019A0
    lsr r0, r0, #1
    bcs loc_800FD56
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldr r6, [r5,#0x4c]
    ldrb r4, [r5,#0xc]
loc_800FD42:
    sub r4, #1
    blt locret_800FD5A
    ldr r0, [r6]
    ldr r1, [r6,#4]
    mov r2, #2
    mov r3, #0
    bl sub_8007880
    add r6, #8
    b loc_800FD42
loc_800FD56:
    mov r0, #8
    strh r0, [r5,#0xa]
locret_800FD5A:
    pop {r6,pc}
// end of function sub_800FD2C

.thumb
sub_800FD5C:
    push {lr}
    bl sub_80019A0
    lsr r0, r0, #2
    bcc locret_800FDAA
    bl sub_8007E16
    cmp r0, #0x44 
    push {r0}
    beq loc_800FD9A
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    pop {r0}
    beq loc_800FDA2
    cmp r0, #0x46 
    blt loc_800FD9A
    mov r0, #0
    mov r1, #0x2a 
    bl sub_800D722
    cmp r0, #0
    beq loc_800FDA2
    mov r0, #1
    mov r1, #0x2a 
    bl sub_800D722
    cmp r0, #0
    beq loc_800FDA2
loc_800FD9A:
    mov r0, #0
    mov r1, #0
    bl sub_8015A18
loc_800FDA2:
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800FDAA:
    pop {pc}
// end of function sub_800FD5C

.thumb
sub_800FDAC:
    push {lr}
    ldr r1, [pc, #0x800fdbc-0x800fdae-2] // jt_800FDC0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_800FDBC:    .word jt_800FDC0
jt_800FDC0:    .word sub_800FDCC+1
    .word sub_800FE3E+1
    .word sub_800FE82+1
// end of function sub_800FDAC

.thumb
sub_800FDCC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800FE00
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_800FDFA
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    bne loc_800FDF6
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #8
    strh r0, [r5,#0xa]
    b locret_800FE3C
loc_800FDF6:
    bl sub_8007EEC
loc_800FDFA:
    mov r0, #4
    strb r0, [r5,#0xb]
    b loc_800FE34
loc_800FE00:
    bl sub_80019A0
    mov r1, #1
    tst r0, r1
    beq loc_800FE34
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_800FE1A
    bl sub_8007ED4
    tst r0, r0
    beq loc_800FE34
loc_800FE1A:
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #2
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0x22]
    mov r0, #0
    bl sub_8002CC6
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
loc_800FE34:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
locret_800FE3C:
    pop {pc}
// end of function sub_800FDCC

.thumb
sub_800FE3E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_800FE80
    mov r0, #2
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    beq loc_800FE70
    push {r0}
    add r1, r0, #0
    bl sub_8002F28
    pop {r0}
    sub r0, #0x10
    neg r0, r0
    bl sub_8002CC6
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    b locret_800FE80
loc_800FE70:
    bl sub_8002D1A
    bl sub_8002F5E
    bl sub_8007F16
    mov r0, #8
    strh r0, [r5,#0xa]
locret_800FE80:
    pop {pc}
// end of function sub_800FE3E

.thumb
sub_800FE82:
    push {lr}
    bl sub_80019A0
    lsr r0, r0, #2
    bcc locret_800FED0
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_800FEC0
    push {r0}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    pop {r0}
    beq loc_800FEC8
    cmp r0, #0x46 
    blt loc_800FEC0
    mov r0, #0
    mov r1, #0x2a 
    bl sub_800D722
    cmp r0, #0
    beq loc_800FEC8
    mov r0, #1
    mov r1, #0x2a 
    bl sub_800D722
    cmp r0, #0
    beq loc_800FEC8
loc_800FEC0:
    mov r0, #0
    mov r1, #0
    bl sub_8015A18
loc_800FEC8:
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800FED0:
    pop {pc}
// end of function sub_800FE82

.thumb
ho_800FED2:
    push {lr}
    ldr r1, [pc, #0x800fee0-0x800fed4-4] // jt_800FEE4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_800FEE0:    .word jt_800FEE4
jt_800FEE4:    .word sub_800FEF0+1
    .word sub_800FF48+1
    .word sub_800FF9C+1
// end of function ho_800FED2

.thumb
sub_800FEF0:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_8012D74
    mov r0, #4
    strb r0, [r5,#0xb]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x1e
    strh r0, [r5,#0x22]
    mov r1, #0x1f
    add r0, r1, #0
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    ldr r0, [pc, #0x800ff44-0x800ff2c-4] // =0xFFFF
    bl sub_800AFE4
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
dword_800FF44:    .word 0xFFFF
// end of function sub_800FEF0

.thumb
sub_800FF48:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_800FF70
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_800FF78
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #3
    bl sub_80E17DE
    mov r0, #0xce
    bl f500_8000558
loc_800FF70:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    beq loc_800FF92
loc_800FF78:
    ldrh r0, [r5,#0x22]
    add r1, r0, #0
    lsl r1, r1, #5
    add r1, r1, r0
    lsl r1, r1, #5
    add r0, r0, r1
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    b locret_800FF9A
loc_800FF92:
    bl sub_8002F1A
    mov r0, #8
    strh r0, [r5,#0xa]
locret_800FF9A:
    pop {pc}
// end of function sub_800FF48

.thumb
sub_800FF9C:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_800FFBA
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    beq loc_800FFBA
    mov r0, #0
    mov r1, #0
    bl sub_8015A18
loc_800FFBA:
    bl sub_800AFF2
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #1
    bl sub_8012D7C
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_800FF9C

.thumb
ho_800FFD6:
    push {lr}
    ldr r1, [pc, #0x800ffe4-0x800ffd8-4] // jt_800FFE8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_800FFE4:    .word jt_800FFE8
jt_800FFE8:    .word sub_800FFF4+1
    .word sub_801006C+1
    .word sub_80100BA+1
// end of function ho_800FFD6

.thumb
sub_800FFF4:
    push {r4,lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010018
    mov r0, #0xa0
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    ldr r0, [pc, #0x8010068-0x801000a-2] // =0xFFFF
    bl sub_800AFE4
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010018:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt loc_801003E
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #0x1e
    strh r0, [r5,#0x22]
    mov r1, #0x1f
    add r0, r1, #0
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_8010064
loc_801003E:
    lsr r0, r0, #1
    bcc loc_801005E
    bl sub_8001AF6
    mov r4, #3
    and r4, r0
    lsl r4, r4, #8
    add r4, #0x2e 
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #7
    bl sub_80145C0
    bl sub_80E17DE
loc_801005E:
    ldrh r0, [r5,#0x3e]
    sub r0, #8
    strh r0, [r5,#0x3e]
locret_8010064:
    pop {r4,pc}
    .balign 4, 0x00
dword_8010068:    .word 0xFFFF
// end of function sub_800FFF4

.thumb
sub_801006C:
    push {r4,lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    beq loc_80100B0
    lsr r0, r0, #2
    bcc loc_8010096
    bl sub_8001AF6
    mov r4, #3
    and r4, r0
    lsl r4, r4, #8
    add r4, #0x2e 
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #7
    bl sub_80145C0
    bl sub_80E17DE
loc_8010096:
    ldrh r0, [r5,#0x22]
    add r1, r0, #0
    lsl r1, r1, #5
    add r1, r1, r0
    lsl r1, r1, #5
    add r0, r0, r1
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    b locret_80100B8
loc_80100B0:
    bl sub_8002F1A
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80100B8:
    pop {r4,pc}
// end of function sub_801006C

.thumb
sub_80100BA:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_80100D0
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    beq loc_80100D8
loc_80100D0:
    mov r0, #0
    mov r1, #1
    bl sub_8015A18
loc_80100D8:
    bl sub_800AFF2
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80100BA

.thumb
sub_80100E6:
    ldrb r0, [r5]
    mov r1, #4
    bic r0, r1
    strb r0, [r5]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80100E6

.thumb
sub_80100F8:
    push {lr}
    ldr r1, [pc, #0x8010108-0x80100fa-2] // jt_801010C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010108:    .word jt_801010C
jt_801010C:    .word sub_8010114+1
    .word sub_8010140+1
// end of function sub_80100F8

.thumb
sub_8010114:
    push {lr}
    bl sub_8012D74
    bl sub_801348C
    bl sub_800C100
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_8012DA0
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_801013A
    bl sub_8007978
loc_801013A:
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_8010114

.thumb
sub_8010140:
    push {r4,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010166
    bl sub_8007920
    bne locret_8010188
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_8010158
    bl sub_8008368
loc_8010158:
    mov r4, #0
    bl sub_80E32BA
    mov r0, #0x20 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010166:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_8010180
    bl sub_802216C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #8
    str r0, [r5,#8]
    b locret_8010188
loc_8010180:
    lsr r0, r0, #2
    bcc locret_8010188
    bl sub_8002DFC
locret_8010188:
    pop {r4,pc}
// end of function sub_8010140

.thumb
ho_cb_801018A:
    push {lr}
    ldr r1, [pc, #0x8010198-0x801018c-4] // jt_801019C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8010198:    .word jt_801019C
jt_801019C:    .word sub_80101A4+1
    .word sub_80101D0+1
// end of function ho_cb_801018A

.thumb
sub_80101A4:
    push {lr}
    bl sub_8012D74
    bl sub_801348C
    bl sub_800C100
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_8012DA0
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_80101CA
    bl sub_8007978
loc_80101CA:
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r4,pc}
// end of function sub_80101A4

.thumb
sub_80101D0:
    push {r4,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80101FE
    bl sub_8007920
    bne locret_8010220
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_80101E8
    bl sub_8008368
loc_80101E8:
    mov r0, #0
    strb r0, [r5,#0x18]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r4, #0
    bl sub_80E32BA
    mov r0, #0x20 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80101FE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_8010218
    bl sub_802216C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #8
    str r0, [r5,#8]
    b locret_8010220
loc_8010218:
    lsr r0, r0, #2
    bcc locret_8010220
    bl sub_8002DFC
locret_8010220:
    pop {r4,pc}
// end of function sub_80101D0

.thumb
nullsub_59:
    mov pc, lr
// end of function nullsub_59

.thumb
sub_8010224:
    push {lr}
    ldr r1, [pc, #0x8010234-0x8010226-2] // jt_8010238
    ldrb r0, [r5,#0x1f]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010234:    .word jt_8010238
jt_8010238:    .word sub_8010240+1
    .word sub_80102A8+1
// end of function sub_8010224

.thumb
sub_8010240:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0xc
    bl sub_8012F36
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800AC76
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0x1b]
    tst r2, r2
    beq loc_8010294
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_8010294
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x1e]
    mov r0, #4
    strb r0, [r5,#0x1f]
    pop {r6,r7,pc}
loc_8010294:
    mov r0, #1
    lsl r0, r0, #0xc
    bl sub_8012F40
    pop {r6,r7,pc}
    .byte 0, 0
    .word 0xA0000, 0x80000
// end of function sub_8010240

.thumb
sub_80102A8:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x1e]
    sub r0, #1
    strb r0, [r5,#0x1e]
    bgt loc_8010342
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_80102E0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_80102E0
    ldrb r0, [r5,#0x1b]
    add r0, #1
    strb r0, [r5,#0x1b]
    b loc_80102FC
loc_80102E0:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_80102FC
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne loc_80102FC
    mov r0, #0
    strb r0, [r5,#0x1b]
loc_80102FC:
    ldrb r0, [r5,#0x1b]
    sub r0, #1
    strb r0, [r5,#0x1b]
    ble loc_8010330
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_8010330
    mov r0, #4
    strb r0, [r5,#0x1e]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,r6,r7,pc}
loc_8010330:
    mov r0, #0
    strb r0, [r5,#0x1f]
    mov r0, #1
    lsl r0, r0, #0xc
    bl sub_8012F40
    bl sub_8012D4E
    pop {r4,r6,r7,pc}
loc_8010342:
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    ldr r2, [pc, #0x8010728-0x8010346-2] // =0xA0000
    mul r2, r0
    ldr r0, [r5,#0x34]
    add r0, r0, r2
    str r0, [r5,#0x34]
    mov r0, #0x1d
    ldrsb r0, [r5,r0]
    ldr r2, [pc, #0x801072c-0x8010354-4] // =0x80000
    mul r2, r0
    ldr r0, [r5,#0x38]
    add r0, r0, r2
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,r6,r7,pc}
// end of function sub_80102A8

.thumb
sub_8010368:
    push {lr}
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_801038C
    bl sub_8012F4A
    mov r1, #8
    tst r0, r1
    beq locret_801038C
    bl sub_8007BB4
    mov r1, #0x1f
    and r0, r1
    ldr r1, [pc, #0x8010390-0x8010382-2] // dword_8010394
    ldrb r0, [r1,r0]
    lsl r0, r0, #5
    bl sub_8002F02
locret_801038C:
    pop {pc}
    .byte 0, 0
off_8010390:    .word dword_8010394
dword_8010394:    .word 0x6040200, 0xE0C0A08, 0x16141210, 0x1E1C1A18, 0x181A1C1E
    .word 0x10121416, 0x80A0C0E, 0x20406
// end of function sub_8010368

.thumb
sub_80103B4:
    push {lr}
    bl sub_8012F4A
    mov r1, #8
    lsl r1, r1, #8
    tst r0, r1
    beq locret_80103D2
    bl sub_8007BB4
    mov r1, #2
    and r0, r1
    ldr r1, [pc, #0x80103d4-0x80103ca-2] // unk_80103D8
    ldrh r0, [r1,r0]
    bl sub_8002F02
locret_80103D2:
    pop {pc}
off_80103D4:    .word unk_80103D8
unk_80103D8:    .byte 0
    .byte 0
    .byte 0xFF
    .byte 3
// end of function sub_80103B4

.thumb
sub_80103DC:
    push {lr}
    bl sub_8007920
    bne loc_80103EC
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_80103EC:
    bl sub_8012F4A
    ldr r1, [pc, #0x8010730-0x80103f0-4] // =0xFF
    tst r0, r1
    bne locret_8010456
    ldr r1, [pc, #0x8010734-0x80103f6-2] // =0x201
    tst r0, r1
    beq loc_801040C
    ldr r0, [r5,#0x54]
    ldrh r0, [r0,#0x18]
    lsr r0, r0, #2
    bcs loc_801040C
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_801040C:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    ldrb r1, [r5,#0x16]
    eor r0, r1
    beq loc_8010440
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq locret_8010456
    push {r5}
    add r5, r0, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x8010738-0x801042e-2] // =0x2000
    tst r0, r1
    pop {r5}
    beq locret_8010456
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b locret_8010456
loc_8010440:
    mov r0, #4
    bl sub_8015DCC
    bl sub_8012F4A
    ldr r1, [pc, #0x8010738-0x801044a-2] // =0x2000
    tst r0, r1
    beq locret_8010456
    mov r0, #4
    bl sub_8015AFA
locret_8010456:
    pop {pc}
// end of function sub_80103DC

.thumb
sub_8010458:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010472
    ldr r0, [pc, #0x801073c-0x8010460-4] // =0x100000
    bl sub_8012F40
    bl sub_800C100
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010472:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne locret_8010486
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8010486:
    pop {pc}
// end of function sub_8010458

.thumb
sub_8010488:
    push {lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_80104A0
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_80104A0:
    ldr r0, [r5,#0x54]
    ldrh r1, [r0,#0x28]
    tst r1, r1
    beq loc_80104AC
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_80104AC:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_80104CE
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_80145C0
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b locret_80104D6
loc_80104CE:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
locret_80104D6:
    pop {pc}
// end of function sub_8010488

.thumb
sub_80104D8:
    push {lr}
    ldr r0, [r5,#0x54]
    bl sub_8012474
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_8010502
    ldr r0, [r5,#0x78]
    tst r0, r0
    beq loc_80104FC
    ldr r1, [r0,#0x68]
    sub r1, #1
    str r1, [r0,#0x68]
    ldr r1, [r5,#0x7c]
    lsl r1, r1, #2
    add r1, #0x60 
    mov r2, #0
    str r2, [r0,r1]
loc_80104FC:
    bl sub_80033B4
    beq locret_801050A
loc_8010502:
    bl sub_80033B4
    bl sub_8007968
locret_801050A:
    pop {pc}
// end of function sub_80104D8

.thumb
sub_801050C:
    push {lr}
    ldr r0, [r5,#0x54]
    bl sub_8012474
    bl sub_80033B4
    pop {pc}
// end of function sub_801050C

.thumb
sub_801051A:
    push {lr}
    bl sub_80033B4
    pop {pc}
// end of function sub_801051A

.thumb
sub_8010522:
    push {lr}
    bl sub_80079EA
    tst r0, r0
    bne locret_801055E
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r1, r0
    beq locret_801055E
    mov r1, #1
    eor r0, r1
    mov r1, #0x22 
    bl sub_800D722
    tst r0, r0
    beq locret_801055E
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#0xb]
    tst r0, r0
    beq locret_801055E
    bl sub_8007BB4
    mov r1, #2
    and r0, r1
    ldr r1, [pc, #0x8010560-0x8010556-2] // unk_8010564
    ldrh r0, [r1,r0]
    bl sub_8002F02
locret_801055E:
    pop {pc}
off_8010560:    .word unk_8010564
unk_8010564:    .byte 0
    .byte 0
    .byte 0x1F
    .byte 0
// end of function sub_8010522

.thumb
sub_8010568:
    push {lr}
    ldr r1, [pc, #0x8010578-0x801056a-2] // off_801057C
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010578:    .word off_801057C
off_801057C:    .word sub_8010588+1
    .word sub_8010604+1
    .word sub_80106C6+1
// end of function sub_8010568

.thumb
sub_8010588:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [pc, #0x8010740-0x80105a2-2] // =0x1000
    bl sub_8012F40
    bl sub_800C100
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800AC76
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_80105FA
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_80105FA
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8010728-0x80105d8-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x801072c-0x80105e2-2] // =0x80000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_80105FA:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
// end of function sub_8010588

.thumb
sub_8010604:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_8010634
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_80106BC
loc_8010634:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_801065A
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_801065A
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_8010676
loc_801065A:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_8010676
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne loc_8010676
    mov r0, #0
    strb r0, [r5,#0xb]
loc_8010676:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_80106A6
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_80106A6
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,pc}
loc_80106A6:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_80106BC:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_8010604

.thumb
sub_80106C6:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_80106E0
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_80106E0:
    pop {pc}
// end of function sub_80106C6

.thumb
sub_80106E2:
    push {lr}
    ldrb r0, [r5]
    mov r1, #8
    tst r0, r1
    bne locret_8010724
    bl sub_8007920
    bne locret_8010724
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_8010724
    bl sub_8012F4A
    ldr r1, [pc, #0x8010744-0x80106fc-4] // =0x100C00
    tst r0, r1
    bne locret_8010724
    bl sub_8012F64
    mov r1, #8
    tst r0, r1
    bne locret_8010724
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8010720
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_8010720:
    bl sub_800283C
locret_8010724:
    pop {pc}
    .balign 4, 0x00
dword_8010728:    .word 0xA0000
dword_801072C:    .word 0x80000
off_8010730:    .word 0x100
dword_8010734:    .word 0x202
off_8010738:    .word 0x2000
dword_801073C:    .word 0x100000
off_8010740:    .word 0x1000
dword_8010744:    .word 0x100C00
// end of function sub_80106E2

.thumb
sub_8010748:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x24 
    bl sub_800D77A
    push {r0}
    mov r1, #0x23 
    bl sub_800D77A
    pop {r1}
    push {r0}
    bl sub_800B8D6
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_8010748

    pop {r0}
    cmp r0, #0xa
    beq loc_8010778
    bl sub_8002E76
    b loc_801077C
loc_8010778:
    bl sub_8002FC2
loc_801077C:
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800BFC2
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800B7B4
    bl sub_800E7C8
    bl ho_800DAD0
    bl sub_800DDA2
    bl sub_8012442
    tst r0, r0
    bne loc_80107B8
    bl sub_80033B4
    b locret_80107F2
loc_80107B8:
    push {r0}
    bl sub_800C928
    pop {r0}
    mov r1, #1
    mov r2, #2
    bl sub_8012958
    bl ho_800DE4A
    bl sub_800D7E6
    bl ho_800E00C
    ldrb r0, [r5,#0x16]
    mov r1, #0x24 
    bl sub_800D722
    cmp r0, #0
    beq loc_80107EA
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    mov r1, #0xff
    strb r1, [r0,#0x18]
loc_80107EA:
    bl sub_8022C62
    mov r0, #4
    str r0, [r5,#8]
locret_80107F2:
    pop {r4,pc}
.thumb
sub_80107F4:
    push {lr}
    bl sub_8010CDC
    pop {pc}
// end of function sub_80107F4

.thumb
ho_cb_80107FC:
    push {lr}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0
    bne loc_8010822
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #1
    beq loc_8010822
    bl sub_8002DFC
    ldr r1, [pc, #0x8010828-0x8010816-2] // jt_801082C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
loc_8010822:
    bl sub_8010CF8
    pop {pc}
off_8010828:    .word jt_801082C
jt_801082C:    .word sub_801083C+1
    .word sub_8010876+1
    .word sub_80108AC+1
    .word sub_80108C0+1
// end of function ho_cb_80107FC

.thumb
sub_801083C:
    push {lr}
    bl sub_800799E
    bl sub_8012D74
    bl sub_801348C
    bl sub_800C100
    bl sub_800BD6E
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #2
    strb r0, [r5,#0x10]
    bl sub_800AC72
    bl loc_8002F8E
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_8012DA0
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_801083C

.thumb
sub_8010876:
    push {lr}
    bl sub_8007920
    bne locret_80108AA
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#0x18]
    ldr r1, [r5,#0x58]
    mov r0, #0
    str r0, [r1,#0x60]
    mov r0, #0x6c 
    bl f500_8000558
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #3
    bl sub_80E17DE
    bl sub_80E17DE
    mov r0, #0x15
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80108AA:
    pop {pc}
// end of function sub_8010876

.thumb
sub_80108AC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80108BE
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80108BE:
    pop {pc}
// end of function sub_80108AC

.thumb
sub_80108C0:
    push {lr}
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x20 
    beq loc_80108E2
    lsr r0, r0, #1
    push {r0}
    add r1, r0, #0
    bl sub_8002F28
    pop {r0}
    sub r0, #0x10
    neg r0, r0
    bl sub_8002CC6
    pop {pc}
loc_80108E2:
    bl sub_8002F5E
    bl sub_8002D1A
    bl sub_802216C
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
    pop {pc}
// end of function sub_80108C0

    push {lr}
    bl sub_8010224
    pop {pc}
.thumb
sub_8010904:
    push {lr}
    bl sub_80104D8
    pop {pc}
// end of function sub_8010904

.thumb
sub_801090C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010982
    bl ho_800DC4C
    mov r0, #1
    lsl r0, r0, #0xa
    bl sub_8012F36
    bl sub_80131DC
    bl sub_800C100
    bl sub_8022E80
    mov r0, #0x7f
    bl sub_800C1B6
    ldr r0, [pc, #0x8010cc0-0x8010932-2] // =0x100041
    bl sub_8012F40
    bl sub_800BD6E
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_801095C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
loc_801095C:
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_8008004
    mov r0, #0x17
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010982:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80109A4
    mov r0, #1
    lsl r0, r0, #0xa
    bl sub_8012F40
    ldr r0, [pc, #0x8010cc4-0x8010992-2] // =0x43C
    bl sub_800BF84
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80109A4:
    pop {pc}
// end of function sub_801090C

.thumb
sub_80109A6:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80109F6
    bl sub_800DCC4
    bl sub_8022E80
    ldr r0, [pc, #0x8010cc8-0x80109b6-2] // =0x100441
    bl sub_8012F40
    bl sub_800C100
    mov r0, #0x7f
    bl sub_800C1B6
    bl sub_800BD6E
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80109F6:
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x1e]
    tst r1, r1
    beq loc_8010A14
    ldr r0, [r5,#0x54]
    mov r2, #0x10
    ldrsh r1, [r0,r2]
    sub r1, #1
    strh r1, [r0,r2]
    bgt loc_8010A14
    mov r1, #0
    strh r1, [r0,r2]
    ldr r0, [pc, #0x8010ccc-0x8010a0e-2] // =0x800
    bl sub_8012F40
loc_8010A14:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne locret_8010A32
    ldr r0, [pc, #0x8010cc4-0x8010a20-4] // =0x43C
    bl sub_800BF84
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8010A32:
    pop {pc}
// end of function sub_80109A6

.thumb
sub_8010A34:
    push {r4,r7,lr}
    ldrb r0, [r5]
    mov r1, #4
    bic r0, r1
    strb r0, [r5]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {r4,r7,pc}
// end of function sub_8010A34

.thumb
sub_8010A48:
    push {lr}
    ldr r1, [pc, #0x8010a58-0x8010a4a-2] // jt_8010A5C
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010A58:    .word jt_8010A5C
jt_8010A5C:    .word sub_8010A68+1
    .word sub_8010B00+1
    .word sub_8010BC2+1
// end of function sub_8010A48

.thumb
sub_8010A68:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800BD6E
    bl sub_800DD32
    bl sub_8022E80
    bl sub_800AC72
    bl loc_8002F8E
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [pc, #0x8010cd0-0x8010a9e-2] // =0x1440
    bl sub_8012F40
    bl sub_800C100
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800AC76
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strh r2, [r5,#0x22]
    tst r2, r2
    beq loc_8010AF6
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_8010AF6
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8010cd4-0x8010ad4-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8010cd8-0x8010ade-2] // =0x80000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8010AF6:
    mov r0, #0x18
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
// end of function sub_8010A68

.thumb
sub_8010B00:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_8010B30
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_8010BB8
loc_8010B30:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_8010B56
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_8010B56
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    b loc_8010B72
loc_8010B56:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_8010B72
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne loc_8010B72
    mov r0, #0
    strh r0, [r5,#0x22]
loc_8010B72:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    ble loc_8010BA2
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_8010BA2
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,pc}
loc_8010BA2:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8010BB8:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_8010B00

.thumb
sub_8010BC2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_8010BE2
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    ldr r0, [pc, #0x8010cc4-0x8010bd4-4] // =0x43C
    bl sub_800BF84
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8010BE2:
    pop {pc}
// end of function sub_8010BC2

.thumb
sub_8010BE4:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x40
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_8010C6A
    bl sub_800BF94
    ldr r1, [pc, #0x8010ccc-0x8010bf4-4] // =0x800
    tst r0, r1
    beq loc_8010C6A
    bl sub_8009052
    tst r0, r0
    beq loc_8010C64
    bl sub_800BF9A
    add r1, r0, #1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    beq loc_8010C64
    push {r0}
    bl sub_800D5B8
    tst r0, r0
    pop {r0}
    beq loc_8010C64
    bl sub_8019010
    ldrb r0, [r0,#9]
    mov r1, #1
    tst r0, r1
    beq loc_8010C64
    mov r0, #0
    add r7, sp, #0
    bl sub_800D464
    push {r7}
    ldr r6, [r7,#8]
    ldr r4, [r7,#0xc]
    ldrb r1, [r7,#3]
    lsl r1, r1, #2
    ldr r3, [pc, #0x8010cbc-0x8010c38-4] // off_8022034
    ldr r3, [r3,r1]
    ldrb r2, [r7,#2]
    ldrh r1, [r7,#6]
    lsl r1, r1, #0x10
    ldrh r7, [r7,#0x14]
    add r7, r7, r1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov lr, pc
    bx r3
    pop {r7}
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl loc_800909E
    ldrb r0, [r5,#0x16]
    bl sub_8008B82
    bl sub_800B778
loc_8010C64:
    ldr r0, [pc, #0x8010ccc-0x8010c64-4] // =0x800
    bl sub_800BF84
loc_8010C6A:
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_8010C80
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_8010C80:
    ldr r0, [r5,#0x54]
    ldrh r1, [r0,#0x28]
    tst r1, r1
    beq loc_8010C8C
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_8010C8C:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8010CAE
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_80145C0
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b loc_8010CB6
loc_8010CAE:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
loc_8010CB6:
    add sp, sp, #0x40
    pop {r4,r6,r7,pc}
    .hword 0x0
off_8010CBC:    .word off_8022034
dword_8010CC0:    .word 0x100041
dword_8010CC4:    .word 0x43F
dword_8010CC8:    .word 0x100441
off_8010CCC:    .word 0x800
off_8010CD0:    .word 0x1440
dword_8010CD4:    .word 0xA0000
dword_8010CD8:    .word 0x80000
// end of function sub_8010BE4

.thumb
sub_8010CDC:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#6]
    mov r1, #0x20 
    tst r0, r1
    beq loc_8010CF2
    bl ho_800FC8A
    pop {pc}
loc_8010CF2:
    bl sub_800FDAC
    pop {pc}
// end of function sub_8010CDC

.thumb
sub_8010CF8:
    push {lr}
    ldr r1, [pc, #0x8010d08-0x8010cfa-2] // jt_8010D0C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010D08:    .word jt_8010D0C
jt_8010D0C:    .word sub_8010D14+1
    .word sub_8010D42+1
// end of function sub_8010CF8

.thumb
sub_8010D14:
    push {lr}
    bl sub_800799E
    bl sub_8012D74
    bl sub_801348C
    bl sub_800C100
    bl sub_800BD6E
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012DA0
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_8010D14

.thumb
sub_8010D42:
    push {r4,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010D80
    bl sub_8007920
    bne locret_8010DA2
    mov r0, #0
    strb r0, [r5,#0x18]
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r4, #1
    bl sub_80E32BA
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #3
    bl sub_80E17DE
    mov r1, #0x5a 
    strh r1, [r0,#0x20]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010D80:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_8010D9A
    bl sub_802216C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #8
    str r0, [r5,#8]
    b locret_8010DA2
loc_8010D9A:
    lsr r0, r0, #2
    bcc locret_8010DA2
    bl sub_8002DFC
locret_8010DA2:
    pop {r4,pc}
// end of function sub_8010D42

.thumb
sub_8010DA4:
    push {lr}
    ldr r1, [pc, #0x8010db4-0x8010da6-2] // jt_8010DB8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8010DB4:    .word jt_8010DB8
jt_8010DB8:    .word sub_8010D14+1
    .word sub_8010DC4+1
    .word sub_8010E0E+1
// end of function sub_8010DA4

.thumb
sub_8010DC4:
    push {r4,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010DE8
    bl sub_8007920
    bne locret_8010E0C
    mov r0, #0
    strb r0, [r5,#0x18]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r4, #1
    bl sub_80E32BA
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010DE8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_8010E04
    mov r0, #4
    mov r1, #4
    bl sub_8005ADC
    mov r4, #1
    bl sub_80E32BA
    mov r0, #8
    strh r0, [r5,#0xa]
    b locret_8010E0C
loc_8010E04:
    lsr r0, r0, #2
    bcc locret_8010E0C
    bl sub_8002DFC
locret_8010E0C:
    pop {r4,pc}
// end of function sub_8010DC4

.thumb
sub_8010E0E:
    push {r4,lr}
    bl sub_8005B5C
    tst r0, r0
    bne loc_8010E2A
    bl sub_802216C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #8
    str r0, [r5,#8]
    b locret_8010E32
loc_8010E2A:
    lsr r0, r0, #2
    bcc locret_8010E32
    bl sub_8002DFC
locret_8010E32:
    pop {r4,pc}
// end of function sub_8010E0E

.thumb
sub_8010E34:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010E8E
    mov r0, #1
    lsl r0, r0, #0xa
    bl sub_8012F36
    ldr r0, [pc, #0x80110e8-0x8010e44-4] // =0x100040
    bl sub_8012F40
    bl sub_800C100
    bl sub_80131DC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_8010E72
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
loc_8010E72:
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0x17
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010E8E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_8010EAA
    mov r0, #1
    lsl r0, r0, #0xa
    bl sub_8012F40
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8010EAA:
    pop {pc}
// end of function sub_8010E34

.thumb
sub_8010EAC:
    push {lr}
    bl sub_8010224
    pop {pc}
// end of function sub_8010EAC

.thumb
sub_8010EB4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010EF2
    ldr r0, [pc, #0x80110e8-0x8010ebc-4] // =0x100040
    bl sub_8012F40
    bl sub_800C100
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010EF2:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne locret_8010F0A
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8010F0A:
    pop {pc}
// end of function sub_8010EB4

.thumb
sub_8010F0C:
    push {lr}
    bl sub_80083B8
    cmp r0, #0xff
    beq loc_8010F24
    ldr r1, [pc, #0x8010f38-0x8010f16-2] // unk_8010F3C
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_8010F24
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_8010F24:
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8010F32
    mov r0, #0
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8010F32:
    bl sub_80104D8
    pop {pc}
off_8010F38:    .word unk_8010F3C
unk_8010F3C:    .byte 0x85
    .byte 0x86
    .byte 0x87
    .byte 0x88
    .byte 0x89
    .byte 0x8A
    .byte 0x8B
    .byte 0x8C
    .byte 0x8D
    .byte 0x8E
    .byte 0x8F
    .byte 0x90
    .byte 0x91
    .byte 0x97
    .byte 0x93
    .byte 0x95
    .byte 0x92
    .byte 0x98
    .byte 0x96
    .byte 0x94
    .byte 0xFF
    .byte 0x99
// end of function sub_8010F0C

.thumb
sub_8010F52:
    push {lr}
    bl sub_80100E6
    pop {pc}
// end of function sub_8010F52

.thumb
ho_8010F5A:
    push {lr}
    ldr r1, [pc, #0x8010f68-0x8010f5c-4] // jt_8010F6C
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8010F68:    .word jt_8010F6C
jt_8010F6C:    .word sub_8010F78+1
    .word sub_8011004+1
    .word sub_80110C6+1
// end of function ho_8010F5A

.thumb
sub_8010F78:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800AC72
    bl loc_8002F8E
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
loc_8010F9E:
    bl sub_8012D4E
    ldr r0, [pc, #0x80110ec-0x8010fa2-2] // =0x1440
    bl sub_8012F40
    bl sub_800C100
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800AC76
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strh r2, [r5,#0x22]
    tst r2, r2
    beq loc_8010FFA
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_8010FFA
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x80110f0-0x8010fd8-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x80110f4-0x8010fe2-2] // =0x80000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8010FFA:
    mov r0, #0x18
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
// end of function sub_8010F78

.thumb
sub_8011004:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_8011034
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_80110BC
loc_8011034:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_801105A
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_801105A
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    b loc_8011076
loc_801105A:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_8011076
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne loc_8011076
    mov r0, #0
    strh r0, [r5,#0x22]
loc_8011076:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    ble loc_80110A6
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800ACC0
    beq loc_80110A6
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,pc}
loc_80110A6:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_80110BC:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_8011004

.thumb
sub_80110C6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80110E4
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80110E4:
    pop {pc}
    .balign 4, 0x00
dword_80110E8:    .word 0x100040
off_80110EC:    .word 0x1440
dword_80110F0:    .word 0xA0000
dword_80110F4:    .word 0x80000
// end of function sub_80110C6

    push {lr}
    ldr r1, [pc, #0x8011108-0x80110fa-2] // off_801110C
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8011108:    .word off_801110C
off_801110C:    .word sub_8011118+1
    .word sub_801119C+1
    .word sub_8011254+1
.thumb
sub_8011118:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [pc, #0x8011190-0x8011132-2] // =0x1040
    bl sub_8012F40
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800B18C
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_8011186
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B114
    beq loc_8011186
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8011194-0x8011164-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8011198-0x801116e-2] // =0x80000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8011186:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
off_8011190:    .word 0x1040
dword_8011194:    .word 0xA0000
dword_8011198:    .word 0x80000
// end of function sub_8011118

.thumb
sub_801119C:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_80111CC
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_801124A
loc_80111CC:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_80111F2
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_80111F2
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_8011204
loc_80111F2:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_8011204
    mov r0, #0
    strb r0, [r5,#0xb]
loc_8011204:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_8011234
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B114
    beq loc_8011234
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,pc}
loc_8011234:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_801124A:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_801119C

.thumb
sub_8011254:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_801126E
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_801126E:
    pop {pc}
// end of function sub_8011254

.thumb
sub_8011270:
    push {lr}
    ldr r1, [pc, #0x8011280-0x8011272-2] // off_8011284
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8011280:    .word off_8011284
off_8011284:    .word sub_8011290+1
    .word sub_8011314+1
    .word sub_80113CC+1
// end of function sub_8011270

.thumb
sub_8011290:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [pc, #0x8011308-0x80112aa-2] // =0x1040
    bl sub_8012F40
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800B18C
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_80112FE
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B13C
    beq loc_80112FE
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x801130c-0x80112dc-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8011310-0x80112e6-2] // =0x80000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_80112FE:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
off_8011308:    .word 0x1040
dword_801130C:    .word 0xA0000
dword_8011310:    .word 0x80000
// end of function sub_8011290

.thumb
sub_8011314:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_8011344
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_80113C2
loc_8011344:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_801136A
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_801136A
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_801137C
loc_801136A:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_801137C
    mov r0, #0
    strb r0, [r5,#0xb]
loc_801137C:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_80113AC
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B13C
    beq loc_80113AC
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    pop {r4,pc}
loc_80113AC:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_80113C2:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_8011314

.thumb
sub_80113CC:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_80113E6
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_80113E6:
    pop {pc}
// end of function sub_80113CC

.thumb
sub_80113E8:
    push {lr}
    ldr r1, [pc, #0x80113f8-0x80113ea-2] // off_80113FC
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80113F8:    .word off_80113FC
off_80113FC:    .word sub_8011408+1
    .word sub_801147E+1
    .word sub_8011532+1
// end of function sub_80113E8

.thumb
sub_8011408:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F36
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [pc, #0x80117fc-0x8011422-2] // =0x1040
    bl sub_8012F40
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800B18C
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    mov r2, #6
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_8011474
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B164
    beq loc_8011474
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8011800-0x8011456-2] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8011804-0x8011460-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8011474:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
// end of function sub_8011408

.thumb
sub_801147E:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800ADDC
    tst r0, r0
    bne loc_80114AE
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800ADDC
    tst r0, r0
    beq loc_8011528
loc_80114AE:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_80114D4
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #7
    bne loc_80114D4
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_80114E6
loc_80114D4:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #0xa
    bne loc_80114E6
    mov r0, #0
    strb r0, [r5,#0xb]
loc_80114E6:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_8011512
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800B164
    beq loc_8011512
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    pop {r4,pc}
loc_8011512:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8011528:
    bl sub_800AB40
    bl sub_8012D4E
    pop {r4,pc}
// end of function sub_801147E

.thumb
sub_8011532:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_801154C
    mov r0, #1
    lsl r0, r0, #0x14
    bl sub_8012F40
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_801154C:
    pop {pc}
// end of function sub_8011532

.thumb
sub_801154E:
    push {lr}
    ldr r1, [pc, #0x801155c-0x8011550-4] // off_8011560
    ldrb r0, [r5,#0x18]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_801155C:    .word off_8011560
off_8011560:    .word sub_8011578+1
    .word sub_80115D0+1
    .word sub_80115EE+1
    .word sub_8011602+1
    .word sub_8011646+1
    .word locret_8011694+1
// end of function sub_801154E

.thumb
sub_8011578:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0x93
    bne loc_801158A
    ldrb r0, [r5,#1]
    cmp r0, #0x81
    bne loc_801158A
    bl sub_80DD62C
loc_801158A:
    bl sub_8012F64
    mov r2, #0
    ldr r1, [pc, #0x8011808-0x8011590-4] // =0x400
    tst r0, r1
    bne loc_8011598
    mov r2, #1
loc_8011598:
    strb r2, [r5,#0x16]
    ldr r0, [pc, #0x801180c-0x801159a-2] // =0xC00
    bl sub_8012F5A
    ldr r0, [pc, #0x8011810-0x80115a0-4] // LCDControl
    bl sub_8012F36
    mov r0, #0x40 
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x3c]
    sub r0, r0, r1
    mov r1, #0x20 
    svc 6
    str r0, [r5,#0x48]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #0x20 
    strb r0, [r5,#0x19]
    mov r0, #0xfa
    bl f500_8000558
    bl sub_8012D74
    mov r0, #4
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_8011578

.thumb
sub_80115D0:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_80115EC
    mov r0, #0x40 
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    mov r0, #8
    strb r0, [r5,#0x18]
locret_80115EC:
    pop {pc}
// end of function sub_80115D0

.thumb
sub_80115EE:
    push {lr}
    ldrh r0, [r5,#0x28]
    strb r0, [r5,#0x19]
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0xc
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_80115EE

.thumb
sub_8011602:
    push {r7,lr}
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_80145C0
    mov r7, #0x34 
    add r7, r7, r5
    stmia r7!, {r1-r3}
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_8011644
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
    ldrb r0, [r5,#0x1c]
    ldrb r1, [r5,#0x1d]
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_800B348
    strb r0, [r5,#0x19]
    mov r0, #0x47 
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x10
    strb r0, [r5,#0x18]
locret_8011644:
    pop {r7,pc}
// end of function sub_8011602

.thumb
sub_8011646:
    push {r4,r6,r7,lr}
    mov r7, #0x34 
    add r7, r7, r5
    ldmia r7!, {r0-r4,r6}
    add r0, r0, r3
    add r1, r1, r4
    sub r2, r2, r6
    mov r7, #0x34 
    add r7, r7, r5
    stmia r7!, {r0-r2}
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_801168C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x17]
    mov r3, #0
    ldr r4, [pc, #0x8011690-0x8011676-2] // =0x6050001
    ldr r6, [r5,#0x2c]
    mov r7, #3
    bl sub_80CD712
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_801168C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
dword_8011690:    .word 0x6050001
// end of function sub_8011646

locret_8011694:
    mov pc, lr
.thumb
ho_8011696:
    push {lr}
    ldr r1, [pc, #0x80116a4-0x8011698-4] // jt_80116A8
    ldrb r0, [r5,#0x18]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80116A4:    .word jt_80116A8
jt_80116A8:    .word sub_80116B0+1
    .word sub_80116F2+1
// end of function ho_8011696

.thumb
sub_80116B0:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0x93
    bne loc_80116C2
    ldrb r0, [r5,#1]
    cmp r0, #0x81
    bne loc_80116C2
    bl sub_80DD62C
loc_80116C2:
    bl sub_8012F64
    ldr r1, [pc, #0x8011814-0x80116c6-2] // =0x10000000
    ldr r2, [pc, #0x8011818-0x80116c8-4] // =0x2000
    tst r0, r2
    bne loc_80116D0
    ldr r1, [pc, #0x801181c-0x80116ce-2] // =0x20000000
loc_80116D0:
    add r0, r1, #0
    bl sub_8012F36
    ldr r0, [pc, #0x8011820-0x80116d6-2] // =0x6000
    bl sub_8012F5A
    mov r0, #0x3c 
    strb r0, [r5,#0x19]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_8012D74
    mov r0, #4
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_80116B0

.thumb
sub_80116F2:
    push {r4,lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x19]
    lsr r0, r0, #2
    bcs loc_8011716
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x6e 
    bl sub_80E17DE
loc_8011716:
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_8011760
    bl sub_800B3EE
    mov r4, #1
    lsl r4, r4, #8
    add r4, r4, r0
    lsl r4, r4, #8
    bl sub_800B23E
    add r0, r5, #0
    bl sub_80E68D0
    bl sub_8012F4A
    ldr r1, [pc, #0x8011814-0x8011738-4] // =0x10000000
    tst r0, r1
    beq loc_801174E
    add r4, #3
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x16]
    ldr r6, [r5,#0x2c]
    bl sub_80D8A8E
    b loc_801175C
loc_801174E:
    mov r4, #1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x16]
    ldr r6, [r5,#0x2c]
    bl sub_80E148C
loc_801175C:
    mov r0, #8
    str r0, [r5,#8]
locret_8011760:
    pop {r4,pc}
// end of function sub_80116F2

.thumb
sub_8011762:
    push {lr}
    bl sub_8007920
    bne loc_8011772
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_8011772:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    ldrb r1, [r5,#0x16]
    eor r0, r1
    beq locret_80117A6
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq locret_80117A6
    push {r5}
    add r5, r0, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x8011818-0x8011794-4] // =0x2000
    tst r0, r1
    pop {r5}
    beq locret_80117A6
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b locret_80117A6
locret_80117A6:
    pop {pc}
// end of function sub_8011762

.thumb
sub_80117A8:
    push {lr}
    bl sub_8011762
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_80117C4
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_80117C4:
    ldr r0, [r5,#0x54]
    ldrh r1, [r0,#0x28]
    tst r1, r1
    beq loc_80117D0
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_80117D0:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_80117F2
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_80145C0
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b locret_80117FA
loc_80117F2:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
locret_80117FA:
    pop {pc}
off_80117FC:    .word 0x1040
dword_8011800:    .word 0xA0000, 0x80000
off_8011808:    .word 0x400
off_801180C:    .word 0xC00
off_8011810:    .word LCDControl
dword_8011814:    .word 0x10000000
off_8011818:    .word 0x2000
dword_801181C:    .word 0x20000000
dword_8011820:    .word 0x6000
// end of function sub_80117A8

.thumb
sub_8011824:
    mov r1, #0xc
    mul r1, r0
    ldr r0, [pc, #0x8011830-0x8011828-4] // off_8011834
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_8011830:    .word off_8011834
off_8011834:    .word loc_8010F9E+2
    .word 0x320800FF, 0xA3700, 0x4020028, 0x18000001, 0xA2300
    .word 0x4020046, 0x18000101, 0x282300, 0x4020064, 0x18000201
    .word 0x502300, 0x402008C, 0x18000301, 0x782300, 0x40200B4
    .word 0x18000401, 0xA02300, 0x40200FA, 0x18000501, 0xC82300
    .word 0x4081050, 0x26000002, 0x143400, 0x4081078, 0x26000102
    .word 0x323400, 0x40810A0, 0x26000202, 0x643400, 0x40810C8
    .word 0x26000302, 0x963400, 0x4081104, 0x26000402, 0xC83400
    .word 0x4081140, 0x26000502, 0xFA3400, 0x4133032, 0x22000003
    .word 0xF2A00, 0x4133078, 0x22000103, 0x1E2A00, 0x41330A0
    .word 0x22000203, 0x3C2A00, 0x41330C8, 0x22000303, 0x642A00
    .word 0x41330FA, 0x22000403, 0x962A00, 0x413312C, 0x22000503
    .word 0xC82A00, 0x41B0064, 0x2EFE0004, 0x144100, 0x41B0096
    .word 0x2EFE0104, 0x284100, 0x41B00C8, 0x2EFE0204, 0x464100
    .word 0x41B0104, 0x2EFE0304, 0x644100, 0x41B0140, 0x2EFE0404
    .word 0x964100, 0x41B017C, 0x2EFE0504, 0xC84100, 0x417103C
    .word 0x30180005, 0x141E08, 0x4171064, 0x30180105
dword_8011974:    .word 0x321E08, 0x4171096, 0x30180205, 0x501E08, 0x41710C8
    .word 0x30180305, 0x781E08, 0x4171118, 0x30180405, 0xB41E08
    .word 0x417114A, 0x30180505, 0xFA1E08, 0x416203C, 0x280C0006
    .word 0x141E08, 0x4162064, 0x280C0106, 0x321E08, 0x416208C
    .word 0x280C0206, 0x501E08, 0x41620B4, 0x280C0306, 0x781E08
    .word 0x41620E6, 0x280C0406, 0xB41E08, 0x4162118, 0x280C0506
    .word 0xFA1E08, 0x418003C, 0x28000007, 0xF3800, 0x4180064
    .word 0x28000107, 0x1E3800, 0x418008C, 0x28000207, 0x503800
    .word 0x41800B4, 0x28000307, 0x783800, 0x41800DC, 0x28000407
    .word 0xB43800, 0x4180104, 0x28000507, 0xFA3800, 0x421005A
    .word 0x38000008, 0x141E08, 0x4210078, 0x38000108, 0x321E08
    .word 0x4210096, 0x38000208, 0x501E08, 0x42100B4, 0x38000308
    .word 0x781E08, 0x42100DC, 0x38000408, 0xA01E08, 0x4210104
    .word 0x38000508, 0xC81E08, 0x426305A, 0x24000009, 0x141E08
    .word 0x4263078, 0x24000109, 0x321E08, 0x42630A0, 0x24000209
    .word 0x501E08, 0x42630C8, 0x24000309, 0x781E08, 0x42630FA
    .word 0x24000409, 0xA01E08, 0x426312C, 0x24000509, 0xC81E08
    .word 0x4110050, 0x2000000A, 0xF1E08, 0x411006E, 0x2000010A
    .word 0x1E1E08, 0x411008C, 0x2000020A, 0x3C1E08, 0x41100B4
    .word 0x2000030A, 0x641E08, 0x41100DC, 0x2000040A, 0x961E08
    .word 0x4110118, 0x2000050A, 0xC81E08, 0x415005A, 0x2000000B
    .word 0xF3000, 0x4150082, 0x2000010B, 0x1E3000, 0x41500AA
    .word 0x2000020B, 0x3C3000, 0x41500D2, 0x2000030B, 0x643000
    .word 0x41500FA, 0x2000040B, 0x963000, 0x415012C, 0x2000050B
    .word 0xC83000, 0x41E405A, 0x3500000C, 0x141E08, 0x41E4082
    .word 0x3500010C, 0x281E08, 0x41E40AA, 0x3500020C, 0x461E08
    .word 0x41E40D2, 0x3500030C, 0x641E08, 0x41E40FA, 0x3500040C
    .word 0x961E08, 0x41E412C, 0x3500050C, 0xC81E08, 0x41F0050
    .word 0x2200000D, 0x1E1E08, 0x41F0082, 0x2200010D, 0x3C1E08
    .word 0x41F00B4, 0x2200020D, 0x5A1E08, 0x41F00F0, 0x2200030D
    .word 0x821E08, 0x41F012C, 0x2200040D, 0xB41E08, 0x41F017C
    .word 0x2200050D, 0xFA1E08, 0x4274050, 0x2000000E, 0x281E08
    .word 0x427406E, 0x2000010E, 0x461E08, 0x427408C, 0x2000020E
    .word 0x641E08, 0x42740B4, 0x2000030E, 0x821E08, 0x42740DC
    .word 0x2000040E, 0xA01E08, 0x4274104, 0x2000050E, 0xC81E08
    .word 0x4242064, 0x2B00000F, 0x143200, 0x4242096, 0x2B00010F
    .word 0x323200, 0x42420C8, 0x2B00020F, 0x503200, 0x42420FA
    .word 0x2B00030F, 0x783200, 0x424212C, 0x2B00040F, 0xA03200
    .word 0x424215E, 0x2B00050F, 0xC83200, 0x420006E, 0x2C060010
    .word 0x1E1E08, 0x420008C, 0x2C060110, 0x3C1E08, 0x42000B4
    .word 0x2C060210, 0x5A1E08, 0x42000DC, 0x2C060310, 0x781E08
    .word 0x4200104, 0x2C060410, 0x961E08, 0x420012C, 0x2C060510
    .word 0xC81E08, 0x407003C, 0x1E000011, 0x141E08, 0x4070064
    .word 0x1E000111, 0x281E08, 0x407008C, 0x1E000211, 0x461E08
    .word 0x40700B4, 0x1E000311, 0x641E08, 0x40700DC, 0x1E000411
    .word 0x961E08, 0x4070118, 0x1E000511, 0xC81E08, 0x4250064
    .word 0x28000012, 0x143908, 0x4250082, 0x28000112, 0x323908
    .word 0x42500A0, 0x28000212, 0x503908, 0x42500BE, 0x28000312
    .word 0x783908, 0x42500DC, 0x28000412, 0xA03908, 0x4250104
    .word 0x28000512, 0xC83908, 0x42E0064, 0x20000013, 0x1E1E08
    .word 0x42E008C, 0x20000113, 0x3C1E08, 0x42E00B4, 0x20000213
    .word 0x5A1E08, 0x42E00DC, 0x20000313, 0x781E08, 0x42E0104
    .word 0x20000413, 0x961E08, 0x42E012C, 0x20000513, 0xC81E08
    .word 0x4280050, 0x24000014, 0x1E1E08, 0x4280082, 0x24000114
    .word 0x3C1E08, 0x42800B4, 0x24000214, 0x5A1E08, 0x42800E6
    .word 0x24000314, 0x781E08, 0x4280118, 0x24000414, 0x961E08
    .word 0x4280140, 0x24000514, 0xC81E08, 0xC390050, 0x20000021
    .word 0xA1E08, 0xC390050, 0x20000121, 0xA1E08, 0xC390096
    .word 0x20000221, 0x321E08, 0xC390096, 0x20000321, 0x321E08
    .word 0xC3900FA, 0x20000421, 0x641E08, 0xC3900FA, 0x20000521
    .word 0x641E08, 0x4020028, 0x32000001, 0xA1E08, 0x81D02BC
    .word 0x38000001, 0x1E4300, 0x81D03E8, 0x38000101, 0x3C4300
    .word 0x81D0514, 0x38000201, 0x784300, 0x81D05DC, 0x38000301
    .word 0xC84300, 0x80A01F4, 0x30000002, 0x143B08, 0x80A0384
    .word 0x30000102, 0x503B08, 0x80A0514, 0x30000202, 0xA03B08
    .word 0x80A06A4, 0x30000302, 0xC83B08, 0x8300320, 0x4AFC0003
    .word 0x1E480C, 0x83004B0, 0x4AFC0103, 0x3C480C, 0x83005DC
    .word 0x4AFC0203, 0x78480C, 0x8300708, 0x4AFC0303, 0xC8480C
    .word 0x82B0384, 0x38080004, 0x1E4008
    .word unk_82B04B0
    .word 0x38080104, 0x3C4008
    .word unk_82B05DC
    .word 0x38080204, 0x784008
    .word off_82B0708
    .word 0x38080304, 0xC84008
    .word off_80C11F4
    .word 0x40000005, 0x14480D, 0x80C13E8, 0x40000105, 0x50480D
    .word 0x80C15DC, 0x40000205, 0xA0480D, 0x80C17D0, 0x40000305
    .word 0xC8480D, 0x8323320, 0x38000006, 0x1E440C, 0x83234B0
    .word 0x38000106
    .word 0x3C440C, 0x8323640
    .word 0x38000206
    .word 0x78440C, 0x83237D0
    .word 0x38000306
    .word 0xC8440C, 0x43803E8
    .word 0x30040007
    .word 0x283E08, 0x4380514, 0x30040107, 0x503E08, 0x4380640
    .word 0x30040207, 0x783E08, 0x4380708, 0x30040307, 0xC83E08
    .word 0x80301F4, 0x38000008, 0x144602, 0x8030384, 0x38000108
    .word 0x504602, 0x8030514, 0x38000208, 0xA04602, 0x8030640
    .word 0x38000308, 0xC84602, 0x83F0320, 0x40000009, 0x1E480C
    .word 0x83F04B0, 0x40000109, 0x3C480C, 0x83F0640, 0x40000209
    .word 0x78480C, 0x83F07D0, 0x40000309, 0xC8480C, 0x4470320
    .word 0x3008000A, 0x283E08
    .word 0x447044C
    .word 0x3008010A, 0x503E08
    .word 0x44705DC
    .word 0x3008020A, 0x783E08
    .word 0x4470708
    .word 0x3008030A, 0xC83E08
    .word loc_80D21F4
    .word 0x2800000B, 0x143C02, 0x80D23E8, 0x2800010B, 0x503C02
    .word 0x80D25DC, 0x2800020B, 0xA03C02, 0x80D2708, 0x2800030B
    .word 0xC83C02, 0x84643E8, 0x4000000C, 0x1E480D, 0x84645DC
    .word 0x4000010C, 0x3C480D, 0x84647D0, 0x4000020C, 0x78480D
    .word 0x84649C4, 0x4000030C, 0xC8480D, 0x8090258, 0x30080012
    .word 0x141E08, 0x8090384
    .word 0x30080112
    .word 0x3C1E08, 0x80904B0
    .word 0x30080212
    .word 0x641E08, 0x8090640
    .word 0x30080312
    .word 0xC81E08, 0x80401F4
    .word 0x4C000010
    .word 0x141E08, 0x8040320, 0x4C000110
    .word 0x3C1E08
    .word dword_80404B0
    .word 0x4C000210
    .word 0x641E08
    .word 0x80405DC, 0x4C000310
    .word 0xC81E08
    .word dword_82212BC
    .word 0x38000015, 0x281E08, 0x822144C, 0x38000115, 0x501E08
    .word 0x82215DC, 0x38000215, 0x781E08, 0x822176C, 0x38000315
    .word 0xC81E08, 0x84A2320, 0x30FD000E, 0x321E08, 0x84A24B0
    .word 0x30FD010E, 0x641E08, 0x84A25DC, 0x30FD020E, 0x961E08
    .word 0x84A276C, 0x30FD030E, 0xC81E08, 0x80B3258, 0x38080013
    .word 0x141E08, 0x80B33E8, 0x38080113, 0x3C1E08, 0x80B3578
    .word 0x38080213, 0x641E08, 0x80B3708, 0x38080313, 0xC81E08
    .word 0x8350064, 0x32080014, 0x143A08, 0x835012C, 0x32080114
    .word 0x283A08, 0x83501F4, 0x32080214, 0x503A08, 0x83502BC
    .word 0x32080314, 0x963A08, 0x805012C, 0x32050011, 0x143908
    .word 0x8050320, 0x32050111, 0x3C3908, 0x80504B0, 0x32050211
    .word 0x643908, 0x80500E6, 0x32050311, 0xC83908, 0x81C012C
    .word 0x32080014, 0x143A08, 0x81C0320, 0x32080114, 0x3C3A08
    .word 0x81C044C, 0x32080214, 0x643A08, 0x81C0578, 0x32080314
    .word 0xC83A08, 0x82903E8, 0x40000016, 0x321E08, 0x8290578
    .word 0x40000116, 0x641E08, 0x8290708, 0x40000216, 0x961E08
    .word 0x8290898, 0x40000316, 0xC81E08, 0x82D0320, 0x3E00000D
    .word 0x281E08, 0x82D04B0, 0x3E00010D, 0x501E08, 0x82D0640
    .word 0x3E00020D, 0x781E08, 0x82D07D0, 0x3E00030D, 0xC81E08
    .word 0x82F0320, 0x42000017, 0x281E08, 0x82F044C, 0x42000117
    .word 0x501E08, 0x82F0578, 0x42000217, 0x781E08, 0x82F06A4
    .word 0x42000317, 0xC81E08, 0x83A00C8, 0x32050011
    .word 0x643908
    .word dword_83A012C
    .word 0x32050311
    .word 0xC83908
    .word 0x83B00FA, 0x32080014
    .word 0x643A08
    .word dword_83B0190
    .word 0x32080314
    .word 0xC83A08
    .word off_82A07D0
    .word 0x32000018, 0x321E08, 0x82A09C4, 0x32000118, 0x641E08
    .word 0x82A0BB8, 0x32000218, 0x961E08, 0x82A0DAC, 0x32000318
    .word 0xC81E08, 0x83607D0, 0x400A0019, 0x641E08, 0x8360BB8
    .word 0x400A0319, 0xC81E08, 0x8360FA0, 0x400A0119, 0x12C1E08
    .word 0x4020028, 0x32000001, 0xA1E08, 0x4020028, 0x32000001
    .word 0xA1E08, 0x4020028, 0x32000001, 0xA1E08, 0x4020028
    .word 0x32000001, 0xA1E00, 0x4020028, 0x32000001, 0xA1E00
    .word 0x4020028, 0x32000001, 0xA1E00, 0x4020028, 0x32000001
    .word 0xA1E00, 0x4020028, 0x32000001, 0xA1E00, 0x4020028
    .word 0x32000001, 0xA1E00, 0x4020028, 0x32080001
    .word 0xA3700
    .word 0x4020028, 0x38000001, 0xA4300, 0x4020028, 0x30000001
    .word 0xA3B08, 0x4020028, 0x4AFC0001, 0xA480C, 0x4020028
    .word 0x38080001, 0xA4008, 0x4021028, 0x40000001, 0xA480D
    .word 0x4023028, 0x38000001, 0xA440C, 0x4020028, 0x30040001
    .word 0xA3E08
    .word 0x4060FA0
    .word 0x380004FF, 0xA4602, 0x4020028, 0x40000001, 0xA480C
    .word 0x4020028, 0x30080001, 0xA3E08, 0x4022028, 0x28000001
    .word 0xA3C02, 0x4024028, 0x40000001, 0xA480D, 0x4020028
    .word 0x32000001, 0xA1E00
// end of function sub_8011824

.thumb
sub_801241C:
    push {r4,r5,lr}
    ldr r1, [pc, #0x8012488-0x801241e-2] // dword_20364AC
    mov r0, #0
    str r0, [r1]
    mov r5, #1
    lsl r5, r5, #0x1f
    mov r4, r10
    ldr r4, [r4,#0x30]
loc_801242C:
    add r0, r4, #0
    mov r1, #0x90
    bl f900_8000930
    str r5, [r4,#0x78]
    add r4, #0x90
    lsr r5, r5, #1
    bne loc_801242C
    bl sub_8012948
    pop {r4,r5,pc}
// end of function sub_801241C

.thumb
sub_8012442:
    push {r4,lr}
    mov r0, r10
    ldr r0, [r0,#0x30]
    ldr r3, [pc, #0x8012488-0x8012448-4] // dword_20364AC
    ldr r2, [r3]
    mov r1, #1
    lsl r1, r1, #0x1f
loc_8012450:
    tst r2, r1
    beq loc_801245E
    add r0, #0x90
    lsr r1, r1, #1
    bne loc_8012450
    mov r0, #0
    pop {r4,pc}
loc_801245E:
    orr r2, r1
    str r2, [r3]
    add r4, r0, #0
    mov r1, #0x78 
    bl f900_8000930
    add r0, r4, #0
    mov r1, #1
    strb r1, [r0]
    str r0, [r5,#0x54]
    pop {r4,pc}
// end of function sub_8012442

.thumb
sub_8012474:
    tst r0, r0
    beq locret_8012486
    mov r1, #0
    strb r1, [r0]
    ldr r2, [r0,#0x78]
    ldr r3, [pc, #0x8012488-0x801247e-2] // dword_20364AC
    ldr r1, [r3]
    bic r1, r2
    str r1, [r3]
locret_8012486:
    mov pc, lr
off_8012488:    .word dword_20364AC
dword_801248C:    .word 0x7F00007F, 0x10000, 0x7F00017F, 0xFF000000, 0x7F0100
    .word 0x7F0100FF, 0x10000, 0x7F0002, 0x2000100, 0x7F000300
    .word 0x10000, 0x30002, 0x50004, 0x7F, 0x10100FF
    .word 0x7F00FF00, 0x100FF00, 0xFF0001, 0x100007F, 0x101FFFF
    .word 0x7FFFFF01, 0x1FFFF01, 0xFFFF0101, 0x100007F, 0x7F0101FF
    .word 0x101FF01, 0x7F, 0x10100FF, 0x100FF00, 0x101FFFF
    .word 0x7FFFFF01, 0x100FF00, 0xFF0001, 0x1FFFF01, 0xFFFF0101
    .word 0x7F, 0x10100FF, 0x1FF0100, 0x7F01, 0x1FFFF01
    .word 0xFF00007F, 0x7F0101FF, 0xFF000000, 0x10100, 0x100007F
    .word 0x10101FF, 0x7F00, 0x7FFF01, 0x7F010100, 0xFF000000
    .word 0x7F, 0x7F01
off_801255C:    .word dword_801248C
    .word dword_801248C+1
    .word dword_801248C+4
dword_8012568:    .word 0x8012495, 0x8012498, 0x801249F, 0x80124A4, 0x80124AB
    .word 0x80124B4, 0x80124C1, 0x80124CC, 0x80124D5, 0x80124E0
    .word 0x80124E9, 0x80124F0, 0x80124F5, 0x8012508, 0x8012519
    .word 0x8012526, 0x801252D, 0x8012534, 0x801253D, 0x8012546
    .word 0x801254B, 0x8012550, 0x8012555, 0x0, 0x0
    .word 0x0
    .word 0x20, 0x20, 0x0
    .word 0x10, 0x0
    .word 0x400000, 0x0
    .word 0x200000, 0x0, 0x0
    .word 0x600000, 0x10, 0x20, 0x30, 0x0
dword_801260C:    .word 0x0, 0x0
    .word dword_8410000
    .word 0x4210000, 0x55800200, 0xAA800200, 0x51800100, 0xA2800100
    .word 0x80000000, 0x40000000, 0x15800000, 0x2A800000, 0x80000002
    .word 0x40000002, 0x80002000, 0x40002000, 0x80000010, 0x40000010
    .word 0x80000100, 0x40000100, 0x80000008, 0x40000008, 0x80000004
    .word 0x40000004, 0x20010000, 0x10010000, 0x55840000, 0xAA840000
    .word 0x810002, 0x810002, 0xFF800002, 0xFF800002, 0x8510000
    .word 0x4310000, 0x80002400, 0x40002400, 0x80000800, 0x40000800
    .word 0x2010000, 0x1010000, 0x55800000, 0xAA800000, 0x8000000A
    .word 0x4000000A, 0x80000006, 0x40000006, 0x8000000E, 0x4000000E
    .word 0x50000000, 0xA0000000, 0x8000000C, 0x4000000C, 0x8000001E
    .word 0x4000001E, 0x80004020, 0x40004020, 0x80002008, 0x40002008
    .word 0x8000001C, 0x4000001C, 0x4200, 0x4200, 0x80040002
    .word 0x40040002, 0x80000808, 0x40000808, 0x8004000A, 0x4004000A
    .word 0xC004800E, 0xC004800E, 0x80000, 0x80000, 0x80000C08
    .word 0x40000C08, 0x80000400, 0x40000400, 0xC0040008, 0xC0040008
    .word 0xC0048002, 0xC0048002, 0x80002006, 0x40002006, 0x2010002
    .word 0x1010002, 0x3D800000, 0x3E800000, 0x80000408, 0x40000408
    .word 0x8000400C, 0x4000400C, 0x8000400A, 0x4000400A, 0x80004006
    .word 0x40004006, 0x80004008, 0x40004008, 0x8000400E
    .word 0x4000400E
    .word 0x80005004, 0x40005004, 0x80005000, 0x40005000, 0xC004000E
    .word 0xC004000E, 0x80004004, 0x40004004, 0x8410002, 0x4210002
    .word 0x80004002, 0x40004002, 0x201000A, 0x101000A, 0xF800000
    .word 0xF800000, 0x8510002, 0x4310002, 0x841000A, 0x421000A
    .word 0x20010002, 0x10010002, 0x8000400A, 0x4000400A, 0x1020100
    .word 0x4030203, 0x5040506, 0x9020304, 0x3030608, 0x20204
// end of function sub_8012474

.thumb
sub_801280C:
    push {r4,r6,r7,lr}
    add r7, r0, #0
    ldrh r4, [r7,#0x1e]
    add r0, r4, #0
    lsl r0, r0, #0x12
    lsr r0, r0, #0x12
    strh r0, [r7,#0x1e]
    lsl r4, r4, #0x11
    bcc loc_8012824
    ldrh r0, [r7,#0x1e]
    add r0, r0, r0
    strh r0, [r7,#0x1e]
loc_8012824:
    lsl r4, r4, #1
    bcc locret_8012830
    mov r0, #0x12
    strb r0, [r7,#0xe]
    mov r0, #0
    strb r0, [r7,#0xc]
locret_8012830:
    pop {r4,r6,r7,pc}
// end of function sub_801280C

.thumb
sub_8012832:
    ldr r1, [r5,#0x54]
    strb r0, [r1,#0xc]
    mov pc, lr
// end of function sub_8012832

.thumb
sub_8012838:
    ldr r1, [r5,#0x54]
    strb r0, [r5,#0x17]
    strb r0, [r1,#2]
    mov pc, lr
// end of function sub_8012838

.thumb
sub_8012840:
    push {r4-r7,lr}
    mov r3, r8
    push {r0}
    add r5, r0, #0
    ldrb r1, [r5,#1]
    mov r2, #0x80
    tst r1, r2
    bne loc_801288A
    lsl r1, r1, #2
    ldr r2, [pc, #0x80128d0-0x8012852-2] // off_801255C
    ldr r4, [r2,r1]
    ldrb r0, [r5,#3]
    bl loc_800AB56
    add r6, r0, #0
loc_801285E:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_80128C8
    mul r0, r6
    ldrb r2, [r5,#8]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#9]
    add r1, r1, r2
    add r2, r5, #0
    add r7, r0, #0
    mov r8, r1
    bl sub_8012914
    add r0, r7, #0
    mov r1, r8
    bl sub_8009AA8
    add r4, #2
    b loc_801285E
loc_801288A:
    lsl r1, r1, #0x19
    lsr r1, r1, #0x16
    ldr r0, [pc, #0x80128d4-0x801288e-2] // dword_8012568+92
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    mov r7, #1
loc_8012898:
    mov r6, #1
loc_801289A:
    push {r2,r3}
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E78
    tst r0, r0
    beq loc_80128BA
    add r2, r5, #0
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8012914
    add r0, r7, #0
    mov r1, r8
    bl sub_8009AA8
loc_80128BA:
    pop {r2,r3}
    add r6, #1
    cmp r6, #6
    ble loc_801289A
    add r7, #1
    cmp r7, #3
    ble loc_8012898
loc_80128C8:
    pop {r0}
    mov r8, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80128D0:    .word off_801255C
off_80128D4:    .word dword_8012568+0x5C
// end of function sub_8012840

.thumb
sub_80128D8:
    push {r4-r6,lr}
    add r5, r0, #0
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    ldr r2, [pc, #0x8012910-0x80128e0-4] // off_801255C
    ldr r4, [r2,r1]
    ldrb r0, [r5,#3]
    bl loc_800AB56
    add r6, r0, #0
loc_80128EC:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq locret_801290C
    mul r0, r6
    ldrb r2, [r5,#8]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#9]
    add r1, r1, r2
    add r2, r5, #0
    bl sub_801292C
    add r4, #2
    b loc_80128EC
locret_801290C:
    pop {r4-r6,pc}
    .byte 0, 0
off_8012910:    .word off_801255C
// end of function sub_80128D8

.thumb
sub_8012914:
    ldr r3, [pc, #0x8012928-0x8012914-4] // unk_20360C0
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [r3,r0]
    ldr r2, [r2,#0x78]
    orr r1, r2
    str r1, [r3,r0]
    mov pc, lr
    .balign 4, 0x00
off_8012928:    .word unk_20360C0
// end of function sub_8012914

.thumb
sub_801292C:
    ldr r3, [pc, #0x8012944-0x801292c-4] // unk_20360C0
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r1, [r3]
    add r0, r1, #0
    ldr r2, [r2,#0x78]
    bic r1, r2
    str r1, [r3]
    tst r0, r2
    mov pc, lr
off_8012944:    .word unk_20360C0
// end of function sub_801292C

.thumb
sub_8012948:
    push {lr}
    ldr r0, [pc, #0x8012954-0x801294a-2] // unk_20360C0
    mov r1, #0xa0
    bl f900_8000930
    pop {pc}
off_8012954:    .word unk_20360C0
// end of function sub_8012948

.thumb
sub_8012958:
    push {r4,r7,lr}
    add r7, r0, #0
    str r5, [r7,#0x60]
    strb r3, [r7,#0xc]
    ldrb r3, [r5,#0x17]
    strb r3, [r7,#2]
    ldrb r4, [r5,#0x16]
    strb r4, [r7,#3]
    lsl r4, r4, #2
    ldrh r3, [r5,#0x12]
    strh r3, [r7,#8]
    mov r3, #1
    strb r3, [r7,#1]
    ldrh r3, [r5,#0x2e]
    strb r3, [r7,#5]
    ldrh r3, [r5,#0x2c]
    strh r3, [r7,#0x1e]
    ldrb r0, [r5,#0x16]
    add r4, r2, #0
    bl sub_8012EAA
    str r0, [r7,#0x58]
    bl sub_8007920
    tst r0, r0
    beq loc_8012996
    mov r1, #1
    lsl r1, r1, #0x10
    ldr r2, [r7,#0x58]
    orr r2, r1
    str r2, [r7,#0x58]
loc_8012996:
    ldrb r0, [r5,#0x16]
    add r1, r4, #0
    bl sub_8012EAA
    str r0, [r7,#0x5c]
    add r0, r7, #0
    bl sub_801280C
    pop {r4,r7,pc}
// end of function sub_8012958

.thumb
sub_80129A8:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r5, [r5,#0x54]
    ldrb r1, [r5,#1]
    mov r2, #0x80
    tst r1, r2
    bne loc_8012A04
    lsl r1, r1, #2
    ldr r2, [pc, #0x8012a40-0x80129b8-4] // off_801255C
    ldr r4, [r2,r1]
    ldrb r0, [r5,#3]
    bl loc_800AB56
    add r6, r0, #0
loc_80129C4:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_8012A3C
    mul r0, r6
    ldrb r2, [r5,#8]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#9]
    add r1, r1, r2
    add r2, r5, #0
    str r0, [sp]
    str r1, [sp,#4]
    bl sub_801292C
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009AA8
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add r2, r5, #0
    bl sub_8012A44
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add r2, r5, #0
    bl sub_801300C
    add r4, #2
    b loc_80129C4
loc_8012A04:
    mov r7, #1
loc_8012A06:
    mov r6, #1
loc_8012A08:
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl sub_801292C
    beq loc_8012A30
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009AA8
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl sub_8012A44
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl sub_801300C
loc_8012A30:
    add r6, #1
    cmp r6, #6
    ble loc_8012A08
    add r7, #1
    cmp r7, #3
    ble loc_8012A06
loc_8012A3C:
    add sp, sp, #8
    pop {r4-r7,pc}
off_8012A40:    .word off_801255C
// end of function sub_80129A8

.thumb
sub_8012A44:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8012a88-0x8012a46-2] // unk_20360C0
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    add r5, r2, #0
    mov r6, r10
    ldr r6, [r6,#0x30]
    ldr r7, [r3,r0]
loc_8012A56:
    lsl r7, r7, #1
    bcs loc_8012A5E
    beq locret_8012A86
    b loc_8012A82
loc_8012A5E:
    ldr r0, [r5,#0x4c]
    ldr r1, [r6,#0x78]
    tst r0, r1
    bne loc_8012A82
    orr r0, r1
    str r0, [r5,#0x4c]
    ldr r0, [r6,#0x4c]
    ldr r1, [r5,#0x78]
    orr r0, r1
    str r0, [r6,#0x4c]
    add r0, r5, #0
    add r1, r6, #0
    bl sub_8012A8C
    add r0, r6, #0
    add r1, r5, #0
    bl sub_8012A8C
loc_8012A82:
    add r6, #0x90
    b loc_8012A56
locret_8012A86:
    pop {r4-r7,pc}
off_8012A88:    .word unk_20360C0
// end of function sub_8012A44

.thumb
sub_8012A8C:
    push {r6,r7,lr}
    ldr r2, [r0,#0x5c]
    ldr r3, [r1,#0x58]
    tst r2, r3
    beq locret_8012AA6
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8012AA8
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8012CD2
locret_8012AA6:
    pop {r6,r7,pc}
// end of function sub_8012A8C

.thumb
sub_8012AA8:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r2, [r6,#0x64]
    ldr r3, [r6,#0x58]
    push {r2,r3}
    bl sub_8007920
    pop {r2,r3}
    beq loc_8012ACC
    ldr r4, [pc, #0x8012eb8-0x8012abc-4] // =0x1000000
    tst r2, r4
    bne loc_8012ACC
    ldr r1, [r7,#0x58]
    ldr r4, [pc, #0x8012ebc-0x8012ac4-4] // =0x10000
    tst r1, r4
    bne loc_8012ACC
    pop {r4,r6,r7,pc}
loc_8012ACC:
    ldr r0, [r7,#0x64]
    ldr r4, [pc, #0x8012ec0-0x8012ace-2] // =0x201
    tst r0, r4
    beq loc_8012ADC
    mov r1, #4
    tst r3, r1
    bne loc_8012ADC
    pop {r4,r6,r7,pc}
loc_8012ADC:
    mov r4, #4
    tst r0, r4
    beq loc_8012AEA
    ldr r4, [pc, #0x8012ec4-0x8012ae2-2] // =0x1008
    tst r3, r4
    bne loc_8012AEA
    pop {r4,r6,r7,pc}
loc_8012AEA:
    ldr r4, [pc, #0x8012ec8-0x8012aea-2] // =0x800000
    tst r0, r4
    beq loc_8012AF8
    ldr r4, [pc, #0x8012ecc-0x8012af0-4] // =0xC003000
    tst r3, r4
    bne loc_8012AF8
    pop {r4,r6,r7,pc}
loc_8012AF8:
    ldr r4, [pc, #0x8012ed0-0x8012af8-4] // start_
    tst r0, r4
    beq loc_8012B00
    pop {r4,r6,r7,pc}
loc_8012B00:
    ldr r4, [pc, #0x8012ec0-0x8012b00-4] // =0x201
    tst r2, r4
    beq loc_8012B10
    ldr r3, [r7,#0x58]
    mov r1, #4
    tst r3, r1
    bne loc_8012B10
    pop {r4,r6,r7,pc}
loc_8012B10:
    mov r4, #4
    tst r2, r4
    beq loc_8012B20
    ldr r3, [r7,#0x58]
    ldr r4, [pc, #0x8012ec4-0x8012b18-4] // =0x1008
    tst r3, r4
    bne loc_8012B20
    pop {r4,r6,r7,pc}
loc_8012B20:
    ldr r4, [pc, #0x8012ec8-0x8012b20-4] // =0x800000
    tst r2, r4
    beq loc_8012B30
    ldr r3, [r7,#0x58]
    ldr r4, [pc, #0x8012ed4-0x8012b28-4] // =0x3000
    tst r3, r4
    bne loc_8012B30
    pop {r4,r6,r7,pc}
loc_8012B30:
    mov r4, #1
    tst r2, r4
    beq loc_8012B64
    ldr r1, [r7,#0x58]
    ldr r4, [pc, #0x8012ed8-0x8012b38-4] // =0x1001
    tst r1, r4
    bne loc_8012B64
    mov r0, #1
    ldr r1, [r7,#0x54]
    orr r1, r0
    str r1, [r7,#0x54]
    ldr r3, [r7,#0x58]
    mov r2, #0x10
    bic r3, r2
    ldr r1, [pc, #0x8012edc-0x8012b4c-4] // =0xC004000
    tst r3, r1
    bne loc_8012B5C
    mov r2, #1
    mov r1, #0x26 
    strb r2, [r6,r1]
    ldr r2, [pc, #0x8012ee0-0x8012b58-4] // =0x20000
    orr r3, r2
loc_8012B5C:
    ldr r2, [r6,#0x54]
    orr r2, r3
    str r2, [r6,#0x54]
    pop {r4,r6,r7,pc}
loc_8012B64:
    ldr r3, [r6,#0x58]
    ldr r4, [pc, #0x8012ee4-0x8012b66-2] // =0x100000
    tst r3, r4
    beq loc_8012B76
    ldr r3, [r7,#0x58]
    ldr r4, [pc, #0x8012ee8-0x8012b6e-2] // =0x8000
    tst r3, r4
    beq loc_8012B76
    pop {r4,r6,r7,pc}
loc_8012B76:
    ldr r3, [r6,#0x58]
    ldr r4, [pc, #0x8012ee8-0x8012b78-4] // =0x8000
    tst r3, r4
    beq loc_8012B88
    ldr r3, [r7,#0x58]
    ldr r4, [pc, #0x8012ee4-0x8012b80-4] // =0x100000
    tst r3, r4
    beq loc_8012B88
    pop {r4,r6,r7,pc}
loc_8012B88:
    ldr r4, [pc, #0x8012eec-0x8012b88-4] // dword_8000004+4
    tst r2, r4
    bne locret_8012C44
    ldr r3, [r7,#0x58]
    ldr r2, [r6,#0x54]
    orr r2, r3
    str r2, [r6,#0x54]
    add r4, r3, #0
    ldrb r2, [r7,#0xe]
    cmp r2, #0
    beq loc_8012BA0
    strb r2, [r6,#0xf]
loc_8012BA0:
    ldrb r2, [r7,#5]
    ldrb r0, [r6,#0xb]
    tst r0, r0
    beq loc_8012BBC
    mov r0, #0x7f
    tst r2, r0
    beq loc_8012BBC
    mov r0, #0x80
    tst r2, r0
    bne loc_8012BBC
    mov r3, #0x40 
    ldr r1, [r6,#0x54]
    orr r1, r3
    str r1, [r6,#0x54]
loc_8012BBC:
    mov r1, #0x80
    tst r1, r2
    bne loc_8012BD6
    mov r3, #0x7f
    and r2, r3
    beq loc_8012BD6
    ldrb r0, [r6,#0xb]
    tst r0, r0
    beq loc_8012BD0
    mov r2, #0xff
loc_8012BD0:
    ldrh r3, [r6,#0x38]
    add r3, r3, r2
    strh r3, [r6,#0x38]
loc_8012BD6:
    mov r0, #0x36 
    mov r3, #0x7f
    and r2, r3
    ldrh r3, [r6,r0]
    add r3, r3, r2
    strh r3, [r6,r0]
    lsr r4, r4, #9
    bcc loc_8012BEC
    ldrh r3, [r6,#0x3a]
    add r3, #1
    strh r3, [r6,#0x3a]
loc_8012BEC:
    ldrb r2, [r7,#0xc]
    ldrb r3, [r6,#0xd]
    orr r3, r2
    strb r3, [r6,#0xd]
    mov r0, #0x74 
    ldrh r1, [r7,r0]
    mov r2, #0xff
    and r2, r1
    beq loc_8012C02
    mov r2, #0x48 
    strh r1, [r6,r2]
loc_8012C02:
    ldrb r0, [r6,#2]
    ldrb r1, [r7,#2]
    bl sub_8012C46
    add r4, r0, #0
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8012C74
    cmp r0, #0x10
    beq loc_8012C20
    mov r2, #0x80
    ldr r1, [r6,#0x54]
    orr r1, r2
    str r1, [r6,#0x54]
loc_8012C20:
    ldrh r1, [r7,#0x1e]
    mul r0, r1
    lsl r0, r4
    add r0, #8
    lsr r0, r0, #4
    ldrb r1, [r7,#2]
    add r1, r1, r1
    add r1, #0x2a 
    ldrh r2, [r6,r1]
    add r2, r2, r0
    strh r2, [r6,r1]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8012CA6
    ldrh r1, [r6,#0x2a]
    add r1, r1, r0
    strh r1, [r6,#0x2a]
locret_8012C44:
    pop {r4,r6,r7,pc}
// end of function sub_8012AA8

.thumb
sub_8012C46:
    mov r2, #5
    mul r0, r2
    add r0, r0, r1
    ldr r1, [pc, #0x8012c54-0x8012c4c-4] // dword_8012C58
    ldrb r0, [r1,r0]
    mov pc, lr
    .balign 4, 0x00
off_8012C54:    .word dword_8012C58
dword_8012C58:    .word 0x0
    .word 0x1000000, 0x0
    .word 0x100
    .word 0x1000000, 0x100, 0x0
// end of function sub_8012C46

.thumb
sub_8012C74:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldrb r2, [r6,#0xb]
    tst r2, r2
    beq loc_8012C96
    ldrb r2, [r7,#5]
    mov r1, #0x7f
    and r1, r2
    tst r1, r1
    beq loc_8012C96
    ldrb r0, [r7,#3]
    bl sub_800F448
    ldr r1, [pc, #0x8012c9c-0x8012c90-4] // dword_8012CA0
    ldrb r0, [r1,r0]
    pop {r6,r7,pc}
loc_8012C96:
    mov r0, #0x10
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8012C9C:    .word dword_8012CA0
dword_8012CA0:    .word 0x10181010
    .hword 0x1010
// end of function sub_8012C74

.thumb
sub_8012CA6:
    push {r4,lr}
    add r4, r1, #0
    ldrb r1, [r0,#9]
    ldrb r0, [r0,#8]
    bl sub_8009A88
    ldrb r0, [r0]
    ldrb r1, [r4,#2]
    cmp r1, #1
    bne loc_8012CC2
    cmp r0, #6
    bne loc_8012CCE
    ldrh r0, [r4,#0x1e]
    pop {r4,pc}
loc_8012CC2:
    cmp r1, #3
    bne loc_8012CCE
    cmp r0, #7
    bne loc_8012CCE
    ldrh r0, [r4,#0x1e]
    pop {r4,pc}
loc_8012CCE:
    mov r0, #0
    pop {r4,pc}
// end of function sub_8012CA6

.thumb
sub_8012CD2:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8007920
    ldr r2, [r6,#0x64]
    beq loc_8012CF0
    ldr r4, [pc, #0x8012eb8-0x8012ce0-4] // =0x1000000
    tst r2, r4
    bne loc_8012CF0
    ldr r1, [r7,#0x58]
    ldr r4, [pc, #0x8012ebc-0x8012ce8-4] // =0x10000
    tst r1, r4
    bne loc_8012CF0
    pop {r4,r6,r7,pc}
loc_8012CF0:
    ldr r2, [r6,#0x50]
    ldr r3, [r7,#0x58]
    orr r2, r3
    str r2, [r6,#0x50]
    ldrb r2, [r7,#2]
    add r2, r2, r2
    add r2, #0x3c 
    ldrh r3, [r7,#0x1e]
    ldrh r4, [r6,r2]
    add r4, r4, r3
    strh r4, [r6,r2]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8012CA6
    ldrh r1, [r6,#0x3c]
    add r1, r1, r0
    strh r1, [r6,#0x3c]
    pop {r4,r6,r7,pc}
// end of function sub_8012CD2

.thumb
sub_8012D16:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldr r1, [r4,#0x54]
    mov r2, #0x80
    ldr r0, [r4,r2]
    orr r0, r1
    str r0, [r4,r2]
    bl sub_8007920
    tst r0, r0
    bne loc_8012D38
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r1, #0x26 
    strb r0, [r4,r1]
    mov r1, #0x80
    str r0, [r4,r1]
loc_8012D38:
    mov r1, #0
    strb r1, [r4,#0xf]
    mov r0, #0x28 
    add r0, r0, r4
    mov r1, #0x30 
    bl f900_8000910
    ldr r0, [r5,#0x54]
    bl sub_8012840
    pop {r4,pc}
// end of function sub_8012D16

.thumb
sub_8012D4E:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r2, [r4,#8]
    ldrb r3, [r4,#9]
    ldrb r0, [r5,#0x12]
    strb r0, [r4,#8]
    ldrb r1, [r5,#0x13]
    strb r1, [r4,#9]
    bl sub_800AF5C
    strb r0, [r4,#0xa]
    pop {r4,pc}
// end of function sub_8012D4E

.thumb
sub_8012D66:
    push {r4,lr}
    ldr r2, [r5,#0x54]
    ldrb r0, [r5,#0x12]
    strb r0, [r2,#8]
    ldrb r1, [r5,#0x13]
    strb r1, [r2,#9]
    pop {r4,pc}
// end of function sub_8012D66

.thumb
sub_8012D74:
    ldr r0, [r5,#0x54]
    mov r1, #0
    strb r1, [r0,#1]
    mov pc, lr
// end of function sub_8012D74

.thumb
sub_8012D7C:
    ldr r1, [r5,#0x54]
    strb r0, [r1,#1]
    mov pc, lr
// end of function sub_8012D7C

.thumb
sub_8012D82:
    ldr r3, [r5,#0x54]
    strb r0, [r3,#4]
    mov r1, #6
    mul r0, r1
    ldr r1, [pc, #0x8012d9c-0x8012d8a-2] // dword_8018520
    add r0, r0, r1
    ldrh r1, [r0]
    strh r1, [r3,#0x20]
    ldrh r1, [r0,#2]
    strh r1, [r3,#0x22]
    ldrh r1, [r0,#4]
    strh r1, [r3,#0x24]
    mov pc, lr
off_8012D9C:    .word dword_8018520
// end of function sub_8012D82

.thumb
sub_8012DA0:
    mov r0, #0
    str r0, [r5,#0x50]
    ldr r0, [r5,#0x54]
    mov r1, #0
    strb r1, [r0,#4]
    mov pc, lr
// end of function sub_8012DA0

.thumb
sub_8012DAC:
    push {r4,r6,lr}
    ldr r4, [r5,#0x54]
    ldrb r6, [r4,#4]
    cmp r6, #0
    beq locret_8012E82
    cmp r6, #4
    bne loc_8012DC0
    ldrh r0, [r4,#0x20]
    tst r0, r0
    beq loc_8012DDA
loc_8012DC0:
    ldr r0, [r4,#0x50]
    mov r1, #0x20 
    tst r0, r1
    beq loc_8012DDA
    cmp r6, #4
    bne loc_8012DD2
    ldrh r0, [r4,#0x20]
    tst r0, r0
    beq loc_8012DDA
loc_8012DD2:
    mov r0, #0
    strb r0, [r4,#4]
    mov r0, #0
    strh r0, [r4,#0x20]
loc_8012DDA:
    cmp r6, #4
    beq loc_8012DF8
    bl sub_8007920
    bne loc_8012E14
    ldrh r0, [r4,#0x24]
    ldr r1, [pc, #0x8012ef0-0x8012de6-2] // =0xFFFF
    cmp r0, r1
    beq loc_8012E14
    sub r0, #1
    strh r0, [r4,#0x24]
    bgt loc_8012E14
    mov r0, #0
    strb r0, [r4,#4]
    b loc_8012E14
loc_8012DF8:
    ldrh r1, [r4,#0x20]
    tst r1, r1
    bne loc_8012E14
    bl sub_8007920
    bne locret_8012E82
    ldrh r0, [r4,#0x24]
    add r0, #1
    strh r0, [r4,#0x24]
    cmp r0, #0xb4
    blt locret_8012E82
    mov r0, #0x96
    strh r0, [r4,#0x20]
    b locret_8012E82
loc_8012E14:
    ldrh r0, [r4,#0x3c]
    ldrh r1, [r4,#0x3e]
    add r0, r0, r1
    mov r1, #0x40 
    ldrh r1, [r4,r1]
    add r0, r0, r1
    mov r1, #0x42 
    ldrh r1, [r4,r1]
    add r0, r0, r1
    mov r1, #0x44 
    ldrh r1, [r4,r1]
    add r0, r0, r1
    push {r0,r4}
    ldrb r0, [r4,#8]
    ldrb r1, [r4,#9]
    bl sub_8009A88
    ldrb r0, [r0]
    cmp r0, #9
    pop {r0,r4}
    bne loc_8012E42
    add r0, #1
    lsr r0, r0, #1
loc_8012E42:
    ldrh r1, [r4,#0x22]
    cmp r0, r1
    blt loc_8012E5E
    ldrh r1, [r4,#0x20]
    sub r1, r1, r0
    strh r1, [r4,#0x20]
    bgt loc_8012E5E
    cmp r6, #4
    beq loc_8012E58
    mov r0, #0
    strb r0, [r4,#4]
loc_8012E58:
    mov r0, #0
    strh r0, [r4,#0x24]
    strh r0, [r4,#0x20]
loc_8012E5E:
    mov r0, #0
    strh r0, [r4,#0x2a]
    strh r0, [r4,#0x2c]
    strh r0, [r4,#0x2e]
    strh r0, [r4,#0x30]
    strh r0, [r4,#0x32]
    strb r0, [r4,#0xd]
    strb r0, [r4,#0xf]
    strh r0, [r4,#0x36]
    strh r0, [r4,#0x38]
    mov r0, #0
    mov r1, #0x48 
    strh r0, [r4,r1]
    strh r0, [r4,#0x3a]
    mov r0, #0x50 
    ldr r1, [r4,#0x54]
    bic r1, r0
    str r1, [r4,#0x54]
locret_8012E82:
    pop {r4,r6,pc}
// end of function sub_8012DAC

.thumb
sub_8012E84:
    push {r4,r7,lr}
    ldr r7, [r5,#0x54]
    strb r3, [r7,#0xc]
    ldrh r3, [r5,#0x2c]
    strh r3, [r7,#0x1e]
    ldrb r0, [r5,#0x16]
    add r4, r2, #0
    bl sub_8012EAA
    str r0, [r7,#0x58]
    ldrb r0, [r5,#0x16]
    add r1, r4, #0
    bl sub_8012EAA
    str r0, [r4,#0x5c]
    add r0, r7, #0
    bl sub_801280C
    pop {r4,r7,pc}
// end of function sub_8012E84

.thumb
sub_8012EAA:
    lsl r0, r0, #2
    ldr r3, [pc, #0x8012ef4-0x8012eac-4] // dword_801260C
    lsl r1, r1, #3
    add r1, r1, r0
    ldr r0, [r3,r1]
    mov pc, lr
    .balign 4, 0x00
dword_8012EB8:    .word 0x1000000
dword_8012EBC:    .word 0x10000
dword_8012EC0:    .word 0x202
off_8012EC4:    .word 0x1008
dword_8012EC8:    .word 0x800000
dword_8012ECC:    .word 0xC003000
off_8012ED0:    .word start_
off_8012ED4:    .word 0x3000
dword_8012ED8:    .word 0x1002
dword_8012EDC:    .word 0xC004000
dword_8012EE0:    .word 0x20000
dword_8012EE4:    .word 0x100000
dword_8012EE8:    .word 0x8000
off_8012EEC:    .word dword_8000004+4
dword_8012EF0:    .word 0xFFFF
off_8012EF4:    .word dword_801260C
// end of function sub_8012EAA

.thumb
sub_8012EF8:
    push {r4,r6,lr}
    ldr r4, [r5,#0x54]
    ldr r6, [r4,#0x54]
    ldr r1, [pc, #0x8012f24-0x8012efe-2] // =0x3F800000
    tst r6, r1
    beq locret_8012F22
    mov r1, #1
    tst r6, r1
    bne locret_8012F22
    ldrb r0, [r4,#7]
    cmp r0, #0xff
    beq locret_8012F22
    add r4, r0, #0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0xf
    bl sub_80145C0
    bl sub_80E2030
locret_8012F22:
    pop {r4,r6,pc}
dword_8012F24:    .word 0x3F800000
// end of function sub_8012EF8

.thumb
sub_8012F28:
    ldr r3, [r5,#0x54]
    strb r0, [r3,#7]
    mov pc, lr
// end of function sub_8012F28

.thumb
sub_8012F2E:
    ldrb r0, [r5,#0x17]
    ldr r3, [r5,#0x54]
    strb r0, [r3,#7]
    mov pc, lr
// end of function sub_8012F2E

.thumb
sub_8012F36:
    ldr r1, [r5,#0x54]
    ldr r2, [r1,#0x64]
    orr r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8012F36

.thumb
sub_8012F40:
    ldr r1, [r5,#0x54]
    ldr r2, [r1,#0x64]
    bic r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8012F40

.thumb
sub_8012F4A:
    ldr r1, [r5,#0x54]
    ldr r0, [r1,#0x64]
    mov pc, lr
// end of function sub_8012F4A

.thumb
sub_8012F50:
    ldr r1, [r5,#0x54]
    ldr r2, [r1,#0x68]
    orr r2, r0
    str r2, [r1,#0x68]
    mov pc, lr
// end of function sub_8012F50

.thumb
sub_8012F5A:
    ldr r1, [r5,#0x54]
    ldr r2, [r1,#0x68]
    bic r2, r0
    str r2, [r1,#0x68]
    mov pc, lr
// end of function sub_8012F5A

.thumb
sub_8012F64:
    ldr r1, [r5,#0x54]
    ldr r0, [r1,#0x68]
    mov pc, lr
// end of function sub_8012F64

.thumb
sub_8012F6A:
    push {r7,lr}
    bl sub_8007920
    bne locret_8012FA4
    ldr r6, [r5,#0x58]
    ldr r7, [r5,#0x54]
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_8009A88
    tst r0, r0
    beq locret_8012FA4
    ldrb r0, [r0]
    cmp r0, #6
    bne locret_8012FA4
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0xc
    bne locret_8012FA4
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x16]
    tst r0, r0
    bne locret_8012FA4
    mov r0, #1
    bl sub_800AB86
    pop {r7,pc}
locret_8012FA4:
    pop {r7,pc}
// end of function sub_8012F6A

.thumb
sub_8012FA6:
    push {r7,lr}
    bl sub_8007920
    bne locret_8013006
    ldr r7, [r5,#0x54]
    ldrb r0, [r7,#1]
    cmp r0, #0
    beq locret_8013006
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_8009A88
    tst r0, r0
    beq locret_8013006
    ldrb r0, [r0]
    cmp r0, #4
    bne loc_8012FE6
    bl sub_8012F4A
    ldr r1, [pc, #0x8013008-0x8012fcc-4] // dword_8000004+36
    tst r0, r1
    bne loc_8012FE6
    ldrb r0, [r7,#6]
    sub r0, #1
    strb r0, [r7,#6]
    bge locret_8013006
    mov r0, #6
    strb r0, [r7,#6]
    ldrh r0, [r7,#0x34]
    add r0, #1
    strh r0, [r7,#0x34]
    pop {r7,pc}
loc_8012FE6:
    mov r1, #0
    strb r1, [r7,#6]
    cmp r0, #6
    bne locret_8013006
    ldrb r0, [r5,#0x17]
    cmp r0, #4
    bne locret_8013006
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xe]
    tst r0, r0
    bne locret_8013006
    mov r0, #1
    bl sub_800AB86
    pop {r7,pc}
locret_8013006:
    pop {r7,pc}
off_8013008:    .word dword_8000004+0x24
// end of function sub_8012FA6

.thumb
sub_801300C:
    push {r4,r6,r7,lr}
    add r4, r2, #0
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009A88
    tst r0, r0
    beq locret_8013050
    ldr r2, [r4,#0x58]
    ldr r1, [pc, #0x80133f0-0x801301e-2] // =0xC000000
    tst r2, r1
    bne locret_8013050
    ldrb r0, [r0]
    cmp r0, #6
    bne loc_801303C
    ldrb r0, [r4,#2]
    cmp r0, #1
    bne locret_8013050
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl sub_8009D90
    b locret_8013050
loc_801303C:
    cmp r0, #8
    bne locret_8013050
    ldrb r0, [r4,#2]
    cmp r0, #2
    bne locret_8013050
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl sub_8009D90
locret_8013050:
    pop {r4,r6,r7,pc}
// end of function sub_801300C

.thumb
sub_8013052:
    push {r7,lr}
    bl sub_8007920
    bne locret_80130D4
    ldr r7, [r5,#0x54]
    ldrb r0, [r7,#1]
    cmp r0, #0
    beq locret_80130D4
    ldrb r0, [r7,#2]
    cmp r0, #1
    beq locret_80130D4
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne locret_80130D4
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #8
    bne locret_80130D4
    bl sub_8012F4A
    ldr r1, [pc, #0x80133f4-0x8013084-4] // =0x204
    tst r0, r1
    bne locret_80130D4
    mov r1, #9
    tst r0, r1
    bne loc_80130B0
    ldrb r0, [r7,#2]
    mov r1, #1
    bl sub_8012C46
    mov r1, #0x32 
    lsl r1, r0
    ldrh r0, [r7,#0x2c]
    add r0, r0, r1
    strh r0, [r7,#0x2c]
    ldrh r0, [r7,#0x3e]
    add r0, r0, r1
    strh r0, [r7,#0x3e]
    ldrb r0, [r7,#0xd]
    mov r1, #3
    orr r0, r1
    strb r0, [r7,#0xd]
loc_80130B0:
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    mov r2, #2
    bl sub_8009D90
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r4, #1
    mov r0, #0xf
    bl sub_80145C0
    bl sub_80E2030
locret_80130D4:
    pop {r7,pc}
// end of function sub_8013052

.thumb
sub_80130D6:
    push {r6,r7,lr}
    ldr r7, [r5,#0x54]
    ldr r6, [r5,#0x58]
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #8
    bne locret_801318A
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #5
    beq loc_8013160
    ldrb r0, [r7,#2]
    cmp r0, #1
    beq locret_801318A
    ldrb r0, [r7,#1]
    cmp r0, #0
    beq locret_801318A
    bl sub_8012F4A
    mov r1, #0x20 
    tst r0, r1
    bne locret_801318A
    bl sub_8012F4A
    ldr r1, [pc, #0x80133f4-0x801310e-2] // =0x204
    tst r0, r1
    bne locret_801318A
    mov r1, #9
    tst r0, r1
    bne loc_801313A
    ldrb r0, [r7,#2]
    mov r1, #1
    bl sub_8012C46
    mov r1, #0x32 
    lsl r1, r0
    ldrh r0, [r7,#0x2c]
    add r0, r0, r1
    strh r0, [r7,#0x2c]
    ldrh r0, [r7,#0x3e]
    add r0, r0, r1
    strh r0, [r7,#0x3e]
    ldrb r0, [r7,#0xd]
    mov r1, #3
    orr r0, r1
    strb r0, [r7,#0xd]
loc_801313A:
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    mov r2, #2
    bl sub_8009D90
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r4, #1
    mov r0, #0xf
    bl sub_80145C0
    bl sub_80E2030
    pop {r6,r7,pc}
loc_8013160:
    mov r0, #0x32 
    bl sub_800AB86
    mov r1, #0x32 
    ldrh r0, [r7,#0x3e]
    add r0, r0, r1
    strh r0, [r7,#0x3e]
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    mov r2, #2
    bl sub_8009D90
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x9a
    bl f500_8000558
locret_801318A:
    pop {r6,r7,pc}
// end of function sub_80130D6

.thumb
sub_801318C:
    push {r4,lr}
    bl sub_80079EA
    tst r0, r0
    bne locret_80131B8
    bl sub_80405D8
    bne locret_80131B8
    ldr r4, [r5,#0x54]
    ldrh r1, [r4,#0x38]
    tst r1, r1
    beq loc_80131AE
    ldrb r0, [r5,#0x16]
    mov r2, #1
    eor r0, r2
    bl sub_800F4A6
loc_80131AE:
    mov r1, #0x36 
    ldrh r1, [r4,r1]
    ldrb r0, [r5,#0x16]
    bl sub_800F4F2
locret_80131B8:
    pop {r4,pc}
// end of function sub_801318C

.thumb
sub_80131BA:
    ldr r3, [r5,#0x54]
    strb r0, [r3,#0xe]
    mov pc, lr
// end of function sub_80131BA

.thumb
sub_80131C0:
    push {lr}
    ldr r0, [pc, #0x80133f8-0x80131c2-2] // =0xE800
    bl sub_8012F40
    ldr r0, [pc, #0x80133fc-0x80131c8-4] // =0x8068
    bl sub_8012F5A
    mov r0, #0
    ldr r3, [r5,#0x54]
    strh r0, [r3,#0x10]
    strh r0, [r3,#0x12]
    strh r0, [r3,#0x14]
    strh r0, [r3,#0x16]
    pop {pc}
// end of function sub_80131C0

.thumb
sub_80131DC:
    push {lr}
    ldr r0, [pc, #0x8013400-0x80131de-2] // =0x800
    bl sub_8012F40
    mov r0, #8
    bl sub_8012F5A
    mov r0, #0
    ldr r3, [r5,#0x54]
    strh r0, [r3,#0x10]
    pop {pc}
// end of function sub_80131DC

.thumb
sub_80131F2:
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x54]
    mov r1, #0x10
    tst r0, r1
    beq locret_8013200
    ldr r0, [pc, #0x8013404-0x80131fc-4] // =0xFFFF
    strh r0, [r5,#0x2a]
locret_8013200:
    mov pc, lr
// end of function sub_80131F2

.thumb
sub_8013202:
    push {lr}
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x54]
    mov r1, #0x10
    tst r0, r1
    beq locret_8013228
    ldr r0, [pc, #0x8013404-0x801320e-2] // =0xFFFF
    strh r0, [r5,#0x2a]
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    mov r1, #0
    strb r1, [r0]
    strb r1, [r0,#1]
    add r0, #2
    mov r1, #0xa
    ldr r2, [pc, #0x8013404-0x8013222-2] // =0xFFFF
    bl f900_80009BC
locret_8013228:
    pop {pc}
// end of function sub_8013202

.thumb
sub_801322A:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800BFB8
    add r4, r0, #0
    ldr r3, [r5,#0x54]
    ldrh r0, [r3,#0x3a]
    ldrb r1, [r4,#0x13]
    add r1, r1, r0
    strb r1, [r4,#0x13]
    pop {r4,pc}
// end of function sub_801322A

.thumb
sub_8013244:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800BFB8
    add r4, r0, #0
    ldr r3, [r5,#0x54]
    ldrh r0, [r3,#0x3a]
    ldrb r1, [r4,#0x13]
    add r1, r1, r0
    strb r1, [r4,#0x13]
    ldr r3, [r5,#0x58]
    ldrb r4, [r3,#0x13]
    mov r0, #0
    strb r0, [r3,#0x13]
    ldrh r0, [r5,#0x26]
    mov r1, #0xa
    svc 6
    mul r0, r4
    tst r0, r0
    beq locret_8013286
    bl sub_800AB86
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x9a
    bl f500_8000558
locret_8013286:
    pop {r4,pc}
// end of function sub_8013244

.thumb
sub_8013288:
    push {lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    beq locret_80132B8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #9
    bne locret_80132B8
    ldrb r0, [r5,#0x16]
    bl sub_800F552
    ldr r1, [pc, #0x8013408-0x80132a8-4] // =0x1F0
    cmp r0, r1
    bgt locret_80132B8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #2
    bl sub_8009D90
locret_80132B8:
    pop {pc}
// end of function sub_8013288

.thumb
sub_80132BA:
    push {lr}
    bl sub_8007920
    bne locret_80132FA
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    beq locret_80132FA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #0xb
    bne locret_80132FA
    ldrb r0, [r5,#0x16]
    bl sub_800F448
    mov r0, #5
    beq locret_80132FA
    ldrb r0, [r5,#0x16]
    bl sub_800F552
    ldr r1, [pc, #0x8013408-0x80132ea-2] // =0x1F0
    cmp r0, r1
    ble locret_80132FA
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    mov r2, #2
    bl sub_8009D90
locret_80132FA:
    pop {pc}
// end of function sub_80132BA

.thumb
sub_80132FC:
    push {r7,lr}
    ldr r7, [r5,#0x54]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x13
    tst r0, r1
    beq locret_801334E
    add r0, r1, #0
    bl sub_8012F40
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    bl sub_8009A88
    tst r0, r0
    beq locret_801334E
    ldrb r1, [r0]
    cmp r1, #7
    bne locret_801334E
    ldrb r0, [r7,#2]
    cmp r0, #2
    beq locret_801334E
    bl sub_8012F4A
    mov r1, #0x24 
    tst r0, r1
    bne locret_801334E
    ldr r1, [pc, #0x801340c-0x8013334-4] // unk_2000000
    tst r0, r1
    beq locret_801334E
    ldrb r1, [r5,#0x16]
    mov r0, #5
    mul r1, r0
    ldr r0, [pc, #0x8013350-0x8013340-4] // unk_8013354
    add r0, r0, r1
    ldrb r1, [r7,#0xa]
    ldrb r0, [r0,r1]
    ldrb r1, [r7,#0xd]
    orr r1, r0
    strb r1, [r7,#0xd]
locret_801334E:
    pop {r7,pc}
off_8013350:    .word unk_8013354
unk_8013354:    .byte 0
    .byte 0x40 
    .byte 0x80
    .byte 0x20
    .byte 0x10
    .byte 0
    .byte 0x40 
    .byte 0x80
    .byte 0x10
    .byte 0x20
    .byte 0
    .byte 0
// end of function sub_80132FC

.thumb
sub_8013360:
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#0xb]
    tst r0, r0
    beq locret_801336C
    sub r0, #1
    strb r0, [r3,#0xb]
locret_801336C:
    mov pc, lr
// end of function sub_8013360

.thumb
sub_801336E:
    push {r4,lr}
    ldr r0, [r5,#0x54]
    ldrb r1, [r0,#2]
    ldr r2, [pc, #0x80133a4-0x8013374-4] // unk_80133A8
    ldrb r1, [r2,r1]
    cmp r1, #0xff
    beq locret_80133A2
    ldrh r2, [r0,r1]
    tst r2, r2
    beq locret_80133A2
    bl sub_800AB54
    add r4, r0, #0
    ldrb r0, [r5,#0xf]
    bl sub_8011824
    mov r1, #6
    ldrsb r1, [r0,r1]
    mul r1, r4
    lsl r1, r1, #0x10
    mov r3, #7
    ldrsb r3, [r0,r3]
    lsl r3, r3, #0x10
    mov r2, #0
    bl sub_80E9860
locret_80133A2:
    pop {r4,pc}
off_80133A4:    .word unk_80133A8
unk_80133A8:    .byte 0xFF
    .byte 0x2E 
    .byte 0x30 
    .byte 0x32 
    .byte 0x2C 
    .byte 0
    .byte 0
    .byte 0
// end of function sub_801336E

.thumb
sub_80133B0:
    push {r4,r6,lr}
    ldr r4, [r5,#0x54]
    ldr r6, [r4,#0x54]
    mov r2, #0x40 
    tst r6, r2
    beq locret_80133E2
    mov r0, #0
    strb r0, [r4,#0xb]
    bl sub_8016220
    push {r0}
    mov r0, #0xb
    add r0, #0xff
    bl f500_8000558
    pop {r0}
    ldrh r0, [r4,#0x28]
    tst r0, r0
    beq locret_80133E2
    mov r0, #0x80
    tst r0, r6
    beq locret_80133E2
    mov r0, #0x73 
    bl f500_8000558
locret_80133E2:
    pop {r4,r6,pc}
// end of function sub_80133B0

.thumb
sub_80133E4:
    ldr r3, [r5,#0x54]
    lsl r1, r1, #8
    add r1, r1, r0
    mov r0, #0x74 
    strh r1, [r3,r0]
    mov pc, lr
dword_80133F0:    .word 0xC000000
dword_80133F4:    .word 0x206
dword_80133F8:    .word 0xE800
dword_80133FC:    .word 0x8068
off_8013400:    .word 0x800
dword_8013404:    .word 0xFFFF
dword_8013408:    .word 0x1F3
off_801340C:    .word unk_2000000
// end of function sub_80133E4

.thumb
sub_8013410:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#0xf]
    cmp r0, #0
    beq locret_8013436
    lsr r1, r0, #4
    sub r1, #1
    lsl r1, r1, #2
    ldr r2, [pc, #0x8013538-0x8013420-4] // off_8018490
    ldr r2, [r2,r1]
    lsl r0, r0, #0x1c
    lsr r0, r0, #0x19
    add r2, r2, r0
    ldrh r1, [r2,#4]
    ldrb r0, [r2,#6]
    strh r1, [r3,r0]
    ldr r0, [r2]
    bl sub_8012F50
locret_8013436:
    pop {pc}
// end of function sub_8013410

.thumb
sub_8013438:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#0xf]
    cmp r0, #0
    beq locret_8013462
    lsr r1, r0, #4
    cmp r1, #1
    bne locret_8013462
    sub r1, #1
    lsl r1, r1, #2
    ldr r2, [pc, #0x801353c-0x801344c-4] // off_8018490
    ldr r2, [r2,r1]
    lsl r0, r0, #0x1c
    lsr r0, r0, #0x19
    add r2, r2, r0
    ldrh r1, [r2,#4]
    ldrb r0, [r2,#6]
    strh r1, [r3,r0]
    ldr r0, [r2]
    bl sub_8012F50
locret_8013462:
    pop {pc}
// end of function sub_8013438

.thumb
sub_8013464:
    push {lr}
    ldr r3, [r0,#0x54]
    cmp r1, #0
    beq locret_801348A
    add r0, r1, #0
    lsr r1, r1, #4
    sub r1, #1
    lsl r1, r1, #2
    ldr r2, [pc, #0x8013540-0x8013474-4] // off_8018490
    ldr r2, [r2,r1]
    lsl r0, r0, #0x1c
    lsr r0, r0, #0x19
    add r2, r2, r0
    ldrh r1, [r2,#4]
    ldrb r0, [r2,#6]
    strh r1, [r3,r0]
    ldr r0, [r2]
    bl sub_8012F50
locret_801348A:
    pop {pc}
// end of function sub_8013464

.thumb
sub_801348C:
    ldr r0, [r5,#0x54]
    mov r1, #0
    str r1, [r0,#0x6c]
    str r1, [r0,#0x70]
    mov pc, lr
// end of function sub_801348C

.thumb
sub_8013496:
    push {r6,lr}
    ldr r6, [r5,#0x54]
    ldrh r0, [r6,#0x18]
    tst r0, r0
    bne loc_80134AE
    bl sub_8012F64
    mov r1, #2
    tst r0, r1
    beq loc_80134AE
    mov r0, #0x78 
    strh r0, [r6,#0x18]
loc_80134AE:
    mov r0, #2
    bl sub_8012F5A
    ldrh r0, [r6,#0x18]
    tst r0, r0
    beq loc_80134D0
    sub r0, #1
    strh r0, [r6,#0x18]
    bgt loc_80134D8
    bl sub_8012F4A
    mov r1, #2
    tst r0, r1
    beq loc_80134D0
    mov r0, #0xb0
    bl f500_8000558
loc_80134D0:
    ldr r0, [pc, #0x80134e4-0x80134d0-4] // =0x201
    bl sub_8012F40
    b locret_80134E0
loc_80134D8:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_8012F36
locret_80134E0:
    pop {r6,pc}
    .balign 4, 0x00
dword_80134E4:    .word 0x202
// end of function sub_8013496

.thumb
sub_80134E8:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrh r1, [r3,#0x18]
    tst r1, r1
    beq locret_80134FE
    ldr r0, [r3,#0x54]
    mov r1, #4
    tst r0, r1
    beq locret_80134FE
    mov r0, #0
    strh r0, [r3,#0x18]
locret_80134FE:
    pop {pc}
// end of function sub_80134E8

.thumb
sub_8013500:
    ldr r3, [r5,#0x54]
    mov r0, #0
    strh r0, [r3,#0x18]
    mov pc, lr
// end of function sub_8013500

.thumb
sub_8013508:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    mov r0, #0
    strb r0, [r4,#0xd]
    strb r0, [r4,#0xf]
    mov r1, #0x48 
    strh r0, [r4,r1]
    mov r0, #0x28 
    add r0, r0, r4
    mov r1, #0x14
    bl f900_8000910
    ldr r0, [pc, #0x8013544-0x8013520-4] // =0x105
    bl sub_8012F5A
    pop {r4,pc}
// end of function sub_8013508

.thumb
sub_8013528:
    push {r4,lr}
    ldr r0, [r5,#0x54]
    add r0, #0x28 
    mov r1, #0x14
    bl f900_8000910
    pop {r4,pc}
    .balign 4, 0x00
off_8013538:    .word off_8018490
off_801353C:    .word off_8018490
off_8013540:    .word off_8018490
dword_8013544:    .word 0x106
// end of function sub_8013528

.thumb
sub_8013548:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_80135FC
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_80135FC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_80135FC
    bl sub_8013052
    bl sub_8012DAC
    bl sub_8012FA6
    bl sub_8013288
    bl sub_80132FC
    ldrb r4, [r7,#0xd]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x11
    tst r0, r1
    bne loc_80135A0
    mov r1, #1
    tst r4, r1
    beq loc_80135A0
    mov r0, #4
    bl sub_8012F50
loc_80135A0:
    mov r1, #2
    tst r4, r1
    beq loc_80135AC
    mov r0, #2
    bl sub_8012F50
loc_80135AC:
    mov r1, #0xfc
    tst r4, r1
    beq loc_80135D8
    mov r1, #1
    tst r4, r1
    beq loc_80135C8
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F50
    mov r0, #4
    bl sub_8012F5A
    b loc_80135D8
loc_80135C8:
    bl sub_8012F4A
    ldr r1, [pc, #0x8013600-0x80135cc-4] // =0x100040
    tst r0, r1
    bne loc_80135D8
    mov r0, #0x10
    bl sub_8012F50
loc_80135D8:
    bl sub_800B05A
    bl sub_8013410
    bl sub_80131F2
    bl sub_801322A
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_80135FC:
    pop {r4,r7,pc}
    .byte 0, 0
dword_8013600:    .word 0x100040
// end of function sub_8013548

.thumb
sub_8013604:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_801365E
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_801365E
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_801365E
    bl sub_8013052
    bl sub_8012DAC
    bl sub_8012FA6
    bl sub_8013288
    bl sub_80132FC
    bl sub_80131F2
    bl sub_801322A
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_801365E:
    pop {r4,r7,pc}
// end of function sub_8013604

    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_80136E8
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_80136E8
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_80136E8
    bl sub_8013052
    bl sub_8012DAC
    bl sub_8012FA6
    bl sub_8013288
    bl sub_80132FC
    ldrb r4, [r7,#0xd]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x11
    tst r0, r1
    bne loc_80136B8
    mov r1, #1
    tst r4, r1
    beq loc_80136B8
    mov r0, #4
    bl sub_8012F50
loc_80136B8:
    mov r1, #2
    tst r4, r1
    beq loc_80136C4
    mov r0, #2
    bl sub_8012F50
loc_80136C4:
    bl sub_800B05A
    bl sub_8013410
    bl sub_80131F2
    bl sub_801322A
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_80136E8:
    pop {r4,r7,pc}
.thumb
sub_80136EA:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_801375A
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_801375A
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_801375A
    ldrb r4, [r7,#0xd]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x11
    tst r0, r1
    bne loc_801372E
    mov r1, #1
    tst r4, r1
    beq loc_801372E
    mov r0, #4
    bl sub_8012F50
loc_801372E:
    mov r1, #2
    tst r4, r1
    beq loc_801373A
    mov r0, #2
    bl sub_8012F50
loc_801373A:
    bl sub_8013438
    bl sub_80131F2
    bl sub_801322A
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_801375A:
    pop {r4,r7,pc}
// end of function sub_80136EA

.thumb
sub_801375C:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_80137F6
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_80137F6
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_80137F6
    bl sub_8013052
    bl sub_8012DAC
    bl sub_8012FA6
    bl sub_8013288
    bl sub_80132FC
    ldrb r4, [r7,#0xd]
    mov r1, #0xfc
    tst r4, r1
    beq loc_80137D2
    mov r1, #1
    tst r4, r1
    beq loc_80137C2
    bl sub_8012F4A
    mov r1, #0x40 
    tst r0, r1
    bne loc_80137D2
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F50
    mov r0, #4
    bl sub_8012F5A
    b loc_80137D2
loc_80137C2:
    bl sub_8012F4A
    ldr r1, [pc, #0x80139e0-0x80137c6-2] // =0x100040
    tst r0, r1
    bne loc_80137D2
    mov r0, #0x10
    bl sub_8012F50
loc_80137D2:
    bl sub_800B05A
    bl sub_8013410
    bl sub_80131F2
    bl sub_801322A
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_80137F6:
    pop {r4,r7,pc}
// end of function sub_801375C

.thumb
sub_80137F8:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_80138DC
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_80138DC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_80138DC
    bl sub_80130D6
    bl sub_8013052
    bl sub_8012DAC
    bl sub_8012FA6
    bl sub_8012F6A
    bl sub_8013288
    bl sub_80132BA
    bl sub_80132FC
    bl sub_800D998
    bl sub_800C128
    bl sub_8022F9C
    ldrb r4, [r7,#0xd]
    bl sub_8012F4A
    ldr r1, [pc, #0x80139e4-0x8013854-4] // =0x220000
    tst r0, r1
    bne loc_8013866
    mov r1, #1
    tst r4, r1
    beq loc_8013866
    mov r0, #4
    bl sub_8012F50
loc_8013866:
    mov r1, #2
    tst r4, r1
    beq loc_8013872
    mov r0, #2
    bl sub_8012F50
loc_8013872:
    mov r1, #0xfc
    tst r4, r1
    beq loc_801389E
    mov r1, #1
    tst r4, r1
    beq loc_801388E
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F50
    mov r0, #4
    bl sub_8012F5A
    b loc_801389E
loc_801388E:
    bl sub_8012F4A
    ldr r1, [pc, #0x80139e0-0x8013892-2] // =0x100040
    tst r0, r1
    bne loc_801389E
    mov r0, #0x10
    bl sub_8012F50
loc_801389E:
    bl sub_800B05A
    mov r1, #0x24 
    bl sub_800D77A
    cmp r0, #0xc
    beq loc_80138B0
    bl sub_8013410
loc_80138B0:
    bl sub_8013202
    bl sub_8013244
    bl sub_800B624
    bl sub_800C400
    bl sub_800AC06
    bl sub_8013360
    bl sub_800C4D8
    bl sub_800C500
    bl sub_800C0D4
    bl sub_80134E8
    bl sub_800B0C2
locret_80138DC:
    pop {r4,r7,pc}
// end of function sub_80137F8

.thumb
sub_80138DE:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_801393E
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_801393E
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_801393E
    bl sub_8013052
    bl sub_80132FC
    ldrb r4, [r7,#0xd]
    mov r1, #0xfc
    tst r4, r1
    beq loc_8013936
    bl sub_8012F4A
    mov r1, #0x40 
    tst r0, r1
    bne loc_8013936
    mov r1, #1
    tst r4, r1
    beq loc_8013936
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F50
    mov r0, #4
    bl sub_8012F5A
loc_8013936:
    bl sub_800AC3E
    bl sub_800B0C2
locret_801393E:
    pop {r4,r7,pc}
// end of function sub_80138DE

.thumb
sub_8013940:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_8013976
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_8013976
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_8013976
    bl sub_8013052
    bl sub_800AC3E
    bl sub_800B0C2
locret_8013976:
    pop {r4,r7,pc}
// end of function sub_8013940

.thumb
sub_8013978:
    push {r4,r7,lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    beq locret_80139DC
    bl sub_8002E24
    ldr r7, [r5,#0x54]
    bl sub_80129A8
    bl sub_80079EA
    tst r0, r0
    bne locret_80139DC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne locret_80139DC
    bl sub_8013052
    bl sub_80132FC
    ldrb r4, [r7,#0xd]
    mov r1, #0xfc
    tst r4, r1
    beq loc_80139D4
    bl sub_8012F4A
    mov r1, #0x40 
    tst r0, r1
    bne loc_80139D4
    mov r1, #1
    tst r4, r1
    beq loc_80139D4
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F50
    mov r0, #4
    bl sub_8012F5A
    bl sub_8013528
loc_80139D4:
    bl sub_800AC3E
    bl sub_800B0C2
locret_80139DC:
    pop {r4,r7,pc}
    .byte 0, 0
dword_80139E0:    .word 0x100040
dword_80139E4:    .word 0x220000
// end of function sub_8013978

.thumb
sub_80139E8:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    bl sub_801336E
    bl sub_80133B0
    ldrh r4, [r6,#0x28]
    tst r4, r4
    beq loc_8013A44
    add r0, r4, #0
    bl sub_800C71C
    ldrh r1, [r5,#0x24]
    cmp r1, #1
    beq loc_8013A1E
    bl sub_8012F4A
    ldr r1, [pc, #0x8013be4-0x8013a10-4] // =0x40000
    tst r0, r1
    beq loc_8013A1E
    ldrh r1, [r5,#0x24]
    cmp r1, r4
    bgt loc_8013A1E
    sub r4, r1, #1
loc_8013A1E:
    add r0, r4, #0
    bl sub_800AB6A
    tst r1, r1
    beq loc_8013A50
    bl sub_8002DFC
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #1
    beq loc_8013A3A
    mov r0, #0x6b 
    b loc_8013A3C
loc_8013A3A:
    mov r0, #0x6d 
loc_8013A3C:
    bl f500_8000558
    bl sub_800EDF8
loc_8013A44:
    ldrh r0, [r6,#0x34]
    bl sub_800AB5E
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8013A6A
loc_8013A50:
    bl sub_800EB72
    tst r0, r0
    beq loc_8013A64
    ldr r0, [pc, #0x8013be0-0x8013a58-4] // =0x1000
    bl sub_800BF7A
    mov r0, #1
    strh r0, [r5,#0x24]
    b loc_8013A6A
loc_8013A64:
    mov r0, #1
    bl sub_8012F50
loc_8013A6A:
    bl sub_801318C
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8013A7C
    b loc_8013B8C
loc_8013A7C:
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8013A9C
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    bl sub_800C960
    b loc_8013B8C
loc_8013A9C:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    beq loc_8013AAA
    b loc_8013BCA
loc_8013AAA:
    bl sub_8007920
    bne loc_8013B8C
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_800B87C
    tst r0, r0
    beq loc_8013ACC
    mov r0, #2
    mov r1, #0x70 
    add r1, r1, r7
    strb r0, [r1,#5]
    mov r0, #0xd
    bl sub_800C960
    b loc_8013BCA
loc_8013ACC:
    bl sub_8013496
    bl sub_8012F64
    mov r1, #0x10
    tst r0, r1
    beq loc_8013AE6
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8010224
    b loc_8013AFC
loc_8013AE6:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    beq loc_8013AF8
    bl sub_8010224
    b loc_8013AFC
loc_8013AF8:
    mov r0, #0
    strb r0, [r5,#0x1f]
loc_8013AFC:
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8013B3C
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_8013B18
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_8013B18:
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne loc_8013B28
    bl sub_80131DC
loc_8013B28:
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8013B8C
loc_8013B3C:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_8013B4E
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8013B8C
loc_8013B4E:
    mov r0, #0
    strb r0, [r5,#0xd]
    bl sub_8012F64
    mov r1, #4
    tst r0, r1
    beq loc_8013B80
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne loc_8013B72
    bl sub_80131DC
loc_8013B72:
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    mov r0, #3
    bl sub_800C960
loc_8013B80:
    bl sub_800AE24
    bl sub_800C09E
    bl sub_800C520
loc_8013B8C:
    bl sub_8002F1A
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    bl sub_800C666
    bl sub_8010368
    bl sub_80103B4
    bl sub_80103DC
    bl sub_8010522
    bl sub_800BADC
    bl sub_800BD4C
    bl sub_800C06A
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013BCA
    bl sub_8007920
    bne loc_8013BD8
loc_8013BCA:
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    b loc_8013BDC
loc_8013BD8:
    bl sub_8010BE4
loc_8013BDC:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
off_8013BE0:    .word 0x1000
dword_8013BE4:    .word 0x40000
// end of function sub_80139E8

.thumb
sub_8013BE8:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    bl sub_801336E
    bl sub_80133B0
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_8013C1C
    push {r0}
    bl sub_8002DFC
    mov r0, #0x6d 
    bl f500_8000558
    bl sub_800EDF8
    bl sub_8013500
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_8013C28
loc_8013C1C:
    ldrh r0, [r6,#0x34]
    bl sub_800AB5E
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8013C2E
loc_8013C28:
    mov r0, #1
    bl sub_8012F50
loc_8013C2E:
    bl sub_801318C
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013D0C
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8013C60
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_8013D0C
loc_8013C60:
    bl sub_8007920
    bne loc_8013D0C
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8012F64
    mov r1, #0x10
    tst r0, r1
    beq loc_8013C80
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8010224
    b loc_8013C96
loc_8013C80:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    beq loc_8013C92
    bl sub_8010224
    b loc_8013C96
loc_8013C92:
    mov r0, #0
    strb r0, [r5,#0x1f]
loc_8013C96:
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8013CD6
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne loc_8013CB8
    bl sub_80131DC
loc_8013CB8:
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_8013CCA
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_8013CCA:
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8013D0C
loc_8013CD6:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_8013CE8
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8013D0C
loc_8013CE8:
    mov r0, #0
    strb r0, [r5,#0xd]
    ldrh r0, [r6,#0x18]
    tst r0, r0
    beq loc_8013CF8
    sub r0, #1
    strh r0, [r6,#0x18]
    bgt loc_8013D00
loc_8013CF8:
    ldr r0, [pc, #0x8013d50-0x8013cf8-4] // =0x201
    bl sub_8012F40
    b loc_8013D08
loc_8013D00:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_8012F36
loc_8013D08:
    bl sub_800AE24
loc_8013D0C:
    bl sub_8002F1A
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    bl sub_8010368
    bl sub_80103B4
    bl sub_80103DC
    bl sub_8010522
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013D3A
    bl sub_8007920
    bne loc_8013D48
loc_8013D3A:
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    b loc_8013D4C
loc_8013D48:
    bl sub_8010488
loc_8013D4C:
    add sp, sp, #4
    pop {r6,r7,pc}
dword_8013D50:    .word 0x202
// end of function sub_8013BE8

.thumb
sub_8013D54:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    bl sub_801336E
    bl sub_80133B0
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_8013D8A
    push {r0}
    bl sub_8002DFC
    mov r0, #0x6d 
    bl f500_8000558
    bl sub_800EDF8
    bl sub_8013500
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_8013D96
loc_8013D8A:
    ldrh r0, [r6,#0x34]
    bl sub_800AB5E
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8013D9C
loc_8013D96:
    mov r0, #1
    bl sub_8012F50
loc_8013D9C:
    bl sub_801318C
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013E96
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8013DCE
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_8013E96
loc_8013DCE:
    bl sub_8007920
    bne loc_8013E96
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8013496
    bl sub_8012F64
    mov r1, #0x10
    tst r0, r1
    beq loc_8013DF2
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8010EAC
    b loc_8013E08
loc_8013DF2:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    beq loc_8013E04
    bl sub_8010EAC
    b loc_8013E08
loc_8013E04:
    mov r0, #0
    strb r0, [r5,#0x1f]
loc_8013E08:
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8013E48
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_8013E24
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_8013E24:
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne loc_8013E34
    bl sub_80131DC
loc_8013E34:
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8013E96
loc_8013E48:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_8013E5A
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8013E96
loc_8013E5A:
    mov r0, #0
    strb r0, [r5,#0xd]
    bl sub_8012F64
    mov r1, #4
    tst r0, r1
    beq loc_8013E8E
    add r0, r1, #0
    bl sub_8012F5A
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne loc_8013E7E
    bl sub_80131DC
loc_8013E7E:
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    mov r0, #3
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_8013E8E:
    bl sub_800AE24
    bl sub_800C09E
loc_8013E96:
    bl sub_8002F1A
    mov r0, #1
    lsl r0, r0, #0xf
    bl sub_8012F5A
    bl sub_8010368
    bl sub_80103B4
    bl sub_80103DC
    bl sub_8010522
    bl sub_800C06A
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013EC8
    bl sub_8007920
    bne loc_8013ED6
loc_8013EC8:
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    b loc_8013EDA
loc_8013ED6:
    bl sub_8010488
loc_8013EDA:
    add sp, sp, #4
    pop {r6,r7,pc}
// end of function sub_8013D54

.thumb
sub_8013EDE:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_8013F04
    push {r0}
    bl sub_8002DFC
    mov r0, #0xc8
    bl f500_8000558
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_8013F12
loc_8013F04:
    ldr r0, [r6,#0x54]
    ldr r1, [pc, #0x8013ff4-0x8013f06-2] // =0xC800002
    tst r0, r1
    bne loc_8013F12
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8013F18
loc_8013F12:
    mov r0, #1
    bl sub_8012F50
loc_8013F18:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8013FDA
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8013F46
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_8013FDA
loc_8013F46:
    bl sub_8012F64
    ldr r1, [pc, #0x8014330-0x8013f4a-2] // =0xC00
    tst r0, r1
    beq loc_8013F56
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_8013F60
loc_8013F56:
    bl sub_8012F4A
    ldr r1, [pc, #0x8014334-0x8013f5a-2] // LCDControl
    tst r0, r1
    beq loc_8013F66
loc_8013F60:
    bl sub_801154E
    b loc_8013FEE
loc_8013F66:
    bl sub_8012F64
    ldr r1, [pc, #0x8014338-0x8013f6a-2] // =0x6000
    tst r0, r1
    beq loc_8013F76
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_8013F80
loc_8013F76:
    bl sub_8012F4A
    ldr r1, [pc, #0x801433c-0x8013f7a-2] // =0x30000000
    tst r0, r1
    beq loc_8013F86
loc_8013F80:
    bl ho_8011696
    b loc_8013FEE
loc_8013F86:
    bl sub_8007920
    beq loc_8013F98
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq loc_8013FDA
    bl sub_80117A8
    b loc_8013FEE
loc_8013F98:
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8013FC4
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_8013FB8
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_8013FB8:
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8013FDA
loc_8013FC4:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_8013FD6
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8013FDA
loc_8013FD6:
    mov r0, #0
    strb r0, [r5,#0xd]
loc_8013FDA:
    bl sub_8002F1A
    bl sub_8011762
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_8013FEE:
    add sp, sp, #4
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_8013FF4:    .word 0xC800002
// end of function sub_8013EDE

.thumb
sub_8013FF8:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_801401E
    push {r0}
    bl sub_8002DFC
    mov r0, #0xc8
    bl f500_8000558
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_801402C
loc_801401E:
    ldr r0, [r6,#0x54]
    ldr r1, [pc, #0x8014340-0x8014020-4] // =0x800002
    tst r0, r1
    bne loc_801402C
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8014032
loc_801402C:
    mov r0, #1
    bl sub_8012F50
loc_8014032:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_80140F4
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8014060
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80140F4
loc_8014060:
    bl sub_8012F64
    ldr r1, [pc, #0x8014330-0x8014064-4] // =0xC00
    tst r0, r1
    beq loc_8014070
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_801407A
loc_8014070:
    bl sub_8012F4A
    ldr r1, [pc, #0x8014334-0x8014074-4] // LCDControl
    tst r0, r1
    beq loc_8014080
loc_801407A:
    bl sub_801154E
    b loc_8014108
loc_8014080:
    bl sub_8012F64
    ldr r1, [pc, #0x8014338-0x8014084-4] // =0x6000
    tst r0, r1
    beq loc_8014090
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_801409A
loc_8014090:
    bl sub_8012F4A
    ldr r1, [pc, #0x801433c-0x8014094-4] // =0x30000000
    tst r0, r1
    beq loc_80140A0
loc_801409A:
    bl ho_8011696
    b loc_8014108
loc_80140A0:
    bl sub_8007920
    beq loc_80140B2
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq loc_80140F4
    bl sub_80117A8
    b loc_8014108
loc_80140B2:
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_80140DE
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_80140D2
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_80140D2:
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_80140F4
loc_80140DE:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_80140F0
    mov r0, #5
    strb r0, [r5,#9]
    b loc_80140F4
loc_80140F0:
    mov r0, #0
    strb r0, [r5,#0xd]
loc_80140F4:
    bl sub_8002F1A
    bl sub_8011762
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_8014108:
    add sp, sp, #4
    pop {r6,r7,pc}
// end of function sub_8013FF8

.thumb
sub_801410C:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_8014132
    push {r0}
    bl sub_8002DFC
    mov r0, #0xc8
    bl f500_8000558
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_8014140
loc_8014132:
    ldr r0, [r6,#0x54]
    ldr r1, [pc, #0x8014344-0x8014134-4] // =0xC800002
    tst r0, r1
    bne loc_8014140
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8014146
loc_8014140:
    mov r0, #1
    bl sub_8012F50
loc_8014146:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8014202
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8014174
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_8014202
loc_8014174:
    bl sub_8012F64
    ldr r1, [pc, #0x8014330-0x8014178-4] // =0xC00
    tst r0, r1
    beq loc_8014184
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_801418E
loc_8014184:
    bl sub_8012F4A
    ldr r1, [pc, #0x8014334-0x8014188-4] // LCDControl
    tst r0, r1
    beq loc_8014194
loc_801418E:
    bl sub_801154E
    b loc_8014216
loc_8014194:
    bl sub_8012F64
    ldr r1, [pc, #0x8014338-0x8014198-4] // =0x6000
    tst r0, r1
    beq loc_80141A4
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_80141AE
loc_80141A4:
    bl sub_8012F4A
    ldr r1, [pc, #0x801433c-0x80141a8-4] // =0x30000000
    tst r0, r1
    beq loc_80141B4
loc_80141AE:
    bl ho_8011696
    b loc_8014216
loc_80141B4:
    bl sub_8007920
    beq loc_80141C0
    bl sub_80117A8
    b loc_8014216
loc_80141C0:
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_80141EC
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_80141E0
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_80141E0:
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8014202
loc_80141EC:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_80141FE
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8014202
loc_80141FE:
    mov r0, #0
    strb r0, [r5,#0xd]
loc_8014202:
    bl sub_8002F1A
    bl sub_8011762
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_8014216:
    add sp, sp, #4
    pop {r6,r7,pc}
// end of function sub_801410C

.thumb
sub_801421A:
    push {r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r6, [r5,#0x54]
    ldr r7, [r5,#0x58]
    ldrh r0, [r6,#0x28]
    tst r0, r0
    beq loc_8014240
    push {r0}
    bl sub_8002DFC
    mov r0, #0xc8
    bl f500_8000558
    pop {r0}
    bl sub_800AB5E
    tst r1, r1
    beq loc_801424E
loc_8014240:
    ldr r0, [r6,#0x54]
    ldr r1, [pc, #0x8014344-0x8014242-2] // =0xC800002
    tst r0, r1
    bne loc_801424E
    ldrh r0, [r5,#0x24]
    tst r0, r0
    bne loc_8014254
loc_801424E:
    mov r0, #1
    bl sub_8012F50
loc_8014254:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8014316
    bl sub_8012F64
    mov r1, #1
    tst r0, r1
    beq loc_8014282
    add r0, r1, #0
    bl sub_8012F5A
    mov r0, #1
    lsl r0, r0, #8
    bl sub_8012F36
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_8014316
loc_8014282:
    bl sub_8012F64
    ldr r1, [pc, #0x8014330-0x8014286-2] // =0xC00
    tst r0, r1
    beq loc_8014292
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_801429C
loc_8014292:
    bl sub_8012F4A
    ldr r1, [pc, #0x8014334-0x8014296-2] // LCDControl
    tst r0, r1
    beq loc_80142A2
loc_801429C:
    bl sub_801154E
    b loc_801432A
loc_80142A2:
    bl sub_8012F64
    ldr r1, [pc, #0x8014338-0x80142a6-2] // =0x6000
    tst r0, r1
    beq loc_80142B2
    mov r0, #0
    strb r0, [r5,#0x18]
    b loc_80142BC
loc_80142B2:
    bl sub_8012F4A
    ldr r1, [pc, #0x801433c-0x80142b6-2] // =0x30000000
    tst r0, r1
    beq loc_80142C2
loc_80142BC:
    bl ho_8011696
    b loc_801432A
loc_80142C2:
    bl sub_8007920
    beq loc_80142D4
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq loc_8014316
    bl sub_80117A8
    b loc_801432A
loc_80142D4:
    mov r0, #0
    strb r0, [r5,#0x18]
    bl sub_8012F64
    mov r1, #1
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8014300
    add r0, r1, #0
    bl sub_8012F5A
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_80142F4
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_80142F4:
    mov r0, #5
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xd]
    b loc_8014316
loc_8014300:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x14
    tst r0, r1
    beq loc_8014312
    mov r0, #5
    strb r0, [r5,#9]
    b loc_8014316
loc_8014312:
    mov r0, #0
    strb r0, [r5,#0xd]
loc_8014316:
    bl sub_8002F1A
    bl sub_8011762
    ldrb r0, [r5,#9]
    lsl r0, r0, #2
    ldr r1, [sp]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_801432A:
    add sp, sp, #4
    pop {r6,r7,pc}
    .byte 0, 0
off_8014330:    .word 0xC00
off_8014334:    .word LCDControl
dword_8014338:    .word 0x6000
dword_801433C:    .word 0x30000000
dword_8014340:    .word 0x800002
dword_8014344:    .word 0xC800002
// end of function sub_801421A

.thumb
sub_8014348:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_8014366
    ldr r2, [r0,#0x14]
    tst r2, r2
    bne loc_8014366
    str r5, [r0,#0x14]
    ldr r1, [r0,#4]
    mov r2, #0x80
    orr r1, r2
    str r1, [r0,#4]
    mov r0, #1
    pop {pc}
loc_8014366:
    mov r0, #0
    pop {pc}
// end of function sub_8014348

.thumb
sub_801436A:
    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq loc_801438A
    ldr r1, [r0,#0x14]
    cmp r1, r5
    bne loc_801438A
    mov r1, #0
    str r1, [r0,#0x14]
    ldr r1, [r0,#4]
    mov r2, #0x80
    bic r1, r2
    str r1, [r0,#4]
    mov r0, #1
    pop {pc}
loc_801438A:
    mov r0, #0
    pop {pc}
// end of function sub_801436A

    push {lr}
    bl sub_8009A88
    tst r0, r0
    beq locret_801439A
    ldr r0, [r0,#0x14]
locret_801439A:
    pop {pc}
.thumb
sub_801439C:
    push {lr}
    bl sub_80078C4
    tst r0, r0
    bne locret_80143E4
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_80143E4
    mov r1, #8
    tst r0, r1
    bne locret_80143E4
    mov r1, #0x10
    tst r0, r1
    bne loc_80143C0
    bl sub_8007920
    bne locret_80143E4
loc_80143C0:
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq loc_80143CC
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne locret_80143E4
loc_80143CC:
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_80143E0
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_80143E0:
    bl sub_800283C
locret_80143E4:
    pop {pc}
// end of function sub_801439C

.thumb
sub_80143E6:
    push {lr}
    bl sub_80078C4
    tst r0, r0
    bne locret_8014418
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_8014418
    mov r1, #8
    tst r0, r1
    bne locret_8014418
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8014414
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    pop {pc}
loc_8014414:
    bl sub_800283C
locret_8014418:
    pop {pc}
// end of function sub_80143E6

.thumb
sub_801441A:
    push {lr}
    bl sub_80078C4
    tst r0, r0
    bne locret_801445A
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_801445A
    mov r1, #8
    tst r0, r1
    bne locret_801445A
    ldrb r0, [r5]
    mov r1, #0x10
    tst r0, r1
    bne loc_8014440
    bl sub_8007920
    bne locret_801445A
loc_8014440:
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8014456
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    pop {pc}
loc_8014456:
    bl sub_800283C
locret_801445A:
    pop {pc}
// end of function sub_801441A

.thumb
sub_801445C:
    push {lr}
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_801449C
    mov r1, #8
    tst r0, r1
    bne locret_801449C
    mov r1, #0x10
    tst r0, r1
    bne loc_8014478
    bl sub_8007920
    bne locret_801449C
loc_8014478:
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq loc_8014484
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne locret_801449C
loc_8014484:
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8014498
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_8014498:
    bl sub_800283C
locret_801449C:
    pop {pc}
// end of function sub_801445C

.thumb
sub_801449E:
    push {lr}
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_80144C6
    bl sub_8007920
    bne locret_80144C6
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_80144C2
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_80144C2:
    bl sub_800283C
locret_80144C6:
    pop {pc}
// end of function sub_801449E

.thumb
sub_80144C8:
    push {lr}
    bl sub_80078C4
    tst r0, r0
    bne locret_801451C
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq locret_801451C
    mov r1, #8
    tst r0, r1
    bne locret_801451C
    mov r1, #0x10
    tst r0, r1
    bne loc_80144EC
    bl sub_8007920
    bne locret_801451C
loc_80144EC:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne locret_801451C
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq loc_8014504
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne locret_801451C
loc_8014504:
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8014518
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_8014518:
    bl sub_800283C
locret_801451C:
    pop {pc}
// end of function sub_80144C8

.thumb
sub_801451E:
    push {r4,r6,r7,lr}
    mov r6, r8
    push {r6}
    mov r8, r7
    push {r0-r3}
    add r0, r4, #0
    bl loc_800AB56
    add r6, r0, #0
    pop {r0-r3}
    lsl r3, r3, #0x19
    bcs loc_8014584
    beq loc_801457E
    lsr r3, r3, #0x17
    ldr r7, [pc, #0x8014640-0x801453a-2] // off_801255C
    ldr r7, [r7,r3]
    mov r3, #0
loc_8014540:
    push {r0,r1}
    ldrsb r4, [r7,r3]
    cmp r4, #0x7f
    beq loc_801457C
    mul r4, r6
    add r0, r0, r4
    add r3, #1
    ldrsb r4, [r7,r3]
    add r1, r1, r4
    add r3, #1
    push {r0-r3}
    bl sub_8009E64
    tst r0, r0
    pop {r0-r3}
    beq loc_8014578
    push {r0-r3}
    push {r2}
    bl sub_800AB0A
    pop {r2}
    add r4, r2, #0
    add r2, r1, #0
    add r1, r0, #0
    mov r3, r8
    bl sub_80E17DE
    pop {r0-r3}
loc_8014578:
    pop {r0,r1}
    b loc_8014540
loc_801457C:
    pop {r0,r1}
loc_801457E:
    pop {r0}
    mov r8, r0
    pop {r4,r6,r7,pc}
loc_8014584:
    lsr r3, r3, #0x16
    add r4, r2, #0
    mov r1, #3
    ldr r7, [pc, #0x8014644-0x801458a-2] // dword_8012568+92
    add r7, r7, r3
    ldr r2, [r7]
    ldr r3, [r7,#4]
loc_8014592:
    mov r0, #6
loc_8014594:
    push {r0-r3}
    bl sub_8009E78
    tst r0, r0
    pop {r0-r3}
    beq loc_80145B2
    push {r0-r3}
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    bl sub_80E17DE
    pop {r0-r3}
loc_80145B2:
    sub r0, #1
    bne loc_8014594
    sub r1, #1
    bne loc_8014592
    pop {r0}
    mov r8, r0
    pop {r4,r6,r7,pc}
// end of function sub_801451E

.thumb
sub_80145C0:
    push {r4,r6,r7,lr}
    push {r0-r3}
    bl sub_8001AE0
    add r7, r0, #0
    pop {r0-r3}
    add r4, r7, #0
    and r4, r0
    lsr r6, r0, #1
    sub r4, r4, r6
    lsl r4, r4, #0x10
    add r1, r1, r4
    lsr r7, r7, #0x10
    and r7, r0
    lsr r0, r0, #1
    sub r7, r7, r0
    lsl r7, r7, #0x10
    add r3, r3, r7
    pop {r4,r6,r7,pc}
// end of function sub_80145C0

.thumb
sub_80145E6:
    sub r0, r0, r2
    bgt loc_80145F0
    blt loc_80145F4
    mov r0, #0
    b loc_80145F6
loc_80145F0:
    mov r0, #8
    b loc_80145F6
loc_80145F4:
    mov r0, #4
loc_80145F6:
    sub r1, r1, r3
    bgt loc_8014604
    blt loc_8014600
    mov r1, #0
    b loc_8014606
loc_8014600:
    mov r1, #1
    b loc_8014606
loc_8014604:
    mov r1, #2
loc_8014606:
    orr r0, r1
    mov pc, lr
// end of function sub_80145E6

.thumb
sub_801460A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#6]
    mov r2, #0x20 
    tst r2, r1
    beq locret_801463E
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    bne loc_8014636
    bl sub_80019A0
    lsr r0, r0, #1
    bcs loc_8014636
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    pop {pc}
loc_8014636:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
locret_801463E:
    pop {pc}
off_8014640:    .word off_801255C
off_8014644:    .word dword_8012568+0x5C
// end of function sub_801460A

.thumb
ho_8014648:
    push {r5-r7,lr}
    ldr r5, [pc, #0x80148a0-0x801464a-2] // unk_20363F0
    ldr r6, [pc, #0x8014668-0x801464c-4] // jt_801466C
    ldr r7, [r5,#(dword_2036438 - 0x20363f0)]
loc_8014650:
    lsr r7, r7, #1
    bcs loc_801465A
    beq locret_8014664
    add r6, #4
    b loc_8014650
loc_801465A:
    ldr r0, [r6]
    mov lr, pc
    bx r0
    add r6, #4
    b loc_8014650
locret_8014664:
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8014668:    .word jt_801466C
jt_801466C:    .word dword_80146C8+5
    .word sub_801475A+1
    .word sub_80147A0+1
    .word sub_8014800+1
    .word sub_8014878+1
    .word cb_80148A4+1
    .word sub_80149EC+1
    .word locret_801594C+1
    .word sub_80148D4+1
    .word ho_8014A24+1
    .word sub_8014A04+1
    .word locret_801594C+1
    .word locret_801594C+1
    .word loc_8014A7C+1
    .word loc_8014A88+1
    .word sub_8014904+1
    .word sub_8014AC8+1
    .word sub_8014AFC+1
    .word locret_801594C+1
    .word locret_801594C+1
    .word sub_8014B18+1
    .word sub_8014C60+1
    .word locret_801594C+1
dword_80146C8:    .word 0x8014A7D, 0x4652B580, 0x6C576992, 0xF989F7F3, 0xD1124200
    .word 0xF8F2F7F3, 0xD10E4200, 0x8CFA8CB9, 0x42910892, 0x7E68DC09
    .word 0x76683001, 0xDB04282D, 0x76682000, 0xF7EB2082, 0x8CB9FF2B
    .word 0x42998C6B, 0xDC0AD019, 0x71282002, 0x1A521C1A, 0x320410D2
    .word 0x428B1A9B, 0x1C0BDA0B, 0x2001E009
    .word 0x1C0A7128
// end of function ho_8014648

    sub r2, r2, r3
    asr r2, r2, #3
    add r2, #4
    add r3, r3, r2
    cmp r3, r1
    ble loc_8014736
    add r3, r1, #0
loc_8014736:
    strh r3, [r5,#0x22]
    mov r0, #0xf
    strb r0, [r5,#6]
    pop {r7,pc}
    ldrb r0, [r5,#6]
    cmp r0, #0
    beq loc_801474A
    sub r0, #1
    strb r0, [r5,#6]
    bne locret_8014758
loc_801474A:
    mov r0, #2
    ldrh r2, [r7,#0x26]
    lsr r2, r2, #2
    cmp r1, r2
    ble loc_8014756
    mov r0, #0
loc_8014756:
    strb r0, [r5,#4]
locret_8014758:
    pop {r7,pc}
.thumb
sub_801475A:
    push {lr}
    bl sub_80078C4
    tst r0, r0
    bne locret_8014798
    bl sub_8007920
    bne locret_8014798
    bl sub_8007A64
    mov r1, #2
    tst r0, r1
    bne locret_8014798
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x801479c-0x8014778-4] // =0x4000
    add r0, r0, r1
    strh r0, [r5,#0x24]
    cmp r0, r2
    blt locret_8014798
    strh r2, [r5,#0x24]
    bl sub_8007E1E
    cmp r0, #0
    bne locret_8014798
    mov r0, #2
    bl sub_8007A4C
    mov r0, #0x81
    bl f500_8000558
locret_8014798:
    pop {pc}
    .balign 4, 0x00
dword_801479C:    .word 0x4000
// end of function sub_801475A

.thumb
sub_80147A0:
    push {r4,lr}
    mov r4, #0
    ldr r3, [pc, #0x80147f8-0x80147a4-4] // byte_203DC90
loc_80147A6:
    ldrb r1, [r3]
    mov r0, #1
    tst r1, r0
    beq loc_80147C2
    ldr r2, [r3,#4]
    ldrh r0, [r3,#2]
    ldrh r1, [r2,#0x24]
    cmp r1, #0
    beq loc_80147F0
    add r4, #1
    cmp r0, r1
    blt loc_80147CC
    bgt loc_80147DE
loc_80147C0:
    strh r0, [r3,#2]
loc_80147C2:
    add r3, #0x14
    ldr r0, [pc, #0x80147fc-0x80147c4-4] // unk_203DCCC
    cmp r0, r3
    bne loc_80147A6
    pop {r4,pc}
loc_80147CC:
    add r2, r1, #0
    sub r2, r2, r0
    asr r2, r2, #3
    add r2, #2
    add r0, r0, r2
    cmp r0, r1
    ble loc_80147C0
    add r0, r1, #0
    b loc_80147C0
loc_80147DE:
    add r2, r0, #0
    sub r2, r2, r1
    asr r2, r2, #3
    add r2, #2
    sub r0, r0, r2
    cmp r0, r1
    bge loc_80147C0
    add r0, r1, #0
    b loc_80147C0
loc_80147F0:
    mov r0, #0
    strb r0, [r3]
    b loc_80147C0
    .balign 4, 0x00
off_80147F8:    .word byte_203DC90
off_80147FC:    .word unk_203DCCC
// end of function sub_80147A0

.thumb
sub_8014800:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80148a0-0x8014802-2] // unk_20363F0
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldr r7, [r2,#0x44]
    mov r0, #0x34 
    add r0, r0, r7
    bl sub_8003558
    cmp r2, #0
    bne loc_801481A
    sub r0, r2, #1
    b loc_801482A
loc_801481A:
    mov r3, #(byte_203640B - 0x20363f0)
    ldrsb r2, [r5,r3]
    mov r3, #(byte_203640C - 0x20363f0)
    ldrsb r3, [r5,r3]
    add r0, r0, r2
    add r1, r1, r3
    lsl r0, r0, #0x10
    add r0, r0, r1
loc_801482A:
    str r0, [r5,#(dword_2036430 - 0x20363f0)]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    ldrb r6, [r0]
    add r6, #1
    lsl r6, r6, #1
    add r6, r6, r0
    ldr r4, [pc, #0x8014868-0x801483e-2] // =0xFFFF
    mov r7, #0
loc_8014842:
    ldrh r0, [r6]
    cmp r0, r4
    beq loc_8014862
    bl sub_8019010
    ldr r0, [r0,#0x20]
    mov r2, #0x80
    ldr r1, [pc, #0x801486c-0x8014850-4] // =0x6016900
    add r3, r7, #0
    mul r3, r2
    add r1, r1, r3
    bl loc_8000874
    add r6, #2
    add r7, #1
    b loc_8014842
loc_8014862:
    ldr r0, [pc, #0x80148a0-0x8014862-2] // unk_20363F0
    strb r7, [r0,#(byte_20363FC - 0x20363f0)]
    pop {r4-r7,pc}
dword_8014868:    .word 0xFFFF
dword_801486C:    .word 0x6016900
    .word loc_8745CF8
    .word word_3002780
// end of function sub_8014800

.thumb
sub_8014878:
    push {r5,r7,lr}
    ldr r5, [pc, #0x80148a0-0x801487a-2] // unk_20363F0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    ldrb r1, [r0]
    add r1, #1
    lsl r1, r1, #1
    ldrsh r0, [r0,r1]
    add r1, r0, #1
    beq locret_801489E
    bl sub_8019010
    ldrb r0, [r0,#9]
    mov r1, #2
    and r0, r1
    strb r0, [r5,#(byte_20363FD - 0x20363f0)]
locret_801489E:
    pop {r5,r7,pc}
off_80148A0:    .word unk_20363F0
// end of function sub_8014878

.thumb
cb_80148A4:
    push {r5,lr}
    ldr r5, [pc, #0x80148bc-0x80148a6-2] // dword_2037CE0
    ldrb r0, [r5,#(dword_2037CE4+3 - 0x2037ce0)]
    add r0, #1
    strb r0, [r5,#(dword_2037CE4+3 - 0x2037ce0)]
    ldr r1, [pc, #0x80148c0-0x80148ae-2] // off_80148C4
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_80148BC:    .word dword_2037CE0
off_80148C0:    .word off_80148C4
off_80148C4:    .word sub_8014934+1
    .word sub_801496E+1
    .word sub_8014986+1
    .word sub_80149B4+1
// end of function cb_80148A4

.thumb
sub_80148D4:
    push {r5,lr}
    ldr r5, [pc, #0x80148ec-0x80148d6-2] // dword_2037CE0
    ldrb r0, [r5,#(dword_2037CE4+3 - 0x2037ce0)]
    add r0, #1
    strb r0, [r5,#(dword_2037CE4+3 - 0x2037ce0)]
    ldr r1, [pc, #0x80148f0-0x80148de-2] // off_80148F4
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_80148EC:    .word dword_2037CE0
off_80148F0:    .word off_80148F4
off_80148F4:    .word sub_8014934+1
    .word sub_801496E+1
    .word sub_8014986+1
    .word sub_80149C4+1
// end of function sub_80148D4

.thumb
sub_8014904:
    push {r5,lr}
    ldr r5, [pc, #0x801491c-0x8014906-2] // byte_2037CF0
    ldrb r0, [r5,#(byte_2037CF7 - 0x2037cf0)]
    add r0, #1
    strb r0, [r5,#(byte_2037CF7 - 0x2037cf0)]
    ldr r1, [pc, #0x8014920-0x801490e-2] // off_8014924
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_801491C:    .word byte_2037CF0
off_8014920:    .word off_8014924
off_8014924:    .word sub_8014934+1
    .word sub_801496E+1
    .word sub_8014986+1
    .word sub_80149D8+1
// end of function sub_8014904

.thumb
sub_8014934:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #3
    beq loc_8014960
    ldrb r0, [r5,#7]
    mov r1, #0x10
    mul r0, r1
    mov r2, #0xd0
    sub r2, r2, r0
    ldrb r3, [r5,#6]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8025C2A
    ldrb r0, [r5,#7]
    cmp r0, #9
    blt locret_801495E
loc_8014956:
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
locret_801495E:
    pop {pc}
loc_8014960:
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    ldrb r3, [r5,#6]
    bl sub_8025C2A
    b loc_8014956
// end of function sub_8014934

.thumb
sub_801496E:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #2
    beq locret_8014984
    ldrb r0, [r5,#7]
    cmp r0, #0x1e
    blt locret_8014984
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
locret_8014984:
    pop {pc}
// end of function sub_801496E

.thumb
sub_8014986:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #3
    beq loc_80149A8
    ldrb r0, [r5,#7]
    mov r1, #0x10
    mul r0, r1
    mov r2, #0x40 
    add r2, r2, r0
    ldrb r3, [r5,#6]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8025C2A
    ldrb r0, [r5,#7]
    cmp r0, #9
    blt locret_80149B2
loc_80149A8:
    ldrb r0, [r5,#6]
    bl sub_8025C1A
    mov r0, #0xc
    strb r0, [r5]
locret_80149B2:
    pop {pc}
// end of function sub_8014986

.thumb
sub_80149B4:
    push {lr}
    mov r0, #0x20 
    bl sub_8015902
    mov r0, #0x20 
    bl sub_8015AFA
    pop {pc}
// end of function sub_80149B4

.thumb
sub_80149C4:
    push {lr}
    ldr r0, [pc, #0x80149d4-0x80149c6-2] // =0xFF
    bl sub_8015902
    ldr r0, [pc, #0x80149d4-0x80149cc-4] // =0xFF
    bl sub_8015AFA
    pop {pc}
off_80149D4:    .word 0x100
// end of function sub_80149C4

.thumb
sub_80149D8:
    push {lr}
    ldr r0, [pc, #0x80149e8-0x80149da-2] // =0x8000
    bl sub_8015902
    ldr r0, [pc, #0x80149e8-0x80149e0-4] // =0x8000
    bl sub_8015AFA
    pop {pc}
dword_80149E8:    .word 0x8000
// end of function sub_80149D8

.thumb
sub_80149EC:
    push {lr}
    ldrb r0, [r5,#0xf]
    sub r0, #1
    strb r0, [r5,#0xf]
    bne locret_8014A02
    mov r0, #0x40 
    bl sub_8015902
    mov r0, #0x40 
    bl sub_8015AFA
locret_8014A02:
    pop {pc}
// end of function sub_80149EC

.thumb
sub_8014A04:
    push {lr}
    mov r0, #0
    bl sub_8022F08
    cmp r0, #0
    beq loc_8014A12
    mov r0, #1
loc_8014A12:
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8022F08
    cmp r0, #0
    beq loc_8014A20
    mov r0, #1
loc_8014A20:
    strb r0, [r5,#0x12]
    pop {pc}
// end of function sub_8014A04

.thumb
ho_8014A24:
    push {r5,lr}
    ldr r5, [pc, #0x8014a34-0x8014a26-2] // byte_2037BD0
    ldr r1, [pc, #0x8014a38-0x8014a28-4] // jt_8014A3C
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
off_8014A34:    .word byte_2037BD0
off_8014A38:    .word jt_8014A3C
jt_8014A3C:    .word sub_8014A48+1
    .word nullsub_53+1
    .word sub_8014A5E+1
// end of function ho_8014A24

.thumb
sub_8014A48:
    push {lr}
    bl sub_801609C
    cmp r0, #2
    bne locret_8014A5A
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
locret_8014A5A:
    pop {pc}
// end of function sub_8014A48

.thumb
nullsub_53:
    mov pc, lr
// end of function nullsub_53

.thumb
sub_8014A5E:
    push {lr}
    bl sub_801609C
    cmp r0, #0
    bne locret_8014A74
    ldr r0, [pc, #0x8014a78-0x8014a68-4] // =0x200
    bl sub_8015902
    ldr r0, [pc, #0x8014a78-0x8014a6e-2] // =0x200
    bl sub_8015AFA
locret_8014A74:
    pop {pc}
    .balign 4, 0x00
off_8014A78:    .word 0x200
// end of function sub_8014A5E

loc_8014A7C:
    ldrb r0, [r5,#0x18]
    add r0, #1
    mov r1, #0x3f 
    and r0, r1
    strb r0, [r5,#0x18]
    mov pc, lr
loc_8014A88:
    push {r5,r7,lr}
    ldr r5, [pc, #0x8014ac0-0x8014a8a-2] // dword_203BE40
    mov r7, #0
    sub r7, #1
    lsr r7, r7, #0x10
    mov r3, #3
    mov r2, #0
loc_8014A96:
    ldrb r0, [r5]
    cmp r0, #0
    beq loc_8014AAC
    ldr r1, [r5,#0xc]
    ldrh r0, [r1,#0x2a]
    cmp r0, r7
    beq dword_8014AA8
    add r2, #1
    b loc_8014AAC
dword_8014AA8:    .word 0x70282000
loc_8014AAC:
    add r5, #0x10
    sub r3, #1
    bne loc_8014A96
    cmp r2, #0
    beq loc_8014AB8
locret_8014AB6:
    pop {r5,r7,pc}
loc_8014AB8:
    ldr r0, [pc, #0x8014ac4-0x8014ab8-4] // =0x4000
    bl sub_80158EE
    b locret_8014AB6
off_8014AC0:    .word dword_203BE40
dword_8014AC4:    .word 0x4000
.thumb
sub_8014AC8:
    push {lr}
    ldrb r0, [r5,#0x1d]
    strb r0, [r5,#0x1e]
    mov r2, #0
    ldrh r0, [r5,#0x24]
    ldr r1, [pc, #0x8014af0-0x8014ad2-2] // =0x1500
    cmp r0, r1
    blt loc_8014AEA
    add r2, #1
    ldr r1, [pc, #0x8014af4-0x8014ada-2] // =0x2A00
    cmp r0, r1
    blt loc_8014AEA
    add r2, #1
    ldr r1, [pc, #0x8014af8-0x8014ae2-2] // =0x4000
    cmp r0, r1
    bne loc_8014AEA
    add r2, #1
loc_8014AEA:
    strb r2, [r5,#0x1d]
    pop {pc}
    .byte 0, 0
off_8014AF0:    .word 0x1500
off_8014AF4:    .word 0x2A00
dword_8014AF8:    .word 0x4000
// end of function sub_8014AC8

.thumb
sub_8014AFC:
    push {lr}
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    bne locret_8014B12
    ldr r0, [pc, #0x8014b14-0x8014b06-2] // =0x20000
    bl sub_8015902
    ldr r0, [pc, #0x8014b14-0x8014b0c-4] // =0x20000
    bl sub_8015AFA
locret_8014B12:
    pop {pc}
dword_8014B14:    .word 0x20000
// end of function sub_8014AFC

.thumb
sub_8014B18:
    push {r4,r7,lr}
    mov r7, #0
    ldrb r0, [r5,#0x17]
    cmp r0, #0xff
    bne loc_8014B34
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_8016960
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    strb r1, [r5,#2]
    strb r1, [r5,#1]
    b loc_8014B60
loc_8014B34:
    ldrb r0, [r5,#3]
    add r2, r0, #0
    sub r2, #4
    ldr r1, [pc, #0x8014c5c-0x8014b3a-2] // dword_8017FE8
    ldrb r1, [r1,r2]
    cmp r0, #0xff
    bne loc_8014B46
    bl sub_8016960
loc_8014B46:
    ldrb r2, [r5,#0x14]
    cmp r0, r2
    bne loc_8014B52
    ldrb r2, [r5,#2]
    cmp r1, r2
    beq loc_8014B60
loc_8014B52:
    strb r2, [r5,#0x15]
    ldrb r3, [r5,#2]
    strb r3, [r5,#1]
    strb r0, [r5,#0x14]
    strb r1, [r5,#2]
    mov r1, #0xc
    strb r1, [r5,#0x17]
loc_8014B60:
    cmp r0, #5
    bge loc_8014B7C
    cmp r0, #3
    beq loc_8014B7C
    ldrb r1, [r5,#0x17]
    add r7, r1, #0
    cmp r1, #0
    beq loc_8014B7C
    sub r2, r1, #1
    strb r2, [r5,#0x17]
    mov r2, #2
    and r2, r1
    beq loc_8014B7C
    ldrb r0, [r5,#0x15]
loc_8014B7C:
    add r4, r0, #0
    cmp r0, #5
    bge loc_8014B96
    lsl r0, r0, #2
    mov r1, #0x60 
    mul r0, r1
    ldr r1, [pc, #0x8014bf4-0x8014b88-4] // dword_8708E20
    add r0, r0, r1
    ldr r1, [pc, #0x8014bfc-0x8014b8c-4] // =0x6017480
    ldr r2, [pc, #0x8014c00-0x8014b8e-2] // =0x180
    bl loc_8000874
    b loc_8014BC8
loc_8014B96:
    sub r0, #5
    lsl r0, r0, #2
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x8014bf8-0x8014b9e-2] // dword_87095A0
    add r0, r0, r1
    ldr r1, [pc, #0x8014bfc-0x8014ba2-2] // =0x6017480
    ldr r2, [pc, #0x8014c04-0x8014ba4-4] // =0xFF
    bl loc_8000874
    ldrb r1, [r5,#2]
    mov r2, #2
    and r2, r7
    beq loc_8014BB4
    ldrb r1, [r5,#1]
loc_8014BB4:
    mov r0, #5
    sub r0, r0, r1
    mov r1, #0x80
    mul r0, r1
    ldr r1, [pc, #0x8014c54-0x8014bbc-4] // dword_8709BA0
    add r0, r0, r1
    ldr r1, [pc, #0x8014c58-0x8014bc0-4] // =0x6017580
    mov r2, #0x80
    bl loc_8000874
loc_8014BC8:
    ldrb r1, [r5,#0x14]
    cmp r1, #3
    bne loc_8014BE2
    ldrb r1, [r5,#0x17]
    cmp r1, #0
    beq loc_8014BE2
    sub r2, r1, #1
    strb r2, [r5,#0x17]
    mov r2, #2
    and r2, r1
    beq loc_8014BE2
    ldr r0, [pc, #0x8014c10-0x8014bde-2] // dword_8014C14
    b loc_8014BE8
loc_8014BE2:
    lsl r0, r4, #5
    ldr r1, [pc, #0x8014c08-0x8014be4-4] // dword_8709EA0
    add r0, r0, r1
loc_8014BE8:
    ldr r1, [pc, #0x8014c0c-0x8014be8-4] // unk_30027C0
    mov r2, #0x20 
    bl loc_8000874
    pop {r4,r7,pc}
    .balign 4, 0x00
off_8014BF4:    .word dword_8708E20
off_8014BF8:    .word dword_87095A0
dword_8014BFC:    .word 0x6017480
off_8014C00:    .word 0x180
off_8014C04:    .word 0x100
off_8014C08:    .word dword_8709EA0
off_8014C0C:    .word unk_30027C0
off_8014C10:    .word dword_8014C14
dword_8014C14:    .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
    .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
    .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
    .word 0x7FFF7FFF
off_8014C54:    .word dword_8709BA0
dword_8014C58:    .word 0x6017580
off_8014C5C:    .word dword_8017FE8
// end of function sub_8014B18

.thumb
sub_8014C60:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800BFB8
    mov r3, #0x3c 
loc_8014C70:
    ldrh r1, [r0,r3]
    cmp r1, #0
    bne loc_8014C7C
    add r3, #2
    cmp r3, #0x42 
    ble loc_8014C70
loc_8014C7C:
    sub r3, #0x3c 
    lsl r3, r3, #1
    strb r3, [r5]
    cmp r3, #0x10
    beq locret_8014C92
    ldr r0, [pc, #0x8014c94-0x8014c86-2] // off_8014C98
    ldr r0, [r0,r3]
    ldr r1, [pc, #0x8014ca8-0x8014c8a-2] // =0x6017480
    ldr r2, [pc, #0x8014cac-0x8014c8c-4] // =0x180
    bl loc_8000874
locret_8014C92:
    pop {pc}
off_8014C94:    .word off_8014C98
off_8014C98:    .word dword_8708460
    .word dword_87085E0
    .word dword_8708760
    .word dword_87088E0
dword_8014CA8:    .word 0x6017480
off_8014CAC:    .word 0x180
// end of function sub_8014C60

.thumb
sub_8014CB0:
    push {r5-r7,lr}
    ldr r5, [pc, #0x8014d34-0x8014cb2-2] // unk_20363F0
    ldr r6, [pc, #0x8014cd0-0x8014cb4-4] // jt_8014CD4
    ldr r7, [r5,#(dword_203643C - 0x20363f0)]
loc_8014CB8:
    lsr r7, r7, #1
    bcs loc_8014CC2
    beq locret_8014CCC
    add r6, #4
    b loc_8014CB8
loc_8014CC2:
    ldr r0, [r6]
    mov lr, pc
    bx r0
    add r6, #4
    b loc_8014CB8
locret_8014CCC:
    pop {r5-r7,pc}
    .byte 0, 0
off_8014CD0:    .word jt_8014CD4
jt_8014CD4:    .word sub_8014D38+1
    .word sub_8014DB4+1
    .word sub_8014E58+1
    .word sub_8014FA0+1
    .word function_chunks_loc_8015018+1
    .word sub_8015198+1
    .word locret_801594C+1
    .word locret_801594C+1
    .word sub_8015406+1
    .word ho_8015260+1
    .word dword_8015200+3
    .word sub_8015510+1
    .word sub_80154E8+1
    .word sub_801556C+1
    .word sub_80155C0+1
    .word sub_8015414+1
    .word sub_8015624+1
    .word sub_80156B4+1
    .word sub_80156E0+1
    .word sub_801574C+1
    .word sub_80157AC+1
    .word sub_80157DC+1
    .word sub_80157EA+1
    .word sub_8015828+1
off_8014D34:    .word unk_20363F0
// end of function sub_8014CB0

.thumb
sub_8014D38:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    mov r6, sp
    ldrh r0, [r5,#0x22]
    bl fA00_8000A30
    add r2, r0, #0
    bl fA00_8000A8C
    lsl r0, r0, #2
    ldr r1, [pc, #0x8014db0-0x8014d4c-4] // =0xAAAA
    lsl r1, r0
    orr r2, r1
    push {r5}
    ldr r5, [pc, #0x8014dac-0x8014d54-4] // =0xD130
    add r1, r6, #0
    add r1, #8
    mov r3, #6
loc_8014D5C:
    mov r0, #0xf
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r5
    strh r0, [r6,r3]
    add r0, #1
    strh r0, [r1,r3]
    lsr r2, r2, #4
    sub r3, #2
    bpl loc_8014D5C
    ldr r5, [sp]
    ldrb r0, [r5,#7]
    add r0, #1
    ldrb r1, [r5,#8]
    mov r2, #3
    add r3, r6, #0
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8014D38

    pop {r5}
    ldrb r0, [r5,#4]
    lsl r0, r0, #5
    ldr r3, [pc, #0x8014d9c-0x8014d8a-2] // off_8014DA0
    ldr r1, [r3]
    add r0, r0, r1
    ldr r1, [r3,#(off_8014DA4 - 0x8014da0)]
    ldr r2, [r3,#(dword_8014DA8 - 0x8014da0)]
    bl loc_8000874
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
off_8014D9C:    .word off_8014DA0
off_8014DA0:    .word dword_8705F00
off_8014DA4:    .word unk_3002BF0
dword_8014DA8:    .word 0x20
dword_8014DAC:    .word 0xD130
dword_8014DB0:    .word 0xAAAA
.thumb
sub_8014DB4:
    push {r4-r6,lr}
    bl sub_8007E1E
    cmp r0, #0
    bne locret_8014E30
    ldrh r6, [r5,#0x24]
    ldr r2, [pc, #0x8014e54-0x8014dc0-4] // =0x4000
    cmp r6, r2
    blt loc_8014E04
    ldrb r6, [r5,#0x18]
    add r6, #1
    cmp r6, #0x70 
    blt loc_8014DD0
    mov r6, #0
loc_8014DD0:
    strb r6, [r5,#0x18]
    add r0, r6, #0
    mov r1, #7
    svc 6
    mov r1, #3
    and r0, r1
    ldr r3, [pc, #0x8014e3c-0x8014ddc-4] // =0x9090
    add r3, r3, r0
    mov r0, #7
    mov r1, #1
    mov r2, #3
    mov r4, #0x10
    mov r5, #1
    bl sub_8001DF8
    mov r0, #8
    and r0, r6
    ldr r3, [pc, #0x8014e40-0x8014df2-2] // dword_8014E44
    add r3, r3, r0
    mov r0, #0xd
    mov r1, #1
    mov r2, #3
    mov r4, #4
    bl sub_8001E14
    b locret_8014E30
loc_8014E04:
    lsr r4, r6, #0xa
    cmp r4, #0
    beq loc_8014E18
    mov r0, #7
    mov r1, #1
    mov r2, #3
    ldr r3, [pc, #0x8014e34-0x8014e10-4] // =0x9088
    mov r5, #1
    bl sub_8001DF8
loc_8014E18:
    lsr r6, r6, #7
    mov r0, #7
    and r0, r6
    ldr r3, [pc, #0x8014e38-0x8014e1e-2] // =0x9080
    add r3, r3, r0
    lsr r6, r6, #3
    mov r0, #7
    add r0, r0, r6
    mov r1, #1
    mov r2, #3
    bl sub_8001DC8
locret_8014E30:
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_8014E34:    .word 0x9088
dword_8014E38:    .word 0x9080
dword_8014E3C:    .word 0x9090
off_8014E40:    .word dword_8014E44
dword_8014E44:    .word 0x90959094, 0x90979096, 0x90999098, 0x909B909A
dword_8014E54:    .word 0x4000
// end of function sub_8014DB4

.thumb
sub_8014E58:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r6, sp
    mov r0, #0
    strh r0, [r6,#6]
    ldr r4, [pc, #0x8014f98-0x8014e62-2] // byte_203DC90
loc_8014E64:
    ldrb r1, [r4]
    mov r0, #2
    tst r1, r0
    beq loc_8014EEC
    ldr r5, [r4,#4]
    ldrh r0, [r4,#2]
    bl fA00_8000A30
    add r2, r0, #0
    bl fA00_8000A8C
    add r3, r0, #0
    lsl r0, r0, #2
    mov r1, #0x20 
    sub r1, r1, r0
    neg r1, r1
    lsl r1, r1, #0x10
    add r7, r1, #0
    ldr r1, [pc, #0x8014f90-0x8014e88-4] // =0xA0A0A0A
    str r1, [r6]
    mov r0, #0
loc_8014E8E:
    mov r1, #0xf
    and r1, r2
    strb r1, [r6,r0]
    asr r2, r2, #4
    add r0, #1
    cmp r0, r3
    bne loc_8014E8E
    ldrb r2, [r6,#6]
    lsl r2, r2, #5
    mov r3, #3
    push {r4}
    add r4, #0x10
loc_8014EA6:
    ldrb r1, [r6,r3]
    ldrb r0, [r4,r3]
    cmp r0, r1
    beq loc_8014EB4
    strb r1, [r4,r3]
    bl sub_8014EFE
loc_8014EB4:
    add r2, #0x20 
    sub r3, #1
    bpl loc_8014EA6
    pop {r4}
    mov r0, #0x34 
    add r0, r0, r5
    bl sub_8003558
    cmp r2, #0
    beq loc_8014EEC
    ldr r2, [r4,#8]
    add r0, r0, r2
    ldr r2, [r4,#0xc]
    add r1, r1, r2
    lsl r0, r0, #0x10
    add r0, r0, r1
    add r7, r7, r0
    ldr r2, [pc, #0x8014f94-0x8014ed6-2] // =0x1FF00FF
    and r7, r2
    ldrb r3, [r6,#6]
    ldr r0, [pc, #0x8014f88-0x8014edc-4] // =0x80004000
    ldr r1, [pc, #0x8014f8c-0x8014ede-2] // =0xE730
    add r0, r0, r7
    add r1, r1, r3
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
loc_8014EEC:
    ldrb r0, [r6,#6]
    add r0, #8
    strb r0, [r6,#6]
    add r4, #0x14
    ldr r0, [pc, #0x8014f9c-0x8014ef4-4] // unk_203DCCC
    cmp r0, r4
    bne loc_8014E64
    add sp, sp, #8
    pop {r4-r7,pc}
// end of function sub_8014E58

.thumb
sub_8014EFE:
    push {r2,r3,lr}
    cmp r1, #0xa
    beq loc_8014F1E
    ldr r0, [pc, #0x8014f38-0x8014f04-4] // off_8014F3C
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x8014f34-0x8014f0a-2] // =0x6016600
    add r1, r1, r2
    mov r2, #0x20 
    bl loc_8000874
    add r0, #0x20 
    add r1, #0x80
    bl loc_8000874
    pop {r2,r3,pc}
loc_8014F1E:
    ldr r0, [pc, #0x8014f64-0x8014f1e-2] // dword_8014F68
    ldr r1, [pc, #0x8014f34-0x8014f20-4] // =0x6016600
    add r1, r1, r2
    mov r2, #0x20 
    bl loc_8000874
    add r1, #0x80
    bl loc_8000874
    pop {r2,r3,pc}
    .balign 4, 0x00
dword_8014F34:    .word 0x6016600
off_8014F38:    .word off_8014F3C
off_8014F3C:    .word dword_8705220
    .word dword_8705260
    .word dword_87052A0
    .word dword_87052E0
    .word dword_8705320
    .word dword_8705360
    .word dword_87053A0
    .word dword_87053E0
    .word dword_8705420
    .word dword_8705460
off_8014F64:    .word dword_8014F68
dword_8014F68:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8014F88:    .word 0x80004000
dword_8014F8C:    .word 0xE730
dword_8014F90:    .word 0xA0A0A0A
dword_8014F94:    .word 0x1FF00FF
off_8014F98:    .word byte_203DC90
off_8014F9C:    .word unk_203DCCC
// end of function sub_8014EFE

.thumb
sub_8014FA0:
    push {r4-r7,lr}
    bl sub_8007EBC
    add r7, r0, #0
    ldrb r2, [r5,#0xc]
    cmp r2, #0
    beq locret_8015004
    ldr r5, [pc, #0x8015194-0x8014fae-2] // unk_20363F0
    ldr r6, [r5,#(dword_2036430 - 0x20363f0)]
    ldrb r5, [r5,#(byte_20363FC - 0x20363f0)]
    mov r0, #0
    sub r0, #1
    cmp r0, r6
    beq locret_8015004
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    ldrb r1, [r0]
    add r1, #1
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    ldr r1, [pc, #0x8015008-0x8014fce-2] // =0x160
    cmp r0, r1
    blt loc_8014FE4
    ldr r1, [pc, #0x801500c-0x8014fd4-4] // =0x16C
    cmp r0, r1
    bgt loc_8014FE4
    sub r5, #1
    beq locret_8015004
    ldr r1, [pc, #0x8015014-0x8014fde-2] // =0xA748
    add r1, #4
    b loc_8014FE6
loc_8014FE4:
    ldr r1, [pc, #0x8015014-0x8014fe4-4] // =0xA748
loc_8014FE6:
    ldr r0, [pc, #0x8015010-0x8014fe6-2] // =0x40000000
    add r0, r0, r6
    mov r2, #2
    add r3, r5, #0
    push {r1}
    bl sub_8025BD8
    pop {r1}
    add r1, #4
    mov r0, #2
    lsl r0, r0, #0x10
    sub r6, r6, r0
    sub r6, #2
    sub r5, #1
    bne loc_8014FE6
locret_8015004:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8015008:    .word 0x160
dword_801500C:    .word 0x16F
dword_8015010:    .word 0x40000000
dword_8015014:    .word 0xA748
// end of function sub_8014FA0

function_chunks_loc_8015018:
    push {r4-r7,lr}
    mov r0, #0
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    push {r0}
    mov r0, #0
    mov r1, #0x12
    mov r2, #3
    mov r3, #0
    mov r4, #0x10
    mov r5, #2
    bl sub_8001DF8
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    ldrb r1, [r0]
    add r1, #1
    lsl r1, r1, #1
    ldrsh r2, [r0,r1]
    add r3, r2, #1
    beq loc_8015150
    add r0, r0, r1
    str r0, [sp,#0x20]
    ldr r5, [pc, #0x8015194-0x8015058-4] // unk_20363F0
    ldr r0, [sp,#0x20]
    ldrh r0, [r0]
    bl sub_801FCC0
    ldr r2, [pc, #0x8015188-0x8015062-2] // unk_203E590
    ldr r3, [pc, #0x801518c-0x8015064-4] // =0x6009380
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8015190-0x801506a-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    add r7, r0, #0
    add r4, r0, #0
    mov r0, #0
    mov r1, #0x12
    mov r2, #3
    ldr r3, [pc, #0x8015154-0x801507c-4] // dword_801515C
    bl sub_8001E14
    mov r0, #0
    mov r1, #0x13
    mov r2, #3
    ldr r3, [pc, #0x8015158-0x8015088-4] // dword_801516C
    add r4, r7, #0
    bl sub_8001E14
    ldr r5, [pc, #0x8015194-0x8015090-4] // unk_20363F0
    ldrb r1, [r5,#(byte_20363FD - 0x20363f0)]
    cmp r1, #0
    beq loc_8015150
    ldr r0, [sp,#0x20]
    ldrh r0, [r0,#0xc]
    strh r0, [r5,#(word_2036418 - 0x20363f0)]
    bl fA00_8000A30
    add r4, r0, #0
    bl fA00_8000A8C
    add r3, r0, #0
    add r6, r3, #0
    mov r2, sp
    lsl r0, r0, #1
    add r2, r2, r0
    sub r2, #2
    ldr r1, [pc, #0x801517c-0x80150b4-4] // =0xD148
loc_80150B6:
    mov r0, #0xf
    and r0, r4
    lsl r0, r0, #1
    add r0, r0, r1
    strh r0, [r2]
    add r0, #1
    strh r0, [r2,#0x10]
    sub r2, #2
    lsr r4, r4, #4
    sub r3, #1
    bne loc_80150B6
    ldr r1, [sp,#0x20]
    ldrh r0, [r1,#0x18]
    ldrh r1, [r1,#0x24]
    strh r1, [r5,#(word_203641A - 0x20363f0)]
    add r0, r0, r1
    cmp r0, #0
    beq loc_8015114
    bl fA00_8000A30
    add r4, r0, #0
    bl fA00_8000A8C
    add r3, r0, #0
    add r2, r6, #0
    lsl r2, r2, #1
    add r2, sp
    ldr r1, [pc, #0x8015180-0x80150ec-4] // =0xD15E
    strh r1, [r2]
    add r1, #1
    strh r1, [r2,#0x10]
    lsl r0, r0, #1
    add r2, r2, r0
    add r6, r6, r3
    add r6, #1
    ldr r1, [pc, #0x801517c-0x80150fc-4] // =0xD148
loc_80150FE:
    mov r0, #0xf
    and r0, r4
    lsl r0, r0, #1
    add r0, r0, r1
    strh r0, [r2]
    add r0, #1
    strh r0, [r2,#0x10]
    sub r2, #2
    lsr r4, r4, #4
    sub r3, #1
    bne loc_80150FE
loc_8015114:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800F448
    cmp r0, #2
    beq loc_8015128
    cmp r0, #3
    bne loc_801513E
loc_8015128:
    add r2, r6, #0
    lsl r2, r2, #1
    add r2, sp
    ldr r1, [pc, #0x8015184-0x801512e-2] // =0xD162
    strh r1, [r2]
    add r1, #1
    strh r1, [r2,#0x10]
    add r1, #1
    strh r1, [r2,#2]
    add r1, #1
    strh r1, [r2,#0x12]
loc_801513E:
    add r0, r7, #0
    add r0, #0
    mov r1, #0x12
    mov r2, #3
    mov r3, sp
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
loc_8015150:
    add sp, sp, #0x24
    pop {r4-r7,pc}
off_8015154:    .word dword_801515C
off_8015158:    .word dword_801516C
dword_801515C:    .word 0xD09ED09C, 0xD0A2D0A0, 0xD0A6D0A4, 0xD0AAD0A8
dword_801516C:    .word 0xD09FD09D, 0xD0A3D0A1, 0xD0A7D0A5, 0xD0ABD0A9
dword_801517C:    .word 0xD148
dword_8015180:    .word 0xD15E
dword_8015184:    .word 0xD162
off_8015188:    .word unk_203E590
dword_801518C:    .word 0x6009380
off_8015190:    .word dword_868E224
off_8015194:    .word unk_20363F0
.thumb
sub_8015198:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80151f0-0x801519a-2] // dword_2037CE0
    ldrb r0, [r7,#(dword_2037CE0+2 - 0x2037ce0)]
    lsl r0, r0, #0x10
    ldrb r1, [r7,#(dword_2037CE0+3 - 0x2037ce0)]
    add r1, r1, r0
    ldr r0, [pc, #0x80151f4-0x80151a4-4] // =0x80004100
    add r0, r0, r1
    ldrb r1, [r7,#(dword_2037CE4+2 - 0x2037ce0)]
    lsl r1, r1, #0x19
    orr r0, r1
    ldr r1, [pc, #0x80151f8-0x80151ae-2] // =0xB360
    mov r2, #0
    mov r3, #0
    mov r5, #0x20 
    lsl r5, r5, #0x10
    mov r4, #5
loc_80151BA:
    add r6, r0, #0
    bl sub_8025BD8
// end of function sub_8015198

    add r0, r6, #0
    add r0, r0, r5
    add r1, #8
    sub r4, #1
    bne loc_80151BA
    ldrb r0, [r7,#8]
    cmp r0, #1
    bne locret_80151EC
    ldrb r0, [r7,#4]
    lsl r0, r0, #0x10
    ldrb r1, [r7,#5]
    add r1, r1, r0
    ldr r0, [pc, #0x80151fc-0x80151d8-4] // =0x40000100
    add r0, r0, r1
    ldrb r1, [r7,#6]
    lsl r1, r1, #0x19
    orr r0, r1
    ldr r1, [pc, #0x8015200-0x80151e2-2] // =0xB500B388
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
locret_80151EC:
    pop {r4-r7,pc}
    .byte 0, 0
off_80151F0:    .word dword_2037CE0
dword_80151F4:    .word 0x80004100
dword_80151F8:    .word 0xB360
dword_80151FC:    .word 0x40000100
dword_8015200:    .word 0xB500B388
    ldrb r1, [r5,#0x10]
    ldrb r0, [r5,#0x11]
    cmp r0, r1
    beq loc_8015214
    strb r1, [r5,#0x11]
    mov r0, #6
    bl sub_8015226
loc_8015214:
    ldrb r1, [r5,#0x12]
    ldrb r0, [r5,#0x13]
    cmp r0, r1
    beq locret_8015224
    strb r1, [r5,#0x13]
    mov r0, #0x1a
    bl sub_8015226
locret_8015224:
    pop {pc}
.thumb
sub_8015226:
    push {r4,r5,lr}
    lsl r1, r1, #4
    ldr r3, [pc, #0x801523c-0x801522a-2] // dword_8015240
    add r3, r3, r1
    mov r1, #2
    mov r2, #3
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015226

    pop {r4,r5,pc}
off_801523C:    .word dword_8015240
dword_8015240:    .word 0x0, 0x0, 0x0, 0x0
    str r1, [sp,#0x170]
    str r1, [sp,#0x170]
    str r1, [sp,#0x170]
    str r1, [sp,#0x170]
    str r1, [sp,#0x174]
    str r1, [sp,#0x174]
    str r1, [sp,#0x174]
    str r1, [sp,#0x174]
.thumb
ho_8015260:
    push {r5,lr}
    ldr r5, [pc, #0x8015270-0x8015262-2] // byte_2037BD0
    ldr r1, [pc, #0x8015274-0x8015264-4] // jt_8015278
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
off_8015270:    .word byte_2037BD0
off_8015274:    .word jt_8015278
jt_8015278:    .word locret_8015284+1
    .word sub_8015286+1
    .word sub_80153E8+1
// end of function ho_8015260

locret_8015284:
    mov pc, lr
.thumb
sub_8015286:
    push {r4-r7,lr}
    push {r4-r7}
    ldr r0, [pc, #0x80153d8-0x801528a-2] // a1CluGpy
    mov r1, #2
    ldr r2, [pc, #0x80153dc-0x801528e-2] // unk_203E590
    ldr r3, [pc, #0x80153e0-0x8015290-4] // =0x6009380
    mov r4, #2
    mov r5, #1
    ldr r6, [pc, #0x80153e4-0x8015296-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xE
    .byte 0x20
    .byte 5
    .byte 0x21 
    .byte 0x3F 
    .byte 0x4B 
    .byte 3
    .byte 0x22 
    .byte 2
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0xEC
    .byte 0xF7
    .byte 0x97
    .byte 0xFD
// end of function sub_8015286

    pop {r4-r7}
    ldrh r0, [r5,#4]
    bl sub_8015340
    ldrh r0, [r5,#4]
    bl fA00_8000A8C
    cmp r0, #4
    beq loc_8015314
    cmp r0, #3
    beq loc_80152F0
    cmp r0, #2
    beq loc_80152DE
    ldr r1, [sp,#4]
    lsr r1, r1, #0x10
    str r1, [sp]
    mov r0, #0
    str r0, [sp,#4]
    ldr r1, [sp,#0xc]
    lsr r1, r1, #0x10
    str r1, [sp,#8]
    mov r0, #0
    str r0, [sp,#0xc]
    b loc_8015314
loc_80152DE:
    ldr r2, [sp,#4]
    str r2, [sp]
    mov r0, #0
    str r0, [sp,#4]
    ldr r2, [sp,#0xc]
    str r2, [sp,#8]
    mov r0, #0
    str r0, [sp,#0xc]
    b loc_8015314
loc_80152F0:
    ldr r1, [sp]
    ldr r2, [sp,#4]
    add r0, r2, #0
    lsl r2, r2, #0x10
    lsr r1, r1, #0x10
    orr r1, r2
    str r1, [sp]
    lsr r0, r0, #0x10
    str r0, [sp,#4]
    ldr r1, [sp,#8]
    ldr r2, [sp,#0xc]
    add r0, r2, #0
    lsl r2, r2, #0x10
    lsr r1, r1, #0x10
    orr r1, r2
    str r1, [sp,#8]
    lsr r0, r0, #0x10
    str r0, [sp,#0xc]
loc_8015314:
    ldrh r0, [r5,#2]
    bl sub_8015340
    mov r0, #9
    mov r1, #5
    mov r2, #3
    mov r3, sp
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
    pop {r0-r3}
    mov r0, #0x11
    mov r1, #5
    mov r2, #3
    mov r3, sp
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
    pop {r0-r3}
    pop {r4-r7,pc}
.thumb
sub_8015340:
    add r4, r0, #0
    mov r7, lr
    bl fA00_8000A8C
    add r2, r4, #0
    mov r6, #4
    sub r6, r6, r0
    ldr r1, [pc, #0x80153ac-0x801534e-2] // =0xD149
    mov r3, #2
loc_8015352:
    mov r0, #0xf
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r1
    lsl r4, r0, #0x10
    lsr r2, r2, #4
    mov r0, #0xf
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r1
    orr r0, r4
    push {r0}
    lsr r2, r2, #4
    sub r3, #1
    bne loc_8015352
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [pc, #0x80153b0-0x8015374-4] // =0x10001
    sub r0, r0, r2
    sub r1, r1, r2
    push {r0,r1}
    lsl r6, r6, #3
    ldr r3, [pc, #0x80153b4-0x801537e-2] // dword_80153B8
    ldr r2, [r3,r6]
    add r6, #4
    ldr r3, [r3,r6]
    mov r6, sp
    mov r1, #0
loc_801538A:
    ldr r0, [r6,r1]
    and r0, r2
    str r0, [r6,r1]
    add r1, #4
    ldr r0, [r6,r1]
    and r0, r3
    str r0, [r6,r1]
    add r1, #4
    cmp r1, #0x10
    bne loc_801538A
    mov pc, r7
    .word dword_80153A4
dword_80153A4:    .word 0xD09ED09C, 0xD09FD09D
dword_80153AC:    .word 0xD149
dword_80153B0:    .word 0x10001
off_80153B4:    .word dword_80153B8
dword_80153B8:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFFFF, 0x0
    .word 0xFFFFFFFF, 0x0
    .word 0xFFFF0000
off_80153D8:    .word a1CluGpy
off_80153DC:    .word unk_203E590
dword_80153E0:    .word 0x6009380
off_80153E4:    .word dword_868E224
// end of function sub_8015340

.thumb
sub_80153E8:
    push {r4,r5,lr}
    ldrb r0, [r5,#1]
    cmp r0, #0
    bne locret_8015404
    mov r0, #1
    strb r0, [r5,#1]
    mov r0, #9
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #0xc
    mov r5, #2
    bl sub_8001DF8
locret_8015404:
    pop {r4,r5,pc}
// end of function sub_80153E8

.thumb
sub_8015406:
    push {r7,lr}
    ldr r7, [pc, #0x8015410-0x8015408-4] // dword_2037CE0
    bl sub_8015424
// end of function sub_8015406

    pop {r7,pc}
off_8015410:    .word dword_2037CE0
.thumb
sub_8015414:
    push {r7,lr}
    ldr r7, [pc, #0x8015420-0x8015416-2] // byte_2037CF0
    bl sub_8015424
// end of function sub_8015414

    pop {r7,pc}
    .byte 0, 0
off_8015420:    .word byte_2037CF0
.thumb
sub_8015424:
    push {r4-r6,lr}
    ldrb r0, [r7,#2]
    lsl r0, r0, #0x10
    ldrb r1, [r7,#3]
    add r1, r1, r0
    ldr r0, [pc, #0x80154c8-0x801542e-2] // =0x8100
    add r0, r0, r1
    ldrb r1, [r7,#6]
    lsl r1, r1, #0x19
    orr r0, r1
    ldr r1, [pc, #0x80154cc-0x8015438-4] // =0xB360
    mov r2, #0
    mov r3, #6
    ldrb r6, [r7,#2]
    cmp r6, #0x68 
    blt loc_8015446
    add r1, #0x24 
loc_8015446:
    mov r5, #8
    lsl r5, r5, #0x10
    ldrb r4, [r7,#9]
loc_801544C:
    add r6, r0, #0
    bl sub_8025BD8
// end of function sub_8015424

    add r0, r6, #0
    add r0, r0, r5
    add r1, #2
    sub r4, #1
    bne loc_801544C
    ldrb r1, [r7,#0xa]
    cmp r1, #0
    beq locret_80154C4
    mov r4, #4
    sub r4, r4, r1
    lsl r4, r4, #0x13
    ldr r6, [pc, #0x80154c8-0x8015468-4] // =0x8100
    sub r0, r0, r6
    sub r0, r0, r4
    ldr r6, [pc, #0x80154d0-0x801546e-2] // =0x80004100
    add r0, r0, r6
    ldr r1, [pc, #0x80154d4-0x8015472-2] // =0xB370
    ldrb r6, [r7,#2]
    cmp r6, #0x68 
    blt loc_801547C
    add r1, #0x24 
loc_801547C:
    add r6, r0, #0
    bl sub_8025BD8
    add r0, r6, #0
    mov r5, #0x20 
    lsl r5, r5, #0x10
    add r0, r0, r5
    ldrb r1, [r7,#0xb]
    cmp r1, #0
    beq loc_80154B0
    mov r4, #4
    sub r4, r4, r1
    lsl r4, r4, #0x13
    sub r0, r0, r4
    ldr r1, [pc, #0x80154d8-0x8015498-4] // =0xB378
    ldrb r6, [r7,#2]
    cmp r6, #0x68 
    blt loc_80154A2
    add r1, #0x24 
loc_80154A2:
    add r6, r0, #0
    bl sub_8025BD8
    add r0, r6, #0
    mov r5, #0x20 
    lsl r5, r5, #0x10
    add r0, r0, r5
loc_80154B0:
    ldrb r1, [r7,#0xc]
    cmp r1, #0
    beq locret_80154C4
    ldr r1, [pc, #0x80154e0-0x80154b6-2] // =0xC000C000
    bic r0, r1
    ldr r1, [pc, #0x80154dc-0x80154ba-2] // =0x40000100
    orr r0, r1
    ldr r1, [pc, #0x80154e4-0x80154be-2] // =0xB380
    bl sub_8025BD8
locret_80154C4:
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_80154C8:    .word 0x8100
dword_80154CC:    .word 0xB360
dword_80154D0:    .word 0x80004100
dword_80154D4:    .word 0xB370
dword_80154D8:    .word 0xB378
dword_80154DC:    .word 0x40000100
dword_80154E0:    .word 0xC000C000
dword_80154E4:    .word 0xB380
.thumb
sub_80154E8:
    push {lr}
    ldr r0, [pc, #0x8015500-0x80154ea-2] // =0x80644040
    ldr r1, [pc, #0x8015504-0x80154ec-4] // =0xE360
    mov r2, #0
    mov r3, #6
    bl sub_8025BD8
// end of function sub_80154E8

    ldr r0, [pc, #0x8015508-0x80154f6-2] // =0x848040
    ldr r1, [pc, #0x801550c-0x80154f8-4] // =0xE368
    bl sub_8025BD8
    pop {pc}
dword_8015500:    .word 0x80644040
dword_8015504:    .word 0xE360
dword_8015508:    .word 0x848040
dword_801550C:    .word 0xE368
.thumb
sub_8015510:
    push {r4-r7,lr}
    sub sp, sp, #0x24
    mov r1, #0
    add r6, r5, #0
    add r6, #0x2c 
loc_801551A:
    mov r7, sp
    ldrb r2, [r6]
    cmp r2, #0xff
    beq loc_8015562
    ldr r0, [pc, #0x8015568-0x8015522-2] // =0xD166
    mov r3, #9
    mul r3, r1
    add r0, r0, r3
    add r5, r0, #1
    mov r3, #0
loc_801552E:
    strh r0, [r7,r3]
    add r0, #2
    add r3, #2
    cmp r3, #0x12
    bne loc_801552E
    add r7, #0x12
    add r0, r5, #0
    mov r3, #0
loc_801553E:
    strh r0, [r7,r3]
    add r0, #2
    add r3, #2
    cmp r3, #0x12
    bne loc_801553E
    mov r0, #0x1e
    sub r0, r0, r2
    mov r2, #0
    mov r3, sp
    mov r4, #9
    mov r5, #2
    push {r1}
    bl sub_8001DDC
    pop {r1}
    add r1, #2
    add r6, #1
    b loc_801551A
loc_8015562:
    add sp, sp, #0x24
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8015568:    .word 0xD166
// end of function sub_8015510

.thumb
sub_801556C:
    push {r4,r5,lr}
    ldrb r0, [r5,#0x18]
    mov r1, #0x1f
    and r1, r0
    bne locret_801559C
    cmp r0, #0x20 
    bge loc_801558C
    mov r0, #0x16
    mov r1, #4
    mov r2, #3
    ldr r3, [pc, #0x80155a0-0x8015580-4] // loc_80155A4
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
    b locret_801559C
loc_801558C:
    mov r0, #0x16
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #7
    mov r5, #2
    bl sub_8001DF8
locret_801559C:
    pop {r4,r5,pc}
    .byte 0, 0
off_80155A0:    .word loc_80155A4
// end of function sub_801556C

loc_80155A4:
    .hword 0xa0ac // adr r0, locret_8015858
    .hword 0xa0ad // adr r0, off_801585C
    .hword 0xa0ae // adr r0, loc_8015864
    .hword 0xa0af // adr r0, loc_8015868
    .hword 0xa0b0 // adr r0, loc_8015870
    .hword 0xa0b1 // adr r0, loc_8015874
    .hword 0xa0b2 // adr r0, loc_801587C
    .hword 0xa0b3 // adr r0, loc_8015880
    .hword 0xa0b4 // adr r0, sub_8015888
    .hword 0xa0b5 // adr r0, loc_801588C
    .hword 0xa0b6 // adr r0, loc_8015894
    .hword 0xa0b7 // adr r0, (loc_8015896+2)
    .hword 0xa0b8 // adr r0, (loc_801589E+2)
    .hword 0xa0b9 // adr r0, loc_80158A4
.thumb
sub_80155C0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x801561c-0x80155c2-2] // dword_203BE40
    mov r5, #3
loc_80155C6:
    ldr r0, [r7]
    cmp r0, #0
    beq loc_801560C
    ldr r1, [r7,#0xc]
    bl sub_8007E16
    cmp r0, #0x44 
    beq loc_80155E2
    ldrb r0, [r1,#0x16]
    bl sub_800B096
    cmp r0, #0
    beq loc_801560C
    ldr r1, [r7,#0xc]
loc_80155E2:
    mov r0, #0x34 
    add r0, r0, r1
    bl sub_8003558
    ldr r2, [r7,#4]
    add r0, r0, r2
    ldr r2, [pc, #0x8015620-0x80155ee-2] // =0x1FC
    and r0, r2
    ldr r2, [r7,#8]
    add r1, r1, r2
    mov r2, #0xff
    and r1, r2
    lsl r0, r0, #0x10
    add r6, r0, r1
    ldr r0, [pc, #0x8015614-0x80155fe-2] // =0x40000000
    ldr r1, [pc, #0x8015618-0x8015600-4] // =0xA75C
    add r0, r0, r6
    mov r2, #2
    mov r3, #6
    bl sub_8025BD8
loc_801560C:
    add r7, #0x10
    sub r5, #1
    bne loc_80155C6
    pop {r4-r7,pc}
dword_8015614:    .word 0x40000000
dword_8015618:    .word 0xA75C
off_801561C:    .word dword_203BE40
dword_8015620:    .word 0x1FF
// end of function sub_80155C0

.thumb
sub_8015624:
    push {r4-r6,lr}
    bl sub_8007E1E
    cmp r0, #0
    bne locret_8015698
    mov r0, #7
    mov r1, #1
    mov r2, #3
    ldr r3, [pc, #0x80156a0-0x8015634-4] // =0x9080
    mov r4, #0x10
    push {r5}
    mov r5, #1
    bl sub_8001DF8
    pop {r5}
    ldrh r6, [r5,#0x24]
    lsr r4, r6, #0xa
    cmp r4, #0
    beq loc_801565C
    mov r0, #7
    mov r1, #1
    mov r2, #3
    ldr r3, [pc, #0x801569c-0x8015650-4] // =0x9088
    push {r5}
    mov r5, #1
    bl sub_8001DF8
    pop {r5}
loc_801565C:
    ldr r0, [pc, #0x80156b0-0x801565c-4] // =0x4000
    cmp r0, r6
    beq loc_801567A
    lsr r6, r6, #7
    mov r0, #7
    and r0, r6
    ldr r3, [pc, #0x80156a0-0x8015668-4] // =0x9080
    add r3, r3, r0
    lsr r6, r6, #3
    mov r0, #7
    add r0, r0, r6
    mov r1, #1
    mov r2, #3
    bl sub_8001DC8
loc_801567A:
    ldrb r3, [r5,#0x1d]
    ldrb r2, [r5,#0x1e]
    cmp r2, r3
    beq locret_8015698
    cmp r3, #0
    bne loc_8015688
    sub r3, #2
loc_8015688:
    mov r2, #0x20 
    sub r3, #1
    mul r3, r2
    ldr r0, [pc, #0x80156a8-0x801568e-2] // dword_8705F60
    add r0, r0, r3
    ldr r1, [pc, #0x80156ac-0x8015692-2] // unk_3002B70
    bl loc_8000874
locret_8015698:
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_801569C:    .word 0x9088
dword_80156A0:    .word 0x9080
    .word 0x9090
off_80156A8:    .word dword_8705F60
off_80156AC:    .word unk_3002B70
dword_80156B0:    .word 0x4000
// end of function sub_8015624

.thumb
sub_80156B4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80156d0-0x80156b6-2] // =0x406C0000
    ldr r1, [pc, #0x80156d4-0x80156b8-4] // =0xD388
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_80156B4

    ldr r0, [pc, #0x80156d8-0x80156c2-2] // =0x7C8000
    ldr r1, [pc, #0x80156dc-0x80156c4-4] // =0xD38C
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
    pop {r4-r7,pc}
dword_80156D0:    .word 0x406C0000
dword_80156D4:    .word 0xD388
dword_80156D8:    .word 0x7C8000
dword_80156DC:    .word 0xD38C
.thumb
sub_80156E0:
    push {r4-r7,lr}
    sub sp, sp, #0x24
    add r6, r5, #0
    add r6, #0x2c 
    ldr r0, [pc, #0x8015748-0x80156e8-4] // =0xD166
    bl sub_801571C
    mov r0, #0
    mov r1, #0
    mov r3, sp
    add r4, r2, #0
    mov r5, #2
    mov r2, #0
    bl sub_8001DDC
// end of function sub_80156E0

    add r6, #1
    ldr r0, [pc, #0x8015744-0x8015700-4] // =0xD178
    bl sub_801571C
    mov r0, #0x1e
    sub r0, r0, r2
    mov r1, #0
    mov r3, sp
    add r4, r2, #0
    mov r5, #2
    mov r2, #0
    bl sub_8001DDC
    add sp, sp, #0x24
    pop {r4-r7,pc}
.thumb
sub_801571C:
    mov r7, sp
    ldrb r2, [r6]
    lsl r2, r2, #1
    add r5, r0, #1
    mov r3, #0
loc_8015726:
    strh r0, [r7,r3]
    add r0, #2
    add r3, #2
    cmp r3, r2
    bne loc_8015726
    add r7, r7, r2
    add r0, r5, #0
    mov r3, #0
loc_8015736:
    strh r0, [r7,r3]
    add r0, #2
    add r3, #2
    cmp r3, r2
    bne loc_8015736
    lsr r2, r2, #1
    mov pc, lr
dword_8015744:    .word 0xD178
dword_8015748:    .word 0xD166
// end of function sub_801571C

.thumb
sub_801574C:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x1f]
    add r0, #1
    mov r1, #0x3f 
    and r0, r1
    strb r0, [r5,#0x1f]
    cmp r0, #0x38 
    bge loc_801576E
    mov r0, #0xa
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x8015780-0x8015762-2] // dword_8015784
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DDC
    b locret_801577E
loc_801576E:
    mov r0, #0xa
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DF8
locret_801577E:
    pop {r4-r7,pc}
off_8015780:    .word dword_8015784
dword_8015784:    .word 0x90819080, 0x90839082, 0x90859084, 0x90879086, 0x90899088
    .word 0x908A0000, 0x908C908B, 0x908E908D, 0x9090908F, 0x948A
// end of function sub_801574C

.thumb
sub_80157AC:
    push {r4-r6,lr}
    ldrb r4, [r5,#0x16]
    lsl r4, r4, #0x10
    mov r2, #0
    mov r3, #0
    ldr r0, [pc, #0x80157cc-0x80157b6-2] // =0x80004012
    add r0, r0, r4
    ldr r1, [pc, #0x80157d0-0x80157ba-2] // =0xCBA4
    bl sub_8025BD8
// end of function sub_80157AC

    ldr r0, [pc, #0x80157d4-0x80157c0-4] // =0x40200012
    add r0, r0, r4
    ldr r1, [pc, #0x80157d8-0x80157c4-4] // =0xCBAC
    bl sub_8025BD8
    pop {r4-r6,pc}
dword_80157CC:    .word 0x80004012
dword_80157D0:    .word 0xCBA4
dword_80157D4:    .word 0x40200012
dword_80157D8:    .word 0xCBAC
.thumb
sub_80157DC:
    push {lr}
    ldrb r0, [r5]
    cmp r0, #0x10
    beq locret_80157E8
    bl sub_80157AC
locret_80157E8:
    pop {pc}
// end of function sub_80157DC

.thumb
sub_80157EA:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8022CDE
    ldrb r1, [r0,#0x11]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    cmp r0, #0
    beq loc_8015808
    mov r4, #6
    sub r4, r4, r1
    b loc_801580A
loc_8015808:
    sub r4, r1, #1
loc_801580A:
    mov r0, #0x28 
    mul r4, r0
    lsl r4, r4, #0x10
    mov r2, #3
    mov r3, #0
    ldr r0, [pc, #0x8015820-0x8015814-4] // =0x80044038
    add r0, r0, r4
    ldr r1, [pc, #0x8015824-0x8015818-4] // =0xCBB0
    bl sub_8025BD8
// end of function sub_80157EA

    pop {r4-r6,pc}
dword_8015820:    .word 0x80044038
dword_8015824:    .word 0xCBB0
.thumb
sub_8015828:
    push {r4,r5,lr}
    ldrb r0, [r5,#0x18]
    mov r1, #0x1f
    and r1, r0
    bne locret_8015858
    cmp r0, #0x20 
    bge loc_8015848
    mov r0, #0x13
    mov r1, #4
    mov r2, #3
    ldr r3, [pc, #0x801585c-0x801583c-4] // loc_8015860
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DDC
    b locret_8015858
loc_8015848:
    mov r0, #0x13
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DF8
locret_8015858:
    pop {r4,r5,pc}
    .balign 4, 0x00
off_801585C:    .word loc_8015860
// end of function sub_8015828

loc_8015860:
    .hword 0xa0ac // adr r0, loc_8015B14
    .hword 0xa0ad // adr r0, locret_8015B18
loc_8015864:
    .hword 0xa0ae // adr r0, off_8015B20
    .hword 0xa0af // adr r0, off_8015B24
loc_8015868:
    .hword 0xa0b0 // adr r0, off_8015B2C
    .hword 0xa0b1 // adr r0, off_8015B30
    .hword 0xa0b2 // adr r0, off_8015B38
    .hword 0xa0b3 // adr r0, off_8015B3C
loc_8015870:
    .hword 0xa0b4 // adr r0, off_8015B44
    .hword 0xa0b5 // adr r0, off_8015B48
loc_8015874:
    .hword 0xa0b6 // adr r0, off_8015B50
    .hword 0xa0b7 // adr r0, off_8015B54
    .hword 0xa0b8 // adr r0, off_8015B5C
    .hword 0xa0b9 // adr r0, off_8015B60
loc_801587C:
    .hword 0xa0ba // adr r0, off_8015B68
    .hword 0xa0bb // adr r0, off_8015B6C
loc_8015880:
    .hword 0xa0bc // adr r0, off_8015B74
    .hword 0xa0bd // adr r0, off_8015B78
    .hword 0xa0be // adr r0, off_8015B80
    .hword 0xa0bf // adr r0, sub_8015B84
.thumb
sub_8015888:
    push {lr}
    ldr r0, [pc, #0x8015934-0x801588a-2] // unk_20363F0
loc_801588C:
    mov r1, #0x50 
    bl f900_8000930
    ldr r0, [pc, #0x801593c-0x8015892-2] // byte_203DC90
loc_8015894:
    mov r1, #0x3c 
loc_8015896:
    bl f900_8000930
    ldr r0, [pc, #0x8015944-0x801589a-2] // dword_2037CE0
    mov r1, #0x10
loc_801589E:
    bl f900_8000930
    ldr r0, [pc, #0x8015948-0x80158a2-2] // dword_203BE40
loc_80158A4:
    mov r1, #0x30 
    bl f900_8000930
    ldr r0, [pc, #0x80158d4-0x80158aa-2] // dword_203BF88
    mov r1, #4
    bl f900_8000930
    ldr r3, [pc, #0x8015934-0x80158b2-2] // unk_20363F0
    mov r0, #0x20 
    strh r0, [r3,#(word_2036416 - 0x20363f0)]
    mov r0, #0xff
    strb r0, [r3,#(byte_2036405 - 0x20363f0)]
    ldr r3, [pc, #0x8015944-0x80158bc-4] // dword_2037CE0
    mov r0, #0
    str r0, [r3]
    str r0, [r3,#(dword_2037CE4 - 0x2037ce0)]
    ldr r1, [pc, #0x80158d8-0x80158c4-4] // byte_2037C50
    strb r0, [r1]
    ldr r1, [pc, #0x80158dc-0x80158c8-4] // byte_203F6D0
    strb r0, [r1]
    ldr r1, [pc, #0x80158e0-0x80158cc-4] // dword_2037BD8
    str r0, [r1]
    pop {pc}
    .balign 4, 0x00
off_80158D4:    .word dword_203BF88
off_80158D8:    .word byte_2037C50
off_80158DC:    .word byte_203F6D0
off_80158E0:    .word dword_2037BD8
// end of function sub_8015888

.thumb
sub_80158E4:
    ldr r1, [pc, #0x8015934-0x80158e4-4] // unk_20363F0
    ldr r2, [r1,#(dword_203643C - 0x20363f0)]
    orr r2, r0
    str r2, [r1,#(dword_203643C - 0x20363f0)]
    mov pc, lr
// end of function sub_80158E4

.thumb
sub_80158EE:
    ldr r1, [pc, #0x8015934-0x80158ee-2] // unk_20363F0
    ldr r2, [r1,#(dword_203643C - 0x20363f0)]
    bic r2, r0
    str r2, [r1,#(dword_203643C - 0x20363f0)]
    mov pc, lr
// end of function sub_80158EE

.thumb
sub_80158F8:
    ldr r1, [pc, #0x8015934-0x80158f8-4] // unk_20363F0
    ldr r2, [r1,#(dword_2036438 - 0x20363f0)]
    orr r2, r0
    str r2, [r1,#(dword_2036438 - 0x20363f0)]
    mov pc, lr
// end of function sub_80158F8

.thumb
sub_8015902:
    ldr r1, [pc, #0x8015934-0x8015902-2] // unk_20363F0
    ldr r2, [r1,#(dword_2036438 - 0x20363f0)]
    bic r2, r0
    str r2, [r1,#(dword_2036438 - 0x20363f0)]
    mov pc, lr
// end of function sub_8015902

.thumb
sub_801590C:
    push {lr}
    ldr r1, [pc, #0x8015934-0x801590e-2] // unk_20363F0
    mov r0, #0
    strh r0, [r1,#(word_2036414 - 0x20363f0)]
    mov r0, #2
    bl sub_8007A58
    pop {pc}
// end of function sub_801590C

    push {lr}
    ldr r1, [pc, #0x8015934-0x801591e-2] // unk_20363F0
    ldr r0, [pc, #0x8015938-0x8015920-4] // =0x4000
    strh r0, [r1,#(word_2036414 - 0x20363f0)]
    mov r0, #2
    bl sub_8007A4C
    mov r0, #0x81
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
off_8015934:    .word unk_20363F0
dword_8015938:    .word 0x4000
off_801593C:    .word byte_203DC90
    .word unk_203DCCC
off_8015944:    .word dword_2037CE0
off_8015948:    .word dword_203BE40
locret_801594C:
    mov pc, lr
    .byte 0, 0
.thumb
sub_8015950:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#8]
    ldr r0, [pc, #0x8015a14-0x8015956-2] // =0x1F08
    strh r0, [r1,#0xa]
    ldr r0, [pc, #0x8015964-0x801595a-2] // off_8015968
    bl f800_80008EC
    pop {pc}
    .balign 4, 0x00
off_8015964:    .word off_8015968
off_8015968:    .word dword_87054A0
    .word unk_3002800
    .word 0x20, 0x87058C0, 0x600A600, 0x640, 0x8705F00, 0x3002BF0
    .word 0x20, 0x86900A4, 0x600AC40, 0x40, 0x868E2E4, 0x600AC80
    .word 0x40, 0x8705FC0, 0x6008020, 0x7C0, 0x8706780, 0x6008860
    .word 0x80, 0x8745D18, 0x6008A40, 0x180, 0x8707840, 0x6008BC0
    .word 0x240, 0x8745CB8, 0x3002BB0, 0x40, 0x8745CF8, 0x3002780
    .word 0x20, 0x870A040, 0x3002C10, 0x20, 0x8745C38, 0x6016B80
    .word 0x80, 0x874E4C8, 0x6008E00, 0x1C0, 0x0
off_8015A14:    .word 0x1F08
// end of function sub_8015950

.thumb
sub_8015A18:
    push {r4,r6,lr}
    ldr r6, [pc, #0x8015a74-0x8015a1a-2] // byte_203DC90
    ldr r4, [pc, #0x8015a78-0x8015a1c-4] // unk_203DCCC
    mov r3, #1
loc_8015A20:
    ldrb r2, [r6]
    tst r2, r3
    beq loc_8015A30
    add r6, #0x14
    cmp r6, r4
    bne loc_8015A20
    mov r0, #1
    pop {r4,r6,pc}
loc_8015A30:
    mov r2, #3
    strb r2, [r6]
    str r0, [r6,#8]
    str r1, [r6,#0xc]
    ldrb r2, [r5,#0xf]
    strb r2, [r6,#1]
    ldrh r2, [r5,#0x24]
    strh r2, [r6,#2]
    ldr r0, [pc, #0x8015a7c-0x8015a40-4] // =0xB0B0B0B
    str r0, [r6,#0x10]
    str r5, [r6,#4]
    mov r0, #4
    bl sub_80158F8
    mov r0, #0
    pop {r4,r6,pc}
// end of function sub_8015A18

.thumb
sub_8015A50:
    ldr r3, [pc, #0x8015a74-0x8015a50-4] // byte_203DC90
    ldr r2, [pc, #0x8015a78-0x8015a52-2] // unk_203DCCC
    mov r1, #1
loc_8015A56:
    ldrb r0, [r3]
    tst r0, r1
    beq loc_8015A68
    ldr r0, [r3,#4]
    cmp r0, r5
    bne loc_8015A68
    mov r0, #0
    strb r0, [r3]
    mov pc, lr
loc_8015A68:
    add r3, #0x14
    cmp r3, r2
    bne loc_8015A56
    mov r0, #1
    mov pc, lr
    .balign 4, 0x00
off_8015A74:    .word byte_203DC90
off_8015A78:    .word unk_203DCCC
dword_8015A7C:    .word 0xB0B0B0B
// end of function sub_8015A50

.thumb
sub_8015A80:
    push {r4,r6,r7,lr}
    ldr r3, [pc, #0x8015b80-0x8015a82-2] // unk_20363F0
    strb r0, [r3,#(byte_203640B - 0x20363f0)]
    strb r1, [r3,#(byte_203640C - 0x20363f0)]
    ldr r0, [pc, #0x8015aa8-0x8015a88-4] // loc_8745CF8
    ldr r1, [pc, #0x8015aac-0x8015a8a-2] // word_3002780
    mov r2, #0x20 
    bl loc_8000874
    mov r0, #8
    bl sub_80158F8
    mov r0, #8
    bl sub_8015DCC
    pop {r4,r6,r7,pc}
    .word 0xFFFF, 0x6016900
off_8015AA8:    .word loc_8745CF8
off_8015AAC:    .word word_3002780
// end of function sub_8015A80

.thumb
sub_8015AB0:
    push {r4,r6,r7,lr}
    ldr r0, [pc, #0x8015b80-0x8015ab2-2] // unk_20363F0
    ldr r1, [r0,#(dword_2036438 - 0x20363f0)]
    mov r2, #8
    tst r1, r2
    beq locret_8015AC8
    mov r0, #0x10
    bl sub_80158F8
    mov r0, #0x10
    bl sub_8015DCC
locret_8015AC8:
    pop {r4,r6,r7,pc}
// end of function sub_8015AB0

.thumb
sub_8015ACA:
    push {lr}
    ldr r3, [pc, #0x8015b80-0x8015acc-4] // unk_20363F0
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldr r2, [r2,#0x44]
    ldrh r2, [r2,#0x24]
    strh r2, [r3,#(word_2036412 - 0x20363f0)]
    strb r0, [r3,#(byte_20363F7 - 0x20363f0)]
    strb r1, [r3,#(byte_20363F8 - 0x20363f0)]
    mov r0, #1
    bl sub_80158F8
    mov r0, #1
    bl sub_8015DCC
    pop {pc}
// end of function sub_8015ACA

.thumb
sub_8015AEA:
    push {lr}
    ldr r1, [pc, #0x8015b80-0x8015aec-4] // unk_20363F0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrh r0, [r0,#0x24]
    strh r0, [r1,#(word_2036412 - 0x20363f0)]
    pop {pc}
// end of function sub_8015AEA

.thumb
sub_8015AFA:
    push {r5-r7,lr}
    ldr r5, [pc, #0x8015b80-0x8015afc-4] // unk_20363F0
    ldr r6, [pc, #0x8015b1c-0x8015afe-2] // off_8015B20
    ldr r7, [r5,#(dword_203643C - 0x20363f0)]
    and r7, r0
loc_8015B04:
    lsr r7, r7, #1
    bcs loc_8015B0E
    beq locret_8015B18
    add r6, #4
    b loc_8015B04
loc_8015B0E:
    ldr r0, [r6]
    mov lr, pc
    bx r0
loc_8015B14:
    add r6, #4
    b loc_8015B04
locret_8015B18:
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8015B1C:    .word off_8015B20
off_8015B20:    .word sub_8015B84+1
off_8015B24:    .word sub_8015B9E+1
    .word sub_8015BD8+1
off_8015B2C:    .word sub_8015BE2+1
off_8015B30:    .word sub_8015BEC+1
    .word sub_8015D04+1
off_8015B38:    .word sub_8015C06+1
off_8015B3C:    .word sub_8015C40+1
    .word sub_8015D0E+1
off_8015B44:    .word sub_8015D2C+1
off_8015B48:    .word sub_8015C5A+1
    .word sub_8015CC0+1
off_8015B50:    .word sub_8015C90+1
off_8015B54:    .word sub_8015CA0+1
    .word sub_8015CF4+1
off_8015B5C:    .word sub_8015D1C+1
off_8015B60:    .word sub_8015BB8+1
    .word sub_8015D3C+1
off_8015B68:    .word sub_8015D4C+1
off_8015B6C:    .word sub_8015D5C+1
    .word sub_8015D7C+1
off_8015B74:    .word sub_8015D8C+1
off_8015B78:    .word sub_8015D9C+1
    .word sub_8015DAC+1
off_8015B80:    .word unk_20363F0
// end of function sub_8015AFA

.thumb
sub_8015B84:
    push {r4,r5,lr}
    ldrb r0, [r5,#7]
    ldrb r1, [r5,#8]
    mov r2, #3
    mov r3, #0
    mov r4, #6
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015B84

    mov r0, #1
    bl sub_80158EE
    pop {r4,r5,pc}
.thumb
sub_8015B9E:
    push {r4,r5,lr}
    mov r0, #6
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x12
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015B9E

    mov r0, #2
    bl sub_80158EE
    pop {r4,r5,pc}
.thumb
sub_8015BB8:
    push {r4,r5,lr}
    mov r0, #6
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x12
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015BB8

    ldr r0, [pc, #0x8015bd4-0x8015bca-2] // =0x10000
    bl sub_80158EE
    pop {r4,r5,pc}
    .balign 4, 0x00
dword_8015BD4:    .word 0x10000
.thumb
sub_8015BD8:
    push {lr}
    mov r0, #4
    bl sub_80158EE
    pop {pc}
// end of function sub_8015BD8

.thumb
sub_8015BE2:
    push {r4,r5,lr}
    mov r0, #8
    bl sub_80158EE
    pop {r4,r5,pc}
// end of function sub_8015BE2

.thumb
sub_8015BEC:
    push {r4,r5,lr}
    mov r0, #0
    mov r1, #0x12
    mov r2, #3
    mov r3, #0
    mov r4, #0x10
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015BEC

    mov r0, #0x10
    bl sub_80158EE
    pop {r4,r5,pc}
.thumb
sub_8015C06:
    push {r4-r6,lr}
    mov r6, #6
    ldrb r0, [r5,#0x1a]
    cmp r0, #2
    beq loc_8015C12
    mov r6, #0
loc_8015C12:
    mov r0, #8
    lsr r1, r6, #1
    add r0, r0, r1
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #0xe
    sub r4, r4, r6
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015C06

    bl sub_80079EA
    cmp r0, #1
    beq locret_8015C3A
    cmp r6, #0
    bne locret_8015C3A
    ldr r0, [pc, #0x8015c3c-0x8015c34-4] // =0x400
    bl sub_8015DCC
locret_8015C3A:
    pop {r4-r6,pc}
off_8015C3C:    .word 0x400
.thumb
sub_8015C40:
    push {r4,r5,lr}
    mov r0, #0xb
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #8
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015C40

    mov r0, #0x80
    bl sub_8015902
    pop {r4,r5,pc}
.thumb
sub_8015C5A:
    push {r4,r5,lr}
    mov r0, #0xff
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x13]
    mov r0, #6
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #4
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015C5A

    mov r0, #0x1a
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #4
    mov r5, #2
    bl sub_8001DF8
    ldr r0, [pc, #0x8015c8c-0x8015c82-2] // =0x400
    bl sub_80158EE
    pop {r4,r5,pc}
    .balign 4, 0x00
off_8015C8C:    .word 0x400
.thumb
sub_8015C90:
    push {lr}
    ldr r0, [pc, #0x8015c9c-0x8015c92-2] // =0x1000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
off_8015C9C:    .word 0x1000
// end of function sub_8015C90

.thumb
sub_8015CA0:
    push {lr}
    mov r0, #0x16
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #7
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015CA0

    ldr r0, [pc, #0x8015cbc-0x8015cb2-2] // =0x2000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
off_8015CBC:    .word 0x2000
.thumb
sub_8015CC0:
    push {r4-r6,lr}
    mov r1, #0
    add r6, r5, #0
    add r6, #0x2c 
loc_8015CC8:
    ldrb r2, [r6]
    cmp r2, #0xff
    beq loc_8015CE8
    mov r0, #0x1e
    sub r0, r0, r2
    mov r2, #0
    mov r3, #0
    mov r4, #9
    mov r5, #2
    push {r1}
    bl sub_8001DF8
    pop {r1}
    add r1, #2
    add r6, #1
    b loc_8015CC8
loc_8015CE8:
    ldr r0, [pc, #0x8015cf0-0x8015ce8-4] // =0x800
    bl sub_80158EE
    pop {r4-r6,pc}
off_8015CF0:    .word 0x800
// end of function sub_8015CC0

.thumb
sub_8015CF4:
    push {lr}
    ldr r0, [pc, #0x8015d00-0x8015cf6-2] // =0x4000
    bl sub_80158EE
    pop {pc}
    .byte 0, 0
dword_8015D00:    .word 0x4000
// end of function sub_8015CF4

.thumb
sub_8015D04:
    push {lr}
    mov r0, #0x20 
    bl sub_80158EE
    pop {pc}
// end of function sub_8015D04

.thumb
sub_8015D0E:
    push {lr}
    ldr r0, [pc, #0x8015d18-0x8015d10-4] // =0xFF
    bl sub_80158EE
    pop {pc}
off_8015D18:    .word 0x100
// end of function sub_8015D0E

.thumb
sub_8015D1C:
    push {lr}
    ldr r0, [pc, #0x8015d28-0x8015d1e-2] // =0x8000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015D28:    .word 0x8000
// end of function sub_8015D1C

.thumb
sub_8015D2C:
    push {lr}
    ldr r0, [pc, #0x8015d38-0x8015d2e-2] // =0x200
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
off_8015D38:    .word 0x200
// end of function sub_8015D2C

.thumb
sub_8015D3C:
    push {lr}
    ldr r0, [pc, #0x8015d48-0x8015d3e-2] // =0x20000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015D48:    .word 0x20000
// end of function sub_8015D3C

.thumb
sub_8015D4C:
    push {lr}
    ldr r0, [pc, #0x8015d58-0x8015d4e-2] // =0x40000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015D58:    .word 0x40000
// end of function sub_8015D4C

.thumb
sub_8015D5C:
    push {r4,r5,lr}
    mov r0, #0xa
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015D5C

    ldr r0, [pc, #0x8015d78-0x8015d6e-2] // =0x80000
    bl sub_80158EE
    pop {r4,r5,pc}
    .balign 4, 0x00
dword_8015D78:    .word 0x80000
.thumb
sub_8015D7C:
    push {lr}
    ldr r0, [pc, #0x8015d88-0x8015d7e-2] // =0x100000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015D88:    .word 0x100000
// end of function sub_8015D7C

.thumb
sub_8015D8C:
    push {lr}
    ldr r0, [pc, #0x8015d98-0x8015d8e-2] // =0x200000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015D98:    .word 0x200000
// end of function sub_8015D8C

.thumb
sub_8015D9C:
    push {lr}
    ldr r0, [pc, #0x8015da8-0x8015d9e-2] // =0x400000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015DA8:    .word 0x400000
// end of function sub_8015D9C

.thumb
sub_8015DAC:
    push {lr}
    mov r0, #0x13
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8015DAC

    ldr r0, [pc, #0x8015dc8-0x8015dbe-2] // =0x800000
    bl sub_80158EE
    pop {pc}
    .balign 4, 0x00
dword_8015DC8:    .word 0x800000
.thumb
sub_8015DCC:
    push {r5-r7,lr}
    ldr r5, [pc, #0x80160bc-0x8015dce-2] // unk_20363F0
    ldr r6, [pc, #0x8015dec-0x8015dd0-4] // off_8015DF0
    add r7, r0, #0
loc_8015DD4:
    lsr r7, r7, #1
    bcs loc_8015DDE
    beq locret_8015DE8
    add r6, #4
    b loc_8015DD4
loc_8015DDE:
    ldr r0, [r6]
    mov lr, pc
    bx r0
    add r6, #4
    b loc_8015DD4
locret_8015DE8:
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8015DEC:    .word off_8015DF0
off_8015DF0:    .word sub_8015E50+1
    .word sub_8015E70+1
    .word sub_8015ECC+1
    .word sub_8015ED6+1
    .word sub_8015EEA+1
    .word sub_8015EF4+1
    .word sub_8015F3C+1
    .word sub_8015F80+1
    .word sub_8015EFE+1
    .word sub_8015F2C+1
    .word sub_8015FB0+1
    .word sub_8015FFC+1
    .word sub_8015FDC+1
    .word sub_8015FEC+1
    .word sub_8015FA0+1
    .word sub_8015F14+1
    .word sub_8015E94+1
    .word sub_801600C+1
    .word sub_801601C+1
    .word sub_801602C+1
    .word sub_801605C+1
    .word sub_801606C+1
    .word sub_801607C+1
    .word sub_801608C+1
// end of function sub_8015DCC

.thumb
sub_8015E50:
    push {r4,r5,lr}
    ldr r3, [pc, #0x80160bc-0x8015e52-2] // unk_20363F0
    ldrb r0, [r3,#(byte_20363F7 - 0x20363f0)]
    ldrb r1, [r3,#(byte_20363F8 - 0x20363f0)]
    mov r2, #3
    ldr r3, [pc, #0x8015e6c-0x8015e5a-2] // unk_8016A6C
    mov r4, #6
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015E50

    mov r0, #1
    bl sub_80158E4
    pop {r4,r5,pc}
off_8015E6C:    .word unk_8016A6C
.thumb
sub_8015E70:
    push {r4,r5,lr}
    ldr r0, [pc, #0x8015ebc-0x8015e72-2] // dword_8705F00
    ldr r1, [pc, #0x8015ec0-0x8015e74-4] // unk_3002B70
    mov r2, #0x20 
    bl loc_8000874
    mov r0, #6
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x8015eb8-0x8015e82-2] // dword_8016A84
    mov r4, #0x12
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015E70

    mov r0, #2
    bl sub_80158E4
    pop {r4,r5,pc}
.thumb
sub_8015E94:
    push {r4,r5,lr}
    ldr r0, [pc, #0x8015ec4-0x8015e96-2] // dword_8705F00
    ldr r1, [pc, #0x8015ec0-0x8015e98-4] // unk_3002B70
    mov r2, #0x20 
    bl loc_8000874
    mov r0, #6
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x8015eb8-0x8015ea6-2] // dword_8016A84
    mov r4, #0x12
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015E94

    ldr r0, [pc, #0x8015ec8-0x8015eb0-4] // =0x10000
    bl sub_80158E4
    pop {r4,r5,pc}
off_8015EB8:    .word dword_8016A84
off_8015EBC:    .word dword_8705F00
off_8015EC0:    .word unk_3002B70
off_8015EC4:    .word dword_8705F00
dword_8015EC8:    .word 0x10000
.thumb
sub_8015ECC:
    push {lr}
    mov r0, #4
    bl sub_80158E4
    pop {pc}
// end of function sub_8015ECC

.thumb
sub_8015ED6:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800BFAE
    mov r0, #8
    bl sub_80158E4
    pop {pc}
// end of function sub_8015ED6

.thumb
sub_8015EEA:
    push {lr}
    mov r0, #0x10
    bl sub_80158E4
    pop {pc}
// end of function sub_8015EEA

.thumb
sub_8015EF4:
    push {lr}
    mov r0, #0x20 
    bl sub_80158E4
    pop {pc}
// end of function sub_8015EF4

.thumb
sub_8015EFE:
    push {lr}
    ldr r0, [pc, #0x8015f28-0x8015f00-4] // =0x20000
    bl sub_8015AFA
    ldr r0, [pc, #0x8015f10-0x8015f06-2] // =0xFF
    bl sub_80158E4
    pop {pc}
    .byte 0, 0
off_8015F10:    .word 0x100
// end of function sub_8015EFE

.thumb
sub_8015F14:
    push {lr}
    ldr r0, [pc, #0x8015f28-0x8015f16-2] // =0x20000
    bl sub_8015AFA
    ldr r0, [pc, #0x8015f24-0x8015f1c-4] // =0x8000
    bl sub_80158E4
    pop {pc}
dword_8015F24:    .word 0x8000
dword_8015F28:    .word 0x20000
// end of function sub_8015F14

.thumb
sub_8015F2C:
    push {lr}
    ldr r0, [pc, #0x8015f38-0x8015f2e-2] // =0x200
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
off_8015F38:    .word 0x200
// end of function sub_8015F2C

.thumb
sub_8015F3C:
    push {r4-r6,lr}
    mov r6, #6
    ldrb r0, [r5,#0x1a]
    cmp r0, #2
    beq loc_8015F4E
    mov r6, #0
    ldr r0, [pc, #0x8015f7c-0x8015f48-4] // =0x400
    bl sub_8015AFA
loc_8015F4E:
    mov r0, #8
    lsr r1, r6, #1
    add r0, r0, r1
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8015f74-0x8015f58-4] // dword_8016ACC
    cmp r6, #6
    bne loc_8015F60
    ldr r3, [pc, #0x8015f78-0x8015f5e-2] // unk_8016B04
loc_8015F60:
    mov r4, #0xe
    sub r4, r4, r6
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015F3C

    mov r0, #0x40 
    bl sub_80158E4
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8015F74:    .word dword_8016ACC
off_8015F78:    .word unk_8016B04
off_8015F7C:    .word 0x400
.thumb
sub_8015F80:
    push {r4,r5,lr}
    mov r0, #0xb
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x8015f9c-0x8015f88-4] // dword_8016B24
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8015F80

    mov r0, #0x80
    bl sub_80158E4
    pop {r4,r5,pc}
    .balign 4, 0x00
off_8015F9C:    .word dword_8016B24
.thumb
sub_8015FA0:
    push {lr}
    ldr r0, [pc, #0x8015fac-0x8015fa2-2] // =0x4000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8015FAC:    .word 0x4000
// end of function sub_8015FA0

.thumb
sub_8015FB0:
    push {lr}
    bl sub_8022D04
    cmp r0, #0
    bne loc_8015FC4
    ldr r0, [pc, #0x8015fd0-0x8015fba-2] // dword_8705F00
    ldr r1, [pc, #0x8015fd4-0x8015fbc-4] // unk_3002B70
    mov r2, #0x20 
    bl loc_8000874
loc_8015FC4:
    ldr r0, [pc, #0x8015fcc-0x8015fc4-4] // =0x400
    bl sub_80158E4
    pop {pc}
off_8015FCC:    .word 0x400
off_8015FD0:    .word dword_8705F00
off_8015FD4:    .word unk_3002B70
    .word dword_8705F00
// end of function sub_8015FB0

.thumb
sub_8015FDC:
    push {lr}
    ldr r0, [pc, #0x8015fe8-0x8015fde-2] // =0x1000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
off_8015FE8:    .word 0x1000
// end of function sub_8015FDC

.thumb
sub_8015FEC:
    push {lr}
    ldr r0, [pc, #0x8015ff8-0x8015fee-2] // =0x2000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
off_8015FF8:    .word 0x2000
// end of function sub_8015FEC

.thumb
sub_8015FFC:
    push {lr}
    ldr r0, [pc, #0x8016008-0x8015ffe-2] // =0x800
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
off_8016008:    .word 0x800
// end of function sub_8015FFC

.thumb
sub_801600C:
    push {lr}
    ldr r0, [pc, #0x8016018-0x801600e-2] // =0x20000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016018:    .word 0x20000
// end of function sub_801600C

.thumb
sub_801601C:
    push {lr}
    ldr r0, [pc, #0x8016028-0x801601e-2] // =0x40000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016028:    .word 0x40000
// end of function sub_801601C

.thumb
sub_801602C:
    push {r4,r5,lr}
    ldr r0, [pc, #0x8016050-0x801602e-2] // dword_8705F00
    ldr r1, [pc, #0x8016054-0x8016030-4] // unk_3002B70
    mov r2, #0x20 
    bl loc_8000874
    mov r0, #0xa
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0xa
    mov r5, #2
    bl sub_8001DF8
// end of function sub_801602C

    ldr r0, [pc, #0x8016058-0x8016048-4] // =0x80000
    bl sub_80158E4
    pop {r4,r5,pc}
off_8016050:    .word dword_8705F00
off_8016054:    .word unk_3002B70
dword_8016058:    .word 0x80000
.thumb
sub_801605C:
    push {lr}
    ldr r0, [pc, #0x8016068-0x801605e-2] // =0x100000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016068:    .word 0x100000
// end of function sub_801605C

.thumb
sub_801606C:
    push {lr}
    ldr r0, [pc, #0x8016078-0x801606e-2] // =0x200000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016078:    .word 0x200000
// end of function sub_801606C

.thumb
sub_801607C:
    push {lr}
    ldr r0, [pc, #0x8016088-0x801607e-2] // =0x400000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016088:    .word 0x400000
// end of function sub_801607C

.thumb
sub_801608C:
    push {lr}
    ldr r0, [pc, #0x8016098-0x801608e-2] // =0x800000
    bl sub_80158E4
    pop {pc}
    .balign 4, 0x00
dword_8016098:    .word 0x800000
// end of function sub_801608C

.thumb
sub_801609C:
    push {r1,r2,lr}
    ldr r2, [pc, #0x80160bc-0x801609e-2] // unk_20363F0
    ldr r0, [r2,#(dword_2036438 - 0x20363f0)]
    mov r1, #0x20 
    and r0, r1
    beq locret_80160BA
    mov r0, #1
    ldr r2, [pc, #0x80161b4-0x80160aa-2] // dword_2037CE0
    ldrb r1, [r2,#(byte_2037CE8 - 0x2037ce0)]
    cmp r1, #2
    bne locret_80160BA
    ldrb r1, [r2]
    cmp r1, #4
    bne locret_80160BA
    mov r0, #2
locret_80160BA:
    pop {r1,r2,pc}
off_80160BC:    .word unk_20363F0
// end of function sub_801609C

.thumb
sub_80160C0:
    ldr r2, [pc, #0x80161b4-0x80160c0-4] // dword_2037CE0
    ldrb r1, [r2,#(byte_2037CE8 - 0x2037ce0)]
    cmp r1, #2
    bne locret_80160D0
    mov r0, #8
    strb r0, [r2]
    mov r0, #0
    strb r0, [r2,#(dword_2037CE4+3 - 0x2037ce0)]
locret_80160D0:
    mov pc, lr
// end of function sub_80160C0

.thumb
sub_80160D2:
    push {r4-r7,lr}
    bl sub_80161D0
    cmp r3, #0
    bne loc_80161B0
    ldr r5, [pc, #0x80161b4-0x80160dc-4] // dword_2037CE0
    mov r2, #0
    strb r2, [r5,#(dword_2037CE4+3 - 0x2037ce0)]
    strb r2, [r5]
    strb r1, [r5,#(byte_2037CE9 - 0x2037ce0)]
    cmp r1, #0
    beq loc_80160F0
    cmp r0, #0
    bne loc_80160F0
    mov r0, #0x30 
loc_80160F0:
    strb r0, [r5,#(dword_2037CE0+1 - 0x2037ce0)]
    ldr r1, [pc, #0x80161b8-0x80160f2-2] // off_8016B44
    ldr r6, [r1,r0]
    ldrh r1, [r6]
    strh r1, [r5,#(dword_2037CE0+2 - 0x2037ce0)]
    ldrb r1, [r6,#2]
    strb r1, [r5,#(byte_2037CE8 - 0x2037ce0)]
    bl sub_8025BF8
    cmp r0, #0xff
    beq loc_80161B0
    strb r0, [r5,#(dword_2037CE4+2 - 0x2037ce0)]
    add r3, r0, #0
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0xd0
    bl sub_8025C2A
    add r7, r6, #4
    mov r6, #5
    ldr r1, [pc, #0x80161bc-0x8016118-4] // =0x6016C00
    mov r2, #0x20 
loc_801611C:
    mov r4, #4
loc_801611E:
    ldr r0, [r7]
    bl loc_8000874
    add r0, #0x20 
    add r1, #0x80
    bl loc_8000874
    sub r1, #0x60 
    add r7, #4
    sub r4, #1
    bne loc_801611E
    add r1, #0x80
    sub r6, #1
    bne loc_801611C
    ldrb r0, [r5,#(byte_2037CE8 - 0x2037ce0)]
    cmp r0, #1
    bne loc_801618A
    ldrh r0, [r7]
    strh r0, [r5,#(dword_2037CE4 - 0x2037ce0)]
    ldrb r0, [r5,#(byte_2037CE9 - 0x2037ce0)]
    bl fA00_8000A30
    mov r7, #0xf
    and r7, r0
    lsr r6, r0, #4
    bne loc_801615A
    mov r6, #0xa
    ldrb r0, [r5,#(dword_2037CE4 - 0x2037ce0)]
    sub r0, #4
    strb r0, [r5,#(dword_2037CE4 - 0x2037ce0)]
loc_801615A:
    ldr r3, [pc, #0x80161c0-0x801615a-2] // off_8017968
    lsl r6, r6, #2
    ldr r6, [r3,r6]
    lsl r7, r7, #2
    ldr r7, [r3,r7]
    mov r2, #0x20 
    ldr r1, [pc, #0x80161c4-0x8016166-2] // =0x6017100
    add r0, r6, #0
    bl loc_8000874
    add r1, #0x20 
    add r0, r7, #0
    bl loc_8000874
    add r0, r6, #0
    add r0, #0x20 
    add r1, #0x20 
    bl loc_8000874
    add r0, r7, #0
    add r0, #0x20 
    add r1, #0x20 
    bl loc_8000874
loc_801618A:
    ldr r0, [pc, #0x80161c8-0x801618a-2] // dword_874E688
    ldr r1, [pc, #0x80161cc-0x801618c-4] // unk_30027A0
    mov r2, #0x20 
    bl loc_8000874
    mov r0, #0x20 
    bl sub_80158F8
    mov r0, #0x20 
    bl sub_8015DCC
    ldrb r0, [r5,#(dword_2037CE0+1 - 0x2037ce0)]
    cmp r0, #0x24 
    bne loc_80161AC
    mov r0, #0x40 
    bl sub_8015AFA
loc_80161AC:
    mov r0, #0
    pop {r4-r7,pc}
loc_80161B0:
    mov r0, #1
    pop {r4-r7,pc}
off_80161B4:    .word dword_2037CE0
off_80161B8:    .word off_8016B44
dword_80161BC:    .word 0x6016C00
off_80161C0:    .word off_8017968
dword_80161C4:    .word 0x6017100
off_80161C8:    .word dword_874E688
off_80161CC:    .word unk_30027A0
// end of function sub_80160D2

.thumb
sub_80161D0:
    push {r4,lr}
    ldr r3, [pc, #0x801621c-0x80161d2-2] // unk_20363F0
    ldr r3, [r3,#(dword_2036438 - 0x20363f0)]
    ldr r4, [pc, #0x80161dc-0x80161d6-2] // =0x320
    and r3, r4
    pop {r4,pc}
off_80161DC:    .word 0x320
// end of function sub_80161D0

.thumb
sub_80161E0:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r6, [pc, #0x801621c-0x80161e4-4] // unk_20363F0
    ldr r1, [r6,#(dword_2036438 - 0x20363f0)]
    mov r0, #0x40 
    tst r1, r0
    beq loc_80161F2
    bl sub_8015AFA
loc_80161F2:
    mov r0, #0x3c 
    strb r0, [r6,#(byte_20363FF - 0x20363f0)]
    mov r0, #0
    strb r0, [r6,#(byte_203640A - 0x20363f0)]
    ldr r0, [pc, #0x80162e0-0x80161fa-2] // a1CluGpy
    add r1, r7, #0
    ldr r2, [pc, #0x80162e4-0x80161fe-2] // unk_203B850
    ldr r3, [pc, #0x80162e8-0x8016200-4] // =0x6009580
    mov r4, #0xe
    mov r5, #1
    ldr r6, [pc, #0x80162ec-0x8016206-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x72 
    .byte 0xFB
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0xD9
    .byte 0xFD
    .byte 0xF0
    .byte 0xBD
off_801621C:    .word unk_20363F0
// end of function sub_80161E0

.thumb
sub_8016220:
    push {r4-r7,lr}
    ldr r6, [pc, #0x80163a4-0x8016222-2] // unk_20363F0
    ldr r0, [r6,#(dword_2036438 - 0x20363f0)]
    mov r1, #0x40 
    tst r0, r1
    beq loc_8016238
    ldrb r0, [r6,#(byte_203640A - 0x20363f0)]
    cmp r0, #0
    beq locret_8016260
    mov r0, #0x40 
    bl sub_8015AFA
loc_8016238:
    mov r0, #0x3c 
    strb r0, [r6,#(byte_20363FF - 0x20363f0)]
    mov r0, #1
    strb r0, [r6,#(byte_203640A - 0x20363f0)]
    ldr r0, [pc, #0x80162e0-0x8016240-4] // a1CluGpy
    mov r1, #0xe
    ldr r2, [pc, #0x80162e4-0x8016244-4] // unk_203B850
    ldr r3, [pc, #0x80162e8-0x8016246-2] // =0x6009580
    mov r4, #0xe
    mov r5, #1
    ldr r6, [pc, #0x80162ec-0x801624c-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x4F 
    .byte 0xFB
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0xB6
    .byte 0xFD
locret_8016260:
    pop {r4-r7,pc}
// end of function sub_8016220

.thumb
sub_8016262:
    push {r4-r7,lr}
    push {r0}
    ldr r6, [pc, #0x80163a4-0x8016266-2] // unk_20363F0
    ldr r0, [r6,#(dword_2036438 - 0x20363f0)]
    mov r1, #0x40 
    tst r0, r1
    beq loc_801627C
    ldrb r0, [r6,#(byte_203640A - 0x20363f0)]
    cmp r0, #0
    beq loc_80162B2
    mov r0, #0x40 
    bl sub_8015AFA
loc_801627C:
    mov r0, #0x3c 
    strb r0, [r6,#(byte_20363FF - 0x20363f0)]
    mov r0, #2
    strb r0, [r6,#(byte_203640A - 0x20363f0)]
    mov r1, r10
    ldr r1, [r1,#0x38]
    ldr r0, [sp]
    str r0, [r1,#4]
    mov r1, #0xf
    cmp r0, #0
    bne loc_8016294
    mov r1, #0x10
loc_8016294:
    ldr r0, [pc, #0x80162e0-0x8016294-4] // a1CluGpy
    ldr r2, [pc, #0x80162e4-0x8016296-2] // unk_203B850
    ldr r3, [pc, #0x80162e8-0x8016298-4] // =0x6009580
    mov r4, #0xa
    mov r5, #1
    ldr r6, [pc, #0x80162ec-0x801629e-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x26 
    .byte 0xFB
    .byte 0x40 
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x8D
    .byte 0xFD
loc_80162B2:
    pop {r0}
    pop {r4-r7,pc}
// end of function sub_8016262

.thumb
sub_80162B6:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r0, [pc, #0x80162e0-0x80162ba-2] // a1CluGpy
    add r1, r7, #0
    add r1, #3
    ldr r2, [pc, #0x80162e4-0x80162c0-4] // unk_203B850
    ldr r3, [pc, #0x80162e8-0x80162c2-2] // =0x6009580
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x80162ec-0x80162c8-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x80
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x11
    .byte 0xFB
    .byte 0x80
    .byte 0x20
    .byte 0xFF
    .byte 0xF7
    .byte 0x78 
    .byte 0xFD
    .byte 0xF0
    .byte 0xBD
    .byte 0, 0
off_80162E0:    .word a1CluGpy
off_80162E4:    .word unk_203B850
dword_80162E8:    .word 0x6009580
off_80162EC:    .word dword_868E224
// end of function sub_80162B6

    push {r1,r2,lr}
    ldr r2, [pc, #0x80163a4-0x80162f2-2] // unk_20363F0
    ldr r0, [r2,#(dword_2036438 - 0x20363f0)]
    ldr r1, [pc, #0x801637c-0x80162f6-2] // =0x200
    and r0, r1
    beq locret_8016308
    mov r0, #1
    ldr r2, [pc, #0x8016378-0x80162fe-2] // byte_2037BD0
    ldrb r1, [r2]
    cmp r1, #4
    bne locret_8016308
    mov r0, #2
locret_8016308:
    pop {r1,r2,pc}
.thumb
sub_801630A:
    push {lr}
    bl sub_80160C0
    ldr r2, [pc, #0x8016378-0x8016310-4] // byte_2037BD0
    mov r0, #8
    strb r0, [r2]
    mov r0, #0
    strb r0, [r2,#(byte_2037BD1 - 0x2037bd0)]
    pop {pc}
// end of function sub_801630A

.thumb
sub_801631C:
    push {r4,r5,lr}
    bl sub_80161D0
    cmp r3, #0
    bne loc_8016358
    ldr r5, [pc, #0x8016378-0x8016326-2] // byte_2037BD0
    mov r2, #0
    strb r2, [r5,#(byte_2037BD1 - 0x2037bd0)]
    strb r2, [r5]
    bl sub_8016380
    add r4, r1, #0
    bl fA00_8000A30
    strh r0, [r5,#(word_2037BD2 - 0x2037bd0)]
    add r0, r4, #0
    bl fA00_8000A30
    strh r0, [r5,#(word_2037BD4 - 0x2037bd0)]
    mov r0, #0x28 
    bl sub_80160D2
    ldr r0, [pc, #0x801637c-0x8016348-4] // =0x200
    bl sub_80158F8
    ldr r0, [pc, #0x801637c-0x801634e-2] // =0x200
    bl sub_8015DCC
    mov r0, #0
    pop {r4,r5,pc}
loc_8016358:
    mov r0, #1
    pop {r4,r5,pc}
// end of function sub_801631C

.thumb
sub_801635C:
    push {r4,r5,lr}
    ldr r5, [pc, #0x8016378-0x801635e-2] // byte_2037BD0
    bl sub_8016380
    add r4, r1, #0
    bl fA00_8000A30
    strh r0, [r5,#(word_2037BD2 - 0x2037bd0)]
    add r0, r4, #0
    bl fA00_8000A30
    strh r0, [r5,#(word_2037BD4 - 0x2037bd0)]
    pop {r4,r5,pc}
    .balign 4, 0x00
off_8016378:    .word byte_2037BD0
off_801637C:    .word 0x200
// end of function sub_801635C

.thumb
sub_8016380:
    ldr r2, [pc, #0x8016390-0x8016380-4] // =0x26C0
    cmp r0, r2
    ble loc_8016388
    add r0, r2, #0
loc_8016388:
    cmp r1, r2
    ble locret_801638E
    add r1, r2, #0
locret_801638E:
    mov pc, lr
dword_8016390:    .word 0x270F
// end of function sub_8016380

.thumb
sub_8016394:
    push {r1,r2,lr}
    ldr r2, [pc, #0x80163a4-0x8016396-2] // unk_20363F0
    ldr r0, [r2,#(dword_2036438 - 0x20363f0)]
    ldr r1, [pc, #0x80163f4-0x801639a-2] // =0xFF
    and r0, r1
    beq locret_80163A2
    mov r0, #1
locret_80163A2:
    pop {r1,r2,pc}
off_80163A4:    .word unk_20363F0
// end of function sub_8016394

.thumb
sub_80163A8:
    push {r4,r5,lr}
    ldr r5, [pc, #0x80163f0-0x80163aa-2] // dword_2037CE0
    bl sub_80161D0
    cmp r3, #0
    beq loc_80163D0
    ldr r4, [pc, #0x80163f4-0x80163b4-4] // =0xFF
    cmp r3, r4
    bne loc_80163EC
    push {r0-r3}
    ldr r0, [pc, #0x80163f4-0x80163bc-4] // =0xFF
    bl sub_8015AFA
    ldrb r0, [r5]
    cmp r0, #0xc
    beq loc_80163CE
    ldrb r0, [r5,#(dword_2037CE4+2 - 0x2037ce0)]
    bl sub_8025C1A
loc_80163CE:
    pop {r0-r3}
loc_80163D0:
    mov r3, #0
    mov r4, #0
    bl sub_8016460
    cmp r0, #1
    beq loc_80163EC
    ldr r0, [pc, #0x80163f4-0x80163dc-4] // =0xFF
    bl sub_80158F8
    ldr r0, [pc, #0x80163f4-0x80163e2-2] // =0xFF
    bl sub_80158E4
    mov r0, #0
    pop {r4,r5,pc}
loc_80163EC:
    mov r0, #1
    pop {r4,r5,pc}
off_80163F0:    .word dword_2037CE0
off_80163F4:    .word 0x100
// end of function sub_80163A8

.thumb
sub_80163F8:
    push {r1,r2,lr}
    ldr r2, [pc, #0x8016684-0x80163fa-2] // unk_20363F0
    ldr r0, [r2,#(dword_2036438 - 0x20363f0)]
    ldr r1, [pc, #0x8016454-0x80163fe-2] // =0x8000
    and r0, r1
    beq locret_8016406
    mov r0, #1
locret_8016406:
    pop {r1,r2,pc}
// end of function sub_80163F8

.thumb
sub_8016408:
    push {r4,r5,lr}
    ldr r4, [pc, #0x8016684-0x801640a-2] // unk_20363F0
    ldr r4, [r4,#(dword_2036438 - 0x20363f0)]
    ldr r5, [pc, #0x8016454-0x801640e-2] // =0x8000
    and r4, r5
    beq loc_801642C
    push {r0-r3}
    ldr r0, [pc, #0x8016454-0x8016416-2] // =0x8000
    bl sub_8015AFA
    ldr r1, [pc, #0x8016450-0x801641c-4] // byte_2037CF0
    ldrb r0, [r1]
    cmp r0, #0xc
    beq loc_801642A
    ldrb r0, [r1,#(byte_2037CF6 - 0x2037cf0)]
    bl sub_8025C1A
loc_801642A:
    pop {r0-r3}
loc_801642C:
    ldr r4, [pc, #0x8016458-0x801642c-4] // off_801645C
    ldrb r4, [r4,r3]
    ldr r5, [pc, #0x8016450-0x8016430-4] // byte_2037CF0
    mov r3, #1
    bl sub_8016460
    cmp r0, #1
    beq loc_801644C
    ldr r0, [pc, #0x8016454-0x801643c-4] // =0x8000
    bl sub_80158F8
    ldr r0, [pc, #0x8016454-0x8016442-2] // =0x8000
    bl sub_8015DCC
    mov r0, #0
    pop {r4,r5,pc}
loc_801644C:
    mov r0, #1
    pop {r4,r5,pc}
off_8016450:    .word byte_2037CF0
dword_8016454:    .word 0x8000
off_8016458:    .word off_801645C
off_801645C:    .word 0x300
// end of function sub_8016408

.thumb
sub_8016460:
    push {r4-r7,lr}
    strb r4, [r5,#8]
    mov r4, #0
    strb r4, [r5,#7]
    strb r4, [r5]
    strb r4, [r5,#1]
    strh r4, [r5,#0xa]
    strb r4, [r5,#0xc]
    mov r4, #0x20 
    strb r4, [r5,#3]
    strh r0, [r5,#4]
    push {r1-r3,r5}
    bl sub_8025BF8
    cmp r0, #0xff
    beq loc_8016552
    strb r0, [r5,#6]
    add r3, r0, #0
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0xd0
    bl sub_8025C2A
    ldrh r0, [r5,#4]
    bl sub_801FCC0
    bl sub_801657E
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x80165c4-0x801649c-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x3C 
    .byte 0xBC
    .byte 0x68 
    .byte 0x72 
    .byte 0xC
    .byte 0xB4
    .byte 0xA8
    .byte 0x88
    .byte 2
    .byte 0xF0
    .byte 0xB0
    .byte 0xFD
    .byte 0x40 
    .byte 0x7A 
    .byte 2
    .byte 0x21 
    .byte 8
    .byte 0x42 
    .byte 0xC
    .byte 0xBC
    .byte 0x31 
    .byte 0xD0
    .byte 0x53 
    .byte 0x48 
    .byte 0x10
    .byte 0x42 
    .byte 2
    .byte 0xD0
    .byte 0x82
    .byte 0x43 
    .byte 1
    .byte 0x20
    .byte 0x28 
    .byte 0x73 
    .byte 0x51 
    .byte 0x48 
    .byte 0x82
    .byte 0x43 
    .byte 0
    .byte 0x2A 
    .byte 0x27 
    .byte 0xD0
    .byte 0x38 
    .byte 0xB4
    .byte 0x10
    .byte 0x1C
    .byte 0xEA
    .byte 0xF7
    .byte 0xAD
    .byte 0xFA
    .byte 4
    .byte 0x1C
    .byte 0xEA
    .byte 0xF7
    .byte 0xD8
    .byte 0xFA
    .byte 0xA8
    .byte 0x72 
    .byte 0x2C 
    .byte 0x49 
    .byte 0x80
    .byte 0
    .byte 0x81
    .byte 0x40 
    .byte 0xC
    .byte 0x43 
    .byte 0x2D 
    .byte 0x49 
    .byte 1
    .byte 0x9A
    .byte 0x92
    .byte 0
    .byte 0x89
    .byte 0x58 
    .byte 0
    .byte 0xF0
    .byte 0x33 
    .byte 0xF8
    .byte 0x31 
    .byte 0xBC
    .byte 0
    .byte 0x28 
    .byte 0x12
    .byte 0xD0
    .byte 0x10
    .byte 0xB4
    .byte 0xEA
    .byte 0xF7
    .byte 0x99
    .byte 0xFA
    .byte 4
    .byte 0x1C
    .byte 0xEA
    .byte 0xF7
    .byte 0xC4
    .byte 0xFA
    .byte 0x41 
    .byte 0x1C
    .byte 0xE9
    .byte 0x72 
    .byte 0x22 
    .byte 0x49 
    .byte 0x80
    .byte 0
    .byte 0x81
    .byte 0x40 
    .byte 0xC
    .byte 0x43 
    .byte 0x25 
    .byte 0x49 
    .byte 0
    .byte 0x9A
    .byte 0x92
    .byte 0
    .byte 0x89
    .byte 0x58 
    .byte 0
    .byte 0xF0
    .byte 0x1E
    .byte 0xF8
    .byte 0x10
    .byte 0xBC
    .byte 0x69 
    .byte 0x7A 
    .byte 0xA8
    .byte 0x7A 
    .byte 9
    .byte 0x18
    .byte 0xE8
    .byte 0x7A 
    .byte 9
    .byte 0x18
    .byte 0xF
    .byte 0x20
    .byte 0x40 
    .byte 0x1A
    .byte 0x80
    .byte 0
    .byte 0x78 
    .byte 0x21 
    .byte 0x61 
    .byte 0x43 
    .byte 0x40 
    .byte 0x18
    .byte 0x29 
    .byte 0x7B 
    .byte 9
    .byte 1
    .byte 0x61 
    .byte 0x43 
    .byte 0x40 
    .byte 0x1A
    .byte 0xA8
    .byte 0x70 
    .byte 0x1D
    .byte 0x48 
    .byte 0x1D
    .byte 0x49 
    .byte 0x20
    .byte 0x22 
    .byte 0xEA
    .byte 0xF7
    .byte 0x96
    .byte 0xF9
    .byte 0x21 
    .byte 0x48 
    .byte 0xEA
    .byte 0xF7
    .byte 0xCF
    .byte 0xF9
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
loc_8016552:
    pop {r1-r3,r5}
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_8016460

.thumb
sub_8016558:
    push {lr}
    ldr r6, [pc, #0x8016598-0x801655a-2] // off_8017994
    mov r7, #4
    mov r2, #0x20 
loc_8016560:
    mov r0, #0xf
    and r0, r4
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    bl loc_8000874
    add r0, r0, r2
    add r1, #0x80
    bl loc_8000874
    sub r1, #0xa0
    lsr r4, r4, #4
    sub r7, #1
    bne loc_8016560
    pop {pc}
// end of function sub_8016558

.thumb
sub_801657E:
    ldr r2, [sp,#8]
    cmp r2, #1
    beq loc_801658A
    ldr r2, [pc, #0x80165bc-0x8016584-4] // unk_203E590
    ldr r3, [pc, #0x80165c0-0x8016586-2] // =0x6016C00
    mov pc, lr
loc_801658A:
    ldr r2, [pc, #0x80165c8-0x801658a-2] // unk_203DCD0
    ldr r3, [pc, #0x80165cc-0x801658c-4] // =0x6017080
    mov pc, lr
    .word 0xAAAA
    .word 0xAAAB
off_8016598:    .word off_8017994
    .word dword_80165A0
dword_80165A0:    .word 0x6016E60, 0x60172E0
    .word dword_80165AC
dword_80165AC:    .word 0x6016F60, 0x60173E0
    .word dword_874E6C8
    .word unk_30027A0
off_80165BC:    .word unk_203E590
dword_80165C0:    .word 0x6016C00
off_80165C4:    .word dword_868E224
off_80165C8:    .word unk_203DCD0
dword_80165CC:    .word 0x6017080
    .word off_80165D4
off_80165D4:    .word dword_86900A4
    .word 0x6017000, 0x20, 0x86900C4, 0x6017040, 0x20, 0x868E2E4
    .word 0x6017020, 0x20, 0x868E304, 0x6017060, 0x20, 0x0
    .word 0x8000
    .word 0x4000
// end of function sub_801657E

.thumb
sub_8016610:
    push {lr}
    ldr r0, [pc, #0x8016620-0x8016612-2] // off_8016624
    bl f800_80008EC
    ldr r0, [pc, #0x8016640-0x8016618-4] // =0x1000
    bl sub_8015DCC
    pop {pc}
off_8016620:    .word off_8016624
off_8016624:    .word dword_870A800
    .word 0x6016C00, 0x140, 0x874E688, 0x30027A0, 0x20, 0x0
off_8016640:    .word 0x1000
// end of function sub_8016610

.thumb
sub_8016644:
    push {lr}
    ldr r0, [pc, #0x8016660-0x8016646-2] // off_8016664
    bl f800_80008EC
    ldr r1, [pc, #0x8016684-0x801664c-4] // unk_20363F0
    mov r0, #0x3f 
    strb r0, [r1,#(byte_2036408 - 0x20363f0)]
    ldr r0, [pc, #0x8016680-0x8016652-2] // =0x2000
    bl sub_80158F8
    ldr r0, [pc, #0x8016680-0x8016658-4] // =0x2000
    bl sub_8015DCC
    pop {pc}
off_8016660:    .word off_8016664
off_8016664:    .word dword_874E088
    .word 0x6009580, 0x1C0, 0x874E688, 0x3002B90, 0x20, 0x0
off_8016680:    .word 0x2000
off_8016684:    .word unk_20363F0
// end of function sub_8016644

function_chunk_8016688:
    push {r4,r5,r7,lr}  // fix function chunks
    bl sub_80449E8
    cmp r0, #0
    beq loc_80166BC
    mov r1, #0
    sub r1, #1
    ldr r0, [pc, #0x8016a68-0x8016696-2] // unk_20363F0
    add r0, #0x2c 
    str r1, [r0]
    bl sub_80080B8
    push {r3}
    mov r0, #0
    add r4, r3, #0
    add r1, r2, #0
    ldr r2, [pc, #0x8016700-0x80166a8-4] // unk_203DCD0
    ldr r3, [pc, #0x8016704-0x80166aa-2] // =0x600ACC0
    bl sub_801686A
    pop {r1}
    ldr r2, [pc, #0x8016700-0x80166b2-2] // unk_203DCD0
    ldr r3, [pc, #0x8016704-0x80166b4-4] // =0x600ACC0
    bl sub_801689E
    b loc_80166F4
loc_80166BC:
    mov r1, #0
    sub r1, #1
    ldr r0, [pc, #0x8016a68-0x80166c0-4] // unk_20363F0
    add r0, #0x2c 
    str r1, [r0]
    add r4, r0, #0
    bl sub_8007E3E
    ldr r2, [pc, #0x8016700-0x80166cc-4] // unk_203DCD0
    ldr r3, [pc, #0x8016704-0x80166ce-2] // =0x600ACC0
    ldr r6, [pc, #0x8016708-0x80166d0-4] // dword_868E224
    push {r0,r2-r4,r6}
    ldr r0, [pc, #0x80166fc-0x80166d4-4] // unk_8748110
    ldrb r1, [r4]
    mov r4, #9
    mov r5, #1
    mov r7, #0
    bl sub_8053A04
    .byte 7
    .byte 0x1C
    .byte 0x5D 
    .byte 0xBC
    .byte 0xA
    .byte 0x49 
    .byte 0x52 
    .byte 0x18
    .byte 0x5B 
    .byte 0x18
    .byte 0x27 
    .byte 0x70 
    .byte 1
    .byte 0x34 
    .byte 1
    .byte 0x38 
    .byte 0xEE
    .byte 0xD1
loc_80166F4:
    ldr r0, [pc, #0x801670c-0x80166f4-4] // =0x800
    bl sub_8015DCC
    pop {r4,r5,r7,pc}
off_80166FC:    .word unk_8748110
off_8016700:    .word unk_203DCD0
dword_8016704:    .word 0x600ACC0
off_8016708:    .word dword_868E224
off_801670C:    .word 0x800
    .word 0x240
.thumb
sub_8016714:
    push {r4,r6,r7,lr}
    ldr r4, [pc, #0x8016750-0x8016716-2] // dword_203BE40
    mov r3, #3
loc_801671A:
    ldrb r2, [r4]
    cmp r2, #0
    beq loc_801672A
    add r4, #0x10
    sub r3, #1
    bne loc_801671A
    mov r0, #1
    b locret_801674C
loc_801672A:
    ldrb r0, [r5,#0xf]
    bl sub_8011824
    add r6, r0, #0
    bl sub_800AB54
    mov r1, #8
    ldrsb r1, [r6,r1]
    mul r0, r1
    sub r0, #8
    ldrb r1, [r6,#9]
    neg r1, r1
    str r0, [r4,#4]
    str r1, [r4,#8]
    str r5, [r4,#0xc]
    mov r0, #1
    strb r0, [r4]
locret_801674C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_8016750:    .word dword_203BE40
// end of function sub_8016714

    push {r1,r2,lr}
    mov r2, #0x80
    mul r0, r2
    ldr r1, [pc, #0x8016a68-0x801675a-2] // unk_20363F0
    ldrh r2, [r1,#(word_2036414 - 0x20363f0)]
    add r0, r0, r2
    strh r0, [r1,#(word_2036414 - 0x20363f0)]
    pop {r1,r2,pc}
.thumb
sub_8016764:
    push {r1,lr}
    ldr r1, [pc, #0x8016774-0x8016766-2] // =0x4000
    cmp r0, r1
    ble loc_801676E
    add r0, r1, #0
loc_801676E:
    ldr r1, [pc, #0x8016a68-0x801676e-2] // unk_20363F0
    strh r0, [r1,#(word_2036414 - 0x20363f0)]
    pop {r1,pc}
dword_8016774:    .word 0x4000
// end of function sub_8016764

.thumb
sub_8016778:
    push {lr}
    bl sub_801590C
    mov r0, #2
    bl sub_80158F8
    ldr r0, [pc, #0x80167c0-0x8016784-4] // dword_8707F20
    ldr r1, [pc, #0x80167c4-0x8016786-2] // =0x6009000
    ldr r2, [pc, #0x80167c8-0x8016788-4] // =0x380
    bl loc_8000874
    mov r0, #2
    bl sub_8015DCC
    pop {pc}
// end of function sub_8016778

.thumb
sub_8016796:
    push {lr}
    bl sub_801590C
    ldr r0, [pc, #0x80167c0-0x801679c-4] // dword_8707F20
    ldr r1, [pc, #0x80167c4-0x801679e-2] // =0x6009000
    ldr r2, [pc, #0x80167c8-0x80167a0-4] // =0x380
    bl loc_8000874
    ldr r0, [pc, #0x80167bc-0x80167a6-2] // =0x10000
    bl sub_80158F8
    ldr r0, [pc, #0x80167bc-0x80167ac-4] // =0x10000
    bl sub_8015DCC
    ldr r1, [pc, #0x8016a68-0x80167b2-2] // unk_20363F0
    mov r0, #0
    strb r0, [r1,#(byte_203640D - 0x20363f0)]
    strb r0, [r1,#(byte_203640E - 0x20363f0)]
    pop {pc}
dword_80167BC:    .word 0x10000
off_80167C0:    .word dword_8707F20
dword_80167C4:    .word 0x6009000
off_80167C8:    .word 0x380
// end of function sub_8016796

.thumb
sub_80167CC:
    push {r4,r6,r7,lr}
    ldr r0, [pc, #0x80167f8-0x80167ce-2] // dword_87082A0
    ldr r1, [pc, #0x80167fc-0x80167d0-4] // =0x6017100
    mov r2, #0xc0
    bl loc_8000874
    ldr r0, [pc, #0x8016800-0x80167d8-4] // dword_8708A60
    ldr r1, [pc, #0x8016804-0x80167da-2] // unk_30027E0
    mov r2, #0x20 
    bl loc_8000874
    ldr r0, [pc, #0x8016808-0x80167e2-2] // =0x20000
    bl sub_80158F8
    ldr r0, [pc, #0x8016808-0x80167e8-4] // =0x20000
    bl sub_8015DCC
    ldr r1, [pc, #0x8016a68-0x80167ee-2] // unk_20363F0
    mov r0, #0x3c 
    strb r0, [r1,#(byte_20363FE - 0x20363f0)]
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80167F8:    .word dword_87082A0
dword_80167FC:    .word 0x6017100
off_8016800:    .word dword_8708A60
off_8016804:    .word unk_30027E0
dword_8016808:    .word 0x20000
// end of function sub_80167CC

.thumb
sub_801680C:
    ldr r1, [pc, #0x8016a68-0x801680c-4] // unk_20363F0
    strh r0, [r1,#(word_2036416 - 0x20363f0)]
    mov pc, lr
// end of function sub_801680C

.thumb
sub_8016812:
    ldr r0, [pc, #0x8016a68-0x8016812-2] // unk_20363F0
    ldrh r0, [r0,#(word_2036414 - 0x20363f0)]
    mov pc, lr
// end of function sub_8016812

.thumb
sub_8016818:
    push {r4,r5,r7,lr}
    sub sp, sp, #0x18
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r0, #0
    ldr r2, [pc, #0x80168e0-0x8016826-2] // unk_203DCD0
    ldr r3, [pc, #0x80168e4-0x8016828-4] // =0x600ACC0
    ldr r1, [sp]
    ldr r4, [sp,#4]
    bl sub_801686A
// end of function sub_8016818

    ldr r1, [sp]
    cmp r1, #0xd
    bge loc_8016842
    ldr r1, [sp,#4]
    ldr r2, [pc, #0x80168e0-0x801683a-2] // unk_203DCD0
    ldr r3, [pc, #0x80168e4-0x801683c-4] // =0x600ACC0
    bl sub_801689E
loc_8016842:
    mov r0, #1
    ldr r1, [sp,#8]
    ldr r2, [pc, #0x80168ec-0x8016846-2] // unk_203DF10
    ldr r3, [pc, #0x80168f0-0x8016848-4] // =0x600AF00
    ldr r4, [sp,#0xc]
    bl sub_801686A
    ldr r1, [sp,#8]
    cmp r1, #0xd
    bge loc_8016860
    ldr r1, [sp,#0xc]
    ldr r2, [pc, #0x80168ec-0x8016858-4] // unk_203DF10
    ldr r3, [pc, #0x80168f0-0x801685a-2] // =0x600AF00
    bl sub_801689E
loc_8016860:
    ldr r0, [pc, #0x80168d8-0x8016860-4] // =0x40000
    bl sub_8015DCC
    add sp, sp, #0x18
    pop {r4,r5,r7,pc}
.thumb
sub_801686A:
    push {lr}
    cmp r1, #0xd
    bge loc_8016872
    mov r4, #0
loc_8016872:
    push {r0,r1,r4-r7}
    ldr r0, [pc, #0x80168f8-0x8016874-4] // dword_80168FC
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r1, r1, r4
    ldr r0, [pc, #0x80168dc-0x801687c-4] // unk_8748110
    mov r4, #9
    mov r5, #2
    ldr r6, [pc, #0x80168e8-0x8016882-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xF6
    .byte 0xBC
    .byte 0x76 
    .byte 0x4B 
    .byte 0x2C 
    .byte 0x33 
    .byte 0x5B 
    .byte 0x18
    .byte 1
    .byte 0x1C
    .byte 0xD
    .byte 0x2A 
    .byte 0
    .byte 0xDA
    .byte 3
    .byte 0x31 
    .byte 0x19
    .byte 0x70 
    .byte 0
    .byte 0xBD
// end of function sub_801686A

.thumb
sub_801689E:
    push {r7,lr}
    lsl r0, r0, #1
    mov r7, #0x20 
    mul r0, r7
    add r3, r3, r0
    add r2, r2, r0
    mov r7, r10
    ldr r7, [r7,#0x44]
    add r7, #0x70 
    lsl r1, r1, #2
    add r7, r7, r1
    mov r6, #0
loc_80168B6:
    push {r2-r7}
    ldrb r1, [r7,r6]
    mov r0, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x80168e8-0x80168be-2] // dword_868E224
    add r0, r0, r1
    add r1, r3, #0
    mov r2, #0x40 
    bl loc_8000874
    pop {r2-r7}
    add r2, #0x40 
    add r3, #0x40 
    add r6, #1
    cmp r6, #3
    bne loc_80168B6
    pop {r7,pc}
dword_80168D8:    .word 0x40000
off_80168DC:    .word unk_8748110
off_80168E0:    .word unk_203DCD0
dword_80168E4:    .word 0x600ACC0
off_80168E8:    .word dword_868E224
off_80168EC:    .word unk_203DF10
dword_80168F0:    .word 0x600AF00
    .word byte_8746D90
off_80168F8:    .word dword_80168FC
dword_80168FC:    .word 0x800000, 0x880084, 0x90008C, 0x980094, 0xA0009C, 0xA800A4
    .word 0xC800AC
// end of function sub_801689E

    lsl r4, r1, #3
.thumb
sub_801691A:
    push {r4,r5,r7,lr}
    ldr r0, [pc, #0x8016930-0x801691c-4] // dword_8708AC0
    ldr r1, [pc, #0x8016934-0x801691e-2] // =0x6009000
    ldr r2, [pc, #0x8016938-0x8016920-4] // =0x220
    bl loc_8000874
    ldr r0, [pc, #0x801693c-0x8016926-2] // =0x80000
    bl sub_8015DCC
    pop {r4,r5,r7,pc}
    .byte 0, 0
off_8016930:    .word dword_8708AC0
dword_8016934:    .word 0x6009000
off_8016938:    .word 0x220
dword_801693C:    .word 0x80000
// end of function sub_801691A

.thumb
sub_8016940:
    push {r5,lr}
    ldr r5, [pc, #0x8016a68-0x8016942-2] // unk_20363F0
    mov r0, #0
    strb r0, [r5,#(byte_2036406 - 0x20363f0)]
    mov r0, #0xff
    strb r0, [r5,#(byte_2036407 - 0x20363f0)]
    strb r0, [r5,#(byte_20363F3 - 0x20363f0)]
    ldr r0, [pc, #0x801695c-0x801694e-2] // =0x100000
    bl sub_80158F8
    ldr r0, [pc, #0x801695c-0x8016954-4] // =0x100000
    bl sub_8015DCC
    pop {r5,pc}
dword_801695C:    .word 0x100000
// end of function sub_8016940

.thumb
sub_8016960:
    push {r4,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800F448
    add r4, r1, #0
    mov r1, #0
    ldr r2, [pc, #0x80169ac-0x8016972-2] // loc_80169B0
    ldrb r0, [r2,r0]
    cmp r0, #5
    bne locret_80169A8
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800BFB8
    ldrb r1, [r0,#0x19]
    ldrb r0, [r0,#0x18]
    cmp r1, #0
    bpl loc_8016992
    mov r0, #0
    b locret_80169A8
loc_8016992:
    cmp r0, #0xff
    bne loc_801699A
    mov r1, #5
    b loc_80169A4
loc_801699A:
    sub r1, r1, r0
    bpl loc_80169A4
    mov r1, #0
    mov r0, #0
    b locret_80169A8
loc_80169A4:
    add r0, r4, #0
    add r0, #4
locret_80169A8:
    pop {r4,pc}
    .byte 0
    .byte 0
off_80169AC:    .word loc_80169B0
// end of function sub_8016960

loc_80169B0:
    lsl r0, r0, #8
    lsl r3, r0, #4
    lsl r5, r0, #0x10
.thumb
sub_80169B6:
    push {r1,lr}
    ldr r1, [pc, #0x8016a68-0x80169b8-4] // unk_20363F0
    strb r0, [r1,#(byte_2036406 - 0x20363f0)]
    pop {r1,pc}
// end of function sub_80169B6

.thumb
sub_80169BE:
    push {r5,lr}
    ldr r5, [pc, #0x8016a68-0x80169c0-4] // unk_20363F0
    strb r0, [r5,#(byte_20363F3 - 0x20363f0)]
    pop {r5,pc}
// end of function sub_80169BE

.thumb
sub_80169C6:
    push {r5,lr}
    ldr r0, [pc, #0x80169e4-0x80169c8-4] // dword_8708AA0
    ldr r1, [pc, #0x80169e8-0x80169ca-2] // unk_30027C0
    mov r2, #0x20 
    bl loc_8000874
    ldr r0, [pc, #0x80169e0-0x80169d2-2] // =0x200000
    bl sub_80158F8
    ldr r0, [pc, #0x80169e0-0x80169d8-4] // =0x200000
    bl sub_8015DCC
    pop {r5,pc}
dword_80169E0:    .word 0x200000
off_80169E4:    .word dword_8708AA0
off_80169E8:    .word unk_30027C0
// end of function sub_80169C6

.thumb
sub_80169EC:
    push {r5,lr}
    ldr r0, [pc, #0x8016a1c-0x80169ee-2] // dword_8708360
    ldr r1, [pc, #0x8016a20-0x80169f0-4] // =0x6017600
    ldr r2, [pc, #0x8016a24-0x80169f2-2] // =0xFF
    bl loc_8000874
    ldr r0, [pc, #0x8016a14-0x80169f8-4] // dword_8708AA0
    ldr r1, [pc, #0x8016a18-0x80169fa-2] // unk_30027C0
    mov r2, #0x20 
    bl loc_8000874
    ldr r0, [pc, #0x8016a10-0x8016a02-2] // =0x400000
    bl sub_80158F8
    ldr r0, [pc, #0x8016a10-0x8016a08-4] // =0x400000
    bl sub_8015DCC
    pop {r5,pc}
dword_8016A10:    .word 0x400000
off_8016A14:    .word dword_8708AA0
off_8016A18:    .word unk_30027C0
off_8016A1C:    .word dword_8708360
dword_8016A20:    .word 0x6017600
off_8016A24:    .word 0x100
// end of function sub_80169EC

.thumb
sub_8016A28:
    push {lr}
    ldr r0, [pc, #0x8016a44-0x8016a2a-2] // off_8016A48
    bl f800_80008EC
    ldr r1, [pc, #0x8016a68-0x8016a30-4] // unk_20363F0
    mov r0, #0x3f 
    strb r0, [r1,#(byte_2036408 - 0x20363f0)]
    ldr r0, [pc, #0x8016a64-0x8016a36-2] // =0x800000
    bl sub_80158F8
    ldr r0, [pc, #0x8016a64-0x8016a3c-4] // =0x800000
    bl sub_8015DCC
    pop {pc}
off_8016A44:    .word off_8016A48
off_8016A48:    .word dword_874E248
    .byte 0x80
    .byte 0x95
    .byte 0
    .byte 6
    .byte 0x80
    .byte 2
    .byte 0
    .byte 0
    .byte 0x88
    .byte 0xE6
    .byte 0x74 
    .byte 8
    .byte 0x90
    .byte 0x2B 
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
dword_8016A64:    .word 0x800000
off_8016A68:    .word unk_20363F0
unk_8016A6C:    .byte 0x46 
    .byte 0xD1
    .byte 0x44 
    .byte 0xD1
    .byte 0x44 
    .byte 0xD1
    .byte 0x44 
    .byte 0xD1
    .byte 0x44 
    .byte 0xD1
    .byte 0x46 
    .byte 0xD5
    .byte 0x47 
    .byte 0xD1
    .byte 0x45 
    .byte 0xD1
    .byte 0x45 
    .byte 0xD1
    .byte 0x45 
    .byte 0xD1
    .byte 0x45 
    .byte 0xD1
    .byte 0x47 
    .byte 0xD5
dword_8016A84:    .word 0xD08BD089, 0xD08BD08B, 0xD08BD08B, 0xD08CD08B, 0xD08ED08D
    .word 0xD08BD08F, 0xD08BD08B, 0xD08BD08B, 0xD489D08B, 0x9080D08A
    .word 0x90809080, 0x90809080, 0x90809080, 0x90809080, 0x90809080
    .word 0x90809080, 0x90809080, 0xD48A9080
dword_8016ACC:    .word 0xD0AED0AC, 0xD0B2D0B0, 0xD0B6D0B4, 0xD0BAD0B8, 0xD0BED0BC
    .word 0xD0C2D0C0, 0xD0C6D0C4, 0xD0AFD0AD, 0xD0B3D0B1, 0xD0B7D0B5
    .word 0xD0BBD0B9, 0xD0BFD0BD, 0xD0C3D0C1, 0xD0C7D0C5
unk_8016B04:    .byte 0xAC
    .byte 0xD0
    .byte 0xAE
    .byte 0xD0
    .byte 0xB0
    .byte 0xD0
    .byte 0xB2
    .byte 0xD0
    .byte 0xB4
    .byte 0xD0
    .byte 0xB6
    .byte 0xD0
    .byte 0xB8
    .byte 0xD0
    .byte 0xBA
    .byte 0xD0
    .byte 0xAD
    .byte 0xD0
    .byte 0xAF
    .byte 0xD0
    .byte 0xB1
    .byte 0xD0
    .byte 0xB3
    .byte 0xD0
    .byte 0xB5
    .byte 0xD0
    .byte 0xB7
    .byte 0xD0
    .byte 0xB9
    .byte 0xD0
    .byte 0xBB
    .byte 0xD0
dword_8016B24:    .word 0xD0AED0AC, 0xD0B2D0B0, 0xD0B6D0B4, 0xD0BAD0B8, 0xD0AFD0AD
    .word 0xD0B3D0B1, 0xD0B7D0B5, 0xD0BBD0B9
off_8016B44:    .word unk_8016BE8
    .word unk_8016C3C
    .word unk_8016C90
    .word unk_8016CE4
    .word dword_8016D3C
    .word dword_8016D90
    .word unk_8016DE4
    .word unk_8016E38
    .word unk_8016E8C
    .word dword_8016EE4
    .word unk_8016F38
    .word dword_8016F8C
    .word word_8016FE0
    .word dword_8017038
    .word dword_801708C
    .word dword_80170E0
    .word dword_8017134
    .word dword_8017188
    .word dword_80171DC
    .word dword_8017230
    .word dword_8017284
    .word dword_80172D8
    .word dword_801732C
    .word dword_8017380
    .word dword_80173D4
    .word dword_8017428
    .word dword_801747C
    .word dword_80174D0
    .word dword_8017524
    .word dword_8017578
    .word dword_80175CC
    .word dword_8017620
    .word dword_8017674
    .word dword_80176C8
    .word dword_801771C
    .word dword_8017770
    .word dword_80177C4
    .word dword_8017818
    .word dword_801786C
    .word dword_80178C0
    .word dword_8017914
unk_8016BE8:    .byte 0x34 
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
unk_8016C3C:    .byte 0x34 
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD9
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
unk_8016C90:    .byte 0x2C 
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
unk_8016CE4:    .byte 0x30 
    .byte 0x40 
    .byte 1
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0x68 
    .byte 0x40 
    .byte 0
    .byte 0
dword_8016D3C:    .word 0x403C, 0x874DAC8, 0x874DA48, 0x874D508, 0x874D5C8
    .word 0x874D708, 0x874D3C8, 0x874D688, 0x874DA48, 0x874D888
    .word 0x874D8C8, 0x874D808, 0x874D708, 0x874DA88, 0x874DA48
    .word 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_8016D90:    .word 0x4048, 0x874DAC8, 0x874DA48, 0x874D9C8, 0x874D748
    .word 0x874D8C8, 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708
    .word 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4
    .word 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
unk_8016DE4:    .byte 0x48 
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD9
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD7
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
unk_8016E38:    .byte 0x54 
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD9
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
unk_8016E8C:    .byte 0x44 
    .byte 0x40 
    .byte 1
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0xC4
    .byte 0x79 
    .byte 1
    .byte 8
    .byte 0x8C
    .byte 0x40 
    .byte 0
    .byte 0
dword_8016EE4:    .word 0x21810, 0x874DB48, 0x874DB88, 0x874DBC8, 0x874DC08
    .word 0x874DC48, 0x874DC88, 0x874DCC8, 0x874DD08, 0x874DD48
    .word 0x874DD88, 0x874DDC8, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
unk_8016F38:    .byte 0x28 
    .byte 0x10
    .byte 2
    .byte 0
    .byte 0xC8
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD5
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD5
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD3
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD5
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xD6
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD8
    .byte 0x74 
    .byte 8
    .byte 0x88
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xD5
    .byte 0x74 
    .byte 8
    .byte 0xC8
    .byte 0xD4
    .byte 0x74 
    .byte 8
    .byte 0x48 
    .byte 0xDA
    .byte 0x74 
    .byte 8
    .byte 8
    .byte 0xDB
    .byte 0x74 
    .byte 8
dword_8016F8C:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D508, 0x874D688
    .word 0x874D3C8, 0x874D548, 0x874DA48, 0x874D488, 0x874D4C8
    .word 0x874D688, 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
word_8016FE0:    .hword 0x4028
byte_8016FE2:    .byte 0x1
    .byte 0x0
off_8016FE4:    .word dword_874DAC8
    .word dword_874DA48
    .word dword_874D408
    .word dword_874D3C8
    .word unk_874D888
    .word unk_874D888
    .word dword_874D688
    .word dword_874D4C8
    .word dword_874DA48
    .word dword_874DA48
    .word dword_874DA48
    .word dword_874DA48
    .word dword_874D848
    .word unk_874D888
    .word dword_874D3C8
    .word dword_874D808
    .word unk_874D888
    .word dword_874DA88
    .word dword_874DA48
    .word dword_874DB08
    .word 0x4070
dword_8017038:    .word 0x21888, 0x874DB48, 0x874DB88, 0x874DBC8, 0x874DC08
    .word 0x874DC48, 0x874DC88, 0x874DCC8, 0x874DD08, 0x874DD48
    .word 0x874DD88, 0x874DDC8, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_801708C:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D808, 0x874D748
    .word 0x874D448, 0x874D648, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80170E0:    .word 0x4044, 0x874DAC8, 0x874DA48, 0x874D808, 0x874D748
    .word 0x874D688, 0x874D688, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4
    .word 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_8017134:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D548, 0x874D8C8
    .word 0x874D888, 0x874D848, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_8017188:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874D488, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80171DC:    .word 0x4030, 0x874DAC8, 0x874DA48, 0x874D848, 0x874D4C8
    .word 0x874D3C8, 0x874D808, 0x874D448, 0x874D588, 0x874D6C8
    .word 0x874D3C8, 0x874D708, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4
    .word 0x80179C4
dword_8017230:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D508, 0x874D5C8
    .word 0x874D808, 0x874D4C8, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_8017284:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D888, 0x874D588
    .word 0x874D8C8, 0x874D708, 0x874D488, 0x874D4C8, 0x874D808
    .word 0x874D6C8, 0x874D3C8, 0x874D708, 0x874DA48, 0x874D948
    .word 0x874D5C8, 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_80172D8:    .word 0x4040, 0x874DAC8, 0x874DA48, 0x874D408, 0x874D688
    .word 0x874D8C8, 0x874D4C8, 0x874D848, 0x874DA48, 0x874D948
    .word 0x874D5C8, 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08
    .word 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_801732C:    .word 0x4030, 0x874DAC8, 0x874DA48, 0x874D708, 0x874D8C8
    .word 0x874D6C8, 0x874D408, 0x874D4C8, 0x874D808, 0x874D6C8
    .word 0x874D3C8, 0x874D708, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4
    .word 0x80179C4
dword_8017380:    .word 0x4034, 0x874DAC8, 0x874DA48, 0x874D6C8, 0x874D4C8
    .word 0x874D888, 0x874D3C8, 0x874D688, 0x874D6C8, 0x874D3C8
    .word 0x874D708, 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708
    .word 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80173D4:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D608, 0x874D8C8
    .word 0x874D708, 0x874D648, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_8017428:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D3C8, 0x874D7C8
    .word 0x874D8C8, 0x874D3C8, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_801747C:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D948, 0x874D748
    .word 0x874D748, 0x874D488, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80174D0:    .word 0x4028, 0x874DAC8, 0x874DA48, 0x874D708, 0x874D748
    .word 0x874D808, 0x874D6C8, 0x874D3C8, 0x874D688, 0x874DA48
    .word 0x874D708, 0x874D3C8, 0x874D908, 0x874D5C8, 0x874DA48
    .word 0x874D948, 0x874D5C8, 0x874D708, 0x874DA88, 0x874DA48
    .word 0x874DB08
dword_8017524:    .word 0x4030, 0x874DAC8, 0x874DA48, 0x874D588, 0x874D4C8
    .word 0x874D4C8, 0x874D688, 0x874DA48, 0x874D708, 0x874D3C8
    .word 0x874D908, 0x874D5C8, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874DA88, 0x874DA48, 0x874DB08, 0x80179C4
    .word 0x80179C4
dword_8017578:    .word 0x4038, 0x874DAC8, 0x874DA48, 0x874D808, 0x874D748
    .word 0x874D688, 0x874D688, 0x874DA48, 0x874D488, 0x874D4C8
    .word 0x874D688, 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488
    .word 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80175CC:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D548, 0x874D8C8
    .word 0x874D888, 0x874D848, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_8017620:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D948, 0x874D5C8
    .word 0x874D708, 0x874D488, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_8017674:    .word 0x402C, 0x874DAC8, 0x874D848, 0x874D4C8, 0x874D3C8
    .word 0x874D808, 0x874D448, 0x874D588, 0x874D6C8, 0x874D3C8
    .word 0x874D708, 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688
    .word 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488, 0x874DB08
    .word 0x80179C4
dword_80176C8:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D508, 0x874D5C8
    .word 0x874D808, 0x874D4C8, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_801771C:    .word 0x4028, 0x874DAC8, 0x874D888, 0x874D588, 0x874D8C8
    .word 0x874D708, 0x874D488, 0x874D4C8, 0x874D808, 0x874D6C8
    .word 0x874D3C8, 0x874D708, 0x874DA48, 0x874D488, 0x874D4C8
    .word 0x874D688, 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488
    .word 0x874DB08
dword_8017770:    .word 0x4034, 0x874DAC8, 0x874DA48, 0x874D408, 0x874D688
    .word 0x874D8C8, 0x874D4C8, 0x874D848, 0x874DA48, 0x874D488
    .word 0x874D4C8, 0x874D688, 0x874D4C8, 0x874D888, 0x874D4C8
    .word 0x874D488, 0x874DA48, 0x874DB08, 0x80179C4, 0x80179C4
    .word 0x80179C4
dword_80177C4:    .word 0x402C, 0x874DAC8, 0x874D708, 0x874D8C8, 0x874D6C8
    .word 0x874D408, 0x874D4C8, 0x874D808, 0x874D6C8, 0x874D3C8
    .word 0x874D708, 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688
    .word 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488, 0x874DB08
    .word 0x80179C4
dword_8017818:    .word 0x4028, 0x874DAC8, 0x874DA48, 0x874D6C8, 0x874D4C8
    .word 0x874D888, 0x874D3C8, 0x874D688, 0x874D6C8, 0x874D3C8
    .word 0x874D708, 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688
    .word 0x874D4C8, 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48
    .word 0x874DB08
dword_801786C:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D608, 0x874D8C8
    .word 0x874D708, 0x874D648, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_80178C0:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D3C8, 0x874D7C8
    .word 0x874D8C8, 0x874D3C8, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
dword_8017914:    .word 0x402C, 0x874DAC8, 0x874DA48, 0x874D948, 0x874D748
    .word 0x874D748, 0x874D488, 0x874D6C8, 0x874D3C8, 0x874D708
    .word 0x874DA48, 0x874D488, 0x874D4C8, 0x874D688, 0x874D4C8
    .word 0x874D888, 0x874D4C8, 0x874D488, 0x874DA48, 0x874DB08
    .word 0x80179C4
off_8017968:    .word dword_874DE08
    .word dword_874DE48
    .word dword_874DE88
    .word dword_874DEC8
    .word dword_874DF08
    .word dword_874DF48
    .word dword_874DF88
    .word dword_874DFC8
    .word dword_874E008
    .word dword_874E048
    .word dword_80179C4
off_8017994:    .word dword_8705BC0
    .word dword_8705C00
    .word dword_8705C40
    .word dword_8705C80
    .word dword_8705CC0
    .word dword_8705D00
    .word dword_8705D40
    .word dword_8705D80
    .word dword_8705DC0
    .word dword_8705E00
    .word dword_80179C4
    .word dword_8705E80
dword_80179C4:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
// end of function sub_8016A28

.thumb
sub_8017A04:
    push {lr}
    ldr r3, [pc, #0x8017ba8-0x8017a06-2] // dword_203F6D4
    mov r0, #0
    str r0, [r3]
    ldr r3, [pc, #0x8017bac-0x8017a0c-4] // word_2037BC0
    mov r0, #0
    strh r0, [r3]
    mov r0, #0xff
    strb r0, [r3,#(byte_2037BC2 - 0x2037bc0)]
    ldr r0, [pc, #0x8017bb0-0x8017a16-2] // dword_203E390
    ldr r1, [pc, #0x8017bb4-0x8017a18-4] // =0x200
    bl f900_8000950
    ldr r0, [pc, #0x8017bb8-0x8017a1e-2] // dword_203BD40
    ldr r1, [pc, #0x8017bbc-0x8017a20-4] // =0xFF
    bl f900_8000950
    pop {pc}
// end of function sub_8017A04

.thumb
sub_8017A28:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r0, [r3,#0xf]
    cmp r0, #0x46 
    bge loc_8017A3A
    bl sub_8022D04
    beq locret_8017A50
loc_8017A3A:
    bl sub_80481C8
    mov r0, #0x10
    mov r1, #0
    mov r2, #2
    mov r3, #0
    bl sub_80480B4
    ldr r3, [pc, #0x8017bc0-0x8017a4a-2] // dword_203F6D4
    mov r0, #1
    strb r0, [r3]
locret_8017A50:
    pop {r4,pc}
// end of function sub_8017A28

.thumb
sub_8017A52:
    ldr r3, [pc, #0x8017bc4-0x8017a52-2] // dword_203F6D4
    ldrb r0, [r3]
    mov pc, lr
// end of function sub_8017A52

.thumb
sub_8017A58:
    ldr r1, [pc, #0x8017bc8-0x8017a58-4] // dword_203F6D4
    mov r0, #0
    strb r0, [r1]
    mov pc, lr
// end of function sub_8017A58

.thumb
sub_8017A60:
    push {r4,lr}
    ldr r4, [pc, #0x8017bcc-0x8017a62-2] // dword_203F6D4
    mov r0, #2
    strb r0, [r4,#(dword_203F6D4+1 - 0x203f6d4)]
    ldrb r0, [r4]
    tst r0, r0
    beq loc_8017AB2
    mov r0, #0x11
    mov r1, #0x87
    bl sub_8024FF0
    beq loc_8017AAA
    bl sub_80481EC
    strb r0, [r4,#(dword_203F6D4+1 - 0x203f6d4)]
    cmp r0, #2
    bne locret_8017AC6
    push {r5}
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldrb r0, [r5,#0xf]
    cmp r0, #0x47 
    pop {r5}
    bne locret_8017AC6
    mov r0, #0
    bl sub_8111698
    cmp r0, #1
    bne loc_8017AA4
    mov r0, #3
    bl sub_8111698
    cmp r0, #1
    beq locret_8017AC6
loc_8017AA4:
    mov r0, #4
    strb r0, [r4,#(dword_203F6D4+1 - 0x203f6d4)]
    b locret_8017AC6
loc_8017AAA:
    bl sub_80481EC
    strb r0, [r4,#(dword_203F6D4+1 - 0x203f6d4)]
    b locret_8017AC6
loc_8017AB2:
    ldr r0, [pc, #0x8017bd0-0x8017ab2-2] // word_2037BC0
    ldr r1, [pc, #0x8017bd4-0x8017ab4-4] // word_203AC10
    mov r2, #0x10
    bl f900_800098C
    ldr r0, [pc, #0x8017bd8-0x8017abc-4] // word_2037BC0
    ldr r1, [pc, #0x8017bdc-0x8017abe-2] // word_203AC20
    mov r2, #0x10
    bl f900_800098C
locret_8017AC6:
    pop {r4,pc}
// end of function sub_8017A60

.thumb
sub_8017AC8:
    ldr r0, [pc, #0x8017be0-0x8017ac8-4] // dword_203F6D4
    ldrb r0, [r0,#(dword_203F6D4+1 - 0x203f6d4)]
    mov pc, lr
// end of function sub_8017AC8

.thumb
sub_8017ACE:
    push {r4-r7,lr}
    sub sp, sp, #4
    cmp r0, #8
    beq loc_8017B42
    ldr r4, [pc, #0x8017be4-0x8017ad6-2] // dword_203F6D4
    ldr r5, [pc, #0x8017be8-0x8017ad8-4] // word_203AC10
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldr r7, [pc, #0x8017bec-0x8017ade-2] // dword_203E390
    ldrh r1, [r5]
    mov r2, #0xfc
    lsl r2, r2, #8
    and r2, r1
    beq loc_8017B0C
    mov r0, #0
    bl sub_800793C
    ldrb r1, [r5,#(byte_203AC18 - 0x203ac10)]
    strb r1, [r6,#0x14]
    ldrh r1, [r5,#(word_203AC1A - 0x203ac10)]
    ldr r0, [pc, #0x8017bf0-0x8017af6-2] // unk_20374B0
    strh r1, [r0,#(word_20374DC - 0x20374b0)]
    bl sub_80486EC
    mov r0, #(byte_203AC12 - 0x203ac10)
    ldrsb r0, [r5,r0]
    tst r0, r0
    blt loc_8017B0C
    lsl r0, r0, #2
    ldr r1, [r5,#(dword_203AC14 - 0x203ac10)]
    str r1, [r7,r0]
loc_8017B0C:
    add r5, #0x10
    ldr r7, [pc, #0x8017bf4-0x8017b0e-2] // dword_203E490
    ldrb r1, [r4]
    tst r1, r1
    beq loc_8017B20
    ldrh r1, [r5]
    mov r2, #0xfc
    lsl r2, r2, #8
    and r2, r1
    beq loc_8017B42
loc_8017B20:
    mov r0, #1
    bl sub_800793C
    ldrb r1, [r5,#(byte_203AC28 - 0x203ac20)]
    strb r1, [r6,#0x15]
    ldrh r1, [r5,#(word_203AC2A - 0x203ac20)]
    ldr r0, [pc, #0x8017bf8-0x8017b2c-4] // unk_2037660
    strh r1, [r0,#(word_203768C - 0x2037660)]
    bl sub_8048714
    mov r0, #(byte_203AC22 - 0x203ac20)
    ldrsb r0, [r5,r0]
    tst r0, r0
    blt loc_8017B42
    lsl r0, r0, #2
    ldr r1, [r5,#(dword_203AC24 - 0x203ac20)]
    str r1, [r7,r0]
loc_8017B42:
    ldr r5, [pc, #0x8017bfc-0x8017b42-2] // word_2037BC0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r1, [r0]
    strh r1, [r5]
    str r1, [sp]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0x11]
    strb r1, [r5,#(byte_2037BC8 - 0x2037bc0)]
    mov r0, #4
    bl sub_8048660
    strh r0, [r5,#(word_2037BCA - 0x2037bc0)]
    bl sub_81116AC
    strh r0, [r5,#(word_2037BCC - 0x2037bc0)]
    bl sub_81116B8
    strh r0, [r5,#(word_2037BCE - 0x2037bc0)]
    ldrb r0, [r4,#2]
    mov r1, #1
    tst r0, r1
    beq loc_8017B88
    mov r0, #3
    ldrsb r0, [r4,r0]
    sub r0, #1
    strb r0, [r4,#3]
    blt loc_8017B88
    strb r0, [r5,#(byte_2037BC2 - 0x2037bc0)]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8017c00-0x8017b80-4] // dword_203BD40
    ldr r0, [r0,r1]
    str r0, [r5,#(dword_2037BC4 - 0x2037bc0)]
    b loc_8017B94
loc_8017B88:
    ldrb r0, [r4,#2]
    mov r1, #1
    bic r0, r1
    strb r0, [r4,#2]
    mov r0, #0xff
    strb r0, [r5,#(byte_2037BC2 - 0x2037bc0)]
loc_8017B94:
    add sp, sp, #4
    pop {r4-r7,pc}
// end of function sub_8017ACE

.thumb
sub_8017B98:
    ldr r3, [pc, #0x8017c04-0x8017b98-4] // dword_203F6D4
    strb r0, [r3,#(dword_203F6D4+3 - 0x203f6d4)]
    ldrb r0, [r3,#(dword_203F6D4+2 - 0x203f6d4)]
    mov r1, #1
    orr r0, r1
    strb r0, [r3,#(dword_203F6D4+2 - 0x203f6d4)]
    mov pc, lr  // <endpool>
// end of function sub_8017B98

    .balign 4, 0x00
off_8017BA8:    .word dword_203F6D4  // <endpool> file pool
off_8017BAC:    .word word_2037BC0
off_8017BB0:    .word dword_203E390
off_8017BB4:    .word 0x200
off_8017BB8:    .word dword_203BD40
off_8017BBC:    .word 0x100
off_8017BC0:    .word dword_203F6D4
off_8017BC4:    .word dword_203F6D4
off_8017BC8:    .word dword_203F6D4
off_8017BCC:    .word dword_203F6D4
off_8017BD0:    .word word_2037BC0
off_8017BD4:    .word word_203AC10
off_8017BD8:    .word word_2037BC0
off_8017BDC:    .word word_203AC20
off_8017BE0:    .word dword_203F6D4
off_8017BE4:    .word dword_203F6D4
off_8017BE8:    .word word_203AC10
off_8017BEC:    .word dword_203E390
off_8017BF0:    .word unk_20374B0
off_8017BF4:    .word dword_203E490
off_8017BF8:    .word unk_2037660
off_8017BFC:    .word word_2037BC0
off_8017C00:    .word dword_203BD40
off_8017C04:    .word dword_203F6D4
/*For debugging purposes, connect comment at any range!*/
