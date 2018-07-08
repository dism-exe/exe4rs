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

