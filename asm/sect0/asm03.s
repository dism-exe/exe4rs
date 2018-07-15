.include "sect0/asm03.inc"

.thumb
sub_8046C98:
    ldr r7, [pc, #0x8046ca4-0x8046c98-4] // dword_8045538
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    mov pc, lr
    .balign 4, 0x00
off_8046CA4:    .word dword_8045538
// end of function sub_8046C98

.thumb
sub_8046CA8:
    mov r7, r10
    ldr r7, [r7,#0x60]
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    mov pc, lr
// end of function sub_8046CA8

.thumb
sub_8046CB4:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x5c]
    ldr r1, [pc, #0x8046cd0-0x8046cba-2] // dword_201C000
    mov r2, #0x20 
    bl f900_800098C
    mov r0, r10
    ldr r0, [r0,#0x60]
    ldr r1, [pc, #0x8046cd4-0x8046cc6-2] // unk_201C020
    mov r2, #0xc8
    bl f900_800098C
    pop {r4-r7,pc}
off_8046CD0:    .word dword_201C000
off_8046CD4:    .word unk_201C020
// end of function sub_8046CB4

.thumb
sub_8046CD8:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r5, [pc, #0x8046d58-0x8046cde-2] // byte_8046D60
    mov r1, #0xe
    mul r0, r1
    add r5, r5, r0
    ldr r1, [pc, #0x8046d5c-0x8046ce6-2] // dword_8046D79+3
    add r1, r1, r0
    mov r8, r1
    mov r6, r10
    ldr r6, [r6,#0x5c]
    mov r4, #0
loc_8046CF2:
    ldrb r0, [r6,r4]
    tst r0, r0
    beq loc_8046D0A
    sub r0, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8046D0A
    bl sub_8046C98
    ldrb r0, [r7,#3]
loc_8046D0A:
    lsl r0, r0, #1
    ldrh r1, [r5,r0]
    ldr r2, [pc, #0x8046d34-0x8046d0e-2] // unk_3002B30
    ldr r3, [pc, #0x8046d38-0x8046d10-4] // dword_8046D3C
    ldrb r3, [r3,r4]
    lsl r3, r3, #1
    add r2, r2, r3
    strh r1, [r2]
    strh r1, [r2,#2]
    ldrb r3, [r7,#1]
    cmp r3, #0
    beq loc_8046D28
    mov r1, r8
    ldrh r1, [r1,r0]
    strh r1, [r2,#2]
loc_8046D28:
    add r4, #1
    cmp r4, #0x19
    blt loc_8046CF2
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
off_8046D34:    .word unk_3002B30
off_8046D38:    .word dword_8046D3C
dword_8046D3C:    .word 0x382A2818, 0x2E2C1A3A, 0x481C3E3C, 0x1E5A584A, 0x5E5C4E4C
    .word 0x6C6A6878, 0x6E
off_8046D58:    .word byte_8046D60
off_8046D5C:    .word dword_8046D79+3
byte_8046D60:    .byte 0x4
    .word 0x3B6F7B31
    .word 0x5B037B62
    .word 0x36E0500
    .word 0xFF45A903
    .word 0xFF72BF7F
    .word 0x8910DF13
dword_8046D79:    .word 0x407877E
    .word 0xB75EF731
    .word 0x1702F751
    .word 0x805D8100
    .word 0x7B45A902
    .word 0x7B623B6F
    .word 0x5005B03
    .hword 0x26E
    .byte 3
// end of function sub_8046CD8

.thumb
sub_8046D98:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    ldr r5, [pc, #0x8046e24-0x8046da0-4] // dword_8046E2C
    mov r3, #0xe
    mul r2, r3
    add r5, r5, r2
    ldr r4, [pc, #0x8046e28-0x8046da8-4] // dword_8046E48
    add r4, r4, r2
    mov r9, r4
    bl sub_8046E64
    mov r8, r0
    mov r6, r10
    ldr r6, [r6,#0x5c]
    mov r4, #0
loc_8046DBA:
    ldrb r0, [r6,r4]
    cmp r0, r8
    bne loc_8046DF0
    tst r0, r0
    beq loc_8046DF0
    sub r0, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    bl sub_8046C98
    ldrb r0, [r7,#3]
    lsl r0, r0, #1
    ldrh r1, [r5,r0]
    ldr r2, [pc, #0x8046e00-0x8046dd6-2] // unk_3002B30
    ldr r3, [pc, #0x8046e04-0x8046dd8-4] // dword_8046E08
    ldrb r3, [r3,r4]
    lsl r3, r3, #1
    add r2, r2, r3
    strh r1, [r2]
    strh r1, [r2,#2]
    ldrb r3, [r7,#1]
    cmp r3, #0
    beq loc_8046DF0
    mov r1, r9
    ldrh r1, [r1,r0]
    strh r1, [r2,#2]
loc_8046DF0:
    add r4, #1
    cmp r4, #0x19
    blt loc_8046DBA
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    pop {r4-r7,pc}
    .byte 0, 0
off_8046E00:    .word unk_3002B30
off_8046E04:    .word dword_8046E08
dword_8046E08:    .word 0x382A2818, 0x2E2C1A3A, 0x481C3E3C, 0x1E5A584A, 0x5E5C4E4C
    .word 0x6C6A6878, 0x6E
off_8046E24:    .word dword_8046E2C
off_8046E28:    .word dword_8046E48
dword_8046E2C:    .word 0x6F7B3104, 0x37B623B, 0x6E05005B, 0x45A90303, 0x72BF7FFF
    .word 0x10DF13FF, 0x7877E89
dword_8046E48:    .word 0x5EF73104, 0x2F751B7, 0x5D810017, 0x45A90280, 0x623B6F7B
    .word 0x5B037B, 0x3026E05
// end of function sub_8046D98

.thumb
sub_8046E64:
    mov r3, r10
    ldr r3, [r3,#0x5c]
    mov r2, #5
    mul r1, r2
    add r0, r0, r1
    ldrb r0, [r3,r0]
    tst r0, r0
    mov pc, lr
// end of function sub_8046E64

.thumb
sub_8046E74:
    push {r4-r7,lr}
    add r0, #1
    push {r0,r2,r3}
    add r0, r1, #0
    bl sub_8046EFC
    pop {r0-r2}
    sub r1, #2
    sub r2, #2
    mov r3, #5
    mul r3, r2
    add r3, r3, r1
    mov r6, r10
    ldr r6, [r6,#0x5c]
    add r6, r6, r3
    mov r5, #0
loc_8046E94:
    mov r3, #0
    push {r1}
    cmp r2, #0
    blt loc_8046EB8
    cmp r2, #5
    bge loc_8046EB8
loc_8046EA0:
    cmp r1, #0
    blt loc_8046EB0
    cmp r1, #5
    bge loc_8046EB0
    ldrb r4, [r7,r3]
    tst r4, r4
    beq loc_8046EB0
    strb r0, [r6,r3]
loc_8046EB0:
    add r1, #1
    add r3, #1
    cmp r3, #5
    blt loc_8046EA0
loc_8046EB8:
    pop {r1}
    add r6, #5
    add r7, #5
    add r2, #1
    add r5, #1
    cmp r5, #5
    blt loc_8046E94
    pop {r4-r7,pc}
// end of function sub_8046E74

.thumb
sub_8046EC8:
    mov r3, r10
    ldr r3, [r3,#0x5c]
    mov r1, #0
    add r0, #1
loc_8046ED0:
    ldrb r2, [r3,r1]
    cmp r0, r2
    bne loc_8046EDA
    mov r2, #0
    strb r2, [r3,r1]
loc_8046EDA:
    add r1, #1
    cmp r1, #0x19
    blt loc_8046ED0
    mov pc, lr
    .balign 4, 0x00
// end of function sub_8046EC8

.thumb
sub_8046EE4:
    ldr r7, [pc, #0x8046eec-0x8046ee4-4] // off_8046EF0
    lsl r0, r0, #2
    ldr r7, [r7,r0]
    mov pc, lr
off_8046EEC:    .word off_8046EF0
off_8046EF0:    .word dword_80469D4+0x18
    .word 0x8046ACD
    .word 0x8046BAE
// end of function sub_8046EE4

.thumb
sub_8046EFC:
    ldr r1, [pc, #0x8046f9c-0x8046efc-4] // byte_200A198
    ldrb r1, [r1]
    b sub_8046F02
// end of function sub_8046EFC

.thumb
sub_8046F02:
    push {r4-r6,lr}
    add r6, r1, #0
    add r2, r0, #0
    ldr r7, [pc, #0x8046f84-0x8046f08-4] // dword_8045538
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r7, [r7,#8]
    ldr r4, [pc, #0x8046fa0-0x8046f12-2] // unk_200A5E0
    ldr r0, [pc, #0x8046f88-0x8046f14-4] // off_8046F8C
    lsl r1, r6, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r7, [pc, #0x8046fa0-0x8046f1e-2] // unk_200A5E0
    pop {r4-r6,pc}
// end of function sub_8046F02

.thumb
sub_8046F22:
    push {lr}
    add r0, r7, #0
    add r1, r4, #0
    mov r2, #0x19
    bl f900_8000970
    pop {pc}
// end of function sub_8046F22

.thumb
sub_8046F30:
    push {lr}
    mov r5, #4
loc_8046F34:
    mov r6, #0
loc_8046F36:
    add r3, r5, r6
    ldrb r0, [r7]
    strb r0, [r4,r3]
    add r7, #1
    add r6, #5
    cmp r6, #0x19
    blt loc_8046F36
    sub r5, #1
    cmp r5, #0
    bge loc_8046F34
    pop {pc}
// end of function sub_8046F30

.thumb
sub_8046F4C:
    push {lr}
    mov r6, #0x14
loc_8046F50:
    mov r5, #4
loc_8046F52:
    add r3, r5, r6
    ldrb r0, [r7]
    strb r0, [r4,r3]
    add r7, #1
    sub r5, #1
    cmp r5, #0
    bge loc_8046F52
    sub r6, #5
    cmp r6, #0
    bge loc_8046F50
    pop {pc}
// end of function sub_8046F4C

.thumb
sub_8046F68:
    push {lr}
    mov r5, #0
loc_8046F6C:
    mov r6, #0x14
loc_8046F6E:
    add r3, r5, r6
    ldrb r0, [r7]
    strb r0, [r4,r3]
    add r7, #1
    sub r6, #5
    cmp r6, #0
    bge loc_8046F6E
    add r5, #1
    cmp r5, #5
    blt loc_8046F6C
    pop {pc}
off_8046F84:    .word dword_8045538
off_8046F88:    .word off_8046F8C
off_8046F8C:    .word sub_8046F22+1
    .word sub_8046F30+1
    .word sub_8046F4C+1
    .word sub_8046F68+1
off_8046F9C:    .word byte_200A198
off_8046FA0:    .word unk_200A5E0
// end of function sub_8046F68

.thumb
sub_8046FA4:
    ldr r1, [pc, #0x8046fb0-0x8046fa4-4] // byte_200A198
    strb r0, [r1]
    mov pc, lr
// end of function sub_8046FA4

.thumb
sub_8046FAA:
    ldr r0, [pc, #0x8046fb0-0x8046faa-2] // byte_200A198
    ldrb r0, [r0]
    mov pc, lr
off_8046FB0:    .word byte_200A198
// end of function sub_8046FAA

.thumb
sub_8046FB4:
    push {lr}
    bl sub_8046EFC
    mov r12, r7
    mov r1, #0
    mov r4, #5
loc_8046FC0:
    mov r0, #0
    mov r2, #0
    mov r6, #0
loc_8046FC6:
    ldrb r3, [r7,r0]
    tst r3, r3
    beq loc_8046FCE
    mov r6, #1
loc_8046FCE:
    tst r6, r6
    bne loc_8046FD4
    add r2, #1
loc_8046FD4:
    add r0, #1
    cmp r0, #5
    blt loc_8046FC6
    cmp r2, r4
    bgt loc_8046FE0
    add r4, r2, #0
loc_8046FE0:
    add r7, #5
    add r1, #1
    cmp r1, #5
    blt loc_8046FC0
    push {r4}
    mov r7, r12
    mov r1, #0
    mov r4, #5
loc_8046FF0:
    mov r0, #4
    mov r2, #0
    mov r6, #0
loc_8046FF6:
    ldrb r3, [r7,r0]
    tst r3, r3
    beq loc_8046FFE
    mov r6, #1
loc_8046FFE:
    tst r6, r6
    bne loc_8047004
    add r2, #1
loc_8047004:
    sub r0, #1
    cmp r0, #0
    bge loc_8046FF6
    cmp r2, r4
    bgt loc_8047010
    add r4, r2, #0
loc_8047010:
    add r7, #5
    add r1, #1
    cmp r1, #5
    blt loc_8046FF0
    push {r4}
    mov r7, r12
    mov r1, #0
    mov r4, #5
loc_8047020:
    mov r0, #0
    mov r2, #0
    mov r6, #0
loc_8047026:
    ldrb r3, [r7,r0]
    tst r3, r3
    beq loc_804702E
    mov r6, #1
loc_804702E:
    tst r6, r6
    bne loc_8047034
    add r2, #1
loc_8047034:
    add r0, #5
    cmp r0, #0x19
    blt loc_8047026
    cmp r2, r4
    bgt loc_8047040
    add r4, r2, #0
loc_8047040:
    add r7, #1
    add r1, #1
    cmp r1, #5
    blt loc_8047020
    push {r4}
    mov r7, r12
    mov r1, #0
    mov r4, #5
loc_8047050:
    mov r0, #0x14
    mov r2, #0
    mov r6, #0
loc_8047056:
    ldrb r3, [r7,r0]
    tst r3, r3
    beq loc_804705E
    mov r6, #1
loc_804705E:
    tst r6, r6
    bne loc_8047064
    add r2, #1
loc_8047064:
    sub r0, #5
    cmp r0, #0
    bge loc_8047056
    cmp r2, r4
    bgt loc_8047070
    add r4, r2, #0
loc_8047070:
    add r7, #1
    add r1, #1
    cmp r1, #5
    blt loc_8047050
    push {r4}
    pop {r3}
    pop {r2}
    pop {r1}
    pop {r0}
    pop {pc}
// end of function sub_8046FB4

.thumb
sub_8047084:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80470a0-0x8047086-2] // unk_201B000
    mov r1, r10
    ldr r1, [r1,#0x5c]
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x80470a4-0x8047092-2] // unk_201B020
    mov r1, r10
    ldr r1, [r1,#0x60]
    mov r2, #0xc8
    bl f900_800098C
    pop {r4-r7,pc}
off_80470A0:    .word unk_201B000
off_80470A4:    .word unk_201B020
// end of function sub_8047084

.thumb
sub_80470A8:
    push {r4-r7,lr}
    push {r0-r3}
    bl sub_80470C2
    add r4, r0, #0
    pop {r0-r3}
    bne loc_80470BC
    bl sub_8047112
    add r4, r0, #0
loc_80470BC:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_80470A8

.thumb
sub_80470C2:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    bl sub_8046EFC
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    sub r2, #2
    add r2, #5
    add r1, r1, r2
    sub r3, #2
    add r3, #5
    mov r4, #0xf
    mul r3, r4
    add r1, r1, r3
    mov r2, #0
    mov r0, #1
loc_80470EC:
    mov r3, #0
loc_80470EE:
    ldrb r4, [r7,r3]
    ldrb r5, [r1,r3]
    tst r5, r5
    bne loc_80470FA
    tst r4, r4
    bne loc_804710C
loc_80470FA:
    add r3, #1
    cmp r3, #5
    blt loc_80470EE
    add r7, #5
    add r1, #0xf
    add r2, #1
    cmp r2, #5
    blt loc_80470EC
    mov r0, #0
loc_804710C:
    add sp, sp, #0x10
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_80470C2

.thumb
sub_8047112:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    bl sub_8046EFC
    ldr r1, [sp,#8]
    ldr r2, [sp,#0xc]
    sub r1, #2
    sub r2, #2
    mov r3, #5
    mul r3, r2
    add r3, r3, r1
    mov r6, r10
    ldr r6, [r6,#0x5c]
    add r6, r6, r3
    mov r5, #0
loc_8047138:
    mov r3, #0
    push {r1}
    cmp r2, #0
    blt loc_804716A
    cmp r2, #5
    bge loc_804716A
loc_8047144:
    cmp r1, #0
    blt loc_8047162
    cmp r1, #5
    bge loc_8047162
    ldrb r4, [r7,r3]
    tst r4, r4
    beq loc_8047162
    ldrb r0, [r6,r3]
    tst r0, r0
    beq loc_8047162
    pop {r1}
    add sp, sp, #0x10
    add r1, r0, #0
    mov r0, #1
    pop {r4-r7,pc}
loc_8047162:
    add r1, #1
    add r3, #1
    cmp r3, #5
    blt loc_8047144
loc_804716A:
    pop {r1}
    add r6, #5
    add r7, #5
    add r2, #1
    add r5, #1
    cmp r5, #5
    blt loc_8047138
    add sp, sp, #0x10
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8047112

.thumb
sub_8047180:
    push {r5-r7,lr}
    push {r0-r4}
    mov r7, r10
    ldr r7, [r7,#0x60]
    mov r1, #0
loc_804718A:
    ldrb r0, [r7]
    tst r0, r0
    bne loc_80471A2
    add r6, r1, #0
    pop {r0-r4}
    strb r0, [r7]
    strb r1, [r7,#2]
    strb r2, [r7,#3]
    strb r3, [r7,#4]
    strb r4, [r7,#5]
    add r0, r6, #0
    pop {r5-r7,pc}
loc_80471A2:
    add r7, #8
    add r1, #1
    cmp r1, #0x19
    blt loc_804718A
    pop {r0-r4}
    pop {r5-r7,pc}
    .byte 0, 0
// end of function sub_8047180

.thumb
sub_80471B0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x60]
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    mov r0, #0
    strb r0, [r7]
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80471B0

.thumb
sub_80471CC:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x5c]
    ldr r1, [pc, #0x8047224-0x80471d2-2] // unk_201B000
    mov r2, #0x20 
    bl f900_800098C
    mov r0, r10
    ldr r0, [r0,#0x60]
    ldr r1, [pc, #0x8047228-0x80471de-2] // unk_201B020
    mov r2, #0xc8
    bl f900_800098C
    pop {r4-r7,pc}
// end of function sub_80471CC

.thumb
sub_80471E8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8047204-0x80471ea-2] // dword_201C000
    mov r1, r10
    ldr r1, [r1,#0x5c]
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x8047208-0x80471f6-2] // unk_201C020
    mov r1, r10
    ldr r1, [r1,#0x60]
    mov r2, #0xc8
    bl f900_800098C
    pop {r4-r7,pc}
off_8047204:    .word dword_201C000
off_8047208:    .word unk_201C020
// end of function sub_80471E8

.thumb
sub_804720C:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x60]
    mov r1, #0xc8
    bl f900_8000930
    mov r0, r10
    ldr r0, [r0,#0x5c]
    mov r1, #0x20 
    bl f900_8000930
    pop {r4-r7,pc}
off_8047224:    .word unk_201B000
off_8047228:    .word unk_201B020
// end of function sub_804720C

.thumb
sub_804722C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x804723c-0x804722e-2] // unk_2000190
    mov r1, #0x19
    mov r2, #0xff
    bl f900_80009B4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804723C:    .word unk_2000190
// end of function sub_804722C

.thumb
sub_8047240:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x64]
    mov r12, r0
    mov r1, #0x10
    bl f900_8000904
    ldr r0, [pc, #0x8047350-0x804724e-2] // byte_2007878
    mov r1, #0x19
    bl f900_8000904
    ldr r0, [pc, #0x80473c0-0x8047256-2] // unk_2007838
    mov r1, #0x19
    bl f900_8000904
    ldr r0, [pc, #0x80473c4-0x804725e-2] // byte_2007858
    mov r1, #0x19
    bl f900_8000904
    bl sub_80472D0
    bl sub_8047354
    bl sub_80473C8
    bl sub_8047510
    bl sub_8047540
    pop {r4-r7,pc}
// end of function sub_8047240

.thumb
sub_804727C:
    push {r4-r7,lr}
    mov r6, #0
loc_8047280:
    add r0, r6, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80472C6
    bl sub_8046C98
    ldrb r4, [r7]
    tst r4, r4
    beq loc_80472C6
    mov r5, #0
loc_8047298:
    cmp r5, r6
    beq loc_80472C0
    add r0, r5, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80472C0
    bl sub_8046C98
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80472C0
    cmp r0, r4
    bne loc_80472C0
    mov r0, r12
    ldrb r1, [r7,#4]
    ldrb r2, [r1,r0]
    add r2, #1
    strb r2, [r1,r0]
loc_80472C0:
    add r5, #1
    cmp r5, #0x19
    blt loc_8047298
loc_80472C6:
    add r6, #1
    cmp r6, #0x19
    blt loc_8047280
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_804727C

.thumb
sub_80472D0:
    push {r4-r7,lr}
    mov r0, r8
    push {r0}
    sub sp, sp, #0x14
    mov r0, #0xff
    str r0, [sp]
    str r0, [sp,#4]
    str r0, [sp,#8]
    str r0, [sp,#0xc]
    str r0, [sp,#0x10]
    mov r5, #0
    mov r6, #4
loc_80472E8:
    add r0, r6, #0
    mov r1, #2
    bl sub_8046E64
    mov r1, sp
    add r1, r1, r5
    mov r8, r1
    mov r4, #0
loc_80472F8:
    mov r2, sp
    add r2, r2, r4
    ldr r2, [r2]
    cmp r0, r2
    beq loc_8047340
    add r4, #4
    cmp r4, #0x14
    blt loc_80472F8
    tst r0, r0
    beq loc_8047340
    str r0, [r1]
    sub r0, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8047340
    bl sub_8046C98
    ldrb r0, [r7,#1]
    cmp r0, #1
    bne loc_8047338
    mov r0, r12
    ldrb r1, [r7,#4]
    ldrb r2, [r1,r0]
    add r2, #1
    strb r2, [r1,r0]
    mov r1, r8
    ldr r0, [r1]
    ldr r7, [pc, #0x80473c4-0x8047332-2] // byte_2007858
    strb r0, [r7,r6]
    b loc_8047340
loc_8047338:
    mov r1, r8
    ldr r0, [r1]
    ldr r7, [pc, #0x8047350-0x804733c-4] // byte_2007878
    strb r0, [r7,r6]
loc_8047340:
    add r5, #4
    sub r6, #1
    bge loc_80472E8
    add sp, sp, #0x14
    pop {r0}
    mov r8, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_8047350:    .word byte_2007878
// end of function sub_80472D0

.thumb
sub_8047354:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    mov r6, #0
    mov r5, #0
loc_804735C:
    add r0, r6, #0
    mov r1, #2
    bl sub_8046E64
    mov r1, sp
    add r1, r1, r5
    sub r0, #1
    str r0, [r1]
    add r5, #4
    add r6, #1
    cmp r6, #5
    blt loc_804735C
    mov r6, #0
loc_8047376:
    add r0, r6, #0
    mov r4, #0
loc_804737A:
    mov r2, sp
    add r2, r2, r4
    ldr r2, [r2]
    cmp r0, r2
    beq loc_80473B4
    add r4, #4
    cmp r4, #0x14
    blt loc_804737A
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80473B4
    bl sub_8046C98
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_80473AA
    mov r0, r12
    ldrb r1, [r7,#4]
    ldrb r2, [r1,r0]
    add r2, #1
    strb r2, [r1,r0]
    b loc_80473B4
loc_80473AA:
    ldr r7, [pc, #0x80473c0-0x80473aa-2] // unk_2007838
    add r7, r7, r6
    add r6, #1
    strb r6, [r7]
    sub r6, #1
loc_80473B4:
    add r6, #1
    cmp r6, #0x19
    blt loc_8047376
    add sp, sp, #0x14
    pop {r4-r7,pc}
    .byte 0, 0
off_80473C0:    .word unk_2007838
off_80473C4:    .word byte_2007858
// end of function sub_8047354

.thumb
sub_80473C8:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1}
    mov r6, #0
loc_80473D2:
    ldr r0, [pc, #0x8047480-0x80473d2-2] // unk_2007818
    mov r1, #0x19
    bl f900_8000904
    ldr r0, [pc, #0x8047480-0x80473da-2] // unk_2007818
    mov r8, r0
    mov r9, r0
    add r0, r6, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_804742A
    ldrb r0, [r7]
    ldrb r1, [r7,#2]
    sub r1, #1
    ldrb r2, [r7,#3]
    ldrb r3, [r7,#4]
    bl sub_8047484
    ldrb r0, [r7]
    ldrb r1, [r7,#2]
    add r1, #1
    ldrb r2, [r7,#3]
    ldrb r3, [r7,#4]
    bl sub_8047484
    ldrb r0, [r7]
    ldrb r1, [r7,#2]
    ldrb r2, [r7,#3]
    sub r2, #1
    ldrb r3, [r7,#4]
    bl sub_8047484
    ldrb r0, [r7]
    ldrb r1, [r7,#2]
    ldrb r2, [r7,#3]
    add r2, #1
    ldrb r3, [r7,#4]
    bl sub_8047484
    ldrb r0, [r7]
    bl sub_8047438
loc_804742A:
    add r6, #1
    cmp r6, #0x19
    blt loc_80473D2
    pop {r0,r1}
    mov r8, r0
    mov r9, r1
    pop {r4-r7,pc}
// end of function sub_80473C8

.thumb
sub_8047438:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r6, [sp]
    bl sub_8046C98
    ldrb r4, [r7,#3]
    mov r6, #0
    ldr r5, [pc, #0x8047480-0x8047446-2] // unk_2007818
loc_8047448:
    ldrb r0, [r5,r6]
    tst r0, r0
    beq loc_8047474
    sub r0, #1
    ldr r1, [sp]
    cmp r0, r1
    beq loc_8047474
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8047474
    bl sub_8046C98
    ldrb r0, [r7,#3]
    cmp r0, r4
    bne loc_8047474
    mov r0, r12
    ldrb r1, [r7,#4]
    ldrb r2, [r1,r0]
    add r2, #1
    strb r2, [r1,r0]
loc_8047474:
    add r6, #1
    cmp r6, #0x19
    blt loc_8047448
    add sp, sp, #4
    pop {r4-r7,pc}
    .byte 0, 0
off_8047480:    .word unk_2007818
// end of function sub_8047438

.thumb
sub_8047484:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r6, #1
    str r6, [sp,#0xc]
    ldr r0, [sp]
    add r1, r3, #0
    bl sub_8046F02
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    sub r1, #2
    sub r2, #2
    mov r3, #5
    mul r3, r2
    add r3, r3, r1
    mov r6, r10
    ldr r6, [r6,#0x5c]
    add r6, r6, r3
    mov r5, #0
loc_80474B0:
    mov r3, #0
    push {r1,r5}
    cmp r2, #0
    blt loc_80474FC
    cmp r2, #5
    bge loc_80474FC
loc_80474BC:
    cmp r1, #0
    blt loc_80474F4
    cmp r1, #5
    bge loc_80474F4
    ldrb r4, [r7,r3]
    tst r4, r4
    beq loc_80474F4
    ldrb r0, [r6,r3]
    tst r0, r0
    beq loc_80474F4
    push {r1}
    mov r1, #0
    mov r4, r9
    ldr r5, [sp,#0x18]
    cmp r5, r0
    beq loc_80474F2
loc_80474DC:
    ldrb r5, [r4]
    cmp r5, r0
    beq loc_80474F2
    add r4, #1
    add r1, #1
    cmp r1, #0x19
    blt loc_80474DC
    mov r4, r8
    strb r0, [r4]
    add r4, #1
    mov r8, r4
loc_80474F2:
    pop {r1}
loc_80474F4:
    add r1, #1
    add r3, #1
    cmp r3, #5
    blt loc_80474BC
loc_80474FC:
    pop {r1,r5}
    add r6, #5
    add r7, #5
    add r2, #1
    add r5, #1
    cmp r5, #5
    blt loc_80474B0
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8047484

.thumb
sub_8047510:
    push {r4-r7,lr}
    mov r6, #0
loc_8047514:
    add r0, r6, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8047538
    lsr r2, r0, #2
    mov r1, #0x17
    cmp r1, r2
    beq loc_804752A
    b loc_8047538
loc_804752A:
    bl sub_8046C98
    mov r0, r12
    ldrb r1, [r7,#4]
    ldrb r2, [r1,r0]
    add r2, #1
    strb r2, [r1,r0]
loc_8047538:
    add r6, #1
    cmp r6, #0x19
    blt loc_8047514
    pop {r4-r7,pc}
// end of function sub_8047510

.thumb
sub_8047540:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x14]
    cmp r0, #4
    ble locret_8047576
    cmp r0, #5
    bne loc_8047564
    mov r0, r12
    mov r1, #1
    ldrb r2, [r0,r1]
    add r2, #1
    strb r2, [r0,r1]
    mov r1, #3
    ldrb r2, [r0,r1]
    add r2, #1
    strb r2, [r0,r1]
    b locret_8047576
loc_8047564:
    mov r0, r12
    mov r1, #1
    ldrb r2, [r0,r1]
    add r2, #2
    strb r2, [r0,r1]
    mov r1, #3
    ldrb r2, [r0,r1]
    add r2, #2
    strb r2, [r0,r1]
locret_8047576:
    pop {r4-r7,pc}
// end of function sub_8047540

.thumb
sub_8047578:
    ldr r7, [pc, #0x804757c-0x8047578-4] // byte_2007878
    mov pc, lr
off_804757C:    .word byte_2007878
// end of function sub_8047578

.thumb
sub_8047580:
    ldr r7, [pc, #0x8047588-0x8047580-4] // unk_2007838
    mov pc, lr
// end of function sub_8047580

.thumb
sub_8047584:
    ldr r7, [pc, #0x804758c-0x8047584-4] // byte_2007858
    mov pc, lr
off_8047588:    .word unk_2007838
off_804758C:    .word byte_2007858
// end of function sub_8047584

.thumb
sub_8047590:
    mov r1, r10
    ldr r1, [r1,#0x64]
    ldrb r0, [r0,r1]
    cmp r0, #3
    ble locret_804759C
    mov r0, #3
locret_804759C:
    mov pc, lr
    .byte 0, 0
// end of function sub_8047590

.thumb
sub_80475A0:
    push {r4-r7,lr}
    mov r6, #1
    mov r4, #0
loc_80475A6:
    add r0, r6, #0
    bl sub_8047590
    orr r4, r0
    add r6, #1
    cmp r6, #0x10
    blt loc_80475A6
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80475A0

.thumb
sub_80475BC:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r6, #1
    mov r4, #0
loc_80475C4:
    add r0, r6, #0
    bl sub_8047590
    cmp r0, r7
    bne loc_80475D0
    orr r4, r0
loc_80475D0:
    add r6, #1
    cmp r6, #0x10
    blt loc_80475C4
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_80475BC

.thumb
sub_80475DC:
    mov r3, r10
    ldr r3, [r3,#0x64]
    ldrb r2, [r3,r0]
    add r2, r2, r1
    strb r2, [r3,r0]
    mov pc, lr
// end of function sub_80475DC

.thumb
sub_80475E8:
    mov r3, r10
    ldr r3, [r3,#0x64]
    mov r2, #0
    strb r2, [r3,r0]
    mov pc, lr
    .balign 4, 0x00
// end of function sub_80475E8

.thumb
sub_80475F4:
    ldr r2, [pc, #0x8047620-0x80475f4-4] // unk_203F6E0
    tst r0, r0
    beq loc_80475FC
    ldr r2, [pc, #0x8047624-0x80475fa-2] // unk_203F6F0
loc_80475FC:
    ldrb r0, [r1,r2]
    cmp r0, #3
    ble locret_8047604
    mov r0, #3
locret_8047604:
    mov pc, lr
    .balign 4, 0x00
// end of function sub_80475F4

.thumb
sub_8047608:
    push {r4,lr}
    ldr r3, [pc, #0x8047620-0x804760a-2] // unk_203F6E0
    tst r0, r0
    beq loc_8047612
    ldr r3, [pc, #0x8047624-0x8047610-4] // unk_203F6F0
loc_8047612:
    ldrb r4, [r3,r1]
    add r4, r4, r2
    strb r4, [r3,r1]
    bl loc_80429E8
    pop {r4,pc}
    .byte 0, 0
off_8047620:    .word unk_203F6E0
off_8047624:    .word unk_203F6F0
// end of function sub_8047608

.thumb
sub_8047628:
    push {r4-r7,lr}
    mov r5, #0
loc_804762C:
    ldr r7, [pc, #0x804765c-0x804762c-4] // dword_8046C90
    lsl r0, r5, #3
    add r7, r7, r0
    ldr r6, [pc, #0x8047660-0x8047632-2] // unk_8047664
    mov r4, #0
loc_8047636:
    ldrb r2, [r1,r4]
    ldrb r3, [r7,r4]
    ldrb r3, [r6,r3]
    cmp r2, r3
    bne loc_8047650
    add r4, #1
    cmp r4, #8
    blt loc_8047636
    add r0, r5, #0
    bl sub_8041D72
    mov r0, #0
    pop {r4-r7,pc}
loc_8047650:
    add r5, #1
    cmp r5, #1
    ble loc_804762C
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804765C:    .word dword_8046C90
off_8047660:    .word unk_8047664
unk_8047664:    .byte 0x11
    .byte 4
    .byte 0x18
    .byte 0x12
    .byte 9
    .byte 0x1B
    .byte 0xF
    .byte 0
    .byte 0x15
    .byte 0x10
    .byte 8
    .byte 0xB
    .byte 0x13
    .byte 0x16
    .byte 1
    .byte 0x19
    .byte 0x1A
    .byte 0xC
    .byte 3
    .byte 0xA
    .byte 0xD
    .byte 2
    .byte 6
    .byte 0x1C
    .byte 0x17
    .byte 0x14
    .byte 0xE
    .byte 5
    .byte 7
    .byte 0x1D
    .byte 0
    .byte 0
// end of function sub_8047628

.thumb
sub_8047684:
    push {r4-r7,lr}
    push {r0-r2}
    bl sub_8046EFC
    pop {r0-r2}
    sub r1, #2
    sub r2, #2
    mov r5, #0
loc_8047694:
    mov r3, #0
    push {r1}
    cmp r2, #0
    blt loc_80476C0
    cmp r2, #5
    bge loc_80476C0
loc_80476A0:
    cmp r1, #0
    blt loc_80476B8
    cmp r1, #5
    bge loc_80476B8
    ldrb r4, [r7,r3]
    tst r4, r4
    beq loc_80476B8
    cmp r2, #2
    bne loc_80476B8
    pop {r1}
    mov r0, #1
    pop {r4-r7,pc}
loc_80476B8:
    add r1, #1
    add r3, #1
    cmp r3, #5
    blt loc_80476A0
loc_80476C0:
    pop {r1}
    add r7, #5
    add r2, #1
    add r5, #1
    cmp r5, #5
    blt loc_8047694
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0
    .byte 0xB0
    .byte 1
    .byte 2
    .byte 0x20
    .byte 0xB0
    .byte 1
    .byte 2
// end of function sub_8047684

.thumb
sub_80476D8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x64]
    mov r1, #0x10
    bl f900_8000904
    pop {pc}
    .balign 4, 0x00
// end of function sub_80476D8

.thumb
sub_80476E8:
    push {r4-r7,lr}
    mov r5, #0xc4
    mov r6, #1
loc_80476EE:
    ldr r7, [pc, #0x804771c-0x80476ee-2] // dword_8045538
    mov r4, #0x40 
    mul r4, r6
    add r4, #3
    add r7, r7, r4
    mov r4, #0
loc_80476FA:
    add r0, r5, #0
    ldrb r1, [r7,r4]
    cmp r1, #0
    beq loc_8047708
    mov r2, #9
    bl sub_802D5FC
loc_8047708:
    add r4, #0x10
    cmp r4, #0x40 
    blt loc_80476FA
    add r6, #1
    add r5, #4
    ldr r0, [pc, #0x8047720-0x8047712-2] // =0x17C
    cmp r5, r0
    blt loc_80476EE
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804771C:    .word dword_8045538
off_8047720:    .word 0x17C
// end of function sub_80476E8

.thumb
sub_8047724:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80477bc-0x8047726-2] // byte_2009E50
    mov r1, #0x10
    bl f900_8000904
    ldr r0, [pc, #0x8047760-0x804772e-2] // dword_868E1A4
    ldr r1, [pc, #0x8047764-0x8047730-4] // unk_3002A90
    mov r2, #0x20 
    bl f900_800098C
    bl sub_802DEA4
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r0, #0x28 
    strb r0, [r1]
    bl sub_8004F14
    mov r0, #0x1d
    bl f500_8000560
    pop {r4-r7,pc}
// end of function sub_8047724

.thumb
sub_8047750:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8047760-0x8047752-2] // dword_868E1A4
    ldr r1, [pc, #0x8047764-0x8047754-4] // unk_3002A90
    mov r2, #0x20 
    bl f900_800098C
    pop {r4-r7,pc}
    .byte 0, 0
off_8047760:    .word dword_868E1A4
off_8047764:    .word unk_3002A90
// end of function sub_8047750

.thumb
sub_8047768:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x80477bc-0x8047772-2] // byte_2009E50
    mov r1, r10
    ldr r7, [r1,#0x34]
    ldr r1, [r1,#4]
    ldrh r0, [r1]
    strh r0, [r5,#(word_2009E58 - 0x2009e50)]
    ldrh r0, [r1,#2]
    strh r0, [r5,#(word_2009E5A - 0x2009e50)]
    ldrh r0, [r1,#4]
    strh r0, [r5,#(word_2009E5C - 0x2009e50)]
    mov r0, #0
    strh r0, [r1]
    strh r0, [r1,#2]
    strh r0, [r1,#4]
    ldr r0, [pc, #0x80477c0-0x804778e-2] // off_80477C4
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    mov r5, r10
    ldr r5, [r5,#0x34]
    bl ho_8035214
    ldr r5, [pc, #0x80477bc-0x80477a0-4] // byte_2009E50
    mov r1, r10
    ldr r1, [r1,#4]
    ldrh r0, [r5,#(word_2009E58 - 0x2009e50)]
    strh r0, [r1]
    ldrh r0, [r5,#(word_2009E5A - 0x2009e50)]
    strh r0, [r1,#2]
    ldrh r0, [r5,#(word_2009E5C - 0x2009e50)]
    strh r0, [r1,#4]
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_80477BC:    .word byte_2009E50
off_80477C0:    .word off_80477C4
off_80477C4:    .word sub_8047858+1
    .word sub_804786C+1
    .word sub_8047880+1
    .word sub_80478B4+1
    .word sub_80478E8+1
    .word sub_804791C+1
    .word sub_8047934+1
    .word sub_804798C+1
    .word sub_80479A0+1
    .word sub_80479F4+1
    .word sub_8047A08+1
    .word sub_8047A24+1
    .word sub_8047A38+1
    .word sub_8047ABC+1
    .word sub_8047AD0+1
    .word sub_8047B04+1
    .word sub_8047B18+1
    .word sub_8047B80+1
    .word sub_8047B94+1
    .word sub_8047BB0+1
    .word sub_8047BC4+1
    .word sub_8047C34+1
    .word sub_8047C48+1
    .word sub_8047C8C+1
    .word sub_8047CC4+1
    .word sub_8047CD8+1
    .word sub_8047DD0+1
    .word sub_8047DE4+1
    .word sub_8047E00+1
    .word sub_8047E14+1
    .word sub_8047E68+1
    .word sub_8047E7C+1
    .word sub_8047E98+1
    .word sub_8047EBC+1
    .word sub_8047EF0+1
    .word sub_8047F04+1
    .word sub_8047F24+1
// end of function sub_8047768

.thumb
sub_8047858:
    push {lr}
    ldrh r0, [r5,#0xe]
    add r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0x14
    blt locret_804786A
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_804786A:
    pop {pc}
// end of function sub_8047858

.thumb
sub_804786C:
    push {lr}
    bl sub_8047FB0
    mov r0, #0
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    pop {pc}
// end of function sub_804786C

.thumb
sub_8047880:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_80478B2
    mov r0, #0x48 
    mov r1, #0x40 
    mov r2, #0
    bl sub_8047F40
    bl sub_8047F6E
    mov r0, #8
    bl sub_80539A0
    beq locret_80478B2
    bl sub_8047FB0
    mov r0, #1
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_80478B2:
    pop {pc}
// end of function sub_8047880

.thumb
sub_80478B4:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_80478E6
    mov r0, #0x7a 
    mov r1, #0x30 
    mov r2, #1
    bl sub_8047F40
    bl sub_8047F6E
    mov r0, #8
    bl sub_80539A0
    beq locret_80478E6
    bl sub_8047FB0
    mov r0, #2
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_80478E6:
    pop {pc}
// end of function sub_80478B4

.thumb
sub_80478E8:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_8047918
    mov r0, #0x48 
    mov r1, #0x61 
    mov r2, #0
    bl sub_8047F40
    bl sub_8047F6E
    beq locret_8047918
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047918
    mov r0, #3
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047918:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80478E8

.thumb
sub_804791C:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047930
    mov r0, #0
    strb r0, [r5,#4]
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047930:
    pop {pc}
    .balign 4, 0x00
// end of function sub_804791C

.thumb
sub_8047934:
    push {lr}
    ldr r0, [pc, #0x8047984-0x8047936-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047982
    ldrb r0, [r7,#1]
    cmp r0, #4
    bne locret_8047982
    ldrh r0, [r7,#0x30]
    cmp r0, #1
    beq loc_8047968
    cmp r0, #2
    beq loc_8047968
    cmp r0, #3
    beq loc_8047976
    ldr r0, [pc, #0x8047988-0x804795a-2] // =0x0
    bl sub_8047FF4
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
    b locret_8047982
loc_8047968:
    mov r0, #0xa
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047982
loc_8047976:
    mov r0, #0xb
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047982:
    pop {pc}
off_8047984:    .word 0x3F8
dword_8047988:    .word 0x1
// end of function sub_8047934

.thumb
sub_804798C:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_804799C
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_804799C:
    pop {pc}
    .byte 0, 0
// end of function sub_804798C

.thumb
sub_80479A0:
    push {lr}
    ldr r0, [pc, #0x80479e8-0x80479a2-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_80479E4
    ldr r0, [pc, #0x80479f0-0x80479b2-2] // =0x34
    ldrh r1, [r7,#0x32]
    ldrh r2, [r7,#0x24]
    bl sub_8047684
    bne loc_80479CC
    mov r0, #0xc
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_80479E4
loc_80479CC:
    ldrh r0, [r7,#0x32]
    strb r0, [r5,#5]
    ldrh r0, [r7,#0x24]
    strb r0, [r5,#6]
    ldr r0, [pc, #0x80479ec-0x80479d4-4] // =0x0
    bl sub_8047FF4
    mov r0, #0
    strh r0, [r5,#0xe]
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
locret_80479E4:
    pop {pc}
    .balign 4, 0x00
off_80479E8:    .word 0x3F8
dword_80479EC:    .word 0x1
off_80479F0:    .word 0x34
// end of function sub_80479A0

.thumb
sub_80479F4:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047A04
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047A04:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80479F4

.thumb
sub_8047A08:
    push {lr}
    ldrh r0, [r5,#0xe]
    add r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0x14
    blt locret_8047A20
    mov r0, #0xf
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047A20:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047A08

.thumb
sub_8047A24:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047A34
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047A34:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047A24

.thumb
sub_8047A38:
    push {lr}
    ldr r0, [pc, #0x8047ab4-0x8047a3a-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047AB0
    ldrb r0, [r7,#1]
    cmp r0, #4
    bne loc_8047A8E
    ldrh r0, [r7,#0x30]
    cmp r0, #1
    beq loc_8047A72
    cmp r0, #2
    beq loc_8047A80
    ldr r0, [pc, #0x8047ab8-0x8047a5a-2] // =0x0
    bl sub_8047FF4
    mov r0, #0x14
    bl sub_8047F30
    bl sub_8047FB0
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
    b locret_8047AB0
loc_8047A72:
    mov r0, #0x10
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047AB0
loc_8047A80:
    mov r0, #0x11
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047AB0
loc_8047A8E:
    ldrb r0, [r7,#1]
    cmp r0, #0xc
    bne locret_8047AB0
    ldrh r0, [r7,#0x32]
    ldrh r1, [r7,#0x24]
    bl sub_8046E64
    beq locret_8047AB0
    mov r0, #0x12
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    mov r0, #0
    bl sub_8047FF4
locret_8047AB0:
    pop {pc}
    .balign 4, 0x00
off_8047AB4:    .word 0x3F8
dword_8047AB8:    .word 0x1
// end of function sub_8047A38

.thumb
sub_8047ABC:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047ACC
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047ACC:
    pop {pc}
    .byte 0, 0
// end of function sub_8047ABC

.thumb
sub_8047AD0:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_8047B00
    mov r0, #0x58 
    mov r1, #0x4e 
    mov r2, #0
    bl sub_8047F40
    bl sub_8047F6E
    beq locret_8047B00
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047B00
    mov r0, #0x15
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047B00:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047AD0

.thumb
sub_8047B04:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047B14
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047B14:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047B04

.thumb
sub_8047B18:
    push {lr}
    ldr r0, [pc, #0x8047b74-0x8047b1a-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047B70
    ldr r0, [pc, #0x8047b7c-0x8047b2a-2] // =0x87
    ldr r1, [r7,#0x3c]
    ldrh r2, [r7,#0x32]
    ldrh r3, [r7,#0x24]
    bl sub_80470A8
    beq loc_8047B46
    mov r0, #0x17
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047B70
loc_8047B46:
    ldr r0, [pc, #0x8047b7c-0x8047b46-2] // =0x87
    ldrh r1, [r7,#0x32]
    ldrh r2, [r7,#0x24]
    bl sub_8047684
    beq loc_8047B60
    mov r0, #0x16
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047B70
loc_8047B60:
    ldr r0, [pc, #0x8047b78-0x8047b60-4] // =0x0
    bl sub_8047FF4
    mov r0, #0
    strh r0, [r5,#0xe]
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
locret_8047B70:
    pop {pc}
    .balign 4, 0x00
off_8047B74:    .word 0x3F8
dword_8047B78:    .word 0x1
off_8047B7C:    .word 0x88
// end of function sub_8047B18

.thumb
sub_8047B80:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047B90
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047B90:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047B80

.thumb
sub_8047B94:
    push {lr}
    ldrh r0, [r5,#0xe]
    add r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0x14
    blt locret_8047BAC
    mov r0, #0x19
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047BAC:
    pop {pc}
    .byte 0, 0
// end of function sub_8047B94

.thumb
sub_8047BB0:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047BC0
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047BC0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047BB0

.thumb
sub_8047BC4:
    push {lr}
    ldr r0, [pc, #0x8047c2c-0x8047bc6-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047C2A
    ldrb r0, [r7,#1]
    cmp r0, #4
    bne loc_8047C08
    ldrh r0, [r7,#0x30]
    cmp r0, #1
    beq loc_8047BFA
    ldr r0, [pc, #0x8047c30-0x8047be2-2] // =0x0
    bl sub_8047FF4
    mov r0, #0x1c
    bl sub_8047F30
    bl sub_8047FB0
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
    b locret_8047C2A
loc_8047BFA:
    mov r0, #0x1a
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047C2A
loc_8047C08:
    ldrb r0, [r7,#1]
    cmp r0, #0xc
    bne locret_8047C2A
    ldrh r0, [r7,#0x32]
    ldrh r1, [r7,#0x24]
    bl sub_8046E64
    beq locret_8047C2A
    mov r0, #0x1b
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    mov r0, #0
    bl sub_8047FF4
locret_8047C2A:
    pop {pc}
off_8047C2C:    .word 0x3F8
dword_8047C30:    .word 0x1
// end of function sub_8047BC4

.thumb
sub_8047C34:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047C44
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047C44:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047C34

.thumb
sub_8047C48:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_8047C88
    ldrb r0, [r5,#5]
    mov r1, #0x14
    mul r0, r1
    add r0, #0xc
    ldrb r1, [r5,#6]
    mov r2, #0x14
    mul r1, r2
    add r1, #0x2a 
    mov r2, #1
    bl sub_8047F40
    bl sub_8047F6E
    beq locret_8047C88
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047C88
    bl sub_8047FB0
    mov r0, #0x1d
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047C88:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047C48

.thumb
sub_8047C8C:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_8047CC0
    mov r0, #0x58 
    mov r1, #0x62 
    mov r2, #0
    bl sub_8047F40
    bl sub_8047F6E
    beq locret_8047CC0
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047CC0
    bl sub_8047FB0
    mov r0, #0x1e
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047CC0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047C8C

.thumb
sub_8047CC4:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047CD4
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047CD4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047CC4

.thumb
sub_8047CD8:
    push {lr}
    ldr r0, [pc, #0x8047dc0-0x8047cda-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047DBC
    ldr r0, [pc, #0x8047dc8-0x8047cea-2] // =0x8B
    ldr r1, [r7,#0x3c]
    ldrh r2, [r7,#0x32]
    ldrh r3, [r7,#0x24]
    bl sub_80470A8
    beq loc_8047D06
    mov r0, #0x20 
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047DBC
loc_8047D06:
    ldr r0, [pc, #0x8047dc8-0x8047d06-2] // =0x8B
    ldrh r1, [r7,#0x32]
    ldrh r2, [r7,#0x24]
    bl sub_8047684
    beq loc_8047D20
    mov r0, #0x1f
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047DBC
loc_8047D20:
    add r6, r7, #0
    ldr r0, [pc, #0x8047dc8-0x8047d22-2] // =0x8B
    ldr r1, [r6,#0x3c]
    ldrh r2, [r6,#0x32]
    sub r2, #1
    ldrh r3, [r6,#0x24]
    bl sub_8047112
    beq loc_8047D40
    sub r0, r1, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    ldr r1, [pc, #0x8047dcc-0x8047d3a-2] // =0x34
    cmp r0, r1
    beq loc_8047D9A
loc_8047D40:
    ldr r0, [pc, #0x8047dc8-0x8047d40-4] // =0x8B
    ldr r1, [r6,#0x3c]
    ldrh r2, [r6,#0x32]
    add r2, #1
    ldrh r3, [r6,#0x24]
    bl sub_8047112
    beq loc_8047D5E
    sub r0, r1, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    ldr r1, [pc, #0x8047dcc-0x8047d58-4] // =0x34
    cmp r0, r1
    beq loc_8047D9A
loc_8047D5E:
    ldr r0, [pc, #0x8047dc8-0x8047d5e-2] // =0x8B
    ldr r1, [r6,#0x3c]
    ldrh r2, [r6,#0x32]
    ldrh r3, [r6,#0x24]
    sub r3, #1
    bl sub_8047112
    beq loc_8047D7C
    sub r0, r1, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    ldr r1, [pc, #0x8047dcc-0x8047d76-2] // =0x34
    cmp r0, r1
    beq loc_8047D9A
loc_8047D7C:
    ldr r0, [pc, #0x8047dc8-0x8047d7c-4] // =0x8B
    ldr r1, [r6,#0x3c]
    ldrh r2, [r6,#0x32]
    ldrh r3, [r6,#0x24]
    add r3, #1
    bl sub_8047112
    beq loc_8047DAA
    sub r0, r1, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    ldr r1, [pc, #0x8047dcc-0x8047d94-4] // =0x34
    cmp r0, r1
    bne loc_8047DAA
loc_8047D9A:
    add r7, r6, #0
    mov r0, #0x21 
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    b locret_8047DBC
loc_8047DAA:
    add r7, r6, #0
    ldr r0, [pc, #0x8047dc4-0x8047dac-4] // =0x0
    bl sub_8047FF4
    mov r0, #0
    strh r0, [r5,#0xe]
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
locret_8047DBC:
    pop {pc}
    .byte 0, 0
off_8047DC0:    .word 0x3F8
dword_8047DC4:    .word 0x1
off_8047DC8:    .word 0x8C
off_8047DCC:    .word 0x34
// end of function sub_8047CD8

.thumb
sub_8047DD0:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047DE0
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047DE0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047DD0

.thumb
sub_8047DE4:
    push {lr}
    ldrh r0, [r5,#0xe]
    add r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0x14
    blt locret_8047DFC
    mov r0, #0x23 
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047DFC:
    pop {pc}
    .byte 0, 0
// end of function sub_8047DE4

.thumb
sub_8047E00:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047E10
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047E10:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047E00

.thumb
sub_8047E14:
    push {lr}
    ldr r0, [pc, #0x8047e60-0x8047e16-2] // =0x3F8
    bl sub_8047FF4
    mov r0, #0
    mov r1, #0xa
    bl sub_804802C
    beq locret_8047E5C
    ldrb r0, [r7,#1]
    cmp r0, #4
    bne loc_8047E3A
    ldr r0, [pc, #0x8047e64-0x8047e2c-4] // =0x0
    bl sub_8047FF4
    ldrb r0, [r5]
    add r0, #8
    strb r0, [r5]
    b locret_8047E5C
loc_8047E3A:
    ldrb r0, [r7,#1]
    cmp r0, #0xc
    bne locret_8047E5C
    ldrh r0, [r7,#0x32]
    ldrh r1, [r7,#0x24]
    bl sub_8046E64
    beq locret_8047E5C
    mov r0, #0x24 
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
    mov r0, #0
    bl sub_8047FF4
locret_8047E5C:
    pop {pc}
    .byte 0, 0
off_8047E60:    .word 0x3F8
dword_8047E64:    .word 0x1
// end of function sub_8047E14

.thumb
sub_8047E68:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047E78
    ldrb r0, [r5]
    sub r0, #4
    strb r0, [r5]
locret_8047E78:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047E68

.thumb
sub_8047E7C:
    push {lr}
    ldrb r0, [r7,#1]
    cmp r0, #0x1c
    bne locret_8047E94
    ldrb r0, [r7,#2]
    cmp r0, #0x28 
    bne locret_8047E94
    mov r0, #0
    strh r0, [r5,#0xe]
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047E94:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047E7C

.thumb
sub_8047E98:
    push {lr}
    ldrh r0, [r5,#0xe]
    add r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0x3c 
    blt locret_8047EB8
    bl sub_8047FB0
    mov r0, #0x25 
    bl sub_8047F30
    bl sub_8047750
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047EB8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047E98

.thumb
sub_8047EBC:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FF0
    beq locret_8047EEC
    mov r0, #0x4c 
    mov r1, #0x28 
    mov r2, #0
    bl sub_8047F40
    bl sub_8047F6E
    beq locret_8047EEC
    mov r0, #8
    bl sub_80539A0
    beq locret_8047EEC
    mov r0, #0x26 
    bl sub_8047F30
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047EEC:
    pop {pc}
    .byte 0, 0
// end of function sub_8047EBC

.thumb
sub_8047EF0:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8047F00
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047F00:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8047EF0

.thumb
sub_8047F04:
    push {lr}
    ldrb r0, [r7,#1]
    cmp r0, #0x1c
    bne locret_8047F1E
    ldrb r0, [r7,#2]
    cmp r0, #0x28 
    bne locret_8047F1E
    ldr r0, [pc, #0x8047f20-0x8047f12-2] // =0x0
    bl sub_8048010
    ldrb r0, [r5]
    add r0, #4
    strb r0, [r5]
locret_8047F1E:
    pop {pc}
dword_8047F20:    .word 0x1
// end of function sub_8047F04

.thumb
sub_8047F24:
    push {lr}
    ldrb r0, [r5]
    add r0, #0
    strb r0, [r5]
    pop {pc}
    .byte 0, 0
// end of function sub_8047F24

.thumb
sub_8047F30:
    push {lr}
    add r1, r0, #0
    ldr r0, [pc, #0x8047f3c-0x8047f34-4] // dword_2028000
    bl sub_804E2A4
    pop {pc}
off_8047F3C:    .word dword_2028000
// end of function sub_8047F30

.thumb
sub_8047F40:
    push {r4,lr}
    lsl r4, r2, #0x1c
    ldrb r2, [r5,#2]
    mov r3, #0xf
    and r2, r3
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8047fcc-0x8047f4e-2] // =0x40000000
    orr r0, r1
    orr r0, r4
    ldr r1, [pc, #0x8047fd0-0x8047f54-4] // byte_8047FD4
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    mov r2, #0
    mov r3, #2
    bl sub_8025BD8
    ldrb r2, [r5,#2]
    add r2, #1
    mov r1, #0xf
    and r2, r1
    strb r2, [r5,#2]
    pop {r4,pc}
// end of function sub_8047F40

.thumb
sub_8047F6E:
    push {lr}
    ldrb r2, [r5,#3]
    mov r1, #0xf
    and r1, r2
    bne loc_8047F7E
    mov r0, #0x79 
    bl f500_8000558
loc_8047F7E:
    mov r3, #0
    add r2, #1
    push {r0-r3}
    mov r0, #2
    mov r1, #8
    bl sub_804802C
    pop {r0-r3}
    beq loc_8047F94
    cmp r2, #0x20 
    bge loc_8047F98
loc_8047F94:
    cmp r2, #0x4f 
    ble loc_8047FA8
loc_8047F98:
    mov r3, #1
    mov r2, #0x4f 
    push {r0-r3}
    mov r0, #0
    mov r1, #0x27 
    bl sub_8024F9C
    pop {r0-r3}
loc_8047FA8:
    strb r2, [r5,#3]
    add r0, r3, #0
    tst r0, r0
    pop {pc}
// end of function sub_8047F6E

.thumb
sub_8047FB0:
    push {lr}
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#3]
    mov r0, #0
    mov r1, #0x26 
    bl sub_8024FB8
    mov r0, #0
    mov r1, #0x27 
    bl sub_8024FB8
    pop {pc}
dword_8047FCC:    .word 0x40000000
off_8047FD0:    .word byte_8047FD4
byte_8047FD4:    .byte 0x34
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x30 
    .byte 0
// end of function sub_8047FB0

.thumb
sub_8047FF4:
    push {r0-r3,lr}
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r1, [r5,#8]
    and r1, r0
    strh r1, [r3]
    ldrh r1, [r5,#0xc]
    and r1, r0
    strh r1, [r3,#4]
    ldrh r1, [r5,#0xa]
    and r1, r0
    strh r1, [r3,#2]
    pop {r0-r3,pc}
    .byte 0, 0
// end of function sub_8047FF4

.thumb
sub_8048010:
    push {r0-r3,lr}
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r1, [r3]
    orr r1, r0
    strh r1, [r3]
    ldrh r1, [r3,#4]
    orr r1, r0
    strh r1, [r3,#4]
    ldrh r1, [r3,#2]
    orr r1, r0
    strh r1, [r3,#2]
    pop {r0-r3,pc}
    .balign 4, 0x00
// end of function sub_8048010

.thumb
sub_804802C:
    push {r0-r2,lr}
    ldr r2, [pc, #0x804803c-0x804802e-2] // dword_8048040
    ldrh r0, [r2,r0]
    add r1, r1, r5
    ldrh r1, [r1]
    tst r0, r1
    pop {r0-r2,pc}
    .balign 4, 0x00
off_804803C:    .word dword_8048040
dword_8048040:    .word 0x20001, 0x80004, 0x100020, 0x800040, 0x1000200, 0x2037BC0
    .word 0x203AC10, 0x203AC20, 0x4, 0x200B720, 0x2028000, 0x2028800
    .word 0x0
    .word dword_200B720
    .word dword_2028000
    .word unk_2028800
    .word 0x4, 0x200B720, 0x201D000, 0x201D010, 0x4, 0x200B720, 0x2028000
    .word 0x2028800, 0x4
// end of function sub_804802C

.thumb
sub_80480A4:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80480b0-0x80480a6-2] // byte_200A3D0
    str r0, [r7,#(dword_200A3EC - 0x200a3d0)]
    strh r1, [r7,#(word_200A3DA - 0x200a3d0)]
    strh r2, [r7,#(word_200A3DE - 0x200a3d0)]
    pop {r4-r7,pc}
off_80480B0:    .word byte_200A3D0
// end of function sub_80480A4

.thumb
sub_80480B4:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8048100-0x80480b6-2] // byte_200A3D0
    str r0, [r7,#(dword_200A3F0 - 0x200a3d0)]
    str r0, [r7,#(dword_200A3F4 - 0x200a3d0)]
    strb r2, [r7,#(byte_200A3D3 - 0x200a3d0)]
    strb r3, [r7,#(byte_200A3D2 - 0x200a3d0)]
    ldr r0, [pc, #0x80480fc-0x80480c0-4] // dword_8048040+20
    lsl r1, r1, #4
    add r0, r0, r1
    ldr r1, [r0]
    str r1, [r7,#(dword_200A404 - 0x200a3d0)]
    ldr r1, [r0,#4]
    str r1, [r7,#(dword_200A408 - 0x200a3d0)]
    ldr r1, [r0,#8]
    str r1, [r7,#(dword_200A40C - 0x200a3d0)]
    ldrb r1, [r0,#0xc]
    strb r1, [r7]
    strb r1, [r7,#(byte_200A3D1 - 0x200a3d0)]
    mov r1, #0
    strb r1, [r7,#(byte_200A3D5 - 0x200a3d0)]
    strb r1, [r7,#(byte_200A3D8 - 0x200a3d0)]
    strh r1, [r7,#(word_200A3E8 - 0x200a3d0)]
    mvn r1, r1
    strh r1, [r7,#(word_200A3E0 - 0x200a3d0)]
    strh r1, [r7,#(word_200A3E2 - 0x200a3d0)]
    strh r1, [r7,#(word_200A3E4 - 0x200a3d0)]
    strh r1, [r7,#(word_200A3E6 - 0x200a3d0)]
    pop {r4-r7,pc}
// end of function sub_80480B4

.thumb
sub_80480EC:
    push {r7,lr}
    ldr r7, [pc, #0x8048100-0x80480ee-2] // byte_200A3D0
    ldr r0, [r7,#(dword_200A416+2 - 0x200a3d0)]
    mov r1, #3
    and r0, r1
    .hword 0x0 // mov r0, r0  // <mkdata>
    tst r0, r0
    pop {r7,pc}
off_80480FC:    .word dword_8048040+0x14
off_8048100:    .word byte_200A3D0
// end of function sub_80480EC

.thumb
sub_8048104:
    push {r7,lr}
    ldr r7, [pc, #0x804811c-0x8048106-2] // byte_200A3D0
    ldr r0, [r7,#(dword_200A416+2 - 0x200a3d0)]
    mov r1, #3
    and r0, r1
    .hword 0x0 // mov r0, r0  // <mkdata>
    tst r0, r0
    beq locret_8048116
    mov r0, #1
locret_8048116:
    pop {r7,pc}
    .word dword_8048040+0x14
off_804811C:    .word byte_200A3D0
// end of function sub_8048104

.thumb
sub_8048120:
    push {r7,lr}
    ldr r7, [pc, #0x8048134-0x8048122-2] // byte_200A3D0
    mov r0, #8
    strb r0, [r7]
    strb r0, [r7,#(byte_200A3D1 - 0x200a3d0)]
    mov r0, #0x10
    strh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    mov r0, #0
    strb r0, [r7,#(byte_200A3D8 - 0x200a3d0)]
    pop {r7,pc}
off_8048134:    .word byte_200A3D0
// end of function sub_8048120

.thumb
sub_8048138:
    push {r7,lr}
    ldr r7, [pc, #0x8048148-0x804813a-2] // byte_200A3D0
    mov r0, #8
    strb r0, [r7]
    mov r0, #0x10
    strh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    pop {r7,pc}
    .balign 4, 0x00
off_8048148:    .word byte_200A3D0
// end of function sub_8048138

.thumb
sub_804814C:
    push {r7,lr}
    mov r1, #1
    ldr r7, [pc, #0x8048160-0x8048150-4] // byte_200A3D0
    ldrh r0, [r7,#(word_200A3DE - 0x200a3d0)]
    cmp r0, #2
    blt loc_804815A
    mov r1, #0
loc_804815A:
    add r0, r1, #0
    pop {r7,pc}
    .byte 0, 0
off_8048160:    .word byte_200A3D0
// end of function sub_804814C

.thumb
sub_8048164:
    push {r7,lr}
    mov r4, #1
    ldr r7, [pc, #0x8048198-0x8048168-4] // byte_200A3D0
    ldrb r0, [r7,#(byte_200A3D1 - 0x200a3d0)]
    cmp r0, #8
    bne loc_8048192
    ldrb r0, [r7]
    cmp r0, #8
    bne loc_8048192
    ldr r0, [r7,#(dword_200A416+2 - 0x200a3d0)]
    bl sub_80482D0
    mov r1, #0x7f
    and r1, r0
    beq loc_804818A
    ldrh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    cmp r0, #8
    blt loc_8048190
    b loc_8048192
loc_804818A:
    ldrh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    tst r0, r0
    bne loc_8048192
loc_8048190:
    mov r4, #0
loc_8048192:
    add r0, r4, #0
    pop {r7,pc}
    .balign 4, 0x00
off_8048198:    .word byte_200A3D0
// end of function sub_8048164

.thumb
sub_804819C:
    push {lr}
    ldr r0, [pc, #0x80481c4-0x804819e-2] // dword_200A714
    mov r1, #1
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
// end of function sub_804819C

.thumb
sub_80481A8:
    push {lr}
    ldr r0, [pc, #0x80481c4-0x80481aa-2] // dword_200A714
    mov r1, #0
    str r1, [r0]
    pop {pc}
// end of function sub_80481A8

.thumb
sub_80481B2:
    push {lr}
    ldr r0, [pc, #0x80481c4-0x80481b4-4] // dword_200A714
    ldr r0, [r0]
    tst r0, r0
    beq locret_80481C0
    bl sub_8110F98
locret_80481C0:
    pop {pc}
    .balign 4, 0x00
off_80481C4:    .word dword_200A714
// end of function sub_80481B2

.thumb
sub_80481C8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80482c4-0x80481ca-2] // byte_200A3D0
    mov r1, #0x58 
    bl f900_8000910
    ldr r0, [pc, #0x80482c8-0x80481d2-2] // unk_200F760
    mov r1, #0x10
    bl f900_8000910
    ldr r0, [pc, #0x80482cc-0x80481da-2] // unk_2009F10
    mov r1, #0x40 
    bl f900_8000910
    pop {r4-r7,pc}
// end of function sub_80481C8

.thumb
sub_80481E4:
    push {r4-r7,lr}
    bl sub_8110BF4
    pop {r4-r7,pc}
// end of function sub_80481E4

.thumb
sub_80481EC:
    push {r4-r7,lr}
    mov r6, #0
    ldr r7, [pc, #0x80482c4-0x80481f0-4] // byte_200A3D0
    add r0, r7, #6
    ldr r1, [pc, #0x80482c8-0x80481f4-4] // unk_200F760
    ldr r2, [pc, #0x80482cc-0x80481f6-2] // unk_2009F10
    bl sub_8110C04
    str r0, [r7,#(dword_200A416+2 - 0x200a3d0)]
    sub sp, sp, #0x10
    str r0, [sp]
    bl sub_8111674
    cmp r0, #1
    bne loc_8048226
    mov r0, #0x11
    mov r1, #0x8b
    bl sub_8024FF0
    beq loc_8048220
    ldrh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    tst r0, r0
    beq loc_8048220
    sub r0, #1
    strh r0, [r7,#(word_200A3DC - 0x200a3d0)]
    b loc_804823E
loc_8048220:
    mov r1, #1
    strb r1, [r7,#(byte_200A3D6 - 0x200a3d0)]
    b loc_804823E
loc_8048226:
    cmp r0, #2
    bne loc_804823E
    ldrb r2, [r7,#(byte_200A3D7 - 0x200a3d0)]
    cmp r2, #2
    bne loc_8048236
    mov r0, #0xff
    strb r0, [r7,#(byte_200A3D7 - 0x200a3d0)]
    b loc_804823E
loc_8048236:
    strb r0, [r7,#(byte_200A3D7 - 0x200a3d0)]
    mov r1, #1
    strb r1, [r7,#(byte_200A3D6 - 0x200a3d0)]
    b loc_804823E
loc_804823E:
    ldr r0, [sp]
    mov r1, #3
    and r0, r1
    .hword 0x0 // mov r0, r0  // <mkdata>
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r1, #0x1c
    and r0, r1
    lsr r0, r0, #2
    str r0, [sp,#8]
    strb r0, [r7,#(byte_200A3D4 - 0x200a3d0)]
    ldr r0, [sp]
    mov r1, #0x20 
    and r0, r1
    beq loc_80482A6
    ldr r0, [sp,#8]
    cmp r0, #2
    blt loc_804826A
    ldr r0, [sp]
    mov r1, #0x40 
    and r0, r1
    bne loc_8048278
loc_804826A:
    ldr r0, [sp]
    mov r1, #0x20 
    lsl r1, r1, #0x10
    and r0, r1
    beq loc_80482AE
    mov r6, #4
    b loc_80482AE
loc_8048278:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    bl sub_804833C
    add r6, r0, #0
    cmp r6, #2
    bne loc_80482AE
    ldr r7, [sp,#8]
    bl sub_8048444
    tst r0, r0
    beq loc_80482AE
    cmp r0, #2
    bne loc_804829A
    mov r6, #0x10
    b loc_80482AE
loc_804829A:
    cmp r0, #0x20 
    bne loc_80482A2
    mov r6, #4
    b loc_80482AE
loc_80482A2:
    mov r6, #8
    b loc_80482AE
loc_80482A6:
    ldr r0, [sp]
    mov r1, #0x40 
    and r0, r1
    bne loc_8048278
loc_80482AE:
    add sp, sp, #0x10
    cmp r6, #4
    bne loc_80482BE
    ldr r0, [pc, #0x80482c4-0x80482b4-4] // byte_200A3D0
    ldrb r1, [r0,#(byte_200A3D5 - 0x200a3d0)]
    tst r1, r1
    beq loc_80482BE
    mov r6, #4
loc_80482BE:
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80482C4:    .word byte_200A3D0
off_80482C8:    .word unk_200F760
off_80482CC:    .word unk_2009F10
// end of function sub_80481EC

.thumb
sub_80482D0:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r6, #0
    mov r1, #1
    lsl r1, r1, #8
    and r1, r4
    beq loc_80482E2
    mov r0, #0x80
    orr r6, r0
loc_80482E2:
    mov r1, #0x40 
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_80482EE
    mov r0, #0x40 
    orr r6, r0
loc_80482EE:
    mov r1, #2
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_80482FA
    mov r0, #2
    orr r6, r0
loc_80482FA:
    mov r1, #1
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_8048306
    mov r0, #1
    orr r6, r0
loc_8048306:
    mov r1, #4
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_8048312
    mov r0, #4
    orr r6, r0
loc_8048312:
    mov r1, #8
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_804831E
    mov r0, #8
    orr r6, r0
loc_804831E:
    mov r1, #0x10
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_804832A
    mov r0, #0x10
    orr r6, r0
loc_804832A:
    mov r1, #0x20 
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_8048336
    mov r0, #0x20 
    orr r6, r0
loc_8048336:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_80482D0

.thumb
sub_804833C:
    push {r4-r7,lr}
    push {r0}
    bl sub_8048378
    pop {r0}
    bl sub_80482D0
    mov r1, #0x7f
    and r1, r0
    bne loc_804835A
    mov r1, #0x80
    and r1, r0
    beq loc_804835E
    mov r6, #8
    b loc_804836E
loc_804835A:
    mov r6, #4
    b loc_804836E
loc_804835E:
    mov r6, #2
    mov r0, #4
    bl sub_804863C
    tst r1, r1
    bne loc_804836E
    bl sub_8048698
loc_804836E:
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word word_200A340
// end of function sub_804833C

.thumb
sub_8048378:
    push {r4-r7,lr}
    mov r0, r8
    mov r3, r9
    push {r0,r3}
    ldr r5, [pc, #0x8048744-0x8048380-4] // unk_200F760
    ldr r7, [pc, #0x8048748-0x8048382-2] // byte_200A3D0
    ldr r1, [pc, #0x8048398-0x8048384-4] // jt_804839C
    ldrb r0, [r7]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r0,r3}
    mov r8, r0
    mov r9, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8048398:    .word jt_804839C
jt_804839C:    .word sub_80483AC+1
    .word sub_80483C4+1
    .word sub_8048414+1
    .word sub_8048424+1
// end of function sub_8048378

.thumb
sub_80483AC:
    push {lr}
    ldr r0, [r7,#0x1c]
    str r0, [r5,#4]
    ldrh r0, [r7,#0xa]
    strh r0, [r5,#2]
    ldr r0, [r7,#0x44]
    str r0, [r5,#0xc]
    ldr r0, [r7,#0x20]
    str r0, [r5,#8]
    mov r0, #0x60 
    strh r0, [r5]
    pop {pc}
// end of function sub_80483AC

.thumb
sub_80483C4:
    push {lr}
    ldrb r0, [r7,#2]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80483d4-0x80483ca-2] // jt_80483D8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_80483D4:    .word jt_80483D8
jt_80483D8:    .word sub_80483EC+1
    .word sub_8048400+1
    .word sub_8048400+1
    .word sub_8048400+1
    .word sub_8048400+1
// end of function sub_80483C4

.thumb
sub_80483EC:
    push {lr}
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_80483F4:
    ldrh r3, [r0,r2]
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_80483F4
    pop {pc}
// end of function sub_80483EC

.thumb
sub_8048400:
    push {lr}
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_8048408:
    ldrh r3, [r0,r2]
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_8048408
    pop {pc}
// end of function sub_8048400

.thumb
sub_8048414:
    push {lr}
    ldrh r0, [r7,#0xa]
    strh r0, [r5,#2]
    ldrh r0, [r7,#0x1c]
    strh r0, [r5,#4]
    mov r0, #0x62 
    strh r0, [r5]
    pop {pc}
// end of function sub_8048414

.thumb
sub_8048424:
    push {lr}
    ldr r0, [r7,#0x54]
    sub r0, #1
    str r0, [r7,#0x54]
    bne loc_8048432
    mov r0, #4
    strb r0, [r7]
loc_8048432:
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_8048438:
    mov r3, #0
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_8048438
    pop {pc}
// end of function sub_8048424

.thumb
sub_8048444:
    push {r4-r7,lr}
    ldr r5, [pc, #0x804874c-0x8048446-2] // unk_2009F10
    ldr r6, [pc, #0x8048750-0x8048448-4] // byte_200A3D0
    mov r0, #1
    strb r0, [r6,#(byte_200A3D5 - 0x200a3d0)]
    ldr r1, [pc, #0x804845c-0x804844e-2] // jt_8048460
    ldrb r0, [r6,#(byte_200A3D1 - 0x200a3d0)]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804845C:    .word jt_8048460
jt_8048460:    .word ho_804846C+1
    .word sub_8048498+1
    .word sub_804851C+1
// end of function sub_8048444

.thumb
ho_804846C:
    push {lr}
    ldrb r0, [r6,#2]
    lsl r0, r0, #2
    ldr r1, [pc, #0x804847c-0x8048472-2] // jt_8048480
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_804847C:    .word jt_8048480
jt_8048480:    .word sub_8048494+1
    .word ho_8034ABC+1
    .word sub_803B338+1
    .word sub_8048494+1
    .word sub_8048494+1
// end of function ho_804846C

.thumb
sub_8048494:
    push {lr}
    pop {pc}
// end of function sub_8048494

.thumb
sub_8048498:
    push {lr}
    ldrb r0, [r6,#2]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80484a8-0x804849e-2] // off_80484AC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_80484A8:    .word off_80484AC
off_80484AC:    .word sub_80484C0+1
    .word sub_8034C2C+1
    .word sub_803B488+1
    .word sub_80484C0+1
    .word sub_80484C0+1
// end of function sub_8048498

.thumb
sub_80484C0:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    str r0, [sp,#4]
    str r0, [sp,#8]
    mov r1, #0
    mov r2, #4
loc_80484D0:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    bl sub_8048624
    beq loc_80484E8
    cmp r2, #4
    bne loc_80484E4
    str r1, [sp,#4]
    b loc_80484E6
loc_80484E4:
    str r1, [sp,#8]
loc_80484E6:
    add r2, #4
loc_80484E8:
    add r1, #2
    cmp r1, #8
    blt loc_80484D0
    ldr r3, [r6,#0x38]
    ldr r4, [r6,#0x3c]
    ldr r7, [r6,#0x20]
    mov r0, #2
    mov r1, #4
    mul r0, r1
loc_80484FA:
    ldr r1, [sp,#4]
    ldrh r2, [r5,r1]
    strh r2, [r3]
    ldr r1, [sp,#8]
    ldrh r2, [r5,r1]
    strh r2, [r4]
    add r5, r5, r0
    add r3, #2
    add r4, #2
    sub r7, #2
    bgt loc_80484FA
    add sp, sp, #0x10
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80484C0

    push {lr}
    pop {pc}
.thumb
sub_804851C:
    push {lr}
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    ldrb r0, [r6,#8]
    tst r0, r0
    bne loc_8048552
    mov r3, #2
    mov r1, #4
    mul r3, r1
loc_8048530:
    add r2, r5, #0
    ldr r0, [sp]
    add r0, #1
    bl sub_8048624
    beq loc_8048542
    ldrh r0, [r2]
    cmp r0, #0x62 
    bne loc_804855C
loc_8048542:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    add r5, #2
    sub r7, #1
    bgt loc_8048530
    mov r0, #1
    strb r0, [r6,#8]
loc_8048552:
    ldrh r0, [r6,#0xc]
    tst r0, r0
    beq loc_804855C
    sub r0, #1
    strh r0, [r6,#0xc]
loc_804855C:
    add sp, sp, #0x10
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word dword_8048598
    .word 0x80485A1
    .word 0x80485AE
    .word 0x80485B9
    .word 0x80485C3
    .word 0x80485CC
    .word 0x80485D8
    .word 0x80485E5
    .word 0x80485EF
    .word 0x80485FA
    .word 0x8048604
    .word 0x804860E
    .word 0x8048618
dword_8048598:    .word 0x44490314, 0x29442528, 0x50041400, 0x554E204C, 0x4425284D
    .word 0x2140029, 0x204F4953, 0x54494157, 0x53021400, 0x4F204F49
    .word 0x14004646, 0x4F495302, 0x4E4F20, 0x49530214, 0x5245204F
    .word 0x524F52, 0x49530214, 0x5245204F, 0x32524F52, 0x530A1400
    .word 0x78303A54, 0x14005825, 0x4F4E5205, 0x2578303A, 0xD140058
    .word 0x56434552, 0x58253A, 0x45520E14, 0x253A5643, 0xF140058
    .word 0x56434552, 0x58253A, 0x3A53060A, 0x522C4425, 0x44253A
// end of function sub_804851C

.thumb
sub_8048624:
    push {r0-r3,lr}
    sub r0, #1
    bl sub_8111698
    cmp r0, #2
    beq locret_8048638
    cmp r0, #0xff
    beq locret_8048638
    mov r0, #1
    tst r0, r0
locret_8048638:
    pop {r0-r3,pc}
    .balign 4, 0x00
// end of function sub_8048624

.thumb
sub_804863C:
    push {r4-r7,lr}
    add r7, r0, #0
    bl sub_80480EC
    ldr r1, [pc, #0x8048688-0x8048644-4] // dword_8048694
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_804865A
    mov r1, #8
    mul r1, r7
    add r1, r1, r0
    ldr r0, [pc, #0x804868c-0x8048652-2] // word_200A340
    ldrh r0, [r0,r1]
    mov r1, #0
    b locret_804865E
loc_804865A:
    mov r1, #1
    mov r0, #0
locret_804865E:
    pop {r4-r7,pc}
// end of function sub_804863C

.thumb
sub_8048660:
    push {r4-r7,lr}
    add r7, r0, #0
    bl sub_80480EC
    ldr r1, [pc, #0x8048688-0x8048668-4] // dword_8048694
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_8048680
    mov r1, #8
    mul r1, r7
    add r1, r1, r0
    ldr r7, [pc, #0x8048690-0x8048676-2] // byte_200A3D0
    ldrh r2, [r7,#(word_200A3E0 - 0x200a3d0)]
    ldrh r0, [r7,#(word_200A3E6 - 0x200a3d0)]
    mov r1, #0
    b locret_8048684
loc_8048680:
    mov r1, #1
    mov r0, #0
locret_8048684:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8048688:    .word dword_8048694
off_804868C:    .word word_200A340
off_8048690:    .word byte_200A3D0
dword_8048694:    .word 0x4FFFF02
// end of function sub_8048660

.thumb
sub_8048698:
    push {r7,lr}
    ldrh r1, [r7,#0x14]
    cmp r0, r1
    beq loc_80486A6
    strh r0, [r7,#0x14]
    mov r1, #0
    strh r1, [r7,#0x18]
loc_80486A6:
    ldrh r1, [r7,#0x18]
    cmp r1, #8
    beq loc_80486B2
    add r1, #1
    strh r1, [r7,#0x18]
    b locret_80486CA
loc_80486B2:
    ldrh r1, [r7,#0x12]
    tst r1, r1
    bne loc_80486C0
    strh r0, [r7,#0x16]
    strh r0, [r7,#0x10]
    strh r0, [r7,#0x12]
    b locret_80486CA
loc_80486C0:
    ldrh r1, [r7,#0x10]
    strh r1, [r7,#0x12]
    strh r0, [r7,#0x10]
    mov r0, #0
    strh r0, [r7,#0x16]
locret_80486CA:
    pop {r7,pc}
// end of function sub_8048698

    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #8
    bne locret_80486EA
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0]
    cmp r0, #4
    bne locret_80486EA
    tst r2, r2
    .word 0x220CD101
    strb r2, [r6]
locret_80486EA:
    pop {r0-r7,pc}
.thumb
sub_80486EC:
    push {r0-r2,r7,lr}
    ldrb r1, [r5,#0xc]
    cmp r1, #5
    ble loc_80486F6
    b loc_80486FC
loc_80486F6:
    ldrb r2, [r5,#0xe]
    cmp r2, #5
    ble locret_804870E
loc_80486FC:
    ldr r7, [pc, #0x8048710-0x80486fc-4] // byte_200A3D0
    add r0, r1, #0
    cmp r1, r2
    bge loc_8048706
    add r0, r2, #0
loc_8048706:
    add r0, #8
    str r0, [r7,#(dword_200A424 - 0x200a3d0)]
    mov r0, #0xc
    strb r0, [r7]
locret_804870E:
    pop {r0-r2,r7,pc}
off_8048710:    .word byte_200A3D0
// end of function sub_80486EC

.thumb
sub_8048714:
    push {r0-r2,r7,lr}
    ldrb r1, [r5,#0xc]
    cmp r1, #5
    ble loc_804871E
    b loc_8048724
loc_804871E:
    ldrb r2, [r5,#0xe]
    cmp r2, #5
    ble locret_804873E
loc_8048724:
    ldr r7, [pc, #0x8048740-0x8048724-4] // byte_200A3D0
    add r0, r1, #0
    cmp r1, r2
    bge loc_804872E
    add r0, r2, #0
loc_804872E:
    add r0, #8
    ldr r1, [r7,#(dword_200A424 - 0x200a3d0)]
    cmp r0, r1
    bge loc_8048738
    add r0, r1, #0
loc_8048738:
    str r0, [r7,#(dword_200A424 - 0x200a3d0)]
    mov r0, #0xc
    strb r0, [r7]
locret_804873E:
    pop {r0-r2,r7,pc}
off_8048740:    .word byte_200A3D0
off_8048744:    .word unk_200F760
off_8048748:    .word byte_200A3D0
off_804874C:    .word unk_2009F10
off_8048750:    .word byte_200A3D0
// end of function sub_8048714

.thumb
sub_8048754:
    mov r0, #0
    b loc_804875A
    mov r0, #1
loc_804875A:
    push {r4-r7,lr}
    tst r0, r0
    bne loc_8048776
    mov r7, r10
    ldr r6, [r7,#0x40]
    ldr r7, [r6,#0x28]
    ldr r0, [r7,#0x24]
    str r0, [r6,#0x38]
    ldr r0, [r7,#0x28]
    str r0, [r6,#0x3c]
    ldr r0, [r7,#0x2c]
    str r0, [r6,#0x40]
    ldrb r0, [r7,#0x10]
    str r0, [r6,#0x44]
loc_8048776:
    mov r0, #0x11
    mov r1, #0x8a
    bl sub_8024FF0
    beq loc_8048784
    mov r0, #2
    pop {r4-r7,pc}
loc_8048784:
    bl sub_8006348
    bl sub_8048878
    bl sub_804885C
    ldr r0, [pc, #0x8048850-0x8048790-4] // unk_2000000
    ldr r1, [pc, #0x8048858-0x8048792-2] // =0x73D2
    bl sub_8006318
    mov r7, #0
loc_804879A:
    ldr r0, [pc, #0x8048850-0x804879a-2] // unk_2000000
    ldr r1, [pc, #0x8048854-0x804879c-4] // =0xE000000
    ldr r2, [pc, #0x8048858-0x804879e-2] // =0x73D2
    push {r0-r2}
    bl sub_8111790
    pop {r0-r2}
    push {r0-r3,r7}
    bl sub_8111800
    add r4, r0, #0
    pop {r0-r3,r7}
    tst r4, r4
    beq loc_80487D2
    add r7, #1
    cmp r7, #3
    blt loc_804879A
    push {r0-r2}
    add r1, r2, #0
    bl sub_8006330
    pop {r0-r2}
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024FB8
    mov r0, #1
    pop {r4-r7,pc}
loc_80487D2:
    push {r0-r2}
    add r1, r2, #0
    bl sub_8006330
    pop {r0-r2}
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024F9C
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8048754

.thumb
sub_80487E8:
    push {r4-r7,lr}
    mov r7, #0
loc_80487EC:
    ldr r0, [pc, #0x8048854-0x80487ec-4] // =0xE000000
    ldr r1, [pc, #0x8048850-0x80487ee-2] // unk_2000000
    ldr r2, [pc, #0x8048858-0x80487f0-4] // =0x73D2
    push {r0-r3}
    bl sub_811172C
    pop {r0-r3}
    push {r0-r3}
    bl sub_8111800
    add r4, r0, #0
    pop {r0-r3}
    tst r4, r4
    beq loc_804880E
    add r7, #1
    cmp r7, #3
    blt loc_80487EC
loc_804880E:
    push {r0-r2}
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8006330
    pop {r0-r2}
    bl sub_800614A
    bl sub_804888A
    bne loc_8048836
    bl sub_80488BC
    bne loc_8048836
    mov r4, #0
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024F9C
    b loc_8048844
loc_8048836:
    mov r4, #1
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024FB8
    bl sub_8001AD8
loc_8048844:
    bl sub_8006108
    .byte 0x20
    .byte 0x1C
    .byte 0
    .byte 0x42 
    .byte 0xF0
    .byte 0xBD
    .byte 0, 0
off_8048850:    .word unk_2000000
dword_8048854:    .word 0xE000000
dword_8048858:    .word 0x73D2
// end of function sub_80487E8

.thumb
sub_804885C:
    mov r7, r10
    ldr r7, [r7,#0x44]
    mov r0, #0
    str r0, [r7,#0x34]
    mov r0, #0
    ldr r1, [pc, #0x80488b4-0x8048866-2] // unk_2000000
    ldr r2, [pc, #0x80488b8-0x8048868-4] // =0x73D2
loc_804886A:
    ldrb r3, [r1,r2]
    add r0, r0, r3
    sub r2, #1
    bgt loc_804886A
    add r0, #0x16
    str r0, [r7,#0x34]
    mov pc, lr
// end of function sub_804885C

.thumb
sub_8048878:
    push {lr}
    ldr r0, [pc, #0x80488dc-0x804887a-2] // aRockmanexe4200
    mov r1, r10
    ldr r1, [r1,#0x44]
    add r1, #0x54 
    mov r2, #0x14
    bl f900_8000970
    pop {pc}
// end of function sub_8048878

.thumb
sub_804888A:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x44]
    ldr r6, [r7,#0x34]
    mov r0, #0
    str r0, [r7,#0x34]
    mov r0, #0
    ldr r1, [pc, #0x80488b4-0x8048898-4] // unk_2000000
    ldr r2, [pc, #0x80488b8-0x804889a-2] // =0x73D2
loc_804889C:
    ldrb r3, [r1,r2]
    add r0, r0, r3
    sub r2, #1
    bgt loc_804889C
    add r0, #0x16
    cmp r0, r6
    bne loc_80488AE
    mov r0, #0
    pop {r4-r7,pc}
loc_80488AE:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80488B4:    .word unk_2000000
dword_80488B8:    .word 0x73D2
// end of function sub_804888A

.thumb
sub_80488BC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80488dc-0x80488be-2] // aRockmanexe4200
    mov r1, r10
    ldr r1, [r1,#0x44]
    add r1, #0x54 
    mov r2, #0x13
loc_80488C8:
    ldrb r3, [r1,r2]
    ldrb r4, [r0,r2]
    cmp r3, r4
    bne loc_80488D8
    sub r2, #1
    bge loc_80488C8
    mov r0, #0
    pop {r4-r7,pc}
loc_80488D8:
    mov r0, #1
    pop {r4-r7,pc}
off_80488DC:    .word aRockmanexe4200
aRockmanexe4200:    .byte 0x52, 0x4F, 0x43
    .byte 0x4B, 0x4D, 0x41
    .byte 0x4E, 0x45, 0x58
    .byte 0x45, 0x34, 0x20
    .byte 0x32, 0x30, 0x30
    .byte 0x33, 0x31, 0x30
    .byte 0x32, 0x32, 0x0
    .byte 0x0, 0x0, 0x0
// end of function sub_80488BC

.thumb
sub_80488F8:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x88
    bl sub_8024FB8
    ldr r0, [pc, #0x80489dc-0x8048902-2] // aRockmanexe4200
    ldr r1, [pc, #0x80489c4-0x8048904-4] // unk_20073E0
    mov r2, #0x14
    bl f900_8000970
    ldr r0, [pc, #0x80489d0-0x804890c-4] // unk_20073E0
    ldr r1, [pc, #0x80489d8-0x804890e-2] // =0x1C
    mov r2, #0
    ldr r3, [pc, #0x80489cc-0x8048912-2] // dword_20073F4
    str r2, [r3]
loc_8048916:
    sub r1, #1
    blt loc_8048920
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_8048916
loc_8048920:
    str r2, [r3]
    mov r7, #0
loc_8048924:
    ldr r0, [pc, #0x80489d0-0x8048924-4] // unk_20073E0
    ldr r1, [pc, #0x80489d4-0x8048926-2] // =0xE007F00
    ldr r2, [pc, #0x80489d8-0x8048928-4] // =0x1C
    push {r0-r2}
    bl sub_8111790
    pop {r0-r2}
    push {r0-r3,r7}
    bl sub_8111800
    add r4, r0, #0
    pop {r0-r3,r7}
    tst r4, r4
    beq loc_804894A
    add r7, #1
    cmp r7, #3
    blt loc_8048924
    mov r0, #1
    pop {r4-r7,pc}
loc_804894A:
    mov r0, #0x11
    mov r1, #0x88
    bl sub_8024F9C
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80488F8

.thumb
sub_8048956:
    push {r4-r7,lr}
    mov r7, #0
loc_804895A:
    ldr r0, [pc, #0x80489d4-0x804895a-2] // =0xE007F00
    ldr r1, [pc, #0x80489d0-0x804895c-4] // unk_20073E0
    ldr r2, [pc, #0x80489d8-0x804895e-2] // =0x1C
    push {r0-r3}
    bl sub_811172C
    pop {r0-r3}
    push {r0-r3}
    bl sub_8111800
    add r4, r0, #0
    pop {r0-r3}
    tst r4, r4
    beq loc_804897C
    add r7, #1
    cmp r7, #3
    blt loc_804895A
loc_804897C:
    ldr r0, [pc, #0x80489dc-0x804897c-4] // aRockmanexe4200
    ldr r1, [pc, #0x80489c4-0x804897e-2] // unk_20073E0
    mov r2, #0
loc_8048982:
    ldrb r3, [r0,r2]
    ldrb r4, [r1,r2]
    cmp r3, r4
    bne loc_80489B6
    add r2, #1
    cmp r2, #0x14
    blt loc_8048982
    ldr r0, [pc, #0x80489d0-0x8048990-4] // unk_20073E0
    ldr r1, [pc, #0x80489d8-0x8048992-2] // =0x1C
    mov r2, #0
    ldr r4, [pc, #0x80489cc-0x8048996-2] // dword_20073F4
    ldr r3, [r4]
    str r2, [r4]
loc_804899C:
    sub r1, #1
    blt loc_80489A6
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_804899C
loc_80489A6:
    cmp r2, r3
    bne loc_80489B6
    mov r0, #0x11
    mov r1, #0x88
    bl sub_8024F9C
    mov r0, #0
    pop {r4-r7,pc}
loc_80489B6:
    mov r0, #0x11
    mov r1, #0x88
    bl sub_8024FB8
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80489C4:    .word unk_20073E0
    .word dword_20073F8
off_80489CC:    .word dword_20073F4
off_80489D0:    .word unk_20073E0
dword_80489D4:    .word 0xE007F00
dword_80489D8:    .word 0x1C
off_80489DC:    .word aRockmanexe4200
// end of function sub_8048956

.thumb
sub_80489E0:
    push {lr}
    ldr r0, [pc, #0x8048a10-0x80489e2-2] // byte_2010B88
    mov r1, #8
    bl f900_8000930
    pop {pc}
// end of function sub_80489E0

loc_80489EC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8048a10-0x80489ee-2] // byte_2010B88
    ldr r0, [pc, #0x8048a00-0x80489f0-4] // off_8048A04
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8048ACC
    pop {r4-r7,pc}
off_8048A00:    .word off_8048A04
off_8048A04:    .word sub_8048A14+1
    .word sub_8048A54+1
    .word sub_8048A7A+1
off_8048A10:    .word byte_2010B88
.thumb
sub_8048A14:
    push {lr}
    bl sub_804E448
    mov r0, #0x11
    bl sub_8001BC8
    bl sub_8048B1C
// end of function sub_8048A14

    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8048a50-0x8048a28-4] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    bl sub_8048AA0
    mov r0, #8
    mov r1, #0x20 
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5]
    mov r0, #0xb4
    strh r0, [r5,#4]
    pop {pc}
off_8048A50:    .word 0x1F40
.thumb
sub_8048A54:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    beq loc_8048A6C
    mov r1, #0xaf
    cmp r0, r1
    bne locret_8048A78
    mov r0, #0x1a
    bl f500_8000560
    b locret_8048A78
loc_8048A6C:
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
locret_8048A78:
    pop {pc}
// end of function sub_8048A54

.thumb
sub_8048A7A:
    push {lr}
    bl sub_8005B5C
    beq locret_8048A9A
    bl sub_800609C
    bl sub_802525C
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0
    strb r1, [r0]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8048a9c-0x8048a96-2] // =0x40
    strh r1, [r0]
locret_8048A9A:
    pop {pc}
off_8048A9C:    .word 0x40
// end of function sub_8048A7A

.thumb
sub_8048AA0:
    push {lr}
    ldr r0, [pc, #0x8048b6c-0x8048aa2-2] // word_2014000
    ldr r1, [pc, #0x8048ac4-0x8048aa4-4] // BG1X_Offset
    mov r2, #1
    ldr r3, [pc, #0x8048ac8-0x8048aa8-4] // =0xA2400000
    bl sub_8006084
    ldr r3, [pc, #0x8048b6c-0x8048aae-2] // word_2014000
    mov r2, #0
    mov r1, #0xa0
    lsl r1, r1, #1
    mov r0, #0
loc_8048AB8:
    str r0, [r3,r2]
    add r2, #4
    cmp r2, r1
    blt loc_8048AB8
    pop {pc}
    .balign 4, 0x00
off_8048AC4:    .word BG1X_Offset
dword_8048AC8:    .word 0xA2400000
// end of function sub_8048AA0

.thumb
sub_8048ACC:
    push {r4,r6,r7,lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x10]
    sub r0, #4
    strh r0, [r3,#0x10]
    ldr r3, [pc, #0x8048b6c-0x8048ad8-4] // word_2014000
    mov r2, #0xa0
    lsl r2, r2, #1
    mov r4, #4
    mov r6, #0
    mov r7, #0
loc_8048AE4:
    strh r0, [r3,r6]
    add r6, #2
    cmp r6, r2
    bge locret_8048B00
    sub r4, #1
    bgt loc_8048AE4
    ldrh r0, [r3,r6]
    ldr r1, [pc, #0x8048b04-0x8048af2-2] // off_8048B08
    ldrb r1, [r1,r7]
    sub r0, r0, r1
    mov r4, #8
    add r7, #1
    cmp r7, #0x14
    ble loc_8048AE4
locret_8048B00:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8048B04:    .word off_8048B08
off_8048B08:    .word loc_80C1008
// end of function sub_8048ACC

    lsr r0, r2, #0x10
    asr r0, r1, #0x20
    lsr r4, r1, #0x20
    lsr r0, r2, #0x10
    asr r0, r1, #0x20
    lsr r4, r1, #0x20
    lsr r0, r2, #0x10
    asr r0, r1, #0x20
.thumb
sub_8048B1C:
    push {r5,lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8001D60
    ldr r0, [pc, #0x8048b70-0x8048b3a-2] // off_8048B74
    ldr r1, [pc, #0x8048b8c-0x8048b3c-4] // dword_8048B90
    ldr r2, [pc, #0x8048b6c-0x8048b3e-2] // word_2014000
    bl sub_8025908
    bl sub_8001D88
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8048b9c-0x8048b4e-2] // unk_2019000
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_8048B1C

    mov r0, #0
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x8048b98-0x8048b5e-2] // unk_2018000
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
    pop {r5,pc}
    .balign 4, 0x00
off_8048B6C:    .word word_2014000
off_8048B70:    .word off_8048B74
off_8048B74:    .word dword_86AE8C4
    .word 0x886AED54, 0x20, 0x86AEB84, 0x86AEC9C, 0x0
off_8048B8C:    .word dword_8048B90
dword_8048B90:    .word 0x6000000, 0x3002A50
off_8048B98:    .word unk_2018000
off_8048B9C:    .word unk_2019000
dword_8048BA0:    .word 0xFF000025, 0xFFFFFFFF, 0xD204D202, 0xD208D206, 0xD20CD20A
    .word 0xD210D20E, 0xD214D212, 0xD218D216, 0xD21CD21A, 0xD220D21E
    .word 0xD224D222, 0xD228D226, 0xD22CD22A, 0xD203D200, 0xD207D205
    .word 0xD20BD209, 0xD20FD20D, 0xD213D211, 0xD217D215, 0xD21BD219
    .word 0xD21FD21D, 0xD223D221, 0xD227D225, 0xD22BD229, 0xD201D22D
    .word 0xB244B242, 0xB248B246, 0xB24CB24A, 0xB250B24E, 0xB254B252
    .word 0xB258B256, 0xB25CB25A, 0xB260B25E, 0xB264B262, 0xB268B266
    .word 0xB26CB26A, 0xB243B240, 0xB247B245, 0xB24BB249, 0xB24FB24D
    .word 0xB253B251, 0xB257B255, 0xB25BB259, 0xB25FB25D, 0xB263B261
    .word 0xB267B265, 0xB26BB269, 0xB241B26D, 0xD284D282, 0xD288D286
    .word 0xD28CD28A, 0xD290D28E, 0xD294D292, 0xD298D296, 0xD29CD29A
    .word 0xD2A0D29E, 0xD2A4D2A2, 0xD2A8D2A6, 0xD2ACD2AA, 0xD283D280
    .word 0xD287D285, 0xD28BD289, 0xD28FD28D, 0xD293D291, 0xD297D295
    .word 0xD29BD299, 0xD29FD29D, 0xD2A3D2A1, 0xD2A7D2A5, 0xD2ABD2A9
    .word 0xD281D2AD, 0xB2C4B2C2, 0xB2C8B2C6, 0xB2CCB2CA, 0xB2D0B2CE
    .word 0xB2D4B2D2, 0xB2D8B2D6, 0xB2DCB2DA, 0xB2E0B2DE, 0xB2E4B2E2
    .word 0xB2E8B2E6, 0xB2ECB2EA, 0xB2C3B2C0, 0xB2C7B2C5, 0xB2CBB2C9
    .word 0xB2CFB2CD, 0xB2D3B2D1, 0xB2D7B2D5, 0xB2DBB2D9, 0xB2DFB2DD
    .word 0xB2E3B2E1, 0xB2E7B2E5, 0xB2EBB2E9, 0xB2C1B2ED, 0xD304D302
    .word 0xD308D306, 0xD30CD30A, 0xD310D30E, 0xD314D312, 0xD318D316
    .word 0xD31CD31A, 0xD320D31E, 0xD324D322, 0xD328D326, 0xD32CD32A
    .word 0xD303D300, 0xD307D305, 0xD30BD309, 0xD30FD30D, 0xD313D311
    .word 0xD317D315, 0xD31BD319, 0xD31FD31D, 0xD323D321, 0xD327D325
    .word 0xD32BD329, 0xD301D32D, 0xB344B342, 0xB348B346, 0xB34CB34A
    .word 0xB350B34E, 0xB354B352, 0xB358B356, 0xB35CB35A, 0xB360B35E
    .word 0xB364B362, 0xB368B366, 0xB36CB36A, 0xB343B340, 0xB347B345
    .word 0xB34BB349, 0xB34FB34D, 0xB353B351, 0xB357B355, 0xB35BB359
    .word 0xB35FB35D, 0xB363B361, 0xB367B365, 0xB36BB369, 0xB341B36D
    .word 0xD384D382, 0xD388D386, 0xD38CD38A, 0xD390D38E, 0xD394D392
    .word 0xD398D396, 0xD39CD39A, 0xD3A0D39E, 0xD3A4D3A2, 0xD3A8D3A6
    .word 0xD3ACD3AA, 0xD383D380, 0xD387D385, 0xD38BD389, 0xD38FD38D
    .word 0xD393D391, 0xD397D395, 0xD39BD399, 0xD39FD39D, 0xD3A3D3A1
    .word 0xD3A7D3A5, 0xD3ABD3A9, 0xD381D3AD, 0xB3C4B3C2, 0xB3C8B3C6
    .word 0xB3CCB3CA, 0xB3D0B3CE, 0xB3D4B3D2, 0xB3D8B3D6, 0xB3DCB3DA
    .word 0xB3E0B3DE, 0xB3E4B3E2, 0xB3E8B3E6, 0xB3ECB3EA, 0xB3C3B3C0
    .word 0xB3C7B3C5, 0xB3CBB3C9, 0xB3CFB3CD, 0xB3D3B3D1, 0xB3D7B3D5
    .word 0xB3DBB3D9, 0xB3DFB3DD, 0xB3E3B3E1, 0xB3E7B3E5, 0xB3EBB3E9
    .word 0xB3C1B3ED, 0xE000E000, 0xE000E000, 0xE024E022, 0xE028E026
    .word 0xE02CE02A, 0xE030E02E, 0xC0344008, 0xC038C036, 0xC03CC03A
    .word 0xC040C03E, 0xC044C042, 0xC048C046, 0xC04CC04A, 0xE000E000
    .word 0xE000E000, 0xE000E000, 0xE000E000, 0xE000E000, 0xE025E023
    .word 0xE029E027, 0xE02DE02B, 0xE031E02F, 0xC0354008, 0xC039C037
    .word 0xC03DC03B, 0xC041C03F, 0xC045C043, 0xC049C047, 0xC04DC04B
    .word 0xE000E000, 0xE000E000, 0xE000E000
off_8048F08:    .word unk_2026000
    .word word_202A000
    .word 0x1200
    .word 0x1400
    .word unk_2001500
    .word unk_2001520
    .word unk_20017A0
dword_8048F24:    .word 0x86F94D4, 0x86F9BA8, 0x2026000, 0x202A000, 0x1240
    .word 0x1440, 0x2001504, 0x2001524, 0x20017E0, 0x86F94D4
    .word 0x86F9BEC, 0x2026000, 0x202A000, 0x1280, 0x1480
    .word 0x2001508, 0x2001528, 0x2001820, 0x86F94D4, 0x86F9BA8
    .word 0x2026000, 0x202A000, 0x12C0, 0x14C0, 0x200150C
    .word 0x200152C, 0x2001860, 0x86F94D4, 0x86F9BEC, 0x2026000
    .word 0x202A000, 0x1300, 0x1500, 0x2001510, 0x2001530
    .word 0x20018A0, 0x86F94D4, 0x86F9BEC, 0x2026000, 0x202A000
    .word 0x1340, 0x1540, 0x2001514, 0x2001534, 0x20018E0
    .word 0x86F94D4, 0x86F9C30, 0x86FACF0, 0x86F9DF4, 0x86FB658
    .word 0x86FAF30, 0x86FC02C, 0x86FB830, 0x86FCA90, 0x86FC1E8
    .word 0x86FD41C, 0x86FCCB4, 0x86FDC2C, 0x86FD5F0
.thumb
sub_8049010:
    push {r4-r7,lr}
    push {r0}
    ldr r0, [pc, #0x804905c-0x8049014-4] // byte_200A720
    mov r1, #0x20 
    bl f900_8000930
    pop {r0}
    ldr r5, [pc, #0x804905c-0x804901e-2] // byte_200A720
    strb r0, [r5,#(byte_200A724 - 0x200a720)]
    ldr r2, [pc, #0x8049038-0x8049022-2] // off_8048F08
    mov r1, #0x24 
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#(dword_200A73C - 0x200a720)]
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrh r0, [r2,#4]
    strh r0, [r2,#0xc]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049038:    .word off_8048F08
// end of function sub_8049010

loc_804903C:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x804905c-0x8049046-2] // byte_200A720
    ldr r0, [pc, #0x8049060-0x8049048-4] // off_8049064
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_804905C:    .word byte_200A720
off_8049060:    .word off_8049064
off_8049064:    .word sub_804908C+1
    .word sub_804913C+1
    .word sub_8049178+1
    .word sub_80491D4+1
    .word sub_8049228+1
    .word sub_8049294+1
    .word sub_80492E8+1
    .word sub_804932C+1
    .word sub_8049384+1
    .word sub_80493BC+1
.thumb
sub_804908C:
    push {lr}
    mov r0, #0
    strb r0, [r5,#8]
    strh r0, [r5,#0x14]
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    strb r0, [r5,#9]
    strb r0, [r5,#0xb]
    bl sub_8049490
    bl sub_804958C
    bl sub_80495E4
// end of function sub_804908C

    bl sub_8049464
    ldrh r0, [r5,#0x18]
    bl sub_8049648
    mov r7, r10
    ldr r0, [r7,#8]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    ldr r0, [r7,#0x1c]
    mov r1, #0x17
    strb r1, [r0,#9]
    mov r1, #0x16
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#2]
    mov r1, #0xff
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0,#6]
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #8
    mov r1, #0x10
    bl sub_8005ADC
    ldr r0, [pc, #0x804912c-0x80490ec-4] // dword_8048BA0
    bl sub_8053FFC
    ldrh r0, [r5,#0x12]
    cmp r0, #0
    beq loc_8049112
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0x1c]
    ldr r1, [r1,#0x14]
    ldr r1, [r1]
    cmp r0, r1
    bne loc_8049112
    mov r0, #4
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8049130-0x804910c-4] // =0x5F40
    strh r1, [r0]
    b loc_8049128
loc_8049112:
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    bl sub_804994C
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8049134-0x8049122-2] // =0x5E40
    strh r1, [r0]
    b loc_8049128
loc_8049128:
    mov r0, #0
    pop {pc}
off_804912C:    .word dword_8048BA0
dword_8049130:    .word 0x5F40
dword_8049134:    .word 0x5E40
    .word 0x1200
.thumb
sub_804913C:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8049174-0x8049142-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0
    ble loc_8049158
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_8049158:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    bl sub_8005B5C
    beq loc_804916C
    mov r0, #0
    bl sub_804987C
loc_804916C:
    bl sub_80493F8
// end of function sub_804913C

    mov r0, #0
    pop {pc}
dword_8049174:    .word 0x5F40
.thumb
sub_8049178:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x80491d0-0x804917e-2] // =0x5F40
    strh r1, [r0]
    bl sub_80493F8
// end of function sub_8049178

    bl sub_8005B5C
    beq loc_80491CC
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0x1c]
    ldr r1, [r1,#0x14]
    str r0, [r1]
    bl sub_80A6D9E
    mov r0, r10
    ldr r0, [r0,#0x1c]
    mov r1, #0
    strb r1, [r0,#9]
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#1]
    strb r1, [r0,#5]
    strb r1, [r0,#3]
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0]
    strb r1, [r0,#4]
    strb r1, [r0,#2]
    strb r1, [r0,#6]
    mov r0, r10
    ldr r0, [r0,#0x20]
    mov r1, #0
    strb r1, [r0]
    mov r1, #0
    strb r1, [r0,#4]
    strb r1, [r0,#6]
    bl sub_802DE3C
    mov r0, #1
    pop {pc}
loc_80491CC:
    mov r0, #0
    pop {pc}
dword_80491D0:    .word 0x5F40
.thumb
sub_80491D4:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_8049216
    ldrh r1, [r5,#0x18]
    ldrh r2, [r5,#0x14]
    add r2, r2, r1
    ldr r7, [r5,#0x1c]
    ldr r0, [r7,#4]
    ldr r1, [pc, #0x8049290-0x8049206-2] // dword_201A000
    ldrb r1, [r1,r2]
    bl sub_804E2A4
    bl sub_80499B4
    mov r0, #0x10
    strb r0, [r5]
loc_8049216:
    bl sub_80493F8
// end of function sub_80491D4

    bl sub_8049998
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word 0x800
.thumb
sub_8049228:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_804923C
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_804923C:
    mov r0, #8
    bl sub_80539A0
    beq loc_8049284
    ldrh r0, [r5,#0x18]
    ldrh r1, [r5,#0x14]
    add r1, r1, r0
    ldr r0, [pc, #0x8049290-0x804924a-2] // dword_201A000
    ldr r2, [r5,#0x1c]
    ldr r2, [r2,#0xc]
    ldrb r0, [r0,r1]
    add r0, r0, r2
    mov r8, r0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_8049264
    mov r0, r8
    bl sub_8024FBC
loc_8049264:
    bl sub_804E448
    bl sub_804958C
    mov r0, #0x14
    strb r0, [r5]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
loc_8049284:
    bl sub_80493F8
// end of function sub_8049228

    bl sub_8049998
    mov r0, #0
    pop {pc}
off_8049290:    .word dword_201A000
.thumb
sub_8049294:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_80492DA
    mov r0, #4
    strb r0, [r5]
    ldr r0, [r7,#0x1c]
    mov r1, #0x1e
    strb r1, [r0,#9]
    mov r1, #0x16
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#2]
    mov r1, #0xff
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0,#6]
loc_80492DA:
    bl sub_80493F8
// end of function sub_8049294

    bl sub_8049998
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_80492E8:
    push {lr}
    bl sub_8005B5C
    beq loc_804931E
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0x1c
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_804931E:
    bl sub_80493F8
// end of function sub_80492E8

    bl sub_8049998
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_804932C:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8049380-0x8049332-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_8049374
    mov r1, #0
    ldrh r0, [r5,#0x12]
    cmp r0, #0
    bne loc_8049366
    mov r1, #1
loc_8049366:
    ldr r0, [pc, #0x804937c-0x8049366-2] // dword_86FDBB8+536
    bl sub_804E2A4
    bl sub_80499B4
    mov r0, #0x20 
    strb r0, [r5]
loc_8049374:
    bl sub_80493F8
// end of function sub_804932C

    mov r0, #0
    pop {pc}
off_804937C:    .word dword_86FDBB8+0x218
dword_8049380:    .word 0x5F40
.thumb
sub_8049384:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_8049398
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_8049398:
    mov r0, #8
    bl sub_80539A0
    beq loc_80493B4
    bl sub_804E448
    mov r0, #0x24 
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    mov r0, #0x10
    mov r1, #8
    bl sub_8005ADC
loc_80493B4:
    bl sub_80493F8
// end of function sub_8049384

    mov r0, #0
    pop {pc}
.thumb
sub_80493BC:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_80493EE
    ldrh r0, [r5,#0x12]
    cmp r0, #0
    bne loc_80493EA
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
    b loc_80493EE
loc_80493EA:
    mov r0, #4
    strb r0, [r5]
loc_80493EE:
    bl sub_80493F8
// end of function sub_80493BC

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_80493F8:
    push {r5,lr}
    bl sub_8054018
    bl sub_8054054
    ldrb r3, [r5,#0xb]
    cmp r3, #0
    beq loc_8049412
    mov r3, #0
    strb r3, [r5,#0xb]
    ldrh r0, [r5,#0x18]
    bl sub_8049648
loc_8049412:
    ldrh r0, [r5,#0x12]
    tst r0, r0
    beq loc_8049448
    ldrb r0, [r5]
    cmp r0, #0x18
    beq loc_8049448
    mov r0, r10
    ldr r0, [r0,#0x1c]
    ldrb r0, [r0,#7]
    cmp r0, #0x50 
    beq loc_8049430
    cmp r0, #0xff
    beq loc_8049430
    tst r0, r0
    bne loc_8049448
loc_8049430:
    mov r0, #4
    ldrh r1, [r5,#0x14]
    lsl r1, r1, #4
    add r1, #0x18
    ldrb r2, [r5,#9]
    mov r3, #0
    bl loc_80383F4
    ldrb r0, [r5]
    cmp r0, #0x10
    beq loc_8049448
    strb r2, [r5,#9]
loc_8049448:
    bl sub_8049688
// end of function sub_80493F8

    bl sub_8049810
    mov r0, #0xe5
    mov r1, #0x15
    ldrh r2, [r5,#0x12]
    ldrh r3, [r5,#0x18]
    mov r4, #8
    mov r6, #3
    mov r7, #0x80
    bl sub_8038510
    pop {r5,pc}
.thumb
sub_8049464:
    push {r5,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #3
    ldr r3, [pc, #0x8049484-0x804946a-2] // dword_8048F24+188
    add r3, r3, r0
    push {r3}
    ldr r0, [r3]
    ldr r1, [pc, #0x8049488-0x8049472-2] // unk_2026000
    bl sub_8111700
    pop {r3}
    ldr r0, [r3,#4]
    ldr r1, [pc, #0x804948c-0x804947c-4] // word_202A000
    bl sub_8111700
    pop {r5,pc}
off_8049484:    .word dword_8048F24+0xBC
off_8049488:    .word unk_2026000
off_804948C:    .word word_202A000
// end of function sub_8049464

.thumb
sub_8049490:
    push {r5,lr}
    ldr r0, [pc, #0x804951c-0x8049492-2] // =0x20
    ldr r1, [pc, #0x8049520-0x8049494-4] // =0x7FE0
    bl sub_8031640
    bl sub_8001D04
    bl sub_8001D38
    ldr r0, [pc, #0x8049524-0x80494a2-2] // dword_86F9060+1108
    ldr r1, [pc, #0x8049528-0x80494a4-4] // unk_3002AD0
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804952c-0x80494ac-4] // dword_86F9060+220
    ldr r1, [pc, #0x8049530-0x80494ae-2] // =0x6000020
    bl sub_81116FC
    ldr r0, [pc, #0x8049534-0x80494b4-4] // dword_86F9060+932
    ldr r1, [pc, #0x8049538-0x80494b6-2] // =0x6008020
    bl sub_81116FC
    ldr r0, [pc, #0x804955c-0x80494bc-4] // dword_86CE300
    ldr r1, [pc, #0x8049560-0x80494be-2] // =0x6010020
    ldr r2, [pc, #0x8049564-0x80494c0-4] // =0x420
    bl f900_800098C
    ldr r0, [pc, #0x8049568-0x80494c6-2] // dword_86F87B4+620
    ldr r1, [pc, #0x804956c-0x80494c8-4] // unk_30027A0
    ldr r2, [pc, #0x8049570-0x80494ca-2] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x8049574-0x80494d0-4] // dword_86CE520
    ldr r1, [pc, #0x8049578-0x80494d2-2] // =0x6004600
    ldr r2, [pc, #0x804957c-0x80494d4-4] // =0xFF
    bl f900_800098C
    ldr r0, [pc, #0x8049580-0x80494da-2] // dword_86F87B4+620
    ldr r1, [pc, #0x8049584-0x80494dc-4] // unk_3002AF0
    ldr r2, [pc, #0x8049588-0x80494de-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x804953c-0x80494e4-4] // dword_869F7C4+32
    ldr r1, [pc, #0x8049540-0x80494e6-2] // unk_3002C10
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x8049544-0x80494ee-2] // dword_869F784
    ldr r1, [pc, #0x8049548-0x80494f0-4] // unk_3002BF0
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804954c-0x80494f8-4] // dword_869F7C4
    ldr r1, [pc, #0x8049550-0x80494fa-2] // unk_3002BD0
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x8049554-0x8049502-2] // dword_869F7C4+64
    ldr r1, [pc, #0x8049558-0x8049504-4] // unk_3002BB0
    mov r2, #0x20 
    bl f900_800098C
    bl sub_80499B4
    bl sub_8001D88
    bl sub_80540BA
    pop {r5,pc}
    .balign 4, 0x00
dword_804951C:    .word 0x20
dword_8049520:    .word 0x7FE0
off_8049524:    .word dword_86F9060+0x454
off_8049528:    .word unk_3002AD0
off_804952C:    .word dword_86F9060+0xDC
dword_8049530:    .word 0x6000020
off_8049534:    .word dword_86F9060+0x3A4
dword_8049538:    .word 0x6008020
off_804953C:    .word dword_869F7C4+0x20
off_8049540:    .word unk_3002C10
off_8049544:    .word dword_869F784
off_8049548:    .word unk_3002BF0
off_804954C:    .word dword_869F7C4
off_8049550:    .word unk_3002BD0
off_8049554:    .word dword_869F7C4+0x40
off_8049558:    .word unk_3002BB0
off_804955C:    .word dword_86CE300
dword_8049560:    .word 0x6010020
off_8049564:    .word 0x420
off_8049568:    .word dword_86F87B4+0x26C
off_804956C:    .word unk_30027A0
off_8049570:    .word 0x80
off_8049574:    .word dword_86CE520
dword_8049578:    .word 0x6004600
off_804957C:    .word 0x100
off_8049580:    .word dword_86F87B4+0x26C
off_8049584:    .word unk_3002AF0
dword_8049588:    .word 0x20
// end of function sub_8049490

.thumb
sub_804958C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8049830-0x804958e-2] // dword_201A000
    mov r1, #0x30 
    mov r2, #0x2f 
    bl f900_80009B4
    ldr r6, [r5,#0x1c]
    ldr r0, [r6,#0x10]
    ldr r0, [r0]
    strh r0, [r5,#0x12]
    ldr r6, [r5,#0x1c]
    ldr r6, [r6,#0x18]
    ldr r7, [pc, #0x8049830-0x80495a4-4] // dword_201A000
loc_80495A6:
    sub r0, #1
    blt loc_80495BC
    ldrb r3, [r6,r0]
    strb r3, [r7]
    ldrb r2, [r5]
    tst r2, r2
    bne loc_80495B8
    bl sub_80499CC
loc_80495B8:
    add r7, #1
    b loc_80495A6
loc_80495BC:
    mov r0, #0
    ldr r1, [r5,#0x1c]
    ldr r1, [r1,#0xc]
    mov r7, #0
    ldrh r6, [r5,#0x12]
    tst r6, r6
    beq loc_80495E0
loc_80495CA:
    push {r0,r1}
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0,r1}
    beq loc_80495DA
    add r7, #1
loc_80495DA:
    add r0, #1
    cmp r0, #0x30 
    blt loc_80495CA
loc_80495E0:
    strb r7, [r5,#5]
    pop {r4-r7,pc}
// end of function sub_804958C

.thumb
sub_80495E4:
    push {r4-r7,lr}
    add r7, r5, #0
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8049640-0x80495ee-2] // dword_86F9060+1140
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_80495E4

    ldr r3, [r7,#0x1c]
    ldr r3, [r3,#0x1c]
    mov r0, #1
    mov r1, #0
    mov r2, #1
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    ldr r3, [r7,#0x1c]
    ldr r3, [r3,#0x20]
    mov r0, #1
    mov r1, #0
    mov r2, #2
    mov r4, #0xb
    mov r5, #3
    bl sub_8001DDC
    mov r0, #5
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8049644-0x8049622-2] // dword_8048BA0+8
    mov r4, #0x17
    mov r5, #0x10
    bl sub_8001DDC
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DF8
    pop {r4-r7,pc}
    .byte 0, 0
off_8049640:    .word dword_86F9060+0x474
off_8049644:    .word dword_8048BA0+8
.thumb
sub_8049648:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8049830-0x804964a-2] // dword_201A000
    ldr r7, [r5,#0x1c]
    ldr r7, [r7]
    add r5, r0, r1
    add r0, r7, #0
    mov r1, #0
    ldr r2, [pc, #0x804967c-0x8049656-2] // word_2014000
    ldr r3, [pc, #0x8049680-0x8049658-4] // =0x6004000
    ldr r6, [pc, #0x8049684-0x804965a-2] // dword_86C6E60
    push {r0-r3,r5,r6}
    ldrb r1, [r5,r1]
    mov r4, #0x17
    mov r5, #1
    mov r7, #0
    bl sub_8053A04
    .byte 0x6F 
    .byte 0xBC
    .byte 0x80
    .byte 0x24 
    .byte 0x24 
    .byte 1
    .byte 0x12
    .byte 0x19
    .byte 0x1B
    .byte 0x19
    .byte 1
    .byte 0x31 
    .byte 8
    .byte 0x29 
    .byte 0xF0
    .byte 0xDB
    .byte 0xF0
    .byte 0xBD
off_804967C:    .word word_2014000
dword_8049680:    .word 0x6004000
off_8049684:    .word dword_86C6E60
// end of function sub_8049648

.thumb
sub_8049688:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80496fc-0x804968a-2] // unk_2018000
    mov r1, #0x40 
    bl f900_8000910
    ldr r3, [pc, #0x8049838-0x8049692-2] // loc_804983C
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    add r3, r3, r6
    ldrb r0, [r5,#0x18]
    ldr r4, [pc, #0x8049830-0x80496a4-4] // dword_201A000
    add r4, r4, r0
    ldr r7, [r5,#0x1c]
    ldr r7, [r7,#0xc]
    mov r6, #0
loc_80496AE:
    ldrb r2, [r4,r6]
    add r0, r2, r7
    push {r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r3}
    beq loc_80496E2
    push {r4-r7}
    mov r1, r10
    ldr r3, [r1,#0x24]
    ldrh r3, [r3]
    mov r7, #0x1f
    and r3, r7
    lsl r3, r3, #2
    ldr r0, [pc, #0x8049708-0x80496cc-4] // loc_8049710
    ldr r0, [r0,r3]
    mov r2, #8
    mul r2, r6
    ldr r1, [pc, #0x80496fc-0x80496d4-4] // unk_2018000
    str r0, [r1,r2]
    add r2, #4
    ldr r0, [pc, #0x804970c-0x80496da-2] // loc_8049790
    ldr r0, [r0,r3]
    str r0, [r1,r2]
    pop {r4-r7}
loc_80496E2:
    add r6, #1
    cmp r6, #8
    blt loc_80496AE
    mov r0, #2
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x80496fc-0x80496ee-2] // unk_2018000
    mov r4, #2
    mov r5, #0x10
    bl sub_8001DDC
// end of function sub_8049688

    pop {r4-r7,pc}
    .balign 4, 0x00
off_80496FC:    .word unk_2018000
    .word 0x52315230, 0x52335232
off_8049708:    .word loc_8049710
off_804970C:    .word loc_8049790
loc_8049710:
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r0, [r6,r0]
    strh r1, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
    strh r4, [r6,r0]
    strh r5, [r6,r0]
loc_8049790:
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r2, [r6,r0]
    strh r3, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
    strh r6, [r6,r0]
    strh r7, [r6,r0]
.thumb
sub_8049810:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8049838-0x8049812-2] // loc_804983C
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    add r3, r3, r6
    ldr r0, [pc, #0x8049834-0x8049822-2] // =0x40A00003
    ldrh r1, [r3]
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8049810

    pop {r4-r7,pc}
off_8049830:    .word dword_201A000
dword_8049834:    .word 0x40A00003
off_8049838:    .word loc_804983C
loc_804983C:
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
    ldmia r4, {r1,r2,r4}
.thumb
sub_804987C:
    push {r4-r7,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8049892
    bl sub_80498C0
    b locret_80498B8
loc_8049892:
    ldrh r1, [r5,#0x12]
    cmp r1, #0
    beq locret_80498B8
    mov r1, #1
    tst r1, r0
    beq loc_80498A4
    bl sub_80498D8
    b locret_80498B8
loc_80498A4:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x80498bc-0x80498a6-2] // =0x3C0
    tst r0, r1
    beq locret_80498B8
    mov r1, #8
    mov r2, #0
    mov r3, #0
    bl sub_80388E0
    strb r7, [r5,#0xb]
locret_80498B8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80498BC:    .word 0x3C0
// end of function sub_804987C

.thumb
sub_80498C0:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x68 
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
// end of function sub_80498C0

.thumb
sub_80498D8:
    push {lr}
    mov r0, #0xc
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    mov r0, #0x67 
    bl f500_8000558
    mov r0, #6
    strb r0, [r5,#8]
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DF8
// end of function sub_80498D8

    pop {r5}
    bl sub_8049934
    bl sub_8049964
    bl sub_8049998
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
.thumb
sub_8049934:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8049948-0x8049936-2] // dword_86F9860+292
    mov r0, #3
    mov r1, #5
    mov r2, #3
    mov r4, #0x18
    mov r5, #0xa
    bl sub_8001DDC
// end of function sub_8049934

    pop {r4-r7,pc}
off_8049948:    .word dword_86F9860+0x124
.thumb
sub_804994C:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #6
    mov r2, #3
    ldr r3, [pc, #0x8049960-0x8049954-4] // dword_86F9860+1044
    mov r4, #0x18
    mov r5, #8
    bl sub_8001DDC
// end of function sub_804994C

    pop {r4-r7,pc}
off_8049960:    .word dword_86F9860+0x414
.thumb
sub_8049964:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x18]
    ldrb r1, [r5,#0x14]
    add r0, r0, r1
    ldr r1, [pc, #0x8049988-0x804996c-4] // dword_201A000
    ldrb r1, [r1,r0]
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    ldr r2, [pc, #0x804998c-0x8049974-4] // unk_2018400
    ldr r3, [pc, #0x8049990-0x8049976-2] // =0x6008400
    mov r4, #0x17
    mov r5, #1
    ldr r6, [pc, #0x8049994-0x804997c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBD
    .balign 4, 0x00
off_8049988:    .word dword_201A000
off_804998C:    .word unk_2018400
dword_8049990:    .word 0x6008400
off_8049994:    .word dword_86C6E60
// end of function sub_8049964

.thumb
sub_8049998:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80499b0-0x804999a-2] // dword_8048BA0+744
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000874
    pop {r4-r7,pc}
    .byte 0, 0
off_80499B0:    .word dword_8048BA0+0x2E8
// end of function sub_8049998

.thumb
sub_80499B4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80499c4-0x80499b6-2] // dword_86F87B4+716
    ldr r1, [pc, #0x80499c8-0x80499b8-4] // =0xC
    mov r2, #0x20 
    bl f900_800098C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80499C4:    .word dword_86F87B4+0x2CC
dword_80499C8:    .word 0xC
// end of function sub_80499B4

.thumb
sub_80499CC:
    push {r0,r4-r7,lr}
    ldrh r6, [r5,#0x12]
    tst r6, r6
    beq locret_80499FC
    mov r0, #0
    ldr r1, [pc, #0x8049a00-0x80499d6-2] // dword_201A000
    sub r7, r7, r1
    ldr r1, [r5,#0x1c]
    ldr r1, [r1,#0xc]
    add r3, r3, r1
    add r0, r3, #0
    bl sub_8024FF4
    beq locret_80499FC
    add r0, r7, #0
    mov r1, #7
    sub r2, r0, r1
    bge loc_80499F4
    mov r2, #0
    b loc_80499F6
loc_80499F4:
    add r0, r1, #0
loc_80499F6:
    strh r0, [r5,#0x14]
    strh r2, [r5,#0x18]
    strh r2, [r5,#0x1a]
locret_80499FC:
    pop {r0,r4-r7,pc}
    .byte 0, 0
off_8049A00:    .word dword_201A000
byte_8049A04:    .byte 0x20
    .byte 0x70 
    .byte 0x22 
    .byte 0x70 
    .byte 0x24 
    .byte 0x70 
    .byte 0x26 
    .byte 0x70 
    .byte 0x28 
    .byte 0x70 
    .byte 0x2A 
    .byte 0x70 
    .byte 0x2C 
    .byte 0x70 
    .byte 0x2E 
    .byte 0x70 
    .byte 0
    .byte 0x0, 0x30, 0x70
    .byte 0
    .byte 0x0, 0x32, 0x70
    .word 0x70367034
    .word 0x703A7038
    .word 0x703E703C
    .word 0x70237021
    .word 0x70277025
    .word 0x702B7029
    .word 0x702F702D
    .byte 0
    .byte 0x0, 0x31, 0x70
    .byte 0
    .byte 0x0, 0x33, 0x70
    .byte 0x35 
    .byte 0x70, 0x37, 0x70
    .byte 0x39 
    .byte 0x70, 0x3B, 0x70
    .byte 0x3D 
    .byte 0x70, 0x3F, 0x70
    .byte 0x40 
    .byte 0x90, 0x42, 0x90
    .byte 0x44 
    .byte 0x90, 0x46, 0x90
    .byte 0x48 
    .byte 0x90, 0x4A, 0x90
    .byte 0x4C 
    .byte 0x90, 0x4E, 0x90
    .byte 0
    .byte 0x0, 0x50, 0x90
    .byte 0
    .byte 0x0, 0x52, 0x90
    .byte 0x54 
    .byte 0x90, 0x56, 0x90
    .byte 0x58 
    .byte 0x90, 0x5A, 0x90
    .byte 0x5C 
    .byte 0x90, 0x5E, 0x90
    .byte 0x41 
    .byte 0x90, 0x43, 0x90
    .byte 0x45 
    .byte 0x90, 0x47, 0x90
    .byte 0x49 
    .byte 0x90, 0x4B, 0x90
    .byte 0x4D 
    .byte 0x90, 0x4F, 0x90
    .byte 0
    .byte 0x0, 0x51, 0x90
    .byte 0
    .byte 0x0, 0x53, 0x90
    .byte 0x55 
    .byte 0x90, 0x57, 0x90
    .byte 0x59 
    .byte 0x90, 0x5B, 0x90
    .byte 0x5D 
    .byte 0x90, 0x5F, 0x90
    .byte 0x60
    .byte 0x70 
    .byte 0x62 
    .byte 0x70 
    .byte 0x64 
    .byte 0x70 
    .byte 0x66 
    .byte 0x70 
    .byte 0x68 
    .byte 0x70 
    .byte 0x6A 
    .byte 0x70 
    .byte 0x6C 
    .byte 0x70 
    .byte 0x6E 
    .byte 0x70 
    .byte 0
    .byte 0x0, 0x70, 0x70
    .byte 0
    .byte 0x0, 0x72, 0x70
    .byte 0x74
    .byte 0x70 
    .byte 0x76 
    .byte 0x70 
    .byte 0x78 
    .byte 0x70 
    .byte 0x7A 
    .byte 0x70 
    .byte 0x7C 
    .byte 0x70 
    .byte 0x7E 
    .byte 0x70 
    .byte 0x61 
    .byte 0x70 
    .byte 0x63 
    .byte 0x70 
    .byte 0x65 
    .byte 0x70 
    .byte 0x67 
    .byte 0x70 
    .byte 0x69 
    .byte 0x70 
    .byte 0x6B 
    .byte 0x70 
    .byte 0x6D 
    .byte 0x70 
    .byte 0x6F 
    .byte 0x70 
    .byte 0
    .byte 0x0, 0x71, 0x70
dword_8049ACC:    .word 0x70730000, 0x70777075, 0x707B7079, 0x707F707D, 0x90829080
    .word 0x90869084, 0x908A9088, 0x908E908C, 0x90900000, 0x90920000
    .word 0x90969094, 0x909A9098, 0x909E909C, 0x90839081, 0x90879085
    .word 0x908B9089, 0x908F908D, 0x90910000, 0x90930000, 0x90979095
    .word 0x909B9099, 0x909F909D, 0x70A270A0, 0x70A670A4, 0x70AA70A8
    .word 0x70AE70AC, 0x70B00000, 0x70B20000, 0x70B670B4, 0x70BA70B8
    .word 0x70BE70BC, 0x70A370A1, 0x70A770A5, 0x70AB70A9, 0x70AF70AD
    .word 0x70B10000, 0x70B30000, 0x70B770B5, 0x70BB70B9, 0x70BF70BD
    .word 0x81028100, 0x81068104, 0x810A8108, 0x8101810C, 0x81058103
    .word 0x81098107, 0x810D810B, 0xFF000127, 0xFF040227, 0xFF080327
    .word 0xFFFFFFFF, 0xFF000028, 0xFFFFFFFF
dword_8049BA0:    .word 0x0
    .word 0x870010C, 0x0
    .word 0x8, 0x0
    .word 0x870010C, 0x40, 0x8, 0x0
    .word 0x870010C, 0x80, 0x8, 0x0
    .word 0x87008F4, 0xC0, 0x8, 0x0
    .byte 0x58
    .byte 0xA
    .byte 0x70 
    .byte 8
    .byte 0
    .byte 0x1, 0x0, 0x0
    .word 0x8, 0x0
    .word 0x870010C, 0x140, 0x8, 0x0
    .word 0x8700588, 0x180, 0x8, 0x0
    .word 0x8700FC8, 0x1C0, 0x8, 0x0
    .word 0x8700FC8, 0x200, 0x8, 0x0
    .word 0x8700FC8, 0x240, 0x8, 0x0
    .word 0x8700FC8, 0x280, 0x8, 0x0
    .word 0x8700FC8, 0x2C0, 0x8, 0x1, 0x8700C20, 0x300, 0x8, 0x1, 0x8700DF4
    .word 0x340, 0x8, 0x0
    .word 0x8700744, 0x380, 0x8, 0x0
    .word 0x8700744, 0x3C0, 0x8, 0x2, 0x87002C8, 0x400, 0x140
// end of function sub_80499CC

.thumb
sub_8049CB0:
    push {r5,lr}
    push {r0}
    ldr r0, [pc, #0x8049d08-0x8049cb4-4] // byte_200A740
    mov r1, #0x34 
    bl f900_8000930
    pop {r0}
    ldr r5, [pc, #0x8049d08-0x8049cbe-2] // byte_200A740
    strb r0, [r5,#(byte_200A744 - 0x200a740)]
    ldr r2, [pc, #0x8049cdc-0x8049cc2-2] // dword_8049BA0
    mov r1, #0x10
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#(dword_200A75C - 0x200a740)]
    ldr r0, [pc, #0x8049ce0-0x8049ccc-4] // unk_2026000
    str r0, [r5,#(dword_200A764 - 0x200a740)]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#4]
    strh r0, [r1,#0xc]
    pop {r5,pc}
    .balign 4, 0x00
off_8049CDC:    .word dword_8049BA0
off_8049CE0:    .word unk_2026000
    .word 0x1F40
// end of function sub_8049CB0

loc_8049CE8:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8049d08-0x8049cf2-2] // byte_200A740
    ldr r0, [pc, #0x8049d0c-0x8049cf4-4] // off_8049D10
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_8049D08:    .word byte_200A740
off_8049D0C:    .word off_8049D10
off_8049D10:    .word sub_8049D3C+1
    .word sub_8049DE8+1
    .word sub_8049E04+1
    .word sub_8049E1C+1
    .word sub_8049E60+1
    .word sub_8049E9C+1
    .word sub_8049EF0+1
    .word sub_804A05C+1
    .word sub_804A084+1
    .word sub_804A0A0+1
    .word sub_804A0D8+1
.thumb
sub_8049D3C:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8049de0-0x8049d40-4] // dword_201A000
    ldr r2, [pc, #0x8049de4-0x8049d42-2] // byte_201B400
    bl sub_804BC14
    bl sub_804A434
    bl sub_804A1F0
    mov r0, #0
    bl sub_804AAB8
    strh r0, [r5,#0x12]
    bl sub_804A52C
// end of function sub_8049D3C

    bl sub_804AC00
    mov r0, #0
    ldr r1, [pc, #0x8049de0-0x8049d62-2] // dword_201A000
    bl sub_804A574
    bl sub_804A56C
    bl sub_804A7DC
    ldr r0, [r5,#0x24]
    mov r1, #0
    bl sub_804E2A4
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8049dd4-0x8049d7c-4] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    ldr r0, [pc, #0x8049ddc-0x8049d9c-4] // dword_8049ACC+204
    bl sub_8053FFC
    mov r0, #0
    strb r0, [r5,#0xa]
    strh r0, [r5,#0x14]
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    strh r0, [r5,#0xe]
    strb r0, [r5,#5]
    strb r0, [r5,#0xb]
    strb r0, [r5,#0xd]
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #1
    bne loc_8049DC2
    bl sub_802D5E8
    b loc_8049DC6
loc_8049DC2:
    bl sub_802D560
loc_8049DC6:
    str r0, [r5,#0x28]
    bl sub_804A2E8
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    pop {pc}
off_8049DD4:    .word 0x1F40
    b loc_804A1E4
    .hword 0x868
off_8049DDC:    .word dword_8049ACC+0xCC
off_8049DE0:    .word dword_201A000
off_8049DE4:    .word byte_201B400
.thumb
sub_8049DE8:
    push {lr}
    ldrb r0, [r5,#8]
    add r0, #2
    strb r0, [r5,#8]
    cmp r0, #0x15
    blt loc_8049DFC
    mov r0, #0x15
    strb r0, [r5,#8]
    mov r0, #8
    strb r0, [r5]
loc_8049DFC:
    bl sub_804A130
// end of function sub_8049DE8

    mov r0, #0
    pop {pc}
.thumb
sub_8049E04:
    push {lr}
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    mov r0, #0
    bl sub_804A918
    bl sub_804A130
// end of function sub_8049E04

    mov r0, #0
    pop {pc}
.thumb
sub_8049E1C:
    push {lr}
    mov r0, #8
    bl sub_80539A0
    beq loc_8049E56
    ldr r0, [r5,#0x28]
    bl sub_804A314
    bne loc_8049E56
    ldrb r0, [r5,#8]
    sub r0, #2
    strb r0, [r5,#8]
    cmp r0, #0
    bgt loc_8049E56
    mov r0, #0
    strb r0, [r5,#8]
    ldrb r0, [r5,#0xa]
    add r0, #1
    strb r0, [r5,#0xa]
    cmp r0, #0x10
    blt loc_8049E56
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
loc_8049E56:
    bl sub_804A130
// end of function sub_8049E1C

    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_8049E60:
    push {lr}
    bl sub_804A130
// end of function sub_8049E60

    bl sub_8005B5C
    beq loc_8049E98
    ldr r1, [r5,#0x28]
    add r0, r1, #0
    bl sub_804A314
    bne loc_8049E98
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #1
    bne loc_8049E86
    add r0, r1, #0
    bl sub_802D5A8
    b loc_8049E8C
loc_8049E86:
    add r0, r1, #0
    bl sub_802D520
loc_8049E8C:
    bl sub_80A6D9E
    bl sub_802DE3C
    mov r0, #1
    pop {pc}
loc_8049E98:
    mov r0, #0
    pop {pc}
.thumb
sub_8049E9C:
    push {lr}
    bl sub_804A130
// end of function sub_8049E9C

    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8049EB6
    mov r0, #0x68 
    bl f500_8000558
    b loc_8049ED4
loc_8049EB6:
    mov r0, #0x20 
    bl sub_80539A0
    beq loc_8049EEC
    bl sub_80539B0
    cmp r0, #0
    beq loc_8049ED4
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl sub_804E2A4
    mov r0, #8
    strb r0, [r5]
    b loc_8049EEC
loc_8049ED4:
    mov r0, #0x40 
    bl sub_8053980
    ldr r0, [r5,#0x24]
    mov r1, #3
    bl sub_804E2A4
    mov r0, #0
    bl sub_80540EC
    mov r0, #0xc
    strb r0, [r5]
loc_8049EEC:
    mov r0, #0
    pop {pc}
.thumb
sub_8049EF0:
    push {lr}
    bl sub_804A130
// end of function sub_8049EF0

    mov r0, #0x20 
    bl sub_80539A0
    beq loc_8049F10
    ldr r0, [pc, #0x804a058-0x8049efe-2] // =0xFF
    bl sub_80539A0
    beq loc_8049F10
    mov r0, #1
    strb r0, [r5,#7]
    mov r0, #0x68 
    bl f500_8000558
loc_8049F10:
    mov r0, #8
    bl sub_80539A0
    bne loc_8049F1A
    b loc_804A052
loc_8049F1A:
    bl sub_80539B0
    cmp r0, #0
    beq loc_8049F3C
    ldrb r0, [r5,#7]
    tst r0, r0
    bne loc_8049F2E
    mov r0, #0x67 
    bl f500_8000558
loc_8049F2E:
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl sub_804E2A4
    mov r0, #8
    strb r0, [r5]
    b loc_804A052
loc_8049F3C:
    ldr r1, [r5,#0x1c]
    ldr r1, [r1]
    ldr r2, [r5,#0x20]
    ldrh r2, [r2,#6]
    cmp r1, #1
    beq loc_8049F4C
    mov r1, #0x64 
    mul r2, r1
loc_8049F4C:
    ldr r0, [r5,#0x28]
    bl sub_804A314
    bne loc_8049F58
    sub r0, r0, r2
    bge loc_8049F5C
loc_8049F58:
    mov r1, #8
    b loc_804A042
loc_8049F5C:
    ldr r7, [r5,#0x20]
    ldrb r2, [r7]
    cmp r2, #2
    bne loc_8049FAE
    mov r8, r0
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    bl sub_804A334
    bne loc_8049F2E
    mov r2, #1
    bl dword_801907C+2
    mov r1, #9
    cmp r0, #0
    bne loc_804A042
    mov r1, #7
    mov r0, #0x67 
    bl f500_8000558
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #2
    beq loc_8049F98
    mov r0, r8
    str r0, [r5,#0x28]
    bl sub_804A2E8
    b loc_804A008
loc_8049F98:
    mov r0, r8
    str r0, [r5,#0x2c]
    bl sub_804A2E8
    mov r1, #6
    mov r0, #0x28 
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    bl sub_804E2A4
    b loc_804A052
loc_8049FAE:
    cmp r2, #1
    bne loc_8049FDC
    mov r8, r0
    ldrh r0, [r7,#2]
    mov r1, #0xff
    bl sub_804A334
    bne loc_8049F2E
    mov r1, #1
    bl sub_802D37C
    mov r1, #9
    cmp r0, #0
    bne loc_804A042
    mov r1, #6
    mov r0, #0x67 
    bl f500_8000558
    mov r0, r8
    str r0, [r5,#0x28]
    bl sub_804A2E8
    b loc_804A008
loc_8049FDC:
    mov r8, r0
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    bl sub_804A334
    bne loc_8049F2E
    add r0, #0xc0
    mov r2, #1
    bl sub_802D5FC
    mov r1, #9
    cmp r0, #0
    bne loc_804A042
    mov r1, #0xc
    mov r0, #0x67 
    bl f500_8000558
    mov r0, r8
    str r0, [r5,#0x28]
    bl sub_804A2E8
    b loc_804A008
loc_804A008:
    push {r1}
    ldr r7, [r5,#0x20]
    ldrb r0, [r5,#4]
    ldrb r1, [r7]
    ldrh r2, [r7,#2]
    ldrb r3, [r7,#4]
    ldr r4, [r5,#0x1c]
    ldr r4, [r4]
    bl sub_804BB48
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    bl sub_804AAB8
    strh r0, [r5,#0x12]
    bl sub_804ABC8
    pop {r1}
    mov r0, #0x1c
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    bl sub_804E2A4
    mov r7, #0xff
    strb r7, [r5,#0xd]
    mov r0, #0x73 
    bl f500_8000558
    b loc_804A052
loc_804A042:
    ldr r0, [r5,#0x24]
    bl sub_804E2A4
    mov r0, #0x69 
    bl f500_8000558
    mov r0, #0x1c
    strb r0, [r5]
loc_804A052:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804A058:    .word 0x100
.thumb
sub_804A05C:
    push {lr}
    bl sub_804A130
// end of function sub_804A05C

    mov r0, #8
    bl sub_80539A0
    beq loc_804A080
    mov r1, #1
    mov r2, #8
    ldrh r0, [r5,#0x12]
    tst r0, r0
    bne loc_804A078
    mov r1, #0xa
    mov r2, #0x20 
loc_804A078:
    strb r2, [r5]
    ldr r0, [r5,#0x24]
    bl sub_804E2A4
loc_804A080:
    mov r0, #0
    pop {pc}
.thumb
sub_804A084:
    push {lr}
    bl sub_804A130
// end of function sub_804A084

    mov r0, #8
    bl sub_80539A0
    beq loc_804A09C
    mov r0, #0
    bl sub_80540EC
    mov r0, #0xc
    strb r0, [r5]
loc_804A09C:
    mov r0, #0
    pop {pc}
.thumb
sub_804A0A0:
    push {lr}
    bl sub_804A130
// end of function sub_804A0A0

    mov r0, #8
    bl sub_80539A0
    beq loc_804A0CE
    mov r3, r10
    ldr r3, [r3,#0x2c]
    ldr r3, [r3,#0x4c]
    ldr r2, [pc, #0x804a0d4-0x804a0b4-4] // =0x1CC0
    add r2, r2, r3
    add r0, r2, #0
    bl sub_8024FA0
    mov r7, #0xff
    strb r7, [r5,#0xd]
    ldrb r0, [r5,#1]
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    ldrb r1, [r5,#6]
    bl sub_804E2A4
loc_804A0CE:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804A0D4:    .word 0x1CC0
.thumb
sub_804A0D8:
    push {lr}
    bl sub_804A130
// end of function sub_804A0D8

    mov r0, #8
    bl sub_80539A0
    beq loc_804A12A
    ldr r0, [r5,#0x2c]
    bl sub_804A314
    bne loc_804A12A
    str r0, [r5,#0x28]
    bl sub_804A2E8
    ldr r7, [r5,#0x20]
    ldrb r0, [r5,#4]
    ldrb r1, [r7]
    ldrh r2, [r7,#2]
    ldrb r3, [r7,#4]
    ldr r4, [r5,#0x1c]
    ldr r4, [r4]
    bl sub_804BB48
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    bl sub_804AAB8
    strh r0, [r5,#0x12]
    bl sub_804ABC8
    mov r0, #0x1c
    strb r0, [r5]
    mov r1, #7
    ldr r0, [r5,#0x24]
    bl sub_804E2A4
    mov r7, #0xff
    strb r7, [r5,#0xd]
    mov r0, #0x73 
    bl f500_8000558
loc_804A12A:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_804A130:
    push {r5,lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_8001DF8
// end of function sub_804A130

    pop {r5}
    bl sub_8054018
    bl sub_8054054
    bl sub_804A398
    bne loc_804A16C
    ldrh r0, [r5,#0xe]
    tst r0, r0
    bne loc_804A16C
    ldrb r3, [r5,#0xd]
    cmp r3, #0
    beq loc_804A180
    mov r3, #0
    strb r3, [r5,#0xd]
    mov r0, #0
    bl sub_804AAB8
    strh r0, [r5,#0x12]
loc_804A16C:
    bl sub_804ABC8
    bl sub_804AC00
    ldrh r0, [r5,#0x18]
    ldr r1, [pc, #0x804a1ec-0x804a176-2] // dword_201A000
    bl sub_804A574
    bl sub_804A810
loc_804A180:
    bl sub_804A56C
    bl sub_804A7DC
    mov r7, r10
    ldr r7, [r7,#8]
    ldrh r6, [r7,#0x10]
    sub r6, #1
    strh r6, [r7,#0x10]
    ldrh r6, [r7,#0x12]
    sub r6, #1
    strh r6, [r7,#0x12]
    ldrb r0, [r5]
    cmp r0, #4
    beq locret_804A1E8
    cmp r0, #0xc
    beq locret_804A1E8
    cmp r0, #0x10
    beq locret_804A1E8
    mov r0, #0
    ldrh r1, [r5,#0x14]
    lsl r1, r1, #4
    add r1, #8
    ldrb r2, [r5,#0xb]
    mov r3, #0
    bl loc_80383F4
    ldrb r0, [r5]
    cmp r0, #8
    bne loc_804A1BE
    strb r2, [r5,#0xb]
loc_804A1BE:
    ldrh r0, [r5,#0x12]
    cmp r0, #5
    blt locret_804A1E8
    ldrh r0, [r5,#0x18]
    tst r0, r0
    beq loc_804A1D4
    mov r0, #0x50 
    mov r1, #3
    mov r2, #0
    bl sub_804A230
loc_804A1D4:
    ldrh r0, [r5,#0x12]
    ldrh r1, [r5,#0x18]
    sub r0, r0, r1
    cmp r0, #5
    ble locret_804A1E8
    mov r0, #0x50 
    mov r1, #0x55 
    mov r2, #1
loc_804A1E4:
    bl sub_804A230
locret_804A1E8:
    pop {r5,pc}
    .balign 4, 0x00
off_804A1EC:    .word dword_201A000
.thumb
sub_804A1F0:
    push {lr}
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#4]
    ldr r1, [pc, #0x804a220-0x804a1f6-2] // unk_2026000
    bl sub_8111700
    ldr r7, [pc, #0x804a224-0x804a1fc-4] // unk_86E4BEC
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_804A214
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_804A214
    ldr r7, [pc, #0x804a228-0x804a212-2] // dword_86E5B94
loc_804A214:
    add r0, r7, #0
    ldr r1, [pc, #0x804a22c-0x804a216-2] // unk_2029000
    bl sub_8111700
    pop {pc}
    .byte 0, 0
off_804A220:    .word unk_2026000
off_804A224:    .word unk_86E4BEC
off_804A228:    .word dword_86E5B94
off_804A22C:    .word unk_2029000
// end of function sub_804A1F0

.thumb
sub_804A230:
    push {r4-r7,lr}
    ldr r3, [pc, #0x804a264-0x804a232-2] // loc_804A268
    lsl r4, r2, #1
    lsl r0, r0, #0x10
    orr r0, r1
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    ldrh r1, [r3,r6]
    add r1, r1, r4
    ldr r2, [pc, #0x804a260-0x804a24a-2] // =0x0
    orr r0, r2
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_804A230

    pop {r4-r7,pc}
    .byte 0, 0
dword_804A260:    .word 0x0
off_804A264:    .word loc_804A268
loc_804A268:
    b loc_804A28A
    b loc_804A28C
    b loc_804A28E
    b loc_804A290
    b loc_804A292
    b loc_804A294
    b loc_804A296
    b loc_804A298
    b loc_804A29A
    b loc_804A29C
    b loc_804A29E
    b loc_804A2A0
    b loc_804A2A2
    b loc_804A2A4
    b loc_804A2A6
    b loc_804A2A8
    b loc_804A2AA
loc_804A28A:
    b loc_804A2AC
loc_804A28C:
    b loc_804A2AE
loc_804A28E:
    b loc_804A2B0
loc_804A290:
    b loc_804A2B0
loc_804A292:
    b loc_804A2B2
loc_804A294:
    b loc_804A2B4
loc_804A296:
    b loc_804A2B6
loc_804A298:
    b loc_804A2B8
loc_804A29A:
    b loc_804A2BA
loc_804A29C:
    b loc_804A2BC
loc_804A29E:
    b loc_804A2BE
loc_804A2A0:
    b loc_804A2C0
loc_804A2A2:
    b loc_804A2C2
loc_804A2A4:
    b loc_804A2C4
loc_804A2A6:
    b loc_804A2C6
loc_804A2A8:
    b loc_804A2CE
loc_804A2AA:
    b loc_804A2D0
loc_804A2AC:
    b loc_804A2D2
loc_804A2AE:
    b loc_804A2D4
loc_804A2B0:
    b loc_804A2D6
loc_804A2B2:
    b loc_804A2D8
loc_804A2B4:
    b loc_804A2DA
loc_804A2B6:
    b loc_804A2DC
loc_804A2B8:
    b loc_804A2DE
loc_804A2BA:
    b loc_804A2E0
loc_804A2BC:
    b loc_804A2E2
loc_804A2BE:
    b loc_804A2E4
loc_804A2C0:
    b loc_804A2E6
loc_804A2C2:
    b sub_804A2E8
loc_804A2C4:
    b loc_804A2EA
loc_804A2C6:
    b loc_804A2EC
    b loc_804A2EC+2
    b loc_804A2F0
    b loc_804A2F2
loc_804A2CE:
    b loc_804A2F4
loc_804A2D0:
    b loc_804A2F4
loc_804A2D2:
    b loc_804A2F6
loc_804A2D4:
    b loc_804A2F8
loc_804A2D6:
    b loc_804A2FA
loc_804A2D8:
    b loc_804A2FC
loc_804A2DA:
    b loc_804A2FE
loc_804A2DC:
    b loc_804A300
loc_804A2DE:
    b loc_804A302
loc_804A2E0:
    b loc_804A304
loc_804A2E2:
    b loc_804A306
loc_804A2E4:
    b loc_804A308
loc_804A2E6:
    b loc_804A30A
.thumb
sub_804A2E8:
    push {r0-r4,lr}
loc_804A2EA:
    add r4, r0, #0
loc_804A2EC:
    bl sub_8001AF6
loc_804A2F0:
    mov r2, #0xff
loc_804A2F2:
    and r2, r0
loc_804A2F4:
    tst r2, r2
loc_804A2F6:
    beq loc_804A2EC
loc_804A2F8:
    add r1, r4, #0
loc_804A2FA:
    add r1, r1, r2
loc_804A2FC:
    lsl r1, r1, #8
loc_804A2FE:
    lsr r3, r2, #4
loc_804A300:
    mov r0, #0xf
loc_804A302:
    and r2, r0
loc_804A304:
    eor r2, r3
loc_804A306:
    lsl r3, r3, #0x1c
loc_804A308:
    orr r1, r3
loc_804A30A:
    orr r1, r2
    mvn r1, r1
    str r1, [r5,#0x30]
    pop {r0-r4,pc}
    .balign 4, 0x00
// end of function sub_804A2E8

.thumb
sub_804A314:
    push {r0-r2,r4,lr}
    add r4, r0, #0
    ldr r0, [r5,#0x30]
    mvn r0, r0
    lsl r1, r0, #4
    lsr r1, r1, #0xc
    mov r2, #0xf
    and r2, r0
    lsr r0, r0, #0x1c
    eor r2, r0
    lsl r0, r0, #4
    orr r0, r2
    sub r1, r1, r0
    cmp r1, r4
    pop {r0-r2,r4,pc}
    .balign 4, 0x00
// end of function sub_804A314

.thumb
sub_804A334:
    push {r0,r1,r4-r7,lr}
    mov r2, r8
    mov r3, r9
    push {r2,r3}
    mov r8, r0
    mov r9, r1
    ldr r7, [r5,#0x1c]
    ldr r2, [r7]
    cmp r2, #2
    beq loc_804A380
    mov r3, #0
    ldr r4, [r7,#0xc]
    ldr r7, [r5,#0x1c]
    ldr r7, [r7,#8]
    ldr r2, [pc, #0x804a430-0x804a350-4] // dword_804AC9C
    add r7, r7, r2
    mov r0, r8
    ldrh r1, [r7,#2]
    bl sub_804A3F0
    bne loc_804A368
    mov r0, r9
    ldrb r1, [r7,#4]
    bl sub_804A40C
    beq loc_804A38A
loc_804A368:
    ldr r0, [pc, #0x804a428-0x804a368-4] // dword_201A000
    mov r1, #0x40 
    add r1, #0x40 
    bl f900_8000930
    ldr r0, [pc, #0x804a42c-0x804a372-2] // byte_200A740
    mov r1, #0
    strh r1, [r0,#(word_200A752 - 0x200a740)]
    mov r0, #1
    strh r0, [r5,#0xe]
    mov r0, #1
    b loc_804A38C
loc_804A380:
    mov r0, r8
    mov r1, r9
    bl sub_8006442
    bne loc_804A368
loc_804A38A:
    mov r0, #0
loc_804A38C:
    tst r0, r0
    pop {r2,r3}
    mov r8, r2
    mov r9, r3
    pop {r0,r1,r4-r7,pc}
    .balign 4, 0x00
// end of function sub_804A334

.thumb
sub_804A398:
    push {r4-r7,lr}
    ldr r7, [r5,#0x1c]
    ldr r0, [r7]
    cmp r0, #2
    beq loc_804A3E8
    mov r3, #0
    ldr r4, [r7,#0xc]
    ldr r6, [pc, #0x804a428-0x804a3a6-2] // dword_201A000
loc_804A3A8:
    ldrb r0, [r6]
    tst r0, r0
    beq loc_804A3CA
    ldr r7, [r5,#0x1c]
    ldr r7, [r7,#8]
    ldr r0, [pc, #0x804a430-0x804a3b2-2] // dword_804AC9C
    add r7, r7, r0
    ldrh r0, [r6,#2]
    ldrh r1, [r7,#2]
    bl sub_804A3F0
    bne loc_804A3D4
    ldrb r0, [r6,#4]
    ldrb r1, [r7,#4]
    bl sub_804A40C
    bne loc_804A3D4
loc_804A3CA:
    add r6, #8
    add r3, #1
    cmp r3, r4
    blt loc_804A3A8
    b loc_804A3E8
loc_804A3D4:
    ldr r0, [pc, #0x804a428-0x804a3d4-4] // dword_201A000
    mov r1, #0x40 
    add r1, #0x40 
    bl f900_8000930
    ldr r0, [pc, #0x804a42c-0x804a3de-2] // byte_200A740
    mov r1, #0
    strh r1, [r0,#(word_200A752 - 0x200a740)]
    mov r0, #1
    b loc_804A3EA
loc_804A3E8:
    mov r0, #0
loc_804A3EA:
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_804A398

.thumb
sub_804A3F0:
    push {r3-r7,lr}
    mov r6, #0
    mov r3, #0
loc_804A3F6:
    ldrh r1, [r7,#2]
    cmp r0, r1
    beq loc_804A406
    add r7, #8
    add r3, #1
    cmp r3, r4
    blt loc_804A3F6
    mov r6, #1
loc_804A406:
    tst r6, r6
    pop {r3-r7,pc}
    .balign 4, 0x00
// end of function sub_804A3F0

.thumb
sub_804A40C:
    push {r3-r7,lr}
    mov r6, #0
    mov r3, #0
loc_804A412:
    ldrb r1, [r7,#4]
    cmp r0, r1
    beq loc_804A422
    add r7, #8
    add r3, #1
    cmp r3, r4
    blt loc_804A412
    mov r6, #1
loc_804A422:
    tst r6, r6
    pop {r3-r7,pc}
    .balign 4, 0x00
off_804A428:    .word dword_201A000
off_804A42C:    .word byte_200A740
off_804A430:    .word dword_804AC9C
// end of function sub_804A40C

.thumb
sub_804A434:
    push {r5,lr}
    ldr r0, [pc, #0x804a4bc-0x804a436-2] // =0x20
    ldr r1, [pc, #0x804a4c0-0x804a438-4] // =0x7FE0
    bl sub_8031640
    bl sub_8001D04
    bl sub_8001D38
    ldr r0, [pc, #0x804a4c4-0x804a446-2] // dword_86FF8FC+240
    ldr r1, [pc, #0x804a4c8-0x804a448-4] // unk_3002AD0
    mov r2, #0x60 
    bl f900_800098C
    ldr r0, [pc, #0x804a4cc-0x804a450-4] // dword_86FF0DC+688
    ldr r1, [pc, #0x804a4d0-0x804a452-2] // =0x6000020
    ldr r2, [pc, #0x804a4d4-0x804a454-4] // =0x660
    bl f900_80009A0
    ldr r0, [pc, #0x804a4d8-0x804a45a-2] // dword_868DD04+32
    ldr r1, [pc, #0x804a4dc-0x804a45c-4] // =0x6010040
    ldr r2, [pc, #0x804a4e0-0x804a45e-2] // =0x180
    bl f900_800098C
    ldr r0, [pc, #0x804a4e4-0x804a464-4] // dword_868E124
    ldr r1, [pc, #0x804a4e8-0x804a466-2] // =0x60101C0
    ldr r2, [pc, #0x804a4ec-0x804a468-4] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x804a4f0-0x804a46e-2] // dword_869F784
    ldr r1, [pc, #0x804a4f4-0x804a470-4] // unk_3002B30
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804a4f8-0x804a478-4] // dword_869F7C4+64
    ldr r1, [pc, #0x804a4fc-0x804a47a-2] // unk_3002B70
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804a500-0x804a482-2] // dword_868E1A4
    ldr r1, [pc, #0x804a504-0x804a484-4] // unk_3002B50
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804a51c-0x804a48c-4] // dword_86CDF40
    ldr r1, [pc, #0x804a520-0x804a48e-2] // unk_3002B90
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804a524-0x804a496-2] // dword_86CDF60
    ldr r1, [pc, #0x804a528-0x804a498-4] // unk_3002BB0
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x804a508-0x804a4a0-4] // dword_869F784
    ldr r1, [pc, #0x804a50c-0x804a4a2-2] // unk_30027A0
    ldr r2, [pc, #0x804a510-0x804a4a4-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x804a514-0x804a4aa-2] // dword_86EE2B8
    ldr r1, [pc, #0x804a518-0x804a4ac-4] // dword_202E000
    bl sub_8111700
    bl sub_8001D88
    bl sub_80540BA
    pop {r5,pc}
dword_804A4BC:    .word 0x20
dword_804A4C0:    .word 0x7FE0
off_804A4C4:    .word dword_86FF8FC+0xF0
off_804A4C8:    .word unk_3002AD0
off_804A4CC:    .word dword_86FF0DC+0x2B0
dword_804A4D0:    .word 0x6000020
off_804A4D4:    .word 0x660
off_804A4D8:    .word dword_868DD04+0x20
dword_804A4DC:    .word 0x6010040
off_804A4E0:    .word 0x180
off_804A4E4:    .word dword_868E124
dword_804A4E8:    .word 0x60101C0
off_804A4EC:    .word 0x80
off_804A4F0:    .word dword_869F784
off_804A4F4:    .word unk_3002B30
off_804A4F8:    .word dword_869F7C4+0x40
off_804A4FC:    .word unk_3002B70
off_804A500:    .word dword_868E1A4
off_804A504:    .word unk_3002B50
off_804A508:    .word dword_869F784
off_804A50C:    .word unk_30027A0
dword_804A510:    .word 0x20
off_804A514:    .word dword_86EE2B8
off_804A518:    .word dword_202E000
off_804A51C:    .word dword_86CDF40
off_804A520:    .word unk_3002B90
off_804A524:    .word dword_86CDF60
off_804A528:    .word unk_3002BB0
// end of function sub_804A434

.thumb
sub_804A52C:
    push {r5,lr}
    ldr r0, [pc, #0x804a558-0x804a52e-2] // dword_86FDBB8+628
    mov r1, r10
    ldr r1, [r1,#0x28]
    mov r2, #0x80
    lsl r2, r2, #4
    add r1, r1, r2
    ldr r2, [pc, #0x804a55c-0x804a53a-2] // =0x800
    bl f900_80009A0
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, [pc, #0x804a560-0x804a544-4] // unk_2016400
    ldr r3, [pc, #0x804a564-0x804a546-2] // =0x6002400
    mov r4, #1
    mov r5, #1
    ldr r6, [pc, #0x804a568-0x804a54c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
    .balign 4, 0x00
off_804A558:    .word dword_86FDBB8+0x274
off_804A55C:    .word 0x800
off_804A560:    .word unk_2016400
dword_804A564:    .word 0x6002400
off_804A568:    .word dword_86C6E60
// end of function sub_804A52C

.thumb
sub_804A56C:
    push {r5,lr}
    bl sub_804A89C
// end of function sub_804A56C

    pop {r5,pc}
.thumb
sub_804A574:
    push {r5,r6,lr}
    add r7, r1, #0
    mov r1, #8
    mul r1, r0
    add r7, r7, r1
    mov r0, #0
loc_804A580:
    ldrb r3, [r7]
    cmp r3, #1
    bne loc_804A59A
    ldrh r1, [r7,#2]
    bl sub_804A5EC
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_804A76C
    b loc_804A5E2
loc_804A59A:
    cmp r3, #2
    bne loc_804A5BE
    ldrh r1, [r7,#2]
    ldrb r2, [r7,#4]
    ldrb r3, [r7,#1]
    ldrb r4, [r7,#5]
    mov r6, #0
    bl sub_804AC10
    bl sub_804A640
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_804A76C
    b loc_804A5E2
loc_804A5BE:
    cmp r3, #3
    bne loc_804A5DE
    ldrh r1, [r7,#2]
    ldrb r2, [r7,#4]
    mov r6, #1
    bl sub_804AC10
    bl sub_804A6E4
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_804A76C
    b loc_804A5E2
loc_804A5DE:
    bl sub_804A73C
loc_804A5E2:
    add r7, #8
    add r0, #1
    cmp r0, #5
    blt loc_804A580
    pop {r5,r6,pc}
// end of function sub_804A574

.thumb
sub_804A5EC:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r4,r5}
    ldr r0, [pc, #0x804a628-0x804a5f6-2] // dword_87548F4
    ldr r2, [pc, #0x804a62c-0x804a5f8-4] // word_2014000
    ldr r3, [pc, #0x804a630-0x804a5fa-2] // =0x6008400
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x804a63c-0x804a604-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x30 
    .byte 0xBC
    .byte 0x68 
    .byte 0x6A 
    .byte 0x10
    .byte 0x21 
    .byte 8
    .byte 0x4A 
    .byte 8
    .byte 0x4B 
    .byte 0x12
    .byte 0x19
    .byte 0x1B
    .byte 0x19
    .byte 1
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 7
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 9
    .byte 0xF0
    .byte 0xEF
    .byte 0xF9
    .byte 0xA1
    .byte 0xBD
off_804A628:    .word dword_87548F4
off_804A62C:    .word word_2014000
dword_804A630:    .word 0x6008400
    .word unk_2014200
    .word 0x6008600
off_804A63C:    .word dword_86C6E60
// end of function sub_804A5EC

.thumb
sub_804A640:
    push {r0,r5,r7,lr}
    lsl r7, r4, #3
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r1-r4,r7}
    ldr r0, [pc, #0x804a6bc-0x804a64c-4] // dword_804A6C0
    ldr r2, [pc, #0x804a6c8-0x804a64e-2] // word_2014000
    ldr r3, [pc, #0x804a6cc-0x804a650-4] // =0x6008400
    add r2, r2, r4
    add r3, r3, r4
    lsr r4, r1, #8
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x804a6dc-0x804a664-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x9E
    .byte 0xBC
    .byte 0x1B
    .byte 0x42 
    .byte 1
    .byte 0xD1
    .byte 0x1B
    .byte 0x23 
    .byte 0x15
    .byte 0xE0
    .byte 0x13
    .byte 0x1C
    .byte 0xEE
    .byte 0x69 
    .byte 0x36 
    .byte 0x68 
    .byte 2
    .byte 0x2E 
    .byte 0x10
    .byte 0xD1
    .byte 0xE
    .byte 0xB4
    .byte 0x17
    .byte 0x4A 
    .byte 0x89
    .byte 0x18
    .byte 8
    .byte 0x1C
    .byte 0xDA
    .byte 0xF7
    .byte 0xB4
    .byte 0xFC
    .byte 0xE
    .byte 0xBC
    .byte 8
    .byte 0xD1
    .byte 0xE
    .byte 0xB4
    .byte 0x51 
    .byte 0x4A 
    .byte 0x89
    .byte 0x18
    .byte 8
    .byte 0x1C
    .byte 0xDA
    .byte 0xF7
    .byte 0xAC
    .byte 0xFC
    .byte 0xE
    .byte 0xBC
    .byte 0
    .byte 0xD1
    .byte 0x1B
    .byte 0x23 
    .byte 0xB
    .byte 0x48 
    .byte 0x19
    .byte 0x1C
    .byte 0xB
    .byte 0x4A 
    .byte 0xB
    .byte 0x4B 
    .byte 0x12
    .byte 0x19
    .byte 0x1B
    .byte 0x19
    .byte 1
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0xA
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 9
    .byte 0xF0
    .byte 0xA5
    .byte 0xF9
    .byte 0xA1
    .byte 0xBD
off_804A6BC:    .word dword_804A6C0
dword_804A6C0:    .word 0x8745E98, 0x8746830
off_804A6C8:    .word word_2014000
dword_804A6CC:    .word 0x6008400
    .word a8Bdfhjlnprtvxz
    .word unk_2014200
    .word 0x6008600
off_804A6DC:    .word dword_86C6E60
    .word 0x16C0
// end of function sub_804A640

.thumb
sub_804A6E4:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r4,r5}
    ldr r0, [pc, #0x804a724-0x804a6ee-2] // byte_86E66B8
    lsr r1, r1, #2
    ldr r2, [pc, #0x804a728-0x804a6f2-2] // word_2014000
    ldr r3, [pc, #0x804a72c-0x804a6f4-4] // =0x6008400
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x804a738-0x804a6fe-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x30 
    .byte 0xBC
    .byte 0x68 
    .byte 0x6A 
    .byte 0x10
    .byte 0x21 
    .byte 8
    .byte 0x4A 
    .byte 9
    .byte 0x4B 
    .byte 0x12
    .byte 0x19
    .byte 0x1B
    .byte 0x19
    .byte 1
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 7
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 9
    .byte 0xF0
    .byte 0x72 
    .byte 0xF9
    .byte 0xA1
    .byte 0xBD
    .balign 4, 0x00
off_804A724:    .word byte_86E66B8
off_804A728:    .word word_2014000
dword_804A72C:    .word 0x6008400
    .word unk_2014200
    .word 0x6008600
off_804A738:    .word dword_86C6E60
// end of function sub_804A6E4

.thumb
sub_804A73C:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, [pc, #0x804a760-0x804a748-4] // word_2014000
    ldr r3, [pc, #0x804a764-0x804a74a-2] // =0x6008400
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #0x10
    mov r5, #1
    ldr r6, [pc, #0x804a768-0x804a754-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xA1
    .byte 0xBD
    .byte 0, 0
off_804A760:    .word word_2014000
dword_804A764:    .word 0x6008400
off_804A768:    .word dword_86C6E60
// end of function sub_804A73C

.thumb
sub_804A76C:
    push {r0,r5,r7,lr}
    lsl r7, r4, #3
    push {r2}
    bl sub_804ABF0
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    mov r0, r10
    ldr r0, [r0,#0x38]
    str r1, [r0,#4]
    ldr r0, [r5,#0x24]
    mov r1, #0xf
    ldr r6, [r5,#0x1c]
    ldr r6, [r6]
    cmp r6, #1
    bne loc_804A790
    mov r1, #0xd
loc_804A790:
    cmp r6, #2
    bne loc_804A7AE
    tst r7, r7
    beq loc_804A7AE
    push {r0,r1}
    ldr r2, [pc, #0x804a7d8-0x804a79a-2] // =0x1CC0
    add r3, r3, r2
    add r0, r3, #0
    bl sub_8024FF4
    pop {r0,r1}
    bne loc_804A7AE
    mov r1, #0x10
    pop {r2}
    b loc_804A7B6
loc_804A7AE:
    pop {r2}
    tst r2, r2
    bne loc_804A7B6
    mov r1, #0x11
loc_804A7B6:
    ldr r2, [pc, #0x804a7d0-0x804a7b6-2] // unk_2014240
    ldr r3, [pc, #0x804a7d4-0x804a7b8-4] // =0x6008640
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x804a7cc-0x804a7c2-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xA1
    .byte 0xBD
off_804A7CC:    .word dword_86C6E60
off_804A7D0:    .word unk_2014240
dword_804A7D4:    .word 0x6008640
off_804A7D8:    .word 0x1CC0
// end of function sub_804A76C

.thumb
sub_804A7DC:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrb r0, [r7,#8]
    sub r0, #0x15
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x804a808-0x804a7e8-4] // byte_86FE62C
    mov r4, #0x15
    mov r5, #0xc
    bl sub_8001DDC
// end of function sub_804A7DC

    ldrb r0, [r7,#8]
    sub r0, #0x15
    add r0, #2
    mov r1, #1
    mov r2, #0
    ldr r3, [pc, #0x804a80c-0x804a7fc-4] // unk_202DE00
    mov r4, #0x12
    mov r5, #0xa
    bl sub_8001DDC
    pop {r4-r7,pc}
off_804A808:    .word byte_86FE62C
off_804A80C:    .word unk_202DE00
.thumb
sub_804A810:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq locret_804A88A
    ldr r7, [pc, #0x804a894-0x804a818-4] // dword_201A000
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrb r3, [r7]
    cmp r3, #2
    bne loc_804A84E
    mov r0, #1
    bl sub_80540EC
    mov r0, #2
    bl sub_80540EC
    mov r0, #3
    bl sub_80540EC
    ldr r0, [pc, #0x804a898-0x804a83e-2] // dword_8049ACC+188
    bl sub_8053FFC
    ldr r0, [pc, #0x804a88c-0x804a844-4] // unk_2029000
    mov r1, #0xaf
    bl sub_804E2A4
    b locret_804A88A
loc_804A84E:
    cmp r3, #1
    bne loc_804A86E
    ldr r0, [pc, #0x804a88c-0x804a852-2] // unk_2029000
    ldrh r1, [r7,#2]
    bl sub_804E2A4
    mov r0, #1
    bl sub_80540EC
    mov r0, #2
    bl sub_80540EC
    mov r0, #3
    bl sub_80540EC
    b locret_804A88A
loc_804A86E:
    ldr r0, [pc, #0x804a890-0x804a86e-2] // loc_86E6888
    ldrh r1, [r7,#2]
    lsr r1, r1, #2
    bl sub_804E2A4
    mov r0, #1
    bl sub_80540EC
    mov r0, #2
    bl sub_80540EC
    mov r0, #3
    bl sub_80540EC
locret_804A88A:
    pop {pc}
off_804A88C:    .word unk_2029000
off_804A890:    .word loc_86E6888
off_804A894:    .word dword_201A000
off_804A898:    .word dword_8049ACC+0xBC
// end of function sub_804A810

.thumb
sub_804A89C:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrb r0, [r7,#8]
    sub r0, #0xc
    mov r1, #0x1e
    sub r0, r1, r0
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x804a900-0x804a8ac-4] // byte_86FE880
    ldr r4, [r7,#0x1c]
    ldr r4, [r4]
    cmp r4, #1
    beq loc_804A8B8
    ldr r3, [pc, #0x804a904-0x804a8b6-2] // byte_86FE824
loc_804A8B8:
    mov r4, #9
    mov r5, #5
    bl sub_8001DDC
// end of function sub_804A89C

    ldrb r0, [r7,#8]
    sub r0, #0xd
    mov r1, #0x1e
    sub r0, r1, r0
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x804a914-0x804a8cc-4] // dword_8049ACC+160
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
    mov r1, #0xe
    ldr r2, [r7,#0x1c]
    ldr r2, [r2]
    cmp r2, #1
    bne loc_804A8E2
    mov r1, #0xd
loc_804A8E2:
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldr r0, [r7,#0x28]
    str r0, [r2,#4]
    ldr r0, [r7,#0x24]
    ldr r2, [pc, #0x804a908-0x804a8ec-4] // unk_2016000
    ldr r3, [pc, #0x804a90c-0x804a8ee-2] // =0x6002000
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x804a910-0x804a8f4-4] // dword_868E224
    mov r7, #4
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBD
    .byte 0, 0
off_804A900:    .word byte_86FE880
off_804A904:    .word byte_86FE824
off_804A908:    .word unk_2016000
dword_804A90C:    .word 0x6002000
off_804A910:    .word dword_868E224
off_804A914:    .word dword_8049ACC+0xA0
.thumb
sub_804A918:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_804A934
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_804A948
    bl sub_804A9B4
    b locret_804A9B0
loc_804A934:
    ldrh r1, [r5,#0x12]
    cmp r1, #0
    beq locret_804A9B0
    ldr r2, [r5,#0x1c]
    ldr r2, [r2]
    cmp r2, #2
    beq loc_804A97A
    ldr r1, [pc, #0x804ac90-0x804a942-2] // =0xFF
    tst r1, r0
    beq loc_804A97A
loc_804A948:
    mov r0, #0x66 
    bl f500_8000558
    ldrb r0, [r5,#5]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#5]
    tst r0, r0
    bne loc_804A974
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl sub_804E2A4
    mov r0, #1
    bl sub_80540EC
    mov r0, #2
    bl sub_80540EC
    mov r0, #3
    bl sub_80540EC
loc_804A974:
    mov r7, #0xff
    strb r7, [r5,#0xd]
    b locret_804A9B0
loc_804A97A:
    ldrh r1, [r5,#0x12]
    cmp r1, #0
    beq locret_804A9B0
    mov r1, #1
    tst r1, r0
    beq loc_804A992
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_804A948
    bl sub_804A9CC
    b locret_804A9B0
loc_804A992:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x804ac94-0x804a994-4] // =0x3C0
    tst r0, r1
    beq locret_804A9B0
    ldr r2, [r5,#0x1c]
    ldr r2, [r2]
    cmp r2, #2
    beq loc_804A9A6
    ldr r1, [pc, #0x804ac98-0x804a9a2-2] // =0x300
    bic r0, r1
loc_804A9A6:
    mov r1, #5
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xd]
locret_804A9B0:
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_804A918

.thumb
sub_804A9B4:
    push {lr}
    mov r0, #0x14
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    mov r1, #2
    bl sub_804E2A4
    mov r0, #0x68 
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
// end of function sub_804A9B4

.thumb
sub_804A9CC:
    push {r4-r7,lr}
    ldr r7, [pc, #0x804aaac-0x804a9ce-2] // dword_201A000
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    str r7, [r5,#0x20]
    ldrh r4, [r7,#2]
    ldrb r2, [r7]
    cmp r2, #3
    bne loc_804A9E8
    add r4, #0xc0
loc_804A9E8:
    ldrh r1, [r7,#6]
    bl sub_804ABF0
    ldrb r2, [r7,#4]
    mov r3, r10
    ldr r3, [r3,#0x2c]
    str r4, [r3,#0x4c]
    str r2, [r3,#0x50]
    str r1, [r3,#0x54]
    ldr r2, [r5,#0x1c]
    ldr r2, [r2]
    cmp r2, #2
    beq loc_804AA28
    ldrb r0, [r7]
    ldrh r1, [r7,#2]
    bl sub_804ABB0
    bne loc_804AAA2
    mov r1, #5
    ldrb r2, [r7]
    cmp r2, #2
    beq loc_804AA1C
    mov r1, #4
    cmp r2, #1
    beq loc_804AA1C
    mov r1, #0xb
loc_804AA1C:
    add r7, r1, #0
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
    b loc_804AA92
loc_804AA28:
    ldrb r6, [r7,#1]
    mov r7, #5
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
    ldr r2, [pc, #0x804aab0-0x804aa34-4] // =0x16C0
    add r2, r2, r4
    add r0, r2, #0
    bl sub_8024FF4
    beq loc_804AA4C
loc_804AA40:
    tst r6, r6
    bne loc_804AA92
    mov r7, #0x1c
    mov r0, #0x1c
    strb r0, [r5]
    b loc_804AA92
loc_804AA4C:
    ldr r2, [pc, #0x804aab4-0x804aa4c-4] // =0x1CC0
    add r2, r2, r4
    add r0, r2, #0
    bl sub_8024FF4
    bne loc_804AA40
    mov r7, #0x18
    mov r0, #0x1b
    strb r0, [r5,#6]
    add r0, r4, #0
    bl sub_804BD94
    beq loc_804AA6C
    mov r7, #0x1a
    mov r0, #0x1b
    strb r0, [r5,#6]
loc_804AA6C:
    mov r0, #0x24 
    strb r0, [r5]
    mov r0, #0x18
    strb r0, [r5,#1]
    tst r6, r6
    bne loc_804AA92
    mov r7, #0x19
    mov r0, #0x1c
    strb r0, [r5,#6]
    mov r0, #0x1c
    strb r0, [r5,#1]
    add r0, r4, #0
    bl sub_804BD94
    beq loc_804AA92
    mov r7, #0x1a
    mov r0, #0x1d
    strb r0, [r5,#6]
    b loc_804AA92
loc_804AA92:
    ldr r0, [r5,#0x24]
    add r1, r7, #0
    bl sub_804E2A4
    mov r0, #0x67 
    bl f500_8000558
    pop {r4-r7,pc}
loc_804AAA2:
    mov r0, #0x69 
    bl f500_8000558
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804AAAC:    .word dword_201A000
off_804AAB0:    .word 0x16C0
off_804AAB4:    .word 0x1CC0
// end of function sub_804A9CC

.thumb
sub_804AAB8:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r0, [pc, #0x804aba8-0x804aabc-4] // dword_201A000
    mov r1, #0x40 
    add r1, #0x40 
    bl f900_8000930
    ldr r7, [r5,#0x1c]
    ldr r0, [r7]
    cmp r0, #2
    beq loc_804AB4C
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r6, r10
    ldr r6, [r6,#0x58]
    add r7, r7, r6
    ldr r6, [pc, #0x804aba8-0x804aad8-4] // dword_201A000
    sub r6, #8
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r4, #0
loc_804AAE4:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_804AB2C
    ldrb r0, [r7]
    cmp r0, r1
    bne loc_804AAFE
    ldrh r0, [r7,#2]
    cmp r0, r2
    bne loc_804AAFE
    ldrb r0, [r7,#4]
    cmp r0, r3
    bne loc_804AAFE
    b loc_804AB2C
loc_804AAFE:
    push {r1}
    ldrb r0, [r7]
    ldrh r1, [r7,#2]
    bl sub_804ABC0
    pop {r1}
    bne loc_804AB2C
    add r6, #8
    ldrb r0, [r7]
    strb r0, [r6]
    ldrb r0, [r7,#1]
    strb r0, [r6,#1]
    ldrh r0, [r7,#2]
    strh r0, [r6,#2]
    ldrb r0, [r7,#4]
    strb r0, [r6,#4]
    ldrb r0, [r7,#5]
    strb r0, [r6,#5]
    ldrh r0, [r7,#6]
    strh r0, [r6,#6]
    ldrb r1, [r6]
    ldrh r2, [r6,#2]
    ldrb r3, [r6,#4]
loc_804AB2C:
    add r7, #8
    add r4, #1
    cmp r4, r5
    blt loc_804AAE4
    ldr r7, [pc, #0x804aba8-0x804ab34-4] // dword_201A000
    mov r0, #0
    mov r1, #0
loc_804AB3A:
    ldrb r4, [r7,#1]
    tst r4, r4
    beq loc_804AB42
    add r0, #1
loc_804AB42:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_804AB3A
    pop {r4-r7,pc}
loc_804AB4C:
    add r3, r4, #0
    ldr r5, [r7,#0xc]
    ldr r7, [pc, #0x804abac-0x804ab50-4] // byte_201B400
    ldr r6, [pc, #0x804aba8-0x804ab52-2] // dword_201A000
    sub r6, #8
    mov r4, #0
loc_804AB58:
    ldrh r0, [r7,#2]
    bl sub_804ABB8
    bne loc_804AB88
    add r6, #8
    ldrb r0, [r7]
    strb r0, [r6]
    ldrh r1, [r7,#2]
    strh r1, [r6,#2]
    ldrb r0, [r7,#4]
    strb r0, [r6,#4]
    ldrb r0, [r7,#5]
    strb r0, [r6,#5]
    ldrh r0, [r7,#6]
    strh r0, [r6,#6]
    ldrb r0, [r7,#1]
    strb r0, [r6,#1]
    cmp r1, r3
    bne loc_804AB88
    cmp r0, #0xff
    beq loc_804AB88
    sub r0, #1
    strb r0, [r7,#1]
    strb r0, [r6,#1]
loc_804AB88:
    add r7, #8
    add r4, #1
    cmp r4, r5
    blt loc_804AB58
    ldr r7, [pc, #0x804aba8-0x804ab90-4] // dword_201A000
    mov r0, #0
    mov r1, #0
loc_804AB96:
    ldrh r4, [r7,#2]
    tst r4, r4
    beq loc_804AB9E
    add r0, #1
loc_804AB9E:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_804AB96
    pop {r4-r7,pc}
off_804ABA8:    .word dword_201A000
off_804ABAC:    .word byte_201B400
// end of function sub_804AAB8

.thumb
sub_804ABB0:
    push {r2-r7,lr}
    mov r0, #0
    tst r0, r0
    pop {r2-r7,pc}
// end of function sub_804ABB0

.thumb
sub_804ABB8:
    push {r1-r7,lr}
    mov r0, #0
    tst r0, r0
    pop {r1-r7,pc}
// end of function sub_804ABB8

.thumb
sub_804ABC0:
    push {lr}
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804ABC0

.thumb
sub_804ABC8:
    push {lr}
    ldrh r0, [r5,#0x12]
    cmp r0, #4
    ble loc_804ABDE
    ldrh r1, [r5,#0x18]
    add r1, #5
    cmp r0, r1
    bge locret_804ABEC
    sub r0, #5
    strh r0, [r5,#0x18]
    b locret_804ABEC
loc_804ABDE:
    tst r0, r0
    beq locret_804ABEC
    sub r0, #1
    ldrh r1, [r5,#0x14]
    cmp r0, r1
    bgt locret_804ABEC
    strh r0, [r5,#0x14]
locret_804ABEC:
    pop {pc}
    .byte 0, 0
// end of function sub_804ABC8

.thumb
sub_804ABF0:
    push {r0,r2-r7,lr}
    ldr r6, [r5,#0x1c]
    ldr r6, [r6]
    cmp r6, #1
    beq locret_804ABFE
    mov r2, #0x64 
    mul r1, r2
locret_804ABFE:
    pop {r0,r2-r7,pc}
// end of function sub_804ABF0

.thumb
sub_804AC00:
    push {lr}
    ldr r0, [pc, #0x804ac80-0x804ac02-2] // byte_8049A04
    ldr r1, [pc, #0x804ac78-0x804ac04-4] // unk_202DE00
    ldr r2, [pc, #0x804ac7c-0x804ac06-2] // =0x168
    bl f900_800098C
    pop {pc}
    .byte 0, 0
// end of function sub_804AC00

.thumb
sub_804AC10:
    push {r0-r7,lr}
    tst r6, r6
    beq loc_804AC28
    add r6, r0, #0
    add r0, r1, #0
    add r0, #0xc0
    add r1, r2, #0
    bl sub_802D62C
    bne locret_804AC76
    add r0, r6, #0
    b loc_804AC38
loc_804AC28:
    add r6, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8019154
    tst r0, r0
    bne locret_804AC76
    add r0, r6, #0
loc_804AC38:
    ldr r7, [pc, #0x804ac78-0x804ac38-4] // unk_202DE00
    ldr r2, [pc, #0x804ac84-0x804ac3a-2] // =0xA000
    mov r1, #1
    and r1, r0
    beq loc_804AC44
    ldr r2, [pc, #0x804ac88-0x804ac42-2] // =0xB000
loc_804AC44:
    mov r1, #0x48 
    mul r0, r1
    add r7, r7, r0
    mov r3, #0
    mov r0, #0
loc_804AC4E:
    ldrh r4, [r7,r3]
    ldr r1, [pc, #0x804ac8c-0x804ac50-4] // =0xFF0
    and r4, r1
    orr r4, r2
    strh r4, [r7,r3]
    add r3, #2
    add r0, #1
    cmp r0, #0xa
    blt loc_804AC4E
    mov r3, #0x24 
    mov r0, #0
loc_804AC64:
    ldrh r4, [r7,r3]
    ldr r1, [pc, #0x804ac8c-0x804ac66-2] // =0xFF0
    and r4, r1
    orr r4, r2
    strh r4, [r7,r3]
    add r3, #2
    add r0, #1
    cmp r0, #0xa
    blt loc_804AC64
locret_804AC76:
    pop {r0-r7,pc}
off_804AC78:    .word unk_202DE00
off_804AC7C:    .word 0x168
off_804AC80:    .word byte_8049A04
dword_804AC84:    .word 0xA000
dword_804AC88:    .word 0xB000
dword_804AC8C:    .word 0xFFF
off_804AC90:    .word 0x100
off_804AC94:    .word 0x3C0
off_804AC98:    .word 0x300
dword_804AC9C:    .word 0xA00101, 0x1900FF, 0xA00101, 0x3C00FF, 0xA00101, 0x6400FF
    .word 0x1FF02, 0x140002, 0x850402, 0x21001A, 0x6E0302, 0x320001
    .word 0x610102, 0x78000A, 0x0, 0x0
    .word 0xA00101, 0x3C00FF, 0xA00101, 0x6400FF, 0xA00101, 0x8C00FF
    .word 0x730202, 0x28000F, 0x6FF02, 0x32000A, 0x100302, 0x3F0007
    .word 0x380202, 0x580011, 0x770102, 0x5F000F, 0xA00101, 0x6400FF
    .word 0xA00101, 0x9600FF, 0xA00101, 0xC800FF, 0xA00101, 0x12C00FF
    .word 0x780102, 0x520004, 0x790102, 0x620010, 0x8A0302, 0x640013
    .word 0x1B0102, 0xA00019, 0xA00101, 0x12C00FF, 0xA00101, 0x1F400FF
    .word 0x5F0102, 0x8C000A, 0x900102, 0xA0000C, 0xD30102, 0xDC0002
    .word 0xCD0102, 0x118001A, 0x0, 0x0, 0x0, 0x0
    .word 0x12FF02, 0x26000B, 0x7A0302, 0x2D001A, 0x1C0202, 0x370010
    .word 0x7C0102, 0x44000D, 0x20302, 0x540002, 0x6F0102, 0x640009
    .word 0x340202, 0x780006, 0xDC0102, 0xD20015, 0xA00101, 0xA00FF
    .word 0xA00101, 0x2000FF, 0x16FF02, 0x80011, 0x1E0202, 0x180004
    .word 0x120102, 0x20001A, 0x80102, 0x4C000B, 0x0, 0x0
    .word 0x0, 0x0
    .word 0xB1FF01, 0xA00FF, 0xB4FF01, 0x6400FF, 0xB5FF01, 0x2800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB0FF01, 0x100FF, 0xB2FF01, 0x200FF, 0xB4FF01, 0x6400FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB1FF01, 0xA00FF, 0xB2FF01, 0x200FF, 0xB3FF01, 0x100FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB1FF01, 0xA00FF, 0xB4FF01, 0x6400FF, 0xB5FF01, 0x2800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB1FF01, 0xA00FF, 0xB5FF01, 0x2800FF, 0xB4FF01, 0x6400FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB3FF01, 0x100FF, 0xB2FF01, 0x200FF, 0xB5FF01, 0x2800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x380103, 0x80003, 0x8B0102, 0xA001A, 0xB40103, 0x100002
    .word 0x910102, 0x180011, 0x4C0103, 0x2A0001, 0xD20102, 0x3C0011
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x300103, 0x160005, 0x960102, 0x1C001A, 0x280103, 0x240004
    .word 0x7D0102, 0x320014, 0x940103, 0x480001, 0x1330102, 0x640007
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xA80103, 0x220003, 0x9C0103, 0x300002, 0x200103, 0x370005
    .word 0x1C0103, 0x440001, 0x100103, 0x500006, 0x80103, 0x600005
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB00103, 0x600002, 0x3C0103, 0x3E0004, 0x100103, 0x500006
    .word 0x80103, 0x600005, 0x2C0103, 0x540006, 0x240103, 0x820005
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10102, 0xF0001, 0x20102, 0x280003, 0x30102, 0x550005
    .word 0x40102, 0x140000, 0xF0102, 0xA0012, 0x100102, 0x320007
    .word 0x110102, 0x690013, 0x120102, 0x23000C, 0x130102, 0x120002
    .word 0x140102, 0x420003, 0x150102, 0x630004, 0x160102, 0x2E0010
    .word 0x170102, 0x520003, 0x180102, 0x6C0004, 0x390102, 0x120001
    .word 0x3A0102, 0x310007, 0x3B0102, 0x660008, 0x90102, 0x230003
    .word 0xA0102, 0x44000C, 0xB0102, 0x740012, 0xC0102, 0x320005
    .word 0xD0102, 0x5D0004, 0xE0102, 0x85000A, 0x200102, 0x640006
    .word 0x210102, 0xC80006, 0x220102, 0x12C0006, 0x50102, 0x380009
    .word 0x60102, 0x52000A, 0x2A0102, 0x6F000B, 0x2B0102, 0x8B0013
    .word 0x2F0102, 0x300011, 0x450102, 0x3C0000, 0x460102, 0x5D000E
    .word 0x470102, 0x780005, 0x190102, 0x55000D, 0x1A0102, 0x6E0010
    .word 0x7E0102, 0x8C0003, 0x800102, 0xA00000, 0x230102, 0x390002
    .word 0x240102, 0x580005, 0x250102, 0x710001, 0x80102, 0x82000B
    .word 0x1B0102, 0x620006, 0x1D0102, 0x50001, 0x1E0102, 0x3C000D
    .word 0x1F0102, 0x780009, 0x2C0102, 0x960013, 0x2E0102, 0x800019
    .word 0x2D0102, 0x690001, 0x290102, 0x4D0006, 0x260102, 0x2D000E
    .word 0x270102, 0x560013, 0x280102, 0x7F0008, 0x300102, 0x120012
    .word 0x310102, 0x300012, 0x320102, 0x4F0012, 0x330102, 0x7D000A
    .word 0x340102, 0x9E0006, 0x360102, 0x5E0001, 0x370102, 0xAA0015
    .word 0x380102, 0x690011, 0x350102, 0x640000, 0x3F0102, 0x340003
    .word 0x400102, 0x610008, 0x410102, 0x840014, 0x3C0102, 0x45000C
    .word 0x3D0102, 0x630007, 0x3E0102, 0x82000D, 0x4B0102, 0x34000C
    .word 0x4C0102, 0x59000C, 0x4D0102, 0x750013, 0x4E0102, 0x300008
    .word 0x4F0102, 0x590007, 0x500102, 0x740000, 0x510102, 0x850006
    .word 0x480102, 0x42000B, 0x490102, 0x6C0002, 0x4A0102, 0x82000A
    .word 0x820102, 0x400002, 0x830102, 0x66000A, 0x840102, 0x800018
    .word 0x420102, 0x4E0013, 0x430102, 0x6B0006, 0x440102, 0x8B000C
    .word 0x600102, 0x96000C, 0x5E0102, 0xB40010, 0x680102, 0x370011
    .word 0x690102, 0x620009, 0x6A0102, 0x7D0015, 0x550102, 0x500009
    .word 0x560102, 0x6E0008, 0x570102, 0x8C0006, 0x610102, 0x82000A
    .word 0x620102, 0xA00019, 0x630102, 0x14001A, 0x530102, 0xA001A
    .word 0x540102, 0x14001A, 0x640102, 0x3C0006, 0x650102, 0x460013
    .word 0x660102, 0x500013, 0x70102, 0x5A000C, 0x670102, 0xC60018
    .word 0x580102, 0xD000B, 0x590102, 0x2A0006, 0x5A0102, 0x5B0011
    .word 0x5B0102, 0xC001A, 0x5C0102, 0x24001A, 0x5D0102, 0x45001A
    .word 0x6B0102, 0xE0000, 0x6C0102, 0x230005, 0x6D0102, 0x3B0004
    .word 0x6E0102, 0x4E0001, 0x6F0102, 0x700005, 0x700102, 0x8A0002
    .word 0x710102, 0xA00007, 0x720102, 0xBE0009, 0x730102, 0x2A000F
    .word 0x740102, 0x3B0018, 0x750102, 0x590012, 0x5F0102, 0xC8000A
    .word 0x770102, 0x65000A, 0x760102, 0xB60009, 0x7A0102, 0x27001A
    .word 0x7B0102, 0x5A0016, 0x7C0102, 0x6E000D, 0x7D0102, 0x960014
    .word 0x780102, 0x420004, 0x790102, 0x7B0010, 0x810102, 0x3C001A
    .word 0x8A0102, 0x840013, 0x8B0102, 0x50001A, 0x520102, 0xC8001A
    .word 0x850102, 0x32001A, 0x860102, 0x87000F, 0x870102, 0x180003
    .word 0x880102, 0x5E0010, 0x890102, 0x90000E, 0x8C0102, 0x64000A
    .word 0x8D0102, 0x640003, 0x8E0102, 0x640007, 0x8F0102, 0x64000C
    .word 0x910102, 0x7F000C, 0x920102, 0x770002, 0x900102, 0xC8000C
    .word 0x930102, 0x6A0003, 0x940102, 0x45001A, 0x1C0102, 0x350010
    .word 0x950102, 0x26001A, 0x960102, 0x79001A, 0x7F0102, 0x63001A
    .word 0x970102, 0x640005, 0x980102, 0x960011, 0x990102, 0xC80018
    .word 0x9A0102, 0x640004, 0x9B0102, 0x96000F, 0x9C0102, 0xC80010
    .word 0x9D0102, 0x640006, 0x9E0102, 0x960015, 0x9F0102, 0xC80009
    .word 0xA00102, 0x640011, 0xA10102, 0x960008, 0xA20102, 0xC80014
    .word 0xA30102, 0x64000B, 0xA40102, 0x960010, 0xA50102, 0xC80011
    .word 0xA60102, 0x640013, 0xA70102, 0x960004, 0xA80102, 0xC80009
    .word 0xA90102, 0x64000D, 0xAA0102, 0x960012, 0xAB0102, 0xC8000D
    .word 0xAC0102, 0x64000B, 0xAD0102, 0x960004, 0xAE0102, 0xC80013
    .word 0xAF0102, 0x64000C, 0xB00102, 0x960004, 0xB10102, 0xC8000B
    .word 0xB20102, 0x640007, 0xB30102, 0x960006, 0xB40102, 0xC80009
    .word 0xB50102, 0x640012, 0xB60102, 0x96000F, 0xB70102, 0xC8000A
    .word 0xB80102, 0x640018, 0xB90102, 0x96000A, 0xBA0102, 0xC8000D
    .word 0xDC0102, 0xD40015, 0xD90102, 0xF0000D, 0xD20102, 0xD70011
    .word 0xD70102, 0xD00006, 0xCB0102, 0xD2000E, 0xD40102, 0xA60009
    .word 0xD30102, 0xB10002, 0xCE0102, 0xA00001, 0xD10102, 0xC6001A
    .word 0xC90102, 0xC60003, 0xD00102, 0xC80012, 0xCD0102, 0xB3001A
    .word 0xCF0102, 0xA5001A, 0xCA0102, 0xDF000C, 0xCC0102, 0xF00000
    .word 0xD50102, 0xC70004, 0xD60102, 0xDA0016, 0xD80102, 0xEB000B
    .word 0xDB0002, 0x12C0006, 0xDA0002, 0x12C0019, 0xDD0102, 0x640011
    .word 0xDE0102, 0xC80011, 0xDF0102, 0xC80011, 0xE00102, 0x640006
    .word 0xE10102, 0xC80006, 0xE20102, 0xC80006, 0xE30102, 0x640016
    .word 0xE40102, 0xC80016, 0xE50102, 0xC80016, 0xE60102, 0x640012
    .word 0xE70102, 0xC80012, 0xE80102, 0xC80012, 0xE90102, 0x640005
    .word 0xEA0102, 0xC80005, 0xEB0102, 0xC80005, 0xEC0102, 0x640013
    .word 0xED0102, 0xC80013, 0xEE0102, 0xC80013, 0xEF0102, 0x640001
    .word 0xF00102, 0xC80001, 0xF10102, 0xC80001, 0xF20102, 0x64000D
    .word 0xF30102, 0xC8000D, 0xF40102, 0xC8000D, 0xF50102, 0x64000C
    .word 0xF60102, 0xC8000C, 0xF70102, 0xC8000C, 0xF80102, 0x640009
    .word 0xF90102, 0xC80009, 0xFA0102, 0xC80009, 0xFB0102, 0x640000
    .word 0xFC0102, 0xC80000, 0xFD0102, 0xC80000, 0xFE0102, 0x640016
    .word 0xFF0102, 0xC80016, 0x1000102, 0xC80016, 0x1010102, 0x640013
    .word 0x1020102, 0xC80013, 0x1030102, 0xC80013, 0x1070102, 0x640001
    .word 0x1080102, 0xC80001, 0x1090102, 0xC80001, 0x10A0102, 0x640002
    .word 0x10B0102, 0xC80002, 0x10C0102, 0xC80002, 0x10D0102, 0x640012
    .word 0x10E0102, 0xC80012, 0x10F0102, 0xC80012, 0x1040102, 0x640017
    .word 0x1050102, 0xC80017
    .word 0x1060102, 0xC80017, 0x1100102, 0x64000B, 0x1110102
    .word 0xC8000B, 0x1120102, 0xC8000B, 0x1130102, 0x64000A
    .word 0x1140102, 0xC8000A, 0x1150102, 0xC8000A, 0x1160102
    .word 0x640015, 0x1170102, 0xC80015, 0x1180102, 0xC80015
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
word_804BA2C:    .hword 0xE0
    .byte 0, 0
// end of function sub_804AC10

.thumb
sub_804BA30:
    ldr r2, [pc, #0x804bd7c-0x804ba30-4] // dword_8049BA0
    mov r1, #0x10
    mul r0, r1
    add r2, r2, r0
    ldr r4, [r2,#0xc]
    ldr r2, [r2,#8]
    mov r0, r10
    ldr r0, [r0,#0x58]
    add r2, r2, r0
    mov r0, #0
    mov r1, #0
loc_804BA46:
    ldrb r3, [r2,#1]
    tst r3, r3
    beq loc_804BA50
    mov r0, #1
    mov pc, lr
loc_804BA50:
    add r2, #8
    add r0, #1
    cmp r0, r4
    blt loc_804BA46
    mov r0, #0
    mov pc, lr
// end of function sub_804BA30

.thumb
sub_804BA5C:
    push {lr}
    ldr r0, [pc, #0x804ba6c-0x804ba5e-2] // dword_804AC9C
    mov r1, r10
    ldr r1, [r1,#0x58]
    ldr r2, [pc, #0x804ba70-0x804ba64-4] // =0xDC0
    bl f900_800098C
    pop {pc}
off_804BA6C:    .word dword_804AC9C
off_804BA70:    .word 0xDC0
// end of function sub_804BA5C

    push {r4-r7,lr}
    add r6, r1, #0
    ldr r7, [pc, #0x804bd7c-0x804ba78-4] // dword_8049BA0
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r0, r10
    ldr r0, [r0,#0x58]
    add r7, r7, r0
    mov r8, r7
    mov r0, #0
loc_804BA8E:
    ldrb r3, [r6]
    tst r3, r3
    beq loc_804BAEE
    mov r1, #0
    mov r7, r8
loc_804BA98:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_804BAC4
    ldrb r3, [r6]
    cmp r3, r4
    bne loc_804BAC4
    ldrh r3, [r6,#2]
    ldrh r4, [r7,#2]
    cmp r3, r4
    bne loc_804BAC4
    ldrb r3, [r6,#4]
    ldrb r4, [r7,#4]
    cmp r3, r4
    bne loc_804BAC4
    ldrb r3, [r6,#1]
    ldrb r4, [r7,#1]
    add r4, r4, r3
    cmp r4, #0xff
    ble loc_804BAC0
    mov r4, #0xff
loc_804BAC0:
    strb r4, [r7,#1]
    b loc_804BAEE
loc_804BAC4:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_804BA98
    mov r1, #0
    mov r7, r8
loc_804BAD0:
    ldrb r4, [r7]
    tst r4, r4
    bne loc_804BAE6
    push {r0,r1,r6,r7}
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #8
    bl f900_8000970
    pop {r0,r1,r6,r7}
    b loc_804BAEE
loc_804BAE6:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_804BAD0
loc_804BAEE:
    add r6, #8
    add r0, #1
    cmp r0, r5
    blt loc_804BA8E
    pop {r4-r7,pc}
.thumb
sub_804BAF8:
    push {r4-r7,lr}
    add r6, r1, #0
    ldr r7, [pc, #0x804bd7c-0x804bafc-4] // dword_8049BA0
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r1, r10
    ldr r1, [r1,#0x58]
    add r7, r7, r1
    mov r1, #0
loc_804BB10:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_804BB2A
    ldrh r4, [r7,#2]
    cmp r6, r4
    bne loc_804BB2A
    ldrb r4, [r7,#1]
    add r4, #1
    cmp r4, #0xff
    ble loc_804BB26
    mov r4, #0xff
loc_804BB26:
    strb r4, [r7,#1]
    b locret_804BB32
loc_804BB2A:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_804BB10
locret_804BB32:
    pop {r4-r7,pc}
// end of function sub_804BAF8

    ldr r2, [pc, #0x804bd7c-0x804bb34-4] // dword_8049BA0
    mov r1, #0x10
    mul r0, r1
    add r2, r2, r0
    ldr r0, [r2,#8]
    mov r1, r10
    ldr r1, [r1,#0x58]
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
.thumb
sub_804BB48:
    push {r4-r7,lr}
    cmp r4, #2
    beq loc_804BBCC
    ldr r7, [pc, #0x804bd7c-0x804bb4e-2] // dword_8049BA0
    mov r6, #0x10
    mul r0, r6
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r6, r10
    ldr r6, [r6,#0x58]
    add r7, r7, r6
    mov r6, #0
loc_804BB62:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_804BBC0
    cmp r4, r1
    bne loc_804BBC0
    ldrh r4, [r7,#2]
    cmp r4, r2
    bne loc_804BBC0
    ldrb r4, [r7,#4]
    cmp r4, r3
    bne loc_804BBC0
    ldrb r4, [r7,#1]
    cmp r4, #0
    ble loc_804BBC8
    cmp r4, #0xff
    beq loc_804BB86
    sub r4, #1
    strb r4, [r7,#1]
loc_804BB86:
    cmp r4, #0
    bgt loc_804BBBC
    add r3, r7, #0
    add r3, #8
loc_804BB8E:
    sub r4, r5, #1
    cmp r6, r4
    bge loc_804BBB0
    ldr r4, [r3]
    str r4, [r7]
    ldrh r4, [r3,#2]
    strh r4, [r7,#2]
    ldrb r4, [r3,#4]
    strb r4, [r7,#4]
    ldrb r4, [r3,#5]
    strb r4, [r7,#5]
    ldrh r4, [r3,#6]
    strh r4, [r7,#6]
    add r3, #8
    add r7, #8
    add r6, #1
    b loc_804BB8E
loc_804BBB0:
    mov r3, #0
    str r3, [r7]
    strh r3, [r7,#2]
    strb r3, [r7,#4]
    strb r3, [r7,#5]
    strh r3, [r7,#6]
loc_804BBBC:
    mov r0, #1
    pop {r4-r7,pc}
loc_804BBC0:
    add r7, #8
    add r6, #1
    cmp r6, r5
    blt loc_804BB62
loc_804BBC8:
    mov r0, #0
    pop {r4-r7,pc}
loc_804BBCC:
    ldr r7, [pc, #0x804bd7c-0x804bbcc-4] // dword_8049BA0
    mov r6, #0x10
    mul r0, r6
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r6, r10
    ldr r6, [r6,#0x58]
    add r7, r7, r6
    mov r6, #0
loc_804BBE0:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_804BC08
    cmp r4, r1
    bne loc_804BC08
    ldrh r4, [r7,#2]
    cmp r4, r2
    bne loc_804BC08
    ldrb r4, [r7,#4]
    cmp r4, r3
    bne loc_804BC08
    ldrb r4, [r7,#1]
    cmp r4, #0
    ble loc_804BC10
    cmp r4, #0xff
    beq loc_804BC04
    sub r4, #1
    strb r4, [r7,#1]
loc_804BC04:
    mov r0, #1
    pop {r4-r7,pc}
loc_804BC08:
    add r7, #8
    add r6, #1
    cmp r6, r5
    blt loc_804BBE0
loc_804BC10:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_804BB48

.thumb
sub_804BC14:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r7, [pc, #0x804bd7c-0x804bc1e-2] // dword_8049BA0
    mov r6, #0x10
    mul r0, r6
    add r7, r7, r0
    ldr r0, [r7]
    ldr r4, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r3, r10
    ldr r3, [r3,#0x58]
    add r7, r7, r3
    cmp r0, #2
    beq loc_804BC40
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
loc_804BC40:
    add r5, r1, #0
    add r6, r2, #0
    mov r1, #8
    mul r4, r1
    lsl r4, r4, #1
    add r0, r5, #0
    add r1, r4, #0
    add r2, r0, r1
    mov r8, r2
    bl f900_8000930
    add r0, r6, #0
    add r1, r4, #0
    add r2, r0, r1
    mov r9, r2
    bl f900_8000930
loc_804BC62:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_804BCE4
    ldrh r0, [r7,#2]
    ldr r1, [pc, #0x804bd90-0x804bc6a-2] // =0x12D
    cmp r0, r1
    bne loc_804BC70
loc_804BC70:
    add r4, r6, #0
    ldr r3, [pc, #0x804bd8c-0x804bc72-2] // =0x140
    ldrh r0, [r7,#2]
    ldr r1, [pc, #0x804bd80-0x804bc76-2] // =0x16C0
    add r0, r0, r1
    push {r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r3}
    bne loc_804BCAE
    mov r3, #0
    ldrh r0, [r7,#2]
    ldr r1, [pc, #0x804bd84-0x804bc8a-2] // =0x18C0
    add r0, r0, r1
    push {r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r3}
    bne loc_804BCAE
    ldrh r0, [r7,#2]
    ldr r1, [pc, #0x804bd88-0x804bc9c-4] // =0x1AC0
    add r0, r0, r1
    push {r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r3}
    bne loc_804BCAE
    add r4, r5, #0
loc_804BCAE:
    mov r12, r3
    ldrh r0, [r7,#2]
    bl sub_8019010
    ldrh r0, [r0,#0x1c]
    add r0, r12
    mov r1, #8
    mul r0, r1
    add r0, r0, r4
    ldrb r1, [r7]
    strb r1, [r0]
    ldrb r1, [r7,#1]
    strb r1, [r0,#1]
    ldrh r1, [r7,#2]
    strh r1, [r0,#2]
    ldrb r1, [r7,#4]
    strb r1, [r0,#4]
    mov r1, #0
    mov r3, r12
    tst r3, r3
    bne loc_804BCDA
    mov r1, #1
loc_804BCDA:
    strb r1, [r0,#5]
    ldrh r1, [r7,#6]
    strh r1, [r0,#6]
    add r7, #8
    b loc_804BC62
loc_804BCE4:
    add r2, r5, #0
loc_804BCE6:
    ldrb r0, [r5]
    tst r0, r0
    bne loc_804BD24
    add r4, r5, #0
    add r4, #8
loc_804BCF0:
    ldrb r1, [r4]
    tst r1, r1
    beq loc_804BD1C
    strb r1, [r5]
    ldrb r1, [r4,#1]
    strb r1, [r5,#1]
    ldrh r1, [r4,#2]
    strh r1, [r5,#2]
    ldrb r1, [r4,#4]
    strb r1, [r5,#4]
    ldrb r1, [r4,#5]
    strb r1, [r5,#5]
    ldrh r1, [r4,#6]
    strh r1, [r5,#6]
    mov r1, #0
    strb r1, [r4]
    strb r1, [r4,#1]
    strh r1, [r4,#2]
    strb r1, [r4,#4]
    strb r1, [r4,#5]
    strh r1, [r4,#6]
    b loc_804BD24
loc_804BD1C:
    add r4, #8
    cmp r4, r8
    blt loc_804BCF0
    b loc_804BD2A
loc_804BD24:
    add r5, #8
    cmp r5, r8
    blt loc_804BCE6
loc_804BD2A:
    add r3, r6, #0
loc_804BD2C:
    ldrb r0, [r6]
    tst r0, r0
    bne loc_804BD6A
    add r4, r6, #0
    add r4, #8
loc_804BD36:
    ldrb r1, [r4]
    tst r1, r1
    beq loc_804BD62
    strb r1, [r6]
    ldrb r1, [r4,#1]
    strb r1, [r6,#1]
    ldrh r1, [r4,#2]
    strh r1, [r6,#2]
    ldrb r1, [r4,#4]
    strb r1, [r6,#4]
    ldrb r1, [r4,#5]
    strb r1, [r6,#5]
    ldrh r1, [r4,#6]
    strh r1, [r6,#6]
    mov r1, #0
    strb r1, [r4]
    strb r1, [r4,#1]
    strh r1, [r4,#2]
    strb r1, [r4,#4]
    strb r1, [r4,#5]
    strh r1, [r4,#6]
    b loc_804BD6A
loc_804BD62:
    add r4, #8
    cmp r4, r9
    blt loc_804BD36
    b loc_804BD70
loc_804BD6A:
    add r6, #8
    cmp r6, r9
    blt loc_804BD2C
loc_804BD70:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804BD7C:    .word dword_8049BA0
off_804BD80:    .word 0x16C0
off_804BD84:    .word 0x18C0
off_804BD88:    .word 0x1AC0
off_804BD8C:    .word 0x140
off_804BD90:    .word 0x12D
// end of function sub_804BC14

.thumb
sub_804BD94:
    push {r0-r2,lr}
    ldr r1, [pc, #0x804bdb0-0x804bd96-2] // word_804BA2C
loc_804BD98:
    ldrh r2, [r1]
    tst r2, r2
    beq loc_804BDA6
    cmp r0, r2
    beq loc_804BDAA
    add r1, #2
    b loc_804BD98
loc_804BDA6:
    mov r0, #0
    pop {r0-r2,pc}
loc_804BDAA:
    mov r0, #1
    pop {r0-r2,pc}
    .byte 0, 0
off_804BDB0:    .word word_804BA2C
dword_804BDB4:    .word 0xFF000029, 0xFFFFFFFF, 0xFF00012A, 0xFFFFFFFF, 0xFF00024D
    .word 0xFF04034D, 0xFF08044D, 0xFFFFFFFF
// end of function sub_804BD94

.thumb
sub_804BDD4:
    push {r5,lr}
    push {r0}
    bl sub_804BDF0
    pop {r0}
    ldr r5, [pc, #0x804be40-0x804bdde-2] // byte_200B190
    str r0, [r5,#(dword_200B1C0 - 0x200b190)]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#4]
    strh r0, [r1,#0xc]
    bl sub_80540BA
    pop {r5,pc}
// end of function sub_804BDD4

.thumb
sub_804BDF0:
    push {r5,lr}
    ldr r0, [pc, #0x804be40-0x804bdf2-2] // byte_200B190
    mov r1, #0x58 
    bl f900_8000930
    pop {r5,pc}
// end of function sub_804BDF0

loc_804BDFC:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    ldr r5, [pc, #0x804be40-0x804be06-2] // byte_200B190
    ldr r0, [pc, #0x804be20-0x804be08-4] // off_804BE24
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8001AE0
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r4-r7,pc}
off_804BE20:    .word off_804BE24
off_804BE24:    .word sub_804BE44+1
    .word sub_804BF40+1
    .word sub_804BF64+1
    .word sub_804BFD0+1
    .word sub_804BF64+1
    .word sub_804C034+1
    .word loc_804C058+1
off_804BE40:    .word byte_200B190
.thumb
sub_804BE44:
    push {lr}
    ldr r0, [pc, #0x804bf08-0x804be46-2] // dword_201A000
    ldr r1, [pc, #0x804bf0c-0x804be48-4] // =0x78
    bl f900_8000930
    mov r0, #0
    strh r0, [r5,#0x12]
    bl sub_804C1F8
    ldr r0, [pc, #0x804bf20-0x804be56-2] // dword_201A000
    ldr r1, [pc, #0x804bf24-0x804be58-4] // =0xC400
    bl f900_8000950
    ldr r0, [pc, #0x804bf28-0x804be5e-2] // dword_2027400
    ldr r1, [pc, #0x804bf2c-0x804be60-4] // =0x400
    bl f900_8000950
    bl sub_804C3A4
// end of function sub_804BE44

    bl sub_804C5A4
    bl sub_80305AC
    bl sub_803D618
    lsr r4, r4, #5
    strh r4, [r5,#0x1c]
    mov r1, r10
    ldr r1, [r1,#0x44]
    mov r0, #(loc_3006588+1 - 0x3006584)
    strb r0, [r1,#2]
    ldr r2, [pc, #0x804bf3c-0x804be82-2] // loc_3006584
    ldrb r0, [r2,r0]
    strb r0, [r1,#3]
    ldrh r0, [r5,#0x1c]
    mov r1, #5
    bl loc_804C5F4
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x804bf10-0x804be94-4] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #8
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0
    strh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    mov r0, #0
    strh r0, [r5,#0x1e]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    mov r0, #0
    strh r0, [r5,#0x2a]
    strh r0, [r5,#0x2c]
    strh r0, [r5,#0x2e]
    mov r0, #7
    strh r0, [r5,#0x26]
    mov r0, #5
    strh r0, [r5,#0x28]
    mov r0, #0
    strb r0, [r5,#0xd]
    strb r0, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0x11]
    mov r0, #2
    strb r0, [r5,#7]
    strb r0, [r5,#8]
    bl sub_804C3CC
    bl sub_804C448
    bl sub_804C560
    bl sub_804CAE4
    ldr r0, [pc, #0x804bf1c-0x804bef8-4] // dword_804BDB4
    bl sub_8053FFC
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804BF08:    .word dword_201A000
off_804BF0C:    .word 0x78
off_804BF10:    .word 0x1F40
    .word dword_86CDE80
    .word unk_3002B90
off_804BF1C:    .word dword_804BDB4
off_804BF20:    .word dword_201A000
dword_804BF24:    .word 0xC400
off_804BF28:    .word dword_2027400
off_804BF2C:    .word 0x400
    .word dword_201C000
    .word dword_804BF38
dword_804BF38:    .word 0x3006645
off_804BF3C:    .word loc_3006584
.thumb
sub_804BF40:
    push {lr}
    ldrh r0, [r5,#0x1e]
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    bl sub_8005B5C
    beq loc_804BF56
    mov r0, #0xa
    bl sub_804CB2C
loc_804BF56:
    bl sub_804C15C
    bl sub_804C182
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804BF40

.thumb
sub_804BF64:
    push {lr}
    bl sub_804C15C
    bl sub_804C182
    bl sub_8005B5C
    beq loc_804BFC2
    bl sub_80A6D9E
    bl sub_802DE3C
    ldr r0, [pc, #0x804bfc8-0x804bf7c-4] // unk_2026400
    mov r1, r10
    ldr r1, [r1,#0x50]
    ldr r2, [pc, #0x804bfcc-0x804bf82-2] // =0xF00
    bl f900_80009A0
    ldrb r0, [r5]
    cmp r0, #0x10
    beq loc_804BFA0
    mov r0, #0
    str r0, [r5,#0x30]
    strh r0, [r5,#4]
    strh r0, [r5,#6]
    bl sub_8003836
    bl sub_800386E
    b loc_804BFC2
loc_804BFA0:
    bl sub_804C57C
    bl sub_804D9EC
    strh r0, [r5,#4]
    strh r1, [r5,#6]
    mov r2, #1
    bl dword_801907C+2
    bl sub_8048754
    mov r0, r10
    ldr r0, [r0,#0x40]
    mov r1, #0xc
    strb r1, [r0,#0x12]
    mov r0, #1
    pop {pc}
loc_804BFC2:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804BFC8:    .word unk_2026400
off_804BFCC:    .word 0xF00
// end of function sub_804BF64

.thumb
sub_804BFD0:
    push {lr}
    bl sub_804C15C
    bl sub_804C182
    mov r0, #1
    bl sub_805411A
    bne loc_804C028
    bl sub_8005B5C
    beq loc_804C028
    bl sub_80539B0
    tst r0, r0
    beq loc_804C01C
    mov r0, #4
    strb r0, [r5]
    ldr r0, [pc, #0x804c02c-0x804bff4-4] // dword_201A000
    ldrh r6, [r5,#0x12]
    sub r6, #1
    lsl r6, r6, #2
    add r0, r0, r6
    ldr r1, [pc, #0x804c030-0x804bffe-2] // dword_201C000
    ldrh r6, [r5,#0x22]
    ldrh r7, [r5,#0x1e]
    lsl r6, r6, #5
    add r1, r1, r6
    bl sub_804CDB0
    mov r0, #0xff
    strb r0, [r5,#0x11]
    ldrh r0, [r5,#0x18]
    tst r0, r0
    beq loc_804C028
    sub r0, #1
    strh r0, [r5,#0x18]
    b loc_804C028
loc_804C01C:
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
loc_804C028:
    mov r0, #0
    pop {pc}
off_804C02C:    .word dword_201A000
off_804C030:    .word dword_201C000
// end of function sub_804BFD0

.thumb
sub_804C034:
    push {lr}
    ldrh r0, [r5,#0x28]
    strh r0, [r5,#0x2a]
    ldrh r0, [r5,#0x2c]
    strh r0, [r5,#0x2e]
    mov r0, #0x14
    bl sub_804CC40
    bl sub_804C15C
    bl sub_804C1CE
    mov r0, #0x13
    bl sub_804CABC
// end of function sub_804C034

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
loc_804C058:
    push {lr}
    ldrh r0, [r5,#0x1e]
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    bl sub_8005B5C
    beq loc_804C076
    ldr r0, [pc, #0x804c084-0x804c068-4] // off_804C088
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_804C134
loc_804C076:
    bl sub_804C15C
    bl sub_804C182
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804C084:    .word off_804C088
off_804C088:    .word sub_804C098+1
    .word sub_804C0DC+1
    .word sub_804C0F4+1
    .word sub_804C10C+1
.thumb
sub_804C098:
    push {r6,r7,lr}
    ldr r1, [pc, #0x804c0d4-0x804c09a-2] // dword_201C000
    ldrh r6, [r5,#0x22]
    ldrh r7, [r5,#0x1e]
    add r6, r6, r7
    lsl r6, r6, #5
    add r1, r1, r6
    ldrh r0, [r1]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    ldr r1, [r1,#8]
    lsr r1, r1, #0x10
    tst r0, r0
    beq locret_804C0CC
    mov r2, #0x56 
    strh r0, [r5,r2]
    mov r2, #0x55 
    strb r1, [r5,r2]
    mov r0, #0
    mov r2, #0x54 
    strb r0, [r5,r2]
    ldr r0, [pc, #0x804c0d8-0x804c0c2-2] // dword_804BDB4+16
    bl sub_8053FFC
    mov r0, #4
    strb r0, [r5,#1]
locret_804C0CC:
    pop {r6,r7,pc}
    .byte 0, 0
    .word dword_201A000
off_804C0D4:    .word dword_201C000
off_804C0D8:    .word dword_804BDB4+0x10
// end of function sub_804C098

.thumb
sub_804C0DC:
    push {r6,lr}
    mov r2, #0x54 
    ldrb r0, [r5,r2]
    add r0, #0x10
    cmp r0, #0x6c 
    ble loc_804C0EE
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0x6c 
loc_804C0EE:
    mov r2, #0x54 
    strb r0, [r5,r2]
    pop {r6,pc}
// end of function sub_804C0DC

.thumb
sub_804C0F4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrb r0, [r0,#2]
    mov r1, #0x20 
    tst r1, r0
    beq locret_804C10A
    bl sub_8031650
    mov r0, #0xc
    strb r0, [r5,#1]
locret_804C10A:
    pop {pc}
// end of function sub_804C0F4

.thumb
sub_804C10C:
    push {lr}
    mov r2, #0x54 
    ldrb r0, [r5,r2]
    sub r0, #0x10
    cmp r0, #0
    bge loc_804C12C
    mov r4, #2
loc_804C11A:
    add r0, r4, #0
    bl sub_80540EC
    add r4, #1
    cmp r4, #4
    ble loc_804C11A
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
loc_804C12C:
    mov r2, #0x54 
    strb r0, [r5,r2]
    pop {pc}
    .balign 4, 0x00
// end of function sub_804C10C

.thumb
sub_804C134:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrb r0, [r0,#2]
    mov r1, #2
    tst r1, r0
    beq locret_804C15A
    ldrh r0, [r5,#0x12]
    tst r0, r0
    bne locret_804C15A
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x7f
    bl f500_8000558
locret_804C15A:
    pop {pc}
// end of function sub_804C134

.thumb
sub_804C15C:
    push {r5,lr}
    bl sub_8054018
    bl sub_8054054
    ldrb r3, [r5,#0x11]
    cmp r3, #0
    beq locret_804C180
    mov r3, #0
    strb r3, [r5,#0x11]
    bl sub_804C3CC
    bl sub_804C448
    bl sub_804C4F8
    bl sub_804C534
locret_804C180:
    pop {r5,pc}
// end of function sub_804C15C

.thumb
sub_804C182:
    push {r5,lr}
    mov r0, #2
    bl sub_805411A
    bne loc_804C1A4
    mov r0, #0
    ldrh r1, [r5,#0x1e]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xd]
    mov r3, #0
    bl loc_80383F4
    ldrb r0, [r5]
    cmp r0, #4
    bne loc_804C1A4
    strb r2, [r5,#0xd]
loc_804C1A4:
    mov r0, #0x90
    mov r1, #0x24 
    ldrh r2, [r5,#0x1c]
    ldrh r3, [r5,#0x22]
    mov r4, #7
    mov r6, #3
    mov r7, #0x64 
    bl sub_8038510
    ldrh r0, [r5,#0x12]
    cmp r0, #7
    blt locret_804C1CC
    ldrh r0, [r5,#0x18]
    tst r0, r0
    beq locret_804C1CC
    mov r0, #0xe8
    mov r1, #0x20 
    mov r2, #0
    bl sub_804A230
locret_804C1CC:
    pop {r5,pc}
// end of function sub_804C182

.thumb
sub_804C1CE:
    push {r5,lr}
    mov r0, #0x92
    ldrh r1, [r5,#0x28]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xd]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xd]
    mov r0, #0x90
    mov r1, #0x24 
    ldrh r2, [r5,#0x1c]
    ldrh r3, [r5,#0x22]
    mov r4, #7
    mov r6, #3
    mov r7, #0x64 
    bl sub_8038510
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_804C1CE

.thumb
sub_804C1F8:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0xc
    bl sub_802F628
    ldr r1, [pc, #0x804c2e0-0x804c20c-4] // unk_3002AB0
    ldr r2, [pc, #0x804c2e4-0x804c20e-2] // =0x20
    bl f900_800098C
    mov r0, #0xc
    bl sub_802F628
    add r0, #0x20 
    ldr r1, [pc, #0x804c2ec-0x804c21c-4] // unk_3002B50
    ldr r2, [pc, #0x804c2f0-0x804c21e-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x804c2f4-0x804c224-4] // dword_868E224
    ldr r1, [pc, #0x804c2f8-0x804c226-2] // =0x6004000
    ldr r2, [pc, #0x804c2fc-0x804c228-4] // =0x6800
    bl f900_80009A0
    mov r0, #0x10
    bl sub_802F628
    ldr r1, [pc, #0x804c304-0x804c234-4] // unk_3002AD0
    ldr r2, [pc, #0x804c308-0x804c236-2] // =0x40
    bl f900_800098C
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x804c310-0x804c242-2] // word_3002A50
    ldr r2, [pc, #0x804c314-0x804c244-4] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x804c318-0x804c24a-2] // dword_86CDFA0
    ldr r1, [pc, #0x804c31c-0x804c24c-4] // =0x6007000
    ldr r2, [pc, #0x804c320-0x804c24e-2] // =0x360
    bl f900_80009A0
    ldr r0, [pc, #0x804c324-0x804c254-4] // unk_8706F00
    ldr r1, [pc, #0x804c328-0x804c256-2] // =0x6007800
    ldr r2, [pc, #0x804c32c-0x804c258-4] // =0x680
    bl f900_800098C
    ldr r0, [pc, #0x804c330-0x804c25e-2] // dword_8707A80
    ldr r1, [pc, #0x804c334-0x804c260-4] // unk_3002B30
    ldr r2, [pc, #0x804c338-0x804c262-2] // =0x20
    bl f900_80009A0
    ldr r0, [pc, #0x804c33c-0x804c268-4] // loc_86DAE6C
    ldr r1, [pc, #0x804c340-0x804c26a-2] // =0x6000020
    ldr r2, [pc, #0x804c344-0x804c26c-4] // =0x2B40
    bl f900_80009A0
    ldr r0, [pc, #0x804c348-0x804c272-2] // dword_86DE22C
    ldr r1, [pc, #0x804c34c-0x804c274-4] // unk_3002B10
    ldr r2, [pc, #0x804c350-0x804c276-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x804c354-0x804c27c-4] // dword_86DDA8C
    ldr r1, [pc, #0x804c358-0x804c27e-2] // =0x600A000
    ldr r2, [pc, #0x804c35c-0x804c280-4] // =0x7A0
    bl f900_80009A0
    ldr r0, [pc, #0x804c360-0x804c286-2] // dword_86CE300
    ldr r1, [pc, #0x804c364-0x804c288-4] // =0x6010020
    ldr r2, [pc, #0x804c368-0x804c28a-2] // =0x420
    bl f900_80009A0
    ldr r0, [pc, #0x804c378-0x804c290-4] // dword_868E124
    ldr r1, [pc, #0x804c37c-0x804c292-2] // =0x60101C0
    ldr r2, [pc, #0x804c380-0x804c294-4] // =0x80
    bl f900_80009A0
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x804c370-0x804c2a0-4] // unk_30027A0
    ldr r2, [pc, #0x804c374-0x804c2a2-2] // =0x20
    bl f900_80009A0
    ldr r0, [pc, #0x804c384-0x804c2a8-4] // dword_86D156C
    ldr r1, [pc, #0x804c388-0x804c2aa-2] // dword_202E000
    bl sub_8111700
    ldr r0, [pc, #0x804c38c-0x804c2b0-4] // dword_86CEAE0
    ldr r1, [pc, #0x804c390-0x804c2b2-2] // dword_2031000
    bl sub_8111700
    mov r0, #7
    bl sub_802F628
    ldr r1, [pc, #0x804c394-0x804c2be-2] // unk_3002740
    ldr r2, [pc, #0x804c398-0x804c2c0-4] // =0x20
    bl f900_800098C
    mov r0, #6
    bl sub_802F628
    ldr r1, [pc, #0x804c39c-0x804c2cc-4] // unk_30027C0
    ldr r2, [pc, #0x804c3a0-0x804c2ce-2] // =0x20
    bl f900_800098C
    mov r0, #0x12
    bl sub_8001BC8
    pop {pc}
// end of function sub_804C1F8

    b locret_804C628
    .hword 0x868
off_804C2E0:    .word unk_3002AB0
dword_804C2E4:    .word 0x20
    b loc_804C674
    .hword 0x868
off_804C2EC:    .word unk_3002B50
dword_804C2F0:    .word 0x20
off_804C2F4:    .word dword_868E224
dword_804C2F8:    .word 0x6004000
dword_804C2FC:    .word 0x6800
    .word 0x8745CB8
off_804C304:    .word unk_3002AD0
off_804C308:    .word 0x40
    .word 0x86F5DC0
off_804C310:    .word word_3002A50
off_804C314:    .word 0x60
off_804C318:    .word dword_86CDFA0
dword_804C31C:    .word 0x6007000
off_804C320:    .word 0x360
off_804C324:    .word unk_8706F00
dword_804C328:    .word 0x6007800
off_804C32C:    .word 0x680
off_804C330:    .word dword_8707A80
off_804C334:    .word unk_3002B30
dword_804C338:    .word 0x20
off_804C33C:    .word loc_86DAE6C
dword_804C340:    .word 0x6000020
off_804C344:    .word 0x2B40
off_804C348:    .word dword_86DE22C
off_804C34C:    .word unk_3002B10
dword_804C350:    .word 0x20
off_804C354:    .word dword_86DDA8C
dword_804C358:    .word 0x600A000
off_804C35C:    .word 0x7A0
off_804C360:    .word dword_86CE300
dword_804C364:    .word 0x6010020
off_804C368:    .word 0x420
    .word 0x86F8A20
off_804C370:    .word unk_30027A0
dword_804C374:    .word 0x20
off_804C378:    .word dword_868E124
dword_804C37C:    .word 0x60101C0
off_804C380:    .word 0x80
off_804C384:    .word dword_86D156C
off_804C388:    .word dword_202E000
off_804C38C:    .word dword_86CEAE0
off_804C390:    .word dword_2031000
off_804C394:    .word unk_3002740
dword_804C398:    .word 0x20
off_804C39C:    .word unk_30027C0
dword_804C3A0:    .word 0x20
.thumb
sub_804C3A4:
    push {r5,lr}
    ldr r0, [pc, #0x804c3c8-0x804c3a6-2] // dword_86E31DC
    mov r1, #0xa
    ldr r2, [pc, #0x804c3bc-0x804c3aa-2] // unk_2014200
    ldr r3, [pc, #0x804c3c0-0x804c3ac-4] // =0x6008200
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x804c3c4-0x804c3b2-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
off_804C3BC:    .word unk_2014200
dword_804C3C0:    .word 0x6008200
off_804C3C4:    .word dword_868E224
off_804C3C8:    .word dword_86E31DC
// end of function sub_804C3A4

.thumb
sub_804C3CC:
    push {lr}
    push {r5}
    mov r0, #0
    mov r1, #4
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0xe
    bl sub_8001DF8
// end of function sub_804C3CC

    mov r0, #0
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r5}
    ldrh r4, [r5,#0x22]
    ldr r6, [pc, #0x804c4d8-0x804c3f4-4] // dword_201C000
    mov r7, #0
loc_804C3F8:
    mov r0, #0x20 
    mul r0, r4
    add r0, r0, r6
    ldrh r1, [r0]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r3, [r0,#0x14]
    lsr r3, r3, #0x10
    ldr r2, [r0,#8]
    lsr r2, r2, #0x10
    tst r1, r1
    beq loc_804C414
    tst r3, r3
    beq loc_804C43E
loc_804C414:
    ldr r0, [pc, #0x804c4f0-0x804c414-4] // unk_20165E0
    bl sub_802EF4C
    ldr r0, [pc, #0x804c4e8-0x804c41a-2] // unk_2016580
    bl sub_802F13C
    push {r2}
    ldr r0, [pc, #0x804c4e0-0x804c422-2] // unk_2016500
    mov r2, #0
    bl sub_802F00C
    pop {r2}
    ldr r0, [pc, #0x804c4dc-0x804c42c-4] // unk_2016400
    bl sub_802F068
    ldr r0, [pc, #0x804c4e4-0x804c432-2] // unk_2016540
    bl sub_802F104
    ldr r0, [pc, #0x804c4ec-0x804c438-4] // unk_20165A0
    bl sub_802F168
loc_804C43E:
    add r4, #1
    add r7, #1
    cmp r7, #7
    blt loc_804C3F8
    pop {pc}
.thumb
sub_804C448:
    push {lr}
    push {r5}
    mov r0, #1
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4e0-0x804c452-2] // unk_2016500
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
// end of function sub_804C448

    pop {r5}
    push {r5}
    mov r0, #3
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4dc-0x804c466-2] // unk_2016400
    mov r4, #8
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #0xb
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4e4-0x804c47a-2] // unk_2016540
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #0xd
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4e8-0x804c48e-2] // unk_2016580
    mov r4, #1
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #0xe
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4ec-0x804c4a2-2] // unk_20165A0
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #0x10
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c4f0-0x804c4b6-2] // unk_20165E0
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #0xd
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x804c4f4-0x804c4ca-2] // dword_802F988+12
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
    pop {pc}
off_804C4D8:    .word dword_201C000
off_804C4DC:    .word unk_2016400
off_804C4E0:    .word unk_2016500
off_804C4E4:    .word unk_2016540
off_804C4E8:    .word unk_2016580
off_804C4EC:    .word unk_20165A0
off_804C4F0:    .word unk_20165E0
off_804C4F4:    .word dword_802F988+0xC
.thumb
sub_804C4F8:
    push {lr}
    push {r5}
    mov r0, #0x13
    mov r1, #4
    mov r2, #2
    mov r3, #0
    mov r4, #0xa
    mov r5, #0xe
    bl sub_8001DF8
// end of function sub_804C4F8

    pop {r5}
    ldrh r4, [r5,#0x18]
    ldr r6, [pc, #0x804c56c-0x804c510-4] // dword_201A000
    mov r7, #0
loc_804C514:
    mov r0, #4
    mul r0, r4
    add r0, r0, r6
    ldrh r1, [r0]
    ldrh r2, [r0,#2]
    ldr r0, [pc, #0x804c574-0x804c51e-2] // unk_2016900
    bl sub_802F13C
    ldr r0, [pc, #0x804c570-0x804c524-4] // unk_2016800
    bl sub_802F068
    add r4, #1
    add r7, #1
    cmp r7, #7
    blt loc_804C514
    pop {pc}
.thumb
sub_804C534:
    push {lr}
    push {r5}
    mov r0, #0x13
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c570-0x804c53e-2] // unk_2016800
    mov r4, #8
    mov r5, #0xe
    bl sub_8001DDC
// end of function sub_804C534

    pop {r5}
    push {r5}
    mov r0, #0x1c
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x804c574-0x804c552-2] // unk_2016900
    mov r4, #1
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    pop {pc}
.thumb
sub_804C560:
    push {lr}
    ldr r0, [pc, #0x804c570-0x804c562-2] // unk_2016800
    ldr r1, [pc, #0x804c578-0x804c564-4] // =0x120
    bl f900_8000950
    pop {pc}
off_804C56C:    .word dword_201A000
off_804C570:    .word unk_2016800
off_804C574:    .word unk_2016900
off_804C578:    .word 0x120
// end of function sub_804C560

.thumb
sub_804C57C:
    push {lr}
    ldr r7, [pc, #0x804c5a0-0x804c57e-2] // dword_201A000
    ldrh r6, [r5,#0x12]
    mov r4, #0
loc_804C584:
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    mov r2, #1
    bl sub_8019122
    mov r0, #0x10
    ldrh r1, [r7]
    bl sub_804BAF8
    add r7, #4
    add r4, #1
    cmp r4, r6
    blt loc_804C584
    pop {pc}
off_804C5A0:    .word dword_201A000
// end of function sub_804C57C

.thumb
sub_804C5A4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x50]
    ldr r1, [pc, #0x804c5b4-0x804c5aa-2] // unk_2026400
    ldr r2, [pc, #0x804c5b8-0x804c5ac-4] // =0xF00
    bl f900_80009A0
    pop {pc}
off_804C5B4:    .word unk_2026400
off_804C5B8:    .word 0xF00
// end of function sub_804C5A4

.thumb
sub_804C5BC:
    push {lr}
    ldr r0, [pc, #0x804c62c-0x804c5be-2] // dword_201C000
    add r2, r1, #0
    ldrh r1, [r5,#0x1c]
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r3, [r3,#3]
    tst r3, r3
    beq loc_804C5D8
    ldr r3, [pc, #0x804c5e4-0x804c5ce-2] // off_804C5E8
    ldr r3, [r3]
    mov lr, pc
    bx r3
    pop {pc}
loc_804C5D8:
    ldr r3, [pc, #0x804c5ec-0x804c5d8-4] // off_804C5F0
    ldr r3, [r3]
    mov lr, pc
    bx r3
// end of function sub_804C5BC

    pop {pc}
    .balign 4, 0x00
off_804C5E4:    .word off_804C5E8
off_804C5E8:    .word loc_300658C+1
off_804C5EC:    .word off_804C5F0
off_804C5F0:    .word loc_3006644+1
loc_804C5F4:
    push {lr}
    mov r2, r8
    mov r3, r9
    push {r2,r3}
    mov r8, r0
    mov r9, r1
    ldr r0, [pc, #0x804c62c-0x804c600-4] // dword_201C000
    add r2, r1, #0
    lsl r2, r2, #2
    ldr r1, [pc, #0x804c630-0x804c606-2] // off_804C634
    ldr r1, [r1,r2]
    mov lr, pc
    bx r1
    .hword 0x4649
    .word 0xFFD4F7FF, 0x464A4805, 0x490D0092, 0x46FE5889, 0xBC0C4708
    .word 0x46994690
locret_804C628:
    pop {pc}
    .balign 4, 0x00
off_804C62C:    .word dword_201C000
off_804C630:    .word off_804C634
off_804C634:    .word sub_804C670+1
    .word sub_804C7BC+1
    .word sub_804C864+1
    .word sub_804C8FC+1
    .word sub_804C994+1
    .word sub_804C724+1
    .word sub_804CA20+1
    .word off_804C654
off_804C654:    .word sub_804C6EC+1
    .word sub_804C834+1
    .word sub_804C8D0+1
    .word sub_804C968+1
    .word sub_804C9F4+1
    .word sub_804C790+1
    .word sub_804CA8C+1
.thumb
sub_804C670:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C674:
    ldr r1, [r0]
    tst r1, r1
    bne loc_804C68C
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C688
    ldr r1, [pc, #0x804c6d8-0x804c686-2] // =0x7FFFFFFF
loc_804C688:
    str r1, [r0]
    b loc_804C6CE
loc_804C68C:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r2, [pc, #0x804c6e8-0x804c694-4] // =0x1FC
    and r2, r1
    lsr r1, r1, #9
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C6BA
    mvn r1, r1
    mov r3, #0x7f
    and r1, r3
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804c6dc-0x804c6ae-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0]
    b loc_804C6CE
loc_804C6BA:
    lsl r2, r2, #7
    mvn r2, r2
    ldr r3, [pc, #0x804c6e0-0x804c6be-2] // =0xFFFFFF40
    and r2, r3
    orr r2, r1
    ldr r1, [pc, #0x804c6e4-0x804c6c4-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0]
loc_804C6CE:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C674
    pop {r0,r6,r7,pc}
dword_804C6D8:    .word 0x7FFFFFFF
dword_804C6DC:    .word 0xFFFF
dword_804C6E0:    .word 0xFFFFFF40
dword_804C6E4:    .word 0xFFFF
dword_804C6E8:    .word 0x1FF
// end of function sub_804C670

.thumb
sub_804C6EC:
    push {r0,r7,lr}
    mov r7, #0
loc_804C6F0:
    ldr r1, [r0]
    ldr r2, [pc, #0x804c718-0x804c6f2-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804C6FE
    mov r1, #0
    str r1, [r0]
    b loc_804C70E
loc_804C6FE:
    add r4, r1, #0
    ldr r2, [pc, #0x804c71c-0x804c700-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0,#4]
    ldr r2, [pc, #0x804c720-0x804c706-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0]
loc_804C70E:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C6F0
    pop {r0,r7,pc}
dword_804C718:    .word 0x7FFFFFFF
dword_804C71C:    .word 0xFFFF0000
dword_804C720:    .word 0xFFFF
// end of function sub_804C6EC

.thumb
sub_804C724:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C728:
    ldr r1, [r0,#0x14]
    tst r1, r1
    bne loc_804C740
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C73C
    ldr r1, [pc, #0x804cad4-0x804c73a-2] // =0x7FFFFFFF
loc_804C73C:
    str r1, [r0,#0x14]
    b loc_804C786
loc_804C740:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C778
    ldr r3, [pc, #0x804cad8-0x804c758-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x804cadc-0x804c76c-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
    b loc_804C786
loc_804C778:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804cadc-0x804c77c-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
loc_804C786:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C728
    pop {r0,r6,r7,pc}
// end of function sub_804C724

.thumb
sub_804C790:
    push {r0,r7,lr}
    mov r7, #0
loc_804C794:
    ldr r1, [r0,#0x14]
    ldr r2, [pc, #0x804cad4-0x804c796-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804C7A2
    mov r1, #0
    str r1, [r0,#0x14]
    b loc_804C7B2
loc_804C7A2:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804c7a4-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804c7aa-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x14]
loc_804C7B2:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C794
    pop {r0,r7,pc}
// end of function sub_804C790

.thumb
sub_804C7BC:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C7C0:
    ldr r1, [r0,#4]
    tst r1, r1
    bne loc_804C7D8
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C7D4
    ldr r1, [pc, #0x804c824-0x804c7d2-2] // =0x7FFFFFFF
loc_804C7D4:
    str r1, [r0,#4]
    b loc_804C81A
loc_804C7D8:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C806
    mvn r1, r1
    mov r3, #0x7f
    and r1, r3
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804c828-0x804c7fa-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#4]
    b loc_804C81A
loc_804C806:
    lsl r2, r2, #7
    mvn r2, r2
    ldr r3, [pc, #0x804c82c-0x804c80a-2] // =0xFFFFFF40
    and r2, r3
    orr r2, r1
    ldr r1, [pc, #0x804c828-0x804c810-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#4]
loc_804C81A:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C7C0
    pop {r0,r6,r7,pc}
dword_804C824:    .word 0x7FFFFFFF
dword_804C828:    .word 0xFFFF
dword_804C82C:    .word 0xFFFFFF40
    .word 0x1FF
// end of function sub_804C7BC

.thumb
sub_804C834:
    push {r0,r7,lr}
    mov r7, #0
loc_804C838:
    ldr r1, [r0,#4]
    ldr r2, [pc, #0x804c860-0x804c83a-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804C846
    mov r1, #0
    str r1, [r0,#4]
    b loc_804C856
loc_804C846:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804c848-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804c84e-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#4]
loc_804C856:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C838
    pop {r0,r7,pc}
dword_804C860:    .word 0x7FFFFFFF
// end of function sub_804C834

.thumb
sub_804C864:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C868:
    ldr r1, [r0,#8]
    tst r1, r1
    bne loc_804C880
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C87C
    ldr r1, [pc, #0x804cad4-0x804c87a-2] // =0x7FFFFFFF
loc_804C87C:
    str r1, [r0,#8]
    b loc_804C8C6
loc_804C880:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C8B8
    ldr r3, [pc, #0x804cad8-0x804c898-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x804cadc-0x804c8ac-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#8]
    b loc_804C8C6
loc_804C8B8:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804cadc-0x804c8bc-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#8]
loc_804C8C6:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C868
    pop {r0,r6,r7,pc}
// end of function sub_804C864

.thumb
sub_804C8D0:
    push {r0,r7,lr}
    mov r7, #0
loc_804C8D4:
    ldr r1, [r0,#8]
    ldr r2, [pc, #0x804cad4-0x804c8d6-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804C8E2
    mov r1, #0
    str r1, [r0,#8]
    b loc_804C8F2
loc_804C8E2:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804c8e4-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804c8ea-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#8]
loc_804C8F2:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C8D4
    pop {r0,r7,pc}
// end of function sub_804C8D0

.thumb
sub_804C8FC:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C900:
    ldr r1, [r0,#0xc]
    tst r1, r1
    bne loc_804C918
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C914
    ldr r1, [pc, #0x804cad4-0x804c912-2] // =0x7FFFFFFF
loc_804C914:
    str r1, [r0,#0xc]
    b loc_804C95E
loc_804C918:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C950
    ldr r3, [pc, #0x804cad8-0x804c930-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x804cadc-0x804c944-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0xc]
    b loc_804C95E
loc_804C950:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804cadc-0x804c954-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0xc]
loc_804C95E:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C900
    pop {r0,r6,r7,pc}
// end of function sub_804C8FC

.thumb
sub_804C968:
    push {r0,r7,lr}
    mov r7, #0
loc_804C96C:
    ldr r1, [r0,#0xc]
    ldr r2, [pc, #0x804cad4-0x804c96e-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804C97A
    mov r1, #0
    str r1, [r0,#0xc]
    b loc_804C98A
loc_804C97A:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804c97c-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804c982-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0xc]
loc_804C98A:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C96C
    pop {r0,r7,pc}
// end of function sub_804C968

.thumb
sub_804C994:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804C998:
    ldr r1, [r0,#0x10]
    tst r1, r1
    bne loc_804C9B0
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804C9AC
    ldr r1, [pc, #0x804cad4-0x804c9aa-2] // =0x7FFFFFFF
loc_804C9AC:
    str r1, [r0,#0x10]
    b loc_804C9E8
loc_804C9B0:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804C9DA
    lsl r2, r2, #7
    orr r2, r1
    mvn r2, r2
    ldr r3, [pc, #0x804cadc-0x804c9ce-2] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x10]
    b loc_804C9E8
loc_804C9DA:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804cadc-0x804c9de-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x10]
loc_804C9E8:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C998
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_804C994

.thumb
sub_804C9F4:
    push {r0,r7,lr}
    mov r7, #0
loc_804C9F8:
    ldr r1, [r0,#0x10]
    ldr r2, [pc, #0x804cad4-0x804c9fa-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804CA06
    mov r1, #0
    str r1, [r0,#0x10]
    b loc_804CA16
loc_804CA06:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804ca08-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804ca0e-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x10]
loc_804CA16:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804C9F8
    pop {r0,r7,pc}
// end of function sub_804C9F4

.thumb
sub_804CA20:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_804CA24:
    ldr r1, [r0,#0x18]
    tst r1, r1
    bne loc_804CA3C
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r4, [r6,#3]
    tst r4, r4
    beq loc_804CA38
    ldr r1, [pc, #0x804cad4-0x804ca36-2] // =0x7FFFFFFF
loc_804CA38:
    str r1, [r0,#0x18]
    b loc_804CA82
loc_804CA3C:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    mov r6, r10
    ldr r6, [r6,#0x44]
    ldrb r3, [r6,#3]
    tst r3, r3
    bne loc_804CA74
    ldr r3, [pc, #0x804cad8-0x804ca54-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x804cadc-0x804ca68-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x18]
    b loc_804CA82
loc_804CA74:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x804cadc-0x804ca78-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x18]
loc_804CA82:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804CA24
    pop {r0,r6,r7,pc}
// end of function sub_804CA20

.thumb
sub_804CA8C:
    push {r0,r7,lr}
    mov r7, #0
loc_804CA90:
    ldr r1, [r0,#0x18]
    ldr r2, [pc, #0x804cad4-0x804ca92-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_804CA9E
    mov r1, #0
    str r1, [r0,#0x18]
    b loc_804CAAE
loc_804CA9E:
    add r4, r1, #0
    ldr r2, [pc, #0x804cae0-0x804caa0-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x804cadc-0x804caa6-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x18]
loc_804CAAE:
    add r0, #0x20 
    add r7, #1
    cmp r7, r8
    blt loc_804CA90
    pop {r0,r7,pc}
    .word dword_201A000
// end of function sub_804CA8C

.thumb
sub_804CABC:
    push {r4-r7,lr}
    mov r1, #2
    mov r2, #0
    ldr r3, [pc, #0x804cad0-0x804cac2-2] // dword_86DE24C
    mov r4, #8
    mov r5, #0x11
    bl sub_8001DDC
// end of function sub_804CABC

    pop {r4-r7,pc}
    .byte 0, 0
off_804CAD0:    .word dword_86DE24C
dword_804CAD4:    .word 0x7FFFFFFF
dword_804CAD8:    .word 0x1FF
dword_804CADC:    .word 0xFFFF
dword_804CAE0:    .word 0xFFFF0000
.thumb
sub_804CAE4:
    push {r4-r7,lr}
    add r7, r5, #0
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x804cb20-0x804caee-2] // dword_8700FBC+472
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_804CAE4

    ldrb r0, [r7,#7]
    sub r0, #0x20 
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x804cb28-0x804cb00-4] // byte_86D3648
    mov r4, #0x3c 
    mov r5, #0x11
    bl sub_8001DDC
    ldrb r0, [r7,#7]
    sub r0, #0x20 
    add r0, #0x31 
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x804cb24-0x804cb14-4] // dword_8700FBC+1672
    mov r4, #0xb
    mov r5, #0x11
    bl sub_8001DDC
    pop {r4-r7,pc}
off_804CB20:    .word dword_8700FBC+0x1D8
off_804CB24:    .word dword_8700FBC+0x688
off_804CB28:    .word byte_86D3648
.thumb
sub_804CB2C:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_804CB42
    bl sub_804CB84
    b locret_804CB7E
loc_804CB42:
    mov r1, #8
    tst r1, r0
    beq loc_804CB54
    mov r0, #0x14
    strb r0, [r5]
    mov r0, #0x7e 
    bl f500_8000558
    b locret_804CB7E
loc_804CB54:
    mov r1, #1
    tst r1, r0
    beq loc_804CB60
    bl sub_804CBD4
    b locret_804CB7E
loc_804CB60:
    mov r1, #0x10
    tst r1, r0
    beq loc_804CB6C
    bl sub_804CC30
    b locret_804CB7E
loc_804CB6C:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x804cb80-0x804cb6e-2] // =0x3C0
    tst r0, r1
    beq locret_804CB7E
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0x11]
locret_804CB7E:
    pop {r5,pc}
off_804CB80:    .word 0x3C0
// end of function sub_804CB2C

.thumb
sub_804CB84:
    push {lr}
    ldrh r0, [r5,#0x12]
    tst r0, r0
    bne loc_804CBA0
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x7f
    bl f500_8000558
    b locret_804CBD0
loc_804CBA0:
    ldr r0, [pc, #0x804cc24-0x804cba0-4] // dword_201A000
    ldrh r6, [r5,#0x12]
    sub r6, #1
    lsl r6, r6, #2
    add r0, r0, r6
    ldr r1, [pc, #0x804cc28-0x804cbaa-2] // dword_201C000
    ldrh r6, [r5,#0x22]
    ldrh r7, [r5,#0x1e]
    lsl r6, r6, #5
    add r1, r1, r6
    bl sub_804CDB0
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r1, #0
    ldrh r0, [r5,#0x12]
    cmp r0, #7
    ble loc_804CBCE
    mov r1, #7
    sub r1, r0, r1
loc_804CBCE:
    strh r1, [r5,#0x18]
locret_804CBD0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_804CB84

.thumb
sub_804CBD4:
    push {lr}
    ldr r1, [pc, #0x804cc28-0x804cbd6-2] // dword_201C000
    ldrh r6, [r5,#0x22]
    ldrh r7, [r5,#0x1e]
    add r6, r6, r7
    lsl r6, r6, #5
    add r1, r1, r6
    mov r2, #0
    ldr r3, [r5,#0x30]
    sub r3, #1
    ldrh r4, [r5,#0x12]
    cmp r3, r4
    beq loc_804CBF0
    mov r2, #1
loc_804CBF0:
    bl sub_804CCC8
    bl f500_8000558
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r1, #0
    ldrh r0, [r5,#0x12]
    cmp r0, #7
    ble loc_804CC08
    mov r1, #7
    sub r1, r0, r1
loc_804CC08:
    strh r1, [r5,#0x18]
    ldr r0, [r5,#0x30]
    ldrh r1, [r5,#0x12]
    cmp r0, r1
    bgt locret_804CC20
    ldr r0, [pc, #0x804cc2c-0x804cc12-2] // dword_804BDB4+8
    bl sub_8053FFC
    mov r0, #1
    strh r0, [r5,#0xe]
    mov r0, #0xc
    strb r0, [r5]
locret_804CC20:
    pop {pc}
    .balign 4, 0x00
off_804CC24:    .word dword_201A000
off_804CC28:    .word dword_201C000
off_804CC2C:    .word dword_804BDB4+8
// end of function sub_804CBD4

.thumb
sub_804CC30:
    push {lr}
    bl sub_8031650
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_804CC30

.thumb
sub_804CC40:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_804CC56
    bl sub_804CCB4
    b locret_804CC72
loc_804CC56:
    mov r1, #1
    tst r1, r0
    beq loc_804CC62
    bl sub_804CC78
    b locret_804CC72
loc_804CC62:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x804cc74-0x804cc64-4] // =0x300
    bic r0, r1
    mov r1, #7
    mov r2, #1
    bl sub_80388E0
    strb r7, [r5,#0x11]
locret_804CC72:
    pop {r5,pc}
off_804CC74:    .word 0x300
// end of function sub_804CC40

.thumb
sub_804CC78:
    push {lr}
    ldrh r0, [r5,#0x28]
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r2, [r1,#2]
    cmp r0, r2
    beq loc_804CC90
    strb r0, [r1,#2]
    ldr r2, [pc, #0x804ccb0-0x804cc88-4] // loc_3006584
    ldrb r0, [r2,r0]
    strb r0, [r1,#3]
    b loc_804CC9A
loc_804CC90:
    strb r0, [r1,#2]
    ldrb r0, [r1,#3]
    mov r2, #4
    eor r0, r2
    strb r0, [r1,#3]
loc_804CC9A:
    ldrh r0, [r5,#0x1c]
    ldrb r1, [r1,#2]
    bl loc_804C5F4
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
    .byte 0, 0
dword_804CCB0:    .word 0x3006584
// end of function sub_804CC78

.thumb
sub_804CCB4:
    push {lr}
    mov r0, #4
    strb r0, [r5]
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xff
    strb r0, [r5,#0x11]
    pop {pc}
    .balign 4, 0x00
// end of function sub_804CCB4

.thumb
sub_804CCC8:
    push {lr}
    mov r12, r2
    ldr r7, [pc, #0x804ce84-0x804cccc-4] // dword_201A000
    add r2, r1, #0
    mov r4, #0
    ldrh r0, [r2]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    ldr r1, [r2,#8]
    lsr r1, r1, #0x10
    tst r0, r0
    beq loc_804CD2A
loc_804CCE0:
    ldrh r6, [r7]
    lsl r6, r6, #0x17
    lsr r6, r6, #0x17
    tst r6, r6
    bne loc_804CCF0
    strh r0, [r7]
    strb r1, [r7,#2]
    b loc_804CCF6
loc_804CCF0:
    add r7, #4
    add r4, #1
    b loc_804CCE0
loc_804CCF6:
    ldr r1, [r2,#0x14]
    mov r0, #1
    lsl r0, r0, #0x10
    sub r1, r1, r0
    str r1, [r2,#0x14]
    lsr r1, r1, #0x10
    tst r1, r1
    bne loc_804CD20
    mov r0, #0
    str r0, [r2]
    mov r3, r12
    tst r3, r3
    beq loc_804CD20
    ldrh r6, [r5,#0x1c]
    sub r6, #1
    strh r6, [r5,#0x1c]
    add r3, r6, #0
    bl sub_804CD30
    bl sub_804CD88
loc_804CD20:
    ldrh r6, [r5,#0x12]
    add r6, #1
    strh r6, [r5,#0x12]
    mov r0, #0x7e 
    pop {pc}
loc_804CD2A:
    mov r0, #0x69 
    pop {pc}
    .byte 0, 0
// end of function sub_804CCC8

.thumb
sub_804CD30:
    push {r5,lr}
    mov r0, #0
    ldr r6, [pc, #0x804ce88-0x804cd34-4] // dword_201C000
loc_804CD36:
    ldrh r4, [r6]
    lsl r4, r4, #0x17
    lsr r4, r4, #0x17
    tst r4, r4
    bne loc_804CD6C
    add r1, r0, #0
    add r7, r6, #0
loc_804CD44:
    ldr r4, [r7,#0x20]
    str r4, [r7]
    ldr r4, [r7,#0x24]
    str r4, [r7,#4]
    ldr r4, [r7,#0x28]
    str r4, [r7,#8]
    ldr r4, [r7,#0x2c]
    str r4, [r7,#0xc]
    ldr r4, [r7,#0x30]
    str r4, [r7,#0x10]
    ldr r4, [r7,#0x34]
    str r4, [r7,#0x14]
    ldr r4, [r7,#0x38]
    str r4, [r7,#0x18]
    ldr r4, [r7,#0x3c]
    str r4, [r7,#0x1c]
    add r1, #1
    add r7, #0x20 
    cmp r1, r3
    blt loc_804CD44
loc_804CD6C:
    add r0, #1
    add r6, #0x20 
    cmp r0, r3
    blt loc_804CD36
    mov r0, #0
    str r0, [r6]
    str r0, [r6,#4]
    str r0, [r6,#8]
    str r0, [r6,#0xc]
    str r0, [r6,#0x10]
    str r0, [r6,#0x14]
    str r0, [r6,#0x18]
    str r0, [r6,#0x1c]
    pop {r5,pc}
// end of function sub_804CD30

.thumb
sub_804CD88:
    push {lr}
    ldrh r0, [r5,#0x1c]
    cmp r0, #7
    blt loc_804CD9E
    ldrh r1, [r5,#0x22]
    add r1, #8
    cmp r0, r1
    bge locret_804CDAC
    sub r0, #7
    strh r0, [r5,#0x22]
    b locret_804CDAC
loc_804CD9E:
    tst r0, r0
    beq locret_804CDAC
    sub r0, #1
    ldrh r1, [r5,#0x1e]
    cmp r0, r1
    bgt locret_804CDAC
    strh r0, [r5,#0x1e]
locret_804CDAC:
    pop {pc}
    .byte 0, 0
// end of function sub_804CD88

.thumb
sub_804CDB0:
    push {lr}
    add r2, r0, #0
    ldr r7, [pc, #0x804ce88-0x804cdb4-4] // dword_201C000
    mov r4, #0
    ldrh r0, [r2]
    ldrh r1, [r2,#2]
    tst r0, r0
    beq loc_804CE7E
    ldrh r6, [r5,#0x1c]
    tst r6, r6
    beq loc_804CDF2
loc_804CDC6:
    ldrh r6, [r7]
    lsl r6, r6, #0x17
    lsr r6, r6, #0x17
    tst r6, r6
    beq loc_804CDF8
    cmp r0, r6
    bne loc_804CDE8
    ldr r6, [r7,#8]
    lsr r6, r6, #0x10
    cmp r1, r6
    bne loc_804CDE8
    ldr r6, [r7,#0x14]
    mov r3, #1
    lsl r3, r3, #0x10
    add r6, r6, r3
    str r6, [r7,#0x14]
    b loc_804CE6E
loc_804CDE8:
    add r7, #0x20 
    add r4, #1
    ldrh r6, [r5,#0x1c]
    cmp r4, r6
    blt loc_804CDC6
loc_804CDF2:
    ldrh r6, [r5,#0x1c]
    add r6, #1
    strh r6, [r5,#0x1c]
loc_804CDF8:
    mov r8, r1
    lsl r1, r1, #9
    orr r1, r0
    lsl r0, r0, #0x10
    orr r1, r0
    str r1, [r7]
    push {r2,r5}
    lsr r0, r0, #0x10
    add r6, r0, #0
    bl sub_8019010
    add r5, r0, #0
    add r0, r6, #0
    mov r1, r8
    bl sub_80191FC
    mov r1, r8
    bl sub_80430E8
    mov r3, r8
    mov r8, r0
    add r0, r6, #0
    mov r1, #0
    push {r3}
    bl ho_8019288
    pop {r3}
    add r6, r0, #0
    ldrh r2, [r7]
    lsl r2, r2, #0x17
    lsr r2, r2, #0x17
    add r0, r3, #0
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r7,#8]
    lsl r6, r6, #0x10
    orr r6, r2
    str r6, [r7,#0xc]
    mov r0, r8
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r7,#0x1c]
    ldrh r0, [r5,#0x18]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r7,#4]
    ldrb r0, [r5,#7]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r7,#0x10]
    ldrb r0, [r5,#6]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r7,#0x18]
    mov r3, #1
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r7,#0x14]
    pop {r2,r5}
loc_804CE6E:
    mov r0, #0
    strh r0, [r2]
    strb r0, [r2,#2]
    ldrh r6, [r5,#0x12]
    sub r6, #1
    strh r6, [r5,#0x12]
    mov r0, #0x7e 
    pop {pc}
loc_804CE7E:
    mov r0, #0x69 
    pop {pc}
    .balign 4, 0x00
off_804CE84:    .word dword_201A000
off_804CE88:    .word dword_201C000
dword_804CE8C:    .word 0x40C0, 0x10186070, 0x48483008, 0x1030
off_804CE9C:    .word dword_804CEB0
    .word 0x804CEB5, 0x804CEBA, 0x804CEBF, 0x804CEC4
dword_804CEB0:    .word 0x3020100, 0x2000104, 0x1020403, 0x3040300, 0x4000102
    .word 0x1020304, 0x0
off_804CECC:    .word dword_804CEE8
    .word 0x804CEE6, 0x804CEE4, 0x804CEE2, 0x804CEE0, 0x60A040C0
    .word 0xC0408080
dword_804CEE8:    .word 0xFF00
dword_804CEEC:    .word 0x202040C0, 0x2020, 0x1000001, 0x21A02, 0xFF040302
    .word 0x12000004, 0x51A15, 0x1A150907, 0xC020007, 0x81A11
    .word 0xFF130B04, 0x3020009, 0xC1A04, 0x1A070605, 0x1204000F
    .word 0x101A15, 0xFF0E0701, 0xC0B0012, 0x131A0D, 0x1A030201
    .word 0x100F0016, 0x1C1A11, 0xFF18100D, 0xB01001D, 0x1E1A13
    .word 0x1A130D04, 0x2010023, 0x261A03, 0x1A120E02, 0x13000027
    .word 0x2CFF18, 0x1A151301, 0x1102002F, 0x301A12, 0xFF120B04
    .word 0xB040031, 0x32FF12, 0xFF120B04, 0xB010039, 0x3C1A0F
    .word 0x1A130C05, 0x403003F, 0x4B1A05, 0x1A0D0C0B, 0x801004E
    .word 0x531A11, 0xFFFFFF1A, 0xFF1A0054, 0x58FFFF, 0x1A150B00
    .word 0xFF1A005B, 0x5CFFFF, 0x1A110B01, 0xB01005D, 0x611A11
    .word 0xFF0B0A09, 0xFF1A0063, 0x64FFFF, 0x1A0D0604, 0x13030065
    .word 0x681A15, 0xFF0E1101, 0xB00006B, 0x6C1A0D, 0x1A110705
    .word 0xB04006D, 0x6E1A12, 0x1A0E0901, 0x905006F, 0x731A10
    .word 0x1A110F08, 0xE0A0074, 0x751A18, 0x1A120C04, 0xA040077
    .word 0x7AFF0F, 0xFFFFFF1A, 0xA09007B, 0x7FFF16, 0xFFFFFF1A
    .word 0xFF1A0081, 0x82FFFF, 0xFF0C0802, 0xFF1A0085, 0x87FFFF
    .word 0x1A190300, 0xFF1A008B, 0x94FFFF, 0xFFFFFF1A, 0xFF1A0095
    .word 0xFFFF, 0xFFFFFFFF, 0x1000001, 0x21A02, 0xFF040302
    .word 0x12000004, 0x51A15, 0x1A150907, 0xA030006, 0x71A0E
    .word 0x1A110C02, 0xB040008, 0x9FF13, 0x1A040302, 0xC0B000A
    .word 0xCFF0D, 0x1A070605, 0x403000D, 0xFFF05, 0x1A151204
    .word 0x7010010, 0x12FF0E, 0x1A0D0C0B, 0x2010013, 0x141A03
    .word 0xFF040302, 0x100F0016, 0x171A11, 0xFF040302, 0xD0A0019
    .word 0x1AFF0F, 0xFF151007, 0x601001B, 0x1C1A19, 0xFF18100D
    .word 0xB01001D, 0x1E1A13, 0x1A130D04, 0x903001F, 0x20FF16
    .word 0x1A0C0600, 0x6010021, 0x23FF12, 0x1A030201, 0x5040024
    .word 0x26FF06, 0x1A120E02, 0x13000027, 0x29FF18, 0x1A190601
    .word 0xB09002A, 0x2B1A12, 0x1A161305, 0x1301002C, 0x2D1A15
    .word 0xFF150B01, 0x703002E, 0x2FFF19, 0x1A121102, 0xB040030
    .word 0x31FF12, 0xFF120B04, 0xB040032, 0x33FF12, 0xFF120A02
    .word 0x11060034, 0x35FF12, 0x1A110B00, 0xF010036, 0x37FF12
    .word 0xFF150902, 0x7050038, 0x39FF11, 0x1A0F0B01, 0x1207003A
    .word 0x3CFF0F, 0x1A130C05, 0x701003D, 0x3F1A0B, 0x1A050403
    .word 0x9080040, 0x42FF0A, 0xFF191307, 0x6030043, 0x45FF13
    .word 0x1A020100, 0xF0E0046, 0x48FF10, 0x1A110B03, 0x4020049
    .word 0x4B1A18, 0x1A0D0C0B, 0xC0B004C, 0x4EFF0D, 0x1A110801
    .word 0xE07004F, 0x51FF12, 0x1A110600, 0xFF1A0053, 0x54FFFF
    .word 0xFFFFFF1A, 0x9040055, 0x56FF0C, 0xFF161208, 0xB000058
    .word 0x591A15, 0x1A0F0602, 0xFF1A005B, 0x5CFFFF, 0x1A110B01
    .word 0xB01005D, 0x601A11, 0xFF110C03, 0xFF1A0063, 0x64FFFF
    .word 0x1A0D0604, 0x13030065, 0x681A15, 0xFF0E1101, 0x9060069
    .word 0x6BFF16, 0x1A0D0B00, 0x705006C, 0x6D1A11, 0x1A120B04
    .word 0x901006E, 0x6F1A0E, 0x1A100905, 0x13020070, 0x73FF19
    .word 0x1A110F08, 0xE0A0074, 0x751A18, 0x1A120C04, 0xA040077
    .word 0x78FF0F, 0x1A150704, 0x10080079, 0x7A1A14, 0xFFFFFF1A
    .word 0xA09007B, 0x7CFF16, 0xFF18130D, 0xFF1A007F, 0x81FFFF
    .word 0xFFFFFF1A, 0x8020082, 0x83FF0C, 0xFF140A06, 0xFF1A0085
    .word 0x86FFFF, 0x1A180F09, 0x3000087, 0x881A19, 0xFF16100F
    .word 0xD04008A, 0x8B1A13, 0xFFFFFF1A, 0xFF1A0094, 0x95FFFF
    .word 0xFFFFFF1A, 0xFF1A0096, 0xFFFF, 0xFFFFFFFF, 0x1000001
    .word 0x21A02, 0xFF040302, 0x5040003, 0x4FF06, 0x1A151200
    .word 0x9070005, 0x61A15, 0x1A0E0A03, 0xC020007, 0x81A11
    .word 0xFF130B04, 0x3020009, 0xA1A04, 0xFF0D0C0B, 0x1312000B
    .word 0xCFF14, 0x1A070605, 0x403000D, 0xEFF05, 0xFF0B0A09
    .word 0x1204000F, 0x101A15, 0xFF0E0701, 0x130E0011, 0x12FF16
    .word 0x1A0D0C0B, 0x2010013, 0x141A03, 0xFF040302, 0x4030015
    .word 0x16FF05, 0x1A11100F, 0x3020017, 0x18FF04, 0xFF050403
    .word 0xD0A0019, 0x1AFF0F, 0xFF151007, 0x601001B, 0x1C1A19
    .word 0xFF18100D, 0xB01001D, 0x1E1A13, 0x1A130D04, 0x903001F
    .word 0x20FF16, 0x1A0C0600, 0x6010021, 0x22FF12, 0xFF130602
    .word 0x2010023, 0x241A03, 0xFF060504, 0x1000025, 0x26FF02
    .word 0x1A120E02, 0x13000027, 0x28FF18, 0xFF0E0804, 0x6010029
    .word 0x2A1A19, 0x1A120B09, 0x1305002B, 0x2C1A16, 0x1A151301
    .word 0xB01002D, 0x2EFF15, 0xFF190703, 0x1102002F, 0x301A12
    .word 0xFF120B04, 0xB040031, 0x32FF12, 0xFF120B04, 0xA020033
    .word 0x34FF12, 0xFF121106, 0xB000035, 0x361A11, 0xFF120F01
    .word 0x9020037, 0x38FF15, 0xFF110705, 0xB010039, 0x3A1A0F
    .word 0xFF0F1207, 0x1308003B, 0x3CFF16, 0x1A130C05, 0x701003D
    .word 0x3E1A0B, 0xFF150D00, 0x403003F, 0x401A05, 0xFF0A0908
    .word 0x15140041, 0x42FF16, 0xFF191307, 0x6030043, 0x44FF13
    .word 0xFF110C09, 0x1000045, 0x461A02, 0xFF100F0E, 0x6050047
    .word 0x48FF07, 0x1A110B03, 0x4020049, 0x4A1A18, 0x1A150E0A
    .word 0xC0B004B, 0x4C1A0D, 0xFF0D0C0B, 0x1312004D, 0x4EFF14
    .word 0x1A110801, 0xE07004F, 0x50FF12, 0xFF140500, 0x6000051
    .word 0x521A11, 0xFFFFFF1A, 0xFF1A0053, 0x54FFFF, 0xFFFFFF1A
    .word 0x9040055, 0x56FF0C, 0xFF161208, 0x13060057, 0x58FF15
    .word 0x1A150B00, 0x6020059, 0x5A1A0F, 0x1A131105, 0xFF1A005B
    .word 0x5CFFFF, 0x1A110B01, 0xB01005D, 0x5E1A11, 0xFF151007
    .word 0x130A005F, 0x60FF19, 0xFF110C03, 0xA090061, 0x62FF0B
    .word 0xFF190702, 0xFF1A0063, 0x64FFFF, 0x1A0D0604, 0x13030065
    .word 0x661A15, 0x1A19130F, 0xE080067, 0x68FF18, 0xFF0E1101
    .word 0x9060069, 0x6AFF16, 0xFF191503, 0xB00006B, 0x6C1A0D
    .word 0x1A110705, 0xB04006D, 0x6E1A12, 0x1A0E0901, 0x905006F
    .word 0x701A10, 0xFF191302, 0xC070071, 0x72FF16, 0xFF180D09
    .word 0xF080073, 0x741A11, 0x1A180E0A, 0xC040075, 0x761A12
    .word 0xFF0D0903, 0xA040077, 0x78FF0F, 0x1A150704, 0x10080079
    .word 0x7A1A14, 0xFFFFFF1A, 0xA09007B, 0x7CFF16, 0xFF18130D
    .word 0x1007007D, 0x7EFF14, 0xFF080302, 0xFF1A007F, 0x80FFFF
    .word 0x1A120B00, 0xFF1A0081, 0x82FFFF, 0xFF0C0802, 0xA060083
    .word 0x84FF14, 0xFF18130E, 0xFF1A0085, 0x86FFFF, 0x1A180F09
    .word 0x3000087, 0x881A19, 0xFF16100F, 0xE080089, 0x8AFF14
    .word 0x1A130D04, 0xFF1A008B, 0x8CFFFF, 0xFFFFFF0A, 0xFF03008D
    .word 0x8EFFFF, 0xFFFFFF07, 0xFF0C008F, 0x90FFFF, 0xFF130C09
    .word 0xC0A0091, 0x92FF11, 0x1A0D0802, 0x3010093, 0x941A06
    .word 0xFFFFFF1A, 0xFF1A0095, 0x96FFFF, 0xFFFFFF1A, 0xFF130101
    .word 0x107FFFF, 0xFFFFFF01, 0xFF02010A, 0x10DFFFF, 0xFFFFFF12
    .word 0xFF0A0113, 0x116FFFF, 0xFFFFFF15, 0xFFFF0000, 0x2FFFF
    .word 0xFF040302, 0x5040003, 0x5FF06, 0x1A150907, 0xA030006
    .word 0x71A0E, 0x1A110C02, 0xB040008, 0xAFF13, 0xFF0D0C0B
    .word 0x1312000B, 0xDFF14, 0xFF050403, 0xA09000E, 0x10FF0B
    .word 0xFF0E0701, 0x130E0011, 0x14FF16, 0xFF040302, 0x4030015
    .word 0x17FF05, 0xFF040302
    .word 0x4030018, 0x19FF05, 0xFF0F0D0A, 0x1007001A, 0x1BFF15
    .word 0x1A190601, 0x100D001C, 0x1FFF18, 0xFF160903, 0x6000020
    .word 0x211A0C, 0xFF120601, 0x6020022, 0x24FF13, 0xFF060504
    .word 0x1000025, 0x27FF02, 0xFF181300, 0x8040028, 0x29FF0E
    .word 0x1A190601, 0xB09002A, 0x2B1A12, 0x1A161305, 0x1301002C
    .word 0x2D1A15, 0xFF150B01, 0x703002E, 0x2FFF19, 0x1A121102
    .word 0xA020033, 0x34FF12, 0xFF121106, 0xB000035, 0x361A11
    .word 0xFF120F01, 0x9020037, 0x38FF15, 0xFF110705, 0x1207003A
    .word 0x3BFF0F, 0xFF161308, 0x701003D, 0x3E1A0B, 0xFF150D00
    .word 0x9080040, 0x41FF0A, 0xFF161514, 0x6030043, 0x44FF13
    .word 0xFF110C09, 0xF0E0046, 0x47FF10, 0xFF070605, 0x4020049
    .word 0x4A1A18, 0x1A150E0A, 0xC0B004C, 0x4DFF0D, 0xFF141312
    .word 0xE07004F, 0x50FF12, 0xFF140500, 0x6000051, 0x521A11
    .word 0xFFFFFF1A, 0x12080056, 0x57FF16, 0xFF151306, 0x6020059
    .word 0x5A1A0F, 0x1A131105, 0xB01005C, 0x5D1A11, 0x1A110B01
    .word 0x1007005E, 0x5FFF15, 0xFF19130A, 0xC030060, 0x61FF11
    .word 0xFF0B0A09, 0x7020062, 0x64FF19, 0x1A0D0604, 0x13030065
    .word 0x661A15, 0x1A19130F, 0xE080067, 0x69FF18, 0xFF160906
    .word 0x1503006A, 0x6FFF19, 0x1A100905, 0x13020070, 0x71FF19
    .word 0xFF160C07, 0xD090072, 0x73FF18, 0x1A110F08, 0xC040075
    .word 0x761A12, 0xFF0D0903, 0x7040078, 0x791A15, 0x1A141008
    .word 0x130D007C, 0x7DFF18, 0xFF141007, 0x302007E, 0x7FFF08
    .word 0xFFFFFF1A, 0xB000080, 0x811A12, 0xFFFFFF1A, 0xA060083
    .word 0x84FF14, 0xFF18130E, 0xFF1A0085, 0x86FFFF, 0x1A180F09
    .word 0x100F0088, 0x89FF16, 0xFF140E08, 0xD04008A, 0x8B1A13
    .word 0xFFFFFF1A, 0xFF0A008C, 0x8DFFFF, 0xFFFFFF03, 0xFF07008E
    .word 0x8FFFFF, 0xFFFFFF0C, 0xC090090, 0x91FF13, 0xFF110C0A
    .word 0x8020092, 0x931A0D, 0x1A060301, 0xFF1A0096, 0xC9FFFF
    .word 0xFFFFFF03, 0xFF0C00CA, 0xCBFFFF, 0xFFFFFF0E, 0xFF0000CC
    .word 0xCDFFFF, 0xFFFFFF1A, 0xFF0100CE, 0xCF1AFF, 0xFFFFFF1A
    .word 0xFF1200D0, 0xD1FFFF, 0xFFFFFF1A, 0xFF1100D2, 0xD3FFFF
    .word 0x1AFFFF02, 0xFF0900D4, 0xD5FFFF, 0xFFFFFF04, 0xFF1600D6
    .word 0xD7FFFF, 0xFFFFFF06, 0xFF0B00D8, 0xD91AFF, 0xFFFFFF0D
    .word 0xFF1500DC, 0x101FFFF, 0xFFFFFF13, 0xFF130103, 0x104FFFF
    .word 0xFFFFFF17, 0xFF170106, 0x107FFFF, 0xFFFFFF01, 0xFF010109
    .word 0x10AFFFF, 0xFFFFFF02, 0xFF02010C, 0x10DFFFF, 0xFFFFFF12
    .word 0xFF12010F, 0x110FFFF, 0xFFFFFF0B, 0xFF0B0112, 0x113FFFF
    .word 0xFFFFFF0A, 0xFF0A0115, 0x116FFFF, 0xFFFFFF15, 0xFF150118
    .word 0xFFFF, 0xFFFFFFFF
// end of function sub_804CDB0

.thumb
sub_804D9EC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x804da5c-0x804d9ee-2] // byte_200B190
    bl sub_804DCDC
    str r0, [r5,#(dword_200B1DC - 0x200b190)]
    str r1, [r5,#(dword_200B1E0 - 0x200b190)]
    ldr r0, [pc, #0x804da60-0x804d9f8-4] // dword_804CE8C
    mov r1, #2
    bl sub_804DA68
    cmp r0, #0
    bne loc_804DA12
loc_804DA04:
    ldr r0, [r5,#(dword_200B1DC - 0x200b190)]
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804DAA0
    tst r0, r0
    bne loc_804DA20
loc_804DA12:
    ldr r0, [r5,#(dword_200B1DC - 0x200b190)]
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804DB08
    tst r0, r0
    beq loc_804DA04
loc_804DA20:
    ldr r0, [r5,#(dword_200B1E0 - 0x200b190)]
    mov r1, #5
    bl sub_804DA68
    add r2, r0, #0
    lsl r0, r0, #2
    ldr r7, [pc, #0x804da64-0x804da2c-4] // off_804CE9C
    ldr r0, [r7,r0]
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804DB74
    push {r0,r1}
    bl sub_8019010
    ldrb r2, [r0,#5]
    pop {r0,r1}
    push {r0,r1}
    bl sub_804DBD8
    pop {r0,r1}
    beq loc_804DA54
    ldr r2, [r5,#(dword_200B1DC - 0x200b190)]
    bl sub_804DC04
    b locret_804DA5A
loc_804DA54:
    ldr r0, [r5,#(dword_200B1DC - 0x200b190)]
    bl sub_804DC80
locret_804DA5A:
    pop {r4-r7,pc}
off_804DA5C:    .word byte_200B190
off_804DA60:    .word dword_804CE8C
off_804DA64:    .word off_804CE9C
// end of function sub_804D9EC

.thumb
sub_804DA68:
    push {r5,lr}
    push {r0,r1}
    bl sub_8001AE0
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    pop {r6,r7}
    sub r7, #1
    push {r6,r7}
    mov r1, #0
loc_804DA7C:
    ldrb r3, [r6,r7]
    add r1, r1, r3
    sub r7, #1
    bge loc_804DA7C
    push {r6}
    svc 6
    pop {r6}
    mov r2, #0
    pop {r6,r7}
    mov r0, #0
loc_804DA90:
    ldrb r3, [r6,r2]
    add r0, r0, r3
    cmp r0, r1
    bge loc_804DA9C
    add r2, #1
    b loc_804DA90
loc_804DA9C:
    add r0, r2, #0
    pop {r5,pc}
// end of function sub_804DA68

.thumb
sub_804DAA0:
    push {r5,lr}
    mov r2, r8
    mov r3, r9
    push {r2,r3}
    mov r2, #0
    str r2, [r1]
    str r2, [r1,#4]
    mov r8, r1
    mov r9, r0
    ldr r0, [pc, #0x804dbd0-0x804dab2-2] // dword_2028000
    mov r1, #0x10
    lsl r1, r1, #8
    bl f900_8000930
    mov r6, r9
    ldr r7, [pc, #0x804dbd0-0x804dabe-2] // dword_2028000
    mov r3, #0
loc_804DAC2:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804DAF8
    push {r0,r3}
    ldr r1, [pc, #0x804db70-0x804daca-2] // =0x16C0
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0,r3}
    beq loc_804DAF2
    strh r0, [r7]
    strb r3, [r7,#2]
    push {r0,r1,r3,r6,r7}
    bl sub_8019010
    ldrb r2, [r0,#5]
    mov r4, r8
    ldrb r6, [r4,r2]
    add r6, #1
    strb r6, [r4,r2]
    pop {r0,r1,r3,r6,r7}
    strb r2, [r7,#3]
    add r7, #4
loc_804DAF2:
    add r3, #1
    add r6, #6
    b loc_804DAC2
loc_804DAF8:
    ldr r6, [pc, #0x804dbd0-0x804daf8-4] // dword_2028000
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r5,pc}
// end of function sub_804DAA0

.thumb
sub_804DB08:
    push {r5,lr}
    mov r2, r8
    mov r7, r9
    push {r2,r7}
    mov r2, #0
    str r2, [r1]
    str r2, [r1,#4]
    mov r8, r1
    mov r9, r0
    ldr r0, [pc, #0x804dbd0-0x804db1a-2] // dword_2028000
    mov r1, #0x10
    lsl r1, r1, #8
    bl f900_8000930
    mov r6, r9
    ldr r7, [pc, #0x804dbd0-0x804db26-2] // dword_2028000
loc_804DB28:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804DB5E
    push {r0,r3,r6,r7}
    ldr r1, [pc, #0x804db70-0x804db30-4] // =0x16C0
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0,r3,r6,r7}
    bne loc_804DB58
    strh r0, [r7]
    strb r3, [r7,#2]
    push {r0,r1,r3,r6,r7}
    bl sub_8019010
    ldrb r2, [r0,#5]
    mov r4, r8
    ldrb r6, [r4,r2]
    add r6, #1
    strb r6, [r4,r2]
    pop {r0,r1,r3,r6,r7}
    strb r2, [r7,#3]
    add r7, #4
loc_804DB58:
    add r3, #1
    add r6, #6
    b loc_804DB28
loc_804DB5E:
    ldr r6, [pc, #0x804dbd0-0x804db5e-2] // dword_2028000
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    pop {r2,r7}
    mov r8, r2
    mov r9, r7
    pop {r5,pc}
    .byte 0, 0
off_804DB70:    .word 0x16C0
// end of function sub_804DB08

.thumb
sub_804DB74:
    push {r5,lr}
    mov r7, r8
    push {r7}
    mov r7, #0
loc_804DB7C:
    ldrb r3, [r0,r7]
    ldrb r4, [r1,r3]
    tst r4, r4
    bne loc_804DB88
    add r7, #1
    b loc_804DB7C
loc_804DB88:
    mov r8, r3
    ldr r0, [pc, #0x804dbd4-0x804db8a-2] // dword_2027000
    mov r1, #0x10
    lsl r1, r1, #8
    bl f900_8000930
    ldr r0, [r5,#0x48]
    mov r2, #0
    ldr r6, [pc, #0x804dbd0-0x804db98-4] // dword_2028000
    ldr r7, [pc, #0x804dbd4-0x804db9a-2] // dword_2027000
loc_804DB9C:
    ldrb r3, [r6,#3]
    cmp r3, r8
    bne loc_804DBAA
    ldr r3, [r6]
    str r3, [r7]
    add r7, #4
    add r2, #1
loc_804DBAA:
    add r6, #4
    sub r0, #1
    bgt loc_804DB9C
    str r2, [r5,#0x48]
    bl sub_8001AE0
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    ldr r1, [r5,#0x48]
    svc 6
    ldr r7, [pc, #0x804dbd4-0x804dbbe-2] // dword_2027000
    lsl r0, r1, #2
    add r7, r7, r0
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    pop {r7}
    mov r8, r7
    pop {r5,pc}
    .byte 0, 0
off_804DBD0:    .word dword_2028000
off_804DBD4:    .word dword_2027000
// end of function sub_804DB74

.thumb
sub_804DBD8:
    push {r5,lr}
    cmp r2, #3
    blt loc_804DBFC
    bl sub_801916C
    cmp r0, #4
    blt loc_804DBE8
    mov r0, #4
loc_804DBE8:
    ldr r7, [pc, #0x804dc00-0x804dbe8-4] // off_804CECC
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r1, #2
    bl sub_804DA68
    tst r0, r0
    bne loc_804DBFC
    mov r0, #0
    pop {r5,pc}
loc_804DBFC:
    mov r0, #1
    pop {r5,pc}
off_804DC00:    .word off_804CECC
// end of function sub_804DBD8

.thumb
sub_804DC04:
    push {r0,r5,lr}
loc_804DC06:
    ldrh r7, [r2]
    cmp r7, r0
    beq loc_804DC10
    add r2, #6
    b loc_804DC06
loc_804DC10:
    add r7, r2, #0
    mov r2, #2
    mov r3, #0
    mov r4, #0
loc_804DC18:
    ldrb r1, [r7,r2]
    cmp r1, #0xff
    beq loc_804DC42
    push {r0-r4,r7}
    bl sub_8019154
    tst r0, r0
    pop {r0-r4,r7}
    beq loc_804DC34
    add r6, r3, #0
    add r6, #0x38 
    strb r1, [r5,r6]
    add r3, #1
    b loc_804DC3C
loc_804DC34:
    add r6, r4, #0
    add r6, #0x40 
    strb r1, [r5,r6]
    add r4, #1
loc_804DC3C:
    add r2, #1
    cmp r2, #5
    blt loc_804DC18
loc_804DC42:
    ldr r0, [pc, #0x804dc78-0x804dc42-2] // dword_804CEEC
    mov r1, #2
    push {r3,r4}
    bl sub_804DA68
    pop {r3,r4}
    tst r0, r0
    beq loc_804DC64
    tst r3, r3
    beq loc_804DC68
loc_804DC56:
    ldr r0, [pc, #0x804dc7c-0x804dc56-2] // dword_804CEEC
    add r1, r3, #0
    bl sub_804DA68
    add r0, #0x38 
    ldrb r1, [r5,r0]
    b locret_804DC74
loc_804DC64:
    tst r4, r4
    beq loc_804DC56
loc_804DC68:
    ldr r0, [pc, #0x804dc7c-0x804dc68-4] // dword_804CEEC
    add r1, r4, #0
    bl sub_804DA68
    add r0, #0x40 
    ldrb r1, [r5,r0]
locret_804DC74:
    pop {r0,r5,pc}
    .balign 4, 0x00
off_804DC78:    .word dword_804CEEC
dword_804DC7C:    .word 0x804CEEE
// end of function sub_804DC04

.thumb
sub_804DC80:
    push {r5,lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    ldr r0, [pc, #0x804dcd8-0x804dc88-4] // dword_2028000
    mov r1, #0x10
    lsl r1, r1, #8
    bl f900_8000930
    mov r6, r8
    ldr r7, [pc, #0x804dcd8-0x804dc94-4] // dword_2028000
loc_804DC96:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804DCB4
    mov r1, #2
loc_804DC9E:
    ldrb r3, [r6,r1]
    cmp r3, #0xff
    beq loc_804DCB0
    strh r0, [r7]
    strb r3, [r7,#2]
    add r7, #4
    add r1, #1
    cmp r1, #5
    ble loc_804DC9E
loc_804DCB0:
    add r6, #6
    b loc_804DC96
loc_804DCB4:
    ldr r6, [pc, #0x804dcd8-0x804dcb4-4] // dword_2028000
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    bl sub_8001AE0
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    ldr r1, [r5,#0x48]
    svc 6
    ldr r7, [pc, #0x804dcd8-0x804dcc8-4] // dword_2028000
    lsl r0, r1, #2
    add r7, r7, r0
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    pop {r7}
    mov r8, r7
    pop {r5,pc}
off_804DCD8:    .word dword_2028000
// end of function sub_804DC80

.thumb
sub_804DCDC:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r1, [r3,#4]
    ldrb r2, [r3,#5]
    lsl r1, r1, #8
    orr r1, r2
    ldr r2, [pc, #0x804dd04-0x804dce8-4] // dword_804DD08
    mov r3, #0
loc_804DCEC:
    ldr r0, [r2]
    cmp r0, r1
    bne loc_804DCF8
    ldr r0, [r2,#4]
    ldr r1, [r2,#8]
    b locret_804DD00
loc_804DCF8:
    add r2, #0xc
    add r3, #0xc
    cmp r3, #0x30 
    blt loc_804DCEC
locret_804DD00:
    mov pc, lr
    .balign 4, 0x00
off_804DD04:    .word dword_804DD08
dword_804DD08:    .word 0x6
off_804DD0C:    .word dword_804CEEC+8
off_804DD10:    .word dword_804CE8C+4
dword_804DD14:    .word 0x9407, 0x804D692, 0x804CE95, 0x401, 0x804D05C, 0x804CE95
    .word 0x101, 0x804D2E4, 0x804CE95, 0xB0FF02, 0x61184F45, 0x3E184FE9
    .word 0xB0FF02, 0xE9091890, 0x45868661, 0xB1FF02, 0xCC4F9061, 0xE9E90918
    .word 0xB1FF02, 0xE961E918, 0x9864545, 0xB2FF02, 0x90CC90CC, 0xE93E8609
    .word 0xB2FF02, 0x4F61E961, 0xCC3E864F, 0xB3FF02, 0x4F86CC3E, 0x18E9E961
    .word 0xB3FF02, 0x4F099045, 0x189009E9, 0xB4FF02, 0x9E909CC, 0xE93E4FE9
    .word 0xB4FF02, 0xE9450986, 0x3E90E961, 0xB5FF02, 0x9CC3E3E, 0x903E8690
    .word 0xB5FF02, 0x96190E9, 0xCCCC86CC, 0xCC0303, 0xCC901809, 0x93E453E
    .word 0xD40603, 0x3E45CC3E, 0x909018E9, 0x1140403, 0x945183E, 0x90CCE961
    .word 0x1180503, 0xE9908690, 0xCC098690, 0x1280303, 0xE9CC8609, 0x3E3E4561
    .word 0x12C0503, 0x869018CC, 0x61CC9018, 0x1300603, 0x9453E45, 0x4F3E183E
    .word 0x1780103, 0x9613E86, 0xCC904F86, 0x1780203, 0x454F09E9, 0xE9860961
    .word 0xB1300, 0x3E3E614F, 0xCCE93EE9, 0xC0600, 0xE9CC4F90, 0x8661E9CC
    .word 0xE0900, 0x3E4F0918, 0x18868690, 0x411500, 0x863E0909, 0x4F459061
    .word 0x470600, 0x453E6161, 0x45E909E9, 0x370200, 0xE94F863E, 0x6118904F
    .word 0x601100, 0x3E45CC86, 0x4518CC61, 0x720900, 0x3E094F4F, 0xCCCC9086
    .word 0x7F1A00, 0xE93EE945, 0x9094F18, 0xDB0600, 0xE9CC9009, 0xE9E93E86
    .word 0xDA1900, 0xE909CC09, 0x9864590, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x86CC453E, 0x94F1890, 0xE961, 0x4F18B5E0, 0x1C044E18, 0x78382500
    .word 0xD02228FF, 0x33041C3B, 0x5C982200, 0x5C715CA1, 0xD1034288, 0x2A083201
    .word 0xE002DBF7, 0x370C3501, 0x4C0FE7ED, 0x1C201964, 0xF876F7D7, 0x1C20D107
    .word 0xF848F7D7, 0x78392001, 0x787B887A, 0x2002BDE0, 0x22FF21FF, 0x24FF23FF
    .word 0x2000BDE0, 0x22FF21FF, 0x24FF23FF, 0xBDE0, 0x804DD38, 0x804DEC4
    .word 0x1EC0, 0x2A00, 0x5400
// end of function sub_804DCDC

.thumb
sub_804DF48:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x2c]
    mov r1, #0xd4
    bl f900_8000930
    mov r0, #0xc8
    bl sub_8053990
    pop {pc}
// end of function sub_804DF48

.thumb
sub_804DF5C:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_804E3A8
    ldr r1, [pc, #0x804df84-0x804df64-4] // unk_2030000
    bl sub_8111700
    bl sub_804E414
    ldr r1, [pc, #0x804df88-0x804df6e-2] // dword_2033800
    bl sub_8111700
    mov r0, #1
    bl sub_804E3A8
    ldr r1, [pc, #0x804df8c-0x804df7a-2] // dword_2034800
    bl sub_8111700
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804DF84:    .word unk_2030000
off_804DF88:    .word dword_2033800
off_804DF8C:    .word dword_2034800
// end of function sub_804DF5C

.thumb
sub_804DF90:
    push {r4,r5,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x804df9c-0x804df94-4] // unk_2030000
    bl sub_804E2A4
    pop {r4,r5,pc}
off_804DF9C:    .word unk_2030000
// end of function sub_804DF90

.thumb
sub_804DFA0:
    push {r4,r5,lr}
    bl sub_804E2A4
    ldr r0, [pc, #0x804dfb8-0x804dfa6-2] // unk_804DFBC
    mov r1, r10
    ldr r1, [r1,#0x2c]
    add r1, #0x68 
    mov r2, #8
    bl f900_800097A
    pop {r4,r5,pc}
    .balign 4, 0x00
off_804DFB8:    .word unk_804DFBC
unk_804DFBC:    .byte 0x7C 
    .byte 0
    .byte 0x7F 
    .byte 0
    .byte 0x7D 
    .byte 0
    .byte 0x7E 
    .byte 0
// end of function sub_804DFA0

loc_804DFC4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    ldrb r0, [r5]
    tst r0, r0
    bne loc_804DFD2
    pop {r4-r7,pc}
loc_804DFD2:
    mov r0, #0x40 
    bl sub_80539A0
    beq loc_804DFE4
    mov r1, #0
    strh r1, [r5,#0x22]
    strh r1, [r5,#0x26]
    strh r1, [r5,#0x24]
    b loc_804DFFA
loc_804DFE4:
    ldr r0, [pc, #0x804e18c-0x804dfe4-4] // =0x135
    bl sub_8053990
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r1, [r7]
    strh r1, [r5,#0x22]
    ldrh r1, [r7,#2]
    strh r1, [r5,#0x26]
    ldrh r1, [r7,#4]
    strh r1, [r5,#0x24]
loc_804DFFA:
    ldr r0, [r5,#0x78]
    cmp r0, #0
    beq loc_804E006
    sub r0, #1
    str r0, [r5,#0x78]
    b loc_804E024
loc_804E006:
    mov r0, #1
    bl sub_804E568
    bne loc_804E024
    bl sub_804E190
    beq loc_804E024
    mov r0, #0
    strb r0, [r5,#0x11]
    str r0, [r5,#0x74]
    mov r0, #1
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#2]
loc_804E024:
    ldr r4, [r5,#0x2c]
loc_804E026:
    ldrb r1, [r4]
    cmp r1, #0xe5
    bmi loc_804E03E
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r2, [pc, #0x804e150-0x804e030-4] // off_804E7F8
    ldr r1, [r2,r1]
    mov lr, pc
    bx r1
    bl sub_804E7E0
    b loc_804E0A2
loc_804E03E:
    ldrb r0, [r5,#0x11]
    tst r0, r0
    bne loc_804E052
    ldr r0, [pc, #0x804e188-0x804e044-4] // =0x454D0B00
    bl sub_804E568
    bne loc_804E06E
    ldr r0, [pc, #0x804e188-0x804e04c-4] // =0x454D0B00
    bl sub_804E550
loc_804E052:
    mov r0, #0
    ldrb r2, [r5,#9]
    cmp r2, #0
    bgt loc_804E09E
    ldrb r2, [r5,#8]
    strb r2, [r5,#9]
    mov r0, #0x40 
    bl sub_804E568
    bne loc_804E06E
    mov r2, #0x68 
    ldrh r0, [r5,r2]
    bl f500_8000558
loc_804E06E:
    cmp r1, #0xe4
    beq loc_804E086
    mov r0, #0
    ldr r6, [r5,#0x7c]
    ldr r3, [pc, #0x804e170-0x804e076-2] // =0x454D0B00
    mov lr, pc
    bx r3
    bl sub_804E7A4
    add r4, #1
    mov r0, #0
    b loc_804E0A2
loc_804E086:
    ldrb r1, [r4,#1]
    add r1, #0xe4
    mov r0, #0
    ldr r6, [r5,#0x7c]
    ldr r3, [pc, #0x804e170-0x804e08e-2] // =0x454D0B00
    mov lr, pc
    bx r3
    bl sub_804E7A4
    add r4, #2
    mov r0, #0
    b loc_804E0A2
loc_804E09E:
    sub r2, #1
    strb r2, [r5,#9]
loc_804E0A2:
    str r4, [r5,#0x2c]
    ldrh r2, [r5,#0x3e]
    mov r3, #1
    and r2, r3
    ldr r3, [r5,#0x74]
    add r3, r3, r2
    cmp r3, #0
    beq loc_804E026
    ldrb r3, [r5,#0x11]
    add r3, r3, r2
    cmp r3, #0
    beq loc_804E026
    cmp r0, #0
    bne loc_804E026
    mov r0, #1
    bl sub_804E55C
    ldr r0, [pc, #0x804e168-0x804e0c4-4] // =0x454D0B00
    bl sub_804E568
    bne loc_804E0D0
    bl sub_804E248
loc_804E0D0:
    mov r0, #0
    strb r0, [r5,#0x12]
    str r0, [r5,#0x70]
    strb r0, [r5,#0xf]
    mov r1, #0x66 
    strh r0, [r5,r1]
    ldr r4, [r5,#0x34]
loc_804E0DE:
    ldr r1, [r5,#0x2c]
    cmp r1, r4
    beq loc_804E110
    ldrb r1, [r4]
    cmp r1, #0xe5
    bmi loc_804E0F8
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r2, [pc, #0x804e154-0x804e0ee-2] // =0x804E864
    ldr r1, [r2,r1]
    mov lr, pc
    bx r1
    b loc_804E0DE
loc_804E0F8:
    ldr r3, [pc, #0x804e184-0x804e0f8-4] // =0x454D0B00
    lsl r2, r1, #2
    ldr r2, [r3,r2]
    ldr r0, [r5,#0x70]
    add r0, r0, r2
    str r0, [r5,#0x70]
    cmp r1, #0xe4
    beq loc_804E10C
    add r4, #1
    b loc_804E0DE
loc_804E10C:
    add r4, #2
    b loc_804E0DE
loc_804E110:
    mov r0, #0x80
    bl sub_80539A0
    beq loc_804E144
    ldr r0, [pc, #0x804e168-0x804e118-4] // =0x454D0B00
    bl sub_804E568
    bne loc_804E126
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_804E144
loc_804E126:
    ldrb r0, [r5,#0xf]
    mov r2, #0x3d 
    ldrb r1, [r5,r2]
    cmp r1, #2
    beq loc_804E140
    tst r0, r0
    beq loc_804E136
    ldrb r0, [r5,#2]
loc_804E136:
    ldr r1, [pc, #0x804e16c-0x804e136-2] // =0x454D0B00
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#2]
loc_804E140:
    bl sub_804E1A8
loc_804E144:
    bl sub_804E704
    bl sub_804E45C
    pop {r4-r7,pc}
    .byte 0
    .byte 0
off_804E150:    .word off_804E7F8
dword_804E154:    .word 0x804E864
    .word 0x804E15C
dword_804E15C:    .word 0x454D0B00, 0x25205353, 0x44, 0x100, 0x3006AE1, 0x3006A49
    .word 0x804E178, 0x454D0B00, 0x25205353, 0x2A2044, 0x80515B8, 0x800
off_804E18C:    .word 0x138
.thumb
sub_804E190:
    push {lr}
    mov r0, #1
    mov r2, #2
    ldrh r1, [r5,#0x22]
    tst r2, r1
    bne locret_804E1A6
    mov r2, #1
    ldrh r1, [r5,#0x26]
    tst r2, r1
    bne locret_804E1A6
    mov r0, #0
locret_804E1A6:
    pop {pc}
// end of function sub_804E190

.thumb
sub_804E1A8:
    push {r4,r6,r7,lr}
    mov r1, r12
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r8
    push {r1}
    mov r1, r10
    push {r1}
    ldrb r0, [r5,#0x18]
    mov r10, r0
    ldrb r0, [r5,#0x19]
    mov r8, r0
    ldr r6, [pc, #0x804e224-0x804e1c2-2] // =0xE2B8
    mov r12, r6
    ldr r6, [pc, #0x804e228-0x804e1c6-2] // dword_804E22C
    mov r9, r6
    ldr r4, [pc, #0x804e238-0x804e1ca-2] // dword_804E23C
    mov r7, #(dword_804E234 - 0x804e22c)
loc_804E1CE:
    mov r0, #5
loc_804E1D0:
    push {r0}
    add r3, r0, #0
    mov r1, #0x20 
    mul r1, r3
    mov r2, r10
    add r1, r1, r2
    mov r0, r9
    ldr r0, [r0,r7]
    lsl r1, r1, #0x10
    orr r0, r1
    lsl r2, r7, #2
    mov r1, r8
    add r1, r1, r2
    orr r0, r1
    add r6, r4, #0
    ldr r6, [r6,r7]
    mov r1, r12
    mov r2, #6
    mul r2, r7
    lsl r2, r2, #1
    lsl r3, r6
    add r2, r2, r3
    add r1, r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_804E1A8

.thumb
sub_804E206:
    pop {r0}
    sub r0, #1
    bge loc_804E1D0
    sub r7, #4
    bge loc_804E1CE
    pop {r1}
    mov r10, r1
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r12, r1
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_804E224:    .word 0xE2B8
off_804E228:    .word dword_804E22C
dword_804E22C:    .word 0x80004000, 0x80004000
dword_804E234:    .word 0x40004000
off_804E238:    .word dword_804E23C
dword_804E23C:    .word 0x3, 0x3
dword_804E244:    .word 0x2
// end of function sub_804E206

.thumb
sub_804E248:
    push {lr}
    ldr r3, [pc, #0x804e26c-0x804e24a-2] // off_804E274
    ldrb r0, [r5,#0x15]
    lsl r0, r0, #4
    add r3, r3, r0
    ldrb r1, [r5,#0x10]
    lsl r1, r1, #2
    ldr r3, [r3,r1]
    push {r5}
    ldrb r0, [r5,#0x1c]
    ldrb r1, [r5,#0x1d]
    mov r2, #0
    ldrb r4, [r5,#0x1e]
    ldrb r5, [r5,#0x1f]
    bl sub_8001DDC
// end of function sub_804E248

    pop {r5}
    pop {pc}
off_804E26C:    .word off_804E274
    .word off_804E284
off_804E274:    .word dword_8753B34
    .word unk_8753D14
    .word loc_8753EF4
    .word loc_87540D4
off_804E284:    .word dword_80535C0
    .word unk_8053700
    .word unk_8053840
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0
.thumb
sub_804E294:
    push {r4,r5,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x804e2a0-0x804e298-4] // dword_2034800
    bl sub_804E2A4
    pop {r4,r5,pc}
off_804E2A0:    .word dword_2034800
// end of function sub_804E294

.thumb
sub_804E2A4:
    push {r4-r6,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    ldr r2, [r5,#0x4c]
    ldr r3, [r5,#0x50]
    ldr r4, [r5,#0x54]
    ldr r6, [r5,#0x58]
    push {r0-r3}
    mov r0, r10
    ldr r0, [r0,#0x2c]
    mov r1, #0xd4
    bl f900_8000930
    pop {r0-r3}
    str r2, [r5,#0x4c]
    str r3, [r5,#0x50]
    str r4, [r5,#0x54]
    str r6, [r5,#0x58]
    str r0, [r5,#0x30]
    strb r1, [r5,#1]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    str r0, [r5,#0x2c]
    str r0, [r5,#0x34]
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#8]
    ldr r0, [pc, #0x804e390-0x804e2de-2] // unk_200CF20
    str r0, [r5,#0x38]
    mov r0, #1
    strb r0, [r5,#0xc]
    mov r0, #1
    str r0, [r5,#0x74]
    strb r0, [r5,#0x11]
    mov r0, #4
    str r0, [r5,#0x78]
    ldr r0, [pc, #0x804e394-0x804e2f0-4] // dword_804E398
    add r1, r5, #0
    add r1, #0x68 
    mov r2, #8
    bl f900_800097A
    mov r1, #0xc
    strb r1, [r5,#0x1d]
    mov r2, #0x1e
    strb r2, [r5,#0x1e]
    mov r3, #8
    strb r3, [r5,#0x1f]
    mov r0, #0xe2
    strb r0, [r5,#0x1a]
    mov r1, #0x8d
    strb r1, [r5,#0x1b]
    mov r0, #0x33 
    strb r0, [r5,#0x18]
    mov r0, #0x6c 
    strb r0, [r5,#0x19]
    mov r0, #0x19
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #0x80
    mov r1, #0x88
    str r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x804e3a4-0x804e326-2] // dword_200A600
    str r0, [r1]
    mov r0, #0x80
    bl sub_8053980
    bl unk_80539C4
    ldr r0, [pc, #0x804e3a0-0x804e334-4] // =0xFF
    bl sub_804E550
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    mov r0, #0xd
    mov r2, #0x90
    str r0, [r5,r2]
    ldr r0, [pc, #0x804e374-0x804e348-4] // unk_8753894
    ldr r1, [pc, #0x804e378-0x804e34a-2] // =0x600D580
    ldr r2, [pc, #0x804e37c-0x804e34c-4] // =0x280
    bl loc_8000874
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1]
    cmp r1, #0x18
    beq loc_804E366
    ldr r0, [pc, #0x804e380-0x804e35c-4] // dword_8753B14
    ldr r1, [pc, #0x804e384-0x804e35e-2] // unk_3002C30
    mov r2, #0x20 
    bl f900_80009A0
loc_804E366:
    ldr r0, [pc, #0x804e388-0x804e366-2] // dword_869F784
    ldr r1, [pc, #0x804e38c-0x804e368-4] // unk_3002800
    mov r2, #0x20 
    bl f900_80009A0
    pop {r4-r6,pc}
    .balign 4, 0x00
off_804E374:    .word unk_8753894
dword_804E378:    .word 0x600D580
off_804E37C:    .word 0x280
off_804E380:    .word dword_8753B14
off_804E384:    .word unk_3002C30
off_804E388:    .word dword_869F784
off_804E38C:    .word unk_3002800
off_804E390:    .word unk_200CF20
off_804E394:    .word dword_804E398
dword_804E398:    .word 0x680065
    .byte 0x66 
    .byte 0
    .byte 0x67 
    .byte 0
off_804E3A0:    .word 0x100
off_804E3A4:    .word dword_200A600
// end of function sub_804E2A4

.thumb
sub_804E3A8:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    ldrb r2, [r2,#6]
    ldr r3, [pc, #0x804e404-0x804e3b6-2] // byte_804E408
loc_804E3B8:
    ldrb r7, [r3]
    cmp r2, r7
    bge loc_804E3C2
    add r3, #2
    b loc_804E3B8
loc_804E3C2:
    ldrb r2, [r3,#1]
    mov r6, #0
    cmp r0, #0x80
    bmi loc_804E3CE
    mov r6, #4
    sub r0, #0x80
loc_804E3CE:
    ldr r5, [pc, #0x804e3f0-0x804e3ce-2] // off_804E3F4
    lsl r4, r4, #3
    add r5, r5, r4
    ldr r3, [r5,r6]
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    tst r4, r4
    bne loc_804E3E6
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r3, [r3]
loc_804E3E6:
    lsl r2, r2, #2
    add r3, r3, r2
    ldr r0, [r3]
    pop {r4-r7,pc}
    .byte 0, 0
off_804E3F0:    .word off_804E3F4
off_804E3F4:    .word off_8052468
    .word off_8052498
    .word off_8052EDC
    .word off_8052EF4
off_804E404:    .word byte_804E408
byte_804E408:    .byte 0x60
byte_804E409:    .byte 0x2
    .hword 0x148
    .word 0x2200030, 0x110
// end of function sub_804E3A8

.thumb
sub_804E414:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    ldrb r2, [r2,#6]
    mov r6, #0
    cmp r0, #0x80
    bmi loc_804E42A
    mov r6, #4
    sub r0, #0x80
loc_804E42A:
    ldr r5, [pc, #0x804e43c-0x804e42a-2] // off_804E440
    ldr r3, [r5,r6]
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r0, [r3]
    pop {r4-r7,pc}
off_804E43C:    .word off_804E440
off_804E440:    .word off_8052480
    .word off_80524EC
// end of function sub_804E414

.thumb
sub_804E448:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5]
    mov r0, #0xc8
    bl sub_8053990
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_804E448

.thumb
sub_804E45C:
    push {r4,r6,lr}
    mov r0, #0x20 
    bl sub_804E568
    cmp r0, #0
    beq locret_804E4B6
    ldrb r4, [r5,#3]
    ldr r1, [pc, #0x804e4c4-0x804e46a-2] // off_804E4C8
    lsl r2, r4, #2
    ldr r6, [r1,r2]
    ldrb r0, [r5,#0x17]
    ldrb r0, [r6,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x804e4b8-0x804e476-2] // dword_868DBA4
    lsl r1, r4, #7
    mov r3, #3
    mul r1, r3
    add r2, r2, r1
    add r0, r0, r2
    ldr r1, [pc, #0x804e4bc-0x804e482-2] // =0x6017F00
    mov r2, #0x80
    bl loc_8000874
    ldrb r0, [r5,#0x1a]
    ldrb r1, [r5,#0x1b]
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#0x17]
    add r2, #1
    ldrb r1, [r6,r2]
    cmp r1, #0xff
    bne loc_804E4A0
    mov r2, #1
    ldrh r1, [r3]
loc_804E4A0:
    strb r2, [r5,#0x17]
    ldr r2, [pc, #0x804e4c0-0x804e4a2-2] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x804e4d0-0x804e4a6-2] // =0xE3F8
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #4
    bl sub_8025BD8
locret_804E4B6:
    pop {r4,r6,pc}
off_804E4B8:    .word dword_868DBA4
dword_804E4BC:    .word 0x6017F00
dword_804E4C0:    .word 0x40000000
off_804E4C4:    .word off_804E4C8
off_804E4C8:    .word dword_804E4D4
    .word dword_804E4D4
dword_804E4D0:    .word 0xE3F8
dword_804E4D4:    .word 0x0
    .word 0x1010000, 0x1010101, 0x2020202, 0xFF0202, 0x0
    .word 0x0, 0x0
    .word 0x1010101
    .word 0x1010101
    .word 0xFF010101
dword_804E500:    .word 0x7069B500
    .word 0x496B28
    .word 0x18405A41
    .word 0x636862E8
    .word 0x21001C04
    .word 0x66697129
    .word 0x70A974A9
    .word 0x203D75E9
    .word 0x20805429, 0x21015029, 0x7A296769, 0x7E287469, 0x31941C29
    .word 0xF0057008, 0x4803FA45, 0x43084903, 0xF80CF000
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
    .word 0x400
    .word 0x800
// end of function sub_804E45C

.thumb
sub_804E550:
    push {r1}
    ldrh r1, [r5,#0x3e]
    orr r1, r0
    strh r1, [r5,#0x3e]
    pop {r1}
    mov pc, lr
// end of function sub_804E550

.thumb
sub_804E55C:
    push {r1}
    ldrh r1, [r5,#0x3e]
    bic r1, r0
    strh r1, [r5,#0x3e]
    pop {r1}
    mov pc, lr
// end of function sub_804E55C

.thumb
sub_804E568:
    push {r1}
    ldrh r1, [r5,#0x3e]
    and r0, r1
    pop {r1}
    mov pc, lr
    .balign 4, 0x00
// end of function sub_804E568

.thumb
sub_804E574:
    push {lr}
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x804e5dc-0x804e578-4] // dword_804E5E0+2
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x804e5d4-0x804e57e-2] // dword_868DD04+32
    add r0, r0, r2
    ldr r1, [pc, #0x804e5d8-0x804e582-2] // =0x6017F80
    mov r2, #0x80
    bl loc_8000874
    add r2, r5, #0
    add r2, #0x94
    ldrb r1, [r2]
    ldr r0, [r5,#0x70]
    add r0, r0, r1
    sub r0, #6
    ldrb r1, [r5,#0xf]
    mov r3, #0xe
    mul r1, r3
    ldrb r2, [r5,#0x19]
    add r1, r1, r2
    sub r1, #1
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#0x16]
    ldr r3, [pc, #0x804e5dc-0x804e5a8-4] // dword_804E5E0+2
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_804E5B6
    mov r2, #1
    ldrh r1, [r3]
loc_804E5B6:
    strb r2, [r5,#0x16]
    ldr r2, [pc, #0x804e5d0-0x804e5b8-4] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x804e5e0-0x804e5bc-4] // =0xE3FC
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #4
    bl sub_8025BD8
    pop {pc}
    .byte 0, 0
dword_804E5D0:    .word 0x40000000
off_804E5D4:    .word dword_868DD04+0x20
dword_804E5D8:    .word 0x6017F80
off_804E5DC:    .word dword_804E5E0+2
dword_804E5E0:    .word 0xE3FC
    .byte 0, 0, 0, 0
    .word 0x1010101, 0x2020101, 0x2020202, 0xFF, 0x4803B500
    .word 0x22804903, 0xF938F7B2, 0xBD00, 0x868DEA4, 0x6017F80
    .word 0x7DA8B550, 0x5C084922, 0x4A1F01C0, 0x491F1880, 0xF7B22280
    .word 0x7E29F927, 0x18406F28, 0x7BE93005, 0x4359230E, 0x18897E6A
    .word 0x4003902, 0x1C044308, 0x4E14B420, 0x491C4330, 0x2922200
    .word 0x22004311, 0xF7D72301, 0x1C20FAC1, 0x7CE92408, 0x5CED2380
    .word 0x42A93D01, 0x2412D100, 0x19000424, 0x49134330, 0x2B62600
    .word 0x23014331, 0xFAAEF7D7, 0x7DAABC20, 0x32014B07, 0x29FF5C99
    .word 0x2201D101, 0x75AA8819, 0xBD50, 0x8000, 0x868DEA4
    .word 0x6017F80, 0x804E6A4, 0x0, 0x0
    .word 0x1010100
    .word 0x1010101
    .word 0xFF0101
    .word 0xE3FC
    .word 0xE3FE
// end of function sub_804E574

.thumb
sub_804E6C0:
    push {r5,lr}
    push {r5}
    add r5, #0x9c
    push {r0,r1}
    bl sub_80028D2
    pop {r0,r1}
    strb r1, [r5,#4]
    mov r1, #3
    strh r1, [r5,#0xa]
    mov r1, #0
    strb r1, [r5]
    mov r1, #6
    strb r1, [r5,#3]
    mov r0, #0
    strh r0, [r5,#0x14]
    pop {r7}
    mov r2, #0x90
    ldr r0, [r7,r2]
    lsl r0, r0, #4
    strb r0, [r5,#0x15]
    bl sub_800282E
// end of function sub_804E6C0

.thumb
sub_804E6EE:
    ldr r1, [pc, #0x804e700-0x804e6ee-2] // =0x3C0
    strh r1, [r5,#8]
    mov r1, #0x84
    ldr r1, [r7,r1]
    strh r1, [r5,#0xc]
    mov r1, #0x88
    ldr r1, [r7,r1]
    strb r1, [r5,#0xe]
    pop {r5,pc}
off_804E700:    .word 0x3C0
// end of function sub_804E6EE

.thumb
sub_804E704:
    push {r4-r6,lr}
    mov r0, #2
    bl sub_804E568
    beq locret_804E796
    ldr r0, [pc, #0x804e7a0-0x804e70e-2] // =0xFF
    bl sub_804E568
    bne loc_804E71C
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne locret_804E796
loc_804E71C:
    ldr r6, [r5,#0x40]
    mov r0, #4
    bl sub_804E568
    beq loc_804E73C
    ldr r1, [pc, #0x804e798-0x804e726-2] // =0x421
    ldr r0, [r5,#0x40]
    sub r0, r0, r1
    add r4, r0, #0
    cmp r0, #0
    bge loc_804E73A
    mov r4, #0
    mov r0, #4
    bl sub_804E55C
loc_804E73A:
    b loc_804E75A
loc_804E73C:
    mov r0, #8
    bl sub_804E568
    beq loc_804E75C
    ldr r1, [pc, #0x804e79c-0x804e744-4] // =0x840
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    add r4, r0, #0
    mov r1, #0x1f
    and r0, r1
    cmp r0, #6
    bmi loc_804E75A
    mov r0, #0xa
    bl sub_804E55C
loc_804E75A:
    str r4, [r5,#0x40]
loc_804E75C:
    ldrb r7, [r5,#0x14]
    ldrb r1, [r5,#0xa]
    ldrb r2, [r5,#0xb]
    strb r1, [r5,#0xb]
    ldrb r3, [r5,#7]
    push {r5}
    add r5, #0x9c
    strb r3, [r5,#4]
    cmp r1, r2
    beq loc_804E77E
    add r1, r1, r7
    cmp r1, #2
    ble loc_804E778
    mov r1, #2
loc_804E778:
    strb r1, [r5]
    bl sub_800282E
loc_804E77E:
    bl sub_800284E
    strh r6, [r5,#6]
    pop {r7}
    bl sub_800293C
    bl sub_8002998
    mov r0, #0
    mov r1, #0
    bl sub_800280C
locret_804E796:
    pop {r4-r6,pc}
off_804E798:    .word 0x421
dword_804E79C:    .word 0x842
off_804E7A0:    .word 0x100
// end of function sub_804E704

.thumb
sub_804E7A4:
    push {lr}
    ldrb r0, [r5,#0x14]
    tst r0, r0
    beq locret_804E7DC
    mov r0, #0x98
    ldrb r0, [r5,r0]
    tst r0, r0
    bne locret_804E7DC
    mov r0, #0x10
    bl sub_804E568
    bne loc_804E7D2
    cmp r1, #0
    beq loc_804E7D2
    cmp r1, #0x78 
    blt loc_804E7D8
    cmp r1, #0x84
    blt loc_804E7D2
    cmp r1, #0x93
    bgt loc_804E7D8
    cmp r1, #0x85
    bgt loc_804E7D2
    b loc_804E7D8
loc_804E7D2:
    mov r1, #0
    strb r1, [r5,#0xa]
    b locret_804E7DC
loc_804E7D8:
    mov r1, #1
    strb r1, [r5,#0xa]
locret_804E7DC:
    pop {pc}
    .byte 0, 0
// end of function sub_804E7A4

.thumb
sub_804E7E0:
    push {r0,lr}
    ldrb r0, [r5,#0x14]
    tst r0, r0
    beq locret_804E7F4
    mov r0, #0x98
    ldrb r0, [r5,r0]
    tst r0, r0
    bne locret_804E7F4
    mov r1, #0
    strb r1, [r5,#0xa]
locret_804E7F4:
    pop {r0,pc}
    .balign 4, 0x00
off_804E7F8:    .word sub_804E8D0+1
    .word sub_804E93C+1
    .word loc_804E9C0+1
    .word sub_804EAE0+1
    .word loc_804EB20+1
    .word sub_804EC10+1
    .word sub_804ECDC+1
    .word sub_804ED40+1
    .word function_chunk_804EE64+1
    .word sub_804EF04+1
    .word sub_804F424+1
    .word sub_804F4E4+1
    .word sub_804F508+1
    .word sub_804F560+1
    .word sub_804F594+1
    .word sub_804F648+1
    .word sub_804F748+1
    .word loc_8050468+1
    .word loc_804F82C+1
    .word loc_80513F0+1
    .word loc_804F984+1
    .word loc_805144C+1
    .word loc_805005C+1
    .word loc_8050318+1
    .word loc_804FF24+1
    .word loc_8050ADC+1
    .word loc_80514B8+1
    .word 0x804E929, 0x804E9BD, 0x804EADD, 0x804EB11, 0x804EBF5
    .word 0x804EC3D, 0x804ED1D, 0x804EE5D, 0x804EF01, 0x804F3E5
    .word 0x804F4C9, 0x804F505, 0x804F55D, 0x804F591, 0x804F605
    .word 0x804F731, 0x804F781, 0x805065D, 0x804F959, 0x8051439
    .word 0x804FE49, 0x80514A5, 0x8050289, 0x805044D, 0x805001D
    .word 0x8051031, 0x8051549
// end of function sub_804E7E0

.thumb
sub_804E8D0:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_804E8E2
    sub r0, #1
    strb r0, [r5,#5]
    ldr r4, [r5,#0x44]
    mov r0, #1
    pop {pc}
loc_804E8E2:
    mov r0, #1
    bl sub_804E550
    ldr r0, [pc, #0x804e924-0x804e8e8-4] // =0xFF
    bl sub_804E568
    bne loc_804E8FA
    bl sub_804EA34
    tst r0, r0
    bne loc_804E914
    pop {pc}
loc_804E8FA:
    mov r0, #2
    bl sub_804E568
    beq loc_804E914
    mov r0, #8
    bl sub_804E550
    mov r0, #2
    bl sub_804E568
    beq loc_804E914
    mov r0, #0
    pop {pc}
loc_804E914:
    mov r0, #0x80
    bl sub_8053990
    mov r0, #0
    strb r0, [r5]
    strb r0, [r5,#4]
    mov r0, #0
    pop {pc}
off_804E924:    .word 0x100
// end of function sub_804E8D0

    ldrb r0, [r5,#6]
    tst r0, r0
    beq loc_804E936
    sub r0, #1
    strb r0, [r5,#6]
    ldr r4, [r5,#0x48]
    mov pc, lr
loc_804E936:
    add r4, #1
    mov pc, lr
    .balign 4, 0x00
.thumb
sub_804E93C:
    push {lr}
    ldr r0, [pc, #0x804e9b8-0x804e93e-2] // =0x400
    bl sub_804E550
    mov r0, #0x21 
    bl sub_804E550
    mov r0, #0
    strb r0, [r5,#3]
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_804E962
    cmp r0, #2
    beq loc_804E976
    mov r0, #5
    strh r0, [r5,#0xc]
    mov r0, #1
    strb r0, [r5,#4]
    b loc_804E9B0
loc_804E962:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq loc_804E96E
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_804E9B0
loc_804E96E:
    mov r0, #2
    strb r0, [r5,#4]
    mov r0, #0
    strh r0, [r5,#0xc]
loc_804E976:
    mov r1, #3
    ldrb r2, [r4,#1]
    tst r2, r2
    beq loc_804E980
    ldr r1, [pc, #0x804e9b4-0x804e97e-2] // =0x3F8
loc_804E980:
    ldrh r0, [r5,#0x26]
    tst r1, r0
    bne loc_804E99A
    ldrh r0, [r5,#0x22]
    mov r1, #2
    tst r1, r0
    beq loc_804E9B0
    ldrh r0, [r5,#0xc]
    cmp r0, #0xa
    bge loc_804E99A
    add r0, #1
    strh r0, [r5,#0xc]
    b loc_804E9B0
loc_804E99A:
    mov r0, #0x20 
    bl sub_804E55C
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #1
    str r0, [r5,#0x74]
    add r4, #2
    mov r0, #0
    pop {pc}
loc_804E9B0:
    mov r0, #0
    pop {pc}
dword_804E9B4:    .word 0x3FF
off_804E9B8:    .word 0x400
// end of function sub_804E93C

    add r4, #2
    mov pc, lr
loc_804E9C0:
    push {lr}
    ldr r0, [pc, #0x804e9d0-0x804e9c2-2] // off_804E9D4
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804E9D0:    .word off_804E9D4
off_804E9D4:    .word sub_804E9E4+1
    .word sub_804EA34+1
    .word sub_804EA98+1
    .word sub_804EAB0+1
.thumb
sub_804E9E4:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    beq loc_804EA1A
    ldr r0, [pc, #0x804ea30-0x804e9f2-2] // =0xFF
    bl sub_804E55C
    ldrb r1, [r5,#0xc]
    tst r1, r1
    beq loc_804EA06
    sub r1, #1
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_804EA06:
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    mov r2, #3
    cmp r0, r2
    beq loc_804EA1A
    mov r1, #0
    strb r1, [r5,#0xc]
loc_804EA16:
    mov r0, #0
    pop {pc}
loc_804EA1A:
    mov r0, #4
    bl sub_804E568
    bne loc_804EA16
    mov r0, #1
    bl sub_804E55C
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_804EA30:    .word 0x100
// end of function sub_804E9E4

.thumb
sub_804EA34:
    push {lr}
    ldr r0, [pc, #0x804ea94-0x804ea36-2] // =0xFF
    bl sub_804E568
    bne loc_804EA8E
    mov r0, #1
    bl sub_804E550
    bl unk_80539C4
    mov r0, #8
    bl sub_804E550
    mov r0, #2
    bl sub_804E568
    beq loc_804EA5A
    mov r0, #0
    pop {pc}
loc_804EA5A:
    ldrb r1, [r5,#0xc]
    tst r1, r1
    beq loc_804EA68
    sub r1, #1
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_804EA68:
    ldrb r0, [r5,#0x10]
    tst r0, r0
    beq loc_804EA7A
    sub r0, #1
    strb r0, [r5,#0x10]
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_804EA7A:
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #8
    bl sub_804E55C
    ldr r0, [pc, #0x804ea94-0x804ea84-4] // =0xFF
    bl sub_804E550
    mov r0, #1
    pop {pc}
loc_804EA8E:
    add r4, #2
    mov r0, #0
    pop {pc}
off_804EA94:    .word 0x100
// end of function sub_804EA34

.thumb
sub_804EA98:
    push {lr}
    ldr r0, [pc, #0x804eaac-0x804ea9a-2] // =0xFF
    bl sub_804E55C
    mov r0, #3
    strb r0, [r5,#0x10]
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804EAAC:    .word 0x100
// end of function sub_804EA98

.thumb
sub_804EAB0:
    push {lr}
    mov r0, #1
    bl sub_804E550
    bl unk_80539C4
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x804ead8-0x804eac4-4] // =0xFF
    bl sub_804E550
    mov r0, #8
    bl sub_804E55C
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804EAD8:    .word 0x100
// end of function sub_804EAB0

    add r4, #2
    mov pc, lr
.thumb
sub_804EAE0:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r2, [r5,#0xf]
    add r2, #1
    strb r2, [r5,#0xf]
    cmp r2, #3
    bne loc_804EAFA
    mov r0, #1
    mov r2, #0x8c
    str r0, [r5,r2]
    b loc_804EB04
loc_804EAFA:
    sub r2, #1
    lsl r3, r2, #2
    ldr r0, [pc, #0x804eb0c-0x804eafe-2] // dword_804DD14+556
    ldr r0, [r0,r3]
    str r0, [r5,#0x7c]
loc_804EB04:
    add r4, #1
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_804EB0C:    .word dword_804DD14+0x22C
// end of function sub_804EAE0

    mov r0, #0
    str r0, [r5,#0x70]
    ldrb r0, [r5,#0xf]
    add r0, #1
    strb r0, [r5,#0xf]
    add r4, #1
    mov pc, lr
    .byte 0, 0
loc_804EB20:
    push {lr}
    ldr r2, [pc, #0x804eb40-0x804eb22-2] // off_804EB44
    ldrb r0, [r4,#1]
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    push {r5}
    mov lr, pc
    bx r2
    pop {r5}
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_804EB40:    .word off_804EB44
off_804EB44:    .word sub_804EB6C+1
    .word sub_804EB78+1
    .word sub_804EB84+1
    .word sub_804EBA4+1
    .word sub_804EBBC+1
    .word 0x0
    .word sub_804EBD4+1
    .word sub_804EB90+1
    .word sub_804EB9C+1
    .word sub_804EBE8+1
.thumb
sub_804EB6C:
    push {lr}
    bl sub_8024FA0
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EB6C

.thumb
sub_804EB78:
    push {lr}
    bl sub_8024FBC
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EB78

.thumb
sub_804EB84:
    push {lr}
    bl sub_8024FD8
    add r4, #4
    pop {pc}
    .byte 0, 0
// end of function sub_804EB84

.thumb
sub_804EB90:
    push {lr}
    bl sub_80250C2
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EB90

.thumb
sub_804EB9C:
    push {lr}
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EB9C

.thumb
sub_804EBA4:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_802500E
    add r4, #5
    pop {pc}
// end of function sub_804EBA4

.thumb
sub_804EBBC:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    add r4, #5
    pop {pc}
// end of function sub_804EBBC

.thumb
sub_804EBD4:
    push {lr}
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    bl sub_8024FA0
    add r4, #3
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EBD4

.thumb
sub_804EBE8:
    push {lr}
    bl sub_80250F0
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EBE8

    push {lr}
    ldr r0, [pc, #0x804ec00-0x804ebf6-2] // dword_804EC04
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    pop {pc}
off_804EC00:    .word dword_804EC04
dword_804EC04:    .word 0x5040404, 0x4030705, 0x404
.thumb
sub_804EC10:
    push {lr}
    mov r0, #0xff
    strb r0, [r5,#0x13]
    mov r0, #0x10
    bl sub_804E550
    mov r0, #0xa
    strh r0, [r5,#0xc]
    mov r0, #1
    ldrb r2, [r4,#1]
    tst r2, r2
    bne loc_804EC2C
    add r4, #4
    pop {pc}
loc_804EC2C:
    mov r1, #0x80
    ldr r0, [r5,r1]
    add r0, #1
    str r0, [r5,r1]
    mov r0, #1
    add r4, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_804EC10

    push {r3,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_804ECB4
    mov r0, #0x10
    bl sub_804E568
    cmp r0, #0
    beq loc_804EC8A
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x804ecc0-0x804ec5a-2] // word_804ECC4
    mov r3, #0xc
loc_804EC5E:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_804EC6E
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_804EC8A
    b loc_804EC5E
loc_804EC6E:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    cmp r0, r1
    beq loc_804EC8A
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
loc_804EC8A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_804ECB4
    mov r0, #0x80
    bl sub_80539A0
    beq loc_804ECB4
    ldr r0, [pc, #0x804ecd8-0x804ec9a-2] // =0xFF
    bl sub_804E568
    bne loc_804ECA8
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_804ECB4
loc_804ECA8:
    ldr r0, [pc, #0x804eccc-0x804eca8-4] // off_804ECD0
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_804ECB4:
    ldrb r0, [r5,#0x12]
    add r0, #1
    strb r0, [r5,#0x12]
    add r4, #4
    pop {r3,pc}
    .byte 0, 0
off_804ECC0:    .word word_804ECC4
word_804ECC4:    .hword 0x40
    .hword 0x80
    .word 0x100020
off_804ECCC:    .word off_804ECD0
off_804ECD0:    .word sub_804E574+1
    b loc_804E8FA
    .hword 0x804
off_804ECD8:    .word 0x100
.thumb
sub_804ECDC:
    push {lr}
    ldrb r1, [r4,#1]
    cmp r1, #1
    beq loc_804ECFE
    ldrb r1, [r4,#2]
    mov r0, #8
    mul r0, r1
    ldr r1, [r5,#0x7c]
    lsl r0, r0, #2
    add r1, r1, r0
    str r1, [r5,#0x7c]
    ldr r0, [pc, #0x804ed14-0x804ecf2-2] // dword_804ED18
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov r0, #1
    pop {pc}
loc_804ECFE:
    ldrb r0, [r4,#2]
    ldr r1, [r5,#0x7c]
    lsl r0, r0, #2
    add r1, r1, r0
    str r1, [r5,#0x7c]
    ldr r0, [pc, #0x804ed14-0x804ed08-4] // dword_804ED18
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov r0, #1
    pop {pc}
off_804ED14:    .word dword_804ED18
dword_804ED18:    .word 0x303, 0x29007861, 0x78A1D107, 0x43512208, 0x18406F28
    .word 0x34036728, 0x78A1E004, 0x18406F28, 0x34036728, 0x46F7
// end of function sub_804ECDC

.thumb
sub_804ED40:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r4,#2]
    mov r2, #0x10
    tst r0, r2
    bne loc_804ED5C
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_804ED5C
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_804ED9A
loc_804ED5C:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_804ED7A
    cmp r0, #2
    beq loc_804EDB0
    ldrb r0, [r4,#2]
    mov r1, #0xf
    and r0, r1
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_804E550
    b loc_804ED9A
loc_804ED7A:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_804ED9E
    ldrb r1, [r4,#2]
    mov r2, #0x40 
    tst r1, r2
    bne loc_804ED9A
    ldrb r3, [r5,#0x12]
    mov r2, #0x20 
    tst r1, r2
    beq loc_804ED94
    add r3, #1
loc_804ED94:
    mov r1, #2
    tst r0, r1
    bne loc_804EE1A
loc_804ED9A:
    mov r0, #0
    pop {pc}
loc_804ED9E:
    mov r0, #0x80
    bl sub_804E568
    cmp r0, #0
    bne loc_804EDB0
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl f500_8000558
loc_804EDB0:
    mov r0, #0x10
    bl sub_804E55C
    mov r0, #7
    bl sub_8053990
    ldrb r0, [r5,#0x13]
    bl sub_8053980
    ldrb r0, [r5,#0x13]
    ldrb r1, [r5,#0x12]
    sub r1, #1
    cmp r0, r1
    bne loc_804EDD4
    mov r0, #0x10
    bl sub_8053980
    ldrb r0, [r5,#0x13]
loc_804EDD4:
    add r0, #3
    ldrb r0, [r4,r0]
    cmp r0, #0xff
    bne loc_804EDFA
    ldrb r0, [r4,#1]
    ldrb r1, [r4,#2]
    add r4, r4, r0
    mov r2, #0x80
    tst r1, r2
    beq loc_804EE08
    bl unk_80539C4
    mov r1, #0
    str r1, [r5,#0x64]
    mov r1, #1
    str r1, [r5,#0x74]
    str r4, [r5,#0x2c]
    str r4, [r5,#0x34]
    b loc_804EE08
loc_804EDFA:
    ldrb r1, [r4,#2]
    mov r2, #0x80
    tst r1, r2
    beq loc_804EE02
loc_804EE02:
    add r1, r0, #0
    bl dword_804E500
loc_804EE08:
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8053980
    mov r0, #0
    pop {pc}
loc_804EE1A:
    mov r0, #7
    bl sub_8053990
    ldrb r0, [r5,#0x12]
    sub r0, #1
    strb r0, [r5,#0x13]
    bl sub_8053980
    ldr r0, [pc, #0x804ee58-0x804ee2a-2] // =0x130
    bl sub_8053980
    mov r0, #0x80
    bl sub_804E568
    cmp r0, #0
    bne loc_804EE42
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl f500_8000558
loc_804EE42:
    sub r0, r3, #1
    strb r0, [r5,#0x13]
    mov r0, #2
    strb r0, [r5,#4]
    mov r0, #3
    strh r0, [r5,#0xc]
    mov r0, #0x10
    bl sub_804E55C
    mov r0, #0
    pop {pc}
off_804EE58:    .word 0x130
// end of function sub_804ED40

.thumb
sub_804EE5C:
    ldrb r0, [r4,#1]
    add r4, r4, r0
    mov pc, lr
    .balign 4, 0x00
// end of function sub_804EE5C

function_chunk_804EE64:
    push {lr}
    ldrb r1, [r4,#1]
    cmp r1, #0xff
    beq sub_804EEB8
    cmp r1, #2
    beq sub_804EEC8
    cmp r1, #3
    beq sub_804EEE2
    ldrb r0, [r5,#0x11]
    tst r0, r0
    bne loc_804EE80
    tst r1, r1
    beq loc_804EE80
    b sub_804EEA8
loc_804EE80:
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    cmp r0, #0
    bne loc_804EE9A
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    strh r0, [r5,#0xc]
    mov r0, #1
    strb r0, [r5,#4]
loc_804EE9A:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq sub_804EEA8
    sub r0, #1
    strh r0, [r5,#0xc]
    mov r0, #0
    pop {pc}
.thumb
sub_804EEA8:
    mov r0, #1
    bl sub_804E55C
    mov r0, #0
    strb r0, [r5,#4]
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_804EEA8

.thumb
sub_804EEB8:
    mov r0, #1
    bl sub_804E550
    mov r0, #8
    bl sub_8053980
    mov r0, #0
    pop {pc}
// end of function sub_804EEB8

.thumb
sub_804EEC8:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne sub_804EEA8
    mov r0, #1
    bl sub_804E550
    mov r0, #0
    pop {pc}
// end of function sub_804EEC8

.thumb
sub_804EEE2:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    mov r2, r10
    ldr r2, [r2,#0x10]
    add r2, #8
    add r2, r2, r0
    ldrb r0, [r2]
    cmp r0, r1
    beq sub_804EEA8
    mov r0, #1
    bl sub_804E550
    mov r0, #0
    pop {pc}
    .byte 0, 0
    .hword 0x3404
// end of function sub_804EEE2

.thumb
nullsub_97:
    mov pc, lr
// end of function nullsub_97

.thumb
sub_804EF04:
    push {lr}
    ldr r0, [pc, #0x804ef14-0x804ef06-2] // off_804EF18
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804EF14:    .word off_804EF18
off_804EF18:    .word sub_804F04C+1
    .word sub_804F078+1
    .word sub_804F020+1
    .word sub_804F0A4+1
    .word sub_804F0D4+1
    .word sub_804F0FC+1
    .word sub_804F114+1
    .word sub_804F140+1
    .word sub_804F174+1
    .word sub_804F174+1
    .word sub_80506F8+1
    .word sub_80506F8+1
    .word sub_80506F8+1
    .word sub_80506F8+1
    .word sub_80507A8+1
    .word sub_80507A8+1
    .word sub_80507A8+1
    .word sub_80507A8+1
    .word sub_8050954+1
    .word sub_8050954+1
    .word sub_8050954+1
    .word sub_8050954+1
    .word sub_8050A48+1
    .word sub_8050A48+1
    .word sub_8050A48+1
    .word sub_8050A48+1
    .word sub_804F21C+1
    .word 0x805089D, 0x805089D, 0x805089D, 0x805089D, 0x804F255
    .word 0x804F2B5, 0x804F2F5, 0x804F315, 0x0
    .word loc_804F33C+1
    .word loc_804F33C+1
    .word loc_804F33C+1
    .word loc_804F33C+1
    .word sub_804EFF0+1
    .word sub_804EFCC+1
    .word sub_804F174+1
    .word sub_804F38C+1
    .word sub_804F3B8+1
// end of function sub_804EF04

.thumb
sub_804EFCC:
    push {lr}
    ldr r0, [pc, #0x804efec-0x804efce-2] // off_80515B4
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrb r1, [r1]
    cmp r1, #0xff
    beq loc_804EFE4
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804EFE4:
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804EFEC:    .word off_80515B4
// end of function sub_804EFCC

.thumb
sub_804EFF0:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl sub_802508C
    bne loc_804F00A
    mov r2, #6
    b loc_804F00C
loc_804F00A:
    mov r2, #5
loc_804F00C:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F01A
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F01A:
    add r4, #7
    mov r0, #1
    pop {pc}
// end of function sub_804EFF0

.thumb
sub_804F020:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#5]
    mov r0, #5
    cmp r3, r1
    blt loc_804F038
    cmp r3, r2
    bgt loc_804F038
    mov r0, #4
loc_804F038:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F046
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F046:
    add r4, #6
    mov r0, #1
    pop {pc}
// end of function sub_804F020

.thumb
sub_804F04C:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r2, [r4,#3]
    lsl r2, r2, #8
    orr r0, r2
    mov r2, #0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_804F062
    mov r2, #1
loc_804F062:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F072
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F072:
    add r4, #6
    mov r0, #1
    pop {pc}
// end of function sub_804F04C

.thumb
sub_804F078:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#6]
    mov r0, #5
    cmp r3, r1
    blt loc_804F090
    cmp r3, r2
    bgt loc_804F090
    mov r0, #4
loc_804F090:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F09E
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F09E:
    add r4, #6
    mov r0, #1
    pop {pc}
// end of function sub_804F078

.thumb
sub_804F0A4:
    push {lr}
    ldr r0, [pc, #0x804f0d0-0x804f0a6-2] // off_805159C
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrb r1, [r1]
    ldrb r2, [r4,#3]
    mov r0, #5
    cmp r1, r2
    bne loc_804F0BA
    mov r0, #4
loc_804F0BA:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F0C8
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F0C8:
    add r4, #6
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_804F0D0:    .word off_805159C
// end of function sub_804F0A4

.thumb
sub_804F0D4:
    push {lr}
    ldrb r0, [r4,#2]
    bl sub_8043E48
    ldrb r1, [r4,#3]
    mov r2, #5
    cmp r1, r0
    bne loc_804F0E6
    mov r2, #4
loc_804F0E6:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F0F4
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F0F4:
    add r4, #6
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F0D4

.thumb
sub_804F0FC:
    push {lr}
    mov r0, #2
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F10E
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F10E:
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_804F0FC

.thumb
sub_804F114:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x44]
    ldrb r2, [r2,#0xd]
    mov r0, #5
    ldrb r1, [r4,#2]
    cmp r2, r1
    bmi loc_804F12C
    ldrb r1, [r4,#3]
    cmp r2, r1
    bgt loc_804F12C
    mov r0, #4
loc_804F12C:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F13A
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F13A:
    add r4, #6
    mov r0, #1
    pop {pc}
// end of function sub_804F114

.thumb
sub_804F140:
    push {lr}
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl sub_802D3F8
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_804F15C
    add r2, #1
    cmp r0, r1
    bgt loc_804F15C
    add r2, #1
loc_804F15C:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F16C
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F16C:
    add r4, #7
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F140

.thumb
sub_804F174:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #9
    beq loc_804F1A8
    cmp r0, #0x2a 
    beq loc_804F1E6
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8019154
    pop {r4,r5}
    ldrb r1, [r4,#5]
    mov r2, #0
    cmp r0, r1
    beq loc_804F1A2
    add r2, #1
    cmp r0, r1
    bgt loc_804F1A2
    add r2, #1
loc_804F1A2:
    add r2, #6
    ldrb r1, [r4,r2]
    b loc_804F20A
loc_804F1A8:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8019154
    pop {r4,r5}
    push {r0,r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8019196
    add r1, r0, #0
    pop {r0,r4,r5}
    sub r0, r0, r1
    ldrb r1, [r4,#5]
    mov r2, #0
    cmp r0, r1
    beq loc_804F1E0
    add r2, #1
    cmp r0, r1
    bgt loc_804F1E0
    add r2, #1
loc_804F1E0:
    add r2, #6
    ldrb r1, [r4,r2]
    b loc_804F20A
loc_804F1E6:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl sub_801916C
    pop {r4,r5}
    ldrb r1, [r4,#4]
    mov r2, #0
    cmp r0, r1
    beq loc_804F206
    add r2, #1
    cmp r0, r1
    bgt loc_804F206
    add r2, #1
loc_804F206:
    add r2, #5
    ldrb r1, [r4,r2]
loc_804F20A:
    cmp r1, #0xff
    beq loc_804F216
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F216:
    add r4, #9
    mov r0, #1
    pop {pc}
// end of function sub_804F174

.thumb
sub_804F21C:
    push {r6,lr}
    ldrb r6, [r4,#3]
    mov r3, #0
    mov r2, #0
loc_804F224:
    cmp r3, r6
    beq loc_804F23C
    ldrb r0, [r4,#2]
    add r0, r0, r3
    push {r2-r5}
    bl sub_802D3F8
    pop {r2-r5}
    tst r0, r0
    bne loc_804F23E
    add r3, #1
    b loc_804F224
loc_804F23C:
    mov r2, #1
loc_804F23E:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F24E
    bl dword_804E500
    mov r0, #1
    pop {r6,pc}
loc_804F24E:
    add r4, #6
    mov r0, #1
    pop {r6,pc}
// end of function sub_804F21C

.thumb
sub_804F254:
    push {lr}
    push {r4-r7}
    mov r0, r8
    push {r0}
    bl sub_809F2B4
    ldr r0, [pc, #0x804f2b0-0x804f260-4] // =0x43C
    add r0, r0, r7
    mov r2, #0
    mov r8, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_804F28A
    mov r1, r8
    sub r6, r4, r1
    ldr r0, [pc, #0x804f2ac-0x804f274-4] // off_8089EC8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    ldrb r6, [r0,r6]
    bl sub_809F280
    sub r7, r4, r1
    mov r2, #0
    cmp r7, r6
    bge loc_804F28A
    mov r2, #1
loc_804F28A:
    pop {r1}
    mov r8, r1
    pop {r4-r7}
    add r2, #2
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F2A0
    bl dword_804E500
    mov r0, #1
    pop {r7,pc}
loc_804F2A0:
    add r4, #4
    mov r0, #1
    pop {r7,pc}
    .balign 4, 0x00
    .word 0x436
off_804F2AC:    .word off_8089EC8
off_804F2B0:    .word 0x43C
// end of function sub_804F254

    push {r6,r7,lr}
    mov r7, #0
    ldrb r6, [r4,#3]
    mov r3, #0
    mov r2, #0
loc_804F2BE:
    cmp r3, r6
    beq loc_804F2D8
    ldrb r0, [r4,#2]
    add r0, r0, r3
    push {r2-r5}
    bl sub_802D3F8
    pop {r2-r5}
    add r3, #1
    tst r0, r0
    beq loc_804F2BE
    add r7, #1
    b loc_804F2BE
loc_804F2D8:
    cmp r7, #2
    beq loc_804F2DE
    mov r2, #1
loc_804F2DE:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F2EE
    bl dword_804E500
    mov r0, #1
    pop {r6,r7,pc}
loc_804F2EE:
    add r4, #6
    mov r0, #1
    pop {r6,r7,pc}
    push {r6,r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#0x10]
    add r2, #1
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F30C
    bl dword_804E500
    mov r0, #1
    pop {r6,r7,pc}
loc_804F30C:
    add r4, #6
    mov r0, #1
    pop {r6,r7,pc}
    .balign 4, 0x00
    push {lr}
    ldrb r0, [r4,#2]
    push {r4,r5}
    bl sub_804BA30
    pop {r4,r5}
    mov r1, #4
    tst r0, r0
    beq loc_804F328
    mov r1, #3
loc_804F328:
    ldrb r1, [r4,r1]
    cmp r1, #0xff
    beq loc_804F336
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F336:
    add r4, #5
    mov r0, #1
    pop {pc}
loc_804F33C:
    push {lr}
    ldrb r1, [r4,#1]
    sub r1, #0x24 
    lsl r1, r1, #2
    ldr r7, [pc, #0x804f378-0x804f344-4] // off_804F37C
    ldr r7, [r7,r1]
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    push {r1,r2,r4,r5}
    mov lr, pc
    bx r7
    add r7, r0, #0
    pop {r1,r2,r4,r5}
    mov r0, #5
    cmp r7, r1
    blt loc_804F362
    cmp r7, r2
    bgt loc_804F362
    mov r0, #4
loc_804F362:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804F370
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F370:
    add r4, #6
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804F378:    .word off_804F37C
off_804F37C:    .word sub_80372BC+1
    .word sub_8037304+1
    .word sub_8037364+1
    .word sub_8037404+1
.thumb
sub_804F38C:
    push {lr}
    mov r0, #0x17
    mov r1, #6
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl sub_802508C
    bne loc_804F3A0
    mov r2, #3
    b loc_804F3A2
loc_804F3A0:
    mov r2, #2
loc_804F3A2:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F3B0
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F3B0:
    add r4, #4
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F38C

.thumb
sub_804F3B8:
    push {lr}
    mov r0, #0x36 
    bl sub_800D752
    ldr r1, [pc, #0x804f3e0-0x804f3c0-4] // =0x1F4
    cmp r0, r1
    blt loc_804F3CA
    mov r2, #2
    b loc_804F3CC
loc_804F3CA:
    mov r2, #3
loc_804F3CC:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804F3DA
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F3DA:
    add r4, #4
    mov r0, #1
    pop {pc}
off_804F3E0:    .word 0x1F4
// end of function sub_804F3B8

    ldr r0, [pc, #0x804f3f0-0x804f3e4-4] // dword_804F3F4
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
    .byte 0, 0
off_804F3F0:    .word dword_804F3F4
dword_804F3F4:    .word 0x6060606, 0x7060406, 0x7070909, 0x9090704, 0x9090906
    .word 0x6060906, 0x5060606, 0x4080505, 0x50606, 0x6060606
    .word 0x4080307, 0x4
.thumb
sub_804F424:
    push {lr}
    ldrb r0, [r4,#1]
    tst r0, r0
    bne loc_804F43A
    ldrb r1, [r4,#2]
loc_804F42E:
    cmp r1, #0xff
    beq loc_804F4C0
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_804F43A:
    ldrb r0, [r4,#1]
    mov r1, #0x80
    tst r0, r1
    bne loc_804F44A
    mov r1, #0x40 
    tst r0, r1
    bne loc_804F44A
    b loc_804F44A
loc_804F44A:
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r6, #3
    and r6, r0
    add r6, #2
loc_804F456:
    bl sub_8001AE0
    sub r6, #1
    bgt loc_804F456
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    b loc_804F464
loc_804F464:
    ldrb r2, [r4,#1]
    lsr r6, r2, #7
    push {r0,r2}
    mov r0, #0x11
    mov r1, #0x6b 
    bl sub_8024FF0
    pop {r0,r2}
    bne loc_804F478
    mov r6, #0
loc_804F478:
    push {r2,r6}
    add r6, #2
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #2
    mov r1, #0
loc_804F484:
    ldrb r3, [r4,r2]
    add r1, r1, r3
    sub r2, #1
    cmp r2, r6
    bge loc_804F484
    svc 6
    pop {r2,r6}
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #2
    mov r3, #0
    mov r7, #2
    add r7, r7, r6
loc_804F49E:
    ldrb r0, [r4,r7]
    add r3, r3, r0
    cmp r3, r1
    bgt loc_804F4AE
    add r7, #1
    cmp r7, r2
    ble loc_804F49E
    mov r7, #2
loc_804F4AE:
    ldrb r2, [r4,#1]
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #1
    add r4, r4, r2
    ldrb r1, [r4,r7]
    add r4, r4, r2
    sub r4, #1
    b loc_804F42E
loc_804F4C0:
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F424

    ldr r0, [pc, #0x804f4d8-0x804f4c8-4] // dword_804F4DC
    ldrb r1, [r4,#1]
    lsl r1, r1, #0x1a
    lsr r1, r1, #0x1a
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
    .balign 4, 0x00
off_804F4D8:    .word dword_804F4DC
dword_804F4DC:    .word 0xAFF0603, 0x12FFFFFF
.thumb
sub_804F4E4:
    push {lr}
    ldrb r0, [r4,#2]
    strb r0, [r5,#8]
    strb r0, [r5,#0x11]
    strb r0, [r5,#9]
    tst r0, r0
    bne loc_804F4F2
loc_804F4F2:
    ldr r0, [pc, #0x804f500-0x804f4f2-2] // =0x800
    bl sub_804E550
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_804F500:    .word 0x800
// end of function sub_804F4E4

    add r4, #3
    mov pc, lr
.thumb
sub_804F508:
    push {lr}
    ldrb r2, [r5,#8]
    tst r2, r2
    beq loc_804F516
    mov r0, #1
    bl sub_804E550
loc_804F516:
    ldr r0, [pc, #0x804f554-0x804f516-2] // =0x400
    ldr r1, [pc, #0x804f558-0x804f518-4] // =0x800
    orr r0, r1
    bl sub_804E55C
    add r4, #1
    str r4, [r5,#0x34]
    mov r0, #0
    strb r0, [r5,#4]
    str r0, [r5,#0x64]
    strb r0, [r5,#0x12]
    strb r0, [r5,#2]
    strb r0, [r5,#0x17]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    mov r1, #0x80
    str r0, [r5,r1]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #1
    str r0, [r5,#0x74]
    ldrb r0, [r5,#8]
    strb r0, [r5,#0x11]
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    bl unk_80539C4
    mov r0, #1
    pop {pc}
off_804F554:    .word 0x400
off_804F558:    .word 0x800
// end of function sub_804F508

    add r4, #1
    mov pc, lr
.thumb
sub_804F560:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #0
    beq loc_804F584
    cmp r0, #1
    beq loc_804F57A
    cmp r0, #2
    beq loc_804F570
loc_804F570:
    ldrb r0, [r4,#2]
    bl sub_8053980
    add r4, #3
    b loc_804F58C
loc_804F57A:
    mov r0, #0x40 
    bl sub_8053990
    add r4, #2
    b loc_804F58C
loc_804F584:
    mov r0, #0x40 
    bl sub_8053980
    add r4, #2
loc_804F58C:
    mov r0, #1
    pop {pc}
// end of function sub_804F560

    add r4, #1
    mov pc, lr
.thumb
sub_804F594:
    push {lr}
    ldrb r0, [r4,#1]
    lsr r1, r0, #4
    lsl r1, r1, #4
    cmp r1, #0x10
    bne loc_804F5A4
    bl sub_804F784
loc_804F5A4:
    cmp r0, #0
    beq loc_804F5B0
    cmp r0, #1
    beq loc_804F5D6
    cmp r0, #2
    beq loc_804F5E8
loc_804F5B0:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_804F5C8
    ldr r0, [r5,#0x54]
    ldr r3, [pc, #0x804f600-0x804f5c0-4] // =0xA0
    sub r1, r0, r3
    add r1, #1
    str r1, [r5,#0x4c]
loc_804F5C8:
    ldrb r1, [r4,#3]
    bl sub_802D37C
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
loc_804F5D6:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_802D3D8
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
loc_804F5E8:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_802D3C8
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
dword_804F600:    .word 0xA2
// end of function sub_804F594

    push {lr}
    ldrb r0, [r4,#1]
    lsr r1, r0, #4
    lsl r1, r1, #4
    cmp r1, #0x10
    bne loc_804F614
    bl loc_804F814
loc_804F614:
    cmp r1, #0x20 
    bne loc_804F61C
    bl loc_8050794
loc_804F61C:
    cmp r1, #0x30 
    bne loc_804F624
    bl loc_8050888
loc_804F624:
    cmp r1, #0x40 
    bne loc_804F62C
    bl loc_8050940
loc_804F62C:
    cmp r1, #0x50 
    bne loc_804F634
    bl loc_8050A34
loc_804F634:
    ldrb r0, [r4,#1]
    ldr r1, [pc, #0x804f640-0x804f636-2] // loc_804F644
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .byte 0, 0
off_804F640:    .word loc_804F644
loc_804F644:
    lsl r4, r0, #0x10
    lsl r4, r0, #0x1c
.thumb
sub_804F648:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #1
    beq loc_804F6D0
    cmp r0, #2
    beq loc_804F6DA
    cmp r0, #3
    beq loc_804F6E2
    cmp r0, #4
    beq loc_804F710
    mov r0, #2
    bl sub_804E568
    bne loc_804F68C
    mov r0, #2
    bl sub_804E550
    mov r0, #4
    bl sub_804E550
    mov r0, #1
    bl sub_802D92C
    bne loc_804F68C
    ldr r1, [pc, #0x804f728-0x804f678-4] // byte_200A7E0
    ldrb r1, [r1]
    cmp r1, #0x2c 
    beq loc_804F68C
    ldr r0, [pc, #0x804f72c-0x804f680-4] // =0x1000
    bl sub_804E568
    bne loc_804F68C
    ldr r0, [pc, #0x804f724-0x804f688-4] // =0x18C0
    str r0, [r5,#0x40]
loc_804F68C:
    ldrb r0, [r4,#2]
    mov r1, #0
    ldr r2, [pc, #0x804f71c-0x804f690-4] // byte_8052380
loc_804F692:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_804F6A2
    cmp r3, r0
    beq loc_804F6A0
    add r2, #2
    b loc_804F692
loc_804F6A0:
    ldrb r1, [r2,#1]
loc_804F6A2:
    strb r1, [r5,#7]
    mov r7, #0
    mov r1, #1
    ldr r2, [pc, #0x804f720-0x804f6a8-4] // byte_8052398
loc_804F6AA:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_804F6BC
    cmp r3, r0
    beq loc_804F6B8
    add r2, #2
    b loc_804F6AA
loc_804F6B8:
    ldrb r7, [r2,#1]
    mov r1, #0
loc_804F6BC:
    strb r1, [r5,#0x14]
    strb r7, [r5,#0xa]
    mov r3, #0x98
    strb r7, [r5,r3]
    mov r2, #0xff
    strb r2, [r5,#0xb]
    bl sub_804E6C0
    add r4, #3
    b loc_804F718
loc_804F6D0:
    mov r0, #2
    bl sub_804E55C
    add r4, #2
    b loc_804F718
loc_804F6DA:
    ldrb r0, [r4,#2]
    strb r0, [r5,#7]
    add r4, #3
    b loc_804F718
loc_804F6E2:
    ldrb r0, [r4,#2]
    cmp r0, #2
    beq loc_804F6FA
    strb r0, [r5,#0x14]
    mov r2, #0x98
    strb r0, [r5,r2]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
    add r4, #3
    b loc_804F718
loc_804F6FA:
    mov r0, #1
    strb r0, [r5,#0x14]
    mov r0, #0
    mov r2, #0x98
    strb r0, [r5,r2]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
    add r4, #3
    b loc_804F718
loc_804F710:
    ldrb r0, [r4,#2]
    mov r2, #0x90
    str r0, [r5,r2]
    add r4, #3
loc_804F718:
    mov r0, #1
    pop {pc}
off_804F71C:    .word byte_8052380
off_804F720:    .word byte_8052398
dword_804F724:    .word 0x18C6
off_804F728:    .word byte_200A7E0
off_804F72C:    .word 0x1000
// end of function sub_804F648

    ldr r0, [pc, #0x804f73c-0x804f730-4] // dword_804F740
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
    .balign 4, 0x00
off_804F73C:    .word dword_804F740
dword_804F740:    .word 0x3030203, 0x3
.thumb
sub_804F748:
    push {lr}
    ldrb r0, [r4,#1]
    tst r0, r0
    bne loc_804F762
    ldrb r0, [r4,#2]
    lsl r0, r0, #5
    ldr r1, [pc, #0x804f778-0x804f754-4] // dword_869F784
    add r0, r0, r1
    ldr r1, [pc, #0x804f77c-0x804f758-4] // unk_3002800
    mov r2, #0x20 
    bl f900_80009A0
    b loc_804F772
loc_804F762:
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    ldr r1, [pc, #0x804f77c-0x804f76a-2] // unk_3002800
    mov r2, #0x20 
    bl f900_80009A0
loc_804F772:
    add r4, #3
    mov r0, #1
    pop {pc}
off_804F778:    .word dword_869F784
off_804F77C:    .word unk_3002800
// end of function sub_804F748

    add r4, #3
    mov pc, lr
.thumb
sub_804F784:
    sub r0, #0x10
    cmp r0, #0
    beq loc_804F7A6
    cmp r0, #1
    beq loc_804F7D4
    cmp r0, #2
    beq loc_804F7EE
    mov r0, #0x73 
    bl f500_8000558
    push {r4}
    bl sub_8030668
    pop {r4}
    add r4, #2
    mov r0, #1
    pop {pc}
loc_804F7A6:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldr r1, [pc, #0x804f810-0x804f7b6-2] // =0xFFFF
    cmp r0, r1
    bne loc_804F7BE
    ldr r0, [r5,#0x54]
loc_804F7BE:
    ldrb r1, [r4,#4]
    cmp r1, #0xff
    bne loc_804F7C6
    ldr r1, [r5,#0x58]
loc_804F7C6:
    ldrb r2, [r4,#5]
    bl dword_801907C+2
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_804F7D4:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#5]
    bl sub_8019122
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_804F7EE:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#5]
    bl sub_8019108
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
    .byte 0, 0
dword_804F810:    .word 0xFFFF
// end of function sub_804F784

loc_804F814:
    sub r0, #0x10
    ldr r1, [pc, #0x804f820-0x804f816-2] // dword_804F824
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .byte 0, 0
off_804F820:    .word dword_804F824
dword_804F824:    .word 0x9060606, 0x209
loc_804F82C:
    push {lr}
    ldr r0, [pc, #0x804f83c-0x804f82e-2] // off_804F840
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804F83C:    .word off_804F840
off_804F840:    .word sub_804F85C+1
    .word sub_804F88C+1
    .word sub_804F8B4+1
    .word sub_804F8C0+1
    .word sub_804F8E8+1
    .word sub_804F90C+1
    .word sub_804F934+1
.thumb
sub_804F85C:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_804F874
    bl sub_80A6D2E
    mov r0, #1
    strb r0, [r5,#4]
    b loc_804F886
loc_804F874:
    bl sub_80A6E74
    cmp r0, #0
    bne loc_804F886
    mov r0, #0
    strb r0, [r5,#4]
    add r4, #2
    mov r0, #1
    pop {pc}
loc_804F886:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F85C

.thumb
sub_804F88C:
    push {lr}
    mov r0, #1
    bl sub_804E550
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r2, [r7,#0x14]
    strb r2, [r1]
    ldrb r0, [r4,#2]
    cmp r0, #7
    bgt loc_804F8A8
loc_804F8A8:
    bl sub_80A6DB8
    add r4, #3
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F88C

.thumb
sub_804F8B4:
    push {lr}
    bl sub_80A6D9E
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_804F8B4

.thumb
sub_804F8C0:
    push {lr}
    mov r0, #1
    bl sub_804E550
    push {r5}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r5, [r0,#0x28]
    bl sub_8002E36
    pop {r5}
    mov r1, #0x80
    and r1, r0
    bne loc_804F8E0
    mov r0, #0
    pop {pc}
loc_804F8E0:
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F8C0

.thumb
sub_804F8E8:
    push {lr}
    mov r0, #1
    bl sub_804E550
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r0, [r1]
    cmp r0, #7
    bgt loc_804F902
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    strb r0, [r7,#0x10]
loc_804F902:
    bl sub_80A6DC8
    add r4, #2
    mov r0, #0
    pop {pc}
// end of function sub_804F8E8

.thumb
sub_804F90C:
    push {lr}
    mov r0, #1
    bl sub_804E550
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r2, [r7,#0x14]
    strb r2, [r1]
    ldrb r0, [r4,#2]
    cmp r0, #7
    bgt loc_804F928
loc_804F928:
    bl sub_80A6DE2
    add r4, #3
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F90C

.thumb
sub_804F934:
    push {lr}
    mov r0, #1
    bl sub_804E550
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r0, [r1]
    cmp r0, #7
    bgt loc_804F94C
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
loc_804F94C:
    bl sub_80A6DE2
    add r4, #2
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_804F934

    ldr r0, [pc, #0x804f964-0x804f958-4] // dword_804F968
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
off_804F964:    .word dword_804F968
dword_804F968:    .word 0x2, 0x3, 0x2, 0x2, 0x2, 0x3, 0x2
loc_804F984:
    push {lr}
    ldr r0, [pc, #0x804f994-0x804f986-2] // off_804F998
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804F994:    .word off_804F998
off_804F998:    .word sub_804F9C8+1
    .word sub_804FAB4+1
    .word sub_804FAB8+1
    .word sub_804FABC+1
    .word sub_804FABC+1
    .word sub_804FB08+1
    .word sub_804FB78+1
    .word sub_804FBE0+1
    .word sub_804FC7C+1
    .word sub_804FD1C+1
    .word sub_804FDC8+1
    .word sub_804FE08+1
.thumb
sub_804F9C8:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x804fa64-0x804f9d0-4] // dword_804FA68
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    cmp r2, #4
    bne loc_804F9DE
    mov r3, #0xf
    and r1, r3
loc_804F9DE:
    lsr r3, r2, #4
    tst r3, r3
    beq loc_804FA28
    sub r3, #1
    lsl r3, r3, #2
    add r3, #0x4c 
    ldr r1, [r5,r3]
    cmp r2, #0x14
    bne loc_804F9F4
    mov r3, #0xf
    and r1, r3
loc_804F9F4:
    mov r3, #0xf
    lsl r3, r3, #8
    and r3, r1
    lsr r3, r3, #8
    add r2, r2, r3
    mov r3, #0xf
    and r3, r2
    cmp r3, #5
    beq loc_804FA0E
    cmp r3, #6
    beq loc_804FA0E
    mov r3, #0xff
    and r1, r3
loc_804FA0E:
    mov r3, #0xf
    add r7, r2, #0
    and r7, r3
    ldr r3, [pc, #0x804fa8c-0x804fa14-4] // dword_804FA90
    lsl r6, r7, #2
    ldr r3, [r3,r6]
    sub r1, r1, r3
    cmp r7, #5
    beq loc_804FA26
    cmp r7, #6
    beq loc_804FA26
    b loc_804FA28
loc_804FA26:
    lsr r1, r1, #2
loc_804FA28:
    mov r3, #0xf
    and r2, r3
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804fb04-0x804fa3e-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804FA64:    .word dword_804FA68
dword_804FA68:    .word 0x87548F4, 0x8745E98, 0x8746830, 0x8746D20, 0x86E31DC
    .word 0x86E66B8, 0x86E66B8, 0x8748110, 0x87BEF20
off_804FA8C:    .word dword_804FA90
dword_804FA90:    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xC0
    .word 0xC0
    .word 0x0, 0x0
// end of function sub_804F9C8

.thumb
sub_804FAB4:
    push {lr}
    pop {pc}
// end of function sub_804FAB4

.thumb
sub_804FAB8:
    push {lr}
    pop {pc}
// end of function sub_804FAB8

.thumb
sub_804FABC:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r0, [r4,#3]
    tst r0, r0
    beq loc_804FAD4
    sub r0, #1
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    b loc_804FADC
loc_804FAD4:
    push {r1-r3}
    bl sub_802D560
    pop {r1-r3}
loc_804FADC:
    ldr r2, [pc, #0x804fb04-0x804fadc-4] // unk_200B4D0
    ldrb r1, [r4,#3]
    lsl r1, r1, #6
    add r2, r2, r1
    ldrb r1, [r4,#2]
    bl sub_8050678
    ldr r0, [pc, #0x804fb04-0x804faea-2] // unk_200B4D0
    ldrb r1, [r4,#3]
    lsl r1, r1, #6
    add r0, r0, r1
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_804FABC

    push {lr}
    pop {pc}
off_804FB04:    .word unk_200B4D0
.thumb
sub_804FB08:
    push {r7,lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    lsr r3, r2, #4
    tst r3, r3
    beq loc_804FB22
    sub r3, #1
    lsl r3, r3, #2
    add r3, #0x4c 
    ldr r1, [r5,r3]
loc_804FB22:
    ldr r0, [pc, #0x804fb6c-0x804fb22-2] // dword_804FB70
    mov r3, #0xf
    and r2, r3
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    tst r0, r0
    bne loc_804FB36
    mov r0, r10
    ldr r0, [r0,#0x44]
    add r0, #0x70 
loc_804FB36:
    lsl r1, r1, #2
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fb42-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #3
    bl f900_8000970
    pop {r0}
    mov r2, #0xe5
    strb r2, [r0,#3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r7,pc}
    .balign 4, 0x00
off_804FB6C:    .word dword_804FB70
dword_804FB70:    .word 0x0
    .word unk_20001E0
// end of function sub_804FB08

.thumb
sub_804FB78:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#5]
    lsl r6, r7, #2
    ldr r1, [pc, #0x804fbcc-0x804fb88-4] // dword_804FBD0
    add r1, r1, r6
    ldrb r0, [r4,#2]
    add r1, r1, r0
    ldrb r1, [r1]
    ldrb r2, [r4,#3]
    add r1, r1, r2
    ldr r0, [pc, #0x804fd98-0x804fb96-2] // aRvyCmu
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fba6-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_804FBCC:    .word dword_804FBD0
dword_804FBD0:    .word 0xFF040200, 0xFF0D0A07, 0xFF191511, 0xFF25211D
// end of function sub_804FB78

.thumb
sub_804FBE0:
    push {r6,r7,lr}
    mov r0, r8
    push {r0}
    mov r0, r9
    push {r0}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    push {r4,r5}
    bl sub_809F280
    lsl r7, r7, #2
    sub r4, r4, r1
    ldr r2, [pc, #0x804fdb4-0x804fbfa-2] // dword_804FDB8
    add r2, r2, r7
    ldrb r7, [r2,r4]
    mov r9, r7
    pop {r4,r5}
    ldr r6, [pc, #0x804fdb0-0x804fc04-4] // =0x131
    ldrb r2, [r4,#2]
    mov r8, r2
loc_804FC0A:
    cmp r7, #0xd
    beq loc_804FC22
    add r0, r6, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_804FC1E
    cmp r2, #0
    beq loc_804FC22
    sub r2, #1
loc_804FC1E:
    add r7, #1
    b loc_804FC0A
loc_804FC22:
    add r2, r5, #0
    add r2, #0x4c 
    add r2, r8
    mov r1, r9
    sub r6, r7, r1
    strb r6, [r2]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#5]
    lsl r6, r3, #2
    ldr r2, [pc, #0x804fd9c-0x804fc36-2] // dword_804FDA0
    add r2, r2, r6
    ldr r1, [r2]
    add r1, r1, r7
    ldr r0, [pc, #0x804fd98-0x804fc3e-2] // aRvyCmu
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fc4e-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {r6,r7,pc}
    .balign 4, 0x00
// end of function sub_804FBE0

.thumb
sub_804FC7C:
    push {r6,r7,lr}
    mov r0, r8
    push {r0}
    mov r0, r9
    push {r0}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    add r2, r5, #0
    add r2, #0x50 
    ldrb r0, [r2]
    mov r8, r0
    push {r4,r5}
    bl sub_809F280
    lsl r7, r7, #2
    sub r4, r4, r1
    ldr r2, [pc, #0x804fdb4-0x804fc9e-2] // dword_804FDB8
    add r2, r2, r7
    ldrb r7, [r2,r4]
    mov r9, r7
    add r8, r7
    pop {r4,r5}
    ldr r6, [pc, #0x804fdb0-0x804fcaa-2] // =0x131
loc_804FCAC:
    cmp r7, #0xd
    beq loc_804FCC2
    add r0, r6, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_804FCBE
    cmp r7, r8
    bne loc_804FCC2
loc_804FCBE:
    add r7, #1
    b loc_804FCAC
loc_804FCC2:
    add r2, r5, #0
    add r2, #0x50 
    add r2, #1
    mov r1, r9
    sub r6, r7, r1
    strb r6, [r2]
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#5]
    lsl r6, r3, #2
    ldr r2, [pc, #0x804fd9c-0x804fcd6-2] // dword_804FDA0
    add r2, r2, r6
    ldr r1, [r2]
    add r1, r1, r7
    ldr r0, [pc, #0x804fd98-0x804fcde-2] // aRvyCmu
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fcee-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #2
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {r6,r7,pc}
    .balign 4, 0x00
// end of function sub_804FC7C

.thumb
sub_804FD1C:
    push {r6,r7,lr}
    mov r0, r8
    push {r0}
    mov r0, r9
    push {r0}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    add r2, r5, #0
    add r2, #0x50 
    ldrb r1, [r4,#2]
    ldrb r0, [r2,r1]
    mov r8, r0
    push {r4,r5}
    bl sub_809F280
    lsl r7, r7, #2
    sub r4, r4, r1
    ldr r2, [pc, #0x804fdb4-0x804fd40-4] // dword_804FDB8
    add r2, r2, r7
    ldrb r7, [r2,r4]
    add r7, r8
    pop {r4,r5}
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r3, [r3,#5]
    lsl r6, r3, #2
    ldr r2, [pc, #0x804fd9c-0x804fd52-2] // dword_804FDA0
    add r2, r2, r6
    ldr r1, [r2]
    add r1, r1, r7
    ldr r0, [pc, #0x804fd98-0x804fd5a-2] // aRvyCmu
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fd6a-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_804FD98:    .word aRvyCmu
off_804FD9C:    .word dword_804FDA0
dword_804FDA0:    .word 0x0
    .word 0x7, 0x11, 0x1D
off_804FDB0:    .word 0x131
off_804FDB4:    .word dword_804FDB8
dword_804FDB8:    .word 0xFF040200
    .word 0xFF060300
    .word 0xFF080400
    .word 0x8050400
// end of function sub_804FD1C

.thumb
sub_804FDC8:
    push {r7,lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r3, [r4,#2]
    add r3, #0x4c 
    ldr r0, [r5,r3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fdde-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #3
    bl f900_8000970
    pop {r0}
    mov r2, #0xe5
    strb r2, [r0,#3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r7,pc}
    .balign 4, 0x00
// end of function sub_804FDC8

.thumb
sub_804FE08:
    push {r7,lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, #0x4c 
    add r0, r0, r5
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804ff20-0x804fe20-4] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #3
    bl f900_8000970
    pop {r0}
    mov r2, #0xe5
    strb r2, [r0,#3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {r7,pc}
// end of function sub_804FE08

.thumb
dead_ho_804FE48:
    push {lr}
    ldr r0, [pc, #0x804fe58-0x804fe4a-2] // jt_804FE5C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804FE58:    .word jt_804FE5C
jt_804FE5C:    .word sub_804FE8C+1
    .word sub_804FEB0+1
    .word sub_804FEB0+1
    .word sub_804FEB0+1
    .word sub_804FEB0+1
    .word sub_804FE8C+1
    .word sub_804FE8C+1
    .word 0x804FEFD, 0x804FED9, 0x804FEFD, 0x804FEFD, 0x804FEFD
// end of function dead_ho_804FE48

.thumb
sub_804FE8C:
    push {r3,lr}
    ldrb r0, [r5,#6]
    add r0, #1
    strb r0, [r5,#6]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7,#2]
    lsl r1, r1, #6
    ldr r0, [pc, #0x804ff20-0x804fe9c-4] // unk_200B4D0
    add r0, r0, r1
    ldrh r1, [r7,#2]
    add r1, #1
    strh r1, [r7,#2]
    add r4, #4
    str r4, [r5,#0x48]
    add r4, r0, #0
    pop {r3,pc}
    .byte 0, 0
// end of function sub_804FE8C

.thumb
sub_804FEB0:
    ldrb r0, [r5,#6]
    add r0, #1
    strb r0, [r5,#6]
    ldr r0, [pc, #0x804ff20-0x804feb6-2] // unk_200B4D0
    ldrb r1, [r4,#3]
    lsl r1, r1, #6
    add r0, r0, r1
    ldr r2, [pc, #0x804fecc-0x804febe-2] // dword_804FED0
    ldrb r7, [r4,#1]
    ldrb r2, [r2,r7]
    add r4, r4, r2
    str r4, [r5,#0x48]
    add r4, r0, #0
    mov pc, lr
off_804FECC:    .word dword_804FED0
dword_804FED0:    .word 0x40504FF, 0x4, 0x79A8B508, 0x71A83001, 0x37641C2F, 0x1898879
    .word 0x1840480D, 0x31018879, 0x34028079, 0x1C0464AC, 0xBD08, 0x79A8B508
    .word 0x71A83001, 0x37641C2F, 0x1898879, 0x18404804, 0x31018879, 0x34038079
    .word 0x1C0464AC, 0xBD08
off_804FF20:    .word unk_200B4D0
// end of function sub_804FEB0

loc_804FF24:
    push {lr}
    ldr r0, [pc, #0x804ff34-0x804ff26-2] // off_804FF38
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804FF34:    .word off_804FF38
off_804FF38:    .word sub_804FF68+1
    .word sub_804FF7C+1
    .word sub_804FF90+1
    .word sub_804FFA0+1
    .word sub_804FFB0+1
    .word sub_804FFBC+1
    .word sub_804FF68+1
    .word sub_804FF68+1
    .word sub_804FFD4+1
    .word sub_804FFE4+1
    .word sub_804FFF4+1
    .word sub_8050004+1
.thumb
sub_804FF68:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl f500_8000558
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_804FF68

.thumb
sub_804FF7C:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl f500_8000560
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_804FF7C

.thumb
sub_804FF90:
    push {lr}
    mov r0, #0x40 
    bl sub_804E55C
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_804FF90

.thumb
sub_804FFA0:
    push {lr}
    mov r0, #0x40 
    bl sub_804E550
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_804FFA0

.thumb
sub_804FFB0:
    push {lr}
    bl f500_80006CC
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_804FFB0

.thumb
sub_804FFBC:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl f500_80005D2
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0xff
    strb r0, [r1,#0x19]
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_804FFBC

.thumb
sub_804FFD4:
    push {lr}
    mov r0, #0x80
    bl sub_804E55C
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804FFD4

.thumb
sub_804FFE4:
    push {lr}
    mov r0, #0x80
    bl sub_804E550
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_804FFE4

.thumb
sub_804FFF4:
    push {lr}
    bl sub_802BC1C
    bl sub_802BC50
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_804FFF4

.thumb
sub_8050004:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    mov r2, #0x1f
    push {r0}
    bl f500_80005EA
    pop {r0}
    add r4, #4
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050004

    ldr r0, [pc, #0x8050028-0x805001c-4] // dword_805002C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
off_8050028:    .word dword_805002C
dword_805002C:    .word 0x4, 0x4, 0x2, 0x2, 0x2, 0x4, 0x4, 0x2, 0x2, 0x2, 0x2, 0x4
loc_805005C:
    push {lr}
    ldr r0, [pc, #0x805006c-0x805005e-2] // off_8050070
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_805006C:    .word off_8050070
off_8050070:    .word sub_80500B0+1
    .word sub_80500EC+1
    .word sub_8050120+1
    .word 0x0, 0x0
    .word sub_8050154+1
    .word sub_8050178+1
    .word sub_80501C4+1
    .word sub_8050200+1
    .byte 0, 0, 0, 0
    .word sub_8050258+1
    .word 0x0, 0x0
    .word sub_8050278+1
    .word 0
    .byte 0, 0, 0, 0
.thumb
sub_80500B0:
    push {lr}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, r0, r4
    add r0, #3
    ldrb r2, [r0]
    ldrb r1, [r0,#1]
    lsl r1, r1, #8
    orr r2, r1
    ldrb r1, [r0,#2]
    lsl r1, r1, #0x10
    orr r2, r1
    ldrb r1, [r0,#3]
    lsl r1, r1, #0x18
    orr r2, r1
    add r0, r2, #0
    str r0, [r5,#0x4c]
    bl sub_802D4EA
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #2
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_80500B0

.thumb
sub_80500EC:
    push {lr}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    lsl r0, r0, #1
    add r0, r0, r4
    add r0, #3
    mov r2, #1
    str r2, [r5,#0x54]
    ldrb r1, [r0,#1]
    str r1, [r5,#0x50]
    ldrb r0, [r0]
    str r0, [r5,#0x4c]
    push {r4}
    bl dword_801907C+2
    pop {r4}
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #1
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_80500EC

.thumb
sub_8050120:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8050130
    b loc_8050150
loc_8050130:
    push {r4,r5}
    mov r2, #0x1f
    bl sub_80F5304
    mov r1, #1
    mov r2, #0xff
    mov r3, #1
    bl sub_8005524
    mov r0, #0x2c 
    mov r1, #0x10
    bl sub_8005ADC
    pop {r4,r5}
    mov r0, #1
    strb r0, [r5,#4]
loc_8050150:
    mov r0, #0
    pop {pc}
// end of function sub_8050120

.thumb
sub_8050154:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8050164
    b loc_8050172
loc_8050164:
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl sub_8005838
    pop {r4,r5}
    mov r0, #1
    strb r0, [r5,#4]
loc_8050172:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050154

.thumb
sub_8050178:
    push {lr}
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8050188
    mov r0, #1
    bl sub_804E550
    b loc_80501BE
loc_8050188:
    ldrb r0, [r4,#2]
    cmp r0, #1
    beq loc_80501A0
    bl sub_8005864
    bne loc_80501AA
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #1
    bl sub_804E550
    b loc_80501BE
loc_80501A0:
    bl sub_802D5E8
    mov r1, #0xff
    cmp r0, #0xa
    bge loc_80501AC
loc_80501AA:
    ldrb r1, [r4,#3]
loc_80501AC:
    cmp r1, #0xff
    beq loc_80501B8
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_80501B8:
    add r4, #4
    mov r0, #1
    pop {pc}
loc_80501BE:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050178

.thumb
sub_80501C4:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80501D4
    b loc_80501FC
loc_80501D4:
    mov r7, r10
    ldr r2, [r7,#0x14]
    ldr r0, [r2,#0x14]
    ldrb r1, [r4,#2]
    bl sub_8005644
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r7, r10
    ldr r2, [r7,#0x40]
    mov r0, #0xc
    strb r0, [r2]
    bl sub_80A6D9E
    bl sub_80A6D16
    mov r0, #1
    strb r0, [r5,#4]
loc_80501FC:
    mov r0, #0
    pop {pc}
// end of function sub_80501C4

.thumb
sub_8050200:
    push {lr}
    mov r0, r10
    ldr r7, [r0,#0x40]
    ldr r6, [r0,#0x44]
    mov r0, #0x9a
    bl f500_8000558
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrh r1, [r7,#0x20]
    add r0, r0, r1
    ldrh r2, [r7,#0x22]
    cmp r0, r2
    blt loc_8050222
    add r0, r2, #0
loc_8050222:
    strh r0, [r7,#0x20]
    strh r0, [r6,#0x14]
    add r4, #4
    mov r0, #0
    pop {pc}
// end of function sub_8050200

    push {lr}
    mov r0, #0x73 
    bl f500_8000558
    bl sub_8001AE0
    ldrb r1, [r4,#2]
    and r1, r0
    add r0, r1, r4
    add r0, #3
    ldrb r0, [r0]
    str r0, [r5,#0x4c]
    mov r1, #1
    bl sub_802D37C
    ldrb r0, [r4,#2]
    add r0, #1
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8050258:
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8050268
    b loc_8050272
loc_8050268:
    ldrb r0, [r4,#2]
    bl sub_800580C
    mov r0, #1
    strb r0, [r5,#4]
loc_8050272:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050258

.thumb
sub_8050278:
    push {lr}
    ldrb r0, [r4,#2]
    bl sub_8042FB4
    add r4, #3
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050278

    push {lr}
    ldr r0, [pc, #0x8050298-0x805028a-2] // dword_805029C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8050298:    .word dword_805029C
dword_805029C:    .word 0x80502DD, 0x80502E9, 0x80502F5, 0x80502F9, 0x80502FD
    .word 0x8050301, 0x8050305, 0x8050309, 0x805030D, 0x0
    .word loc_8050310+1
    .word 0
    .byte 0, 0, 0, 0
    .word loc_8050314+1
    .word 0x0, 0x0
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #2
    add r4, r4, r0
    add r4, #3
    mov pc, lr
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #1
    add r4, r4, r0
    add r4, #3
    mov pc, lr
    add r4, #2
    mov pc, lr
    add r4, #8
    mov pc, lr
    add r4, #2
    mov pc, lr
    add r4, #3
    mov pc, lr
    add r4, #4
    mov pc, lr
    add r4, #3
    mov pc, lr
    add r4, #4
    mov pc, lr
loc_8050310:
    add r4, #3
    mov pc, lr
loc_8050314:
    add r4, #3
    mov pc, lr
loc_8050318:
    push {lr}
    ldr r0, [pc, #0x8050328-0x805031a-2] // off_805032C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8050328:    .word off_805032C
off_805032C:    .word sub_8050350+1
    .word sub_8050380+1
    .word sub_805039C+1
    .word sub_80503A8+1
    .word sub_80503C4+1
    .word sub_80503D8+1
    .word sub_80503E4+1
    .word sub_80503F8+1
    .word sub_8050424+1
.thumb
sub_8050350:
    push {lr}
    push {r4}
    bl sub_8048754
    pop {r4}
    push {r0,r4}
    tst r0, r0
    bne loc_8050366
    mov r0, #0x74 
    bl f500_8000558
loc_8050366:
    pop {r0,r4}
    add r0, #2
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_8050378
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050378:
    add r4, #5
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_8050350

.thumb
sub_8050380:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    bl sub_8005772
    add r4, #5
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050380

.thumb
sub_805039C:
    push {lr}
    bl sub_809ED3C
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_805039C

.thumb
sub_80503A8:
    push {lr}
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80503c0-0x80503ae-2] // off_805158C
    ldr r1, [r1,r0]
    ldrb r0, [r4,#3]
    mov lr, pc
    bx r1
    add r4, #4
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_80503C0:    .word off_805158C
// end of function sub_80503A8

.thumb
sub_80503C4:
    push {lr}
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    bl sub_8005754
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_80503C4

.thumb
sub_80503D8:
    push {lr}
    bl sub_80476E8
    add r4, #2
    mov r0, #1
    pop {pc}
// end of function sub_80503D8

.thumb
sub_80503E4:
    push {lr}
    ldr r0, [pc, #0x80503f4-0x80503e6-2] // =0x1000
    bl sub_804E550
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80503F4:    .word 0x1000
// end of function sub_80503E4

.thumb
sub_80503F8:
    push {lr}
    bl sub_80057A8
    tst r0, r0
    beq loc_805040C
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #1
loc_805040C:
    add r0, #2
    ldrb r0, [r4,r0]
    add r1, r0, #0
    cmp r1, #0xff
    beq loc_805041E
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_805041E:
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_80503F8

.thumb
sub_8050424:
    push {lr}
    mov r2, #0
    mov r0, #0x29 
    bl sub_800D742
    cmp r0, #1
    beq loc_8050434
    mov r2, #1
loc_8050434:
    add r2, #2
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8050444
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050444:
    add r4, #4
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_8050424

    ldr r0, [pc, #0x8050458-0x805044c-4] // dword_805045C
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    mov pc, lr
    .balign 4, 0x00
off_8050458:    .word dword_805045C
dword_805045C:    .word 0x4020505, 0x4020202, 0x4
loc_8050468:
    push {lr}
    ldr r0, [pc, #0x8050478-0x805046a-2] // loc_805047C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8050478:    .word loc_805047C
loc_805047C:
    lsl r5, r4, #0x12
    lsr r5, r0, #0x20
    lsl r1, r5, #0x13
    lsr r5, r0, #0x20
    lsl r1, r6, #0x13
    lsr r5, r0, #0x20
    lsl r5, r2, #0x14
    lsr r5, r0, #0x20
    lsl r5, r3, #0x14
    lsr r5, r0, #0x20
    lsl r5, r5, #0x14
    lsr r5, r0, #0x20
    lsl r1, r0, #0x15
    lsr r5, r0, #0x20
    lsl r5, r5, #0x15
    lsr r5, r0, #0x20
    lsl r5, r1, #0x17
    lsr r5, r0, #0x20
    lsl r1, r4, #0x18
    lsr r5, r0, #0x20
    ldr r0, [pc, #0x80504d4-0x80504a4-4] // dword_80504D8
    ldrb r3, [r4,#4]
    strb r3, [r5,#0x15]
    lsl r3, r3, #3
    add r0, r0, r3
    ldrb r1, [r4,#2]
    strb r1, [r5,#0x1c]
    ldr r2, [r0]
    strb r2, [r5,#0x1e]
    add r1, r1, r2
    sub r1, #2
    lsl r1, r1, #3
    strb r1, [r5,#0x1a]
    ldrb r1, [r4,#3]
    strb r1, [r5,#0x1d]
    ldr r2, [r0,#4]
    strb r2, [r5,#0x1f]
    add r1, r1, r2
    sub r1, #2
    lsl r1, r1, #3
    strb r1, [r5,#0x1b]
    add r4, #5
    mov r0, #1
    mov pc, lr
off_80504D4:    .word dword_80504D8
dword_80504D8:    .word 0x1E, 0x8, 0x14, 0x8, 0x20013402, 0x46F7, 0x762978A1, 0x76A931AF
    .word 0x766978E1, 0x7923220C, 0x1889435A, 0x7E2876E9, 0x31941C29, 0x34057008, 0x46F72001, 0x20013402
    .word 0x46F7, 0x76A978A1, 0x76E978E1, 0x20013404, 0x46F7, 0x208478A1, 0x78E15029, 0x50292088
    .word 0x20013404, 0x46F7, 0x200B78A1, 0x22F04348, 0x8521A12, 0x1812762A, 0x78E176AA, 0x4348200E
    .word 0x1A1222A0, 0x766A0852, 0x76EA1812, 0x20013404, 0x46F7, 0x26F0B5C0, 0x200127B0, 0xF9DAF7DD
    .word 0x26F0D001, 0x78A127A6, 0x200B3901, 0x21084348, 0x43512202, 0x1C321840, 0x2002B401, 0xFFE8F7FD
    .word 0x1C3AD000, 0x1A12BC01, 0x20020852, 0xFFE0F7FD, 0x7E29D101, 0x7E291A52, 0x30941C28, 0x70031853
    .word 0x520852, 0x6FE90092, 0x67E91889, 0x20013403, 0xBDC0, 0x26F0B5C0, 0x200127B0, 0xF9AAF7DD
    .word 0x26E6D001, 0x78A127A6, 0x4348200B, 0x1C323008, 0x2002B401, 0xFFBCF7FD, 0x1C3AD000, 0x1A12BC01
    .word 0x20020852, 0xFFB4F7FD, 0x7E29D101, 0x7E291A52, 0x30941C28, 0x70031853, 0x6FE90092, 0x67E91889
    .word 0x20013403, 0xBDC0, 0x2679B5C0, 0x78A12779, 0x200B3901, 0x21084348, 0x43512202, 0x1C321840
    .word 0x1A121C3A, 0x46900852, 0x1C287E29, 0x18533094, 0x8527003, 0x920052, 0x18896FE9, 0x340367E9
    .word 0xBDC02001, 0x78614802, 0x18245C40, 0x46F7, 0x805066C, 0x2050205, 0x3040404, 0x303
.thumb
sub_8050678:
    push {r4,r5,lr}
    push {r1,r2}
    bl fA00_8000A30
    mov r8, r0
    bl fA00_8000A8C
    pop {r1,r2}
    mov r6, #0x40 
    tst r1, r6
    bne loc_8050692
    mov r6, #0
    b loc_8050694
loc_8050692:
    mov r6, #1
loc_8050694:
    mov r3, #0xf
    and r3, r1
    cmp r3, #0
    bne loc_805069E
    add r3, r0, #0
loc_805069E:
    sub r3, r3, r0
    mov r4, #0x80
    tst r1, r4
    bne loc_80506C8
    sub r4, r0, #1
    lsl r4, r4, #2
    mov r0, #0xf
loc_80506AC:
    mov r7, r8
    lsr r7, r4
    and r7, r0
    add r7, #1
    strb r7, [r2]
    add r2, #1
    sub r4, #4
    bge loc_80506AC
loc_80506BC:
    cmp r3, #0
    ble loc_80506EA
    sub r3, #1
    strb r6, [r2]
    add r2, #1
    b loc_80506BC
loc_80506C8:
    sub r4, r0, #1
    lsl r4, r4, #2
loc_80506CC:
    cmp r3, #0
    ble loc_80506D8
    sub r3, #1
    strb r6, [r2]
    add r2, #1
    b loc_80506CC
loc_80506D8:
    mov r0, #0xf
loc_80506DA:
    mov r7, r8
    lsr r7, r4
    and r7, r0
    add r7, #1
    strb r7, [r2]
    add r2, #1
    sub r4, #4
    bge loc_80506DA
loc_80506EA:
    mov r7, #0xe5
    strb r7, [r2]
    mov r7, #0
    strb r7, [r2,#1]
    mov r7, #0
    strb r7, [r2,#2]
    pop {r4,r5,pc}
// end of function sub_8050678

.thumb
sub_80506F8:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0xa
    cmp r0, #0
    beq loc_805070C
    cmp r0, #1
    beq loc_8050732
    cmp r0, #2
    beq loc_8050744
    b loc_8050764
loc_805070C:
    push {r4,r5}
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_8050716
    ldr r0, [r5,#0x54]
loc_8050716:
    ldrb r1, [r4,#3]
    bl sub_802D37C
    pop {r4,r5}
    cmp r0, #1
    beq loc_805072C
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
loc_805072C:
    add r0, #4
    ldrb r1, [r4,r0]
    b loc_8050782
loc_8050732:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_802D3D8
    pop {r4,r5}
    add r0, #4
    ldrb r1, [r4,r0]
    b loc_8050782
loc_8050744:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_802D3C8
    pop {r4,r5}
    cmp r0, #1
    beq loc_805075E
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
loc_805075E:
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8050764:
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl sub_802D3F8
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_805077E
    add r2, #1
    cmp r0, r1
    bgt loc_805077E
    add r2, #1
loc_805077E:
    add r2, #4
    ldrb r1, [r4,r2]
loc_8050782:
    cmp r1, #0xff
    beq loc_805078E
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_805078E:
    add r4, #7
    mov r0, #1
    pop {pc}
// end of function sub_80506F8

loc_8050794:
    sub r0, #0x20 
    ldr r1, [pc, #0x80507a0-0x8050796-2] // loc_80507A4
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .byte 0, 0
off_80507A0:    .word loc_80507A4
loc_80507A4:
    lsl r7, r0, #0x1c
    lsl r4, r0, #0x1c
.thumb
sub_80507A8:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0xe
    cmp r0, #0
    beq loc_80507BC
    cmp r0, #1
    beq loc_80507F2
    cmp r0, #2
    beq loc_8050814
    b loc_8050840
loc_80507BC:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    ldr r1, [pc, #0x8050884-0x80507d2-2] // =0xFFFFFFFF
    cmp r0, r1
    bne loc_80507DA
    ldr r0, [r5,#0x54]
loc_80507DA:
    str r0, [r5,#0x54]
    bl sub_802D4EA
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8050870
loc_80507F2:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_802D534
    pop {r4,r5}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8050870
loc_8050814:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_802D520
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8050840:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    push {r0,r2,r3}
    bl sub_802D560
    add r1, r0, #0
    pop {r0,r2,r3}
    mov r2, #0
    cmp r1, r0
    beq loc_805086C
    add r2, #1
    cmp r1, r0
    bgt loc_805086C
    add r2, #1
loc_805086C:
    add r2, #6
    ldrb r1, [r4,r2]
loc_8050870:
    cmp r1, #0xff
    beq loc_805087C
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_805087C:
    add r4, #9
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
dword_8050884:    .word 0xFFFFFFFF
// end of function sub_80507A8

loc_8050888:
    sub r0, #0xe
    ldr r1, [pc, #0x8050894-0x805088a-2] // loc_8050898
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .balign 4, 0x00
off_8050894:    .word loc_8050898
loc_8050898:
    lsr r1, r1, #4
    lsr r6, r0, #4
    ldrb r0, [r4,#1]
    sub r0, #0x1b
    cmp r0, #0
    beq loc_80508AE
    cmp r0, #1
    beq loc_80508D8
    cmp r0, #2
    beq loc_80508EE
    b loc_805090A
loc_80508AE:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_80508C0
    ldr r0, [r5,#0x54]
    sub r0, #0xc0
loc_80508C0:
    ldrb r1, [r4,#4]
    cmp r1, #0xff
    bne loc_80508C8
    ldr r1, [r5,#0x58]
loc_80508C8:
    ldrb r2, [r4,#3]
    add r0, #0xc0
    bl sub_802D5FC
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_80508D8:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#3]
    add r0, #0xc0
    bl sub_802D61C
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_80508EE:
    push {r4,r5}
    mov r0, #0x73 
    bl f500_8000558
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#3]
    add r0, #0xc0
    bl sub_802D60C
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_805090A:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#7]
    add r0, #0xc0
    bl sub_802D62C
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_8050928
    add r2, #1
    cmp r0, r1
    bgt loc_8050928
    add r2, #1
loc_8050928:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8050938
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050938:
    add r4, #8
    mov r0, #1
    pop {pc}
    .byte 0, 0
loc_8050940:
    sub r0, #0x40 
    ldr r1, [pc, #0x805094c-0x8050942-2] // loc_8050950
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .balign 4, 0x00
off_805094C:    .word loc_8050950
loc_8050950:
    lsl r5, r0, #0x14
    lsr r5, r0, #0x20
.thumb
sub_8050954:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0x12
    cmp r0, #0
    beq loc_8050968
    cmp r0, #1
    beq loc_805099E
    cmp r0, #2
    beq loc_80509C0
    b loc_80509EC
loc_8050968:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    ldr r1, [pc, #0x8050a30-0x805097e-2] // =0xFFFFFFFF
    cmp r0, r1
    bne loc_8050986
    ldr r0, [r5,#0x54]
loc_8050986:
    str r0, [r5,#0x54]
    bl sub_802D574
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8050A1C
loc_805099E:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_802D5BC
    pop {r4,r5}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8050A1C
loc_80509C0:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_802D5A8
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_80509EC:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    push {r0,r2,r3}
    bl sub_802D5E8
    add r1, r0, #0
    pop {r0,r2,r3}
    mov r2, #0
    cmp r1, r0
    beq loc_8050A18
    add r2, #1
    cmp r1, r0
    bgt loc_8050A18
    add r2, #1
loc_8050A18:
    add r2, #6
    ldrb r1, [r4,r2]
loc_8050A1C:
    cmp r1, #0xff
    beq loc_8050A28
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050A28:
    add r4, #9
    mov r0, #1
    pop {pc}
    .byte 0, 0
dword_8050A30:    .word 0xFFFFFFFF
// end of function sub_8050954

loc_8050A34:
    sub r0, #0x12
    ldr r1, [pc, #0x8050a40-0x8050a36-2] // loc_8050A44
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .byte 0, 0
off_8050A40:    .word loc_8050A44
loc_8050A44:
    lsr r1, r1, #4
    lsr r6, r0, #4
.thumb
sub_8050A48:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0x16
    cmp r0, #0
    beq loc_8050A5C
    cmp r0, #1
    beq loc_8050A7A
    cmp r0, #2
    beq loc_8050A86
    b loc_8050A9C
loc_8050A5C:
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_8050A64
    ldr r0, [r5,#0x54]
loc_8050A64:
    str r0, [r5,#0x54]
    bl sub_802D660
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r0, #3
    ldrb r1, [r4,r0]
    b loc_8050AB6
loc_8050A7A:
    ldrb r0, [r4,#2]
    bl sub_802D698
    add r0, #3
    ldrb r1, [r4,r0]
    b loc_8050AB6
loc_8050A86:
    ldrb r0, [r4,#2]
    bl sub_802D684
    push {r0}
    mov r0, #0x73 
    bl f500_8000558
    pop {r0}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8050A9C:
    ldrb r0, [r4,#2]
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#8]
    mov r2, #0
    cmp r1, r0
    beq loc_8050AB2
    add r2, #1
    cmp r1, r0
    bgt loc_8050AB2
    add r2, #1
loc_8050AB2:
    add r2, #3
    ldrb r1, [r4,r2]
loc_8050AB6:
    cmp r1, #0xff
    beq loc_8050AC2
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050AC2:
    add r4, #6
    mov r0, #1
    pop {pc}
// end of function sub_8050A48

    sub r0, #0x16
    ldr r1, [pc, #0x8050ad4-0x8050aca-2] // loc_8050AD8
    ldrb r0, [r1,r0]
    add r4, r4, r0
    pop {pc}
    .balign 4, 0x00
off_8050AD4:    .word loc_8050AD8
loc_8050AD8:
    lsr r1, r1, #4
    lsr r6, r0, #4
loc_8050ADC:
    push {lr}
    ldr r0, [pc, #0x8050aec-0x8050ade-2] // loc_8050AF0
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8050AEC:    .word loc_8050AF0
loc_8050AF0:
    lsr r1, r6, #0xc
    lsr r5, r0, #0x20
    lsr r1, r0, #0xd
    lsr r5, r0, #0x20
    lsr r5, r0, #0xf
    lsr r5, r0, #0x20
    lsr r5, r7, #0xf
    lsr r5, r0, #0x20
    lsr r1, r4, #0xf
    lsr r5, r0, #0x20
    lsr r5, r7, #0xf
    lsr r5, r0, #0x20
    lsr r5, r2, #0x16
    lsr r5, r0, #0x20
    lsr r1, r6, #0x18
    lsr r5, r0, #0x20
    lsr r5, r4, #0x19
    lsr r5, r0, #0x20
    lsr r5, r4, #0x1a
    lsr r5, r0, #0x20
    lsr r5, r3, #0x1c
    lsr r5, r0, #0x20
    lsr r1, r2, #0x1e
    lsr r5, r0, #0x20
    lsr r1, r7, #0x1e
    lsr r5, r0, #0x20
    lsr r5, r0, #0xf
    lsr r5, r0, #0x20
    asr r5, r1, #0x20
    lsr r5, r0, #0x20
    lsr r5, r5, #0x15
    lsr r5, r0, #0x20
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    mov r1, #0
    strb r1, [r5,r0]
    add r4, #3
    mov r0, #1
    mov pc, lr
    .byte 0, 0
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_8050B54
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8050B8A
loc_8050B54:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8050B6A
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_804E550
    b loc_8050B8A
loc_8050B6A:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8050B8E
    mov r1, #8
    tst r0, r1
    beq loc_8050B8A
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    beq loc_8050B8A
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#0x13]
loc_8050B8A:
    mov r0, #0
    pop {pc}
loc_8050B8E:
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    bne loc_8050B8A
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r0, #0x10
    bl sub_804E55C
    mov r0, #7
    bl sub_8053990
    ldrb r0, [r5,#0x13]
    bl sub_8053980
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8053980
    add r4, #2
    mov r0, #0
    pop {pc}
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    mov r1, #0
    ldrb r2, [r4,#1]
    cmp r2, #2
    beq loc_8050BD8
    mov r1, #1
    cmp r2, #4
    beq loc_8050BD8
    mov r1, #0x5e 
loc_8050BD8:
    strb r1, [r5,r0]
    add r4, #3
    mov r0, #1
    mov pc, lr
    ldrb r0, [r4,#2]
    mov r1, #0x5e 
    mov r2, r10
    ldr r2, [r2,#0x44]
    ldrb r3, [r2,#0xd]
    tst r3, r3
    beq loc_8050BF2
    add r2, #0x70 
    ldrb r1, [r2,r0]
loc_8050BF2:
    add r0, #0x4c 
    strb r1, [r5,r0]
    add r4, #3
    mov r0, #1
    mov pc, lr
    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_8050C10
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8050C6A
loc_8050C10:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8050C26
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_804E550
    b loc_8050C6A
loc_8050C26:
    ldrb r1, [r4,#1]
    cmp r1, #5
    beq loc_8050C40
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_8050C40
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r2, #4
    b loc_8050CBA
loc_8050C40:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8050C6E
    mov r1, #8
    tst r0, r1
    beq loc_8050C6A
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    beq loc_8050C6A
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r0, #0x80
    ldr r0, [r5,r0]
    sub r0, #1
    strb r0, [r5,#0x13]
loc_8050C6A:
    mov r0, #0
    pop {pc}
loc_8050C6E:
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_8050C6A
    mov r0, #0x10
    bl sub_804E55C
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8053980
    mov r2, #1
    ldrb r1, [r4,#1]
    cmp r1, #3
    bne loc_8050CA2
    bl sub_8050CD0
    tst r0, r0
    beq loc_8050CB8
    b loc_8050CAA
loc_8050CA2:
    bl sub_8050CF8
    tst r0, r0
    beq loc_8050CB8
loc_8050CAA:
    push {r0-r3}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl f500_8000558
    pop {r0-r3}
    mov r2, #0
loc_8050CB8:
    add r2, #2
loc_8050CBA:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8050CC8
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050CC8:
    add r4, #5
    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_8050CD0:
    push {r1-r7,lr}
    mov r4, #0
    ldr r0, [r5,#0x4c]
    ldr r1, [r5,#0x54]
    mov r2, #4
    bl sub_808EC76
    add r4, r4, r0
    ldr r0, [r5,#0x50]
    ldr r1, [r5,#0x58]
    mov r2, #3
    bl sub_808EC76
    add r4, r4, r0
    str r4, [r5,#0x4c]
    mov r0, #0
    cmp r4, #7
    bne locret_8050CF6
    mov r0, #1
locret_8050CF6:
    pop {r1-r7,pc}
// end of function sub_8050CD0

.thumb
sub_8050CF8:
    push {r2,lr}
    ldr r0, [r5,#0x4c]
    bl sub_8050D1C
    add r3, r0, #0
    mov r0, #1
    ldr r2, [pc, #0x8050d18-0x8050d04-4] // dword_805239C+28
loc_8050D06:
    ldr r1, [r2]
    tst r1, r1
    beq locret_8050D16
    cmp r3, r1
    beq loc_8050D14
    add r2, #4
    b loc_8050D06
loc_8050D14:
    mov r0, #0
locret_8050D16:
    pop {r2,pc}
off_8050D18:    .word dword_805239C+0x1C
// end of function sub_8050CF8

.thumb
sub_8050D1C:
    push {r2}
    add r1, r0, #0
    mov r3, #0xff
    mov r2, #0
loc_8050D24:
    and r1, r3
    lsr r1, r2
    tst r1, r1
    beq loc_8050D68
    cmp r1, #0x5e 
    bge loc_8050D34
    add r1, #0x2f 
    b loc_8050D58
loc_8050D34:
    cmp r1, #0x8f
    bne loc_8050D3C
    mov r1, #0x2f 
    b loc_8050D58
loc_8050D3C:
    cmp r1, #0x8a
    bne loc_8050D44
    mov r1, #0xa5
    b loc_8050D58
loc_8050D44:
    cmp r1, #0x89
    bne loc_8050D4C
    mov r1, #0x2e 
    b loc_8050D58
loc_8050D4C:
    cmp r1, #0x79 
    bne loc_8050D54
    mov r1, #0x2d 
    b loc_8050D58
loc_8050D54:
    sub r1, #0x1d
    b loc_8050D58
loc_8050D58:
    lsl r1, r2
    bic r0, r3
    orr r0, r1
    add r2, #8
    mov r3, #0xff
    lsl r3, r2
    add r1, r0, #0
    b loc_8050D24
loc_8050D68:
    pop {r2}
    mov pc, lr
// end of function sub_8050D1C

    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r1, [r5,#0x4c]
    str r1, [r0,#0x70]
    add r4, #2
    mov r0, #1
    mov pc, lr
    .balign 4, 0x00
.thumb
sub_8050D7C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    add r0, #0x70 
    mov r1, #0x20 
    ldr r2, [pc, #0x8050d90-0x8050d86-2] // =0x828282
    bl f900_80009FC
    pop {pc}
    .byte 0, 0
dword_8050D90:    .word 0x828282
// end of function sub_8050D7C

    push {lr}
    mov r0, #1
    bl sub_804E550
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_8050DA8
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8050DDA
loc_8050DA8:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8050DBE
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_804E550
    b loc_8050DDA
loc_8050DBE:
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_8050DD2
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r2, #4
    b loc_8050E1A
loc_8050DD2:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8050DDE
loc_8050DDA:
    mov r0, #0
    pop {pc}
loc_8050DDE:
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl f500_8000558
    mov r0, #0x10
    bl sub_804E55C
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8053980
    ldrb r0, [r4,#2]
    tst r0, r0
    bne loc_8050E18
    push {r6}
    add r3, r5, #0
    mov r2, #0x4c 
    add r2, r2, r3
    ldrb r0, [r5,#0x13]
    ldrb r6, [r2,r0]
    add r2, #4
    ldrb r1, [r4,#2]
    add r2, r2, r1
    strb r6, [r2]
    pop {r6}
loc_8050E18:
    mov r2, #3
loc_8050E1A:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8050E28
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050E28:
    add r4, #5
    mov r0, #0
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r0, #1
    bl sub_804E550
    bl sub_8050E54
    add r0, #2
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_8050E4C
    bl dword_804E500
    mov r0, #1
    pop {pc}
loc_8050E4C:
    add r4, #4
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8050E54:
    mov r0, #1
    ldr r3, [r5,#0x50]
    ldr r1, [r5,#0x54]
    cmp r3, r1
    bne locret_8050E60
    mov r0, #0
locret_8050E60:
    mov pc, lr
    .balign 4, 0x00
// end of function sub_8050E54

    push {r6,r7,lr}
    mov r0, #0
    str r0, [r5,#0x50]
    push {r4,r5}
    bl sub_809F280
    lsl r6, r7, #2
    sub r1, r4, r1
    pop {r4,r5}
    ldr r2, [pc, #0x8050e90-0x8050e76-2] // dword_8050E94
    add r2, r2, r6
    ldrb r6, [r2,r1]
    mov r0, #0
    cmp r6, #1
    beq loc_8050E86
    mov r0, #1
    lsl r0, r0, #8
loc_8050E86:
    str r0, [r5,#0x54]
    add r4, #2
    mov r0, #1
    pop {r6,r7,pc}
    .byte 0, 0
off_8050E90:    .word dword_8050E94
dword_8050E94:    .word 0xFF010101
    .word 0xFF020101
    .word 0xFF010202
    .word 0x2010102
.thumb
sub_8050EA4:
    push {r6,r7,lr}
    push {r4,r5}
    bl sub_809F280
    sub r2, r4, r1
    ldr r7, [pc, #0x8050f10-0x8050eae-2] // byte_8050F14
    ldrh r6, [r7,#(word_8050F18 - 0x8050f14)]
    add r6, r6, r2
    add r0, r6, #0
    bl sub_8024FA0
    ldrh r6, [r7,#(word_8050F16 - 0x8050f14)]
    add r6, r6, r2
    add r0, r6, #0
    bl sub_8024FA0
    push {r7}
    bl sub_809F2B4
    add r3, r7, #0
    pop {r7}
    sub r2, r4, r1
    pop {r4,r5}
    ldrh r6, [r7]
    add r6, r6, r2
    add r0, r6, #0
    bl sub_8024FA0
    cmp r3, #3
    bne loc_8050F08
    mov r0, #0x11
    mov r1, #0
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #1
    bl sub_8024FB8
    cmp r2, #3
    bne loc_8050EFC
    mov r0, #0x11
    mov r1, #0
    bl sub_8024F9C
loc_8050EFC:
    cmp r2, #4
    bne loc_8050F08
    mov r0, #0x11
    mov r1, #1
    bl sub_8024F9C
loc_8050F08:
    add r4, #2
    mov r0, #1
    pop {r6,r7,pc}
    .byte 0, 0
off_8050F10:    .word byte_8050F14
byte_8050F14:    .byte 0x4D, 0x1
word_8050F16:    .hword 0x444
word_8050F18:    .hword 0x436
    .balign 4, 0x00
// end of function sub_8050EA4

.thumb
sub_8050F1C:
    push {r6,r7,lr}
    push {r4,r5}
    bl sub_809F280
    ldr r6, [pc, #0x8050f58-0x8050f24-4] // byte_8050F5C
    lsl r7, r4, #2
    add r7, r7, r6
    pop {r4,r5}
    ldrb r0, [r7]
    ldrb r2, [r7,#1]
    add r6, r2, #0
    sub r2, #1
    mov r1, #1
loc_8050F36:
    push {r0-r2}
    add r0, r0, r2
    bl sub_802D3D8
    pop {r0-r2}
    sub r2, #1
    bge loc_8050F36
    ldrh r0, [r7,#2]
    add r1, r6, #0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    add r4, #2
    mov r0, #1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8050F58:    .word byte_8050F5C
byte_8050F5C:    .byte 0x26
    .word 0x28013102
    .word 0x2A013302
    .word 0x2D013503
    .word 0x30013103
    .word 0x33013403
    .word 0x37013704
    .word 0x3B013104
    .word 0x3F013504
    .word 0x43013904
    .word 0x47013104
    .word 0x48013504
    .word 0x4B013603
    .hword 0x3904
    .byte 1
// end of function sub_8050F1C

.thumb
dead_8050F90:
    push {r6,r7,lr}
    push {r4,r5}
    bl sub_809F280
    sub r4, r4, r1
    ldr r6, [pc, #0x8050fb0-0x8050f9a-2] // word_8050FB4
    ldrh r2, [r6]
    add r2, r2, r4
    add r0, r2, #0
    bl sub_8024FBC
    pop {r4,r5}
    add r4, #2
    mov r0, #1
    pop {r6,r7,pc}
    .byte 0, 0
off_8050FB0:    .word word_8050FB4
word_8050FB4:    .hword 0x440
    .balign 4, 0x00
// end of function dead_8050F90

    push {r6,r7,lr}
    push {r4,r5}
    bl sub_809F2B4
    sub r2, r4, r1
    pop {r4,r5}
    ldr r7, [pc, #0x8051004-0x8050fc4-4] // word_8051008
    ldrh r6, [r7]
    add r6, r6, r2
    add r0, r6, #0
    bl sub_8024FA0
    cmp r3, #3
    bne loc_8050FFC
    mov r0, #0x11
    mov r1, #0
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #1
    bl sub_8024FB8
    cmp r2, #3
    bne loc_8050FF0
    mov r0, #0x11
    mov r1, #0
    bl sub_8024F9C
loc_8050FF0:
    cmp r2, #4
    bne loc_8050FFC
    mov r0, #0x11
    mov r1, #1
    bl sub_8024F9C
loc_8050FFC:
    add r4, #2
    mov r0, #1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8051004:    .word word_8051008
word_8051008:    .hword 0x14D
    .balign 4, 0x00
    push {lr}
    mov r0, #0
    str r0, [r5,#0x50]
    ldr r3, [pc, #0x805102c-0x8051012-2] // unk_2001540
    ldrb r1, [r4,#2]
    add r2, r1, #1
    ldrb r0, [r3,r2]
    str r0, [r5,#0x4c]
    lsl r1, r1, #2
    add r1, #4
    ldr r0, [r3,r1]
    bl sub_80511C0
    add r4, #3
    mov r0, #1
    pop {pc}
off_805102C:    .word unk_2001540
    push {lr}
    ldr r0, [pc, #0x8051040-0x8051032-2] // off_8051044
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8051040:    .word off_8051044
off_8051044:    .word sub_8051084+1
    .word loc_805111C+1
    .word sub_8051120+1
    .word loc_80511BC+1
    .word sub_8051210+1
    .word loc_80511BC+1
    .word loc_805133C+1
    .word loc_8051340+1
    .word loc_8051344+1
    .word loc_8051344+1
    .word loc_8051344+1
    .word loc_8051344+1
    .word loc_8051344+1
    .word sub_8051348+1
    .word loc_80513EC+1
    .word loc_8051344+1
.thumb
sub_8051084:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80510EA
    mov r0, #0x10
    bl sub_804E568
    cmp r0, #0
    beq loc_80510EA
    mov r0, #1
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r2, [r5,#0x13]
    cmp r2, #8
    beq loc_80510EA
    push {r3}
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    beq loc_80510CA
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    sub r3, #1
    bge loc_80510E6
    mov r3, #9
    b loc_80510E6
loc_80510CA:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_80510E6
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    add r3, #1
    cmp r3, #9
    ble loc_80510E6
    mov r3, #0
loc_80510E6:
    strb r3, [r5,r2]
    pop {r3}
loc_80510EA:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    ldrb r1, [r5,r0]
    add r1, #1
    push {r0-r7}
    ldr r6, [r5,#0x70]
    lsl r6, r6, #2
    ldrb r3, [r5,#0xf]
    sub r3, #1
    lsl r3, r3, #2
    ldr r0, [pc, #0x8051114-0x80510fe-2] // dword_804DD14+556
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x8051118-0x8051106-2] // loc_3006A48+1
    mov lr, pc
    bx r3
// end of function sub_8051084

    pop {r0-r7}
    add r4, #3
    pop {pc}
    .balign 4, 0x00
off_8051114:    .word dword_804DD14+0x22C
off_8051118:    .word loc_3006A48+1
loc_805111C:
    add r4, #2
    mov pc, lr
.thumb
sub_8051120:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_805118A
    mov r0, #0x10
    bl sub_804E568
    cmp r0, #0
    beq loc_805118A
    mov r0, #1
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r2, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    cmp r2, r1
    beq loc_805118A
    push {r3}
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    beq loc_805116A
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    sub r3, #1
    bge loc_8051186
    mov r3, #9
    b loc_8051186
loc_805116A:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_8051186
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    add r3, #1
    cmp r3, #9
    ble loc_8051186
    mov r3, #0
loc_8051186:
    strb r3, [r5,r2]
    pop {r3}
loc_805118A:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    ldrb r1, [r5,r0]
    add r1, #1
    push {r0-r7}
    ldr r6, [r5,#0x70]
    lsl r6, r6, #2
    ldrb r3, [r5,#0xf]
    sub r3, #1
    lsl r3, r3, #2
    ldr r0, [pc, #0x80511b4-0x805119e-2] // dword_804DD14+556
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x80511b8-0x80511a6-2] // loc_3006A48+1
    mov lr, pc
    bx r3
// end of function sub_8051120

    pop {r0-r7}
    add r4, #3
    pop {pc}
    .balign 4, 0x00
off_80511B4:    .word dword_804DD14+0x22C
off_80511B8:    .word loc_3006A48+1
loc_80511BC:
    add r4, #5
    mov pc, lr
.thumb
sub_80511C0:
    push {r4-r6,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    mov r2, #0x1c
    mov r3, #0xf
    mov r4, #0
    mov r6, #0
loc_80511CE:
    add r1, r0, #0
    lsr r1, r2
    and r1, r3
    lsl r1, r4
    orr r6, r1
    add r4, #8
    sub r2, #4
    cmp r2, #0x10
    bge loc_80511CE
    str r6, [r5,#0x54]
    mov r4, #0
    mov r6, #0
loc_80511E6:
    add r1, r0, #0
    lsr r1, r2
    and r1, r3
    lsl r1, r4
    orr r6, r1
    add r4, #8
    sub r2, #4
    bge loc_80511E6
    str r6, [r5,#0x58]
    pop {r4-r6,pc}
// end of function sub_80511C0

.thumb
sub_80511FA:
    push {lr}
    ldr r0, [pc, #0x8051208-0x80511fc-4] // =0x67625E6F
    str r0, [r5,#0x54]
    ldr r0, [pc, #0x805120c-0x8051200-4] // =0x687261
    str r0, [r5,#0x58]
    pop {pc}
    .balign 4, 0x00
dword_8051208:    .word 0x67625E6F
dword_805120C:    .word 0x687261
// end of function sub_80511FA

.thumb
sub_8051210:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_805130C
    mov r0, #0x10
    bl sub_804E568
    cmp r0, #0
    beq loc_805130C
    mov r0, #1
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r2, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    cmp r2, r1
    beq loc_805130C
    push {r3}
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    beq loc_805128E
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    add r3, #1
    cmp r3, #0xb
    bgt loc_805125E
    cmp r3, #2
    blt loc_805125E
    sub r3, #2
loc_805125E:
    cmp r3, #0x8f
    ble loc_8051266
    mov r3, #0x5e 
    b loc_8051308
loc_8051266:
    cmp r3, #0x8a
    ble loc_805126E
    mov r3, #0x8f
    b loc_8051308
loc_805126E:
    cmp r3, #0x89
    ble loc_8051274
    b loc_8051308
loc_8051274:
    cmp r3, #0x79 
    ble loc_805127C
    mov r3, #0x89
    b loc_8051308
loc_805127C:
    cmp r3, #0x77 
    ble loc_8051284
    mov r3, #0xa
    b loc_8051308
loc_8051284:
    cmp r3, #0x5e 
    bge loc_8051308
    cmp r3, #1
    bge loc_8051308
    mov r3, #0x79 
loc_805128E:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_8051308
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    sub r3, #1
    cmp r3, #9
    bgt loc_80512AE
    cmp r3, #0
    blt loc_80512AE
    add r3, #2
loc_80512AE:
    cmp r3, #1
    bge loc_80512B6
    mov r3, #0x77 
    b loc_8051308
loc_80512B6:
    cmp r3, #0x5e 
    bge loc_80512CA
    cmp r3, #0xa
    ble loc_80512CA
    cmp r3, #0x5d 
    bne loc_80512C6
    mov r3, #0x8f
    b loc_8051308
loc_80512C6:
    mov r3, #0x77 
    b loc_8051308
loc_80512CA:
    cmp r3, #0xa
    ble loc_80512D6
    cmp r3, #0x5e 
    bge loc_80512D6
    mov r3, #0x77 
    b loc_8051308
loc_80512D6:
    cmp r3, #0x8a
    blt loc_80512DE
    mov r3, #0x8a
    b loc_8051308
loc_80512DE:
    cmp r3, #0x89
    blt loc_80512E6
    mov r3, #0x89
    b loc_8051308
loc_80512E6:
    cmp r3, #0x79 
    blt loc_80512EE
    mov r3, #0x79 
    b loc_8051308
loc_80512EE:
    cmp r3, #0x77 
    blt loc_80512F6
    mov r3, #1
    b loc_8051308
loc_80512F6:
    cmp r3, #0x5e 
    blt loc_80512FC
    b loc_8051308
loc_80512FC:
    cmp r3, #0xa
    ble loc_8051304
    mov r3, #0x77 
    b loc_8051308
loc_8051304:
    cmp r3, #0xa
    ble loc_8051308
loc_8051308:
    strb r3, [r5,r2]
    pop {r3}
loc_805130C:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    ldrb r1, [r5,r0]
    push {r0-r7}
    ldr r6, [r5,#0x70]
    lsl r6, r6, #2
    ldrb r3, [r5,#0xf]
    sub r3, #1
    lsl r3, r3, #2
    ldr r0, [pc, #0x8051334-0x805131e-2] // dword_804DD14+556
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x8051338-0x8051326-2] // loc_3006A48+1
    mov lr, pc
    bx r3
// end of function sub_8051210

    pop {r0-r7}
    add r4, #3
    pop {pc}
    .balign 4, 0x00
off_8051334:    .word dword_804DD14+0x22C
off_8051338:    .word loc_3006A48+1
loc_805133C:
    add r4, #5
    mov pc, lr
loc_8051340:
    add r4, #4
    mov pc, lr
loc_8051344:
    add r4, #2
    mov pc, lr
.thumb
sub_8051348:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80513B6
    mov r0, #0x10
    bl sub_804E568
    cmp r0, #0
    beq loc_80513B6
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #1
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r2, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    cmp r2, r1
    beq loc_80513B6
    push {r3}
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    beq loc_8051396
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    add r3, #1
    cmp r3, #0x77 
    ble loc_80513B2
    mov r3, #0x5e 
    b loc_80513B2
loc_8051396:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_80513B2
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl f500_8000558
    sub r3, #1
    cmp r3, #0x5e 
    bge loc_80513B2
    mov r3, #0x77 
loc_80513B2:
    strb r3, [r5,r2]
    pop {r3}
loc_80513B6:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    ldrb r1, [r5,r0]
    push {r0-r7}
    ldr r6, [r5,#0x70]
    lsl r6, r6, #2
    ldrb r3, [r5,#0xf]
    mov r0, #0
    tst r3, r3
    beq loc_80513D2
    sub r3, #1
    lsl r3, r3, #2
    ldr r0, [pc, #0x80513e4-0x80513ce-2] // dword_804DD14+556
    ldr r0, [r0,r3]
loc_80513D2:
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x80513e8-0x80513d6-2] // loc_3006A48+1
    mov lr, pc
    bx r3
// end of function sub_8051348

    pop {r0-r7}
    add r4, #3
    pop {pc}
    .balign 4, 0x00
off_80513E4:    .word dword_804DD14+0x22C
off_80513E8:    .word loc_3006A48+1
loc_80513EC:
    add r4, #3
    mov pc, lr
loc_80513F0:
    push {lr}
    ldr r0, [pc, #0x8051400-0x80513f2-2] // off_8051404
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8051400:    .word off_8051404
off_8051404:    .word sub_805140C+1
    .word sub_8051420+1
.thumb
sub_805140C:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x10]
    add r2, #8
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    strb r1, [r2,r0]
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_805140C

.thumb
sub_8051420:
    ldr r0, [pc, #0x8051434-0x8051420-4] // off_805159C
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r1, [r4,#3]
    strb r1, [r0]
    add r4, #4
    mov r0, #1
    mov pc, lr
    .balign 4, 0x00
off_8051434:    .word off_805159C
// end of function sub_8051420

    push {lr}
    ldr r0, [pc, #0x8051444-0x805143a-2] // off_8051448
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    pop {pc}
off_8051444:    .word off_8051448
off_8051448:    .word 0x404
loc_805144C:
    push {lr}
    ldr r0, [pc, #0x805145c-0x805144e-2] // off_8051460
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_805145C:    .word off_8051460
off_8051460:    .word sub_8051468+1
    .word sub_8051480+1
.thumb
sub_8051468:
    push {lr}
    ldrb r0, [r4,#2]
    bl sub_80A8ECE
    push {r5,r7}
    add r5, r0, #0
    bl sub_800425A
    pop {r5,r7}
    add r4, #3
    mov r0, #1
    pop {pc}
// end of function sub_8051468

.thumb
sub_8051480:
    push {lr}
    ldrb r0, [r4,#2]
    bl sub_80A8ECE
    push {r5}
    add r5, r0, #0
    ldrb r0, [r4,#3]
    ldrb r1, [r5,#0x14]
    cmp r0, r1
    beq loc_805149C
    bl sub_8002DF0
    bl sub_800281C
loc_805149C:
    pop {r5}
    add r4, #4
    mov r0, #1
    pop {pc}
// end of function sub_8051480

    push {lr}
    ldr r0, [pc, #0x80514b0-0x80514a6-2] // dword_80514B4
    ldrb r1, [r4,#1]
    ldrb r0, [r0,r1]
    add r4, r4, r0
    pop {pc}
off_80514B0:    .word dword_80514B4
dword_80514B4:    .word 0x403
loc_80514B8:
    push {lr}
    ldr r0, [pc, #0x80514c8-0x80514ba-2] // off_80514CC
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80514C8:    .word off_80514CC
off_80514CC:    .word sub_80514D4+1
    .word sub_80514D4+1
.thumb
sub_80514D4:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x805151c-0x80514dc-4] // off_8051520
    ldrb r2, [r4,#2]
    ldrb r1, [r4,#1]
    tst r1, r1
    beq loc_80514E8
    add r2, #2
loc_80514E8:
    mov r1, #0
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x8051588-0x80514f6-2] // unk_200B4D0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl f900_8000970
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_805151C:    .word off_8051520
off_8051520:    .word unk_2001770
    .word unk_2001780
    .word 0x2000522, 0x200057E, 0x2001EA0, 0x2001EFC, 0x2001F58
    .word 0x2001FB4, 0x2002010, 0x200206C, 0x4803B500, 0x897861
    .word 0x46FE5840, 0xBD004700
    .word off_805155C
off_805155C:    .word sub_8051564+1
    .word sub_8051564+1
// end of function sub_80514D4

.thumb
sub_8051564:
    push {r3,lr}
    ldrb r0, [r5,#6]
    add r0, #1
    strb r0, [r5,#6]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7,#2]
    lsl r1, r1, #6
    ldr r0, [pc, #0x8051588-0x8051574-4] // unk_200B4D0
    add r0, r0, r1
    ldrh r1, [r7,#2]
    add r1, #1
    strh r1, [r7,#2]
    add r4, #3
    str r4, [r5,#0x48]
    add r4, r0, #0
    pop {r3,pc}  // <endpool>
// end of function sub_8051564

    .balign 4, 0x00
off_8051588:    .word unk_200B4D0  // <filepool>
off_805158C:    .word sub_808EC68+1
    .word sub_80037E8+1
    .word sub_80511FA+1
    .word sub_8029700+1
off_805159C:    .word unk_200AA24
    .word 0x200AA25, 0x200AA26, 0x200AA27, 0x200A47E, 0x200A54C
off_80515B4:    .word byte_20014E2
/*For debugging purposes, connect comment at any range!*/
