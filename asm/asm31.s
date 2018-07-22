.include "asm31.inc"

.thumb
sub_821283E:
    push {lr}
    ldr r0, [pc, #0x8212864-0x8212840-4] // =sub_80481B2+1
    mov lr, pc
    bx r0
    pop {r0}
    mov lr, r0
    push {lr}
    bl sub_8212868
    pop {r0}
    mov lr, r0
    ldr r0, [pc, #0x8212860-0x8212854-4] // =dword_200ACB0
    ldr r1, [r0]
    add r1, #1
    str r1, [r0]
    bx lr
    .byte 0, 0
off_8212860:    .word dword_200ACB0
off_8212864:    .word sub_80481B2+1
// end of function sub_821283E

.thumb
sub_8212868:
    push {lr}
    ldr r1, [pc, #0x82128ac-0x821286a-2] // =dword_2008920
    ldrb r3, [r1]
    tst r3, r3
    beq locret_82128A8
    ldr r0, [pc, #0x82128b0-0x8212872-2] // =DMA0SourceAddress
    ldr r1, [pc, #0x82128b4-0x8212874-4] // =0x22000000
    ldr r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    and r2, r1
    str r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    cmp r3, #0x80
    bne loc_8212888
    ldr r1, [pc, #0x82128ac-0x8212880-4] // =dword_2008920
    mov r0, #0
    strb r0, [r1]
    b locret_82128A8
loc_8212888:
    ldr r1, [pc, #0x82128ac-0x8212888-4] // =dword_2008920
    ldr r2, [pc, #0x82128b8-0x821288a-2] // =unk_2009940
    str r2, [r0]
    ldr r2, [r1,#0x8] // (dword_2008928 - 0x2008920)
    str r2, [r0,#0x4] // (DMA0DestinationAddress - 0x40000b0)
    ldrb r2, [r1,#0x1] // (dword_2008920+1 - 0x2008920)
    ldrh r3, [r1,#0x2] // (dword_2008920+2 - 0x2008920)
    lsl r3, r3, #0x10
    orr r2, r3
    str r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    ldr r0, [r1,#0x4] // (dword_2008924 - 0x2008920)
    ldr r1, [pc, #0x82128b8-0x821289e-2] // =unk_2009940
    ldr r2, [pc, #0x82128bc-0x82128a0-4] // =0x500
    ldr r3, [pc, #0x82128c0-0x82128a2-2] // =sub_8006078+1
    mov lr, pc
    bx r3
locret_82128A8:
    pop {pc}
    .balign 4, 0x00
off_82128AC:    .word dword_2008920
off_82128B0:    .word DMA0SourceAddress
dword_82128B4:    .word 0x22000000
off_82128B8:    .word unk_2009940
off_82128BC:    .word 0x500
off_82128C0:    .word sub_8006078+1
// end of function sub_8212868

.thumb
sub_82128C4:
    push {lr}
    push {lr}
    ldr r0, [pc, #0x82128e4-0x82128c8-4] // =f500_8000550+1
    mov lr, pc
    bx r0
    pop {r0}
    mov lr, r0
    ldr r0, [pc, #0x82128e0-0x82128d2-2] // =sub_8000538+1
    mov lr, pc
    bx r0
    pop {r0}
    bx r0
    .word dword_200A4D0
off_82128E0:    .word sub_8000538+1
off_82128E4:    .word f500_8000550+1
// end of function sub_82128C4

    sub sp, sp, #4
    str r0, [sp]
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    add r4, r4, r0
    add r5, r5, r1
loc_82128F8:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_821290E
    lsl r7, r0, #1
    lsl r2, r1, #6
    add r2, r2, r7
    ldrh r7, [r3]
    strh r7, [r6,r2]
loc_821290E:
    add r3, #2
    add r0, #1
    cmp r0, r4
    blt loc_82128F8
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt loc_82128F8
    add sp, sp, #4
    mov pc, lr
    sub sp, sp, #4
    str r0, [sp]
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    add r4, r4, r0
    add r5, r5, r1
loc_8212932:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_8212948
    add r7, r0, #0
    lsl r2, r1, #5
    add r2, r2, r7
    ldrb r7, [r3]
    strb r7, [r6,r2]
loc_8212948:
    add r3, #1
    add r0, #1
    cmp r0, r4
    blt loc_8212932
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt loc_8212932
    add sp, sp, #4
    mov pc, lr
    sub sp, sp, #4
    str r0, [sp]
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    add r4, r4, r0
    add r5, r5, r1
loc_821296C:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_8212980
    lsl r7, r0, #1
    lsl r2, r1, #6
    add r2, r2, r7
    strh r3, [r6,r2]
loc_8212980:
    add r0, #1
    cmp r0, r4
    blt loc_821296C
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt loc_821296C
    add sp, sp, #4
    mov pc, lr
    sub sp, sp, #4
    str r0, [sp]
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    add r4, r4, r0
    add r5, r5, r1
loc_82129A2:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_82129B6
    add r7, r0, #0
    lsl r2, r1, #5
    add r2, r2, r7
    strb r3, [r6,r2]
loc_82129B6:
    add r0, #1
    cmp r0, r4
    blt loc_82129A2
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt loc_82129A2
    add sp, sp, #4
    mov pc, lr
loc_82129C8:
    push {r5,lr}
    cmp r6, #0
    ble locret_82129F0
    mov r12, r0
    ldr r1, [pc, #0x82129f4-0x82129d0-4] // =0x3005AF8
    ldr r2, [r1,r2]
    mov r9, r2
    ldr r2, [pc, #0x8212a00-0x82129d6-2] // =0x7BDE
    ldr r3, [pc, #0x8212a04-0x82129d8-4] // =0x8420
    ldr r1, [pc, #0x8212a08-0x82129da-2] // =0x3D0C
    mov r8, r1
    sub r6, #2
loc_82129E0:
    mov r0, r12
    ldrh r1, [r7,r6]
    mov r4, r9
    mov lr, pc
    bx r4
    strh r0, [r7,r6]
    sub r6, #2
    bge loc_82129E0
locret_82129F0:
    pop {r5,pc}
    .balign 4, 0x00
dword_82129F4:    .word 0x3005AF8
    .word 0x3005B0D, 0x3005B2F
dword_8212A00:    .word 0x7BDE
dword_8212A04:    .word 0x8420
dword_8212A08:    .word 0x3DEF
    add r4, r0, #0
    and r4, r1
    lsl r4, r4, #1
    add r5, r0, #0
    eor r5, r1
    and r5, r2
    add r4, r4, r5
    and r4, r3
    lsl r4, r4, #0x10
    lsr r4, r4, #0x15
    add r4, r8
    add r0, r0, r1
    mov r1, r8
    eor r4, r1
    sub r0, r0, r4
    orr r0, r4
    mov pc, lr
    mvn r5, r1
    add r4, r0, #0
    and r4, r5
    lsl r4, r4, #1
    eor r5, r0
    and r5, r2
    add r4, r4, r5
    and r4, r3
    lsl r4, r4, #0x10
    lsr r4, r4, #0x15
    add r4, r8
    mov r5, r8
    eor r4, r5
    orr r1, r4
    orr r0, r4
    sub r0, r1, r0
    mov pc, lr
    push {r5,lr}
    cmp r6, #0
    ble locret_8212A82
    mov r12, r0
    ldr r1, [pc, #0x8212a84-0x8212a58-4] // =0x3005B88
    ldr r1, [r1,r2]
    mov r9, r1
    add r5, r2, #0
    mov r4, #0x1f
    mov r1, r12
    mov r2, r12
    mov r3, r12
    and r1, r4
    lsr r2, r2, #5
    and r2, r4
    lsr r3, r3, #0xa
    and r3, r4
    sub r6, #2
loc_8212A74:
    ldrh r5, [r7,r6]
    mov r4, r9
    mov lr, pc
    bx r4
    strh r0, [r7,r6]
    sub r6, #2
    bge loc_8212A74
locret_8212A82:
    pop {r5,pc}
dword_8212A84:    .word 0x3005B88
    .word 0
    .byte 0, 0, 0, 0
    ldrh r1, [r3,r6]
    lsl r0, r0, #0xc
    ldrh r3, [r2,r7]
    lsl r0, r0, #0xc
    mov r8, r5
    lsl r0, r5, #0x1b
    lsr r0, r0, #0x1b
    lsl r4, r5, #0x16
    lsr r4, r4, #0x1b
    lsl r5, r5, #0x11
    lsr r5, r5, #0x1b
    mov r12, r1
    mov r1, #0x1f
    sub r0, r1, r0
    sub r4, r1, r4
    sub r5, r1, r5
    mov r1, r12
    lsl r0, r0, #0xc
    lsl r4, r4, #0xc
    lsl r5, r5, #0xc
    mul r0, r1
    mul r4, r2
    mul r5, r3
    lsr r0, r0, #0x10
    lsr r4, r4, #0x10
    lsr r5, r5, #0x10
    lsl r4, r4, #5
    lsl r5, r5, #0xa
    orr r0, r4
    orr r0, r5
    mov r5, r8
    add r0, r5, r0
    mov pc, lr
    mov r8, r5
    lsl r0, r5, #0x1b
    lsr r0, r0, #0x1b
    lsl r4, r5, #0x16
    lsr r4, r4, #0x1b
    lsl r5, r5, #0x11
    lsr r5, r5, #0x1b
    lsl r0, r0, #0xc
    lsl r4, r4, #0xc
    lsl r5, r5, #0xc
    mul r0, r1
    mul r4, r2
    mul r5, r3
    lsr r0, r0, #0x10
    lsr r4, r4, #0x10
    lsr r5, r5, #0x10
    lsl r4, r4, #5
    lsl r5, r5, #0xa
    orr r0, r4
    orr r0, r5
    mov r5, r8
    sub r0, r5, r0
    mov pc, lr
    push {r5,lr}
    ldrb r7, [r5,#2]
    lsr r7, r7, #4
    lsl r7, r7, #4
    add r5, r5, r7
    ldrb r1, [r5,#3]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r5,#3]
    mov r2, #2
    tst r1, r2
    bne loc_8212B1E
    mov r1, #0
    str r1, [r5,#0x24]
    b locret_8212BBA
loc_8212B1E:
    ldr r1, [pc, #0x8212bbc-0x8212b1e-2] // =0x5CC0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r6, [r0]
    mov r8, r0
    ldr r7, [r5,#0x1c]
    ldr r7, [r7]
    ldr r1, [r5,#0x18]
    add r7, r7, r1
    mov r12, r7
    bl sub_8212C80
    beq loc_8212B90
    ldrh r2, [r5,#8]
    mov r0, r8
    ldrh r1, [r0]
    cmp r1, r2
    beq loc_8212B48
    mov r2, #0
    str r2, [r5,#0x24]
loc_8212B48:
    mov r4, r12
    ldr r4, [r4]
    lsr r4, r4, #5
    mov r0, r8
    bl sub_8212ED4
    beq loc_8212B64
    ldrb r1, [r5,#3]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r5,#3]
    mov r2, #0
    str r2, [r5,#0x24]
    b locret_8212BBA
loc_8212B64:
    bl sub_8212CA0
    strh r1, [r5,#8]
    add r4, r4, r1
    strh r4, [r0]
    ldr r2, [r5,#0x24]
    mov r0, r12
    cmp r0, r2
    beq loc_8212B96
    str r0, [r5,#0x24]
    mov r8, r5
    ldr r2, [r0]
    add r0, #4
    ldr r1, [pc, #0x8212bd8-0x8212b7e-2] // =0x6010000
    ldrh r3, [r5,#8]
    lsl r3, r3, #5
    add r1, r1, r3
    ldr r7, [pc, #0x8212bdc-0x8212b86-2] // =loc_8000874+1
    mov lr, pc
    bx r7
    mov r5, r8
    b loc_8212B96
loc_8212B90:
    strh r0, [r5,#8]
    mov r0, r12
    str r0, [r5,#0x24]
loc_8212B96:
    ldrb r1, [r5,#0x15]
    mov r2, #0xf0
    and r1, r2
    mov r2, #0xf0
    cmp r1, r2
    bge locret_8212BBA
    ldrb r1, [r5,#3]
    mov r2, #0x10
    tst r1, r2
    bne locret_8212BBA
    bl sub_8212BE0
    ldrb r1, [r5,#0x15]
    mov r2, #0xf0
    bic r1, r2
    lsl r0, r0, #4
    orr r1, r0
    strb r1, [r5,#0x15]
locret_8212BBA:
    pop {r5,pc}
loc_8212BBC:
    ldrb r0, [r0,r3]
    lsl r0, r0, #0xc
    lsr r0, r2, #0xe
    lsl r1, r0, #8
    lsr r0, r2, #0xe
    lsl r1, r0, #8
    lsr r0, r2, #0xe
    lsl r1, r0, #8
    lsr r0, r2, #0xe
    lsl r1, r0, #8
    lsr r0, r2, #0xe
    lsl r1, r0, #8
    lsr r0, r2, #0xe
    lsl r1, r0, #8
dword_8212BD8:    .word 0x6010000
off_8212BDC:    .word loc_8000874+1
.thumb
sub_8212BE0:
    push {lr}
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#4]
    add r0, #4
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#5]
    add r1, r1, r2
    lsl r1, r1, #5
    add r0, r0, r1
    ldrh r7, [r5,#6]
    tst r7, r7
    beq loc_8212C18
    ldr r7, [pc, #0x8212c74-0x8212bfc-4] // =unk_3002840
    mov r2, #0x20 
loc_8212C00:
    sub r2, #4
    ldr r3, [r0,r2]
    str r3, [r7,r2]
    bne loc_8212C00
    ldrh r0, [r5,#6]
    lsr r2, r0, #0xf
    lsl r2, r2, #2
    mov r6, #0x20 
// end of function sub_8212BE0

.thumb
sub_8212C10:
    push {r7}
    bl loc_82129C8
    pop {r0}
loc_8212C18:
    mov r8, r5
    ldr r7, [pc, #0x8212c78-0x8212c1a-2] // =dword_2010B80
    ldr r4, [r7]
    cmp r4, #0xf
    bge loc_8212C6E
    ldr r5, [pc, #0x8212c7c-0x8212c22-2] // =unk_3002640
    mov r1, #0
loc_8212C26:
    cmp r1, r4
    bge loc_8212C42
    mov r6, #0x1c
loc_8212C2C:
    ldr r2, [r5,r6]
    ldr r3, [r0,r6]
    cmp r2, r3
    bne loc_8212C3C
    sub r6, #4
    bge loc_8212C2C
    add r0, r1, #0
    b loc_8212C70
loc_8212C3C:
    add r5, #0x20 
    add r1, #1
    b loc_8212C26
loc_8212C42:
    bl sub_8212F10
    tst r3, r3
    beq loc_8212C5A
    mov r5, r8
    ldrb r1, [r5,#3]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r5,#3]
    mov r2, #0
    str r2, [r5,#0x24]
    b loc_8212C70
loc_8212C5A:
    mov r6, #0x1c
loc_8212C5C:
    ldr r2, [r0,r6]
    str r2, [r5,r6]
    sub r6, #4
    bge loc_8212C5C
    add r4, #1
    ldr r7, [pc, #0x8212c78-0x8212c66-2] // =dword_2010B80
    str r4, [r7]
    add r0, r1, #0
    b loc_8212C70
loc_8212C6E:
    mov r0, #0xf
loc_8212C70:
    mov r5, r8
    pop {pc}
off_8212C74:    .word unk_3002840
off_8212C78:    .word dword_2010B80
off_8212C7C:    .word unk_3002640
// end of function sub_8212C10

.thumb
sub_8212C80:
    ldr r1, [pc, #0x8212cb8-0x8212c80-4] // =dword_2009E64
    ldr r1, [r1]
    ldr r2, [pc, #0x8212cbc-0x8212c84-4] // =dword_200AE50
// end of function sub_8212C80

loc_8212C86:
    cmp r1, #0
    beq loc_8212C96
    ldr r3, [r2]
    cmp r7, r3
    beq loc_8212C9A
    sub r1, #1
    add r2, #8
    b loc_8212C86
loc_8212C96:
    mov r0, #1
    mov pc, lr
loc_8212C9A:
    ldr r0, [r2,#4]
    mov r3, #0
    mov pc, lr
.thumb
sub_8212CA0:
    ldr r2, [pc, #0x8212cb8-0x8212ca0-4] // =dword_2009E64
    ldr r3, [r2]
    add r3, #1
    str r3, [r2]
    sub r3, #1
    lsl r3, r3, #3
    ldr r2, [pc, #0x8212cbc-0x8212cac-4] // =dword_200AE50
    add r2, r2, r3
    str r7, [r2]
    str r6, [r2,#4]
    mov pc, lr
    .balign 4, 0x00
off_8212CB8:    .word dword_2009E64
off_8212CBC:    .word dword_200AE50
// end of function sub_8212CA0

    push {r5,lr}
    mov r1, r10
    push {r1}
    ldrb r6, [r5]
    push {r6}
    ldr r4, [pc, #0x8212de8-0x8212cca-2] // =byte_200A3C8
    ldrb r4, [r4]
    ldrb r7, [r5,#2]
    lsr r7, r7, #4
    lsl r7, r7, #4
    add r5, r5, r7
    mov r2, r10
    ldr r2, [r2]
    ldrb r2, [r2]
    cmp r2, #8
    beq loc_8212CE6
    bl sub_8212DEC
    b loc_8212CEA
loc_8212CE6:
    bl sub_8212E5C
loc_8212CEA:
    ldr r0, [pc, #0x8212de8-0x8212cea-2] // =byte_200A3C8
    ldrb r0, [r0]
    mov r10, r0
    mov r12, r7
    pop {r7}
    mov r0, #8
    tst r0, r7
    bne loc_8212D86
    ldrb r3, [r5,#3]
    mov r4, #1
    tst r3, r4
    bne loc_8212D04
    mov r12, r6
loc_8212D04:
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x10
    and r3, r2
    beq loc_8212D10
    mov r0, #1
loc_8212D10:
    mov r8, r0
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x20 
    and r3, r2
    beq loc_8212D1E
    mov r0, #1
loc_8212D1E:
    mov r9, r0
    ldr r3, [r5,#0x20]
    ldrb r2, [r3]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r3, [r5,#0x18]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r2, r2, r3
    mov r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
loc_8212D38:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_8212DAC
    mov r3, #1
    ldrsb r3, [r2,r3]
    mov r0, r8
    tst r0, r0
    beq loc_8212D4A
    neg r3, r3
loc_8212D4A:
    add r3, r3, r1
    mov r0, r10
    sub r0, #0x40 
    cmp r3, r0
    blt loc_8212D7E
    mov r0, r10
    add r0, #0xf0
    add r0, #0x41 
    cmp r3, r0
    bge loc_8212D7E
    mov r3, #2
    ldrsb r3, [r2,r3]
    mov r0, r9
    tst r0, r0
    beq loc_8212D6A
    neg r3, r3
loc_8212D6A:
    add r3, r12
    mov r0, #0x20 
    neg r0, r0
    cmp r3, r0
    blt loc_8212D7E
    mov r0, #0xa0
    add r0, #0x21 
    cmp r3, r0
    bge loc_8212D7E
    orr r7, r4
loc_8212D7E:
    mov r12, r6
    lsr r4, r4, #1
    add r2, #5
    b loc_8212D38
loc_8212D86:
    mov r7, #0
    mov r0, r10
    sub r0, #0x40 
    cmp r1, r0
    blt loc_8212DAC
    mov r0, r10
    add r0, #0xf0
    add r0, #0x41 
    cmp r1, r0
    bge loc_8212DAC
    mov r0, #0x20 
    neg r0, r0
    cmp r6, r0
    blt loc_8212DAC
    mov r0, #0xa0
    add r0, #0x21 
    cmp r6, r0
    bge loc_8212DAC
    mov r7, #1
loc_8212DAC:
    ldrb r3, [r5,#3]
    mov r4, #4
    tst r3, r4
    bne loc_8212DD2
    add r6, r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
    bic r6, r4
    mov r4, #8
    bic r3, r4
    tst r6, r6
    beq loc_8212DC6
    orr r3, r4
loc_8212DC6:
    mov r4, #2
    bic r3, r4
    tst r7, r7
    beq loc_8212DDC
    orr r3, r4
    b loc_8212DDC
loc_8212DD2:
    mov r4, #0xa
    bic r3, r4
    tst r7, r7
    beq loc_8212DDC
    orr r3, r4
loc_8212DDC:
    strb r3, [r5,#3]
    str r7, [r5,#0x28]
    pop {r1}
    mov r10, r1
    pop {r5,pc}
    .balign 4, 0x00
off_8212DE8:    .word byte_200A3C8
.thumb
sub_8212DEC:
    push {lr}
    mov r2, #4
    ldrb r3, [r5,#3]
    tst r2, r3
    bne loc_8212E06
    push {r0,r5}
    ldr r5, [pc, #0x8212e58-0x8212df8-4] // =ho_802724E+1
    mov lr, pc
    bx r5
    lsl r0, r0, #0x10
    mov r9, r0
    pop {r0,r5}
    b loc_8212E0A
loc_8212E06:
    ldr r1, [r0,#8]
    mov r9, r1
loc_8212E0A:
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
    strh r1, [r5,#0xc]
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    add r7, r6, #0
    ldr r2, [r3,#0x40]
    mov r4, #0x80
    lsl r4, r4, #0x10
    add r2, r2, r4
    add r4, r2, r6
    asr r4, r4, #0x10
    strh r4, [r5,#0xa]
    ldr r4, [r0,#8]
    sub r6, r6, r4
    ldr r2, [r3,#0x40]
    add r6, r6, r2
    asr r6, r6, #0x10
    add r6, #0x52 
    strb r6, [r5,#0xe]
    mov r4, r9
    sub r7, r7, r4
    ldr r2, [r3,#0x40]
    add r7, r7, r2
    asr r7, r7, #0x10
    add r7, #0x52 
    strb r7, [r5,#0xf]
    pop {pc}
off_8212E58:    .word ho_802724E+1
// end of function sub_8212DEC

.thumb
sub_8212E5C:
    add r6, r4, #0
// end of function sub_8212E5C

    mov r3, r10
    ldr r3, [r3,#0xc]
    mov r2, #2
    ldrsh r1, [r0,r2]
    ldr r4, [r3,#0x38]
    ldr r7, [r3,#0x44]
    add r4, r4, r7
    asr r4, r4, #0x10
    sub r1, r1, r4
    tst r6, r6
    beq loc_8212E94
    neg r1, r1
    ldrb r2, [r5,#0x16]
    mov r4, #2
    tst r2, r4
    bne loc_8212E94
    ldrb r2, [r5,#0x16]
    mov r4, #0x10
    eor r2, r4
    mov r4, #0x30 
    and r2, r4
loc_8212E88:
    ldrb r7, [r5,#0x13]
    mov r4, #0x30 
    bic r7, r4
    orr r7, r2
    strb r7, [r5,#0x13]
    b loc_8212E9C
loc_8212E94:
    ldrb r2, [r5,#0x16]
    mov r4, #0x30 
    and r2, r4
    b loc_8212E88
loc_8212E9C:
    add r1, #0x78 
    strh r1, [r5,#0xc]
    mov r2, #6
    ldrsh r6, [r0,r2]
    ldr r4, [r3,#0x3c]
    asr r4, r4, #0x10
    sub r6, r6, r4
    add r6, #0x50 
    add r7, r6, #0
    strh r7, [r5,#0xa]
    mov r2, #0xa
    ldrsh r4, [r0,r2]
    ldr r2, [r3,#0x40]
    asr r2, r2, #0x10
    sub r4, r4, r2
    sub r6, r6, r4
    strb r6, [r5,#0xe]
    strb r7, [r5,#0xf]
    ldrb r3, [r5,#3]
    mov r2, #0x20 
    tst r2, r3
    beq loc_8212ECA
    strb r6, [r5,#0xf]
loc_8212ECA:
    mov r2, #4
    tst r2, r3
    beq locret_8212ED2
    add r7, r6, #0
locret_8212ED2:
    mov pc, lr
.thumb
sub_8212ED4:
    mov r3, r10
    ldr r3, [r3]
    ldrb r3, [r3]
    cmp r3, #8
    beq loc_8212EEE
    ldrh r3, [r0]
    ldr r2, [pc, #0x8212f04-0x8212ee0-4] // =0x30
    sub r3, r3, r2
    add r3, r3, r4
    ldr r2, [pc, #0x8212f08-0x8212ee6-2] // =0x32C
    cmp r3, r2
    bge loc_8212F00
    b loc_8212EFC
loc_8212EEE:
    ldrh r3, [r0]
    ldr r2, [pc, #0x8212f04-0x8212ef0-4] // =0x30
    sub r3, r3, r2
    add r3, r3, r4
    ldr r2, [pc, #0x8212f0c-0x8212ef6-2] // =0x2FC
    cmp r3, r2
    bge loc_8212F00
loc_8212EFC:
    mov r3, #0
    mov pc, lr
loc_8212F00:
    mov r3, #1
    mov pc, lr
off_8212F04:    .word 0x30
dword_8212F08:    .word 0x32F
dword_8212F0C:    .word 0x2FF
// end of function sub_8212ED4

.thumb
sub_8212F10:
    mov r3, r10
    ldr r3, [r3]
    ldrb r3, [r3]
    cmp r3, #8
    beq loc_8212F20
    cmp r1, #0xc
    bge loc_8212F28
    b loc_8212F24
loc_8212F20:
    cmp r1, #0xa
    bge loc_8212F28
loc_8212F24:
    mov r3, #0
    mov pc, lr
loc_8212F28:
    mov r3, #1
    mov pc, lr
// end of function sub_8212F10

    push {lr}
    ldrb r7, [r5,#3]
    mov r2, #0x10
    tst r7, r2
    bne locret_8212F3C
    mov r2, #2
    tst r7, r2
    bne loc_8212F3E
locret_8212F3C:
    pop {pc}
loc_8212F3E:
    sub sp, sp, #0x1c
    str r0, [sp]
    str r1, [sp,#0x14]
    ldr r0, [pc, #0x821308c-0x8212f44-4] // =unk_30034E0
    str r0, [sp,#0x10]
    mov r0, #0
    str r0, [sp,#0xc]
    ldr r0, [r5,#0x30]
    sub r0, #1
    str r0, [sp,#8]
    ldr r1, [r5,#0x20]
    ldrb r2, [r1]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    ldr r2, [r1,r2]
    add r2, r2, r1
    ldr r3, [r5,#0x28]
    str r3, [sp,#4]
    ldr r4, [r5,#0x2c]
    mvn r4, r4
    and r3, r4
    str r3, [r5,#0x28]
    ldrb r0, [r5,#0x16]
    mov r1, #0x40 
    bic r0, r1
    mov r1, #0x80
    and r1, r0
    lsr r1, r1, #1
    ldr r3, [pc, #0x8213088-0x8212f7c-4] // =dword_200A190
    ldrb r3, [r3]
    orr r0, r3
    bic r0, r1
    strb r0, [r5,#0x16]
    mov r1, #0xc
    and r0, r1
    lsr r0, r0, #2
    str r0, [sp,#0x18]
    ldrb r0, [r5,#3]
    mov r7, #1
    and r7, r0
    bne loc_8212FA4
    mov r1, #4
    tst r1, r0
    bne loc_8212FA4
    ldr r3, [r5,#0x28]
    lsl r3, r3, #1
    str r3, [r5,#0x28]
    b loc_821305A
loc_8212FA4:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_8213072
    ldr r6, [sp,#8]
    add r6, #1
    str r6, [sp,#8]
    ldr r3, [r5,#0x28]
    lsl r6, r3, #1
    str r6, [r5,#0x28]
    cmp r3, #0
    bge loc_821305A
    ldr r6, [r5,#0x10]
    ldrb r0, [r5,#0x16]
    mov r1, #0x40 
    and r1, r0
    lsl r1, r1, #6
    orr r6, r1
    bl sub_8213090
    mov r8, r1
    mov r9, r0
    add r3, r6, #0
    mov r0, #0xc
    ldrsh r0, [r5,r0]
    add r0, r8
    mov r4, #0x10
    lsl r4, r4, #4
    add r4, #0xff
    and r0, r4
    lsl r0, r0, #0x10
    orr r3, r0
    ldrb r4, [r2,#3]
    mov r0, #0xf0
    and r0, r4
    lsl r4, r4, #0x1e
    orr r3, r4
    lsl r0, r0, #0x16
    eor r3, r0
    mov r0, #0xe
    add r0, r0, r7
    ldrb r0, [r5,r0]
    add r0, r9
    mov r4, #0xff
    and r0, r4
    orr r3, r0
    ldrb r4, [r2,#4]
    lsl r1, r4, #0x1c
    lsr r1, r1, #0x1c
    lsl r1, r1, #0xe
    orr r3, r1
    ldrh r1, [r5,#0x14]
    ldr r0, [sp,#8]
    cmp r0, #0xff
    ble loc_821301C
    mov r4, #0xf0
    lsl r4, r4, #8
    bic r1, r4
    ldrb r4, [r0]
    lsl r4, r4, #0xc
    orr r1, r4
loc_821301C:
    ldrh r0, [r5,#8]
    ldrb r4, [r2]
    add r4, r4, r0
    orr r1, r4
    mov r8, r2
    mov r9, r5
    add r0, r3, #0
    ldr r2, [sp]
    add r2, r2, r7
    mov r12, r7
    mov r3, #0xa
    ldrsh r3, [r5,r3]
    ldr r4, [sp,#0x14]
    add r3, r3, r4
    lsl r7, r7, #5
    lsr r3, r7
    ldr r7, [sp,#0x18]
    add r3, r3, r7
    ldr r7, [sp,#0x10]
    str r0, [r7]
    strh r1, [r7,#4]
    strb r2, [r7,#6]
    strh r3, [r7,#8]
    add r7, #0xc
    str r7, [sp,#0x10]
    ldr r7, [sp,#0xc]
    add r7, #1
    str r7, [sp,#0xc]
    mov r7, r12
    mov r2, r8
    mov r5, r9
loc_821305A:
    add r2, #5
    ldrb r0, [r5,#3]
    mov r1, #0x20 
    tst r1, r0
    bne loc_8212FA4
    mov r7, #0
    mov r1, #0x40 
    tst r1, r0
    beq loc_8212FA4
    mov r0, #2
    str r0, [sp,#0x18]
    b loc_8212FA4
loc_8213072:
    ldr r0, [pc, #0x821308c-0x8213072-2] // =unk_30034E0
    ldr r1, [sp,#0xc]
    tst r1, r1
    beq loc_821307E
    bl sub_8213404
loc_821307E:
    ldr r0, [sp,#4]
    str r0, [r5,#0x28]
    add sp, sp, #0x1c
    pop {pc}
    .balign 4, 0x00
off_8213088:    .word dword_200A190
off_821308C:    .word unk_30034E0
.thumb
sub_8213090:
    mov r3, #3
    lsl r3, r3, #8
    and r3, r6
    bne loc_82130E2
    mov r8, r7
    mov r1, #1
    ldrsb r1, [r2,r1]
    mov r0, #2
    ldrsb r0, [r2,r0]
    ldrb r3, [r5,#0x13]
    mov r4, #0x10
    and r3, r4
    beq loc_82130C0
    neg r1, r1
    ldr r3, [pc, #0x82131e8-0x82130ac-4] // =0x3006308
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r3, r3, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r3, [r3,r4]
    add r1, r1, r3
loc_82130C0:
    ldrb r3, [r5,#0x13]
    mov r4, #0x20 
    and r3, r4
    beq loc_82130DE
    neg r0, r0
    ldr r3, [pc, #0x82131ec-0x82130ca-2] // =0x3006314
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r3, r3, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r3, [r3,r4]
    add r0, r0, r3
loc_82130DE:
    mov r7, r8
    mov pc, lr
loc_82130E2:
    ldrb r4, [r5,#0x13]
    mov r3, #0x3e 
    and r4, r3
    lsr r4, r4, #1
    mov r3, #0x20 
    lsl r3, r3, #0x18
    cmp r7, #1
    bne loc_82130F8
    add r6, r6, r3
    add r4, #0x10
    b loc_82130FA
loc_82130F8:
    bic r6, r3
loc_82130FA:
    mov r8, r6
    mov r9, r7
    mov r6, #0xc
    mul r4, r6
    ldr r6, [pc, #0x8213220-0x8213102-2] // =word_200AB30
    add r6, r6, r4
    ldrb r1, [r6,#8]
    add r1, #0x40 
    mov r3, #0xff
    and r1, r3
    lsl r1, r1, #1
    mov r3, #1
    ldrsb r3, [r2,r3]
    ldr r0, [pc, #0x82131e0-0x8213114-4] // =0x30062F0
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r3, r3, r4
    ldrb r0, [r6,#9]
    mul r3, r0
    ldr r0, [pc, #0x8213224-0x821312c-4] // =word_8005D78
    ldrsh r0, [r0,r1]
    mul r3, r0
    mov r7, #2
    ldrsb r7, [r2,r7]
    ldr r0, [pc, #0x82131e4-0x8213136-2] // =0x30062FC
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r7, r7, r4
    ldrb r0, [r6,#0xa]
    mul r7, r0
    ldr r0, [pc, #0x8213228-0x821314e-2] // =word_8005DF8
    ldrsh r0, [r0,r1]
    mul r7, r0
    add r3, r3, r7
    asr r3, r3, #0xc
    ldr r0, [pc, #0x82131e8-0x8213158-4] // =0x3006308
    ldrb r1, [r2,#4]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1a
    add r0, r0, r1
    ldrb r1, [r2,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    ldrsb r1, [r0,r1]
    add r3, r3, r1
    push {r3}
    ldrb r1, [r6,#8]
    add r1, #0x40 
    mov r3, #0xff
    and r1, r3
    lsl r1, r1, #1
    mov r3, #1
    ldrsb r3, [r2,r3]
    ldr r0, [pc, #0x82131e0-0x821317c-4] // =0x30062F0
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r3, r3, r4
    ldrb r0, [r6,#9]
    mul r3, r0
    ldr r0, [pc, #0x8213228-0x8213194-4] // =word_8005DF8
    ldrsh r0, [r0,r1]
    neg r0, r0
    mul r3, r0
    mov r7, #2
    ldrsb r7, [r2,r7]
    ldr r0, [pc, #0x82131e4-0x82131a0-4] // =0x30062FC
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r7, r7, r4
    ldrb r0, [r6,#0xa]
    mul r7, r0
    ldr r0, [pc, #0x8213224-0x82131b8-4] // =word_8005D78
    ldrsh r0, [r0,r1]
    mul r7, r0
    add r3, r3, r7
    asr r3, r3, #0xc
    ldr r0, [pc, #0x82131ec-0x82131c2-2] // =0x3006314
    ldrb r1, [r2,#4]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1a
    add r0, r0, r1
    ldrb r1, [r2,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    ldrsb r1, [r0,r1]
    add r3, r3, r1
    push {r3}
    pop {r0,r1}
    mov r6, r8
    mov r7, r9
    mov pc, lr
dword_82131E0:    .word 0x30062F0
dword_82131E4:    .word 0x30062FC
dword_82131E8:    .word 0x3006308
dword_82131EC:    .word 0x3006314
    .word 0xE0F0F8FC, 0xE0F0F0F8, 0xF0F8FCFC, 0xE0F0F8FC, 0xF0F8FCFC
    .word 0xE0F0F0F8, 0xC0E0F0F8, 0xC0E0E0F0, 0xE0F0F8F8, 0xC0E0F0F8
    .word 0xE0F0F8F8, 0xC0E0E0F0
off_8213220:    .word word_200AB30
off_8213224:    .word word_8005D78
off_8213228:    .word word_8005DF8
// end of function sub_8213090

.thumb
sub_821322C:
    push {lr}
    ldrb r0, [r5,#3]
    mov r1, #0x80
    and r0, r1
    bne loc_8213256
    ldr r1, [r5,#0x18]
    ldr r2, [r1]
    add r3, r2, r1
    str r3, [r5,#0x1c]
    ldrb r0, [r5]
    lsl r0, r0, #2
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1,r0]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r1,#1]
    strb r2, [r5,#1]
    ldrb r2, [r1,#2]
    strb r2, [r5,#2]
    b locret_8213274
loc_8213256:
    ldrb r0, [r5]
    lsl r0, r0, #2
    ldr r1, [r5,#0x18]
    ldr r2, [r1,r0]
    add r3, r2, r1
    str r3, [r5,#0x1c]
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r3,#0x10]
    strb r2, [r5,#1]
    ldrb r2, [r3,#0x12]
    strb r2, [r5,#2]
locret_8213274:
    pop {pc}
// end of function sub_821322C

    push {r4,lr}
loc_8213278:
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    cmp r0, #0
    bge loc_82132DC
    ldrb r0, [r5,#3]
    mov r1, #0x80
    and r0, r1
    bne loc_82132A4
    ldr r1, [r5,#0x20]
    ldrb r0, [r1,#2]
    ldrb r4, [r1,#1]
    mov r2, #0x80
    tst r0, r2
    bne loc_82132CA
    add r1, #3
    str r1, [r5,#0x20]
    ldrb r2, [r1,#1]
    strb r2, [r5,#1]
    ldrb r2, [r1,#2]
    strb r2, [r5,#2]
    b loc_82132C8
loc_82132A4:
    ldr r3, [r5,#0x1c]
    ldrb r0, [r3,#0x12]
    ldrb r4, [r3,#0x10]
    mov r2, #0x80
    tst r0, r2
    bne loc_82132CA
    add r3, #0x14
    str r3, [r5,#0x1c]
    ldr r1, [r5,#0x18]
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r3,#0x10]
    strb r2, [r5,#1]
    ldrb r2, [r3,#0x12]
    strb r2, [r5,#2]
loc_82132C8:
    b loc_8213278
loc_82132CA:
    mov r2, #0x40 
    tst r0, r2
    bne loc_82132D6
    mov r4, #1
    strb r4, [r5,#1]
    b loc_8213278
loc_82132D6:
    bl sub_821322C
    b loc_8213278
loc_82132DC:
    ldr r1, [r5,#0x20]
    ldrb r2, [r1]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    ldr r2, [r1,r2]
    add r2, r2, r1
    ldrb r4, [r2,#4]
    lsr r4, r4, #4
    strb r4, [r5,#5]
    pop {r4,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    mov r0, r12
    push {r0}
    ldr r0, [pc, #0x82133a4-0x82132fe-2] // =dword_3002E50
    ldr r2, [pc, #0x82133a8-0x8213300-4] // =unk_3003690
    ldr r3, [pc, #0x82133ac-0x8213302-2] // =unk_3003250
    ldr r6, [pc, #0x82133b0-0x8213304-4] // =dword_3003670
    ldr r7, [pc, #0x82133b4-0x8213306-2] // =unk_3002240
    mov r12, r7
loc_821330A:
    ldr r1, [r6]
    ldr r4, [r6,#4]
    add r4, r4, r1
loc_8213310:
    sub r4, #1
    cmp r1, r4
    bgt loc_8213338
    ldrb r5, [r4]
    cmp r5, #0xff
    beq loc_8213310
loc_821331C:
    cmp r0, r3
    bge loc_821333E
    lsl r5, r5, #3
    mov r7, r12
    add r7, r7, r5
    ldr r5, [r7]
    str r5, [r0]
    ldrh r5, [r7,#4]
    strh r5, [r0,#4]
    add r0, #8
    ldrb r5, [r7,#7]
    cmp r5, #0xff
    beq loc_8213310
    b loc_821331C
loc_8213338:
    add r6, #8
    cmp r6, r2
    blt loc_821330A
loc_821333E:
    sub r2, r3, r0
    lsr r2, r2, #3
    ldr r4, [pc, #0x82133b8-0x8213342-2] // =dword_200B710
    str r2, [r4]
    mov r2, #0xf0
    mov r4, #0xc
    lsl r4, r4, #8
loc_821334C:
    cmp r0, r3
    bge loc_8213358
    str r2, [r0]
    strh r4, [r0,#4]
    add r0, #8
    b loc_821334C
loc_8213358:
    ldr r0, [pc, #0x82133bc-0x8213358-4] // =word_200AB30
    ldr r1, [pc, #0x82133a4-0x821335a-2] // =dword_3002E50
    mov r3, #0x20 
loc_821335E:
    ldrh r4, [r0]
    strh r4, [r1,#6]
    ldrh r4, [r0,#2]
    strh r4, [r1,#0xe]
    ldrh r4, [r0,#4]
    strh r4, [r1,#0x16]
    ldrh r4, [r0,#6]
    strh r4, [r1,#0x1e]
    add r0, #0xc
    add r1, #0x20 
    sub r3, #1
    cmp r3, #0
    bgt loc_821335E
    mov r2, #0
    mvn r2, r2
    ldr r5, [pc, #0x82133c0-0x821337c-4] // =off_8025B20
    mov r4, #4
    ldr r7, [pc, #0x82133c4-0x8213380-4] // =f900_80009DC+1
    mov r12, r7
loc_8213384:
    ldr r0, [r5]
    ldr r1, [r5,#4]
    mov r7, r12
    mov lr, pc
    bx r7
    add r5, #8
    sub r4, #1
    cmp r4, #0
    bgt loc_8213384
    ldr r0, [pc, #0x82133c8-0x8213396-2] // =dword_3002A40
    mov r1, #0
    str r1, [r0]
    pop {r0}
    mov r12, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_82133A4:    .word dword_3002E50
off_82133A8:    .word unk_3003690
off_82133AC:    .word unk_3003250
off_82133B0:    .word dword_3003670
off_82133B4:    .word unk_3002240
off_82133B8:    .word dword_200B710
off_82133BC:    .word word_200AB30
off_82133C0:    .word off_8025B20
off_82133C4:    .word f900_80009DC+1
off_82133C8:    .word dword_3002A40
    push {r4-r7,lr}
    ldr r5, [pc, #0x8213478-0x82133ce-2] // =dword_3002A40
    ldr r6, [r5]
    cmp r6, #0x80
    bge locret_8213402
    ldr r4, [pc, #0x8213480-0x82133d6-2] // =dword_3003670
    lsl r7, r2, #3
    add r4, r4, r7
    ldr r7, [r4,#4]
    cmp r3, r7
    bge locret_8213402
    cmp r3, #0
    blt locret_8213402
    ldr r4, [r4]
    add r4, r4, r3
    add r7, r6, #1
    str r7, [r5]
    ldrb r7, [r4]
    strb r6, [r4]
    lsl r6, r6, #3
    ldr r5, [pc, #0x821347c-0x82133f4-4] // =unk_3002240
    add r5, r5, r6
    str r0, [r5]
    strh r1, [r5,#4]
    strb r7, [r5,#7]
    mov r0, #0xff
    strb r0, [r5,#6]
locret_8213402:
    pop {r4-r7,pc}
.thumb
sub_8213404:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    sub sp, sp, #8
    ldr r5, [pc, #0x8213478-0x8213410-4] // =dword_3002A40
    ldr r6, [r5]
    mov r8, r5
    add r1, r1, r6
    cmp r1, #0x80
    bge loc_821346C
    sub r1, r1, r6
    ldr r3, [pc, #0x821347c-0x821341e-2] // =unk_3002240
    mov r12, r3
loc_8213422:
    str r0, [sp]
    str r1, [sp,#4]
    mov r3, #8
    ldrsh r3, [r0,r3]
    ldrb r2, [r0,#6]
    ldrh r1, [r0,#4]
    ldr r0, [r0]
    ldr r4, [pc, #0x8213480-0x8213430-4] // =dword_3003670
    lsl r7, r2, #3
    add r4, r4, r7
    ldr r7, [r4,#4]
    cmp r3, r7
    bge loc_821346C
    cmp r3, #0
    blt loc_821346C
    ldr r4, [r4]
    add r4, r4, r3
    add r7, r6, #1
    str r7, [r5]
    mov r9, r7
    ldrb r7, [r4]
    strb r6, [r4]
    lsl r6, r6, #3
    mov r5, r12
    add r5, r5, r6
    str r0, [r5]
    strh r1, [r5,#4]
    strb r7, [r5,#7]
    mov r0, #0xff
    strb r0, [r5,#6]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r5, r8
    mov r6, r9
    add r0, #0xc
    sub r1, #1
    bgt loc_8213422
loc_821346C:
    add sp, sp, #8
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8213478:    .word dword_3002A40
off_821347C:    .word unk_3002240
off_8213480:    .word dword_3003670
    .word 0x40404, 0x4040004, 0x4644B5F0, 0x4656464D, 0xB4F04667
    .word 0x4682B089, 0x46914688, 0x45452501, 0x68DC3E, 0x1C451940
    .word 0xDDFA4545, 0x1C02E038, 0xDA354542, 0x46680151, 0xC9584451
    .word 0xC998C058, 0xC9C0C098, 0x1B53C0C0, 0x46943201, 0xDB1A2B00
    .word 0x844648, 0x18604669, 0x90086800, 0x46560158, 0x18A01982
    .word 0x9F086800, 0xDD0C42B8, 0x1491959, 0x1C104451, 0xC1C4C8C4
    .word 0xC1C4C8C4, 0xC144C844, 0x2B001B5B, 0x1959DAEA, 0x44510149
    .word 0xC88C4668, 0xC8D0C18C, 0xC80CC1D0, 0x4662C10C, 0xDBC94542
    .word 0x21031C28, 0x46FE4D34, 0x1C054728, 0xDCBE2800, 0xBCF0B009
    .word 0x46A946A0, 0x46BC46B2, 0xBDF0, 0x4644B5F0, 0x4656464D
    .word 0xB4F04667, 0x4682B089, 0x46914688, 0x45452501, 0x68DC3E
    .word 0x1C451940, 0xDDFA4545, 0x1C02E038, 0xDA354542, 0x46680151
    .word 0xC9584451, 0xC998C058, 0xC9C0C098, 0x1B53C0C0, 0x46943201
    .word 0xDB1A2B00, 0x844648, 0x18604669, 0x90086800, 0x46560158
    .word 0x18A01982, 0x9F086800, 0xDA0C42B8, 0x1491959, 0x1C104451
    .word 0xC1C4C8C4, 0xC1C4C8C4, 0xC144C844, 0x2B001B5B, 0x1959DAEA
    .word 0x44510149, 0xC88C4668, 0xC8D0C18C, 0xC80CC1D0, 0x4662C10C
    .word 0xDBC94542, 0x21031C28, 0x46FE4D06, 0x1C054728, 0xDCBE2800
    .word 0xBCF0B009, 0x46A946A0, 0x46BC46B2, 0xBDF0
    .word sub_81118D8+1
    .word 0x300681D, 0x3006A01, 0x3006A31, 0x3006853, 0x0, 0x0, 0x0
    .word 0x0
    .word 0x30069FD, 0x0, 0x0
    .word 0x3006A05, 0x300686F, 0x0, 0x0
    .word 0x3006A19, 0x3006A2D, 0x0, 0x0, 0x0
    .word 0x300692D, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x3006955, 0x0
    .word 0x44444444, 0x88888888, 0xCCCCCCCC, 0x46B8B500, 0x6BBF4657
    .word 0x436C703C, 0x4644707C, 0x240070BC, 0x46A92500, 0x2301B40C
    .word 0xD01B2B00, 0x29E57801, 0x39E5DB06, 0x4F0F0089, 0x46FE5879
    .word 0xE7F34708, 0xD00629E4, 0xF81CF000, 0x464F3001, 0x46B93701
    .word 0x7841E7EA, 0xF00031E4, 0x3002F813, 0x3701464F, 0xE7E146B9
    .word 0x1A12BC03, 0x46FE4B03, 0x46484718, 0xBD00
    .word 0x3006700
// end of function sub_8213404

    lsr r5, r6, #1
    lsr r0, r0, #0x20
    lsr r5, r0, #4
    lsr r0, r0, #0x20
.thumb
sub_82136F0:
    push {r0,r6,lr}
    lsl r7, r1, #6
    add r6, r6, r7
    ldr r7, [pc, #0x8213718-0x82136f6-2] // =0x300676C
    mov r1, r10
    ldr r1, [r1,#0x38]
    ldrb r1, [r1,#2]
    ldr r0, [r7,r1]
    mov r1, #0x40 
loc_8213702:
    sub r1, #4
    blt loc_821370E
    ldr r7, [r6,r1]
    add r7, r7, r0
    str r7, [r2,r1]
    b loc_8213702
loc_821370E:
    add r2, #0x40 
    add r4, #1
    add r5, #1
    pop {r0,r6,pc}
    .balign 4, 0x00
dword_8213718:    .word 0x300676C
// end of function sub_82136F0

    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x38]
    ldr r1, [r4,#0x2c]
    tst r1, r1
    beq loc_821373E
    sub r1, #1
    str r1, [r4,#0x2c]
    push {r0,r1}
    add r1, r4, #0
    add r1, #0x30 
    ldrb r0, [r1]
    sub r0, #1
    strb r0, [r1]
    pop {r0,r1}
    ldr r0, [r4,#0x28]
    pop {pc}
loc_821373E:
    ldrb r1, [r4,#1]
    mov r8, r1
loc_8213742:
    cmp r5, r8
    bge loc_821374E
    mov r1, #0
    bl sub_82136F0
    b loc_8213742
loc_821374E:
    mov r3, #0
    pop {pc}
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x38]
    ldrb r1, [r1]
    mov r8, r1
loc_821375C:
    cmp r4, r8
    bge loc_8213768
    mov r1, #0
    bl sub_82136F0
    b loc_821375C
loc_8213768:
    mov r4, #0
    add r0, #1
    pop {pc}
    push {r3,lr}
    push {r0,r2,r4-r6}
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    add r1, #4
    mov r7, r10
    ldr r7, [r7,#0x38]
    ldr r0, [r7,r1]
    ldr r6, [pc, #0x8213824-0x821377e-2] // =fA00_8000A30+1
    mov lr, pc
    bx r6
    mov r8, r0
    ldr r6, [pc, #0x8213828-0x8213786-2] // =fA00_8000A8C+1
    mov lr, pc
    bx r6
    add r7, r0, #0
    sub r0, #1
    lsl r1, r0, #2
    pop {r0,r2,r4-r6}
    ldrb r3, [r0,#2]
    cmp r3, #0x80
    bge loc_82137D8
    sub r3, r3, r7
    mov r7, #0
    cmp r3, #0x40 
    blt loc_82137A6
    sub r3, #0x40 
    mov r7, #1
loc_82137A6:
    push {r0}
    push {r7}
    mov r0, #0xf
loc_82137AC:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_82136F0
    pop {r1}
    mov r7, r9
    add r7, #1
    mov r9, r7
    sub r1, #4
    bge loc_82137AC
    pop {r0}
loc_82137CA:
    cmp r3, #0
    ble loc_821381E
    sub r3, #1
    add r1, r0, #0
    bl sub_82136F0
    b loc_82137CA
loc_82137D8:
    sub r3, #0x80
    sub r3, r3, r7
    push {r0,r1}
    mov r0, #0
    cmp r3, #0x40 
    blt loc_82137E8
    sub r3, #0x40 
    mov r0, #1
loc_82137E8:
    cmp r3, #0
    ble loc_82137FC
    sub r3, #1
    add r1, r0, #0
    bl sub_82136F0
    mov r7, r9
    add r7, #1
    mov r9, r7
    b loc_82137E8
loc_82137FC:
    pop {r0,r1}
    push {r0}
    mov r0, #0xf
loc_8213802:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_82136F0
    pop {r1}
    mov r7, r9
    add r7, #1
    mov r9, r7
    sub r1, #4
    bge loc_8213802
loc_821381E:
    pop {r0}
    add r0, #3
    pop {r3,pc}
off_8213824:    .word fA00_8000A30+1
off_8213828:    .word fA00_8000A8C+1
    push {r3,r7,lr}
    push {r0}
    mov r7, r10
    ldr r7, [r7,#0x44]
    ldr r0, [r7,#0x70]
    mov r3, #0
    mov r7, #0xff
loc_821383A:
    add r1, r0, #0
    lsr r1, r3
    and r1, r7
    push {r0,r3,r7}
    bl sub_82136F0
    pop {r0,r3,r7}
    add r3, #8
    cmp r3, #0x10
    ble loc_821383A
    pop {r0}
    add r0, #1
    pop {r3,r7,pc}
    push {r3,r7,lr}
    ldr r1, [pc, #0x8213864-0x8213856-2] // =0x3006968
    ldrb r3, [r0,#1]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    mov lr, pc
    bx r1
    pop {r3,r7,pc}
dword_8213864:    .word 0x3006968
    .word 0x3006971, 0x3006971, 0x4B21B5FE, 0x36016ADE, 0x4E1262DE
    .word 0x78417882, 0xD0004209, 0x21003202, 0x58B60092, 0x5A710049
    .word 0x1C1F1876, 0x883A3730, 0x49150192, 0xB4031889, 0x22401C30
    .word 0x4B13B408, 0x471846FE, 0xBC41BC08, 0x37301C1F, 0x31017839
    .word 0x625E7039, 0x62983003, 0xBDFE1C30
    .word 0x30069C8
    .word unk_2001770
    .word unk_2001780
    .word 0x2000522, 0x200057E, 0x2001EA0, 0x2001EFC, 0x2001F58
    .word 0x2001FB4, 0x2002010, 0x200206C
    .word 0x200B4D0
    .word f900_8000970+1
    .word 0x200A6C0
    add r0, #4
    mov pc, lr
    add r0, #2
    mov pc, lr
    ldrb r7, [r0,#1]
    ldr r1, [pc, #0x8213910-0x8213906-2] // =0x3006A14
    ldrb r1, [r7,r1]
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
dword_8213910:    .word 0x3006A14
    .word 0x3, 0x49027847, 0x18405C79, 0x46F7, 0x3006A28, 0x3030203
    .word 0x46F73002, 0x49027847, 0x18405C79, 0x46F7, 0x3006A40, 0x2020202
    .word 0x3, 0x4647B5F2, 0x4653464A, 0xB49C4664, 0xBF0977, 0x193F4C1F
    .word 0x241F46B8, 0x22204026, 0x46941B92, 0x4C1A46B1, 0x434F2760, 0x4C1A193F
    .word 0x58630089, 0x4200009B, 0x6FECD102, 0x67EC18E4, 0x1A9A2240, 0x46924252
    .word 0x6838260B, 0x46526879, 0x40D14091, 0x4664464B, 0x40E51C0D, 0x40991C2A
    .word 0x40E51C05, 0x40984329, 0x682B4645, 0x40E340A3, 0x60284318, 0x60AA6069
    .word 0x183F2008, 0x44802060, 0xDAE23E01, 0x46B8BC9C, 0x469A4691, 0xBDF246A4
    .word 0x8695224, 0x200D920, 0x80515B8, 0x4641B5F0, 0x4649B402, 0x4F25B402
    .word 0x931C02, 0x58ED4D29, 0xD0062A00, 0xD0032A01, 0x1C9210D, 0xE000187F
    .word 0x682E3780, 0xD0204236, 0x240046B0, 0x60386830, 0x60786E30, 0x683036C0
    .word 0x6E3060B8, 0x36C060F8, 0x61386830, 0x61786E30, 0x683036C0, 0x6E3061B8
    .word 0x464661F8, 0x21043604, 0x5C681909, 0x46B0183F, 0x2C043401, 0x3508D1E2
    .word 0xBC02E7DB, 0xBC024688, 0x480A4689, 0x4A0B490A, 0x46FE4B0B, 0x46554718
    .word 0x480A6AED, 0x46FE4B0A, 0x42004718, 0x2002D002, 0x5468213D, 0xBDF0
    .word 0x200D920, 0x200E820, 0x6015700, 0xF00, 0x8000875, 0x400
    .word 0x804E569, 0x3006B9C, 0x3006BA8, 0x3006C0C, 0x3006CA0, 0x200D920
    .word 0x20202020, 0x200DC20, 0x20202020, 0x200D930, 0x20202020, 0x200DC30
    .word 0x20202020, 0x200D940, 0x20202020, 0x200DC40, 0x20202020, 0x200D950
    .word 0x20202020, 0x200DC50, 0x20202020, 0x200D960, 0x20202020, 0x200DC60
    .word 0x20202020, 0x200D970, 0x20202020, 0x200DC70, 0x20202020, 0x0
    .word unk_200DC20
    .word 0xA0202020, 0x200DC30, 0xA0202020, 0x200DC40, 0xA0202020
    .word 0x200DC50, 0xA0202020, 0x200DC60, 0xA0202020, 0x200DC70
    .word 0x20202020, 0x200DF20, 0x20202020, 0x200E220, 0x20202020
    .word 0x200DF30, 0x20202020, 0x200E230, 0x20202020, 0x200DF40
    .word 0x20202020, 0x200E240, 0x20202020, 0x200DF50, 0x20202020
    .word 0x200E250, 0x20202020, 0x200DF60, 0x20202020, 0x200E260
    .word 0x20202020, 0x200DF70, 0x20202020, 0x200E270, 0x20202020
    .word 0x0
    .word unk_200E220
    .word 0xA0202020, 0x200E230, 0xA0202020, 0x200E240, 0xA0202020
    .word 0x200E250, 0xA0202020, 0x200E260, 0xA0202020, 0x200E270
    .word 0x20202020, 0x200E520, 0x20202020, 0x200E530, 0x20202020
    .word 0x200E540, 0x20202020, 0x200E550, 0x20202020, 0x200E560
    .word 0x20202020, 0x200E570, 0x20202020, 0x0
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r5, [pc, #0x8213e70-0x8213c08-4] // =unk_200A160
    add r0, r5, #0
    mov r1, #0x30 
    ldr r2, [pc, #0x8213c6c-0x8213c0e-2] // =f900_8000930+1
    mov lr, pc
    bx r2
    mov r0, #0
    strh r0, [r5,#0x4] // (dword_200A164 - 0x200a160)
    mov r0, #2
    lsl r0, r0, #0x10
    str r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
    ldr r0, [r4]
    str r0, [r5,#0x8] // (dword_200A168 - 0x200a160)
    ldr r0, [r4,#4]
    str r0, [r5,#0x10] // (dword_200A170 - 0x200a160)
    ldr r0, [r4,#8]
    str r0, [r5,#0x14] // (dword_200A174 - 0x200a160)
    ldr r0, [r4,#0xc]
    str r0, [r5,#0x18] // (dword_200A178 - 0x200a160)
    ldr r0, [r4,#0x10]
    str r0, [r5,#0x1c] // (dword_200A17C - 0x200a160)
    ldr r0, [r4,#0x14]
    str r0, [r5,#0x20] // (dword_200A180 - 0x200a160)
    ldr r0, [r4,#0x18]
    str r0, [r5,#0x24] // (dword_200A184 - 0x200a160)
    ldr r0, [r4,#0x1c]
    str r0, [r5,#0x28] // (dword_200A188 - 0x200a160)
    ldr r0, [r4,#0x20]
    str r0, [r5,#0x2c] // (dword_200A18C - 0x200a160)
    ldr r0, [r4,#0x24]
    strb r0, [r5,#0x3] // (byte_200A163 - 0x200a160)
    ldr r0, [pc, #0x8213e6c-0x8213c46-2] // =dword_2009440
    mov r1, #0xa0
    lsl r1, r1, #3
    mov r2, #0xa0
    bl sub_8213E78
    ldr r0, [pc, #0x8213e6c-0x8213c52-2] // =dword_2009440
    ldr r1, [pc, #0x8213c64-0x8213c54-4] // =Window0HorizontalDimensions
    mov r2, #4
    ldr r3, [pc, #0x8213c68-0x8213c58-4] // =0xA2600000
    ldr r4, [pc, #0x8213c70-0x8213c5a-2] // =sub_8006084+1
    mov lr, pc
    bx r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8213C64:    .word Window0HorizontalDimensions
dword_8213C68:    .word 0xA2600000
off_8213C6C:    .word f900_8000930+1
off_8213C70:    .word sub_8006084+1
.thumb
sub_8213C74:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, [pc, #0x8213e70-0x8213c7e-2] // =unk_200A160
    mov r7, r10
    ldr r6, [r7,#0x1c]
    mov r0, #0x3f 
    strb r0, [r6,#8]
    mov r0, #0x17
    strb r0, [r6,#0xa]
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x8213d3c-0x8213c90-4] // =sub_80035C0+1
    mov lr, pc
    bx r1
    tst r2, r2
    beq loc_8213CB4
    ldrh r2, [r5,#0x4] // (dword_200A164 - 0x200a160)
    cmp r2, #0xff
    bpl loc_8213CB4
    push {r0-r2}
    bl sub_8213D50
    pop {r0-r2}
    bl sub_8213E1E
    ldr r6, [r7,#0x1c]
    strh r0, [r6]
    mov r0, #1
    strh r0, [r6,#4]
loc_8213CB4:
    ldr r6, [r7,#0x20]
    mov r0, #0x48 
    strb r0, [r6]
    mov r0, #0x37 
    strb r0, [r6,#1]
    mov r0, #0x10
    strb r0, [r6,#3]
    ldr r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
    lsr r0, r0, #0x10
    strb r0, [r6,#2]
    ldr r0, [r5,#0x4] // (dword_200A164 - 0x200a160)
    ldr r1, [r5,#0x8] // (dword_200A168 - 0x200a160)
    ldr r2, [r5,#0x14] // (dword_200A174 - 0x200a160)
    add r1, r1, r2
    ldr r3, [r5,#0x1c] // (dword_200A17C - 0x200a160)
    cmp r1, r3
    bgt loc_8213CD8
    str r1, [r5,#0x8] // (dword_200A168 - 0x200a160)
loc_8213CD8:
    lsr r1, r1, #0x10
    add r0, r0, r1
    ldrb r3, [r5,#0x3] // (byte_200A163 - 0x200a160)
    cmp r0, r3
    bgt loc_8213CE6
    str r0, [r5,#0x4] // (dword_200A164 - 0x200a160)
    b loc_8213CE8
loc_8213CE6:
    str r3, [r5,#0x4] // (dword_200A164 - 0x200a160)
loc_8213CE8:
    ldr r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
    ldr r1, [r5,#0x10] // (dword_200A170 - 0x200a160)
    ldr r2, [r5,#0x18] // (dword_200A178 - 0x200a160)
    add r1, r1, r2
    ldr r3, [r5,#0x20] // (dword_200A180 - 0x200a160)
    cmp r1, r3
    bgt loc_8213CF8
    str r1, [r5,#0x10] // (dword_200A170 - 0x200a160)
loc_8213CF8:
    add r0, r0, r1
    ldrb r3, [r5,#0x3] // (byte_200A163 - 0x200a160)
    lsl r3, r3, #0x10
    cmp r0, r3
    bgt loc_8213D06
    str r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
    b loc_8213D08
loc_8213D06:
    str r3, [r5,#0xc] // (dword_200A16C - 0x200a160)
loc_8213D08:
    ldr r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
    lsr r0, r0, #0x10
    cmp r0, #0x10
    blt loc_8213D16
    mov r0, #0x10
    lsl r0, r0, #0x10
    str r0, [r5,#0xc] // (dword_200A16C - 0x200a160)
loc_8213D16:
    ldr r0, [r5,#0x4] // (dword_200A164 - 0x200a160)
    cmp r0, #0xff
    blt loc_8213D28
    mov r0, #1
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
loc_8213D28:
    mov r0, #0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .word 0x3006E38, 0xFFFF1FFF
off_8213D3C:    .word sub_80035C0+1
// end of function sub_8213C74

    push {r4-r7,lr}
    ldr r0, [pc, #0x8213d4c-0x8213d42-2] // =sub_800609C+1
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8213D4C:    .word sub_800609C+1
.thumb
sub_8213D50:
    push {r5,r7,lr}
    sub sp, sp, #8
    str r1, [sp]
    str r2, [sp,#4]
    mov r12, r0
    lsl r5, r2, #3
    sub r5, #8
    mov r8, r5
    mov r9, r2
    ldr r5, [pc, #0x8213e6c-0x8213d62-2] // =dword_2009440
    sub r7, r1, r2
    add r4, r1, #0
    lsl r6, r1, #3
    lsl r3, r7, #0x10
    ble loc_8213D8A
    cmp r7, #0xa0
    bmi loc_8213D80
    ldr r0, [pc, #0x8213e6c-0x8213d72-2] // =dword_2009440
    mov r2, #0xa0
    lsl r1, r2, #3
    bl sub_8213E78
    add sp, sp, #8
    pop {r5,r7,pc}
loc_8213D80:
    ldr r0, [pc, #0x8213e6c-0x8213d80-4] // =dword_2009440
    add r2, r7, #0
    lsl r1, r2, #3
    bl sub_8213E78
loc_8213D8A:
    ldr r2, [sp,#4]
    mov r1, r9
    mov r0, r9
    mul r1, r0
    add r0, r2, #0
    mul r2, r0
    sub r0, r2, r1
    svc 8
    lsl r1, r7, #3
    mov r2, r12
    add r4, r0, r2
    lsl r4, r4, #0x10
    bmi loc_8213DBC
    lsr r4, r4, #0x10
    cmp r4, #0xf0
    bmi loc_8213DAC
    mov r4, #0xf0
loc_8213DAC:
    sub r3, r2, r0
    lsl r3, r3, #0x10
    bpl loc_8213DB6
    mov r3, #0
    b loc_8213DC0
loc_8213DB6:
    lsr r3, r3, #0x10
    cmp r3, #0xf0
    bmi loc_8213DC0
loc_8213DBC:
    mov r4, #0
    mov r3, #0xff
loc_8213DC0:
    lsl r0, r3, #8
    orr r0, r4
    lsl r1, r1, #0x10
    bmi loc_8213DD4
    lsr r1, r1, #0x10
    mov r3, #0xa0
    lsl r3, r3, #3
    cmp r1, r3
    bpl loc_8213DD4
    strh r0, [r5,r1]
loc_8213DD4:
    add r1, r6, #0
    mov r2, r8
    add r1, r1, r2
    lsl r1, r1, #0x10
    bmi loc_8213DEA
    lsr r1, r1, #0x10
    mov r3, #0xa0
    lsl r3, r3, #3
    cmp r1, r3
    bpl loc_8213DEA
    strh r0, [r5,r1]
loc_8213DEA:
    sub r2, #8
    mov r8, r2
    mov r0, r9
    sub r0, #1
    mov r9, r0
    add r7, #1
    ldr r4, [sp]
    cmp r7, r4
    blt loc_8213D8A
    ldr r2, [sp,#4]
    add r7, r7, r2
    lsl r7, r7, #0x10
    lsr r7, r7, #0x10
    cmp r7, #0xa0
    bpl loc_8213E1A
    lsl r3, r7, #3
    ldr r0, [pc, #0x8213e6c-0x8213e0a-2] // =dword_2009440
    add r0, r0, r3
    mov r1, #0xa0
    sub r1, r1, r7
    lsl r1, r1, #3
    mov r2, #0xa0
    bl sub_8213E78
loc_8213E1A:
    add sp, sp, #8
    pop {r5,r7,pc}
// end of function sub_8213D50

.thumb
sub_8213E1E:
    push {lr}
    mov r12, r0
    sub r4, r1, r2
    mov r3, #0
    mvn r3, r3
    eor r4, r3
    bmi loc_8213E66
    sub r1, r2, r4
    add r4, r1, #0
    mul r1, r4
    add r0, r2, #0
    mul r0, r2
    sub r0, r0, r1
    svc 8
    mov r2, r12
    add r4, r0, r2
    lsl r4, r4, #0x10
    bmi loc_8213E5C
    bcs loc_8213E5C
    lsr r4, r4, #0x10
    cmp r4, #0xf0
    bmi loc_8213E4C
    mov r4, #0xf0
loc_8213E4C:
    sub r3, r2, r0
    lsl r3, r3, #0x10
    bpl loc_8213E56
    mov r3, #0
    b loc_8213E60
loc_8213E56:
    lsr r3, r3, #0x10
    cmp r3, #0xf0
    bmi loc_8213E60
loc_8213E5C:
    mov r4, #0
    mov r3, #0xff
loc_8213E60:
    lsl r0, r3, #8
    orr r0, r4
    pop {pc}
loc_8213E66:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8213E6C:    .word dword_2009440
off_8213E70:    .word unk_200A160
    .word dword_2008920
// end of function sub_8213E1E

.thumb
sub_8213E78:
    push {r5,lr}
    add r3, r2, #1
    lsl r2, r2, #8
    orr r2, r3
    ldr r3, [pc, #0x8213e98-0x8213e80-4] // =0xFFFF0000
    orr r2, r3
    ldr r3, [pc, #0x8213e9c-0x8213e84-4] // =0xFFFFFF00
    ldr r5, [pc, #0x8213ea0-0x8213e86-2] // =0xFF
    sub r1, #4
loc_8213E8A:
    str r2, [r0,r1]
    sub r1, #4
    str r3, [r0,r1]
    sub r2, r2, r5
    sub r1, #4
    bpl loc_8213E8A
    pop {r5,pc}
dword_8213E98:    .word 0xFFFF0000
dword_8213E9C:    .word 0xFFFFFF00
off_8213EA0:    .word 0x101
// end of function sub_8213E78

.thumb
sub_8213EA4:
    push {r0-r7,lr}
    cmp r0, r1
    blt loc_8213EB8
loc_8213EAA:
    ldr r3, [r0]
    str r3, [r1]
    add r0, #4
    add r1, #4
    sub r2, #4
    bgt loc_8213EAA
    pop {r0-r7,pc}
loc_8213EB8:
    sub r2, #4
    add r0, r0, r2
    add r1, r1, r2
loc_8213EBE:
    ldr r3, [r0]
    str r3, [r1]
    sub r0, #4
    sub r1, #4
loc_8213EC6:
    sub r2, #4
    bge loc_8213EBE
    pop {r0-r7,pc}
    sub r1, #4
    sub r2, #4
    bge loc_8213EC6
    pop {r0-r7,pc}  // <endpool> <endfile>
// end of function sub_8213EA4

/*For debugging purposes, connect comment at any range!*/
