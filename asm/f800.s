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

