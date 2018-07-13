.include "sect0/asm04.inc"

.thumb
sub_8053980:
    push {r1,r2}
    ldr r1, [pc, #0x80539ac-0x8053982-2] // dword_200A600
    ldr r2, [r1]
    orr r2, r0
    str r2, [r1]
    pop {r1,r2}
    mov pc, lr
    .byte 0
    .byte 0
// end of function sub_8053980

.thumb
sub_8053990:
    push {r1,r2}
    ldr r1, [pc, #0x80539ac-0x8053992-2] // dword_200A600
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    pop {r1,r2}
    mov pc, lr
    .byte 0
    .byte 0
// end of function sub_8053990

.thumb
sub_80539A0:
    push {r1}
    ldr r1, [pc, #0x80539ac-0x80539a2-2] // dword_200A600
    ldr r1, [r1]
    and r0, r1
    pop {r1}
    mov pc, lr
off_80539AC:    .word dword_200A600
unk_80539B0:    .byte 2
    .byte 0xB4
    .byte 3
    .byte 0x49 
    .byte 9
    .byte 0x68 
    .byte 7
    .byte 0x20
    .byte 8
    .byte 0x40 
    .byte 2
    .byte 0xBC
    .byte 0xF7
    .byte 0x46 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA6
    .byte 0
    .byte 2
unk_80539C4:    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0x20
    .byte 0x28 
    .byte 0x67 
    .byte 0xE8
    .byte 0x73 
    .byte 0xE8
    .byte 0x67 
    .byte 5
    .byte 0x48 
    .byte 5
    .byte 0x49 
    .byte 0xAC
    .byte 0xF7
    .byte 0xBD
    .byte 0xFF
    .byte 6
    .byte 0x48 
    .byte 0xAC
    .byte 0xF7
    .byte 0xBA
    .byte 0xFF
    .byte 3
    .byte 0x48 
    .byte 0xAC
    .byte 0xF7
    .byte 0xB7
    .byte 0xFF
    .byte 0
    .byte 0xBD
    .byte 0x20
    .byte 0xD9
    .byte 0
    .byte 2
    .byte 0
    .byte 0xF
    .byte 0
    .byte 0
    .byte 0
    .byte 0x57 
    .byte 1
    .byte 6
    .byte 0x20
    .byte 0xE8
    .byte 0
    .byte 2
    .byte 2
    .byte 0xB4
    .byte 0x51 
    .byte 0x46 
    .byte 0x49 
    .byte 0x68 
    .byte 0x49 
    .byte 0x88
    .byte 8
    .byte 0x40 
    .byte 2
    .byte 0xBC
    .byte 0xF7
    .byte 0x46 
    .byte 0
    .byte 0
// end of function sub_80539A0

.thumb
sub_8053A04:
    push {lr}
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    mov r1, r8
    push {r1}
    mov r1, r9
    push {r1}
    ldr r1, [pc, #0x8053a24-0x8053a14-4] // loc_300677C+1
    mov lr, pc
    bx r1
// end of function sub_8053A04

    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {pc}
off_8053A24:    .word loc_300677C+1
function_chunks__function_chunks_loc_8053A28:
    push {lr}
    push {r0-r2}
    mov r0, #1
    b loc_8053A36
.thumb
sub_8053A30:
    push {lr}
    push {r0-r2}
    mov r0, #0
loc_8053A36:
    ldr r1, [pc, #0x8053a68-0x8053a36-2] // byte_200A6C0
    mov r2, #(byte_200A6F4 - 0x200a6c0)
    strb r0, [r1,r2]
    pop {r0-r2}
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    mov r1, r12
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r8
    push {r1}
    ldr r1, [pc, #0x8053a64-0x8053a50-4] // sub_8053B84+1
    mov lr, pc
    bx r1
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r12, r1
    pop {pc}
off_8053A64:    .word sub_8053B84+1
off_8053A68:    .word byte_200A6C0
// end of function sub_8053A30

.thumb
sub_8053A6C:
    push {r6,r7,lr}
    mov r1, r8
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r12
    push {r1}
    sub sp, sp, #0x10
    mov r8, r2
    str r2, [sp,#8]
    mov r9, r3
    add r7, r4, #0
    str r4, [sp,#4]
    mov r1, #8
    mul r0, r1
    ldr r6, [pc, #0x8053aec-0x8053a8a-2] // loc_8053AF0
    add r6, r6, r0
    ldr r0, [pc, #0x8053ae8-0x8053a8e-2] // =0x40000000
    mov r12, r0
    ldr r1, [r6]
    str r1, [sp]
loc_8053A96:
    lsl r4, r4, #0x10
    orr r0, r4
    orr r0, r5
    ldrb r2, [r6,#5]
    lsl r2, r2, #0xa
    orr r1, r2
    ldrb r2, [r6,#4]
    ldrb r3, [r6,#6]
    bl sub_8025BD8
// end of function sub_8053A6C

    mov r2, #0x10
    add r7, r7, r2
    add r4, r7, #0
    mov r0, r12
    ldr r1, [sp]
    add r1, #4
    str r1, [sp]
    mov r2, r8
    sub r2, #1
    mov r8, r2
    cmp r2, #0
    bgt loc_8053A96
    add r5, #0x10
    ldr r4, [sp,#4]
    add r7, r4, #0
    ldr r2, [sp,#8]
    mov r8, r2
    mov r2, r9
    sub r2, #1
    mov r9, r2
    cmp r2, #0
    bgt loc_8053A96
    add sp, sp, #0x10
    pop {r1}
    mov r12, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_8053AE8:    .word 0x40000000
off_8053AEC:    .word loc_8053AF0
loc_8053AF0:
    b loc_8054064
    .balign 4, 0x00
    .word 0xFF000000, 0xE0B0, 0xFF010300, 0xE0B0, 0xFF010300
    .word 0x8340, 0xFF000300, 0xE340, 0xFF000000, 0xE340
    .word 0xFF000000, 0xE340, 0xFF000000
off_8053B28:    .word sub_8053D58+1
    .word 0x3006A01, 0x3006A31, 0x8053D63, 0x0, 0x0, 0x0, 0x0
    .word 0x30069FD, 0x0, 0x0
    .word 0x3006A05, 0x8053DB1, 0x0, 0x0
    .word 0x3006A19, 0x3006A2D, 0x0, 0x0, 0x0
    .word sub_8053E60+1
    .word 0x0, 0x0
.thumb
sub_8053B84:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8053bf4-0x8053b86-2] // byte_200A6C0
    lsl r4, r4, #3
    strb r4, [r1]
    strb r5, [r1,#(byte_200A6C3 - 0x200a6c0)]
    str r6, [r1,#(dword_200A6D4 - 0x200a6c0)]
    mov r6, #0
    strb r6, [r1,#(byte_200A6C1 - 0x200a6c0)]
    str r6, [r1,#(dword_200A6D8 - 0x200a6c0)]
    str r2, [r1,#(dword_200A6DC - 0x200a6c0)]
    str r7, [r1,#(dword_200A6E0 - 0x200a6c0)]
    add r6, r0, #0
    push {r3}
    add r0, r2, #0
    lsl r5, r5, #4
    mul r4, r5
    add r1, r4, #0
    ldr r2, [pc, #0x8053e90-0x8053ba6-2] // =0x11111111
    bl f900_80009FC
    add r0, r7, #0
    bl f900_8000950
    add r0, r6, #0
    mov r3, #1
loc_8053BB6:
    cmp r3, #0
    beq loc_8053BE6
    ldrb r1, [r0]
    cmp r1, #0xe5
    blt loc_8053BCE
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r7, [pc, #0x8053bf0-0x8053bc4-4] // off_8053B28
    ldr r1, [r7,r1]
    mov lr, pc
    bx r1
    b loc_8053BB6
loc_8053BCE:
    cmp r1, #0xe4
    beq loc_8053BDA
    bl sub_8053BF8
    add r0, #1
    b loc_8053BB6
loc_8053BDA:
    ldrb r1, [r0,#1]
    add r1, #0xe4
    bl sub_8053BF8
    add r0, #2
    b loc_8053BB6
loc_8053BE6:
    pop {r0}
    bl sub_8053CA4
    add r0, r2, #0
    pop {r4-r7,pc}
off_8053BF0:    .word off_8053B28
off_8053BF4:    .word byte_200A6C0
// end of function sub_8053B84

.thumb
sub_8053BF8:
    push {r0,r3,lr}
    mov r3, r10
    push {r3}
    mov r3, r8
    push {r3}
    ldr r5, [pc, #0x8053c94-0x8053c02-2] // byte_200A6C0
    ldr r6, [r5,#(dword_200A6D8 - 0x200a6c0)]
    lsr r7, r6, #5
    lsl r7, r7, #2
    ldr r4, [r5,#(dword_200A6DC - 0x200a6c0)]
    add r7, r7, r4
    mov r8, r7
    mov r4, #0x1f
    and r6, r4
    mov r9, r6
    ldr r0, [r5,#(dword_200A6D4 - 0x200a6c0)]
    mov r7, #0x60 
    mul r7, r1
    add r7, r7, r0
    ldr r4, [pc, #0x8053c98-0x8053c1e-2] // off_8053C9C
    mov r3, #(byte_200A6F4 - 0x200a6c0)
    ldrb r6, [r5,r3]
    lsl r6, r6, #2
    ldr r4, [r4,r6]
    lsl r1, r1, #2
    ldr r3, [r4,r1]
    lsl r3, r3, #2
    ldr r4, [r5,#(dword_200A6D8 - 0x200a6c0)]
    add r4, r4, r3
    str r4, [r5,#(dword_200A6D8 - 0x200a6c0)]
    mov r2, #0x40 
    sub r2, r3, r2
    neg r2, r2
    mov r10, r2
    mov r6, #0xb
    add r3, r9
    mov r12, r3
loc_8053C42:
    ldr r0, [r7]
    ldr r1, [r7,#4]
    mov r2, r10
    lsl r1, r2
    lsr r1, r2
    mov r3, r9
    mov r5, #0x20 
    sub r4, r5, r3
    add r5, r1, #0
    lsr r5, r4
    add r2, r5, #0
    lsl r1, r3
    add r5, r0, #0
    lsr r5, r4
    orr r1, r5
    lsl r0, r3
    mov r5, r8
    ldr r3, [r5]
    lsl r3, r4
    lsr r3, r4
    orr r0, r3
    str r0, [r5]
    mov r4, r12
    sub r4, #0x20 
    ble loc_8053C7C
    str r1, [r5,#4]
    sub r4, #0x20 
    ble loc_8053C7C
    str r2, [r5,#8]
loc_8053C7C:
    mov r0, #8
    add r7, r7, r0
    ldr r0, [pc, #0x8053c94-0x8053c80-4] // byte_200A6C0
    ldrb r0, [r0]
    add r8, r0
    sub r6, #1
    bge loc_8053C42
    pop {r3}
    mov r8, r3
    pop {r3}
    mov r10, r3
    pop {r0,r3,pc}
off_8053C94:    .word byte_200A6C0
off_8053C98:    .word off_8053C9C
off_8053C9C:    .word dword_80515B8
    .word dword_80515B8+0x6E4
// end of function sub_8053BF8

.thumb
sub_8053CA4:
    push {r0,lr}
    mov r1, r12
    push {r1}
    sub sp, sp, #0x10
    ldr r7, [pc, #0x8053d54-0x8053cac-4] // byte_200A6C0
    ldrb r1, [r7,#(byte_200A6C3 - 0x200a6c0)]
    str r1, [sp,#4]
    ldrb r1, [r7]
    lsr r3, r1, #3
    mov r9, r3
    lsl r2, r1, #1
    ldr r6, [r7,#(dword_200A6DC - 0x200a6c0)]
    ldr r7, [r7,#(dword_200A6E0 - 0x200a6c0)]
    mov r5, #0
    mov r12, r5
    str r6, [sp]
loc_8053CC4:
    ldr r6, [sp]
    add r6, r6, r5
    mov r0, r9
    tst r0, r0
    beq loc_8053D1C
    sub r0, #1
    mov r9, r0
    mov r3, #2
loc_8053CD4:
    mov r8, r6
    mov r4, #2
loc_8053CD8:
    ldr r0, [r6]
    str r0, [r7]
    ldr r0, [r6,r1]
    str r0, [r7,#4]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#8]
    ldr r0, [r6,r1]
    str r0, [r7,#0xc]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#0x10]
    ldr r0, [r6,r1]
    str r0, [r7,#0x14]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#0x18]
    ldr r0, [r6,r1]
    str r0, [r7,#0x1c]
    mov r6, r8
    add r6, #4
    add r7, #0x20 
    mov r8, r6
    sub r4, #1
    bgt loc_8053CD8
    mov r0, #8
    mul r0, r1
    sub r0, #8
    add r6, r6, r0
    sub r3, #1
    cmp r3, #0
    bgt loc_8053CD4
    add r5, #8
    b loc_8053CC4
loc_8053D1C:
    mov r0, r12
    add r0, #1
    mov r12, r0
    ldr r6, [sp]
    add r3, r1, #0
    lsl r3, r3, #4
    add r6, r6, r3
    str r6, [sp]
    mov r5, #0
    lsr r3, r1, #3
    mov r9, r3
    ldr r3, [sp,#4]
    cmp r0, r3
    bne loc_8053CC4
    add sp, sp, #0x10
    pop {r1}
    mov r12, r1
    pop {r0}
    ldr r6, [pc, #0x8053d54-0x8053d40-4] // byte_200A6C0
    add r1, r0, #0
    ldr r0, [r6,#(dword_200A6E0 - 0x200a6c0)]
    add r2, r0, #0
    sub r2, r7, r2
    bl loc_8000874
    pop {pc}
    .word 0xF00
off_8053D54:    .word byte_200A6C0
// end of function sub_8053CA4

.thumb
sub_8053D58:
    push {lr}
    bl sub_8053D62
    mov r3, #0
    pop {pc}
// end of function sub_8053D58

.thumb
sub_8053D62:
    push {r0}
    ldr r2, [pc, #0x8053e5c-0x8053d64-4] // byte_200A6C0
    ldr r6, [r2,#(dword_200A6D8 - 0x200a6c0)]
    lsr r7, r6, #5
    lsl r7, r7, #2
    ldr r4, [r2,#(dword_200A6DC - 0x200a6c0)]
    add r7, r7, r4
    mov r4, #0x1f
    and r6, r4
    ldr r4, [pc, #0x8053dac-0x8053d74-4] // =0x11111111
    add r5, r4, #0
    lsr r4, r6
    lsl r4, r6
    ldrb r1, [r2]
    mov r3, #0xb
loc_8053D80:
    ldr r0, [r7]
    orr r0, r4
    tst r6, r6
    ble loc_8053D8A
    str r0, [r7]
loc_8053D8A:
    add r7, r7, r1
    sub r3, #1
    bge loc_8053D80
    ldrb r4, [r2,#(byte_200A6C1 - 0x200a6c0)]
    add r4, #1
    strb r4, [r2,#(byte_200A6C1 - 0x200a6c0)]
    ldrb r1, [r2]
    mov r7, #0xe
    mul r1, r7
    lsl r1, r1, #3
    mul r1, r4
    str r1, [r2,#(dword_200A6D8 - 0x200a6c0)]
    pop {r0}
    add r0, #1
    mov pc, lr
    .word byte_200A6C0
dword_8053DAC:    .word 0x11111111
// end of function sub_8053D62

    push {r3,lr}
    push {r0,r4-r6}
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    add r1, #4
    ldr r7, [pc, #0x8053e5c-0x8053dba-2] // byte_200A6C0
    ldr r0, [r7,r1]
    ldr r6, [pc, #0x8053e54-0x8053dbe-2] // fa00_8000a30+1
    mov lr, pc
    bx r6
    mov r8, r0
    ldr r6, [pc, #0x8053e58-0x8053dc6-2] // fa00_8000a8c+1
    mov lr, pc
    bx r6
    add r7, r0, #0
    sub r0, #1
    lsl r1, r0, #2
    pop {r0,r4-r6}
    ldrb r3, [r0,#2]
    cmp r3, #0x80
    bge loc_8053E12
    sub r3, r3, r7
    mov r7, #0
    cmp r3, #0x40 
    blt loc_8053DE6
    sub r3, #0x40 
    mov r7, #1
loc_8053DE6:
    push {r0}
    push {r7}
    mov r0, #0xf
loc_8053DEC:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_8053BF8
    pop {r1}
    sub r1, #4
    bge loc_8053DEC
    pop {r0}
loc_8053E04:
    cmp r3, #0
    ble loc_8053E4C
    sub r3, #1
    add r1, r0, #0
    bl sub_8053BF8
    b loc_8053E04
loc_8053E12:
    sub r3, #0x80
    sub r3, r3, r7
    push {r0,r1}
    mov r0, #0
    cmp r3, #0x40 
    blt loc_8053E22
    sub r3, #0x40 
    mov r0, #1
loc_8053E22:
    cmp r3, #0
    ble loc_8053E30
    sub r3, #1
    add r1, r0, #0
    bl sub_8053BF8
    b loc_8053E22
loc_8053E30:
    pop {r0,r1}
    push {r0}
    mov r0, #0xf
loc_8053E36:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_8053BF8
    pop {r1}
    sub r1, #4
    bge loc_8053E36
loc_8053E4C:
    pop {r0}
    add r0, #3
    pop {r3,pc}
    .balign 4, 0x00
off_8053E54:    .word fA00_8000A30+1
off_8053E58:    .word fA00_8000A8C+1
off_8053E5C:    .word byte_200A6C0
.thumb
sub_8053E60:
    push {r3,lr}
    push {r0}
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    mov r7, r10
    ldr r7, [r7,#0x44]
    add r7, #0x70 
    ldr r2, [r7,r1]
    mov r5, #0
    mov r6, #0xff
loc_8053E74:
    add r1, r2, #0
    lsr r1, r5
    and r1, r6
    push {r2,r5,r6}
    bl sub_8053BF8
    pop {r2,r5,r6}
    add r5, #8
    cmp r5, #0x10
    ble loc_8053E74
    pop {r0}
    add r0, #2
    pop {r3,pc}
    .byte 0, 0
dword_8053E90:    .word 0x11111111
off_8053E94:    .word loc_8102E9C+1
    .word loc_8103ED0+1
    .word loc_81045E0+1
    .word loc_81048C0+1
    .word loc_8104C58+1
    .word loc_8104E58+1
    .word loc_81050B0+1
    .word loc_81052F4+1
    .word loc_81056D0+1
    .word loc_8105858+1
    .word loc_81059C0+1
    .word loc_81063F4+1
    .word loc_81064E8+1
    .word loc_8106BEC+1
    .word loc_8106E34+1
    .word loc_8106EE8+1
    .word loc_8106FB4+1
    .word loc_8107030+1
    .word loc_810719C+1
    .word loc_8107248+1
    .word loc_8107368+1
    .word loc_8107418+1
    .word loc_8107660+1
    .word loc_8107A4C+1
    .word loc_8107E98+1
    .word loc_81081FC+1
    .word loc_8108608+1
    .word loc_8108754+1
    .word loc_8108934+1
    .word loc_81089D8+1
    .word loc_8108BDC+1
    .word loc_8108C78+1
    .word loc_8108DE0+1
    .word loc_8108F44+1
    .word loc_810939C+1
    .word loc_81099F0+1
    .word loc_8109DC4+1
    .word loc_8109E78+1
    .word loc_8109F48+1
    .word loc_810A02C+1
    .word loc_810A2E4+1
    .word loc_810A434+1
    .word loc_810A500+1
    .word loc_810A768+1
    .word loc_810A8EC+1
    .word loc_810AB80+1
    .word loc_810AC44+1
    .word loc_810ADE0+1
    .word loc_810B014+1
    .word loc_810B23C+1
    .word loc_810B31C+1
// end of function sub_8053E60

    push {r0,r5}
    lsr r0, r2, #0x20
    push {r0,r4,r6,r7}
    lsr r0, r2, #0x20
    .word loc_810B6A0+1
    .word loc_810B8F4+1
    .word loc_810B9EC+1
    .word loc_810BAB4+1
    .word loc_810BB84+1
    .word loc_810BC5C+1
    .word loc_810BDE8+1
    .word loc_810BEB8+1
    .word loc_810C338+1
    .word loc_810CDC0+1
    .word loc_810CEB0+1
    .word loc_810D078+1
    .word loc_810D1B8+1
    .word loc_810D260+1
    .word loc_810D414+1
    .word loc_810D7B0+1
    .word loc_810D8A8+1
    .word loc_810D9E8+1
    .word loc_810DA9C+1
    .word loc_810DB44+1
    .word loc_810DE14+1
    .word loc_810DF10+1
    .word loc_810E116+1
    .word loc_810E190+1
    .word loc_810E340+1
    .word loc_810E5C4+1
    .word loc_810E760+1
    .word loc_810E968+1
.thumb
sub_8053FD8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8054128-0x8053fda-2] // byte_2008BB0
    ldr r1, [pc, #0x8053ff8-0x8053fdc-4] // =0x840
    bl f900_8000930
    ldr r5, [pc, #0x8054128-0x8053fe2-2] // byte_2008BB0
    mov r7, #0
loc_8053FE6:
    mov r0, #0x20 
    strb r0, [r5,#2]
    strb r7, [r5,#3]
    add r5, #0x58 
    add r7, #1
    cmp r7, #0x18
    blt loc_8053FE6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8053FF8:    .word 0x840
// end of function sub_8053FD8

.thumb
sub_8053FFC:
    push {r4-r7,lr}
loc_8053FFE:
    ldrb r7, [r0]
    cmp r7, #0xff
    beq locret_8054016
    push {r0}
    ldrh r2, [r0,#2]
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    bl sub_80540C6
    pop {r0}
    add r0, #4
    b loc_8053FFE
locret_8054016:
    pop {r4-r7,pc}
// end of function sub_8053FFC

loc_8054018:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, [pc, #0x8054128-0x8054022-2] // byte_2008BB0
    mov r7, #0
loc_8054026:
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq loc_805403E
    ldr r0, [pc, #0x8054050-0x805402e-2] // off_8053E94
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    push {r7}
    mov lr, pc
    bx r0
    pop {r7}
loc_805403E:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0x18
    blt loc_8054026
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8054050:    .word off_8053E94
.thumb
sub_8054054:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, [pc, #0x8054128-0x805405e-2] // byte_2008BB0
    mov r7, #0
loc_8054062:
    ldrb r0, [r5]
loc_8054064:
    mov r1, #2
    tst r0, r1
    beq loc_80540A8
    push {r0,r5,r7}
    add r5, #0x20 
    bl sub_805412C
    pop {r0,r5,r7}
    mov r1, #0x40 
    tst r0, r1
    bne loc_805409A
    mov r1, #0x80
    tst r0, r1
    bne loc_805408A
    push {r0,r5,r7}
    add r5, #0x20 
    bl sub_800293C
    pop {r0,r5,r7}
loc_805408A:
    mov r1, #0x20 
    tst r0, r1
    beq loc_805409A
    push {r5,r7}
    add r5, #0x20 
    bl sub_8002998
    pop {r5,r7}
loc_805409A:
    push {r5,r7}
    add r5, #0x20 
    mov r0, #0
    mov r1, #0
    bl sub_800280C
    pop {r5,r7}
loc_80540A8:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0x18
    blt loc_8054062
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
// end of function sub_8054054

.thumb
sub_80540BA:
    push {r4-r7,lr}
    bl sub_8054100
    bl sub_8053FD8
    pop {r4-r7,pc}
// end of function sub_80540BA

.thumb
sub_80540C6:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8054128-0x80540c8-4] // byte_2008BB0
    mov r4, #0x58 
    mul r1, r4
    add r5, r5, r1
    strb r0, [r5,#1]
    mov r0, #9
    strb r0, [r5]
    str r2, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    add r0, r5, #0
    pop {r4-r7,pc}
// end of function sub_80540C6

.thumb
sub_80540E0:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5]
    bl sub_8002D9E
    pop {r4-r7,pc}
// end of function sub_80540E0

.thumb
sub_80540EC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8054128-0x80540ee-2] // byte_2008BB0
    mov r1, #0x58 
    mul r1, r0
    add r5, r5, r1
    mov r0, #0
    strb r0, [r5]
    bl sub_8002D9E
    pop {r4-r7,pc}
// end of function sub_80540EC

.thumb
sub_8054100:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8054128-0x8054102-2] // byte_2008BB0
    mov r7, #0
loc_8054106:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8054110
    bl sub_80540E0
loc_8054110:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0x18
    blt loc_8054106
    pop {r4-r7,pc}
// end of function sub_8054100

.thumb
sub_805411A:
    ldr r1, [pc, #0x8054128-0x805411a-2] // byte_2008BB0
    mov r2, #0x58 
    mul r2, r0
    add r1, r1, r2
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
off_8054128:    .word byte_2008BB0
// end of function sub_805411A

.thumb
sub_805412C:
    push {r5,lr}
    mov r1, #0xc
    ldrsh r1, [r5,r1]
    mov r6, #0xe
    ldrsh r6, [r5,r6]
    mov r12, r6
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x10
    and r3, r2
    beq loc_8054144
    mov r0, #1
loc_8054144:
    mov r8, r0
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x20 
    and r3, r2
    beq loc_8054152
    mov r0, #1
loc_8054152:
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
loc_805416C:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_80541B8
    mov r3, #1
    ldrsb r3, [r2,r3]
    mov r0, r8
    tst r0, r0
    beq loc_805417E
    neg r3, r3
loc_805417E:
    add r3, r3, r1
    mov r0, #0x40 
    neg r0, r0
    cmp r3, r0
    blt loc_80541B0
    mov r0, #0xf0
    add r0, #0x41 
    cmp r3, r0
    bge loc_80541B0
    mov r3, #2
    ldrsb r3, [r2,r3]
    mov r0, r9
    tst r0, r0
    beq loc_805419C
    neg r3, r3
loc_805419C:
    add r3, r12
    mov r0, #0x20 
    neg r0, r0
    cmp r3, r0
    blt loc_80541B0
    mov r0, #0xa0
    add r0, #0x21 
    cmp r3, r0
    bge loc_80541B0
    orr r7, r4
loc_80541B0:
    mov r12, r6
    lsr r4, r4, #1
    add r2, #5
    b loc_805416C
loc_80541B8:
    ldrb r3, [r5,#3]
    mov r4, #4
    tst r3, r4
    bne loc_80541DE
    add r6, r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
    bic r6, r4
    mov r4, #8
    bic r3, r4
    tst r6, r6
    beq loc_80541D2
    orr r3, r4
loc_80541D2:
    mov r4, #2
    bic r3, r4
    tst r7, r7
    beq loc_80541E8
    orr r3, r4
    b loc_80541E8
loc_80541DE:
    mov r4, #0xa
    bic r3, r4
    tst r7, r7
    beq loc_80541E8
    orr r3, r4
loc_80541E8:
    strb r3, [r5,#3]
    str r7, [r5,#0x28]
    pop {r5,pc}
    .byte 0, 0
    .word dword_805420C
    .word off_805426C
    .word dword_805428C
    .word off_805429C
    .word off_80542AC
    .word dword_80542BC
    .word off_80542CC  // <endpool>
// end of function sub_805412C

/*For debugging purposes, connect comment at any range!*/
