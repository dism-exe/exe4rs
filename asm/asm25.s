.include "asm25.inc"

.thumb
sub_8097328:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809733c-0x809732a-2] // dword_8097340
    ldrb r1, [r5,#4]
    mov r2, #0x10
    mul r1, r2
    add r0, r0, r1
    str r0, [r5,#0x34]
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809733C:    .word dword_8097340
dword_8097340:    .word 0x7000190, 0x4E0000, 0x1800000, 0x0
    .word 0x7000191, 0xFF860000, 0x1880000, 0x0
    .word 0x7000292, 0xFEBE0000, 0x700000, 0x0
dword_8097370:    .word 0x4706003B
    .word sub_809739C+1
    .word 0x973B947, 0x88241108, 0xA080973, 0x43B24, 0x4004FF3E
    .word 0x1EFF0200, 0xFF0143, 0x9741147, 0x1008
// end of function sub_8097328

.thumb
sub_809739C:
    push {r4-r7,lr}
    ldrb r4, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#0x20]
    sub r0, r0, r4
    bgt loc_80973AC
    mov r0, #1
loc_80973AC:
    strh r0, [r1,#0x20]
    mov r0, #0x6b 
    bl f500_8000558
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809739C

.thumb
sub_80973B8:
    push {r4-r7,lr}
    ldr r7, [pc, #0x809740c-0x80973ba-2] // unk_20005E0
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldr r6, [r6,#0x28]
    ldrb r0, [r7,#0x1] // (byte_20005E1 - 0x20005e0)
    cmp r0, #0
    beq loc_80973D4
    cmp r0, #2
    beq loc_80973D4
    cmp r0, #1
    beq loc_80973E6
    cmp r0, #3
    beq loc_80973E6
loc_80973D4:
    mov r1, #0x2 // (word_20005E2 - 0x20005e0)
    ldrsh r2, [r7,r1]
    lsl r2, r2, #0x10
    ldr r1, [r6,#0x24]
    mov r0, #1
    cmp r2, r1
    blt loc_80973F6
    mov r0, #5
    b loc_80973F6
loc_80973E6:
    mov r1, #0x4 // (word_20005E4 - 0x20005e0)
    ldrsh r2, [r7,r1]
    lsl r2, r2, #0x10
    ldr r1, [r6,#0x28]
    mov r0, #3
    cmp r2, r1
    blt loc_80973F6
    mov r0, #7
loc_80973F6:
    add r4, r0, #0
    bl sub_80A6F0E
    add r4, #4
    mov r0, #7
    and r0, r4
    add r0, #0x25 
    bl sub_80A6DB8
    mov r0, #0
    pop {r4-r7,pc}
off_809740C:    .word unk_20005E0
// end of function sub_80973B8

.thumb
sub_8097410:
    push {r4-r7,lr}
    bl sub_80A6F18
    add r0, #4
    mov r1, #7
    and r0, r1
    add r4, r0, #0
    bl sub_80A6F0E
    add r4, #0
    add r0, r4, #0
    bl sub_80A6DB8
    mov r0, #0
    pop {r4-r7,pc}  // <endpool>
// end of function sub_8097410

/*For debugging purposes, connect comment at any range!*/
