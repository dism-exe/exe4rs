.include "sect0/asm28.inc"

.thumb
sub_80ADDC8:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x74]
    ldr r1, [pc, #0x80addd8-0x80addce-2] // =0x800
    bl f900_8000950
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80ADDD8:    .word 0x800
// end of function sub_80ADDC8

.thumb
sub_80ADDDC:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80ae088-0x80addde-2] // off_80ADD70
loc_80ADDE0:
    ldr r6, [r4]
    cmp r6, #1
    beq locret_80ADE26
    cmp r6, #0
    beq loc_80ADE22
loc_80ADDEA:
    ldr r7, [r6]
    cmp r7, #0
    beq loc_80ADE22
loc_80ADDF0:
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_80ADE1E
    cmp r0, #5
    bne loc_80ADE1A
    ldr r1, [r7,#8]
    bl sub_80ADF98
    add r1, r0, #0
    ldr r0, [r7,#4]
    bl sub_80ADE28
    add r2, r1, #0
    add r1, r0, #0
    ldrh r0, [r7,#2]
    bl sub_80ADE74
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_80ADE1A:
    add r7, #0xc
    b loc_80ADDF0
loc_80ADE1E:
    add r6, #4
    b loc_80ADDEA
loc_80ADE22:
    add r4, #4
    b loc_80ADDE0
locret_80ADE26:
    pop {r4-r7,pc}
// end of function sub_80ADDDC

.thumb
sub_80ADE28:
    push {r4-r7,lr}
    sub sp, sp, #0x20
    add r7, r1, #0
    mov r4, #0
    mov r2, sp
loc_80ADE32:
    ldrb r3, [r0]
    cmp r3, #0
    beq loc_80ADE42
    ldrb r3, [r0,#1]
    strb r3, [r2,r4]
    add r4, #1
    add r0, #8
    b loc_80ADE32
loc_80ADE42:
    mov r0, sp
    add r1, r4, #0
    bl sub_8000C98
    add r6, r0, #0
    add r1, r7, #0
    mov r4, #0
    mov r2, sp
loc_80ADE52:
    ldrb r3, [r1]
    cmp r3, #0
    beq loc_80ADE62
    ldrb r3, [r1,#1]
    strb r3, [r2,r4]
    add r4, #1
    add r1, #8
    b loc_80ADE52
loc_80ADE62:
    mov r0, sp
    add r1, r4, #0
    bl sub_8000C98
    add r7, r0, #0
    add sp, sp, #0x20
    add r0, r6, #0
    add r1, r7, #0
    pop {r4-r7,pc}
// end of function sub_80ADE28

.thumb
sub_80ADE74:
    push {r4-r7,lr}
    push {r1,r2}
    bl sub_80ADE84
    pop {r1,r2}
    strb r1, [r0]
    strb r2, [r0,#1]
    pop {r4-r7,pc}
// end of function sub_80ADE74

.thumb
sub_80ADE84:
    mov r2, r10
    ldr r2, [r2,#0x74]
    ldr r1, [pc, #0x80ade94-0x80ade88-4] // =0xD00
    sub r0, r0, r1
    mov r1, #2
    mul r0, r1
    add r0, r0, r2
    mov pc, lr
off_80ADE94:    .word 0xD00
// end of function sub_80ADE84

.thumb
sub_80ADE98:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80ae088-0x80ade9a-2] // off_80ADD70
    bl sub_80ADEA8
    ldr r4, [pc, #0x80ae084-0x80adea0-4] // dword_80ADD54
    bl sub_80ADEA8
    pop {r4-r7,pc}
// end of function sub_80ADE98

.thumb
sub_80ADEA8:
    push {r4-r7,lr}
loc_80ADEAA:
    ldr r6, [r4]
    cmp r6, #1
    beq locret_80ADEEC
    cmp r6, #0
    beq loc_80ADEE8
loc_80ADEB4:
    ldr r7, [r6]
    cmp r7, #0
    beq loc_80ADEE8
loc_80ADEBA:
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_80ADEE4
    cmp r0, #5
    beq loc_80ADEE0
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldrh r3, [r7,#2]
    bl sub_80ADEEE
    add r2, r1, #0
    add r1, r0, #0
    ldrh r0, [r7,#2]
    bl sub_80ADE74
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_80ADEE0:
    add r7, #0xc
    b loc_80ADEBA
loc_80ADEE4:
    add r6, #4
    b loc_80ADEB4
loc_80ADEE8:
    add r4, #4
    b loc_80ADEAA
locret_80ADEEC:
    pop {r4-r7,pc}
// end of function sub_80ADEA8

.thumb
sub_80ADEEE:
    push {r4-r7,lr}
    add r5, r3, #0
    add r6, r1, #0
    add r7, r2, #0
    cmp r0, #1
    beq loc_80ADF06
    cmp r0, #3
    beq loc_80ADF06
    cmp r0, #2
    beq loc_80ADF50
    cmp r0, #4
    beq loc_80ADF50
loc_80ADF06:
    push {r6,r7}
    add r0, r5, #0
    bl sub_8024FF4
    pop {r6,r7}
    beq loc_80ADF8C
    mov r4, #0
loc_80ADF14:
    ldrb r3, [r6]
    cmp r3, #0
    beq loc_80ADF20
    add r4, #1
    add r6, #8
    b loc_80ADF14
loc_80ADF20:
    add r0, r5, #0
    bl sub_80ADE84
    ldrb r6, [r0]
    add r6, #1
    cmp r6, r4
    blt loc_80ADF30
    sub r6, r4, #1
loc_80ADF30:
    mov r4, #0
loc_80ADF32:
    ldrb r3, [r7]
    cmp r3, #0
    beq loc_80ADF3E
    add r4, #1
    add r7, #8
    b loc_80ADF32
loc_80ADF3E:
    add r0, r5, #0
    bl sub_80ADE84
    ldrb r7, [r0,#1]
    add r7, #1
    cmp r7, r4
    blt loc_80ADF4E
    sub r7, r4, #1
loc_80ADF4E:
    b loc_80ADF86
loc_80ADF50:
    mov r4, #0
loc_80ADF52:
    ldrb r3, [r6]
    cmp r3, #0
    beq loc_80ADF5E
    add r4, #1
    add r6, #8
    b loc_80ADF52
loc_80ADF5E:
    bl fA00_8000C3C
    cmp r0, r4
    blt loc_80ADF68
    sub r0, r4, #1
loc_80ADF68:
    add r6, r0, #0
    mov r4, #0
loc_80ADF6C:
    ldrb r3, [r7]
    cmp r3, #0
    beq loc_80ADF78
    add r4, #1
    add r7, #8
    b loc_80ADF6C
loc_80ADF78:
    bl fA00_8000C3C
    cmp r0, r4
    blt loc_80ADF82
    sub r0, r4, #1
loc_80ADF82:
    add r7, r0, #0
    b loc_80ADF86
loc_80ADF86:
    add r0, r6, #0
    add r1, r7, #0
    pop {r4-r7,pc}
loc_80ADF8C:
    add r0, r5, #0
    bl sub_80ADE84
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    pop {r4-r7,pc}
// end of function sub_80ADEEE

.thumb
sub_80ADF98:
    push {r2-r7,lr}
    add r4, r1, #0
    cmp r0, #5
    bne loc_80ADFB8
    bl fA00_8000C3C
    cmp r0, #2
    ble loc_80ADFAA
    mov r0, #2
loc_80ADFAA:
    lsl r1, r0, #3
    mov r2, #8
    mul r1, r2
    lsl r0, r0, #2
    add r0, r0, r1
    add r0, r0, r4
    pop {r2-r7,pc}
loc_80ADFB8:
    add r0, r1, #0
    pop {r2-r7,pc}
// end of function sub_80ADF98

.thumb
sub_80ADFBC:
    push {r4-r7,lr}
    add r6, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    ldrb r1, [r7,#5]
    cmp r0, #0x80
    bge loc_80ADFCE
    b loc_80ADFD4
loc_80ADFCE:
    sub r0, #0x80
    ldr r4, [pc, #0x80ae088-0x80adfd0-4] // off_80ADD70
    b loc_80ADFD6
loc_80ADFD4:
    ldr r4, [pc, #0x80ae084-0x80adfd4-4] // dword_80ADD54
loc_80ADFD6:
    lsl r0, r0, #2
    ldr r4, [r4,r0]
    lsl r1, r1, #2
    ldr r4, [r4,r1]
loc_80ADFDE:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_80AE024
    ldrh r0, [r4,#2]
    cmp r0, r6
    beq loc_80ADFEE
    add r4, #0xc
    b loc_80ADFDE
loc_80ADFEE:
    ldrb r0, [r4]
    ldrb r1, [r4,#1]
    push {r0,r1}
    add r0, r6, #0
    bl sub_80ADE84
    add r7, r0, #0
    ldr r2, [r4,#4]
    ldrb r3, [r7]
    mov r1, #8
    mul r1, r3
    add r2, r2, r1
    add r2, #2
    push {r2}
    ldrb r0, [r4]
    ldr r1, [r4,#8]
    bl sub_80ADF98
    add r4, r0, #0
    ldrb r3, [r7,#1]
    mov r1, #8
    mul r1, r3
    add r4, r4, r1
    ldrb r3, [r4]
    pop {r2}
    pop {r0,r1}
    b locret_80AE02A
loc_80AE024:
    mov r0, #0
    mov r1, #0xff
    mov r2, #0xff
locret_80AE02A:
    pop {r4-r7,pc}
// end of function sub_80ADFBC

.thumb
sub_80AE02C:
    push {r4-r7,lr}
    add r6, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    ldrb r1, [r7,#5]
    cmp r0, #0x80
    bge loc_80AE03E
    b loc_80AE044
loc_80AE03E:
    sub r0, #0x80
    ldr r4, [pc, #0x80ae088-0x80ae040-4] // off_80ADD70
    b loc_80AE046
loc_80AE044:
    ldr r4, [pc, #0x80ae084-0x80ae044-4] // dword_80ADD54
loc_80AE046:
    lsl r0, r0, #2
    ldr r4, [r4,r0]
    lsl r1, r1, #2
    ldr r4, [r4,r1]
loc_80AE04E:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_80AE07E
    ldrh r0, [r4,#2]
    cmp r0, r6
    beq loc_80AE05E
    add r4, #0xc
    b loc_80AE04E
loc_80AE05E:
    add r0, r6, #0
    bl sub_80ADE84
    add r7, r0, #0
    ldrb r0, [r4]
    ldr r1, [r4,#8]
    bl sub_80ADF98
    add r4, r0, #0
    ldrb r3, [r7,#1]
    mov r1, #8
    mul r1, r3
    add r4, r4, r1
    ldr r0, [r4,#4]
    ldrb r1, [r4,#3]
    b locret_80AE082
loc_80AE07E:
    mov r0, #0
    mov r1, #0
locret_80AE082:
    pop {r4-r7,pc}
off_80AE084:    .word dword_80ADD54
off_80AE088:    .word off_80ADD70
dword_80AE08C:    .word 0xFF00171C, 0x0
    .word 0xFFFF0000, 0xFF00001C, 0x2000000, 0xFFFF0000, 0xFF00031C
    .word 0x0
    .word 0x1490303, 0x2010314, 0x0
    .word 0xFFFF0000, 0xFF00011C, 0x0
    .word 0x1290000, 0xFF01011C, 0x0
    .word 0x12A0000, 0xFF00061C, 0x0
    .word 0xFFFF0000, 0xFF094118, 0x0
    .word 0xFFFF0000, 0x2010B1C, 0x0
    .word 0x12B0000, 0x3000B1C, 0x0
    .word 0x12C0000, 0xFF00121C, 0x0
    .word 0xFFFF0000, 0xFF000314, 0x0
    .word 0xFFFF0000, 0xFF011A1C, 0x0
    .word 0xFFFF0000, 0xFF001A1C, 0x0
    .word 0xFFFF0000, 0x2001B1C, 0x0
    .word 0xFFFF0000, 0x3001C1C, 0x0
    .word 0xFFFF0000, 0x2001E1C, 0x0
    .word 0x1D60000, 0x2001F1C, 0x0
    .word 0x1D60000, 0xFF00231C, 0x0
    .word 0x1430000, 0xFF01231C, 0x0
    .word 0x1440000, 0x2002E1C, 0x0
    .word 0xFFFF0000, 0xFF00301C, 0x0
    .word 0x17C0000, 0xFF01301C, 0x0
    .word 0x17D0000, 0xFF00481C, 0x0
    .word 0xFFFF0000, 0xFF00361C, 0x0
    .word 0xFFFF0000, 0x2020314, 0x0
    .word 0xFFFF0000, 0xFF00331C, 0x0
    .word 0xFFFF0000, 0xFF003F1C, 0x0
    .word 0xFFFF0000, 0xFF00671C, 0x0
    .word 0xFFFF0000, 0xFF00401C, 0x0
    .word 0xFFFF0000, 0xFF00461C, 0x6000000, 0xFFFF0000, 0xFF00461C
    .word 0x0
    .word 0xFFFF0101, 0xFF004B1C, 0x0
    .word 0xFFFF0000, 0xFF00551C, 0x0
    .word 0xFFFF0000, 0xFF01561C, 0x4000000, 0xFFFF0000, 0xFF01561C
    .word 0x0
    .word 0xFFFF0000, 0xFF00561C, 0x4000000, 0xFFFF0000, 0xFF00561C
    .word 0x0
    .word 0xFFFF0000, 0xFF004A1C, 0x80000000, 0xFFFF0000, 0xFF01671C
    .word 0x0
    .word 0xFFFF0000, 0xFF005B1C, 0x0
    .word 0xFFFF0000, 0xFF015B1C, 0x0
    .word 0xFFFF0000, 0xFF025B1C, 0x0
    .word 0xFFFF0000, 0xFF01371C, 0x0
    .word 0xFFFF0000, 0xFF035F1C, 0x0
    .word 0xFFFF0000, 0xFF00401C, 0x0
    .word 0x1BE0101, 0xFF01401C, 0x0
    .word 0x1BF0101, 0xFF00401C, 0x0
    .word 0x1C00101, 0xFF01401C, 0x0
    .word 0x1C10101, 0xFF00401C, 0x0
    .word 0x1C20101, 0xFF01401C, 0x0
    .word 0x1C30101, 0xFF00401C, 0x0
    .word 0x1C40101, 0xFF01401C, 0x0
    .word 0x1C50101, 0xFF00401C, 0x0
    .word 0x1C60101, 0xFF003F1C, 0x0
    .word 0xFFFF0101, 0xFF023F1C, 0x0
    .word 0xFFFF0000, 0xFF010414, 0x0
    .word 0xFFFF0000, 0xFF01641C, 0x0
    .word 0x1CD0000, 0xFF00621C, 0x0
    .word 0xFFFF0000, 0xFF00501C, 0x0
    .word 0xFFFF0000, 0x300351C, 0x0
    .word 0x1DC0000, 0x302351C, 0x0
    .word 0x1DD0000, 0x301351C, 0x0
    .word 0x1DE0000, 0x300491C, 0x0
    .word 0x1E00000, 0xFF014E1C, 0x0
    .word 0x1E10000, 0xFF004E1C, 0x0
    .word 0x1E20000, 0x2000314, 0x0
    .word 0xFFFF0000, 0xFF006A1C, 0x0
    .word 0xFFFF0000, 0xFF016A1C, 0x0
    .word 0xFFFF0000, 0xFF00601C, 0x0
    .word 0xC1C0000, 0xFF005F1C, 0x0
    .word 0xFFFF0000, 0xFF00691C, 0x0
    .word 0xC1F0000, 0xFF01691C, 0x0
    .word 0xC200000, 0xFF01371C, 0x0
    .word 0x1A50000
// end of function sub_80AE02C

.thumb
sub_80AE404:
    push {lr}
    ldr r7, [pc, #0x80ae42c-0x80ae406-2] // dword_80AE08C
    ldrb r1, [r5,#4]
    mov r2, #0xc
    mul r1, r2
    add r7, r7, r1
    ldr r0, [pc, #0x80ae41c-0x80ae410-4] // off_80AE420
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80AE41C:    .word off_80AE420
off_80AE420:    .word sub_80AE430+1
    .word sub_80AE482+1
    .word sub_80AE4C0+1
off_80AE42C:    .word dword_80AE08C
// end of function sub_80AE404

.thumb
sub_80AE430:
    push {lr}
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_800285C
    ldrb r0, [r7,#2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r7,#3]
    cmp r0, #0xff
    bne loc_80AE468
    ldr r6, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    str r6, [r5,#0x3c]
loc_80AE468:
    bl sub_8002E60
    ldr r0, [r7,#4]
    bl sub_8002FD8
    ldrb r0, [r7,#8]
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AE482
    pop {pc}
// end of function sub_80AE430

.thumb
sub_80AE482:
    push {lr}
    mov r1, #0xa
    ldrsh r0, [r7,r1]
    cmp r0, #0
    blt loc_80AE494
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AE498
loc_80AE494:
    mov r4, #3
    b loc_80AE4A4
loc_80AE498:
    mov r4, #1
    ldrb r0, [r7,#2]
    bl sub_8002DF0
    bl sub_800281C
loc_80AE4A4:
    strb r4, [r5]
    mov r0, #0x11
    mov r1, #0x7c 
    bl sub_8024FF0
    beq loc_80AE4B4
    ldrb r0, [r7,#9]
    b loc_80AE4B6
loc_80AE4B4:
    ldrb r0, [r7,#8]
loc_80AE4B6:
    bl sub_8002DCC
    bl sub_800283C
    pop {pc}
// end of function sub_80AE482

.thumb
sub_80AE4C0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AE4C0

.thumb
ho_80AE4C8:
    push {lr}
    ldr r0, [pc, #0x80ae4d8-0x80ae4ca-2] // jt_80AE4DC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AE4D8:    .word jt_80AE4DC
jt_80AE4DC:    .word sub_80AE4E8+1
    .word sub_80AE4FC+1
    .word sub_80AE5E0+1
// end of function ho_80AE4C8

.thumb
sub_80AE4E8:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    bl sub_80AE4FC
    pop {pc}
// end of function sub_80AE4E8

.thumb
sub_80AE4FC:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x60]
    sub r0, #1
    ble loc_80AE50C
    str r0, [r5,#0x60]
    b loc_80AE5A0
loc_80AE50C:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    ldrb r7, [r5,#7]
    mov r0, #0xf
    and r7, r0
    mov r0, #0xd8
    mul r7, r0
    ldr r0, [pc, #0x80ae5a8-0x80ae51a-2] // byte_2006140
    add r7, r7, r0
    bl sub_8001AF6
    mov r1, #8
    svc 6
    mov r0, #6
    mul r0, r1
    ldr r4, [pc, #0x80ae5ac-0x80ae52a-2] // dword_80AE5B0
    add r4, r4, r0
    bl sub_8001AF6
    add r6, r0, #0
    mov r8, r5
    mov r0, #0
    ldrsh r1, [r4,r0]
    mov r0, #2
    ldrsh r2, [r4,r0]
    mov r0, #4
    ldrsh r3, [r4,r0]
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r2, r2, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r3, r3, r4
    lsr r6, r6, #8
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    ldr r0, [r7,#0x24]
    ldr r6, [r7,#0x28]
    ldr r7, [r7,#0x2c]
    add r1, r1, r0
    add r2, r2, r6
    add r3, r3, r7
    ldr r0, [r5,#0x34]
    ldr r6, [r5,#0x38]
    ldr r7, [r5,#0x3c]
    add r1, r1, r0
    add r2, r2, r6
    add r3, r3, r7
    mov r0, #2
    ldrb r4, [r5,#7]
    lsr r4, r4, #4
    lsl r4, r4, #8
    bl sub_8004440
    mov r5, r8
    ldr r0, [r5,#0x64]
    sub r0, #1
    ble loc_80AE596
    str r0, [r5,#0x64]
    b loc_80AE5A0
loc_80AE596:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    mov r0, #0x70 
    bl f500_8000558
loc_80AE5A0:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80AE5A8:    .word byte_2006140
off_80AE5AC:    .word dword_80AE5B0
dword_80AE5B0:    .word 0xFFF4FFF4, 0xFFF00008, 0x80000, 0xCFFF4, 0x8, 0x8FFF0
    .word 0x100000, 0xC0008, 0x8FFF4, 0x10, 0xC0008, 0x8000C
// end of function sub_80AE4FC

.thumb
sub_80AE5E0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AE5E0

.thumb
ho_80AE5E8:
    push {lr}
    ldr r0, [pc, #0x80ae5f8-0x80ae5ea-2] // jt_80AE5FC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AE5F8:    .word jt_80AE5FC
jt_80AE5FC:    .word sub_80AE608+1
    .word sub_80AE652+1
    .word sub_80AE666+1
// end of function ho_80AE5E8

.thumb
sub_80AE608:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x14
    mov r2, #0
    bl sub_800285C
    ldr r6, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    str r6, [r5,#0x3c]
    bl sub_8002E60
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r5,#5]
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AE652
    pop {pc}
// end of function sub_80AE608

.thumb
sub_80AE652:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80AE660
    mov r0, #8
    strb r0, [r5,#8]
loc_80AE660:
    bl sub_800283C
    pop {pc}
// end of function sub_80AE652

.thumb
sub_80AE666:
    push {lr}
    bl sub_800447A
    pop {pc}
    .byte 0, 0
// end of function sub_80AE666

.thumb
sub_80AE670:
    lsl r1, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r2, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r3, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r4, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r5, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r6, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r7, r1, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r0, r2, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r1, r2, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
    lsl r2, r2, #4
    asr r0, r0, #4
    asr r0, r4, #4
    lsl r7, r7, #3
loc_80AE6C0:
    push {lr}
    ldr r7, [pc, #0x80ae6ec-0x80ae6c2-2] // sub_80AE670
    mov r0, #8
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80ae6d8-0x80ae6cc-4] // off_80AE6DC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80AE6D8:    .word off_80AE6DC
off_80AE6DC:    .word sub_80AE6F0+1
    .word sub_80AE748+1
    .word sub_80AE776+1
    .word sub_80AE792+1
off_80AE6EC:    .word sub_80AE670
// end of function sub_80AE670

.thumb
sub_80AE6F0:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AE72E
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #7
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AE748
    pop {pc}
loc_80AE72E:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80AE792
    pop {pc}
// end of function sub_80AE6F0

.thumb
sub_80AE748:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80AE770
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x96
    bl f500_8000558
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #8
    strb r0, [r5,#8]
loc_80AE770:
    bl sub_800283C
    pop {pc}
// end of function sub_80AE748

.thumb
sub_80AE776:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80AE78C
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80AE78C:
    bl sub_800283C
    pop {pc}
// end of function sub_80AE776

.thumb
sub_80AE792:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
dword_80AE79C:    .word 0x11010113, 0x101121, 0x11020118, 0x11C1122, 0x11010119
    .word 0x11C1121, 0x11020114, 0x101122, 0x1101011A, 0x11C1121
    .word 0x11000334, 0x1C1122, 0x11000335, 0x1C1122, 0x1100011B
    .word 0x11C1120, 0x1101011C, 0x11C1121, 0x1102011D, 0x11C1122
    .word 0x1100011E, 0x11C1120, 0x1100011F, 0x11C1120, 0x11000120
    .word 0x11C1120, 0x11010128, 0x1121, 0x11010121, 0x11C1121
    .word 0x11010122, 0x11C1121, 0x11020115, 0x101122, 0x11010123
    .word 0x11C1121, 0x11010116, 0x101121, 0x11020124, 0x11C1122
    .word 0x110107CD, 0x21C1121, 0x11000117, 0x101120, 0x11000125
    .word 0x11C1120, 0x11030126, 0x11C1123, 0x11040127, 0x11C1124
    .word 0x110001AB, 0x11C1120, 0x110001AC, 0x11C1120
// end of function sub_80AE792

.thumb
ho_80AE874:
    push {lr}
    ldr r7, [pc, #0x80ae89c-0x80ae876-2] // dword_80AE79C
    mov r0, #8
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80ae88c-0x80ae880-4] // jt_80AE890
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80AE88C:    .word jt_80AE890
jt_80AE890:    .word sub_80AE8A0+1
    .word sub_80AE900+1
    .word sub_80AE92C+1
off_80AE89C:    .word dword_80AE79C
// end of function ho_80AE874

.thumb
sub_80AE8A0:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AE8E6
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #9
    bl sub_800285C
    ldrb r0, [r5,#6]
    bl sub_8002E60
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r7,#6]
    lsl r0, r0, #0x18
    bl sub_8002FD8
    ldrb r0, [r7,#7]
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AE900
    pop {pc}
loc_80AE8E6:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #8
    strb r0, [r5,#8]
    bl sub_80AE92C
    pop {pc}
// end of function sub_80AE8A0

.thumb
sub_80AE900:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80AE926
    mov r0, #0x74 
    bl f500_8000558
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #8
    strb r0, [r5,#8]
loc_80AE926:
    bl sub_800283C
    pop {pc}
// end of function sub_80AE900

.thumb
sub_80AE92C:
    push {lr}
    bl sub_800447A
    pop {pc}
dword_80AE934:    .word 0x33D0B1C, 0x11201100, 0xFF660001, 0xFFE0FF6E, 0xFF7EFF28
    .word 0x3020000
// end of function sub_80AE92C

.thumb
sub_80AE94C:
    push {lr}
    ldr r7, [pc, #0x80ae974-0x80ae94e-2] // dword_80AE934
    mov r0, #0x18
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80ae964-0x80ae958-4] // off_80AE968
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_80AE962:
    pop {pc}
off_80AE964:    .word off_80AE968
off_80AE968:    .word sub_80AE978+1
    .word sub_80AE9CE+1
    .word sub_80AE9EE+1
off_80AE974:    .word dword_80AE934
// end of function sub_80AE94C

.thumb
sub_80AE978:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_800285C
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AE9C0
    ldrb r0, [r7,#8]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r7,#0x16]
    bl sub_8002E60
    mov r3, #0xa
    ldrsh r0, [r7,r3]
    mov r3, #0xc
    ldrsh r1, [r7,r3]
    mov r3, #0xe
    ldrsh r2, [r7,r3]
    bl sub_80AE9F6
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AE9CE
    pop {pc}
loc_80AE9C0:
    bl sub_80AEA04
    mov r0, #8
    strb r0, [r5,#8]
    bl sub_80AE9EE
    pop {pc}
// end of function sub_80AE978

.thumb
sub_80AE9CE:
    push {lr}
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80AE9E8
    bl sub_80AEA04
    mov r0, #0x74 
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#8]
loc_80AE9E8:
    bl sub_800283C
    pop {pc}
// end of function sub_80AE9CE

.thumb
sub_80AE9EE:
    push {lr}
    bl sub_800283C
    pop {pc}
// end of function sub_80AE9EE

.thumb
sub_80AE9F6:
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    str r2, [r5,#0x3c]
    mov pc, lr
// end of function sub_80AE9F6

.thumb
sub_80AEA04:
    push {lr}
    ldrb r0, [r7,#9]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r7,#0x17]
    bl sub_8002E60
    mov r3, #0x10
    ldrsh r0, [r7,r3]
    mov r3, #0x12
    ldrsh r1, [r7,r3]
    mov r3, #0x14
    ldrsh r2, [r7,r3]
    bl sub_80AE9F6
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    pop {pc}
dword_80AEA3C:    .word 0xFF00111C, 0x0
    .word 0x11200357, 0xFF1100, 0xFF00111C, 0x0
    .word 0x11210357, 0xFF1100, 0xFF01111C, 0x0
    .word 0x11220357, 0xFF1100, 0xFF010F1C, 0x0
    .word 0x12D
    .word 0xFF1100, 0xFF040E1C, 0x0
    .word 0x1121012F, 0xFF1101, 0xFF000F1C, 0x0
    .word 0x12E, 0xFF1102, 0xFF02131C, 0x0
    .word 0x11270130, 0xFF1130, 0xFF01321C, 0x0
    .word 0x112B017E, 0xFF1100, 0xFF00321C, 0x0
    .word 0x112C017F, 0xFF1101, 0xFF01321C, 0x0
    .word 0x112D0180, 0xFF1102, 0xFF01321C, 0x0
    .word 0x112E0181, 0xFF1103, 0xFF044D18, 0x0
    .word 0x11250795, 0xFF1110, 0xFF024D18, 0x0
    .word 0x11260796, 0xFF1111, 0xFF004D18, 0x0
    .word 0x11270797, 0xFF1112, 0xFF024D18, 0x0
    .word 0x11280798, 0xFF1113, 0xFF044D18, 0x0
    .word 0x11290799, 0xFF1114, 0xFF024D18, 0x0
    .word 0x112A079A, 0xFF1115, 0xFF024D18
    .word 0x0
    .word 0x112B07A1, 0xFF1116, 0xFF024D18
    .word 0x0
    .word 0x112C07A2, 0xFF1117, 0xFF024D18
    .word 0x0
    .word 0x112D07A3, 0xFF1118, 0xFF00441C
    .word 0x0
    .word 0x112D0A8C, 0xFF110D, 0xFF013D1C
    .word 0x0
    .word 0x11220197, 0xFF1102, 0xFF013D1C
    .word 0x0
    .word 0x11230198, 0xFF1103, 0xFF013D1C
    .word 0x0
    .word 0x11240199, 0xFF1104, 0xFF013D1C
    .word 0x0
    .word 0x1125019A, 0xFF1105, 0xFF013D1C
    .word 0x0
    .word 0x1126019B, 0xFF1106, 0xFF013D1C, 0x0
    .word 0x1127019C, 0xFF1107, 0xFF013D1C, 0x0
    .word 0x1128019D, 0xFF1108, 0xFF013D1C, 0x0
    .word 0x1129019E, 0xFF1109, 0xFF003D1C, 0x0
    .word 0x112A019F, 0xFF110A, 0xFF003D1C, 0x0
    .word 0x112B01A0, 0xFF110B, 0xFF01371C, 0x0
    .word 0x1A2, 0xFF1151, 0xFF01371C, 0x0
    .word 0x1A3, 0xFF1152, 0xFF01371C, 0x0
    .word 0x1A4
    .word 0xFF1152, 0xFF01371C, 0x0
    .word 0x1A5, 0xFF1152, 0xFF005A1C, 0x20000000, 0x112001B5
    .word 0xFF1100, 0xFF005A1C, 0x20000000, 0x112101B6, 0xFF1101
    .word 0xFF005A1C, 0x20000000, 0x112201B7, 0xFF1102, 0xFF005A1C
    .word 0x20000000, 0x112301B8, 0xFF1103, 0xFF005A1C, 0x20000000
    .word 0x112401B9, 0xFF1104, 0xFF005A1C, 0x20000000, 0x112501BA
    .word 0xFF1105, 0xFF005A1C, 0x20000000, 0x112601BB, 0xFF1106
    .word 0xFF005A1C, 0x20000000, 0x112701BC, 0xFF1107, 0xFF005A1C
    .word 0x20000000, 0x112801BD, 0xFF1108, 0xFF005A1C, 0x0
    .word 0x112401B9, 0xFF1104, 0xFF005A1C, 0x0
    .word 0x112401B9, 0xFF1104, 0xFF005A1C, 0x0
    .word 0x112301B8, 0xFF1103, 0xFF005A1C, 0x0
    .word 0x112301B8, 0xFF1103, 0xFF013F1C, 0x0
    .word 0x112901C7, 0xFF1100, 0xFF043F1C, 0x0
    .word 0x112601C8, 0xFF1100, 0xFF01641C, 0x0
    .word 0x112601CC, 0xFF1100, 0xFF00581C, 0x0
    .word 0x1CE, 0xFF1100, 0xFF00621C, 0x0
    .word 0x112101DB, 0xFF1101, 0xFF01021C, 0x0
    .word 0x1CF, 0xFF0000, 0xFF02021C, 0x0
    .word 0x1D0
    .word 0xFF0000, 0xFF03021C, 0x0
    .word 0x1D1, 0xFF0000, 0xFF04021C, 0x0
    .word 0x1D2, 0xFF1156, 0xFF05021C, 0x0
    .word 0x1D3, 0xFF0000, 0xFF06021C, 0x0
    .word 0x1D4
    .word 0xFF0000, 0xFF07021C, 0x0
    .word 0x1D5, 0xFF1159, 0xFF00021C, 0x0
    .word 0x1CF, 0xFF0000, 0xFF00021C, 0x0
    .word 0x1D0
    .word 0xFF0000, 0xFF00021C, 0x0
    .word 0x1D1, 0xFF0000, 0xFF00021C, 0x0
    .word 0x1D2, 0xFF1153, 0xFF00021C, 0x0
    .word 0x1D3, 0xFF0000, 0xFF00021C, 0x0
    .word 0x1D4
    .word 0xFF0000, 0xFF00021C, 0x0
    .word 0x1D5, 0xFF1153, 0xFF00571C, 0x0
    .word 0x11200AE0, 0xFF1100, 0xFF00571C, 0x0
    .word 0x11210AE1, 0xFF1101, 0xFF00571C, 0x0
    .word 0x11220AE2, 0xFF1102, 0xFF00571C, 0x0
    .word 0x11230AE3, 0xFF1103, 0xFF03601C, 0x0
    .word 0xC1D, 0xFF1102, 0xFF0E6218, 0x0
    .word 0x1121006C
    .word 0xFF1101
    .word 0xFF01471C
    .word 0x0
    .word 0x112708D0
    .word 0xFF1101
// end of function sub_80AEA04

.thumb
ho_cb_80AEEDC:
    push {lr}
    ldr r7, [pc, #0x80aef04-0x80aeede-2] // dword_80AEA3C
    ldrb r1, [r5,#4]
    mov r2, #0x10
    mul r1, r2
    add r7, r7, r1
    ldr r0, [pc, #0x80aeef4-0x80aeee8-4] // jt_80AEEF8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80AEEF4:    .word jt_80AEEF8
jt_80AEEF8:    .word sub_80AEF08+1
    .word sub_80AEF4E+1
    .word sub_80AEF98+1
off_80AEF04:    .word dword_80AEA3C
// end of function ho_cb_80AEEDC

.thumb
sub_80AEF08:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_800285C
    ldrb r0, [r7,#2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldr r0, [r7,#4]
    bl sub_8002FD8
    ldrb r0, [r7,#3]
    cmp r0, #0xff
    bne loc_80AEF3A
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
loc_80AEF3A:
    bl sub_8002E60
    ldrb r0, [r5,#5]
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AEF4E
    pop {pc}
// end of function sub_80AEF08

.thumb
sub_80AEF4E:
    push {lr}
    mov r6, #3
    strb r6, [r5]
    ldrh r0, [r7,#0xa]
    tst r0, r0
    beq loc_80AEF60
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_80AEF60:
    ldrh r0, [r7,#0xc]
    tst r0, r0
    beq loc_80AEF6C
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_80AEF6C:
    ldrh r3, [r7,#8]
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80AEF92
    mov r6, #1
    strb r6, [r5]
    ldrh r0, [r7,#0xa]
    tst r0, r0
    beq loc_80AEF86
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_80AEF86:
    ldrh r0, [r7,#0xc]
    tst r0, r0
    beq loc_80AEF92
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_80AEF92:
    bl sub_800283C
    pop {pc}
// end of function sub_80AEF4E

.thumb
sub_80AEF98:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AEF98

.thumb
sub_80AEFA0:
    push {lr}
    ldr r0, [pc, #0x80aefb0-0x80aefa2-2] // jt_80AEFB4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80AEFB0:    .word jt_80AEFB4
jt_80AEFB4:    .word sub_80AEFC0+1
    .word sub_80AEFFA+1
    .word sub_80AF054+1
// end of function sub_80AEFA0

.thumb
sub_80AEFC0:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #3
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AEFFA
    pop {pc}
// end of function sub_80AEFC0

.thumb
sub_80AEFFA:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r0, [r0,#0x4c]
    cmp r0, #0
    bne loc_80AF016
    mov r0, #1
    mov r1, #0x49 
    bl sub_8024FF0
    bne loc_80AF016
    bl sub_80AF054
    pop {pc}
loc_80AF016:
    mov r1, #0x3c 
    svc 6
    ldr r0, [pc, #0x80af038-0x80af01a-2] // dword_80AF03C
loc_80AF01C:
    ldr r2, [r0]
    ldr r3, [r0,#4]
    cmp r1, r2
    bge loc_80AF02C
    cmp r1, #0
    beq loc_80AF02C
    add r0, #8
    b loc_80AF01C
loc_80AF02C:
    add r0, r3, #0
    bl sub_8002DCC
    bl sub_800283C
    pop {pc}
off_80AF038:    .word dword_80AF03C
dword_80AF03C:    .word 0x37
dword_80AF040:    .word 0x1
    .word 0x32, 0x0, 0x0
    .word 0x2
// end of function sub_80AEFFA

.thumb
sub_80AF054:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AF054

.thumb
sub_80AF05C:
    push {r5,lr}
    mov r0, #7
    bl sub_8004440
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_80AF05C

.thumb
sub_80AF068:
    push {lr}
    ldr r7, [pc, #0x80af09c-0x80af06a-2] // unk_20001B0
    add r6, r7, #0
    ldrb r0, [r5,#4]
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80af084-0x80af076-2] // off_80AF088
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AF084:    .word off_80AF088
off_80AF088:    .word sub_80AF0A0+1
    .word sub_80AF104+1
    .word sub_80AF1FC+1
    .word sub_80AF204+1
    .word sub_80AF218+1
off_80AF09C:    .word unk_20001B0
// end of function sub_80AF068

.thumb
sub_80AF0A0:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xe
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    strb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldr r0, [pc, #0x80af248-0x80af0cc-4] // =0x65C
    ldrb r1, [r5,#4]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AF0F6
    ldr r0, [pc, #0x80af24c-0x80af0da-2] // =0x660
    ldrb r1, [r5,#4]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AF0F6
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #3
    strb r0, [r5]
    bl sub_80AF104
    pop {pc}
loc_80AF0F6:
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #1
    strb r0, [r5]
    bl sub_80AF1FC
    pop {pc}
// end of function sub_80AF0A0

.thumb
sub_80AF104:
    push {lr}
    ldrb r0, [r6,#4]
    add r1, r0, #0
    mov r0, #0
    bl sub_8002F28
    mov r1, #0xc
    ldrsb r0, [r7,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x34]
    mov r1, #0xd
    ldrsb r0, [r7,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x38]
    ldrb r0, [r7,#9]
    mov r1, #0xa
    svc 6
    mov r2, #0x1f
    sub r0, r2, r0
    sub r1, r2, r1
    sub r0, #0xd
    sub r1, #3
    mov r3, #1
    lsl r3, r0
    mov r4, #1
    lsl r4, r1
    ldr r0, [pc, #0x80af1f8-0x80af138-4] // =0x1FFE0000
    bic r0, r3
    bic r0, r4
    bl sub_8002FD8
    ldrb r0, [r7,#8]
    ldrb r1, [r7,#9]
    cmp r1, #3
    bgt loc_80AF14C
    add r0, #2
loc_80AF14C:
    ldrb r1, [r5,#5]
    strb r0, [r5,#5]
    cmp r0, r1
    beq loc_80AF15C
    bl sub_8002DF0
    bl sub_800281C
loc_80AF15C:
    ldr r0, [pc, #0x80af248-0x80af15c-4] // =0x65C
    ldrb r1, [r5,#4]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80AF1B6
    mov r0, #0x80
    mov r1, #0x14
    mov r2, #2
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r7,#8]
    mov r1, #1
    eor r0, r1
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldr r3, [r5,#0x3c]
    mov r4, #4
    lsl r4, r4, #0x10
    add r3, r3, r4
    str r3, [r5,#0x3c]
    mov r0, #0xc
    strb r0, [r5,#8]
    ldrb r0, [r7,#8]
    tst r0, r0
    bne loc_80AF1AE
    mov r0, #0x6f 
    bl f500_8000558
    b loc_80AF1F0
loc_80AF1AE:
    mov r0, #0x6f 
    bl f500_8000558
    b loc_80AF1F0
loc_80AF1B6:
    ldr r0, [pc, #0x80af24c-0x80af1b6-2] // =0x660
    ldrb r1, [r5,#4]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80AF1F0
    mov r0, #0x10
    strb r0, [r5,#6]
    push {r5}
    mov r0, #0
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r4, #8
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0xb
    bl sub_8004440
    add r0, r5, #0
    pop {r5}
    str r0, [r5,#0x60]
    mov r0, #0x10
    strb r0, [r5,#8]
    mov r0, #0xe4
    bl f500_8000558
    b loc_80AF1F0
loc_80AF1F0:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
dword_80AF1F8:    .word 0x1FFE0000
// end of function sub_80AF104

.thumb
sub_80AF1FC:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AF1FC

.thumb
sub_80AF204:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80AF212
    bl sub_800447A
loc_80AF212:
    bl sub_800283C
    pop {pc}
// end of function sub_80AF204

.thumb
sub_80AF218:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #1
    ble loc_80AF234
    strb r0, [r5,#6]
    mov r1, #0x10
    sub r0, r1, r0
    lsl r1, r0, #8
    lsl r2, r0, #0x10
    orr r0, r1
    orr r0, r2
    bl sub_8002F02
    b loc_80AF242
loc_80AF234:
    push {r5}
    ldr r5, [r5,#0x60]
    bl sub_800447A
    pop {r5}
    bl sub_800447A
loc_80AF242:
    bl sub_800283C
    pop {pc}
off_80AF248:    .word 0x65C
off_80AF24C:    .word 0x660
// end of function sub_80AF218

.thumb
sub_80AF250:
    push {lr}
    ldr r0, [pc, #0x80af260-0x80af252-2] // off_80AF264
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80AF260:    .word off_80AF264
off_80AF264:    .word sub_80AF270+1
    .word sub_80AF284+1
    .word sub_80AF34C+1
// end of function sub_80AF250

.thumb
sub_80AF270:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    bl sub_80AF284
    pop {pc}
// end of function sub_80AF270

.thumb
sub_80AF284:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x60]
    sub r0, #1
    ble loc_80AF294
    str r0, [r5,#0x60]
    b loc_80AF312
loc_80AF294:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    bl sub_8001AF6
    mov r1, #8
    svc 6
    mov r0, #6
    mul r0, r1
    ldr r4, [pc, #0x80af318-0x80af2aa-2] // dword_80AF31C
    add r4, r4, r0
    bl sub_8001AF6
    add r6, r0, #0
    mov r8, r5
    mov r0, #0
    ldrsh r1, [r4,r0]
    mov r0, #2
    ldrsh r2, [r4,r0]
    mov r0, #4
    ldrsh r3, [r4,r0]
    mov r4, #0x7f
    and r4, r6
    sub r4, #0x3f 
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0x7f
    and r4, r6
    sub r4, #0x3f 
    add r2, r2, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r3, r3, r4
    lsr r6, r6, #8
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    ldr r5, [r7,#0x24]
    ldr r6, [r7,#0x28]
    ldr r7, [r7,#0x2c]
    mov r0, #2
    add r1, r1, r5
    add r2, r2, r6
    add r3, r3, r7
    mov r4, r8
    ldrb r4, [r4,#4]
    bl sub_8004440
    mov r5, r8
    ldr r0, [r5,#0x64]
    sub r0, #1
    ble loc_80AF308
    str r0, [r5,#0x64]
    b loc_80AF312
loc_80AF308:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    mov r0, #0x70 
    bl f500_8000558
loc_80AF312:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
off_80AF318:    .word dword_80AF31C
dword_80AF31C:    .word 0xFFD0FFD0, 0xFFC00008, 0x80000, 0x30FFD0, 0x8, 0x8FFC0
    .word 0x400000, 0x300008, 0x8FFD0, 0x40, 0x300008, 0x80030
// end of function sub_80AF284

.thumb
sub_80AF34C:
    push {lr}
    bl sub_800447A
    pop {pc}
dword_80AF354:    .word 0x20115, 0x1150436, 0x4370002, 0x20115, 0x150438, 0x4360002
    .word 0x20015, 0x150437, 0x4380002, 0x20015, 0x1150436, 0x4370002
    .word 0x20115, 0x150438, 0x4360002, 0x20015, 0x150437, 0x4380002
    .word 0x20015, 0x439, 0xFF92FEE2, 0xFFC00040, 0x40FF92, 0xFF920062
    .word 0xFF980040, 0xD8, 0xFFD80138, 0x1380040, 0x40FF36, 0x48FF08
    .word 0xA0000, 0x40FFE8, 0xFF0800C6, 0x500040, 0x40002E, 0xFF8E0050
    .word 0x500040, 0x40FF4E, 0x10FF0E
    .hword 0x40
// end of function sub_80AF34C

.thumb
ho_cb_80AF3F2:
    push {lr}
    ldr r7, [pc, #0x80af428-0x80af3f4-4] // dword_80AF354
    ldrb r1, [r5,#4]
    mov r2, #6
    mul r1, r2
    add r7, r7, r1
    ldr r0, [pc, #0x80af40c-0x80af3fe-2] // jt_80AF410
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AF40C:    .word jt_80AF410
jt_80AF410:    .word sub_80AF42C+1
    .word sub_80AF478+1
    .word sub_80AF4C0+1
    .word sub_80AF4E0+1
    .word sub_80AF520+1
    .word sub_80AF550+1
off_80AF428:    .word dword_80AF354
// end of function ho_cb_80AF3F2

.thumb
sub_80AF42C:
    push {lr}
    mov r0, #0x80
    mov r1, #0x1c
    ldrb r2, [r7]
    bl sub_800285C
    ldrb r0, [r7,#1]
loc_80AF43A:
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r7,#2]
    cmp r0, #0xff
    bne loc_80AF464
    ldr r6, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    str r6, [r5,#0x3c]
loc_80AF464:
    bl sub_8002E60
    ldrb r0, [r7,#3]
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AF478
    pop {pc}
// end of function sub_80AF42C

.thumb
sub_80AF478:
    push {lr}
    push {r4,r6,r7}
    mov r1, #4
    ldrsh r0, [r7,r1]
    cmp r0, #0
    blt loc_80AF48C
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80AF4B4
loc_80AF48C:
    mov r6, #3
    push {r5}
    bl sub_809F280
    pop {r5}
    ldrb r0, [r5,#4]
    cmp r4, r0
    bne loc_80AF4B6
    mov r0, #1
    mov r1, #0x3f 
    bl sub_8024FF0
    beq loc_80AF4B6
    mov r0, #1
    mov r1, #0x3f 
    bl sub_8024FB8
    mov r0, #8
    strb r0, [r5,#8]
    b loc_80AF4B6
loc_80AF4B4:
    mov r6, #1
loc_80AF4B6:
    strb r6, [r5]
    pop {r4,r6,r7}
    bl sub_800283C
    pop {pc}
// end of function sub_80AF478

.thumb
sub_80AF4C0:
    push {lr}
    ldrb r0, [r7,#1]
    add r0, #2
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x30 
    add r1, r5, #0
    add r1, #0x60 
    strh r0, [r1]
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_800283C
    pop {pc}
// end of function sub_80AF4C0

.thumb
sub_80AF4E0:
    push {lr}
    add r1, r5, #0
    add r1, #0x60 
    ldrh r0, [r1]
    sub r0, #1
    cmp r0, #0x2b 
    bne loc_80AF4FE
    push {r0}
    mov r0, #0x74 
    bl f500_8000558
    ldr r0, [pc, #0x80af51c-0x80af4f6-2] // =0xCC
    bl f500_8000558
    pop {r0}
loc_80AF4FE:
    tst r0, r0
    bne loc_80AF50E
    ldr r0, [pc, #0x80af518-0x80af502-2] // =0x141
    bl f500_8000558
    mov r0, #0
    mov r2, #0x10
    strb r2, [r5,#8]
loc_80AF50E:
    strh r0, [r1]
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
dword_80AF518:    .word 0x142
dword_80AF51C:    .word 0xCE
// end of function sub_80AF4E0

.thumb
sub_80AF520:
    push {lr}
    add r1, r5, #0
    add r1, #0x60 
    ldrh r0, [r1]
    push {r0,r1}
    push {r0}
    bl sub_8002F28
    pop {r0}
    sub r0, #0x10
    neg r0, r0
    bl sub_8002CC6
    pop {r0,r1}
    add r0, #1
    cmp r0, #0xf
    bne loc_80AF548
    mov r0, #0x14
    strb r0, [r5,#8]
    b loc_80AF54A
loc_80AF548:
    strh r0, [r1]
loc_80AF54A:
    bl sub_800283C
    pop {pc}
// end of function sub_80AF520

.thumb
sub_80AF550:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AF550

.thumb
sub_80AF558:
    push {r5,r7,lr}
    mov r0, #0xa
    mov r5, #0xa
    lsl r5, r5, #0x10
    ldr r7, [pc, #0x80af588-0x80af560-4] // dword_80AF354+80
    mov r1, #6
    mul r1, r4
    add r7, r7, r1
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r1, r1, r5
    mov r3, #2
    ldrsh r2, [r7,r3]
    lsl r2, r2, #0x10
    sub r2, r2, r5
    mov r3, #4
    ldrsh r3, [r7,r3]
    lsl r3, r3, #0x10
    sub r3, r3, r5
    bl sub_8004440
    pop {r5,r7,pc}
    .balign 4, 0x00
off_80AF588:    .word dword_80AF354+0x50
off_80AF58C:    .word dword_80AF5F8
    .word dword_80AF620
    .word 0x80AF636, 0x80AF64C, 0x80AF698, 0x80AF6AE, 0x80AF6E8
    .word 0x80AF6FE, 0x80AF75C, 0x80AF796, 0x80AF7D0, 0x80AF80A
    .word 0x80AF832, 0x80AF86C, 0x80AF894, 0x80AF8E0, 0x80AF91A
    .word 0x80AF942, 0x80AF958, 0x80AF96E, 0x80AF9CC, 0x80AFA06
    .word 0x80AFA52, 0x80AFA68, 0x80AFA7E, 0x80AFA94, 0x80AFAF2
dword_80AF5F8:    .word 0x54FE74, 0x0
    .word 0x70000, 0xFFF70000, 0x100BD, 0x3, 0x20004, 0x90001
    .word 0x600000, 0xFF
dword_80AF620:    .word 0xFF9AFEDA, 0x40, 0x10000, 0x9, 0xFF00DE, 0xFFB80000
    .word 0x40FF9A, 0x0
    .word 0x90001, 0xA20000, 0xFF, 0xFF9A005A, 0x40, 0x10000
    .word 0x9, 0xFFFE0081, 0x6, 0x2FFFD, 0x3, 0x460009
    .word 0x0, 0x0
    .word 0x30000, 0x120000, 0xFE0043, 0x0, 0x0
    .word 0x3, 0x6A0009, 0xFF, 0x17CFF8E, 0x0
    .word 0x70000, 0xFFF70000, 0xFF00A0, 0xFF8E0000, 0xE0, 0x0
    .word 0x7, 0x62FFF7, 0x20001, 0x40000, 0x10002, 0x9, 0xFFFC01A0
    .word 0xFFFE, 0xFFFEFFFF, 0x7, 0x9EFFF7, 0xFF, 0xFFE0012E, 0x40
    .word 0x70000, 0xFFF70000, 0xFF00A4, 0x12E0000, 0x40FF3E, 0x0
    .word 0x7, 0x5EFFF7, 0x3FFFA, 0xFFFF0000, 0x50002, 0xFFF7
    .word 0x30100, 0x4, 0x40001, 0x3, 0x460009, 0x0
    .word 0x0
    .word 0x30000, 0x120000, 0x46, 0x0, 0x0
    .word 0x3, 0x700009, 0xFF, 0xFEE4002C, 0x40, 0x30000, 0x90000
    .word 0x46, 0x0, 0x0
    .word 0x3, 0x460012, 0xFE, 0x0
    .word 0x30000, 0x90000, 0xFF0070, 0xFF9E0000, 0xFF7E, 0x0
    .word 0x3, 0x11C0009, 0xFFFEFFFC, 0xFFFA0000, 0x5FFFC, 0xFFF7
    .word 0x4009D, 0xFFFD, 0xFFFD0003, 0x7, 0x41FFF7, 0xFF
    .word 0x56FF9E, 0x0
    .word 0x30000, 0x90000, 0xFFFC0044, 0xFFFE, 0xFFFDFFFD, 0xFFF70005
    .word 0xA10000, 0xFFFD0004, 0x30000, 0x7FFFD, 0xFFF70000, 0xFF0041
    .word 0xFEFE0000, 0x50, 0x0
    .word 0x7, 0x60FFF7, 0x10004, 0x30000, 0x10001, 0x9, 0xFF0100
    .word 0x20000, 0x40FFF2, 0x0
    .word 0x90001, 0x600000, 0xFFFEFFFD, 0xFFFD0000, 0x7FFFD
    .word 0xFFF70000, 0x400DE, 0x2, 0x30002, 0x90001
    .word 0x5C0000, 0xFF, 0xFF8A005C, 0x40, 0x70000
    .word 0xFFF70000, 0x4007A, 0x2, 0x30002, 0x90001
    .word 0x5C0000, 0xFF, 0xFF1400BE, 0x40, 0x10000
    .word 0x9, 0xFFFD0065, 0x2, 0x2FFFF, 0x3
    .word 0x460009, 0x0, 0x0
    .word 0x30000, 0x120000, 0xFE004B, 0x0, 0x0
    .word 0x3, 0x6A0009, 0xFF, 0x1B4FF86, 0x0
    .word 0x70000, 0xFFF70000, 0x1011E, 0x2, 0x20004, 0x90001
    .word 0xBE0000, 0xFFFCFFFC, 0xFFFE0000, 0x7FFFD, 0xFFF70000, 0xFF005C
    .word 0x0
    .word 0x40009C, 0x0
    .word 0x90001, 0x4C0000, 0xFFFEFFFC, 0xFFFC0000, 0x7FFFD
    .word 0xFFF70000, 0xFF0062, 0x460000, 0x400036, 0x0
    .word 0x7, 0xA0FFF7, 0xFF, 0xFF960046, 0x40, 0x70000, 0xFFF70000
    .word 0xFF0040, 0x460000, 0x40FF56, 0x0
    .word 0x7, 0x5EFFF7, 0x2FFFA, 0xFFFF0000, 0x50003, 0xFFF7
    .word 0x400C2, 0x2, 0x20001, 0x3, 0x1640009, 0xFFFEFFFC
    .word 0xFFFD0000, 0x5FFFD, 0xFFF7, 0x4007E, 0xFFFD, 0xFFFD0003
    .word 0x7, 0x42FFF7, 0xFF, 0xFF84FF84, 0x40, 0x30000
    .word 0x90000, 0xFFFC00DE, 0xFFFE, 0xFFFDFFFD, 0xFFF70005, 0x3E0000
    .word 0xFFFD0004, 0x30000, 0x7FFFD, 0xFFF70000, 0xFF004E, 0xFF460000
    .word 0x400012, 0x0
    .word 0x7, 0x1AFFF7, 0x20001, 0x40000, 0x10002, 0x9, 0xFFFE003F
    .word 0x6, 0x2FFFF, 0x3, 0x5F0009, 0xFFFEFFFC, 0xFFFD0000, 0x5FFFD
    .word 0xFFF7, 0xFF003F, 0xFF460000, 0x40005E, 0x0
    .word 0x7, 0x5CFFF7, 0xFF, 0x5EFF40, 0x40, 0x50000, 0xFFF7
    .word 0xFF0042, 0xFF060000, 0x40005E, 0x0
    .word 0x7, 0x46FFF7, 0xFF, 0x18FF06, 0x40, 0x70000, 0xFFF70000
    .word 0xFFFA0060, 0x1, 0x2FFFF, 0xFFF70005, 0xC00000, 0x20004, 0x10000
    .word 0x30002, 0x120000, 0xFE004D, 0x0, 0x0
    .word 0x3, 0x8A0009, 0xFFFC0003, 0x10000, 0x1FFFC, 0x9, 0xFF008C
    .word 0xFE440000, 0xB8, 0x0
    .hword 0x3
    .word 0x90000
    .word 0x3002A
    .word 0xFFFC
    .word 0xFFFC0001
    .word 0x90001
    .word 0x8C0000
    .word 0xFF
// end of function sub_80AF558

.thumb
sub_80AFB1A:
    push {lr}
    ldr r0, [pc, #0x80afb2c-0x80afb1c-4] // jt_80AFB30
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_80AFB2C:    .word jt_80AFB30
jt_80AFB30:    .word sub_80AFB38+1
    .word sub_80AFB94+1
// end of function sub_80AFB1A

.thumb
sub_80AFB38:
    push {r4,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
loc_80AFB40:
    mov r1, #0x18
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r4, [r2,#5]
loc_80AFB48:
    mov r2, #0x49 
    add r2, r2, r4
    bl sub_800285C
    ldrb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    ldr r0, [pc, #0x80afb80-0x80afb64-4] // dword_80AFB84
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    lsl r0, r0, #0x18
    bl sub_8002FD8
    add r0, r4, #0
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AFB94
    pop {r4,pc}
off_80AFB80:    .word dword_80AFB84
dword_80AFB84:    .word 0x18
    .word 0x18
    .word 0x28
    .word 0x30
// end of function sub_80AFB38

.thumb
sub_80AFB94:
    push {lr}
    ldr r0, [pc, #0x80afbb0-0x80afb96-2] // =0xFBB40000
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    pop {pc}
dword_80AFBAE:    .word 0xFBB40000
    .word 0xFBD5080A
    .word 0xFBE7080A
    .word 0xFC25080A
    .word 0xFC93080A
    .word 0xFD17080A
    .word 0xFD53080A
    .word 0xFDAD080A
    .word 0xFDBF080A
    .hword 0x80A
// end of function sub_80AFB94

.thumb
sub_80AFBD4:
    push {lr}
    mov r0, #1
    mov r1, #0x3e 
    bl sub_8024FF0
    beq locret_80AFBE4
    mov r0, #4
    strb r0, [r5,#9]
locret_80AFBE4:
    pop {pc}
// end of function sub_80AFBD4

.thumb
sub_80AFBE6:
    push {r4,r6,lr}
    ldr r1, [r5,#0x64]
    ldrh r0, [r1,#0xa]
    strb r0, [r5,#0x10]
    push {r1}
    bl sub_8002DF0
    bl sub_800281C
    pop {r1}
    ldrh r0, [r1,#0x10]
    add r4, r5, #0
    add r4, #0x60 
    lsl r0, r0, #3
    mov r1, #9
    svc 6
    add r6, r5, #0
    add r6, #0x70 
    ldrh r2, [r6]
    strh r0, [r4]
    add r2, r2, r0
    strh r2, [r6]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    str r0, [r5,#0x68]
    str r1, [r5,#0x6c]
    mov r0, #8
    strb r0, [r5,#9]
    bl loc_80AFC24
    pop {r4,r6,pc}
// end of function sub_80AFBE6

loc_80AFC24:
    push {r4,r7,lr}
    ldr r7, [r5,#0x64]
    add r3, r5, #0
    add r3, #0x60 
    ldrh r1, [r3]
    cmp r1, #1
    bne loc_80AFC68
    ldrh r4, [r7,#0x10]
    lsl r4, r4, #0x10
    mov r3, #0xc
    mov r1, #9
    ldrsh r0, [r7,r3]
    tst r0, r0
    bne dword_80AFC50
    mov r3, #0xe
    ldrsh r0, [r7,r3]
    svc 6
    mul r4, r0
    ldr r3, [r5,#0x6c]
    add r3, r3, r4
    str r3, [r5,#0x38]
    b loc_80AFC5A
dword_80AFC50:    .word 0x4344DF06
    .word 0x193F6EAF
    .hword 0x636F
loc_80AFC5A:
    mov r7, #4
    add r1, r5, #0
    add r1, #0x60 
    strh r7, [r1]
    mov r7, #0xc
    strb r7, [r5,#9]
    pop {r4,r7,pc}
loc_80AFC68:
    sub r1, #1
    strh r1, [r3]
    ldr r1, [r5,#0x34]
    mov r2, #0xc
    ldrsh r2, [r7,r2]
    lsl r2, r2, #0xd
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #0xe
    ldrsh r2, [r7,r2]
    lsl r2, r2, #0xd
    add r1, r1, r2
    str r1, [r5,#0x38]
    mov r0, #0x34 
    add r0, r0, r5
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    pop {r4,r7,pc}
.thumb
sub_80AFC92:
    push {r4,lr}
    ldr r1, [r5,#0x64]
    add r1, #0x12
    mov r2, #0
    ldrsh r2, [r1,r2]
    cmp r2, #0xfe
    bne loc_80AFCA8
    str r1, [r5,#0x64]
    mov r0, #4
    strb r0, [r5,#9]
    b locret_80AFD14
loc_80AFCA8:
    add r0, r5, #0
    add r0, #0x60 
    ldrh r1, [r0]
    sub r1, #1
    strh r1, [r0]
    cmp r1, #0
    bne locret_80AFD14
    mov r1, #4
    strh r1, [r0]
    ldr r0, [r5,#0x64]
    add r0, #0x12
    str r0, [r5,#0x64]
    mov r2, #0
    ldrsh r2, [r0,r2]
    cmp r2, #0
    bne loc_80AFCCE
    mov r0, #4
    strb r0, [r5,#9]
    b locret_80AFD14
loc_80AFCCE:
    cmp r2, #0xff
    bne sub_80AFCF0
    mov r0, #1
    mov r1, #0x3d 
    bl sub_8024FF0
    beq sub_80AFCE2
    mov r0, #0x18
    strb r0, [r5,#9]
    pop {r4,pc}
// end of function sub_80AFC92

.thumb
sub_80AFCE2:
    mov r0, #0x14
    add r1, r5, #0
    add r1, #0x60 
    strh r0, [r1]
    mov r0, #0x14
    strb r0, [r5,#9]
    pop {r4,pc}
// end of function sub_80AFCE2

.thumb
sub_80AFCF0:
    ldr r1, [r5,#0x34]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #2
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldrh r0, [r0,#0xa]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80AFCF0

.thumb
sub_80AFD10:
    mov r0, #0x10
    strb r0, [r5,#9]
locret_80AFD14:
    pop {r4,pc}
// end of function sub_80AFD10

.thumb
dead_80AFD16:
    push {r4,lr}
    add r0, r5, #0
    add r0, #0x60 
    ldrh r1, [r0]
    sub r1, #1
    strh r1, [r0]
    cmp r1, #0
    bne locret_80AFD50
    ldr r0, [r5,#0x64]
    mov r2, #6
    ldrsh r2, [r0,r2]
    ldr r1, [r5,#0x34]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #8
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldrh r0, [r0,#0xa]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
locret_80AFD50:
    pop {r4,pc}
// end of function dead_80AFD16

.thumb
sub_80AFD52:
    push {r4,r7,lr}
    add r0, r5, #0
    add r0, #0x60 
    ldrh r1, [r0]
    sub r1, #1
    beq sub_80AFD6E
    strh r1, [r0]
    cmp r1, #6
    bne locret_80AFD6C
    mov r0, #1
    mov r1, #0x3e 
    bl sub_8024FB8
locret_80AFD6C:
    pop {r4,r7,pc}
// end of function sub_80AFD52

.thumb
sub_80AFD6E:
    push {r5}
    bl sub_809F2B4
    pop {r5}
    sub r4, r4, r1
    ldr r0, [pc, #0x80afda8-0x80afd78-4] // =0x9EC80809
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    ldrb r6, [r0,r4]
    ldr r1, [pc, #0x80afda0-0x80afd80-4] // =0x1780000
    add r1, r1, r6
    sub r1, #1
    add r0, r1, #0
    bl sub_8024FF4
    bne loc_80AFD98
    ldrb r0, [r5,#0x10]
    add r0, #4
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x10]
loc_80AFD98:
    mov r0, #0x18
    strb r0, [r5,#9]
    pop {r4,r7,pc}
dword_80AFD9E:    .word 0x1780000
    .word 0xF0F00000
dword_80AFDA6:    .word 0x9EC80809
    .hword 0x808
// end of function sub_80AFD6E

.thumb
sub_80AFDAC:
    push {lr}
    mov r0, #1
    mov r1, #0x40 
    bl sub_8024FF0
    beq locret_80AFDBC
    mov r0, #0x1c
    strb r0, [r5,#9]
locret_80AFDBC:
    pop {pc}
// end of function sub_80AFDAC

.thumb
sub_80AFDBE:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80AFDBE

.thumb
sub_80AFDC6:
    push {r7,lr}
    mov r0, #0xb
    ldr r7, [pc, #0x80afdf8-0x80afdca-2] // off_80AF58C
    lsl r1, r4, #2
    ldr r7, [r7,r1]
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    mov r3, #2
    ldrsh r2, [r7,r3]
    lsl r2, r2, #0x10
    mov r3, #4
    ldrsh r3, [r7,r3]
    lsl r3, r3, #0x10
    bl sub_8004440
    ldrh r0, [r7,#0xa]
    strb r0, [r5,#0x10]
    str r7, [r5,#0x64]
    ldr r0, [pc, #0x80afdfc-0x80afdec-4] // dword_200AA88
    str r5, [r0]
    ldr r0, [pc, #0x80afe00-0x80afdf0-4] // dword_200AAB0
    str r5, [r0]
    pop {r7,pc}
    .balign 4, 0x00
off_80AFDF8:    .word off_80AF58C
off_80AFDFC:    .word dword_200AA88
off_80AFE00:    .word dword_200AAB0
off_80AFE04:    .word dword_80AFE70
    .word dword_80AFE8C
    .word 0x80AFE9A, 0x80AFEA8, 0x80AFEE0, 0x80AFEEE, 0x80AFF18
    .word 0x80AFF26, 0x80AFF6C, 0x80AFF96, 0x80AFFC0, 0x80AFFEA
    .word 0x80B0006, 0x80B0030, 0x80B004C, 0x80B0084, 0x80B00AE
    .word 0x80B00CA, 0x80B00D8, 0x80B00E6, 0x80B012C, 0x80B0156
    .word 0x80B019C, 0x80B01AA, 0x80B01B8, 0x80B01C6, 0x80B01FE
dword_80AFE70:    .word 0x0, 0x0
    .word 0x1, 0xFFFD000C, 0xFFFCFFFD, 0x1FFFD, 0xFFF4
dword_80AFE8C:    .word 0x0, 0x0
    .word 0xFFF40001, 0x0, 0x0
    .word 0x10000, 0xFFF4, 0x0, 0x0
    .word 0xFFF40001, 0x20000, 0x3FFFD, 0x1FFFF, 0xFFF40000
    .word 0x0, 0x0, 0x0
    .word 0xFFF4, 0x0, 0x0
    .word 0xFFF40000, 0x0, 0x0
    .word 0x1, 0xC, 0x0
    .word 0x10000, 0xC0000, 0xFFFDFFFD, 0xFFFDFFFC, 0xFFF40001
    .word 0x30000, 0x40003, 0xFFFF0003, 0xC0000, 0x0
    .word 0x0
    .word 0x1, 0xC, 0x0
    .word 0x10000, 0xC0000, 0xFFFD0002, 0xFFFD0003, 0xCFFFF
    .word 0xFFFE0000, 0xFFFDFFFC, 0xFFFFFFFD, 0xFFF40000, 0x0
    .word 0x0, 0x0
    .word 0xFFF4, 0x0, 0x0
    .word 0xFFF40000, 0x0, 0x0, 0x0
    .word 0xFFF4, 0x0, 0x0
    .word 0xFFF40000, 0x0, 0x0, 0x0
    .word 0xFFF4, 0x0
    .word 0x10000, 0xFFF40000, 0x40002, 0x40003, 0xC0001, 0xFFFE0000
    .word 0xFFFD0004, 0x10004, 0xC0000, 0x0, 0x0
    .word 0x1, 0x2FFF4, 0x30004, 0x10004, 0xC, 0x4FFFE, 0x4FFFD
    .word 0x1, 0xC, 0x0
    .word 0x10000, 0xC0000, 0xFFFEFFFE, 0xFFFEFFFD, 0xFFF40001
    .word 0x0, 0x0
    .word 0x10000, 0xFFF4, 0x30003, 0x20003, 0xFFFF, 0xFFFE000C
    .word 0xFFFDFFFD, 0x1FFFD, 0xFFF4, 0x0, 0x0
    .word 0x1, 0xFFFE000C, 0xFFFDFFFD, 0x1FFFD, 0xFFF4, 0x0, 0x0
    .word 0xFFF40000, 0x30000, 0x3FFFD, 0x1FFFD, 0xFFF40000
    .word 0x0, 0x0, 0x0
    .word 0xFFF4, 0x0, 0x0
    .word 0xFFF40000, 0x0, 0x0
    .word 0x1, 0xFFFD000C, 0xFFFCFFFD, 0x1FFFD, 0xFFF4, 0x30003
    .word 0x20003, 0xFFFF, 0xC, 0x0
    .word 0x10000, 0xFFF4, 0x30003, 0x20003, 0xFFFF, 0xC, 0x0
    .word 0x10000, 0xC0000, 0x0, 0x0
    .word 0x1, 0xC, 0x0
    .word 0x10000, 0xC0000, 0xFFFD0002, 0xFFFD0003, 0xCFFFF
    .word 0xFFFE0000, 0xFFFDFFFC, 0xFFFFFFFD, 0xFFF40000, 0x20002
    .word 0x40003, 0xC0001, 0x0, 0x0, 0x0
    .word 0xC0000, 0x0, 0x0, 0x0
    .word 0x2FFF4, 0x30002, 0x10004, 0xC, 0x0, 0x0, 0x0
    .word 0xC, 0x0, 0x0
    .word 0xC0000, 0xFFFEFFFE, 0xFFFEFFFD, 0xFFF40001, 0x30000
    .word 0x3FFFD, 0x1FFFD, 0xFFF40000, 0x40002, 0x40003
    .word 0xC0001, 0x0, 0x0, 0x0
    .word 0xC0000, 0x0, 0x0, 0x0
    .word 0x2000C, 0x30004, 0x10004, 0xC, 0x0, 0x0, 0x0
    .word 0xC, 0x0
    .word 0x10000, 0xC0000, 0xFFFD0002, 0xFFFD0003, 0xCFFFF
    .word 0xFFFE0000, 0xFFFDFFFC, 0xFFFFFFFD, 0xFFF40000, 0x4FFFE
    .word 0x3FFFD, 0xFFF4FFFF, 0x0, 0x0, 0x0
    .word 0xFFF40000, 0x4FFFE, 0x3FFFD, 0xFFF4FFFF
    .byte 0x0, 0x0
// end of function sub_80AFDC6

.thumb
sub_80B021A:
    push {lr}
    ldr r0, [pc, #0x80b022c-0x80b021c-4] // jt_80B0230
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_80B022C:    .word jt_80B0230
jt_80B0230:    .word sub_80B0238+1
    .word loc_80B0266+1
// end of function sub_80B021A

.thumb
sub_80B0238:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x40 
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_80B0266
    pop {pc}
loc_80B0266:
    push {lr}
    ldr r0, [pc, #0x80b0280-0x80b0268-4] // jt_80B0284
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0x68]
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    pop {pc}
off_80B0280:    .word jt_80B0284
jt_80B0284:    .word sub_80B02A8+1
    .word sub_80B02A8+1
    .word sub_80B02A8+1
    .word sub_80B02E0+1
    .word sub_80B0336+1
    .word sub_80B0372+1
    .word sub_80B0372+1
    .word sub_80B0384+1
    .word byte_200AA28
// end of function sub_80B0238

.thumb
sub_80B02A8:
    push {r4,r6,lr}
    ldr r0, [r5,#0x68]
    ldrb r1, [r0,#9]
    cmp r1, #0xc
    bne loc_80B02B4
    strb r1, [r5,#9]
loc_80B02B4:
    ldr r6, [r5,#0x64]
    ldr r1, [r0,#0x34]
    ldr r2, [r0,#0x38]
    ldr r3, [r0,#0x3c]
    mov r4, #0xa
    ldrsh r4, [r6,r4]
    lsl r4, r4, #0x10
    add r1, r1, r4
    str r1, [r5,#0x34]
    mov r4, #0xc
    ldrsh r4, [r6,r4]
    lsl r4, r4, #0x10
    add r2, r2, r4
    str r2, [r5,#0x38]
    str r3, [r5,#0x3c]
    ldrb r0, [r0,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    pop {r4,r6,pc}
// end of function sub_80B02A8

.thumb
sub_80B02E0:
    push {r4,lr}
    ldr r0, [r5,#0x68]
    ldrb r1, [r0,#9]
    cmp r1, #4
    bne loc_80B02EE
    strb r1, [r5,#9]
    b locret_80B0334
loc_80B02EE:
    ldrb r1, [r0,#9]
    cmp r1, #0x10
    bne loc_80B02F8
    strb r1, [r5,#9]
    b loc_80B0302
loc_80B02F8:
    ldrb r1, [r0,#9]
    cmp r1, #0x14
    bne locret_80B0334
    strb r1, [r5,#9]
    b locret_80B0334
loc_80B0302:
    ldr r0, [r5,#0x64]
    add r0, #0xe
    str r0, [r5,#0x64]
    ldr r1, [r5,#0x34]
    mov r2, #0
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #2
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldrh r2, [r0,#8]
    ldrb r0, [r5,#0x10]
    add r0, r0, r2
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
locret_80B0334:
    pop {r4,pc}
// end of function sub_80B02E0

.thumb
sub_80B0336:
    push {r4,lr}
    ldr r0, [r5,#0x68]
    ldrb r1, [r0,#9]
    cmp r1, #4
    bne locret_80B0370
    strb r1, [r5,#9]
    ldr r0, [r5,#0x64]
    ldr r1, [r5,#0x34]
    mov r2, #4
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #6
    ldrsh r2, [r0,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldrh r2, [r0,#8]
    ldrb r0, [r5,#0x10]
    add r0, r0, r2
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
locret_80B0370:
    pop {r4,pc}
// end of function sub_80B0336

.thumb
sub_80B0372:
    push {lr}
    mov r0, #1
    mov r1, #0x40 
    bl sub_8024FF0
    beq locret_80B0382
    mov r0, #0x1c
    strb r0, [r5,#9]
locret_80B0382:
    pop {pc}
// end of function sub_80B0372

.thumb
sub_80B0384:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B0384

.thumb
sub_80B038C:
    push {r7,lr}
    ldr r7, [pc, #0x80b03b0-0x80b038e-2] // off_80AFE04
    lsl r1, r4, #2
    ldr r7, [r7,r1]
    mov r0, #0xc
    bl sub_8004440
    str r7, [r5,#0x64]
    ldr r0, [pc, #0x80b03ac-0x80b039c-4] // dword_200AA84
    str r5, [r0]
    ldr r0, [pc, #0x80b03b4-0x80b03a0-4] // dword_200AA88
    ldr r0, [r0]
    str r0, [r5,#0x68]
    ldr r0, [pc, #0x80b03b8-0x80b03a6-2] // dword_200AAB4
    str r5, [r0]
    pop {r7,pc}
off_80B03AC:    .word dword_200AA84
off_80B03B0:    .word off_80AFE04
off_80B03B4:    .word dword_200AA88
off_80B03B8:    .word dword_200AAB4
dword_80B03BC:    .word 0x4EFE7E, 0xFEE0FFFE, 0x3EFF90, 0xFF90FFBE, 0x60003E
    .word 0x3EFF90, 0x176FF98, 0xFF98FFFE, 0xFFFE00DA, 0xFFDA0138
    .word 0x138003E, 0x3EFF38, 0xFED60038, 0xFFA8003E, 0xFFFEFF6C
    .word 0x46FFA6, 0xFF08FFFE, 0xFFFE004A, 0xFFE80008, 0x68003E
    .word 0x3EFF84, 0xFF0800C4, 0xFF90003E, 0xFFFE01AE, 0x920004
    .word 0x50003E, 0x3E0030, 0xFF900050, 0x50003E, 0x3EFF50
    .word 0xFF4DFF90, 0xFF50003E, 0x3E000C, 0x50FF52, 0xFF0E003E
    .word 0x3E0050, 0x50FF0E, 0xFF10003E, 0x3E0012, 0xA6FE4E
    .word 0xFEE0FFFC, 0xFFFE00D0
off_80B0464:    .word dword_80B04D0
    .word dword_80B04D8
    .word dword_80B04DC
    .word dword_80B04E0
    .word dword_80B04F0
    .word dword_80B04F4
    .word dword_80B0500
    .word dword_80B0504
    .word dword_80B0518
    .word dword_80B0524
    .word dword_80B0530
    .word dword_80B053C
    .word dword_80B0544
    .word dword_80B0550
    .word dword_80B0558
    .word dword_80B0568
    .word dword_80B0574
    .word dword_80B057C
    .word dword_80B0580
    .word dword_80B0584
    .word dword_80B0598
    .word dword_80B05A4
    .word dword_80B05B8
    .word dword_80B05BC
    .word dword_80B05C0
    .word dword_80B05C4
    .word dword_80B05D8
dword_80B04D0:    .word 0xFFFA000A, 0xFFF40006
dword_80B04D8:    .word 0xFFF60006
dword_80B04DC:    .word 0xFFF60006
dword_80B04E0:    .word 0xFFF60006, 0xFFEE000A, 0xFFEE000A, 0xFFEE000A
dword_80B04F0:    .word 0xFFFA000A
dword_80B04F4:    .word 0xFFFA000A, 0xFFF60006, 0xFFFA000A
dword_80B0500:    .word 0xFFFA000A
dword_80B0504:    .word 0xFFFA000A, 0xFFF40012, 0xFFEE000C, 0xFFEE000C, 0xFFEE000C
dword_80B0518:    .word 0xFFEE000C, 0xFFEE000C, 0xFFEE000C
dword_80B0524:    .word 0xFFEE000A, 0xFFF40012, 0xFFFA000A
dword_80B0530:    .word 0xFFEE000A, 0xFFF40012, 0xFFFA000A
dword_80B053C:    .word 0xFFFA000A, 0xFFF60006
dword_80B0544:    .word 0xFFF60006, 0xFFFA000C, 0xFFF40006
dword_80B0550:    .word 0xFFFA000C, 0xFFF40006
dword_80B0558:    .word 0xFFF40006, 0xFFEE000A, 0xFFEE000A, 0xFFEE000A
dword_80B0568:    .word 0xFFFA000A, 0xFFF60006, 0xFFFA000C
dword_80B0574:    .word 0xFFF60004, 0xFFFA000C
dword_80B057C:    .word 0xFFFA000A
dword_80B0580:    .word 0xFFFA000A
dword_80B0584:    .word 0xFFFA000A, 0xFFF40012, 0xFFEE000C, 0xFFF20012, 0xFFFA000A
dword_80B0598:    .word 0xFFEE000C, 0xFFF20012, 0xFFFA000A
dword_80B05A4:    .word 0xFFFA000A, 0xFFF40006, 0xFFEE000A, 0xFFF20012, 0xFFFA000A
dword_80B05B8:    .word 0xFFFA000A
dword_80B05BC:    .word 0xFFF20012
dword_80B05C0:    .word 0xFFFA000A
dword_80B05C4:    .word 0xFFFA000A, 0xFFF40012, 0xFFEE000C, 0xFFEE000C, 0xFFF60006
dword_80B05D8:    .word 0xFFEE000C, 0xFFF60006
// end of function sub_80B038C

.thumb
sub_80B05E0:
    push {lr}
    ldr r0, [r5,#0x3c]
    str r0, [r5,#4]
    ldr r0, [pc, #0x80b061c-0x80b05e6-2] // jt_80B0620
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    ldr r0, [r5,#4]
    ldr r2, [pc, #0x80b0628-0x80b05f6-2] // =0x3E0000
    cmp r0, r2
    beq loc_80B05FE
    pop {pc}
loc_80B05FE:
    ldr r0, [r5,#0x3c]
    cmp r0, r2
    bmi loc_80B0606
    pop {pc}
loc_80B0606:
    mov r4, #0
    bl sub_80B0C76
    mov r4, #3
    bl sub_80B0C76
    ldr r0, [pc, #0x80b062c-0x80b0612-2] // =0xED
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
off_80B061C:    .word jt_80B0620
jt_80B0620:    .word sub_80B0630+1
    .word sub_80B0664+1
dword_80B0628:    .word 0x3E0000
off_80B062C:    .word 0xED
// end of function sub_80B05E0

.thumb
sub_80B0630:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x14
    bl sub_800285C
    ldr r0, [r5,#0x68]
    ldrb r0, [r0,#0x10]
    lsr r0, r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B0664
    pop {pc}
// end of function sub_80B0630

.thumb
sub_80B0664:
    push {lr}
    ldr r0, [pc, #0x80b0694-0x80b0666-2] // off_80B0698
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0x68]
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldr r1, [pc, #0x80b06b8-0x80b067c-4] // dword_200AA90
    ldr r3, [r5,#0x34]
    str r3, [r1]
    ldr r3, [r5,#0x38]
    str r3, [r1,#(dword_200AA94 - 0x200aa90)]
    ldr r3, [r5,#0x3c]
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r3, r3, r0
    str r3, [r1,#(dword_200AA98 - 0x200aa90)]
    pop {pc}
    .balign 4, 0x00
off_80B0694:    .word off_80B0698
off_80B0698:    .word sub_80B06BC+1
    .word sub_80B06CE+1
    .word sub_80B06CE+1
    .word sub_80B0700+1
    .word sub_80B0700+1
    .word sub_80B072E+1
    .word sub_80B072E+1
    .word sub_80B0740+1
off_80B06B8:    .word dword_200AA90
// end of function sub_80B0664

.thumb
sub_80B06BC:
    push {lr}
    mov r0, #1
    mov r1, #0x3e 
    bl sub_8024FF0
    beq locret_80B06CC
    mov r0, #4
    strb r0, [r5,#9]
locret_80B06CC:
    pop {pc}
// end of function sub_80B06BC

.thumb
sub_80B06CE:
    push {lr}
    ldr r0, [r5,#0x68]
    ldrb r1, [r0,#9]
    cmp r1, #0xc
    bne loc_80B06DA
    strb r1, [r5,#9]
loc_80B06DA:
    ldr r3, [r5,#0x64]
    ldr r1, [r0,#0x34]
    mov r2, #0
    ldrsh r2, [r3,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r0,#0x38]
    mov r2, #2
    ldrsh r2, [r3,r2]
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldr r1, [r0,#0x3c]
    mov r2, #2
    lsl r2, r2, #0x10
    sub r1, r1, r2
    str r1, [r5,#0x3c]
    pop {pc}
// end of function sub_80B06CE

.thumb
sub_80B0700:
    push {lr}
    ldr r0, [r5,#0x68]
    ldrb r1, [r0,#9]
    cmp r1, #4
    bne loc_80B070E
    strb r1, [r5,#9]
    b loc_80B0718
loc_80B070E:
    ldrb r1, [r0,#9]
    cmp r1, #0x14
    bne locret_80B072C
    strb r1, [r5,#9]
    b locret_80B072C
loc_80B0718:
    ldrb r0, [r0,#0x10]
    lsr r0, r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    ldr r1, [r5,#0x64]
    add r1, #4
    str r1, [r5,#0x64]
locret_80B072C:
    pop {pc}
// end of function sub_80B0700

.thumb
sub_80B072E:
    push {lr}
    mov r0, #1
    mov r1, #0x40 
    bl sub_8024FF0
    beq locret_80B073E
    mov r0, #0x1c
    strb r0, [r5,#9]
locret_80B073E:
    pop {pc}
// end of function sub_80B072E

.thumb
sub_80B0740:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B0740

.thumb
sub_80B0748:
    push {r5,lr}
    ldr r5, [pc, #0x80b0784-0x80b074a-2] // dword_80B03BC
    mov r0, #6
    mul r0, r4
    add r5, r5, r0
    mov r0, #0xd
    mov r3, #0
    ldrsh r1, [r5,r3]
    lsl r1, r1, #0x10
    mov r3, #2
    ldrsh r2, [r5,r3]
    lsl r2, r2, #0x10
    mov r3, #4
    ldrsh r3, [r5,r3]
    lsl r3, r3, #0x10
    bl sub_8004440
    ldr r0, [pc, #0x80b0788-0x80b076a-2] // off_80B0464
    lsl r1, r4, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    ldr r0, [pc, #0x80b078c-0x80b0772-2] // dword_200AA8C
    str r5, [r0]
    ldr r0, [pc, #0x80b0790-0x80b0776-2] // dword_200AA88
    ldr r0, [r0]
    str r0, [r5,#0x68]
    ldr r0, [pc, #0x80b0794-0x80b077c-4] // dword_200AAB8
    str r5, [r0]
    pop {r5,pc}
    .balign 4, 0x00
off_80B0784:    .word dword_80B03BC
off_80B0788:    .word off_80B0464
off_80B078C:    .word dword_200AA8C
off_80B0790:    .word dword_200AA88
off_80B0794:    .word dword_200AAB8
// end of function sub_80B0748

.thumb
sub_80B0798:
    push {lr}
    ldr r0, [pc, #0x80b07a8-0x80b079a-2] // off_80B07AC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B07A8:    .word off_80B07AC
off_80B07AC:    .word sub_80B07B8+1
    .word sub_80B07F4+1
    .word sub_80B0808+1
// end of function sub_80B0798

.thumb
sub_80B07B8:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x29 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #1
    and r0, r1
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B07F4
    pop {pc}
// end of function sub_80B07B8

.thumb
sub_80B07F4:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B0802
    mov r0, #8
    strb r0, [r5,#8]
loc_80B0802:
    bl sub_800283C
    pop {pc}
// end of function sub_80B07F4

.thumb
sub_80B0808:
    push {lr}
    bl sub_800447A
    pop {pc}
    lsl r0, r0, #0xc
    lsr r6, r0, #4
loc_80B0814:
    push {lr}
    ldr r0, [pc, #0x80b0828-0x80b0816-2] // jt_80B082C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B0828:    .word jt_80B082C
jt_80B082C:    .word sub_80B0834+1
    .word sub_80B0872+1
// end of function sub_80B0808

.thumb
sub_80B0834:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x27 
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    cmp r1, #3
    bne loc_80B0860
    mov r0, #1
loc_80B0860:
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x20 
    strb r0, [r5,#9]
    bl sub_80B0872
    pop {pc}
// end of function sub_80B0834

.thumb
sub_80B0872:
    push {lr}
    ldr r0, [r5,#0x64]
    ldr r1, [r0,#0x34]
    mov r2, #2
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x34]
    ldr r1, [r0,#0x38]
    sub r1, r1, r2
    str r1, [r5,#0x38]
    ldr r1, [r0,#0x3c]
    sub r1, r1, r2
    str r1, [r5,#0x3c]
    ldr r0, [r5,#0x64]
    ldr r1, [r0,#0x3c]
    ldr r2, [r0,#4]
    cmp r1, r2
    bge loc_80B08A0
    ldrb r0, [r5,#9]
    cmp r0, #0x3c 
    bge loc_80B08A0
    mov r0, #0x3c 
    strb r0, [r5,#9]
loc_80B08A0:
    ldr r0, [r5,#0x64]
    ldr r0, [r0,#0x68]
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldr r0, [pc, #0x80b08bc-0x80b08ae-2] // off_80B08C0
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B08BC:    .word off_80B08C0
off_80B08C0:    .word sub_80B090C+1
    .word sub_80B093C+1
    .word sub_80B095C+1
    .word sub_80B0978+1
    .word sub_80B098E+1
    .word sub_80B09AC+1
    .word sub_80B09AC+1
    .word sub_80B09BE+1
    .word sub_80B09C6+1
    .word sub_80B09DC+1
    .word sub_80B0A04+1
    .word sub_80B0A24+1
    .word sub_80B0A46+1
    .word sub_80B0A68+1
    .word sub_80B0A80+1
    .word sub_80B0AAC+1
    .word sub_80B0ACC+1
    .word sub_80B0AE8+1
    .word sub_80B0B04+1
// end of function sub_80B0872

.thumb
sub_80B090C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    bne locret_80B0936
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    ldr r1, [pc, #0x80b0938-0x80b0924-4] // =0x80B0810
    ldrb r0, [r1,r0]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
locret_80B0936:
    pop {pc}
dword_80B0938:    .word 0x80B0810
// end of function sub_80B090C

.thumb
sub_80B093C:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B095A
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #8
    strb r0, [r5,#9]
locret_80B095A:
    pop {pc}
// end of function sub_80B093C

.thumb
sub_80B095C:
    push {lr}
    ldr r0, [r5,#0x64]
    ldr r1, [r0,#0x3c]
    ldr r2, [r0,#4]
    cmp r1, r2
    ble loc_80B096C
    mov r1, #0x28 
    b loc_80B0974
loc_80B096C:
    ldrb r1, [r0,#9]
    cmp r1, #0xc
    beq loc_80B0974
    pop {pc}
loc_80B0974:
    strb r1, [r5,#9]
    pop {pc}
// end of function sub_80B095C

.thumb
sub_80B0978:
    push {lr}
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x10
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0978

.thumb
sub_80B098E:
    push {lr}
    ldr r0, [r5,#0x64]
    ldrb r1, [r0,#9]
    cmp r1, #4
    bne loc_80B09A2
    mov r1, #0x24 
    strb r1, [r5,#9]
    mov r0, #8
    strh r0, [r5,#0x20]
    b locret_80B09AA
loc_80B09A2:
    ldrb r1, [r0,#9]
    cmp r1, #0x14
    bne locret_80B09AA
    strb r1, [r5,#9]
locret_80B09AA:
    pop {pc}
// end of function sub_80B098E

.thumb
sub_80B09AC:
    push {lr}
    mov r0, #1
    mov r1, #0x40 
    bl sub_8024FF0
    beq locret_80B09BC
    mov r0, #0x1c
    strb r0, [r5,#9]
locret_80B09BC:
    pop {pc}
// end of function sub_80B09AC

.thumb
sub_80B09BE:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B09BE

.thumb
sub_80B09C6:
    push {lr}
    mov r0, #1
    mov r1, #0x3e 
    bl sub_8024FF0
    beq locret_80B09DA
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #0
    strb r0, [r5,#9]
locret_80B09DA:
    pop {pc}
// end of function sub_80B09C6

.thumb
sub_80B09DC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    bne locret_80B09FE
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    ldr r1, [pc, #0x80b0a00-0x80b09ec-4] // =0x80B0810
    ldrb r0, [r1,r0]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
locret_80B09FE:
    pop {pc}
dword_80B0A00:    .word 0x80B0810
// end of function sub_80B09DC

.thumb
sub_80B0A04:
    push {lr}
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    cmp r0, #0
    bne loc_80B0A12
    mov r0, #0xc
    b loc_80B0A14
loc_80B0A12:
    mov r0, #0xf
loc_80B0A14:
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x2c 
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0A04

.thumb
sub_80B0A24:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B0A32
    pop {pc}
loc_80B0A32:
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x30 
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0A24

.thumb
sub_80B0A46:
    push {lr}
    ldr r0, [r5,#0x64]
    ldr r1, [r0,#0x3c]
    lsr r1, r1, #0x10
    cmp r1, #0x3e 
    beq loc_80B0A54
    pop {pc}
loc_80B0A54:
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x34 
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0A46

.thumb
sub_80B0A68:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B0A76
    pop {pc}
loc_80B0A76:
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x38 
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0A68

.thumb
sub_80B0A80:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    beq loc_80B0A8E
    pop {pc}
loc_80B0A8E:
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    ldr r1, [pc, #0x80b0aa8-0x80b0a92-2] // =0x80B0810
    ldrb r0, [r1,r0]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
dword_80B0AA8:    .word 0x80B0810
// end of function sub_80B0A80

.thumb
sub_80B0AAC:
    push {lr}
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    ldr r1, [pc, #0x80b0ac8-0x80b0ab2-2] // =0x80B0810
    ldrb r0, [r1,r0]
    add r0, #2
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x40 
    strb r0, [r5,#9]
    pop {pc}
dword_80B0AC8:    .word 0x80B0810
// end of function sub_80B0AAC

.thumb
sub_80B0ACC:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B0ADA
    pop {pc}
loc_80B0ADA:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0x44 
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_80B0ACC

.thumb
sub_80B0AE8:
    push {lr}
    ldr r0, [r5,#0x64]
    ldr r1, [r0,#0x3c]
    ldr r2, [pc, #0x80b0b00-0x80b0aee-2] // =0xFFFE0000
    cmp r1, r2
    beq loc_80B0AF6
    pop {pc}
loc_80B0AF6:
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x48 
    strb r0, [r5,#9]
    pop {pc}
dword_80B0B00:    .word 0xFFFE0000
// end of function sub_80B0AE8

.thumb
sub_80B0B04:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    beq loc_80B0B12
    pop {pc}
loc_80B0B12:
    ldr r0, [r5,#0x64]
    ldrb r0, [r0,#0x10]
    ldr r1, [pc, #0x80b0b34-0x80b0b16-2] // =0x80B0810
    ldrb r0, [r1,r0]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
dword_80B0B34:    .word 0x80B0810
// end of function sub_80B0B04

.thumb
sub_80B0B38:
    push {r5,r6,lr}
    ldr r6, [pc, #0x80b0b54-0x80b0b3a-2] // dword_200AAB8
    ldr r6, [r6]
    ldr r1, [r6,#0x34]
    ldr r2, [r6,#0x38]
    ldr r3, [r6,#0x3c]
    mov r0, #0xf
    bl sub_8004440
    str r6, [r5,#0x64]
    ldr r0, [pc, #0x80b0b58-0x80b0b4c-4] // dword_200AABC
    str r5, [r0]
    pop {r5,r6,pc}
    .balign 4, 0x00
off_80B0B54:    .word dword_200AAB8
off_80B0B58:    .word dword_200AABC
// end of function sub_80B0B38

.thumb
sub_80B0B5C:
    push {lr}
    ldr r0, [pc, #0x80b0b70-0x80b0b5e-2] // jt_80B0B74
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_80B0B70:    .word jt_80B0B74
jt_80B0B74:    .word sub_80B0B7C+1
    .word sub_80B0BB8+1
// end of function sub_80B0B5C

.thumb
sub_80B0B7C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x20 
    bl sub_800285C
    ldrb r0, [r5,#4]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    cmp r1, #3
    bne loc_80B0BAA
    mov r0, #1
loc_80B0BAA:
    bl sub_8002DCC
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B0BB8
    pop {pc}
// end of function sub_80B0B7C

.thumb
sub_80B0BB8:
    push {r4,lr}
    ldr r0, [pc, #0x80b0c54-0x80b0bba-2] // dword_200AAB8
    ldr r0, [r0]
    ldr r1, [r0,#0x34]
    ldr r3, [r0,#0x38]
    ldr r2, [r0,#0x3c]
    ldrb r4, [r5,#4]
    tst r4, r4
    beq loc_80B0BD4
    mov r4, #2
    lsl r4, r4, #0x10
    add r1, r1, r4
    sub r3, r3, r4
    sub r2, r2, r4
loc_80B0BD4:
    str r1, [r5,#0x34]
    str r3, [r5,#0x38]
    str r2, [r5,#0x3c]
    mov r0, #0
    ldrb r4, [r5,#4]
    tst r4, r4
    beq loc_80B0BEA
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
loc_80B0BEA:
    bl sub_8002E60
    ldr r0, [pc, #0x80b0bfc-0x80b0bee-2] // off_80B0C00
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4,pc}
    .balign 4, 0x00
off_80B0BFC:    .word off_80B0C00
off_80B0C00:    .word sub_80B0C10+1
    .word sub_80B0C30+1
    .word sub_80B0C5C+1
    .word sub_80B0C6E+1
// end of function sub_80B0BB8

.thumb
sub_80B0C10:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B0C2E
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
locret_80B0C2E:
    pop {pc}
// end of function sub_80B0C10

.thumb
sub_80B0C30:
    push {lr}
    ldr r0, [pc, #0x80b0c54-0x80b0c32-2] // dword_200AAB8
    ldr r0, [r0]
    ldr r2, [r0,#0x3c]
    ldr r1, [pc, #0x80b0c58-0x80b0c38-4] // =0xFFFE0000
    cmp r2, r1
    bne locret_80B0C50
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #8
    strb r0, [r5,#9]
locret_80B0C50:
    pop {pc}
    .balign 4, 0x00
off_80B0C54:    .word dword_200AAB8
dword_80B0C58:    .word 0xFFFE0000
// end of function sub_80B0C30

.thumb
sub_80B0C5C:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B0C6C
    mov r0, #0xc
    strb r0, [r5,#9]
locret_80B0C6C:
    pop {pc}
// end of function sub_80B0C5C

.thumb
sub_80B0C6E:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B0C6E

.thumb
sub_80B0C76:
    push {r5,r6,lr}
    ldr r6, [pc, #0x80b0c8c-0x80b0c78-4] // dword_200AAB8
    ldr r6, [r6]
    ldr r1, [r6,#0x34]
    ldr r2, [r6,#0x38]
    ldr r3, [r6,#0x3c]
    mov r0, #0x10
    bl sub_8004440
    str r6, [r5,#0x64]
    pop {r5,r6,pc}
off_80B0C8C:    .word dword_200AAB8
dword_80B0C90:    .word 0x1102053A
    .word 0x53B1122
    .word 0x11231103
    .word 0x1102053C
    .word 0x53D1122
    .word 0x11231103
// end of function sub_80B0C76

.thumb
sub_80B0CA8:
    push {lr}
    ldr r7, [pc, #0x80b0cd0-0x80b0caa-2] // dword_80B0C90
    mov r0, #6
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80b0cc0-0x80b0cb4-4] // off_80B0CC4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80B0CC0:    .word off_80B0CC4
off_80B0CC4:    .word sub_80B0CD4+1
    .word sub_80B0D26+1
    .word sub_80B0D52+1
off_80B0CD0:    .word dword_80B0C90
// end of function sub_80B0CA8

.thumb
sub_80B0CD4:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B0D0C
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x34 
    bl sub_800285C
    ldrb r0, [r5,#6]
    bl sub_8002E60
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B0D26
    pop {pc}
loc_80B0D0C:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #8
    strb r0, [r5,#8]
    bl sub_80B0D52
    pop {pc}
// end of function sub_80B0CD4

.thumb
sub_80B0D26:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B0D4C
    mov r0, #0x74 
    bl f500_8000558
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #8
    strb r0, [r5,#8]
loc_80B0D4C:
    bl sub_800283C
    pop {pc}
// end of function sub_80B0D26

.thumb
sub_80B0D52:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B0D52

.thumb
sub_80B0D5C:
    push {lr}
    ldr r0, [pc, #0x80b0d6c-0x80b0d5e-2] // off_80B0D70
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B0D6C:    .word off_80B0D70
off_80B0D70:    .word sub_80B0D7C+1
    .word sub_80B0D90+1
    .word sub_80B0DFC+1
// end of function sub_80B0D5C

.thumb
sub_80B0D7C:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    bl sub_80B0D90
    pop {pc}
// end of function sub_80B0D7C

.thumb
sub_80B0D90:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x60]
    sub r0, #1
    ble loc_80B0DA0
    str r0, [r5,#0x60]
    b loc_80B0DF0
loc_80B0DA0:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x60]
    bl sub_8001AF6
    add r6, r0, #0
    mov r8, r5
    ldrh r1, [r5,#0x36]
    ldrh r2, [r5,#0x3a]
    ldrh r3, [r5,#0x3e]
    ldr r4, [pc, #0x80b0df8-0x80b0db2-2] // byte_200AAC0
    ldrb r0, [r4,#(dword_200AACC+1 - 0x200aac0)]
    sub r3, r3, r0
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r2, r2, r4
    lsr r6, r6, #8
    mov r0, #2
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_8004440
    mov r5, r8
    ldr r0, [r5,#0x64]
    sub r0, #1
    ble loc_80B0DE6
    str r0, [r5,#0x64]
    b loc_80B0DF0
loc_80B0DE6:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x64]
    mov r0, #0x70 
    bl f500_8000558
loc_80B0DF0:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80B0DF8:    .word byte_200AAC0
// end of function sub_80B0D90

.thumb
sub_80B0DFC:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B0DFC

.thumb
sub_80B0E04:
    push {lr}
    ldr r0, [pc, #0x80b0e14-0x80b0e06-2] // off_80B0E18
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B0E14:    .word off_80B0E18
off_80B0E18:    .word sub_80B0E28+1
    .word sub_80B0E62+1
    .word sub_80B0E88+1
    .word sub_80B0EB4+1
// end of function sub_80B0E04

.thumb
sub_80B0E28:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x38 
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B0E62
    pop {pc}
// end of function sub_80B0E28

.thumb
sub_80B0E62:
    push {lr}
    ldr r0, [pc, #0x80b0e80-0x80b0e64-4] // unk_200AA20
    ldrb r0, [r0,#(byte_200AA2B - 0x200aa20)]
    cmp r0, #1
    bne loc_80B0E7A
    mov r0, #3
    strb r0, [r5]
    ldr r0, [pc, #0x80b0e84-0x80b0e70-4] // =0x1C4
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#8]
loc_80B0E7A:
    bl sub_800283C
    pop {pc}
off_80B0E80:    .word unk_200AA20
off_80B0E84:    .word 0x1C5
// end of function sub_80B0E62

.thumb
sub_80B0E88:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B0E9A
    ldr r0, [pc, #0x80b0eb0-0x80b0e94-4] // =0x1C4
    bl f500_8000558
loc_80B0E9A:
    ldr r0, [pc, #0x80b0eac-0x80b0e9a-2] // unk_200AA20
    ldrb r0, [r0,#(byte_200AA2A - 0x200aa20)]
    cmp r0, #4
    bne loc_80B0EA6
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80B0EA6:
    bl sub_800283C
    pop {pc}
off_80B0EAC:    .word unk_200AA20
off_80B0EB0:    .word 0x1C5
// end of function sub_80B0E88

.thumb
sub_80B0EB4:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B0EB4

.thumb
sub_80B0EBC:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_80A8ECE
    add r6, r0, #0
    mov r4, #7
    mov r7, #2
    lsl r7, r7, #0x10
loc_80B0ECC:
    ldr r1, [r6,#0x24]
    add r1, r1, r7
    ldr r2, [r6,#0x28]
    sub r2, r2, r7
    ldr r3, [r6,#0x2c]
    sub r3, r3, r7
    mov r0, #0x13
    bl sub_8004440
    add r6, #0xd8
    sub r4, #1
    bge loc_80B0ECC
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80B0EBC

.thumb
sub_80B0EE8:
    push {lr}
    ldr r0, [pc, #0x80b0ef8-0x80b0eea-2] // off_80B0EFC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B0EF8:    .word off_80B0EFC
off_80B0EFC:    .word sub_80B0F08+1
    .word sub_80B0F4E+1
    .word sub_80B0F80+1
// end of function sub_80B0EE8

.thumb
sub_80B0F08:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #5
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002E8C
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0x48]
    ldr r0, [pc, #0x80b0fc0-0x80b0f3c-4] // =0xFFFF0000
    str r0, [r5,#0x44]
    ldr r0, [pc, #0x80b0fc4-0x80b0f40-4] // =0x20000
    str r0, [r5,#0x40]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B0F4E
    pop {pc}
// end of function sub_80B0F08

.thumb
sub_80B0F4E:
    push {lr}
    ldr r0, [r5,#0x40]
    ldr r3, [r5,#0x34]
    sub r3, r3, r0
    str r3, [r5,#0x34]
    ldr r0, [r5,#0x44]
    ldr r3, [r5,#0x38]
    sub r3, r3, r0
    str r3, [r5,#0x38]
    ldr r0, [r5,#0x48]
    ldr r3, [pc, #0x80b0f7c-0x80b0f62-2] // =0xFFFFEC00
    add r0, r0, r3
    str r0, [r5,#0x48]
    ldr r3, [r5,#0x3c]
    add r3, r3, r0
    str r3, [r5,#0x3c]
    cmp r3, #0
    bgt loc_80B0F76
    mov r0, #8
    strb r0, [r5,#8]
loc_80B0F76:
    bl sub_800283C
    pop {pc}
dword_80B0F7C:    .word 0xFFFFEC00
// end of function sub_80B0F4E

.thumb
sub_80B0F80:
    push {lr}
    ldr r0, [pc, #0x80b0f90-0x80b0f82-2] // =0x135
    bl f500_8000558
    bl sub_800447A
    pop {pc}
    .byte 0, 0
dword_80B0F90:    .word 0x135
// end of function sub_80B0F80

.thumb
sub_80B0F94:
    push {lr}
    push {r4-r7}
    mov r0, #0
    bl sub_80A8ECE
    ldr r1, [r0,#0x24]
    mov r7, #4
    lsl r7, r7, #0x10
    ldr r2, [r0,#0x28]
    sub r2, r2, r7
    ldr r3, [r0,#0x2c]
    mov r7, #0x10
    lsl r7, r7, #0x10
    add r3, r3, r7
    mov r0, #0x14
    bl sub_8004440
    pop {r4-r7}
    bl sub_80A9074
    pop {pc}
    .byte 0, 0
dword_80B0FC0:    .word 0xFFFF0000
dword_80B0FC4:    .word 0x20000
dword_80B0FC8:    .word 0x11080A87
    .word 0xFF1128
    .word 0x11090A88
    .word 0xFF1129
    .word 0x110A0A89
    .word 0xFF112A
    .word 0x110B0A8A
    .word 0xFF112B
    .word 0x110C0A8B
    .word 0xFF112C
// end of function sub_80B0F94

.thumb
sub_80B0FF0:
    push {lr}
    ldr r7, [pc, #0x80b101c-0x80b0ff2-2] // dword_80B0FC8
    mov r0, #8
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80b1008-0x80b0ffc-4] // off_80B100C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80B1008:    .word off_80B100C
off_80B100C:    .word sub_80B1020+1
    .word sub_80B1078+1
    .word sub_80B109E+1
    .word sub_80B10C2+1
off_80B101C:    .word dword_80B0FC8
// end of function sub_80B0FF0

.thumb
sub_80B1020:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B105E
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x44 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1078
    pop {pc}
loc_80B105E:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80B10C2
    pop {pc}
// end of function sub_80B1020

.thumb
sub_80B1078:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B1098
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x96
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#8]
loc_80B1098:
    bl sub_800283C
    pop {pc}
// end of function sub_80B1078

.thumb
sub_80B109E:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B10BC
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80B10BC:
    bl sub_800283C
    pop {pc}
// end of function sub_80B109E

.thumb
sub_80B10C2:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B10C2

.thumb
sub_80B10CC:
    push {lr}
    ldrb r0, [r5,#4]
    bl sub_80A2170
    add r7, r0, #0
    add r6, r1, #0
    ldr r4, [pc, #0x80b10e8-0x80b10d8-4] // unk_20005E0
    ldr r0, [pc, #0x80b1134-0x80b10da-2] // off_80B1138
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B10E8:    .word unk_20005E0
// end of function sub_80B10CC

.thumb
sub_80B10EC:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0xc
    mov r2, #0xb
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r7,#2]
    strb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    .word 0xFF55F751, 0x422478FC, 0x2404D103, 0xF00070FC, 0x722CF869
    .word 0x7A294802, 0x46FE5840, 0xBD004700
off_80B1134:    .word off_80B1138
off_80B1138:    .word sub_80B10EC+1
    .word sub_80B1148+1
    .word sub_80B1180+1
    .word sub_80B11F0+1
// end of function sub_80B10EC

.thumb
sub_80B1148:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    bl sub_80B1214
    beq loc_80B1176
    ldrb r0, [r7,#1]
    sub r0, #1
    strb r0, [r7,#1]
    bgt loc_80B1176
    bl sub_80B11F8
    mov r0, #3
    strb r0, [r7,#2]
    mov r0, #8
    strb r0, [r7,#3]
    strb r0, [r5,#8]
    bl sub_8002E50
    beq loc_80B1176
    ldr r0, [pc, #0x80b117c-0x80b1170-4] // =0x1AC
    bl f500_8000558
loc_80B1176:
    bl sub_800283C
    pop {pc}
off_80B117C:    .word 0x1AD
// end of function sub_80B1148

.thumb
sub_80B1180:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    bl sub_80B1214
    beq loc_80B11DE
    ldrb r0, [r7,#2]
    add r1, r0, #1
    strb r1, [r7,#2]
    cmp r0, #0x17
    bne loc_80B119C
    mov r2, #4
    strb r2, [r7,#3]
    strb r2, [r5,#8]
loc_80B119C:
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_80B11DE
    strb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r7,#2]
    cmp r0, #0x14
    bge loc_80B11DE
    ldrb r0, [r5,#4]
    bl sub_80A20DC
    beq loc_80B11DE
    bl sub_802BCF2
    bne loc_80B11DE
    ldrb r0, [r6,#6]
    ldrh r1, [r6]
    ldrh r2, [r6,#2]
    ldrh r3, [r6,#4]
    strb r0, [r4,#1]
    strh r1, [r4,#2]
    strh r2, [r4,#4]
    strh r3, [r4,#6]
    bl fA00_8000C44
    ldr r3, [pc, #0x80b11e8-0x80b11d4-4] // dword_80B11EC
    ldrb r1, [r3,r0]
    ldr r0, [pc, #0x80b11e4-0x80b11d8-4] // dword_8097370
    bl sub_802BC60
loc_80B11DE:
    bl sub_800283C
    pop {pc}
off_80B11E4:    .word dword_8097370
off_80B11E8:    .word dword_80B11EC
dword_80B11EC:    .word 0xFF5A3C1E
// end of function sub_80B1180

.thumb
sub_80B11F0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B11F0

.thumb
sub_80B11F8:
    push {r4-r7,lr}
    ldrb r0, [r7]
    ldr r1, [r6,#8]
    ldrb r2, [r1,r0]
    tst r2, r2
    bne loc_80B120C
    mov r0, #1
    strb r0, [r7]
    ldrb r2, [r1,r0]
    b loc_80B1210
loc_80B120C:
    add r0, #1
    strb r0, [r7]
loc_80B1210:
    strb r2, [r7,#1]
    pop {r4-r7,pc}
// end of function sub_80B11F8

.thumb
sub_80B1214:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne loc_80B1242
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne loc_80B1242
    bl sub_8005B5C
    beq loc_80B1242
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80B1242
    bl sub_80A6FB6
    bne loc_80B1242
    mov r0, #1
    pop {r4-r7,pc}
loc_80B1242:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80B1214

.thumb
sub_80B1248:
    push {lr}
    ldr r0, [pc, #0x80b1258-0x80b124a-2] // off_80B125C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1258:    .word off_80B125C
off_80B125C:    .word sub_80B1268+1
    .word sub_80B12BA+1
    .word sub_80B12E0+1
// end of function sub_80B1248

.thumb
sub_80B1268:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x45 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r3, #0x36 
    ldrsh r0, [r5,r3]
    mov r3, #0x3a 
    ldrsh r1, [r5,r3]
    mov r3, #0x3e 
    ldrsh r2, [r5,r3]
    str r0, [r5,#0x60]
    str r1, [r5,#0x64]
    str r2, [r5,#0x68]
    add r0, #0x20 
    sub r1, #0x20 
    sub r2, #0x20 
    strh r0, [r5,#0x36]
    strh r1, [r5,#0x3a]
    strh r2, [r5,#0x3e]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B12BA
    pop {pc}
// end of function sub_80B1268

.thumb
sub_80B12BA:
    push {lr}
    bl sub_8029ECA
    beq loc_80B12D6
    bl sub_80B12E8
    beq loc_80B12D6
    ldr r0, [pc, #0x80b12dc-0x80b12c8-4] // dword_80972F0
    ldrb r1, [r5,#5]
    bl sub_802BC60
    mov r0, #0x75 
    bl f500_8000558
loc_80B12D6:
    bl sub_800283C
    pop {pc}
off_80B12DC:    .word dword_80972F0
// end of function sub_80B12BA

.thumb
sub_80B12E0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B12E0

.thumb
sub_80B12E8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    mov r0, #8
    mov r1, #8
    mov r3, #0x26 
    ldrsh r2, [r7,r3]
    mov r3, #0x2a 
    ldrsh r3, [r7,r3]
    add r2, r2, r0
    add r3, r3, r1
    ldr r0, [r5,#0x60]
    ldr r1, [r5,#0x64]
    sub r2, r2, r0
    blt loc_80B1326
    sub r3, r3, r1
    blt loc_80B1326
    mov r0, #0x10
    mov r1, #0x10
    cmp r2, r0
    bgt loc_80B1326
    cmp r3, r1
    bgt loc_80B1326
    mov r3, #0x2e 
    ldrsh r3, [r7,r3]
    ldr r4, [r5,#0x68]
    cmp r3, r4
    bne loc_80B1326
    mov r0, #1
    pop {r4-r7,pc}
loc_80B1326:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80B12E8

.thumb
sub_80B132C:
    push {lr}
    ldr r7, [pc, #0x80b1438-0x80b132e-2] // byte_2010BA8
    ldr r0, [pc, #0x80b133c-0x80b1330-4] // off_80B1340
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80B133C:    .word off_80B1340
off_80B1340:    .word sub_80B134C+1
    .word sub_80B1380+1
    .word sub_80B1404+1
// end of function sub_80B132C

.thumb
sub_80B134C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x39 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1380
    pop {pc}
// end of function sub_80B134C

.thumb
sub_80B1380:
    push {lr}
    ldr r4, [pc, #0x80b13cc-0x80b1382-2] // dword_80B13D0
    ldrb r6, [r5,#4]
    ldrb r1, [r4,r6]
    add r0, r6, #0
    mul r0, r1
    ldrb r1, [r7,#1]
    add r0, r0, r1
    mov r1, #0xff
    and r0, r1
    ldr r2, [pc, #0x80b13c4-0x80b1394-4] // word_8005D78
    ldr r3, [pc, #0x80b13c8-0x80b1396-2] // word_8005DF8
    lsl r0, r0, #1
    ldrsh r2, [r2,r0]
    ldrsh r3, [r3,r0]
    ldr r4, [pc, #0x80b13e8-0x80b139e-2] // dword_80B13EC
    ldrb r0, [r4,r6]
    mul r2, r0
    mul r3, r0
    lsl r2, r2, #8
    lsl r3, r3, #8
    mov r0, #4
    ldrsh r0, [r7,r0]
    lsl r0, r0, #0x10
    mov r1, #6
    ldrsh r1, [r7,r1]
    lsl r1, r1, #0x10
    add r0, r0, r2
    str r0, [r5,#0x38]
    add r1, r1, r3
    str r1, [r5,#0x3c]
    bl sub_800283C
    pop {pc}
off_80B13C4:    .word word_8005D78
off_80B13C8:    .word word_8005DF8
off_80B13CC:    .word dword_80B13D0
dword_80B13D0:    .word 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x20202020
    .word 0x20202020
off_80B13E8:    .word dword_80B13EC
dword_80B13EC:    .word 0x18181818
    .word 0x18181818
    .word 0x28282828
    .word 0x28282828
    .word 0x38383838
    .word 0x38383838
// end of function sub_80B1380

.thumb
sub_80B1404:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B1404

.thumb
sub_80B140C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80b1438-0x80b140e-2] // byte_2010BA8
    strb r0, [r7]
    strh r1, [r7,#(word_2010BAA - 0x2010ba8)]
    strh r2, [r7,#(word_2010BAC - 0x2010ba8)]
    strh r3, [r7,#(word_2010BAE - 0x2010ba8)]
    mov r0, #0
    strb r0, [r7,#(byte_2010BA9 - 0x2010ba8)]
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    mov r4, #0
loc_80B1424:
    push {r0-r4}
    mov r0, #0x18
    bl sub_8004440
    pop {r0-r4}
    add r4, #1
    cmp r4, #0x18
    blt loc_80B1424
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80B1438:    .word byte_2010BA8
dword_80B143C:    .word 0xFF3C01B6, 0xFF3C017C, 0xFF40014C, 0xFEE801A4, 0xFEE801D0
    .word 0xFF0E0150, 0xFF060168, 0xFEE80180, 0xFEEC01C0
// end of function sub_80B140C

.thumb
sub_80B1460:
    push {lr}
    ldr r0, [pc, #0x80b1470-0x80b1462-2] // off_80B1474
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B1470:    .word off_80B1474
off_80B1474:    .word sub_80B1488+1
    .word sub_80B14C6+1
    .word sub_80B14EA+1
    .word sub_80B1508+1
    .word sub_80B152C+1
// end of function sub_80B1460

.thumb
sub_80B1488:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x10
    mov r2, #0x38 
    bl sub_800285C
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    bl sub_80B14EA
    pop {pc}
// end of function sub_80B1488

.thumb
sub_80B14C6:
    push {lr}
    ldrh r0, [r5,#0x20]
    mov r1, #2
    and r0, r1
    tst r0, r0
    bne loc_80B14DA
    ldrb r0, [r5]
    mov r1, #2
    eor r0, r1
    strb r0, [r5]
loc_80B14DA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    bne locret_80B14E8
    mov r0, #8
    strb r0, [r5,#8]
locret_80B14E8:
    pop {pc}
// end of function sub_80B14C6

.thumb
sub_80B14EA:
    push {lr}
    ldr r0, [pc, #0x80b1504-0x80b14ec-4] // unk_200AA20
    ldrb r0, [r0,#(byte_200AA2B - 0x200aa20)]
    cmp r0, #3
    bne loc_80B14FC
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80B14FC:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B1504:    .word unk_200AA20
// end of function sub_80B14EA

.thumb
sub_80B1508:
    push {lr}
    ldrh r0, [r5,#0x20]
    mov r1, #2
    and r0, r1
    tst r0, r0
    bne loc_80B151C
    ldrb r0, [r5]
    mov r1, #2
    eor r0, r1
    strb r0, [r5]
loc_80B151C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    tst r0, r0
    bne locret_80B152A
    mov r0, #0x10
    strb r0, [r5,#8]
locret_80B152A:
    pop {pc}
// end of function sub_80B1508

.thumb
sub_80B152C:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B152C

.thumb
sub_80B1534:
    push {r5,r7,lr}
    mov r0, #0x19
    ldr r7, [pc, #0x80b1554-0x80b1538-4] // dword_80B143C
    lsl r1, r4, #2
    add r7, r7, r1
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    mov r3, #2
    ldrsh r2, [r7,r3]
    lsl r2, r2, #0x10
    mov r3, #0
    bl sub_8004440
    pop {r5,r7,pc}
    .balign 4, 0x00
off_80B1554:    .word dword_80B143C
// end of function sub_80B1534

.thumb
sub_80B1558:
    push {lr}
    ldrb r0, [r5,#4]
    bl sub_80A2934
    add r7, r0, #0
    ldr r0, [pc, #0x80b1570-0x80b1562-2] // off_80B1574
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B1570:    .word off_80B1574
off_80B1574:    .word sub_80B1584+1
    .word sub_80B160C+1
    .word sub_80B1626+1
    .word sub_80B162E+1
// end of function sub_80B1558

.thumb
sub_80B1584:
    push {lr}
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x2b 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B15CE
    ldrb r0, [r5,#5]
    tst r0, r0
    bne loc_80B15EA
    mov r0, #3
    strb r0, [r5]
    ldrb r0, [r5,#4]
    add r0, #5
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x10
    strh r0, [r5,#0x3e]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B160C
    pop {pc}
loc_80B15CE:
    mov r0, #1
    strb r0, [r5]
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80B162E
    pop {pc}
loc_80B15EA:
    mov r0, #3
    strb r0, [r5]
    ldrb r0, [r5,#4]
    add r0, #0xf
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x30 
    strh r0, [r5,#0x3e]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B160C
    pop {pc}
// end of function sub_80B1584

.thumb
sub_80B160C:
    push {lr}
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B1620
    mov r0, #1
    strb r0, [r5]
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80B1620:
    bl sub_800283C
    pop {pc}
// end of function sub_80B160C

.thumb
sub_80B1626:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B1626

.thumb
sub_80B162E:
    push {lr}
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B165A
    mov r0, #0xaa
    bl f500_8000558
    mov r0, #3
    strb r0, [r5]
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x10
    strh r0, [r5,#0x3e]
    mov r0, #4
    strb r0, [r5,#8]
loc_80B165A:
    bl sub_800283C
    pop {pc}
// end of function sub_80B162E

.thumb
sub_80B1660:
    push {lr}
    ldr r0, [pc, #0x80b1670-0x80b1662-2] // jt_80B1674
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B1670:    .word jt_80B1674
jt_80B1674:    .word sub_80B1680+1
    .word sub_80B16B6+1
    .word sub_80B16D0+1
// end of function sub_80B1660

.thumb
sub_80B1680:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x2d 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r5,#4]
    strb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B16B6
    pop {pc}
// end of function sub_80B1680

.thumb
sub_80B16B6:
    push {lr}
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_80B16CA
    strb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
loc_80B16CA:
    bl sub_800283C
    pop {pc}
// end of function sub_80B16B6

.thumb
sub_80B16D0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B16D0

.thumb
sub_80B16D8:
    push {lr}
    ldr r0, [pc, #0x80b16e8-0x80b16da-2] // jt_80B16EC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B16E8:    .word jt_80B16EC
jt_80B16EC:    .word sub_80B16FC+1
    .word sub_80B174C+1
    .word sub_80B1768+1
    .word sub_80B1770+1
// end of function sub_80B16D8

.thumb
sub_80B16FC:
    push {lr}
    mov r0, #1
    mov r1, #0xa6
    bl sub_8024FF0
    bne loc_80B1742
    mov r0, #1
    mov r1, #0xa6
    bl sub_8024F9C
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x37 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B174C
    pop {pc}
loc_80B1742:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B174C
    pop {pc}
// end of function sub_80B16FC

.thumb
sub_80B174C:
    push {lr}
    bl sub_8005B5C
    beq loc_80B1762
    mov r0, #2
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80B1762:
    bl sub_800283C
    pop {pc}
// end of function sub_80B174C

.thumb
sub_80B1768:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B1768

.thumb
sub_80B1770:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B177E
    mov r0, #8
    strb r0, [r5,#8]
loc_80B177E:
    bl sub_800283C
    pop {pc}
dword_80B1784:    .word 0xC40006
    .word 0xCA000C
    .word 0xCA001C
    .word 0xC20018
// end of function sub_80B1770

.thumb
sub_80B1794:
    push {lr}
    ldr r0, [pc, #0x80b17a4-0x80b1796-2] // jt_80B17A8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B17A4:    .word jt_80B17A8
jt_80B17A8:    .word sub_80B17B4+1
    .word sub_80B17EE+1
    .word sub_80B17F8+1
// end of function sub_80B1794

.thumb
sub_80B17B4:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x5d 
    bl sub_800285C
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B17EE
    pop {pc}
// end of function sub_80B17B4

.thumb
sub_80B17EE:
    push {lr}
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B17EE

.thumb
sub_80B17F8:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B17F8

.thumb
sub_80B1800:
    push {r5,r7,lr}
    mov r0, #0x1d
    ldr r7, [pc, #0x80b1820-0x80b1804-4] // dword_80B1784
    lsl r1, r4, #2
    add r7, r7, r1
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    mov r3, #2
    ldrsh r2, [r7,r3]
    lsl r2, r2, #0x10
    mov r3, #0x28 
    lsl r3, r3, #0x10
    bl sub_8004440
    pop {r5,r7,pc}
off_80B1820:    .word dword_80B1784
// end of function sub_80B1800

.thumb
sub_80B1824:
    push {lr}
    ldr r0, [pc, #0x80b1834-0x80b1826-2] // off_80B1838
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1834:    .word off_80B1838
off_80B1838:    .word sub_80B1844+1
    .word sub_80B1890+1
    .word sub_80B18B4+1
// end of function sub_80B1824

.thumb
sub_80B1844:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x32 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r5,#4]
    lsl r0, r0, #5
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    sub r1, r1, r0
    add r2, r2, r0
    add r3, r3, r0
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    str r3, [r5,#0x3c]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1890
    pop {pc}
// end of function sub_80B1844

.thumb
sub_80B1890:
    push {lr}
    ldr r7, [pc, #0x80b18b0-0x80b1892-2] // unk_2010B98
    ldrh r0, [r7,#(word_2010B9C - 0x2010b98)]
    lsl r0, r0, #0x10
    mov r1, #0
    mvn r1, r1
    lsl r1, r1, #0x10
    cmp r0, r1
    bne loc_80B18A6
    mov r2, #8
    strb r2, [r5,#8]
loc_80B18A6:
    bl sub_8002FD8
    bl sub_800283C
    pop {pc}
off_80B18B0:    .word unk_2010B98
// end of function sub_80B1890

.thumb
sub_80B18B4:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B18B4

.thumb
sub_80B18BC:
    push {lr}
    ldr r0, [pc, #0x80b18cc-0x80b18be-2] // off_80B18D0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B18CC:    .word off_80B18D0
off_80B18D0:    .word sub_80B18DC+1
    .word sub_80B1924+1
    .word sub_80B1980+1
// end of function sub_80B18BC

.thumb
sub_80B18DC:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x10
    mov r2, #0x38 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80b191c-0x80b1900-4] // dword_80B1920
    ldrb r0, [r0,r1]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1924
    pop {pc}
    .balign 4, 0x00
off_80B191C:    .word dword_80B1920
dword_80B1920:    .word 0x1030201
// end of function sub_80B18DC

.thumb
sub_80B1924:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_80A4D20
    bne loc_80B1970
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b1978-0x80b1930-4] // =0x9A0
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B1970
    mov r0, #0x80
    mov r1, #0x14
    mov r2, #5
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #3
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrh r0, [r5,#0x3e]
    add r0, #8
    strh r0, [r5,#0x3e]
    mov r0, #8
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80b197c-0x80b196a-2] // =0x1A4
    bl f500_8000558
loc_80B1970:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B1978:    .word 0x9A0
dword_80B197C:    .word 0x1A7
// end of function sub_80B1924

.thumb
sub_80B1980:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B1990
    bl sub_800447A
    pop {pc}
loc_80B1990:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
pt_80B1998:    .word 0x800611C
    .word 0x2000204
    .word 0x801611C
    .word 0x2000204
    .word 0x802611C
    .word 0x2000204
    .word 0xC03611C
    .word 0x2020C
    .word 0x804611C
    .word 0x2000204
    .word 0x8034518
    .word 0x4040004
// end of function sub_80B1980

.thumb
sub_80B19C8:
    push {lr}
    ldr r0, [pc, #0x80b19d8-0x80b19ca-2] // off_80B19DC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B19D8:    .word off_80B19DC
off_80B19DC:    .word sub_80B19E8+1
    .word sub_80B1A50+1
    .word sub_80B1B5A+1
// end of function sub_80B19C8

.thumb
sub_80B19E8:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    ldrb r3, [r5,#4]
    mov r1, #8
    mul r3, r1
    ldr r2, [pc, #0x80b1a4c-0x80b19f4-4] // pt_80B1998
    add r3, r3, r2
    str r3, [r5,#0x58]
    mov r0, #0x80
    ldrb r1, [r3]
    ldrb r2, [r3,#1]
    bl sub_800285C
    ldr r3, [r5,#0x58]
    ldrb r0, [r3,#2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldr r0, [pc, #0x80b1a48-0x80b1a20-4] // =0x9000
    str r0, [r5,#0x48]
    ldrh r0, [r5,#0x3e]
    add r1, r0, #0
    add r1, #3
    strh r1, [r5,#0x20]
    add r1, r0, #0
    add r1, #0x1e
    strh r1, [r5,#0x22]
    add r1, r0, #0
    add r1, #0x18
    strh r1, [r5,#0x24]
    add r0, #0x8c
    strh r0, [r5,#0x3e]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1A50
    pop {pc}
    .balign 4, 0x00
dword_80B1A48:    .word 0x9000
dword_80B1A4C:    .word 0x80B1998
// end of function sub_80B19E8

.thumb
sub_80B1A50:
    push {lr}
    ldr r0, [pc, #0x80b1a64-0x80b1a52-2] // off_80B1A68
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B1A64:    .word off_80B1A68
off_80B1A68:    .word sub_80B1A78+1
    .word sub_80B1AB4+1
    .word loc_80B1AEA+1
    .word loc_80B1B10+1
// end of function sub_80B1A50

.thumb
sub_80B1A78:
    push {lr}
    bl sub_80B1B8C
    beq loc_80B1AA2
    ldrh r0, [r5,#0x24]
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#6]
    push {r0}
    add r0, #5
    bl sub_80B1BA4
    pop {r2}
    add r2, #3
    ldr r3, [r5,#0x58]
    ldrb r0, [r3,r2]
    strb r0, [r5,#9]
    bl sub_80B1BC6
    b locret_80B1AB2
loc_80B1AA2:
    bl sub_80B1B62
    bne locret_80B1AB2
    mov r0, #7
    bl sub_80B1BA4
    mov r0, #8
    strb r0, [r5,#8]
locret_80B1AB2:
    pop {pc}
// end of function sub_80B1A78

.thumb
sub_80B1AB4:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80B1ADE
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x61 
    bl sub_800285C
    mov r0, #5
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldr r0, [r5,#0x48]
    lsr r0, r0, #1
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
loc_80B1ADE:
    bl sub_80B1B62
    bne locret_80B1B58
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_80B1AEA:
    push {lr}
    mov r0, #4
    bl sub_80B1B84
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80B1B04
    mov r0, #1
    lsl r0, r0, #0x10
    neg r0, r0
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
loc_80B1B04:
    bl sub_80B1B62
    bne locret_80B1B58
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_80B1B10:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80B1B22
    mov r0, #1
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #1
    strb r0, [r5,#0xa]
loc_80B1B22:
    cmp r0, #1
    bne loc_80B1B3C
    mov r0, #2
    bl sub_80B1B84
    bl sub_80B1B62
    bne locret_80B1B58
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #2
    strb r0, [r5,#0xa]
    b locret_80B1B58
loc_80B1B3C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80B1B4A
    mov r0, #8
    strh r0, [r5,#8]
    pop {pc}
loc_80B1B4A:
    mov r1, #3
    lsl r0, r0, #0x1e
    lsr r0, r0, #0x1e
    cmp r0, #2
    bge loc_80B1B56
    mov r1, #1
loc_80B1B56:
    strb r1, [r5]
locret_80B1B58:
    pop {pc}
// end of function sub_80B1AB4

.thumb
sub_80B1B5A:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B1B5A

.thumb
sub_80B1B62:
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    sub r0, r0, r1
    str r0, [r5,#0x3c]
    lsr r0, r0, #0x10
    ldrh r2, [r5,#0x20]
    cmp r0, r2
    bge loc_80B1B76
    mov r0, #0
    mov pc, lr
loc_80B1B76:
    ldr r2, [pc, #0x80b1b80-0x80b1b76-2] // =0x800
    add r1, r1, r2
    str r1, [r5,#0x48]
    mov r0, #1
    mov pc, lr
off_80B1B80:    .word 0x800
// end of function sub_80B1B62

.thumb
sub_80B1B84:
    ldrh r1, [r5,#0x36]
    sub r1, r1, r0
    strh r1, [r5,#0x36]
    mov pc, lr
// end of function sub_80B1B84

.thumb
sub_80B1B8C:
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#5]
    tst r0, r0
    beq loc_80B1BA0
    ldrh r0, [r5,#0x3e]
    ldrh r1, [r5,#0x22]
    cmp r0, r1
    bge loc_80B1BA0
    mov r0, #1
    mov pc, lr
loc_80B1BA0:
    mov r0, #0
    mov pc, lr
// end of function sub_80B1B8C

.thumb
sub_80B1BA4:
    push {lr}
    ldr r3, [r5,#0x58]
    ldrb r0, [r3,r0]
    tst r0, r0
    bne loc_80B1BB0
    pop {pc}
loc_80B1BB0:
    ldr r3, [r5,#0x4c]
    ldrb r1, [r3,#1]
    sub r1, r1, r0
    bpl loc_80B1BBA
    mov r1, #0
loc_80B1BBA:
    strb r1, [r3,#1]
    mov r0, #0x67 
    add r0, #0xff
    bl f500_8000558
    pop {pc}
// end of function sub_80B1BA4

.thumb
sub_80B1BC6:
    push {lr}
    mov r0, #0x19
    ldr r3, [r5,#0x4c]
    ldrb r2, [r3,#6]
    tst r2, r2
    beq loc_80B1BD4
    mov r0, #0x66 
loc_80B1BD4:
    add r0, #0xff
    bl f500_8000558
    pop {pc}
// end of function sub_80B1BC6

.thumb
sub_80B1BDC:
    push {lr}
    ldr r0, [pc, #0x80b1bf0-0x80b1bde-2] // off_80B1BF4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_80B1BF0:    .word off_80B1BF4
off_80B1BF4:    .word sub_80B1C00+1
    .word sub_80B1C44+1
    .word sub_80B1CAE+1
// end of function sub_80B1BDC

.thumb
sub_80B1C00:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x2a 
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80b1c40-0x80b1c34-4] // =0x1C4
    bl f500_8000558
    bl sub_80B1C44
    pop {pc}
off_80B1C40:    .word 0x1C4
// end of function sub_80B1C00

.thumb
sub_80B1C44:
    push {lr}
    ldr r0, [pc, #0x80b1c54-0x80b1c46-2] // off_80B1C58
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1C54:    .word off_80B1C58
off_80B1C58:    .word sub_80B1C64+1
    .word sub_80B1C80+1
    .word sub_80B1C9C+1
// end of function sub_80B1C44

.thumb
sub_80B1C64:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B1C7E
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#9]
locret_80B1C7E:
    pop {pc}
// end of function sub_80B1C64

.thumb
sub_80B1C80:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B1C9A
    mov r0, #2
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #8
    strb r0, [r5,#9]
locret_80B1C9A:
    pop {pc}
// end of function sub_80B1C80

.thumb
sub_80B1C9C:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B1CAC
    mov r0, #8
    strb r0, [r5,#8]
locret_80B1CAC:
    pop {pc}
// end of function sub_80B1C9C

.thumb
sub_80B1CAE:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B1CAE

.thumb
sub_80B1CB8:
    push {lr}
    push {r4-r7}
    mov r0, #0
    bl sub_80A8ECE
    ldr r1, [r0,#0x24]
    mov r7, #4
    lsl r7, r7, #0x10
    ldr r2, [r0,#0x28]
    sub r2, r2, r7
    ldr r3, [r0,#0x2c]
    mov r7, #0x10
    lsl r7, r7, #0x10
    add r3, r3, r7
    mov r0, #0x21 
    bl sub_8004440
    pop {r4-r7}
    bl sub_80A9074
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B1CB8

.thumb
sub_80B1CE4:
    push {lr}
    ldr r0, [pc, #0x80b1cf4-0x80b1ce6-2] // off_80B1CF8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1CF4:    .word off_80B1CF8
off_80B1CF8:    .word sub_80B1D04+1
    .word sub_80B1D3E+1
    .word sub_80B1D54+1
// end of function sub_80B1CE4

.thumb
sub_80B1D04:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x14
    mov r2, #7
    bl sub_800285C
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1D3E
    pop {pc}
// end of function sub_80B1D04

.thumb
sub_80B1D3E:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B1D4E
    mov r0, #8
    strb r0, [r5,#8]
loc_80B1D4E:
    bl sub_800283C
    pop {pc}
// end of function sub_80B1D3E

.thumb
sub_80B1D54:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B1D54

.thumb
sub_80B1D5C:
    push {lr}
    push {r4-r7}
    mov r0, #0
    bl sub_80A8ECE
    ldr r1, [r0,#0x24]
    ldr r2, [r0,#0x28]
    mov r7, #4
    lsl r7, r7, #0x10
    sub r2, r2, r7
    ldr r3, [r0,#0x2c]
    mov r7, #0x28 
    lsl r7, r7, #0x10
    add r3, r3, r7
    mov r0, #0x22 
    bl sub_8004440
    pop {r4-r7}
    mov r0, #0
    pop {pc}
// end of function sub_80B1D5C

.thumb
sub_80B1D84:
    push {lr}
    ldr r0, [pc, #0x80b1d94-0x80b1d86-2] // off_80B1D98
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1D94:    .word off_80B1D98
off_80B1D98:    .word sub_80B1DA4+1
    .word sub_80B1DE0+1
    .word sub_80B1DE8+1
// end of function sub_80B1D84

.thumb
sub_80B1DA4:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x53 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B1DE0
    pop {pc}
    .word dword_80B1DDC
dword_80B1DDC:    .word 0x20100
// end of function sub_80B1DA4

.thumb
sub_80B1DE0:
    push {lr}
    bl sub_800283C
    pop {pc}
// end of function sub_80B1DE0

.thumb
sub_80B1DE8:
    push {lr}
loc_80B1DEA:
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B1DF8
    bl sub_800447A
    pop {pc}
loc_80B1DF8:
    bl sub_800283C
    pop {pc}
// end of function sub_80B1DE8

.thumb
sub_80B1DFE:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    ldr r1, [r3,#0x24]
    ldr r2, [r3,#0x28]
    ldr r3, [r3,#0x2c]
    mov r0, #0x23 
    bl sub_8004440
    add r0, r5, #0
    pop {r4-r7,pc}
// end of function sub_80B1DFE

loc_80B1E18:
    push {lr}
    ldr r0, [pc, #0x80b1e28-0x80b1e1a-2] // off_80B1E2C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1E28:    .word off_80B1E2C
off_80B1E2C:    .word sub_80B1E34+1
    .word loc_80B1E7A+1
.thumb
sub_80B1E34:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x64 
    bl sub_800285C
    mov r0, #0x19
    ldrb r1, [r5,#4]
    strb r1, [r5,#9]
    tst r1, r1
    beq loc_80B1E50
    mov r0, #0x1e
loc_80B1E50:
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002E76
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0x18
    lsl r0, r0, #0x18
    bl sub_8002FD8
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_80B1E7A
    pop {pc}
loc_80B1E7A:
    push {lr}
    ldr r0, [pc, #0x80b1e8c-0x80b1e7c-4] // jt_80B1E90
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_80B1E8C:    .word jt_80B1E90
jt_80B1E90:    .word sub_80B1E98+1
    .word sub_80B1F90+1
// end of function sub_80B1E34

.thumb
sub_80B1E98:
    push {lr}
    ldr r0, [pc, #0x80b1ea8-0x80b1e9a-2] // off_80B1EAC
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B1EA8:    .word off_80B1EAC
off_80B1EAC:    .word sub_80B1EC0+1
    .word sub_80B1F10+1
    .word sub_80B1F30+1
    .word sub_80B1F58+1
    .word nullsub_55+1
// end of function sub_80B1E98

.thumb
sub_80B1EC0:
    push {r4,lr}
    ldr r4, [r5,#0x4c]
    ldrb r0, [r4,#4]
    tst r0, r0
    beq locret_80B1EFE
    ldr r0, [pc, #0x80b1f00-0x80b1eca-2] // =0x1C0
    ldr r3, [pc, #0x80b1f04-0x80b1ecc-4] // word_8005DF8
    ldr r2, [pc, #0x80b1f08-0x80b1ece-2] // dword_80B1F0C
    ldrb r1, [r4,#5]
    ldrb r2, [r2,r1]
    lsl r2, r2, #1
    ldrsh r1, [r3,r2]
    mul r0, r1
    str r0, [r5,#0x40]
    add r2, #0x80
    ldrsh r1, [r3,r2]
    ldr r0, [pc, #0x80b1f00-0x80b1ee0-4] // =0x1C0
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #2
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    mov r2, #0xe
    ldrb r1, [r4,#5]
    cmp r1, #1
    beq loc_80B1EFA
    mov r0, #8
    mov r2, #5
loc_80B1EFA:
    strh r0, [r5,#0xa]
    strh r2, [r5,#0x20]
locret_80B1EFE:
    pop {r4,pc}
off_80B1F00:    .word 0x1C0
off_80B1F04:    .word word_8005DF8
off_80B1F08:    .word dword_80B1F0C
dword_80B1F0C:    .word 0xE02060
// end of function sub_80B1EC0

.thumb
sub_80B1F10:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne locret_80B1F2E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B1F2E
    mov r0, #0x1a
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
locret_80B1F2E:
    pop {pc}
// end of function sub_80B1F10

.thumb
sub_80B1F30:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B1F4E
    ldr r3, [r5,#0x4c]
    ldr r2, [pc, #0x80b1f50-0x80b1f3c-4] // loc_80B1F54
    ldrb r1, [r3,#5]
    ldrb r0, [r2,r1]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0xc
    strb r0, [r5,#0xa]
locret_80B1F4E:
    pop {pc}
off_80B1F50:    .word loc_80B1F54
// end of function sub_80B1F30

loc_80B1F54:
    sub r4, r3, r0
    .hword 0x1b // mov r3, r3  // <mkdata>
.thumb
sub_80B1F58:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    mov r2, #0x20 
    lsl r2, r2, #8
    sub r1, r1, r2
    str r1, [r5,#0x48]
    cmp r1, #0
    bpl locret_80B1F8C
    asr r0, r0, #0x10
    mov r1, #2
    neg r1, r1
    cmp r0, r1
    bgt locret_80B1F8C
    mov r0, #0x10
    strb r0, [r5,#0xa]
locret_80B1F8C:
    pop {pc}
// end of function sub_80B1F58

.thumb
nullsub_55:
    mov pc, lr
// end of function nullsub_55

.thumb
sub_80B1F90:
    push {lr}
    ldr r0, [pc, #0x80b1fa0-0x80b1f92-2] // off_80B1FA4
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B1FA0:    .word off_80B1FA4
off_80B1FA4:    .word sub_80B1FBC+1
    .word sub_80B1FCC+1
    .word sub_80B1FEA+1
    .word sub_80B201C+1
    .word sub_80B205A+1
    .word nullsub_56+1
// end of function sub_80B1F90

.thumb
sub_80B1FBC:
    push {lr}
    ldr r2, [r5,#0x4c]
    ldrb r0, [r2,#8]
    tst r0, r0
    beq locret_80B1FCA
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B1FCA:
    pop {pc}
// end of function sub_80B1FBC

.thumb
sub_80B1FCC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B1FDC
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B1FDC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B1FE8
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B1FE8:
    pop {pc}
// end of function sub_80B1FCC

.thumb
sub_80B1FEA:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2004
    mov r0, #0x1d
    strh r0, [r5,#0x20]
    mov r0, #8
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2004:
    ldr r0, [r5,#0x34]
    mov r3, #1
    lsl r3, r3, #0x10
    add r0, r0, r3
    str r0, [r5,#0x34]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B201A
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B201A:
    pop {pc}
// end of function sub_80B1FEA

.thumb
sub_80B201C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2036
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x17
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2036:
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r3, #1
    lsl r3, r3, #0x10
    add r0, r0, r3
    mov r3, #1
    lsl r3, r3, #0x10
    neg r3, r3
    add r1, r1, r3
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B2058
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B2058:
    pop {pc}
// end of function sub_80B201C

.thumb
sub_80B205A:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B208A
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x18
    bl sub_8002DF0
    bl sub_800281C
    ldr r2, [r5,#0x4c]
    mov r0, #1
    strb r0, [r2,#4]
    bl sub_8001AE0
    mov r2, #0xff
    and r0, r2
    mov r1, #3
    svc 6
    ldr r2, [r5,#0x4c]
    strb r1, [r2,#3]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B208A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B20A0
    mov r0, #0x1e
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80B20A0:
    pop {pc}
// end of function sub_80B205A

.thumb
nullsub_56:
    mov pc, lr
// end of function nullsub_56

.thumb
sub_80B20A4:
    push {lr}
    ldr r0, [pc, #0x80b20b4-0x80b20a6-2] // off_80B20B8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B20B4:    .word off_80B20B8
off_80B20B8:    .word sub_80B20C0+1
    .word sub_80B20F4+1
// end of function sub_80B20A4

.thumb
sub_80B20C0:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x41 
    bl sub_800285C
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002E76
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B20F4
    pop {pc}
// end of function sub_80B20C0

.thumb
sub_80B20F4:
    push {lr}
    ldr r0, [pc, #0x80b2108-0x80b20f6-2] // off_80B210C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B2108:    .word off_80B210C
off_80B210C:    .word sub_80B211C+1
    .word sub_80B2188+1
    .word sub_80B21FA+1
    .word loc_80B223E+1
// end of function sub_80B20F4

.thumb
sub_80B211C:
    push {r4,lr}
    ldr r4, [r5,#0x4c]
    ldrb r0, [r4,#4]
    tst r0, r0
    beq locret_80B2164
    mov r0, #0x97
    add r0, #0xff
    bl f500_8000558
    ldr r0, [pc, #0x80b2168-0x80b212e-2] // =0x500
    ldr r3, [pc, #0x80b216c-0x80b2130-4] // word_8005DF8
    ldr r2, [pc, #0x80b2170-0x80b2132-2] // dword_80B217C
    ldrb r1, [r4,#3]
    ldrb r2, [r2,r1]
    ldrsh r1, [r3,r2]
    mul r0, r1
    str r0, [r5,#0x40]
    add r2, #0x80
    ldrsh r1, [r3,r2]
    ldr r0, [pc, #0x80b2168-0x80b2142-2] // =0x500
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #0x18
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r0, #0
    strb r0, [r5,#7]
    ldrb r2, [r4,#3]
    ldr r3, [pc, #0x80b2174-0x80b2154-4] // dword_80B217C
    ldrb r0, [r3,r2]
    strb r0, [r5,#6]
    ldr r3, [pc, #0x80b2178-0x80b215a-2] // dword_80B217C
    ldrb r0, [r3,r2]
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
locret_80B2164:
    pop {r4,pc}
    .balign 4, 0x00
off_80B2168:    .word 0x500
off_80B216C:    .word word_8005DF8
off_80B2170:    .word dword_80B217C
dword_80B2174:    .word 0x80B217F
dword_80B2178:    .word 0x80B2182
dword_80B217C:    .word 0x17204060, 0xE141715, 0x14
// end of function sub_80B211C

.thumb
sub_80B2188:
    push {lr}
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    ldrb r1, [r5,#6]
    cmp r0, r1
    blt loc_80B21BA
    bl sub_8002DFC
    bl sub_80B226A
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_80B21AE
    mov r0, #0x88
    add r0, #0xff
    bl f500_8000558
    b loc_80B21B4
loc_80B21AE:
    mov r0, #0xef
    bl f500_8000558
loc_80B21B4:
    mov r0, #0xc
    strb r0, [r5,#9]
    b locret_80B21F8
loc_80B21BA:
    ldrb r1, [r5,#5]
    cmp r0, r1
    blt loc_80B21D8
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#5]
    ldrb r1, [r3,#3]
    cmp r0, r1
    bne loc_80B21D8
    mov r0, #0x98
    add r0, #0xff
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#9]
    b locret_80B21F8
loc_80B21D8:
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    mov r2, #0x14
    lsl r2, r2, #8
    sub r1, r1, r2
    str r1, [r5,#0x48]
locret_80B21F8:
    pop {pc}
// end of function sub_80B2188

.thumb
sub_80B21FA:
    push {lr}
    ldr r2, [r5,#0x4c]
    ldrb r0, [r2,#5]
    mov r1, #6
    mul r0, r1
    ldr r2, [pc, #0x80b2228-0x80b2204-4] // dword_80B222C
    add r2, r2, r0
    ldr r3, [r5,#0x58]
    ldrh r0, [r3,#2]
    ldrh r1, [r2]
    add r0, r0, r1
    strh r0, [r5,#0x36]
    ldrh r0, [r3,#6]
    ldrh r1, [r2,#2]
    add r0, r0, r1
    strh r0, [r5,#0x3a]
    ldrh r0, [r3,#0xa]
    ldrh r1, [r2,#4]
    add r0, r0, r1
    strh r0, [r5,#0x3e]
    mov r0, #1
    b loc_80B2264
    .balign 4, 0x00
off_80B2228:    .word dword_80B222C
dword_80B222C:    .word 0xFFF8FFF6, 0xFFFB0008, 0x80004, 0xA0006
    .hword 0x8
loc_80B223E:
    push {lr}
    bl sub_80B22C6
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    mov r1, #3
    and r0, r1
    cmp r0, #2
    bge loc_80B2262
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_80B2262:
    mov r0, #2
loc_80B2264:
    ldr r2, [r5,#0x4c]
    strb r0, [r2,#7]
    pop {pc}
// end of function sub_80B21FA

.thumb
sub_80B226A:
    push {r5,lr}
    mov r0, #0
    strh r0, [r5,#0x22]
    push {r5}
    mov r0, #0x26 
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r4, #0
    bl sub_8004440
    pop {r5}
    mov r3, r10
    ldr r1, [r3,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x80b231c-0x80b2288-4] // =0x2000
    orr r0, r2
    strh r0, [r1]
    mov r0, #1
    lsl r0, r0, #0x10
    str r0, [r5,#0x1c]
    mov r0, #4
    lsl r0, r0, #0xc
    str r0, [r5,#0x20]
    mov r0, #0x80
    lsl r0, r0, #8
    str r0, [r5,#0x24]
    mov r0, #8
    lsl r0, r0, #8
    str r0, [r5,#0x28]
    mov r0, #6
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    mov r0, #8
    lsl r0, r0, #0xc
    str r0, [r5,#0x30]
    mov r0, #0xff
    str r0, [r5,#0x40]
    mov r0, #0x1c
    add r0, r0, r5
    ldr r1, [pc, #0x80b2320-0x80b22ba-2] // loc_3006D04+1
    mov lr, pc
    bx r1
// end of function sub_80B226A

    bl sub_80B22C6
    pop {r5,pc}
.thumb
sub_80B22C6:
    push {lr}
    ldr r0, [pc, #0x80b2324-0x80b22c8-4] // loc_3006D74+1
    mov lr, pc
    bx r0
    mov r3, r10
    ldr r3, [r3,#0x20]
    mov r0, #0xbf
    strb r0, [r3]
    mov r0, #0
    strb r0, [r3,#1]
    ldrh r0, [r5,#0x22]
    add r0, #1
    cmp r0, #0x20 
    ble loc_80B22E4
    mov r0, #0x20 
loc_80B22E4:
    strh r0, [r5,#0x22]
    lsr r0, r0, #1
    strb r0, [r3,#4]
    mov r3, r10
    ldr r3, [r3,#0x1c]
    mov r0, #0x3f 
    strb r0, [r3,#8]
    mov r0, #0x1f
    strb r0, [r3,#0xa]
    pop {pc}
    push {lr}
    ldr r0, [pc, #0x80b2318-0x80b22fa-2] // loc_3006E40+1
    mov lr, pc
    bx r0
    mov r3, r10
    ldr r3, [r3,#0x20]
    mov r0, #0
    strb r0, [r3]
    mov r3, r10
    ldr r1, [r3,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x80b231c-0x80b230e-2] // =0x2000
    bic r0, r2
    strh r0, [r1]
    pop {pc}
    .balign 4, 0x00
off_80B2318:    .word loc_3006E40+1
off_80B231C:    .word 0x2000
off_80B2320:    .word loc_3006D04+1
off_80B2324:    .word loc_3006D74+1
// end of function sub_80B22C6

.thumb
ho_cb_80B2328:
    push {lr}
    ldr r0, [pc, #0x80b2338-0x80b232a-2] // jt_80B233C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B2338:    .word jt_80B233C
jt_80B233C:    .word sub_80B2348+1
    .word sub_80B2360+1
    .word sub_80B23D0+1
// end of function ho_cb_80B2328

.thumb
sub_80B2348:
    push {lr}
    mov r0, #0x78 
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B2360
    pop {pc}
// end of function sub_80B2348

.thumb
sub_80B2360:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    bpl loc_80B236C
    mov r0, #8
    strb r0, [r5,#8]
loc_80B236C:
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    sub r0, #1
    bpl loc_80B23BC
    bl sub_8001AE0
    push {r0}
    push {r0}
    mov r3, #0x3f 
    and r0, r3
    lsr r3, r3, #1
    sub r0, r0, r3
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x34]
    add r1, r1, r0
    pop {r2}
    lsr r2, r2, #4
    mov r4, #0x3f 
    and r2, r4
    lsr r4, r4, #1
    sub r2, r2, r4
    lsl r2, r2, #0x10
    ldr r3, [r5,#0x38]
    add r2, r2, r3
    pop {r3}
    lsr r3, r3, #8
    mov r0, #0x1f
    and r3, r0
    lsr r0, r0, #1
    sub r3, r3, r0
    lsl r3, r3, #0x10
    ldr r4, [r5,#0x3c]
    add r3, r3, r4
    mov r0, #2
    mov r4, #1
    push {r5}
    bl sub_8004440
    pop {r5}
    mov r0, #2
loc_80B23BC:
    strh r0, [r5,#0x22]
    ldrb r0, [r5,#7]
    sub r0, #1
    bpl loc_80B23CC
    mov r0, #0x70 
    bl f500_8000558
    mov r0, #7
loc_80B23CC:
    strb r0, [r5,#7]
    pop {r4,pc}
// end of function sub_80B2360

.thumb
sub_80B23D0:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B23D0

.thumb
sub_80B23D8:
    push {lr}
    ldr r0, [pc, #0x80b23e8-0x80b23da-2] // off_80B23EC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B23E8:    .word off_80B23EC
off_80B23EC:    .word sub_80B23F4+1
    .word sub_80B2408+1
// end of function sub_80B23D8

.thumb
sub_80B23F4:
    push {lr}
    mov r0, #9
    strb r0, [r5]
    ldrb r0, [r5,#4]
    strb r0, [r5,#9]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B2408
    pop {pc}
// end of function sub_80B23F4

.thumb
sub_80B2408:
    push {lr}
    ldr r0, [pc, #0x80b2418-0x80b240a-2] // off_80B241C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B2418:    .word off_80B241C
off_80B241C:    .word sub_80B2424+1
    .word sub_80B2540+1
// end of function sub_80B2408

.thumb
sub_80B2424:
    push {lr}
    ldr r0, [pc, #0x80b243c-0x80b2426-2] // off_80B2440
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x3c]
    bl loc_80A6E0C
    pop {pc}
off_80B243C:    .word off_80B2440
off_80B2440:    .word sub_80B2454+1
    .word sub_80B24C0+1
    .word sub_80B24DC+1
    .word sub_80B2508+1
    .word nullsub_57+1
// end of function sub_80B2424

.thumb
sub_80B2454:
    push {r4,lr}
    ldr r4, [r5,#0x4c]
    ldrb r0, [r4,#4]
    tst r0, r0
    beq locret_80B24AC
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r3, [r3]
    mov r0, #0
    mov r1, #0x20 
    tst r3, r1
    bne loc_80B2476
    mov r0, #2
    mov r1, #0x10
    tst r3, r1
    bne loc_80B2476
    mov r0, #1
loc_80B2476:
    strb r0, [r4,#5]
    ldr r0, [pc, #0x80b24b0-0x80b2478-4] // =0x1C0
    ldr r3, [pc, #0x80b24b4-0x80b247a-2] // word_8005DF8
    ldr r2, [pc, #0x80b24b8-0x80b247c-4] // dword_80B24BC
    ldrb r1, [r4,#5]
    ldrb r2, [r2,r1]
    lsl r2, r2, #1
    ldrsh r1, [r3,r2]
    mul r0, r1
    str r0, [r5,#0x40]
    add r2, #0x80
    ldrsh r1, [r3,r2]
    ldr r0, [pc, #0x80b24b0-0x80b248e-2] // =0x1C0
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #2
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    mov r2, #0xe
    ldrb r1, [r4,#5]
    cmp r1, #1
    beq loc_80B24A8
    mov r0, #8
    mov r2, #5
loc_80B24A8:
    strh r0, [r5,#0xa]
    strh r2, [r5,#0x20]
locret_80B24AC:
    pop {r4,pc}
    .byte 0, 0
off_80B24B0:    .word 0x1C0
off_80B24B4:    .word word_8005DF8
off_80B24B8:    .word dword_80B24BC
dword_80B24BC:    .word 0xE02060
// end of function sub_80B2454

.thumb
sub_80B24C0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne locret_80B24DA
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B24DA
    mov r0, #0x45 
    bl sub_80A6DB8
    mov r0, #4
    strb r0, [r5,#0xb]
locret_80B24DA:
    pop {pc}
// end of function sub_80B24C0

.thumb
sub_80B24DC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B24FE
    ldr r3, [r5,#0x4c]
    ldr r2, [pc, #0x80b2500-0x80b24e8-4] // loc_80B2504
    ldrb r1, [r3,#5]
    ldrb r0, [r2,r1]
    bl sub_80A6DB8
    bl sub_80A6E88
    bl sub_80A6ED0
    mov r0, #0xc
    strb r0, [r5,#0xa]
locret_80B24FE:
    pop {pc}
off_80B2500:    .word loc_80B2504
// end of function sub_80B24DC

loc_80B2504:
    cmp r7, r8
    lsl r6, r0, #1
.thumb
sub_80B2508:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    mov r2, #0x20 
    lsl r2, r2, #8
    sub r1, r1, r2
    str r1, [r5,#0x48]
    cmp r1, #0
    bpl locret_80B253C
    asr r0, r0, #0x10
    mov r1, #2
    neg r1, r1
    cmp r0, r1
    bgt locret_80B253C
    mov r0, #0x10
    strb r0, [r5,#0xa]
locret_80B253C:
    pop {pc}
// end of function sub_80B2508

.thumb
nullsub_57:
    mov pc, lr
// end of function nullsub_57

.thumb
sub_80B2540:
    push {lr}
    ldr r0, [pc, #0x80b2558-0x80b2542-2] // jt_80B255C
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x3c]
    bl loc_80A6E0C
    pop {pc}
off_80B2558:    .word jt_80B255C
jt_80B255C:    .word sub_80B2570+1
    .word sub_80B25A4+1
    .word sub_80B25D2+1
    .word sub_80B260C+1
    .word nullsub_58+1
// end of function sub_80B2540

.thumb
sub_80B2570:
    push {lr}
    ldr r2, [r5,#0x4c]
    ldrb r0, [r2,#8]
    tst r0, r0
    beq locret_80B25A2
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r3, [r4,#2]
    mov r1, #1
    tst r3, r1
    beq locret_80B25A2
    mov r0, #0
    ldrh r3, [r4]
    mov r1, #0x20 
    tst r3, r1
    bne loc_80B259A
    mov r0, #2
    mov r1, #0x10
    tst r3, r1
    bne loc_80B259A
    mov r0, #1
loc_80B259A:
    ldr r2, [r5,#0x4c]
    strb r0, [r2,#3]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B25A2:
    pop {pc}
// end of function sub_80B2570

.thumb
sub_80B25A4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B25BA
    mov r0, #0x1d
    strh r0, [r5,#0x20]
    mov r0, #9
    bl sub_80A6DB8
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B25BA:
    ldr r0, [r5,#0x34]
    mov r3, #1
    lsl r3, r3, #0x10
    add r0, r0, r3
    str r0, [r5,#0x34]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B25D0
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B25D0:
    pop {pc}
// end of function sub_80B25A4

.thumb
sub_80B25D2:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B25E8
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x10
    bl sub_80A6DB8
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B25E8:
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r3, #1
    lsl r3, r3, #0x10
    add r0, r0, r3
    mov r3, #1
    lsl r3, r3, #0x10
    neg r3, r3
    add r1, r1, r3
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B260A
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B260A:
    pop {pc}
// end of function sub_80B25D2

.thumb
sub_80B260C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2628
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x43 
    bl sub_80A6DB8
    ldr r2, [r5,#0x4c]
    mov r0, #1
    strb r0, [r2,#4]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2628:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B263A
    mov r0, #0
    bl sub_80A6DB8
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B263A:
    pop {pc}
// end of function sub_80B260C

.thumb
nullsub_58:
    mov pc, lr
    .byte 0, 0
// end of function nullsub_58

.thumb
sub_80B2640:
    push {lr}
    ldr r0, [pc, #0x80b2650-0x80b2642-2] // jt_80B2654
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B2650:    .word jt_80B2654
jt_80B2654:    .word sub_80B265C+1
    .word sub_80B2670+1
// end of function sub_80B2640

.thumb
sub_80B265C:
    push {lr}
    mov r0, #9
    strb r0, [r5]
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B2670
    pop {pc}
// end of function sub_80B265C

.thumb
sub_80B2670:
    push {lr}
    mov r0, #0
    strb r0, [r5,#7]
    ldr r0, [pc, #0x80b26b8-0x80b2676-2] // off_80B26BC
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x3c]
    bl loc_80A6E0C
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#8]
    tst r0, r0
    beq locret_80B26B4
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_80B26A8
    mov r0, #0xad
    add r0, #0xff
    bl f500_8000558
    mov r0, #3
    bl sub_80B28CC
    b locret_80B26B4
loc_80B26A8:
    mov r0, #0xab
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x18
    strh r0, [r5,#0xa]
locret_80B26B4:
    pop {pc}
    .balign 4, 0x00
off_80B26B8:    .word off_80B26BC
off_80B26BC:    .word sub_80B26D8+1
    .word sub_80B26EC+1
    .word sub_80B2758+1
    .word sub_80B2798+1
    .word sub_80B27D8+1
    .word sub_80B2818+1
    .word sub_80B2844+1
// end of function sub_80B2670

.thumb
sub_80B26D8:
    push {lr}
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#2]
    tst r0, r0
    beq locret_80B26EA
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
locret_80B26EA:
    pop {pc}
// end of function sub_80B26D8

.thumb
sub_80B26EC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2702
    mov r0, #0x66 
    bl sub_80A6DB8
    bl sub_80B2880
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2702:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    bmi loc_80B270C
    strh r0, [r5,#0x20]
    pop {pc}
loc_80B270C:
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#2]
    tst r0, r0
    beq locret_80B2756
    ldrb r0, [r3,#5]
    tst r0, r0
    beq locret_80B2756
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r2, [r3,#2]
    mov r1, #1
    tst r2, r1
    beq locret_80B2756
    mov r0, #0
    ldrh r2, [r3]
    mov r1, #0x40 
    tst r2, r1
    bne loc_80B2748
    mov r0, #1
    mov r1, #0x10
    tst r2, r1
    bne loc_80B2748
    mov r0, #2
    mov r1, #0x80
    tst r2, r1
    bne loc_80B2748
    mov r0, #3
    mov r1, #0x20 
    tst r2, r1
    beq locret_80B2756
loc_80B2748:
    strb r0, [r5,#6]
    add r0, #2
    lsl r0, r0, #2
    strh r0, [r5,#0xa]
    ldr r3, [r5,#0x4c]
    mov r0, #0
    strb r0, [r3,#5]
locret_80B2756:
    pop {pc}
// end of function sub_80B26EC

.thumb
sub_80B2758:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B277A
    mov r0, #0x67 
    bl sub_80A6DB8
    bl sub_80B2878
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x65 
    add r0, #0xff
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B277A:
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80B2786
    mov r0, #0
    bl sub_80B2886
loc_80B2786:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2796
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2796:
    pop {pc}
// end of function sub_80B2758

.thumb
sub_80B2798:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B27BA
    mov r0, #0x69 
    bl sub_80A6DB8
    bl sub_80B2878
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x65 
    add r0, #0xff
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B27BA:
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80B27C6
    mov r0, #1
    bl sub_80B2886
loc_80B27C6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B27D6
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B27D6:
    pop {pc}
// end of function sub_80B2798

.thumb
sub_80B27D8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B27FA
    mov r0, #0x68 
    bl sub_80A6DB8
    bl sub_80B2878
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x65 
    add r0, #0xff
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B27FA:
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80B2806
    mov r0, #2
    bl sub_80B2886
loc_80B2806:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2816
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2816:
    pop {pc}
// end of function sub_80B27D8

.thumb
sub_80B2818:
    push {lr}
    mov r0, #1
    strb r0, [r5,#7]
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2832
    mov r0, #0x6a 
    bl sub_80A6DB8
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2832:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2842
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2842:
    pop {pc}
// end of function sub_80B2818

.thumb
sub_80B2844:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2864
    mov r0, #0x6b 
    bl sub_80A6DB8
    bl sub_80B2880
    ldr r3, [r5,#0x4c]
    mov r0, #1
    strb r0, [r3,#0xb]
    mov r0, #0x78 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2864:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B2876
    ldr r3, [r5,#0x4c]
    mov r0, #0
    strb r0, [r3,#0xb]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2876:
    pop {pc}
// end of function sub_80B2844

.thumb
sub_80B2878:
    ldrh r0, [r5,#0x36]
    add r0, #0xd
    strh r0, [r5,#0x36]
    mov pc, lr
// end of function sub_80B2878

.thumb
sub_80B2880:
    ldr r0, [r5,#0x48]
    str r0, [r5,#0x34]
    mov pc, lr
// end of function sub_80B2880

.thumb
sub_80B2886:
    push {lr}
    ldr r3, [r5,#0x4c]
    ldrb r1, [r3,#7]
    cmp r0, r1
    bne loc_80B28AA
    ldrb r0, [r3,#6]
    tst r0, r0
    beq locret_80B28CA
    sub r0, #4
    strb r0, [r3,#6]
    mov r0, #0xab
    add r0, #0xff
    bl f500_8000558
    ldrb r0, [r5,#6]
    bl sub_80B28CC
    pop {pc}
loc_80B28AA:
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#9]
    tst r0, r0
    bne locret_80B28CA
    mov r0, #0xac
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x67 
    add r0, #0xff
    bl f500_8000558
    ldrb r0, [r5,#6]
    add r0, #4
    bl sub_80B28CC
locret_80B28CA:
    pop {pc}
// end of function sub_80B2886

.thumb
sub_80B28CC:
    push {r4-r6,lr}
    lsl r0, r0, #3
    ldr r6, [pc, #0x80b28f8-0x80b28d0-4] // byte_80B28FC
    add r6, r6, r0
    mov r0, #0x2a 
    ldr r1, [r5,#0x34]
    ldrh r2, [r6]
    lsl r2, r2, #0x10
    add r1, r1, r2
    ldr r2, [r5,#0x38]
    ldrh r3, [r6,#2]
    lsl r3, r3, #0x10
    add r2, r2, r3
    ldr r3, [r5,#0x3c]
    ldrh r4, [r6,#4]
    lsl r4, r4, #0x10
    add r3, r3, r4
    ldrh r4, [r6,#6]
    bl sub_8004440
    pop {r4-r6,pc}
    .balign 4, 0x00
off_80B28F8:    .word byte_80B28FC
byte_80B28FC:    .byte 0xA
    .byte 0
    .byte 8
    .byte 0
    .byte 0x29 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0
    .byte 8
    .byte 0
    .word 0x1A, 0x8000A, 0x16, 0x8FFFB, 0x10024, 0x8000A, 0x20029
    .word 0x8000A, 0x2001A, 0x8000A, 0x20016
// end of function sub_80B28CC

.thumb
sub_80B2934:
    push {lr}
    ldr r0, [pc, #0x80b2944-0x80b2936-2] // off_80B2948
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B2944:    .word off_80B2948
off_80B2948:    .word sub_80B2950+1
    .word loc_80B2988+1
// end of function sub_80B2934

.thumb
sub_80B2950:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x52 
    bl sub_800285C
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002E76
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_80B2988
    pop {pc}
loc_80B2988:
    push {lr}
    ldr r3, [r5,#0x4c]
    mov r0, #0
    strb r0, [r3,#8]
    ldr r0, [pc, #0x80b29a0-0x80b2990-4] // jt_80B29A4
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_80B29A0:    .word jt_80B29A4
jt_80B29A4:    .word sub_80B29BC+1
    .word sub_80B29D0+1
    .word sub_80B2A2A+1
    .word sub_80B2A50+1
    .word sub_80B2A76+1
    .word sub_80B2A9C+1
// end of function sub_80B2950

.thumb
sub_80B29BC:
    push {lr}
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#2]
    tst r0, r0
    beq locret_80B29CE
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
locret_80B29CE:
    pop {pc}
// end of function sub_80B29BC

.thumb
sub_80B29D0:
    push {lr}
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#2]
    tst r0, r0
    beq locret_80B2A28
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#0xb]
    tst r0, r0
    bne locret_80B2A28
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2A28
    bl sub_80B2B46
    bl sub_8001AE0
    mov r1, #0x1f
    and r0, r1
    ldrb r1, [r5,#4]
    cmp r0, r1
    bge loc_80B2A00
    mov r1, #3
    b loc_80B2A0C
loc_80B2A00:
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    mov r1, #3
    svc 6
loc_80B2A0C:
    ldr r3, [r5,#0x4c]
    strb r1, [r3,#7]
    push {r1}
    lsl r1, r1, #2
    add r1, #8
    strb r1, [r5,#0xa]
    pop {r0}
    bl sub_80B2B52
    ldr r3, [r5,#0x4c]
    mov r0, #1
    strb r0, [r3,#5]
    mov r0, #0x3c 
    strh r0, [r5,#0x22]
locret_80B2A28:
    pop {pc}
// end of function sub_80B29D0

.thumb
sub_80B2A2A:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2A40
    mov r0, #2
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2A40:
    bl sub_80B2B12
    bne locret_80B2A4E
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2A4E:
    pop {pc}
// end of function sub_80B2A2A

.thumb
sub_80B2A50:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2A66
    mov r0, #3
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2A66:
    bl sub_80B2B12
    bne locret_80B2A74
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2A74:
    pop {pc}
// end of function sub_80B2A50

.thumb
sub_80B2A76:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2A8C
    mov r0, #4
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B2A8C:
    bl sub_80B2B12
    bne locret_80B2A9A
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2A9A:
    pop {pc}
// end of function sub_80B2A76

.thumb
sub_80B2A9C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B2AB6
    mov r0, #4
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #1
    strb r0, [r5,#0xb]
loc_80B2AB6:
    ldrb r0, [r5,#0xb]
    cmp r0, #1
    bne loc_80B2ADE
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2B10
    bl sub_80B2B38
    mov r0, #5
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0x28 
    add r0, #0xff
    bl f500_8000558
    mov r0, #2
    strb r0, [r5,#0xb]
loc_80B2ADE:
    ldrb r0, [r5,#0xb]
    cmp r0, #2
    bne loc_80B2AFC
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B2B10
    ldr r3, [r5,#0x4c]
    mov r0, #1
    strb r0, [r3,#8]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #3
    strb r0, [r5,#0xb]
loc_80B2AFC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B2B10
    bl sub_80B2B46
    mov r0, #1
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B2B10:
    pop {pc}
// end of function sub_80B2A9C

.thumb
sub_80B2B12:
    push {lr}
    ldr r3, [r5,#0x4c]
    ldrb r0, [r3,#5]
    tst r0, r0
    beq locret_80B2B36
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bpl loc_80B2B34
    mov r0, #0x14
    strh r0, [r5,#0xa]
    mov r0, #3
    ldr r3, [r5,#0x4c]
    strb r0, [r3,#7]
    mov r0, #3
    bl sub_80B2B52
loc_80B2B34:
    mov r0, #1
locret_80B2B36:
    pop {pc}
// end of function sub_80B2B12

.thumb
sub_80B2B38:
    ldrh r0, [r5,#0x36]
    sub r0, #0xd
    strh r0, [r5,#0x36]
    ldr r3, [r5,#0x4c]
    mov r0, #1
    strb r0, [r3,#9]
    mov pc, lr
// end of function sub_80B2B38

.thumb
sub_80B2B46:
    ldr r0, [r5,#0x48]
    str r0, [r5,#0x34]
    ldr r3, [r5,#0x4c]
    mov r0, #0
    strb r0, [r3,#9]
    mov pc, lr
// end of function sub_80B2B46

.thumb
sub_80B2B52:
    push {lr}
    add r2, r0, #0
    mov r0, #0x47 
    mov r1, #0
    bl sub_80540C6
    pop {pc}
off_80B2B60:    .word 0x414
    .word 0x614
    .word 0x514
// end of function sub_80B2B52

.thumb
sub_80B2B6C:
    push {lr}
    ldr r0, [pc, #0x80b2b7c-0x80b2b6e-2] // off_80B2B80
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B2B7C:    .word off_80B2B80
off_80B2B80:    .word sub_80B2B88+1
    .word sub_80B2BE0+1
// end of function sub_80B2B6C

.thumb
sub_80B2B88:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldr r6, [pc, #0x80b2bdc-0x80b2b92-2] // off_80B2B60
    add r6, r6, r3
    mov r0, #0x80
    ldrb r1, [r6]
    ldrb r2, [r6,#1]
    bl sub_800285C
    ldrb r0, [r6,#2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r6,#3]
    bl sub_8002DCC
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    bl loc_8002F8E
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B2BE0
    pop {pc}
    .balign 4, 0x00
off_80B2BDC:    .word off_80B2B60
// end of function sub_80B2B88

.thumb
sub_80B2BE0:
    push {lr}
    bl sub_800283C
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B2BF4
    bl sub_800447A
locret_80B2BF4:
    pop {pc}
    .balign 4, 0x00
loc_80B2BF8:
    push {lr}
    ldr r0, [pc, #0x80b2c08-0x80b2bfa-2] // jt_80B2C0C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B2C08:    .word jt_80B2C0C
jt_80B2C0C:    .word sub_80B2C14+1
    .word sub_80B2C30+1
// end of function sub_80B2BE0

.thumb
sub_80B2C14:
    push {lr}
    mov r0, #9
    strb r0, [r5]
    ldr r0, [pc, #0x80b2ecc-0x80b2c1a-2] // word_200F980
    ldr r1, [pc, #0x80b2ec8-0x80b2c1c-4] // =0xC00
    bl f900_8000930
    ldrb r1, [r5,#4]
    strb r1, [r5,#9]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B2C30
    .byte 0
    .byte 0xBD
// end of function sub_80B2C14

.thumb
sub_80B2C30:
    push {lr}
    ldr r0, [pc, #0x80b2c44-0x80b2c32-2] // jt_80B2C48
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B2C44:    .word jt_80B2C48
jt_80B2C48:    .word sub_80B2CC6+1
    .word sub_80B2C58+1
    .word sub_80B2D28+1
    .word sub_80B2DAE+1
// end of function sub_80B2C30

.thumb
sub_80B2C58:
    push {lr}
    ldr r0, [pc, #0x80b2c70-0x80b2c5a-2] // jt_80B2C74
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov r6, #0x60 
    add r6, r6, r5
    mov lr, pc
    bx r0
    bl sub_80B2E6E
    strb r0, [r5,#7]
    pop {pc}
off_80B2C70:    .word jt_80B2C74
jt_80B2C74:    .word sub_80B2C80+1
    .word sub_80B2C98+1
    .word sub_80B2CB8+1
// end of function sub_80B2C58

.thumb
sub_80B2C80:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    strb r0, [r6,#1]
    strb r0, [r6,#2]
    mov r0, #0xa
    strb r0, [r6,#3]
    mov r0, #0xb4
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B2C80

.thumb
sub_80B2C98:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_80B2CA6
    mov r0, #8
    strh r0, [r5,#0xa]
loc_80B2CA6:
    mov r0, #8
    bl sub_80B2E1E
    ldrb r0, [r6,#3]
    cmp r0, #0x30 
    bge locret_80B2CB6
    add r0, #1
    strb r0, [r6,#3]
locret_80B2CB6:
    pop {pc}
// end of function sub_80B2C98

.thumb
sub_80B2CB8:
    push {lr}
    ldrb r0, [r5,#7]
    tst r0, r0
    bne locret_80B2CC4
    bl sub_800447A
locret_80B2CC4:
    pop {pc}
// end of function sub_80B2CB8

.thumb
sub_80B2CC6:
    push {lr}
    ldr r0, [pc, #0x80b2cdc-0x80b2cc8-4] // off_80B2CE0
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov r6, #0x60 
    add r6, r6, r5
    mov lr, pc
    bx r0
    bl sub_80B2E6E
    pop {pc}
off_80B2CDC:    .word off_80B2CE0
off_80B2CE0:    .word sub_80B2CE8+1
    .word sub_80B2CFC+1
// end of function sub_80B2CC6

.thumb
sub_80B2CE8:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    strb r0, [r6,#1]
    strb r0, [r6,#2]
    mov r0, #0xa
    strb r0, [r6,#3]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B2CE8

.thumb
sub_80B2CFC:
    push {lr}
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    cmp r0, #0xa
    ble loc_80B2D16
    mov r0, #0
    strb r0, [r6,#1]
    ldrb r0, [r6]
    cmp r0, #8
    bge loc_80B2D16
    add r0, #1
    strb r0, [r6]
loc_80B2D16:
    mov r0, #0
    bl sub_80B2E1E
    ldrb r0, [r6,#3]
    cmp r0, #0x30 
    bge locret_80B2D26
    add r0, #1
    strb r0, [r6,#3]
locret_80B2D26:
    pop {pc}
// end of function sub_80B2CFC

.thumb
sub_80B2D28:
    push {lr}
    ldr r0, [pc, #0x80b2d40-0x80b2d2a-2] // jt_80B2D44
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov r6, #0x60 
    add r6, r6, r5
    mov lr, pc
    bx r0
    bl sub_80B2E6E
    strb r0, [r5,#7]
    pop {pc}
off_80B2D40:    .word jt_80B2D44
jt_80B2D44:    .word sub_80B2D50+1
    .word sub_80B2D68+1
    .word sub_80B2DA0+1
// end of function sub_80B2D28

.thumb
sub_80B2D50:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    strb r0, [r6,#1]
    strb r0, [r6,#2]
    mov r0, #0xa
    strb r0, [r6,#3]
    mov r0, #0xff
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B2D50

.thumb
sub_80B2D68:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_80B2D76
    mov r0, #8
    strh r0, [r5,#0xa]
loc_80B2D76:
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    cmp r0, #0xa
    ble loc_80B2D8E
    mov r0, #0
    strb r0, [r6,#1]
    ldrb r0, [r6]
    cmp r0, #8
    bge loc_80B2D8E
    add r0, #1
    strb r0, [r6]
loc_80B2D8E:
    mov r0, #0
    bl sub_80B2E1E
    ldrb r0, [r6,#3]
    cmp r0, #0x30 
    bge locret_80B2D9E
    add r0, #1
    strb r0, [r6,#3]
locret_80B2D9E:
    pop {pc}
// end of function sub_80B2D68

.thumb
sub_80B2DA0:
    push {lr}
    ldrb r0, [r5,#7]
    tst r0, r0
    bne locret_80B2DAC
    bl sub_800447A
locret_80B2DAC:
    pop {pc}
// end of function sub_80B2DA0

.thumb
sub_80B2DAE:
    push {lr}
    ldr r0, [pc, #0x80b2dc8-0x80b2db0-4] // jt_80B2DCC
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov r6, #0x60 
    add r6, r6, r5
    mov lr, pc
    bx r0
    bl sub_80B2E6E
    strb r0, [r5,#7]
    pop {pc}
    .balign 4, 0x00
off_80B2DC8:    .word jt_80B2DCC
jt_80B2DCC:    .word sub_80B2DD8+1
    .word sub_80B2DF0+1
    .word sub_80B2E10+1
// end of function sub_80B2DAE

.thumb
sub_80B2DD8:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    strb r0, [r6,#1]
    strb r0, [r6,#2]
    mov r0, #0xa
    strb r0, [r6,#3]
    mov r0, #0xb4
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B2DD8

.thumb
sub_80B2DF0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_80B2DFE
    mov r0, #8
    strh r0, [r5,#0xa]
loc_80B2DFE:
    mov r0, #4
    bl sub_80B2E1E
    ldrb r0, [r6,#3]
    cmp r0, #0x30 
    bge locret_80B2E0E
    add r0, #1
    strb r0, [r6,#3]
locret_80B2E0E:
    pop {pc}
// end of function sub_80B2DF0

.thumb
sub_80B2E10:
    push {lr}
    ldrb r0, [r5,#7]
    tst r0, r0
    bne locret_80B2E1C
    bl sub_800447A
locret_80B2E1C:
    pop {pc}
// end of function sub_80B2E10

.thumb
sub_80B2E1E:
    push {r4,lr}
    add r4, r0, #0
    ldrb r0, [r6,#2]
    ldrb r1, [r6,#3]
    add r0, r0, r1
    mov r1, #0xf
    and r1, r0
    strb r1, [r6,#2]
    mov r1, #0xf0
    and r0, r1
    beq locret_80B2E48
loc_80B2E34:
    push {r0}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x3c]
    add r3, r4, #0
    bl sub_80B2E4A
    pop {r0}
    sub r0, #0x10
    bne loc_80B2E34
locret_80B2E48:
    pop {r4,pc}
// end of function sub_80B2E1E

.thumb
sub_80B2E4A:
    push {r4,r6,r7,lr}
    ldr r7, [pc, #0x80b2ecc-0x80b2e4c-4] // word_200F980
    mov r6, #0
loc_80B2E50:
    ldrb r4, [r7]
    tst r4, r4
    bne loc_80B2E64
    mov r4, #1
    strh r4, [r7]
    str r0, [r7,#4]
    str r1, [r7,#8]
    str r2, [r7,#0xc]
    strb r3, [r7,#2]
    pop {r4,r6,r7,pc}
loc_80B2E64:
    add r7, #0x20 
    add r6, #1
    cmp r6, #0x60 
    blt loc_80B2E50
    pop {r4,r6,r7,pc}
// end of function sub_80B2E4A

.thumb
sub_80B2E6E:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80b2ecc-0x80b2e70-4] // word_200F980
    mov r6, #0
    mov r4, #0
loc_80B2E76:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80B2E8A
    add r4, #1
    add r5, r7, #0
    ldr r3, [pc, #0x80b2e98-0x80b2e80-4] // off_80B2E9C
    ldrb r2, [r7,#2]
    ldr r0, [r3,r2]
    mov lr, pc
    bx r0
loc_80B2E8A:
    add r7, #0x20 
    add r6, #1
    cmp r6, #0x60 
    blt loc_80B2E76
    add r0, r4, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80B2E98:    .word off_80B2E9C
off_80B2E9C:    .word sub_80B2EA8+1
    .word sub_80B2F42+1
    .word sub_80B2FDA+1
// end of function sub_80B2E6E

.thumb
sub_80B2EA8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80b2ebc-0x80b2eaa-2] // jt_80B2EC0
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80B3052
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80B2EBC:    .word jt_80B2EC0
jt_80B2EC0:    .word sub_80B2ED0+1
    .word sub_80B2F14+1
off_80B2EC8:    .word 0xC00
off_80B2ECC:    .word word_200F980
// end of function sub_80B2EA8

.thumb
sub_80B2ED0:
    push {lr}
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#6]
    add r1, r1, r0
    strh r1, [r5,#6]
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#0xa]
    add r1, r1, r0
    strh r1, [r5,#0xa]
    bl sub_8001AE0
    mov r1, #7
    and r0, r1
    ldr r3, [pc, #0x80b2f10-0x80b2efa-2] // dword_200AB24
    ldr r3, [r3]
    ldrb r1, [r3]
    add r0, r0, r1
    lsl r0, r0, #0x10
    str r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r5,#0x1c]
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
off_80B2F10:    .word dword_200AB24
// end of function sub_80B2ED0

.thumb
sub_80B2F14:
    push {lr}
    ldr r0, [r5,#0x18]
    cmp r0, #0
    bge loc_80B2F26
    ldrb r0, [r5,#0x1c]
    cmp r0, #1
    beq loc_80B2F24
    sub r0, #1
loc_80B2F24:
    strb r0, [r5,#0x1c]
loc_80B2F26:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    str r0, [r5,#0xc]
    mov r2, #2
    lsl r2, r2, #0x10
    sub r1, r1, r2
    str r1, [r5,#0x18]
    cmp r0, #0
    bge locret_80B2F40
    mov r0, #0
    strb r0, [r5]
    str r0, [r5,#0xc]
locret_80B2F40:
    pop {pc}
// end of function sub_80B2F14

.thumb
sub_80B2F42:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80b2f54-0x80b2f44-4] // jt_80B2F58
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80B3052
    pop {r4-r7,pc}
off_80B2F54:    .word jt_80B2F58
jt_80B2F58:    .word sub_80B2F64+1
    .word sub_80B2FA8+1
    .word sub_80B2FC8+1
// end of function sub_80B2F42

.thumb
sub_80B2F64:
    push {lr}
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#6]
    add r1, r1, r0
    strh r1, [r5,#6]
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#0xa]
    add r1, r1, r0
    strh r1, [r5,#0xa]
    ldrh r0, [r5,#0xe]
    add r0, #0x64 
    strh r0, [r5,#0xe]
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    mov r1, #3
    add r0, r0, r1
    neg r0, r0
    lsl r0, r0, #0x10
    str r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r5,#0x1c]
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_80B2F64

.thumb
sub_80B2FA8:
    push {lr}
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    str r0, [r5,#0xc]
    mov r2, #2
    lsl r2, r2, #0x10
    sub r1, r1, r2
    str r1, [r5,#0x18]
    cmp r0, #0
    bge locret_80B2FC6
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#1]
locret_80B2FC6:
    pop {pc}
// end of function sub_80B2FA8

.thumb
sub_80B2FC8:
    push {lr}
    ldrb r0, [r5,#0x1c]
    sub r0, #1
    strb r0, [r5,#0x1c]
    cmp r0, #1
    bne locret_80B2FD8
    mov r0, #0
    strb r0, [r5]
locret_80B2FD8:
    pop {pc}
// end of function sub_80B2FC8

.thumb
sub_80B2FDA:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80b2fec-0x80b2fdc-4] // off_80B2FF0
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80B3052
    pop {r4-r7,pc}
off_80B2FEC:    .word off_80B2FF0
off_80B2FF0:    .word sub_80B2FF8+1
    .word sub_80B3034+1
// end of function sub_80B2FDA

.thumb
sub_80B2FF8:
    push {lr}
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#6]
    add r1, r1, r0
    strh r1, [r5,#6]
    bl sub_8001AE0
    mov r1, #0xf
    and r0, r1
    sub r0, #7
    ldrh r1, [r5,#0xa]
    add r1, r1, r0
    strh r1, [r5,#0xa]
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    mov r1, #3
    add r0, r0, r1
    lsl r0, r0, #0x10
    str r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r5,#0x1c]
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_80B2FF8

.thumb
sub_80B3034:
    push {lr}
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    str r0, [r5,#0xc]
    mov r2, #2
    lsl r2, r2, #0x10
    add r1, r1, r2
    str r1, [r5,#0x18]
    asr r0, r0, #0x10
    cmp r0, #0x64 
    blt locret_80B3050
    mov r0, #0
    strb r0, [r5]
locret_80B3050:
    pop {pc}
// end of function sub_80B3034

.thumb
sub_80B3052:
    push {lr}
    mov r0, #4
    add r0, r0, r5
    bl sub_80035C0
    tst r2, r2
    beq locret_80B308A
    sub r0, #4
    sub r1, #8
    lsl r0, r0, #0x16
    lsr r0, r0, #6
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    orr r0, r1
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0xa
    lsl r1, r1, #0xc
    ldr r2, [pc, #0x80b308c-0x80b3078-4] // =0x200
    ldrb r3, [r5,#0x1c]
    lsl r3, r3, #1
    add r2, r2, r3
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
locret_80B308A:
    pop {pc}
off_80B308C:    .word 0x200
// end of function sub_80B3052

.thumb
sub_80B3090:
    push {lr}
    ldr r0, [pc, #0x80b30a0-0x80b3092-2] // off_80B30A4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B30A0:    .word off_80B30A4
off_80B30A4:    .word sub_80B30AC+1
    .word sub_80B30EA+1
// end of function sub_80B3090

.thumb
sub_80B30AC:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x40 
    bl sub_800285C
    mov r0, #0x1b
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002E8C
    mov r0, #0
    bl sub_8002DCC
    ldrb r0, [r5,#4]
    strb r0, [r5,#9]
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B30EA
    pop {pc}
// end of function sub_80B30AC

.thumb
sub_80B30EA:
    push {lr}
    ldr r0, [pc, #0x80b30f8-0x80b30ec-4] // off_80B30FC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80B30F8:    .word off_80B30FC
off_80B30FC:    .word sub_80B3104+1
    .word sub_80B317E+1
// end of function sub_80B30EA

.thumb
sub_80B3104:
    push {lr}
    ldr r0, [pc, #0x80b3118-0x80b3106-2] // off_80B311C
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80B3118:    .word off_80B311C
off_80B311C:    .word sub_80B3128+1
    .word sub_80B3152+1
    .word sub_80B316E+1
// end of function sub_80B3104

.thumb
sub_80B3128:
    push {lr}
    ldrb r0, [r5,#5]
    add r1, r0, #0
    lsl r1, r1, #5
    orr r0, r1
    lsl r1, r1, #5
    orr r0, r1
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
    bl sub_8002F02
    ldrh r0, [r5,#0x3e]
    add r0, #0x64 
    strh r0, [r5,#0x3e]
    mov r0, #6
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B3128

.thumb
sub_80B3152:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    sub r0, r0, r1
    str r0, [r5,#0x3c]
    cmp r0, #0
    bpl locret_80B316C
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #8
    strb r0, [r5,#0xa]
locret_80B316C:
    pop {pc}
// end of function sub_80B3152

.thumb
sub_80B316E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B317C
    bl sub_800447A
locret_80B317C:
    pop {pc}
// end of function sub_80B316E

.thumb
sub_80B317E:
    push {lr}
    ldr r0, [pc, #0x80b3190-0x80b3180-4] // off_80B3194
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_80B3190:    .word off_80B3194
off_80B3194:    .word sub_80B31A0+1
    .word sub_80B31C4+1
    .word sub_80B31DC+1
// end of function sub_80B317E

.thumb
sub_80B31A0:
    push {lr}
    ldrb r0, [r5,#5]
    add r1, r0, #0
    lsl r1, r1, #5
    orr r0, r1
    lsl r1, r1, #5
    orr r0, r1
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
    bl sub_8002F02
    mov r0, #6
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B31A0

.thumb
sub_80B31C4:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    cmp r0, #0
    bpl locret_80B31DA
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xa]
locret_80B31DA:
    pop {pc}
// end of function sub_80B31C4

.thumb
sub_80B31DC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B31EA
    bl sub_800447A
locret_80B31EA:
    pop {pc}
// end of function sub_80B31DC

.thumb
sub_80B31EC:
    lsr r0, r0, #0x10
    lsr r6, r0, #0x10
    asr r1, r0, #4
    asr r1, r4, #4
    lsr r1, r0, #0x10
    lsr r7, r0, #0x10
    asr r2, r0, #4
    asr r2, r4, #4
    lsr r2, r0, #0x10
    lsr r0, r1, #0x10
    asr r3, r0, #4
    asr r3, r4, #4
    lsr r3, r0, #0x10
    lsr r1, r1, #0x10
    asr r4, r0, #4
    asr r4, r4, #4
    lsr r4, r0, #0x10
    lsr r2, r1, #0x10
    asr r5, r0, #4
    asr r5, r4, #4
    lsr r5, r0, #0x10
    lsr r3, r1, #0x10
    asr r6, r0, #4
    asr r6, r4, #4
loc_80B321C:
    push {lr}
    ldr r7, [pc, #0x80b3250-0x80b321e-2] // sub_80B31EC
    mov r0, #8
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80b3234-0x80b3228-4] // off_80B3238
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80B3234:    .word off_80B3238
off_80B3238:    .word sub_80B3254+1
    .word sub_80B32DE+1
    .word 0x0
    .word sub_80B32E6+1
    .word sub_80B3314+1
    .word sub_80B3340+1
off_80B3250:    .word sub_80B31EC
// end of function sub_80B31EC

.thumb
sub_80B3254:
    push {lr}
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B32C4
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x68 
    bl sub_800285C
    ldrb r0, [r5,#6]
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DCC
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B329C
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B32DE
    pop {pc}
loc_80B329C:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0xc
    strb r0, [r5,#8]
    ldrh r0, [r7,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    bl sub_80B32E6
    pop {pc}
loc_80B32C4:
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0x14
    strb r0, [r5,#8]
    bl sub_80B3340
    pop {pc}
// end of function sub_80B3254

.thumb
sub_80B32DE:
    push {lr}
    bl sub_800283C
// end of function sub_80B32DE

    pop {pc}
.thumb
sub_80B32E6:
    push {lr}
    bl sub_8005B5C
    beq loc_80B3308
    ldr r0, [pc, #0x80b3310-0x80b32ee-2] // =0x1AC
    bl f500_8000558
    ldrb r0, [r5,#5]
    add r0, #4
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x10
    strb r0, [r5,#8]
loc_80B3308:
    bl sub_800283C
// end of function sub_80B32E6

    pop {pc}
    .byte 0, 0
dword_80B3310:    .word 0x1AE
.thumb
sub_80B3314:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B332C
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    bl sub_800447A
    b loc_80B3336
loc_80B332C:
    cmp r0, #1
    bne loc_80B3336
    ldr r0, [pc, #0x80b333c-0x80b3330-4] // =0x10F
    bl f500_8000558
loc_80B3336:
    bl sub_800283C
// end of function sub_80B3314

    pop {pc}
dword_80B333C:    .word 0x10F
.thumb
sub_80B3340:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B3340

.thumb
sub_80B3348:
    lsr r4, r1, #0xf
    asr r0, r0, #4
    asr r0, r4, #4
    lsr r5, r1, #0xf
    asr r0, r0, #4
    asr r0, r4, #4
    lsr r6, r1, #0xf
    asr r1, r0, #4
    asr r1, r4, #4
loc_80B335A:
    push {lr}
    ldr r7, [pc, #0x80b3388-0x80b335c-4] // sub_80B3348
    mov r0, #6
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80b3374-0x80b3366-2] // off_80B3378
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B3374:    .word off_80B3378
off_80B3378:    .word sub_80B338C+1
    .word sub_80B33E4+1
    .word sub_80B3412+1
    .word sub_80B342E+1
off_80B3388:    .word sub_80B3348
// end of function sub_80B3348

.thumb
sub_80B338C:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80B33CA
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x5e 
    bl sub_800285C
    ldrb r0, [r5,#6]
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DCC
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B33E4
    pop {pc}
loc_80B33CA:
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80B342E
    pop {pc}
// end of function sub_80B338C

.thumb
sub_80B33E4:
    push {lr}
    ldrh r0, [r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80B340C
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrb r0, [r5,#5]
    add r0, #4
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #8
    strb r0, [r5,#8]
loc_80B340C:
    bl sub_800283C
    pop {pc}
// end of function sub_80B33E4

.thumb
sub_80B3412:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B3428
    ldrh r0, [r7,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    bl sub_800447A
loc_80B3428:
    bl sub_800283C
    pop {pc}
// end of function sub_80B3412

.thumb
sub_80B342E:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B342E

.thumb
sub_80B3438:
    push {lr}
    ldr r0, [pc, #0x80b3448-0x80b343a-2] // jt_80B344C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B3448:    .word jt_80B344C
jt_80B344C:    .word sub_80B3458+1
    .word sub_80B3486+1
    .word sub_80B349A+1
// end of function sub_80B3438

.thumb
sub_80B3458:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x14
    mov r2, #2
    bl sub_800285C
    ldrb r0, [r5,#5]
    bl sub_8002E60
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B3486
    pop {pc}
// end of function sub_80B3458

.thumb
sub_80B3486:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B3494
    bl sub_800447A
loc_80B3494:
    bl sub_800283C
// end of function sub_80B3486

    pop {pc}
.thumb
sub_80B349A:
    push {lr}
    bl sub_800447A
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B349A

.thumb
sub_80B34A4:
    push {lr}
    ldr r0, [pc, #0x80b34b4-0x80b34a6-2] // jt_80B34B8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B34B4:    .word jt_80B34B8
jt_80B34B8:    .word sub_80B34C4+1
    .word sub_80B34F8+1
    .word sub_80B350C+1
// end of function sub_80B34A4

.thumb
sub_80B34C4:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x4d 
    bl sub_800285C
    add r0, r5, #0
    add r0, #0x34 
    bl ho_802747C
    bl sub_8002E60
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B34F8
    pop {pc}
// end of function sub_80B34C4

.thumb
sub_80B34F8:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_80B3506
    bl sub_800447A
loc_80B3506:
    bl sub_800283C
// end of function sub_80B34F8

    pop {pc}
.thumb
sub_80B350C:
    push {lr}
    bl sub_800447A
    pop {pc}
// end of function sub_80B350C

.thumb
sub_80B3514:
    push {lr}
    bl loc_80EAD80
    pop {pc}
// end of function sub_80B3514

.thumb
sub_80B351C:
    push {lr}
    ldr r1, [pc, #0x80b3530-0x80b351e-2] // off_80B3534
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80B3530:    .word off_80B3534
off_80B3534:    .word sub_80B3540+1
    .word sub_80B359A+1
    .word sub_80104D8+1
// end of function sub_80B351C

.thumb
sub_80B3540:
    push {lr}
    mov r0, #0x80
    mov r1, #0
    mov r2, #0
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0
    bl sub_8002DCC
    mov r0, #0x14
    strh r0, [r5,#0x2c]
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B3582
    bl sub_80033B4
    b locret_80B3598
loc_80B3582:
    mov r1, #1
    mov r2, #2
    mov r3, #0x21 
    bl sub_8012958
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B359A
locret_80B3598:
    pop {pc}
// end of function sub_80B3540

.thumb
sub_80B359A:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b35ac-0x80b35a0-4] // jt_80B35B0
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80B35AC:    .word jt_80B35B0
jt_80B35B0:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word sub_80B35CC+1
// end of function sub_80B359A

.thumb
sub_80B35CC:
    push {lr}
    pop {pc}
// end of function sub_80B35CC

.thumb
sub_80B35D0:
    push {lr}
    ldr r1, [pc, #0x80b35e4-0x80b35d2-2] // jt_80B35E8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80B35E4:    .word jt_80B35E8
jt_80B35E8:    .word sub_80B35F4+1
    .word sub_80B3650+1
    .word sub_80104D8+1
// end of function sub_80B35D0

.thumb
sub_80B35F4:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #1
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B362E
    bl sub_80033B4
    b locret_80B364A
loc_80B362E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    ldr r0, [pc, #0x80b364c-0x80b363c-4] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80B3650
locret_80B364A:
    pop {pc}
off_80B364C:    .word unk_2000000
// end of function sub_80B35F4

.thumb
sub_80B3650:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80b3664-0x80b3656-2] // jt_80B3668
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B3664:    .word jt_80B3668
jt_80B3668:    .word sub_800FC58+1
    .word sub_80B3694+1
    .word sub_80B36AA+1
    .word nullsub_59+1
    .word sub_80B36BC+1
    .word sub_80B36DE+1
    .word sub_80B36F0+1
    .word sub_80B38C4+1
    .word sub_80B38EC+1
    .word sub_80B39C6+1
    .word sub_80B3B6E+1
// end of function sub_80B3650

.thumb
sub_80B3694:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B36A4
    bl sub_8007EEC
    mov r0, #0
    strb r0, [r5,#7]
loc_80B36A4:
    bl sub_80100E6
    pop {pc}
// end of function sub_80B3694

.thumb
sub_80B36AA:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B36B6
    bl sub_8007F16
loc_80B36B6:
    bl sub_80100F8
    pop {pc}
// end of function sub_80B36AA

.thumb
sub_80B36BC:
    push {lr}
    bl sub_8010458
    ldrb r0, [r5,#9]
    cmp r0, #6
    bne locret_80B36DC
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq locret_80B36DC
    bl sub_8007F16
    bl sub_8007EEC
    mov r0, #0
    str r0, [r5,#0x60]
    strb r0, [r5,#7]
locret_80B36DC:
    pop {pc}
// end of function sub_80B36BC

.thumb
sub_80B36DE:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B36EA
    mov r0, #0
    strb r0, [r5,#7]
loc_80B36EA:
    bl sub_8010568
    pop {pc}
// end of function sub_80B36DE

.thumb
sub_80B36F0:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80B3702
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B3710
loc_80B3702:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b3714-0x80b3708-4] // off_80B3718
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80B3710:
    pop {r6,pc}
    .balign 4, 0x00
off_80B3714:    .word off_80B3718
off_80B3718:    .word sub_80B3724+1
    .word sub_80B3794+1
    .word loc_80B37C2+1
// end of function sub_80B36F0

.thumb
sub_80B3724:
    push {lr}
    bl sub_8007ED4
    tst r0, r0
    bne loc_80B373E
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq locret_80B378C
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80B378C
loc_80B373E:
    ldrb r0, [r5,#7]
    cmp r0, #0
    bne loc_80B3754
    mov r0, #0x1e
    strb r0, [r5,#7]
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80B378C
loc_80B3754:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne locret_80B378C
    ldr r1, [pc, #0x80b3790-0x80b3760-4] // =0xA000
    tst r0, r1
    beq loc_80B3770
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B378C
loc_80B3770:
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_80B3784
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B378C
loc_80B3784:
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B378C:
    pop {pc}
    .byte 0, 0
dword_80B3790:    .word 0xA000
// end of function sub_80B3724

.thumb
sub_80B3794:
    push {lr}
    bl sub_80B3834
    tst r0, r0
    bne loc_80B37A8
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80B37B8
loc_80B37A8:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B38EC
loc_80B37B8:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B3794

loc_80B37C2:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b37d0-0x80b37c6-2] // off_80B37D4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_80B37D0:    .word off_80B37D4
off_80B37D4:    .word sub_80B37DC+1
    .word sub_80B37FC+1
.thumb
sub_80B37DC:
    push {lr}
    bl sub_80B3860
    tst r0, r0
    beq loc_80B37F6
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B38EC
loc_80B37F6:
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B37DC

.thumb
sub_80B37FC:
    push {lr}
    ldrb r0, [r6,#3]
    cmp r0, #0
    bne loc_80B3822
    mov r0, #1
    strb r0, [r6,#3]
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #2
    bge loc_80B381E
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80B382A
loc_80B381E:
    mov r0, #0x32 
    strh r0, [r5,#0x20]
loc_80B3822:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3832
loc_80B382A:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80B3832:
    pop {pc}
// end of function sub_80B37FC

.thumb
sub_80B3834:
    push {r4,r6,lr}
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    blt loc_80B3844
    add r1, #1
    b loc_80B3846
loc_80B3844:
    sub r1, #1
loc_80B3846:
    ldrb r0, [r5,#0x12]
    add r4, r0, #0
    add r6, r1, #0
    ldr r3, [pc, #0x80b3898-0x80b384c-4] // dword_80B389C
    bl sub_80B38B4
    bl sub_8009E78
    cmp r0, #0
    beq locret_80B385E
    add r0, r4, #0
    add r1, r6, #0
locret_80B385E:
    pop {r4,r6,pc}
// end of function sub_80B3834

.thumb
sub_80B3860:
    push {r4,r6,r7,lr}
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    ldr r4, [pc, #0x80b38ac-0x80b386a-2] // dword_80B38B0
    add r4, r4, r0
loc_80B386E:
    mov r0, #0
    ldrsb r0, [r4,r0]
    add r4, #1
    cmp r0, #0
    beq locret_80B3894
    ldrb r1, [r5,#0x13]
    add r1, r1, r0
    ldrb r0, [r5,#0x12]
    ldr r3, [pc, #0x80b3898-0x80b387e-2] // dword_80B389C
    bl sub_80B38B4
    add r6, r0, #0
    add r7, r1, #0
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B386E
    add r0, r6, #0
    add r1, r7, #0
locret_80B3894:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80B3898:    .word dword_80B389C
dword_80B389C:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
off_80B38AC:    .word dword_80B38B0
dword_80B38B0:    .word 0x1FF01
// end of function sub_80B3860

.thumb
sub_80B38B4:
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #3
    add r3, r3, r2
    ldr r2, [r3]
    add r3, #4
    ldr r3, [r3]
    mov pc, lr
    .balign 4, 0x00
// end of function sub_80B38B4

.thumb
sub_80B38C4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B38EA
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80B38E2
    bl sub_8007F16
    bl sub_8007EEC
    mov r0, #0
    str r0, [r5,#0x60]
    strb r0, [r5,#7]
loc_80B38E2:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B38EA:
    pop {pc}
// end of function sub_80B38C4

.thumb
sub_80B38EC:
    push {r6,lr}
    ldr r1, [pc, #0x80b38fc-0x80b38ee-2] // jt_80B3900
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B38FC:    .word jt_80B3900
jt_80B3900:    .word sub_80B3910+1
    .word sub_80B3954+1
    .word sub_80B397C+1
    .word sub_80B39AE+1
// end of function sub_80B38EC

.thumb
sub_80B3910:
    push {r4,r6,r7,lr}
    bl sub_800ACF6
    beq loc_80B394A
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #8
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B3952
loc_80B394A:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B3952:
    pop {r4,r6,r7,pc}
// end of function sub_80B3910

.thumb
sub_80B3954:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B397A
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B397A:
    pop {pc}
// end of function sub_80B3954

.thumb
sub_80B397C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B39A0
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b39a4-0x80b3996-2] // dword_80B39A8
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B39A0:
    pop {pc}
    .balign 4, 0x00
off_80B39A4:    .word dword_80B39A8
dword_80B39A8:    .word 0x1E1E2828
    .hword 0x1414
// end of function sub_80B397C

.thumb
sub_80B39AE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B39C4
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B39C4:
    pop {pc}
// end of function sub_80B39AE

.thumb
sub_80B39C6:
    push {r6,lr}
    ldr r1, [pc, #0x80b39d4-0x80b39c8-4] // jt_80B39D8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B39D4:    .word jt_80B39D8
jt_80B39D8:    .word sub_80B39E8+1
    .word sub_80B3AA8+1
    .word sub_80B3AC6+1
    .word sub_80B3B3E+1
// end of function sub_80B39C6

.thumb
sub_80B39E8:
    push {lr}
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80B3A26
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x70 
    bne loc_80B3A08
    bl sub_80B3BEA
    cmp r0, #0
    bne loc_80B3A2C
    b loc_80B3A26
loc_80B3A08:
    bl sub_8007BB4
    ldr r1, [pc, #0x80b3aa4-0x80b3a0c-4] // =0x12C
    cmp r0, r1
    blt loc_80B3A26
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x85
    beq loc_80B3A66
    cmp r0, #0x81
    beq loc_80B3A72
    cmp r0, #0xd0
    beq loc_80B3A7C
    b loc_80B3A26
loc_80B3A26:
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B3A2A:
    pop {pc}
loc_80B3A2C:
    push {r4,r5,r7}
    add r5, r0, #0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x96
    bl sub_800AB96
    pop {r4,r5,r7}
    mov r0, #0x9a
    bl f500_8000558
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r1, #0
    mov r2, #0
    mov r3, #1
    bl sub_8016408
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B3A2A
loc_80B3A66:
    mov r0, #6
    bl sub_80B3C56
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B3A2A
loc_80B3A72:
    bl sub_80BE5B0
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B3A2A
loc_80B3A7C:
    push {r4,r6,r7}
    bl sub_80B54E4
    mov r3, #0x2a 
    add r3, r3, r5
    bl sub_80E44DE
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    pop {r4,r6,r7}
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B3A2A
    .balign 4, 0x00
off_80B3AA4:    .word 0x12C
// end of function sub_80B39E8

.thumb
sub_80B3AA8:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B3AB8
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
loc_80B3AB8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3AC4
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B3AC4:
    pop {pc}
// end of function sub_80B3AA8

.thumb
sub_80B3AC6:
    push {r4,r6,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B3ADE
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0x40 
    strh r0, [r5,#0x20]
loc_80B3ADE:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x32 
    bne loc_80B3AEC
    mov r0, #0x14
    bl sub_800AF88
    b loc_80B3B16
loc_80B3AEC:
    cmp r0, #0x1b
    bne loc_80B3B16
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x80b3b28-0x80b3af2-2] // dword_80B3B2C
    ldrb r6, [r3,r0]
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80b3b34-0x80b3af8-4] // dword_80B3B38
    ldrb r0, [r3,r0]
    orr r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    ldrb r4, [r5,#4]
    add r4, #0
    bl sub_80CFC1A
    mov r0, #1
    str r0, [r5,#0x60]
loc_80B3B16:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3B26
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B3B26:
    pop {r4,r6,pc}
off_80B3B28:    .word dword_80B3B2C
dword_80B3B2C:    .word 0x1E1E1E1E, 0x1E1E
off_80B3B34:    .word dword_80B3B38
dword_80B3B38:    .word 0x7850280A
    .hword 0xC8A0
// end of function sub_80B3AC6

.thumb
sub_80B3B3E:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B3B4E
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
loc_80B3B4E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3B6C
    bl sub_8007F16
    bl sub_8007EEC
    mov r0, #0
    str r0, [r5,#0x60]
    strb r0, [r5,#7]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B3B6C:
    pop {pc}
// end of function sub_80B3B3E

.thumb
sub_80B3B6E:
    push {r6,lr}
    ldr r1, [pc, #0x80b3b7c-0x80b3b70-4] // jt_80B3B80
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B3B7C:    .word jt_80B3B80
jt_80B3B80:    .word sub_80B3B8C+1
    .word loc_80B3BB8+1
    .word sub_80B3BD6+1
// end of function sub_80B3B6E

.thumb
sub_80B3B8C:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B3BA0
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0x22 
    strh r0, [r5,#0x20]
loc_80B3BA0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3BD4
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012F36
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
loc_80B3BB8:
    push {lr}
    bl sub_8007ED4
    tst r0, r0
    beq locret_80B3BD4
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x35 
    strh r0, [r5,#0x20]
    mov r0, #1
    bl sub_8012F40
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B3BD4:
    pop {pc}
// end of function sub_80B3B8C

.thumb
sub_80B3BD6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B3BE8
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B3BE8:
    pop {pc}
// end of function sub_80B3BD6

.thumb
sub_80B3BEA:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x24]
    lsr r0, r0, #2
    cmp r1, r0
    bgt loc_80B3BFA
    add r0, r5, #0
    b locret_80B3C54
loc_80B3BFA:
    mov r2, r10
    ldr r2, [r2,#0x18]
    add r2, #0x48 
    mov r3, #0
    mov r4, #0
loc_80B3C04:
    ldr r6, [r2,r3]
    cmp r6, #0
    beq loc_80B3C22
    ldrb r0, [r6]
    cmp r0, #0
    beq loc_80B3C22
    ldrh r0, [r6,#0x26]
    ldrh r1, [r6,#0x24]
    cmp r1, #0
    beq loc_80B3C22
    lsr r0, r0, #2
    cmp r1, r0
    bgt loc_80B3C22
    add r4, #1
    push {r1,r6}
loc_80B3C22:
    add r3, #4
    cmp r3, #0x10
    blt loc_80B3C04
    cmp r4, #0
    beq loc_80B3C52
    mov r6, #0
    sub r6, #1
loc_80B3C30:
    pop {r0,r1}
    cmp r0, r6
    blt loc_80B3C4A
    bgt loc_80B3C46
    push {r0,r1}
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    pop {r0,r1}
    beq loc_80B3C4A
loc_80B3C46:
    add r6, r0, #0
    add r7, r1, #0
loc_80B3C4A:
    sub r4, #1
    bne loc_80B3C30
    add r0, r7, #0
    b locret_80B3C54
loc_80B3C52:
    mov r0, #0
locret_80B3C54:
    pop {r4,r6,r7,pc}
// end of function sub_80B3BEA

.thumb
sub_80B3C56:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #0x3c 
    mul r4, r0
    mov r6, #0
    ldrh r7, [r5,#0x2a]
    bl sub_80E89B2
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    pop {r4,r6,r7,pc}
    .byte 0, 0
// end of function sub_80B3C56

.thumb
sub_80B3C80:
    push {lr}
    ldr r1, [pc, #0x80b3c94-0x80b3c82-2] // off_80B3C98
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B3C94:    .word off_80B3C98
off_80B3C98:    .word sub_80B3CA4+1
    .word sub_80B3D0A+1
    .word sub_8010F0C+1
// end of function sub_80B3C80

.thumb
sub_80B3CA4:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #8
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800283C
    mov r0, #8
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    mov r4, #0
    bl sub_80CCE28
    str r0, [r5,#0x74]
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80B3CF6
    bl sub_80033B4
    b locret_80B3D08
loc_80B3CF6:
    mov r1, #1
    mov r2, #2
    mov r3, #0x21 
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B3D0A
locret_80B3D08:
    pop {r4,r7,pc}
// end of function sub_80B3CA4

.thumb
sub_80B3D0A:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b3d1c-0x80b3d10-4] // jt_80B3D20
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80B3D1C:    .word jt_80B3D20
jt_80B3D20:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word sub_80B3D50+1
    .word sub_80EE616+1
    .word sub_80EDBF2+1
    .word loc_80F2FA8+1
    .word loc_80F30A2+1
    .word loc_80F316C+1
// end of function sub_80B3D0A

.thumb
sub_80B3D50:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    add r6, #0x64 
    ldr r1, [pc, #0x80b3d68-0x80b3d5a-2] // off_80B3D6C
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80B3D68:    .word off_80B3D6C
off_80B3D6C:    .word sub_80B3D88+1
    .word sub_80B3E84+1
    .word sub_80B3F4C+1
    .word sub_80B3FCC+1
    .word sub_80B40AA+1
    .word sub_80B40C0+1
    .word sub_80B406C+1
// end of function sub_80B3D50

.thumb
sub_80B3D88:
    push {lr}
    ldr r1, [pc, #0x80b3d98-0x80b3d8a-2] // off_80B3D9C
    ldrb r0, [r6,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B3D98:    .word off_80B3D9C
off_80B3D9C:    .word sub_80B3DA8+1
    .word sub_80B3E14+1
    .word sub_80B3E70+1
// end of function sub_80B3D88

.thumb
sub_80B3DA8:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #3
    bge loc_80B3DE4
    add r0, #1
    strb r0, [r6,#9]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B3DCA
    mov r0, #0x10
    str r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B3E0C
loc_80B3DCA:
    ldr r1, [pc, #0x80b3e10-0x80b3dca-2] // =0xA000
    tst r0, r1
    beq loc_80B3DDA
    mov r0, #0x18
    str r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B3E0C
loc_80B3DDA:
    mov r0, #0x14
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B3E0C
loc_80B3DE4:
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #1
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    ble loc_80B3E00
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#8]
    b locret_80B3E0C
loc_80B3E00:
    mov r0, #4
    strb r0, [r6,#1]
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80B3E0C:
    pop {pc}
    .byte 0, 0
dword_80B3E10:    .word 0xA000
// end of function sub_80B3DA8

.thumb
sub_80B3E14:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    bl sub_8001AE0
    mov r1, #7
    and r0, r1
    ldrb r1, [r5,#4]
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x80b3e4c-0x80b3e28-4] // dword_80B3E50
    ldrb r0, [r1,r0]
    tst r0, r0
    bne loc_80B3E3E
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B3E3E:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#8]
    pop {pc}
off_80B3E4C:    .word dword_80B3E50
dword_80B3E50:    .word 0x0
    .word 0x1010000, 0x0
    .word 0x1010100, 0x0
    .word 0x1010101, 0x0
// end of function sub_80B3E14

    lsl r1, r0, #4
    lsl r1, r0, #4
.thumb
sub_80B3E70:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B3E70

.thumb
sub_80B3E84:
    push {lr}
    ldr r1, [pc, #0x80b3e94-0x80b3e86-2] // off_80B3E98
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B3E94:    .word off_80B3E98
off_80B3E98:    .word sub_80B3EA4+1
    .word sub_80B3EE6+1
    .word sub_80B3F20+1
// end of function sub_80B3E84

.thumb
sub_80B3EA4:
    push {lr}
    ldrb r0, [r6,#3]
    tst r0, r0
    bne loc_80B3ED0
    mov r0, #4
    strb r0, [r6,#3]
    bl sub_80405D8
    beq loc_80B3EC4
    ldrb r0, [r6,#8]
    tst r0, r0
    beq loc_80B3EC4
    ldrh r0, [r5,#0x12]
    strh r0, [r7,#0x16]
    ldr r0, [pc, #0x80b40ec-0x80b3ec0-4] // loc_80EF498+1
    b loc_80B3EC6
loc_80B3EC4:
    ldr r0, [pc, #0x80b40f0-0x80b3ec4-4] // dword_80F32A4
loc_80B3EC6:
    str r0, [r7,#0x1c]
    mov r0, #8
    bl sub_800C960
    b locret_80B3EE4
loc_80B3ED0:
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    bne loc_80B3EE0
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B3EE0:
    mov r0, #4
    strh r0, [r6,#2]
locret_80B3EE4:
    pop {pc}
// end of function sub_80B3EA4

.thumb
sub_80B3EE6:
    push {lr}
    mov r0, #7
    add r0, r0, r5
    str r0, [r7,#0x20]
    bl sub_80405D8
    beq loc_80B3EF8
    mov r0, #4
    b loc_80B3EFA
loc_80B3EF8:
    ldrb r0, [r5,#4]
loc_80B3EFA:
    strb r0, [r7,#0xc]
    ldr r1, [pc, #0x80b3f14-0x80b3efc-4] // dword_80B3F18
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #9
    bl sub_800C960
    mov r0, #8
    strh r0, [r6,#2]
    pop {pc}
    .balign 4, 0x00
off_80B3F14:    .word dword_80B3F18
dword_80B3F18:    .word 0xC8785014, 0x14
// end of function sub_80B3EE6

.thumb
sub_80B3F20:
    push {lr}
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80b3f44-0x80b3f2a-2] // loc_80B3F48
    ldrb r1, [r1,r2]
    cmp r0, r1
    bge loc_80B3F38
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B3F38:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
    .balign 4, 0x00
off_80B3F44:    .word loc_80B3F48
// end of function sub_80B3F20

loc_80B3F48:
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
.thumb
sub_80B3F4C:
    push {lr}
    ldr r1, [pc, #0x80b3f5c-0x80b3f4e-2] // off_80B3F60
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B3F5C:    .word off_80B3F60
off_80B3F60:    .word sub_80B3F68+1
    .word sub_80B3F7E+1
// end of function sub_80B3F4C

.thumb
sub_80B3F68:
    push {lr}
    ldr r0, [pc, #0x80b40f4-0x80b3f6a-2] // dword_80F32A4
    str r0, [r7,#0x1c]
    mov r0, #0
    strh r0, [r7,#0x18]
    mov r0, #8
    bl sub_800C960
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B3F68

.thumb
sub_80B3F7E:
    push {lr}
    bl sub_8001AF6
    mov r1, #3
    and r1, r0
    ldrb r0, [r5,#4]
    lsl r2, r0, #2
    add r1, r1, r2
    ldr r2, [pc, #0x80b3fb4-0x80b3f8e-2] // off_80B3FBC
    ldrb r1, [r2,r1]
    strb r1, [r7,#0xc]
    strb r0, [r7,#0xd]
    ldr r1, [pc, #0x80b3fb0-0x80b3f96-2] // dword_80B3FB8
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #0xa
    bl sub_800C960
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
off_80B3FB0:    .word dword_80B3FB8
off_80B3FB4:    .word off_80B3FBC
dword_80B3FB8:    .word 0xC8785014
off_80B3FBC:    .word unk_2010000
    .word unk_2010000
    .word unk_2010000
    .word unk_2010000
// end of function sub_80B3F7E

.thumb
sub_80B3FCC:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b3fdc-0x80b3fd0-4] // off_80B3FE0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B3FDC:    .word off_80B3FE0
off_80B3FE0:    .word sub_80B3FEC+1
    .word sub_80B401E+1
    .word sub_80B4040+1
// end of function sub_80B3FCC

.thumb
sub_80B3FEC:
    push {lr}
    ldrb r0, [r6,#3]
    tst r0, r0
    bne loc_80B4008
    mov r0, #4
    strb r0, [r6,#3]
    ldr r0, [pc, #0x80b40f8-0x80b3ff8-4] // =0x80F346C
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #8
    bl sub_800C960
    b locret_80B401C
loc_80B4008:
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    bne loc_80B4018
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B4018:
    mov r0, #4
    strh r0, [r6,#2]
locret_80B401C:
    pop {pc}
// end of function sub_80B3FEC

.thumb
sub_80B401E:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b4038-0x80b4022-2] // dword_80B403C
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0x32 
    strh r0, [r7,#0xa]
    mov r0, #0xb
    bl sub_800C960
    mov r0, #8
    strh r0, [r6,#2]
    pop {pc}
off_80B4038:    .word dword_80B403C
dword_80B403C:    .word 0x3C321E0A
// end of function sub_80B401E

.thumb
sub_80B4040:
    push {lr}
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80b4064-0x80b404a-2] // dword_80B4068
    ldrb r1, [r1,r2]
    cmp r0, r1
    bge loc_80B4058
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B4058:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
    .balign 4, 0x00
off_80B4064:    .word dword_80B4068
dword_80B4068:    .word 0x3030201
// end of function sub_80B4040

.thumb
sub_80B406C:
    push {lr}
    ldrb r0, [r6,#2]
    tst r0, r0
    bne loc_80B4080
    mov r0, #3
    strb r0, [r6,#8]
    mov r0, #0
    strb r0, [r7,#0x1a]
    mov r0, #4
    strb r0, [r6,#2]
loc_80B4080:
    ldrb r0, [r6,#8]
    sub r0, #1
    strb r0, [r6,#8]
    blt loc_80B408E
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    bne loc_80B4098
loc_80B408E:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
loc_80B4098:
    ldr r0, [pc, #0x80b40fc-0x80b4098-4] // sub_80F3246+1
    str r0, [r7,#0x1c]
    bl sub_80B40DC
    strb r0, [r7,#0x18]
    mov r0, #8
    bl sub_800C960
    pop {pc}
// end of function sub_80B406C

.thumb
sub_80B40AA:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x3c 
    strh r0, [r7,#0x10]
    mov r0, #7
    bl sub_800C960
    pop {pc}
// end of function sub_80B40AA

.thumb
sub_80B40C0:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    ldr r0, [pc, #0x80b4100-0x80b40ca-2] // sub_80F3246+1
    str r0, [r7,#0x1c]
    bl sub_80B40DC
    strb r0, [r7,#0x18]
    mov r0, #8
    bl sub_800C960
    pop {pc}
// end of function sub_80B40C0

.thumb
sub_80B40DC:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b40e4-0x80b40de-2] // dword_80B40E8
    ldrb r0, [r1,r0]
    mov pc, lr
off_80B40E4:    .word dword_80B40E8
dword_80B40E8:    .word 0x10161A1E
off_80B40EC:    .word loc_80EF498+1
dword_80B40F0:    .word 0x80F32B5
dword_80B40F4:    .word 0x80F338D
dword_80B40F8:    .word 0x80F346D
off_80B40FC:    .word sub_80F3246+1
off_80B4100:    .word sub_80F3246+1
// end of function sub_80B40DC

.thumb
sub_80B4104:
    push {lr}
    ldr r1, [pc, #0x80b4118-0x80b4106-2] // off_80B411C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B4118:    .word off_80B411C
off_80B411C:    .word sub_80B4128+1
    .word sub_80B4186+1
    .word sub_8010F0C+1
// end of function sub_80B4104

.thumb
sub_80B4128:
    push {lr}
    mov r1, #8
    mov r2, #0x10
    mov r0, #0x80
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80B4150
    mov r0, #6
loc_80B4150:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B416A
    bl sub_80033B4
    b locret_80B4184
loc_80B416A:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
locret_80B4184:
    pop {pc}
// end of function sub_80B4128

.thumb
sub_80B4186:
    push {lr}
    ldrb r0, [r5,#9]
    cmp r0, #0xc
    bne loc_80B4194
    bl sub_8013604
    b loc_80B4198
loc_80B4194:
    bl sub_8013548
loc_80B4198:
    ldrb r0, [r5,#9]
    cmp r0, #2
    beq loc_80B41A2
    bl sub_80B468C
loc_80B41A2:
    bl sub_80B4622
    ldr r0, [pc, #0x80b41b4-0x80b41a6-2] // jt_80B41B8
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B41B4:    .word jt_80B41B8
jt_80B41B8:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80B41EC+1
    .word sub_8010EB4+1
    .word sub_80B4202+1
    .word sub_80B4218+1
    .word sub_80B479C+1
    .word sub_80B4788+1
    .word sub_80B48BC+1
    .word sub_80B4AB4+1
    .word sub_80B4C30+1
    .word sub_80B4D9E+1
// end of function sub_80B4186

.thumb
sub_80B41EC:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B41FC
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
loc_80B41FC:
    bl sub_8010E34
    pop {pc}
// end of function sub_80B41EC

.thumb
sub_80B4202:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B4212
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
loc_80B4212:
    bl ho_8010F5A
    pop {pc}
// end of function sub_80B4202

.thumb
sub_80B4218:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b422c-0x80b4220-4] // jt_80B4230
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80B422C:    .word jt_80B4230
jt_80B4230:    .word sub_80B4248+1
    .word sub_80B42F8+1
    .word sub_80B4326+1
    .word sub_80B435A+1
    .word sub_80B437A+1
    .word sub_80B43B2+1
// end of function sub_80B4218

.thumb
sub_80B4248:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80b4258-0x80b424c-4] // off_80B425C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B4258:    .word off_80B425C
off_80B425C:    .word sub_80B4264+1
    .word sub_80B42C4+1
// end of function sub_80B4248

.thumb
sub_80B4264:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80B428A
    bl sub_8012F4A
    ldr r1, [pc, #0x80b42c0-0x80b4270-4] // =0xA000
    tst r0, r1
    beq loc_80B4280
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B42BC
loc_80B4280:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B42BC
loc_80B428A:
    ldrb r0, [r6,#8]
    cmp r0, #0
    beq loc_80B429E
    mov r0, #0x14
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #4
    strb r0, [r6,#1]
    b locret_80B42BC
loc_80B429E:
    bl sub_8001AF6
    mov r1, #0xf
    and r1, r0
    cmp r1, #4
    bge loc_80B42B4
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B42BC
loc_80B42B4:
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80B42BC:
    pop {pc}
    .byte 0, 0
dword_80B42C0:    .word 0xA000
// end of function sub_80B4264

.thumb
sub_80B42C4:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    bl sub_8001AF6
    mov r1, #0xf
    and r1, r0
    ldr r2, [pc, #0x80b42f0-0x80b42d2-2] // dword_80B42F4
    ldrb r0, [r5,#4]
    ldrb r0, [r2,r0]
    cmp r1, r0
    blt loc_80B42E4
    mov r0, #0
    strb r0, [r6,#9]
    strb r0, [r6,#8]
    b locret_80B42EC
loc_80B42E4:
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80B42EC:
    pop {pc}
    .byte 0, 0
off_80B42F0:    .word dword_80B42F4
dword_80B42F4:    .word 0xE0C0A06
// end of function sub_80B42C4

.thumb
sub_80B42F8:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    bl sub_80B43E8
    tst r0, r0
    bne loc_80B4314
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B4314:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B479C
    pop {pc}
// end of function sub_80B42F8

.thumb
sub_80B4326:
    push {lr}
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq loc_80B4338
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B4338:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    bl sub_80B445C
    tst r0, r0
    beq locret_80B4358
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B479C
locret_80B4358:
    pop {pc}
// end of function sub_80B4326

.thumb
sub_80B435A:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    mov r1, #1
    eor r0, r1
    strb r0, [r6,#8]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B435A

.thumb
sub_80B437A:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b4388-0x80b437e-2] // jt_80B438C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_80B4388:    .word jt_80B438C
jt_80B438C:    .word sub_80B4394+1
    .word sub_80B43A4+1
// end of function sub_80B437A

.thumb
sub_80B4394:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B4394

.thumb
sub_80B43A4:
    push {lr}
    ldrb r0, [r6,#9]
    sub r0, #3
    strb r0, [r6,#9]
    bl sub_80B43CC
    pop {pc}
// end of function sub_80B43A4

.thumb
sub_80B43B2:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b43c0-0x80b43b6-2] // off_80B43C4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_80B43C0:    .word off_80B43C4
off_80B43C4:    .word sub_80B4394+1
    .word sub_80B43CC+1
// end of function sub_80B43B2

.thumb
sub_80B43CC:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B43CC

.thumb
sub_80B43E8:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
    bl sub_800A146
    ldr r2, [pc, #0x80b4454-0x80b4404-4] // =0x20
    ldr r3, [pc, #0x80b4458-0x80b4406-2] // =0xF880080
    add r7, sp, #0
    bl sub_800A06E
    tst r0, r0
    bne loc_80B4424
    bl sub_800A146
    ldr r2, [pc, #0x80b4454-0x80b4416-2] // =0x20
    ldr r3, [pc, #0x80b4458-0x80b4418-4] // =0xF880080
    add r7, sp, #0
    bl sub_800A06E
    tst r0, r0
    beq loc_80B4438
loc_80B4424:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B4438:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
    pop {r0,r1}
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
dword_80B4454:    .word 0x20
dword_80B4458:    .word 0xF880080
// end of function sub_80B43E8

.thumb
sub_80B445C:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
    ldrb r0, [r5,#0x13]
    ldr r2, [pc, #0x80b44c4-0x80b4476-2] // =0x20
    ldr r3, [pc, #0x80b44c8-0x80b4478-4] // =0xF880080
    add r7, sp, #0
    bl sub_800A06E
    tst r0, r0
    bne loc_80B4494
    ldrb r0, [r5,#0x13]
    ldr r2, [pc, #0x80b44c4-0x80b4486-2] // =0x20
    ldr r3, [pc, #0x80b44c8-0x80b4488-4] // =0xF880080
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    beq loc_80B44A8
loc_80B4494:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B44A8:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
    pop {r0,r1}
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
dword_80B44C4:    .word 0x20
dword_80B44C8:    .word 0xF880080
// end of function sub_80B445C

.thumb
sub_80B44CC:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    bl sub_8012F4A
    ldr r1, [pc, #0x80b453c-0x80b44d4-4] // =0xA000
    tst r0, r1
    beq loc_80B44E0
    bl sub_80B445C
    b loc_80B4536
loc_80B44E0:
    bl sub_800A15E
    add r0, #2
    mov r2, #0
    ldr r3, [pc, #0x80b4544-0x80b44e8-4] // =0xF880080
    add r7, sp, #0
    bl sub_80B4548
    tst r0, r0
    beq loc_80B4536
    ldrb r2, [r5,#4]
    cmp r2, #0
    bne loc_80B4502
    add r0, r1, #0
    beq loc_80B4536
    mov r1, #0
    b loc_80B452C
loc_80B4502:
    add r7, r0, #0
    add r6, r1, #0
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne loc_80B4518
    cmp r6, #1
    bne loc_80B4518
loc_80B4514:
    mov r1, #0
    b loc_80B452C
loc_80B4518:
    cmp r6, #1
    bne loc_80B4520
    cmp r7, #1
    beq loc_80B4514
loc_80B4520:
    bl sub_8001AF6
    add r1, r7, #0
    sub r1, r1, r6
    svc 6
    add r1, r1, r6
loc_80B452C:
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B4536:
    add sp, sp, #0x18
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_80B453C:    .word 0xA000
    .word 0x20
dword_80B4544:    .word 0xF880080
// end of function sub_80B44CC

.thumb
sub_80B4548:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    add r4, r0, #0
    add r5, r1, #0
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
    mov r0, #0
    str r0, [sp,#0xc]
loc_80B455A:
    str r0, [sp,#8]
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl sub_8009E78
    tst r0, r0
    beq loc_80B4582
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    ldr r0, [sp,#8]
    cmp r0, #0
    bne loc_80B4582
    mov r0, #1
    str r0, [sp,#0xc]
loc_80B4582:
    ldr r0, [sp,#8]
    cmp r0, #2
    beq loc_80B4592
    ldr r1, [pc, #0x80b459c-0x80b4588-4] // word_80B45A0
    ldrsb r1, [r1,r0]
    add r5, r5, r1
    add r0, #1
    b loc_80B455A
loc_80B4592:
    add r0, r6, #0
    ldr r1, [sp,#0xc]
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80B459C:    .word word_80B45A0
word_80B45A0:    .hword 0x2FF
// end of function sub_80B4548

.thumb
sub_80B45A2:
    push {r4,r6,lr}
    mov r4, #0xa
    ldr r6, [pc, #0x80b45b0-0x80b45a6-2] // dword_80B45B4
    bl sub_80B45D4
    pop {r4,r6,pc}
    .byte 0, 0
off_80B45B0:    .word dword_80B45B4
dword_80B45B4:    .word 0x10000FF
    .word 0x10100
// end of function sub_80B45A2

.thumb
sub_80B45BC:
    push {r4,r6,lr}
    mov r4, #0xa
    ldr r6, [pc, #0x80b45c8-0x80b45c0-4] // dword_80B45CC
    bl sub_80B45D4
    pop {r4,r6,pc}
off_80B45C8:    .word dword_80B45CC
dword_80B45CC:    .word 0x1000001
    .word 0xFF0100
// end of function sub_80B45BC

.thumb
sub_80B45D4:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    add r4, r0, #0
    sub r5, r1, #1
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
    mov r0, #0
loc_80B45E4:
    str r0, [sp,#8]
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl sub_8009E78
    tst r0, r0
    beq loc_80B4602
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_80B4602:
    ldr r0, [sp,#8]
    ldr r2, [sp,#0xc]
    cmp r0, r2
    beq loc_80B461A
    ldr r2, [sp,#0x14]
    ldrsb r1, [r2,r0]
    add r4, r4, r1
    add r0, #1
    ldrsb r1, [r2,r0]
    add r5, r5, r1
    add r0, #1
    b loc_80B45E4
loc_80B461A:
    add r0, r6, #0
    ldr r1, [sp,#0xc]
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_80B45D4

.thumb
sub_80B4622:
    push {r4,r6,lr}
    mov r3, #0x6f 
    add r3, r3, r5
    ldrb r0, [r3]
    cmp r0, #0
    bne locret_80B468A
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne locret_80B468A
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #1
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    bgt locret_80B468A
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    mov r1, #1
    eor r1, r0
    add r4, r1, #0
    mov r0, #0xc
    bl sub_800C19A
    beq locret_80B468A
    mov r3, #0x6e 
    add r3, r3, r5
    ldrb r0, [r3]
    add r0, #1
    strb r0, [r3]
    cmp r0, #4
    bne locret_80B468A
    mov r0, #0
    strb r0, [r3]
    add r1, r4, #0
    mov r0, #4
    mov r4, #0
    bl sub_800C19A
    beq loc_80B4672
    mov r4, #1
loc_80B4672:
    mov r2, #0x6f 
    lsl r2, r2, #8
    orr r4, r2
    bl sub_800A15E
    mov r3, #0
    mov r2, #0
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, #0xc8
    bl sub_80CF62E
locret_80B468A:
    pop {r4,r6,pc}
// end of function sub_80B4622

.thumb
sub_80B468C:
    push {lr}
    mov r0, #0x70 
    ldrb r0, [r5,r0]
    cmp r0, #0
    bne locret_80B471A
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq loc_80B46A2
    ldr r3, [r5,#0x54]
    mov r0, #0xff
    strb r0, [r3,#6]
loc_80B46A2:
    ldr r0, [r5,#0x78]
    cmp r0, #0
    bne loc_80B46C8
    ldr r3, [r5,#0x54]
    ldrh r0, [r3,#0x34]
    cmp r0, #0
    bne loc_80B46C4
    ldrh r0, [r3,#0x28]
    cmp r0, #0
    bne loc_80B46C4
    ldr r0, [r3,#0x54]
    ldr r1, [pc, #0x80b4720-0x80b46b8-4] // =0xA2804200
    tst r0, r1
    beq locret_80B471A
    ldr r1, [pc, #0x80b4724-0x80b46be-2] // =0x4200
    tst r0, r1
    bne locret_80B471A
loc_80B46C4:
    mov r1, #1
    str r1, [r5,#0x78]
loc_80B46C8:
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq loc_80B46F0
    mov r0, #4
    mov r1, #0x16
    bl sub_8024FF0
    beq loc_80B46E2
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x54]
    ldr r1, [pc, #0x80b471c-0x80b46dc-4] // =0x400
    tst r0, r1
    bne locret_80B471A
loc_80B46E2:
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_800AFC2
    b loc_80B4708
loc_80B46F0:
    ldrh r0, [r3,#0x28]
    cmp r0, #0xa
    bge loc_80B46FC
    mov r1, #0
    str r1, [r5,#0x78]
    b locret_80B471A
loc_80B46FC:
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_800AFA6
loc_80B4708:
    bl sub_80131C0
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
locret_80B471A:
    pop {pc}
off_80B471C:    .word 0x400
dword_80B4720:    .word 0xA2804200
dword_80B4724:    .word 0x4200
// end of function sub_80B468C

.thumb
sub_80B4728:
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r2, [r5,#0x12]
    sub r0, r0, r2
    add r0, #1
    lsl r0, r0, #2
    ldr r3, [pc, #0x80b474c-0x80b4736-2] // dword_80B4750
    ldr r0, [r3,r0]
    str r0, [r5,#0x40]
    ldrb r2, [r5,#0x13]
    sub r1, r1, r2
    add r1, #1
    lsl r1, r1, #2
    ldr r3, [pc, #0x80b475c-0x80b4744-4] // dword_80B4760
    ldr r1, [r3,r1]
    str r1, [r5,#0x44]
    mov pc, lr
off_80B474C:    .word dword_80B4750
dword_80B4750:    .word 0xFFFE0000, 0x0
    .word 0x20000
off_80B475C:    .word dword_80B4760
dword_80B4760:    .word 0xFFFECCCD, 0x0
// end of function sub_80B4728

    add r3, #0x33 
    .hword 0x1 // mov r1, r0  // <mkdata>
.thumb
sub_80B476C:
    ldrb r1, [r5,#0x12]
    mov r0, #6
    sub r0, r0, r1
    ldr r1, [pc, #0x80b4784-0x80b4772-2] // =0x3330
    mul r1, r0
    mov r0, #1
    lsl r0, r0, #0x10
    add r0, r0, r1
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    mov pc, lr
dword_80B4784:    .word 0x3333
// end of function sub_80B476C

.thumb
sub_80B4788:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B479A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B479A:
    pop {pc}
// end of function sub_80B4788

.thumb
sub_80B479C:
    push {r6,lr}
    ldr r1, [pc, #0x80b47ac-0x80b479e-2] // jt_80B47B0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B47AC:    .word jt_80B47B0
jt_80B47B0:    .word sub_80B47C0+1
    .word sub_80B481A+1
    .word sub_80B4874+1
    .word sub_80B48A4+1
// end of function sub_80B479C

.thumb
sub_80B47C0:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80B4810
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r2, r2, r0
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B4818
loc_80B4810:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B4818:
    pop {r4,r6,pc}
// end of function sub_80B47C0

.thumb
sub_80B481A:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4872
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
    pop {r0,r1}
    bl sub_800AB30
    bl sub_8012D4E
    ldr r1, [r5,#0x54]
    ldrb r0, [r1,#1]
    cmp r0, #0
    bne loc_80B486A
    mov r0, #1
    bl sub_8012D7C
    mov r1, #0
    mov r0, #0x70 
    strb r1, [r5,r0]
loc_80B486A:
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B4872:
    pop {r4,r7,pc}
// end of function sub_80B481A

.thumb
sub_80B4874:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4898
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b489c-0x80b488e-2] // loc_80B48A0
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B4898:
    pop {pc}
    .balign 4, 0x00
off_80B489C:    .word loc_80B48A0
// end of function sub_80B4874

loc_80B48A0:
    asr r4, r2, #0x10
    lsr r4, r2, #0x10
.thumb
sub_80B48A4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B48BA
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B48BA:
    pop {pc}
// end of function sub_80B48A4

.thumb
sub_80B48BC:
    push {r6,lr}
    ldr r1, [pc, #0x80b48cc-0x80b48be-2] // off_80B48D0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B48CC:    .word off_80B48D0
off_80B48D0:    .word sub_80B48F0+1
    .word sub_80B495A+1
    .word sub_80B4994+1
    .word sub_80B49C4+1
    .word sub_80B49DC+1
    .word sub_80B4A00+1
    .word sub_80B4A46+1
    .word sub_80B4A5E+1
// end of function sub_80B48BC

.thumb
sub_80B48F0:
    push {r4,lr}
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80B44CC
    tst r0, r0
    bne loc_80B490C
loc_80B48FE:
    mov r0, #0x1c
    strh r0, [r5,#0xa]
    mov r0, #0x1a
    strh r0, [r5,#0x20]
    mov r0, #0
    strb r0, [r5,#0x10]
    b locret_80B4958
loc_80B490C:
    mov r6, #0x80
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80B48FE
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r2, r2, r0
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
locret_80B4958:
    pop {r4,pc}
// end of function sub_80B48F0

.thumb
sub_80B495A:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4992
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B4992:
    pop {r4,r7,pc}
// end of function sub_80B495A

.thumb
sub_80B4994:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B49B8
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b49bc-0x80b49ae-2] // dword_80B49C0
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B49B8:
    pop {pc}
    .balign 4, 0x00
off_80B49BC:    .word dword_80B49C0
dword_80B49C0:    .word 0xC141414
// end of function sub_80B4994

.thumb
sub_80B49C4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B49DA
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B49DA:
    pop {pc}
// end of function sub_80B49C4

.thumb
sub_80B49DC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B49FE
    mov r0, #0x14
    strh r0, [r5,#0xa]
    mov r0, #0x23 
    strh r0, [r5,#0x20]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x87
    bl f500_8000558
    mov r0, #0x14
    bl sub_800AF88
locret_80B49FE:
    pop {pc}
// end of function sub_80B49DC

.thumb
sub_80B4A00:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4A44
    mov r0, #0x18
    strh r0, [r5,#0xa]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    lsl r1, r1, #2
    ldrb r0, [r5,#4]
    add r0, r0, r1
    ldr r1, [pc, #0x80b4aa8-0x80b4a20-4] // dword_80B4AAC
    ldrb r4, [r1,r0]
    ldrb r1, [r5,#0x12]
    bl sub_800AB54
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x32 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80b4aa0-0x80b4a34-4] // dword_80B4AA4
    ldrb r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0x12
    lsl r3, r3, #0x10
    bl sub_80CEE92
locret_80B4A44:
    pop {r4,r6,pc}
// end of function sub_80B4A00

.thumb
sub_80B4A46:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4A5C
    mov r0, #0x1c
    strh r0, [r5,#0xa]
    mov r0, #0x1a
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0x10]
locret_80B4A5C:
    pop {pc}
// end of function sub_80B4A46

.thumb
sub_80B4A5E:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4A9C
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r2, r2, r0
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B4A9C:
    pop {r4,pc}
    .byte 0, 0
off_80B4AA0:    .word dword_80B4AA4
dword_80B4AA4:    .word 0xC8643C14
off_80B4AA8:    .word dword_80B4AAC
dword_80B4AAC:    .word 0x12111010
    .word 0x22212010
// end of function sub_80B4A5E

.thumb
sub_80B4AB4:
    push {r6,lr}
    ldr r1, [pc, #0x80b4ac4-0x80b4ab6-2] // jt_80B4AC8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B4AC4:    .word jt_80B4AC8
jt_80B4AC8:    .word sub_80B4AD8+1
    .word sub_80B4AF4+1
    .word sub_80B4B60+1
    .word sub_80B4BE2+1
// end of function sub_80B4AB4

.thumb
sub_80B4AD8:
    push {lr}
    mov r0, #4
    strh r0, [r5,#0xa]
    mov r0, #0x23 
    strh r0, [r5,#0x20]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x87
    bl f500_8000558
    mov r0, #0x14
    bl sub_800AF88
    pop {pc}
// end of function sub_80B4AD8

.thumb
sub_80B4AF4:
    push {r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4B54
    mov r0, #8
    strh r0, [r5,#0xa]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b4b58-0x80b4b06-2] // =0x0
    ldr r3, [pc, #0x80b4b5c-0x80b4b08-4] // =0xF880080
    add r7, r5, #0
    add r7, #0x60 
    bl sub_80B45A2
    cmp r0, #0
    bne loc_80B4B20
    mov r0, #0xc
    strh r0, [r5,#0xa]
    mov r0, #1
    strh r0, [r5,#0x20]
    b locret_80B4B54
loc_80B4B20:
    add r6, r5, #0
    add r6, #0x68 
    str r0, [r6]
    add r6, r0, #0
loc_80B4B28:
    ldrb r0, [r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    add r2, r2, r3
    mov r4, #2
    bl sub_80E17DE
    add r7, #1
    sub r6, #1
    bne loc_80B4B28
    mov r0, #0xb1
    bl f500_8000558
    mov r0, #0xa
    strh r0, [r5,#0x20]
locret_80B4B54:
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_80B4B58:    .word 0x0
dword_80B4B5C:    .word 0xF880080
// end of function sub_80B4AF4

.thumb
sub_80B4B60:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4BE0
    mov r0, #0xc
    strh r0, [r5,#0xa]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    add r0, r5, #0
    add r0, #0x60 
    add r1, r5, #0
    add r1, #0x68 
    ldr r1, [r1]
    add r2, r1, #0
    bl fA00_8000AA2
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    add r2, r2, r0
    lsl r2, r2, #1
    ldr r3, [pc, #0x80b4c14-0x80b4b92-2] // dword_80B4C18
    ldrh r4, [r3,r2]
    lsl r4, r4, #8
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80b4c08-0x80b4b9c-4] // dword_80B4C0C
    ldrb r6, [r3,r2]
    add r2, #1
    ldrb r7, [r3,r2]
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r1, r1, r6
    add r4, r4, r1
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80b4c00-0x80b4bb6-2] // dword_80B4C04
    ldrb r3, [r3,r2]
    add r6, r6, r3
    ldr r3, [pc, #0x80b4c28-0x80b4bbc-4] // dword_80B4C2C
    ldrb r3, [r3,r2]
    mov r2, #0
    add r7, r5, #0
    add r7, #0x60 
loc_80B4BC6:
    push {r2,r3}
    ldrb r0, [r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r3, #0xc
    lsl r3, r3, #0x10
    bl sub_80CF1C4
    add r7, #1
    pop {r2,r3}
    sub r3, #1
    bne loc_80B4BC6
locret_80B4BE0:
    pop {r4,r6,r7,pc}
// end of function sub_80B4B60

.thumb
sub_80B4BE2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4BFC
    mov r0, #0x10
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B4BFC:
    pop {pc}
    .byte 0, 0
off_80B4C00:    .word dword_80B4C04
dword_80B4C04:    .word 0xC8643C14
off_80B4C08:    .word dword_80B4C0C
dword_80B4C0C:    .word 0x3060302, 0x5100409
off_80B4C14:    .word dword_80B4C18
dword_80B4C18:    .word 0x1000100, 0x1000100, 0x1660133, 0x1990166
off_80B4C28:    .word dword_80B4C2C
dword_80B4C2C:    .word 0x3030302
// end of function sub_80B4BE2

.thumb
sub_80B4C30:
    push {r6,lr}
    ldr r1, [pc, #0x80b4c40-0x80b4c32-2] // jt_80B4C44
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80B4C40:    .word jt_80B4C44
jt_80B4C44:    .word sub_80B4C50+1
    .word sub_80B4CAE+1
    .word sub_80B4D44+1
// end of function sub_80B4C30

.thumb
sub_80B4C50:
    push {lr}
    mov r0, #4
    strh r0, [r5,#0xa]
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    ldrb r0, [r1]
    cmp r0, #1
    pop {r0,r1}
    beq loc_80B4C7C
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
loc_80B4C7C:
    ldr r0, [pc, #0x80b4d14-0x80b4c7c-4] // byte_80B4D18
    ldrb r0, [r0]
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #0
    strb r0, [r5,#0x10]
    bl sub_8012D74
    mov r0, #0
    str r0, [r5,#0x78]
    mov r1, #1
    mov r0, #0x70 
    strb r1, [r5,r0]
    bl sub_8015A50
    mov r1, #0x6d 
    add r1, r1, r5
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    mov r0, #0xaf
    bl f500_8000558
    pop {pc}
// end of function sub_80B4C50

.thumb
sub_80B4CAE:
    push {lr}
    ldrh r1, [r5,#0x22]
    ldr r0, [pc, #0x80b4d2c-0x80b4cb2-2] // dword_80B4D30
    ldrb r1, [r0,r1]
    mov r0, #0x20 
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4D12
    ldrh r1, [r5,#0x22]
    add r1, #1
    strh r1, [r5,#0x22]
    ldr r0, [pc, #0x80b4d2c-0x80b4cd4-4] // dword_80B4D30
    ldrb r1, [r0,r1]
    cmp r1, #0x20 
    bne loc_80B4D0A
    mov r0, #8
    strh r0, [r5,#0xa]
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r1, #0x6d 
    add r1, r1, r5
    ldrb r0, [r1]
    cmp r0, #5
    blt locret_80B4D12
    mov r0, #4
    mov r1, #0x16
    bl sub_8024FF0
    bne locret_80B4D12
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B4D12
    bl sub_8007F84
    b locret_80B4D12
loc_80B4D0A:
    ldrh r1, [r5,#0x22]
    ldr r0, [pc, #0x80b4d14-0x80b4d0c-4] // byte_80B4D18
    ldrb r0, [r0,r1]
    strh r0, [r5,#0x20]
locret_80B4D12:
    pop {pc}
off_80B4D14:    .word byte_80B4D18
byte_80B4D18:    .byte 0x1
    .byte 0x1, 0x1, 0x1
    .word 0x1010101, 0x2020202, 0x3030303, 0x7060504
off_80B4D2C:    .word dword_80B4D30
dword_80B4D30:    .word 0x6040200
    .word 0xE0C0A08
    .word 0x1211100F
    .word 0x16151413
    .word 0x201F1817
// end of function sub_80B4CAE

.thumb
sub_80B4D44:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4D9C
    mov r3, #0x80
    add r3, r3, r5
    mov r0, #0
    strb r0, [r3]
    mov r0, #0
    strh r0, [r3,#2]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
    pop {r0,r1}
    mov r1, #0
    mov r0, #0
    bl sub_8015A18
    mov r0, #0xb0
    bl f500_8000558
    bl sub_80B445C
    tst r0, r0
    bne loc_80B4D88
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
loc_80B4D88:
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B479C
locret_80B4D9C:
    pop {pc}
// end of function sub_80B4D44

.thumb
sub_80B4D9E:
    push {r6,lr}
    ldr r1, [pc, #0x80b4dac-0x80b4da0-4] // jt_80B4DB0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B4DAC:    .word jt_80B4DB0
jt_80B4DB0:    .word sub_80B4DC8+1
    .word sub_80B4E24+1
    .word sub_80B4EE8+1
    .word sub_80B4F34+1
    .word sub_80B4F66+1
    .word sub_80B4FA0+1
// end of function sub_80B4D9E

.thumb
sub_80B4DC8:
    push {r4,r7,lr}
    mov r0, #4
    strh r0, [r5,#0xa]
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x1c
    bl sub_80E17DE
    mov r0, #0xb1
    bl f500_8000558
    bl sub_8012D74
    mov r0, #0
    str r0, [r5,#0x78]
    bl sub_8015A50
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r3, #0x74 
    add r3, r3, r5
    mov r0, #0
    strb r0, [r3]
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    ldrb r0, [r1]
    cmp r0, #1
    pop {r0,r1}
    beq locret_80B4E22
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #1
    strb r0, [r1]
    pop {r0,r1}
locret_80B4E22:
    pop {r4,r7,pc}
// end of function sub_80B4DC8

.thumb
sub_80B4E24:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80B4ED6
    mov r0, #8
    strh r0, [r5,#0xa]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    bl sub_800AB30
    bl sub_8012D4E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    mov r3, #0x17
    mov r2, sp
loc_80B4E4C:
    strb r0, [r2,r3]
    sub r3, #1
    bpl loc_80B4E4C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b4edc-0x80b4e56-2] // =0x0
    ldr r3, [pc, #0x80b4ee0-0x80b4e58-4] // start_
    add r7, sp, #0
    bl sub_80B45BC
    cmp r0, #3
    bge loc_80B4E64
loc_80B4E64:
    add r6, r0, #0
    add r1, r0, #0
    mov r2, #8
    mov r0, sp
    bl fA00_8000AA2
    sub r4, r6, #1
loc_80B4E72:
    ldrb r0, [r7,r4]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r2, [pc, #0x80b4edc-0x80b4e7a-2] // =0x0
    ldr r3, [pc, #0x80b4ee4-0x80b4e7c-4] // =0x3800000
    bl sub_8009E78
    cmp r0, #1
    beq loc_80B4E94
    sub r4, #1
    bpl loc_80B4E72
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    b loc_80B4E9A
loc_80B4E94:
    ldrb r0, [r7,r4]
    mov r1, #0
    strb r1, [r7,r4]
loc_80B4E9A:
    bl sub_80B4728
    mov r1, #0x10
    mov r2, #3
    mov r3, #3
    bl sub_8012E84
    mov r0, #1
    bl sub_8012D7C
    mov r1, #1
    mov r0, #0x70 
    strb r1, [r5,r0]
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r6, #3
loc_80B4EBA:
    ldrb r4, [r7]
    add r7, #1
    cmp r4, #0
    beq loc_80B4EBA
    mov r3, #0x74 
    lsl r3, r3, #8
    orr r4, r3
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, [r5,#0x3c]
    bl sub_80CFA5C
    sub r6, #1
    bne loc_80B4EBA
loc_80B4ED6:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80B4EDC:    .word 0x0
off_80B4EE0:    .word start_
dword_80B4EE4:    .word 0x3800000
// end of function sub_80B4E24

.thumb
sub_80B4EE8:
    push {lr}
    ldr r7, [r5,#0x54]
    ldr r0, [r7,#0x54]
    ldr r1, [pc, #0x80b5014-0x80b4eee-2] // =0x800000
    tst r0, r1
    beq loc_80B4F02
    mov r0, #0x8c
    strh r0, [r5,#0x36]
    bl sub_8012D74
    mov r0, #0x10
    strh r0, [r5,#0xa]
    b locret_80B4F32
loc_80B4F02:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4F32
    mov r0, #0xc
    strh r0, [r5,#0xa]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    bl sub_800AB30
    bl sub_8012D4E
locret_80B4F32:
    pop {pc}
// end of function sub_80B4EE8

.thumb
sub_80B4F34:
    push {lr}
    ldr r7, [r5,#0x54]
    ldr r0, [r7,#0x54]
    ldr r1, [pc, #0x80b5014-0x80b4f3a-2] // =0x800000
    tst r0, r1
    beq loc_80B4F4E
    mov r0, #0x8c
    strh r0, [r5,#0x36]
    bl sub_8012D74
    mov r0, #0x10
    strh r0, [r5,#0xa]
    b locret_80B4F64
loc_80B4F4E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B4F64
    mov r0, #0xb2
    bl f500_8000558
    mov r0, #0x10
    strh r0, [r5,#0xa]
    bl sub_80B476C
locret_80B4F64:
    pop {pc}
// end of function sub_80B4F34

.thumb
sub_80B4F66:
    push {lr}
    ldr r7, [r5,#0x54]
    ldr r0, [r7,#0x54]
    ldr r1, [pc, #0x80b5014-0x80b4f6c-4] // =0x800000
    tst r0, r1
    beq loc_80B4F76
    mov r0, #0x8c
    strh r0, [r5,#0x36]
loc_80B4F76:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800AB40
    bl sub_8012D4E
    bl sub_8009E58
    tst r0, r0
    bne locret_80B4F9E
    bl sub_8012D74
    mov r0, #0x14
    strh r0, [r5,#0xa]
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r0, #0x14
    strh r0, [r5,#0x20]
locret_80B4F9E:
    pop {pc}
// end of function sub_80B4F66

.thumb
sub_80B4FA0:
    push {lr}
    mov r3, #0x74 
    add r3, r3, r5
    ldrb r0, [r3]
    cmp r0, #3
    blt locret_80B5010
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5010
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r1, #0
    mov r0, #0x70 
    strb r1, [r5,r0]
    mov r3, #0x80
    add r3, r3, r5
    mov r0, #0
    strb r0, [r3]
    mov r0, #0
    strh r0, [r3,#2]
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    push {r0,r1}
    mov r1, #0x6c 
    add r1, r1, r5
    mov r0, #0
    strb r0, [r1]
    pop {r0,r1}
    bl sub_80B445C
    tst r0, r0
    bne loc_80B4FF4
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
loc_80B4FF4:
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B479C
    mov r0, #0
    mov r1, #1
    bl sub_8015A18
locret_80B5010:
    pop {pc}
    .balign 4, 0x00
dword_80B5014:    .word 0x800000
// end of function sub_80B4FA0

.thumb
sub_80B5018:
    push {lr}
    ldr r1, [pc, #0x80b502c-0x80b501a-2] // off_80B5030
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B502C:    .word off_80B5030
off_80B5030:    .word sub_80B503C+1
    .word sub_80B50A8+1
    .word sub_8010F0C+1
// end of function sub_80B5018

.thumb
sub_80B503C:
    push {r7,lr}
    mov r1, #8
    mov r2, #0x11
    mov r0, #0x80
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8016714
    bl sub_8012442
    tst r0, r0
    bne loc_80B507A
    bl sub_80033B4
    b locret_80B509C
loc_80B507A:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80b50a0-0x80b5086-2] // dword_80B50A4
    ldr r2, [r2,r1]
    mov r1, #0x25 
    bl sub_800D75A
    mov r1, #0x23 
    mov r2, #0xd
    bl sub_800D75A
    mov r0, #4
    str r0, [r5,#8]
locret_80B509C:
    pop {r7,pc}
    .byte 0, 0
off_80B50A0:    .word dword_80B50A4
dword_80B50A4:    .word 0x208050A
// end of function sub_80B503C

.thumb
sub_80B50A8:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b50bc-0x80b50ae-2] // jt_80B50C0
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B50BC:    .word jt_80B50C0
jt_80B50C0:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word sub_80B50F0+1
    .word sub_80B5794+1
    .word sub_80B57A8+1
    .word sub_80B5894+1
    .word sub_80B596C+1
    .word sub_80B5B2A+1
// end of function sub_80B50A8

.thumb
sub_80B50F0:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80B5102
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B5110
loc_80B5102:
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b5114-0x80b5108-4] // jt_80B5118
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80B5110:
    pop {r6,pc}
    .balign 4, 0x00
off_80B5114:    .word jt_80B5118
jt_80B5118:    .word sub_80B513C+1
    .word sub_80B5320+1
    .word sub_80B533A+1
    .word sub_80B534C+1
    .word sub_80B53A8+1
    .word sub_80B53DE+1
    .word sub_80B53EA+1
    .word sub_80B53F6+1
    .word sub_80B546A+1
// end of function sub_80B50F0

.thumb
sub_80B513C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0x70 
    ldrb r1, [r5,#0x16]
    mov r2, #0xc
    mul r1, r2
    ldr r0, [r0,r1]
    cmp r0, #0
    beq loc_80B5154
    mov r0, #0
    strb r0, [r6,#8]
loc_80B5154:
    ldrb r0, [r6,#8]
    cmp r0, #3
    blt loc_80B5168
    mov r0, #0x1c
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#8]
    b locret_80B5210
loc_80B5168:
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80b5218-0x80b516a-2] // dword_80B521C
    ldrb r1, [r0,r1]
    ldrb r0, [r6,#9]
    cmp r0, r1
    bge loc_80B51A4
loc_80B5174:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B518A
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B5210
loc_80B518A:
    ldr r1, [pc, #0x80b5214-0x80b518a-2] // =0xA000
    tst r0, r1
    beq loc_80B519A
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B5210
loc_80B519A:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B5210
loc_80B51A4:
    bl sub_80B5228
    cmp r0, #1
    beq locret_80B5210
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80B51C0
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80B51FE
loc_80B51C0:
    bl sub_80B52BC
    cmp r0, #0
    beq loc_80B51E6
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #8
    blt loc_80B51F2
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B596C
    mov r0, #0
    strb r0, [r6,#9]
    b loc_80B520A
loc_80B51E6:
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #4
    blt loc_80B5174
loc_80B51F2:
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B5B2A
loc_80B51FE:
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80b5220-0x80b5200-4] // dword_80B5224
    ldrb r1, [r0,r1]
    ldrb r0, [r6,#9]
    sub r0, r0, r1
    strb r0, [r6,#9]
loc_80B520A:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
locret_80B5210:
    pop {pc}
    .balign 4, 0x00
dword_80B5214:    .word 0xA000
off_80B5218:    .word dword_80B521C
dword_80B521C:    .word 0x4020304
off_80B5220:    .word dword_80B5224
dword_80B5224:    .word 0x2010202
// end of function sub_80B513C

.thumb
sub_80B5228:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80B5248
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80B5248
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    bne loc_80B524C
loc_80B5248:
    mov r0, #0
    pop {pc}
loc_80B524C:
    ldrb r0, [r5,#4]
    cmp r0, #3
    beq loc_80B5248
    cmp r0, #0
    beq loc_80B5274
    cmp r0, #1
    beq loc_80B52A2
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #6
    bl sub_8007FFA
    cmp r0, #0
    beq loc_80B5248
    mov r0, #0x20 
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B5286
loc_80B5274:
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x24]
    lsr r0, r0, #2
    cmp r1, r0
    bgt loc_80B5248
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80B5286:
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #1
    pop {pc}
    bl sub_8007BB4
    ldr r1, [pc, #0x80b52b8-0x80b5292-2] // =0x258
    cmp r0, r1
    blt loc_80B5248
    mov r0, #0x14
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B5286
loc_80B52A2:
    bl sub_8007BB4
    ldr r1, [pc, #0x80b52b8-0x80b52a6-2] // =0x258
    cmp r0, r1
    blt loc_80B5248
    mov r0, #0x18
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B5286
    .balign 4, 0x00
off_80B52B8:    .word 0x258
// end of function sub_80B5228

.thumb
sub_80B52BC:
    push {r4,r6,lr}
    mov r6, #6
    mov r4, #1
loc_80B52C2:
    add r1, r4, #0
    ldrb r0, [r5,#0x16]
    ldr r3, [pc, #0x80b530c-0x80b52c6-2] // dword_80B5310
    bl sub_80B38B4
    bl sub_800A17A
    cmp r0, #0
    beq loc_80B52E8
    ldrb r2, [r5,#0x16]
    cmp r2, #0
    bne loc_80B52E2
    cmp r0, r6
    ble loc_80B52E8
    add r6, r0, #0
    b loc_80B52E8
loc_80B52E2:
    cmp r0, r6
    bge loc_80B52E8
    add r6, r0, #0
loc_80B52E8:
    add r4, #1
    cmp r4, #3
    ble loc_80B52C2
    mov r3, #1
    ldrb r0, [r5,#4]
    cmp r0, #2
    bne loc_80B52F8
    add r3, #1
loc_80B52F8:
    bl sub_800A15E
    add r0, r0, r3
    cmp r0, r6
    blt loc_80B5306
    mov r0, #1
    pop {r4,r6,pc}
loc_80B5306:
    mov r0, #0
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80B530C:    .word dword_80B5310
dword_80B5310:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80B52BC

.thumb
sub_80B5320:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    bl sub_80B553E
    tst r0, r0
    bne loc_80B5334
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B5334:
    bl sub_80B5522
    pop {pc}
// end of function sub_80B5320

.thumb
sub_80B533A:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80B5522
    pop {pc}
// end of function sub_80B533A

.thumb
sub_80B534C:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b535c-0x80b5350-4] // off_80B5360
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B535C:    .word off_80B5360
off_80B5360:    .word sub_80B5368+1
    .word sub_80B5390+1
// end of function sub_80B534C

.thumb
sub_80B5368:
    push {lr}
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne loc_80B537A
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B537A:
    bl sub_80B553E
    tst r0, r0
    beq loc_80B538A
    bl sub_80B5522
    mov r0, #0xc
    strb r0, [r6]
loc_80B538A:
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B5368

.thumb
sub_80B5390:
    push {lr}
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B5390

.thumb
sub_80B53A8:
    push {r4,r7,lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r1, #0
    mov r2, #0
    mov r3, #1
    bl sub_8016408
    mov r0, #0x32 
    bl sub_800AB96
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0x9a
    bl f500_8000558
    bl sub_80B5508
    pop {r4,r7,pc}
// end of function sub_80B53A8

.thumb
sub_80B53DE:
    push {lr}
    bl sub_80B54C8
    bl sub_80B5508
    pop {pc}
// end of function sub_80B53DE

.thumb
sub_80B53EA:
    push {lr}
    bl sub_80BE5B0
    bl sub_80B5508
    pop {pc}
// end of function sub_80B53EA

.thumb
sub_80B53F6:
    push {r4,r6,r7,lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80B543E
    ldrb r0, [r5,#4]
    cmp r0, #3
    beq loc_80B543E
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0x70 
    ldrb r1, [r5,#0x16]
    mov r2, #0xc
    mul r1, r2
    ldr r0, [r0,r1]
    cmp r0, #0
    bne loc_80B543E
    bl sub_80B56F8
    cmp r0, #0
    beq loc_80B543E
    ldr r2, [pc, #0x80b5444-0x80b5420-4] // off_80B5448
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldr r3, [r5,#0x60]
    lsl r3, r3, #1
    ldr r2, [r2,r3]
    bl sub_80B5476
    ldr r0, [r5,#0x60]
    add r0, #1
    cmp r0, #3
    blt loc_80B543C
    mov r0, #0
loc_80B543C:
    str r0, [r5,#0x60]
loc_80B543E:
    bl sub_80B5508
    pop {r4,r6,r7,pc}
off_80B5444:    .word off_80B5448
off_80B5448:    .word byte_80B5458
    .word 0x80B545E, 0x80B5464, 0x80B5458
byte_80B5458:    .byte 0x53
    .byte 0x0, 0x54, 0x0
    .word 0x640064
    .word 0x650053
    .word 0x530007
    .hword 0x64
// end of function sub_80B53F6

.thumb
sub_80B546A:
    push {lr}
    bl sub_80B96E0
    bl sub_80B5508
    pop {pc}
// end of function sub_80B546A

.thumb
sub_80B5476:
    push {r4,r6,r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    bl sub_800AB54
    ldr r1, [sp]
    sub r1, r1, r0
    str r1, [sp]
    lsl r2, r2, #0x17
    lsr r0, r2, #0x17
    bl sub_8019010
    ldrh r6, [r0,#0xa]
    lsl r6, r6, #0x10
    ldrh r3, [r0,#0x1a]
    add r6, r6, r3
    ldr r4, [r0,#0x10]
    ldrb r2, [r0,#4]
    ldr r7, [sp,#8]
    lsl r7, r7, #0x17
    lsr r7, r7, #0x17
    ldrb r1, [r0,#0xc]
    lsl r1, r1, #2
    ldr r3, [pc, #0x80b54c4-0x80b54a8-4] // off_8022034
    ldr r3, [r3,r1]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov lr, pc
    bx r3
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    add sp, sp, #0xc
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80B54C4:    .word off_8022034
// end of function sub_80B5476

.thumb
sub_80B54C8:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E1F5C
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    pop {r4,r6,r7,pc}
// end of function sub_80B54C8

.thumb
sub_80B54E4:
    push {lr}
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrh r6, [r0,#0xa]
    lsl r6, r6, #0x10
    ldrh r3, [r0,#0x1a]
    add r6, r6, r3
    ldr r4, [r0,#0x10]
    ldrb r2, [r0,#4]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrh r7, [r5,#0x2a]
    lsl r7, r7, #0x17
    lsr r7, r7, #0x17
    pop {pc}
// end of function sub_80B54E4

.thumb
sub_80B5508:
    mov r6, #0x78 
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80B5508

.thumb
sub_80B5522:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B57A8
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B5522

.thumb
sub_80B553E:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x13]
    ldr r3, [pc, #0x80b5594-0x80b554c-4] // dword_80B5598
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A06E
    tst r0, r0
    bne loc_80B556E
    ldrb r0, [r0,#0x13]
    ldr r3, [pc, #0x80b5594-0x80b555e-2] // dword_80B5598
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    beq loc_80B5582
loc_80B556E:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B5582:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_80B5594:    .word dword_80B5598
dword_80B5598:    .word 0x10, 0x3F8800A0, 0x30, 0x3F880080
// end of function sub_80B553E

.thumb
sub_80B55A8:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_8012F4A
    ldr r1, [pc, #0x80b5614-0x80b55b0-4] // =0xA000
    tst r0, r1
    beq loc_80B55BC
    bl sub_80B56B8
    b loc_80B55FA
loc_80B55BC:
    bl sub_800AB54
    add r4, r0, #0
    bl sub_800A15E
    sub r0, r0, r4
    beq loc_80B55CE
    cmp r0, #7
    bne loc_80B55D2
loc_80B55CE:
    mov r0, #0
    b loc_80B55FA
loc_80B55D2:
    ldr r3, [pc, #0x80b5600-0x80b55d2-2] // dword_80B5604
    bl sub_80B38B4
    add r7, sp, #0
    ldrb r4, [r5,#4]
    cmp r4, #1
    beq loc_80B55F6
    cmp r4, #2
    beq loc_80B55F6
    add r4, r0, #0
    add r7, r1, #0
    bl sub_8009E78
    tst r0, r0
    beq loc_80B55FA
    add r0, r4, #0
    add r1, r7, #0
    b loc_80B55FA
loc_80B55F6:
    bl sub_80B5784
loc_80B55FA:
    add sp, sp, #0x18
    pop {r4,r7,pc}
    .byte 0, 0
off_80B5600:    .word dword_80B5604
dword_80B5604:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_80B5614:    .word 0xA000
// end of function sub_80B55A8

.thumb
sub_80B5618:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80B5634
    cmp r0, #3
    beq loc_80B5634
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mul r0, r1
    add r0, #2
    mov r1, #2
    bl sub_8014348
loc_80B5634:
    bl sub_8012F4A
    ldr r1, [pc, #0x80b56b4-0x80b5638-4] // =0xA000
    tst r0, r1
    bne loc_80B5664
    bl sub_800AB54
    mov r4, #3
    mul r4, r0
    bl sub_800A15E
    ldr r3, [pc, #0x80b56a0-0x80b564a-2] // dword_80B56A4
    bl sub_80B38B4
    add r7, sp, #0
    sub r0, r0, r4
    cmp r0, #6
    bgt loc_80B5664
    cmp r0, #1
    blt loc_80B5664
    bl sub_800A0A4
    tst r0, r0
    bne loc_80B566A
loc_80B5664:
    bl sub_80B56B8
    b loc_80B567E
loc_80B566A:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B567E:
    push {r0,r1}
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80B5698
    cmp r0, #3
    beq loc_80B5698
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mul r0, r1
    add r0, #2
    mov r1, #2
    bl sub_801436A
loc_80B5698:
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r4,r7,pc}
    .byte 0, 0
off_80B56A0:    .word dword_80B56A4
dword_80B56A4:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_80B56B4:    .word 0xA000
// end of function sub_80B5618

.thumb
sub_80B56B8:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r3, [pc, #0x80b56e4-0x80b56bc-4] // dword_80B56E8
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    beq loc_80B56E0
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B56E0:
    add sp, sp, #0x18
    pop {r7,pc}
off_80B56E4:    .word dword_80B56E8
dword_80B56E8:    .word 0x10, 0x3F8800A0, 0x30, 0x3F880080
// end of function sub_80B56B8

.thumb
sub_80B56F8:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x16]
    mov r4, #5
    mul r4, r0
    add r4, #1
    bl sub_800AB54
    add r6, r0, #0
    add r0, r4, #0
    ldr r3, [pc, #0x80b5770-0x80b5714-4] // dword_80B5774
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    bne loc_80B574C
    add r4, r4, r6
    add r0, r4, #0
    ldr r3, [pc, #0x80b5770-0x80b5728-4] // dword_80B5774
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    bne loc_80B574C
    add r4, r4, r6
    add r0, r4, #0
    ldr r3, [pc, #0x80b5770-0x80b573c-4] // dword_80B5774
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    beq loc_80B5760
loc_80B574C:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B5760:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
off_80B5770:    .word dword_80B5774
dword_80B5774:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80B56F8

.thumb
sub_80B5784:
    push {r4,r6,lr}
    ldrb r6, [r5,#0x16]
    mov r4, #1
    eor r6, r4
    mov r4, #4
    bl sub_800F8AE
    pop {r4,r6,pc}
// end of function sub_80B5784

.thumb
sub_80B5794:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B57A6
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B57A6:
    pop {pc}
// end of function sub_80B5794

.thumb
sub_80B57A8:
    push {r6,lr}
    ldr r1, [pc, #0x80b57b8-0x80b57aa-2] // jt_80B57BC
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B57B8:    .word jt_80B57BC
jt_80B57BC:    .word sub_80B57CC+1
    .word sub_80B5806+1
    .word sub_80B5832+1
    .word sub_80B587C+1
// end of function sub_80B57A8

.thumb
sub_80B57CC:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80B57F8
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B5804
loc_80B57F8:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5804:
    pop {r6,pc}
// end of function sub_80B57CC

.thumb
sub_80B5806:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5830
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B5830:
    pop {pc}
// end of function sub_80B5806

.thumb
sub_80B5832:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5868
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80b5874-0x80b5852-2] // dword_80B5878
    ldrsb r0, [r1,r0]
    push {r0}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b586c-0x80b585a-2] // dword_80B5870
    ldrb r0, [r1,r0]
    pop {r1}
    add r0, r0, r1
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B5868:
    pop {pc}
    .balign 4, 0x00
off_80B586C:    .word dword_80B5870
dword_80B5870:    .word 0x3C0F142D
off_80B5874:    .word dword_80B5878
dword_80B5878:    .word 0xF0A00F6
// end of function sub_80B5832

.thumb
sub_80B587C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5892
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5892:
    pop {pc}
// end of function sub_80B587C

.thumb
sub_80B5894:
    push {lr}
    ldr r1, [pc, #0x80b58a4-0x80b5896-2] // jt_80B58A8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B58A4:    .word jt_80B58A8
jt_80B58A8:    .word sub_80B58B0+1
    .word sub_80B5944+1
// end of function sub_80B5894

.thumb
sub_80B58B0:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B58E0
    mov r0, #8
    strb r0, [r5,#0x10]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80b5924-0x80b58c2-2] // dword_80B5928
    ldrb r4, [r2,r1]
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x14
    bl sub_800AF88
    mov r0, #0x8c
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80B5920
loc_80B58E0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B5920
    ldrb r6, [r5,#4]
    ldr r1, [pc, #0x80b592c-0x80b58ea-2] // dword_80B5930
    ldrb r4, [r1,r6]
    ldr r1, [pc, #0x80b5934-0x80b58ee-2] // dword_80B5938
    ldrb r1, [r1,r6]
    mov r6, #0x14
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    mov r1, #8
    mul r0, r1
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x34]
    add r1, r1, r0
    ldrh r2, [r5,#0x3a]
    sub r2, #1
    lsl r2, r2, #0x10
    mov r3, #0x19
    lsl r3, r3, #0x10
    bl sub_80CE6FE
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b593c-0x80b5916-2] // dword_80B5940
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B5920:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80B5924:    .word dword_80B5928
dword_80B5928:    .word 0x20100
off_80B592C:    .word dword_80B5930
dword_80B5930:    .word 0x1040302
off_80B5934:    .word dword_80B5938
dword_80B5938:    .word 0xA643C14
off_80B593C:    .word dword_80B5940
dword_80B5940:    .word 0xA141E32
// end of function sub_80B58B0

.thumb
sub_80B5944:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B596A
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B596A:
    pop {pc}
// end of function sub_80B5944

.thumb
sub_80B596C:
    push {lr}
    ldr r1, [pc, #0x80b597c-0x80b596e-2] // jt_80B5980
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B597C:    .word jt_80B5980
jt_80B5980:    .word sub_80B5998+1
    .word sub_80B59DE+1
    .word sub_80B5A0A+1
    .word sub_80B5A2C+1
    .word sub_80B5A40+1
    .word sub_80B5AFC+1
// end of function sub_80B596C

.thumb
sub_80B5998:
    push {r6,lr}
    bl sub_80B55A8
    tst r0, r0
    beq loc_80B59D0
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80B59D0
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B59DC
loc_80B59D0:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B59DC:
    pop {r6,pc}
// end of function sub_80B5998

.thumb
sub_80B59DE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5A08
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B5A08:
    pop {pc}
// end of function sub_80B59DE

.thumb
sub_80B5A0A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5A2A
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B5A2A:
    pop {pc}
// end of function sub_80B5A0A

.thumb
sub_80B5A2C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5A3E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B5A3E:
    pop {pc}
// end of function sub_80B5A2C

.thumb
sub_80B5A40:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B5A54
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x29 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B5A54:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x20 
    bne loc_80B5A60
    mov r0, #0xa
    bl sub_800AF88
loc_80B5A60:
    cmp r0, #0x15
    bne loc_80B5A70
    mov r4, #3
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    b loc_80B5AC4
loc_80B5A70:
    cmp r0, #0xc
    bne loc_80B5AC4
    ldrb r6, [r5,#4]
    lsl r6, r6, #1
    ldr r1, [pc, #0x80b5af0-0x80b5a78-4] // dword_80B5AF4
    ldrh r1, [r1,r6]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r3, [r5,#4]
    push {r0,r1,r3}
    lsl r3, r3, #2
    ldr r4, [pc, #0x80b5ad4-0x80b5a92-2] // dword_80B5AD8
    ldr r4, [r4,r3]
    mov r2, #0
    mov r7, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r0,r1,r3}
    ldr r2, [pc, #0x80b5ae8-0x80b5aa4-4] // dword_80B5AEC
    ldrb r4, [r2,r3]
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #8
    orr r4, r2
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
loc_80B5AC4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B5AD0
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80B5AD0:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80B5AD4:    .word dword_80B5AD8
dword_80B5AD8:    .word 0x705FF01, 0x705FF04, 0x705FF04, 0x705FF01
off_80B5AE8:    .word dword_80B5AEC
dword_80B5AEC:    .word 0x19171719
off_80B5AF0:    .word dword_80B5AF4
dword_80B5AF4:    .word 0x5A001E
    .word 0x140096
// end of function sub_80B5A40

.thumb
sub_80B5AFC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B5B0C
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B5B0C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B5B28
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5B28:
    pop {pc}
// end of function sub_80B5AFC

.thumb
sub_80B5B2A:
    push {lr}
    ldr r1, [pc, #0x80b5b38-0x80b5b2c-4] // off_80B5B3C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80B5B38:    .word off_80B5B3C
off_80B5B3C:    .word sub_80B5B50+1
    .word sub_80B5B9A+1
    .word sub_80B5BC6+1
    .word sub_80B5BE8+1
    .word sub_80B5C68+1
// end of function sub_80B5B2A

.thumb
sub_80B5B50:
    push {r6,lr}
    bl sub_80B5618
    tst r0, r0
    bne loc_80B5B5E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B5B5E:
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80B5B8C
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B5B98
loc_80B5B8C:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5B98:
    pop {r6,pc}
// end of function sub_80B5B50

.thumb
sub_80B5B9A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5BC4
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B5BC4:
    pop {pc}
// end of function sub_80B5B9A

.thumb
sub_80B5BC6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5BE6
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B5BE6:
    pop {pc}
// end of function sub_80B5BC6

.thumb
sub_80B5BE8:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B5C12
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r4, #4
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x90
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B5C12:
    ldrh r0, [r5,#0x20]
    cmp r0, #9
    bne loc_80B5C48
    bl sub_800AB54
    mov r1, #4
    mul r0, r1
    ldr r0, [r5,#0x34]
    lsl r1, r1, #0x10
    add r1, r1, r0
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r4, #0x30 
    lsl r4, r4, #0x10
    add r3, r3, r4
    ldrb r6, [r5,#4]
    ldr r4, [pc, #0x80b5c58-0x80b5c32-2] // dword_80B5C5C
    ldrb r4, [r4,r6]
    ldr r0, [pc, #0x80b5c60-0x80b5c36-2] // dword_80B5C64
    ldrb r0, [r0,r6]
    mov r6, #0x14
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_80CE1A8
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80B5C48:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x15
    blt locret_80B5C56
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B5C56:
    pop {r4,r6,r7,pc}
off_80B5C58:    .word dword_80B5C5C
dword_80B5C5C:    .word 0x3050403
off_80B5C60:    .word dword_80B5C64
dword_80B5C64:    .word 0xA643C14
// end of function sub_80B5BE8

.thumb
sub_80B5C68:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B5C78
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B5C78:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B5C90
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5C90:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B5C68

.thumb
nullsub_67:
    mov pc, lr
    .balign 4, 0x00
// end of function nullsub_67

.thumb
sub_80B5C98:
    push {lr}
    ldr r1, [pc, #0x80b5cbc-0x80b5c9a-2] // off_80B5CC0
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0x10]
    cmp r0, #4
    bne loc_80B5CB6
    bl sub_8007920
    beq loc_80B5CB6
    bl sub_80143E6
    b locret_80B5CBA
loc_80B5CB6:
    bl sub_80106E2
locret_80B5CBA:
    pop {pc}
off_80B5CBC:    .word off_80B5CC0
off_80B5CC0:    .word sub_80B5CCC+1
    .word sub_80B5D3A+1
    .word sub_80104D8+1
// end of function sub_80B5C98

.thumb
sub_80B5CCC:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0x11
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b5d30-0x80b5cde-2] // dword_80B5D34
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x2e]
    bl sub_8012442
    tst r0, r0
    bne loc_80B5CF2
    bl sub_80033B4
    b locret_80B5D2C
loc_80B5CF2:
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_80B5DBC
    mov r0, #0
    bl sub_80B5DE2
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B5D3A
locret_80B5D2C:
    pop {pc}
    .byte 0, 0
off_80B5D30:    .word dword_80B5D34
dword_80B5D34:    .word 0x1E1E1E1E
    .hword 0x1E1E
// end of function sub_80B5CCC

.thumb
sub_80B5D3A:
    push {lr}
    bl sub_801375C
    bl sub_8012EF8
    bl sub_80B5DF8
    ldr r0, [pc, #0x80b5d54-0x80b5d48-4] // off_80B5D58
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80B5D54:    .word off_80B5D58
off_80B5D58:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_80B5D80+1
    .word sub_80B5D96+1
    .word sub_80B5E78+1
    .word loc_80B60F8+1
    .word 0xFF800000
// end of function sub_80B5D3A

.thumb
sub_80B5D80:
    push {lr}
    bl sub_8010568
    ldrb r0, [r5,#9]
    cmp r0, #5
    beq locret_80B5D94
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B5D94:
    pop {pc}
// end of function sub_80B5D80

.thumb
sub_80B5D96:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b5da8-0x80b5d9e-2] // off_80B5DAC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80B5DA8:    .word off_80B5DAC
off_80B5DAC:    .word sub_80B5DB0+1
// end of function sub_80B5D96

.thumb
sub_80B5DB0:
    push {lr}
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B5DB0

.thumb
sub_80B5DBC:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    bne locret_80B5DD6
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b5dd8-0x80b5dcc-4] // loc_80B5DDC
    ldrb r0, [r1,r0]
    str r0, [r5,#0x60]
    ldrb r0, [r5,#0x10]
    str r0, [r5,#0x64]
locret_80B5DD6:
    pop {pc}
off_80B5DD8:    .word loc_80B5DDC
// end of function sub_80B5DBC

loc_80B5DDC:
    lsl r1, r0, #0x10
    lsr r0, r1, #0x10
    asr r0, r2, #0x10
.thumb
sub_80B5DE2:
    push {r1,lr}
    cmp r0, #3
    bgt loc_80B5DF4
    mov r1, #1
    bic r0, r1
    ldr r1, [r5,#0x60]
    cmp r1, #0
    bgt loc_80B5DF4
    add r0, #1
loc_80B5DF4:
    strb r0, [r5,#0x10]
    pop {r1,pc}
// end of function sub_80B5DE2

.thumb
sub_80B5DF8:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #4
    blt loc_80B5E10
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B5E42
    ldr r0, [r5,#0x64]
    bl sub_80B5DE2
loc_80B5E10:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq locret_80B5E42
    ldr r3, [r5,#0x54]
    ldrh r1, [r3,#0x28]
    cmp r1, #0
    beq locret_80B5E42
    sub r0, r0, r1
    bpl loc_80B5E24
    mov r0, #0
loc_80B5E24:
    str r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80B5E3A
    ldrb r0, [r5,#0x10]
    str r0, [r5,#0x64]
    mov r0, #4
    bl sub_80B5DE2
    mov r0, #0xc5
    bl f500_8000558
loc_80B5E3A:
    bl sub_800AFA6
    bl sub_80131DC
locret_80B5E42:
    pop {pc}
// end of function sub_80B5DF8

.thumb
sub_80B5E44:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r2, [pc, #0x80b5e70-0x80b5e48-4] // =0x30
    ldr r3, [pc, #0x80b5e74-0x80b5e4a-2] // =0xF880000
    add r7, sp, #0
    mov r0, #6
    bl sub_800A0A4
    tst r0, r0
    beq loc_80B5E6C
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B5E6C:
    add sp, sp, #0x18
    pop {r7,pc}
off_80B5E70:    .word 0x30
dword_80B5E74:    .word 0xF880000
// end of function sub_80B5E44

.thumb
sub_80B5E78:
    push {r6,lr}
    ldr r1, [pc, #0x80b5e88-0x80b5e7a-2] // off_80B5E8C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B5E88:    .word off_80B5E8C
off_80B5E8C:    .word sub_80B5E9C+1
    .word sub_80B5ED0+1
    .word sub_80B5F20+1
    .word sub_80B6010+1
// end of function sub_80B5E78

.thumb
sub_80B5E9C:
    push {lr}
    mov r0, #2
    bl sub_80B5DE2
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r5,#0x12]
    strb r0, [r3,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r3,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
    strb r0, [r5,#6]
    add r0, #6
    strb r0, [r5,#7]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #0xc6
    bl f500_8000558
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B5E9C

.thumb
sub_80B5ED0:
    push {lr}
    bl sub_80B60BC
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B5F02
    mov r0, #8
    strh r0, [r5,#0xa]
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #0xc7
    bl f500_8000558
    mov r0, #6
    strh r0, [r5,#0x22]
    bl sub_800AB54
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r2, [pc, #0x80b5f04-0x80b5efa-2] // dword_80B5F08
    ldr r1, [r2,r1]
    mul r0, r1
    str r0, [r5,#0x40]
locret_80B5F02:
    pop {pc}
off_80B5F04:    .word dword_80B5F08
dword_80B5F08:    .word 0x20000, 0x24CCD, 0x2999A, 0x2E667, 0x33334, 0x38000
// end of function sub_80B5ED0

.thumb
sub_80B5F20:
    push {r4,lr}
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_800ACF6
    push {r0}
    mov r0, #0x40 
    bl sub_8012F36
    pop {r0}
    cmp r0, #0
    beq loc_80B5F46
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B5F4C
loc_80B5F46:
    bl sub_80B60BC
    b locret_80B6002
loc_80B5F4C:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80B5F6A
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r4, #1
    mov r0, #8
    lsl r0, r0, #0x10
    add r1, r1, r0
    bl sub_80E17DE
    mov r0, #6
    strh r0, [r5,#0x22]
loc_80B5F6A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r4, r0, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x80b600c-0x80b5f78-4] // =0xA000
    tst r0, r1
    beq loc_80B5F84
    ldr r0, [r5,#0x40]
    asr r0, r0, #1
    b loc_80B5F86
loc_80B5F84:
    ldr r0, [r5,#0x40]
loc_80B5F86:
    ldr r1, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    cmp r4, r1
    beq loc_80B5F9E
    add r2, r4, #0
    bl sub_800ADFC
    cmp r0, #0
    beq loc_80B5F9E
    bl sub_800AB30
loc_80B5F9E:
    bl sub_800AB40
    mov r0, #1
    bl sub_8012D7C
    bl sub_8009E58
    tst r0, r0
    beq loc_80B5FD4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b60b0-0x80b5fb4-4] // =0x10
    ldr r3, [pc, #0x80b60b4-0x80b5fb6-2] // =0x3800000
    bl sub_8009E78
    cmp r0, #0
    bne loc_80B5FFE
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B60F8
    mov r0, #1
    bl sub_8012D7C
    b locret_80B6002
loc_80B5FD4:
    ldrh r0, [r5,#0x3a]
    add r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r1, #0x28 
    mov r0, #6
    mul r1, r0
    lsl r1, r1, #0x10
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_8012D74
    bl sub_80B5DBC
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x3c 
    strh r0, [r5,#0x22]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    b locret_80B6002
loc_80B5FFE:
    bl sub_8012D4E
locret_80B6002:
    pop {r4,pc}
    .word 0x340000, 0x40000
dword_80B600C:    .word 0xA000
// end of function sub_80B5F20

.thumb
sub_80B6010:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B60AC
    ldrh r0, [r5,#0x3a]
    sub r0, #0xf0
    strh r0, [r5,#0x3a]
    bl sub_800A15E
    bl sub_800AB0A
    add r4, r1, #0
    ldr r0, [r5,#0x34]
    bl sub_800AAEC
    ldr r2, [pc, #0x80b60b0-0x80b6030-4] // =0x10
    ldr r3, [pc, #0x80b60b4-0x80b6032-2] // =0x3800000
    bl sub_8009E78
    cmp r0, #0
    bne loc_80B605E
    bl sub_80B5E44
    cmp r0, #0
    bne loc_80B6058
loc_80B6044:
    ldrh r0, [r5,#0x3a]
    add r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B60F8
    b locret_80B60AC
loc_80B6058:
    bl sub_800AB0A
    add r4, r1, #0
loc_80B605E:
    add r1, r4, #0
    str r1, [r5,#0x38]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    bl sub_800AAEC
    bl sub_8009A52
    ldr r1, [pc, #0x80b60b8-0x80b606e-2] // LCDControl
    tst r0, r1
    beq loc_80B608A
    bl sub_80B61E2
    cmp r0, #0
    beq loc_80B608A
    bl sub_80B5E44
    cmp r0, #0
    beq loc_80B6044
    bl sub_800AB0A
    str r1, [r5,#0x38]
loc_80B608A:
    mov r0, #0xc7
    bl f500_8000558
    bl sub_800AB40
    bl sub_8012D4E
    mov r0, #6
    strh r0, [r5,#0x22]
    mov r0, #8
    strh r0, [r5,#0xa]
    mov r0, #1
    bl sub_8012D7C
    mov r0, #2
    bl sub_80B5DE2
locret_80B60AC:
    pop {r4,pc}
    .byte 0, 0
dword_80B60B0:    .word 0x10
dword_80B60B4:    .word 0x3800000
off_80B60B8:    .word LCDControl
// end of function sub_80B6010

.thumb
sub_80B60BC:
    push {r4,lr}
    ldrb r0, [r5,#6]
    sub r0, #1
    strb r0, [r5,#6]
    bne loc_80B60D0
    mov r0, #0x14
    bl sub_80B60E4
    mov r0, #0xe
    strb r0, [r5,#6]
loc_80B60D0:
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bne locret_80B60E2
    mov r0, #9
    bl sub_80B60E4
    mov r0, #0xe
    strb r0, [r5,#7]
locret_80B60E2:
    pop {r4,pc}
// end of function sub_80B60BC

.thumb
sub_80B60E4:
    push {lr}
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r4, #1
    add r1, r1, r0
    bl sub_80E17DE
    pop {pc}
// end of function sub_80B60E4

loc_80B60F8:
    push {r6,lr}
    ldr r1, [pc, #0x80b6108-0x80b60fa-2] // off_80B610C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B6108:    .word off_80B610C
off_80B610C:    .word sub_80B611C+1
    .word sub_80B617C+1
    .word sub_80B61BC+1
    .word sub_80B61D0+1
.thumb
sub_80B611C:
    push {r4,r6,lr}
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_800ACF6
    beq loc_80B6172
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    ldr r3, [r5,#0x3c]
    mov r0, #8
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r4, #0x16
    bl sub_80E17DE
    mov r0, #0
    bl sub_80B5DE2
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B617A
loc_80B6172:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B617A:
    pop {r4,r6,pc}
// end of function sub_80B611C

.thumb
sub_80B617C:
    push {r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B61BA
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #8
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    bl sub_8012D7C
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B61BA:
    pop {r7,pc}
// end of function sub_80B617C

.thumb
sub_80B61BC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B61CE
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B61CE:
    pop {pc}
// end of function sub_80B61BC

.thumb
sub_80B61D0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B61E0
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B61E0:
    mov pc, lr
// end of function sub_80B61D0

.thumb
sub_80B61E2:
    push {r4,r6,lr}
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x61 
    mov r2, #0x66 
    bl sub_80B656C
    add r4, r0, #0
    beq loc_80B6218
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    bl sub_800AAEC
    mov r3, sp
loc_80B61FE:
    ldr r2, [r3]
    ldrb r6, [r2,#0x12]
    cmp r6, r0
    bne loc_80B6210
    ldrb r6, [r2,#0x13]
    cmp r6, r1
    bne loc_80B6210
    mov r0, #1
    b loc_80B6218
loc_80B6210:
    add r3, #4
    sub r4, #1
    bne loc_80B61FE
    mov r0, #0
loc_80B6218:
    add sp, sp, #0x10
    pop {r4,r6,pc}
// end of function sub_80B61E2

loc_80B621C:
    push {lr}
    ldr r1, [pc, #0x80b6230-0x80b621e-2] // off_80B6234
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80B6230:    .word off_80B6234
off_80B6234:    .word sub_80B6240+1
    .word sub_80B6298+1
    .word sub_80104D8+1
.thumb
sub_80B6240:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #2
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B6240

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B627A
    bl sub_80033B4
    b locret_80B6296
loc_80B627A:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B6298
locret_80B6296:
    pop {pc}
.thumb
sub_80B6298:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80b62ac-0x80b629e-2] // off_80B62B0
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B62AC:    .word off_80B62B0
off_80B62B0:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80B62DC+1
    .word sub_80B6598+1
    .word loc_80B65AC+1
    .word loc_80B67FC+1
    .word loc_80B66E6+1
// end of function sub_80B6298

loc_80B62DC:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80B62EE
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B62FC
loc_80B62EE:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b6300-0x80b62f4-4] // off_80B6304
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80B62FC:
    pop {r6,pc}
    .byte 0, 0
off_80B6300:    .word off_80B6304
off_80B6304:    .word sub_80B6310+1
    .word sub_80B6374+1
    .word sub_80B638E+1
.thumb
sub_80B6310:
    push {lr}
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #7
    mov r2, #0xc
    bl sub_80B656C
    cmp r0, #0
    beq loc_80B6336
    mov r3, sp
loc_80B6324:
    ldr r2, [r3]
    ldrb r2, [r2,#9]
    cmp r2, #9
    beq loc_80B6356
    cmp r2, #0xa
    beq loc_80B6356
    add r3, #4
    sub r0, #1
    bne loc_80B6324
loc_80B6336:
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_80B6346
    ldrb r0, [r6,#9]
    cmp r0, #8
    bge loc_80B6360
loc_80B6346:
    bl sub_8001AF6
    mov r1, #1
    and r1, r1
    ldrb r0, [r6,#9]
    add r0, #1
    add r0, r0, r1
    strb r0, [r6,#9]
loc_80B6356:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80B6370
loc_80B6360:
    bl sub_80B63AE
    cmp r0, #0
    bne loc_80B636C
    bl sub_80B6414
loc_80B636C:
    mov r0, #0
    strb r0, [r6,#9]
loc_80B6370:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80B6310

.thumb
sub_80B6374:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E4F92
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80B639A
    pop {r4,r6,r7,pc}
// end of function sub_80B6374

.thumb
sub_80B638E:
    push {lr}
    bl sub_80B96E0
    bl sub_80B639A
    pop {pc}
// end of function sub_80B638E

.thumb
sub_80B639A:
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov pc, lr
// end of function sub_80B639A

.thumb
sub_80B63AE:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80B63EE
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80B63EE
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80B63EE
    bl sub_8007BB4
    ldr r1, [pc, #0x80b6410-0x80b63d2-2] // =0x12C
    cmp r0, r1
    blt loc_80B63EE
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x85
    beq loc_80B63F2
    cmp r0, #0x62 
    beq loc_80B63FA
    cmp r0, #0x8d
    beq loc_80B6404
    cmp r0, #0x90
    beq loc_80B6404
loc_80B63EE:
    mov r0, #0
    pop {pc}
loc_80B63F2:
    mov r0, #6
    bl sub_80B3C56
    b loc_80B640C
loc_80B63FA:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B640C
loc_80B6404:
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80B640C:
    mov r0, #1
    pop {pc}
off_80B6410:    .word 0x12C
// end of function sub_80B63AE

.thumb
sub_80B6414:
    push {lr}
    ldrb r0, [r5,#4]
    lsr r0, r0, #1
    bcs loc_80B6426
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80B642E
loc_80B6426:
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B642E:
    pop {pc}
// end of function sub_80B6414

.thumb
sub_80B6430:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x12]
    ldr r3, [pc, #0x80b64ec-0x80b643e-2] // dword_80B64F0
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    cmp r0, #1
    blt loc_80B648C
    beq loc_80B6480
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r3, [r0,r1]
    mov r7, #1
    eor r1, r7
    ldrb r7, [r0,r1]
    push {r1-r3}
    bl sub_800A146
    pop {r1-r3}
    lsr r1, r3, #4
    cmp r0, r1
    beq loc_80B6478
    lsl r3, r3, #0x1d
    lsr r0, r3, #0x1d
    b loc_80B6492
loc_80B6478:
    lsr r1, r7, #4
    lsl r7, r7, #0x1d
    lsr r0, r7, #0x1d
    b loc_80B6492
loc_80B6480:
    add r0, sp, #0
    ldrb r0, [r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_80B6492
loc_80B648C:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B6492
loc_80B6492:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
// end of function sub_80B6430

.thumb
sub_80B64A2:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x12]
    ldr r3, [pc, #0x80b64ec-0x80b64b0-4] // dword_80B64F0
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    cmp r0, #0
    beq loc_80B64D6
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_80B64DA
loc_80B64D6:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B64DA:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_80B64EC:    .word dword_80B64F0
dword_80B64F0:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80B64A2

.thumb
sub_80B6500:
    push {r7,lr}
    mov r0, #0
    mov r1, #0
    push {r0,r1}
    push {r0,r1}
    push {r0,r1}
    ldr r3, [pc, #0x80b6554-0x80b650c-4] // off_80B6558
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_8009F90
    cmp r0, #0
    beq loc_80B6526
    add r1, r0, #0
    add r2, r0, #0
    mov r0, sp
    bl fA00_8000AA2
loc_80B6526:
    mov r7, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x80b6568-0x80b652c-4] // =0xA000
    tst r0, r1
    beq loc_80B6538
    add r2, sp, #0
    ldrb r0, [r2,#2]
    b loc_80B6542
loc_80B6538:
    bl sub_800A15E
    lsl r1, r1, #4
    orr r0, r1
    add r2, sp, #0
loc_80B6542:
    ldrb r1, [r2]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r2,#1]
    lsl r1, r1, #0x10
    orr r0, r1
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_80B6554:    .word off_80B6558
off_80B6558:    .word 0x30
    .word 0xF800000, 0x10, 0xF800020
dword_80B6568:    .word 0xA000
// end of function sub_80B6500

.thumb
sub_80B656C:
    push {r4-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x18]
    add r6, #0x48 
    mov r3, #0
    mov r4, #0
loc_80B6578:
    ldr r7, [r6,r3]
    cmp r7, #0
    beq loc_80B658E
    ldrb r5, [r7,#0xf]
    cmp r5, r1
    blt loc_80B658E
    cmp r5, r2
    bgt loc_80B658E
    add r4, #1
    str r7, [r0]
    add r0, #4
loc_80B658E:
    add r3, #4
    cmp r3, #0x10
    blt loc_80B6578
    add r0, r4, #0
    pop {r4-r7,pc}
// end of function sub_80B656C

.thumb
sub_80B6598:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B65AA
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B65AA:
    pop {pc}
// end of function sub_80B6598

loc_80B65AC:
    push {r6,lr}
    ldr r1, [pc, #0x80b65bc-0x80b65ae-2] // off_80B65C0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B65BC:    .word off_80B65C0
off_80B65C0:    .word sub_80B65D4+1
    .word sub_80B65EE+1
    .word sub_80B6660+1
    .word sub_80B669E+1
    .word sub_80B66D2+1
.thumb
sub_80B65D4:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b65e4-0x80b65d8-4] // loc_80B65E8
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
off_80B65E4:    .word loc_80B65E8
// end of function sub_80B65D4

loc_80B65E8:
    lsr r7, r1, #0x1c
    lsr r4, r1, #0x10
    lsr r0, r1, #0x20
.thumb
sub_80B65EE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6658
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B660E
    mov r0, #0x50 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    b locret_80B6658
loc_80B660E:
    ldr r1, [pc, #0x80b665c-0x80b660e-2] // =0xA000
    tst r0, r1
    beq loc_80B661A
    bl sub_80B64A2
    b loc_80B661E
loc_80B661A:
    bl sub_80B6430
loc_80B661E:
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_800ACF6
    beq loc_80B6650
    mov r0, #0x40 
    bl sub_8012F36
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r3,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #6
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
    b locret_80B6658
loc_80B6650:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B6658:
    pop {pc}
    .balign 4, 0x00
dword_80B665C:    .word 0xA000
// end of function sub_80B65EE

.thumb
sub_80B6660:
    push {r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B669C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #8
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B669C:
    pop {r7,pc}
// end of function sub_80B6660

.thumb
sub_80B669E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B66C6
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b66c8-0x80b66b8-4] // loc_80B66CC
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B66C6:
    pop {pc}
off_80B66C8:    .word loc_80B66CC
// end of function sub_80B669E

loc_80B66CC:
    asr r4, r2, #0x10
    asr r0, r2, #0x20
    lsr r4, r1, #0x10
.thumb
sub_80B66D2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B66E4
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B66E4:
    pop {pc}
// end of function sub_80B66D2

loc_80B66E6:
    push {r6,lr}
    ldr r1, [pc, #0x80b66f4-0x80b66e8-4] // off_80B66F8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B66F4:    .word off_80B66F8
off_80B66F8:    .word sub_80B670C+1
    .word sub_80B671C+1
    .word sub_80B6754+1
    .word sub_80B67BC+1
    .word sub_80B67D4+1
.thumb
sub_80B670C:
    push {lr}
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B670C

.thumb
sub_80B671C:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80B6732
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B6732
    mov r0, #4
    strb r0, [r5,#0x10]
loc_80B6732:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6752
    bl sub_80B6500
    mov r6, #0x60 
    add r6, r6, r5
    str r0, [r6]
    mov r0, #0x14
    bl sub_800AF88
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B6752:
    pop {pc}
// end of function sub_80B671C

.thumb
sub_80B6754:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    mov r1, #4
    tst r0, r1
    bne loc_80B6778
    mov r7, #0x60 
    add r7, r7, r5
    mov r4, #0
loc_80B6764:
    ldrb r0, [r7,r4]
    cmp r0, #0
    beq loc_80B6778
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_8009D6C
    add r4, #1
    b loc_80B6764
loc_80B6778:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B67BA
    mov r4, #0
loc_80B6782:
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_80B67AC
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r3, #0
    ldrb r4, [r5,#4]
    ldr r2, [pc, #0x80b6898-0x80b6792-2] // dword_80B689C
    ldrb r6, [r2,r4]
    lsl r6, r6, #0x10
    ldr r2, [pc, #0x80b68a4-0x80b6798-4] // dword_80B68A8
    ldrb r4, [r2,r4]
    orr r6, r4
    mov r4, #0x3c 
    lsl r4, r4, #8
    mov r2, #1
    bl sub_80CFFA8
    add r7, #1
    b loc_80B6782
loc_80B67AC:
    mov r0, #0x9d
    bl f500_8000558
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B67BA:
    pop {r4,r6,r7,pc}
// end of function sub_80B6754

.thumb
sub_80B67BC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B67D2
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B67D2:
    pop {pc}
// end of function sub_80B67BC

.thumb
sub_80B67D4:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    bne loc_80B67EA
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B67EA
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80B67EA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B67FA
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B67FA:
    pop {pc}
// end of function sub_80B67D4

loc_80B67FC:
    push {r6,lr}
    ldr r1, [pc, #0x80b680c-0x80b67fe-2] // off_80B6810
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B680C:    .word off_80B6810
off_80B6810:    .word sub_80B670C+1
    .word sub_80B6824+1
    .word 0x0
    .word sub_80B67BC+1
    .word sub_80B67D4+1
.thumb
sub_80B6824:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80B683A
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B683A
    mov r0, #4
    strb r0, [r5,#0x10]
loc_80B683A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6892
    mov r7, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x80b6894-0x80b6848-4] // =0xA000
    tst r0, r1
    bne loc_80B6860
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    lsl r0, r0, #2
    add r0, #0x44 
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r0,r1]
    ldr r7, [r0,r1]
loc_80B6860:
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x80b6898-0x80b6862-2] // dword_80B689C
    ldrb r6, [r3,r0]
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80b68a4-0x80b6868-4] // dword_80B68A8
    ldrb r0, [r3,r0]
    orr r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    ldrb r4, [r5,#4]
    lsr r4, r4, #1
    add r4, #0
    bl sub_80D01CA
    mov r0, #0x14
    bl sub_800AF88
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B6892:
    pop {r4,r6,r7,pc}
dword_80B6894:    .word 0xA000
off_80B6898:    .word dword_80B689C
dword_80B689C:    .word 0x1E1E1E1E, 0x1E1E
off_80B68A4:    .word dword_80B68A8
dword_80B68A8:    .word 0x96643214, 0xFAC8, 0x46F7
// end of function sub_80B6824

loc_80B68B4:
    push {lr}
    ldr r1, [pc, #0x80b68c8-0x80b68b6-2] // off_80B68CC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B68C8:    .word off_80B68CC
off_80B68CC:    .word sub_80B68D8+1
    .word sub_80B6938+1
    .word sub_8010F0C+1
.thumb
sub_80B68D8:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x12
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B68D8

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80B6900
    mov r0, #3
loc_80B6900:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0x14
    lsl r0, r0, #0x10
    ldrh r1, [r5,#0x2c]
    orr r0, r1
    strh r1, [r5,#0x2c]
    bl sub_8012442
    tst r0, r0
    bne loc_80B6924
    bl sub_80033B4
    b locret_80B6936
loc_80B6924:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B6938
locret_80B6936:
    pop {pc}
.thumb
sub_80B6938:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b694c-0x80b693e-2] // off_80B6950
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B694C:    .word off_80B6950
off_80B6950:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80B6980+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80B6998+1
    .word sub_80B6D36+1
    .word loc_80B6D4A+1
    .word loc_80B6E54+1
    .word loc_80B707E+1
    .word loc_80B71FC+1
// end of function sub_80B6938

.thumb
sub_80B6980:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B6992
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
loc_80B6992:
    bl sub_8010E34
    pop {pc}
// end of function sub_80B6980

loc_80B6998:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b69ac-0x80b69a0-4] // off_80B69B0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80B69AC:    .word off_80B69B0
off_80B69B0:    .word sub_80B69C0+1
    .word sub_80B6A68+1
    .word sub_80B6A82+1
    .word sub_80B6A94+1
.thumb
sub_80B69C0:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrh r0, [r5,#0x2c]
    ldrh r1, [r3,#0x1e]
    cmp r0, r1
    beq loc_80B69D2
    strh r0, [r3,#0x1e]
    ldrh r0, [r5,#0x2e]
    strb r0, [r3,#5]
loc_80B69D2:
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80B6A24
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #4
    bge loc_80B69F4
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    b locret_80B6A62
loc_80B69F4:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B6A0A
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B6A62
loc_80B6A0A:
    ldr r1, [pc, #0x80b6a64-0x80b6a0a-2] // =0xA000
    tst r0, r1
    beq loc_80B6A1A
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B6A62
loc_80B6A1A:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B6A62
loc_80B6A24:
    ldrb r0, [r6,#8]
    cmp r0, #0
    bne loc_80B6A3E
    ldr r0, [r5,#0x60]
    cmp r0, #1
    bgt loc_80B6A3E
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #1
    strb r0, [r6,#8]
    b locret_80B6A62
loc_80B6A3E:
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #1
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    bgt loc_80B6A52
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80B6A5A
loc_80B6A52:
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80B6A5A:
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #0
    strb r0, [r6,#8]
locret_80B6A62:
    pop {pc}
dword_80B6A64:    .word 0xA000
// end of function sub_80B69C0

.thumb
sub_80B6A68:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    bl sub_80B553E
    tst r0, r0
    bne loc_80B6A7C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B6A7C:
    bl sub_80B6AB8
    pop {pc}
// end of function sub_80B6A68

.thumb
sub_80B6A82:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80B6AB8
    pop {pc}
// end of function sub_80B6A82

.thumb
sub_80B6A94:
    push {lr}
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    beq loc_80B6AA6
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B6AA6:
    bl sub_80B553E
    tst r0, r0
    bne loc_80B6AB2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B6AB2:
    bl sub_80B6AB8
    pop {pc}
// end of function sub_80B6A94

.thumb
sub_80B6AB8:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B6D4A
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B6AB8

.thumb
sub_80B6AD4:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    bl sub_800A146
    bl sub_80B6B4A
    tst r0, r0
    bne loc_80B6B26
    bl sub_800A146
    cmp r0, #2
    bne loc_80B6B16
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    lsl r0, r0, #1
    add r0, #1
    add r6, r0, #0
    bl sub_80B6B4A
    tst r0, r0
    bne loc_80B6B26
    mov r0, #2
    eor r0, r6
    bl sub_80B6B4A
    bne loc_80B6B26
    b loc_80B6B20
loc_80B6B16:
    mov r0, #2
    bl sub_80B6B4A
    tst r0, r0
    bne loc_80B6B26
loc_80B6B20:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B6B3A
loc_80B6B26:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B6B3A:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r6,r7,pc}
// end of function sub_80B6AD4

.thumb
sub_80B6B4A:
    push {lr}
    ldr r2, [pc, #0x80b6ba0-0x80b6b4c-4] // =0x30
    ldr r3, [pc, #0x80b6ba4-0x80b6b4e-2] // =0xF880080
    add r7, sp, #4
    bl sub_800A0DA
    pop {pc}
// end of function sub_80B6B4A

.thumb
sub_80B6B58:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    mov r0, #6
    ldr r2, [pc, #0x80b6ba0-0x80b6b66-2] // =0x30
    ldr r3, [pc, #0x80b6ba4-0x80b6b68-4] // =0xF880080
    add r7, sp, #0
    bl sub_800A0A4
    cmp r0, #0
    bne loc_80B6B7A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B6B8E
loc_80B6B7A:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B6B8E:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r6,r7,pc}
    .byte 0, 0
off_80B6BA0:    .word 0x30
dword_80B6BA4:    .word 0xF880080
// end of function sub_80B6B58

.thumb
sub_80B6BA8:
    push {r4,r6,r7,lr}
    cmp r0, #0
    bne loc_80B6BC4
    bl sub_800AB54
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r2, [pc, #0x80b6c10-0x80b6bb6-2] // dword_80B6C14
    ldr r1, [r2,r1]
    mul r0, r1
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    b locret_80B6C0C
loc_80B6BC4:
    add r7, r0, #0
    ldrb r0, [r5,#4]
    lsl r1, r1, #2
    add r1, r1, r0
    ldr r0, [pc, #0x80b6c24-0x80b6bcc-4] // loc_80B6C28
    ldrb r1, [r0,r1]
    add r6, r1, #0
    strb r1, [r5,#5]
    strb r1, [r5,#7]
    lsr r2, r1, #1
    strb r2, [r5,#6]
    mov r0, #0x28 
    lsl r0, r0, #0x10
    lsl r2, r1, #0xf
    add r0, r0, r2
    lsl r2, r1, #0xe
    add r0, r0, r2
    svc 6
    add r4, r0, #0
    mov r0, #0x18
    lsl r0, r0, #0x10
    add r1, r6, #0
    lsl r2, r1, #0xf
    add r0, r0, r2
    svc 6
    add r6, r0, #0
    bl sub_800AB54
    mul r0, r4
    str r0, [r5,#0x40]
    cmp r7, #1
    bne loc_80B6C0A
    mov r0, #0
    sub r0, #1
    mul r6, r0
loc_80B6C0A:
    str r6, [r5,#0x44]
locret_80B6C0C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_80B6C10:    .word dword_80B6C14
dword_80B6C14:    .word 0x28000, 0x30000, 0x38000, 0x40000
off_80B6C24:    .word loc_80B6C28
// end of function sub_80B6BA8

loc_80B6C28:
    asr r3, r2, #0x20
    lsr r5, r1, #8
    sub r6, r3, r0
    asr r6, r2, #8
.thumb
sub_80B6C30:
    push {lr}
    mov r1, #0
    ldr r0, [r5,#0x44]
    cmp r0, #0
    beq loc_80B6C56
    ldr r2, [r5,#0x38]
    lsl r1, r0, #1
    bcs loc_80B6C48
    ldr r1, [pc, #0x80b6c74-0x80b6c40-4] // =0x340000
    cmp r2, r1
    blt loc_80B6C56
    b loc_80B6C4E
loc_80B6C48:
    ldr r1, [pc, #0x80b6c78-0x80b6c48-4] // =0x40000
    cmp r2, r1
    bgt loc_80B6C56
loc_80B6C4E:
    mov r1, #0
    sub r1, #1
    mul r0, r1
    str r0, [r5,#0x44]
loc_80B6C56:
    ldr r0, [r5,#0x40]
    lsl r1, r0, #1
    bcc locret_80B6C70
    ldr r1, [pc, #0x80b6c7c-0x80b6c5c-4] // =0xFF9C0000
    ldr r2, [r5,#0x34]
    cmp r2, r1
    bgt locret_80B6C70
    mov r1, #0
    sub r1, #1
    mul r0, r1
    str r0, [r5,#0x40]
    bl sub_800AB30
locret_80B6C70:
    pop {pc}
    .balign 4, 0x00
dword_80B6C74:    .word 0x340000
dword_80B6C78:    .word 0x40000
dword_80B6C7C:    .word 0xFF9C0000
// end of function sub_80B6C30

.thumb
sub_80B6C80:
    mov r0, #0
    ldr r1, [r5,#0x34]
    ldr r2, [pc, #0x80b6c90-0x80b6c84-4] // =0x8C0000
    cmp r1, r2
    blt locret_80B6C8C
    mov r0, #1
locret_80B6C8C:
    mov pc, lr
    .byte 0, 0
dword_80B6C90:    .word 0x8C0000
// end of function sub_80B6C80

.thumb
sub_80B6C94:
    push {r4,lr}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r4, r1, #0
    ldr r0, [r5,#0x44]
    cmp r0, #0
    beq loc_80B6CD8
    ldr r1, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    cmp r4, r1
    beq loc_80B6CCC
    add r2, r4, #0
    bl sub_800ADFC
    cmp r0, #0
    beq loc_80B6CCC
    bl sub_800AB30
    ldrb r0, [r5,#5]
    strb r0, [r5,#7]
    b locret_80B6CDC
loc_80B6CCC:
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    ldrb r1, [r5,#6]
    cmp r0, r1
    bne locret_80B6CDC
loc_80B6CD8:
    bl sub_800AB40
locret_80B6CDC:
    pop {r4,pc}
// end of function sub_80B6C94

.thumb
sub_80B6CDE:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r2, [pc, #0x80b6d10-0x80b6ce2-2] // =0x10000
    ldr r3, [pc, #0x80b6d14-0x80b6ce4-4] // =0x0
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    bne loc_80B6CF6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B6D0A
loc_80B6CF6:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B6D0A:
    add sp, sp, #0x18
    pop {r7,pc}
    .byte 0, 0
dword_80B6D10:    .word 0x10000
dword_80B6D14:    .word 0x0
// end of function sub_80B6CDE

.thumb
sub_80B6D18:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    pop {r4,pc}
// end of function sub_80B6D18

.thumb
sub_80B6D36:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B6D48
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B6D48:
    pop {pc}
// end of function sub_80B6D36

loc_80B6D4A:
    push {r6,lr}
    ldr r1, [pc, #0x80b6d58-0x80b6d4c-4] // off_80B6D5C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B6D58:    .word off_80B6D5C
off_80B6D5C:    .word sub_80B6D6C+1
    .word sub_80B6DB8+1
    .word sub_80B6DF2+1
    .word sub_80B6E40+1
.thumb
sub_80B6D6C:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80B6DAA
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B6DB6
loc_80B6DAA:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B6DB6:
    pop {r4,r6,pc}
// end of function sub_80B6D6C

.thumb
sub_80B6DB8:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6DF0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B6DF0:
    pop {r4,r7,pc}
// end of function sub_80B6DB8

.thumb
sub_80B6DF2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6E22
    bl sub_8001AF6
    mov r1, #3
    svc 6
    lsl r1, r1, #2
    ldr r0, [pc, #0x80b6e24-0x80b6e06-2] // off_80B6E28
    ldr r1, [r0,r1]
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B6E22:
    pop {pc}
off_80B6E24:    .word off_80B6E28
off_80B6E28:    .word loc_80B6E34
    .word loc_80B6E38
    .word loc_80B6E3C
// end of function sub_80B6DF2

loc_80B6E34:
    adc r0, r2
    cmp r0, #0x32 
loc_80B6E38:
    cmp r0, #0x3c 
    sub r6, r3, #0
loc_80B6E3C:
    add r0, r5, r4
    asr r4, r2, #0x10
.thumb
sub_80B6E40:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6E52
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B6E52:
    pop {pc}
// end of function sub_80B6E40

loc_80B6E54:
    push {r6,lr}
    ldr r1, [pc, #0x80b6e64-0x80b6e56-2] // off_80B6E68
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B6E64:    .word off_80B6E68
off_80B6E68:    .word sub_80B6E88+1
    .word sub_80B6ED4+1
    .word sub_80B6EEA+1
    .word sub_80B6F20+1
    .word sub_80B6F90+1
    .word sub_80B7014+1
    .word sub_80B7038+1
    .word sub_80B7066+1
.thumb
sub_80B6E88:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B6EBC
    ldr r1, [pc, #0x80b6ed0-0x80b6e96-2] // =0xA000
    tst r0, r1
    beq loc_80B6EAA
    bl sub_80B56B8
    cmp r0, #0
    bne loc_80B6EAE
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B6EAE
loc_80B6EAA:
    bl sub_80B6AD4
loc_80B6EAE:
    mov r3, #0x78 
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_80B6D6C
    pop {pc}
loc_80B6EBC:
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0x1c
    ldrb r1, [r5,#9]
    cmp r1, #0xb
    bne loc_80B6ECA
    mov r0, #0x24 
loc_80B6ECA:
    strh r0, [r5,#0xa]
    pop {pc}
    .byte 0, 0
dword_80B6ED0:    .word 0xA000
// end of function sub_80B6E88

.thumb
sub_80B6ED4:
    push {lr}
    bl sub_80B6DB8
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80B6EE8
    mov r0, #6
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0x10]
locret_80B6EE8:
    pop {pc}
// end of function sub_80B6ED4

.thumb
sub_80B6EEA:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B6F1E
    ldrh r0, [r5,#0x20]
    cmp r0, #6
    bne loc_80B6F0A
    mov r0, #0xa
    ldrb r1, [r5,#9]
    cmp r1, #9
    bne loc_80B6F06
    mov r0, #0x14
loc_80B6F06:
    bl sub_800AF88
loc_80B6F0A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B6F1E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B6F1E:
    pop {pc}
// end of function sub_80B6EEA

.thumb
sub_80B6F20:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80B6F30
    mov r0, #0xac
    bl f500_8000558
loc_80B6F30:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B6F80
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012F36
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    bl sub_8001AF6
    mov r1, #0xf
    and r1, r0
    ldr r0, [pc, #0x80b6f88-0x80b6f56-2] // loc_80B6F8C
    ldrb r2, [r5,#4]
    ldrb r2, [r0,r2]
    mov r0, #0
    cmp r1, r2
    blt loc_80B6F68
    mov r0, #1
    and r1, r0
    add r0, r0, r1
loc_80B6F68:
    mov r1, #0
    bl sub_80B6BA8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    mov r0, #0xb5
    bl f500_8000558
    mov r0, #0x10
    strh r0, [r5,#0xa]
loc_80B6F80:
    bl sub_8009EB0
    pop {pc}
    .balign 4, 0x00
off_80B6F88:    .word loc_80B6F8C
// end of function sub_80B6F20

loc_80B6F8C:
    lsr r0, r2, #0x20
    lsl r4, r0, #0x10
.thumb
sub_80B6F90:
    push {r4,lr}
    bl sub_80B6C94
    bl sub_80B6C30
    ldrb r0, [r5,#0x12]
    cmp r0, #7
    beq loc_80B6FAE
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b700c-0x80b6fa2-2] // =0x10
    ldr r3, [pc, #0x80b7010-0x80b6fa4-4] // =0x3800000
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B6FF0
loc_80B6FAE:
    ldr r0, [r5,#0x44]
    cmp r0, #0
    bne loc_80B6FE4
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    ldr r1, [r5,#0x34]
    cmp r1, r0
    ble loc_80B7002
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #1
    bl sub_8012F40
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0x1c
    strh r0, [r5,#0xa]
    b locret_80B700A
loc_80B6FE4:
    bl sub_80B6C80
    cmp r0, #0
    beq loc_80B7002
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
loc_80B6FF0:
    mov r0, #1
    bl sub_8012F40
    bl sub_8012D74
    bl sub_80B6D18
    mov r0, #0x14
    strh r0, [r5,#0xa]
loc_80B7002:
    bl sub_8012D4E
    bl sub_8009EB0
locret_80B700A:
    pop {r4,pc}
dword_80B700C:    .word 0x10
dword_80B7010:    .word 0x3800000
// end of function sub_80B6F90

.thumb
sub_80B7014:
    push {lr}
    bl sub_80B6DB8
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80B7036
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012D7C
    mov r0, #0x18
    ldrb r1, [r5,#9]
    cmp r1, #0xb
    bne loc_80B7034
    mov r0, #0x20 
loc_80B7034:
    strh r0, [r5,#0xa]
locret_80B7036:
    pop {pc}
// end of function sub_80B7014

.thumb
sub_80B7038:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7064
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x1e
    ldrb r1, [r5,#9]
    ldrb r1, [r5,#9]
    cmp r1, #0xb
    bne loc_80B705C
    mov r0, #0x28 
loc_80B705C:
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0xa]
    add r0, #4
    strh r0, [r5,#0xa]
locret_80B7064:
    pop {pc}
// end of function sub_80B7038

.thumb
sub_80B7066:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B707C
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B707C:
    pop {pc}
// end of function sub_80B7066

loc_80B707E:
    push {r6,lr}
    ldr r1, [pc, #0x80b708c-0x80b7080-4] // off_80B7090
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B708C:    .word off_80B7090
off_80B7090:    .word sub_80B70A4+1
    .word sub_80B70D2+1
    .word sub_80B70E4+1
    .word sub_80B7102+1
    .word sub_80B71E0+1
.thumb
sub_80B70A4:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B70C8
    bl sub_80B6B58
    cmp r0, #0
    beq loc_80B70C8
    mov r3, #0x78 
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_80B6D6C
    pop {pc}
loc_80B70C8:
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80B70A4

.thumb
sub_80B70D2:
    push {lr}
    bl sub_80B6DB8
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80B70E2
    mov r0, #0x14
    strh r0, [r5,#0x20]
locret_80B70E2:
    pop {pc}
// end of function sub_80B70D2

.thumb
sub_80B70E4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7100
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B7100:
    pop {pc}
// end of function sub_80B70E4

.thumb
sub_80B7102:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    mov r0, #4
    ldr r2, [pc, #0x80b71d8-0x80b7108-4] // =0x10
    ldr r3, [pc, #0x80b71dc-0x80b710a-2] // =0xF880080
    add r7, sp, #0
    bl sub_800A0A4
    add r6, r0, #0
    mov r0, #5
    ldr r2, [pc, #0x80b71d8-0x80b7116-2] // =0x10
    ldr r3, [pc, #0x80b71dc-0x80b7118-4] // =0xF880080
    add r7, sp, #0
    add r7, r7, r6
    bl sub_800A0A4
    add r0, r0, r6
    beq loc_80B7166
    add r7, r0, #0
    add r1, r0, #0
    add r2, r0, #0
    mov r0, sp
    bl fA00_8000AA2
    mov r4, #0
    mov r6, #2
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80B713E
    add r6, #1
loc_80B713E:
    bl sub_80B717C
    cmp r0, #0xff
    beq loc_80B7166
    push {r4}
    mov r4, #0x60 
    lsl r4, r4, #8
    ldrb r1, [r5,#4]
    add r4, r4, r1
    mov r2, #0
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r3, #0
    bl sub_80D0418
    pop {r4}
    add r4, #1
    cmp r4, r6
    blt loc_80B713E
loc_80B7166:
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
// end of function sub_80B7102

.thumb
sub_80B717C:
    push {r4,lr}
    cmp r4, r7
    blt loc_80B7186
    mov r0, #0xff
    b locret_80B71D6
loc_80B7186:
    mov r3, sp
    add r3, #8
    cmp r4, #2
    beq loc_80B71AC
    cmp r4, #1
    beq loc_80B7196
    ldrb r0, [r3]
    b locret_80B71D6
loc_80B7196:
    ldrb r2, [r3]
    lsr r2, r2, #4
loc_80B719A:
    ldrb r0, [r3,r4]
    lsr r1, r0, #4
    cmp r1, r2
    bne locret_80B71D6
    add r4, #1
    cmp r4, r7
    blt loc_80B719A
loc_80B71A8:
    mov r0, #0xff
    b locret_80B71D6
loc_80B71AC:
    ldrb r2, [r3]
    lsr r2, r2, #4
    mov r4, #1
loc_80B71B2:
    ldrb r0, [r3,r4]
    lsr r1, r0, #4
    cmp r1, r2
    bne loc_80B71BE
    add r4, #1
    b loc_80B71B2
loc_80B71BE:
    mov r4, #1
loc_80B71C0:
    ldrb r0, [r3,r4]
    lsr r0, r0, #4
    cmp r0, r2
    beq loc_80B71CC
    cmp r0, r1
    bne loc_80B71D4
loc_80B71CC:
    add r4, #1
    cmp r4, r7
    blt loc_80B71C0
    b loc_80B71A8
loc_80B71D4:
    ldrb r0, [r3,r4]
locret_80B71D6:
    pop {r4,pc}
dword_80B71D8:    .word 0x10
dword_80B71DC:    .word 0xF880080
// end of function sub_80B717C

.thumb
sub_80B71E0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B71FA
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B71FA:
    pop {pc}
// end of function sub_80B71E0

loc_80B71FC:
    push {r6,lr}
    ldr r1, [pc, #0x80b720c-0x80b71fe-2] // off_80B7210
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B720C:    .word off_80B7210
off_80B7210:    .word sub_80B6E88+1
    .word sub_80B6ED4+1
    .word sub_80B6EEA+1
    .word sub_80B7238+1
    .word sub_80B72D0+1
    .word sub_80B7314+1
    .word sub_80B7374+1
    .word sub_80B7014+1
    .word sub_80B7038+1
    .word sub_80B7066+1
.thumb
sub_80B7238:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80B7248
    mov r0, #0xac
    bl f500_8000558
loc_80B7248:
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    bne loc_80B72A0
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B725E
    bl sub_8009EB0
    b locret_80B72BC
loc_80B725E:
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012F36
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r0, #0x40 
    bl sub_8012F36
    bl sub_8012D74
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldr r3, [r5,#0x54]
    mov r0, #0x32 
    strb r0, [r3,#5]
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80b72c4-0x80b728e-2] // dword_80B72C8
    ldrh r0, [r1,r0]
    strh r0, [r3,#0x1e]
    mov r0, #0xb6
    bl f500_8000558
    mov r0, #0xe
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
loc_80B72A0:
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x3c]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    ldr r0, [pc, #0x80b72c0-0x80b72a8-4] // =0x9600
    sub r1, r1, r0
    str r1, [r5,#0x48]
    bpl locret_80B72BC
    bl sub_8002E8C
    mov r0, #0x46 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B72BC:
    pop {pc}
    .byte 0, 0
dword_80B72C0:    .word 0x9600
off_80B72C4:    .word dword_80B72C8
dword_80B72C8:    .word 0x5A001E
    .word 0x12C0096
// end of function sub_80B7238

.thumb
sub_80B72D0:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x28 
    blt loc_80B72F8
    bne loc_80B7300
    bl sub_8012F4A
    ldr r1, [pc, #0x80b7310-0x80b72de-2] // =0xA000
    tst r0, r1
    beq loc_80B72EA
    bl sub_80B6CDE
    b loc_80B72EE
loc_80B72EA:
    bl sub_800A15E
loc_80B72EE:
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    b loc_80B7300
loc_80B72F8:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009D6C
loc_80B7300:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B730C
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80B730C:
    pop {pc}
    .byte 0, 0
dword_80B7310:    .word 0xA000
// end of function sub_80B72D0

.thumb
sub_80B7314:
    push {r4,r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009D6C
    ldr r1, [r5,#0x48]
    ldr r0, [pc, #0x80b73a4-0x80b7320-4] // =0xE400
    add r1, r1, r0
    str r1, [r5,#0x48]
    ldr r0, [r5,#0x3c]
    sub r0, r0, r1
    str r0, [r5,#0x3c]
    bpl locret_80B7372
    mov r0, #0
    str r0, [r5,#0x3c]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b73a8-0x80b7336-2] // =0x10
    ldr r3, [pc, #0x80b73ac-0x80b7338-4] // =0x0
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B735C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E17DE
    mov r0, #1
    mov r1, #0xa
    bl sub_8025FE0
    mov r0, #0xa2
    bl f500_8000558
loc_80B735C:
    bl sub_8002E76
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #0x18
    strh r0, [r5,#0xa]
locret_80B7372:
    pop {r4,r7,pc}
// end of function sub_80B7314

.thumb
sub_80B7374:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b73a8-0x80b737a-2] // =0x10
    ldr r3, [pc, #0x80b73ac-0x80b737c-4] // =0x0
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B7392
    bl sub_8009EB0
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B73A0
loc_80B7392:
    mov r0, #1
    bl sub_8012F40
    bl sub_80B6D18
    mov r0, #0x1c
    strh r0, [r5,#0xa]
locret_80B73A0:
    pop {pc}
    .balign 4, 0x00
dword_80B73A4:    .word 0xE400
dword_80B73A8:    .word 0x10
dword_80B73AC:    .word 0x0
dword_80B73B0:    .word 0x1E242A32, 0x96783C0F, 0xFF, 0x2010001, 0x2500114
    .word 0x3C803A0, 0x321E0F05
// end of function sub_80B7374

loc_80B73CC:
    push {lr}
    ldr r1, [pc, #0x80b73e0-0x80b73ce-2] // off_80B73E4
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80B73E0:    .word off_80B73E4
off_80B73E4:    .word sub_80B73F0+1
    .word sub_80B7446+1
    .word sub_8010F0C+1
.thumb
sub_80B73F0:
    push {r7,lr}
    mov r1, #8
    mov r2, #2
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B73F0

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #2
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80B7436
    bl sub_80033B4
    b locret_80B7444
loc_80B7436:
    mov r1, #1
    mov r2, #2
    mov r3, #0x21 
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
locret_80B7444:
    pop {r7,pc}
.thumb
sub_80B7446:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b7458-0x80b744c-4] // off_80B745C
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80B7458:    .word off_80B745C
off_80B745C:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80B7488+1
    .word loc_80F02F0+1
    .word loc_80F03C6+1
    .word loc_80F0476+1
    .word loc_80F0556+1
// end of function sub_80B7446

loc_80B7488:
    push {r6,r7,lr}
    ldr r7, [r5,#0x58]
    mov r6, #0x64 
    add r6, r6, r7
    add r7, #0x70 
    ldr r1, [pc, #0x80b74a0-0x80b7492-2] // off_80B74A4
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .byte 0, 0
off_80B74A0:    .word off_80B74A4
off_80B74A4:    .word sub_80B74B0+1
    .word sub_80B7660+1
    .word sub_80B76C4+1
.thumb
sub_80B74B0:
    push {lr}
    ldr r1, [pc, #0x80b74c0-0x80b74b2-2] // off_80B74C4
    ldrb r0, [r6,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B74C0:    .word off_80B74C4
off_80B74C4:    .word sub_80B74D4+1
    .word sub_80B75C0+1
    .word sub_80B75F8+1
    .word sub_80B7628+1
// end of function sub_80B74B0

.thumb
sub_80B74D4:
    push {r4,lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b75ac-0x80b74d8-4] // loc_80B75B8
    ldrb r0, [r1,r0]
    ldrb r1, [r6,#8]
    cmp r1, r0
    bge loc_80B7522
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x80b75a8-0x80b74e8-4] // =0xA000
    tst r4, r1
    beq loc_80B74FA
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #6
    bge loc_80B7500
loc_80B74FA:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
loc_80B7500:
    mov r1, #1
    lsl r1, r1, #0xe
    tst r4, r1
    beq loc_80B750C
    ldr r0, [pc, #0x80b7728-0x80b7508-4] // sub_80F0638+1
    b loc_80B750E
loc_80B750C:
    ldr r0, [pc, #0x80b772c-0x80b750c-4] // sub_800F6E0+1
loc_80B750E:
    str r0, [r7,#0x1c]
    bl sub_80B771C
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    mov r0, #4
    strb r0, [r6,#1]
    b locret_80B75A4
loc_80B7522:
    bl sub_800A15E
    push {r0,r1}
    bl sub_800AB54
    neg r2, r0
    pop {r0,r1}
    add r0, r0, r2
    push {r0,r1}
    bl sub_8009E64
    tst r0, r0
    pop {r0,r1}
    beq loc_80B7578
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldrb r2, [r5,#0x16]
    cmp r1, r2
    bne loc_80B7578
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x80b75b0-0x80b7552-2] // loc_80B75BC
    ldrb r2, [r5,#4]
    ldrb r1, [r1,r2]
    cmp r0, r1
    bge loc_80B756A
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B75A4
loc_80B756A:
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B75A4
loc_80B7578:
    mov r0, #0xc
    strb r0, [r6,#1]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    bgt locret_80B75A4
    ldrb r0, [r5,#4]
    add r0, r0, r0
    ldr r1, [pc, #0x80b75b4-0x80b758a-2] // dword_80B73B0+16
    add r1, r1, r0
    ldrb r0, [r1]
    strh r0, [r7,#8]
    ldrb r0, [r1,#1]
    strb r0, [r7,#0xd]
    mov r0, #0
    strb r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #8
    bl sub_800C960
locret_80B75A4:
    pop {r4,pc}
    .balign 4, 0x00
dword_80B75A8:    .word 0xA000
off_80B75AC:    .word loc_80B75B8
off_80B75B0:    .word loc_80B75BC
off_80B75B4:    .word dword_80B73B0+0x10
// end of function sub_80B74D4

loc_80B75B8:
    lsl r5, r0, #0x10
    lsl r3, r0, #8
loc_80B75BC:
    lsr r0, r2, #0x10
    lsr r0, r1, #0x20
.thumb
sub_80B75C0:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #2
    bge locret_80B75F0
    ldrb r0, [r5,#4]
    add r0, r0, r0
    ldr r1, [pc, #0x80b75f4-0x80b75d6-2] // dword_80B73B0+16
    add r1, r1, r0
    ldrb r0, [r1]
    strh r0, [r7,#8]
    ldrb r0, [r1,#1]
    strb r0, [r7,#0xd]
    mov r0, #0
    strb r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #8
    bl sub_800C960
locret_80B75F0:
    pop {pc}
    .balign 4, 0x00
off_80B75F4:    .word dword_80B73B0+0x10
// end of function sub_80B75C0

.thumb
sub_80B75F8:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    mov r0, #0
    strb r0, [r6,#8]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80b7620-0x80b7604-4] // dword_80B73B0+4
    ldrb r0, [r1,r2]
    add r0, r0, r0
    strh r0, [r7,#8]
    ldr r1, [pc, #0x80b7624-0x80b760c-4] // dword_80B73B0+8
    add r2, r2, r2
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xc]
    mov r0, #0x32 
    strh r0, [r7,#0xa]
    mov r0, #4
    bl sub_800C960
    pop {pc}
off_80B7620:    .word dword_80B73B0+4
off_80B7624:    .word dword_80B73B0+8
// end of function sub_80B75F8

.thumb
sub_80B7628:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B765A
    ldrb r0, [r5,#4]
    add r0, r0, r0
    ldr r1, [pc, #0x80b765c-0x80b7640-4] // dword_80B73B0+16
    add r1, r1, r0
    ldrb r0, [r1]
    strh r0, [r7,#8]
    ldrb r0, [r1,#1]
    strb r0, [r7,#0xd]
    mov r0, #0
    strb r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #8
    bl sub_800C960
locret_80B765A:
    pop {pc}
off_80B765C:    .word dword_80B73B0+0x10
// end of function sub_80B7628

.thumb
sub_80B7660:
    push {lr}
    ldr r1, [pc, #0x80b7670-0x80b7662-2] // off_80B7674
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B7670:    .word off_80B7674
off_80B7674:    .word sub_80B767C+1
    .word sub_80B7692+1
// end of function sub_80B7660

.thumb
sub_80B767C:
    push {lr}
    ldr r0, [pc, #0x80b7730-0x80b767e-2] // sub_80F063E+1
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r6,#6]
    mov r0, #7
    bl sub_800C960
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B767C

.thumb
sub_80B7692:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    beq locret_80B76BA
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80b76bc-0x80b76a0-4] // dword_80B73B0+4
    ldrb r0, [r1,r2]
    add r0, r0, r0
    strh r0, [r7,#8]
    ldr r1, [pc, #0x80b76c0-0x80b76a8-4] // dword_80B73B0+8
    add r2, r2, r2
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xc]
    mov r0, #0x32 
    strh r0, [r7,#0xa]
    mov r0, #9
    bl sub_800C960
locret_80B76BA:
    pop {pc}
off_80B76BC:    .word dword_80B73B0+4
off_80B76C0:    .word dword_80B73B0+8
// end of function sub_80B7692

.thumb
sub_80B76C4:
    push {lr}
    ldr r1, [pc, #0x80b76d4-0x80b76c6-2] // off_80B76D8
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B76D4:    .word off_80B76D8
off_80B76D8:    .word sub_80B76E0+1
    .word sub_80B76F6+1
// end of function sub_80B76C4

.thumb
sub_80B76E0:
    push {lr}
    ldr r0, [pc, #0x80b7734-0x80b76e2-2] // dword_80F067C
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r6,#0x18]
    mov r0, #7
    bl sub_800C960
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B76E0

.thumb
sub_80B76F6:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    beq locret_80B7714
    ldr r0, [pc, #0x80b7718-0x80b7702-2] // dword_80B73B0+24
    ldrb r1, [r5,#4]
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0xa
    bl sub_800C960
locret_80B7714:
    pop {pc}
    .balign 4, 0x00
off_80B7718:    .word dword_80B73B0+0x18
// end of function sub_80B76F6

.thumb
sub_80B771C:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b7724-0x80b771e-2] // dword_80B73B0
    ldrb r0, [r1,r0]
    mov pc, lr
off_80B7724:    .word dword_80B73B0
off_80B7728:    .word sub_80F0638+1
off_80B772C:    .word sub_800F6E0+1
off_80B7730:    .word sub_80F063E+1
dword_80B7734:    .word 0x80F068D
// end of function sub_80B771C

loc_80B7738:
    push {lr}
    ldr r1, [pc, #0x80b774c-0x80b773a-2] // off_80B7750
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B774C:    .word off_80B7750
off_80B7750:    .word sub_80B775C+1
    .word sub_80B77B2+1
    .word sub_8010F0C+1
.thumb
sub_80B775C:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x13
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B775C

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80B7784
    mov r0, #3
loc_80B7784:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B779E
    bl sub_80033B4
    b locret_80B77B0
loc_80B779E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B77B2
locret_80B77B0:
    pop {pc}
.thumb
sub_80B77B2:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b77c4-0x80b77b8-4] // off_80B77C8
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80B77C4:    .word off_80B77C8
off_80B77C8:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80B77F8+1
    .word sub_80B7A2C+1
    .word loc_80B7A70+1
    .word loc_80B7B24+1
    .word loc_80B7BD0+1
    .word loc_80B7CC4+1
// end of function sub_80B77B2

loc_80B77F8:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b780c-0x80b7800-4] // off_80B7810
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80B780C:    .word off_80B7810
off_80B7810:    .word sub_80B7814+1
.thumb
sub_80B7814:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80b7824-0x80b7818-4] // loc_80B7828
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B7824:    .word loc_80B7828
// end of function sub_80B7814

loc_80B7828:
    ldrb r5, [r5]
    lsr r3, r1, #0x20
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
.thumb
sub_80B7836:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    bl sub_80B553E
    tst r0, r0
    bne loc_80B784A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B784A:
    bl sub_80B78E2
    mov r0, #8
    str r0, [r5,#0x60]
    pop {pc}
// end of function sub_80B7836

.thumb
sub_80B7854:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80B78E2
    mov r0, #8
    str r0, [r5,#0x60]
    pop {pc}
// end of function sub_80B7854

.thumb
sub_80B786A:
    push {lr}
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    bne loc_80B787C
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B787C:
    bl sub_80B553E
    tst r0, r0
    bne loc_80B7888
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B7888:
    bl sub_80B78E2
    mov r0, #8
    str r0, [r5,#0x60]
    pop {pc}
// end of function sub_80B786A

.thumb
sub_80B7892:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B78A8
    bl sub_80B553E
    tst r0, r0
    bne loc_80B78AC
loc_80B78A8:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B78AC:
    mov r3, #0x78 
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_80B78E2
    pop {pc}
// end of function sub_80B7892

.thumb
sub_80B78BA:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B78D0
    bl sub_80B7908
    tst r0, r0
    bne loc_80B78D4
loc_80B78D0:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B78D4:
    mov r3, #0x78 
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_80B78E2
    pop {pc}
// end of function sub_80B78BA

.thumb
sub_80B78E2:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80B7902
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    b locret_80B7906
loc_80B7902:
    mov r0, #7
    str r0, [r5,#0x60]
locret_80B7906:
    pop {pc}
// end of function sub_80B78E2

.thumb
sub_80B7908:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    mov r0, #6
    bl sub_80B7956
    tst r0, r0
    bne loc_80B7932
    mov r0, #5
    bl sub_80B7956
    tst r0, r0
    bne loc_80B7932
    mov r0, #4
    bl sub_80B7956
    tst r0, r0
    beq loc_80B7946
loc_80B7932:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B7946:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
// end of function sub_80B7908

.thumb
sub_80B7956:
    push {r6,lr}
    add r6, r0, #0
    ldr r2, [pc, #0x80b798c-0x80b795a-2] // =0x30
    ldr r3, [pc, #0x80b7990-0x80b795c-4] // =0xF880080
    add r7, sp, #8
    bl sub_800A0A4
    tst r0, r0
    bne locret_80B798A
    ldrb r1, [r5,#0x12]
    cmp r1, r6
    bne locret_80B798A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b798c-0x80b7972-2] // =0x30
    ldr r3, [pc, #0x80b7994-0x80b7974-4] // =0xF800000
    bl sub_8009E78
    tst r0, r0
    beq locret_80B798A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7]
    mov r0, #1
locret_80B798A:
    pop {r6,pc}
off_80B798C:    .word 0x30
dword_80B7990:    .word 0xF880080
dword_80B7994:    .word 0xF800000
// end of function sub_80B7956

.thumb
sub_80B7998:
    push {r4,r6,r7,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#9]
    cmp r0, #6
    bge loc_80B79EE
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80b7a18-0x80b79ae-2] // loc_80B7A1C
    ldrb r1, [r2,r1]
    cmp r0, r1
    bge loc_80B79CA
    bl sub_80B7892
    mov r0, #9
    str r0, [r5,#0x60]
    mov r0, #8
    strh r0, [r5,#0x22]
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    b locret_80B7A16
loc_80B79CA:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B79DC
    bl sub_80B7854
    b locret_80B7A16
loc_80B79DC:
    ldr r1, [pc, #0x80b7a18-0x80b79dc-4] // loc_80B7A1C
    tst r0, r1
    beq loc_80B79E8
    bl sub_80B786A
    b locret_80B7A16
loc_80B79E8:
    bl sub_80B7836
    b locret_80B7A16
loc_80B79EE:
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #1
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    bgt loc_80B7A0A
    bl sub_800A15E
    cmp r0, #2
    blt loc_80B7A0A
    bl sub_80B7892
    mov r0, #0xb
    str r0, [r5,#0x60]
    b loc_80B7A12
loc_80B7A0A:
    bl sub_80B78BA
    mov r0, #0xa
    str r0, [r5,#0x60]
loc_80B7A12:
    mov r0, #0
    strb r0, [r6,#9]
locret_80B7A16:
    pop {r4,r6,r7,pc}
off_80B7A18:    .word loc_80B7A1C
// end of function sub_80B7998

loc_80B7A1C:
    lsr r6, r0, #8
    lsr r5, r1, #0x1c
    ldrb r7, [r6]
    lsr r3, r1, #0x20
    ldrb r5, [r2,#1]
    lsr r3, r1, #0x20
    ldrb r3, [r5,#1]
    lsr r3, r1, #0x20
.thumb
sub_80B7A2C:
    push {r4,r7,lr}
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B7A5E
    mov r0, #1
    strb r0, [r5,#0xa]
    bl sub_80B7998
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x16
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    bl sub_8012D74
    mov r0, #0x28 
    strh r0, [r5,#0x20]
loc_80B7A5E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B7A6E
    ldr r0, [r5,#0x60]
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B7A6E:
    pop {r4,r7,pc}
// end of function sub_80B7A2C

loc_80B7A70:
    push {r6,lr}
    ldr r1, [pc, #0x80b7a80-0x80b7a72-2] // off_80B7A84
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80B7A80:    .word off_80B7A84
off_80B7A84:    .word sub_80B7A90+1
    .word sub_80B7ACC+1
    .word sub_80B7AFC+1
.thumb
sub_80B7A90:
    push {r4,r7,lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #9
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    bl sub_8012D7C
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r4,r7,pc}
// end of function sub_80B7A90

.thumb
sub_80B7ACC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7AF0
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b7af4-0x80b7ae6-2] // loc_80B7AF8
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B7AF0:
    pop {pc}
    .balign 4, 0x00
off_80B7AF4:    .word loc_80B7AF8
// end of function sub_80B7ACC

loc_80B7AF8:
    mov r3, #0x3c 
    asr r3, r3, #0x10
.thumb
sub_80B7AFC:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #9
    bne loc_80B7B12
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B7B12
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80B7B12:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7B22
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B7B22:
    pop {pc}
// end of function sub_80B7AFC

loc_80B7B24:
    push {r6,lr}
    ldr r1, [pc, #0x80b7b34-0x80b7b26-2] // off_80B7B38
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B7B34:    .word off_80B7B38
off_80B7B38:    .word sub_80B7A90+1
    .word sub_80B7ACC+1
    .word sub_80B7B44+1
.thumb
sub_80B7B44:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x22]
    cmp r0, #0
    beq loc_80B7B94
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_80B7B98
    ldr r0, [pc, #0x80b7bc8-0x80b7b52-2] // loc_80B7BCC
    ldrb r1, [r5,#4]
    ldrb r0, [r0,r1]
    mov r6, #0x14
    lsl r6, r6, #0x10
    add r6, r6, r0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #3
    mov r3, #8
    lsl r3, r3, #0x10
    ldrb r4, [r5,#4]
    bl sub_80D0E0A
    ldr r0, [pc, #0x80b7bb0-0x80b7b6e-2] // =0xD0000
    ldr r1, [pc, #0x80b7bbc-0x80b7b70-4] // =0x1E0000
    bl sub_80B7B9A
    ldr r0, [pc, #0x80b7bb0-0x80b7b76-2] // =0xD0000
    ldr r1, [pc, #0x80b7bc0-0x80b7b78-4] // =0xF0000
    bl sub_80B7B9A
    ldr r0, [pc, #0x80b7bb4-0x80b7b7e-2] // =0x140000
    ldr r1, [pc, #0x80b7bc4-0x80b7b80-4] // =0x160000
    bl sub_80B7B9A
    ldr r0, [pc, #0x80b7bb8-0x80b7b86-2] // =0x40000
    ldr r1, [pc, #0x80b7bc4-0x80b7b88-4] // =0x160000
    bl sub_80B7B9A
    mov r0, #0xa
    bl sub_800AF88
loc_80B7B94:
    bl sub_80B7AFC
locret_80B7B98:
    pop {r4,r6,r7,pc}
// end of function sub_80B7B44

.thumb
sub_80B7B9A:
    push {lr}
    ldr r3, [r5,#0x3c]
    add r3, r3, r1
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    sub r1, r1, r0
    mov r4, #1
    bl sub_80E17DE
    pop {pc}
    .byte 0, 0
dword_80B7BB0:    .word 0xD0000
dword_80B7BB4:    .word 0x140000
dword_80B7BB8:    .word 0x40000
dword_80B7BBC:    .word 0x1E0000
dword_80B7BC0:    .word 0xF0000
dword_80B7BC4:    .word 0x160000
off_80B7BC8:    .word loc_80B7BCC
// end of function sub_80B7B9A

loc_80B7BCC:
    sub r4, #0x14
    ldmia r0!, {r2,r5,r6}
loc_80B7BD0:
    push {r6,lr}
    ldr r1, [pc, #0x80b7be0-0x80b7bd2-2] // off_80B7BE4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80B7BE0:    .word off_80B7BE4
off_80B7BE4:    .word sub_80B7BF8+1
    .word sub_80B7C10+1
    .word sub_80B7C32+1
    .word sub_80B7C56+1
    .word sub_80B7CB0+1
.thumb
sub_80B7BF8:
    push {lr}
    bl sub_80B7A90
    ldrh r0, [r5,#0xa]
    cmp r0, #4
    bne locret_80B7C0E
    mov r0, #0xb9
    bl f500_8000558
    mov r0, #3
    strb r0, [r5,#0x10]
locret_80B7C0E:
    pop {pc}
// end of function sub_80B7BF8

.thumb
sub_80B7C10:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7C30
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B7C30:
    pop {pc}
// end of function sub_80B7C10

.thumb
sub_80B7C32:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0xd
    bne loc_80B7C40
    mov r0, #0xa
    bl sub_800AF88
loc_80B7C40:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7C54
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B7C54:
    pop {pc}
// end of function sub_80B7C32

.thumb
sub_80B7C56:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #4
    bne loc_80B7C92
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B7C92
    mov r0, #5
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x80b7ca8-0x80b7c6c-4] // loc_80B7CAC
    ldrb r1, [r5,#4]
    ldrb r0, [r0,r1]
    mov r6, #0x14
    lsl r6, r6, #0x10
    add r6, r6, r0
    ldrb r0, [r5,#4]
    mov r4, #1
    lsl r4, r4, #8
    add r4, r4, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #3
    mov r3, #0
    bl sub_80D1142
loc_80B7C92:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7CA6
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B7CA6:
    pop {pc}
off_80B7CA8:    .word loc_80B7CAC
// end of function sub_80B7C56

loc_80B7CAC:
    sub r4, #0x14
    ldmia r0!, {r2,r5,r6}
.thumb
sub_80B7CB0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7CC2
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B7CC2:
    pop {pc}
// end of function sub_80B7CB0

loc_80B7CC4:
    push {r6,lr}
    ldr r1, [pc, #0x80b7cd4-0x80b7cc6-2] // off_80B7CD8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B7CD4:    .word off_80B7CD8
off_80B7CD8:    .word sub_80B7BF8+1
    .word sub_80B7CEC+1
    .word sub_80B7D0E+1
    .word sub_80B7D32+1
    .word sub_80B7CB0+1
.thumb
sub_80B7CEC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7D0C
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B7D0C:
    pop {pc}
// end of function sub_80B7CEC

.thumb
sub_80B7D0E:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0xd
    bne loc_80B7D1C
    mov r0, #0xa
    bl sub_800AF88
loc_80B7D1C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7D30
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B7D30:
    pop {pc}
// end of function sub_80B7D0E

.thumb
sub_80B7D32:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #6
    bne loc_80B7D48
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B7D8E
    mov r0, #7
    strb r0, [r5,#0x10]
loc_80B7D48:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x2d 
    bne loc_80B7D7A
    bl sub_80079EA
    tst r0, r0
    bne loc_80B7D7A
    ldr r4, [pc, #0x80b7d98-0x80b7d56-2] // =0x1401
    bl sub_80E2A28
    ldr r0, [pc, #0x80b7d90-0x80b7d5c-4] // dword_80B7D94
    ldrb r1, [r5,#4]
    ldrb r0, [r0,r1]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_800A15E
    ldrb r4, [r5,#4]
    mov r2, #0
    bl sub_80D160A
    mov r0, #0xba
    bl f500_8000558
loc_80B7D7A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B7D8E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80B7D8E:
    pop {r4,r6,pc}
off_80B7D90:    .word dword_80B7D94
dword_80B7D94:    .word 0xC8643C14
off_80B7D98:    .word 0x1401
// end of function sub_80B7D32

    asr r6, r2, #8
    lsr r6, r1, #8
    str r4, [r2,r0]
    ldmia r0!, {r5,r7}
    str r4, [r2,r0]
    ldmia r0!, {r5,r7}
    asr r6, r2, #8
    lsr r6, r1, #8
    lsl r0, r0, #4
    lsl r2, r0, #8
    add r2, #0xf
    ldrb r4, [r4,#1]
    cmp r0, #0xa
    str r0, [r2,#0x44]
loc_80B7DB8:
    push {lr}
    ldr r1, [pc, #0x80b7dc8-0x80b7dba-2] // off_80B7DCC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B7DC8:    .word off_80B7DCC
off_80B7DCC:    .word sub_80B7DD8+1
    .word sub_80B7E42+1
    .word sub_8010F0C+1
.thumb
sub_80B7DD8:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #5
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B7DD8

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800283C
    mov r0, #5
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    mov r4, #8
    lsl r4, r4, #8
    add r4, #0x10
    bl sub_80CC4E8
    str r0, [r5,#0x74]
    bl sub_8012442
    tst r0, r0
    bne loc_80B7E2E
    bl sub_80033B4
    b locret_80B7E40
loc_80B7E2E:
    mov r1, #1
    mov r2, #2
    mov r3, #0x21 
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B7E42
locret_80B7E40:
    pop {r4,r7,pc}
.thumb
sub_80B7E42:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b7e5c-0x80b7e48-4] // off_80B7E60
    bl sub_8013D54
    bl sub_80B81B4
    bl sub_801439C
    bl sub_8012D16
    pop {pc}
off_80B7E5C:    .word off_80B7E60
off_80B7E60:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80B7E90+1
    .word sub_80B7EA4+1
    .word sub_80B7EB8+1
    .word loc_80B7ECC+1
    .word sub_80EDBF2+1
    .word sub_80F16CC+1
    .word loc_80F17B0+1
    .word loc_80F1892+1
    .word loc_80F1968+1
// end of function sub_80B7E42

.thumb
sub_80B7E90:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B7E9E
    ldr r0, [r5,#0x74]
    bl sub_80CC50E
loc_80B7E9E:
    bl sub_8010E34
    pop {pc}
// end of function sub_80B7E90

.thumb
sub_80B7EA4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B7EB2
    ldr r0, [r5,#0x74]
    bl sub_80CC50E
loc_80B7EB2:
    bl sub_8010EB4
    pop {pc}
// end of function sub_80B7EA4

.thumb
sub_80B7EB8:
    push {lr}
    ldrb r0, [r5,#0xd]
    tst r0, r0
    bne loc_80B7EC6
    ldr r0, [r5,#0x74]
    bl sub_80CC50E
loc_80B7EC6:
    bl ho_8010F5A
    pop {pc}
// end of function sub_80B7EB8

loc_80B7ECC:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    add r6, #0x64 
    ldr r1, [pc, #0x80b7ee4-0x80b7ed6-2] // off_80B7EE8
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80B7EE4:    .word off_80B7EE8
off_80B7EE8:    .word sub_80B7EFC+1
    .word sub_80B7FC4+1
    .word sub_80B803C+1
    .word sub_80B80C0+1
    .word sub_80B8130+1
.thumb
sub_80B7EFC:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #5
    bge loc_80B7F5C
    bl sub_8001AF6
    mov r1, #0xf
    and r1, r0
    cmp r1, #2
    blt loc_80B7F4C
    bl sub_80B81A4
    strb r0, [r7,#0x18]
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x80b7fc0-0x80b7f1c-4] // =0xA000
    tst r0, r1
    beq loc_80B7F30
    ldrb r0, [r7,#0x18]
    add r0, #0x1e
    strb r0, [r7,#0x18]
    bl sub_8001AF6
    lsr r0, r0, #3
    bcc loc_80B7F36
loc_80B7F30:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
loc_80B7F36:
    ldr r0, [pc, #0x80b81c8-0x80b7f36-2] // =0x4000
    tst r4, r0
    bne loc_80B7F40
    ldr r0, [pc, #0x80b81cc-0x80b7f3c-4] // sub_800F6E0+1
    b loc_80B7F42
loc_80B7F40:
    ldr r0, [pc, #0x80b81d0-0x80b7f40-4] // sub_80F0638+1
loc_80B7F42:
    str r0, [r7,#0x1c]
    mov r0, #7
    bl sub_800C960
    b locret_80B7FBC
loc_80B7F4C:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B7FBC
loc_80B7F5C:
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    ble loc_80B7F74
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B7FBC
loc_80B7F74:
    ldrb r0, [r6,#9]
    cmp r0, #2
    bge loc_80B7FB0
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_80B7F86
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B7F86:
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #4
    bgt loc_80B7FA2
    ldrb r0, [r6,#8]
    sub r0, #3
    strb r0, [r6,#8]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B7FBC
loc_80B7FA2:
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B7FBC
loc_80B7FB0:
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80B7FBC:
    pop {pc}
    .byte 0, 0
dword_80B7FC0:    .word 0xA000
// end of function sub_80B7EFC

.thumb
sub_80B7FC4:
    push {lr}
    ldr r1, [pc, #0x80b7fd4-0x80b7fc6-2] // off_80B7FD8
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B7FD4:    .word off_80B7FD8
off_80B7FD8:    .word sub_80B7FE0+1
    .word sub_80B8014+1
// end of function sub_80B7FC4

.thumb
sub_80B7FE0:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B7FFC
    ldr r1, [pc, #0x80b8010-0x80b7ff2-2] // =0xA000
    tst r0, r1
    bne loc_80B8000
    ldr r0, [pc, #0x80b81d4-0x80b7ff8-4] // sub_80F1B6E+1
    b loc_80B8002
loc_80B7FFC:
    ldr r0, [pc, #0x80b81d8-0x80b7ffc-4] // sub_80F0638+1
    b loc_80B8002
loc_80B8000:
    ldr r0, [pc, #0x80b81dc-0x80b8000-4] // sub_800F6E0+1
loc_80B8002:
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    pop {pc}
dword_80B8010:    .word 0xA000
// end of function sub_80B7FE0

.thumb
sub_80B8014:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b8034-0x80b801c-4] // =0x80B7D9C
    ldrb r1, [r1,r0]
    strh r1, [r7,#0x10]
    ldr r1, [pc, #0x80b8038-0x80b8022-2] // =0x80B7DA0
    ldrb r1, [r1,r0]
    strb r1, [r7,#8]
    mov r1, #0x1e
    strh r1, [r7,#0xa]
    mov r0, #9
    bl sub_800C960
    pop {pc}
dword_80B8034:    .word 0x80B7D9C
dword_80B8038:    .word 0x80B7DA0
// end of function sub_80B8014

.thumb
sub_80B803C:
    push {lr}
    ldr r1, [pc, #0x80b804c-0x80b803e-2] // off_80B8050
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B804C:    .word off_80B8050
off_80B8050:    .word sub_80B8058+1
    .word sub_80B808C+1
// end of function sub_80B803C

.thumb
sub_80B8058:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B8074
    ldr r1, [pc, #0x80b8088-0x80b806a-2] // =0xA000
    tst r0, r1
    bne loc_80B8078
    ldr r0, [pc, #0x80b81e0-0x80b8070-4] // sub_80F1B6E+1
    b loc_80B807A
loc_80B8074:
    ldr r0, [pc, #0x80b81e4-0x80b8074-4] // sub_80F0638+1
    b loc_80B807A
loc_80B8078:
    ldr r0, [pc, #0x80b81e8-0x80b8078-4] // sub_800F6E0+1
loc_80B807A:
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r6,#6]
    mov r0, #7
    bl sub_800C960
    pop {pc}
dword_80B8088:    .word 0xA000
// end of function sub_80B8058

.thumb
sub_80B808C:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b80b4-0x80b8094-4] // =0x80B7DA4
    ldrb r1, [r1,r0]
    strb r1, [r7,#8]
    ldr r1, [pc, #0x80b80b8-0x80b809a-2] // =0x80B7DA8
    ldrb r1, [r1,r0]
    strh r1, [r7,#0x10]
    ldr r1, [pc, #0x80b80bc-0x80b80a0-4] // =0x80B7DAC
    ldrb r1, [r1,r0]
    strb r1, [r7,#0xc]
    mov r1, #0x1e
    strh r1, [r7,#0xa]
    mov r0, #0xa
    bl sub_800C960
    pop {pc}
    .balign 4, 0x00
dword_80B80B4:    .word 0x80B7DA4
dword_80B80B8:    .word 0x80B7DA8
dword_80B80BC:    .word 0x80B7DAC
// end of function sub_80B808C

.thumb
sub_80B80C0:
    push {lr}
    ldr r1, [pc, #0x80b80d0-0x80b80c2-2] // off_80B80D4
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B80D0:    .word off_80B80D4
off_80B80D4:    .word sub_80B80DC+1
    .word sub_80B8110+1
// end of function sub_80B80C0

.thumb
sub_80B80DC:
    push {r4,lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B8104
    ldr r1, [pc, #0x80b810c-0x80b80ee-2] // =0xA000
    tst r0, r1
    bne loc_80B8104
    ldr r0, [pc, #0x80b81ec-0x80b80f4-4] // sub_80F1C54+1
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    pop {r4,pc}
loc_80B8104:
    mov r0, #0
    strb r0, [r6]
    pop {r4,pc}
    .balign 4, 0x00
dword_80B810C:    .word 0xA000
// end of function sub_80B80DC

.thumb
sub_80B8110:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b812c-0x80b8118-4] // =0x80B7DB0
    ldrb r1, [r1,r0]
    add r1, r1, r1
    strb r1, [r7,#8]
    mov r1, #0x32 
    strh r1, [r7,#0xa]
    mov r0, #0xb
    bl sub_800C960
    pop {pc}
dword_80B812C:    .word 0x80B7DB0
// end of function sub_80B8110

.thumb
sub_80B8130:
    push {lr}
    ldr r1, [pc, #0x80b8140-0x80b8132-2] // off_80B8144
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B8140:    .word off_80B8144
off_80B8144:    .word sub_80B814C+1
    .word sub_80B8180+1
// end of function sub_80B8130

.thumb
sub_80B814C:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B8168
    ldr r1, [pc, #0x80b817c-0x80b815e-2] // =0xA000
    tst r0, r1
    bne loc_80B816C
    ldr r0, [pc, #0x80b81f0-0x80b8164-4] // sub_80F1C08+1
    b loc_80B816E
loc_80B8168:
    ldr r0, [pc, #0x80b81f4-0x80b8168-4] // sub_80F0638+1
    b loc_80B816E
loc_80B816C:
    ldr r0, [pc, #0x80b81f8-0x80b816c-4] // sub_800F6E0+1
loc_80B816E:
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    pop {pc}
dword_80B817C:    .word 0xA000
// end of function sub_80B814C

.thumb
sub_80B8180:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b81a0-0x80b8188-4] // =0x80B7DB4
    ldrb r1, [r1,r0]
    strb r1, [r7,#8]
    mov r1, #0xa
    strh r1, [r7,#0xa]
    mov r0, #0x74 
    add r0, r0, r5
    str r0, [r7,#0x20]
    mov r0, #8
    bl sub_800C960
    pop {pc}
dword_80B81A0:    .word 0x80B7DB4
// end of function sub_80B8180

.thumb
sub_80B81A4:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b81ac-0x80b81a6-2] // loc_80B81B0
    ldrb r0, [r1,r0]
    mov pc, lr
off_80B81AC:    .word loc_80B81B0
// end of function sub_80B81A4

loc_80B81B0:
    add r6, r3, r4
    asr r4, r2, #0x10
.thumb
sub_80B81B4:
    push {lr}
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq locret_80B81C4
    ldr r0, [r5,#0x74]
    bl sub_80CC50E
locret_80B81C4:
    pop {pc}
    .balign 4, 0x00
dword_80B81C8:    .word 0x4000
off_80B81CC:    .word sub_800F6E0+1
off_80B81D0:    .word sub_80F0638+1
off_80B81D4:    .word sub_80F1B6E+1
off_80B81D8:    .word sub_80F0638+1
off_80B81DC:    .word sub_800F6E0+1
off_80B81E0:    .word sub_80F1B6E+1
off_80B81E4:    .word sub_80F0638+1
off_80B81E8:    .word sub_800F6E0+1
off_80B81EC:    .word sub_80F1C54+1
off_80B81F0:    .word sub_80F1C08+1
off_80B81F4:    .word sub_80F0638+1
off_80B81F8:    .word sub_800F6E0+1
dword_80B81FC:    .word 0xC8A05014, 0x0
// end of function sub_80B81B4

    str r4, [r2,r0]
    ldmia r0!, {r5,r7}
    str r4, [r2,r0]
    ldmia r0!, {r5,r7}
    lsl r0, r0, #4
    lsl r2, r0, #8
loc_80B8210:
    push {lr}
    ldr r1, [pc, #0x80b8224-0x80b8212-2] // off_80B8228
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80B8224:    .word off_80B8228
off_80B8228:    .word sub_80B8234+1
    .word sub_80B8296+1
    .word sub_8010F0C+1
.thumb
sub_80B8234:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #0xb
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B8234

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0xb
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    ldrh r0, [r5,#0x12]
    strh r0, [r5,#6]
    mov r4, #1
    bl sub_80CCE28
    str r0, [r5,#0x74]
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80B8286
    bl sub_80033B4
    b locret_80B8294
loc_80B8286:
    mov r1, #1
    mov r2, #2
    mov r3, #0x21 
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
locret_80B8294:
    pop {r4,r7,pc}
.thumb
sub_80B8296:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80b82a8-0x80b829c-4] // off_80B82AC
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80B82A8:    .word off_80B82AC
off_80B82AC:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80B82D8+1
    .word loc_80F42F0+1
    .word loc_80F43CA+1
    .word loc_80F44A8+1
    .word loc_80F455C+1
// end of function sub_80B8296

loc_80B82D8:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    add r6, #0x64 
    ldr r1, [pc, #0x80b82f0-0x80b82e2-2] // off_80B82F4
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .byte 0, 0
off_80B82F0:    .word off_80B82F4
off_80B82F4:    .word sub_80B8300+1
    .word sub_80B83AC+1
    .word sub_80B841C+1
.thumb
sub_80B8300:
    push {r4,r7,lr}
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80B8380
    ldrb r0, [r6,#8]
    cmp r0, #5
    bge loc_80B8366
    bl sub_8001AF6
    lsr r0, r0, #2
    bcc loc_80B8356
    bl sub_80B84E4
    strb r0, [r7,#0x18]
    bl sub_8012F4A
    add r4, r0, #0
    ldr r1, [pc, #0x80b83a8-0x80b8322-2] // =0xA000
    tst r0, r1
    beq loc_80B8336
    ldrb r0, [r7,#0x18]
    add r0, #0x3c 
    strb r0, [r7,#0x18]
    bl sub_8001AF6
    lsr r0, r0, #3
    bcc loc_80B833C
loc_80B8336:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
loc_80B833C:
    mov r1, #1
    lsl r1, r1, #0xe
    tst r4, r1
    ldrh r0, [r5,#6]
    strh r0, [r7,#0x16]
    ldrh r2, [r5,#0x12]
    strh r2, [r5,#6]
    ldr r0, [pc, #0x80b84f4-0x80b834a-2] // sub_80F4646+1
    str r0, [r7,#0x1c]
    mov r0, #7
    bl sub_800C960
    b locret_80B83A6
loc_80B8356:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B83A6
loc_80B8366:
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #0x6c 
    add r0, r0, r5
    bl sub_80F482C
    tst r0, r0
    bne locret_80B83A6
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80B83A6
loc_80B8380:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b84f8-0x80b8386-2] // =0x80B820C
    ldrb r1, [r1,r0]
    strb r1, [r7,#0xc]
    ldr r1, [pc, #0x80b84fc-0x80b838c-4] // =0x80B8208
    ldrb r1, [r1,r0]
    strh r1, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    bl sub_80405D8
    beq loc_80B83A0
    mov r0, #3
    strb r0, [r7,#0xc]
loc_80B83A0:
    mov r0, #9
    bl sub_800C960
locret_80B83A6:
    pop {r4,r7,pc}
dword_80B83A8:    .word 0xA000
// end of function sub_80B8300

.thumb
sub_80B83AC:
    push {lr}
    ldr r1, [pc, #0x80b83bc-0x80b83ae-2] // off_80B83C0
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B83BC:    .word off_80B83C0
off_80B83C0:    .word sub_80B83C8+1
    .word sub_80B83FC+1
// end of function sub_80B83AC

.thumb
sub_80B83C8:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B83E4
    ldr r1, [pc, #0x80b83f8-0x80b83da-2] // =0xA000
    tst r0, r1
    bne loc_80B83E8
    ldr r0, [pc, #0x80b8500-0x80b83e0-4] // sub_80F4708
    b loc_80B83EA
loc_80B83E4:
    ldr r0, [pc, #0x80b8504-0x80b83e4-4] // sub_80F0638+1
    b loc_80B83EA
loc_80B83E8:
    ldr r0, [pc, #0x80b8508-0x80b83e8-4] // sub_800F6E0+1
loc_80B83EA:
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    pop {pc}
dword_80B83F8:    .word 0xA000
// end of function sub_80B83C8

.thumb
sub_80B83FC:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b850c-0x80b8404-4] // dword_80B81FC
    ldrb r1, [r1,r0]
    strh r1, [r7,#8]
    ldr r1, [pc, #0x80b8510-0x80b840a-2] // dword_80B81FC+4
    ldrb r1, [r1,r0]
    strb r1, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #8
    bl sub_800C960
    pop {pc}
// end of function sub_80B83FC

.thumb
sub_80B841C:
    push {lr}
    ldr r1, [pc, #0x80b842c-0x80b841e-2] // off_80B8430
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B842C:    .word off_80B8430
off_80B8430:    .word sub_80B8438+1
    .word sub_80B846C+1
// end of function sub_80B841C

.thumb
sub_80B8438:
    push {lr}
    mov r0, #4
    strh r0, [r6,#2]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B8454
    ldr r1, [pc, #0x80b8468-0x80b844a-2] // =0xA000
    tst r0, r1
    bne loc_80B8458
    ldr r0, [pc, #0x80b8514-0x80b8450-4] // sub_80F481C+1
    b loc_80B845A
loc_80B8454:
    ldr r0, [pc, #0x80b8518-0x80b8454-4] // sub_80F0638+1
    b loc_80B845A
loc_80B8458:
    ldr r0, [pc, #0x80b851c-0x80b8458-4] // sub_800F6E0+1
loc_80B845A:
    str r0, [r7,#0x1c]
    mov r0, #0
    strb r0, [r7,#0x18]
    mov r0, #7
    bl sub_800C960
    pop {pc}
dword_80B8468:    .word 0xA000
// end of function sub_80B8438

.thumb
sub_80B846C:
    push {lr}
    mov r0, #0
    strb r0, [r6]
    bl sub_8001AF6
    mov r3, #0xf
    and r3, r0
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b8520-0x80b847c-4] // =0x80B8204
    ldrb r1, [r1,r0]
    strh r1, [r7,#8]
    mov r1, #0x1e
    strh r1, [r7,#0xa]
    ldr r1, [pc, #0x80b84a0-0x80b8486-2] // dword_80B84A4
    lsl r2, r0, #4
    add r1, r1, r2
    ldrb r0, [r1,r3]
    strb r0, [r7,#3]
    mov r0, #0x6c 
    add r0, r0, r5
    str r0, [r7,#0x1c]
    mov r0, #0xa
    bl sub_800C960
    pop {pc}
    .byte 0, 0
off_80B84A0:    .word dword_80B84A4
dword_80B84A4:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x1010101, 0x0, 0x0
    .word 0x1010101, 0x1010101, 0x0, 0x0
// end of function sub_80B846C

    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
.thumb
sub_80B84E4:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b84ec-0x80b84e6-2] // dword_80B84F0
    ldrb r0, [r1,r0]
    mov pc, lr
off_80B84EC:    .word dword_80B84F0
dword_80B84F0:    .word 0x1E28323C
off_80B84F4:    .word sub_80F4646+1
dword_80B84F8:    .word 0x80B820C
dword_80B84FC:    .word 0x80B8208
dword_80B8500:    .word 0x80F4709
off_80B8504:    .word sub_80F0638+1
off_80B8508:    .word sub_800F6E0+1
off_80B850C:    .word dword_80B81FC
off_80B8510:    .word dword_80B81FC+4
off_80B8514:    .word sub_80F481C+1
off_80B8518:    .word sub_80F0638+1
off_80B851C:    .word sub_800F6E0+1
dword_80B8520:    .word 0x80B8204
// end of function sub_80B84E4

loc_80B8524:
    push {lr}
    ldr r1, [pc, #0x80b8538-0x80b8526-2] // off_80B853C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80B8538:    .word off_80B853C
off_80B853C:    .word sub_80B8568+1
    .word loc_80B85CA+1
    .word sub_80B8548+1
.thumb
sub_80B8548:
    push {lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0
    ldr r1, [r5,#0x4c]
    str r0, [r1]
    bl sub_80033B4
    pop {pc}
// end of function sub_80B8548

.thumb
sub_80B8568:
    push {lr}
    mov r0, #0xb0
    bl sub_8002B86
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x12
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B8568

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80B85A0
    mov r0, #3
    b loc_80B85A6
loc_80B85A0:
    cmp r1, #4
    bne loc_80B85A6
    mov r0, #6
loc_80B85A6:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80B85CA
    pop {pc}
loc_80B85CA:
    push {lr}
    ldr r1, [pc, #0x80b85d8-0x80b85cc-4] // off_80B85DC
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80B85D8:    .word off_80B85DC
off_80B85DC:    .word sub_80B85EC+1
    .word sub_80B8654+1
    .word sub_80B86B0+1
    .word sub_80B86F4+1
.thumb
sub_80B85EC:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B863C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b864c-0x80b85fa-2] // =0x10
    ldr r3, [pc, #0x80b8650-0x80b85fc-4] // =0x0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80B860C
    mov r0, #8
    str r0, [r5,#8]
    b locret_80B863C
loc_80B860C:
    ldr r2, [pc, #0x80b8640-0x80b860c-4] // byte_80B8644
    mov r4, #0
loc_80B8610:
    mov r1, #0
    ldrsb r0, [r2,r1]
    add r2, #1
    ldrsb r1, [r2,r1]
    add r2, #1
    push {r2,r3}
    bl sub_80B8770
    pop {r2,r3}
    add r4, #1
    cmp r4, #4
    bne loc_80B8610
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #4
    strh r0, [r5,#0x22]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B863C:
    pop {r4,r7,pc}
    .byte 0, 0
off_80B8640:    .word byte_80B8644
byte_80B8644:    .byte 0x2
byte_80B8645:    .byte 0xFF
    .hword 0xFF04
    .word 0x1020104
dword_80B864C:    .word 0x10
dword_80B8650:    .word 0x0
// end of function sub_80B85EC

.thumb
sub_80B8654:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80B8664
    mov r0, #0xac
    bl f500_8000558
loc_80B8664:
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    bne loc_80B867A
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80B86AA
    mov r0, #6
    strb r0, [r5,#0x10]
    b loc_80B8684
loc_80B867A:
    ldrh r0, [r5,#0x20]
    cmp r0, #0xf
    bne loc_80B8684
    mov r0, #5
    strb r0, [r5,#0x10]
loc_80B8684:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B86AA
    mov r0, #0xb
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    bl sub_800AB54
    ldr r1, [pc, #0x80b86ac-0x80b8696-2] // =0x1B0AD
    mul r0, r1
    str r0, [r5,#0x40]
    mov r0, #0xb6
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B86AA:
    pop {pc}
dword_80B86AC:    .word 0x1B0AD
// end of function sub_80B8654

.thumb
sub_80B86B0:
    push {lr}
    ldrh r2, [r5,#0x20]
    add r2, #1
    strh r2, [r5,#0x20]
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x3c]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    bpl loc_80B86E8
    mov r0, #0
    str r0, [r5,#0x3c]
    bl sub_800AB40
    mov r0, #1
    mov r1, #0xa
    bl sub_8025FE0
    mov r0, #0xa2
    bl f500_8000558
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80B86E8:
    ldr r0, [pc, #0x80b86f0-0x80b86e8-4] // =0x4F80
    sub r1, r1, r0
    str r1, [r5,#0x48]
    pop {pc}
dword_80B86F0:    .word 0x4F80
// end of function sub_80B86B0

.thumb
sub_80B86F4:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B8728
    mov r0, #1
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r6, [r5,#0x2c]
    ldr r4, [pc, #0x80b8748-0x80b8706-2] // =0x15050A01
    mov r2, #0
    mov r7, #3
    mov r3, #0
    lsl r3, r3, #0x10
    bl sub_80CD712
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b8740-0x80b8718-4] // =0x10
    ldr r3, [pc, #0x80b8744-0x80b871a-2] // =0x0
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B873A
    mov r0, #0xc
    strh r0, [r5,#0x20]
loc_80B8728:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B873E
    ldrb r0, [r5,#0xa]
    add r0, #1
    strh r0, [r5,#0xa]
    cmp r0, #3
    bne locret_80B873E
loc_80B873A:
    mov r0, #8
    str r0, [r5,#8]
locret_80B873E:
    pop {r4,r6,r7,pc}
dword_80B8740:    .word 0x10
dword_80B8744:    .word 0x0
dword_80B8748:    .word 0x15050A01
// end of function sub_80B86F4

.thumb
sub_80B874C:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0xe
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80B876E
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x4c]
    mov r1, #1
    str r1, [r7]
locret_80B876E:
    pop {pc}
// end of function sub_80B874C

.thumb
sub_80B8770:
    push {r4,r6,r7,lr}
    push {r0,r1}
    bl sub_800AB54
    pop {r1,r2}
    mul r0, r1
    add r1, r2, #0
    ldrb r2, [r5,#4]
    lsl r4, r4, #8
    orr r4, r2
    ldrb r2, [r5,#0x12]
    add r0, r0, r2
    ldrb r2, [r5,#0x13]
    add r1, r1, r2
    push {r0,r1}
    ldr r2, [pc, #0x80b87a8-0x80b878e-2] // =0x10
    ldr r3, [pc, #0x80b87ac-0x80b8790-4] // =0xF800000
    bl sub_8009E78
    cmp r0, #0
    pop {r0,r1}
    beq locret_80B87A4
    ldrb r2, [r5,#0x17]
    ldr r3, [r5,#0x3c]
    bl sub_80D1E68
locret_80B87A4:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80B87A8:    .word 0x10
dword_80B87AC:    .word 0xF800000
// end of function sub_80B8770

loc_80B87B0:
    push {lr}
    ldr r1, [pc, #0x80b87c4-0x80b87b2-2] // off_80B87C8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80B87C4:    .word off_80B87C8
off_80B87C8:    .word sub_80B87D4+1
    .word sub_80B8828+1
    .word sub_80033B4+1
.thumb
sub_80B87D4:
    push {lr}
    mov r1, #8
    mov r2, #8
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B87D4

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #8
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    push {r7}
    mov r4, #1
    lsl r4, r4, #0x10
    add r4, #0
    bl sub_80CCE28
    str r0, [r5,#0x60]
    pop {r7}
    bl sub_800AB30
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #4
    str r0, [r5,#8]
    pop {pc}
.thumb
sub_80B8828:
    push {lr}
    ldr r1, [pc, #0x80b8838-0x80b882a-2] // off_80B883C
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B8838:    .word off_80B883C
off_80B883C:    .word sub_80B884C+1
    .word sub_80B888A+1
    .word sub_80B88B0+1
    .word sub_80B896E+1
// end of function sub_80B8828

.thumb
sub_80B884C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B886E
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B886E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B8888
    bl sub_8009E98
    mov r2, #0xc
    tst r0, r0
    beq loc_80B8882
    mov r2, #4
loc_80B8882:
    strb r2, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B8888:
    pop {pc}
// end of function sub_80B884C

.thumb
sub_80B888A:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B889E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B889E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B88AE
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B88AE:
    pop {pc}
// end of function sub_80B888A

.thumb
sub_80B88B0:
    push {lr}
    ldr r1, [pc, #0x80b88c0-0x80b88b2-2] // off_80B88C4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B88C0:    .word off_80B88C4
off_80B88C4:    .word sub_80B88CC+1
    .word sub_80B8944+1
// end of function sub_80B88B0

.thumb
sub_80B88CC:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B88E6
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0x90
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B88E6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B892E
    bl sub_800AB54
    mov r1, #3
    mul r1, r0
    ldrb r4, [r5,#0x13]
    lsl r4, r4, #8
    ldrb r0, [r5,#0x12]
    add r0, r0, r1
    add r4, r4, r0
    lsl r4, r4, #8
    add r4, #1
    lsl r4, r4, #8
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x80b8930-0x80b890e-2] // loc_80B8934
    ldrb r1, [r1,r0]
    add r4, r4, r1
    ldr r6, [r5,#0x2c]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0x18
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r7, #0xc
    add r7, r7, r5
    bl sub_80CDBA8
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B892E:
    pop {r4,r6,r7,pc}
off_80B8930:    .word loc_80B8934
// end of function sub_80B88CC

loc_80B8934:
    lsl r1, r0, #4
    lsl r2, r0, #8
    lsl r3, r0, #0xc
    lsl r3, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x14
    lsl r5, r0, #0x14
    lsl r6, r0, #0x18
.thumb
sub_80B8944:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B895C
    ldrb r0, [r5,#0xc]
    tst r0, r0
    bne locret_80B896C
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80B896C
loc_80B895C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B896C
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B896C:
    pop {pc}
// end of function sub_80B8944

.thumb
sub_80B896E:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B8982
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B8982:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B899A
    mov r0, #0
    ldr r1, [r5,#0x50]
    strb r0, [r1]
    ldr r0, [r5,#0x60]
    bl sub_80CCE48
    mov r0, #8
    strb r0, [r5,#8]
locret_80B899A:
    pop {pc}
// end of function sub_80B896E

.thumb
sub_80B899C:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0xf
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80B89C0
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    str r5, [r0,#0x4c]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x50]
    mov r1, #1
    strb r1, [r7]
locret_80B89C0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80B899C

loc_80B89C4:
    push {lr}
    ldr r1, [pc, #0x80b89d8-0x80b89c6-2] // off_80B89DC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80B89D8:    .word off_80B89DC
off_80B89DC:    .word sub_80B8A08+1
    .word sub_80B8A68+1
    .word sub_80B89E8+1
.thumb
sub_80B89E8:
    push {lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0
    ldr r1, [r5,#0x4c]
    str r0, [r1]
    bl sub_80033B4
    pop {pc}
// end of function sub_80B89E8

.thumb
sub_80B8A08:
    push {lr}
    mov r0, #0xc0
    bl sub_8002B86
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x13
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #9
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B8A08

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    blt loc_80B8A44
    mov r0, #3
    cmp r1, #4
    blt loc_80B8A44
    mov r0, #6
loc_80B8A44:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B8A68
    pop {pc}
.thumb
sub_80B8A68:
    push {lr}
    ldr r1, [pc, #0x80b8a78-0x80b8a6a-2] // off_80B8A7C
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B8A78:    .word off_80B8A7C
off_80B8A7C:    .word sub_80B8A84+1
    .word sub_80B8AC4+1
// end of function sub_80B8A68

.thumb
sub_80B8A84:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B8ABA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b8abc-0x80b8a92-2] // =0x10
    ldr r3, [pc, #0x80b8ac0-0x80b8a94-4] // =0x0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80B8AA4
    mov r0, #8
    str r0, [r5,#8]
    b locret_80B8ABA
loc_80B8AA4:
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xb9
    bl f500_8000558
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B8ABA:
    pop {r4,pc}
dword_80B8ABC:    .word 0x10
dword_80B8AC0:    .word 0x0
// end of function sub_80B8A84

.thumb
sub_80B8AC4:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80B8AE2
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B8B7E
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x1c
    strh r0, [r5,#0x22]
    b locret_80B8B7E
loc_80B8AE2:
    cmp r0, #4
    bne loc_80B8B38
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B8B38
    mov r0, #5
    strb r0, [r5,#0x10]
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r4, #1
    lsl r4, r4, #8
    add r4, #4
    mov r2, #3
    mov r3, #0
    ldr r6, [r5,#0x2c]
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80D1162
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r6, #0
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r4, [pc, #0x80b8b80-0x80b8b1c-4] // dword_80B8B84
    ldr r4, [r4,r2]
    mov r2, #0
    ldr r7, [pc, #0x80b8b8c-0x80b8b22-2] // =0x3000
    mov r3, #0
    bl sub_80CD712
    ldr r4, [pc, #0x80b8b90-0x80b8b2a-2] // =0x11400
    bl sub_80E2A28
    mov r0, #0xba
    bl f500_8000558
    b locret_80B8B7E
loc_80B8B38:
    ldrh r0, [r5,#0x22]
    cmp r0, #0
    beq loc_80B8B60
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80B8B60
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r4, [pc, #0x80b8b94-0x80b8b50-4] // =0x4050301
    mov r2, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    ldr r6, [r5,#0x2c]
    mov r7, #3
    bl sub_80CD712
loc_80B8B60:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne locret_80B8B7E
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80B8B74
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B8B7E
loc_80B8B74:
    ldrh r0, [r5,#0x22]
    cmp r0, #0
    bne locret_80B8B7E
    mov r0, #8
    str r0, [r5,#8]
locret_80B8B7E:
    pop {r4,r6,r7,pc}
off_80B8B80:    .word dword_80B8B84
dword_80B8B84:    .word 0x2E05FF85, 0x2E05FF84
off_80B8B8C:    .word 0x3000
dword_80B8B90:    .word 0x11400
dword_80B8B94:    .word 0x4050301
// end of function sub_80B8AC4

.thumb
sub_80B8B98:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x10
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80B8BBA
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x4c]
    mov r1, #1
    str r1, [r7]
locret_80B8BBA:
    pop {pc}
// end of function sub_80B8B98

loc_80B8BBC:
    push {lr}
    ldr r1, [pc, #0x80b8bd0-0x80b8bbe-2] // off_80B8BD4
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80B8BD0:    .word off_80B8BD4
off_80B8BD4:    .word sub_80B8BE0+1
    .word sub_80B8C42+1
    .word sub_80104D8+1
.thumb
sub_80B8BE0:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xa
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B8BE0

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b8c38-0x80b8c0e-2] // loc_80B8C3C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x2e]
    bl sub_8012442
    tst r0, r0
    bne loc_80B8C22
    bl sub_80033B4
    b locret_80B8C34
loc_80B8C22:
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B8C42
locret_80B8C34:
    pop {pc}
    .balign 4, 0x00
off_80B8C38:    .word loc_80B8C3C
loc_80B8C3C:
    sub r6, r3, #0
    sub r6, r3, #0
    sub r6, r3, #0
.thumb
sub_80B8C42:
    push {lr}
    bl sub_801375C
    bl sub_8012EF8
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x54]
    ldr r1, [pc, #0x80b8c98-0x80b8c50-4] // =0xF800000
    tst r0, r1
    beq loc_80B8C5E
    bl sub_8012D74
    mov r0, #1
    str r0, [r5,#0x68]
loc_80B8C5E:
    ldr r0, [pc, #0x80b8c6c-0x80b8c5e-2] // off_80B8C70
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B8C6C:    .word off_80B8C70
off_80B8C70:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80B8C9C+1
    .word sub_80B8EA6+1
    .word loc_80B8EEC+1
    .word loc_80B909E+1
dword_80B8C98:    .word 0xF800000
// end of function sub_80B8C42

loc_80B8C9C:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80B8CAE
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B8CBC
loc_80B8CAE:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b8cc0-0x80b8cb4-4] // off_80B8CC4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80B8CBC:
    pop {r6,pc}
    .byte 0, 0
off_80B8CC0:    .word off_80B8CC4
off_80B8CC4:    .word sub_80B8CD0+1
    .word sub_80B8D56+1
    .word sub_80B8D98+1
.thumb
sub_80B8CD0:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80b8ce0-0x80b8cd4-4] // off_80B8CE4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80B8CE0:    .word off_80B8CE4
off_80B8CE4:    .word sub_80B8CEC+1
    .word sub_80B8D1A+1
// end of function sub_80B8CD0

.thumb
sub_80B8CEC:
    push {lr}
    mov r0, #4
    strb r0, [r6,#1]
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    lsl r0, r0, #2
    ldrb r1, [r5,#0xe]
    add r0, r0, r1
    ldr r1, [pc, #0x80b8d10-0x80b8d00-4] // loc_80B8D14
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
off_80B8D10:    .word loc_80B8D14
// end of function sub_80B8CEC

loc_80B8D14:
    asr r2, r1, #0x10
    cmp r0, #0x1e
    sub r4, #0x32 
.thumb
sub_80B8D1A:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    cmp r0, #2
    blt loc_80B8D4E
    mov r0, sp
    mov r1, #0x37 
    mov r2, #0x3c 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80B8D44
    mov r3, sp
loc_80B8D34:
    ldr r2, [r3]
    add r2, #0x80
    ldrb r2, [r2,#8]
    cmp r2, #0
    bne loc_80B8D4E
    add r3, #4
    sub r0, #1
    bne loc_80B8D34
loc_80B8D44:
    mov r0, #8
    strb r0, [r6]
    bl sub_80B8D98
    b loc_80B8D52
loc_80B8D4E:
    mov r0, #4
    strb r0, [r6]
loc_80B8D52:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80B8D1A

.thumb
sub_80B8D56:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80b8da8-0x80b8d5c-4] // off_80B8DAC
    tst r0, r1
    beq loc_80B8D6C
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq loc_80B8D72
loc_80B8D6C:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B8D72:
    bl sub_80B553E
    tst r0, r0
    bne loc_80B8D7E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B8D7E:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B8EEC
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80B8D56

.thumb
sub_80B8D98:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80b8da8-0x80b8d9c-4] // off_80B8DAC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B8DA8:    .word off_80B8DAC
off_80B8DAC:    .word sub_80B8DBC+1
    .word sub_80B8DDE+1
    .word sub_80B8DF2+1
    .word function_chunks__function_chunks_loc_80B8E0A+1
// end of function sub_80B8D98

.thumb
sub_80B8DBC:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b8e90-0x80b8dc0-4] // dword_80B8E94
    ldrb r2, [r1,r0]
    ldrb r1, [r6,#9]
    sub r1, r1, r2
    strb r1, [r6,#9]
    ldr r1, [pc, #0x80b8e9c-0x80b8dca-2] // loc_80B8EA0
    ldrb r0, [r1,r0]
    strb r0, [r6,#8]
    bl sub_80B8D56
    mov r0, #8
    strb r0, [r6]
    mov r0, #4
    strb r0, [r6,#2]
    pop {pc}
// end of function sub_80B8DBC

.thumb
sub_80B8DDE:
    push {lr}
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r6,#2]
    pop {pc}
// end of function sub_80B8DDE

.thumb
sub_80B8DF2:
    push {lr}
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_80B8E58
    mov r0, #0xc
    strb r0, [r6,#2]
    pop {pc}
// end of function sub_80B8DF2

function_chunks__function_chunks_loc_80B8E0A:
    push {lr}
    ldrb r0, [r6,#8]
    sub r0, #1
    strb r0, [r6,#8]
    bne loc_80B8E52
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    bne loc_80B8E38
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    bne loc_80B8E38
    bl sub_80B553E
    tst r0, r0
    bne loc_80B8E38
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B8E38:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B8EEC
    b locret_80B8F22
loc_80B8E52:
    bl sub_80B8E58
    pop {pc}
.thumb
sub_80B8E58:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80b8e8c-0x80b8e5e-2] // =0xA000
    tst r0, r1
    beq loc_80B8E70
    bl sub_80B921E
    tst r0, r0
    bne loc_80B8E74
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B8E70:
    bl sub_800A15E
loc_80B8E74:
    mov r2, #0xa
    strh r2, [r5,#0x22]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B909E
    pop {pc}
    .balign 4, 0x00
dword_80B8E8C:    .word 0xA000
off_80B8E90:    .word dword_80B8E94
dword_80B8E94:    .word 0x2010203, 0x101
off_80B8E9C:    .word loc_80B8EA0
// end of function sub_80B8E58

loc_80B8EA0:
    lsl r1, r0, #8
    lsl r2, r0, #0xc
    lsl r3, r0, #0x10
.thumb
sub_80B8EA6:
    push {lr}
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3]
    cmp r0, #8
    bne loc_80B8EC6
    ldrb r0, [r3,#2]
    cmp r0, #8
    bgt loc_80B8EC6
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80B8EDA
    mov r0, #0xa
    bl sub_800AF88
    b loc_80B8EDA
loc_80B8EC6:
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80B8EDA
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B8EDA
    mov r0, #4
    strb r0, [r5,#0x10]
loc_80B8EDA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B8EEA
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B8EEA:
    pop {pc}
// end of function sub_80B8EA6

loc_80B8EEC:
    push {r6,lr}
    ldr r1, [pc, #0x80b8efc-0x80b8eee-2] // off_80B8F00
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B8EFC:    .word off_80B8F00
off_80B8F00:    .word function_chunks__function_chunks_loc_80B8F08+1
    .word sub_80B8F24+1
function_chunks__function_chunks_loc_80B8F08:
    push {lr}
    bl sub_80B8F4A
    cmp r0, #0
    beq locret_80B8F22
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r3,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
locret_80B8F22:
    pop {pc}
.thumb
sub_80B8F24:
    push {lr}
    bl sub_80B8F9E
    cmp r0, #0
    beq locret_80B8F3E
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b8f40-0x80b8f30-4] // loc_80B8F44
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
locret_80B8F3E:
    pop {pc}
off_80B8F40:    .word loc_80B8F44
// end of function sub_80B8F24

loc_80B8F44:
    asr r4, r2, #0x20
    lsr r0, r2, #0x10
    lsr r4, r1, #0x20
.thumb
sub_80B8F4A:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A52
    mov r1, #0x20 
    and r0, r1
    lsr r0, r0, #5
    ldrb r1, [r5,#0x16]
    cmp r0, r1
    bne loc_80B8F66
    bl sub_800ACF6
    beq loc_80B8F8E
loc_80B8F66:
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    beq loc_80B8F76
    mov r0, #1
    strb r0, [r5,#0x10]
loc_80B8F76:
    bl sub_80B9158
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    str r0, [r5,#0x60]
    ldrb r0, [r5,#0xa]
    add r0, #4
    strh r0, [r5,#0xa]
    mov r0, #1
    pop {pc}
loc_80B8F8E:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    pop {pc}
// end of function sub_80B8F4A

.thumb
sub_80B8F9E:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    blt loc_80B8FC0
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B8FE6
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80B8FBA
    mov r0, #4
    b loc_80B8FBC
loc_80B8FBA:
    mov r0, #1
loc_80B8FBC:
    strb r0, [r5,#0x10]
    b loc_80B8FE6
loc_80B8FC0:
    cmp r0, #1
    bne loc_80B8FE6
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    bne loc_80B8FD6
    ldr r0, [r5,#0x3c]
    cmp r0, #0
    beq loc_80B909A
    b loc_80B8FE6
loc_80B8FD6:
    mov r0, #2
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#9]
    cmp r0, #8
    bne loc_80B8FE6
    mov r0, #0xc2
    bl f500_8000558
loc_80B8FE6:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x3c]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    bpl loc_80B9006
    mov r0, #0
    str r0, [r5,#0x3c]
    b loc_80B9044
loc_80B9006:
    ldr r0, [r5,#0x64]
    sub r1, r1, r0
    str r1, [r5,#0x48]
    bl sub_800AB40
    bl sub_8012D4E
    bl sub_80B91C2
    ldr r0, [r5,#0x54]
    ldrb r1, [r0,#1]
    cmp r1, #0
    bne loc_80B909A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [r5,#0x60]
    cmp r1, #0
    beq loc_80B909A
    cmp r0, r1
    beq loc_80B909A
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r0, #0x20 
    bl sub_8012F36
    b loc_80B909A
loc_80B9044:
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r3,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r0, #0x20 
    bl sub_8012F40
    mov r0, #3
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A52
    mov r1, #0x20 
    and r0, r1
    lsr r0, r0, #5
    ldrb r1, [r5,#0x16]
    cmp r0, r1
    bne loc_80B908E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
loc_80B908E:
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #1
    pop {pc}
loc_80B909A:
    mov r0, #0
    pop {pc}
// end of function sub_80B8F9E

loc_80B909E:
    push {r6,lr}
    ldr r1, [pc, #0x80b90ac-0x80b90a0-4] // off_80B90B0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B90AC:    .word off_80B90B0
off_80B90B0:    .word sub_80B90B8+1
    .word sub_80B90DE+1
.thumb
sub_80B90B8:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    bl sub_80B8F4A
    ldrb r0, [r5,#9]
    cmp r0, #7
    bne loc_80B90D2
    mov r0, #1
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#8]
    b locret_80B90DC
loc_80B90D2:
    mov r0, #0xc3
    bl f500_8000558
    bl sub_80B9260
locret_80B90DC:
    pop {r6,pc}
// end of function sub_80B90B8

.thumb
sub_80B90DE:
    push {lr}
    bl sub_80B8F9E
    cmp r0, #0
    beq loc_80B913C
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b9144-0x80b90ea-2] // dword_80B9148
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b9150-0x80b90f4-4] // =0x10
    ldr r3, [pc, #0x80b9154-0x80b90f6-2] // =0x0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80B913C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#8]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80B913C:
    bl sub_80B9260
    pop {pc}
    .balign 4, 0x00
off_80B9144:    .word dword_80B9148
dword_80B9148:    .word 0x4040808, 0x404
dword_80B9150:    .word 0x10
dword_80B9154:    .word 0x0
// end of function sub_80B90DE

.thumb
sub_80B9158:
    push {lr}
    mov r1, #0
    ldrb r0, [r6]
    cmp r0, #8
    bne loc_80B916A
    ldrb r0, [r6,#2]
    cmp r0, #8
    blt loc_80B916A
    mov r1, #4
loc_80B916A:
    ldr r0, [pc, #0x80b91a4-0x80b916a-2] // dword_80B91A8
    ldr r0, [r0,r1]
    str r0, [r5,#0x48]
    ldr r0, [pc, #0x80b91b0-0x80b9170-4] // dword_80B91B4
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    ldr r0, [pc, #0x80b91bc-0x80b9176-2] // loc_80B91C0
    lsr r1, r1, #2
    ldrb r1, [r0,r1]
    push {r1}
    ldrb r0, [r6,#4]
    ldrb r2, [r5,#0x12]
    sub r0, r0, r2
    mov r2, #0x28 
    lsl r2, r2, #0x10
    mul r0, r2
    svc 6
    str r0, [r5,#0x40]
    ldrb r0, [r6,#5]
    ldrb r2, [r5,#0x13]
    sub r0, r0, r2
    mov r2, #0x18
    lsl r2, r2, #0x10
    mul r0, r2
    pop {r1}
    svc 6
    str r0, [r5,#0x44]
    pop {pc}
    .balign 4, 0x00
off_80B91A4:    .word dword_80B91A8
dword_80B91A8:    .word 0x70000, 0x7C000
off_80B91B0:    .word dword_80B91B4
dword_80B91B4:    .word 0x5C00, 0x9400
off_80B91BC:    .word loc_80B91C0
// end of function sub_80B9158

loc_80B91C0:
    add r0, r5, #0
.thumb
sub_80B91C2:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [r5,#0x60]
    cmp r0, r1
    beq loc_80B91E6
    mov r3, #0x80
    add r3, r3, r5
    ldrb r2, [r3,#4]
    ldrb r3, [r3,#5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    cmp r0, r2
    bne loc_80B91EC
    cmp r1, r3
    bne loc_80B91EC
loc_80B91E6:
    ldrh r0, [r5,#0x3e]
    cmp r0, #0x18
    blt loc_80B91FE
loc_80B91EC:
    mov r0, #0
    str r0, [r5,#0x68]
    ldr r0, [r5,#0x54]
    ldrb r1, [r0,#1]
    cmp r1, #0
    beq locret_80B921C
    bl sub_8012D74
    b locret_80B921C
loc_80B91FE:
    ldr r0, [r5,#0x54]
    ldrb r1, [r0,#1]
    cmp r1, #0
    bne locret_80B921C
    ldr r0, [r5,#0x68]
    cmp r0, #0
    bne locret_80B921C
    mov r0, #1
    bl sub_8012D7C
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
locret_80B921C:
    pop {pc}
// end of function sub_80B91C2

.thumb
sub_80B921E:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r3, [pc, #0x80b924c-0x80b9222-2] // dword_80B9250
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    beq loc_80B9246
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B9246:
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_80B924C:    .word dword_80B9250
dword_80B9250:    .word 0x10020, 0xF880080, 0x10000, 0xF8800A0
// end of function sub_80B921E

.thumb
sub_80B9260:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bge loc_80B926E
    mov r0, #0xa
    strh r0, [r5,#0x22]
loc_80B926E:
    ldrh r0, [r5,#0x22]
    cmp r0, #5
    blt locret_80B9280
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#5]
    bl sub_8009D6C
locret_80B9280:
    pop {pc}
    .balign 4, 0x00
off_80B9284:    .word dword_80B9288
dword_80B9288:    .word 0x100080
    .byte 0x0, 0x0
// end of function sub_80B9260

loc_80B928E:
    push {lr}
    ldr r1, [pc, #0x80b92a0-0x80b9290-4] // off_80B92A4
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
off_80B92A0:    .word off_80B92A4
off_80B92A4:    .word sub_80B92B0+1
    .word sub_80B930C+1
    .word sub_80033B4+1
.thumb
sub_80B92B0:
    push {lr}
    mov r1, #8
    mov r2, #5
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B92B0

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #5
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r4, #1
    lsl r4, r4, #8
    mov r0, #8
    add r4, r4, r0
    lsl r4, r4, #8
    add r4, #0x10
    bl sub_80CC4E8
    str r0, [r5,#0x60]
    mov r0, #0
    str r0, [r5,#0x64]
    strb r0, [r5,#7]
    mov r0, #4
    str r0, [r5,#8]
    pop {pc}
.thumb
sub_80B930C:
    push {lr}
    ldr r1, [pc, #0x80b931c-0x80b930e-2] // off_80B9320
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80B931C:    .word off_80B9320
off_80B9320:    .word sub_80B9330+1
    .word sub_80B9390+1
    .word sub_80B93D8+1
    .word sub_80B9440+1
// end of function sub_80B930C

.thumb
sub_80B9330:
    push {lr}
    bl sub_80405D8
    bne loc_80B9354
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    ldrh r1, [r0,#0x24]
    mov r0, #4
    ldr r2, [pc, #0x80b94c8-0x80b9342-2] // off_80B9284
    mov r3, #0x65 
    add r3, r3, r5
    bl sub_80B9494
    cmp r0, #0xff
    beq loc_80B9354
    mov r0, #1
    strb r0, [r5,#7]
loc_80B9354:
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9374
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9374:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B938E
    bl sub_8009E98
    mov r2, #0xc
    tst r0, r0
    beq loc_80B9388
    mov r2, #4
loc_80B9388:
    strb r2, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B938E:
    pop {pc}
// end of function sub_80B9330

.thumb
sub_80B9390:
    push {lr}
    bl sub_80405D8
    bne loc_80B93B4
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    ldrh r1, [r0,#0x24]
    mov r0, #4
    ldr r2, [pc, #0x80b94cc-0x80b93a2-2] // off_80B9284
    mov r3, #0x65 
    add r3, r3, r5
    bl sub_80B9494
    cmp r0, #0xff
    beq loc_80B93B4
    mov r0, #1
    strb r0, [r5,#7]
loc_80B93B4:
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B93C6
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B93C6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B93D6
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B93D6:
    pop {pc}
// end of function sub_80B9390

.thumb
sub_80B93D8:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9412
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x22]
    ldr r4, [pc, #0x80b9438-0x80b93ec-4] // =0x1F05005
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_80B93F6
    ldr r4, [pc, #0x80b943c-0x80b93f4-4] // =0x81F05005
loc_80B93F6:
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #1
    mov r3, #0x22 
    lsl r3, r3, #0x10
    ldr r6, [r5,#0x2c]
    mov r7, #0
    bl sub_80CE38C
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9412:
    ldrh r0, [r5,#0x22]
    add r0, #1
    mov r1, #0xf
    and r0, r1
    strh r0, [r5,#0x22]
    cmp r0, #1
    bne loc_80B9426
    mov r0, #0xa8
    bl f500_8000558
loc_80B9426:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B9436
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9436:
    pop {r4,r6,r7,pc}
dword_80B9438:    .word 0x1F05005
dword_80B943C:    .word 0x81F05005
// end of function sub_80B93D8

.thumb
sub_80B9440:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9454
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9454:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B946C
    ldr r0, [r5,#0x60]
    bl sub_80CC508
    mov r0, #0
    ldr r1, [r5,#0x50]
    strb r0, [r1]
    mov r0, #8
    strb r0, [r5,#8]
locret_80B946C:
    pop {pc}
// end of function sub_80B9440

.thumb
sub_80B946E:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x12
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80B9492
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    str r5, [r0,#0x4c]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x50]
    mov r1, #1
    strb r1, [r7]
locret_80B9492:
    pop {pc}
// end of function sub_80B946E

.thumb
sub_80B9494:
    push {r4,r6,r7,lr}
    lsl r1, r1, #0x16
    lsr r1, r1, #0x16
    add r4, r1, #0
    add r6, r2, #0
    add r7, r3, #0
loc_80B94A0:
    sub r0, #4
    bmi loc_80B94C2
    sub r7, #1
    ldr r2, [r6,r0]
    ldrb r1, [r7]
    ldrh r3, [r2,r1]
    tst r3, r3
    beq loc_80B94BE
    cmp r4, r3
    bne loc_80B94A0
    add r1, #2
    strb r1, [r7]
    ldr r3, [r2,r1]
    tst r3, r3
    bne loc_80B94A0
loc_80B94BE:
    lsr r0, r0, #2
    pop {r4,r6,r7,pc}
loc_80B94C2:
    mov r0, #0xff
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80B94C8:    .word off_80B9284
off_80B94CC:    .word off_80B9284
// end of function sub_80B9494

loc_80B94D0:
    push {lr}
    ldr r1, [pc, #0x80b94e4-0x80b94d2-2] // off_80B94E8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80B94E4:    .word off_80B94E8
off_80B94E8:    .word sub_80B94F4+1
    .word sub_80B9554+1
    .word sub_80104D8+1
.thumb
sub_80B94F4:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #3
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B94F4

    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B9530
    bl sub_80033B4
    b locret_80B954C
loc_80B9530:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    ldr r0, [pc, #0x80b9550-0x80b953e-2] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B9554
locret_80B954C:
    pop {pc}
    .byte 0, 0
off_80B9550:    .word unk_2000000
.thumb
sub_80B9554:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80b9568-0x80b955a-2] // off_80B956C
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80B9568:    .word off_80B956C
off_80B956C:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80B9594+1
    .word sub_80B9778+1
    .word sub_80B978C+1
    .word loc_80B9882+1
// end of function sub_80B9554

loc_80B9594:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80B95A6
    bl sub_80079EA
    cmp r0, #0
    bne locret_80B95B4
loc_80B95A6:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b95b8-0x80b95ac-4] // off_80B95BC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80B95B4:
    pop {r6,pc}
    .balign 4, 0x00
off_80B95B8:    .word off_80B95BC
off_80B95BC:    .word sub_80B95C8+1
    .word sub_80B96C8+1
    .word sub_80B96D4+1
.thumb
sub_80B95C8:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80b95d8-0x80b95cc-4] // loc_80B95DC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B95D8:    .word loc_80B95DC
// end of function sub_80B95C8

loc_80B95DC:
    str r5, [sp,#0x394]
    lsr r3, r1, #0x20
    str r5, [sp,#0x3dc]
    lsr r3, r1, #0x20
    mov r0, #4
    strb r0, [r6,#1]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
    push {r4,lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    cmp r0, #7
    bge loc_80B964A
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80B9616
    bl sub_80B968A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80B9638
loc_80B9616:
    ldr r1, [pc, #0x80b96c4-0x80b9616-2] // =0xA000
    tst r0, r1
    bne loc_80B9620
    bl sub_80B968A
loc_80B9620:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, [pc, #0x80b96b0-0x80b9624-4] // dword_80B96B4
    bl sub_80B38B4
    ldr r4, [pc, #0x80b96a0-0x80b962a-2] // dword_80B96A4
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80B9638
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80B9638:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80B978C
    b loc_80B9686
loc_80B964A:
    bl sub_80B9716
    cmp r0, #0
    bne loc_80B9682
    mov r0, sp
    mov r1, #0xd
    mov r2, #0x12
    bl sub_80B656C
    cmp r0, #0
    beq loc_80B9670
    mov r3, sp
loc_80B9662:
    ldr r2, [r3]
    ldrb r2, [r2,#9]
    cmp r2, #9
    beq loc_80B9620
    add r3, #4
    sub r0, #1
    bne loc_80B9662
loc_80B9670:
    mov r3, #0x60 
    add r3, r3, r5
    ldr r0, [r3]
    cmp r0, #0
    bne loc_80B9620
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80B9682:
    mov r0, #0
    strb r0, [r6,#9]
loc_80B9686:
    add sp, sp, #0x10
    pop {r4,pc}
.thumb
sub_80B968A:
    push {lr}
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    add r0, #1
    ldrb r1, [r6,#9]
    add r1, r1, r0
    strb r1, [r6,#9]
    pop {pc}
    .byte 0, 0
off_80B96A0:    .word dword_80B96A4
dword_80B96A4:    .word 0x100FF, 0x100FF00, 0x7F
off_80B96B0:    .word dword_80B96B4
dword_80B96B4:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_80B96C4:    .word 0xA000
// end of function sub_80B968A

.thumb
sub_80B96C8:
    push {lr}
    bl sub_80BE5B0
    bl sub_80B96FC
    pop {pc}
// end of function sub_80B96C8

.thumb
sub_80B96D4:
    push {lr}
    bl sub_80B96E0
    bl sub_80B96FC
    pop {pc}
// end of function sub_80B96D4

.thumb
sub_80B96E0:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E5032
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    pop {r4,r6,r7,pc}
// end of function sub_80B96E0

.thumb
sub_80B96FC:
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80B96FC

.thumb
sub_80B9716:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80B9756
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80B9756
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80B9756
    bl sub_8007BB4
    ldr r1, [pc, #0x80b9774-0x80b973a-2] // =0x12C
    cmp r0, r1
    blt loc_80B9756
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x81
    beq loc_80B975A
    cmp r0, #0x8c
    beq loc_80B9764
    cmp r0, #0x8d
    beq loc_80B9764
    cmp r0, #0x8f
    beq loc_80B9764
loc_80B9756:
    mov r0, #0
    pop {pc}
loc_80B975A:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B976E
loc_80B9764:
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B976E
loc_80B976E:
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80B9774:    .word 0x12C
// end of function sub_80B9716

.thumb
sub_80B9778:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B978A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B978A:
    pop {pc}
// end of function sub_80B9778

.thumb
sub_80B978C:
    push {r6,lr}
    ldr r1, [pc, #0x80b979c-0x80b978e-2] // off_80B97A0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B979C:    .word off_80B97A0
off_80B97A0:    .word sub_80B97B0+1
    .word sub_80B97FC+1
    .word sub_80B983A+1
    .word sub_80B986A+1
// end of function sub_80B978C

.thumb
sub_80B97B0:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80B97EE
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x16
    bl sub_80E17DE
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80B97FA
loc_80B97EE:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B97FA:
    pop {r6,pc}
// end of function sub_80B97B0

.thumb
sub_80B97FC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B9838
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #7
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B9838:
    pop {pc}
// end of function sub_80B97FC

.thumb
sub_80B983A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B985E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80b9860-0x80b9854-4] // loc_80B9864
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80B985E:
    pop {pc}
off_80B9860:    .word loc_80B9864
// end of function sub_80B983A

loc_80B9864:
    sub r2, r6, #0
    sub r6, r3, r0
    asr r2, r3, #0x18
.thumb
sub_80B986A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B9880
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9880:
    pop {pc}
// end of function sub_80B986A

loc_80B9882:
    push {r6,lr}
    ldr r1, [pc, #0x80b9890-0x80b9884-4] // off_80B9894
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80B9890:    .word off_80B9894
off_80B9894:    .word sub_80B98A0+1
    .word sub_80B98CC+1
    .word sub_80B9960+1
.thumb
sub_80B98A0:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B98B0
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
loc_80B98B0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B98CA
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B98CA:
    pop {pc}
// end of function sub_80B98A0

.thumb
sub_80B98CC:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #4
    bne loc_80B98E2
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80B98E2
    mov r0, #5
    strb r0, [r5,#0x10]
loc_80B98E2:
    ldrh r0, [r5,#0x20]
    cmp r0, #0xf
    bne loc_80B9916
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x80b992c-0x80b98ea-2] // dword_80B9930
    ldrb r6, [r3,r0]
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80b9938-0x80b98f0-4] // dword_80B993C
    ldrb r0, [r3,r0]
    orr r6, r0
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80b9944-0x80b98fa-2] // dword_80B9948
    ldr r4, [r1,r0]
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #3
    mov r3, #0xa
    lsl r3, r3, #0x10
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80D2046
loc_80B9916:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B992A
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80B992A:
    pop {r4,r6,r7,pc}
off_80B992C:    .word dword_80B9930
dword_80B9930:    .word 0x1E1E1E1E, 0x1E1E
off_80B9938:    .word dword_80B993C
dword_80B993C:    .word 0x643C1E0F, 0xC896
off_80B9944:    .word dword_80B9948
dword_80B9948:    .word 0x100400
    .word 0x100500
    .word 0x110500
    .word 0x110600
    .word 0x120600
    .word 0x120700
// end of function sub_80B98CC

.thumb
sub_80B9960:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B9976
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9976:
    pop {pc}
// end of function sub_80B9960

loc_80B9978:
    push {lr}
    ldr r1, [pc, #0x80b998c-0x80b997a-2] // off_80B9990
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80B998C:    .word off_80B9990
off_80B9990:    .word sub_80B999C+1
    .word sub_80B99E0+1
    .word sub_80033B4+1
.thumb
sub_80B999C:
    push {lr}
    mov r1, #8
    mov r2, #2
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80B999C

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #2
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #4
    str r0, [r5,#8]
    pop {pc}
.thumb
sub_80B99E0:
    push {lr}
    ldr r1, [pc, #0x80b99f0-0x80b99e2-2] // off_80B99F4
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80B99F0:    .word off_80B99F4
off_80B99F4:    .word sub_80B9A04+1
    .word sub_80B9A42+1
    .word sub_80B9A68+1
    .word sub_80B9AD0+1
// end of function sub_80B99E0

.thumb
sub_80B9A04:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9A26
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9A26:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B9A40
    bl sub_8009E98
    mov r2, #0xc
    tst r0, r0
    beq loc_80B9A3A
    mov r2, #4
loc_80B9A3A:
    strb r2, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9A40:
    pop {pc}
// end of function sub_80B9A04

.thumb
sub_80B9A42:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9A56
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9A56:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B9A66
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9A66:
    pop {pc}
// end of function sub_80B9A42

.thumb
sub_80B9A68:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9A7C
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9A7C:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x46 
    bne loc_80B9AB8
    mov r4, #1
    ldrb r0, [r5,#4]
    cmp r0, #3
    blt loc_80B9A8C
    mov r4, #2
loc_80B9A8C:
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x17]
    ldr r6, [r5,#0x2c]
    push {r0,r1}
    bl sub_80D0784
    ldrb r1, [r0]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r0]
    pop {r0,r1}
    ldrb r2, [r5,#0x17]
    mov r3, #0x10
    lsl r3, r3, #0x10
    ldr r4, [pc, #0x80b9acc-0x80b9ab0-4] // =0x4050601
    mov r7, #1
    bl sub_80CD712
loc_80B9AB8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B9AC8
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9AC8:
    pop {pc}
    .balign 4, 0x00
dword_80B9ACC:    .word 0x4050601
// end of function sub_80B9A68

.thumb
sub_80B9AD0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80B9AE4
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80B9AE4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80B9AF6
    mov r0, #0
    ldr r1, [r5,#0x50]
    strb r0, [r1]
    mov r0, #8
    strb r0, [r5,#8]
locret_80B9AF6:
    pop {pc}
// end of function sub_80B9AD0

.thumb
sub_80B9AF8:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x14
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80B9B1C
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    str r5, [r0,#0x4c]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x50]
    mov r1, #1
    strb r1, [r7]
locret_80B9B1C:
    pop {pc}
    .byte 0, 0
// end of function sub_80B9AF8

loc_80B9B20:
    push {lr}
    ldr r1, [pc, #0x80b9b34-0x80b9b22-2] // off_80B9B38
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80B9B34:    .word off_80B9B38
off_80B9B38:    .word sub_80B9B44+1
    .word sub_80B9BA0+1
    .word sub_80104D8+1
.thumb
sub_80B9B44:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xb
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80B9B44

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80B9B7E
    bl sub_80033B4
    b locret_80B9B9A
loc_80B9B7E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    ldr r0, [pc, #0x80b9b9c-0x80b9b8c-4] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80B9BA0
locret_80B9B9A:
    pop {pc}
off_80B9B9C:    .word unk_2000000
.thumb
sub_80B9BA0:
    push {lr}
    bl sub_801375C
    ldr r0, [r5,#0x64]
    cmp r0, #1
    ble loc_80B9BB4
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_80B9BB4
    str r0, [r5,#0x64]
loc_80B9BB4:
    ldr r0, [pc, #0x80b9bc0-0x80b9bb4-4] // off_80B9BC4
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80B9BC0:    .word off_80B9BC4
off_80B9BC4:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_80B9C04+1
    .word sub_80B9BEC+1
    .word loc_80B9C1C+1
    .word sub_80B9E74+1
    .word loc_80B9E88+1
    .word loc_80B9FA0+1
// end of function sub_80B9BA0

.thumb
sub_80B9BEC:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B9BFE
    ldr r0, [r5,#0x64]
    cmp r0, #1
    bne loc_80B9BFE
    mov r0, #0
    str r0, [r5,#0x64]
loc_80B9BFE:
    bl sub_8010568
    pop {pc}
// end of function sub_80B9BEC

.thumb
sub_80B9C04:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80B9C16
    ldr r0, [r5,#0x64]
    cmp r0, #1
    bne loc_80B9C16
    mov r0, #0
    str r0, [r5,#0x64]
loc_80B9C16:
    bl sub_8010458
    pop {pc}
// end of function sub_80B9C04

loc_80B9C1C:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80b9c30-0x80b9c24-4] // off_80B9C34
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80B9C30:    .word off_80B9C34
off_80B9C34:    .word sub_80B9C44+1
    .word sub_80B9CB0+1
    .word sub_80B9CEA+1
    .word sub_80B9CBC+1
.thumb
sub_80B9C44:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80b9c54-0x80b9c48-4] // off_80B9C58
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80B9C54:    .word off_80B9C58
off_80B9C58:    .word sub_80B9C5C+1
// end of function sub_80B9C44

.thumb
sub_80B9C5C:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80B9C70
loc_80B9C66:
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B9CAC
loc_80B9C70:
    bl sub_80B9D50
    cmp r0, #0
    bne loc_80B9CA8
    ldr r0, [r5,#0x64]
    cmp r0, #0
    bne loc_80B9C66
    mov r0, sp
    mov r1, #0x3d 
    mov r2, #0x42 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80B9C9C
    mov r3, sp
loc_80B9C8E:
    ldr r2, [r3]
    ldr r2, [r2,#0x64]
    cmp r2, #0
    bne loc_80B9C66
    add r3, #4
    sub r0, #1
    bne loc_80B9C8E
loc_80B9C9C:
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #1
    str r0, [r5,#0x64]
loc_80B9CA8:
    mov r0, #0
    strb r0, [r6,#9]
loc_80B9CAC:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80B9C5C

.thumb
sub_80B9CB0:
    push {r4,r6,r7,lr}
    bl sub_80B54C8
    bl sub_80B9CD6
    pop {r4,r6,r7,pc}
// end of function sub_80B9CB0

.thumb
sub_80B9CBC:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E4F92
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80B9CD6
    pop {r4,r6,r7,pc}
// end of function sub_80B9CBC

.thumb
sub_80B9CD6:
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r6, #0x78 
    add r6, r6, r5
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov pc, lr
// end of function sub_80B9CD6

.thumb
sub_80B9CEA:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80b9d4c-0x80b9cf0-4] // =0xA000
    tst r0, r1
    beq loc_80B9D00
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq loc_80B9D06
loc_80B9D00:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80B9D06:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80B9D36
    bl sub_80B9DC8
    tst r0, r0
    beq loc_80B9D36
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80B9E88
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    str r0, [r5,#0x60]
    b loc_80B9D42
loc_80B9D36:
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80B9D42:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
dword_80B9D4C:    .word 0xA000
// end of function sub_80B9CEA

.thumb
sub_80B9D50:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80B9D9C
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80B9D9C
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80B9D9C
    bl sub_8007BB4
    ldr r1, [pc, #0x80b9dc0-0x80b9d74-4] // =0x12C
    cmp r0, r1
    blt loc_80B9D9C
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x85
    beq loc_80B9DA0
    ldr r1, [pc, #0x80b9dc4-0x80b9d84-4] // =0x1E0
    cmp r0, r1
    blt loc_80B9D9C
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x74 
    beq loc_80B9DA8
    cmp r1, #0x75 
    beq loc_80B9DA8
    cmp r1, #0x62 
    beq loc_80B9DB2
loc_80B9D9C:
    mov r0, #0
    pop {pc}
loc_80B9DA0:
    mov r0, #6
    bl sub_80B3C56
    b loc_80B9DBA
loc_80B9DA8:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80B9DBA
loc_80B9DB2:
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80B9DBA:
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_80B9DC0:    .word 0x12C
off_80B9DC4:    .word 0x1E0
// end of function sub_80B9D50

.thumb
sub_80B9DC8:
    push {r4,r7,lr}
    sub sp, sp, #0xc
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80B9DD6
    ldr r4, [pc, #0x80b9e30-0x80b9dd2-2] // dword_80B9E44
    b loc_80B9DF8
loc_80B9DD6:
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r2, [r5,#0x12]
    cmp r2, r0
    beq loc_80B9DEC
    blt loc_80B9DE8
    ldr r4, [pc, #0x80b9e34-0x80b9de4-4] // dword_80B9E44
    b loc_80B9E00
loc_80B9DE8:
    ldr r4, [pc, #0x80b9e38-0x80b9de8-4] // dword_80B9E54
    b loc_80B9DF8
loc_80B9DEC:
    ldrb r2, [r5,#0x13]
    cmp r2, r1
    bgt loc_80B9DF6
    ldr r4, [pc, #0x80b9e3c-0x80b9df2-2] // dword_80B9E54
    b loc_80B9DF8
loc_80B9DF6:
    ldr r4, [pc, #0x80b9e40-0x80b9df6-2] // dword_80B9E54
loc_80B9DF8:
    ldrb r0, [r5,#0x12]
    cmp r0, #5
    bne loc_80B9E00
    add r4, #2
loc_80B9E00:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80b9e6c-0x80b9e04-4] // =0x30
    ldr r3, [pc, #0x80b9e70-0x80b9e06-2] // =0xF880080
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80B9E2C
    ldr r0, [r5,#0x60]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r2, [pc, #0x80b9e6c-0x80b9e18-4] // =0x30
    ldr r3, [pc, #0x80b9e70-0x80b9e1a-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq loc_80B9E2C
    ldr r0, [r5,#0x60]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80B9E2C:
    add sp, sp, #0xc
    pop {r4,r7,pc}
off_80B9E30:    .word dword_80B9E44
dword_80B9E34:    .word 0x80B9E4D
off_80B9E38:    .word dword_80B9E54
dword_80B9E3C:    .word 0x80B9E5B
dword_80B9E40:    .word 0x80B9E62
dword_80B9E44:    .word 0xFF0001, 0xFF000100, 0xFF7F, 0x7FFF0001
dword_80B9E54:    .word 0x1000001, 0x17FFF00, 0xFF00, 0x17FFF, 0x10000FF, 0x7F
off_80B9E6C:    .word 0x30
dword_80B9E70:    .word 0xF880080
// end of function sub_80B9DC8

.thumb
sub_80B9E74:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80B9E86
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9E86:
    pop {pc}
// end of function sub_80B9E74

loc_80B9E88:
    push {r6,lr}
    ldr r1, [pc, #0x80b9e98-0x80b9e8a-2] // off_80B9E9C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80B9E98:    .word off_80B9E9C
off_80B9E9C:    .word sub_80B9EA4+1
    .word sub_80B9F42+1
.thumb
sub_80B9EA4:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80B9EF2
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    ldr r0, [pc, #0x80b9f38-0x80b9ec4-4] // loc_80B9F3C
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80b9f00-0x80b9ed2-2] // dword_80B9F04
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80b9f1c-0x80b9ee0-4] // dword_80B9F20
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80B9F42
    b locret_80B9EFE
loc_80B9EF2:
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9EFE:
    pop {r6,pc}
off_80B9F00:    .word dword_80B9F04
dword_80B9F04:    .word 0x10000, 0x16DB7, 0x1D174, 0x238E4, 0x2AAAB, 0x35555
off_80B9F1C:    .word dword_80B9F20
dword_80B9F20:    .word 0x999A, 0xDB6E, 0x11746, 0x15555, 0x1999A, 0x20000
off_80B9F38:    .word loc_80B9F3C
// end of function sub_80B9EA4

loc_80B9F3C:
    add r0, r5, #0
    asr r6, r2, #8
    lsr r7, r1, #0x10
.thumb
sub_80B9F42:
    push {lr}
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B9F9E
    ldr r2, [r5,#0x60]
    lsr r3, r2, #4
    lsl r2, r2, #0x1d
    lsr r2, r2, #0x1d
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AF7C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D66
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80B9F9E:
    pop {pc}
// end of function sub_80B9F42

loc_80B9FA0:
    push {r6,lr}
    ldr r1, [pc, #0x80b9fb0-0x80b9fa2-2] // off_80B9FB4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80B9FB0:    .word off_80B9FB4
off_80B9FB4:    .word sub_80B9FC0+1
    .word sub_80B9FEC+1
    .word sub_80BA062+1
.thumb
sub_80B9FC0:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80B9FD0
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x32 
    strh r0, [r5,#0x20]
loc_80B9FD0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80B9FEA
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x14
    bl sub_800AF88
    mov r0, #0x15
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80B9FEA:
    pop {pc}
// end of function sub_80B9FC0

.thumb
sub_80B9FEC:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80BA02C
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80BA02C
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x80ba04c-0x80b9ffe-2] // dword_80BA050
    ldrb r6, [r3,r0]
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80ba058-0x80ba004-4] // loc_80BA05C
    ldrb r0, [r3,r0]
    orr r6, r0
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    lsl r0, r0, #8
    ldrb r4, [r5,#4]
    add r4, #0
    orr r4, r0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    bl sub_80D29F8
    str r0, [r5,#0x64]
    mov r0, #0xcb
    bl f500_8000558
loc_80BA02C:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BA04A
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    beq loc_80BA042
    mov r0, #2
    strb r0, [r5,#0x10]
    b locret_80BA04A
loc_80BA042:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BA04A:
    pop {pc}
off_80BA04C:    .word dword_80BA050
dword_80BA050:    .word 0x1E1E1E1E, 0x1E1E
off_80BA058:    .word loc_80BA05C
// end of function sub_80B9FEC

loc_80BA05C:
    sub r7, r1, #0
    str r4, [r7,#0x40]
    ldmia r0!, {r1,r2,r4,r7}
.thumb
sub_80BA062:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA074
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA074:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80BA062

loc_80BA078:
    push {lr}
    ldr r1, [pc, #0x80ba08c-0x80ba07a-2] // off_80BA090
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BA08C:    .word off_80BA090
off_80BA090:    .word sub_80BA09C+1
    .word sub_80BA0FA+1
    .word sub_80104D8+1
.thumb
sub_80BA09C:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #6
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BA09C

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BA0D6
    bl sub_80033B4
    b locret_80BA0F8
loc_80BA0D6:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    strb r0, [r5,#7]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BA0FA
locret_80BA0F8:
    pop {pc}
.thumb
sub_80BA0FA:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80ba120-0x80ba100-4] // off_80BA124
    bl sub_8013BE8
    bl sub_8012D16
    ldrb r0, [r5,#0x10]
    cmp r0, #1
    bne locret_80BA11E
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BA11E
    mov r0, #0
    strb r0, [r5,#0x10]
locret_80BA11E:
    pop {pc}
off_80BA120:    .word off_80BA124
off_80BA124:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BA14C+1
    .word sub_80BA270+1
    .word loc_80BA284+1
    .word loc_80BA35C+1
// end of function sub_80BA0FA

loc_80BA14C:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80ba160-0x80ba154-4] // off_80BA164
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80BA160:    .word off_80BA164
off_80BA164:    .word sub_80BA168+1
.thumb
sub_80BA168:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80ba178-0x80ba16c-4] // off_80BA17C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BA178:    .word off_80BA17C
off_80BA17C:    .word sub_80BA180+1
// end of function sub_80BA168

.thumb
sub_80BA180:
    push {lr}
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80BA1A2
    bl sub_8001AF6
    mov r1, #7
    and r0, r1
    ldrb r1, [r5,#4]
    mov r2, #9
    mul r1, r2
    ldrb r2, [r6,#9]
    add r1, r1, r2
    ldr r2, [pc, #0x80ba1b0-0x80ba19a-2] // off_80BA1B4
    ldrb r1, [r1,r2]
    cmp r0, r1
    blt loc_80BA1A8
loc_80BA1A2:
    bl sub_80BA1EA
    b locret_80BA1AC
loc_80BA1A8:
    bl sub_80BA260
locret_80BA1AC:
    pop {pc}
    .byte 0, 0
off_80BA1B0:    .word off_80BA1B4
off_80BA1B4:    .word unk_2000000
    .word dword_8070598+0x6C
    .word unk_2010008
    .word 0x6050403
    .word 0x1000807
    .word 0x5040302
    .word 0x80706
    .word 0x4030201
    .word 0x8070605
    .word 0x3020100
    .word 0x7060504
    .word 0x2010008
    .word 0x6050403
    .hword 0x807
// end of function sub_80BA180

.thumb
sub_80BA1EA:
    push {lr}
    mov r1, #1
    ldrb r0, [r5,#7]
    cmp r0, #1
    bne loc_80BA1F6
    sub r1, #2
loc_80BA1F6:
    ldrb r0, [r5,#0x13]
    add r1, r1, r0
    ldrb r0, [r5,#0x12]
    ldr r2, [pc, #0x80ba258-0x80ba1fc-4] // =0x30
    ldr r3, [pc, #0x80ba25c-0x80ba1fe-2] // =0xF880080
    push {r0,r1}
    bl sub_8009E78
    pop {r1,r2}
    cmp r0, #0
    bne loc_80BA222
    ldrb r0, [r5,#7]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#7]
    mov r0, #0x10
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80BA246
loc_80BA222:
    strb r1, [r6,#4]
    strb r2, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BA284
    bl sub_8012F4A
    ldr r1, [pc, #0x80ba254-0x80ba236-2] // =0xA000
    tst r0, r1
    beq loc_80BA246
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq locret_80BA252
loc_80BA246:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne locret_80BA252
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
locret_80BA252:
    pop {pc}
dword_80BA254:    .word 0xA000
off_80BA258:    .word 0x30
dword_80BA25C:    .word 0xF880080
// end of function sub_80BA1EA

.thumb
sub_80BA260:
    push {lr}
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80BA260

.thumb
sub_80BA270:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BA282
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA282:
    pop {pc}
// end of function sub_80BA270

loc_80BA284:
    push {r6,lr}
    ldr r1, [pc, #0x80ba294-0x80ba286-2] // off_80BA298
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BA294:    .word off_80BA298
off_80BA298:    .word sub_80BA2A0+1
    .word sub_80BA316+1
.thumb
sub_80BA2A0:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BA2E0
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    ldr r0, [pc, #0x80ba30c-0x80ba2c0-4] // loc_80BA310
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80ba2f0-0x80ba2ce-2] // dword_80BA2F4
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BA316
    b locret_80BA2EC
loc_80BA2E0:
    mov r0, #0x10
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA2EC:
    pop {r6,pc}
    .byte 0, 0
off_80BA2F0:    .word dword_80BA2F4
dword_80BA2F4:    .word 0xCCCD, 0x10000, 0x13333, 0x16666, 0x1999A, 0x1999A
off_80BA30C:    .word loc_80BA310
// end of function sub_80BA2A0

loc_80BA310:
    add r6, r3, r0
    asr r4, r2, #4
    lsr r7, r1, #0x1c
.thumb
sub_80BA316:
    push {lr}
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA35A
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA35A:
    pop {pc}
// end of function sub_80BA316

loc_80BA35C:
    push {r6,lr}
    ldr r1, [pc, #0x80ba36c-0x80ba35e-2] // off_80BA370
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BA36C:    .word off_80BA370
off_80BA370:    .word sub_80BA378+1
    .word sub_80BA3BA+1
.thumb
sub_80BA378:
    push {r4,r6,r7,lr}
    mov r0, #1
    strb r0, [r5,#0x10]
    ldrb r4, [r5,#4]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80ba3b0-0x80ba384-4] // loc_80BA3B4
    ldrb r0, [r3,r4]
    orr r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #2
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80D2C48
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0xc
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r4,r6,r7,pc}
off_80BA3B0:    .word loc_80BA3B4
// end of function sub_80BA378

loc_80BA3B4:
    sub r4, #0x1e
    ldrb r2, [r3,#1]
    ldmia r0!, {r1,r2,r4,r7}
.thumb
sub_80BA3BA:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BA3CC
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA3CC:
    pop {pc}
    .byte 0, 0
// end of function sub_80BA3BA

loc_80BA3D0:
    push {lr}
    ldr r1, [pc, #0x80ba3e4-0x80ba3d2-2] // off_80BA3E8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BA3E4:    .word off_80BA3E8
off_80BA3E8:    .word sub_80BA3F4+1
    .word sub_80BA446+1
    .word sub_80104D8+1
.thumb
sub_80BA3F4:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #5
    bl sub_800285C
    bl sub_8002FC2
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BA3F4

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BA42E
    bl sub_80033B4
    b locret_80BA444
loc_80BA42E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_80BA588
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BA446
locret_80BA444:
    pop {pc}
.thumb
sub_80BA446:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80ba46c-0x80ba44c-4] // off_80BA470
    bl sub_8013BE8
    bl sub_8012D16
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    bne locret_80BA46A
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BA46A
    mov r0, #0
    strb r0, [r5,#0x10]
locret_80BA46A:
    pop {pc}
off_80BA46C:    .word off_80BA470
off_80BA470:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BA498+1
    .word sub_80BA5F0+1
    .word loc_80BA604+1
    .word loc_80BA71A+1
// end of function sub_80BA446

loc_80BA498:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80ba4ac-0x80ba4a0-4] // off_80BA4B0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BA4AC:    .word off_80BA4B0
off_80BA4B0:    .word sub_80BA4B4+1
.thumb
sub_80BA4B4:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80ba4c4-0x80ba4b8-4] // off_80BA4C8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BA4C4:    .word off_80BA4C8
off_80BA4C8:    .word sub_80BA4CC+1
// end of function sub_80BA4B4

.thumb
sub_80BA4CC:
    push {lr}
    ldrb r0, [r6,#9]
    ldrb r1, [r6,#8]
    cmp r0, r1
    blt loc_80BA4DC
    bl sub_80BA52E
    b locret_80BA4E0
loc_80BA4DC:
    bl sub_80BA4E2
locret_80BA4E0:
    pop {pc}
// end of function sub_80BA4CC

.thumb
sub_80BA4E2:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BA4F6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BA502
loc_80BA4F6:
    bl sub_80B553E
    tst r0, r0
    bne loc_80BA502
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BA502:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BA604
    bl sub_8012F4A
    ldr r1, [pc, #0x80ba584-0x80ba516-2] // =0xA000
    tst r0, r1
    beq loc_80BA526
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq locret_80BA52C
loc_80BA526:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
locret_80BA52C:
    pop {pc}
// end of function sub_80BA4E2

.thumb
sub_80BA52E:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BA542
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BA56C
loc_80BA542:
    ldr r1, [pc, #0x80ba584-0x80ba542-2] // =0xA000
    tst r0, r1
    beq loc_80BA556
    bl sub_80B56B8
    cmp r0, #0
    bne loc_80BA56C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BA56C
loc_80BA556:
    bl sub_800A146
    push {r0}
    bl sub_80BA5A0
    pop {r2}
    cmp r1, r2
    beq loc_80BA56C
    bl sub_80BA4E2
    b locret_80BA580
loc_80BA56C:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BA71A
    bl sub_80BA588
locret_80BA580:
    pop {pc}
    .balign 4, 0x00
dword_80BA584:    .word 0xA000
// end of function sub_80BA52E

.thumb
sub_80BA588:
    push {lr}
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    add r0, #4
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#8]
    mov r0, #0
    strb r0, [r3,#9]
    pop {pc}
// end of function sub_80BA588

.thumb
sub_80BA5A0:
    push {r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    bl sub_800A146
    ldr r2, [pc, #0x80ba5e8-0x80ba5b0-4] // =0x30
    ldr r3, [pc, #0x80ba5ec-0x80ba5b2-2] // =0xF880080
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    bne loc_80BA5C4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BA5D8
loc_80BA5C4:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BA5D8:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r6,r7,pc}
off_80BA5E8:    .word 0x30
dword_80BA5EC:    .word 0xF880080
// end of function sub_80BA5A0

.thumb
sub_80BA5F0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BA602
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA602:
    pop {pc}
// end of function sub_80BA5F0

loc_80BA604:
    push {r6,lr}
    ldr r1, [pc, #0x80ba614-0x80ba606-2] // off_80BA618
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BA614:    .word off_80BA618
off_80BA618:    .word sub_80BA628+1
    .word sub_80BA674+1
    .word sub_80BA6B2+1
    .word sub_80BA706+1
.thumb
sub_80BA628:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80BA666
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BA672
loc_80BA666:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA672:
    pop {r4,r6,pc}
// end of function sub_80BA628

.thumb
sub_80BA674:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA6B0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BA6B0:
    pop {r4,r7,pc}
// end of function sub_80BA674

.thumb
sub_80BA6B2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA6E2
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8001AF6
    mov r1, #3
    svc 6
    lsl r1, r1, #2
    ldr r0, [pc, #0x80ba6e4-0x80ba6d4-4] // off_80BA6E8
    ldr r1, [r0,r1]
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BA6E2:
    pop {pc}
off_80BA6E4:    .word off_80BA6E8
off_80BA6E8:    .word loc_80BA6F4
// end of function sub_80BA6B2

    .hword 0xa6fa // adr r6, loc_80BAAD8
    lsr r3, r1, #0x20
    .hword 0xa700 // adr r7, 0x80ba6f4
    lsr r3, r1, #0x20
loc_80BA6F4:
    add r2, #0x3c 
    cmp r0, #0x2d 
    asr r6, r3, #0x18
    cmp r0, #0x32 
    add r6, r3, r4
    asr r0, r3, #0x20
    sub r6, r3, #0
    asr r4, r2, #0x20
    lsr r4, r1, #8
.thumb
sub_80BA706:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA718
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA718:
    pop {pc}
// end of function sub_80BA706

loc_80BA71A:
    push {r6,lr}
    ldr r1, [pc, #0x80ba728-0x80ba71c-4] // off_80BA72C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80BA728:    .word off_80BA72C
off_80BA72C:    .word sub_80BA628+1
    .word sub_80BA73C+1
    .word sub_80BA74E+1
    .word sub_80BA770+1
.thumb
sub_80BA73C:
    push {r4,r7,lr}
    bl sub_80BA674
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80BA74C
    mov r0, #1
    strb r0, [r5,#0x10]
locret_80BA74C:
    pop {r4,r7,pc}
// end of function sub_80BA73C

.thumb
sub_80BA74E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA76E
    mov r0, #0x63 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
locret_80BA76E:
    pop {pc}
// end of function sub_80BA74E

.thumb
sub_80BA770:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x3c 
    bne loc_80BA79E
    mov r0, #0xa
    bl sub_800AF88
    ldrb r4, [r5,#4]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80ba7b4-0x80ba784-4] // dword_80BA7B8
    ldrb r0, [r3,r4]
    orr r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0x17
    lsl r3, r3, #0x10
    mov r2, #1
    bl sub_80D2E60
loc_80BA79E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BA7B2
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #2
    strb r0, [r5,#0x10]
locret_80BA7B2:
    pop {pc}
off_80BA7B4:    .word dword_80BA7B8
dword_80BA7B8:    .word 0x785A3C1E, 0xC896
// end of function sub_80BA770

loc_80BA7C0:
    push {lr}
    ldr r1, [pc, #0x80ba7d4-0x80ba7c2-2] // off_80BA7D8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BA7D4:    .word off_80BA7D8
off_80BA7D8:    .word sub_80BA7E4+1
    .word sub_80BA85A+1
    .word sub_80104D8+1
.thumb
sub_80BA7E4:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #7
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BA7E4

    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BA820
    bl sub_80033B4
    b locret_80BA858
loc_80BA820:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    mov r0, #1
    bl sub_8012F36
    bl sub_8016714
    mov r1, #0
    ldrb r0, [r5,#0x13]
    cmp r0, #1
    beq loc_80BA84A
    mov r1, #1
loc_80BA84A:
    strb r1, [r5,#7]
    mov r0, #0x78 
    strh r0, [r5,#0x22]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BA85A
locret_80BA858:
    pop {pc}
.thumb
sub_80BA85A:
    push {lr}
    bl sub_801375C
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BA86E
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_80BA86E
    str r0, [r5,#0x60]
loc_80BA86E:
    ldr r0, [pc, #0x80ba87c-0x80ba86e-2] // off_80BA880
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BA87C:    .word off_80BA880
off_80BA880:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_80BA8E6+1
    .word sub_80BA8A8+1
    .word sub_80BA906+1
    .word sub_80BAACC+1
    .word loc_80BAAE0+1
    .word loc_80BAC0C+1
// end of function sub_80BA85A

.thumb
sub_80BA8A8:
    push {lr}
    bl sub_8010568
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BA8B8
    mov r0, #2
    strb r0, [r5,#0x10]
loc_80BA8B8:
    ldrb r0, [r5,#9]
    cmp r0, #5
    beq locret_80BA8E4
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    beq loc_80BA8D8
    mov r0, #1
    bl sub_8012F36
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BA8E4
loc_80BA8D8:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BA8E4:
    pop {pc}
// end of function sub_80BA8A8

.thumb
sub_80BA8E6:
    push {lr}
    bl sub_8010EB4
    ldrb r0, [r5,#9]
    cmp r0, #4
    beq locret_80BA904
    mov r0, #1
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BA904:
    pop {pc}
// end of function sub_80BA8E6

.thumb
sub_80BA906:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80BA918
    bl sub_80079EA
    cmp r0, #0
    bne locret_80BA926
loc_80BA918:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80ba928-0x80ba91e-2] // off_80BA92C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80BA926:
    pop {r6,pc}
off_80BA928:    .word off_80BA92C
off_80BA92C:    .word loc_80BA934+1
    .word sub_80BAA68+1
// end of function sub_80BA906

loc_80BA934:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80ba944-0x80ba938-4] // off_80BA948
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BA944:    .word off_80BA948
off_80BA948:    .word sub_80BA950+1
    .word sub_80BA98E+1
.thumb
sub_80BA950:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80BA974
    mov r0, sp
    mov r1, #0x25 
    mov r2, #0x2a 
    bl sub_80B656C
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#5]
    cmp r0, r1
    bne loc_80BA974
    mov r0, #4
    strb r0, [r6,#1]
    b loc_80BA98A
loc_80BA974:
    bl sub_8012F4A
    ldr r1, [pc, #0x80ba9c4-0x80ba978-4] // =0xA000
    tst r0, r1
    bne loc_80BA98A
    bl sub_80BAA7C
    cmp r0, #0
    bne loc_80BA98A
    bl sub_80BA9C8
loc_80BA98A:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BA950

.thumb
sub_80BA98E:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80ba9c4-0x80ba994-4] // =0xA000
    tst r0, r1
    bne locret_80BA9C0
    bl sub_80BAA7C
    cmp r0, #0
    bne locret_80BA9C0
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_80BA9BC
    mov r2, #0
    cmp r1, r0
    blt loc_80BA9B4
    mov r2, #1
loc_80BA9B4:
    strb r2, [r5,#7]
    bl sub_80BA9C8
    b locret_80BA9C0
loc_80BA9BC:
    bl sub_80BAA44
locret_80BA9C0:
    pop {pc}
    .balign 4, 0x00
dword_80BA9C4:    .word 0xA000
// end of function sub_80BA98E

.thumb
sub_80BA9C8:
    push {lr}
    bl sub_8012F4A
    mov r0, #1
    tst r0, r1
    bne loc_80BA9D8
    bl sub_8012F36
loc_80BA9D8:
    mov r1, #1
    ldrb r0, [r5,#7]
    cmp r0, #1
    bne loc_80BA9E2
    sub r1, #2
loc_80BA9E2:
    ldrb r0, [r5,#0x13]
    add r1, r1, r0
    ldrb r0, [r5,#0x12]
    ldr r3, [pc, #0x80baa30-0x80ba9e8-4] // dword_80BAA34
    bl sub_80B38B4
    push {r0,r1}
    bl sub_8009E78
    pop {r1,r2}
    cmp r0, #0
    bne loc_80BAA18
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bge locret_80BAA2C
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    bne loc_80BAA12
    ldrb r0, [r5,#7]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#7]
    b loc_80BAA28
loc_80BAA12:
    bl sub_80BAA44
    b locret_80BAA2C
loc_80BAA18:
    strb r1, [r6,#4]
    strb r2, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BAAE0
loc_80BAA28:
    mov r0, #0x78 
    strh r0, [r5,#0x22]
locret_80BAA2C:
    pop {pc}
    .byte 0, 0
off_80BAA30:    .word dword_80BAA34
dword_80BAA34:    .word 0x0
    .word 0xF8800A0, 0x20, 0xF880080
// end of function sub_80BA9C8

.thumb
sub_80BAA44:
    push {lr}
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x78 
    strh r0, [r5,#0x22]
    mov r0, #0x13
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#7]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#7]
    pop {pc}
// end of function sub_80BAA44

.thumb
sub_80BAA68:
    push {r4,r6,r7,lr}
    bl sub_80B54C8
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {r4,r6,r7,pc}
// end of function sub_80BAA68

.thumb
sub_80BAA7C:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80BAAB6
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80BAAB6
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    bne loc_80BAAB6
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80BAAB6
    bl sub_8007BB4
    ldr r1, [pc, #0x80baac8-0x80baaa6-2] // =0x12C
    cmp r0, r1
    blt loc_80BAAB6
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x74 
    beq loc_80BAABA
loc_80BAAB6:
    mov r0, #0
    pop {pc}
loc_80BAABA:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80BAAC8:    .word 0x12C
// end of function sub_80BAA7C

.thumb
sub_80BAACC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BAADE
    mov r0, #6
loc_80BAAD8:
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAADE:
    pop {pc}
// end of function sub_80BAACC

loc_80BAAE0:
    push {r6,lr}
    ldr r1, [pc, #0x80baaf0-0x80baae2-2] // off_80BAAF4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BAAF0:    .word off_80BAAF4
off_80BAAF4:    .word sub_80BAAFC+1
    .word sub_80BAB9C+1
.thumb
sub_80BAAFC:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BAB48
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    mov r0, #0x80
    add r0, r0, r5
    ldrb r0, [r0,#1]
    cmp r0, #4
    bne loc_80BAB28
    add r3, #6
loc_80BAB28:
    ldr r0, [pc, #0x80bab8c-0x80bab28-4] // loc_80BAB90
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bab58-0x80bab36-2] // dword_80BAB5C
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BAB9C
    b locret_80BAB54
loc_80BAB48:
    mov r0, #0x10
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAB54:
    pop {r6,pc}
    .balign 4, 0x00
off_80BAB58:    .word dword_80BAB5C
dword_80BAB5C:    .word 0x6666, 0x8000, 0x999A, 0xB333, 0xCCCD, 0x10000, 0x10000
    .word 0x10000, 0x16666, 0x1CCCD, 0x23333, 0x2999A
off_80BAB8C:    .word loc_80BAB90
// end of function sub_80BAAFC

loc_80BAB90:
    add r0, #0x3c 
    mov r2, #0x28 
    add r6, r3, r0
    add r0, r3, r0
    lsr r1, r2, #0x14
    lsr r3, r1, #4
.thumb
sub_80BAB9C:
    push {r6,lr}
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BAC04
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8012F4A
    ldr r1, [pc, #0x80bac08-0x80babdc-4] // =0xA000
    tst r0, r1
    bne loc_80BABFC
    mov r0, #0x80
    add r0, r0, r5
    ldrb r0, [r0,#1]
    cmp r0, #4
    beq loc_80BABFC
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    beq loc_80BABFC
    mov r6, #0x80
    add r6, r6, r5
    bl sub_80BAA44
    b locret_80BAC04
loc_80BABFC:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAC04:
    pop {r6,pc}
    .balign 4, 0x00
dword_80BAC08:    .word 0xA000
// end of function sub_80BAB9C

loc_80BAC0C:
    push {r6,lr}
    ldr r1, [pc, #0x80bac1c-0x80bac0e-2] // off_80BAC20
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BAC1C:    .word off_80BAC20
off_80BAC20:    .word sub_80BAC2C+1
    .word sub_80BACAC+1
    .word sub_80BACE4+1
.thumb
sub_80BAC2C:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BAC8E
    mov r0, #1
    bl sub_8012F40
    ldrb r4, [r5,#4]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80bac90-0x80bac42-2] // dword_80BAC94
    ldrb r0, [r3,r4]
    orr r6, r0
    mov r0, #0x80
    add r0, r0, r5
    ldrb r0, [r0,#1]
    cmp r0, #4
    bne loc_80BAC58
    mov r0, #3
    lsl r0, r0, #8
    add r4, r4, r0
loc_80BAC58:
    add r4, #0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r2, #4
    bl sub_80D3320
    str r0, [r5,#0x60]
    mov r0, #0x10
    bl sub_800AF88
    ldrb r0, [r5,#4]
    mov r0, #0x80
    add r0, r0, r5
    ldrb r0, [r0,#1]
    cmp r0, #4
    bne loc_80BAC84
    add r3, #6
loc_80BAC84:
    ldr r1, [pc, #0x80bac9c-0x80bac84-4] // dword_80BACA0
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BAC8E:
    pop {r4,r6,r7,pc}
off_80BAC90:    .word dword_80BAC94
dword_80BAC94:    .word 0x643C1E0F, 0xC896
off_80BAC9C:    .word dword_80BACA0
dword_80BACA0:    .word 0x505A6478
    .word 0x363C3C46
    .word 0x1E242A30
// end of function sub_80BAC2C

.thumb
sub_80BACAC:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #1
    bne loc_80BACC2
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80BACC2
    mov r0, #2
    strb r0, [r5,#0x10]
loc_80BACC2:
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80BACD0
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BACE2
loc_80BACD0:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne locret_80BACE2
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #2
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BACE2:
    pop {pc}
// end of function sub_80BACAC

.thumb
sub_80BACE4:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80BACFA
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt loc_80BACFA
    mov r0, #1
    bl sub_8012F36
loc_80BACFA:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BAD26
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bad28-0x80bad0a-2] // off_80BAD2C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80BAD1E
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BAD26
loc_80BAD1E:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAD26:
    pop {pc}
off_80BAD28:    .word off_80BAD2C
off_80BAD2C:    .word 0xA14
    .word 0x0
// end of function sub_80BACE4

loc_80BAD34:
    push {lr}
    ldr r1, [pc, #0x80bad48-0x80bad36-2] // off_80BAD4C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80BAD48:    .word off_80BAD4C
off_80BAD4C:    .word sub_80BAD78+1
    .word sub_80BAE24+1
    .word sub_80BAD58+1
.thumb
sub_80BAD58:
    push {lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0
    ldr r1, [r5,#0x4c]
    str r0, [r1]
    bl sub_80033B4
    pop {pc}
// end of function sub_80BAD58

.thumb
sub_80BAD78:
    push {lr}
    mov r0, #0xb4
    bl sub_8002B86
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x10
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BAD78

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80BADB0
    mov r0, #6
    b loc_80BADB6
loc_80BADB0:
    cmp r1, #4
    bne loc_80BADB6
    mov r0, #0xe
loc_80BADB6:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0x60 
    add r0, r0, r5
    ldr r1, [pc, #0x80bae04-0x80badd4-4] // dword_80BAE08
    bl sub_80BAF02
    mov r0, #0x68 
    add r0, r0, r5
    ldr r1, [pc, #0x80bae10-0x80badde-2] // dword_80BAE14
    bl sub_80BAF02
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80bae1c-0x80badec-4] // loc_80BAE20
    ldrb r0, [r1,r0]
    lsl r0, r0, #8
    add r0, #0xd
    lsl r0, r0, #0x10
    str r0, [r5,#0x70]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BAE24
    pop {pc}
    .balign 4, 0x00
off_80BAE04:    .word dword_80BAE08
dword_80BAE08:    .word 0x900080, 0x11
off_80BAE10:    .word dword_80BAE14
dword_80BAE14:    .word 0xA00080, 0x21
off_80BAE1C:    .word loc_80BAE20
loc_80BAE20:
    strh r0, [r0,#2]
    asr r0, r4, #0x20
.thumb
sub_80BAE24:
    push {lr}
    ldr r1, [pc, #0x80bae34-0x80bae26-2] // off_80BAE38
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80BAE34:    .word off_80BAE38
off_80BAE38:    .word sub_80BAE44+1
    .word sub_80BAE9E+1
    .word sub_80BAECE+1
// end of function sub_80BAE24

.thumb
sub_80BAE44:
    push {r4,lr}
    ldr r0, [r5,#0x70]
    mov r1, #0xff
    and r0, r1
    cmp r0, #0
    bne loc_80BAE7E
    ldrb r0, [r5,#0x16]
    bl sub_800BFB8
    ldrh r1, [r0,#0x26]
    push {r1}
    mov r0, #0x60 
    add r0, r0, r5
    bl sub_80BAF0A
    pop {r1}
    cmp r0, #0
    beq loc_80BAE6E
    ldr r0, [pc, #0x80baf44-0x80bae68-4] // =0x1204
    str r0, [r5,#0x70]
    b loc_80BAE7E
loc_80BAE6E:
    mov r0, #0x68 
    add r0, r0, r5
    bl sub_80BAF0A
    cmp r0, #0
    beq loc_80BAE7E
    ldr r0, [pc, #0x80baf48-0x80bae7a-2] // =0x2208
    str r0, [r5,#0x70]
loc_80BAE7E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BAE9C
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x87
    bl f500_8000558
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAE9C:
    pop {r4,pc}
// end of function sub_80BAE44

.thumb
sub_80BAE9E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BAECC
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0x12
    lsl r3, r3, #0x10
    ldr r4, [r5,#0x70]
    ldr r6, [r5,#0x2c]
    mov r2, #0
    bl sub_80D36F2
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BAECC:
    pop {pc}
// end of function sub_80BAE9E

.thumb
sub_80BAECE:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BAEDC
    mov r0, #8
    str r0, [r5,#8]
locret_80BAEDC:
    pop {r4,r6,r7,pc}
// end of function sub_80BAECE

.thumb
sub_80BAEDE:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x19
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80BAF00
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x4c]
    mov r1, #1
    str r1, [r7]
locret_80BAF00:
    pop {pc}
// end of function sub_80BAEDE

.thumb
sub_80BAF02:
    str r1, [r0]
    mov r1, #0
    strh r1, [r0,#4]
    mov pc, lr
// end of function sub_80BAF02

.thumb
sub_80BAF0A:
    ldr r2, [r0]
    ldrb r3, [r0,#4]
    lsl r3, r3, #1
    ldrh r3, [r2,r3]
    tst r1, r3
    beq loc_80BAF2C
    mov r3, #0xa
    strb r3, [r0,#5]
    ldrb r3, [r0,#4]
    add r3, #1
    strb r3, [r0,#4]
    lsl r3, r3, #1
    ldrh r3, [r2,r3]
    cmp r3, #0
    bne loc_80BAF40
    mov r0, #1
    mov pc, lr
loc_80BAF2C:
    ldrb r3, [r0,#4]
    cmp r3, #0
    beq loc_80BAF40
    ldrb r3, [r0,#5]
    sub r3, #1
    beq loc_80BAF3C
    strb r3, [r0,#5]
    b loc_80BAF40
loc_80BAF3C:
    mov r1, #0
    strh r1, [r0,#4]
loc_80BAF40:
    mov r0, #0
    mov pc, lr
dword_80BAF44:    .word 0x1207
off_80BAF48:    .word 0x2208
// end of function sub_80BAF0A

loc_80BAF4C:
    push {lr}
    ldr r1, [pc, #0x80baf60-0x80baf4e-2] // off_80BAF64
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .byte 0, 0
off_80BAF60:    .word off_80BAF64
off_80BAF64:    .word sub_80BAF70+1
    .word sub_80BAFC4+1
    .word sub_80033B4+1
.thumb
sub_80BAF70:
    push {r4,lr}
    mov r1, #8
    mov r2, #0xb
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80BAF70

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0xb
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0
    str r0, [r5,#0x3c]
    push {r7}
    mov r4, #1
    lsl r4, r4, #0x10
    add r4, #1
    bl sub_80CCE28
    str r0, [r5,#0x60]
    pop {r7}
    mov r0, #4
    str r0, [r5,#8]
    pop {r4,pc}
.thumb
sub_80BAFC4:
    push {lr}
    ldr r1, [pc, #0x80bafd4-0x80bafc6-2] // off_80BAFD8
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80BAFD4:    .word off_80BAFD8
off_80BAFD8:    .word sub_80BAFE8+1
    .word sub_80BB026+1
    .word sub_80BB04C+1
    .word sub_80BB0C8+1
// end of function sub_80BAFC4

.thumb
sub_80BAFE8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BB00A
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BB00A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BB024
    bl sub_8009E98
    mov r2, #0xc
    tst r0, r0
    beq loc_80BB01E
    mov r2, #4
loc_80BB01E:
    strb r2, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB024:
    pop {pc}
// end of function sub_80BAFE8

.thumb
sub_80BB026:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BB03A
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BB03A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BB04A
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB04A:
    pop {pc}
// end of function sub_80BB026

.thumb
sub_80BB04C:
    push {lr}
    ldr r1, [pc, #0x80bb05c-0x80bb04e-2] // off_80BB060
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80BB05C:    .word off_80BB060
off_80BB060:    .word sub_80BB068+1
    .word sub_80BB0A2+1
// end of function sub_80BB04C

.thumb
sub_80BB068:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BB07C
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BB07C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80BB0A0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x17]
    mov r3, #0
    ldr r6, [r5,#0x2c]
    mov r7, #0x64 
    add r7, r7, r5
    bl sub_80D3600
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BB0A0:
    pop {pc}
// end of function sub_80BB068

.thumb
sub_80BB0A2:
    ldr r0, [r5,#0x64]
    tst r0, r0
    bne locret_80BB0C6
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BB0B6
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BB0B6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB0C6
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB0C6:
    mov pc, lr
// end of function sub_80BB0A2

.thumb
sub_80BB0C8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BB0DC
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BB0DC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB0F4
    ldr r0, [r5,#0x60]
    bl sub_80CCE48
    mov r0, #0
    ldr r1, [r5,#0x50]
    strb r0, [r1]
    mov r0, #8
    strb r0, [r5,#8]
locret_80BB0F4:
    pop {pc}
// end of function sub_80BB0C8

.thumb
sub_80BB0F6:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x1a
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80BB11A
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    str r5, [r0,#0x4c]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x50]
    mov r1, #1
    strb r1, [r7]
locret_80BB11A:
    pop {pc}
// end of function sub_80BB0F6

loc_80BB11C:
    push {lr}
    ldr r1, [pc, #0x80bb130-0x80bb11e-2] // off_80BB134
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80BB130:    .word off_80BB134
off_80BB134:    .word sub_80BB140+1
    .word sub_80BB19A+1
    .word sub_80104D8+1
.thumb
sub_80BB140:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #4
    bl sub_800285C
    bl sub_8002E76
    mov r0, #1
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BB140

    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BB17C
    bl sub_80033B4
    b locret_80BB198
loc_80BB17C:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #1
    bl sub_8012F36
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BB19A
locret_80BB198:
    pop {pc}
.thumb
sub_80BB19A:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80bb1ac-0x80bb1a0-4] // off_80BB1B0
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80BB1AC:    .word off_80BB1B0
off_80BB1B0:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80BB1D4+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BB1EC+1
    .word sub_80BB384+1
    .word loc_80BB3CE+1
// end of function sub_80BB19A

.thumb
sub_80BB1D4:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BB1E6
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq loc_80BB1E6
    bl sub_80DCC74
loc_80BB1E6:
    bl sub_80100F8
    pop {pc}
// end of function sub_80BB1D4

loc_80BB1EC:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80BB1FE
    bl sub_80079EA
    cmp r0, #0
    bne locret_80BB20C
loc_80BB1FE:
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bb210-0x80bb204-4] // off_80BB214
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80BB20C:
    pop {r6,pc}
    .byte 0, 0
off_80BB210:    .word off_80BB214
off_80BB214:    .word sub_80BB228+1
    .word sub_80BB28A+1
    .word sub_80BB2B2+1
    .word sub_80BB2CC+1
    .word sub_80BB2E6+1
.thumb
sub_80BB228:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bb238-0x80bb22c-4] // off_80BB23C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BB238:    .word off_80BB23C
off_80BB23C:    .word sub_80BB240+1
// end of function sub_80BB228

.thumb
sub_80BB240:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    cmp r0, #4
    bge loc_80BB254
loc_80BB24A:
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80BB286
loc_80BB254:
    bl sub_80BB300
    cmp r0, #0
    bne loc_80BB286
    mov r0, sp
    mov r1, #0x13
    mov r2, #0x18
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BB27A
    mov r3, sp
loc_80BB26C:
    ldr r2, [r3]
    ldrb r2, [r2,#9]
    cmp r2, #8
    beq loc_80BB24A
    add r3, #4
    sub r0, #1
    bne loc_80BB26C
loc_80BB27A:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6,#9]
loc_80BB286:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BB240

.thumb
sub_80BB28A:
    push {lr}
    bl sub_80B54C8
    bl sub_80BB296
    pop {pc}
// end of function sub_80BB28A

.thumb
sub_80BB296:
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80BB296

.thumb
sub_80BB2B2:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E3ECC
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BB296
    pop {r4,r6,r7,pc}
// end of function sub_80BB2B2

.thumb
sub_80BB2CC:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E3F62
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BB296
    pop {r4,r6,r7,pc}
// end of function sub_80BB2CC

.thumb
sub_80BB2E6:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E4B8A
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BB296
    pop {r4,r6,r7,pc}
// end of function sub_80BB2E6

.thumb
sub_80BB300:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80BB34C
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80BB34C
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80BB34C
    bl sub_8007BB4
    ldr r1, [pc, #0x80bb37c-0x80bb324-4] // =0x12C
    cmp r0, r1
    blt loc_80BB34C
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x78 
    beq loc_80BB350
    ldr r1, [pc, #0x80bb380-0x80bb334-4] // =0x1E0
    cmp r0, r1
    blt loc_80BB34C
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x75 
    beq loc_80BB35A
    cmp r1, #0x7b 
    beq loc_80BB364
    cmp r1, #0x61 
    beq loc_80BB36E
loc_80BB34C:
    mov r0, #0
    pop {pc}
loc_80BB350:
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BB376
loc_80BB35A:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BB376
loc_80BB364:
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BB376
loc_80BB36E:
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80BB376:
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80BB37C:    .word 0x12C
off_80BB380:    .word 0x1E0
// end of function sub_80BB300

.thumb
sub_80BB384:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BB3B2
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#9]
    add r0, #1
    strb r0, [r3,#9]
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bb3c4-0x80bb39c-4] // loc_80BB3C8
    ldrb r0, [r0,r1]
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x10]
    cmp r0, #1
    beq loc_80BB3B2
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012F36
loc_80BB3B2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB3C2
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB3C2:
    pop {pc}
off_80BB3C4:    .word loc_80BB3C8
// end of function sub_80BB384

loc_80BB3C8:
    add r2, #0x32 
    cmp r0, #0x28 
    sub r6, r3, #0
loc_80BB3CE:
    push {r6,lr}
    ldr r1, [pc, #0x80bb3dc-0x80bb3d0-4] // off_80BB3E0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80BB3DC:    .word off_80BB3E0
off_80BB3E0:    .word sub_80BB3F0+1
    push {r0,r1,r3,r5}
    lsr r3, r1, #0x20
    push {r0,r1,r3,r4,r6}
    lsr r3, r1, #0x20
    push {r0,r2,r3,r6,lr}
    lsr r3, r1, #0x20
.thumb
sub_80BB3F0:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BB400
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
loc_80BB400:
    mov r1, #1
    ldrh r0, [r5,#0x20]
    lsr r0, r1
    and r0, r1
    add r0, #0
    strb r0, [r5,#0x10]
    ldrh r0, [r5,#0x20]
    mov r0, #1
    bl sub_8012F40
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB428
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BB428:
    pop {pc}
// end of function sub_80BB3F0

    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #8
    bne loc_80BB438
    mov r0, #0xe
    bl sub_800AF88
loc_80BB438:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB458
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0x23 
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #6
    strh r0, [r5,#0x22]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BB458:
    pop {pc}
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x22]
    cmp r0, #0
    beq loc_80BB4C0
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_80BB526
    mov r0, #0
    str r0, [r5,#0x64]
    bl sub_800AB54
    mov r1, #0
    ldrb r2, [r5,#4]
    ldr r6, [pc, #0x80bb528-0x80bb474-4] // byte_80BB52C
    ldrb r6, [r6,r2]
    lsl r6, r6, #0x10
    ldr r3, [pc, #0x80bb534-0x80bb47a-2] // dword_80BB538
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80bb544-0x80bb480-4] // =0x1505FF01
    mov r7, #3
    mov r3, #0
    lsl r3, r3, #0x10
    mov r2, #0x64 
    add r2, r2, r5
    bl sub_80DCC2A
    cmp r0, #0
    beq loc_80BB498
    ldrh r1, [r5,#0x20]
    strh r1, [r0,#0x20]
loc_80BB498:
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_8009A52
    mov r1, #0x10
    and r0, r1
    str r0, [r5,#0x60]
    beq loc_80BB4C0
    mov r0, #2
    mov r1, #0x28 
    bl sub_8025FE0
    bl sub_80BB562
    mov r0, #0xa2
    bl f500_8000558
loc_80BB4C0:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BB516
    ldrh r0, [r5,#0x20]
    cmp r0, #0x3c 
    bne loc_80BB4EE
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bb528-0x80bb4ce-2] // byte_80BB52C
    ldrb r6, [r1,r0]
    lsl r6, r6, #0x10
    ldr r1, [pc, #0x80bb534-0x80bb4d4-4] // dword_80BB538
    ldrb r0, [r1,r0]
    orr r6, r0
    bl sub_8012F4A
    ldr r1, [pc, #0x80bb548-0x80bb4de-2] // =0xA000
    tst r0, r1
    bne loc_80BB4EA
    bl sub_80D05AE
    b loc_80BB4EE
loc_80BB4EA:
    bl sub_80D0630
loc_80BB4EE:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x32 
    blt loc_80BB516
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80BB516
    ldr r4, [pc, #0x80bb540-0x80bb4fa-2] // =0x2F00FF00
    mov r0, #0x85
    ldrb r1, [r5,#0x16]
    sub r0, r0, r1
    add r4, r4, r0
    mov r6, #0
    mov r7, #0x43 
    lsl r7, r7, #8
    add r7, #0
    ldrb r2, [r5,#0x17]
    mov r0, #1
    mov r1, #1
    bl sub_80CD6D6
loc_80BB516:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BB526
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BB526:
    pop {r4,r6,r7,pc}
off_80BB528:    .word byte_80BB52C
byte_80BB52C:    .byte 0x32
    .byte 0x32, 0x32
    .byte 0x32, 0x32
    .byte 0x32, 0x0
    .byte 0x0
off_80BB534:    .word dword_80BB538
dword_80BB538:    .word 0x64462814, 0xC896
dword_80BB540:    .word 0x2F00FF00
dword_80BB544:    .word 0x1505FF01
dword_80BB548:    .word 0xA000
.thumb
sub_80BB54C:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BB560
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB560:
    pop {pc}
// end of function sub_80BB54C

.thumb
sub_80BB562:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bb5b0-0x80bb568-4] // off_80BB5B4
    ldrb r0, [r0,r1]
    cmp r0, #0
    beq loc_80BB5AA
    ldr r3, [pc, #0x80bb5bc-0x80bb570-4] // dword_80BB5C0
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    beq loc_80BB5AA
    add r6, r0, #0
    add r1, r0, #0
    add r2, r0, #0
    mov r0, sp
    bl fA00_8000AA2
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bb5b0-0x80bb58e-2] // off_80BB5B4
    ldrb r7, [r0,r1]
    mov r4, sp
loc_80BB594:
    ldrb r0, [r4]
    add r4, #1
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_8009AB8
    sub r6, #1
    beq loc_80BB5AA
    sub r7, #1
    bne loc_80BB594
loc_80BB5AA:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_80BB5B0:    .word off_80BB5B4
off_80BB5B4:    .word unk_2020100
    .word 0x303
off_80BB5BC:    .word dword_80BB5C0
dword_80BB5C0:    .word 0x10030, 0x0
    .word 0x10010, 0x20
// end of function sub_80BB562

loc_80BB5D0:
    push {lr}
    ldr r1, [pc, #0x80bb5e4-0x80bb5d2-2] // loc_80BB5E8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80BB5E4:    .word loc_80BB5E8
loc_80BB5E8:
    push {r0,r2,r4-r7,lr}
    lsr r3, r1, #0x20
    .word sub_80BB66C+1
    .word sub_8010F0C+1
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x14
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80BB61C
    mov r0, #1
loc_80BB61C:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BB636
    bl sub_80033B4
    b locret_80BB660
loc_80BB636:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80bb664-0x80bb646-2] // loc_80BB668
    ldr r2, [r2,r1]
    mov r1, #0x25 
    bl sub_800D75A
    mov r1, #0x23 
    mov r2, #0xe
    bl sub_800D75A
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BB66C
locret_80BB660:
    pop {pc}
    .balign 4, 0x00
off_80BB664:    .word loc_80BB668
loc_80BB668:
    lsl r3, r0, #0x18
    lsr r1, r1, #8
.thumb
sub_80BB66C:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80bb680-0x80bb672-2] // off_80BB684
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .byte 0, 0
off_80BB680:    .word off_80BB684
off_80BB684:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_80BB6B4+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80BB6D4+1
    .word 0x80BBA0D, 0x80BBA71, 0x80BBB91, 0x80BBD57, 0x80BBF13
// end of function sub_80BB66C

.thumb
sub_80BB6B4:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80BB6CE
    mov r1, #0
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BB6C6
    strh r1, [r0,#0x24]
loc_80BB6C6:
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq loc_80BB6CE
    strh r1, [r0,#0x24]
loc_80BB6CE:
    bl sub_8010CF8
    pop {pc}
// end of function sub_80BB6B4

loc_80BB6D4:
    push {r6,lr}
    bl sub_80449E8
    cmp r0, #0
    beq loc_80BB6E6
    bl sub_80079EA
    cmp r0, #0
    bne locret_80BB6F4
loc_80BB6E6:
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bb6f8-0x80bb6ec-4] // off_80BB6FC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_80BB6F4:
    pop {r6,pc}
    .balign 4, 0x00
off_80BB6F8:    .word off_80BB6FC
off_80BB6FC:    .word loc_80BB710+1
    .word sub_80BB7CC+1
    .word sub_80BB7E0+1
    .word sub_80BB7EC+1
    .word sub_80BB800+1
loc_80BB710:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bb720-0x80bb714-4] // off_80BB724
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BB720:    .word off_80BB724
off_80BB724:    .word sub_80BB728+1
.thumb
sub_80BB728:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80BB780
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    ldrb r1, [r5,#0x12]
    cmp r0, r1
    bne loc_80BB75C
    ldr r0, [r5,#0x68]
    cmp r0, #2
    blt loc_80BB75C
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_80BB75C
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BB7C4
loc_80BB75C:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80BB776
    ldr r1, [pc, #0x80bb7c8-0x80bb768-4] // =0xA000
    tst r0, r1
    bne loc_80BB772
    mov r0, #4
    b loc_80BB778
loc_80BB772:
    mov r0, #0xc
    b loc_80BB778
loc_80BB776:
    mov r0, #8
loc_80BB778:
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80BB7C4
loc_80BB780:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80BB7B0
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    cmp r0, #1
    bne loc_80BB7A6
    bl sub_80BB898
    cmp r0, #0
    beq locret_80BB7C4
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BB7C4
loc_80BB7A6:
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BB7C4
loc_80BB7B0:
    mov r0, #0
    strb r0, [r6,#8]
    bl sub_80BB9C8
    cmp r0, #1
    beq locret_80BB7C4
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BB7C4:
    pop {pc}
    .balign 4, 0x00
dword_80BB7C8:    .word 0xA000
// end of function sub_80BB728

.thumb
sub_80BB7CC:
    push {lr}
    bl sub_80BB83C
    tst r0, r0
    bne loc_80BB7DA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BB7DA:
    bl sub_80BB820
    pop {pc}
// end of function sub_80BB7CC

.thumb
sub_80BB7E0:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80BB820
    pop {pc}
// end of function sub_80BB7E0

.thumb
sub_80BB7EC:
    push {lr}
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BB7FA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BB7FA:
    bl sub_80BB820
    pop {pc}
// end of function sub_80BB7EC

.thumb
sub_80BB800:
    push {lr}
    bl sub_80B54C8
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
    pop {pc}
// end of function sub_80BB800

.thumb
sub_80BB820:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BBA70
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80BB820

.thumb
sub_80BB83C:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    ldr r3, [pc, #0x80bb884-0x80bb850-4] // dword_80BB888
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    beq loc_80BB874
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BB874:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
off_80BB884:    .word dword_80BB888
dword_80BB888:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80BB83C

.thumb
sub_80BB898:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_8012F4A
    ldr r1, [pc, #0x80bb904-0x80bb8a0-4] // =0xA000
    tst r0, r1
    beq loc_80BB8AC
    bl sub_80B56B8
    b loc_80BB8D8
loc_80BB8AC:
    bl sub_800A15E
    ldrb r0, [r5,#0x16]
    ldr r3, [pc, #0x80bb8dc-0x80bb8b2-2] // dword_80BB8E0
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A17A
    cmp r0, #0
    beq loc_80BB8D8
    push {r0,r1}
    ldr r3, [pc, #0x80bb8f0-0x80bb8c4-4] // dword_80BB8F4
    bl sub_80B38B4
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    cmp r2, #0
    bne loc_80BB8D8
    mov r0, #0
loc_80BB8D8:
    add sp, sp, #0x18
    pop {r4,r7,pc}
off_80BB8DC:    .word dword_80BB8E0
dword_80BB8E0:    .word 0x0
    .word 0x20, 0x20, 0x0
off_80BB8F0:    .word dword_80BB8F4
dword_80BB8F4:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_80BB904:    .word 0xA000
// end of function sub_80BB898

.thumb
sub_80BB908:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r5,#0x16]
    add r0, #3
    bl sub_80BB980
    cmp r0, #0
    beq loc_80BB934
    ldrb r0, [r5,#0x16]
    add r0, #3
    ldr r3, [pc, #0x80bb9a8-0x80bb924-4] // dword_80BB9AC
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    bne loc_80BB95C
loc_80BB934:
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mul r0, r1
    add r0, #2
    bl sub_80BB980
    cmp r0, #0
    beq loc_80BB970
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mul r0, r1
    add r0, #2
    ldr r3, [pc, #0x80bb9a8-0x80bb94c-4] // dword_80BB9AC
    bl sub_80B38B4
    add r7, sp, #0
    bl sub_800A0A4
    tst r0, r0
    beq loc_80BB970
loc_80BB95C:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BB970:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
// end of function sub_80BB908

.thumb
sub_80BB980:
    push {r4,lr}
    mov r1, #3
loc_80BB984:
    push {r0,r1}
    bl sub_8009A52
    add r2, r0, #0
    pop {r0,r1}
    ldrb r4, [r5,#0x16]
    lsl r4, r4, #2
    ldr r3, [pc, #0x80bb9bc-0x80bb992-2] // off_80BB9C0
    ldr r3, [r3,r4]
    tst r2, r3
    beq loc_80BB99E
    mov r0, #0
    b locret_80BB9A4
loc_80BB99E:
    sub r1, #1
    bne loc_80BB984
    mov r0, #1
locret_80BB9A4:
    pop {r4,pc}
    .balign 4, 0x00
off_80BB9A8:    .word dword_80BB9AC
dword_80BB9AC:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
off_80BB9BC:    .word off_80BB9C0
off_80BB9C0:    .word start_
    .word LCDControl
// end of function sub_80BB980

.thumb
sub_80BB9C8:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80BB9E8
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80BB9E8
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    bne loc_80BB9EC
loc_80BB9E8:
    mov r0, #0
    pop {pc}
loc_80BB9EC:
    bl sub_8007BB4
    ldr r1, [pc, #0x80bba08-0x80bb9f0-4] // =0x258
    cmp r0, r1
    blt loc_80BB9E8
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80BBA08:    .word 0x258
// end of function sub_80BB9C8

    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BBA2C
    mov r0, #1
    strb r0, [r5,#0xb]
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bba68-0x80bba1a-2] // loc_80BBA6C
    ldrb r0, [r0,r1]
    strh r0, [r5,#0x20]
    ldr r0, [r5,#0x68]
    cmp r0, #0
    beq loc_80BBA56
    mov r0, #7
    strb r0, [r5,#0x10]
    b loc_80BBA56
loc_80BBA2C:
    ldrb r0, [r5,#0x10]
    cmp r0, #7
    bne loc_80BBA56
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80BBA56
    ldrh r0, [r5,#0x20]
    cmp r0, #0x17
    blt loc_80BBA52
    ldr r0, [r5,#0x68]
    cmp r0, #0
    beq loc_80BBA52
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    cmp r0, #3
    blt loc_80BBA56
loc_80BBA52:
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80BBA56:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBA66
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BBA66:
    pop {pc}
off_80BBA68:    .word loc_80BBA6C
loc_80BBA6C:
    add r2, #0x23 
    cmp r5, #0x32 
loc_80BBA70:
    push {r6,lr}
    ldr r1, [pc, #0x80bba80-0x80bba72-2] // off_80BBA84
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BBA80:    .word off_80BBA84
off_80BBA84:    .word sub_80BBA94+1
    .word sub_80BBAE0+1
    .word sub_80BBB1E+1
    .word sub_80BBB78+1
.thumb
sub_80BBA94:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BBAD2
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BBADE
loc_80BBAD2:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BBADE:
    pop {r6,pc}
// end of function sub_80BBA94

.thumb
sub_80BBAE0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBB1C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BBB1C:
    pop {pc}
// end of function sub_80BBAE0

.thumb
sub_80BBB1E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBB62
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80bbb6c-0x80bbb3e-2] // dword_80BBB70
    ldrsb r0, [r1,r0]
    push {r0}
    bl sub_8012F4A
    ldr r2, [pc, #0x80bbb74-0x80bbb48-4] // =0xA000
    and r2, r0
    beq loc_80BBB50
    mov r2, #0x28 
loc_80BBB50:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bbb64-0x80bbb52-2] // dword_80BBB68
    ldrb r0, [r1,r0]
    add r0, r0, r2
    pop {r1}
    add r0, r0, r1
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BBB62:
    pop {pc}
off_80BBB64:    .word dword_80BBB68
dword_80BBB68:    .word 0x14191E28
off_80BBB6C:    .word dword_80BBB70
dword_80BBB70:    .word 0xF0A00F6
dword_80BBB74:    .word 0xA000
// end of function sub_80BBB1E

.thumb
sub_80BBB78:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBB8E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BBB8E:
    pop {pc}
// end of function sub_80BBB78

    push {lr}
    ldr r1, [pc, #0x80bbba0-0x80bbb92-2] // off_80BBBA4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80BBBA0:    .word off_80BBBA4
off_80BBBA4:    .word sub_80BBBBC+1
    .word sub_80BBC14+1
    .word sub_80BBC52+1
    .word sub_80BBC74+1
    .word sub_80BBC88+1
    .word sub_80BBD24+1
.thumb
sub_80BBBBC:
    push {r6,lr}
    bl sub_80BB898
    tst r0, r0
    beq loc_80BBC06
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80BBC06
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BBC12
loc_80BBC06:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BBC12:
    pop {r6,pc}
// end of function sub_80BBBBC

.thumb
sub_80BBC14:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBC50
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BBC50:
    pop {pc}
// end of function sub_80BBC14

.thumb
sub_80BBC52:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBC72
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BBC72:
    pop {pc}
// end of function sub_80BBC52

.thumb
sub_80BBC74:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBC86
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BBC86:
    pop {pc}
// end of function sub_80BBC74

.thumb
sub_80BBC88:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BBC9C
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x29 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BBC9C:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x20 
    bne loc_80BBCA8
    mov r0, #0xa
    bl sub_800AF88
loc_80BBCA8:
    cmp r0, #0x15
    bne loc_80BBCB8
    mov r4, #3
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    b loc_80BBD04
loc_80BBCB8:
    cmp r0, #0xc
    bne loc_80BBD04
    ldrb r6, [r5,#4]
    lsl r6, r6, #1
    ldr r1, [pc, #0x80bbd18-0x80bbcc0-4] // dword_80BBD1C
    ldrh r1, [r1,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r4, [pc, #0x80bbd14-0x80bbcd4-4] // =0x705FF06
    push {r0,r1}
    mov r2, #0
    mov r7, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r0,r1}
    mov r4, #0x4b 
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #8
    orr r4, r2
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
loc_80BBD04:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBD10
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80BBD10:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80BBD14:    .word 0x705FF06
off_80BBD18:    .word dword_80BBD1C
dword_80BBD1C:    .word 0x3C0014
    .word 0x960064
// end of function sub_80BBC88

.thumb
sub_80BBD24:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BBD34
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BBD34:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBD54
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80BBD54:
    pop {pc}
// end of function sub_80BBD24

    push {lr}
    ldr r1, [pc, #0x80bbd64-0x80bbd58-4] // off_80BBD68
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80BBD64:    .word off_80BBD68
off_80BBD68:    .word sub_80BBD7C+1
    .word sub_80BBDE8+1
    .word sub_80BBE34+1
    .word sub_80BBE44+1
    .word sub_80BBEE4+1
.thumb
sub_80BBD7C:
    push {r6,lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80BBD92
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BBD96
loc_80BBD92:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BBD96:
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80BBDD6
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BBDE6
loc_80BBDD6:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80BBDE6:
    pop {r6,pc}
// end of function sub_80BBD7C

.thumb
sub_80BBDE8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBE32
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BBE32:
    pop {pc}
// end of function sub_80BBDE8

.thumb
sub_80BBE34:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BBE42
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BBE42:
    pop {pc}
// end of function sub_80BBE34

.thumb
sub_80BBE44:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BBE6E
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r4, #0x2a 
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x90
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BBE6E:
    ldrh r0, [r5,#0x20]
    cmp r0, #9
    bne loc_80BBEC0
    bl sub_8012F4A
    ldr r1, [pc, #0x80bbee0-0x80bbe78-4] // =0xA000
    tst r0, r1
    beq loc_80BBE84
    bl sub_80B921E
    b loc_80BBE88
loc_80BBE84:
    bl sub_800A15E
loc_80BBE88:
    lsl r1, r1, #8
    orr r0, r1
    lsl r0, r0, #0x10
    ldrb r6, [r5,#4]
    ldr r4, [pc, #0x80bbed0-0x80bbe90-4] // dword_80BBED4
    ldrb r4, [r4,r6]
    add r4, r4, r0
    bl sub_800AB54
    mov r1, #4
    mul r0, r1
    ldr r0, [r5,#0x34]
    lsl r1, r1, #0x10
    add r1, r1, r0
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r7, #0x30 
    lsl r7, r7, #0x10
    add r3, r3, r7
    ldr r0, [pc, #0x80bbed8-0x80bbeae-2] // dword_80BBEDC
    ldrb r0, [r0,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_80D392C
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80BBEC0:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x15
    blt locret_80BBECE
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BBECE:
    pop {r4,r6,r7,pc}
off_80BBED0:    .word dword_80BBED4
dword_80BBED4:    .word 0x0
off_80BBED8:    .word dword_80BBEDC
dword_80BBEDC:    .word 0x96643C14
dword_80BBEE0:    .word 0xA000
// end of function sub_80BBE44

.thumb
sub_80BBEE4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80BBEF4
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80BBEF4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBF10
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80BBF10:
    pop {pc}
// end of function sub_80BBEE4

    push {lr}
    ldr r1, [pc, #0x80bbf20-0x80bbf14-4] // off_80BBF24
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80BBF20:    .word off_80BBF24
off_80BBF24:    .word sub_80BBF30+1
    .word sub_80BBF46+1
    .word sub_80BBF5E+1
.thumb
sub_80BBF30:
    push {lr}
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80BBF30

.thumb
sub_80BBF46:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBF5C
    bl sub_80BBF76
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BBF5C:
    pop {pc}
// end of function sub_80BBF46

.thumb
sub_80BBF5E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BBF74
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BBF74:
    pop {pc}
// end of function sub_80BBF5E

.thumb
sub_80BBF76:
    push {lr}
    sub sp, sp, #0x10
    mov r1, #2
    ldrb r2, [r5,#4]
    cmp r2, #0
    bne loc_80BBF84
    mov r1, #1
loc_80BBF84:
    ldr r0, [r5,#0x68]
    cmp r0, r1
    bge loc_80BBFEA
    mov r1, #0
    mov r3, #0x60 
    ldr r0, [r5,r3]
    cmp r0, #0
    beq loc_80BBF98
    mov r1, #1
    mov r3, #0x64 
loc_80BBF98:
    str r1, [sp]
    add r3, r3, r5
    str r3, [sp,#4]
    bl sub_80BB908
    cmp r0, #0
    beq loc_80BBFEA
    str r0, [sp,#8]
    str r1, [sp,#0xc]
loc_80BBFAA:
    ldr r2, [pc, #0x80bbffc-0x80bbfaa-2] // loc_80BC000
    ldrb r1, [r5,#4]
    mov r0, #3
    mul r0, r1
    ldr r1, [r5,#0x6c]
    add r0, r0, r1
    ldrb r2, [r2,r0]
    add r1, #1
    cmp r1, #3
    blt loc_80BBFC0
    mov r1, #0
loc_80BBFC0:
    str r1, [r5,#0x6c]
    ldr r1, [r5,#0x60]
    cmp r1, #0
    beq loc_80BBFCE
    ldrb r1, [r1,#0xf]
    cmp r2, r1
    beq loc_80BBFAA
loc_80BBFCE:
    ldr r1, [r5,#0x64]
    cmp r1, #0
    beq loc_80BBFDA
    ldrb r1, [r1,#0xf]
    cmp r2, r1
    beq loc_80BBFAA
loc_80BBFDA:
    ldr r3, [sp]
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_80BC00C
    ldr r1, [sp,#4]
    str r0, [r1]
    b loc_80BBFEE
loc_80BBFEA:
    mov r0, #0
    b loc_80BBFF6
loc_80BBFEE:
    ldr r0, [r5,#0x68]
    add r0, #1
    str r0, [r5,#0x68]
    mov r0, #1
loc_80BBFF6:
    add sp, sp, #0x10
    pop {pc}
    .balign 4, 0x00
off_80BBFFC:    .word loc_80BC000
// end of function sub_80BBF76

loc_80BC000:
    asr r7, r0, #0xc
    lsl r5, r4, #0x1c
    mov r5, #0x13
    asr r0, r1, #0x10
    lsr r6, r4, #4
    mov r7, #0x15
.thumb
sub_80BC00C:
    push {r4,r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    add r0, r2, #0
    bl sub_8011824
    add r7, r0, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
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
    beq loc_80BC07A
    ldr r0, [sp,#8]
    strb r0, [r4,#15]
    ldrh r1, [r7]
    add r2, r1, #0
    lsl r2, r2, #0x14
    lsr r2, r2, #0x14
    strh r2, [r4,#36]
    strh r2, [r4,#38]
    lsr r1, r1, #0xc
    strb r1, [r4,#23]
    ldrh r0, [r7,#0xa]
    strh r0, [r4,#44]
    mov r0, #0xa
    strh r0, [r4,#46]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    strb r0, [r4,#18]
    strb r1, [r4,#19]
    strb r0, [r4,#20]
    strb r1, [r4,#21]
    ldrb r0, [r5,#0x16]
    strb r0, [r4,#22]
    mov r0, #0
    sub r0, #1
    strh r0, [r4,#42]
    mov r0, #1
    strb r0, [r4,#5]
    str r5, [r4,#120]
    ldr r3, [sp,#0xc]
    str r3, [r4,#124]
loc_80BC07A:
    add r0, r4, #0
    add sp, sp, #0x10
    pop {r4,r7,pc}
// end of function sub_80BC00C

.thumb
sub_80BC080:
    push {lr}
    ldr r1, [pc, #0x80bc094-0x80bc082-2] // off_80BC098
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80BC094:    .word off_80BC098
off_80BC098:    .word sub_80BC0A4+1
    .word sub_80BC104+1
    .word sub_8010F0C+1
// end of function sub_80BC080

.thumb
sub_80BC0A4:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #1
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80BC0A4

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #1
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80BC0EA
    bl sub_80033B4
    b locret_80BC102
loc_80BC0EA:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BC104
locret_80BC102:
    pop {r4,r7,pc}
.thumb
sub_80BC104:
    push {lr}
    bl sub_80BC2DC
    bl sub_8013548
    ldr r0, [pc, #0x80bc11c-0x80bc10e-2] // off_80BC120
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BC11C:    .word off_80BC120
off_80BC120:    .word sub_8010CDC+1
    .word sub_80BC150+1
    .word sub_80BC2A4+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80BC15C+1
    .word loc_80EF738+1
    .word loc_80EF956+1
    .word loc_80EFA1C+1
    .word loc_80EFBC2+1
    .word loc_80EFD84+1
// end of function sub_80BC104

.thumb
sub_80BC150:
    push {lr}
    mov r0, #0
    strb r0, [r5,#6]
    bl sub_8010F52
    pop {pc}
// end of function sub_80BC150

loc_80BC15C:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    add r6, #0x64 
    ldr r1, [pc, #0x80bc174-0x80bc166-2] // off_80BC178
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80BC174:    .word off_80BC178
off_80BC178:    .word sub_80BC184+1
    .word sub_80BC234+1
    .word sub_80BC26C+1
.thumb
sub_80BC184:
    push {lr}
    ldr r1, [pc, #0x80bc194-0x80bc186-2] // off_80BC198
    ldrb r0, [r6,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80BC194:    .word off_80BC198
off_80BC198:    .word sub_80BC1A0+1
    .word sub_80BC1EE+1
// end of function sub_80BC184

.thumb
sub_80BC1A0:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80BC1B4
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #9
    bl sub_800C960
    b locret_80BC1EC
loc_80BC1B4:
    ldrb r0, [r6,#9]
    cmp r0, #4
    bge loc_80BC1D0
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    ldr r0, [pc, #0x80bc394-0x80bc1c0-4] // sub_80BC2FA+1
    str r0, [r7,#0x1c]
    mov r0, #0xb
    bl sub_800C960
    mov r0, #4
    strb r0, [r6,#1]
    b locret_80BC1EC
loc_80BC1D0:
    mov r0, #0
    strb r0, [r6,#8]
    strb r0, [r6,#9]
    bl sub_80BC2C4
    tst r0, r0
    beq locret_80BC1EC
    str r0, [r7,#0x1c]
    bl sub_80BC350
    strb r0, [r7,#0xc]
    mov r0, #0xa
    bl sub_800C960
locret_80BC1EC:
    pop {pc}
// end of function sub_80BC1A0

.thumb
sub_80BC1EE:
    push {lr}
    mov r0, #0
    strb r0, [r6,#1]
    strb r0, [r6,#8]
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    beq loc_80BC218
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x80bc220-0x80bc20a-2] // dword_80BC224
    ldrb r0, [r1,r0]
    tst r0, r0
    bne loc_80BC218
    mov r0, #8
    strb r0, [r6]
    b locret_80BC21C
loc_80BC218:
    mov r0, #4
    strb r0, [r6]
locret_80BC21C:
    pop {pc}
    .byte 0, 0
off_80BC220:    .word dword_80BC224
dword_80BC224:    .word 0x0, 0x0
    .word 0x1010000, 0x1010101
// end of function sub_80BC1EE

.thumb
sub_80BC234:
    push {r4,lr}
    mov r0, #0
    strb r0, [r7,#5]
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bc25c-0x80bc23c-4] // dword_80BC264
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x12]
    ldr r0, [pc, #0x80bc260-0x80bc242-2] // dword_80BC268
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #7
    bl sub_800C960
    mov r0, #0
    strb r0, [r6]
    pop {r4,pc}
off_80BC25C:    .word dword_80BC264
off_80BC260:    .word dword_80BC268
dword_80BC264:    .word 0xF14191E
dword_80BC268:    .word 0x4628140A
// end of function sub_80BC234

.thumb
sub_80BC26C:
    push {r4,lr}
    mov r0, #0
    strb r0, [r7,#5]
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x80bc294-0x80bc274-4] // loc_80BC29C
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xc]
    ldr r0, [pc, #0x80bc298-0x80bc27a-2] // loc_80BC2A0
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0x28 
    strh r0, [r7,#0xa]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #8
    bl sub_800C960
    mov r0, #0
    strb r0, [r6]
    pop {r4,pc}
off_80BC294:    .word loc_80BC29C
off_80BC298:    .word loc_80BC2A0
// end of function sub_80BC26C

loc_80BC29C:
    lsl r6, r0, #0x1c
    lsr r0, r1, #4
loc_80BC2A0:
    sub r4, #0x1e
    ldmia r0!, {r3-r6}
.thumb
sub_80BC2A4:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80BC2BE
    mov r1, #0
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_80BC2B6
    strh r1, [r0,#0x24]
loc_80BC2B6:
    ldr r0, [r5,#0x64]
    tst r0, r0
    beq loc_80BC2BE
    strh r1, [r0,#0x24]
loc_80BC2BE:
    bl sub_8010CF8
    pop {pc}
// end of function sub_80BC2A4

.thumb
sub_80BC2C4:
    mov r0, #0x60 
    add r0, r0, r5
    ldr r1, [r0]
    tst r1, r1
    beq locret_80BC2DA
    mov r0, #0x64 
    add r0, r0, r5
    ldr r1, [r0]
    tst r1, r1
    beq locret_80BC2DA
    mov r0, #0
locret_80BC2DA:
    mov pc, lr
// end of function sub_80BC2C4

.thumb
sub_80BC2DC:
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_80BC2EA
    ldrh r0, [r0,#0x24]
    tst r0, r0
    bne loc_80BC2EA
    str r0, [r5,#0x60]
loc_80BC2EA:
    ldr r0, [r5,#0x64]
    tst r0, r0
    beq locret_80BC2F8
    ldrh r0, [r0,#0x24]
    tst r0, r0
    bne locret_80BC2F8
    str r0, [r5,#0x64]
locret_80BC2F8:
    mov pc, lr
// end of function sub_80BC2DC

.thumb
sub_80BC2FA:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800C41A
    tst r0, r0
    beq loc_80BC336
    ldrb r0, [r0,#0x13]
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    ldr r2, [pc, #0x80bc33c-0x80bc312-2] // dword_80BC340
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_800A0DA
    add r7, r0, #0
    beq loc_80BC336
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BC336:
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_80BC33C:    .word dword_80BC340
dword_80BC340:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80BC2FA

.thumb
sub_80BC350:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80bc370-0x80bc356-2] // off_80BC374
    ldr r1, [r1,r0]
    ldrb r0, [r5,#6]
    add r3, r0, #1
    ldrb r2, [r1]
    cmp r3, r2
    blt loc_80BC366
    mov r3, #0
loc_80BC366:
    strb r3, [r5,#6]
    add r0, #1
    ldrb r0, [r1,r0]
    pop {pc}
    .byte 0, 0
off_80BC370:    .word off_80BC374
off_80BC374:    .word dword_80BC384
    .word 0x80BC386, 0x80BC389, 0x80BC38D
dword_80BC384:    .word 0x2020101, 0xF03030E, 0x10040239, 0x3A
off_80BC394:    .word sub_80BC2FA+1
// end of function sub_80BC350

loc_80BC398:
    push {lr}
    ldr r1, [pc, #0x80bc3ac-0x80bc39a-2] // off_80BC3B0
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BC3AC:    .word off_80BC3B0
off_80BC3B0:    .word sub_80BC3BC+1
    .word sub_80BC414+1
    .word sub_80104D8+1
.thumb
sub_80BC3BC:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xc
    bl sub_800285C
    bl sub_8002FC2
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BC3BC

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BC3F6
    bl sub_80033B4
    b locret_80BC40E
loc_80BC3F6:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldr r0, [pc, #0x80bc410-0x80bc400-4] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BC414
locret_80BC40E:
    pop {pc}
off_80BC410:    .word unk_2000000
.thumb
sub_80BC414:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80bc428-0x80bc41a-2] // off_80BC42C
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BC428:    .word off_80BC42C
off_80BC42C:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BC454+1
    .word sub_80BC648+1
    .word loc_80BC65C+1
    .word loc_80BC77C+1
// end of function sub_80BC414

loc_80BC454:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bc468-0x80bc45c-4] // off_80BC46C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BC468:    .word off_80BC46C
off_80BC46C:    .word sub_80BC470+1
.thumb
sub_80BC470:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bc480-0x80bc474-4] // off_80BC484
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BC480:    .word off_80BC484
off_80BC484:    .word sub_80BC48C+1
    .word sub_80BC498+1
// end of function sub_80BC470

.thumb
sub_80BC48C:
    push {lr}
    mov r0, #4
    strb r0, [r6,#1]
    bl sub_80BC530
    pop {pc}
// end of function sub_80BC48C

.thumb
sub_80BC498:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    ldrb r1, [r6,#8]
    cmp r0, r1
    blt loc_80BC4D8
    mov r0, sp
    mov r1, #0x43 
    mov r2, #0x48 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BC4C2
    mov r3, sp
loc_80BC4B4:
    ldr r2, [r3]
    ldrb r2, [r2,#9]
    cmp r2, #9
    beq loc_80BC4D8
    add r3, #4
    sub r0, #1
    bne loc_80BC4B4
loc_80BC4C2:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80BC4DC
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80BC4DC
loc_80BC4D8:
    bl sub_80BC4E0
loc_80BC4DC:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BC498

.thumb
sub_80BC4E0:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bc550-0x80bc4e6-2] // loc_80BC554
    tst r0, r1
    beq loc_80BC4F6
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    beq loc_80BC4FC
loc_80BC4F6:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80BC4FC:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80BC522
    bl sub_80BC55A
    tst r0, r0
    beq loc_80BC522
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BC65C
    b locret_80BC52E
loc_80BC522:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BC52E:
    pop {pc}
// end of function sub_80BC4E0

.thumb
sub_80BC530:
    push {lr}
    bl sub_8001AF6
    mov r1, #1
    ldrb r2, [r5,#4]
    cmp r2, #1
    bgt loc_80BC540
    mov r1, #2
loc_80BC540:
    svc 6
    ldrb r0, [r5,#4]
    ldr r2, [pc, #0x80bc550-0x80bc544-4] // loc_80BC554
    ldrb r0, [r2,r0]
    add r0, r0, r1
    strb r0, [r6,#8]
    pop {pc}
    .byte 0, 0
off_80BC550:    .word loc_80BC554
// end of function sub_80BC530

loc_80BC554:
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r2, r0, #8
.thumb
sub_80BC55A:
    push {r4,r7,lr}
    sub sp, sp, #0xc
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80BC57A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80bc5a0-0x80bc56c-4] // =0x30
    ldr r3, [pc, #0x80bc5a4-0x80bc56e-2] // =0xF880080
    ldr r4, [pc, #0x80bc58c-0x80bc570-4] // dword_80BC594
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80BC588
loc_80BC57A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80bc5a0-0x80bc57e-2] // =0x30
    ldr r3, [pc, #0x80bc5a4-0x80bc580-4] // =0xF880080
    ldr r4, [pc, #0x80bc590-0x80bc582-2] // dword_80BC594
    bl sub_800F7E8
loc_80BC588:
    add sp, sp, #0xc
    pop {r4,r7,pc}
off_80BC58C:    .word dword_80BC594
dword_80BC590:    .word 0x80BC599
dword_80BC594:    .word 0xFF000100, 0xFF00017F, 0x7F00
off_80BC5A0:    .word 0x30
dword_80BC5A4:    .word 0xF880080
// end of function sub_80BC55A

.thumb
sub_80BC5A8:
    push {r4,lr}
    bl sub_800A15E
    cmp r1, #1
    beq loc_80BC5CC
    sub r1, #2
    mov r4, #2
loc_80BC5B6:
    push {r0,r1}
    ldr r2, [pc, #0x80bc5d0-0x80bc5b8-4] // =0x10000
    ldr r3, [pc, #0x80bc5d4-0x80bc5ba-2] // =0xF880080
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    bne locret_80BC5CE
    add r1, #1
    sub r4, #1
    bne loc_80BC5B6
loc_80BC5CC:
    mov r0, #0
locret_80BC5CE:
    pop {r4,pc}
dword_80BC5D0:    .word 0x10000
dword_80BC5D4:    .word 0xF880080
// end of function sub_80BC5A8

.thumb
sub_80BC5D8:
    ldr r1, [r5,#0x40]
    cmp r1, #0
    beq loc_80BC5F2
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldr r0, [pc, #0x80bc610-0x80bc5e2-2] // dword_80BC614
    ldr r2, [r0,r2]
    lsl r0, r1, #1
    bcs loc_80BC5EE
    sub r1, r1, r2
    b loc_80BC5F0
loc_80BC5EE:
    add r1, r1, r2
loc_80BC5F0:
    str r1, [r5,#0x40]
loc_80BC5F2:
    ldr r1, [r5,#0x44]
    cmp r1, #0
    beq locret_80BC60C
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldr r0, [pc, #0x80bc62c-0x80bc5fc-4] // dword_80BC630
    ldr r2, [r0,r2]
    lsl r0, r1, #1
    bcs loc_80BC608
    sub r1, r1, r2
    b loc_80BC60A
loc_80BC608:
    add r1, r1, r2
loc_80BC60A:
    str r1, [r5,#0x44]
locret_80BC60C:
    mov pc, lr
    .byte 0, 0
off_80BC610:    .word dword_80BC614
dword_80BC614:    .word 0x2866, 0x2866, 0x3F00, 0x3F00, 0x5A9E, 0xA49A
off_80BC62C:    .word dword_80BC630
dword_80BC630:    .word 0x180A, 0x180A, 0x2599, 0x2599, 0x365F, 0x62C3
// end of function sub_80BC5D8

.thumb
sub_80BC648:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BC65A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BC65A:
    pop {pc}
// end of function sub_80BC648

loc_80BC65C:
    push {r6,lr}
    ldr r1, [pc, #0x80bc66c-0x80bc65e-2] // off_80BC670
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BC66C:    .word off_80BC670
off_80BC670:    .word sub_80BC678+1
    .word sub_80BC71A+1
.thumb
sub_80BC678:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BC6CA
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    ldr r0, [pc, #0x80bc710-0x80bc698-4] // loc_80BC714
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    str r0, [r5,#0x60]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bc6d8-0x80bc6a8-4] // dword_80BC6DC
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x13]
    str r0, [r5,#0x64]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bc6f4-0x80bc6b8-4] // dword_80BC6F8
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BC71A
    b locret_80BC6D6
loc_80BC6CA:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BC6D6:
    pop {r6,pc}
off_80BC6D8:    .word dword_80BC6DC
dword_80BC6DC:    .word 0x38000, 0x38000, 0x46000, 0x46000, 0x54000, 0x70000
off_80BC6F4:    .word dword_80BC6F8
dword_80BC6F8:    .word 0x2199A, 0x2199A, 0x2A000, 0x2A000, 0x32666, 0x43333
off_80BC710:    .word loc_80BC714
// end of function sub_80BC678

loc_80BC714:
    asr r4, r2, #0x10
    asr r0, r2, #0x20
    lsr r5, r1, #8
.thumb
sub_80BC71A:
    push {lr}
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_80BC5D8
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC77A
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    ldr r2, [r5,#0x60]
    ldr r3, [r5,#0x64]
    bl sub_800AF7C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D66
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BC77A:
    pop {pc}
// end of function sub_80BC71A

loc_80BC77C:
    push {r6,lr}
    ldr r1, [pc, #0x80bc78c-0x80bc77e-2] // off_80BC790
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BC78C:    .word off_80BC790
off_80BC790:    .word sub_80BC7AC+1
    .word sub_80BC820+1
    .word sub_80BC882+1
    .word sub_80BC8BE+1
    .word sub_80BC91E+1
    .word sub_80BC95C+1
    .word sub_80BC9A4+1
.thumb
sub_80BC7AC:
    push {r4,r6,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bc81c-0x80bc7b2-2] // =0xA000
    tst r0, r1
    beq loc_80BC7BE
    bl sub_80B56B8
    b loc_80BC7C2
loc_80BC7BE:
    bl sub_80BC5A8
loc_80BC7C2:
    cmp r0, #0
    beq loc_80BC812
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    bl sub_800ACF6
    beq loc_80BC812
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #0
    strb r0, [r6,#9]
    bl sub_80BC530
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BC81A
loc_80BC812:
    mov r6, #0x80
    add r6, r6, r5
    bl sub_80BC4E0
locret_80BC81A:
    pop {r4,r6,pc}
dword_80BC81C:    .word 0xA000
// end of function sub_80BC7AC

.thumb
sub_80BC820:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC874
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    lsl r4, r0, #0x10
    add r4, #0x2d 
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    bl sub_80E17DE
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bc878-0x80bc866-2] // loc_80BC87C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #5
    strh r0, [r5,#0x22]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BC874:
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80BC878:    .word loc_80BC87C
// end of function sub_80BC820

loc_80BC87C:
    add r1, r4, #4
    add r5, r3, r4
    asr r1, r3, #0xc
.thumb
sub_80BC882:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80BC89C
    ldrb r0, [r5,#4]
    lsl r4, r0, #0x10
    add r4, #0x2d 
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    bl sub_80E17DE
loc_80BC89C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC8BC
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xcd
    bl f500_8000558
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x1f
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BC8BC:
    pop {pc}
// end of function sub_80BC882

.thumb
sub_80BC8BE:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1b
    beq loc_80BC8D0
    cmp r0, #0x19
    bne loc_80BC8F8
    ldrb r1, [r5,#0x13]
    add r1, #2
    b loc_80BC8D4
loc_80BC8D0:
    ldrb r1, [r5,#0x13]
    add r1, #1
loc_80BC8D4:
    ldrb r0, [r5,#0x12]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bc914-0x80bc8dc-4] // loc_80BC918
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80bc910-0x80bc8e2-2] // =0x4050401
    mov r2, #4
    mov r7, #1
    mov r3, #0
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    cmp r0, #0
    beq loc_80BC8F8
    mov r1, #0x14
    strh r1, [r0,#0x20]
loc_80BC8F8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC90C
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BC90C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
dword_80BC910:    .word 0x4050401
off_80BC914:    .word loc_80BC918
// end of function sub_80BC8BE

loc_80BC918:
    add r2, #0x1e
    str r6, [r0,#0x44]
    ldmia r0!, {r1,r2,r4,r7}
.thumb
sub_80BC91E:
    push {r4,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    beq loc_80BC934
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BC95A
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80BC934:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC95A
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80BC95A:
    pop {r4,r7,pc}
// end of function sub_80BC91E

.thumb
sub_80BC95C:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC9A2
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x18
    strh r0, [r5,#0xa]
locret_80BC9A2:
    pop {r4,r7,pc}
// end of function sub_80BC95C

.thumb
sub_80BC9A4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BC9BA
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BC9BA:
    pop {pc}
// end of function sub_80BC9A4

loc_80BC9BC:
    push {lr}
    ldr r1, [pc, #0x80bc9d0-0x80bc9be-2] // off_80BC9D4
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80BC9D0:    .word off_80BC9D4
off_80BC9D4:    .word sub_80BC9E0+1
    .word sub_80BCA40+1
    .word sub_80104D8+1
.thumb
sub_80BC9E0:
    push {lr}
    mov r0, #0xb4
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xd
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BC9E0

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BCA20
    bl sub_80033B4
    b locret_80BCA3E
loc_80BCA20:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BCA40
locret_80BCA3E:
    pop {pc}
.thumb
sub_80BCA40:
    push {lr}
    bl sub_801375C
    ldrb r0, [r5,#9]
    cmp r0, #6
    blt loc_80BCA96
    ldr r0, [r5,#0x54]
    ldrb r1, [r0,#1]
    ldrh r0, [r5,#0x3e]
    cmp r0, #0x18
    blt loc_80BCA76
    cmp r1, #0
    beq loc_80BCA96
    bl sub_8012D74
    bl sub_8015A50
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80BCA96
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    b loc_80BCA96
loc_80BCA76:
    cmp r1, #0
    bne loc_80BCA96
    mov r0, #1
    bl sub_8012D7C
    mov r0, #0
    mov r1, #0
    bl sub_8015A18
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80BCA96
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
loc_80BCA96:
    ldr r0, [pc, #0x80bcaa4-0x80bca96-2] // off_80BCAA8
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BCAA4:    .word off_80BCAA8
off_80BCAA8:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BCADC+1
    .word sub_80BCCB6+1
    .word loc_80BCD9C+1
    .word loc_80BCEFC+1
    .word sub_80BCD1C+1
    .word loc_80BCE8A+1
    .word sub_80BCD78+1
// end of function sub_80BCA40

loc_80BCADC:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bcaf0-0x80bcae4-4] // off_80BCAF4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80BCAF0:    .word off_80BCAF4
off_80BCAF4:    .word sub_80BCAF8+1
.thumb
sub_80BCAF8:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bcb08-0x80bcafc-4] // off_80BCB0C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BCB08:    .word off_80BCB0C
off_80BCB0C:    .word sub_80BCB18+1
    .word function_chunks_function_chunks_loc_80BCB42+1
    .word sub_80BCBBA+1
// end of function sub_80BCAF8

.thumb
sub_80BCB18:
    push {lr}
    mov r0, #4
    strb r0, [r6,#1]
    bl sub_80BCC9C
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    lsl r0, r0, #2
    ldrb r1, [r5,#0xe]
    add r0, r0, r1
    ldr r1, [pc, #0x80bcb38-0x80bcb30-4] // loc_80BCB3C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    pop {pc}
off_80BCB38:    .word loc_80BCB3C
// end of function sub_80BCB18

loc_80BCB3C:
    asr r2, r1, #0x10
    cmp r0, #0x1e
    sub r4, #0x32 
function_chunks_function_chunks_loc_80BCB42:
    push {lr}
    sub sp, sp, #0x10
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BCB5E
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80BCC90
loc_80BCB5E:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    cmp r0, #3
    blt loc_80BCB9A
    mov r0, sp
    mov r1, #0x49 
    mov r2, #0x4e 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BCB92
    mov r3, sp
loc_80BCB78:
    ldr r2, [r3]
    ldrb r1, [r2,#9]
    cmp r1, #9
    beq loc_80BCB9A
    cmp r1, #0xb
    beq loc_80BCB9A
    add r2, #0x80
    ldrb r2, [r2,#1]
    cmp r2, #8
    beq loc_80BCB9A
    add r3, #4
    sub r0, #1
    bne loc_80BCB78
loc_80BCB92:
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #0
    strb r0, [r6,#9]
loc_80BCB9A:
    bl sub_80BCBFC
    cmp r0, #0
    bne loc_80BCBA6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BCBA6:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BCD9C
    add sp, sp, #0x10
    pop {pc}
.thumb
sub_80BCBBA:
    push {lr}
    mov r0, #4
    strb r0, [r6,#1]
    bl sub_8012F4A
    ldr r1, [pc, #0x80bcbf8-0x80bcbc4-4] // =0xA000
    tst r0, r1
    bne loc_80BCBD8
    bl function_chunks_function_chunks_loc_80BCC26
    cmp r0, #0
    bne loc_80BCBE4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BCBE4
loc_80BCBD8:
    bl sub_80BCBFC
    cmp r0, #0
    bne loc_80BCBE4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BCBE4:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BCE8A
    pop {pc}
    .balign 4, 0x00
dword_80BCBF8:    .word 0xA000
// end of function sub_80BCBBA

.thumb
sub_80BCBFC:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r2, [pc, #0x80bcc94-0x80bcc00-4] // =0x20
    ldr r3, [pc, #0x80bcc98-0x80bcc02-2] // =0xF880080
    add r7, sp, #0
    bl sub_8009F90
    tst r0, r0
    beq loc_80BCC22
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BCC22:
    add sp, sp, #0x18
    pop {r7,pc}
// end of function sub_80BCBFC

function_chunks_function_chunks_loc_80BCC26:
    push {r7,lr}
    sub sp, sp, #0x20
    bl sub_800AB54
    lsl r7, r0, #1
    bl sub_800A15E
    sub r0, r0, r7
    cmp r0, #0
    beq loc_80BCC90
    cmp r0, #6
    ble loc_80BCC42
    mov r0, #0
    b loc_80BCC90
loc_80BCC42:
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    bne loc_80BCC4E
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    beq loc_80BCC90
loc_80BCC4E:
    str r0, [sp,#0x18]
    str r1, [sp,#0x1c]
loc_80BCC52:
    ldr r2, [pc, #0x80bcc94-0x80bcc52-2] // =0x20
    ldr r3, [pc, #0x80bcc98-0x80bcc54-4] // =0xF880080
    add r7, sp, #0
    bl sub_80B4548
    tst r0, r0
    bne loc_80BCC70
    ldr r1, [sp,#0x18]
    mov r0, #6
    sub r0, r0, r1
    beq loc_80BCC90
    add r0, r1, #1
    str r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    b loc_80BCC52
loc_80BCC70:
    cmp r1, #0
    beq loc_80BCC7C
    mov r1, #0
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    b loc_80BCC90
loc_80BCC7C:
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BCC90:
    add sp, sp, #0x20
    pop {r7,pc}
dword_80BCC94:    .word 0x20
dword_80BCC98:    .word 0xF880080
.thumb
sub_80BCC9C:
    push {lr}
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #1
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80BCC9C

.thumb
sub_80BCCB6:
    push {r6,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    blt loc_80BCD0A
    beq loc_80BCCD2
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    mov r0, #1
    lsl r0, r0, #0xf
    add r1, r1, r0
    str r1, [r5,#0x48]
    b loc_80BCD0A
loc_80BCCD2:
    mov r0, #0xb4
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BCD0A
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #8
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
loc_80BCD0A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BCD1A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BCD1A:
    pop {r6,pc}
// end of function sub_80BCCB6

.thumb
sub_80BCD1C:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    bne loc_80BCD32
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80BCD32
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80BCD32:
    bl sub_8012F4A
    ldr r1, [pc, #0x80bcd70-0x80bcd36-2] // start_
    tst r0, r1
    bne loc_80BCD60
    ldrb r1, [r5,#0x12]
    bl sub_800AB54
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80bcd70-0x80bcd46-2] // start_
    mov r3, #0
    mov r4, #0x15
    ldrb r6, [r5,#0x16]
    bl sub_800F8AE
    cmp r0, #0
    beq loc_80BCD60
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BCD6C
loc_80BCD60:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BCD6C
    bl sub_80BCC9C
locret_80BCD6C:
    pop {r4,r6,pc}
    .byte 0, 0
off_80BCD70:    .word start_
    .word 0xA000
// end of function sub_80BCD1C

.thumb
sub_80BCD78:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #6
    bne loc_80BCD8E
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80BCD8E
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80BCD8E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BCD9A
    bl sub_80BCC9C
locret_80BCD9A:
    pop {pc}
// end of function sub_80BCD78

loc_80BCD9C:
    push {r6,lr}
    ldr r1, [pc, #0x80bcdac-0x80bcd9e-2] // off_80BCDB0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BCDAC:    .word off_80BCDB0
off_80BCDB0:    .word sub_80BCDB8+1
    .word sub_80BCDD6+1
.thumb
sub_80BCDB8:
    push {lr}
    bl sub_80BCDDE
    ldrb r0, [r5,#9]
    cmp r0, #7
    beq locret_80BCDD4
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
locret_80BCDD4:
    pop {pc}
// end of function sub_80BCDB8

.thumb
sub_80BCDD6:
    push {lr}
    bl sub_80BCE26
    pop {pc}
// end of function sub_80BCDD6

.thumb
sub_80BCDDE:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    bl sub_800ACF6
    beq loc_80BCE1C
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BCE24
loc_80BCE1C:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BCE24:
    pop {r4,r6,r7,pc}
// end of function sub_80BCDDE

.thumb
sub_80BCE26:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_80BCE34
    sub r0, #1
    strh r0, [r5,#0x20]
    b locret_80BCE7C
loc_80BCE34:
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    sub r0, r0, r1
    mov r1, #0x10
    lsl r1, r1, #0x10
    cmp r0, r1
    bgt loc_80BCE44
    add r0, r1, #0
loc_80BCE44:
    str r0, [r5,#0x3c]
    cmp r0, r1
    beq loc_80BCE54
    mov r0, #1
    lsl r0, r0, #0x10
    add r1, r1, r0
    str r1, [r5,#0x48]
    b locret_80BCE7C
loc_80BCE54:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80BCE68
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
loc_80BCE68:
    mov r0, #2
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bce80-0x80bce6e-2] // loc_80BCE84
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BCE7C:
    pop {pc}
    .byte 0, 0
off_80BCE80:    .word loc_80BCE84
// end of function sub_80BCE26

loc_80BCE84:
    add r6, #0x3c 
    cmp r2, #0x30 
    mov r0, #0x26 
loc_80BCE8A:
    push {r6,lr}
    ldr r1, [pc, #0x80bce98-0x80bce8c-4] // off_80BCE9C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80BCE98:    .word off_80BCE9C
off_80BCE9C:    .word sub_80BCEA4+1
    .word sub_80BCEDA+1
.thumb
sub_80BCEA4:
    push {lr}
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_8009A52
    mov r1, #0x20 
    tst r0, r1
    beq loc_80BCEBA
    bl sub_80BCDB8
    b locret_80BCED8
loc_80BCEBA:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    push {r0,r1}
    bl sub_80BCDDE
    pop {r0,r1}
    ldrb r2, [r5,#9]
    cmp r2, #7
    beq locret_80BCED8
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
    str r0, [r5,#0x60]
locret_80BCED8:
    pop {pc}
// end of function sub_80BCEA4

.thumb
sub_80BCEDA:
    push {lr}
    ldr r0, [r5,#0x60]
    cmp r0, #1
    beq loc_80BCEE8
    bl sub_80BCDD6
    b loc_80BCEEC
loc_80BCEE8:
    bl sub_80BCE26
loc_80BCEEC:
    ldrb r0, [r5,#9]
    cmp r0, #0xa
    bne locret_80BCEFA
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BCEFA:
    pop {pc}
// end of function sub_80BCEDA

loc_80BCEFC:
    push {r6,lr}
    ldr r1, [pc, #0x80bcf0c-0x80bcefe-2] // off_80BCF10
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BCF0C:    .word off_80BCF10
off_80BCF10:    .word sub_80BCF1C+1
    .word sub_80BCF32+1
    .word sub_80BD00E+1
.thumb
sub_80BCF1C:
    push {r4,r6,r7,lr}
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r4,r6,r7,pc}
// end of function sub_80BCF1C

.thumb
sub_80BCF32:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    mov r1, #4
    and r0, r1
    bne loc_80BCF4E
    ldrb r1, [r5,#0x12]
    bl sub_800AB54
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #0x15
    ldrb r3, [r5,#0x16]
    bl sub_8009EC2
loc_80BCF4E:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1a
    bne loc_80BCF74
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r0, #0xd
    lsl r0, r0, #0x10
    sub r1, r1, r0
    mov r0, #0xf
    lsl r0, r0, #0x10
    add r2, r2, r0
    mov r4, #0x2f 
    bl sub_80E17DE
    cmp r0, #0
    beq loc_80BCF74
    mov r1, #0x1a
    strh r1, [r0,#0x20]
loc_80BCF74:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BCFC8
    mov r0, #5
    strb r0, [r5,#0x10]
    ldrb r1, [r5,#0x12]
    bl sub_800AB54
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bcfcc-0x80bcf90-4] // dword_80BCFD0
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r2, [pc, #0x80bcfd8-0x80bcf96-2] // off_80BCFDC
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldr r2, [r3,r2]
    mov r3, #0x80
    add r3, r3, r5
    ldrb r7, [r3,#8]
loc_80BCFA4:
    ldrb r4, [r2,r7]
    cmp r4, #0xff
    bne loc_80BCFAE
    mov r7, #0
    b loc_80BCFA4
loc_80BCFAE:
    add r7, #1
    strb r7, [r3,#8]
    mov r3, #0
    mov r2, #0
    bl sub_80D3A32
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x37 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BCFC8:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80BCFCC:    .word dword_80BCFD0
dword_80BCFD0:    .word 0x78502814, 0xC8A0
off_80BCFD8:    .word off_80BCFDC
off_80BCFDC:    .word dword_80BCFF4
    .word dword_80BCFF8
    .word dword_80BCFFC
    .word dword_80BD000
    .word dword_80BD004
    .word 0x80BD009
dword_80BCFF4:    .word 0xFF060505
dword_80BCFF8:    .word 0xFF060504
dword_80BCFFC:    .word 0xFF070505
dword_80BD000:    .word 0xFF060707
dword_80BD004:    .word 0x7050406
    .word 0x50406FF
    .hword 0xFF07
// end of function sub_80BCF32

.thumb
sub_80BD00E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BD02E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD02E:
    pop {pc}
// end of function sub_80BD00E

.thumb
sub_80BD030:
    push {lr}
    ldr r1, [pc, #0x80bd044-0x80bd032-2] // off_80BD048
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BD044:    .word off_80BD048
off_80BD048:    .word sub_80BD054+1
    .word sub_80BD0A8+1
    .word sub_80104D8+1
// end of function sub_80BD030

.thumb
sub_80BD054:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0x10
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BD08E
    bl sub_80033B4
    b locret_80BD0A6
loc_80BD08E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldr r0, [pc, #0x80bd448-0x80bd098-4] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BD0A8
locret_80BD0A6:
    pop {pc}
// end of function sub_80BD054

.thumb
sub_80BD0A8:
    push {lr}
    bl sub_801375C
    mov r0, #0x64 
    bl sub_80BD0C6
    mov r0, #0x68 
    bl sub_80BD0C6
    ldr r0, [pc, #0x80bd0d4-0x80bd0ba-2] // off_80BD0D8
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
// end of function sub_80BD0A8

.thumb
sub_80BD0C6:
    ldr r1, [r5,r0]
    ldrb r1, [r1]
    cmp r1, #0
    bne locret_80BD0D0
    str r1, [r5,r0]
locret_80BD0D0:
    mov pc, lr
    .balign 4, 0x00
off_80BD0D4:    .word off_80BD0D8
off_80BD0D8:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BD0F8+1
    .word loc_80BD1CC+1
// end of function sub_80BD0C6

loc_80BD0F8:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bd110-0x80bd100-4] // off_80BD114
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bl sub_80BD320
    pop {r6,pc}
    .byte 0, 0
off_80BD110:    .word off_80BD114
off_80BD114:    .word sub_80BD118+1
.thumb
sub_80BD118:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bd128-0x80bd11c-4] // off_80BD12C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BD128:    .word off_80BD12C
off_80BD12C:    .word sub_80BD130+1
// end of function sub_80BD118

.thumb
sub_80BD130:
    push {lr}
    sub sp, sp, #8
    ldrb r3, [r5,#4]
    mov r2, #1
    and r3, r2
    lsl r3, r3, #2
    ldrb r2, [r6,#9]
    add r2, r2, r3
    lsl r2, r2, #1
    ldr r3, [pc, #0x80bd1ac-0x80bd142-2] // dword_80BD1B0
    ldrsb r0, [r3,r2]
    add r2, #1
    ldrsb r1, [r3,r2]
    ldrb r2, [r5,#0x12]
    add r0, r0, r2
    ldrb r2, [r5,#0x13]
    add r1, r1, r2
    str r0, [sp]
    str r1, [sp,#4]
    ldr r2, [pc, #0x80bd1c0-0x80bd156-2] // =0x30
    ldr r3, [pc, #0x80bd1c4-0x80bd158-4] // =0xB800000
    bl sub_8009E78
    cmp r0, #0
    bne loc_80BD16E
loc_80BD162:
    ldrb r0, [r6,#9]
    add r0, #1
    mov r1, #3
    and r0, r1
    strb r0, [r6,#9]
    b loc_80BD1A6
loc_80BD16E:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A52
    add r2, r0, #0
    ldr r3, [pc, #0x80bd1c8-0x80bd178-4] // =0x4080080
    tst r2, r3
    beq loc_80BD18E
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    cmp r0, #0xb4
    blt loc_80BD1A6
    mov r0, #0
    strh r0, [r5,#0x22]
    b loc_80BD162
loc_80BD18E:
    mov r0, #0
    strh r0, [r5,#0x22]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BD1CC
loc_80BD1A6:
    add sp, sp, #8
    pop {pc}
    .balign 4, 0x00
off_80BD1AC:    .word dword_80BD1B0
dword_80BD1B0:    .word 0xFF0100, 0x1FF00, 0xFFFF00, 0x10100
off_80BD1C0:    .word 0x30
dword_80BD1C4:    .word 0xB800000
dword_80BD1C8:    .word 0x4080080
// end of function sub_80BD130

loc_80BD1CC:
    push {r6,lr}
    ldr r1, [pc, #0x80bd1e0-0x80bd1ce-2] // off_80BD1E4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80BD320
    pop {r6,pc}
    .byte 0, 0
off_80BD1E0:    .word off_80BD1E4
off_80BD1E4:    .word sub_80BD1EC+1
    .word sub_80BD28E+1
.thumb
sub_80BD1EC:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BD23E
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    ldr r0, [pc, #0x80bd284-0x80bd20c-4] // loc_80BD288
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x12]
    str r0, [r5,#0x74]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bd24c-0x80bd21e-2] // dword_80BD250
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bd268-0x80bd22c-4] // dword_80BD26C
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BD28E
    b locret_80BD24A
loc_80BD23E:
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD24A:
    pop {r6,pc}
off_80BD24C:    .word dword_80BD250
dword_80BD250:    .word 0x20000, 0x20000, 0x28000, 0x28000, 0x30000, 0x30000
off_80BD268:    .word dword_80BD26C
dword_80BD26C:    .word 0x13333, 0x13333, 0x18000, 0x18000, 0x1CCCD, 0x1CCCD
off_80BD284:    .word loc_80BD288
// end of function sub_80BD1EC

loc_80BD288:
    cmp r0, #0x28 
    mov r0, #0x20 
    sub r2, r3, r0
.thumb
sub_80BD28E:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne locret_80BD318
    ldr r1, [pc, #0x80bd31c-0x80bd29c-4] // =0xA000
    tst r0, r1
    beq loc_80BD2BE
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    ldr r1, [r5,#0x40]
    asr r1, r1, #1
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    asr r1, r1, #1
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    b loc_80BD2CE
loc_80BD2BE:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
loc_80BD2CE:
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #2
    strh r0, [r5,#0x20]
    bpl locret_80BD318
    ldr r2, [r5,#0x74]
    lsr r3, r2, #8
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AF7C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D66
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD318:
    pop {pc}
    .balign 4, 0x00
dword_80BD31C:    .word 0xA000
// end of function sub_80BD28E

.thumb
sub_80BD320:
    push {lr}
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x80bd330-0x80bd324-4] // off_80BD334
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BD330:    .word off_80BD334
off_80BD334:    .word sub_80BD340+1
    .word sub_80BD3EA+1
    .word sub_80BD402+1
// end of function sub_80BD320

.thumb
sub_80BD340:
    push {r4,r6,r7,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bd3dc-0x80bd346-2] // =0xA000
    tst r0, r1
    bne locret_80BD3D8
    bl sub_800A15E
    ldrb r0, [r5,#0x13]
    cmp r0, r1
    bne locret_80BD3D8
    bl sub_80BD412
    cmp r0, #2
    bge locret_80BD3D8
    mov r1, #0x64 
    ldr r0, [r5,r1]
    cmp r0, #0
    beq loc_80BD368
    mov r1, #0x68 
loc_80BD368:
    add r1, r1, r5
    str r1, [r5,#0x6c]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bd3e0-0x80bd376-2] // dword_80BD3E4
    ldrb r3, [r3,r2]
    add r6, r6, r3
    mov r4, #0xa
    lsr r2, r2, #1
    add r4, r4, r2
    bl sub_800AB54
    mov r1, #0x10
    lsl r1, r1, #0x10
    mul r0, r1
    push {r0}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    pop {r3}
    add r2, r1, #0
    add r1, r0, #0
    add r1, r1, r3
    add r1, r1, r3
    add r1, r1, r3
    mov r3, #0x10
    lsl r3, r3, #0x10
    push {r1-r3}
    bl sub_80CE6FE
    ldr r1, [r5,#0x6c]
    str r0, [r1]
    bl sub_800AB54
    mov r1, #0x10
    lsl r0, r0, #0x10
    mul r0, r1
    pop {r1-r3}
    sub r1, r1, r0
    mov r4, #0x46 
    bl sub_80E17DE
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0xf9
    bl f500_8000558
    mov r0, #5
    str r0, [r5,#0x70]
    mov r0, #4
    str r0, [r5,#0x60]
locret_80BD3D8:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80BD3DC:    .word 0xA000
off_80BD3E0:    .word dword_80BD3E4
dword_80BD3E4:    .word 0x825A3C1E
    .byte 0xB4, 0xFA
// end of function sub_80BD340

.thumb
sub_80BD3EA:
    push {lr}
    ldr r0, [r5,#0x70]
    sub r0, #1
    str r0, [r5,#0x70]
    bne locret_80BD400
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x32 
    str r0, [r5,#0x70]
    mov r0, #8
    str r0, [r5,#0x60]
locret_80BD400:
    pop {pc}
// end of function sub_80BD3EA

.thumb
sub_80BD402:
    push {lr}
    ldr r0, [r5,#0x70]
    sub r0, #1
    str r0, [r5,#0x70]
    bne locret_80BD410
    mov r0, #0
    str r0, [r5,#0x60]
locret_80BD410:
    pop {pc}
// end of function sub_80BD402

.thumb
sub_80BD412:
    push {r4,r7,lr}
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x5b 
    mov r2, #0x60 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BD442
    mov r3, sp
    mov r4, #0
loc_80BD428:
    ldr r2, [r3]
    ldr r7, [r2,#0x64]
    cmp r7, #0
    beq loc_80BD432
    add r4, #1
loc_80BD432:
    ldr r7, [r2,#0x68]
    cmp r7, #0
    beq loc_80BD43A
    add r4, #1
loc_80BD43A:
    add r3, #4
    sub r0, #1
    bne loc_80BD428
    add r0, r4, #0
loc_80BD442:
    add sp, sp, #0x10
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80BD448:    .word unk_2000000
// end of function sub_80BD412

loc_80BD44C:
    push {lr}
    ldr r1, [pc, #0x80bd460-0x80bd44e-2] // off_80BD464
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80BD460:    .word off_80BD464
off_80BD464:    .word sub_80BD470+1
    .word sub_80BD4CC+1
    .word sub_80104D8+1
.thumb
sub_80BD470:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #8
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BD470

    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BD4AC
    bl sub_80033B4
    b locret_80BD4C4
loc_80BD4AC:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldr r0, [pc, #0x80bd4c8-0x80bd4b6-2] // unk_2000000
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BD4CC
locret_80BD4C4:
    pop {pc}
    .balign 4, 0x00
off_80BD4C8:    .word unk_2000000
.thumb
sub_80BD4CC:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80bd4e0-0x80bd4d2-2] // off_80BD4E4
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .byte 0, 0
off_80BD4E0:    .word off_80BD4E4
off_80BD4E4:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80BD50C+1
    .word sub_80BD518+1
    .word sub_80BD524+1
    .word sub_80BD530+1
    .word loc_80BD53C+1
    .word sub_80BD5F8+1
    .word loc_80BD60C+1
    .word loc_80BD70E+1
// end of function sub_80BD4CC

.thumb
sub_80BD50C:
    push {lr}
    bl sub_80BD8D4
    bl sub_80100F8
    pop {pc}
// end of function sub_80BD50C

.thumb
sub_80BD518:
    push {lr}
    bl sub_80BD8D4
    bl nullsub_59
    pop {pc}
// end of function sub_80BD518

.thumb
sub_80BD524:
    push {lr}
    bl sub_80BD8D4
    bl sub_8010458
    pop {pc}
// end of function sub_80BD524

.thumb
sub_80BD530:
    push {lr}
    bl sub_80BD8D4
    bl sub_8010568
    pop {pc}
// end of function sub_80BD530

loc_80BD53C:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bd550-0x80bd544-4] // off_80BD554
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80BD550:    .word off_80BD554
off_80BD554:    .word sub_80BD558+1
.thumb
sub_80BD558:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bd568-0x80bd55c-4] // off_80BD56C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BD568:    .word off_80BD56C
off_80BD56C:    .word sub_80BD570+1
// end of function sub_80BD558

.thumb
sub_80BD570:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BD584
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BD59A
loc_80BD584:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80bd5ec-0x80bd588-4] // =0x30
    ldr r3, [pc, #0x80bd5f0-0x80bd58a-2] // =0xF880080
    ldr r4, [pc, #0x80bd5e0-0x80bd58c-4] // dword_80BD5E4
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80BD59A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BD59A:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    ldrb r0, [r6,#9]
    cmp r0, #4
    blt loc_80BD5CE
    mov r0, #0
    strb r0, [r6,#9]
    bl sub_8012F4A
    ldr r1, [pc, #0x80bd5f4-0x80bd5ac-4] // =0xA000
    tst r0, r1
    beq loc_80BD5C0
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BD5DE
loc_80BD5C0:
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BD70E
    b locret_80BD5DE
loc_80BD5CE:
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BD60C
locret_80BD5DE:
    pop {pc}
off_80BD5E0:    .word dword_80BD5E4
dword_80BD5E4:    .word 0x100FF00, 0x7F
off_80BD5EC:    .word 0x30
dword_80BD5F0:    .word 0xF880080
dword_80BD5F4:    .word 0xA000
// end of function sub_80BD570

.thumb
sub_80BD5F8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BD60A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD60A:
    pop {pc}
// end of function sub_80BD5F8

loc_80BD60C:
    push {r6,lr}
    ldr r1, [pc, #0x80bd61c-0x80bd60e-2] // off_80BD620
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BD61C:    .word off_80BD620
off_80BD620:    .word sub_80BD630+1
    .word sub_80BD66A+1
    .word sub_80BD6C8+1
    .word sub_80BD6FA+1
.thumb
sub_80BD630:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BD65C
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BD668
loc_80BD65C:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD668:
    pop {r6,pc}
// end of function sub_80BD630

.thumb
sub_80BD66A:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #3
    bne loc_80BD68C
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x16
    bl sub_80E17DE
loc_80BD68C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD6C6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xe
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BD6C6:
    pop {r4,pc}
// end of function sub_80BD66A

.thumb
sub_80BD6C8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD6EC
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bd6f0-0x80bd6e2-2] // loc_80BD6F4
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BD6EC:
    pop {pc}
    .byte 0, 0
off_80BD6F0:    .word loc_80BD6F4
// end of function sub_80BD6C8

loc_80BD6F4:
    add r6, r3, r4
    lsr r4, r2, #0x1c
    lsr r2, r1, #8
.thumb
sub_80BD6FA:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD70C
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD70C:
    pop {pc}
// end of function sub_80BD6FA

loc_80BD70E:
    push {r6,lr}
    ldr r1, [pc, #0x80bd71c-0x80bd710-4] // off_80BD720
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80BD71C:    .word off_80BD720
off_80BD720:    .word sub_80BD630+1
    .word sub_80BD734+1
    .word sub_80BD758+1
    .word loc_80BD792+1
    .word sub_80BD874+1
.thumb
sub_80BD734:
    push {lr}
    bl sub_80BD66A
    ldrb r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80BD756
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
locret_80BD756:
    pop {pc}
// end of function sub_80BD734

.thumb
sub_80BD758:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80BD766
    mov r0, #0xa
    bl sub_800AF88
loc_80BD766:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD786
    mov r0, #4
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bd788-0x80bd774-4] // loc_80BD78C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #1
    str r0, [r5,#0x64]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BD786:
    pop {pc}
off_80BD788:    .word loc_80BD78C
// end of function sub_80BD758

loc_80BD78C:
    push {r3-r6}
    push {r3-r6}
    push {r4,r5}
loc_80BD792:
    push {lr}
    ldr r1, [pc, #0x80bd7d0-0x80bd794-4] // off_80BD7D4
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldr r0, [r5,#0x64]
    sub r0, #1
    str r0, [r5,#0x64]
    bne loc_80BD7BA
    ldrb r3, [r5,#4]
    ldr r1, [pc, #0x80bd7ec-0x80bd7aa-2] // loc_80BD7F4
    ldrb r0, [r1,r3]
    str r0, [r5,#0x64]
    ldr r1, [pc, #0x80bd7f0-0x80bd7b0-4] // =0x80BD7FA
    lsl r3, r3, #1
    ldrh r0, [r1,r3]
    bl f500_8000558
loc_80BD7BA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD7CE
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BD7CE:
    pop {pc}
off_80BD7D0:    .word off_80BD7D4
off_80BD7D4:    .word sub_80BD806+1
    .word sub_80BD824+1
    .word sub_80BD82E+1
    .word sub_80BD852+1
    .word sub_80BD85C+1
    .word sub_80BD806+1
off_80BD7EC:    .word loc_80BD7F4
dword_80BD7F0:    .word 0x80BD7FA
loc_80BD7F4:
    eor r0, r0
    eor r0, r0
    lsr r7, r7
    lsl r2, r5, #4
    lsl r3, r5, #4
    lsl r4, r5, #4
    lsl r5, r5, #4
    lsl r6, r5, #4
    lsl r2, r5, #4
.thumb
sub_80BD806:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #1
    bne loc_80BD814
    bl sub_80BD8D4
    b locret_80BD822
loc_80BD814:
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne locret_80BD822
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_80BD8A6
locret_80BD822:
    pop {pc}
// end of function sub_80BD806

.thumb
sub_80BD824:
    push {lr}
    mov r0, #0x23 
    bl sub_80BD902
    pop {pc}
// end of function sub_80BD824

.thumb
sub_80BD82E:
    push {lr}
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    cmp r0, #1
    bne loc_80BD842
    mov r0, #3
    mov r1, #0x12
    bl sub_8025FE0
loc_80BD842:
    cmp r0, #0x16
    blt loc_80BD84A
    mov r0, #0
    strh r0, [r5,#0x22]
loc_80BD84A:
    mov r0, #0x43 
    bl sub_80BD902
    pop {pc}
// end of function sub_80BD82E

.thumb
sub_80BD852:
    push {lr}
    mov r0, #0x33 
    bl sub_80BD902
    pop {pc}
// end of function sub_80BD852

.thumb
sub_80BD85C:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne locret_80BD872
    ldrh r0, [r5,#0x20]
    cmp r0, #0x19
    bne locret_80BD872
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_80BD924
locret_80BD872:
    pop {pc}
// end of function sub_80BD85C

.thumb
sub_80BD874:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BD886
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BD886:
    pop {pc}
// end of function sub_80BD874

.thumb
sub_80BD888:
    push {r4,r6,lr}
    add r4, r0, #0
    mov r1, #1
    mov r2, #0x2a 
    bl sub_80B656C
    add r6, r0, #0
    lsl r0, r0, #2
    add r0, r0, r4
    mov r1, #0x31 
    mov r2, #0xfc
    bl sub_80B656C
    add r0, r0, r6
    pop {r4,r6,pc}
// end of function sub_80BD888

.thumb
sub_80BD8A6:
    push {lr}
    sub sp, sp, #0x10
    mov r0, sp
    bl sub_80BD888
    cmp r0, #0
    beq loc_80BD8CC
    mov r1, #1
    str r1, [r5,#0x60]
    mov r3, sp
loc_80BD8BA:
    push {r0-r3,r5}
    ldr r5, [r3]
    ldr r0, [pc, #0x80bd8d0-0x80bd8be-2] // =0xFFFF
    bl sub_800AFE4
    pop {r0-r3,r5}
    add r3, #4
    sub r0, #1
    bne loc_80BD8BA
loc_80BD8CC:
    add sp, sp, #0x10
    pop {pc}
dword_80BD8D0:    .word 0xFFFF
// end of function sub_80BD8A6

.thumb
sub_80BD8D4:
    push {lr}
    sub sp, sp, #0x10
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BD8FE
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, sp
    bl sub_80BD888
    cmp r0, #0
    beq loc_80BD8FE
    mov r3, sp
loc_80BD8EE:
    push {r0-r3,r5}
    ldr r5, [r3]
    bl sub_800AFF2
    pop {r0-r3,r5}
    add r3, #4
    sub r0, #1
    bne loc_80BD8EE
loc_80BD8FE:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BD8D4

.thumb
sub_80BD902:
    push {r4,r6,r7,lr}
    lsl r7, r0, #8
    add r7, #0
    ldr r4, [pc, #0x80bd920-0x80bd908-4] // =0x2D00FF00
    mov r0, #0x85
    ldrb r1, [r5,#0x16]
    sub r0, r0, r1
    add r4, r4, r0
    mov r6, #0
    ldrb r2, [r5,#0x17]
    mov r0, #1
    mov r1, #1
    bl sub_80CD6D6
    pop {r4,r6,r7,pc}
dword_80BD920:    .word 0x2D00FF00
// end of function sub_80BD902

.thumb
sub_80BD924:
    push {lr}
    sub sp, sp, #0x10
    mov r0, sp
    bl sub_80BD888
    cmp r0, #0
    beq loc_80BD958
    mov r3, sp
loc_80BD934:
    push {r0-r3,r5}
    ldr r5, [r3]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    ldrh r0, [r5,#0x26]
    bl sub_800AB86
    pop {r0-r3,r5}
    add r3, #4
    sub r0, #1
    bne loc_80BD934
    mov r0, #0x9a
    bl f500_8000558
loc_80BD958:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BD924

loc_80BD95C:
    push {lr}
    ldr r1, [pc, #0x80bd970-0x80bd95e-2] // off_80BD974
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80BD970:    .word off_80BD974
off_80BD974:    .word sub_80BD980+1
    .word sub_80BDA34+1
    .word sub_8010F0C+1
.thumb
sub_80BD980:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x15
    bl sub_800285C
    bl sub_8002E76
    mov r0, #3
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BD980

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80BD9A8
    mov r0, #2
loc_80BD9A8:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BD9C2
    bl sub_80033B4
    b locret_80BD9F4
loc_80BD9C2:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0
    mov r1, #0x60 
    bl sub_80BD9F6
    ldr r0, [r5,#0x60]
    mov r1, #8
    orr r0, r1
    str r0, [r5,#0x60]
    mov r0, #1
    mov r1, #0x68 
    bl sub_80BD9F6
    ldr r0, [r5,#0x68]
    mov r1, #8
    orr r0, r1
    str r0, [r5,#0x68]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BDA34
locret_80BD9F4:
    pop {pc}
.thumb
sub_80BD9F6:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    add r7, r1, r5
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80bda28-0x80bda04-4] // byte_80BDA2C
    ldrb r3, [r3,r2]
    add r6, r6, r3
    mov r0, #5
    lsl r1, r4, #1
    add r1, #1
    lsl r4, r4, #8
    ldrb r2, [r5,#4]
    add r4, r4, r2
    mov r3, #0xa
    lsl r3, r3, #0x10
    mov r2, #0
    bl sub_80D4528
    mov r0, #0
    str r0, [r7,#4]
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80BDA28:    .word byte_80BDA2C
byte_80BDA2C:    .byte 0x28
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x78 
    .byte 0
// end of function sub_80BD9F6

    lsl r0, r1, #3
.thumb
sub_80BDA34:
    push {lr}
    bl sub_8013548
    mov r0, #0x60 
    bl sub_80BDCF8
    mov r0, #0x68 
    bl sub_80BDCF8
    ldr r0, [pc, #0x80bda54-0x80bda46-2] // off_80BDA58
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BDA54:    .word off_80BDA58
off_80BDA58:    .word sub_80BDA84+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80BDAA2+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80BDABA+1
    .word sub_80BDD50+1
    .word loc_80BDD64+1
    .word loc_80BDE60+1
    .word loc_80BDF30+1
// end of function sub_80BDA34

.thumb
sub_80BDA84:
    push {lr}
    bl sub_8010CDC
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_80BDAA0
    ldr r0, [r5,#0x60]
    mov r1, #8
    bic r0, r1
    str r0, [r5,#0x60]
    ldr r0, [r5,#0x68]
    mov r1, #8
    bic r0, r1
    str r0, [r5,#0x68]
locret_80BDAA0:
    pop {pc}
// end of function sub_80BDA84

.thumb
sub_80BDAA2:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80BDAB4
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
loc_80BDAB4:
    bl sub_8010E34
    pop {pc}
// end of function sub_80BDAA2

loc_80BDABA:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bdacc-0x80bdac2-2] // off_80BDAD0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80BDACC:    .word off_80BDAD0
off_80BDAD0:    .word sub_80BDADC+1
    .word sub_80BDBC0+1
    .word sub_80BDC12+1
.thumb
sub_80BDADC:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bdaec-0x80bdae0-4] // off_80BDAF0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BDAEC:    .word off_80BDAF0
off_80BDAF0:    .word sub_80BDAF4+1
// end of function sub_80BDADC

.thumb
sub_80BDAF4:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrh r0, [r5,#0x2c]
    ldrh r1, [r3,#0x1e]
    cmp r0, r1
    beq loc_80BDB06
    strh r0, [r3,#0x1e]
    ldrh r0, [r5,#0x2e]
    strb r0, [r3,#5]
loc_80BDB06:
    ldrb r0, [r6,#8]
    cmp r0, #3
    blt loc_80BDB1A
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80BDB56
loc_80BDB1A:
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80BDB44
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BDB32
    bl sub_80BDB76
    b locret_80BDB56
loc_80BDB32:
    ldr r1, [pc, #0x80bdb58-0x80bdb32-2] // =0xA000
    tst r0, r1
    beq loc_80BDB3E
    bl sub_80BDB88
    b locret_80BDB56
loc_80BDB3E:
    bl sub_80BDB5C
    b locret_80BDB56
loc_80BDB44:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80BDB56:
    pop {pc}
dword_80BDB58:    .word 0xA000
// end of function sub_80BDAF4

.thumb
sub_80BDB5C:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    bl sub_80B553E
    tst r0, r0
    bne loc_80BDB70
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BDB70:
    bl sub_80BDBAC
    pop {pc}
// end of function sub_80BDB5C

.thumb
sub_80BDB76:
    push {lr}
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80BDBAC
    pop {pc}
// end of function sub_80BDB76

.thumb
sub_80BDB88:
    push {lr}
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    bne loc_80BDB9A
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80BDB9A:
    bl sub_80B553E
    tst r0, r0
    bne loc_80BDBA6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BDBA6:
    bl sub_80BDBAC
    pop {pc}
// end of function sub_80BDB88

.thumb
sub_80BDBAC:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BDD64
    pop {pc}
// end of function sub_80BDBAC

.thumb
sub_80BDBC0:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BDBE4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BDD64
    b locret_80BDC10
loc_80BDBE4:
    ldr r1, [pc, #0x80bdc64-0x80bdbe4-4] // =0xA000
    tst r0, r1
    beq loc_80BDBF0
    bl sub_80B56B8
    b loc_80BDBF4
loc_80BDBF0:
    bl sub_80BDC68
loc_80BDBF4:
    cmp r0, #0
    beq loc_80BDC08
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BDE60
loc_80BDC08:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80BDC10:
    pop {pc}
// end of function sub_80BDBC0

.thumb
sub_80BDC12:
    push {lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BDC36
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BDD64
    b locret_80BDC62
loc_80BDC36:
    ldr r1, [pc, #0x80bdc64-0x80bdc36-2] // =0xA000
    tst r0, r1
    beq loc_80BDC42
    bl sub_80B56B8
    b loc_80BDC46
loc_80BDC42:
    bl sub_80BDCC8
loc_80BDC46:
    cmp r0, #0
    beq loc_80BDC5A
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BDF30
loc_80BDC5A:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80BDC62:
    pop {pc}
dword_80BDC64:    .word 0xA000
// end of function sub_80BDC12

.thumb
sub_80BDC68:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_800A15E
    ldrb r0, [r5,#0x16]
    ldr r2, [pc, #0x80bdcbc-0x80bdc72-2] // =0x20
    mov r3, #0
    add r7, sp, #0
    bl sub_800A17A
    cmp r0, #0
    beq loc_80BDCB8
    push {r0,r1}
    ldr r2, [pc, #0x80bdcc0-0x80bdc82-2] // =0x30
    ldr r3, [pc, #0x80bdcc4-0x80bdc84-4] // =0xF880080
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    cmp r2, #0
    bne loc_80BDCB8
    add r7, r0, #0
    add r4, r1, #0
    ldrb r0, [r5,#0x16]
    mov r3, #1
    eor r0, r3
    bl loc_800AB56
    add r0, r0, r7
    add r1, r4, #0
    push {r0,r1}
    ldr r2, [pc, #0x80bdcc0-0x80bdca6-2] // =0x30
    ldr r3, [pc, #0x80bdcc4-0x80bdca8-4] // =0xF880080
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    cmp r2, #0
    bne loc_80BDCB8
    mov r0, #0
loc_80BDCB8:
    add sp, sp, #0x18
    pop {r4,r7,pc}
dword_80BDCBC:    .word 0x20
off_80BDCC0:    .word 0x30
dword_80BDCC4:    .word 0xF880080
// end of function sub_80BDC68

.thumb
sub_80BDCC8:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_800A146
    ldr r2, [pc, #0x80bdcf0-0x80bdcd0-4] // =0x30
    ldr r3, [pc, #0x80bdcf4-0x80bdcd2-2] // =0xF880080
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    beq loc_80BDCEA
    sub r0, #1
    add r0, sp
    ldrb r0, [r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BDCEA:
    add sp, sp, #0x18
    pop {r4,r7,pc}
    .byte 0, 0
off_80BDCF0:    .word 0x30
dword_80BDCF4:    .word 0xF880080
// end of function sub_80BDCC8

.thumb
sub_80BDCF8:
    push {r4,lr}
    add r4, r0, r5
    bl sub_8007920
    bne locret_80BDD46
    ldr r0, [r4]
    cmp r0, #0
    bne loc_80BDD28
    ldr r0, [r4,#4]
    add r0, #1
    str r0, [r4,#4]
    ldr r1, [pc, #0x80bdd4c-0x80bdd0e-2] // =0x5A0
    cmp r0, r1
    blt locret_80BDD46
    sub r1, r4, r5
    mov r0, #0
    cmp r1, #0x60 
    beq loc_80BDD1E
    mov r0, #1
loc_80BDD1E:
    mov r2, #1
    lsl r2, r2, #8
    add r0, r0, r2
    bl sub_80BD9F6
loc_80BDD28:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    ldr r1, [pc, #0x80bdd48-0x80bdd30-4] // =0xA000
    tst r0, r1
    beq loc_80BDD3E
    ldr r0, [r4]
    mov r1, #4
    orr r0, r1
    b loc_80BDD44
loc_80BDD3E:
    ldr r0, [r4]
    mov r1, #4
    bic r0, r1
loc_80BDD44:
    str r0, [r4]
locret_80BDD46:
    pop {r4,pc}
dword_80BDD48:    .word 0xA000
off_80BDD4C:    .word 0x5A0
// end of function sub_80BDCF8

.thumb
sub_80BDD50:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BDD62
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BDD62:
    pop {pc}
// end of function sub_80BDD50

loc_80BDD64:
    push {r6,lr}
    ldr r1, [pc, #0x80bdd74-0x80bdd66-2] // off_80BDD78
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BDD74:    .word off_80BDD78
off_80BDD78:    .word sub_80BDD88+1
    .word sub_80BDDDE+1
    .word sub_80BDE18+1
    .word sub_80BDE4C+1
.thumb
sub_80BDD88:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BDDD0
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r2, r2, r0
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BDDDC
loc_80BDDD0:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BDDDC:
    pop {r6,pc}
// end of function sub_80BDD88

.thumb
sub_80BDDDE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDE16
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BDE16:
    pop {pc}
// end of function sub_80BDDDE

.thumb
sub_80BDE18:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDE40
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bde44-0x80bde36-2] // loc_80BDE48
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BDE40:
    pop {pc}
    .balign 4, 0x00
off_80BDE44:    .word loc_80BDE48
// end of function sub_80BDE18

loc_80BDE48:
    mov r3, #0x2d 
    lsr r1, r3, #0x1c
.thumb
sub_80BDE4C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDE5E
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BDE5E:
    pop {pc}
// end of function sub_80BDE4C

loc_80BDE60:
    push {r6,lr}
    ldr r1, [pc, #0x80bde70-0x80bde62-2] // off_80BDE74
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BDE70:    .word off_80BDE74
off_80BDE74:    .word sub_80BDD88+1
    .word sub_80BDE84+1
    .word sub_80BDEA8+1
    .word sub_80BDF00+1
.thumb
sub_80BDE84:
    push {lr}
    bl sub_80BDDDE
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80BDEA6
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
locret_80BDEA6:
    pop {pc}
// end of function sub_80BDE84

.thumb
sub_80BDEA8:
    push {r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDEF6
    bl sub_800AB54
    mov r6, #8
    lsl r6, r6, #0x10
    mul r6, r0
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    sub r0, r0, r6
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bdef8-0x80bdece-2] // loc_80BDEFC
    ldrb r3, [r3,r2]
    add r6, r6, r3
    mov r3, #0
    mov r2, #1
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80D3E98
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #1
    strh r0, [r5,#0x22]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BDEF6:
    pop {r6,r7,pc}
off_80BDEF8:    .word loc_80BDEFC
// end of function sub_80BDEA8

loc_80BDEFC:
    str r0, [r5,r0]
    ldmia r0!, {r3-r6}
.thumb
sub_80BDF00:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80BDF16
    mov r0, #0x4d 
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x10
    strh r0, [r5,#0x22]
loc_80BDF16:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDF2E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BDF2E:
    pop {pc}
// end of function sub_80BDF00

loc_80BDF30:
    push {r6,lr}
    ldr r1, [pc, #0x80bdf40-0x80bdf32-2] // off_80BDF44
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BDF40:    .word off_80BDF44
off_80BDF44:    .word sub_80BDD88+1
    .word sub_80BDF58+1
    .word loc_80BDF6E+1
    .word sub_80BDFEC+1
    .word sub_80BE078+1
.thumb
sub_80BDF58:
    push {lr}
    bl sub_80BDDDE
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80BDF6C
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
locret_80BDF6C:
    pop {pc}
// end of function sub_80BDF58

loc_80BDF6E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BDFDA
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_800AB54
    ldr r1, [pc, #0x80bdfdc-0x80bdf88-4] // =0x48000
    mul r0, r1
    str r0, [r5,#0x40]
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #1
loc_80BDF9C:
    bl sub_80D4022
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    ldr r3, [r5,#0x54]
    mov r0, #0x32 
    strb r0, [r3,#5]
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80bdfe0-0x80bdfb4-4] // dword_80BDFE4
    ldrh r0, [r1,r0]
    strh r0, [r3,#0x1e]
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x4e 
    add r0, #0xff
    bl f500_8000558
    ldr r3, [r5,#0x54]
    mov r0, #0
    strb r0, [r3,#0x18]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    bl sub_80BDFEC
locret_80BDFDA:
    pop {pc}
dword_80BDFDC:    .word 0x48000
off_80BDFE0:    .word dword_80BDFE4
dword_80BDFE4:    .word 0x78003C
    .word 0x12C00B4
.thumb
sub_80BDFEC:
    push {lr}
    bl sub_8009EB0
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800AB40
    bl sub_8012D4E
    ldrb r0, [r5,#0x12]
    cmp r0, #0
    beq loc_80BE01A
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80be070-0x80be00a-2] // =0x10
    mov r3, #0
    bl sub_8009E78
    cmp r0, #0
    bne locret_80BE06E
    mov r0, #1
    b loc_80BE068
loc_80BE01A:
    ldr r0, [r5,#0x34]
    ldr r1, [pc, #0x80be074-0x80be01c-4] // =0xFF740000
    cmp r0, r1
    bge locret_80BE06E
    ldrb r0, [r5,#4]
    cmp r0, #2
    blt loc_80BE066
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BE066
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r1, #0x28 
    mov r0, #6
    mul r1, r0
    lsl r1, r1, #0x10
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800AB40
    bl sub_800A146
    strb r0, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #1
    bl sub_80D4022
    b locret_80BE06E
loc_80BE066:
    mov r0, #0
loc_80BE068:
    strb r0, [r5,#0xb]
    mov r0, #0x10
    strb r0, [r5,#0xa]
locret_80BE06E:
    pop {pc}
dword_80BE070:    .word 0x10
dword_80BE074:    .word 0xFF740000
// end of function sub_80BDFEC

.thumb
sub_80BE078:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #2
    bge loc_80BE0A6
    add r0, #2
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r0, #0x10
    lsl r0, r0, #0x10
    sub r2, r2, r0
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    b locret_80BE102
loc_80BE0A6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE102
    ldrb r0, [r5,#0xb]
    cmp r0, #2
    ble loc_80BE0C6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
loc_80BE0C6:
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE102:
    pop {pc}
// end of function sub_80BE078

loc_80BE104:
    push {lr}
    ldr r1, [pc, #0x80be118-0x80be106-2] // off_80BE11C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80BE118:    .word off_80BE11C
off_80BE11C:    .word sub_80BE148+1
    .word loc_80BE1AA+1
    .word sub_80BE128+1
.thumb
sub_80BE128:
    push {lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0
    ldr r1, [r5,#0x4c]
    str r0, [r1]
    bl sub_80033B4
    pop {pc}
// end of function sub_80BE128

.thumb
sub_80BE148:
    push {lr}
    mov r0, #0xb8
    bl sub_8002B86
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x15
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BE148

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80BE180
    mov r0, #2
    b loc_80BE186
loc_80BE180:
    cmp r1, #4
    bne loc_80BE186
    mov r0, #4
loc_80BE186:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80BE1AA
    pop {pc}
loc_80BE1AA:
    push {lr}
    ldr r1, [pc, #0x80be1b8-0x80be1ac-4] // off_80BE1BC
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80BE1B8:    .word off_80BE1BC
off_80BE1BC:    .word sub_80BE1C4+1
    .word sub_80BE228+1
.thumb
sub_80BE1C4:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BE21E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80be220-0x80be1d2-2] // =0x10
    ldr r3, [pc, #0x80be224-0x80be1d4-4] // =0x0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80BE1E4
    mov r0, #8
    str r0, [r5,#8]
    b locret_80BE21E
loc_80BE1E4:
    bl sub_800AB54
    lsl r0, r0, #1
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    sub r1, #1
    ldr r6, [r5,#0x2c]
    mov r3, #0
    mov r2, #1
    ldrb r4, [r5,#4]
    push {r0-r4,r6}
    bl sub_80D47AC
    pop {r0-r4,r6}
    add r1, #2
    add r4, #0x80
    add r4, #0x80
    bl sub_80D47AC
    mov r0, #0xa0
    bl f500_8000558
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE21E:
    pop {r4,r6,pc}
dword_80BE220:    .word 0x10
dword_80BE224:    .word 0x0
// end of function sub_80BE1C4

.thumb
sub_80BE228:
    push {r6,lr}
    ldr r1, [pc, #0x80be238-0x80be22a-2] // off_80BE23C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BE238:    .word off_80BE23C
off_80BE23C:    .word sub_80BE248+1
    .word sub_80BE260+1
    .word sub_80BE2A0+1
// end of function sub_80BE228

.thumb
sub_80BE248:
    push {r6,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE25E
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BE25E:
    pop {r6,pc}
// end of function sub_80BE248

.thumb
sub_80BE260:
    push {r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE29E
    bl sub_800AB54
    mov r6, #8
    lsl r6, r6, #0x10
    mul r6, r0
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    sub r0, r0, r6
    ldr r6, [r5,#0x2c]
    mov r3, #0
    mov r2, #1
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80D3EB8
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #1
    strh r0, [r5,#0x22]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BE29E:
    pop {r6,r7,pc}
// end of function sub_80BE260

.thumb
sub_80BE2A0:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80BE2B6
    mov r0, #0x4d 
    add r0, #0xff
    bl f500_8000558
    mov r0, #0x10
    strh r0, [r5,#0x22]
loc_80BE2B6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE2C2
    mov r0, #8
    str r0, [r5,#8]
locret_80BE2C2:
    pop {pc}
// end of function sub_80BE2A0

.thumb
sub_80BE2C4:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x23 
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80BE2E6
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x4c]
    mov r1, #1
    str r1, [r7]
locret_80BE2E6:
    pop {pc}
// end of function sub_80BE2C4

loc_80BE2E8:
    push {lr}
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#9]
    ldrb r1, [r3,#8]
    cmp r0, r1
    bge loc_80BE2FA
    add r0, #1
    strb r0, [r3,#9]
loc_80BE2FA:
    ldr r1, [pc, #0x80be30c-0x80be2fa-2] // off_80BE310
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BE30C:    .word off_80BE310
off_80BE310:    .word sub_80BE31C+1
    .word sub_80BE39A+1
    .word sub_80104D8+1
.thumb
sub_80BE31C:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xf
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BE31C

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BE356
    bl sub_80033B4
    b locret_80BE38E
loc_80BE356:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    bl sub_8016714
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80be390-0x80be372-2] // loc_80BE394
    ldrb r0, [r1,r0]
    mov r3, #0x80
loc_80BE378:
    add r3, r3, r5
    strb r0, [r3,#8]
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    str r0, [r5,#0x64]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BE39A
locret_80BE38E:
    pop {pc}
off_80BE390:    .word loc_80BE394
loc_80BE394:
    bgt loc_80BE378
    push {r3,r6,r7}
    .hword 0xa0a0 // adr r0, loc_80BE61C
.thumb
sub_80BE39A:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80be3ac-0x80be3a0-4] // off_80BE3B0
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80BE3AC:    .word off_80BE3B0
off_80BE3B0:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BE3D4+1
    .word loc_80BE650+1
    .word loc_80BE752+1
// end of function sub_80BE39A

loc_80BE3D4:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80be3e8-0x80be3dc-4] // off_80BE3EC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BE3E8:    .word off_80BE3EC
off_80BE3EC:    .word sub_80BE400+1
    .word sub_80BE548+1
    .word sub_80BE57E+1
    .word sub_80BE598+1
    .word sub_80BE5A4+1
.thumb
sub_80BE400:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80be410-0x80be404-4] // off_80BE414
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BE410:    .word off_80BE414
off_80BE414:    .word sub_80BE418+1
// end of function sub_80BE400

.thumb
sub_80BE418:
    push {lr}
    sub sp, sp, #0x10
    ldr r0, [r5,#0x60]
    cmp r0, #1
    bne loc_80BE426
    mov r0, #0
    str r0, [r5,#0x60]
loc_80BE426:
    ldrb r0, [r6,#9]
    ldrb r1, [r6,#8]
    cmp r0, r1
    bge loc_80BE434
loc_80BE42E:
    bl sub_80BE470
    b loc_80BE46C
loc_80BE434:
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    beq loc_80BE42E
    bl sub_80BE5CC
    cmp r0, #0
    bne loc_80BE46C
    mov r0, sp
    mov r1, #0x55 
    mov r2, #0x5a 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BE460
    mov r3, sp
loc_80BE452:
    ldr r2, [r3]
    ldr r1, [r2,#0x60]
    cmp r1, #0
    bne loc_80BE42E
    add r3, #4
    sub r0, #1
    bne loc_80BE452
loc_80BE460:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BE752
loc_80BE46C:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BE418

.thumb
sub_80BE470:
    push {r4,lr}
    ldr r0, [r5,#0x64]
    cmp r0, #4
    bge loc_80BE49A
    lsl r0, r0, #1
    ldr r1, [pc, #0x80be508-0x80be47a-2] // dword_80BE50C
    ldrsb r2, [r1,r0]
    add r0, #1
    ldrsb r3, [r1,r0]
    ldrb r0, [r5,#0x12]
    add r0, r0, r2
    ldrb r1, [r5,#0x13]
    add r1, r1, r3
    ldr r2, [pc, #0x80be514-0x80be48a-2] // =0x20
    ldr r3, [pc, #0x80be518-0x80be48c-4] // =0xF880080
    push {r0,r1}
    bl sub_8009E78
    pop {r1,r2}
    cmp r0, #0
    bne loc_80BE4EA
loc_80BE49A:
    bl sub_8012F4A
    ldr r1, [pc, #0x80be51c-0x80be49e-2] // =0xA000
    tst r0, r1
    beq loc_80BE4A8
    mov r0, #0xc
    b loc_80BE4AE
loc_80BE4A8:
    ldr r0, [r5,#0x64]
    lsr r0, r0, #1
    lsl r0, r0, #2
loc_80BE4AE:
    ldr r1, [pc, #0x80be520-0x80be4ae-2] // off_80BE524
    ldr r4, [r1,r0]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80be514-0x80be4b6-2] // =0x20
    ldr r3, [pc, #0x80be518-0x80be4b8-4] // =0xF880080
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80BE4CC
    ldr r0, [r5,#0x64]
    mov r1, #2
    eor r0, r1
    str r0, [r5,#0x64]
    b locret_80BE504
loc_80BE4CC:
    ldrb r2, [r5,#0x12]
    ldrb r3, [r5,#0x13]
    cmp r0, r2
    beq loc_80BE4DE
    mov r4, #2
    cmp r0, r2
    blt loc_80BE4E6
    mov r4, #3
    b loc_80BE4E6
loc_80BE4DE:
    mov r4, #0
    cmp r1, r3
    blt loc_80BE4E6
    mov r4, #1
loc_80BE4E6:
    str r4, [r5,#0x64]
    b locret_80BE504
loc_80BE4EA:
    strb r1, [r6,#4]
    strb r2, [r6,#5]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BE650
    ldr r0, [r5,#0x64]
    cmp r0, #2
    blt locret_80BE504
    mov r0, #4
    str r0, [r5,#0x64]
locret_80BE504:
    pop {r4,pc}
    .balign 4, 0x00
off_80BE508:    .word dword_80BE50C
dword_80BE50C:    .word 0x100FF00, 0x100FF
dword_80BE514:    .word 0x20
dword_80BE518:    .word 0xF880080
dword_80BE51C:    .word 0xA000
off_80BE520:    .word off_80BE524
off_80BE524:    .word dword_80BE534
    .word 0x80BE539
    .word 0x80BE539
    .word 0x80BE53E
dword_80BE534:    .word 0xFF0001
    .word 0x1007F
    .word 0x1007FFF
    .word 0x1FF00
    .word 0x7F00FF
// end of function sub_80BE470

.thumb
sub_80BE548:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E3F62
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BE562
    pop {r4,r6,r7,pc}
// end of function sub_80BE548

.thumb
sub_80BE562:
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80BE562

.thumb
sub_80BE57E:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E4610
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BE562
    pop {r4,r6,r7,pc}
// end of function sub_80BE57E

.thumb
sub_80BE598:
    push {r4,r6,r7,lr}
    bl sub_80BE5B0
    bl sub_80BE562
    pop {r4,r6,r7,pc}
// end of function sub_80BE598

.thumb
sub_80BE5A4:
    push {r4,r6,r7,lr}
    bl sub_80B96E0
    bl sub_80BE562
    pop {r4,r6,r7,pc}
// end of function sub_80BE5A4

.thumb
sub_80BE5B0:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E48C0
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    pop {r4,r6,r7,pc}
// end of function sub_80BE5B0

.thumb
sub_80BE5CC:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80BE622
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80BE622
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80BE622
    bl sub_8007BB4
    ldr r1, [pc, #0x80be648-0x80be5f0-4] // =0x12C
    cmp r0, r1
    blt loc_80BE622
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x81
    beq loc_80BE626
    cmp r1, #0x8e
    beq loc_80BE630
    ldr r1, [pc, #0x80be648-0x80be604-4] // =0x12C
    cmp r0, r1
    blt loc_80BE622
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x7b 
    beq loc_80BE63A
    cmp r1, #0x5f 
    bne loc_80BE622
    mov r0, #8
    strb r0, [r6]
loc_80BE61C:
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BE642
loc_80BE622:
    mov r0, #0
    pop {pc}
loc_80BE626:
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BE642
loc_80BE630:
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BE642
loc_80BE63A:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80BE642:
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80BE648:    .word 0x12C
    .word 0x1E0
// end of function sub_80BE5CC

loc_80BE650:
    push {r6,lr}
    ldr r1, [pc, #0x80be660-0x80be652-2] // off_80BE664
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BE660:    .word off_80BE664
off_80BE664:    .word sub_80BE66C+1
    .word sub_80BE704+1
.thumb
sub_80BE66C:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BE6CA
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    beq loc_80BE6A6
    ldr r0, [pc, #0x80be6d4-0x80be696-2] // dword_80BE6D8
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    ldr r0, [pc, #0x80be6f0-0x80be6a2-2] // loc_80BE6F8
    b loc_80BE6BA
loc_80BE6A6:
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80be6d4-0x80be6ac-4] // dword_80BE6D8
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x40]
    ldr r0, [pc, #0x80be6f4-0x80be6b8-4] // =0x80BE6FE
loc_80BE6BA:
    ldrb r3, [r5,#4]
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BE704
    b locret_80BE6D2
loc_80BE6CA:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE6D2:
    pop {r6,pc}
off_80BE6D4:    .word dword_80BE6D8
dword_80BE6D8:    .word 0x8000, 0x999A, 0xB333, 0xCCCD, 0xE666, 0x10000
off_80BE6F0:    .word loc_80BE6F8
dword_80BE6F4:    .word 0x80BE6FE
// end of function sub_80BE66C

loc_80BE6F8:
    mul r0, r2
    add r2, #0x39 
    cmp r0, #0x2c 
    cmp r0, #0x30 
    sub r2, r4, #0
    add r2, r3, r0
.thumb
sub_80BE704:
    push {lr}
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE750
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE750:
    pop {pc}
// end of function sub_80BE704

loc_80BE752:
    push {r6,lr}
    ldr r1, [pc, #0x80be760-0x80be754-4] // off_80BE764
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80BE760:    .word off_80BE764
off_80BE764:    .word sub_80BE770+1
    .word sub_80BE784+1
    .word sub_80BE7EE+1
.thumb
sub_80BE770:
    push {r6,lr}
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #1
    str r0, [r5,#0x60]
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r6,pc}
// end of function sub_80BE770

.thumb
sub_80BE784:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #6
    bne loc_80BE7B8
    ldrb r4, [r5,#4]
    ldr r3, [pc, #0x80be7e4-0x80be792-2] // loc_80BE7E8
    ldrb r3, [r3,r4]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r3
    ldr r3, [pc, #0x80be7d8-0x80be79c-4] // dword_80BE7DC
    ldrb r4, [r3,r4]
    ldrb r0, [r5,#0x12]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #2
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80D49CA
    mov r0, #0xa
    bl sub_800AF88
loc_80BE7B8:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BE7D6
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r3, #0x80
    add r3, r3, r5
    mov r0, #0
    strb r0, [r3,#9]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BE7D6:
    pop {r4,r6,r7,pc}
off_80BE7D8:    .word dword_80BE7DC
dword_80BE7DC:    .word 0x1010000, 0x202
off_80BE7E4:    .word loc_80BE7E8
// end of function sub_80BE784

loc_80BE7E8:
    add r2, #0x14
    ldrb r0, [r2,#1]
    ldmia r0!, {r5,r7}
.thumb
sub_80BE7EE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BE800
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE800:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80BE7EE

loc_80BE804:
    push {lr}
    ldr r1, [pc, #0x80be818-0x80be806-2] // off_80BE81C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BE818:    .word off_80BE81C
off_80BE81C:    .word sub_80BE828+1
    .word sub_80BE87A+1
    .word sub_80104D8+1
.thumb
sub_80BE828:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0x12
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BE828

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BE862
    bl sub_80033B4
    b locret_80BE878
loc_80BE862:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BE87A
locret_80BE878:
    pop {pc}
.thumb
sub_80BE87A:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80be88c-0x80be880-4] // off_80BE890
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80BE88C:    .word off_80BE890
off_80BE890:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BE8B0+1
    .word loc_80BEA24+1
// end of function sub_80BE87A

loc_80BE8B0:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80be8c4-0x80be8b8-4] // off_80BE8C8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BE8C4:    .word off_80BE8C8
off_80BE8C8:    .word sub_80BE8D4+1
    .word sub_80BE918+1
    .word sub_80BE932+1
.thumb
sub_80BE8D4:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80be8e4-0x80be8d8-4] // off_80BE8E8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BE8E4:    .word off_80BE8E8
off_80BE8E8:    .word sub_80BE8EC+1
// end of function sub_80BE8D4

.thumb
sub_80BE8EC:
    push {lr}
    bl sub_80BE95A
    cmp r0, #1
    beq locret_80BE912
    bl sub_8012F4A
    ldr r1, [pc, #0x80be914-0x80be8fa-2] // =0xA000
    tst r0, r1
    bne locret_80BE912
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne locret_80BE912
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BE912:
    pop {pc}
dword_80BE914:    .word 0xA000
// end of function sub_80BE8EC

.thumb
sub_80BE918:
    push {r4,r6,r7,lr}
    bl sub_80B54E4
    bl sub_80E3F62
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_8009084
    bl sub_80BE93E
    pop {r4,r6,r7,pc}
// end of function sub_80BE918

.thumb
sub_80BE932:
    push {r4,r6,r7,lr}
    bl sub_80BE5B0
    bl sub_80BE93E
    pop {r4,r6,r7,pc}
// end of function sub_80BE932

.thumb
sub_80BE93E:
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r6, #0x80
    add r6, r6, r5
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80BE93E

.thumb
sub_80BE95A:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80BEA12
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80BEA12
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    beq loc_80BEA12
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x6e 
    beq loc_80BE9C0
    cmp r0, #0x70 
    beq loc_80BE9C4
    bl sub_8007BB4
    ldr r1, [pc, #0x80bea1c-0x80be98c-4] // =0x12C
    cmp r0, r1
    blt loc_80BEA12
    ldrh r1, [r5,#0x2a]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    cmp r1, #0x81
    beq loc_80BE9B6
    ldr r1, [pc, #0x80bea20-0x80be99c-4] // =0x1E0
    cmp r0, r1
    blt loc_80BEA12
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    cmp r0, #0x7b 
    bne loc_80BEA12
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BEA16
loc_80BE9B6:
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BEA16
loc_80BE9C0:
    mov r0, #0x50 
    b loc_80BE9C6
loc_80BE9C4:
    mov r0, #0x96
loc_80BE9C6:
    ldrh r1, [r5,#0x24]
    ldrh r2, [r5,#0x26]
    lsr r3, r2, #2
    lsr r2, r2, #1
    add r2, r2, r3
    cmp r1, r2
    ble loc_80BE9DA
    mov r0, #0
    strh r0, [r5,#0x22]
    b loc_80BEA12
loc_80BE9DA:
    ldrh r1, [r5,#0x22]
    add r1, #1
    strh r1, [r5,#0x22]
    cmp r1, #0x3c 
    blt loc_80BEA12
    bl sub_800AB96
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #7
    bl sub_80E17DE
    mov r0, #0x9a
    bl f500_8000558
    ldrh r0, [r5,#0x2a]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r1, #0
    mov r2, #0
    mov r3, #1
    bl sub_8016408
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x2a]
    b loc_80BEA16
loc_80BEA12:
    mov r0, #0
    pop {pc}
loc_80BEA16:
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80BEA1C:    .word 0x12C
off_80BEA20:    .word 0x1E0
// end of function sub_80BE95A

loc_80BEA24:
    push {r6,lr}
    ldr r1, [pc, #0x80bea34-0x80bea26-2] // off_80BEA38
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BEA34:    .word off_80BEA38
off_80BEA38:    .word sub_80BEA40+1
    .word sub_80BEAB2+1
.thumb
sub_80BEA40:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80BEA5C
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xb7
    bl f500_8000558
    b locret_80BEAA4
loc_80BEA5C:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80BEA6C
    mov r0, #0xa
    bl sub_800AF88
loc_80BEA6C:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80BEAA4
    ldrb r4, [r5,#4]
    ldr r3, [pc, #0x80beaa8-0x80bea78-4] // loc_80BEAAC
    ldrb r3, [r3,r4]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r3
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #0
    push {r0-r3}
    ldrb r4, [r5,#4]
    bl sub_80D4BF6
    pop {r0-r3}
    add r4, #0x80
    add r4, #0x80
    bl sub_80D4BF6
    mov r0, #0x8c
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80BEAA4:
    pop {pc}
    .balign 4, 0x00
off_80BEAA8:    .word loc_80BEAAC
// end of function sub_80BEA40

loc_80BEAAC:
    add r2, #0x14
    ldrb r0, [r2,#1]
    ldmia r0!, {r5,r7}
.thumb
sub_80BEAB2:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x50 
    bne loc_80BEABE
    mov r0, #2
    strb r0, [r5,#0x10]
loc_80BEABE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BEAD2
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BEAD2:
    pop {pc}
// end of function sub_80BEAB2

loc_80BEAD4:
    push {lr}
    ldr r1, [pc, #0x80beae8-0x80bead6-2] // off_80BEAEC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BEAE8:    .word off_80BEAEC
off_80BEAEC:    .word sub_80BEAF8+1
    .word sub_80BEB52+1
    .word sub_80104D8+1
.thumb
sub_80BEAF8:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #9
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BEAF8

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BEB32
    bl sub_80033B4
    b locret_80BEB50
loc_80BEB32:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BEB52
locret_80BEB50:
    pop {pc}
.thumb
sub_80BEB52:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80beb68-0x80beb58-4] // off_80BEB6C
    bl sub_8013BE8
    bl sub_8012D16
    bl sub_80BEFD0
    pop {pc}
off_80BEB68:    .word off_80BEB6C
off_80BEB6C:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BEB94+1
    .word sub_80BECD4+1
    .word loc_80BECF0+1
    .word loc_80BEDD6+1
// end of function sub_80BEB52

loc_80BEB94:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80beba8-0x80beb9c-4] // off_80BEBAC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BEBA8:    .word off_80BEBAC
off_80BEBAC:    .word sub_80BEBB0+1
.thumb
sub_80BEBB0:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bebc0-0x80bebb4-4] // off_80BEBC4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BEBC0:    .word off_80BEBC4
off_80BEBC4:    .word sub_80BEBC8+1
// end of function sub_80BEBB0

.thumb
sub_80BEBC8:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r6,#9]
    cmp r0, #8
    blt loc_80BEBF6
    mov r0, sp
    mov r1, #0x31 
    mov r2, #0x36 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BEBF0
    mov r3, sp
loc_80BEBE2:
    ldr r2, [r3]
    ldrb r1, [r2,#9]
    cmp r1, #9
    beq loc_80BEBF6
    add r3, #4
    sub r0, #1
    bne loc_80BEBE2
loc_80BEBF0:
    bl sub_80BEC70
    b loc_80BEBFA
loc_80BEBF6:
    bl sub_80BEBFE
loc_80BEBFA:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BEBC8

.thumb
sub_80BEBFE:
    push {r4,lr}
    bl sub_80BEC46
    cmp r0, #0
    bne loc_80BEC24
    bl sub_80BEC46
    cmp r0, #0
    bne loc_80BEC24
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    b locret_80BEC44
loc_80BEC24:
    strb r1, [r6,#4]
    strb r2, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BECF0
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    ldrb r0, [r6,#9]
    add r0, #1
    add r0, r0, r1
    strb r0, [r6,#9]
locret_80BEC44:
    pop {r4,pc}
// end of function sub_80BEBFE

.thumb
sub_80BEC46:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #1
    eor r0, r1
    str r0, [r5,#0x60]
    lsl r2, r0, #1
    sub r2, #1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    add r1, r1, r2
    ldr r2, [pc, #0x80bec68-0x80bec5a-2] // =0x20
    ldr r3, [pc, #0x80bec6c-0x80bec5c-4] // =0xF880080
    push {r0,r1}
    bl sub_8009E78
    pop {r1,r2}
    pop {pc}
dword_80BEC68:    .word 0x20
dword_80BEC6C:    .word 0xF880080
// end of function sub_80BEC46

.thumb
sub_80BEC70:
    push {r4,lr}
    bl sub_80BEC98
    cmp r0, #0
    bne loc_80BEC80
    bl sub_80BEBFE
    b locret_80BEC96
loc_80BEC80:
    mov r3, #0x80
    add r3, r3, r5
    strb r0, [r3,#4]
    strb r1, [r3,#5]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    strb r0, [r6,#9]
    bl loc_80BEDD6
locret_80BEC96:
    pop {r4,pc}
// end of function sub_80BEC70

.thumb
sub_80BEC98:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_800A15E
    ldrb r0, [r5,#0x16]
    ldr r2, [pc, #0x80becc8-0x80beca2-2] // =0x20
    mov r3, #0
    add r7, sp, #0
    bl sub_800A17A
    cmp r0, #0
    beq loc_80BECC4
    push {r0,r1}
    ldr r2, [pc, #0x80becc8-0x80becb2-2] // =0x20
    ldr r3, [pc, #0x80beccc-0x80becb4-4] // =0xF880080
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    cmp r2, #0
    bne loc_80BECC4
    mov r0, #0
loc_80BECC4:
    add sp, sp, #0x18
    pop {r4,r7,pc}
dword_80BECC8:    .word 0x20
dword_80BECCC:    .word 0xF880080
    .word 0xA000
// end of function sub_80BEC98

.thumb
sub_80BECD4:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BECEE
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80BF03C
    mov r0, #0
    strh r0, [r5,#0x3e]
locret_80BECEE:
    pop {pc}
// end of function sub_80BECD4

loc_80BECF0:
    push {r6,lr}
    ldr r1, [pc, #0x80bed00-0x80becf2-2] // off_80BED04
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BED00:    .word off_80BED04
off_80BED04:    .word sub_80BED0C+1
    .word sub_80BED54+1
.thumb
sub_80BED0C:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BED44
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bed50-0x80bed30-4] // =0x54000
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #8
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BED54
    b locret_80BED4C
loc_80BED44:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BED4C:
    pop {r6,pc}
    .byte 0, 0
dword_80BED50:    .word 0x54000
// end of function sub_80BED0C

.thumb
sub_80BED54:
    push {lr}
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldr r1, [r5,#0x44]
    cmp r1, #0
    beq loc_80BED7A
    ldr r2, [pc, #0x80bedc8-0x80bed6c-4] // =0x7B74
    lsl r0, r1, #1
    bcs loc_80BED76
    sub r1, r1, r2
    b loc_80BED78
loc_80BED76:
    add r1, r1, r2
loc_80BED78:
    str r1, [r5,#0x44]
loc_80BED7A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEDC2
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_80BF03C
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8012F4A
    ldr r1, [pc, #0x80bedc4-0x80beda8-4] // =0xA000
    and r0, r1
    beq loc_80BEDB0
    mov r0, #0x32 
loc_80BEDB0:
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80bedcc-0x80bedb2-2] // loc_80BEDD0
    ldrb r2, [r1,r2]
    add r0, r0, r2
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BEDC2:
    pop {pc}
dword_80BEDC4:    .word 0xA000
dword_80BEDC8:    .word 0x7B74
off_80BEDCC:    .word loc_80BEDD0
// end of function sub_80BED54

loc_80BEDD0:
    sub r6, r3, r0
    asr r6, r2, #8
    lsr r6, r1, #8
loc_80BEDD6:
    push {r4,r6,r7,lr}
    ldr r1, [pc, #0x80bee04-0x80bedd8-4] // off_80BEE08
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#5]
    mov r2, #0
    mov r3, #0
    ldr r4, [pc, #0x80bee20-0x80bedee-2] // =0x23000301
    mov r6, #1
    mov r7, #0
    bl sub_80CD6D6
    cmp r0, #0
    beq locret_80BEE00
    mov r1, #2
    strh r1, [r0,#0x20]
locret_80BEE00:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80BEE04:    .word off_80BEE08
off_80BEE08:    .word sub_80BEE24+1
    .word sub_80BEE6C+1
    .word sub_80BEEB4+1
    .word sub_80BEEE2+1
    .word sub_80BEF56+1
    .word sub_80BEF90+1
dword_80BEE20:    .word 0x23000301
.thumb
sub_80BEE24:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80BEE62
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BEE6A
loc_80BEE62:
    mov r6, #0x80
    add r6, r6, r5
    bl sub_80BEBFE
locret_80BEE6A:
    pop {r4,r6,pc}
// end of function sub_80BEE24

.thumb
sub_80BEE6C:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEEB2
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_80BF03C
    bl sub_8012D4E
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xf8
    bl f500_8000558
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0x22]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BEEB2:
    pop {r4,r6,r7,pc}
// end of function sub_80BEE6C

.thumb
sub_80BEEB4:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80BEEC6
    bl sub_80BEFB6
    mov r0, #4
    strh r0, [r5,#0x22]
loc_80BEEC6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEEE0
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BEEE0:
    pop {pc}
// end of function sub_80BEEB4

.thumb
sub_80BEEE2:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x10
    bne loc_80BEF1C
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bef4c-0x80beefa-2] // loc_80BEF50
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80bef48-0x80bef00-4] // =0x4050301
    mov r2, #3
    mov r7, #3
    mov r3, #0
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    cmp r0, #0
    beq loc_80BEF1C
    mov r1, #8
    strh r1, [r0,#0x20]
    mov r0, #0xb8
    bl f500_8000558
loc_80BEF1C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEF46
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BEF46:
    pop {r4,r6,r7,pc}
dword_80BEF48:    .word 0x4050301
off_80BEF4C:    .word loc_80BEF50
// end of function sub_80BEEE2

loc_80BEF50:
    add r2, #0x1e
    ldrb r0, [r2,#1]
    ldmia r0!, {r5,r7}
.thumb
sub_80BEF56:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEF8E
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_80BF03C
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80BEF8E:
    pop {r4,r7,pc}
// end of function sub_80BEF56

.thumb
sub_80BEF90:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BEFB4
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BEFB4:
    pop {r4,r7,pc}
// end of function sub_80BEF90

.thumb
sub_80BEFB6:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r6, #0
    ldr r4, [pc, #0x80befcc-0x80befbe-2] // =0x405FF08
    mov r2, #0
    mov r7, #4
    mov r3, #0
    bl sub_80CD6D6
    pop {r4,r6,r7,pc}
dword_80BEFCC:    .word 0x405FF08
// end of function sub_80BEFB6

.thumb
sub_80BEFD0:
    push {lr}
    bl sub_8007920
    bne locret_80BF014
    bl sub_800AD4A
    cmp r0, #0
    beq locret_80BF014
    ldrh r0, [r5,#0x20]
    mov r1, #3
    and r0, r1
    bne locret_80BF014
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    add r1, r0, #0
    add r0, r0, r0
    ldr r1, [pc, #0x80bf018-0x80beff4-4] // dword_80BF01C
    ldrsb r2, [r1,r0]
    ldr r3, [r5,#0x64]
    str r2, [r5,#0x64]
    sub r2, r2, r3
    ldrh r3, [r5,#0x36]
    add r3, r3, r2
    strh r3, [r5,#0x36]
    add r0, #1
    ldrsb r2, [r1,r0]
    ldr r3, [r5,#0x68]
    str r2, [r5,#0x68]
    sub r2, r2, r3
    ldrh r3, [r5,#0x3e]
    add r3, r3, r2
    strh r3, [r5,#0x3e]
locret_80BF014:
    pop {pc}
    .balign 4, 0x00
off_80BF018:    .word dword_80BF01C
dword_80BF01C:    .word 0x1000001, 0xFF0000FF, 0x1010000, 0x1FFFF01, 0xFFFF
    .word 0x1000001, 0xFF0000, 0xFF00
// end of function sub_80BEFD0

.thumb
sub_80BF03C:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x64]
    str r0, [r5,#0x68]
    bl sub_800AB30
    pop {pc}
    .balign 4, 0x00
// end of function sub_80BF03C

loc_80BF04C:
    push {lr}
    ldr r1, [pc, #0x80bf060-0x80bf04e-2] // off_80BF064
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .byte 0, 0
off_80BF060:    .word off_80BF064
off_80BF064:    .word sub_80BF070+1
    .word sub_80BF0CE+1
    .word sub_80104D8+1
.thumb
sub_80BF070:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0xe
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BF070

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BF0AA
    bl sub_80033B4
    b locret_80BF0CC
loc_80BF0AA:
    mov r1, #0x39 
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x10
    bl sub_8012F36
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BF0CE
locret_80BF0CC:
    pop {pc}
.thumb
sub_80BF0CE:
    push {lr}
    bl sub_801375C
    bl sub_8012EF8
    ldr r0, [pc, #0x80bf0e4-0x80bf0d8-4] // off_80BF0E8
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80BF0E4:    .word off_80BF0E8
off_80BF0E8:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80BF110+1
    .word sub_80BF1D0+1
    .word loc_80BF1E4+1
    .word 0xFF800000
// end of function sub_80BF0CE

loc_80BF110:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bf124-0x80bf118-4] // off_80BF128
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BF124:    .word off_80BF128
off_80BF128:    .word sub_80BF12C+1
.thumb
sub_80BF12C:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bf13c-0x80bf130-4] // off_80BF140
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80BF13C:    .word off_80BF140
off_80BF140:    .word sub_80BF148+1
    .word sub_80BF188+1
// end of function sub_80BF12C

.thumb
sub_80BF148:
    push {lr}
    sub sp, sp, #0x10
    mov r0, #4
    strb r0, [r6,#1]
    mov r0, sp
    mov r1, #0x4f 
    mov r2, #0x54 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80BF174
    mov r3, sp
    mov r1, #0
loc_80BF162:
    ldr r2, [r3]
    cmp r2, r5
    beq loc_80BF172
    add r3, #4
    add r1, #1
    sub r0, #1
    bne loc_80BF162
    mov r1, #0
loc_80BF172:
    add r0, r1, #0
loc_80BF174:
    add r0, #1
    mov r1, #0x3c 
    mul r0, r1
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    add sp, sp, #0x10
    pop {pc}
// end of function sub_80BF148

.thumb
sub_80BF188:
    push {lr}
    bl sub_800A15E
    mov r1, #1
    bl sub_80BF1B4
    cmp r2, #0
    bne loc_80BF1A2
    mov r1, #3
    bl sub_80BF1B4
    cmp r2, #0
    beq locret_80BF1B2
loc_80BF1A2:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BF1E4
locret_80BF1B2:
    pop {pc}
// end of function sub_80BF188

.thumb
sub_80BF1B4:
    push {lr}
    ldr r2, [pc, #0x80bf1c8-0x80bf1b6-2] // =0x0
    ldr r3, [pc, #0x80bf1cc-0x80bf1b8-4] // =0xF880080
    push {r0,r1}
    bl sub_8009E78
    add r2, r0, #0
    pop {r0,r1}
    pop {pc}
    .balign 4, 0x00
dword_80BF1C8:    .word 0x0
dword_80BF1CC:    .word 0xF880080
// end of function sub_80BF1B4

.thumb
sub_80BF1D0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BF1E2
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF1E2:
    pop {pc}
// end of function sub_80BF1D0

loc_80BF1E4:
    push {r6,lr}
    ldr r1, [pc, #0x80bf1f4-0x80bf1e6-2] // off_80BF1F8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BF1F4:    .word off_80BF1F8
off_80BF1F8:    .word sub_80BF210+1
    .word sub_80BF262+1
    .word sub_80BF2B2+1
    .word sub_80BF2CC+1
    .word sub_80BF2F8+1
    .word sub_80BF332+1
.thumb
sub_80BF210:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80BF254
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #0xf6
    bl f500_8000558
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BF260
loc_80BF254:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF260:
    pop {r4,r6,pc}
// end of function sub_80BF210

.thumb
sub_80BF262:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF2B0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #1
    ldrb r1, [r5,#0x13]
    cmp r1, #1
    beq loc_80BF29C
    mov r0, #0
loc_80BF29C:
    str r0, [r5,#0x60]
    str r0, [r5,#0x64]
    mov r0, #1
    str r0, [r5,#0x68]
    bl sub_80BF53E
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BF2B0:
    pop {r4,r7,pc}
// end of function sub_80BF262

.thumb
sub_80BF2B2:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF2CA
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BF2CA:
    pop {pc}
// end of function sub_80BF2B2

.thumb
sub_80BF2CC:
    push {r4,r6,r7,lr}
    bl loc_80BF364
    ldrb r0, [r5,#0xb]
    cmp r0, #0x20 
    bne locret_80BF2F6
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80BF2F6:
    pop {r4,r6,r7,pc}
// end of function sub_80BF2CC

.thumb
sub_80BF2F8:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF330
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80BF330:
    pop {r4,r7,pc}
// end of function sub_80BF2F8

.thumb
sub_80BF332:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF362
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0
    strb r0, [r5,#0x10]
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF362:
    pop {r4,r7,pc}
// end of function sub_80BF332

loc_80BF364:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldr r1, [pc, #0x80bf378-0x80bf36a-2] // off_80BF37C
    ldrb r0, [r5,#0xb]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BF378:    .word off_80BF37C
off_80BF37C:    .word sub_80BF384+1
    .word sub_80BF460+1
.thumb
sub_80BF384:
    push {lr}
    sub sp, sp, #8
    bl sub_80BF4B4
    ldr r0, [r5,#0x60]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80bf448-0x80bf390-4] // dword_80BF44C
    ldrsb r2, [r1,r0]
    add r0, #1
    ldrsb r3, [r1,r0]
    ldrb r0, [r5,#0x12]
    add r0, r0, r2
    ldrb r1, [r5,#0x13]
    add r1, r1, r3
    ldr r2, [pc, #0x80bf454-0x80bf3a0-4] // =0x0
    ldr r3, [pc, #0x80bf458-0x80bf3a2-2] // =0x3800000
    str r0, [sp]
    str r1, [sp,#4]
    bl sub_8009E78
    cmp r0, #0
    beq loc_80BF3F8
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldr r1, [sp]
    sub r1, r1, r0
    beq loc_80BF3CC
    ldr r0, [pc, #0x80bf418-0x80bf3bc-4] // dword_80BF41C
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    ldr r0, [pc, #0x80bf434-0x80bf3c8-4] // dword_80BF43C
    b loc_80BF3E0
loc_80BF3CC:
    ldrb r0, [r5,#0x13]
    ldr r1, [sp,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bf418-0x80bf3d2-2] // dword_80BF41C
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x40]
    ldr r0, [pc, #0x80bf438-0x80bf3de-2] // dword_80BF43C
loc_80BF3E0:
    ldrb r3, [r5,#4]
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    bl sub_80BF564
    mov r0, #4
    strb r0, [r5,#0xb]
    mov r0, #0
    str r0, [r5,#0x6c]
    bl sub_80BF460
    b loc_80BF410
loc_80BF3F8:
    ldr r0, [r5,#0x6c]
    add r0, #1
    str r0, [r5,#0x6c]
    mov r1, #0x3c 
    mov r2, #5
    mul r1, r2
    cmp r0, r1
    blt loc_80BF410
    mov r0, #0x20 
    strb r0, [r5,#0xb]
    mov r0, #0
    str r0, [r5,#0x6c]
loc_80BF410:
    bl sub_80BF53E
    add sp, sp, #8
    pop {pc}
off_80BF418:    .word dword_80BF41C
dword_80BF41C:    .word 0x18000, 0x1B99A, 0x1F333, 0x22CCD, 0x26666, 0x2A000
off_80BF434:    .word dword_80BF43C
dword_80BF438:    .word 0x80BF442
dword_80BF43C:    .word 0x242A2E36, 0x1C201E22, 0x12141618
off_80BF448:    .word dword_80BF44C
dword_80BF44C:    .word 0x100FF00, 0x100FF
dword_80BF454:    .word 0x0
dword_80BF458:    .word 0x3800000
    .word 0xA000
// end of function sub_80BF384

.thumb
sub_80BF460:
    push {r4,lr}
    ldrh r0, [r5,#0x22]
    cmp r0, #0
    beq loc_80BF46E
    sub r0, #1
    strh r0, [r5,#0x22]
    b loc_80BF4AA
loc_80BF46E:
    bl sub_8012F4A
    ldr r1, [pc, #0x80bf4b0-0x80bf472-2] // =0xA000
    and r0, r1
    add r4, r0, #0
    ldr r1, [r5,#0x40]
    ldr r2, [r5,#0x44]
    cmp r4, #0
    beq loc_80BF48A
    asr r1, r1, #1
    asr r2, r2, #1
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
loc_80BF48A:
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x38]
    add r0, r0, r2
    str r0, [r5,#0x38]
    bl sub_800AB40
    ldrh r0, [r5,#0x20]
    sub r0, #2
    strh r0, [r5,#0x20]
    bpl loc_80BF4AA
    bl sub_800AB30
    mov r0, #0
    strb r0, [r5,#0xb]
loc_80BF4AA:
    bl sub_8012D4E
    pop {r4,pc}
dword_80BF4B0:    .word 0xA000
// end of function sub_80BF460

.thumb
sub_80BF4B4:
    push {lr}
    ldr r0, [r5,#0x60]
    str r0, [r5,#0x64]
    bl sub_800A15E
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    bne loc_80BF4D4
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    bne loc_80BF4D4
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    b loc_80BF526
loc_80BF4D4:
    ldr r2, [r5,#0x60]
    cmp r2, #2
    beq loc_80BF50A
    bgt loc_80BF512
    cmp r2, #1
    beq loc_80BF4E8
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    blt locret_80BF530
    b loc_80BF4EE
loc_80BF4E8:
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    bgt locret_80BF530
loc_80BF4EE:
    ldr r2, [r5,#0x68]
    add r2, #1
    cmp r2, #4
    blt loc_80BF4F8
    mov r2, #1
loc_80BF4F8:
    str r2, [r5,#0x68]
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    beq loc_80BF518
    bgt loc_80BF506
    mov r0, #2
    b loc_80BF526
loc_80BF506:
    mov r0, #3
    b loc_80BF526
loc_80BF50A:
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    blt locret_80BF530
    b loc_80BF518
loc_80BF512:
    ldrb r2, [r5,#0x12]
    cmp r0, r2
    bgt locret_80BF530
loc_80BF518:
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    beq loc_80BF4EE
    blt loc_80BF524
    mov r0, #1
    b loc_80BF526
loc_80BF524:
    mov r0, #0
loc_80BF526:
    str r0, [r5,#0x60]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bf534-0x80bf52a-2] // loc_80BF538
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x22]
locret_80BF530:
    pop {pc}
    .balign 4, 0x00
off_80BF534:    .word loc_80BF538
// end of function sub_80BF4B4

loc_80BF538:
    asr r4, r2, #0x10
    asr r0, r2, #0x20
    lsr r4, r1, #0x10
.thumb
sub_80BF53E:
    push {lr}
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x80bf554-0x80bf542-2] // dword_80BF558
    ldrb r1, [r1,r0]
    strb r1, [r5,#0x10]
    ldr r1, [pc, #0x80bf55c-0x80bf548-4] // dword_80BF560
    ldrb r0, [r1,r0]
    bl loc_8002F8E
    pop {pc}
    .balign 4, 0x00
off_80BF554:    .word dword_80BF558
dword_80BF558:    .word 0x1010203
off_80BF55C:    .word dword_80BF560
dword_80BF560:    .word 0x10000
// end of function sub_80BF53E

.thumb
sub_80BF564:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq locret_80BF5B4
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x4f 
    mov r2, #0x54 
    bl sub_80B656C
    add sp, sp, #0x10
    cmp r0, #1
    bne locret_80BF5B4
    ldr r0, [r5,#0x68]
    cmp r0, #3
    bne locret_80BF5B4
    ldr r0, [r5,#0x64]
    cmp r0, #2
    bge loc_80BF590
    ldr r0, [r5,#0x60]
    cmp r0, #2
    blt locret_80BF5B4
loc_80BF590:
    ldr r0, [r5,#0x70]
    cmp r0, #2
    bge locret_80BF5B4
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x80bf5b8-0x80bf598-4] // dword_80BF5BC
    ldrb r3, [r3,r0]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r3
    mov r7, #0x70 
    add r7, r7, r5
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #4
    mov r4, #0
    bl sub_80D4D8C
locret_80BF5B4:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80BF5B8:    .word dword_80BF5BC
dword_80BF5BC:    .word 0x82644628, 0xC8A0
// end of function sub_80BF564

loc_80BF5C4:
    push {lr}
    ldr r1, [pc, #0x80bf5d8-0x80bf5c6-2] // off_80BF5DC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80BF5D8:    .word off_80BF5DC
off_80BF5DC:    .word sub_80BF5E8+1
    .word sub_80BF636+1
    .word sub_80104D8+1
.thumb
sub_80BF5E8:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0x14
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BF5E8

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BF622
    bl sub_80033B4
    b locret_80BF634
loc_80BF622:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BF636
locret_80BF634:
    pop {pc}
.thumb
sub_80BF636:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80bf648-0x80bf63c-4] // off_80BF64C
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80BF648:    .word off_80BF64C
off_80BF64C:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80BF69E+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_80BF674+1
    .word loc_80BF6B6+1
    .word sub_80BF7E6+1
    .word loc_80BF808+1
    .word loc_80BF8EC+1
// end of function sub_80BF636

.thumb
sub_80BF674:
    push {lr}
    bl sub_8010568
    bl sub_800AB54
    mov r2, #0x28 
    lsl r2, r2, #0x10
    mul r2, r0
    ldr r0, [r5,#0x34]
    add r0, r0, r2
    ldr r1, [r5,#0x60]
    bl sub_80D517E
    ldrb r0, [r5,#9]
    cmp r0, #5
    beq loc_80BF698
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80BF698:
    bl sub_80BF7C0
    pop {pc}
// end of function sub_80BF674

.thumb
sub_80BF69E:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80BF6B0
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_80BF6B0
    mov r1, #1
    strb r1, [r0,#5]
loc_80BF6B0:
    bl sub_80100F8
    pop {pc}
// end of function sub_80BF69E

loc_80BF6B6:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bf6c8-0x80bf6be-2] // off_80BF6CC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80BF6C8:    .word off_80BF6CC
off_80BF6CC:    .word sub_80BF6D0+1
.thumb
sub_80BF6D0:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bf6e0-0x80bf6d4-4] // off_80BF6E4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BF6E0:    .word off_80BF6E4
off_80BF6E4:    .word sub_80BF6EC+1
    .word sub_80BF732+1
// end of function sub_80BF6D0

.thumb
sub_80BF6EC:
    push {r6,r7,lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bf728-0x80bf6f0-4] // loc_80BF72C
    ldrb r0, [r1,r0]
    mov r6, #0x32 
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #0
    mov r7, #0x60 
    add r7, r7, r5
    mov r4, #0
    bl sub_80D50C6
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #4
    ldr r6, [sp]
    strb r0, [r6,#1]
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80BF728:    .word loc_80BF72C
// end of function sub_80BF6EC

loc_80BF72C:
    sub r4, #0x1e
    ldrb r2, [r3,#1]
    ldmia r0!, {r5,r7}
.thumb
sub_80BF732:
    push {lr}
    bl sub_80BF7C0
    cmp r0, #0
    beq loc_80BF74A
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80BF74E
loc_80BF74A:
    bl sub_80BF750
locret_80BF74E:
    pop {pc}
// end of function sub_80BF732

.thumb
sub_80BF750:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    bl sub_80BF78E
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BF808
    mov r0, #0
    strb r0, [r6,#1]
    pop {r6,pc}
// end of function sub_80BF750

.thumb
sub_80BF770:
    push {lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_80BF750
    pop {pc}
// end of function sub_80BF770

.thumb
sub_80BF78E:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x13]
    ldr r2, [pc, #0x80bf7b8-0x80bf794-4] // =0x30
    ldr r3, [pc, #0x80bf7bc-0x80bf796-2] // =0xF880080
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    bne loc_80BF7A8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BF7B4
loc_80BF7A8:
    sub r0, #1
    add r0, sp
    ldrb r0, [r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80BF7B4:
    add sp, sp, #0x18
    pop {r4,r7,pc}
off_80BF7B8:    .word 0x30
dword_80BF7BC:    .word 0xF880080
// end of function sub_80BF78E

.thumb
sub_80BF7C0:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq locret_80BF7E4
    ldr r1, [r0,#0x34]
    ldr r0, [r5,#0x34]
    sub r0, r0, r1
    lsr r0, r0, #0x10
    add r0, #2
    mov r1, #0x28 
    sub r0, r0, r1
    cmp r0, #3
    bgt loc_80BF7DC
    mov r0, #1
    b locret_80BF7E4
loc_80BF7DC:
    mov r0, #1
    ldr r1, [r5,#0x60]
    strb r0, [r1,#5]
    mov r0, #0
locret_80BF7E4:
    mov pc, lr
// end of function sub_80BF7C0

.thumb
sub_80BF7E6:
    push {lr}
    bl sub_80BF7C0
    cmp r0, #0
    bne loc_80BF7F6
    bl sub_80BF770
    b locret_80BF806
loc_80BF7F6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BF806
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF806:
    pop {pc}
// end of function sub_80BF7E6

loc_80BF808:
    push {r6,lr}
    ldr r1, [pc, #0x80bf818-0x80bf80a-2] // off_80BF81C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BF818:    .word off_80BF81C
off_80BF81C:    .word sub_80BF82C+1
    .word sub_80BF878+1
    .word sub_80BF8B6+1
    .word sub_80BF8D8+1
.thumb
sub_80BF82C:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80BF86A
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x16
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BF876
loc_80BF86A:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF876:
    pop {r4,r6,pc}
// end of function sub_80BF82C

.thumb
sub_80BF878:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF8B4
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x15
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BF8B4:
    pop {r4,pc}
// end of function sub_80BF878

.thumb
sub_80BF8B6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF8D6
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x96
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80BF8D6:
    pop {pc}
// end of function sub_80BF8B6

.thumb
sub_80BF8D8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BF8EA
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF8EA:
    pop {pc}
// end of function sub_80BF8D8

loc_80BF8EC:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldr r1, [pc, #0x80bf900-0x80bf8f2-2] // off_80BF904
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80BF900:    .word off_80BF904
off_80BF904:    .word sub_80BF90C+1
    .word sub_80BF9CC+1
.thumb
sub_80BF90C:
    push {lr}
    bl sub_80BF7C0
    cmp r0, #0
    bne loc_80BF91C
    bl sub_80BF770
    b locret_80BF998
loc_80BF91C:
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80bf9c4-0x80bf926-2] // =0x30
    ldr r3, [pc, #0x80bf9c8-0x80bf928-4] // =0xF880080
    push {r0,r1}
    bl sub_8009E78
    pop {r1,r2}
    cmp r0, #0
    beq loc_80BF972
    strb r1, [r6,#4]
    strb r2, [r6,#5]
    bl sub_800ACF6
    beq loc_80BF98C
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r3, [r5,#4]
    ldr r0, [pc, #0x80bf9b8-0x80bf952-2] // byte_80BF9BC
    ldrb r0, [r0,r3]
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80bf99c-0x80bf960-4] // dword_80BF9A0
    ldr r0, [r0,r3]
    mul r0, r1
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80BF878
    b locret_80BF998
loc_80BF972:
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8009A52
    mov r1, #0x20 
    tst r0, r1
    bne locret_80BF998
    ldr r0, [r5,#0x60]
    bl sub_80D51CE
    bl sub_80BF770
    b locret_80BF998
loc_80BF98C:
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BF998:
    pop {pc}
    .balign 4, 0x00
off_80BF99C:    .word dword_80BF9A0
dword_80BF9A0:    .word 0x6666, 0x8000, 0x999A, 0xB333, 0xCCCD, 0xE666
off_80BF9B8:    .word byte_80BF9BC
byte_80BF9BC:    .byte 0x64
    .byte 0x50, 0x43, 0x39
    .byte 0x32, 0x2C, 0x0
    .byte 0x0
off_80BF9C4:    .word 0x30
dword_80BF9C8:    .word 0xF880080
// end of function sub_80BF90C

.thumb
sub_80BF9CC:
    push {r4,r6,lr}
    bl sub_80BF7C0
    cmp r0, #0
    bne loc_80BF9DC
    bl sub_80BF770
    b locret_80BFA54
loc_80BF9DC:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne locret_80BFA54
    ldr r4, [r5,#0x60]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    bl sub_8009A52
    mov r1, #0x20 
    tst r0, r1
    bne loc_80BFA08
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    bl sub_800AB0A
    ldr r1, [r4,#0x34]
    sub r0, r0, r1
    cmp r0, #0
    bgt loc_80BFA50
loc_80BFA08:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    push {r0}
    bl sub_800AB54
    mov r2, #0x28 
    lsl r2, r2, #0x10
    mul r2, r0
    ldr r0, [sp]
    add r0, r0, r2
    ldr r1, [r5,#0x60]
    bl sub_80D50FC
    pop {r1}
    cmp r0, #0
    beq locret_80BFA54
    str r1, [r5,#0x34]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BFA54
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
loc_80BFA50:
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BFA54:
    pop {r4,r6,pc}
    .balign 4, 0x00
// end of function sub_80BF9CC

loc_80BFA58:
    push {lr}
    ldr r1, [pc, #0x80bfa6c-0x80bfa5a-2] // off_80BFA70
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80BFA6C:    .word off_80BFA70
off_80BFA70:    .word sub_80BFA7C+1
    .word sub_80BFADA+1
    .word sub_8010F0C+1
.thumb
sub_80BFA7C:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x16
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80BFA7C

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80BFAA4
    mov r0, #0xa
loc_80BFAA4:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80BFABE
    bl sub_80033B4
    b locret_80BFAD8
loc_80BFABE:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #1
    lsl r0, r0, #0x11
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80BFADA
locret_80BFAD8:
    pop {pc}
.thumb
sub_80BFADA:
    push {lr}
    bl sub_8007920
    bne loc_80BFAEA
    bl sub_80BFB9C
    bl sub_80BFBDC
loc_80BFAEA:
    bl sub_8013548
    ldr r0, [pc, #0x80bfafc-0x80bfaee-2] // off_80BFB00
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80BFAFC:    .word off_80BFB00
off_80BFB00:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word sub_80BFB34+1
    .word loc_80BFC84+1
    .word sub_80BFF20+1
    .word loc_80BFF38+1
    .word loc_80C0058+1
    .word loc_80C011C+1
    .word loc_80C0190+1
    .word loc_80C0230+1
// end of function sub_80BFADA

.thumb
sub_80BFB34:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80BFB54
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    blt loc_80BFB54
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x6c]
    bl sub_80BFB74
    cmp r0, #0
    beq loc_80BFB54
    mov r1, #8
    str r1, [r0,#8]
loc_80BFB54:
    ldrb r0, [r5,#0x10]
    push {r0}
    bl ho_8010F5A
    pop {r0}
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#9]
    cmp r0, #5
    beq locret_80BFB72
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BFB72:
    pop {pc}
// end of function sub_80BFB34

.thumb
sub_80BFB74:
    cmp r0, #0
    beq loc_80BFB98
    ldrb r1, [r0]
    mov r2, #1
    tst r1, r2
    beq loc_80BFB98
    ldrb r1, [r0,#2]
    cmp r1, #0x84
    bne loc_80BFB98
    ldrb r1, [r0,#1]
    cmp r1, #0
    bne loc_80BFB98
    ldrb r1, [r0,#4]
    cmp r1, #0x42 
    blt loc_80BFB98
    cmp r1, #0x44 
    bgt loc_80BFB98
    mov pc, lr
loc_80BFB98:
    mov r0, #0
    mov pc, lr
// end of function sub_80BFB74

.thumb
sub_80BFB9C:
    push {lr}
    mov r0, #0xb
    mov r1, #0
    bl sub_8009F0C
    push {r0}
    mov r0, #0xb
    mov r1, #1
    bl sub_8009F0C
    pop {r1}
    add r1, r1, r0
    str r1, [r5,#0x60]
    beq locret_80BFBD0
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80bfbd4-0x80bfbba-2] // loc_80BFBD8
    ldrb r1, [r1,r0]
    ldrh r0, [r5,#0x22]
    add r0, #1
    cmp r0, r1
    blt loc_80BFBCE
    mov r0, #1
    bl sub_800AB86
    mov r0, #0
loc_80BFBCE:
    strh r0, [r5,#0x22]
locret_80BFBD0:
    pop {pc}
    .balign 4, 0x00
off_80BFBD4:    .word loc_80BFBD8
// end of function sub_80BFB9C

loc_80BFBD8:
    lsr r2, r1, #0x20
    lsl r6, r0, #0x10
.thumb
sub_80BFBDC:
    push {r4,r6,lr}
    ldr r0, [r5,#0x64]
    sub r0, #1
    bmi locret_80BFC38
    str r0, [r5,#0x64]
    mov r0, #0
    mov r1, #1
    bl sub_8025FE0
    ldr r0, [r5,#0x68]
    sub r0, #1
    str r0, [r5,#0x68]
    bne locret_80BFC38
    bl sub_80BFC64
    bl sub_800A15E
    push {r0,r1}
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80bfc3c-0x80bfc0a-2] // dword_80BFC40
    ldrb r1, [r2,r1]
    cmp r0, r1
    pop {r0,r1}
    blt loc_80BFC26
    ldr r2, [pc, #0x80bfc4c-0x80bfc14-4] // =0x10
    ldr r3, [pc, #0x80bfc50-0x80bfc16-2] // =0x20
    ldr r4, [pc, #0x80bfc54-0x80bfc18-4] // dword_80BFC58
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80BFC26
    bl sub_800A15E
loc_80BFC26:
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80bfc44-0x80bfc28-4] // dword_80BFC48
    ldrb r2, [r3,r2]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    add r6, r6, r2
    mov r2, #0
    bl sub_80D0930
locret_80BFC38:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80BFC3C:    .word dword_80BFC40
dword_80BFC40:    .word 0xA0A0806
off_80BFC44:    .word dword_80BFC48
dword_80BFC48:    .word 0xC8966432
dword_80BFC4C:    .word 0x10
dword_80BFC50:    .word 0x20
off_80BFC54:    .word dword_80BFC58
dword_80BFC58:    .word 0x100FF, 0x100FF00, 0x7F
// end of function sub_80BFBDC

.thumb
sub_80BFC64:
    push {lr}
    bl sub_8001AF6
    mov r1, #7
    and r0, r1
    ldr r1, [pc, #0x80bfc78-0x80bfc6e-2] // loc_80BFC7C
    ldrb r0, [r1,r0]
    str r0, [r5,#0x68]
    pop {pc}
    .balign 4, 0x00
off_80BFC78:    .word loc_80BFC7C
// end of function sub_80BFC64

loc_80BFC7C:
    sub r4, r2, #0
    sub r0, r5, #0
    sub r0, r5, #0
    asr r0, r5, #0x10
loc_80BFC84:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80bfc98-0x80bfc8c-4] // off_80BFC9C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80BFC98:    .word off_80BFC9C
off_80BFC9C:    .word sub_80BFCB0+1
    .word sub_80BFEC4+1
    .word sub_80BFED8+1
    .word sub_80BFEEC+1
    .word sub_80BFF00+1
.thumb
sub_80BFCB0:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80bfcc0-0x80bfcb4-4] // off_80BFCC4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80BFCC0:    .word off_80BFCC4
off_80BFCC4:    .word sub_80BFCC8+1
// end of function sub_80BFCB0

.thumb
sub_80BFCC8:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #5
    bge loc_80BFD02
    ldrb r0, [r6,#9]
    cmp r0, #1
    bge loc_80BFCDC
    bl sub_80BFD1E
    b locret_80BFD1C
loc_80BFCDC:
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r2, r1, #1
    lsr r1, r1, #2
    add r1, r1, r2
    cmp r0, r1
    bgt loc_80BFCFC
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    cmp r0, #4
    bge loc_80BFCFC
    bl sub_80BFE24
    b locret_80BFD1C
loc_80BFCFC:
    bl sub_80BFD5A
    b locret_80BFD1C
loc_80BFD02:
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    bgt loc_80BFD18
    ldr r0, [r5,#0x60]
    cmp r0, #0
    bne loc_80BFD18
    bl sub_80BFDD4
    b locret_80BFD1C
loc_80BFD18:
    bl sub_80BFE68
locret_80BFD1C:
    pop {pc}
// end of function sub_80BFCC8

.thumb
sub_80BFD1E:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bff14-0x80bfd24-4] // =0xA000
    tst r0, r1
    beq loc_80BFD34
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne loc_80BFD3A
loc_80BFD34:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80BFD3A:
    bl sub_80BFD40
    pop {pc}
// end of function sub_80BFD1E

.thumb
sub_80BFD40:
    push {r6,lr}
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BFD4E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BFD4E:
    mov r2, #0
    mov r6, #0x78 
    add r6, r6, r5
    bl sub_80BFEAA
    pop {r6,pc}
// end of function sub_80BFD40

.thumb
sub_80BFD5A:
    push {r4,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bff14-0x80bfd60-4] // =0xA000
    tst r0, r1
    beq loc_80BFD70
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BFDC2
    b loc_80BFD9C
loc_80BFD70:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl loc_800AB56
    add r4, r0, #0
    bl sub_800A15E
    add r0, r0, r4
    add r0, r0, r4
loc_80BFD84:
    push {r0,r1}
    ldr r2, [pc, #0x80bff18-0x80bfd86-2] // =0x30
    ldr r3, [pc, #0x80bff1c-0x80bfd88-4] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    pop {r0,r1}
    bne loc_80BFDC2
    add r0, r0, r4
    beq loc_80BFD9C
    cmp r0, #7
    blt loc_80BFD84
loc_80BFD9C:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl loc_800AB56
    add r4, r0, #0
    bl sub_800A15E
    add r0, r0, r4
    push {r0,r1}
    ldr r2, [pc, #0x80bff18-0x80bfdb0-4] // =0x30
    ldr r3, [pc, #0x80bff1c-0x80bfdb2-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    pop {r0,r1}
    bne loc_80BFDC2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BFDC2:
    mov r2, #4
    bl sub_80BFEAA
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    pop {r4,pc}
// end of function sub_80BFD5A

.thumb
sub_80BFDD4:
    push {r4,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bff14-0x80bfdda-2] // =0xA000
    tst r0, r1
    bne loc_80BFE12
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BFDFE
    ldrb r0, [r5,#0x12]
    cmp r0, #6
    bne loc_80BFE12
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    bne loc_80BFE12
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80BFE1E
loc_80BFDFE:
    mov r0, #6
    mov r1, #2
    push {r0,r1}
    ldr r2, [pc, #0x80bff18-0x80bfe04-4] // =0x30
    ldr r3, [pc, #0x80bff1c-0x80bfe06-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    pop {r0,r1}
    bne loc_80BFE18
loc_80BFE12:
    bl sub_80BFD40
    b locret_80BFE22
loc_80BFE18:
    mov r2, #8
    bl sub_80BFEAA
loc_80BFE1E:
    mov r0, #0
    strb r0, [r6,#8]
locret_80BFE22:
    pop {r4,pc}
// end of function sub_80BFDD4

.thumb
sub_80BFE24:
    push {r4,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80bff14-0x80bfe2a-2] // =0xA000
    tst r0, r1
    bne loc_80BFE48
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80BFE3E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80BFE56
loc_80BFE3E:
    bl sub_80BDCC8
    cmp r0, #0
    beq loc_80BFE50
    b loc_80BFE56
loc_80BFE48:
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BFE56
loc_80BFE50:
    bl sub_80BFD40
    b locret_80BFE66
loc_80BFE56:
    mov r2, #0xc
    bl sub_80BFEAA
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
locret_80BFE66:
    pop {r4,pc}
// end of function sub_80BFE24

.thumb
sub_80BFE68:
    push {r4,lr}
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq loc_80BFE76
    bl sub_80BFD40
    b locret_80BFEA8
loc_80BFE76:
    bl sub_8012F4A
    ldr r1, [pc, #0x80bff14-0x80bfe7a-2] // =0xA000
    tst r0, r1
    bne loc_80BFE92
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80BFE9A
    bl sub_80B56B8
    cmp r0, #0
    beq loc_80BFE9A
    b loc_80BFE9E
loc_80BFE92:
    bl sub_80B56B8
    tst r0, r0
    bne loc_80BFE9E
loc_80BFE9A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80BFE9E:
    mov r2, #0x10
    bl sub_80BFEAA
    mov r0, #0
    strb r0, [r6,#8]
locret_80BFEA8:
    pop {r4,pc}
// end of function sub_80BFE68

.thumb
sub_80BFEAA:
    push {lr}
    strb r2, [r6]
    mov r2, #0
    strh r2, [r6,#2]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80BFF38
    pop {pc}
// end of function sub_80BFEAA

.thumb
sub_80BFEC4:
    push {lr}
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80BFEC4

.thumb
sub_80BFED8:
    push {lr}
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80BFED8

.thumb
sub_80BFEEC:
    push {lr}
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80BFEEC

.thumb
sub_80BFF00:
    push {lr}
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
dword_80BFF14:    .word 0xA000
off_80BFF18:    .word 0x30
dword_80BFF1C:    .word 0xF880080
// end of function sub_80BFF00

.thumb
sub_80BFF20:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80BFF36
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BFF36:
    pop {pc}
// end of function sub_80BFF20

loc_80BFF38:
    push {r6,lr}
    ldr r1, [pc, #0x80bff48-0x80bff3a-2] // off_80BFF4C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80BFF48:    .word off_80BFF4C
off_80BFF4C:    .word sub_80BFF5C+1
    .word sub_80BFF96+1
    .word sub_80BFFD4+1
    .word sub_80C0044+1
.thumb
sub_80BFF5C:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80BFF88
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_8012D74
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80BFF94
loc_80BFF88:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80BFF94:
    pop {r6,pc}
// end of function sub_80BFF5C

.thumb
sub_80BFF96:
    push {r4,lr}
    ldrh r1, [r5,#0x20]
    ldr r0, [pc, #0x80c0038-0x80bff9a-2] // dword_80C003C
    ldrb r1, [r0,r1]
    mov r0, #0x20 
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80BFFD2
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80BFFD2:
    pop {r4,pc}
// end of function sub_80BFF96

.thumb
sub_80BFFD4:
    push {lr}
    ldrh r0, [r5,#0x20]
    mov r1, #5
    sub r1, r1, r0
    ldr r0, [pc, #0x80c0038-0x80bffdc-4] // dword_80C003C
    ldrb r1, [r0,r1]
    mov r0, #0x20 
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C002C
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #1
    bl sub_8012D7C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    mov r1, #0xa
    mov r0, #0x78 
    add r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #4
    beq loc_80C0026
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c0030-0x80c0022-2] // dword_80C0034
    ldrb r1, [r1,r0]
loc_80C0026:
    strh r1, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C002C:
    pop {pc}
    .byte 0, 0
off_80C0030:    .word dword_80C0034
dword_80C0034:    .word 0xE101214
off_80C0038:    .word dword_80C003C
dword_80C003C:    .word 0xC12181F, 0x0
// end of function sub_80BFFD4

.thumb
sub_80C0044:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0056
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C0056:
    pop {pc}
// end of function sub_80C0044

loc_80C0058:
    push {r6,lr}
    ldr r1, [pc, #0x80c0068-0x80c005a-2] // off_80C006C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C0068:    .word off_80C006C
off_80C006C:    .word sub_80C007C+1
    .word sub_80C008C+1
    .word sub_80C00F8+1
    .word sub_80C010C+1
.thumb
sub_80C007C:
    push {lr}
    mov r0, #0x17
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C007C

.thumb
sub_80C008C:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x20]
    mov r1, #4
    and r0, r1
    bne loc_80C00AA
    bl sub_800AB54
    add r0, r0, r0
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #9
    ldrb r3, [r5,#0x16]
    bl sub_8009EC2
loc_80C00AA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C00E8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c00ec-0x80c00b4-4] // dword_80C00F0
    ldrb r0, [r1,r0]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_800AB54
    add r0, r0, r0
    mov r1, #0
    mov r3, #0
    mov r2, #0
    mov r4, #0
    bl sub_80D5486
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #1
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x80c00f4-0x80c00da-2] // =0xFF
    bl f500_8000558
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C00E8:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80C00EC:    .word dword_80C00F0
dword_80C00F0:    .word 0xC8966432
off_80C00F4:    .word 0x101
// end of function sub_80C008C

.thumb
sub_80C00F8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C010A
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C010A:
    pop {pc}
// end of function sub_80C00F8

.thumb
sub_80C010C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C011A
    bl sub_80BFD40
locret_80C011A:
    pop {pc}
// end of function sub_80C010C

loc_80C011C:
    push {r6,lr}
    ldr r1, [pc, #0x80c012c-0x80c011e-2] // off_80C0130
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C012C:    .word off_80C0130
off_80C0130:    .word sub_80C013C+1
    .word sub_80C0174+1
    .word sub_80C0180+1
.thumb
sub_80C013C:
    push {lr}
    bl sub_80079EA
    tst r0, r0
    bne loc_80C0164
    mov r0, #0x17
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c016c-0x80c014c-4] // loc_80C0170
    ldrb r0, [r1,r0]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    add r6, r6, r0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #0
    mov r4, #1
    bl sub_80E3CC6
loc_80C0164:
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
    .balign 4, 0x00
off_80C016C:    .word loc_80C0170
// end of function sub_80C013C

loc_80C0170:
    str r2, [r6,#0x40]
    ldmia r0!, {r1,r2,r4,r7}
.thumb
sub_80C0174:
    push {lr}
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C0174

.thumb
sub_80C0180:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C018E
    bl sub_80BFD40
locret_80C018E:
    pop {pc}
// end of function sub_80C0180

loc_80C0190:
    push {r6,lr}
    ldr r1, [pc, #0x80c01a0-0x80c0192-2] // off_80C01A4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C01A0:    .word off_80C01A4
off_80C01A4:    .word sub_80C01B4+1
    .word sub_80C01C4+1
    .word sub_80C0210+1
    .word sub_80C0220+1
.thumb
sub_80C01B4:
    push {lr}
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0x37 
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C01B4

.thumb
sub_80C01C4:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x19
    bne loc_80C01D0
    mov r0, #0x18
    strb r0, [r5,#0x10]
loc_80C01D0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C0204
    bl sub_80079EA
    tst r0, r0
    bne loc_80C0200
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c0208-0x80c01e2-2] // loc_80C020C
    ldrb r0, [r1,r0]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #0
    mov r4, #0
    bl sub_80E3DD4
loc_80C0200:
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0204:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80C0208:    .word loc_80C020C
// end of function sub_80C01C4

loc_80C020C:
    str r2, [r6,#0x40]
    ldmia r0!, {r1,r2,r4,r7}
.thumb
sub_80C0210:
    push {lr}
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C0210

.thumb
sub_80C0220:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C022E
    bl sub_80BFD40
locret_80C022E:
    pop {pc}
// end of function sub_80C0220

loc_80C0230:
    push {r6,lr}
    ldr r1, [pc, #0x80c0250-0x80c0232-2] // off_80C0254
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldr r0, [r5,#0x6c]
    bl sub_80BFB74
    cmp r0, #0
    beq locret_80C024E
    ldr r1, [r5,#0x34]
    str r1, [r0,#0x34]
    ldr r1, [r5,#0x38]
    str r1, [r0,#0x38]
locret_80C024E:
    pop {r6,pc}
off_80C0250:    .word off_80C0254
off_80C0254:    .word sub_80C0268+1
    .word sub_80C0274+1
    .word sub_80C028C+1
    .word sub_80C02BE+1
    .word sub_80C0350+1
.thumb
sub_80C0268:
    push {lr}
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C0268

.thumb
sub_80C0274:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C028A
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C028A:
    pop {pc}
// end of function sub_80C0274

.thumb
sub_80C028C:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C02BC
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x18
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #1
    lsl r4, r4, #8
    add r4, #0x42 
    bl sub_80E17DE
    str r0, [r5,#0x6c]
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #0x4f 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C02BC:
    pop {r4,r6,pc}
// end of function sub_80C028C

.thumb
sub_80C02BE:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x41 
    bne loc_80C02FA
    mov r0, #6
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x80c034c-0x80c02ca-2] // =0x104
    bl f500_8000558
    mov r0, #1
    mov r1, #0x3c 
    bl sub_8025FE0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x18
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #1
    lsl r4, r4, #8
    add r4, #0x43 
    bl sub_80E17DE
    str r0, [r5,#0x6c]
    cmp r0, #0
    beq loc_80C0326
    mov r1, #0x3c 
    strh r1, [r0,#0x20]
    b loc_80C0326
loc_80C02FA:
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    bne loc_80C0326
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x18
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #1
    lsl r4, r4, #8
    add r4, #0x44 
    bl sub_80E17DE
    str r0, [r5,#0x6c]
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80c0340-0x80c031c-4] // dword_80C0344
    ldrh r1, [r1,r0]
    str r1, [r5,#0x64]
    bl sub_80BFC64
loc_80C0326:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C033E
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C033E:
    pop {pc}
off_80C0340:    .word dword_80C0344
dword_80C0344:    .word 0x1E00168, 0x2D00258
off_80C034C:    .word 0x104
// end of function sub_80C02BE

.thumb
sub_80C0350:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C035E
    bl sub_80BFD40
locret_80C035E:
    pop {pc}
// end of function sub_80C0350

loc_80C0360:
    push {lr}
    ldr r1, [pc, #0x80c0374-0x80c0362-2] // off_80C0378
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C0374:    .word off_80C0378
off_80C0378:    .word sub_80C0384+1
    .word sub_80C0448+1
    .word sub_8010F0C+1
.thumb
sub_80C0384:
    push {r7,lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x18
    bl sub_800285C
    bl sub_8002FC2
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C0384

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C03AC
    mov r0, #0xa
loc_80C03AC:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C03C6
    bl sub_80033B4
    b locret_80C042A
loc_80C03C6:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #1
    lsl r0, r0, #0x11
    bl sub_8012F36
    mov r0, #0
    bl sub_80C0620
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0
    mov r2, #0
    ldr r6, [r5,#0x2c]
    bl sub_80D9938
    str r0, [r5,#0x70]
    bl sub_80C042C
    mov r0, #5
    mov r1, #1
    bl sub_8009E40
    mov r0, #5
    mov r1, #2
    bl sub_8009E40
    mov r0, #5
    mov r1, #3
    bl sub_8009E40
    mov r0, #6
    mov r1, #1
    bl sub_8009E40
    mov r0, #6
    mov r1, #2
    bl sub_8009E40
    mov r0, #6
    mov r1, #3
    bl sub_8009E40
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C0448
locret_80C042A:
    pop {r7,pc}
.thumb
sub_80C042C:
    push {r4,r7,lr}
    mov r1, #0x29 
    ldrb r0, [r5,#4]
    cmp r0, #3
    bne loc_80C0438
    mov r1, #0x33 
loc_80C0438:
    mov r4, #0x1a
    lsl r4, r4, #8
    orr r4, r1
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    pop {r4,r7,pc}
// end of function sub_80C042C

.thumb
sub_80C0448:
    push {lr}
    bl sub_80136EA
    ldr r0, [pc, #0x80c045c-0x80c044e-2] // off_80C0460
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80C045C:    .word off_80C0460
off_80C0460:    .word sub_8010CDC+1
    .word sub_80C04A0+1
    .word sub_8010DA4+1
    .word sub_8010E34+1
    .word sub_80C04B0+1
    .word ho_8010F5A+1
    .word loc_80C04D0+1
    .word sub_80C0894+1
    .word loc_80C08EE+1
    .word loc_80C1066+1
    .word sub_80C0A48+1
    .word sub_80C0D0C+1
    .word loc_80C0F56+1
    .word loc_80C0E94+1
    .word loc_80C0B7C+1
    .word sub_80C08A8+1
// end of function sub_80C0448

.thumb
sub_80C04A0:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8010F52
    pop {pc}
// end of function sub_80C04A0

.thumb
sub_80C04B0:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C04BC
    mov r0, #0
    str r0, [r5,#0x3c]
loc_80C04BC:
    bl sub_8010EB4
    ldrb r0, [r5,#9]
    cmp r0, #4
    beq locret_80C04CE
    mov r0, #0xf
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C04CE:
    pop {pc}
// end of function sub_80C04B0

loc_80C04D0:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c04e4-0x80c04d8-4] // off_80C04E8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80C04E4:    .word off_80C04E8
off_80C04E8:    .word sub_80C04EC+1
.thumb
sub_80C04EC:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c04fc-0x80c04f0-4] // off_80C0500
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C04FC:    .word off_80C0500
off_80C0500:    .word sub_80C0508+1
    .word sub_80C05A8+1
// end of function sub_80C04EC

.thumb
sub_80C0508:
    push {lr}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    cmp r0, #0
    bne loc_80C0522
    ldrh r2, [r5,#0x24]
    ldrh r3, [r5,#0x26]
    lsr r3, r3, #1
    cmp r2, r3
    bgt loc_80C0522
    mov r0, #1
    bl sub_80C0620
loc_80C0522:
    ldrb r0, [r6,#9]
    cmp r0, #3
    bge loc_80C0564
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80C0534
    bl sub_80C05C0
    b locret_80C05A6
loc_80C0534:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #4
    strb r0, [r6,#1]
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    bne loc_80C055A
    bl sub_80C060C
    cmp r1, #1
    bne loc_80C055A
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C05A6
loc_80C055A:
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C05A6
loc_80C0564:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#0xa]
    cmp r0, #2
    bge loc_80C057E
    mov r0, #0xd
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#0xa]
    add r0, #1
    strb r0, [r6,#0xa]
    b locret_80C05A6
loc_80C057E:
    mov r0, #0
    strb r0, [r6,#0xa]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    bgt loc_80C059E
    bl sub_80C060C
    cmp r1, #1
    beq loc_80C059E
    mov r0, #0xe
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C05A6
loc_80C059E:
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C05A6:
    pop {pc}
// end of function sub_80C0508

.thumb
sub_80C05A8:
    push {lr}
    bl sub_80C060C
    cmp r1, #0
    beq loc_80C05BA
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C05BA:
    mov r0, #0
    strb r0, [r6,#1]
    pop {pc}
// end of function sub_80C05A8

.thumb
sub_80C05C0:
    push {lr}
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    add r1, #1
    ldrb r0, [r6,#8]
    add r0, r0, r1
    strb r0, [r6,#8]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80c05fc-0x80c05d6-2] // =0x10000
    mov r3, #0
    ldr r4, [pc, #0x80c0600-0x80c05da-2] // dword_80C0604
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80C05E8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C05E8:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C08EE
    pop {pc}
    .balign 4, 0x00
dword_80C05FC:    .word 0x10000
off_80C0600:    .word dword_80C0604
dword_80C0604:    .word 0x100FF00, 0x7F
// end of function sub_80C05C0

.thumb
sub_80C060C:
    push {lr}
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    mov r1, #0
    cmp r0, #0xa
    blt locret_80C061E
    mov r1, #1
locret_80C061E:
    pop {pc}
// end of function sub_80C060C

.thumb
sub_80C0620:
    push {r4,r6,lr}
    lsl r0, r0, #2
    ldrb r1, [r5,#4]
    add r0, r0, r1
    mov r1, #3
    mul r0, r1
    ldr r1, [pc, #0x80c0684-0x80c062c-4] // byte_80C0688
    add r0, r0, r1
    ldr r1, [r0]
    push {r1}
    mov r0, sp
    mov r1, #3
    mov r2, #6
    bl fA00_8000AA2
    ldr r2, [pc, #0x80c0660-0x80c063e-2] // dword_80C0664
    mov r3, #3
    mov r4, sp
    mov r6, #0x60 
    add r6, r6, r5
loc_80C0648:
    ldrb r0, [r4]
    ldr r1, [r2,r0]
    str r1, [r6]
    add r4, #1
    add r6, #4
    sub r3, #1
    bne loc_80C0648
    pop {r0}
    mov r0, #0
    mov r1, #0x6c 
    strh r0, [r5,r1]
    pop {r4,r6,pc}
off_80C0660:    .word dword_80C0664
dword_80C0664:    .word 0x4040003, 0x4040403, 0x4020100, 0x4040300, 0x4010003
    .word 0x4030003, 0x4010300, 0x4000303
off_80C0684:    .word byte_80C0688
byte_80C0688:    .byte 0x0
    .word 0x804
    .word 0x1008
    .word 0x10001808
    .word 0x4001814
    .word 0x8000C08
    .word 0x1000100C
    .word 0x14001C18
    .hword 0x1C18
    .byte 0
// end of function sub_80C0620

.thumb
sub_80C06A8:
    mov r2, #0x74 
    ldrh r0, [r5,r2]
    add r2, #2
    ldrh r1, [r5,r2]
loc_80C06B0:
    push {lr}
    push {r0,r1}
    bl sub_8009D6C
    ldr r0, [sp]
    add r0, #1
    ldr r1, [sp,#4]
    bl sub_8009D6C
    ldr r0, [sp]
    add r0, #1
    ldr r1, [sp,#4]
    add r1, #1
    bl sub_8009D6C
    pop {r0,r1}
    add r1, #1
    bl sub_8009D6C
    pop {pc}
// end of function sub_80C06A8

.thumb
sub_80C06D8:
    push {lr}
    mov r1, #1
    push {r0,r1}
    bl sub_8009D6C
    ldr r0, [sp]
    add r0, #1
    ldr r1, [sp,#4]
    bl sub_8009D6C
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add r1, #1
    bl sub_8009D6C
    ldr r0, [sp]
    add r0, #1
    ldr r1, [sp,#4]
    add r1, #1
    bl sub_8009D6C
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add r1, #2
    bl sub_8009D6C
    pop {r0,r1}
    add r0, #1
    add r1, #2
    bl sub_8009D6C
    pop {pc}
// end of function sub_80C06D8

.thumb
sub_80C0718:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    mov r0, #1
    mov r1, #0
    mov r6, #0x28 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c073c-0x80c0728-4] // loc_80C0740
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    lsl r3, r3, #0x10
    bl sub_80D9D8A
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C073C:    .word loc_80C0740
// end of function sub_80C0718

loc_80C0740:
    lsl r4, r4, #1
    lsl r0, r1, #3
    lsl r4, r5, #4
    lsl r0, r2, #6
.thumb
sub_80C0748:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r4, r2, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    sub r1, r1, r6
    mov r3, #1
    lsl r3, r3, #8
    add r4, r4, r3
    add r3, r7, #0
    bl sub_80E17DE
    pop {r4,r6,r7,pc}
// end of function sub_80C0748

.thumb
sub_80C076C:
    push {r4,r6,r7,lr}
    bl sub_800AB54
    lsl r6, r0, #1
    add r6, r6, r0
    ldrb r1, [r5,#0x12]
    add r6, r6, r1
    ldrb r7, [r5,#0x13]
    sub r7, #1
    ldr r4, [pc, #0x80c07ac-0x80c077e-2] // byte_80C07B0
loc_80C0780:
    ldrb r0, [r4]
    cmp r0, #0xff
    beq locret_80C07AA
    add r0, r0, r6
    ldrb r1, [r4,#1]
    add r1, r1, r7
    push {r0,r1}
    bl sub_8009A52
    add r2, r0, #0
    pop {r0,r1}
    mov r3, #0x10
    tst r2, r3
    beq loc_80C07A6
    mov r3, #0x40 
    tst r2, r3
    bne loc_80C07A6
    bl sub_8009AB8
loc_80C07A6:
    add r4, #2
    b loc_80C0780
locret_80C07AA:
    pop {r4,r6,r7,pc}
off_80C07AC:    .word byte_80C07B0
byte_80C07B0:    .byte 0x0
byte_80C07B1:    .byte 0x0
    .hword 0x1
    .word 0x1010100, 0x2010200
    .byte 0xFF, 0xFF
// end of function sub_80C076C

.thumb
sub_80C07BE:
    push {r4,r6,r7,lr}
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    ldrh r1, [r5,#0x22]
    add r0, r0, r1
    add r0, #0x60 
    ldrb r0, [r5,r0]
    cmp r0, #0
    beq loc_80C0806
    cmp r0, #1
    beq loc_80C0826
    cmp r0, #2
    beq loc_80C0838
    cmp r0, #3
    beq loc_80C0848
    cmp r0, #4
    beq loc_80C07F2
loc_80C07E0:
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x12
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #2
    bl sub_80E17DE
loc_80C07F2:
    ldrh r1, [r5,#0x22]
    add r1, #1
    strh r1, [r5,#0x22]
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    ldrh r1, [r5,#0x22]
    add r0, r0, r1
    add r0, #0x60 
    ldrb r0, [r5,r0]
    pop {r4,r6,r7,pc}
loc_80C0806:
    bl sub_800A146
    add r4, r0, #0
    add r2, r0, #1
    cmp r2, #4
    blt loc_80C0814
    sub r2, #3
loc_80C0814:
    add r3, r0, #2
    cmp r3, #4
    blt loc_80C081C
    sub r3, #3
loc_80C081C:
    mov r1, #0x74 
    add r1, r1, r5
    strb r2, [r1]
    strb r3, [r1,#1]
    b loc_80C083E
loc_80C0826:
    mov r0, #0x74 
    add r0, r0, r5
    mov r1, #2
    mov r2, #4
    bl fA00_8000AA2
    mov r0, #0x74 
    ldrb r4, [r5,r0]
    b loc_80C083E
loc_80C0838:
    mov r0, #0x75 
    ldrb r4, [r5,r0]
    b loc_80C083E
loc_80C083E:
    bl sub_80C0870
    bl sub_80DA72E
    b loc_80C07E0
loc_80C0848:
    ldrb r0, [r5,#0x13]
    cmp r0, #2
    beq loc_80C0858
    mov r4, #0
    cmp r0, #3
    beq loc_80C0860
    mov r4, #1
    b loc_80C0860
loc_80C0858:
    bl sub_8001AF6
    mov r4, #1
    and r4, r0
loc_80C0860:
    lsl r4, r4, #8
    ldrb r0, [r5,#4]
    add r4, r4, r0
    bl sub_80C0870
    bl sub_80DA95C
    b loc_80C07E0
// end of function sub_80C07BE

.thumb
sub_80C0870:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c0888-0x80c087c-4] // dword_80C088C
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    mov pc, lr
off_80C0888:    .word dword_80C088C
dword_80C088C:    .word 0x640032
    .word 0xC80096
// end of function sub_80C0870

.thumb
sub_80C0894:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C08A6
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C08A6:
    pop {pc}
// end of function sub_80C0894

.thumb
sub_80C08A8:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C08DC
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_80C042C
    ldr r0, [r5,#0x70]
    bl sub_80D99A8
    ldr r0, [r5,#0x70]
    ldrb r1, [r0,#9]
    cmp r1, #0
    beq loc_80C08D4
    cmp r1, #8
    ble locret_80C08EC
    ldr r0, [r5,#0x70]
    bl sub_80D9980
loc_80C08D4:
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x14
    strh r0, [r5,#0x20]
loc_80C08DC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C08EC
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C08EC:
    pop {pc}
// end of function sub_80C08A8

loc_80C08EE:
    push {r6,lr}
    ldr r1, [pc, #0x80c08fc-0x80c08f0-4] // off_80C0900
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C08FC:    .word off_80C0900
off_80C0900:    .word sub_80C0914+1
    .word sub_80C0958+1
    .word sub_80C099C+1
    .word sub_80C09D4+1
    .word sub_80C0A20+1
.thumb
sub_80C0914:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C0940
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80c0950-0x80c092c-4] // =0x999A
    mul r0, r1
    str r0, [r5,#0x44]
    ldr r0, [pc, #0x80c0954-0x80c0932-2] // =0x18000
    str r0, [r5,#0x48]
    mov r0, #0xc
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C094C
loc_80C0940:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C094C:
    pop {r6,pc}
    .byte 0, 0
dword_80C0950:    .word 0x999A
dword_80C0954:    .word 0x18000
// end of function sub_80C0914

.thumb
sub_80C0958:
    push {lr}
    ldr r1, [r5,#0x48]
    lsr r1, r1, #1
    ldr r0, [r5,#0x3c]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0996
    mov r3, #0x80
    add r3, r3, r5
    ldrb r0, [r3,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r3,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_8012D74
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    ldr r0, [pc, #0x80c0998-0x80c098e-2] // =0x28
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0996:
    pop {pc}
off_80C0998:    .word 0x28
// end of function sub_80C0958

.thumb
sub_80C099C:
    push {lr}
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C09D2
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #6
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C09D2:
    pop {pc}
// end of function sub_80C099C

.thumb
sub_80C09D4:
    push {r4,r7,lr}
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x3c]
    sub r0, r0, r1
    str r0, [r5,#0x3c]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0A14
    mov r0, #1
    bl sub_8012D7C
    bl sub_80C042C
    mov r0, #1
    mov r1, #0x14
    bl sub_8025FE0
    mov r0, #0x52 
    add r0, #0xff
    bl f500_8000558
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c0a18-0x80c0a0a-2] // loc_80C0A1C
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C0A14:
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80C0A18:    .word loc_80C0A1C
// end of function sub_80C09D4

loc_80C0A1C:
    lsr r2, r1, #8
    lsr r2, r1, #8
.thumb
sub_80C0A20:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0A40
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C0A40:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
    .word 0xA00FF00
// end of function sub_80C0A20

.thumb
sub_80C0A48:
    push {r6,lr}
    ldr r1, [pc, #0x80c0a58-0x80c0a4a-2] // off_80C0A5C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C0A58:    .word off_80C0A5C
off_80C0A5C:    .word sub_80C0A6C+1
    .word sub_80C0ABE+1
    .word sub_80C0B04+1
    .word sub_80C0B18+1
// end of function sub_80C0A48

.thumb
sub_80C0A6C:
    push {r4,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r4, #0
    ldrb r3, [r5,#4]
    cmp r3, #3
    bne loc_80C0A84
    add r4, #0xa
loc_80C0A84:
    lsl r4, r4, #8
    add r4, #1
    lsl r4, r4, #8
    add r4, #0x4c 
    mov r3, #0
    bl sub_80E17DE
    cmp r0, #0
    beq loc_80C0AA4
    mov r1, #0x96
    add r1, #0x40 
    strh r1, [r0,#0x20]
    ldrb r1, [r0]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r0]
loc_80C0AA4:
    mov r0, #0xa0
    bl f500_8000558
    bl sub_8012D74
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0x32 
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {r4,pc}
// end of function sub_80C0A6C

.thumb
sub_80C0ABE:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0AF4
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c0af8-0x80c0ada-2] // loc_80C0AFC
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    lsl r3, r3, #0x10
    ldrb r4, [r5,#4]
    bl sub_80D930C
    mov r0, #0x96
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0AF4:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C0AF8:    .word loc_80C0AFC
// end of function sub_80C0ABE

loc_80C0AFC:
    lsl r4, r4, #1
    lsl r0, r1, #3
    lsl r4, r5, #4
    lsl r0, r2, #6
.thumb
sub_80C0B04:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0B16
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C0B16:
    pop {pc}
// end of function sub_80C0B04

.thumb
sub_80C0B18:
    push {r4,r7,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x11
    bne loc_80C0B6A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r4, #0
    ldrb r3, [r5,#4]
    cmp r3, #3
    bne loc_80C0B36
    add r4, #0xa
loc_80C0B36:
    lsl r4, r4, #8
    add r4, #1
    lsl r4, r4, #8
    add r4, #0x4d 
    mov r3, #0
    bl sub_80E17DE
    ldrb r1, [r0]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r0]
    mov r0, #1
    bl sub_8012D7C
    mov r1, #0x29 
    ldrb r0, [r5,#4]
    cmp r0, #3
    bne loc_80C0B5C
    mov r1, #0x33 
loc_80C0B5C:
    mov r4, #0x1a
    lsl r4, r4, #8
    orr r4, r1
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
loc_80C0B6A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0B7A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C0B7A:
    pop {r4,r7,pc}
// end of function sub_80C0B18

loc_80C0B7C:
    push {r6,lr}
    ldr r1, [pc, #0x80c0b8c-0x80c0b7e-2] // off_80C0B90
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C0B8C:    .word off_80C0B90
off_80C0B90:    .word sub_80C0B9C+1
    .word sub_80C0BC2+1
    .word sub_80C0CAE+1
.thumb
sub_80C0B9C:
    push {lr}
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #1
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x70]
    bl sub_80D99A8
    mov r0, #0x56 
    add r0, #0xff
    bl f500_8000558
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C0B9C

.thumb
sub_80C0BC2:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x70]
    bl sub_80D99A8
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0C7A
    ldrh r3, [r5,#0x22]
    ldr r1, [pc, #0x80c0c8c-0x80c0bd4-4] // dword_80C0C90
    ldrh r2, [r1,r3]
    add r4, r2, #0
    add r3, #2
    ldrh r0, [r1,r3]
    lsl r0, r0, #0x10
    add r3, #2
    ldrh r1, [r1,r3]
    lsl r1, r1, #0x10
    add r3, #2
    strh r3, [r5,#0x22]
    bl sub_80C0748
    cmp r4, #0x50 
    beq loc_80C0BF8
    mov r0, #3
    strh r0, [r5,#0x20]
    b locret_80C0C7A
loc_80C0BF8:
    mov r1, #0x28 
    cmp r0, #0
    beq loc_80C0C00
    strh r1, [r0,#0x20]
loc_80C0C00:
    bl sub_800AB54
    lsl r0, r0, #1
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x32 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c0c80-0x80c0c14-4] // dword_80C0C84
    ldrh r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c0c7c-0x80c0c1a-2] // =0xB050002
    mov r7, #3
    mov r2, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    push {r0,r1}
    bl sub_80CD6D6
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_8009A52
    mov r4, #0x10
    tst r0, r4
    bne loc_80C0C50
    bl sub_800AB54
    pop {r1,r2}
    add r0, r0, r1
    add r1, r2, #0
    bl sub_8009A52
    tst r0, r4
    bne loc_80C0C52
    mov r0, #0
    str r0, [r5,#0x74]
    b loc_80C0C6E
loc_80C0C50:
    pop {r0,r1}
loc_80C0C52:
    mov r0, #1
    str r0, [r5,#0x74]
    bl sub_80C076C
    mov r0, #2
    mov r1, #0x20 
    bl sub_8025FE0
    mov r0, #0x64 
    lsl r0, r0, #0x10
    mov r1, #0
    mov r2, #0x53 
    bl sub_80C0748
loc_80C0C6E:
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0C7A:
    pop {r4,r6,r7,pc}
dword_80C0C7C:    .word 0xB050002
off_80C0C80:    .word dword_80C0C84
dword_80C0C84:    .word 0xC80064, 0x190012C
off_80C0C8C:    .word dword_80C0C90
dword_80C0C90:    .word 0x4004E
    .word 0x4E0030
    .word 0x290016
    .word 0x27004F
    .word 0x4F0018
    .word 0xB0043
    .word 0x600050
    .hword 0xFFF8
// end of function sub_80C0BC2

.thumb
sub_80C0CAE:
    push {r4,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    bne loc_80C0CCA
    ldr r0, [r5,#0x70]
    bl sub_80D99A8
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C0CCA
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80C0CCA:
    ldr r0, [r5,#0x74]
    cmp r0, #0
    beq loc_80C0CFA
    ldrh r0, [r5,#0x20]
    cmp r0, #0x36 
    bne loc_80C0CEA
    mov r0, #0x64 
    lsl r0, r0, #0x10
    mov r1, #0
    mov r2, #0x54 
    bl sub_80C0748
    cmp r0, #0
    beq loc_80C0CFA
    mov r1, #0x14
    strh r1, [r0,#0x20]
loc_80C0CEA:
    cmp r0, #0x22 
    bne loc_80C0CFA
    mov r0, #0x64 
    lsl r0, r0, #0x10
    mov r1, #0
    mov r2, #0x55 
    bl sub_80C0748
loc_80C0CFA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0D0A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C0D0A:
    pop {r4,pc}
// end of function sub_80C0CAE

.thumb
sub_80C0D0C:
    push {r6,lr}
    ldr r1, [pc, #0x80c0d1c-0x80c0d0e-2] // off_80C0D20
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C0D1C:    .word off_80C0D20
off_80C0D20:    .word sub_80C0D34+1
    .word sub_80C0DA6+1
    .word sub_80C0DD8+1
    .word sub_80C0E44+1
    .word sub_80C0E66+1
// end of function sub_80C0D0C

.thumb
sub_80C0D34:
    push {r4,r6,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0D62
    mov r0, #1
    strb r0, [r5,#0xb]
    ldr r0, [r5,#0x70]
    bl sub_80D9960
    mov r0, #0x2e 
    strh r0, [r5,#0x20]
    bl sub_80C2F6C
    cmp r0, #4
    blt loc_80C0D54
    mov r0, #3
loc_80C0D54:
    mov r2, #0x74 
    strh r0, [r5,r2]
    add r2, #2
    strh r1, [r5,r2]
    mov r0, #0
    bl sub_80C10D2
loc_80C0D62:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1e
    bgt loc_80C0D72
    mov r1, #4
    tst r0, r1
    bne loc_80C0D72
    bl sub_80C06A8
loc_80C0D72:
    bl loc_80C10EC
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0DA4
    mov r2, #0x74 
    ldrh r0, [r5,r2]
    add r2, #2
    ldrh r1, [r5,r2]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c0e38-0x80c0d8e-2] // loc_80C0E3C
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0x78 
    lsl r3, r3, #0x10
    mov r4, #1
    bl sub_80D9B10
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C0DA4:
    pop {r4,r6,pc}
// end of function sub_80C0D34

.thumb
sub_80C0DA6:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0DB6
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x43 
    strh r0, [r5,#0x20]
loc_80C0DB6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0DD6
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    ble loc_80C0DD2
    mov r0, #0x24 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    b locret_80C0DD6
loc_80C0DD2:
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0DD6:
    pop {pc}
// end of function sub_80C0DA6

.thumb
sub_80C0DD8:
    push {r4,r6,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0DFA
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    bl sub_80C2F6C
    cmp r0, #4
    blt loc_80C0DF2
    mov r0, #3
loc_80C0DF2:
    mov r2, #0x74 
    strh r0, [r5,r2]
    add r2, #2
    strh r1, [r5,r2]
loc_80C0DFA:
    ldrh r0, [r5,#0x20]
    mov r1, #4
    tst r0, r1
    bne loc_80C0E06
    bl sub_80C06A8
loc_80C0E06:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0E34
    mov r2, #0x74 
    ldrh r0, [r5,r2]
    add r2, #2
    ldrh r1, [r5,r2]
    mov r6, #0x28 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c0e38-0x80c0e1e-2] // loc_80C0E3C
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0x78 
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_80D9B10
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C0E34:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80C0E38:    .word loc_80C0E3C
// end of function sub_80C0DD8

loc_80C0E3C:
    lsl r4, r4, #1
    lsl r0, r1, #3
    lsl r4, r5, #4
    lsl r0, r2, #6
.thumb
sub_80C0E44:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0E54
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x43 
    strh r0, [r5,#0x20]
loc_80C0E54:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0E64
    mov r0, #0x24 
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C0E64:
    pop {pc}
// end of function sub_80C0E44

.thumb
sub_80C0E66:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0E7E
    mov r0, #1
    strb r0, [r5,#0xb]
    ldr r0, [r5,#0x70]
    bl sub_80D9980
    mov r0, #1
    bl sub_80C10D2
loc_80C0E7E:
    bl loc_80C10EC
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0E92
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C0E92:
    pop {pc}
// end of function sub_80C0E66

loc_80C0E94:
    push {r6,lr}
    ldr r1, [pc, #0x80c0ea4-0x80c0e96-2] // off_80C0EA8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C0EA4:    .word off_80C0EA8
off_80C0EA8:    .word sub_80C0EB8+1
    .word sub_80C0EFE+1
    .word sub_80C0F34+1
    .word sub_80C0E66+1
.thumb
sub_80C0EB8:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0ED4
    mov r0, #1
    strb r0, [r5,#0xb]
    ldr r0, [r5,#0x70]
    bl sub_80D9960
    mov r0, #0
    bl sub_80C10D2
    mov r0, #0x2e 
    strh r0, [r5,#0x20]
loc_80C0ED4:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1e
    bgt loc_80C0EE6
    mov r1, #4
    tst r0, r1
    bne loc_80C0EE6
    mov r0, #1
    bl sub_80C06D8
loc_80C0EE6:
    bl loc_80C10EC
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0EFC
    mov r0, #0
    bl sub_80C0718
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C0EFC:
    pop {pc}
// end of function sub_80C0EB8

.thumb
sub_80C0EFE:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0F0E
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x36 
    strh r0, [r5,#0x20]
loc_80C0F0E:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1e
    bgt loc_80C0F20
    mov r1, #4
    tst r0, r1
    bne loc_80C0F20
    mov r0, #2
    bl sub_80C06D8
loc_80C0F20:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0F32
    mov r0, #1
    bl sub_80C0718
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C0F32:
    pop {pc}
// end of function sub_80C0EFE

.thumb
sub_80C0F34:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0F44
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x36 
    strh r0, [r5,#0x20]
loc_80C0F44:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C0F54
    mov r0, #0x2e 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C0F54:
    pop {pc}
// end of function sub_80C0F34

loc_80C0F56:
    push {r6,lr}
    ldr r1, [pc, #0x80c0f64-0x80c0f58-4] // off_80C0F68
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C0F64:    .word off_80C0F68
off_80C0F68:    .word sub_80C0F78+1
    .word sub_80C0FD4+1
    asr r5, r2, #1
    lsr r4, r1, #0x20
    lsr r7, r4, #0x19
    lsr r4, r1, #0x20
.thumb
sub_80C0F78:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0F94
    mov r0, #1
    strb r0, [r5,#0xb]
    ldr r0, [r5,#0x70]
    bl sub_80D9960
    mov r0, #0
    bl sub_80C10D2
    mov r0, #0x2e 
    strh r0, [r5,#0x20]
loc_80C0F94:
    bl loc_80C10EC
    ldrh r0, [r5,#0x20]
    sub r0, #1
loc_80C0F9C:
    strh r0, [r5,#0x20]
    bne locret_80C0FC2
    mov r2, #0x74 
    add r2, r2, r5
    ldr r1, [pc, #0x80c0fc4-0x80c0fa4-4] // dword_80C0FC8
    mov r3, #8
loc_80C0FA8:
    ldrb r0, [r1,r3]
    strb r0, [r2,r3]
    sub r3, #1
    bpl loc_80C0FA8
    add r0, r2, #0
    mov r1, #9
    mov r2, #0x10
    bl fA00_8000AA2
    mov r0, #4
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r5,#0x22]
locret_80C0FC2:
    pop {pc}
off_80C0FC4:    .word dword_80C0FC8
dword_80C0FC8:    .word 0x21131211, 0x32312322, 0x33
// end of function sub_80C0F78

.thumb
sub_80C0FD4:
    push {r4,r6,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C0FE4
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0xa
    strh r0, [r5,#0x20]
loc_80C0FE4:
    ldrh r0, [r5,#0x20]
    mov r1, #4
    tst r0, r1
    bne loc_80C0FFC
    ldrh r0, [r5,#0x22]
    add r0, #0x74 
    ldrb r0, [r5,r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_8009D6C
loc_80C0FFC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C1044
    ldrh r0, [r5,#0x22]
    mov r4, #1
loc_80C1008:
    and r4, r0
    add r0, #0x74 
    ldrb r0, [r5,r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r6, #0x28 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c1048-0x80c101c-4] // loc_80C104C
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0x78 
    lsl r3, r3, #0x10
    bl sub_80DA2C2
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    cmp r0, #9
    beq loc_80C103C
    mov r0, #0
    strb r0, [r5,#0xb]
    b locret_80C1044
loc_80C103C:
    mov r0, #0x18
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C1044:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_80C1048:    .word loc_80C104C
// end of function sub_80C0FD4

loc_80C104C:
    lsl r4, r4, #1
    lsl r0, r1, #3
    lsl r4, r5, #4
    lsl r0, r2, #6
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C1064
    mov r0, #0x88
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C1064:
    mov pc, lr
loc_80C1066:
    push {r6,lr}
    ldr r1, [pc, #0x80c1074-0x80c1068-4] // off_80C1078
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C1074:    .word off_80C1078
off_80C1078:    .word sub_80C1080+1
    .word sub_80C1090+1
.thumb
sub_80C1080:
    push {lr}
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80C1090
    pop {pc}
// end of function sub_80C1080

.thumb
sub_80C1090:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C10C4
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_80C07BE
    cmp r0, #4
    bne loc_80C10C0
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    add r0, #4
    cmp r0, #0xc
    blt loc_80C10B0
    mov r0, #0
loc_80C10B0:
    strh r0, [r5,r1]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C10D0
loc_80C10C0:
    mov r0, #0x14
    strh r0, [r5,#0x20]
loc_80C10C4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C10D0
    mov r0, #0
    strb r0, [r5,#0xb]
locret_80C10D0:
    pop {pc}
// end of function sub_80C1090

.thumb
sub_80C10D2:
    str r0, [r5,#0x7c]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80c10e0-0x80c10d6-2] // dword_80C10E4
    ldr r0, [r1,r0]
    str r0, [r5,#0x40]
    mov pc, lr
    .byte 0, 0
off_80C10E0:    .word dword_80C10E4
dword_80C10E4:    .word 0x8000, 0x5555
// end of function sub_80C10D2

loc_80C10EC:
    push {r6,lr}
    mov r6, #0x7c 
    add r6, r6, r5
    ldr r1, [pc, #0x80c1100-0x80c10f2-2] // off_80C1104
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C1100:    .word off_80C1104
off_80C1104:    .word sub_80C1110+1
    .word sub_80C1130+1
    .word nullsub_60+1
.thumb
sub_80C1110:
    push {lr}
    bl sub_800AB54
    ldr r1, [r5,#0x40]
    mul r0, r1
    ldr r1, [r5,#0x34]
    sub r1, r1, r0
    str r1, [r5,#0x34]
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    cmp r0, #8
    blt locret_80C112E
    mov r0, #2
    strb r0, [r6]
locret_80C112E:
    pop {pc}
// end of function sub_80C1110

.thumb
sub_80C1130:
    push {lr}
    bl sub_800AB54
    ldr r1, [r5,#0x40]
    mul r0, r1
    ldr r2, [r5,#0x34]
    add r2, r2, r0
    str r2, [r5,#0x34]
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    cmp r0, #0xc
    blt locret_80C1152
    bl sub_800AB30
    mov r0, #2
    strb r0, [r6]
locret_80C1152:
    pop {pc}
// end of function sub_80C1130

.thumb
nullsub_60:
    mov pc, lr
    .balign 4, 0x00
// end of function nullsub_60

loc_80C1158:
    push {lr}
    ldr r1, [pc, #0x80c116c-0x80c115a-2] // off_80C1170
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C116C:    .word off_80C1170
off_80C1170:    .word sub_80C117C+1
    .word sub_80C11D6+1
    .word sub_8010F0C+1
.thumb
sub_80C117C:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #4
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C117C

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #4
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80C11C2
    bl sub_80033B4
    b locret_80C11D4
loc_80C11C2:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C11D6
locret_80C11D4:
    pop {r4,r7,pc}
.thumb
sub_80C11D6:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c11e8-0x80c11dc-4] // off_80C11EC
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C11E8:    .word off_80C11EC
off_80C11EC:    .word sub_8010CDC+1
    .word sub_80C1218+1
off_80C11F4:    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C1220+1
    .word loc_80F0E20+1
    .word loc_80F0EEC+1
    .word loc_80F11A2+1
    .word loc_80F1304+1
// end of function sub_80C11D6

.thumb
sub_80C1218:
    push {lr}
    bl sub_8010F52
    pop {pc}
// end of function sub_80C1218

loc_80C1220:
    push {lr}
    mov r6, #0x74 
    add r6, r6, r5
    ldr r1, [pc, #0x80c1234-0x80c1226-2] // off_80C1238
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C1234:    .word off_80C1238
off_80C1238:    .word sub_80C123C+1
.thumb
sub_80C123C:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #4
    blt loc_80C1272
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C1272
    bl sub_80C1390
    tst r0, r0
    beq loc_80C1272
    mov r0, #0
    strb r0, [r6,#8]
    bl sub_80C131C
    mov r0, #8
    bl sub_80C1354
    mov r0, #0xa
    bl sub_800C960
    bl loc_80F1304
    b locret_80C1316
loc_80C1272:
    ldrb r0, [r6,#9]
    cmp r0, #2
    blt loc_80C12A2
    bl sub_80C13EC
    beq loc_80C12A2
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #4
    bl sub_80C1354
    mov r0, #9
    bl sub_800C960
    bl loc_80F11A2
    b locret_80C1316
loc_80C12A2:
    ldrb r0, [r6,#0xa]
    cmp r0, #6
    blt loc_80C12DC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C12DC
    bl sub_80C1390
    tst r0, r0
    beq loc_80C12DC
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #0
    strb r0, [r6,#0xa]
    bl sub_80C1328
    mov r0, #0
    bl sub_80C1354
    mov r0, #8
    bl sub_800C960
    bl loc_80F0EEC
    b locret_80C1316
loc_80C12DC:
    bl sub_80F14AE
    beq locret_80C1316
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_8012F4A
    ldr r1, [pc, #0x80c1318-0x80c12ee-2] // =0xA000
    tst r0, r1
    beq loc_80C12FE
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne loc_80C1308
loc_80C12FE:
    ldrb r0, [r6,#0xa]
    cmp r0, #6
    bge loc_80C1308
    add r0, #1
    strb r0, [r6,#0xa]
loc_80C1308:
    bl sub_80C133C
    mov r0, #7
    bl sub_800C960
    bl loc_80F0E20
locret_80C1316:
    pop {pc}
dword_80C1318:    .word 0xA000
// end of function sub_80C123C

.thumb
sub_80C131C:
    ldr r0, [r5,#0x58]
    mov r1, #0x70 
    add r1, r1, r0
    ldrb r2, [r5,#4]
    strb r2, [r1,#0xd]
    mov pc, lr
// end of function sub_80C131C

.thumb
sub_80C1328:
    ldr r0, [r5,#0x58]
    mov r1, #0x70 
    add r1, r1, r0
    mov r2, #2
    ldrb r3, [r5,#4]
    tst r3, r3
    beq loc_80C1338
    mov r2, #3
loc_80C1338:
    strb r2, [r1,#0xd]
    mov pc, lr
// end of function sub_80C1328

.thumb
sub_80C133C:
    ldr r0, [r5,#0x58]
    mov r1, #0x70 
    add r1, r1, r0
    ldr r2, [pc, #0x80c134c-0x80c1342-2] // loc_80C1350
    ldrb r3, [r5,#4]
    ldrb r2, [r2,r3]
    strh r2, [r1,#0x18]
    mov pc, lr
off_80C134C:    .word loc_80C1350
// end of function sub_80C133C

loc_80C1350:
    add r2, r3, r0
    asr r6, r2, #0x10
.thumb
sub_80C1354:
    ldr r1, [pc, #0x80c1370-0x80c1354-4] // dword_80C137C
    add r1, r1, r0
    ldrb r2, [r5,#4]
    ldrb r1, [r1,r2]
    ldr r2, [pc, #0x80c1388-0x80c135c-4] // byte_80C138C
    lsr r0, r0, #2
    ldrb r0, [r2,r0]
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r3, [r5,#0x58]
    mov r2, #0x70 
    add r3, r3, r2
    str r0, [r3,#8]
    mov pc, lr
off_80C1370:    .word dword_80C137C
    .word dword_80C1380
    .word dword_80C1384
dword_80C137C:    .word 0xC8783C1E
dword_80C1380:    .word 0x3C28140A
dword_80C1384:    .word 0xC8783C1E
off_80C1388:    .word byte_80C138C
byte_80C138C:    .byte 0x1E
    .hword 0x280A
    .byte 0
// end of function sub_80C1354

.thumb
sub_80C1390:
    push {r7,lr}
    sub sp, sp, #0x18
    bl sub_800ACF6
    beq loc_80C13D4
    ldrb r7, [r5,#0x16]
    lsl r7, r7, #3
    ldr r1, [pc, #0x80c13d8-0x80c139e-2] // dword_80C13DC
    add r1, r1, r7
    mov r0, #6
    tst r7, r7
    bne loc_80C13AA
    mov r0, #1
loc_80C13AA:
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_800A0A4
    add r7, r0, #0
    beq loc_80C13D4
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
loc_80C13D4:
    add sp, sp, #0x18
    pop {r7,pc}
off_80C13D8:    .word dword_80C13DC
dword_80C13DC:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80C1390

.thumb
sub_80C13EC:
    push {r7,lr}
    sub sp, sp, #0x18
    bl sub_800AD20
    bne loc_80C13FA
    mov r0, #0
    b loc_80C1456
loc_80C13FA:
    bl sub_8012F4A
    ldr r1, [pc, #0x80c1478-0x80c13fe-2] // =0xA000
    tst r0, r1
    bne loc_80C1422
    ldrb r0, [r5,#0x16]
    add r1, r0, #0
    lsl r0, r0, #3
    lsl r1, r1, #2
    add r0, r0, r1
    ldr r1, [pc, #0x80c145c-0x80c140e-2] // dword_80C1460
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    ldr r1, [r1,#8]
    add r7, sp, #0
    bl sub_800A2B0
    add r7, r0, #0
    bne loc_80C1444
loc_80C1422:
    ldrb r0, [r5,#0x16]
    add r1, r0, #0
    lsl r0, r0, #3
    lsl r1, r1, #2
    add r0, r0, r1
    ldr r1, [pc, #0x80c145c-0x80c142c-4] // dword_80C1460
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009F90
    add r7, r0, #0
    bne loc_80C1444
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80C1456
loc_80C1444:
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C1456:
    tst r0, r0
    add sp, sp, #0x18
    pop {r7,pc}
off_80C145C:    .word dword_80C1460
dword_80C1460:    .word 0x10, 0xF8800A0, 0x2800000, 0x30, 0xF880080, 0x1800000
dword_80C1478:    .word 0xA000
// end of function sub_80C13EC

loc_80C147C:
    push {lr}
    ldr r1, [pc, #0x80c1498-0x80c147e-2] // =0x80C148C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
    asr r5, r3, #0x12
    lsr r4, r1, #0x20
    asr r1, r6, #0x13
    lsr r4, r1, #0x20
    add r1, r6, r4
    lsr r4, r1, #0x20
dword_80C1498:    .word 0x80C148C
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #8
    mov r2, #1
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800AB30
    ldrb r0, [r5,#0x16]
    bl loc_8002F8E
    mov r0, #1
    bl sub_800B91C
    bl sub_8002DCC
    ldr r0, [pc, #0x80c14ec-0x80c14da-2] // =0x7FFF
    bl sub_8002F02
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80C14F0
    pop {pc}
    .balign 4, 0x00
dword_80C14EC:    .word 0x7FFF
loc_80C14F0:
    push {lr}
    ldr r1, [pc, #0x80c151c-0x80c14f2-2] // off_80C1508
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    bl sub_80C1A54
    pop {pc}
    .balign 4, 0x00
off_80C1508:    .word sub_80C1520+1
    .word loc_80C15C2+1
    .word loc_80C16FE+1
    .word loc_80C1816+1
    .word loc_80C18A6+1
off_80C151C:    .word off_80C1508
.thumb
sub_80C1520:
    push {lr}
    ldr r1, [pc, #0x80c1530-0x80c1522-2] // off_80C1534
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C1530:    .word off_80C1534
off_80C1534:    .word sub_80C153C+1
    .word sub_80C159E+1
// end of function sub_80C1520

.thumb
sub_80C153C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C156A
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x14
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x2e 
    bl sub_80E17DE
    mov r0, #0x1f
    strb r0, [r5,#0x19]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C159C
loc_80C156A:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    lsr r0, r0, #1
    bcc loc_80C1584
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_80C1584:
    ldrb r0, [r5,#0x19]
    sub r0, #2
    strb r0, [r5,#0x19]
    bgt locret_80C159C
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C159C:
    pop {pc}
// end of function sub_80C153C

.thumb
sub_80C159E:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C15B0
    mov r0, #0xf
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C15C0
loc_80C15B0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C15C0
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C15C0:
    pop {pc}
// end of function sub_80C159E

loc_80C15C2:
    push {lr}
    ldr r1, [pc, #0x80c15d0-0x80c15c4-4] // off_80C15D4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C15D0:    .word off_80C15D4
off_80C15D4:    .word sub_80C15E8+1
    .word sub_80C1606+1
    .word sub_80C163A+1
    .word sub_80C1678+1
    .word sub_80C16C0+1
.thumb
sub_80C15E8:
    push {lr}
    bl sub_80C193E
    tst r0, r0
    beq loc_80C15FC
    strb r0, [r5,#6]
    strb r1, [r5,#7]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C1604
loc_80C15FC:
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1604:
    pop {pc}
// end of function sub_80C15E8

.thumb
sub_80C1606:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1624
    mov r0, #4
    strh r0, [r5,#0x10]
    mov r0, #0x46 
    add r0, #0xff
    bl f500_8000558
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C1638
loc_80C1624:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C1638
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C1638:
    pop {pc}
// end of function sub_80C1606

.thumb
sub_80C163A:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1652
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #0xf
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xb]
    b loc_80C1666
loc_80C1652:
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    asr r0, r0, #0x10
    cmp r0, #0xa0
    blt loc_80C1666
    mov r0, #0xc
    strh r0, [r5,#0xa]
    b locret_80C1676
loc_80C1666:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C1676
    mov r0, #5
    strh r0, [r5,#0x20]
    bl sub_80C1A66
locret_80C1676:
    pop {pc}
// end of function sub_80C163A

.thumb
sub_80C1678:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1698
    mov r0, #1
    strh r0, [r5,#0x20]
    ldr r0, [r5,#0x48]
    neg r0, r0
    str r0, [r5,#0x48]
    ldrh r1, [r5,#6]
    strh r1, [r5,#0x12]
    bl sub_800AB30
    mov r0, #4
    strb r0, [r5,#0xb]
    b loc_80C16AE
loc_80C1698:
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    asr r0, r0, #0x10
    bgt loc_80C16AE
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    b locret_80C16BE
loc_80C16AE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C16BE
    mov r0, #3
    strh r0, [r5,#0x20]
    bl sub_80C1A66
locret_80C16BE:
    pop {pc}
// end of function sub_80C1678

.thumb
sub_80C16C0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C16EC
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x14
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x2e 
    bl sub_80E17DE
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C16FC
loc_80C16EC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C16FC
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C16FC:
    pop {pc}
// end of function sub_80C16C0

loc_80C16FE:
    push {lr}
    ldr r1, [pc, #0x80c170c-0x80c1700-4] // off_80C1710
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C170C:    .word off_80C1710
off_80C1710:    .word sub_80C171C+1
    .word sub_80C1740+1
    .word sub_80C17EA+1
.thumb
sub_80C171C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1732
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #9
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C173E
loc_80C1732:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C173E
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C173E:
    pop {pc}
// end of function sub_80C171C

.thumb
sub_80C1740:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C178A
    push {r7}
    mov r4, #1
    lsl r4, r4, #0x10
    add r4, #7
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    ldrb r1, [r0]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r0]
    pop {r7}
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #3
    strh r0, [r5,#0x22]
    mov r0, #1
    ldrb r1, [r5,#4]
    cmp r1, #5
    bne loc_80C1774
    mov r0, #3
loc_80C1774:
    str r0, [r5,#0x60]
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_80C1A3C
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C17E8
loc_80C178A:
    ldr r0, [r5,#0x68]
    add r0, #1
    mov r1, #7
    and r0, r1
    str r0, [r5,#0x68]
    cmp r0, #1
    bne loc_80C17A0
    mov r0, #0x32 
    add r0, #0xff
    bl f500_8000558
loc_80C17A0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C17E8
    mov r0, #0xa
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    ble loc_80C17C4
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_80C1A3C
    b locret_80C17E8
loc_80C17C4:
    ldr r0, [r5,#0x60]
    sub r0, #1
    str r0, [r5,#0x60]
    beq loc_80C17E4
    mov r0, #3
    strh r0, [r5,#0x22]
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_80C1A3C
    mov r0, #0xff
    strb r0, [r5,#0x11]
    pop {pc}
loc_80C17E4:
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C17E8:
    pop {pc}
// end of function sub_80C1740

.thumb
sub_80C17EA:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1804
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C1814
loc_80C1804:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C1814
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1814:
    pop {pc}
// end of function sub_80C17EA

loc_80C1816:
    push {lr}
    ldr r1, [pc, #0x80c1824-0x80c1818-4] // off_80C1828
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C1824:    .word off_80C1828
off_80C1828:    .word sub_80C1830+1
    .word sub_80C1864+1
.thumb
sub_80C1830:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C184E
    mov r0, #4
    strh r0, [r5,#0x10]
    mov r0, #0x46 
    add r0, #0xff
    bl f500_8000558
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C1862
loc_80C184E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C1862
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C1862:
    pop {pc}
// end of function sub_80C1830

.thumb
sub_80C1864:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C187C
    mov r0, #4
    strh r0, [r5,#0x20]
    mov r0, #0xf
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xb]
    b loc_80C1894
loc_80C187C:
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    asr r0, r0, #0x10
    cmp r0, #0xa0
    blt loc_80C1894
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C18A4
loc_80C1894:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C18A4
    mov r0, #5
    strh r0, [r5,#0x20]
    bl sub_80C1A66
locret_80C18A4:
    pop {pc}
// end of function sub_80C1864

loc_80C18A6:
    push {lr}
    ldr r1, [pc, #0x80c18b4-0x80c18a8-4] // off_80C18B8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C18B4:    .word off_80C18B8
off_80C18B8:    .word sub_80C18C0+1
    .word sub_80C18E8+1
.thumb
sub_80C18C0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C18D2
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C18E6
loc_80C18D2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C18E6
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_80E2C16
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C18E6:
    pop {pc}
// end of function sub_80C18C0

.thumb
sub_80C18E8:
    push {r6,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C1914
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    ldrh r6, [r5,#0x2c]
    mov r2, #3
    mul r6, r2
    bl sub_80D7294
    ldrb r0, [r5,#0x16]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80c1924-0x80c1902-2] // byte_80C1928
    ldrb r1, [r1,r2]
    bl sub_800F4CA
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C1920
loc_80C1914:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C1920
    mov r0, #8
    str r0, [r5,#8]
locret_80C1920:
    pop {r6,pc}
    .balign 4, 0x00
off_80C1924:    .word byte_80C1928
byte_80C1928:    .byte 0x32
    .byte 0x32, 0x32, 0x32
    .byte 0x0
    .byte 0x0, 0x0, 0x0
// end of function sub_80C18E8

    push {lr}
    ldr r0, [r5,#0x64]
    mov r1, #0
    strb r1, [r0]
    bl sub_80033B4
    pop {pc}
.thumb
sub_80C193E:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x34
    mov r0, #0
    str r0, [sp,#0x18]
    str r0, [sp,#0x1c]
    mov r0, #0xff
    str r0, [sp,#0x28]
    str r0, [sp,#0x2c]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r2, [pc, #0x80c1a24-0x80c1952-2] // off_80C1A28
    ldr r2, [r2,r0]
    mov r3, #0
    add r7, sp, #0
    bl sub_8009F90
    str r0, [sp,#0x14]
    add r6, r0, #0
    beq loc_80C1A1E
    mov r3, #0
    str r3, [sp,#0x30]
    mov r4, #0
    add r6, sp, #8
    add r7, sp, #0
loc_80C196E:
    ldr r1, [sp,#0x30]
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    ldrb r2, [r5,#0x12]
    ldrb r1, [r5,#0x16]
    tst r1, r1
    bne loc_80C1988
    cmp r0, r2
    b loc_80C198A
loc_80C1988:
    cmp r2, r0
loc_80C198A:
    ble loc_80C19BA
    bl sub_800AB54
    neg r0, r0
    ldr r1, [sp,#0x20]
    add r0, r0, r1
    str r1, [sp,#0x20]
    ldr r1, [sp,#0x24]
    str r0, [sp,#0x20]
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r3, [pc, #0x80c1a30-0x80c19a0-4] // dword_80C1A34
    ldr r3, [r3,r2]
    mov r2, #0
    bl sub_8009E78
    tst r0, r0
    beq loc_80C19BA
    ldr r0, [sp,#0x20]
    ldr r1, [sp,#0x24]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r6,r4]
    add r4, #1
loc_80C19BA:
    ldr r0, [sp,#0x30]
    add r0, #1
    str r0, [sp,#0x30]
    ldr r1, [sp,#0x14]
    cmp r0, r1
    blt loc_80C196E
    str r4, [sp,#0x14]
    tst r4, r4
    beq loc_80C1A1A
    mov r4, #0
    add r7, sp, #8
loc_80C19D0:
    ldrb r0, [r7,r4]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    ldrb r2, [r5,#0x12]
    sub r2, r0, r2
    cmp r2, #0
    bge loc_80C19E6
    neg r2, r2
loc_80C19E6:
    ldrb r3, [r5,#0x13]
    sub r3, r1, r3
    cmp r3, #0
    bge loc_80C19F0
    neg r3, r3
loc_80C19F0:
    ldr r6, [sp,#0x28]
    cmp r2, r6
    blt loc_80C1A06
    bgt loc_80C1A12
    ldr r6, [sp,#0x2c]
    cmp r1, r6
    blt loc_80C1A06
    bgt loc_80C1A12
    ldr r6, [sp,#0x1c]
    cmp r1, r6
    bge loc_80C1A12
loc_80C1A06:
    ldr r0, [sp,#0x20]
    ldr r1, [sp,#0x24]
    str r0, [sp,#0x18]
    str r1, [sp,#0x1c]
    str r2, [sp,#0x28]
    str r3, [sp,#0x2c]
loc_80C1A12:
    add r4, #1
    ldr r6, [sp,#0x14]
    cmp r4, r6
    blt loc_80C19D0
loc_80C1A1A:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
loc_80C1A1E:
    add sp, sp, #0x34
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C1A24:    .word off_80C1A28
off_80C1A28:    .word LCDControl
    .word start_
off_80C1A30:    .word dword_80C1A34
dword_80C1A34:    .word 0x7800000, 0xB800000
// end of function sub_80C193E

.thumb
sub_80C1A3C:
    push {lr}
    mov r2, #0
    mov r3, #0x14
    lsl r3, r3, #0x10
    ldr r4, [pc, #0x80c1a50-0x80c1a44-4] // =0x4050001
    ldr r6, [r5,#0x2c]
    mov r7, #3
    bl sub_80CD712
    pop {pc}
dword_80C1A50:    .word 0x4050001
// end of function sub_80C1A3C

.thumb
sub_80C1A54:
    push {lr}
    ldrb r1, [r5,#0x19]
    lsl r0, r1, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    pop {pc}
// end of function sub_80C1A54

.thumb
sub_80C1A66:
    push {lr}
    mov r0, #0x10
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    bl sub_80145C0
    mov r4, #0x2e 
    bl sub_80E17DE
    pop {pc}
// end of function sub_80C1A66

.thumb
sub_80C1A7C:
    push {lr}
    push {r0,r1,r3,r5}
    mov r0, #0x2c 
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80C1A9E
    strb r1, [r0,#0x12]
    strb r1, [r0,#0xc]
    strb r2, [r0,#0x13]
    strb r2, [r0,#0xd]
    strb r3, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x64]
    mov r1, #1
    strb r1, [r7]
locret_80C1A9E:
    pop {pc}
// end of function sub_80C1A7C

loc_80C1AA0:
    push {lr}
    ldr r1, [pc, #0x80c1ab4-0x80c1aa2-2] // off_80C1AB8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C1AB4:    .word off_80C1AB8
off_80C1AB8:    .word sub_80C1AC4+1
    .word sub_80C1B1A+1
    .word sub_8010F0C+1
.thumb
sub_80C1AC4:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0xd
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C1AC4

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C1AEC
    mov r0, #3
loc_80C1AEC:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C1B06
    bl sub_80033B4
    b locret_80C1B18
loc_80C1B06:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C1B1A
locret_80C1B18:
    pop {pc}
.thumb
sub_80C1B1A:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c1b2c-0x80c1b20-4] // off_80C1B30
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C1B2C:    .word off_80C1B30
off_80C1B30:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80C1B68+1
    .word sub_8010EB4+1
    .word sub_80C1B80+1
    .word loc_80C1BA2+1
    .word sub_80C1E3C+1
    .word loc_80C1E50+1
    .word loc_80C204C+1
    .word loc_80C1F44+1
    .word loc_80C222A+1
    .word loc_80C22F6+1
    .word loc_80C23FC+1
// end of function sub_80C1B1A

.thumb
sub_80C1B68:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C1B7A
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
loc_80C1B7A:
    bl sub_8010E34
    pop {pc}
// end of function sub_80C1B68

.thumb
sub_80C1B80:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C1B9C
    ldr r2, [r5,#0x74]
    cmp r2, #0
    beq loc_80C1B9C
    lsr r1, r2, #8
    mov r0, #0xff
    and r0, r2
    bl sub_801436A
    mov r0, #0
    str r0, [r5,#0x74]
loc_80C1B9C:
    bl ho_8010F5A
    pop {pc}
// end of function sub_80C1B80

loc_80C1BA2:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c1bb4-0x80c1baa-2] // off_80C1BB8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80C1BB4:    .word off_80C1BB8
off_80C1BB8:    .word sub_80C1BBC+1
.thumb
sub_80C1BBC:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c1bcc-0x80c1bc0-4] // off_80C1BD0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C1BCC:    .word off_80C1BD0
off_80C1BD0:    .word sub_80C1BD8+1
    .word sub_80C1C68+1
// end of function sub_80C1BBC

.thumb
sub_80C1BD8:
    push {r7,lr}
    sub sp, sp, #0x18
    ldr r3, [r5,#0x54]
    ldrh r0, [r5,#0x2e]
    ldrb r1, [r3,#5]
    cmp r0, r1
    beq loc_80C1BE8
    strb r0, [r3,#5]
loc_80C1BE8:
    ldrb r0, [r6,#9]
    cmp r0, #8
    blt loc_80C1C08
    mov r0, #5
    mov r1, #2
    bl sub_80C1D36
    cmp r0, #0
    beq loc_80C1C08
    mov r0, #0xd
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6,#9]
    b loc_80C1C60
loc_80C1C08:
    ldrb r0, [r6,#8]
    cmp r0, #2
    blt loc_80C1C4E
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80c1c64-0x80c1c18-4] // start_
    mov r3, #0
    mov r7, sp
    bl sub_80B5784
    cmp r0, #0
    beq loc_80C1C30
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80C1C42
loc_80C1C30:
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80C1C4E
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C1C42:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    mov r0, #0
    strb r0, [r6,#8]
    b loc_80C1C60
loc_80C1C4E:
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #4
    strb r0, [r6,#1]
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
loc_80C1C60:
    add sp, sp, #0x18
    pop {r7,pc}
off_80C1C64:    .word start_
// end of function sub_80C1BD8

.thumb
sub_80C1C68:
    push {lr}
    bl sub_80C1C74
    mov r0, #0
    strb r0, [r6,#1]
    pop {pc}
// end of function sub_80C1C68

.thumb
sub_80C1C74:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C1CB6
    ldr r1, [pc, #0x80c1ce8-0x80c1c86-2] // =0xA000
    tst r0, r1
    beq loc_80C1C98
    ldr r4, [pc, #0x80c1cf8-0x80c1c8c-4] // dword_80C1CFC
    bl sub_80C1CD6
    cmp r0, #0
    beq loc_80C1CB6
    b loc_80C1CC4
loc_80C1C98:
    ldr r4, [pc, #0x80c1cec-0x80c1c98-4] // dword_80C1D00
    bl sub_80C1CD6
    tst r0, r0
    bne loc_80C1CC4
    ldr r4, [pc, #0x80c1cf0-0x80c1ca2-2] // dword_80C1D00
    bl sub_80C1CD6
    tst r0, r0
    bne loc_80C1CC4
    ldr r4, [pc, #0x80c1cf4-0x80c1cac-4] // loc_80C1D10
    bl sub_80C1CD6
    tst r0, r0
    bne loc_80C1CC4
loc_80C1CB6:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C1CD4
loc_80C1CC4:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C1F44
locret_80C1CD4:
    pop {r6,pc}
// end of function sub_80C1C74

.thumb
sub_80C1CD6:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80c1e28-0x80c1cdc-4] // =0x30
    ldr r3, [pc, #0x80c1e30-0x80c1cde-2] // =0xF880080
    bl sub_800F7E8
    pop {pc}
    .balign 4, 0x00
dword_80C1CE8:    .word 0xA000
off_80C1CEC:    .word dword_80C1D00
dword_80C1CF0:    .word 0x80C1D0D
off_80C1CF4:    .word loc_80C1D10
off_80C1CF8:    .word dword_80C1CFC
dword_80C1CFC:    .word 0xFF0001
dword_80C1D00:    .word 0x101FF01, 0x100FF00, 0x1FFFFFF, 0x7F00017F
// end of function sub_80C1CD6

loc_80C1D10:
    lsl r7, r7, #3
    lsl r7, r7, #1
.thumb
sub_80C1D14:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x3c]
    bl sub_800AAEC
    ldr r2, [pc, #0x80c1e2c-0x80c1d20-4] // =0x10
    ldr r3, [pc, #0x80c1e34-0x80c1d22-2] // =0x3800000
    bl sub_8009E78
    pop {pc}
// end of function sub_80C1D14

    push {lr}
    ldr r2, [pc, #0x80c1e2c-0x80c1d2c-4] // =0x10
    ldr r3, [pc, #0x80c1e34-0x80c1d2e-2] // =0x3800000
    bl sub_8009E78
    pop {pc}
.thumb
sub_80C1D36:
    push {lr}
    ldr r2, [pc, #0x80c1e28-0x80c1d38-4] // =0x30
    ldr r3, [pc, #0x80c1e30-0x80c1d3a-2] // =0xF880080
    bl sub_8009E78
    pop {pc}
// end of function sub_80C1D36

.thumb
sub_80C1D42:
    push {r4,r6,r7,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c1d8c-0x80c1d48-4] // =0xA000
    tst r0, r1
    beq loc_80C1D56
    bl sub_80B56B8
    mov r2, #0
    b locret_80C1D78
loc_80C1D56:
    ldr r4, [pc, #0x80c1d90-0x80c1d56-2] // dword_80C1D9C
    bl sub_80C1D7A
    tst r0, r0
    bne loc_80C1D76
    ldr r4, [pc, #0x80c1d94-0x80c1d60-4] // dword_80C1D9C
    bl sub_80C1D7A
    tst r0, r0
    bne loc_80C1D76
    ldr r4, [pc, #0x80c1d98-0x80c1d6a-2] // dword_80C1DA4
    bl sub_80C1D7A
    tst r0, r0
    mov r2, #1
    b locret_80C1D78
loc_80C1D76:
    mov r2, #0
locret_80C1D78:
    pop {r4,r6,r7,pc}
// end of function sub_80C1D42

.thumb
sub_80C1D7A:
    push {lr}
    bl sub_800A15E
    ldr r2, [pc, #0x80c1e2c-0x80c1d80-4] // =0x10
    ldr r3, [pc, #0x80c1e38-0x80c1d82-2] // =0x37880080
    bl sub_800F7E8
    pop {pc}
    .balign 4, 0x00
dword_80C1D8C:    .word 0xA000
off_80C1D90:    .word dword_80C1D9C
dword_80C1D94:    .word 0x80C1D9F
off_80C1D98:    .word dword_80C1DA4
dword_80C1D9C:    .word 0x17F0001, 0x7F0101FF
dword_80C1DA4:    .word 0xFFFFFF, 0x7F01FF
// end of function sub_80C1D7A

.thumb
sub_80C1DAC:
    push {r4,r6,r7,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c1e08-0x80c1db2-2] // =0xA000
    tst r0, r1
    beq loc_80C1DC0
    bl sub_80B56B8
    mov r2, #0
    b locret_80C1DF4
loc_80C1DC0:
    ldr r4, [pc, #0x80c1e0c-0x80c1dc0-4] // dword_80C1E18
    bl sub_80C1DF6
    tst r0, r0
    bne loc_80C1DEE
    ldr r4, [pc, #0x80c1e10-0x80c1dca-2] // dword_80C1E18
    bl sub_80C1DF6
    tst r0, r0
    bne loc_80C1DF2
    ldr r4, [pc, #0x80c1e14-0x80c1dd4-4] // dword_80C1E18
    bl sub_80C1DF6
    tst r0, r0
    beq locret_80C1DF4
    push {r0,r1}
    bl sub_800A15E
    add r3, r0, #0
    pop {r0,r1}
    mov r2, #0
    cmp r3, r0
    bgt loc_80C1DF2
loc_80C1DEE:
    mov r2, #1
    b locret_80C1DF4
loc_80C1DF2:
    mov r2, #0
locret_80C1DF4:
    pop {r4,r6,r7,pc}
// end of function sub_80C1DAC

.thumb
sub_80C1DF6:
    push {lr}
    bl sub_800A15E
    ldr r2, [pc, #0x80c1e2c-0x80c1dfc-4] // =0x10
    ldr r3, [pc, #0x80c1e38-0x80c1dfe-2] // =0x37880080
    bl sub_800F7E8
    pop {pc}
    .balign 4, 0x00
dword_80C1E08:    .word 0xA000
off_80C1E0C:    .word dword_80C1E18
dword_80C1E10:    .word 0x80C1E1B
dword_80C1E14:    .word 0x80C1E1E
dword_80C1E18:    .word 0x17F00FF, 0xFFFF7F00, 0x1FFFF01, 0x7F0101
off_80C1E28:    .word 0x30
dword_80C1E2C:    .word 0x10
dword_80C1E30:    .word 0xF880080
dword_80C1E34:    .word 0x3800000
dword_80C1E38:    .word 0x37880080
// end of function sub_80C1DF6

.thumb
sub_80C1E3C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C1E4E
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1E4E:
    pop {pc}
// end of function sub_80C1E3C

loc_80C1E50:
    push {r6,lr}
    ldr r1, [pc, #0x80c1e60-0x80c1e52-2] // off_80C1E64
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C1E60:    .word off_80C1E64
off_80C1E64:    .word sub_80C1E70+1
    .word sub_80C1EBC+1
    .word sub_80C1F00+1
.thumb
sub_80C1E70:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C1EAE
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C1EBA
loc_80C1EAE:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1EBA:
    pop {r6,pc}
// end of function sub_80C1E70

.thumb
sub_80C1EBC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C1EFE
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #1
    bl sub_8012D7C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C1EFE:
    pop {pc}
// end of function sub_80C1EBC

.thumb
sub_80C1F00:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C1F3A
    ldrb r0, [r5,#9]
    cmp r0, #0xd
    beq loc_80C1F1E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
loc_80C1F1E:
    ldrb r0, [r5,#9]
    cmp r0, #0xd
    bne loc_80C1F32
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c1f3c-0x80c1f26-2] // loc_80C1F40
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    b locret_80C201A
loc_80C1F32:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1F3A:
    pop {pc}
off_80C1F3C:    .word loc_80C1F40
loc_80C1F40:
    asr r4, r2, #0x10
    asr r4, r2, #0x10
loc_80C1F44:
    push {r6,lr}
    ldr r1, [pc, #0x80c1f54-0x80c1f46-2] // loc_80C1F58
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C1F54:    .word loc_80C1F58
loc_80C1F58:
    sub r1, r4, #5
    lsr r4, r1, #0x20
    sub r5, r7, #6
    lsr r4, r1, #0x20
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C1FA6
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0xa
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80c1fb4-0x80c1f8a-2] // =0x40000
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80c1fb8-0x80c1f96-2] // =0x26666
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl sub_80C1EBC
    b locret_80C1FB2
loc_80C1FA6:
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C1FB2:
    pop {r6,pc}
dword_80C1FB4:    .word 0x40000
dword_80C1FB8:    .word 0x26666
    push {lr}
    ldrh r0, [r5,#0x20]
    mov r1, #3
    tst r0, r1
    bne loc_80C1FCC
    mov r0, #8
    bl sub_80C201C
loc_80C1FCC:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C201A
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C201A:
    pop {pc}
// end of function sub_80C1F00

.thumb
sub_80C201C:
    push {r4,r6,r7,lr}
    ldrb r4, [r5,#0x16]
    lsl r4, r4, #8
    ldrb r1, [r5,#0x10]
    add r4, r4, r1
    lsl r4, r4, #8
    mov r1, #0xd
    add r4, r4, r1
    lsl r4, r4, #8
    add r4, #8
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    ldr r6, [pc, #0x80c2044-0x80c2036-2] // =0x814A
    ldr r7, [pc, #0x80c2048-0x80c2038-4] // =0x10000
    add r7, r7, r0
    bl sub_80E4F04
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C2044:    .word 0x814A
dword_80C2048:    .word 0x10000
// end of function sub_80C201C

loc_80C204C:
    push {r6,lr}
    ldr r1, [pc, #0x80c205c-0x80c204e-2] // off_80C2060
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C205C:    .word off_80C2060
off_80C2060:    .word sub_80C2070+1
    .word sub_80C20EC+1
    .word sub_80C2160+1
    .word sub_80C21E4+1
.thumb
sub_80C2070:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C209C
    bl sub_8001AF6
    mov r1, #1
    tst r0, r1
    bne loc_80C2090
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C20E4
loc_80C2090:
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
loc_80C209C:
    bl sub_8012F4A
    ldr r1, [pc, #0x80c20e8-0x80c20a0-4] // =0xE000
    tst r0, r1
    bne loc_80C20D4
    bl sub_800A146
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    bne loc_80C20D4
    ldrb r0, [r5,#0x16]
    bl sub_8007ECA
    mov r1, #1
    eor r1, r0
    add r4, r1, #0
    mov r0, #0x40 
    bl sub_800C19A
    beq loc_80C20D4
    mov r0, #4
    strh r0, [r5,#0xa]
    mov r0, #0xbe
    bl f500_8000558
    mov r0, #3
    strb r0, [r5,#0x10]
    b locret_80C20E4
loc_80C20D4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C20E4
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C20E4:
    pop {pc}
    .balign 4, 0x00
dword_80C20E8:    .word 0xE000
// end of function sub_80C2070

.thumb
sub_80C20EC:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C2148
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl loc_800AB56
    add r6, r0, #0
    bl sub_800A15E
    add r0, r0, r6
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #6
    strh r0, [r5,#0x20]
    lsl r3, r3, #2
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    sub r1, r1, r0
    ldr r0, [pc, #0x80c2158-0x80c212c-4] // =0x6AAAB
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x13]
    ldrb r1, [r6,#5]
    sub r1, r1, r0
    ldr r0, [pc, #0x80c215c-0x80c2138-4] // =0x40000
    mul r0, r1
    str r0, [r5,#0x44]
    mov r0, #8
    strh r0, [r5,#0xa]
    bl sub_80C2160
    b locret_80C2154
loc_80C2148:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C2154:
    pop {r6,pc}
    .balign 4, 0x00
dword_80C2158:    .word 0x6AAAB
dword_80C215C:    .word 0x40000
// end of function sub_80C20EC

.thumb
sub_80C2160:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    mov r1, #1
    tst r0, r1
    bne loc_80C2170
    mov r0, #6
    bl sub_80C201C
loc_80C2170:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_80C1D14
    cmp r0, #0
    bne loc_80C218E
    bl sub_80C21FA
    b locret_80C21D4
loc_80C218E:
    bl sub_800AB40
    bl sub_8012D4E
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C21D4
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80c21dc-0x80c21ae-2] // loc_80C21E0
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c21d8-0x80c21b4-4] // =0x4050001
    mov r2, #0
    mov r7, #1
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C21D4:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C21D8:    .word 0x4050001
off_80C21DC:    .word loc_80C21E0
// end of function sub_80C2160

loc_80C21E0:
    cmp r0, #0x14
    str r4, [r7,#0x40]
.thumb
sub_80C21E4:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C21F8
    mov r0, #0
    strb r0, [r5,#0x10]
    bl sub_80C21FA
locret_80C21F8:
    pop {pc}
// end of function sub_80C21E4

.thumb
sub_80C21FA:
    push {lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #4
    strh r0, [r5,#0xa]
    bl loc_80C1E50
    pop {pc}
// end of function sub_80C21FA

loc_80C222A:
    push {r6,lr}
    ldr r1, [pc, #0x80c2238-0x80c222c-4] // off_80C223C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C2238:    .word off_80C223C
off_80C223C:    .word sub_80C2244+1
    .word sub_80C22D8+1
.thumb
sub_80C2244:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C2254
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #8
    strh r0, [r5,#0x20]
loc_80C2254:
    bl sub_800AB54
    ldr r1, [pc, #0x80c22d4-0x80c2258-4] // =0x40000
    mul r1, r0
    ldr r0, [r5,#0x34]
    sub r0, r0, r1
    str r0, [r5,#0x34]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C22C4
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80c22cc-0x80c227a-2] // dword_80C22D0
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c22c8-0x80c2280-4] // =0x405FF04
    mov r2, #0
    mov r7, #1
    mov r3, #0
    bl sub_80CD6D6
    bl sub_800AB54
    mov r4, #2
    lsl r4, r4, #0x10
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #8
    orr r4, r2
    add r4, #0x17
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0x8e
    bl f500_8000558
    bl sub_800AB30
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C22C4:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C22C8:    .word 0x405FF04
off_80C22CC:    .word dword_80C22D0
dword_80C22D0:    .word 0xC8785028
dword_80C22D4:    .word 0x40000
// end of function sub_80C2244

.thumb
sub_80C22D8:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C22F4
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C22F4:
    pop {pc}
// end of function sub_80C22D8

loc_80C22F6:
    push {r6,lr}
    ldr r1, [pc, #0x80c2304-0x80c22f8-4] // off_80C2308
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C2304:    .word off_80C2308
off_80C2308:    .word sub_80C2310+1
    .word sub_80C23B8+1
.thumb
sub_80C2310:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C2354
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80C2332
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C23B2
loc_80C2332:
    ldr r1, [pc, #0x80c23b4-0x80c2332-2] // =0xA000
    tst r0, r1
    beq loc_80C234A
    mov r0, #4
    mov r3, #0x78 
    add r3, r3, r5
    strb r0, [r3,#1]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C23B2
loc_80C234A:
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #5
    strb r0, [r5,#0x10]
    b locret_80C23B2
loc_80C2354:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C23B2
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r4, #8
    lsl r4, r4, #8
    add r4, #0x2d 
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    ldr r3, [r5,#0x54]
    mov r0, #0x1e
    strb r0, [r3,#5]
    bl sub_800AB54
    mov r1, #8
    lsl r1, r1, #0x10
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #0xa
    bl sub_800AF88
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    mov r0, #7
    strh r0, [r5,#0x20]
    mov r0, #0x88
    bl f500_8000558
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C23B2:
    pop {r4,r6,r7,pc}
dword_80C23B4:    .word 0xA000
// end of function sub_80C2310

.thumb
sub_80C23B8:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    mov r1, #7
    tst r0, r1
    bne loc_80C23CC
    mov r0, #0xc
    bl sub_80C201C
loc_80C23CC:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_80C1D14
    cmp r0, #0
    bne loc_80C23F2
    bl sub_80C21FA
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012E84
    b locret_80C23FA
loc_80C23F2:
    bl sub_800AB40
    bl sub_8012D4E
locret_80C23FA:
    pop {r4,r6,r7,pc}
// end of function sub_80C23B8

loc_80C23FC:
    push {r6,lr}
    ldr r1, [pc, #0x80c240c-0x80c23fe-2] // off_80C2410
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C240C:    .word off_80C2410
off_80C2410:    .word sub_80C2428+1
    .word sub_80C1EBC+1
    .word sub_80C1F00+1
    .word sub_80C2456+1
    .word loc_80C24E0+1
    .word sub_80C2580+1
.thumb
sub_80C2428:
    push {r6,lr}
    mov r0, #5
    mov r1, #2
    bl sub_80C1D36
    cmp r0, #0
    bne loc_80C2444
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C2454
loc_80C2444:
    mov r6, #0x78 
    add r6, r6, r5
    mov r0, #5
    mov r1, #2
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_80C1E70
locret_80C2454:
    pop {r6,pc}
// end of function sub_80C2428

.thumb
sub_80C2456:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C2494
    bl sub_80079EA
    tst r0, r0
    beq loc_80C2474
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C24CE
loc_80C2474:
    mov r0, #1
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
    lsl r0, r0, #0x11
    bl sub_8012F36
    ldrb r4, [r5,#4]
    bl sub_80E8D3C
    b locret_80C24CE
loc_80C2494:
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    bl sub_8012D74
    mov r0, #0xf0
    strh r0, [r5,#0x36]
    bl sub_800AB40
    bl sub_8012D4E
    ldrb r3, [r5,#4]
    ldr r1, [pc, #0x80c24d0-0x80c24b8-4] // dword_80C24D4
    ldrb r0, [r1,r3]
    strh r0, [r5,#0x22]
    ldr r1, [pc, #0x80c24d8-0x80c24be-2] // loc_80C24DC
    ldrb r0, [r1,r3]
    str r0, [r5,#0x60]
    mov r0, #0
    str r0, [r5,#0x64]
    str r0, [r5,#0x68]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C24CE:
    pop {r4,r6,r7,pc}
off_80C24D0:    .word dword_80C24D4
dword_80C24D4:    .word 0x18181818
off_80C24D8:    .word loc_80C24DC
// end of function sub_80C2456

loc_80C24DC:
    lsr r1, r1, #0xc
    lsr r5, r1, #0x1c
loc_80C24E0:
    push {r4,r6,r7,lr}
    ldr r1, [pc, #0x80c24f4-0x80c24e2-2] // off_80C24F8
    ldrb r0, [r5,#0xb]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80C25D4
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C24F4:    .word off_80C24F8
off_80C24F8:    .word sub_80C2504+1
    .word sub_80C2564+1
    .word sub_80C2574+1
.thumb
sub_80C2504:
    push {lr}
    ldr r0, [r5,#0x64]
    add r1, r0, #1
    cmp r1, #3
    bne loc_80C2510
    mov r1, #0
loc_80C2510:
    str r1, [r5,#0x64]
    cmp r0, #0
    bne loc_80C251C
    mov r0, #1
    str r0, [r5,#0x68]
    b loc_80C2540
loc_80C251C:
    bl sub_80C1DAC
    cmp r0, #0
    beq loc_80C2540
    ldrb r4, [r5,#4]
    lsl r4, r4, #8
    add r4, r4, r2
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80c255c-0x80c2530-4] // loc_80C2560
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r7, [pc, #0x80c2558-0x80c2536-2] // =0xA94A
    mov r2, #0
    mov r3, #0
    bl sub_80DEA30
loc_80C2540:
    ldr r0, [r5,#0x60]
    sub r0, #1
    str r0, [r5,#0x60]
    bne loc_80C254E
    mov r0, #8
    strb r0, [r5,#0xb]
    b locret_80C2556
loc_80C254E:
    ldrh r0, [r5,#0x22]
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
locret_80C2556:
    pop {pc}
dword_80C2558:    .word 0xA94A
off_80C255C:    .word loc_80C2560
// end of function sub_80C2504

loc_80C2560:
    sub r4, r2, #0
    add r2, #0x28 
.thumb
sub_80C2564:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2572
    mov r0, #0
    strb r0, [r5,#0xb]
locret_80C2572:
    pop {pc}
// end of function sub_80C2564

.thumb
sub_80C2574:
    ldr r0, [r5,#0x68]
    cmp r0, #0
    bne locret_80C257E
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C257E:
    mov pc, lr
// end of function sub_80C2574

.thumb
sub_80C2580:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C2590
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
loc_80C2590:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C25D2
    bl sub_800AC72
    bl loc_8002F8E
    mov r0, #1
    lsl r0, r0, #0x11
    bl sub_8012F40
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r5,#0x14]
    strb r0, [r6,#4]
    ldrb r1, [r5,#0x15]
    strb r1, [r6,#5]
    bl sub_801436A
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C1E50
locret_80C25D2:
    pop {r4,r6,r7,pc}
// end of function sub_80C2580

.thumb
sub_80C25D4:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x68]
    cmp r0, #3
    beq loc_80C2660
    cmp r0, #2
    beq loc_80C2626
    cmp r0, #1
    blt locret_80C269A
    bl sub_80C1D42
    cmp r0, #0
    bne loc_80C25F2
    mov r0, #0
    str r0, [r5,#0x68]
    b locret_80C269A
loc_80C25F2:
    add r4, r2, #0
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    lsl r2, r1, #8
    add r2, r2, r0
    str r2, [r5,#0x74]
    bl sub_8014348
    mov r0, #1
    bl sub_8012D7C
    bl sub_800AB30
    bl sub_8012D4E
    add r0, r4, #0
    str r0, [r5,#0x70]
    bl loc_8002F8E
    mov r0, #3
    strb r0, [r5,#0x10]
    ldrh r0, [r5,#0x22]
    str r0, [r5,#0x6c]
    mov r0, #2
    str r0, [r5,#0x68]
    b locret_80C269A
loc_80C2626:
    ldr r0, [r5,#0x6c]
    mov r1, #4
    tst r0, r1
    bne loc_80C263E
    ldr r0, [r5,#0x70]
    bl loc_800AB56
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_8009D6C
loc_80C263E:
    ldr r0, [r5,#0x6c]
    sub r0, #1
    str r0, [r5,#0x6c]
    bne locret_80C269A
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x2a 
    ldrh r1, [r5,#0x22]
    sub r0, r0, r1
    str r0, [r5,#0x6c]
    bl sub_80C269C
    ldr r0, [pc, #0x80c26d4-0x80c2656-2] // =0x127
    bl f500_8000558
    mov r0, #3
    str r0, [r5,#0x68]
loc_80C2660:
    ldr r0, [r5,#0x6c]
    sub r0, #1
    str r0, [r5,#0x6c]
    bne locret_80C269A
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    mov r0, #0
    str r0, [r5,#0x74]
    bl sub_8012D74
    mov r0, #0xf0
    strh r0, [r5,#0x36]
    bl sub_800AB40
    bl sub_8012D4E
    mov r0, #0
    str r0, [r5,#0x68]
locret_80C269A:
    pop {r4,r6,r7,pc}
// end of function sub_80C25D4

.thumb
sub_80C269C:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x70]
    bl loc_800AB56
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80c26cc-0x80c26b0-4] // dword_80C26D0
    ldrb r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c26c8-0x80c26b6-2] // =0x4050501
    mov r2, #0
    mov r7, #1
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C26C8:    .word 0x4050501
off_80C26CC:    .word dword_80C26D0
dword_80C26D0:    .word 0x32281E14
dword_80C26D4:    .word 0x127
// end of function sub_80C269C

loc_80C26D8:
    push {lr}
    ldr r1, [pc, #0x80c26ec-0x80c26da-2] // off_80C26F0
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80C26EC:    .word off_80C26F0
off_80C26F0:    .word sub_80C26FC+1
    .word sub_80C2750+1
    .word sub_80104D8+1
.thumb
sub_80C26FC:
    push {lr}
    mov r0, #0x80
    mov r1, #4
    mov r2, #0x13
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C26FC

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C2736
    bl sub_80033B4
    b locret_80C274E
loc_80C2736:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C2750
locret_80C274E:
    pop {pc}
.thumb
sub_80C2750:
    push {lr}
    bl sub_801375C
    bl sub_8007920
    bne loc_80C2760
    bl sub_80C27B4
loc_80C2760:
    ldr r0, [pc, #0x80c276c-0x80c2760-4] // off_80C2770
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
off_80C276C:    .word off_80C2770
off_80C2770:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80C2798+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80C27E6+1
    .word sub_80C289A+1
    .word loc_80C28C4+1
    .word loc_80C2980+1
// end of function sub_80C2750

.thumb
sub_80C2798:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C27AE
    ldr r0, [r5,#0x6c]
    cmp r0, #0
    beq loc_80C27AE
    bl sub_80E75E4
    mov r0, #0
    str r0, [r5,#0x6c]
loc_80C27AE:
    bl sub_80100F8
    pop {pc}
// end of function sub_80C2798

.thumb
sub_80C27B4:
    push {lr}
    ldr r3, [r5,#0x54]
    mov r0, #0xff
    strb r0, [r3,#6]
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq locret_80C27D8
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bge locret_80C27D8
    mov r0, #1
    bl sub_800AB86
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c27dc-0x80c27d2-2] // loc_80C27E0
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x22]
locret_80C27D8:
    pop {pc}
    .balign 4, 0x00
off_80C27DC:    .word loc_80C27E0
// end of function sub_80C27B4

loc_80C27E0:
    lsr r4, r1, #4
    lsl r7, r0, #0x14
    lsl r4, r0, #0xc
loc_80C27E6:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c27f8-0x80c27ee-2] // off_80C27FC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80C27F8:    .word off_80C27FC
off_80C27FC:    .word sub_80C2800+1
.thumb
sub_80C2800:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c2810-0x80c2804-4] // loc_80C2814
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80C2810:    .word loc_80C2814
// end of function sub_80C2800

loc_80C2814:
    cmp r0, #0x1d
    lsr r4, r1, #0x20
    cmp r0, #0x2f 
    lsr r4, r1, #0x20
    mov r0, #4
    strb r0, [r6,#1]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
    push {lr}
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x6d 
    mov r2, #0x72 
    bl sub_80B656C
    cmp r0, #0
    beq loc_80C2850
    mov r3, sp
loc_80C2842:
    ldr r2, [r3]
    ldrb r1, [r2,#9]
    cmp r1, #8
    beq loc_80C285A
    add r3, #4
    sub r0, #1
    bne loc_80C2842
loc_80C2850:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80C2866
loc_80C285A:
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C2866:
    add sp, sp, #0x10
    pop {pc}
.thumb
sub_80C286A:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8009A52
    ldr r2, [pc, #0x80c288c-0x80c2874-4] // loc_80C2890
    mov r3, #5
loc_80C2878:
    sub r1, r3, #1
    lsl r1, r1, #1
    ldrh r1, [r2,r1]
    tst r0, r1
    bne loc_80C2886
    sub r3, #1
    bne loc_80C2878
loc_80C2886:
    add r0, r3, #0
    pop {pc}
    .balign 4, 0x00
off_80C288C:    .word loc_80C2890
// end of function sub_80C286A

loc_80C2890:
    lsl r0, r0, #0x10
    lsr r0, r0, #0x20
    asr r0, r0, #0x20
    lsl r0, r0, #4
    lsl r0, r0, #8
.thumb
sub_80C289A:
    push {lr}
    bl sub_80C286A
    ldr r1, [r5,#0x60]
    cmp r0, r1
    beq loc_80C28B2
    str r0, [r5,#0x60]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C28C2
loc_80C28B2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C28C2
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C28C2:
    pop {pc}
// end of function sub_80C289A

loc_80C28C4:
    push {r6,lr}
    ldr r1, [pc, #0x80c28d4-0x80c28c6-2] // off_80C28D8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C28D4:    .word off_80C28D8
off_80C28D8:    .word sub_80C28E0+1
    .word sub_80C292C+1
.thumb
sub_80C28E0:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C28FA
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_800A15E
    ldrb r1, [r5,#0x13]
    str r0, [r5,#0x64]
    str r1, [r5,#0x68]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
loc_80C28FA:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x14
    bne loc_80C2906
    mov r0, #0xa
    bl sub_800AF88
loc_80C2906:
    ldrh r0, [r5,#0x20]
    mov r1, #4
    tst r0, r1
    bne loc_80C2916
    ldr r0, [r5,#0x64]
    ldr r1, [r5,#0x68]
    bl sub_8009D6C
loc_80C2916:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C292A
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x23 
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C292A:
    pop {pc}
// end of function sub_80C28E0

.thumb
sub_80C292C:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0x1e
    bne loc_80C294E
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c2970-0x80c293a-2] // =0x80C297A
    ldrb r0, [r1,r0]
    add r6, r6, r0
    ldr r0, [r5,#0x64]
    ldr r1, [r5,#0x68]
    mov r3, #0
    mov r2, #0
    ldr r4, [r5,#0x60]
    bl sub_80DC67A
loc_80C294E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C296A
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c296c-0x80c295c-4] // loc_80C2974
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C296A:
    pop {r4,r6,r7,pc}
off_80C296C:    .word loc_80C2974
dword_80C2970:    .word 0x80C297A
// end of function sub_80C292C

loc_80C2974:
    mov r0, r10
    add r2, #0x3c 
    sub r0, r5, #0
    sub r4, #0x1e
    ldrb r2, [r3,#1]
    ldmia r0!, {r5,r7}
loc_80C2980:
    push {r6,lr}
    ldr r1, [pc, #0x80c2990-0x80c2982-2] // off_80C2994
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C2990:    .word off_80C2994
off_80C2994:    .word sub_80C2998+1
.thumb
sub_80C2998:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x6c]
    cmp r0, #0
    beq loc_80C29A8
    bl sub_80E75E4
    mov r0, #0
    str r0, [r5,#0x6c]
loc_80C29A8:
    ldr r1, [pc, #0x80c29d8-0x80c29a8-4] // dword_80C29DC
    ldr r0, [r5,#0x60]
    ldrb r0, [r1,r0]
    cmp r0, #0
    beq loc_80C29CE
    push {r0}
    ldr r4, [r5,#0x60]
    sub r4, #1
    mov r7, #0x6c 
    add r7, r7, r5
    bl sub_80E75C2
    str r0, [r5,#0x6c]
    pop {r1}
    mov r0, #0xfc
    bl f500_8000558
    mov r0, #1
    strh r0, [r5,#0x22]
loc_80C29CE:
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {r4,r6,r7,pc}
off_80C29D8:    .word dword_80C29DC
dword_80C29DC:    .word 0x3020100
    .word 0x60504
// end of function sub_80C2998

.thumb
sub_80C29E4:
    push {lr}
    ldr r1, [pc, #0x80c29f8-0x80c29e6-2] // off_80C29FC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C29F8:    .word off_80C29FC
off_80C29FC:    .word sub_80C2A08+1
    .word sub_80C2A7C+1
    .word sub_8010F0C+1
// end of function sub_80C29E4

.thumb
sub_80C2A08:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x17
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C2A08

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C2A30
    mov r0, #5
loc_80C2A30:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C2A4A
    bl sub_80033B4
    b locret_80C2A7A
loc_80C2A4A:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r0, #0x68 
    add r0, r0, r5
    mov r1, #0
    mov r2, #1
    bl sub_80C2D24
    mov r0, #0x6c 
    add r0, r0, r5
    mov r1, #1
    mov r2, #1
    bl sub_80C2D24
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C2A7C
locret_80C2A7A:
    pop {pc}
.thumb
sub_80C2A7C:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c2a98-0x80c2a82-2] // off_80C2A9C
    bl sub_8013D54
    bl sub_8012D16
    bl sub_80C2CD0
    bl sub_80C2D3C
    pop {pc}
    .balign 4, 0x00
off_80C2A98:    .word off_80C2A9C
off_80C2A9C:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80C2AD0+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C2AF2+1
    .word sub_80C2D74+1
    .word loc_80C2D88+1
    .word loc_80C2E68+1
    .word loc_80C2FA6+1
    .word loc_80C2FA6+1
    .word loc_80C303A+1
// end of function sub_80C2A7C

.thumb
sub_80C2AD0:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C2AEC
    mov r0, #0
    str r0, [r5,#0x60]
    str r0, [r5,#0x64]
    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C2AE8
    mov r0, #5
loc_80C2AE8:
    bl sub_8002DCC
loc_80C2AEC:
    bl sub_8010E34
    pop {pc}
// end of function sub_80C2AD0

loc_80C2AF2:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c2b04-0x80c2afa-2] // off_80C2B08
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_80C2B04:    .word off_80C2B08
off_80C2B08:    .word sub_80C2B0C+1
.thumb
sub_80C2B0C:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c2b1c-0x80c2b10-4] // off_80C2B20
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C2B1C:    .word off_80C2B20
off_80C2B20:    .word sub_80C2B24+1
// end of function sub_80C2B0C

.thumb
sub_80C2B24:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #4
    blt loc_80C2B4C
    ldr r0, [r5,#0x60]
    ldr r1, [r5,#0x64]
    add r0, r0, r1
    bne loc_80C2B46
    bl sub_80C2B9A
    ldrb r0, [r6,#0xb]
    mov r1, #1
    eor r1, r0
    strb r1, [r6,#0xb]
    ldr r1, [pc, #0x80c2b94-0x80c2b40-4] // loc_80C2B98
    ldrb r0, [r1,r0]
    strb r0, [r5,#9]
loc_80C2B46:
    mov r0, #0
    strb r0, [r6,#9]
    b locret_80C2B90
loc_80C2B4C:
    ldrb r0, [r6,#8]
    cmp r0, #6
    blt loc_80C2B86
    ldrb r0, [r6,#0xa]
    cmp r0, #2
    blt loc_80C2B62
    bl sub_80C2BCA
    mov r0, #0
    strb r0, [r6,#0xa]
    b loc_80C2B7A
loc_80C2B62:
    bl sub_80C2B9A
    bl sub_8012F4A
    ldr r1, [pc, #0x80c2ccc-0x80c2b6a-2] // =0xA000
    tst r0, r1
    bne locret_80C2B90
    ldrb r0, [r6,#0xa]
    add r0, #1
    strb r0, [r6,#0xa]
    mov r0, #9
    strb r0, [r5,#9]
loc_80C2B7A:
    mov r0, #0
    strb r0, [r6,#8]
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
    b locret_80C2B90
loc_80C2B86:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    bl sub_80C2B9A
locret_80C2B90:
    pop {pc}
    .balign 4, 0x00
off_80C2B94:    .word loc_80C2B98
// end of function sub_80C2B24

loc_80C2B98:
    lsr r2, r1, #0xc
.thumb
sub_80C2B9A:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c2ccc-0x80c2ba0-4] // =0xA000
    tst r0, r1
    bne loc_80C2BAC
    bl sub_80B553E
    b loc_80C2BB0
loc_80C2BAC:
    bl sub_80C2C38
loc_80C2BB0:
    tst r0, r0
    bne loc_80C2BB8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C2BB8:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C2D88
    pop {pc}
// end of function sub_80C2B9A

.thumb
sub_80C2BCA:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c2ccc-0x80c2bd0-4] // =0xA000
    tst r0, r1
    bne loc_80C2BEC
    bl sub_80C2C78
    cmp r0, #0
    bne loc_80C2BF0
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C2C08
loc_80C2BEC:
    bl sub_80C2C38
loc_80C2BF0:
    tst r0, r0
    bne loc_80C2BF8
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C2BF8:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C303A
locret_80C2C08:
    pop {pc}
// end of function sub_80C2BCA

.thumb
sub_80C2C0A:
    push {r4,r6,r7,lr}
    ldrb r4, [r5,#0x16]
    lsl r4, r4, #8
    mov r1, #0
    add r4, r4, r1
    lsl r4, r4, #8
    mov r1, #0x17
    add r4, r4, r1
    lsl r4, r4, #8
    add r4, #8
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    ldr r6, [pc, #0x80c2c30-0x80c2c24-4] // =0x814A
    ldr r7, [pc, #0x80c2c34-0x80c2c26-2] // =0x10000
    add r7, r7, r0
    bl sub_80E4F04
    pop {r4,r6,r7,pc}
dword_80C2C30:    .word 0x814A
dword_80C2C34:    .word 0x10000
// end of function sub_80C2C0A

.thumb
sub_80C2C38:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    ldrb r0, [r0,#0x13]
    ldr r2, [pc, #0x80c2cc0-0x80c2c46-2] // =0x30
    ldr r3, [pc, #0x80c2cc4-0x80c2c48-4] // =0x3F880080
    add r7, sp, #0
    bl sub_800A0DA
    tst r0, r0
    beq loc_80C2C68
    add r7, r0, #0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C2C68:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801436A
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r7,pc}
// end of function sub_80C2C38

.thumb
sub_80C2C78:
    push {r4,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c2ccc-0x80c2c7e-2] // =0xA000
    tst r0, r1
    beq loc_80C2C8E
    bl sub_80B56B8
    tst r0, r0
    bne locret_80C2CBC
    b loc_80C2CBA
loc_80C2C8E:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl loc_800AB56
    add r4, r0, #0
    bl sub_800A15E
    add r0, r0, r4
    add r0, r0, r4
loc_80C2CA2:
    push {r0,r1}
    ldr r2, [pc, #0x80c2cc0-0x80c2ca4-4] // =0x30
    ldr r3, [pc, #0x80c2cc8-0x80c2ca6-2] // =0x2F880080
    bl sub_8009E78
    cmp r0, #0
    pop {r0,r1}
    bne locret_80C2CBC
    add r0, r0, r4
    beq loc_80C2CBA
    cmp r0, #7
    blt loc_80C2CA2
loc_80C2CBA:
    mov r0, #0
locret_80C2CBC:
    pop {r4,pc}
    .byte 0, 0
off_80C2CC0:    .word 0x30
dword_80C2CC4:    .word 0x3F880080
dword_80C2CC8:    .word 0x2F880080
dword_80C2CCC:    .word 0xA000
// end of function sub_80C2C78

.thumb
sub_80C2CD0:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne locret_80C2D10
    bl sub_8007920
    bne locret_80C2D10
    mov r0, #0x68 
    add r0, r0, r5
    bl sub_80C2D12
    cmp r0, #0
    beq loc_80C2CF8
    mov r0, #0x68 
    add r0, r0, r5
    mov r1, #0
    mov r2, #0
    bl sub_80C2D24
loc_80C2CF8:
    mov r0, #0x6c 
    add r0, r0, r5
    bl sub_80C2D12
    cmp r0, #0
    beq locret_80C2D10
    mov r0, #0x6c 
    add r0, r0, r5
    mov r1, #1
    mov r2, #0
    bl sub_80C2D24
locret_80C2D10:
    pop {pc}
// end of function sub_80C2CD0

.thumb
sub_80C2D12:
    add r2, r0, #0
    ldrb r0, [r2]
    cmp r0, #0
    beq locret_80C2D22
    sub r1, r0, #1
    strb r1, [r2]
    beq locret_80C2D22
    mov r0, #0
locret_80C2D22:
    mov pc, lr
// end of function sub_80C2D12

.thumb
sub_80C2D24:
    push {r4,r6,r7,lr}
    add r7, r0, #0
    lsl r4, r2, #8
    ldrb r2, [r5,#4]
    add r4, r4, r2
    mov r0, #3
    add r0, r0, r1
    mov r3, #0
    mov r2, #0
    bl sub_80D8DA0
    pop {r4,r6,r7,pc}
// end of function sub_80C2D24

.thumb
sub_80C2D3C:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne locret_80C2D68
    bl sub_8007920
    bne locret_80C2D68
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq locret_80C2D68
    ldr r0, [r5,#0x70]
    sub r0, #1
    str r0, [r5,#0x70]
    bne locret_80C2D68
    mov r0, #1
    bl sub_800AB86
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c2d6c-0x80c2d62-2] // loc_80C2D70
    ldrb r0, [r1,r0]
    str r0, [r5,#0x70]
locret_80C2D68:
    pop {pc}
    .balign 4, 0x00
off_80C2D6C:    .word loc_80C2D70
// end of function sub_80C2D3C

loc_80C2D70:
    lsr r4, r1, #8
    lsl r0, r1, #0x18
.thumb
sub_80C2D74:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C2D86
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C2D86:
    pop {pc}
// end of function sub_80C2D74

loc_80C2D88:
    push {r6,lr}
    ldr r1, [pc, #0x80c2d98-0x80c2d8a-2] // off_80C2D9C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C2D98:    .word off_80C2D9C
off_80C2D9C:    .word sub_80C2DAC+1
    .word sub_80C2DE6+1
    .word sub_80C2E18+1
    .word sub_80C2E50+1
.thumb
sub_80C2DAC:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C2DD8
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C2DE4
loc_80C2DD8:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C2DE4:
    pop {r6,pc}
// end of function sub_80C2DAC

.thumb
sub_80C2DE6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2E16
    mov r0, #0x10
    bl sub_80C2C0A
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C2E16:
    pop {pc}
// end of function sub_80C2DE6

.thumb
sub_80C2E18:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2E44
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c2e48-0x80c2e24-4] // loc_80C2E4C
    ldrb r0, [r1,r0]
    ldr r2, [r5,#0x60]
    lsr r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C2E44:
    pop {pc}
    .balign 4, 0x00
off_80C2E48:    .word loc_80C2E4C
// end of function sub_80C2E18

loc_80C2E4C:
    mov r0, #0x24 
    add r4, r3, r0
.thumb
sub_80C2E50:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2E66
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C2E66:
    pop {pc}
// end of function sub_80C2E50

loc_80C2E68:
    push {r6,lr}
    ldr r1, [pc, #0x80c2e78-0x80c2e6a-2] // off_80C2E7C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C2E78:    .word off_80C2E7C
off_80C2E7C:    .word sub_80C2DAC+1
    .word sub_80C2DE6+1
    .word sub_80C2E94+1
    .word sub_80C2EBA+1
    .word sub_80C2EDC+1
    .word sub_80C2F30+1
.thumb
sub_80C2E94:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2EB8
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldr r2, [r5,#0x60]
    mov r0, #0xa
    lsr r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C2EB8:
    pop {pc}
// end of function sub_80C2E94

.thumb
sub_80C2EBA:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2EDA
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x10
    bl sub_800AF88
    ldr r2, [r5,#0x60]
    mov r0, #0x14
    lsr r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C2EDA:
    pop {pc}
// end of function sub_80C2EBA

.thumb
sub_80C2EDC:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    bne loc_80C2EF2
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C2EF2
    mov r0, #6
    strb r0, [r5,#0x10]
loc_80C2EF2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2F24
    bl sub_80C2F6C
    mov r6, #0xa
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    ldr r3, [pc, #0x80c2f28-0x80c2f04-4] // loc_80C2F2C
    ldrb r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    ldr r4, [r5,#0x60]
    bl sub_80D913C
    ldr r2, [r5,#0x60]
    mov r1, #0xa
    mul r1, r2
    mov r0, #0x2d 
    sub r0, r0, r1
    strh r0, [r5,#0x20]
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C2F24:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C2F28:    .word loc_80C2F2C
// end of function sub_80C2EDC

loc_80C2F2C:
    sub r4, r2, #0
    add r2, #0x28 
.thumb
sub_80C2F30:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #6
    bne loc_80C2F44
    ldrh r0, [r5,#0x20]
    cmp r0, #0xa
    bne loc_80C2F56
    mov r0, #7
    strb r0, [r5,#0x10]
    b loc_80C2F56
loc_80C2F44:
    cmp r0, #7
    bne loc_80C2F56
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C2F56
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80C2F56:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2F6A
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C2F6A:
    pop {pc}
// end of function sub_80C2F30

.thumb
sub_80C2F6C:
    push {r4,r6,lr}
    bl sub_8001AF6
    add r4, r0, #0
    bl sub_8001AF6
    add r6, r0, #0
    mov r1, #1
    and r6, r1
    and r4, r1
    bl sub_800A15E
    sub r0, r0, r4
    sub r1, r1, r6
    cmp r0, #0
    bgt loc_80C2F90
    mov r0, #1
    b loc_80C2F96
loc_80C2F90:
    cmp r0, #6
    blt loc_80C2F96
    mov r0, #5
loc_80C2F96:
    cmp r1, #0
    bgt loc_80C2F9E
    mov r1, #1
    b locret_80C2FA4
loc_80C2F9E:
    cmp r1, #3
    blt locret_80C2FA4
    mov r1, #2
locret_80C2FA4:
    pop {r4,r6,pc}
// end of function sub_80C2F6C

loc_80C2FA6:
    push {r6,lr}
    ldr r1, [pc, #0x80c2fb4-0x80c2fa8-4] // off_80C2FB8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C2FB4:    .word off_80C2FB8
off_80C2FB8:    .word sub_80C2DAC+1
    .word sub_80C2DE6+1
    .word sub_80C2FCC+1
    .word sub_80C2FEE+1
    .word sub_80C3018+1
.thumb
sub_80C2FCC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C2FEC
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C2FEC:
    pop {pc}
// end of function sub_80C2FCC

.thumb
sub_80C2FEE:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C3016
    bl sub_80079EA
    tst r0, r0
    beq loc_80C300A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C3016
loc_80C300A:
    ldrb r4, [r5,#9]
    sub r4, #0xa
    bl sub_80E82B8
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C3016:
    pop {r4,pc}
// end of function sub_80C2FEE

.thumb
sub_80C3018:
    push {lr}
    ldrb r0, [r5,#9]
    sub r0, #0xa
    ldr r1, [pc, #0x80c3034-0x80c301e-2] // loc_80C3038
    ldrb r0, [r1,r0]
    mov r1, #1
    strb r1, [r5,r0]
    mov r0, #1
    str r0, [r5,#0x70]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
off_80C3034:    .word loc_80C3038
// end of function sub_80C3018

loc_80C3038:
    str r0, [r4,#0x44]
loc_80C303A:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldr r1, [pc, #0x80c304c-0x80c3040-4] // off_80C3050
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C304C:    .word off_80C3050
off_80C3050:    .word sub_80C2DAC+1
    .word sub_80C2DE6+1
    .word sub_80C2E18+1
    .word sub_80C30D4+1
    .word sub_80C3134+1
    .word sub_80C3154+1
    push {lr}
    bl sub_800ACF6
    beq loc_80C3098
    bl sub_80C2C78
    cmp r0, #0
    beq loc_80C3098
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8014348
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C30A4
loc_80C3098:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C30A4:
    pop {pc}
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C30D2
    mov r0, #0x10
    bl sub_80C2C0A
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C30D2:
    pop {pc}
.thumb
sub_80C30D4:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #1
    beq loc_80C30EE
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C3132
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #8
    strb r0, [r5,#0x10]
    b locret_80C3132
loc_80C30EE:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C3132
    mov r0, #9
    strb r0, [r5,#0x10]
    mov r4, #0x12
    lsl r4, r4, #8
    add r4, #0x2b 
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r4, [r5,#0x60]
    lsl r4, r4, #8
    ldr r2, [r5,#4]
    add r4, r4, r2
    mov r7, #0x74 
    add r7, r7, r5
    mov r2, #0
    mov r3, #0
    bl sub_80DE4E0
    mov r0, #0xe1
    bl f500_8000558
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C3132:
    pop {r4,r6,r7,pc}
// end of function sub_80C30D4

.thumb
sub_80C3134:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x74]
    cmp r0, #0
    bne locret_80C3152
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0xa
    strb r0, [r5,#0x10]
    ldr r2, [r5,#0x60]
    mov r0, #0x14
    lsr r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C3152:
    pop {r4,r6,r7,pc}
// end of function sub_80C3134

.thumb
sub_80C3154:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #7
    bne loc_80C316A
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C316A
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80C316A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C317A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C317A:
    pop {pc}
// end of function sub_80C3154

loc_80C317C:
    push {lr}
    ldr r1, [pc, #0x80c3190-0x80c317e-2] // off_80C3194
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80C3190:    .word off_80C3194
off_80C3194:    .word sub_80C31A0+1
    .word sub_80C3226+1
    .word sub_80104D8+1
.thumb
sub_80C31A0:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #3
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C31A0

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #3
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    mov r4, #2
    mov r7, #0x64 
    add r7, r7, r5
    bl sub_80CCE28
    tst r0, r0
    beq loc_80C31E8
    mov r1, #0x60 
    add r1, r1, r5
    str r1, [r0,#0x60]
loc_80C31E8:
    mov r4, #3
    bl sub_80CCE28
    tst r0, r0
    beq loc_80C31FA
    mov r1, #0x60 
    add r1, r1, r5
    str r1, [r0,#0x60]
    str r0, [r5,#0x64]
loc_80C31FA:
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80C320C
    bl sub_80033B4
    b locret_80C3224
loc_80C320C:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x30 
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C3226
locret_80C3224:
    pop {r4,r7,pc}
.thumb
sub_80C3226:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c3238-0x80c322c-4] // off_80C323C
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C3238:    .word off_80C323C
off_80C323C:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_8010CF8+1
    .word sub_80C3268+1
    .word sub_80C3284+1
    .word ho_8010F5A+1
    .word loc_80C32A0+1
    .word loc_80F09B4+1
    .word loc_80F0A8A+1
    .word loc_80F0B5A+1
    .word loc_80F0C80+1
// end of function sub_80C3226

.thumb
sub_80C3268:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C327E
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_80C327E
    bl sub_80E6894
    mov r0, #0
    str r0, [r5,#0x60]
loc_80C327E:
    bl sub_8010E34
    pop {pc}
// end of function sub_80C3268

.thumb
sub_80C3284:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C329A
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_80C329A
    bl sub_80E6894
    mov r0, #0
    str r0, [r5,#0x60]
loc_80C329A:
    bl sub_8010EB4
    pop {pc}
// end of function sub_80C3284

loc_80C32A0:
    push {r6,r7,lr}
    ldr r7, [r5,#0x58]
    mov r6, #0x64 
    add r6, r6, r7
    add r7, #0x70 
    ldr r1, [pc, #0x80c32c4-0x80c32aa-2] // off_80C32C8
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldr r0, [r5,#0x60]
    tst r0, r0
    bne locret_80C32C2
    mov r4, #0
    bl sub_80E67D0
    str r0, [r5,#0x60]
locret_80C32C2:
    pop {r6,r7,pc}
off_80C32C4:    .word off_80C32C8
off_80C32C8:    .word sub_80C32D8+1
    .word sub_80C3364+1
    .word byte_80C33E1
    .word sub_80C343C+1
.thumb
sub_80C32D8:
    push {r4,lr}
    ldrb r0, [r6,#8]
    cmp r0, #3
    bge loc_80C32FC
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#4]
    ldr r2, [pc, #0x80c3358-0x80c32ea-2] // loc_80C335C
    ldrb r1, [r2,r1]
    cmp r0, r1
    bge loc_80C331E
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r3, #4
    b loc_80C3316
loc_80C32FC:
    mov r0, #0
    strb r0, [r6,#8]
    ldrb r0, [r6,#9]
    cmp r0, #2
    bge loc_80C330E
    add r0, #1
    strb r0, [r6,#9]
    mov r3, #8
    b loc_80C3316
loc_80C330E:
    mov r0, #0
    strb r0, [r6,#9]
    mov r3, #0xc
    b loc_80C3316
loc_80C3316:
    strb r3, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {r4,pc}
loc_80C331E:
    bl sub_8012F4A
    mov r4, #0
    ldr r1, [pc, #0x80c3490-0x80c3324-4] // =0xA000
    tst r0, r1
    beq loc_80C3334
    mov r4, #0x1e
    bl sub_8001AF6
    lsr r0, r0, #5
    bcc loc_80C333A
loc_80C3334:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
loc_80C333A:
    strb r4, [r7,#0x18]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c3354-0x80c333e-2] // loc_80C3360
    ldrb r1, [r1,r0]
    ldrb r0, [r7,#0x18]
    add r0, r0, r1
    strb r0, [r7,#0x18]
    ldr r0, [pc, #0x80c3494-0x80c3348-4] // sub_80F0D62+1
    str r0, [r7,#0x1c]
    mov r0, #7
    bl sub_800C960
    pop {r4,pc}
off_80C3354:    .word loc_80C3360
off_80C3358:    .word loc_80C335C
// end of function sub_80C32D8

loc_80C335C:
    lsl r5, r0, #0x18
    lsr r7, r0, #0x20
loc_80C3360:
    add r2, #0x3c 
    sub r0, r5, #0
.thumb
sub_80C3364:
    push {lr}
    ldrb r0, [r6,#2]
    tst r0, r0
    bne loc_80C3384
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c33c8-0x80c336e-2] // asc_80C33DC
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x18]
    ldr r0, [pc, #0x80c3498-0x80c3374-4] // sub_80F0D62+1
    str r0, [r7,#0x1c]
    mov r0, #7
    bl sub_800C960
    mov r0, #4
    strb r0, [r6,#2]
    b locret_80C33C0
loc_80C3384:
    mov r0, #0
    strb r0, [r6]
    mov r4, #1
    ldrh r1, [r5,#0x24]
    ldrh r2, [r5,#0x26]
    lsr r2, r2, #1
    cmp r1, r2
    bgt loc_80C339E
    bl sub_8001AF6
    lsr r0, r0, #2
    bcc loc_80C339E
    mov r4, #3
loc_80C339E:
    strb r4, [r7,#0xe]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80c33c4-0x80c33a2-2] // dword_80C33D0
    ldrb r0, [r1,r2]
    strh r0, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    ldr r1, [pc, #0x80c33cc-0x80c33ac-4] // dword_80C33D4
    add r2, r2, r2
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xc]
    mov r0, #0x60 
    add r0, r0, r5
    str r0, [r7,#0x1c]
    mov r0, #8
    bl sub_800C960
locret_80C33C0:
    pop {pc}
    .balign 4, 0x00
off_80C33C4:    .word dword_80C33D0
off_80C33C8:    .word asc_80C33DC
off_80C33CC:    .word dword_80C33D4
dword_80C33D0:    .word 0xC8785028
dword_80C33D4:    .word 0x480F4012, 0x600C500C
asc_80C33DC:    .byte 0x5A, 0x41
    .byte 0x32, 0x28
    .byte 0x0
byte_80C33E1:    .byte 0xB5, 0xB0, 0x78
    .word 0xD10B4200, 0x490F7928, 0x76385C08, 0x61F8482A, 0xF7492007
    .word 0x2004FAB3, 0xE01070B0, 0x70302000, 0x4907792A, 0x81385C88
    .word 0x5C884907, 0x201E7378
    .word 0x20608178
// end of function sub_80C3364

    add r0, r0, r5
    str r0, [r7,#0x1c]
    mov r0, #9
    bl sub_800C960
    pop {pc}
    .word 0x80C3430
    .word 0x80C3438
    .word 0x80C3434
    str r0, [r5,r0]
    ldmia r0!, {r3-r6}
    add r0, r2, r0
    add r0, #0x20 
    adc r2, r3
    cmp r0, #0x32 
.thumb
sub_80C343C:
    push {lr}
    ldrb r0, [r6,#2]
    tst r0, r0
    bne loc_80C345C
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c3484-0x80c3446-2] // dword_80C348C
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x18]
    ldr r0, [pc, #0x80c34a0-0x80c344c-4] // dword_80F0DBC
    str r0, [r7,#0x1c]
    mov r0, #7
    bl sub_800C960
    mov r0, #4
    strb r0, [r6,#2]
    b locret_80C347E
loc_80C345C:
    mov r0, #0
    strb r0, [r6]
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    beq locret_80C347E
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x80c3480-0x80c3468-4] // dword_80C3488
    ldrb r0, [r1,r2]
    strh r0, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0xa]
    mov r0, #0x60 
    add r0, r0, r5
    str r0, [r7,#0x1c]
    mov r0, #0xa
    bl sub_800C960
locret_80C347E:
    pop {pc}
off_80C3480:    .word dword_80C3488
off_80C3484:    .word dword_80C348C
dword_80C3488:    .word 0xC8785028
dword_80C348C:    .word 0x2832415A
dword_80C3490:    .word 0xA000
off_80C3494:    .word sub_80F0D62+1
off_80C3498:    .word sub_80F0D62+1
    .word sub_80F0D62+1
dword_80C34A0:    .word 0x80F0DD9
// end of function sub_80C343C

loc_80C34A4:
    push {lr}
    ldr r1, [pc, #0x80c34c0-0x80c34a6-2] // =0x80C34B4
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
    add r4, #0xc5
    lsr r4, r1, #0x20
    add r5, #0x19
    lsr r4, r1, #0x20
    add r6, #0xe7
    lsr r4, r1, #0x20
dword_80C34C0:    .word 0x80C34B4
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #4
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800AB30
    ldrb r0, [r5,#0x16]
    bl loc_8002F8E
    mov r0, #4
    bl sub_800B91C
    bl sub_8002DCC
    ldr r0, [pc, #0x80c3514-0x80c34fa-2] // =0x7FFF
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80C3518
    pop {pc}
    .balign 4, 0x00
dword_80C3514:    .word 0x7FFF
loc_80C3518:
    push {lr}
    ldr r1, [pc, #0x80c353c-0x80c351a-2] // off_80C3530
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    bl sub_80C370A
    pop {pc}
    .byte 0, 0
off_80C3530:    .word sub_80C3540+1
    .word loc_80C35E6+1
    .word sub_80C36BA+1
off_80C353C:    .word off_80C3530
.thumb
sub_80C3540:
    push {lr}
    ldr r1, [pc, #0x80c3550-0x80c3542-2] // off_80C3554
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C3550:    .word off_80C3554
off_80C3554:    .word sub_80C355C+1
    .word sub_80C35AC+1
// end of function sub_80C3540

.thumb
sub_80C355C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3578
    mov r0, #0x1f
    strb r0, [r5,#0x19]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C35AA
loc_80C3578:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    lsr r0, r0, #1
    bcc loc_80C3592
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_80C3592:
    ldrb r0, [r5,#0x19]
    sub r0, #2
    strb r0, [r5,#0x19]
    bgt locret_80C35AA
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C35AA:
    pop {pc}
// end of function sub_80C355C

.thumb
sub_80C35AC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C35BE
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C35E4
loc_80C35BE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C35E4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x10
    mov r3, #0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C35DC
    mov r0, #8
    str r0, [r5,#8]
    b locret_80C35E4
loc_80C35DC:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C35E4:
    pop {pc}
// end of function sub_80C35AC

loc_80C35E6:
    push {lr}
    ldr r1, [pc, #0x80c35f4-0x80c35e8-4] // off_80C35F8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C35F4:    .word off_80C35F8
off_80C35F8:    .word sub_80C3604+1
    .word sub_80C3630+1
    .word sub_80C3692+1
.thumb
sub_80C3604:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3624
    mov r0, #0xf
    strb r0, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#5]
    mov r0, #0
    strh r0, [r5,#0x14]
    ldrb r4, [r5,#4]
    bl sub_80E6C36
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C362E
loc_80C3624:
    ldrb r0, [r5,#0x14]
    tst r0, r0
    beq locret_80C362E
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C362E:
    pop {pc}
// end of function sub_80C3604

.thumb
sub_80C3630:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3658
    mov r0, #5
    strb r0, [r5,#6]
loc_80C363C:
    mov r0, #0xa
    strb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x11]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xbb
    bl f500_8000558
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C3690
loc_80C3658:
    ldrh r0, [r5,#0x20]
    cmp r0, #7
    bne loc_80C367C
    ldrb r0, [r5,#7]
    tst r0, r0
    bne loc_80C367C
    mov r0, #1
    strb r0, [r5,#7]
    mov r2, #0
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_80C3678
    ldrb r0, [r5,#6]
    cmp r0, #1
    bne loc_80C3678
    mov r2, #1
loc_80C3678:
    bl sub_80C36F4
loc_80C367C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C3690
    ldrb r0, [r5,#6]
    sub r0, #1
    strb r0, [r5,#6]
    bgt loc_80C363C
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C3690:
    pop {pc}
// end of function sub_80C3630

.thumb
sub_80C3692:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C36A8
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C36B8
loc_80C36A8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C36B8
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C36B8:
    pop {pc}
// end of function sub_80C3692

.thumb
sub_80C36BA:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C36D0
    mov r0, #4
    strh r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_80C36E4
loc_80C36D0:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C36E4
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
locret_80C36E4:
    pop {pc}
// end of function sub_80C36BA

    push {lr}
    ldr r0, [r5,#0x64]
    mov r1, #0
    strb r1, [r0]
    bl sub_80033B4
    pop {pc}
.thumb
sub_80C36F4:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    mov r4, #0x19
    tst r2, r2
    beq loc_80C3702
    mov r4, #0x1d
loc_80C3702:
    ldr r6, [r5,#0x2c]
    bl sub_80D8744
    pop {r4,r6,pc}
// end of function sub_80C36F4

.thumb
sub_80C370A:
    push {lr}
    ldrb r1, [r5,#0x19]
    lsl r0, r1, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    pop {pc}
// end of function sub_80C370A

.thumb
sub_80C371C:
    push {lr}
    push {r1,r3,r5}
    mov r0, #0x31 
    bl sub_8003298
    add r0, r5, #0
    pop {r2,r3,r5}
    beq locret_80C3738
    strh r2, [r0,#0x12]
    strb r3, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x64]
    mov r1, #1
    strb r1, [r7]
locret_80C3738:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80C371C

loc_80C373C:
    push {lr}
    ldr r1, [pc, #0x80c3750-0x80c373e-2] // off_80C3754
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80C3750:    .word off_80C3754
off_80C3754:    .word sub_80C3760+1
    .word sub_80C37D4+1
    .word sub_8010F0C+1
.thumb
sub_80C3760:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #6
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C3760

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #6
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80C37A6
    bl sub_80033B4
    b locret_80C37C8
loc_80C37A6:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x14
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x80c37cc-0x80c37b4-4] // loc_80C37D0
    ldrb r1, [r5,#4]
    ldrb r2, [r3,r1]
    orr r0, r2
    bl sub_80C3CCC
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C37D4
locret_80C37C8:
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80C37CC:    .word loc_80C37D0
loc_80C37D0:
    cmp r0, #0x14
    str r4, [r7,r0]
.thumb
sub_80C37D4:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c37e8-0x80c37da-2] // off_80C37EC
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80C37E8:    .word off_80C37EC
off_80C37EC:    .word sub_8010CDC+1
    .word sub_80C3814+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C381C+1
    .word loc_80F1FB8+1
    .word loc_80F206C+1
    .word loc_80F21B8+1
// end of function sub_80C37D4

.thumb
sub_80C3814:
    push {lr}
    bl sub_8010F52
    pop {pc}
// end of function sub_80C3814

loc_80C381C:
    push {lr}
    mov r6, #0x74 
    add r6, r6, r5
    ldr r1, [pc, #0x80c3830-0x80c3822-2] // off_80C3834
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C3830:    .word off_80C3834
off_80C3834:    .word sub_80C3838+1
.thumb
sub_80C3838:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #2
    blt loc_80C3868
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C389C
    bl sub_80C38D4
    beq loc_80C389C
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #4
    bl sub_80C39F0
    mov r0, #8
    bl sub_800C960
    bl loc_80F206C
    b locret_80C38AC
loc_80C3868:
    ldrb r0, [r6,#9]
    cmp r0, #5
    blt loc_80C3896
    bl sub_80C39DE
    bne loc_80C389C
    bl sub_80C398C
    beq loc_80C389C
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #0
    bl sub_80C39F0
    mov r0, #9
    bl sub_800C960
    bl loc_80F21B8
    b locret_80C38AC
loc_80C3896:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80C389C:
    bl sub_80C38D4
    beq locret_80C38AC
    mov r0, #7
    bl sub_800C960
    bl loc_80F1FB8
locret_80C38AC:
    pop {pc}
// end of function sub_80C3838

.thumb
sub_80C38AE:
    push {lr}
    mov r2, #0x32 
    ldrb r0, [r5,#0x15]
    cmp r0, #2
    beq loc_80C38BA
    mov r2, #0x1e
loc_80C38BA:
    push {r2}
    bl sub_8012F4A
    pop {r2}
    ldr r1, [pc, #0x80c3988-0x80c38c2-2] // =0xA000
    tst r0, r1
    beq loc_80C38CA
    add r2, #0x28 
loc_80C38CA:
    ldr r0, [r5,#0x58]
    mov r1, #0x70 
    add r1, r1, r0
    strh r2, [r1,#0x18]
    pop {pc}
// end of function sub_80C38AE

.thumb
sub_80C38D4:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    mov r7, sp
    bl sub_800AD20
    bne loc_80C38E4
    mov r0, #0
    b loc_80C3958
loc_80C38E4:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C3942
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    ldr r6, [pc, #0x80c3a24-0x80c38f4-4] // dword_80C3A28
    add r6, r6, r1
    mov r2, #6
    tst r1, r1
    bne loc_80C3900
    mov r2, #1
loc_80C3900:
    strb r2, [r5,#0x14]
    ldrb r0, [r5,#0x13]
    strb r0, [r7,#2]
    bl sub_8001AF6
    mov r1, #7
    and r1, r0
    ldrb r0, [r5,#0x13]
    sub r0, #1
    lsl r0, r0, #2
    add r3, r0, #0
    lsl r0, r0, #1
    add r0, r0, r1
    ldr r1, [pc, #0x80c395c-0x80c391a-2] // dword_80C3960
    ldrb r1, [r1,r0]
    strb r1, [r7]
    ldr r0, [pc, #0x80c3978-0x80c3920-4] // off_80C397C
    add r0, r0, r3
    ldrb r1, [r0,r1]
    strb r1, [r7,#1]
    mov r4, #0
loc_80C392A:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r7,r4]
    strb r1, [r5,#0x15]
    ldr r2, [r6]
    ldr r3, [r6,#4]
    bl sub_8009E78
    tst r0, r0
    bne loc_80C394A
    add r4, #1
    cmp r4, #2
    ble loc_80C392A
loc_80C3942:
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
loc_80C394A:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_80C38AE
    mov r0, #1
loc_80C3958:
    add sp, sp, #8
    pop {r4,r6,r7,pc}
off_80C395C:    .word dword_80C3960
dword_80C3960:    .word 0x3030302, 0x3030302, 0x3010301, 0x3010301, 0x1010201
    .word 0x1010201
off_80C3978:    .word off_80C397C
off_80C397C:    .word unk_2030000
    .word 0x1000300, 0x10200
dword_80C3988:    .word 0xA000
// end of function sub_80C38D4

.thumb
sub_80C398C:
    push {r4,r7,lr}
    bl sub_800ACF6
    beq locret_80C39DC
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    bl sub_800A146
    strb r0, [r7,#0x17]
    mov r4, #1
loc_80C39A2:
    ldrb r3, [r5,#0x16]
    lsl r3, r3, #3
    ldr r1, [pc, #0x80c3a24-0x80c39a6-2] // dword_80C3A28
    add r1, r1, r3
    add r0, r4, #0
    tst r3, r3
    bne loc_80C39B6
    mov r3, #7
    sub r3, r3, r0
    add r0, r3, #0
loc_80C39B6:
    ldr r2, [r1]
    ldr r3, [r1,#4]
    strb r0, [r7,#0x16]
    ldrb r1, [r7,#0x17]
    bl sub_8009E78
    tst r0, r0
    bne loc_80C39CE
    add r4, #1
    cmp r4, #7
    bne loc_80C39A2
    b locret_80C39DC
loc_80C39CE:
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    tst r0, r0
locret_80C39DC:
    pop {r4,r7,pc}
// end of function sub_80C398C

.thumb
sub_80C39DE:
    push {lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c39ec-0x80c39e4-4] // =0xE000
    tst r0, r1
    pop {pc}
    .balign 4, 0x00
dword_80C39EC:    .word 0xE000
// end of function sub_80C39DE

.thumb
sub_80C39F0:
    ldr r1, [pc, #0x80c3a0c-0x80c39f0-4] // dword_80C3A14
    add r1, r1, r0
    ldrb r2, [r5,#4]
    ldrb r1, [r1,r2]
    ldr r2, [pc, #0x80c3a1c-0x80c39f8-4] // off_80C3A20
    lsr r0, r0, #2
    ldrb r0, [r2,r0]
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r3, [r5,#0x58]
    mov r1, #0x70 
    add r3, r3, r1
    str r0, [r3,#8]
    mov pc, lr
off_80C3A0C:    .word dword_80C3A14
    .word dword_80C3A18
dword_80C3A14:    .word 0xC8966432
dword_80C3A18:    .word 0xC8966432
off_80C3A1C:    .word off_80C3A20
off_80C3A20:    .word 0x1E14
off_80C3A24:    .word dword_80C3A28
dword_80C3A28:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_80C39F0

loc_80C3A38:
    push {lr}
    ldr r1, [pc, #0x80c3a4c-0x80c3a3a-2] // off_80C3A50
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C3A4C:    .word off_80C3A50
off_80C3A50:    .word sub_80C3A5C+1
    .word sub_80C3A88+1
    .word sub_80104D8+1
.thumb
sub_80C3A5C:
    push {r7,lr}
    mov r7, #0x70 
    add r7, r7, r5
    mov r0, #4
    strb r0, [r7,#5]
    bl sub_80C3C80
    ldr r2, [r5,#0x2c]
    ldrb r3, [r5,#4]
    bl sub_80DAB14
    str r0, [r7]
    bl sub_80C3C14
    mov r0, #4
    bl sub_80C3BD0
    mov r0, #0
    strb r0, [r7,#7]
    mov r0, #4
    strb r0, [r5,#8]
    pop {r7,pc}
// end of function sub_80C3A5C

.thumb
sub_80C3A88:
    push {lr}
    bl sub_8007A64
    mov r1, #1
    tst r0, r1
    bne loc_80C3A9A
    bl sub_801460A
    b locret_80C3AE2
loc_80C3A9A:
    bl sub_80079EA
    tst r0, r0
    beq loc_80C3AA8
    bl sub_80033B4
    pop {pc}
loc_80C3AA8:
    ldrb r0, [r5]
    mov r1, #0xfb
    and r0, r1
    strb r0, [r5]
    bl sub_8007920
    bne locret_80C3AE2
    mov r0, #0
    strb r0, [r5,#5]
    mov r0, #4
    bl sub_80C3C66
    beq loc_80C3AD2
    mov r0, #1
    strb r0, [r5,#5]
    mov r0, #5
    bl sub_80C3C66
    beq loc_80C3AD2
    mov r0, #2
    strb r0, [r5,#5]
loc_80C3AD2:
    mov r7, #0x70 
    add r7, r7, r5
    ldr r0, [pc, #0x80c3ae4-0x80c3ad6-2] // off_80C3AE8
    ldr r1, [pc, #0x80c3ae4-0x80c3ad8-4] // off_80C3AE8
    ldrb r0, [r7,#7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_80C3AE2:
    pop {pc}
off_80C3AE4:    .word off_80C3AE8
off_80C3AE8:    .word sub_80C3AF4+1
    .word sub_80C3B28+1
    .word sub_80C3B52+1
// end of function sub_80C3A88

.thumb
sub_80C3AF4:
    push {lr}
    ldrb r0, [r5,#5]
    cmp r0, #0
    beq loc_80C3B08
    mov r0, #5
    bl sub_80C3BD0
    mov r0, #8
    strb r0, [r7,#7]
    pop {pc}
loc_80C3B08:
    bl sub_80C3B98
    beq loc_80C3B22
    mov r0, #4
    bl sub_80C3C2E
    mov r0, #4
    bl sub_80C3C4C
    mov r0, #4
    bl sub_80C3BD0
    pop {pc}
loc_80C3B22:
    bl sub_80C3B84
    pop {pc}
// end of function sub_80C3AF4

.thumb
sub_80C3B28:
    push {lr}
    ldrb r0, [r5,#5]
    cmp r0, #1
    beq locret_80C3B50
    cmp r0, #2
    bne loc_80C3B46
    mov r0, #6
    bl sub_80C3C4C
    mov r0, #5
    bl sub_80C3BD0
    mov r0, #8
    strb r0, [r7,#7]
    pop {pc}
loc_80C3B46:
    mov r0, #4
    bl sub_80C3BD0
    mov r0, #0
    strb r0, [r7,#7]
locret_80C3B50:
    pop {pc}
// end of function sub_80C3B28

.thumb
sub_80C3B52:
    push {lr}
    bl sub_80C3B98
    beq loc_80C3B7E
    ldrb r0, [r5,#5]
    cmp r0, #1
    beq loc_80C3B74
    cmp r0, #0
    beq loc_80C3B64
loc_80C3B64:
    bl loc_80C3C40
    mov r0, #4
    bl sub_80C3BD0
    mov r0, #0
    strb r0, [r7,#7]
    pop {pc}
loc_80C3B74:
    bl loc_80C3C40
    mov r0, #4
    strb r0, [r7,#7]
    pop {pc}
loc_80C3B7E:
    bl sub_80C3B84
    pop {pc}
// end of function sub_80C3B52

.thumb
sub_80C3B84:
    ldr r3, [r7]
    ldr r0, [r3,#0x40]
    ldr r1, [r3,#0x34]
    add r0, r0, r1
    str r0, [r3,#0x34]
    ldr r0, [r3,#0x44]
    ldr r1, [r3,#0x38]
    add r1, r1, r0
    str r1, [r3,#0x38]
    mov pc, lr
// end of function sub_80C3B84

.thumb
sub_80C3B98:
    push {r4,r6,lr}
    ldr r6, [r7]
    mov r3, #0
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r4, [pc, #0x80c3cb8-0x80c3ba2-2] // dword_80C3CBC
    add r4, r4, r0
    ldr r0, [r6,#0x34]
    ldr r1, [r6,#0x20]
    ldr r2, [r4]
    add r1, r1, r2
    sub r1, r1, r0
    bmi loc_80C3BCC
    lsl r2, r2, #1
    cmp r1, r2
    bgt loc_80C3BCC
    ldr r0, [r6,#0x38]
    ldr r1, [r6,#0x48]
    ldr r2, [r4]
    add r1, r1, r2
    sub r1, r1, r0
    bmi loc_80C3BCC
    lsl r2, r2, #1
    cmp r1, r2
    bgt loc_80C3BCC
    mov r3, #1
loc_80C3BCC:
    tst r3, r3
    pop {r4,r6,pc}
// end of function sub_80C3B98

.thumb
sub_80C3BD0:
    push {r4,r5,lr}
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r4, [pc, #0x80c3cb8-0x80c3bd6-2] // dword_80C3CBC
    add r4, r4, r1
    ldr r5, [r7]
    ldrb r0, [r7,r0]
    bl sub_80C3C80
    bl sub_800AB0A
    str r0, [r5,#0x20]
    str r1, [r5,#0x48]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x20]
    ldr r2, [r4]
    cmp r0, r1
    bne loc_80C3BF8
    mov r2, #0
    b loc_80C3BFC
loc_80C3BF8:
    blt loc_80C3BFC
    neg r2, r2
loc_80C3BFC:
    str r2, [r5,#0x40]
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x48]
    ldr r2, [r4]
    cmp r0, r1
    bne loc_80C3C0C
    mov r2, #0
    b loc_80C3C10
loc_80C3C0C:
    blt loc_80C3C10
    neg r2, r2
loc_80C3C10:
    str r2, [r5,#0x44]
    pop {r4,r5,pc}
// end of function sub_80C3BD0

.thumb
sub_80C3C14:
    push {lr}
    ldrb r0, [r7,#5]
    mov r1, #1
    bl sub_80C3C58
    strb r0, [r7,#4]
    ldrb r0, [r7,#5]
    mov r1, #0
    mvn r1, r1
    bl sub_80C3C58
    strb r0, [r7,#6]
    pop {pc}
// end of function sub_80C3C14

.thumb
sub_80C3C2E:
    ldrb r0, [r7,r0]
    lsl r0, r0, #1
    ldr r2, [pc, #0x80c3c9c-0x80c3c32-2] // dword_80C3CA0
    add r2, r2, r0
    ldrb r1, [r2,#1]
    lsl r1, r1, #0x19
    bcc locret_80C3C3E
    b loc_80C3C40
locret_80C3C3E:
    mov pc, lr
loc_80C3C40:
    ldr r2, [r7]
    ldr r0, [r2,#0x20]
    str r0, [r2,#0x34]
    ldr r0, [r2,#0x48]
    str r0, [r2,#0x38]
    mov pc, lr
// end of function sub_80C3C2E

.thumb
sub_80C3C4C:
    push {lr}
    ldrb r1, [r7,r0]
    strb r1, [r7,#5]
    bl sub_80C3C14
    pop {pc}
// end of function sub_80C3C4C

.thumb
sub_80C3C58:
    add r0, r0, r1
    bpl loc_80C3C5E
    mov r0, #0xb
loc_80C3C5E:
    cmp r0, #0xb
    ble locret_80C3C64
    mov r0, #0
locret_80C3C64:
    mov pc, lr
// end of function sub_80C3C58

.thumb
sub_80C3C66:
    push {lr}
    mov r1, #0x70 
    add r1, r1, r5
    ldrb r0, [r1,r0]
    bl sub_80C3C80
    bl sub_8009A52
    ldr r1, [pc, #0x80c3c7c-0x80c3c76-2] // =0x3800000
    tst r0, r1
    pop {pc}
dword_80C3C7C:    .word 0x3800000
// end of function sub_80C3C66

.thumb
sub_80C3C80:
    lsl r0, r0, #1
    ldr r3, [pc, #0x80c3c9c-0x80c3c82-2] // dword_80C3CA0
    add r3, r3, r0
    ldrb r0, [r3]
    ldrb r2, [r5,#0x16]
    tst r2, r2
    bne loc_80C3C94
    mov r2, #7
    sub r2, r2, r0
    add r0, r2, #0
loc_80C3C94:
    ldrb r1, [r3,#1]
    lsl r1, r1, #0x19
    lsr r1, r1, #0x19
    mov pc, lr
off_80C3C9C:    .word dword_80C3CA0
dword_80C3CA0:    .word 0x1028101, 0x1040103, 0x2058105, 0x3048305, 0x3020303
    .word 0x2018301
off_80C3CB8:    .word dword_80C3CBC
dword_80C3CBC:    .word 0x10000, 0x15000, 0x1A000, 0x20000
// end of function sub_80C3C80

.thumb
sub_80C3CCC:
    push {r0,r1,r5,lr}
    mov r0, #0x33 
    bl sub_8003298
    add r0, r5, #0
    pop {r1,r2,r5}
    beq locret_80C3CEC
    ldrb r3, [r5,#0x16]
    strb r3, [r0,#0x16]
    str r1, [r0,#0x2c]
    strb r2, [r0,#4]
    str r5, [r0,#0x4c]
    ldrb r2, [r0]
    mov r1, #0x14
    orr r2, r1
    strb r2, [r0]
locret_80C3CEC:
    pop {pc}
    .byte 0, 0
// end of function sub_80C3CCC

loc_80C3CF0:
    push {lr}
    ldr r1, [pc, #0x80c3d04-0x80c3cf2-2] // off_80C3D08
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .balign 4, 0x00
off_80C3D04:    .word off_80C3D08
off_80C3D08:    .word sub_80C3D14+1
    .word loc_80C3D72+1
    .word sub_80033B4+1
.thumb
sub_80C3D14:
    push {lr}
    mov r1, #8
    mov r2, #3
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C3D14

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #3
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0
    str r0, [r5,#0x3c]
    push {r7}
    mov r4, #1
    lsl r4, r4, #0x10
    add r4, #2
    bl sub_80CCE28
    str r0, [r5,#0x60]
    pop {r7}
    tst r0, r0
    beq loc_80C3D6C
    mov r1, #0x64 
    add r1, r1, r5
    str r1, [r0,#0x60]
loc_80C3D6C:
    mov r0, #4
    str r0, [r5,#8]
    pop {pc}
loc_80C3D72:
    push {lr}
    ldr r1, [pc, #0x80c3d80-0x80c3d74-4] // off_80C3D84
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C3D80:    .word off_80C3D84
off_80C3D84:    .word sub_80C3D94+1
    .word sub_80C3DC8+1
    .word loc_80C3DEE+1
    .word sub_80C3EA8+1
.thumb
sub_80C3D94:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3DB6
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3DB6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C3DC6
    mov r2, #4
    strb r2, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C3DC6:
    pop {pc}
// end of function sub_80C3D94

.thumb
sub_80C3DC8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3DDC
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3DDC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C3DEC
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C3DEC:
    pop {pc}
// end of function sub_80C3DC8

loc_80C3DEE:
    push {lr}
    ldr r1, [pc, #0x80c3dfc-0x80c3df0-4] // loc_80C3E00
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C3DFC:    .word loc_80C3E00
loc_80C3E00:
    sub r6, #0x11
    lsr r4, r1, #0x20
    sub r6, #0x1b
    lsr r4, r1, #0x20
    sub r6, #0x37 
    lsr r4, r1, #0x20
    sub r6, #0x87
    lsr r4, r1, #0x20
    mov r0, #3
    strh r0, [r5,#0x22]
    mov r0, #4
    strh r0, [r5,#0xa]
    mov pc, lr
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3E28
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3E28:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C3E34
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C3E34:
    mov pc, lr
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3E4E
    mov r0, #0x10
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3E4E:
    ldrh r0, [r5,#0x20]
    cmp r0, #0xa
    bne loc_80C3E6A
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x17]
    mov r3, #0
    ldr r4, [r5,#4]
    ldr r6, [r5,#0x2c]
    bl sub_80DADDC
loc_80C3E6A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C3E84
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    ble loc_80C3E80
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C3E84
loc_80C3E80:
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C3E84:
    pop {pc}
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3E96
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3E96:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C3EA6
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C3EA6:
    pop {pc}
.thumb
sub_80C3EA8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C3EBC
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C3EBC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C3ED4
    ldr r0, [r5,#0x60]
    bl sub_80CCE48
    mov r0, #0
    ldr r1, [r5,#0x50]
    strb r0, [r1]
    mov r0, #8
    strb r0, [r5,#8]
locret_80C3ED4:
    pop {pc}
// end of function sub_80C3EA8

    push {lr}
    push {r0-r2,r5}
    mov r0, #0x34 
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80C3EFA
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    str r5, [r0,#0x4c]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x50]
    mov r1, #1
    strb r1, [r7]
locret_80C3EFA:
    pop {pc}
loc_80C3EFC:
    push {lr}
    ldr r1, [pc, #0x80c3f10-0x80c3efe-2] // off_80C3F14
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .byte 0, 0
off_80C3F10:    .word off_80C3F14
off_80C3F14:    .word sub_80C3F20+1
    .word sub_80C3F7A+1
    .word sub_80104D8+1
.thumb
sub_80C3F20:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x14
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C3F20

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C3F48
    mov r0, #1
loc_80C3F48:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C3F62
    bl sub_80033B4
    b locret_80C3F78
loc_80C3F62:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    bl sub_8016714
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C3F7A
locret_80C3F78:
    pop {pc}
.thumb
sub_80C3F7A:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c3f8c-0x80c3f80-4] // off_80C3F90
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C3F8C:    .word off_80C3F90
off_80C3F90:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word ho_cb_801018A+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C3FBC+1
    .word sub_80C413C+1
    .word loc_80C4150+1
    .word loc_80C4258+1
    .word loc_80C441E+1
// end of function sub_80C3F7A

loc_80C3FBC:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c3fd0-0x80c3fc4-4] // off_80C3FD4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80C3FD0:    .word off_80C3FD4
off_80C3FD4:    .word sub_80C3FE8+1
    .word sub_80C4088+1
    .word sub_80C409C+1
    .word sub_80C40A8+1
    .word sub_80C40BC+1
.thumb
sub_80C3FE8:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c3ff8-0x80c3fec-4] // off_80C3FFC
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C3FF8:    .word off_80C3FFC
off_80C3FFC:    .word sub_80C4000+1
// end of function sub_80C3FE8

.thumb
sub_80C4000:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #8
    bge loc_80C4042
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_80C4016
    mov r0, #0
loc_80C4016:
    add r0, #1
    ldrb r1, [r6,#9]
    add r1, r1, r0
    strb r1, [r6,#9]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C4038
    ldr r1, [pc, #0x80c4084-0x80c402a-2] // =0xA000
    tst r0, r1
    bne loc_80C4034
    mov r0, #4
    b loc_80C403A
loc_80C4034:
    mov r0, #0xc
    b loc_80C403A
loc_80C4038:
    mov r0, #8
loc_80C403A:
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80C4082
loc_80C4042:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80C4066
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    add r0, #1
    ldrb r0, [r6,#8]
    add r0, r0, r1
    strb r0, [r6,#8]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C4082
loc_80C4066:
    mov r0, #0
    strb r0, [r6,#8]
    bl sub_80C40F8
    cmp r0, #1
    beq locret_80C4082
    bl sub_80BB898
    cmp r0, #0
    beq locret_80C4082
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C4082:
    pop {pc}
dword_80C4084:    .word 0xA000
// end of function sub_80C4000

.thumb
sub_80C4088:
    push {lr}
    bl sub_80B553E
    tst r0, r0
    bne loc_80C4096
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C4096:
    bl sub_80C40DC
    pop {pc}
// end of function sub_80C4088

.thumb
sub_80C409C:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80C40DC
    pop {pc}
// end of function sub_80C409C

.thumb
sub_80C40A8:
    push {lr}
    bl sub_80B56B8
    tst r0, r0
    bne loc_80C40B6
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C40B6:
    bl sub_80C40DC
    pop {pc}
// end of function sub_80C40A8

.thumb
sub_80C40BC:
    push {lr}
    bl sub_80B54C8
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
    pop {pc}
// end of function sub_80C40BC

.thumb
sub_80C40DC:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C4150
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80C40DC

.thumb
sub_80C40F8:
    push {lr}
    bl sub_80079EA
    cmp r0, #0
    bne loc_80C4118
    ldrb r0, [r5,#0x16]
    bl sub_8007BF0
    cmp r0, #0
    beq loc_80C4118
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    sub r1, #1
    lsr r1, r1, #0x10
    cmp r0, r1
    bne loc_80C411C
loc_80C4118:
    mov r0, #0
    pop {pc}
loc_80C411C:
    bl sub_8007BB4
    ldr r1, [pc, #0x80c4138-0x80c4120-4] // =0x258
    cmp r0, r1
    blt loc_80C4118
    mov r0, #0x10
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#9]
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80C4138:    .word 0x258
// end of function sub_80C40F8

.thumb
sub_80C413C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C414E
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C414E:
    pop {pc}
// end of function sub_80C413C

loc_80C4150:
    push {r6,lr}
    ldr r1, [pc, #0x80c4160-0x80c4152-2] // off_80C4164
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C4160:    .word off_80C4164
off_80C4164:    .word sub_80C4174+1
    .word sub_80C41C0+1
    .word sub_80C41FE+1
    .word sub_80C4240+1
.thumb
sub_80C4174:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C41B2
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C41BE
loc_80C41B2:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C41BE:
    pop {r6,pc}
// end of function sub_80C4174

.thumb
sub_80C41C0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C41FC
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C41FC:
    pop {pc}
// end of function sub_80C41C0

.thumb
sub_80C41FE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4230
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8012F4A
    ldr r2, [pc, #0x80c423c-0x80c421a-2] // =0xA000
    and r2, r0
    beq loc_80C4222
    mov r2, #0x28 
loc_80C4222:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c4234-0x80c4224-4] // dword_80C4238
    ldrb r0, [r1,r0]
    add r0, r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C4230:
    pop {pc}
    .balign 4, 0x00
off_80C4234:    .word dword_80C4238
dword_80C4238:    .word 0x14191E28
dword_80C423C:    .word 0xA000
// end of function sub_80C41FE

.thumb
sub_80C4240:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4256
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C4256:
    pop {pc}
// end of function sub_80C4240

loc_80C4258:
    push {lr}
    ldr r1, [pc, #0x80c4268-0x80c425a-2] // off_80C426C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C4268:    .word off_80C426C
off_80C426C:    .word sub_80C4284+1
    .word sub_80C42DC+1
    .word sub_80C431A+1
    .word sub_80C433C+1
    .word sub_80C4350+1
    .word sub_80C43EC+1
.thumb
sub_80C4284:
    push {r6,lr}
    bl sub_80BB898
    tst r0, r0
    beq loc_80C42CE
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80C42CE
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C42DA
loc_80C42CE:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C42DA:
    pop {r6,pc}
// end of function sub_80C4284

.thumb
sub_80C42DC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4318
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C4318:
    pop {pc}
// end of function sub_80C42DC

.thumb
sub_80C431A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C433A
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C433A:
    pop {pc}
// end of function sub_80C431A

.thumb
sub_80C433C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C434E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C434E:
    pop {pc}
// end of function sub_80C433C

.thumb
sub_80C4350:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C4364
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x29 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C4364:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x20 
    bne loc_80C4370
    mov r0, #0xa
    bl sub_800AF88
loc_80C4370:
    cmp r0, #0x15
    bne loc_80C4380
    mov r4, #3
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    b loc_80C43CC
loc_80C4380:
    cmp r0, #0xc
    bne loc_80C43CC
    ldrb r6, [r5,#4]
    lsl r6, r6, #1
    ldr r1, [pc, #0x80c43e0-0x80c4388-4] // dword_80C43E4
    ldrh r1, [r1,r6]
    mov r6, #0xa
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r4, [pc, #0x80c43dc-0x80c439c-4] // =0x705FF02
    push {r0,r1}
    mov r2, #0
    mov r7, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r0,r1}
    mov r4, #0x18
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #8
    orr r4, r2
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
loc_80C43CC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C43D8
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C43D8:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C43DC:    .word 0x705FF02
off_80C43E0:    .word dword_80C43E4
dword_80C43E4:    .word 0x320014
    .word 0x960064
// end of function sub_80C4350

.thumb
sub_80C43EC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C43FC
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C43FC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C441C
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C441C:
    pop {pc}
// end of function sub_80C43EC

loc_80C441E:
    push {lr}
    ldr r1, [pc, #0x80c442c-0x80c4420-4] // off_80C4430
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C442C:    .word off_80C4430
off_80C4430:    .word sub_80C4444+1
    .word sub_80C44B0+1
    .word sub_80C44EE+1
    .word sub_80C450C+1
    .word sub_80C45A4+1
.thumb
sub_80C4444:
    push {r6,lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C445A
    bl sub_80B56B8
    tst r0, r0
    bne loc_80C445E
loc_80C445A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C445E:
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80C449E
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C44AE
loc_80C449E:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C44AE:
    pop {r6,pc}
// end of function sub_80C4444

.thumb
sub_80C44B0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C44EC
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C44EC:
    pop {pc}
// end of function sub_80C44B0

.thumb
sub_80C44EE:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C450A
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C450A:
    pop {pc}
// end of function sub_80C44EE

.thumb
sub_80C450C:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C4536
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r4, #4
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x90
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C4536:
    ldrh r0, [r5,#0x20]
    cmp r0, #9
    bne loc_80C4586
    bl sub_8012F4A
    ldr r1, [pc, #0x80c45a0-0x80c4540-4] // =0xA000
    tst r0, r1
    beq loc_80C454C
    bl sub_80B921E
    b loc_80C4550
loc_80C454C:
    bl sub_800A15E
loc_80C4550:
    lsl r1, r1, #8
    orr r0, r1
    lsl r0, r0, #0x10
    mov r4, #2
    add r4, r4, r0
    bl sub_800AB54
    mov r1, #4
    mul r0, r1
    ldr r0, [r5,#0x34]
    lsl r1, r1, #0x10
    add r1, r1, r0
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r7, #0x30 
    lsl r7, r7, #0x10
    add r3, r3, r7
    ldrb r6, [r5,#4]
    ldr r0, [pc, #0x80c4598-0x80c4574-4] // dword_80C459C
    ldrb r0, [r0,r6]
    mov r6, #0xa
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_80D392C
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80C4586:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x15
    blt locret_80C4594
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C4594:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C4598:    .word dword_80C459C
dword_80C459C:    .word 0x96643214
dword_80C45A0:    .word 0xA000
// end of function sub_80C450C

.thumb
sub_80C45A4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C45B4
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C45B4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C45D0
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C45D0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80C45A4

loc_80C45D4:
    push {lr}
    ldr r1, [pc, #0x80c45e8-0x80c45d6-2] // off_80C45EC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C45E8:    .word off_80C45EC
off_80C45EC:    .word sub_80C45F8+1
    .word sub_80C4670+1
    .word sub_8010F0C+1
.thumb
sub_80C45F8:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x19
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C45F8

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_80C4622
    mov r0, #7
    b loc_80C4628
loc_80C4622:
    cmp r1, #0
    beq loc_80C4628
    mov r0, #9
loc_80C4628:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C4642
    bl sub_80033B4
    b locret_80C466E
loc_80C4642:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #0x20 
    bl sub_8012F36
    mov r4, #0xe
    lsl r4, r4, #0x10
    add r4, #0x19
    lsl r4, r4, #8
    add r4, #8
    bl sub_80CC4E8
    str r0, [r5,#0x7c]
    mov r0, #0xa
    str r0, [r5,#0x74]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C4670
locret_80C466E:
    pop {pc}
.thumb
sub_80C4670:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c4688-0x80c4676-2] // off_80C468C
    bl sub_8013D54
    bl sub_8012D16
    bl sub_80C4D8E
    pop {pc}
    .balign 4, 0x00
off_80C4688:    .word off_80C468C
off_80C468C:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word sub_80C46C0+1
    .word sub_80C46DC+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C46F0+1
    .word sub_80C4DE8+1
    .word loc_80C4DFC+1
    .word loc_80C4F82+1
    .word loc_80C5074+1
    .word loc_80C513C+1
    .word loc_80C5596+1
// end of function sub_80C4670

.thumb
sub_80C46C0:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C46D6
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80C46D6
    mov r0, #0
    mov r1, #0x6f 
    bl sub_8024F9C
loc_80C46D6:
    bl sub_8010CF8
    pop {pc}
// end of function sub_80C46C0

.thumb
sub_80C46DC:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80C46EA
    mov r0, #0
    str r0, [r5,#0x78]
    strb r0, [r5,#5]
loc_80C46EA:
    bl sub_8010E34
    pop {pc}
// end of function sub_80C46DC

loc_80C46F0:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c4704-0x80c46f8-4] // off_80C4708
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80C4704:    .word off_80C4708
off_80C4708:    .word sub_80C4718+1
    .word sub_80C47A4+1
    .word sub_80C480C+1
    .word sub_80C4876+1
.thumb
sub_80C4718:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c4728-0x80c471c-4] // off_80C472C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C4728:    .word off_80C472C
off_80C472C:    .word sub_80C4734+1
    .word sub_80C4778+1
// end of function sub_80C4718

.thumb
sub_80C4734:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #2
    bge loc_80C4758
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    cmp r0, #2
    ble loc_80C4752
    mov r0, #2
loc_80C4752:
    add r0, #2
    strb r0, [r6,#0xa]
    b locret_80C4776
loc_80C4758:
    bl sub_8012F4A
    ldr r1, [pc, #0x80c4808-0x80c475c-4] // =0xA000
    tst r0, r1
    bne loc_80C4772
    ldrb r0, [r6,#0xb]
    mov r1, #1
    eor r1, r0
    strb r1, [r6,#0xb]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C4772:
    mov r0, #4
    strb r0, [r6,#1]
locret_80C4776:
    pop {pc}
// end of function sub_80C4734

.thumb
sub_80C4778:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80C478A
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80C4796
loc_80C478A:
    mov r0, #0xb
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6,#1]
loc_80C4796:
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne locret_80C47A2
    strb r0, [r6,#9]
locret_80C47A2:
    pop {pc}
// end of function sub_80C4778

.thumb
sub_80C47A4:
    push {r4,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c4808-0x80c47aa-2] // =0xA000
    tst r0, r1
    beq loc_80C47C4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x80c4800-0x80c47b4-4] // =0x30
    ldr r3, [pc, #0x80c4804-0x80c47b6-2] // =0xF880080
    ldr r4, [pc, #0x80c47f4-0x80c47b8-4] // dword_80C47F8
    bl sub_800F7E8
    cmp r0, #0
    bne loc_80C47D0
    b loc_80C47CC
loc_80C47C4:
    bl sub_80B553E
    tst r0, r0
    bne loc_80C47D0
loc_80C47CC:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C47D0:
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C4DFC
    ldrb r0, [r6,#0xa]
    sub r0, #1
    strb r0, [r6,#0xa]
    bne locret_80C47F0
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80C47F0:
    pop {r4,pc}
    .balign 4, 0x00
off_80C47F4:    .word dword_80C47F8
dword_80C47F8:    .word 0x100FF00, 0x7F
off_80C4800:    .word 0x30
dword_80C4804:    .word 0xF880080
dword_80C4808:    .word 0xA000
// end of function sub_80C47A4

.thumb
sub_80C480C:
    push {lr}
    ldrb r0, [r6,#2]
    cmp r0, #0
    bne loc_80C4848
    mov r0, #1
    strb r0, [r6,#2]
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    ldrb r1, [r6,#9]
    add r1, r1, r0
    add r1, #1
    strb r1, [r6,#9]
    bl sub_80C48E4
    cmp r0, #0
    beq loc_80C486C
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    lsl r1, r1, #4
    orr r0, r1
    str r0, [r5,#0x60]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C4DFC
    b locret_80C4874
loc_80C4848:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [r5,#0x60]
    cmp r0, r1
    bne loc_80C4860
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b loc_80C486C
loc_80C4860:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C486C:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
locret_80C4874:
    pop {pc}
// end of function sub_80C480C

.thumb
sub_80C4876:
    push {lr}
    ldrb r0, [r6,#2]
    cmp r0, #0
    bne loc_80C48A2
    mov r0, #1
    strb r0, [r6,#2]
    bl sub_80C4962
    cmp r0, #0
    beq loc_80C48D6
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    lsl r1, r1, #4
    orr r0, r1
    str r0, [r5,#0x60]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C4DFC
    b locret_80C48E2
loc_80C48A2:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [r5,#0x60]
    cmp r0, r1
    bne loc_80C48CA
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    ldrb r1, [r6,#8]
    add r1, r1, r0
    add r1, #1
    strb r1, [r6,#8]
    b loc_80C48D6
loc_80C48CA:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C48D6:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#1]
locret_80C48E2:
    pop {pc}
// end of function sub_80C4876

.thumb
sub_80C48E4:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    mov r7, sp
    mov r4, #0
    mov r0, #5
    mov r1, #2
    ldr r2, [pc, #0x80c497c-0x80c48f0-4] // =0x30
    ldr r3, [pc, #0x80c4980-0x80c48f2-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C4902
    mov r0, #0x25 
    strb r0, [r7,r4]
    add r4, #1
loc_80C4902:
    mov r0, #6
    mov r1, #1
    ldr r2, [pc, #0x80c497c-0x80c4906-2] // =0x30
    ldr r3, [pc, #0x80c4980-0x80c4908-4] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C4918
    mov r0, #0x16
    strb r0, [r7,r4]
    add r4, #1
loc_80C4918:
    mov r0, #6
    mov r1, #3
    ldr r2, [pc, #0x80c497c-0x80c491c-4] // =0x30
    ldr r3, [pc, #0x80c4980-0x80c491e-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C492E
    mov r0, #0x36 
    strb r0, [r7,r4]
    add r4, #1
loc_80C492E:
    mov r0, #6
    mov r1, #2
    ldr r2, [pc, #0x80c497c-0x80c4932-2] // =0x30
    ldr r3, [pc, #0x80c4980-0x80c4934-4] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C4944
    mov r0, #0x26 
    strb r0, [r7,r4]
    add r4, #1
loc_80C4944:
    cmp r4, #0
    bne loc_80C494C
    mov r0, #0
    b loc_80C495E
loc_80C494C:
    mov r0, sp
    add r1, r4, #0
    lsl r2, r4, #2
    bl fA00_8000AA2
    ldrb r0, [r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C495E:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_80C48E4

.thumb
sub_80C4962:
    push {r4,r6,r7,lr}
    mov r0, #6
    mov r1, #2
    ldr r2, [pc, #0x80c497c-0x80c4968-4] // =0x30
    ldr r3, [pc, #0x80c4980-0x80c496a-2] // =0xF880080
    bl sub_8009E78
    cmp r0, #0
    beq locret_80C4978
    mov r0, #6
    mov r1, #2
locret_80C4978:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C497C:    .word 0x30
dword_80C4980:    .word 0xF880080
// end of function sub_80C4962

.thumb
sub_80C4984:
    push {lr}
    ldrh r0, [r5,#0x22]
    mov r3, #0
    cmp r0, #6
    beq loc_80C499C
    mov r3, #4
    cmp r0, #8
    beq loc_80C499C
    mov r3, #8
    cmp r0, #0xc
    beq loc_80C499C
    mov r3, #0xc
loc_80C499C:
    ldr r0, [pc, #0x80c49b4-0x80c499c-4] // off_80C49B8
    ldr r3, [r0,r3]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    ldrb r0, [r3,r0]
    lsl r0, r0, #0x10
    mov r1, #0x24 
    svc 6
    mov r1, #1
    lsl r1, r1, #0x10
    sub r1, r1, r0
    pop {pc}
off_80C49B4:    .word off_80C49B8
off_80C49B8:    .word dword_80C49C8
    .word 0x80C49CE, 0x80C49D6, 0x80C49E2
dword_80C49C8:    .word 0x1B120903, 0x6022421, 0x1C17110B, 0x3012421, 0x120E0A06
    .word 0x211E1A16, 0x2012423, 0xA070503, 0x1815110D, 0x22201E1B
    .word 0x2423
// end of function sub_80C4984

loc_80C49F4:
    push {r4,r6,r7,lr}
    bl sub_8012F4A
    ldr r1, [pc, #0x80c4c34-0x80c49fa-2] // =0xA000
    tst r0, r1
    beq loc_80C4A04
    mov r0, #0xc
    b loc_80C4A10
loc_80C4A04:
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x80c4a4c-0x80c4a0c-4] // dword_80C4A50
    ldrb r0, [r1,r0]
loc_80C4A10:
    ldr r1, [pc, #0x80c4a60-0x80c4a10-4] // off_80C4A64
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    cmp r0, #0
    beq locret_80C4A4A
    mov r2, #6
    mul r2, r1
    sub r2, #6
    add r2, r2, r0
    sub r2, #1
    mov r3, #0x60 
    add r3, r3, r2
    mov r2, #0x20 
    strb r2, [r5,r3]
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c4a74-0x80c4a36-2] // loc_80C4A78
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    mov r4, #0
    bl sub_80DB6A4
    bl sub_80CB010
locret_80C4A4A:
    pop {r4,r6,r7,pc}
off_80C4A4C:    .word dword_80C4A50
dword_80C4A50:    .word 0x80400, 0x4000804, 0x8040008, 0x4000400
off_80C4A60:    .word off_80C4A64
off_80C4A64:    .word sub_80C4A80+1
    .word sub_80C4A9C+1
    .word sub_80C4AC8+1
    .word sub_80C4AD4+1
off_80C4A74:    .word loc_80C4A78
loc_80C4A78:
    lsl r4, r4, #1
    lsl r4, r5, #4
    lsl r4, r5, #4
    lsl r0, r1, #3
.thumb
sub_80C4A80:
    push {lr}
    bl sub_800A15E
    mov r2, #3
    mul r2, r1
    add r2, r2, r0
    mov r3, #0x60 
    add r3, r3, r2
    ldrb r2, [r5,r3]
    cmp r2, #0
    beq locret_80C4A9A
    bl sub_80C4AC8
locret_80C4A9A:
    pop {pc}
// end of function sub_80C4A80

.thumb
sub_80C4A9C:
    push {r4,lr}
    bl sub_800A15E
    ldr r2, [pc, #0x80c4ae0-0x80c4aa2-2] // =0x0
    ldr r3, [pc, #0x80c4ae4-0x80c4aa4-4] // =0x20
    ldr r4, [pc, #0x80c4ab8-0x80c4aa6-2] // dword_80C4ABC
    bl sub_80C4AEC
    cmp r0, #0
    bne locret_80C4AB4
    bl sub_80C4AC8
locret_80C4AB4:
    pop {r4,pc}
    .balign 4, 0x00
off_80C4AB8:    .word dword_80C4ABC
dword_80C4ABC:    .word 0xFF0001, 0x100FF00, 0x7F
// end of function sub_80C4A9C

.thumb
sub_80C4AC8:
    push {lr}
    ldr r2, [pc, #0x80c4ae0-0x80c4aca-2] // =0x0
    ldr r3, [pc, #0x80c4ae4-0x80c4acc-4] // =0x20
    bl sub_80C4B74
    pop {pc}
// end of function sub_80C4AC8

.thumb
sub_80C4AD4:
    push {lr}
    ldr r2, [pc, #0x80c4ae0-0x80c4ad6-2] // =0x0
    ldr r3, [pc, #0x80c4ae8-0x80c4ad8-4] // dword_8000004+28
    bl sub_80C4B74
    pop {pc}
dword_80C4AE0:    .word 0x0
dword_80C4AE4:    .word 0x20
off_80C4AE8:    .word dword_8000004+0x1C
// end of function sub_80C4AD4

.thumb
sub_80C4AEC:
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
loc_80C4B02:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_80C4B58
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
    beq loc_80C4B54
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    mov r2, #6
    mul r2, r1
    sub r2, #6
    add r2, r2, r0
    sub r2, #1
    mov r3, #0x60 
    add r3, r3, r2
    ldrb r2, [r5,r3]
    cmp r2, #0
    bne loc_80C4B54
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [sp,#0x2c]
    add r2, sp, #0
    strb r0, [r2,r1]
    add r1, #1
    str r1, [sp,#0x2c]
loc_80C4B54:
    add r4, #2
    b loc_80C4B02
loc_80C4B58:
    ldr r0, [sp,#0x2c]
    tst r0, r0
    beq loc_80C4B70
    bl sub_8001AF6
    ldr r1, [sp,#0x2c]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C4B70:
    add sp, sp, #0x38
    pop {r4,pc}
// end of function sub_80C4AEC

.thumb
sub_80C4B74:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    mov r7, sp
    mov r6, #0
    mov r1, #3
loc_80C4B7E:
    mov r0, #6
loc_80C4B80:
    push {r0-r3,r6,r7}
    bl sub_8009A52
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_80C4BB0
    and r4, r2
    cmp r4, r2
    bne loc_80C4BB0
    push {r0-r3}
    mov r2, #3
    mul r2, r1
    add r2, r2, r0
    mov r3, #0x60 
    add r3, r3, r2
    ldrb r2, [r5,r3]
    cmp r2, #0
    pop {r0-r3}
    bne loc_80C4BB0
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_80C4BB0:
    sub r0, #1
    bne loc_80C4B80
    sub r1, #1
    bne loc_80C4B7E
    add r0, r6, #0
    beq loc_80C4BCC
    bl sub_8001AF6
    add r1, r6, #0
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C4BCC:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
// end of function sub_80C4B74

.thumb
sub_80C4BD0:
    mov r2, #0x60 
    add r2, r2, r5
    mov r3, #0x11
loc_80C4BD6:
    ldrb r0, [r2,r3]
    sub r1, r0, #1
    bmi loc_80C4BDE
    strb r1, [r2,r3]
loc_80C4BDE:
    sub r3, #1
    bpl loc_80C4BD6
    mov pc, lr
// end of function sub_80C4BD0

.thumb
sub_80C4BE4:
    push {r4,r6,r7,lr}
    lsl r6, r0, #1
    sub r6, #1
    mov r0, #0xff
    and r6, r0
    mov r4, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x80c4c34-0x80c4bf4-4] // =0xA000
    tst r0, r1
    bne loc_80C4BFC
    add r4, #1
loc_80C4BFC:
    lsl r4, r4, #8
    add r4, r4, r6
    lsl r4, r4, #8
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80C4C0A
    add r4, #1
loc_80C4C0A:
    mov r6, #0x14
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c4c28-0x80c4c12-2] // dword_80C4C2C
    ldrh r2, [r3,r2]
    add r6, r6, r2
    mov r2, #0
    mov r3, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80DB91C
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C4C28:    .word dword_80C4C2C
dword_80C4C2C:    .word 0x25800C8, 0x1900258
dword_80C4C34:    .word 0xA000
// end of function sub_80C4BE4

.thumb
sub_80C4C38:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r1, [pc, #0x80c4c90-0x80c4c3e-2] // dword_80C4C98
    ldrsb r0, [r1,r0]
    mov r4, #0x28 
    lsl r4, r4, #0x10
    mul r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1,r2}
    add r1, r1, r4
    lsl r4, r6, #8
    ldr r3, [pc, #0x80c4c94-0x80c4c52-2] // dword_80C4C98
    ldrb r3, [r3,r7]
    add r4, r4, r3
    mov r3, #0
    bl sub_80E17DE
    add r0, r6, #0
    bl loc_800AB56
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c4ca8-0x80c4c72-2] // loc_80C4CAC
    ldrh r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c4c9c-0x80c4c78-4] // dword_80C4CA0
    lsl r7, r7, #2
    ldr r4, [r4,r7]
    mov r7, #3
    mov r3, #0
    mov r2, #0
    bl sub_80CD6D6
    mov r0, #0x91
    bl f500_8000558
    pop {r4,r6,r7,pc}
off_80C4C90:    .word dword_80C4C98
dword_80C4C94:    .word 0x80C4C9A
dword_80C4C98:    .word 0x5C5BFF01
off_80C4C9C:    .word dword_80C4CA0
dword_80C4CA0:    .word 0x705FF02, 0x705FF04
off_80C4CA8:    .word loc_80C4CAC
// end of function sub_80C4C38

loc_80C4CAC:
    lsl r4, r4, #1
    lsl r4, r5, #4
    lsl r4, r5, #4
    lsl r0, r1, #3
loc_80C4CB4:
    push {r4,r6,r7,lr}
    bl sub_800A15E
    str r0, [r5,#0x68]
    str r1, [r5,#0x6c]
    mov r6, #0
    bl sub_8001AF6
    mov r1, #0xf
    and r0, r1
    mov r1, #0
    cmp r0, #6
    blt loc_80C4CD0
    mov r1, #1
loc_80C4CD0:
    add r0, r1, #0
    bl loc_800AB56
    add r4, r0, #0
loc_80C4CD8:
    ldr r0, [r5,#0x68]
    ldr r1, [r5,#0x6c]
    add r0, r0, r4
    ldrb r2, [r5,#0x12]
    ldrb r3, [r5,#0x13]
    cmp r0, r2
    bne loc_80C4CF2
    cmp r1, r3
    bne loc_80C4CF2
    mov r0, #0
    mov r1, #0
    mov r2, #0
    b loc_80C4CFE
loc_80C4CF2:
    ldr r2, [pc, #0x80c4d58-0x80c4cf2-2] // =0x10
    ldr r3, [pc, #0x80c4d64-0x80c4cf4-4] // =0xF880000
    .hword 0xF745
    .word 0x2800F8BF
    .byte 0x4, 0xD1
loc_80C4CFE:
    cmp r6, #0
    bne locret_80C4D10
    neg r4, r4
    mov r6, #1
    bne loc_80C4CD8
    ldr r0, [r5,#0x68]
    ldr r1, [r5,#0x6c]
    add r0, r0, r4
    lsr r2, r4, #0x1f
locret_80C4D10:
    pop {r4,r6,r7,pc}
loc_80C4D12:
    push {r4,r6,r7,lr}
    bl sub_800A15E
    str r0, [r5,#0x68]
    str r1, [r5,#0x6c]
    .word 0x21016FA8
    .word 0xF7454048, 0x1C04FF18, 0x6EE96EA8, 0x7CAA1900, 0x42907CEB
    .word 0x4299D101, 0x4A07D005, 0xF7454B09, 0x2800F89B, 0x2000D103
    .word 0x22002100, 0x6EA8E003
    .word 0x19006EE9
    lsr r2, r4, #0x1f
    pop {r4,r6,r7,pc}
dword_80C4D58:    .word 0x10
    .word 0xF800000, 0x7800000
dword_80C4D64:    .word 0xF880000
.thumb
sub_80C4D68:
    push {r4,r6,r7,lr}
    mov r7, #3
loc_80C4D6C:
    mov r6, #2
loc_80C4D6E:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    mov r1, #0x40 
    tst r0, r1
    bne loc_80C4D84
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009AB8
loc_80C4D84:
    sub r6, #1
    bne loc_80C4D6E
    sub r7, #1
    bne loc_80C4D6C
    pop {r4,r6,r7,pc}
// end of function sub_80C4D68

.thumb
sub_80C4D8E:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#4]
    cmp r0, #1
    bne locret_80C4DE6
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_80C4DE6
    bl sub_8007920
    bne locret_80C4DE6
    ldr r0, [r5,#0x74]
    cmp r0, #0
    bne loc_80C4DC8
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#4]
    cmp r0, #4
    bne loc_80C4DC8
    mov r0, #0x20 
    ldrb r0, [r3,r0]
    cmp r0, #0
    beq locret_80C4DE6
    ldr r0, [r5,#0x50]
    cmp r0, #0
    bne locret_80C4DE6
    mov r7, #0x50 
    add r7, r7, r5
    bl sub_80E738C
    b locret_80C4DE6
loc_80C4DC8:
    ldr r0, [r5,#0x74]
    sub r0, #1
    str r0, [r5,#0x74]
    bne locret_80C4DE6
    mov r0, #4
    bl sub_8012D82
    mov r7, #0x50 
    add r7, r7, r5
    bl sub_80E738C
    mov r0, #0x26 
    add r0, #0xff
    bl f500_8000558
locret_80C4DE6:
    pop {r4,r6,r7,pc}
// end of function sub_80C4D8E

.thumb
sub_80C4DE8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C4DFA
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C4DFA:
    pop {pc}
// end of function sub_80C4DE8

loc_80C4DFC:
    push {r6,lr}
    ldr r1, [pc, #0x80c4e0c-0x80c4dfe-2] // off_80C4E10
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C4E0C:    .word off_80C4E10
off_80C4E10:    .word sub_80C4E20+1
    .word sub_80C4F10+1
    .word sub_80C4DE8+1
.thumb
sub_80C4E1C:
    push {r4,r6,lr}
    b loc_80C4E28
// end of function sub_80C4E1C

.thumb
sub_80C4E20:
    push {r4,r6,lr}
    bl sub_800ACF6
    beq loc_80C4EEE
loc_80C4E28:
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x80
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c4efc-0x80c4e44-4] // dword_80C4F00
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    ldrb r0, [r6,#4]
    ldrb r1, [r5,#0x12]
    sub r0, r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r6,#5]
    ldrb r1, [r5,#0x13]
    sub r0, r0, r1
    str r0, [r5,#0x44]
    add r0, #6
    cmp r0, #5
    blt loc_80C4E7A
    cmp r0, #7
    bgt loc_80C4E7A
    ldr r0, [r5,#0x40]
    add r0, #6
    cmp r0, #5
    blt loc_80C4E7A
    cmp r0, #7
    bgt loc_80C4E7A
    ldrh r0, [r5,#0x20]
    lsr r0, r0, #1
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
loc_80C4E7A:
    bl sub_8012D74
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0xa
    lsl r4, r4, #8
    add r4, #0
    ldr r6, [pc, #0x80c4f04-0x80c4e88-4] // =0x3004
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0xa
    lsl r4, r4, #8
    add r4, #0xe
    ldr r6, [pc, #0x80c4f04-0x80c4e98-4] // =0x3004
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #4
    lsl r4, r4, #8
    add r4, #0
    ldr r6, [pc, #0x80c4f08-0x80c4ea8-4] // =0x202C
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #4
    lsl r4, r4, #8
    add r4, #0xe
    ldr r6, [pc, #0x80c4f08-0x80c4eb8-4] // =0x202C
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    ldr r6, [pc, #0x80c4f0c-0x80c4eca-2] // =0x1000
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    add r4, #0xe
    ldr r6, [pc, #0x80c4f0c-0x80c4ede-2] // =0x1000
    bl sub_80C4F6C
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C4EFA
loc_80C4EEE:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C4EFA:
    pop {r4,r6,pc}
off_80C4EFC:    .word dword_80C4F00
dword_80C4F00:    .word 0xC0C0C10
dword_80C4F04:    .word 0x3106
dword_80C4F08:    .word 0x2083
off_80C4F0C:    .word 0x1000
// end of function sub_80C4E20

.thumb
sub_80C4F10:
    push {r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4F4E
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c4f50-0x80c4f44-4] // loc_80C4F54
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C4F4E:
    pop {r6,r7,pc}
off_80C4F50:    .word loc_80C4F54
// end of function sub_80C4F10

loc_80C4F54:
    lsr r4, r2, #8
    lsr r2, r1, #0x1c
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4F6A
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C4F6A:
    pop {pc}
.thumb
sub_80C4F6C:
    push {r1-r3,lr}
    mov r3, #0
    bl sub_80E6FAE
    cmp r0, #0
    beq locret_80C4F80
    ldrb r1, [r0]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r0]
locret_80C4F80:
    pop {r1-r3,pc}
// end of function sub_80C4F6C

loc_80C4F82:
    push {r6,lr}
    ldr r1, [pc, #0x80c4f90-0x80c4f84-4] // off_80C4F94
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C4F90:    .word off_80C4F94
off_80C4F94:    .word sub_80C4FA4+1
    .word sub_80C4FD0+1
    .word sub_80C5004+1
    .word sub_80C504C+1
.thumb
sub_80C4FA4:
    push {lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C4FBA
    mov r0, #1
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80C4FC2
    mov r0, #8
    strh r0, [r5,#0x20]
loc_80C4FBA:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4FCE
loc_80C4FC2:
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C4FCE:
    pop {pc}
// end of function sub_80C4FA4

.thumb
sub_80C4FD0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C4FFA
    mov r0, #4
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c4ffc-0x80c4fe0-4] // dword_80C5000
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x22]
    mov r0, #0x60 
    add r0, r0, r5
    mov r1, #0x12
    bl f900_8000910
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C4FFA:
    pop {pc}
off_80C4FFC:    .word dword_80C5000
dword_80C5000:    .word 0x161E1E12
// end of function sub_80C4FD0

.thumb
sub_80C5004:
    push {lr}
    bl sub_80C4BD0
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C5036
    mov r0, #1
    strb r0, [r5,#0xb]
    bl loc_80C49F4
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne loc_80C502E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
    b locret_80C5042
loc_80C502E:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c5044-0x80c5030-4] // loc_80C5048
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
loc_80C5036:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C5042
    mov r0, #0
    strb r0, [r5,#0xb]
locret_80C5042:
    pop {pc}
off_80C5044:    .word loc_80C5048
// end of function sub_80C5004

loc_80C5048:
    lsl r2, r1, #0x18
    lsr r6, r0, #0x20
.thumb
sub_80C504C:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    beq loc_80C5062
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C5062
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80C5062:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C5072
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C5072:
    pop {pc}
// end of function sub_80C504C

loc_80C5074:
    push {r6,lr}
    ldr r1, [pc, #0x80c5084-0x80c5076-2] // off_80C5088
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C5084:    .word off_80C5088
off_80C5088:    .word sub_80C5094+1
    .word sub_80C50EE+1
    .word sub_80C504C+1
.thumb
sub_80C5094:
    push {r4,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C50A8
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #9
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
loc_80C50A8:
    ldrb r0, [r5,#0x10]
    cmp r0, #0xa
    beq loc_80C50D2
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C50D2
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #6
    add r0, #0xff
    bl f500_8000558
    mov r4, #0x20 
    lsl r4, r4, #8
    add r4, #0x1e
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
loc_80C50D2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C50EC
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0xb
    strb r0, [r5,#0x10]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C50EC:
    pop {r4,pc}
// end of function sub_80C5094

.thumb
sub_80C50EE:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0xc
    beq loc_80C5104
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C5104
    mov r0, #0xc
    strb r0, [r5,#0x10]
loc_80C5104:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x2d 
    bne loc_80C5116
    mov r0, #0
    bl sub_80C4BE4
    mov r0, #0x10
    bl sub_800AF88
loc_80C5116:
    cmp r0, #0xf
    bne loc_80C5126
    mov r0, #1
    bl sub_80C4BE4
    mov r0, #0x10
    bl sub_800AF88
loc_80C5126:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C513A
    mov r0, #0xd
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C513A:
    pop {pc}
// end of function sub_80C50EE

loc_80C513C:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldr r1, [pc, #0x80c5150-0x80c5142-2] // off_80C5154
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C5150:    .word off_80C5154
off_80C5154:    .word sub_80C5168+1
    .word sub_80C5238+1
    .word sub_80C5248+1
    .word sub_80C531C+1
    .word sub_80C534E+1
.thumb
sub_80C5168:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_80C51C2
    bl sub_800ACF6
    beq locret_80C5224
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5228-0x80c517a-2] // =0xA000
    tst r0, r1
    bne loc_80C5218
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #3
    mov r1, #2
    ldr r2, [pc, #0x80c522c-0x80c5188-4] // =0x10
    ldr r3, [pc, #0x80c5230-0x80c518a-2] // =0xF800000
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C5218
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #3
    strb r0, [r6,#4]
    mov r1, #2
    strb r1, [r6,#5]
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80DBB66
    mov r0, #9
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
loc_80C51C2:
    ldrb r0, [r5,#0x10]
    cmp r0, #0xa
    beq loc_80C51EC
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C51EC
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r0, #6
    add r0, #0xff
    bl f500_8000558
    mov r4, #0x20 
    lsl r4, r4, #8
    add r4, #0x1e
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
loc_80C51EC:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C5224
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_800ACF6
    beq loc_80C520A
    bl sub_80C5368
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C5224
loc_80C520A:
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#0x10]
loc_80C5218:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C5224:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80C5228:    .word 0xA000
dword_80C522C:    .word 0x10
dword_80C5230:    .word 0xF800000
    .word 0x7800000
// end of function sub_80C5168

.thumb
sub_80C5238:
    push {lr}
    bl sub_80C5438
    cmp r0, #0
    bne locret_80C5246
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C5246:
    pop {pc}
// end of function sub_80C5238

.thumb
sub_80C5248:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #1
    beq loc_80C5260
    cmp r0, #2
    beq loc_80C5294
    cmp r0, #3
    beq loc_80C52F4
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0xa
    strh r0, [r5,#0x20]
loc_80C5260:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C5308
    mov r0, #0xb
    strb r0, [r5,#0x10]
    mov r0, #0xa
    bl sub_800AF88
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrb r0, [r5,#4]
    cmp r0, #1
    bne loc_80C528E
    ldr r0, [r5,#0x50]
    bl sub_80E73B0
    mov r0, #0
    bl sub_8012D82
loc_80C528E:
    mov r0, #2
    strb r0, [r5,#0xb]
    b locret_80C5308
loc_80C5294:
    mov r0, #4
    str r0, [r5,#0x74]
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C5308
    mov r0, #0xc
    strb r0, [r5,#0x10]
    mov r0, #0xfc
    bl f500_8000558
    mov r1, #0
    mov r2, #0x24 
    lsl r2, r2, #0x10
    mov r3, #0x10
    lsl r3, r3, #0xc
    mov r4, #1
    lsl r4, r4, #8
    add r4, #0x59 
    bl sub_80E17DE
    mov r6, #0x32 
    lsl r6, r6, #0x10
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r3, [pc, #0x80c530c-0x80c52c8-4] // dword_80C5310
    ldrh r2, [r3,r2]
    add r6, r6, r2
    ldr r4, [pc, #0x80c5318-0x80c52ce-2] // =0x1705FF11
    mov r2, #0
    mov r7, #3
    mov r0, #2
    mov r1, #2
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    cmp r0, #0
    beq loc_80C52E8
    mov r1, #0x3a 
    strh r1, [r5,#0x20]
loc_80C52E8:
    bl sub_80C4D68
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    mov r0, #3
    strb r0, [r5,#0xb]
loc_80C52F4:
    mov r0, #4
    str r0, [r5,#0x74]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C5308
    mov r0, #0xd
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C5308:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80C530C:    .word dword_80C5310
dword_80C5310:    .word 0x384012C, 0x2580384
dword_80C5318:    .word 0x1705FF11
// end of function sub_80C5248

.thumb
sub_80C531C:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C534C
    bl sub_80B56B8
    tst r0, r0
    bne loc_80C5334
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
loc_80C5334:
    push {r0,r1}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    pop {r0,r1}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_80C4E1C
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C534C:
    pop {pc}
// end of function sub_80C531C

.thumb
sub_80C534E:
    push {lr}
    bl sub_80C4F10
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80C5366
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C5366:
    pop {pc}
// end of function sub_80C534E

.thumb
sub_80C5368:
    push {r4,r6,r7,lr}
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80c5424-0x80c5372-2] // dword_80C5428
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    ldrb r0, [r6,#4]
    ldrb r1, [r5,#0x12]
    sub r0, r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r6,#5]
    ldrb r1, [r5,#0x13]
    sub r0, r0, r1
    str r0, [r5,#0x44]
    add r0, #6
    cmp r0, #5
    blt loc_80C53A8
    cmp r0, #7
    bgt loc_80C53A8
    ldr r0, [r5,#0x40]
    add r0, #6
    cmp r0, #5
    blt loc_80C53A8
    cmp r0, #7
    bgt loc_80C53A8
    ldrh r0, [r5,#0x20]
    lsr r0, r0, #1
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
loc_80C53A8:
    bl sub_8012D74
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0xa
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    ldr r6, [pc, #0x80c542c-0x80c53b8-4] // =0x3004
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0xa
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    add r4, #0xe
    ldr r6, [pc, #0x80c542c-0x80c53cc-4] // =0x3004
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #4
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    ldr r6, [pc, #0x80c5430-0x80c53de-2] // =0x202C
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #4
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    add r4, #0xe
    ldr r6, [pc, #0x80c5430-0x80c53f2-2] // =0x202C
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    ldr r6, [pc, #0x80c5434-0x80c5404-4] // =0x1000
    bl sub_80C4F6C
    ldrb r4, [r5,#5]
    lsl r4, r4, #8
    add r4, #0
    lsl r4, r4, #8
    ldrb r0, [r5,#0x10]
    add r4, r4, r0
    add r4, #0xe
    ldr r6, [pc, #0x80c5434-0x80c5418-4] // =0x1000
    bl sub_80C4F6C
    mov r0, #0xf0
    strh r0, [r5,#0x3a]
    pop {r4,r6,r7,pc}
off_80C5424:    .word dword_80C5428
dword_80C5428:    .word 0xC0C0C10
dword_80C542C:    .word 0x3106
dword_80C5430:    .word 0x2083
off_80C5434:    .word 0x1000
// end of function sub_80C5368

.thumb
sub_80C5438:
    push {r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C54CE
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldr r0, [r5,#0x60]
    bl sub_80DBB86
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    ldr r2, [pc, #0x80c5854-0x80c545a-2] // =0x10
    ldr r3, [pc, #0x80c585c-0x80c545c-4] // =0x7800000
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C54B6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [r5,#0x4c]
    cmp r0, #0
    beq loc_80C549A
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80C549A:
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C54CE
loc_80C54B6:
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r0, [r6,#5]
    strb r0, [r5,#0x13]
    bl sub_800AB30
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0
locret_80C54CE:
    pop {r6,r7,pc}
// end of function sub_80C5438

.thumb
sub_80C54D0:
    push {r6,r7,lr}
    bl sub_80C4984
    add r7, r1, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800AB0A
    ldr r2, [r5,#0x40]
    mul r2, r7
    mov r3, #0x28 
    mul r2, r3
    add r0, r0, r2
    str r0, [r5,#0x34]
    ldr r2, [r5,#0x44]
    mul r2, r7
    mov r3, #0x18
    mul r2, r3
    add r1, r1, r2
    str r1, [r5,#0x38]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C5594
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldr r0, [r5,#0x60]
    bl sub_80DBB86
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    ldr r2, [pc, #0x80c5854-0x80c5518-4] // =0x10
    ldr r3, [pc, #0x80c585c-0x80c551a-2] // =0x7800000
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C557C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldr r0, [r5,#0x78]
    mov r0, #0
    str r0, [r5,#0x78]
    strb r0, [r5,#5]
    bl sub_80C582E
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    ldr r0, [r5,#0x4c]
    cmp r0, #0
    beq loc_80C5560
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80C5560:
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C5594
loc_80C557C:
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r0, [r6,#5]
    strb r0, [r5,#0x13]
    bl sub_800AB30
    mov r0, #1
    bl sub_8012D7C
    bl sub_8012D4E
    mov r0, #0
locret_80C5594:
    pop {r6,r7,pc}
// end of function sub_80C54D0

loc_80C5596:
    push {r6,lr}
    mov r6, #0x80
    add r6, r6, r5
    ldr r1, [pc, #0x80c55a8-0x80c559c-4] // off_80C55AC
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C55A8:    .word off_80C55AC
off_80C55AC:    .word sub_80C55DC+1
    .word sub_80C565C+1
    .word sub_80C5688+1
    .word sub_80C56B6+1
    .word sub_80C571C+1
    .word sub_80C5688+1
    .word sub_80C575A+1
    .word sub_80C571C+1
    .word sub_80C5688+1
    .word sub_80C57BC+1
    .word sub_80C57E2+1
    .word sub_80C580C+1
.thumb
sub_80C55DC:
    push {r4,r6,r7,lr}
    bl sub_800ACF6
    beq loc_80C564E
    bl sub_800AB54
    add r4, r0, #0
    bl sub_800A15E
    sub r0, r0, r4
    ldr r2, [pc, #0x80c5854-0x80c55f0-4] // =0x10
    ldr r3, [pc, #0x80c5858-0x80c55f2-2] // =0xF800000
    bl sub_8009E78
    cmp r0, #0
    beq loc_80C5632
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_800AB54
    add r4, r0, #0
    bl sub_800A15E
    sub r0, r0, r4
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80DBB66
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    bl sub_80C5368
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C565A
loc_80C5632:
    ldrb r0, [r6,#0xb]
    cmp r0, #1
    beq loc_80C564E
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #0xc
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r5,#0x20]
    b locret_80C565A
loc_80C564E:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C565A:
    pop {r4,r6,r7,pc}
// end of function sub_80C55DC

.thumb
sub_80C565C:
    push {lr}
    bl sub_80C5438
    cmp r0, #0
    bne locret_80C5686
    bl sub_80C582E
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
    ldrb r0, [r5,#9]
    cmp r0, #7
    beq locret_80C5686
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F40
locret_80C5686:
    pop {pc}
// end of function sub_80C565C

.thumb
sub_80C5688:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C56B4
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r4, #0x1d
    lsl r4, r4, #8
    add r4, #0x28 
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x10
    bl sub_800AF88
    mov r0, #4
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0xa]
    add r0, #4
    strh r0, [r5,#0xa]
locret_80C56B4:
    pop {pc}
// end of function sub_80C5688

.thumb
sub_80C56B6:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80C56C8
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_80C4C38
loc_80C56C8:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C571A
    ldrb r0, [r6,#0xb]
    cmp r0, #1
    bne loc_80C56DE
loc_80C56D8:
    mov r0, #0x28 
    strh r0, [r5,#0xa]
    b locret_80C571A
loc_80C56DE:
    bl loc_80C4CB4
    cmp r0, #0
    beq loc_80C56D8
    ldr r3, [r5,#0x78]
    strb r3, [r5,#5]
    str r2, [r5,#0x78]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80DBB66
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_80C5368
    ldr r0, [r5,#0x78]
    cmp r0, #0
    beq loc_80C5716
loc_80C5716:
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C571A:
    pop {r4,r6,r7,pc}
// end of function sub_80C56B6

.thumb
sub_80C571C:
    push {lr}
    ldr r0, [r5,#0x78]
    cmp r0, #0
    beq loc_80C572A
    bl sub_80C54D0
    b loc_80C572E
loc_80C572A:
    bl sub_80C5438
loc_80C572E:
    cmp r0, #0
    bne locret_80C5758
    bl sub_80C582E
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0xa]
    add r0, #4
    strh r0, [r5,#0xa]
    ldrb r0, [r5,#9]
    cmp r0, #7
    beq locret_80C5758
    mov r0, #0x40 
    bl sub_8012F36
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F40
locret_80C5758:
    pop {pc}
// end of function sub_80C571C

.thumb
sub_80C575A:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80C576E
    ldr r0, [r5,#0x78]
    mov r1, #1
    eor r0, r1
    bl sub_80C4C38
loc_80C576E:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C57BA
    bl loc_80C4D12
    cmp r0, #0
    bne loc_80C5786
    mov r0, #0x28 
    strh r0, [r5,#0xa]
    b locret_80C57BA
loc_80C5786:
    ldr r3, [r5,#0x78]
    strb r3, [r5,#5]
    str r2, [r5,#0x78]
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r7, #0x60 
    add r7, r7, r5
    bl sub_80DBB66
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_80C5368
    ldr r0, [r5,#0x78]
    cmp r0, #0
    beq loc_80C57B6
loc_80C57B6:
    mov r0, #0x1c
    strh r0, [r5,#0xa]
locret_80C57BA:
    pop {r4,r6,r7,pc}
// end of function sub_80C575A

.thumb
sub_80C57BC:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80C57D2
    ldr r0, [r5,#0x78]
    mov r1, #1
    eor r0, r1
    mov r1, #0
    bl sub_80C4C38
loc_80C57D2:
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C57E0
    mov r0, #0x28 
    strh r0, [r5,#0xa]
locret_80C57E0:
    pop {r4,r6,r7,pc}
// end of function sub_80C57BC

.thumb
sub_80C57E2:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_80C580A
    ldr r0, [r5,#0x4c]
    bl sub_80CD5FC
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#5]
    mov r0, #0x40 
    bl sub_8012F40
    bl sub_80C531C
    mov r0, #0x2c 
    strh r0, [r5,#0xa]
locret_80C580A:
    pop {pc}
// end of function sub_80C57E2

.thumb
sub_80C580C:
    push {lr}
    bl sub_80C4F10
    ldrh r0, [r5,#0xa]
    cmp r0, #8
    bne locret_80C582C
    mov r0, #0
    str r0, [r5,#0x78]
    bl sub_80C582E
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C582C:
    pop {pc}
// end of function sub_80C580C

.thumb
sub_80C582E:
    push {r5,lr}
    ldr r0, [r5,#0x78]
    mov r1, #1
    eor r0, r1
    push {r0}
    bl loc_8002F8E
    pop {r0}
    push {r0,r5}
    ldr r5, [r5,#0x7c]
    bl loc_8002F8E
    pop {r0,r5}
    ldr r5, [r5,#0x50]
    cmp r5, #0
    beq locret_80C5852
    bl loc_8002F8E
locret_80C5852:
    pop {r5,pc}
dword_80C5854:    .word 0x10
dword_80C5858:    .word 0xF800000
dword_80C585C:    .word 0x7800000
// end of function sub_80C582E

loc_80C5860:
    push {lr}
    ldr r1, [pc, #0x80c587c-0x80c5862-2] // =0x80C5870
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
    ldr r1, [r0,r2]
    lsr r4, r1, #0x20
    ldr r5, [r2,r3]
    lsr r4, r1, #0x20
    ldrh r5, [r5,r1]
    lsr r4, r1, #0x20
dword_80C587C:    .word 0x80C5870
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #6
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800AB30
    ldrb r0, [r5,#0x16]
    bl loc_8002F8E
    mov r0, #6
    bl sub_800B91C
    bl sub_8002DCC
    ldr r0, [pc, #0x80c58d0-0x80c58b6-2] // =0x7FFF
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80C58D4
    pop {pc}
    .byte 0, 0
dword_80C58D0:    .word 0x7FFF
loc_80C58D4:
    push {lr}
    ldr r1, [pc, #0x80c58f8-0x80c58d6-2] // off_80C58EC
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    bl sub_80C5A92
    pop {pc}
    .balign 4, 0x00
off_80C58EC:    .word sub_80C58FC+1
    .word loc_80C59A2+1
    .word sub_80C5A40+1
off_80C58F8:    .word off_80C58EC
.thumb
sub_80C58FC:
    push {lr}
    ldr r1, [pc, #0x80c590c-0x80c58fe-2] // off_80C5910
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C590C:    .word off_80C5910
off_80C5910:    .word sub_80C5918+1
    .word sub_80C5968+1
// end of function sub_80C58FC

.thumb
sub_80C5918:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C5934
    mov r0, #0x1f
    strb r0, [r5,#0x19]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C5966
loc_80C5934:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    lsr r0, r0, #1
    bcc loc_80C594E
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_80C594E:
    ldrb r0, [r5,#0x19]
    sub r0, #2
    strb r0, [r5,#0x19]
    bgt locret_80C5966
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C5966:
    pop {pc}
// end of function sub_80C5918

.thumb
sub_80C5968:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C597A
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C59A0
loc_80C597A:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C59A0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x10
    mov r3, #0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C5998
    mov r0, #8
    str r0, [r5,#8]
    b locret_80C59A0
loc_80C5998:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C59A0:
    pop {pc}
// end of function sub_80C5968

loc_80C59A2:
    push {lr}
    ldr r1, [pc, #0x80c59b0-0x80c59a4-4] // off_80C59B4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C59B0:    .word off_80C59B4
off_80C59B4:    .word sub_80C59C0+1
    .word sub_80C59E4+1
    .word sub_80C5A18+1
.thumb
sub_80C59C0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C59D6
    mov r0, #0xf
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C59E2
loc_80C59D6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C59E2
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C59E2:
    pop {pc}
// end of function sub_80C59C0

.thumb
sub_80C59E4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C5A02
    mov r0, #0xa
    strb r0, [r5,#0x10]
    mov r1, #1
loc_80C59F2:
    strb r1, [r5,#6]
    bl sub_80C5A7A
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C5A16
loc_80C5A02:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C5A16
    ldrb r1, [r5,#6]
    add r1, #1
    cmp r1, #4
    bne loc_80C59F2
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C5A16:
    pop {pc}
// end of function sub_80C59E4

.thumb
sub_80C5A18:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C5A2E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C5A3E
loc_80C5A2E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C5A3E
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C5A3E:
    pop {pc}
// end of function sub_80C5A18

.thumb
sub_80C5A40:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C5A56
    mov r0, #4
    strh r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_80C5A6A
loc_80C5A56:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C5A6A
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
locret_80C5A6A:
    pop {pc}
// end of function sub_80C5A40

    push {lr}
    ldr r0, [r5,#0x64]
    mov r1, #0
    strb r1, [r0]
    bl sub_80033B4
    pop {pc}
.thumb
sub_80C5A7A:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #3
    ldrb r2, [r5,#0x16]
    tst r2, r2
    bne loc_80C5A88
    add r0, #6
loc_80C5A88:
    ldr r2, [r5,#0x2c]
    mov r3, #1
    bl sub_80DB5BE
    pop {pc}
// end of function sub_80C5A7A

.thumb
sub_80C5A92:
    push {lr}
    ldrb r1, [r5,#0x19]
    lsl r0, r1, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    pop {pc}
// end of function sub_80C5A92

.thumb
sub_80C5AA4:
    push {lr}
    push {r1,r3,r5}
    mov r0, #0x37 
    bl sub_8003298
    add r0, r5, #0
    pop {r2,r3,r5}
    beq locret_80C5AC0
    strh r2, [r0,#0x12]
    strb r3, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x64]
    mov r1, #1
    strb r1, [r7]
locret_80C5AC0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80C5AA4

loc_80C5AC4:
    push {lr}
    ldr r1, [pc, #0x80c5ad8-0x80c5ac6-2] // off_80C5ADC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C5AD8:    .word off_80C5ADC
off_80C5ADC:    .word sub_80C5AE8+1
    .word sub_80C5B42+1
    .word sub_8010F0C+1
.thumb
sub_80C5AE8:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #7
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C5AE8

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #7
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80C5B2E
    bl sub_80033B4
    b locret_80C5B40
loc_80C5B2E:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C5B42
locret_80C5B40:
    pop {r4,r7,pc}
.thumb
sub_80C5B42:
    push {lr}
    bl sub_8013548
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_80C5B52
    bl sub_80C5F3C
loc_80C5B52:
    ldr r0, [pc, #0x80c5b60-0x80c5b52-2] // off_80C5B64
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .byte 0, 0
off_80C5B60:    .word off_80C5B64
off_80C5B64:    .word sub_8010CDC+1
    .word sub_80C5B94+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C5BB4+1
    .word loc_80F23C8+1
    .word loc_80F252C+1
    .word loc_80F28FC+1
    .word loc_80F2A30+1
    .word sub_80F2BFE+1
// end of function sub_80C5B42

.thumb
sub_80C5B94:
    push {lr}
    bl sub_8010F52
    ldrb r0, [r5,#4]
    str r0, [r5,#0x64]
    mov r0, #8
    bl sub_80C5EE4
    ldr r3, [r5,#0x58]
    mov r0, #0x70 
    add r3, r3, r0
    ldr r0, [r3,#8]
    str r0, [r5,#0x60]
    mov r0, #0
    str r0, [r5,#0x6c]
    pop {pc}
// end of function sub_80C5B94

loc_80C5BB4:
    push {lr}
    mov r6, #0x74 
    add r6, r6, r5
    ldr r1, [pc, #0x80c5bc8-0x80c5bba-2] // off_80C5BCC
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C5BC8:    .word off_80C5BCC
off_80C5BCC:    .word sub_80C5BD0+1
.thumb
sub_80C5BD0:
    push {lr}
    ldrb r0, [r6,#8]
    cmp r0, #3
    blt loc_80C5C2E
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    lsr r1, r1, #1
    cmp r0, r1
    bgt loc_80C5C28
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800F552
    ldr r1, [pc, #0x80c5ca0-0x80c5bec-4] // =0x1F4
    cmp r0, r1
    blt loc_80C5C0E
    bl sub_80C5DAC
    beq loc_80C5C28
    mov r0, #0x10
    bl sub_80C5EE4
    bl sub_80C5CA8
    mov r0, #0xb
    bl sub_800C960
    bl sub_80F2BFE
    b loc_80C5C28
loc_80C5C0E:
    bl sub_80C5DF2
    beq loc_80C5C8A
    mov r0, #0xc
    bl sub_80C5EE4
    bl sub_80C5CA8
    mov r0, #0xa
    bl sub_800C960
    bl loc_80F2A30
loc_80C5C28:
    mov r0, #0
    strb r0, [r6,#8]
    b locret_80C5C9E
loc_80C5C2E:
    ldrb r0, [r6,#9]
    cmp r0, #3
    blt loc_80C5C84
    bl sub_8001AF6
    lsl r0, r0, #0x1f
    lsr r0, r0, #0x1f
    strb r0, [r6,#0xa]
    tst r0, r0
    bne loc_80C5C5E
    bl sub_80C5E98
    beq loc_80C5C8A
    mov r0, #0
    bl sub_80C5EE4
    bl sub_80C5CA8
    mov r0, #8
    bl sub_800C960
    bl loc_80F252C
    b loc_80C5C78
loc_80C5C5E:
    bl sub_80C5E2E
    beq loc_80C5C8A
    mov r0, #4
    bl sub_80C5EE4
    bl sub_80C5CA8
    mov r0, #9
    bl sub_800C960
    bl loc_80F28FC
loc_80C5C78:
    ldrb r0, [r6,#8]
    add r0, #1
    strb r0, [r6,#8]
    mov r0, #0
    strb r0, [r6,#9]
    b locret_80C5C9E
loc_80C5C84:
    ldrb r0, [r6,#9]
    add r0, #1
    strb r0, [r6,#9]
loc_80C5C8A:
    bl sub_80C5CB4
    beq locret_80C5C9E
    bl sub_80C5D68
    mov r0, #7
    bl sub_800C960
    bl loc_80F23C8
locret_80C5C9E:
    pop {pc}
off_80C5CA0:    .word 0x1F4
// end of function sub_80C5BD0

.thumb
sub_80C5CA4:
    mov r0, #0x5b 
    b loc_80C5CAA
// end of function sub_80C5CA4

.thumb
sub_80C5CA8:
    mov r0, #7
loc_80C5CAA:
    ldr r7, [r5,#0x58]
    mov r1, #0x70 
    add r7, r7, r1
    strb r0, [r7,#0x1a]
    mov pc, lr
// end of function sub_80C5CA8

.thumb
sub_80C5CB4:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    mov r7, sp
    bl sub_800AD20
    bne loc_80C5CC4
    mov r0, #0
    b loc_80C5D64
loc_80C5CC4:
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C5D42
    mov r6, #0
    mov r0, #5
loc_80C5CD4:
    mov r1, #1
loc_80C5CD6:
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    beq loc_80C5D08
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #3
    ldr r4, [pc, #0x80c5f84-0x80c5ce0-4] // dword_80C5F88
    add r4, r4, r2
    tst r2, r2
    bne loc_80C5CEE
    mov r2, #7
    sub r2, r2, r0
    add r0, r2, #0
loc_80C5CEE:
    ldr r2, [r4]
    ldr r3, [r4,#4]
    push {r0,r1}
    bl sub_8009E78
    pop {r0,r1}
    beq loc_80C5D08
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_80C5D08:
    add r1, #1
    cmp r1, #3
    ble loc_80C5CD6
    add r0, #1
    cmp r0, #6
    ble loc_80C5CD4
    tst r6, r6
    bne loc_80C5D48
    bl sub_8001AF6
    add r1, r0, #0
    mov r0, #5
    lsr r1, r1, #1
    bcc loc_80C5D26
    mov r0, #6
loc_80C5D26:
    ldrb r2, [r5,#0x16]
    tst r2, r2
    bne loc_80C5D32
    mov r1, #7
    sub r1, r1, r0
    add r0, r1, #0
loc_80C5D32:
    ldrb r1, [r5,#0x13]
    ldr r2, [r4]
    ldr r3, [r4,#4]
    push {r0,r1}
    bl sub_8009E78
    pop {r0,r1}
    bne loc_80C5D5A
loc_80C5D42:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_80C5D5A
loc_80C5D48:
    bl sub_8001AF6
    add r1, r6, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80C5D5A:
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
loc_80C5D64:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
// end of function sub_80C5CB4

.thumb
sub_80C5D68:
    push {r6,lr}
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    bl sub_8001AF6
    ldr r6, [pc, #0x80c5d98-0x80c5d74-4] // dword_80C5D9C
    ldr r1, [r5,#0x64]
    add r6, r6, r1
    ldrb r2, [r6]
    lsr r0, r0, #3
    bcc loc_80C5D82
    ldrb r2, [r6,#4]
loc_80C5D82:
    strb r2, [r7,#0xc]
    ldrb r6, [r6,#8]
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5da8-0x80c5d8a-2] // =0xA000
    tst r0, r1
    beq loc_80C5D92
    ldrb r6, [r7,#0xc]
loc_80C5D92:
    strb r6, [r7,#0xd]
    pop {r6,pc}
    .balign 4, 0x00
off_80C5D98:    .word dword_80C5D9C
dword_80C5D9C:    .word 0xA0A0E14, 0x14141E28, 0x406080A
dword_80C5DA8:    .word 0xA000
// end of function sub_80C5D68

.thumb
sub_80C5DAC:
    push {r4,lr}
    bl sub_800AD20
    beq locret_80C5DF0
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    ldr r0, [r5,#0x64]
    cmp r0, #2
    blt loc_80C5DCA
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5ee0-0x80c5dc4-4] // =0xE000
    tst r0, r1
    beq loc_80C5DCE
loc_80C5DCA:
    mov r0, #0
    pop {r4,pc}
loc_80C5DCE:
    bl sub_800A15E
    cmp r1, #2
    bne loc_80C5DCA
    cmp r0, #1
    beq locret_80C5DF0
    cmp r0, #6
    beq locret_80C5DF0
    strb r0, [r7,#0x18]
    strb r1, [r7,#0x19]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
locret_80C5DF0:
    pop {r4,pc}
// end of function sub_80C5DAC

.thumb
sub_80C5DF2:
    push {r4,lr}
    bl sub_800AD20
    beq locret_80C5E2C
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5ee0-0x80c5e04-4] // =0xE000
    tst r0, r1
    beq loc_80C5E0E
    mov r0, #0
    pop {r4,pc}
loc_80C5E0E:
    ldrb r2, [r5,#0x16]
    mov r0, #3
    tst r2, r2
    bne loc_80C5E18
    mov r0, #4
loc_80C5E18:
    strb r0, [r7,#0x16]
    mov r1, #2
    strb r1, [r7,#0x17]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
locret_80C5E2C:
    pop {r4,pc}
// end of function sub_80C5DF2

.thumb
sub_80C5E2E:
    push {r4,lr}
    bl sub_800AD20
    beq locret_80C5E8E
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5ee0-0x80c5e40-4] // =0xE000
    tst r0, r1
    beq loc_80C5E4A
    mov r0, #0
    pop {r4,pc}
loc_80C5E4A:
    bl sub_800A15E
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    bl sub_800AB54
    neg r0, r0
    ldrb r1, [r7,#0x16]
    add r0, r0, r1
    strb r0, [r7,#0x16]
    bl sub_8001AF6
    lsl r0, r0, #0x10
    lsr r0, r0, #0x1f
    ldrb r1, [r7,#0x17]
    lsl r1, r1, #0x1f
    lsr r1, r1, #0x1e
    add r1, r1, r0
    ldr r2, [pc, #0x80c5e90-0x80c5e6e-2] // loc_80C5E94
    ldrb r1, [r2,r1]
    strb r1, [r7,#0x17]
    ldrb r0, [r7,#0x16]
    ldr r2, [pc, #0x80c5f98-0x80c5e76-2] // =0x10
    ldr r3, [pc, #0x80c5f9c-0x80c5e78-4] // =0xF880080
    bl sub_8009E78
    beq locret_80C5E8E
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #1
locret_80C5E8E:
    pop {r4,pc}
off_80C5E90:    .word loc_80C5E94
// end of function sub_80C5E2E

loc_80C5E94:
    lsl r1, r0, #0xc
    lsl r2, r0, #8
.thumb
sub_80C5E98:
    push {r4,lr}
    bl sub_800AD20
    beq locret_80C5EDC
    bl sub_8012F4A
    ldr r1, [pc, #0x80c5ee0-0x80c5ea4-4] // =0xE000
    tst r0, r1
    beq loc_80C5EAE
    mov r0, #0
    pop {r4,pc}
loc_80C5EAE:
    bl sub_800A146
    strb r0, [r5,#0x15]
    ldrb r3, [r5,#0x16]
    lsl r3, r3, #3
    ldr r1, [pc, #0x80c5f84-0x80c5eb8-4] // dword_80C5F88
    add r1, r1, r3
    mov r0, #4
    tst r3, r3
    bne loc_80C5EC4
    mov r0, #3
loc_80C5EC4:
    ldr r2, [r1]
    ldr r3, [r1,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009E78
    beq locret_80C5EDC
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8014348
    tst r0, r0
locret_80C5EDC:
    pop {r4,pc}
    .byte 0, 0
dword_80C5EE0:    .word 0xE000
// end of function sub_80C5E98

.thumb
sub_80C5EE4:
    ldr r7, [r5,#0x58]
    mov r1, #0x70 
    add r7, r7, r1
    ldr r1, [pc, #0x80c5f08-0x80c5eea-2] // dword_80C5F1C
    add r1, r1, r0
    ldr r2, [r5,#0x64]
    ldrb r1, [r1,r2]
    lsr r1, r1, #1
    bcc loc_80C5EF8
    lsl r1, r1, #1
loc_80C5EF8:
    lsl r1, r1, #1
    ldr r2, [pc, #0x80c5f30-0x80c5efa-2] // dword_80C5F34
    lsr r0, r0, #2
    ldrb r0, [r2,r0]
    lsl r0, r0, #0x10
    orr r0, r1
    str r0, [r7,#8]
    mov pc, lr
off_80C5F08:    .word dword_80C5F1C
    .word dword_80C5F20
    .word dword_80C5F24
    .word dword_80C5F28
    .word dword_80C5F2C
dword_80C5F1C:    .word 0xC8785028
dword_80C5F20:    .word 0xC8785028
dword_80C5F24:    .word 0xC8785028
dword_80C5F28:    .word 0x97C8A050
dword_80C5F2C:    .word 0x97C8A050
off_80C5F30:    .word dword_80C5F34
dword_80C5F34:    .word 0x321E141E, 0x32
// end of function sub_80C5EE4

.thumb
sub_80C5F3C:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    mov r0, #0x70 
    add r7, r7, r0
    bl sub_8007920
    bne loc_80C5F54
    ldr r0, [r5,#0x6c]
    tst r0, r0
    beq loc_80C5F54
    sub r0, #1
    str r0, [r5,#0x6c]
loc_80C5F54:
    ldr r0, [r5,#0x68]
    tst r0, r0
    beq locret_80C5F82
    ldr r2, [r5,#0x54]
    ldrb r3, [r2,#0xd]
    mov r0, #1
    tst r3, r0
    beq loc_80C5F78
    ldr r0, [r5,#0x68]
    cmp r0, #2
    beq loc_80C5F70
    bl sub_800AD20
    beq loc_80C5F78
loc_80C5F70:
    bl sub_8013508
    mov r0, #2
    str r0, [r5,#0x6c]
loc_80C5F78:
    bl sub_8007920
    bne locret_80C5F82
    mov r0, #0
    str r0, [r5,#0x68]
locret_80C5F82:
    pop {r4,r7,pc}
off_80C5F84:    .word dword_80C5F88
dword_80C5F88:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_80C5F98:    .word 0x10
dword_80C5F9C:    .word 0xF880080
// end of function sub_80C5F3C

    .hword 0x1 // mov r1, r0  // <mkdata>
    lsl r1, r0, #4
loc_80C5FA4:
    push {lr}
    ldr r1, [pc, #0x80c5fb8-0x80c5fa6-2] // off_80C5FBC
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80106E2
    pop {pc}
    .balign 4, 0x00
off_80C5FB8:    .word off_80C5FBC
off_80C5FBC:    .word sub_80C5FC8+1
    .word sub_80C6028+1
    .word sub_80104D8+1
.thumb
sub_80C5FC8:
    push {r7,lr}
    mov r0, #0x80
    mov r1, #0xc
    mov r2, #0x21 
    bl sub_800285C
    bl sub_8002FC2
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C5FC8

    ldrb r0, [r5,#4]
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C6002
    bl sub_80033B4
    b locret_80C6022
loc_80C6002:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldr r7, [pc, #0x80c6024-0x80c600c-4] // =0x80C5FA0
    ldrb r0, [r5,#4]
    mov r1, #1
    and r0, r1
    lsl r0, r0, #1
    add r7, r7, r0
    str r7, [r5,#0x60]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C6028
locret_80C6022:
    pop {r7,pc}
dword_80C6024:    .word 0x80C5FA0
.thumb
sub_80C6028:
    push {lr}
    bl sub_801375C
    ldr r0, [pc, #0x80c603c-0x80c602e-2] // off_80C6040
    bl sub_8013BE8
    bl sub_8012D16
    pop {pc}
    .balign 4, 0x00
off_80C603C:    .word off_80C6040
off_80C6040:    .word sub_800FC58+1
    .word sub_80100E6+1
    .word sub_80100F8+1
    .word nullsub_59+1
    .word sub_8010458+1
    .word sub_8010568+1
    .word loc_80C6060+1
    .word loc_80C60AA+1
// end of function sub_80C6028

loc_80C6060:
    push {lr}
    ldr r1, [pc, #0x80c6070-0x80c6062-2] // off_80C6074
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C6070:    .word off_80C6074
off_80C6074:    .word sub_80C607C+1
    .word sub_80C608A+1
.thumb
sub_80C607C:
    push {lr}
    ldr r3, [r5,#0x60]
    ldrb r0, [r3]
    strh r0, [r5,#0x22]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C607C

.thumb
sub_80C608A:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_80C60A8
    mov r0, #3
    str r0, [r5,#0x6c]
    mov r0, #0x22 
    add r0, #0xff
    bl f500_8000558
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C60A8:
    pop {pc}
// end of function sub_80C608A

loc_80C60AA:
    push {lr}
    ldr r1, [pc, #0x80c60b8-0x80c60ac-4] // off_80C60BC
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C60B8:    .word off_80C60BC
off_80C60BC:    .word sub_80C60C4+1
    .word sub_80C6104+1
.thumb
sub_80C60C4:
    push {r4,r6,r7,lr}
    mov r7, #0x64 
    add r7, r7, r5
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80C60D8
    add r7, #1
    ldrb r0, [r7]
    tst r0, r0
    bne locret_80C6102
loc_80C60D8:
    ldr r1, [r5,#0x6c]
    sub r1, #1
    str r1, [r5,#0x6c]
    bne loc_80C60E4
    mov r1, #3
    str r1, [r5,#0x6c]
loc_80C60E4:
    ldr r1, [r5,#0x6c]
    bl sub_80C614A
    tst r0, r0
    beq locret_80C6102
    ldrb r2, [r5,#0x16]
    ldr r7, [r5,#0x60]
    ldrb r4, [r7,#1]
    mov r6, #0
    bl sub_80D679C
    mov r0, #0xc
    strh r0, [r5,#0x22]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C6102:
    pop {r4,r6,r7,pc}
// end of function sub_80C60C4

.thumb
sub_80C6104:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_80C6112
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6112:
    pop {pc}
// end of function sub_80C6104

    push {lr}
    mov r0, #0
    str r0, [r5,#0x64]
    mov r0, #0x70 
    bl f500_8000558
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0
    bl sub_80E17DE
    bl sub_800B23E
    bl sub_8012D74
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801436A
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
    pop {pc}
.thumb
sub_80C614A:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    lsl r3, r0, #3
    ldr r7, [pc, #0x80c61a0-0x80c6150-4] // dword_80C61A8
    add r7, r7, r3
    mov r2, #1
    eor r0, r2
    ldr r2, [r7]
    ldr r3, [r7,#4]
    bl sub_800A17A
    push {r0,r1}
    bl sub_8009A52
    ldr r4, [pc, #0x80c61a4-0x80c6166-2] // =0x800000
    tst r0, r4
    pop {r0,r1}
    bne loc_80C619C
    ldr r7, [r5,#0x60]
    ldrb r6, [r7,#1]
    tst r6, r6
    beq locret_80C619A
    push {r0,r1,r4}
    ldrb r0, [r5,#0x16]
    bl loc_800AB56
    add r6, r0, #0
    pop {r0,r1,r4}
loc_80C6182:
    add r0, r0, r6
    sub r2, r0, #1
    cmp r2, #6
    bcs loc_80C6198
    push {r0,r1,r4,r6}
    bl sub_8009A52
    add r2, r0, #0
    pop {r0,r1,r4,r6}
    tst r2, r4
    beq loc_80C6182
loc_80C6198:
    sub r0, r0, r6
locret_80C619A:
    pop {r4,r6,r7,pc}
loc_80C619C:
    mov r0, #0
    pop {r4,r6,r7,pc}
off_80C61A0:    .word dword_80C61A8
dword_80C61A4:    .word 0x800000
dword_80C61A8:    .word 0x20, 0x0, 0x0
    .word 0x20
// end of function sub_80C614A

loc_80C61B8:
    push {lr}
    ldr r1, [pc, #0x80c61cc-0x80c61ba-2] // off_80C61D0
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C61CC:    .word off_80C61D0
off_80C61D0:    .word sub_80C61DC+1
    .word sub_80C622E+1
    .word sub_80104D8+1
.thumb
sub_80C61DC:
    push {r7,lr}
    mov r1, #8
    mov r2, #0x11
    mov r0, #0x80
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C61DC

    mov r0, #2
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C6216
    bl sub_80033B4
    b locret_80C622C
loc_80C6216:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #1
    lsl r0, r0, #0x17
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
locret_80C622C:
    pop {r7,pc}
.thumb
sub_80C622E:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c6240-0x80c6234-4] // off_80C6244
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C6240:    .word off_80C6244
off_80C6244:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word ho_cb_801018A+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C6270+1
    .word sub_80C63EC+1
    .word loc_80C6400+1
    .word loc_80C64D2+1
    .word loc_80C65AA+1
// end of function sub_80C622E

loc_80C6270:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c6284-0x80c6278-4] // off_80C6288
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80C6284:    .word off_80C6288
off_80C6288:    .word sub_80C6298+1
    .word sub_80C6328+1
    .word sub_80C633C+1
    .word sub_80C6348+1
.thumb
sub_80C6298:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #3
    bge loc_80C62EC
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    beq loc_80C62B6
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b loc_80C62D8
loc_80C62B6:
    ldr r1, [pc, #0x80c6324-0x80c62b6-2] // =0xA000
    tst r0, r1
    beq loc_80C62D0
    mov r0, #0xc
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    bne locret_80C6320
    b loc_80C62D8
loc_80C62D0:
    mov r0, #4
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
loc_80C62D8:
    bl sub_8001AF6
    mov r1, #3
    and r1, r0
    bne loc_80C62E4
    mov r1, #1
loc_80C62E4:
    ldrb r0, [r6,#9]
    add r0, r0, r1
    strb r0, [r6,#9]
    b locret_80C6320
loc_80C62EC:
    ldrb r0, [r6,#8]
    cmp r0, #2
    blt loc_80C6304
    mov r0, #0
    strb r0, [r6,#8]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C65AA
    b loc_80C631C
loc_80C6304:
    bl sub_8001AF6
    mov r1, #1
    and r1, r0
    ldrb r0, [r6,#8]
    add r0, #1
    add r0, r0, r1
    strb r0, [r6,#8]
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_80C631C:
    mov r0, #0
    strb r0, [r6,#9]
locret_80C6320:
    pop {pc}
    .balign 4, 0x00
dword_80C6324:    .word 0xA000
// end of function sub_80C6298

.thumb
sub_80C6328:
    push {lr}
    bl sub_80B553E
    tst r0, r0
    bne loc_80C6336
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C6336:
    bl sub_80C6394
    pop {pc}
// end of function sub_80C6328

.thumb
sub_80C633C:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80C6394
    pop {pc}
// end of function sub_80C633C

.thumb
sub_80C6348:
    push {lr}
    ldrb r0, [r6,#2]
    ldr r1, [pc, #0x80c6358-0x80c634c-4] // off_80C635C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C6358:    .word off_80C635C
off_80C635C:    .word sub_80C6364+1
    .word sub_80C637C+1
// end of function sub_80C6348

.thumb
sub_80C6364:
    push {lr}
    bl sub_80B553E
    tst r0, r0
    beq loc_80C6376
    bl sub_80C6394
    mov r0, #0xc
    strb r0, [r6]
loc_80C6376:
    mov r0, #4
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80C6364

.thumb
sub_80C637C:
    push {lr}
    mov r0, #0x28 
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80C637C

.thumb
sub_80C6394:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C6400
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80C6394

.thumb
sub_80C63B0:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    bl sub_8012F4A
    ldr r1, [pc, #0x80c63e8-0x80c63b8-4] // =0xA000
    tst r0, r1
    beq loc_80C63C4
    bl sub_80B56B8
    b loc_80C63DA
loc_80C63C4:
    bl sub_800A15E
    add r0, #1
    cmp r0, #7
    bne loc_80C63D2
    mov r0, #0
    b loc_80C63DA
loc_80C63D2:
    ldr r2, [pc, #0x80c63e0-0x80c63d2-2] // =0x10
    ldr r3, [pc, #0x80c63e4-0x80c63d4-4] // =0xF880080
    bl sub_80B5784
loc_80C63DA:
    add sp, sp, #0x18
    pop {r4,r7,pc}
    .byte 0, 0
dword_80C63E0:    .word 0x10
dword_80C63E4:    .word 0xF880080
dword_80C63E8:    .word 0xA000
// end of function sub_80C63B0

.thumb
sub_80C63EC:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C63FE
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C63FE:
    pop {pc}
// end of function sub_80C63EC

loc_80C6400:
    push {r6,lr}
    ldr r1, [pc, #0x80c6410-0x80c6402-2] // off_80C6414
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .byte 0, 0
off_80C6410:    .word off_80C6414
off_80C6414:    .word sub_80C6424+1
    .word sub_80C645E+1
    .word sub_80C648A+1
    .word sub_80C64BA+1
.thumb
sub_80C6424:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C6450
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C645C
loc_80C6450:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C645C:
    pop {r6,pc}
// end of function sub_80C6424

.thumb
sub_80C645E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6488
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C6488:
    pop {pc}
// end of function sub_80C645E

.thumb
sub_80C648A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C64B0
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    ldrb r0, [r5,#4]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80c64b4-0x80c64a6-2] // loc_80C64B8
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C64B0:
    pop {pc}
    .balign 4, 0x00
off_80C64B4:    .word loc_80C64B8
// end of function sub_80C648A

loc_80C64B8:
    cmp r0, #0x32 
.thumb
sub_80C64BA:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C64D0
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C64D0:
    pop {pc}
// end of function sub_80C64BA

loc_80C64D2:
    push {lr}
    ldr r1, [pc, #0x80c64e0-0x80c64d4-4] // off_80C64E4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C64E0:    .word off_80C64E4
off_80C64E4:    .word sub_80C64EC+1
    .word sub_80C6582+1
.thumb
sub_80C64EC:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C651E
    mov r0, #8
    strb r0, [r5,#0x10]
    mov r0, #0xf
    strh r0, [r5,#0x20]
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldr r2, [pc, #0x80c6564-0x80c6500-4] // dword_80C6568
    ldrb r4, [r2,r1]
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x14
    bl sub_800AF88
    mov r0, #0x8c
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C6562
loc_80C651E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6562
    ldrb r6, [r5,#4]
    lsr r6, r6, #1
    ldr r1, [pc, #0x80c656c-0x80c652a-2] // dword_80C6570
    ldrb r4, [r1,r6]
    ldr r1, [pc, #0x80c6574-0x80c652e-2] // dword_80C6578
    ldrb r1, [r1,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    mov r1, #8
    mul r0, r1
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x34]
    add r1, r1, r0
    ldrh r2, [r5,#0x3a]
    sub r2, #1
    lsl r2, r2, #0x10
    mov r3, #0x19
    lsl r3, r3, #0x10
    bl sub_80CE6FE
    ldrb r0, [r5,#4]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80c657c-0x80c6558-4] // loc_80C6580
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C6562:
    pop {r4,r6,r7,pc}
off_80C6564:    .word dword_80C6568
dword_80C6568:    .word 0x202
off_80C656C:    .word dword_80C6570
dword_80C6570:    .word 0x403
off_80C6574:    .word dword_80C6578
dword_80C6578:    .word 0xC864
off_80C657C:    .word loc_80C6580
// end of function sub_80C64EC

loc_80C6580:
    lsr r6, r3, #8
.thumb
sub_80C6582:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C65A8
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #7
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C65A8:
    pop {pc}
// end of function sub_80C6582

loc_80C65AA:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldr r1, [pc, #0x80c65bc-0x80c65b0-4] // off_80C65C0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
off_80C65BC:    .word off_80C65C0
off_80C65C0:    .word sub_80C65E4+1
    .word sub_80C6626+1
    .word sub_80C664E+1
    .word sub_80C6670+1
    .word sub_80C6684+1
    .word sub_80C6718+1
    .word sub_80C6742+1
    .word sub_80C676E+1
    .word sub_80C64BA+1
.thumb
sub_80C65E4:
    push {r6,lr}
    bl sub_80C63B0
    tst r0, r0
    beq loc_80C6618
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80C6618
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_8014348
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C6624
loc_80C6618:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6624:
    pop {r6,pc}
// end of function sub_80C65E4

.thumb
sub_80C6626:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C664C
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x12]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x13]
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C664C:
    pop {pc}
// end of function sub_80C6626

.thumb
sub_80C664E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C666E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C666E:
    pop {pc}
// end of function sub_80C664E

.thumb
sub_80C6670:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6682
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C6682:
    pop {pc}
// end of function sub_80C6670

.thumb
sub_80C6684:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6698
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x29 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6698:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x20 
    bne loc_80C66A4
    mov r0, #0xa
    bl sub_800AF88
loc_80C66A4:
    cmp r0, #0x15
    bne loc_80C66B4
    mov r4, #3
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    b loc_80C66FE
loc_80C66B4:
    cmp r0, #0xc
    bne loc_80C66FE
    ldrb r6, [r5,#4]
    lsr r6, r6, #1
    ldr r1, [pc, #0x80c6710-0x80c66bc-4] // dword_80C6714
    ldrb r1, [r1,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    push {r0,r1}
    ldr r4, [pc, #0x80c670c-0x80c66d2-2] // =0x705FF04
    mov r2, #0
    mov r7, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r0,r1}
    ldrb r4, [r5,#0x16]
    lsl r4, r4, #8
    add r4, #0x17
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
loc_80C66FE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C670A
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C670A:
    pop {r4,r6,r7,pc}
dword_80C670C:    .word 0x705FF04
off_80C6710:    .word dword_80C6714
dword_80C6714:    .word 0xC864
// end of function sub_80C6684

.thumb
sub_80C6718:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6728
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6728:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6740
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x18
    strh r0, [r5,#0xa]
locret_80C6740:
    pop {pc}
// end of function sub_80C6718

.thumb
sub_80C6742:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C676C
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #0x1c
    strh r0, [r5,#0xa]
locret_80C676C:
    pop {pc}
// end of function sub_80C6742

.thumb
sub_80C676E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C678E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x20 
    strh r0, [r5,#0xa]
locret_80C678E:
    pop {pc}
// end of function sub_80C676E

loc_80C6790:
    push {lr}
    ldr r1, [pc, #0x80c67a4-0x80c6792-2] // off_80C67A8
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C67A4:    .word off_80C67A8
off_80C67A8:    .word sub_80C67B4+1
    .word sub_80C680A+1
    .word sub_80104D8+1
.thumb
sub_80C67B4:
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x14
    bl sub_800285C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C67B4

    mov r0, #2
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_8012442
    tst r0, r0
    bne loc_80C67EE
    bl sub_80033B4
    b locret_80C6808
loc_80C67EE:
    mov r1, #1
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    mov r0, #1
    lsl r0, r0, #0x17
    bl sub_8012F36
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C680A
locret_80C6808:
    pop {pc}
.thumb
sub_80C680A:
    push {lr}
    bl sub_8013548
    ldr r0, [pc, #0x80c681c-0x80c6810-4] // off_80C6820
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
off_80C681C:    .word off_80C6820
off_80C6820:    .word sub_8010CDC+1
    .word sub_8010F52+1
    .word ho_cb_801018A+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C684C+1
    .word sub_80C6980+1
    .word loc_80C6994+1
    .word loc_80C6A9C+1
    .word loc_80C6C5E+1
// end of function sub_80C680A

loc_80C684C:
    push {r6,lr}
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6]
    ldr r1, [pc, #0x80c6860-0x80c6854-4] // off_80C6864
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .byte 0, 0
off_80C6860:    .word off_80C6864
off_80C6864:    .word sub_80C6878+1
    .word sub_80C6910+1
    .word sub_80C6924+1
    .word sub_80C6930+1
    .word sub_80C6944+1
.thumb
sub_80C6878:
    push {lr}
    ldrb r0, [r6,#1]
    ldr r1, [pc, #0x80c6888-0x80c687c-4] // off_80C688C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80C6888:    .word off_80C688C
off_80C688C:    .word sub_80C6890+1
// end of function sub_80C6878

.thumb
sub_80C6890:
    push {lr}
    ldrb r0, [r6,#9]
    cmp r0, #5
    bge loc_80C68D2
    bl sub_8001AF6
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_80C68A6
    mov r0, #0
loc_80C68A6:
    add r0, #1
    ldrb r1, [r6,#9]
    add r1, r1, r0
    strb r1, [r6,#9]
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C68C8
    ldr r1, [pc, #0x80c690c-0x80c68ba-2] // =0xA000
    tst r0, r1
    bne loc_80C68C4
    mov r0, #4
    b loc_80C68CA
loc_80C68C4:
    mov r0, #0xc
    b loc_80C68CA
loc_80C68C8:
    mov r0, #8
loc_80C68CA:
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    b locret_80C690A
loc_80C68D2:
    mov r0, #0
    strb r0, [r6,#9]
    ldrb r0, [r6,#8]
    cmp r0, #2
    bge loc_80C68F6
    bl sub_8001AF6
    mov r1, #1
    and r0, r1
    add r0, #1
    ldrb r0, [r6,#8]
    add r0, r0, r1
    strb r0, [r6,#8]
    mov r0, #0xa
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_80C690A
loc_80C68F6:
    mov r0, #0
    strb r0, [r6,#8]
    bl sub_80BB898
    cmp r0, #0
    beq locret_80C690A
    mov r0, #9
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C690A:
    pop {pc}
dword_80C690C:    .word 0xA000
// end of function sub_80C6890

.thumb
sub_80C6910:
    push {lr}
    bl sub_80B553E
    tst r0, r0
    bne loc_80C691E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C691E:
    bl sub_80C6964
    pop {pc}
// end of function sub_80C6910

.thumb
sub_80C6924:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80C6964
    pop {pc}
// end of function sub_80C6924

.thumb
sub_80C6930:
    push {lr}
    bl sub_80B56B8
    tst r0, r0
    bne loc_80C693E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C693E:
    bl sub_80C6964
    pop {pc}
// end of function sub_80C6930

.thumb
sub_80C6944:
    push {lr}
    bl sub_80B54C8
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
    pop {pc}
// end of function sub_80C6944

.thumb
sub_80C6964:
    push {lr}
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl loc_80C6994
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
// end of function sub_80C6964

.thumb
sub_80C6980:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6992
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6992:
    pop {pc}
// end of function sub_80C6980

loc_80C6994:
    push {r6,lr}
    ldr r1, [pc, #0x80c69a4-0x80c6996-2] // off_80C69A8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80C69A4:    .word off_80C69A8
off_80C69A8:    .word sub_80C69B8+1
    .word sub_80C6A04+1
    .word sub_80C6A42+1
    .word sub_80C6A84+1
.thumb
sub_80C69B8:
    push {r6,lr}
    bl sub_800ACF6
    beq loc_80C69F6
    mov r0, #0x40 
    bl sub_8012F36
    mov r6, #0x78 
    add r6, r6, r5
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C6A02
loc_80C69F6:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6A02:
    pop {r6,pc}
// end of function sub_80C69B8

.thumb
sub_80C6A04:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6A40
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C6A40:
    pop {pc}
// end of function sub_80C6A04

.thumb
sub_80C6A42:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6A76
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    bl sub_8012F4A
    ldr r2, [pc, #0x80c6a80-0x80c6a5e-2] // =0xA000
    and r2, r0
    beq loc_80C6A66
    mov r2, #0x28 
loc_80C6A66:
    ldrb r0, [r5,#4]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80c6a78-0x80c6a6a-2] // off_80C6A7C
    ldrb r0, [r1,r0]
    add r0, r0, r2
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C6A76:
    pop {pc}
off_80C6A78:    .word off_80C6A7C
off_80C6A7C:    .word 0x1E28
dword_80C6A80:    .word 0xA000
// end of function sub_80C6A42

.thumb
sub_80C6A84:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6A9A
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6A9A:
    pop {pc}
// end of function sub_80C6A84

loc_80C6A9C:
    push {lr}
    ldr r1, [pc, #0x80c6aac-0x80c6a9e-2] // off_80C6AB0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C6AAC:    .word off_80C6AB0
off_80C6AB0:    .word sub_80C6AC8+1
    .word sub_80C6B20+1
    .word sub_80C6B5E+1
    .word sub_80C6B80+1
    .word sub_80C6B94+1
    .word sub_80C6C2C+1
.thumb
sub_80C6AC8:
    push {r6,lr}
    bl sub_80BB898
    tst r0, r0
    beq loc_80C6B12
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80C6B12
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C6B1E
loc_80C6B12:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6B1E:
    pop {r6,pc}
// end of function sub_80C6AC8

.thumb
sub_80C6B20:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6B5C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C6B5C:
    pop {pc}
// end of function sub_80C6B20

.thumb
sub_80C6B5E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6B7E
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C6B7E:
    pop {pc}
// end of function sub_80C6B5E

.thumb
sub_80C6B80:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6B92
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C6B92:
    pop {pc}
// end of function sub_80C6B80

.thumb
sub_80C6B94:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6BA8
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #0x29 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6BA8:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x20 
    bne loc_80C6BB4
    mov r0, #0xa
    bl sub_800AF88
loc_80C6BB4:
    cmp r0, #0x15
    bne loc_80C6BC4
    mov r4, #3
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    b loc_80C6C10
loc_80C6BC4:
    cmp r0, #0xc
    bne loc_80C6C10
    ldrb r6, [r5,#4]
    lsr r6, r6, #1
    ldr r1, [pc, #0x80c6c24-0x80c6bcc-4] // dword_80C6C28
    ldrb r1, [r1,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r1
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r4, [pc, #0x80c6c20-0x80c6be0-4] // =0x705FF06
    push {r0,r1}
    mov r2, #0
    mov r7, #3
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80CD6D6
    pop {r0,r1}
    mov r4, #0x4b 
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #8
    orr r4, r2
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
loc_80C6C10:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6C1C
    mov r0, #0x14
    strh r0, [r5,#0xa]
locret_80C6C1C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
dword_80C6C20:    .word 0x705FF06
off_80C6C24:    .word dword_80C6C28
dword_80C6C28:    .word 0xC864
// end of function sub_80C6B94

.thumb
sub_80C6C2C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6C3C
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6C3C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6C5C
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C6C5C:
    pop {pc}
// end of function sub_80C6C2C

loc_80C6C5E:
    push {lr}
    ldr r1, [pc, #0x80c6c6c-0x80c6c60-4] // off_80C6C70
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C6C6C:    .word off_80C6C70
off_80C6C70:    .word sub_80C6C84+1
    .word sub_80C6CF0+1
    .word sub_80C6D2E+1
    .word sub_80C6D4C+1
    .word sub_80C6DE4+1
.thumb
sub_80C6C84:
    push {r6,lr}
    bl sub_8012F4A
    mov r1, #1
    lsl r1, r1, #0xe
    tst r0, r1
    bne loc_80C6C9A
    bl sub_80B56B8
    tst r0, r0
    bne loc_80C6C9E
loc_80C6C9A:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_80C6C9E:
    mov r6, #0x78 
    add r6, r6, r5
    strb r0, [r6,#4]
    strb r1, [r6,#5]
    bl sub_800ACF6
    beq loc_80C6CDE
    mov r0, #0x40 
    bl sub_8012F36
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x14]
    ldrb r1, [r6,#5]
    strb r1, [r5,#0x15]
    bl sub_8014348
    ldrb r0, [r6,#4]
    ldrb r1, [r6,#5]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x16
    lsl r3, r3, #0x10
    mov r4, #0x14
    bl sub_80E17DE
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    b locret_80C6CEE
loc_80C6CDE:
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C6CEE:
    pop {r6,pc}
// end of function sub_80C6C84

.thumb
sub_80C6CF0:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6D2C
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801436A
    bl sub_800AB30
    bl sub_8012D4E
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C6D2C:
    pop {pc}
// end of function sub_80C6CF0

.thumb
sub_80C6D2E:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80C6D4A
    mov r0, #0x40 
    bl sub_8012F40
    mov r0, #1
    lsl r0, r0, #0x13
    bl sub_8012F36
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C6D4A:
    pop {pc}
// end of function sub_80C6D2E

.thumb
sub_80C6D4C:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6D76
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r4, #4
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    mov r0, #0x90
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xa
    bl sub_800AF88
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6D76:
    ldrh r0, [r5,#0x20]
    cmp r0, #9
    bne loc_80C6DC8
    bl sub_8012F4A
    ldr r1, [pc, #0x80c6de0-0x80c6d80-4] // =0xA000
    tst r0, r1
    beq loc_80C6D8C
    bl sub_80B921E
    b loc_80C6D90
loc_80C6D8C:
    bl sub_800A15E
loc_80C6D90:
    lsl r1, r1, #8
    orr r0, r1
    lsl r0, r0, #0x10
    mov r4, #0
    add r4, r4, r0
    bl sub_800AB54
    mov r1, #4
    mul r0, r1
    ldr r0, [r5,#0x34]
    lsl r1, r1, #0x10
    add r1, r1, r0
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r7, #0x30 
    lsl r7, r7, #0x10
    add r3, r3, r7
    ldrb r6, [r5,#4]
    lsr r6, r6, #1
    ldr r0, [pc, #0x80c6dd8-0x80c6db6-2] // dword_80C6DDC
    ldrb r0, [r0,r6]
    mov r6, #0x1e
    lsl r6, r6, #0x10
    add r6, r6, r0
    bl sub_80D392C
    mov r0, #0
    str r0, [r5,#0x4c]
loc_80C6DC8:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x15
    blt locret_80C6DD6
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C6DD6:
    pop {r4,r6,r7,pc}
off_80C6DD8:    .word dword_80C6DDC
dword_80C6DDC:    .word 0xC864
dword_80C6DE0:    .word 0xA000
// end of function sub_80C6D4C

.thumb
sub_80C6DE4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6DF4
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80C6DF4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C6E10
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #3
    strb r0, [r5,#0xb]
locret_80C6E10:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80C6DE4

loc_80C6E14:
    push {lr}
    ldr r1, [pc, #0x80c6e30-0x80c6e16-2] // =0x80C6E24
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
    ldr r5, [r6,#0x60]
    lsr r4, r1, #0x20
    ldr r1, [r1,#0x68]
    lsr r4, r1, #0x20
    strb r5, [r3,#3]
    lsr r4, r1, #0x20
dword_80C6E30:    .word 0x80C6E24
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #7
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800AB30
    ldrb r0, [r5,#0x16]
    bl loc_8002F8E
    mov r0, #7
    bl sub_800B91C
    bl sub_8002DCC
    ldr r0, [pc, #0x80c6e84-0x80c6e6a-2] // =0x7FFF
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80C6E88
    pop {pc}
    .balign 4, 0x00
dword_80C6E84:    .word 0x7FFF
loc_80C6E88:
    push {lr}
    ldr r1, [pc, #0x80c6eac-0x80c6e8a-2] // off_80C6EA0
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    bl sub_80C7148
    pop {pc}
    .byte 0, 0
off_80C6EA0:    .word sub_80C6EB0+1
    .word loc_80C6F6E+1
    .word sub_80C70B0+1
off_80C6EAC:    .word off_80C6EA0
.thumb
sub_80C6EB0:
    push {lr}
    ldr r1, [pc, #0x80c6ec0-0x80c6eb2-2] // off_80C6EC4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C6EC0:    .word off_80C6EC4
off_80C6EC4:    .word sub_80C6ECC+1
    .word sub_80C6F1C+1
// end of function sub_80C6EB0

.thumb
sub_80C6ECC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6EE8
    mov r0, #0x1f
    strb r0, [r5,#0x19]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C6F1A
loc_80C6EE8:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    lsr r0, r0, #1
    bcc loc_80C6F02
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_80C6F02:
    ldrb r0, [r5,#0x19]
    sub r0, #2
    strb r0, [r5,#0x19]
    bgt locret_80C6F1A
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C6F1A:
    pop {pc}
// end of function sub_80C6ECC

.thumb
sub_80C6F1C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C6F2E
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C6F6C
loc_80C6F2E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C6F6C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x10
    mov r3, #0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C6F4C
    mov r0, #8
    str r0, [r5,#8]
    b locret_80C6F6C
loc_80C6F4C:
    ldrb r0, [r5,#0x12]
    add r0, #1
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C6F58
    sub r0, #2
loc_80C6F58:
    strb r0, [r5,#0x14]
    mov r0, #1
    strb r0, [r5,#0x15]
    str r0, [r5,#0x68]
    ldrb r0, [r5,#0x16]
    str r0, [r5,#0x6c]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C6F6C:
    pop {pc}
// end of function sub_80C6F1C

loc_80C6F6E:
    push {lr}
    ldr r1, [pc, #0x80c6f7c-0x80c6f70-4] // off_80C6F80
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C6F7C:    .word off_80C6F80
off_80C6F80:    .word sub_80C6F90+1
    .word sub_80C7020+1
    .word sub_80C7044+1
    .word sub_80C707E+1
.thumb
sub_80C6F90:
    push {lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009E64
    beq loc_80C6FFE
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    ldr r2, [r5,#0x68]
    tst r2, r2
    beq loc_80C6FE4
loc_80C6FA6:
    mov r1, #1
loc_80C6FA8:
    push {r0,r1}
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r3, [pc, #0x80c7008-0x80c6fae-2] // off_80C700C
    ldr r2, [r3,r2]
    mov r3, #0
    bl sub_8009E78
    pop {r0,r1}
    beq loc_80C6FE4
    push {r0,r1}
    sub r0, #1
    ldrb r2, [r5,#0x16]
    ldr r3, [pc, #0x80c7018-0x80c6fc2-2] // =0x7880080
    tst r2, r2
    beq loc_80C6FCC
    add r0, #2
    ldr r3, [pc, #0x80c701c-0x80c6fca-2] // =0xB880080
loc_80C6FCC:
    ldr r2, [pc, #0x80c7014-0x80c6fcc-4] // =0x10
    bl sub_8009E78
    pop {r0,r1}
    beq loc_80C6FE4
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    mov r0, #0
    str r0, [r5,#0x68]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
loc_80C6FE4:
    add r1, #1
    cmp r1, #3
    ble loc_80C6FA8
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C6FF8
    sub r0, #1
    cmp r0, #1
    bge loc_80C6FA6
    b loc_80C6FFE
loc_80C6FF8:
    add r0, #1
    cmp r0, #6
    ble loc_80C6FA6
loc_80C6FFE:
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
off_80C7008:    .word off_80C700C
off_80C700C:    .word LCDControl
    .word start_
dword_80C7014:    .word 0x10
dword_80C7018:    .word 0x7880080
dword_80C701C:    .word 0xB880080
// end of function sub_80C6F90

.thumb
sub_80C7020:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C7036
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C7042
loc_80C7036:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C7042
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C7042:
    pop {pc}
// end of function sub_80C7020

.thumb
sub_80C7044:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C7070
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x14]
    sub r0, #1
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C7060
    add r0, #2
loc_80C7060:
    strb r0, [r5,#0x12]
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#0x13]
    bl sub_800AB30
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C707C
loc_80C7070:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C707C
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C707C:
    pop {pc}
// end of function sub_80C7044

.thumb
sub_80C707E:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C709E
    mov r0, #5
    strb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x11]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0
    bl sub_80C70EA
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C70AE
loc_80C709E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C70AE
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C70AE:
    pop {pc}
// end of function sub_80C707E

.thumb
sub_80C70B0:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C70C6
    mov r0, #4
    strh r0, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_80C70DA
loc_80C70C6:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C70DA
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
locret_80C70DA:
    pop {pc}
// end of function sub_80C70B0

    push {lr}
    ldr r0, [r5,#0x64]
    mov r1, #0
    strb r1, [r0]
    bl sub_80033B4
    pop {pc}
.thumb
sub_80C70EA:
    push {r4,r6,r7,lr}
    push {r0}
    ldr r4, [pc, #0x80c7144-0x80c70ee-2] // =0x10703
    mov r7, #0x4c 
    add r7, r7, r5
    bl sub_80CD5D4
    ldr r0, [r5,#0x6c]
    bl loc_800AB56
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    pop {r7}
    lsl r7, r7, #8
    push {r0,r1}
    mov r3, #0x10
    lsl r3, r3, #0x10
    ldr r4, [pc, #0x80c7140-0x80c710e-2] // =0x705FF04
    ldr r6, [r5,#0x2c]
    mov r2, #3
    orr r7, r2
    mov r2, #0
    bl sub_80CD712
    pop {r0,r1}
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    ldr r4, [r5,#0x6c]
    lsl r4, r4, #8
    mov r0, #0x5e 
    orr r4, r0
    bl sub_80E17DE
    mov r0, #0x8e
    bl f500_8000558
    pop {r4,r6,r7,pc}
    .byte 0, 0
dword_80C7140:    .word 0x705FF04
dword_80C7144:    .word 0x10703
// end of function sub_80C70EA

.thumb
sub_80C7148:
    push {lr}
    ldrb r1, [r5,#0x19]
    lsl r0, r1, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    pop {pc}
// end of function sub_80C7148

    push {lr}
    push {r1,r3,r5}
    mov r0, #0x3c 
    bl sub_8003298
    add r0, r5, #0
    pop {r2,r3,r5}
    beq locret_80C7176
    strh r2, [r0,#0x12]
    strb r3, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x64]
    mov r1, #1
    strb r1, [r7]
locret_80C7176:
    pop {pc}
loc_80C7178:
    push {lr}
    mov r7, #0x60 
    add r7, r7, r5
    ldr r1, [pc, #0x80c7198-0x80c717e-2] // =0x80C718C
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
    strb r5, [r3,#6]
    lsr r4, r1, #0x20
    strb r5, [r6,#7]
    lsr r4, r1, #0x20
    strb r7, [r5,#0x17]
    lsr r4, r1, #0x20
dword_80C7198:    .word 0x80C718C
    push {lr}
    mov r0, #0x80
    mov r1, #8
    mov r2, #7
    bl sub_800285C
    bl sub_800281C
    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800AB30
    ldrb r0, [r5,#0x16]
    bl loc_8002F8E
    ldrh r0, [r5,#0x12]
    strh r0, [r7,#0x10]
    mov r0, #7
    bl sub_800B91C
    bl sub_8002DCC
    ldr r0, [pc, #0x80c71f0-0x80c71d6-2] // =0x7FFF
    bl sub_8002F02
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #4
    str r0, [r5,#8]
    bl loc_80C71F4
    pop {pc}
    .byte 0, 0
dword_80C71F0:    .word 0x7FFF
loc_80C71F4:
    push {lr}
    ldr r1, [pc, #0x80c7218-0x80c71f6-2] // off_80C720C
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    bl sub_80C75FC
    pop {pc}
    .balign 4, 0x00
off_80C720C:    .word sub_80C721C+1
    .word loc_80C72DE+1
    .word sub_80C75BC+1
off_80C7218:    .word off_80C720C
.thumb
sub_80C721C:
    push {lr}
    ldr r1, [pc, #0x80c722c-0x80c721e-2] // off_80C7230
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80C722C:    .word off_80C7230
off_80C7230:    .word sub_80C7238+1
    .word sub_80C7288+1
// end of function sub_80C721C

.thumb
sub_80C7238:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C7254
    mov r0, #0x1f
    strb r0, [r5,#0x19]
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C7286
loc_80C7254:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    lsr r0, r0, #1
    bcc loc_80C726E
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_80C726E:
    ldrb r0, [r5,#0x19]
    sub r0, #2
    strb r0, [r5,#0x19]
    bgt locret_80C7286
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strh r0, [r5,#0xa]
locret_80C7286:
    pop {pc}
// end of function sub_80C7238

.thumb
sub_80C7288:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C72B2
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r0, #0x14
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r4, #3
    bl sub_80E17DE
    mov r0, #0x77 
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C72DC
loc_80C72B2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C72DC
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x10
    mov r3, #0
    bl sub_8009E78
    cmp r0, #0
    bne loc_80C72D0
    mov r0, #8
    str r0, [r5,#8]
    b locret_80C72DC
loc_80C72D0:
    ldrb r0, [r5,#0x16]
    strb r0, [r7,#0xc]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C72DC:
    pop {pc}
// end of function sub_80C7288

loc_80C72DE:
    push {lr}
    ldr r1, [pc, #0x80c72ec-0x80c72e0-4] // off_80C72F0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80C72EC:    .word off_80C72F0
off_80C72F0:    .word sub_80C730C+1
    .word sub_80C73A6+1
    .word loc_80C73FA+1
    .word sub_80C7446+1
    .word sub_80C747C+1
    .word sub_80C74C6+1
    .word sub_80C74FC+1
.thumb
sub_80C730C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#0x18]
    strb r0, [r7,#0x16]
    strb r0, [r7,#0x17]
    mov r0, #2
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C7320
    mov r0, #5
loc_80C7320:
    mov r1, #1
loc_80C7322:
    push {r0,r1}
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r3, [pc, #0x80c75a4-0x80c7328-4] // off_80C75A8
    ldr r2, [r3,r2]
    mov r3, #0
    bl sub_8009E78
    pop {r0,r1}
    beq loc_80C737E
    push {r0,r1}
    sub r0, #1
    sub r1, #1
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C7344
    add r0, #2
loc_80C7344:
    ldrb r2, [r7,#0x18]
    tst r2, r2
    bne loc_80C7350
    strb r0, [r7,#0x18]
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
loc_80C7350:
    push {r0,r1}
    bl sub_8009E64
    pop {r0,r1}
    beq loc_80C736E
    ldrb r2, [r5,#0x16]
    ldr r3, [pc, #0x80c75b4-0x80c735c-4] // =0x7880080
    tst r2, r2
    beq loc_80C7364
    ldr r3, [pc, #0x80c75b8-0x80c7362-2] // =0xB880080
loc_80C7364:
    strb r0, [r7,#0x14]
    strb r1, [r7,#0x15]
    ldr r2, [pc, #0x80c75b0-0x80c7368-4] // =0x10
    bl sub_8009E78
loc_80C736E:
    pop {r0,r1}
    beq loc_80C737E
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    mov r0, #0
    strh r0, [r5,#0x22]
    mov r0, #0x1e
    b loc_80C739E
loc_80C737E:
    add r1, #1
    cmp r1, #3
    ble loc_80C7322
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C7392
    sub r0, #1
    cmp r0, #1
    bge loc_80C7320
    b loc_80C7398
loc_80C7392:
    add r0, #1
    cmp r0, #6
    ble loc_80C7320
loc_80C7398:
    mov r0, #0xff
    strh r0, [r5,#0x22]
    mov r0, #0xf
loc_80C739E:
    strh r0, [r5,#0x20]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80C730C

.thumb
sub_80C73A6:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C73E2
    ldrb r0, [r7,#0x14]
    ldrb r1, [r7,#0x15]
    ldrh r2, [r5,#0x22]
    tst r2, r2
    beq loc_80C73BC
    ldrb r0, [r7,#0x16]
    ldrb r1, [r7,#0x17]
loc_80C73BC:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800AB0A
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r4, #0x60 
    bl sub_80E17DE
    ldrh r1, [r5,#0x20]
    strh r1, [r0,#0x20]
    mov r0, #0x30 
    add r0, #0xff
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C73F8
loc_80C73E2:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C73F8
    ldrh r0, [r5,#0x22]
    tst r0, r0
    bne loc_80C7432
    mov r0, #1
    strb r0, [r7,#0x19]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C73F8:
    pop {pc}
loc_80C73FA:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C7410
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #3
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C7444
loc_80C7410:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C7444
    ldrh r0, [r5,#0x22]
    cmp r0, #3
    bne loc_80C7424
    mov r0, #0x14
    strh r0, [r5,#0xa]
    pop {pc}
loc_80C7424:
    ldrb r0, [r7,#0x19]
    tst r0, r0
    beq loc_80C7432
    ldrh r0, [r5,#0x22]
    bl sub_80C7548
    bne loc_80C743C
loc_80C7432:
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
loc_80C743C:
    mov r0, #0
    strb r0, [r7,#0x19]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80C7444:
    pop {pc}
// end of function sub_80C73A6

.thumb
sub_80C7446:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C746E
    mov r0, #3
    strb r0, [r5,#0x10]
    ldrb r0, [r7,#0xc]
    bl loc_8002F8E
    mov r0, #3
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#0x13]
    bl sub_800AB30
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C747A
loc_80C746E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C747A
    mov r0, #0x10
    strh r0, [r5,#0xa]
locret_80C747A:
    pop {pc}
// end of function sub_80C7446

.thumb
sub_80C747C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C74A4
    mov r0, #5
    strb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x11]
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0
    ldrh r1, [r5,#0x22]
    cmp r1, #2
    bne loc_80C749A
    mov r0, #0
loc_80C749A:
    bl sub_80C70EA
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C74C4
loc_80C74A4:
    ldrh r0, [r5,#0x20]
    cmp r0, #5
    ble loc_80C74B4
    bl sub_80C752E
    beq loc_80C74B4
    mov r0, #1
    strb r0, [r7,#0x19]
loc_80C74B4:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C74C4
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80C74C4:
    pop {pc}
// end of function sub_80C747C

.thumb
sub_80C74C6:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C74EE
    mov r0, #3
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl loc_8002F8E
    mov r0, #3
    strh r0, [r5,#0x20]
    ldrh r0, [r7,#0x10]
    strh r0, [r5,#0x12]
    bl sub_800AB30
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C74FA
loc_80C74EE:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C74FA
    mov r0, #0x18
    strh r0, [r5,#0xa]
locret_80C74FA:
    pop {pc}
// end of function sub_80C74C6

.thumb
sub_80C74FC:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80C7524
    mov r0, #0xf
    strb r0, [r5,#0x10]
    mov r0, #0x3c 
    strh r0, [r5,#0x20]
    ldrb r0, [r5,#0x14]
    add r0, #1
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80C7518
    sub r0, #2
loc_80C7518:
    mov r1, #2
    bl sub_80F2E2E
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_80C752C
loc_80C7524:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    beq loc_80C7432
locret_80C752C:
    pop {pc}
// end of function sub_80C74FC

.thumb
sub_80C752E:
    push {lr}
    bl sub_80405D8
    bne locret_80C7546
    ldrb r0, [r5,#0x16]
    bl sub_800C41A
    ldr r0, [r0,#0x58]
    mov r2, #0x26 
    ldrh r1, [r0,r2]
    mov r0, #1
    tst r0, r1
locret_80C7546:
    pop {pc}
// end of function sub_80C752E

.thumb
sub_80C7548:
    push {r4,lr}
    add r3, r0, #0
    lsl r0, r0, #0x1f
    lsr r0, r0, #0x1f
    ldrb r4, [r5,#0x16]
    eor r0, r4
    strb r0, [r7,#0xc]
    ldr r2, [pc, #0x80c7598-0x80c7556-2] // dword_80C759C
    lsl r3, r3, #1
    ldrb r0, [r5,#0x14]
    ldrsb r1, [r3,r2]
    lsr r4, r4, #1
    bcs loc_80C7564
    neg r1, r1
loc_80C7564:
    add r0, r0, r1
    strb r0, [r5,#0x14]
    ldrb r0, [r5,#0x15]
    add r2, #1
    ldrsb r1, [r3,r2]
    add r0, r0, r1
    strb r0, [r5,#0x15]
    lsr r3, r3, #1
    add r3, #1
    strh r3, [r5,#0x22]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_8009E64
    beq locret_80C7596
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    ldr r2, [pc, #0x80c75b0-0x80c7586-2] // =0x10
    ldr r3, [pc, #0x80c75b4-0x80c7588-4] // =0x7880080
    ldrb r4, [r5,#0x16]
    tst r4, r4
    beq loc_80C7592
    ldr r3, [pc, #0x80c75b8-0x80c7590-4] // =0xB880080
loc_80C7592:
    bl sub_8009E78
locret_80C7596:
    pop {r4,pc}
off_80C7598:    .word dword_80C759C
dword_80C759C:    .word 0x1FEFF01, 0x102
off_80C75A4:    .word off_80C75A8
off_80C75A8:    .word LCDControl
    .word start_
dword_80C75B0:    .word 0x10
dword_80C75B4:    .word 0x7880080
dword_80C75B8:    .word 0xB880080
// end of function sub_80C7548

.thumb
sub_80C75BC:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80C75D8
    ldrb r0, [r5,#0x10]
    mov r1, #4
    cmp r0, r1
    beq loc_80C75E0
    strb r1, [r5,#0x10]
    mov r0, #5
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_80C75EC
loc_80C75D8:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt locret_80C75EC
loc_80C75E0:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
locret_80C75EC:
    pop {pc}
// end of function sub_80C75BC

    push {lr}
    ldr r0, [r5,#0x64]
    mov r1, #0
    strb r1, [r0]
    bl sub_80033B4
    pop {pc}
.thumb
sub_80C75FC:
    push {lr}
    ldrb r1, [r5,#0x19]
    lsl r0, r1, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002F02
    pop {pc}
// end of function sub_80C75FC

    push {lr}
    push {r1,r3,r5}
    mov r0, #0x3d 
    bl sub_8003298
    add r0, r5, #0
    pop {r2,r3,r5}
    beq locret_80C762A
    strh r2, [r0,#0x12]
    strb r3, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x64]
    mov r1, #1
    strb r1, [r7]
locret_80C762A:
    pop {pc}
loc_80C762C:
    push {lr}
    ldr r1, [pc, #0x80c7640-0x80c762e-2] // off_80C7644
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80143E6
    pop {pc}
    .byte 0, 0
off_80C7640:    .word off_80C7644
off_80C7644:    .word sub_80C7670+1
    .word sub_80C76D0+1
    .word sub_80C7650+1
.thumb
sub_80C7650:
    push {lr}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x13
    bl sub_80E17DE
    mov r0, #0
    ldr r1, [r5,#0x4c]
    str r0, [r1]
    bl sub_80033B4
    pop {pc}
// end of function sub_80C7650

.thumb
sub_80C7670:
    push {lr}
    mov r0, #0xd8
    bl sub_8002B86
    mov r0, #0x80
    mov r1, #8
    mov r2, #0x17
    bl sub_800285C
    bl sub_8002E76
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_80C7670

    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    blt loc_80C76AC
    mov r0, #5
    cmp r1, #4
    blt loc_80C76AC
    mov r0, #6
loc_80C76AC:
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800AB30
    mov r0, #0xb0
    bl f500_8000558
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C76D0
    pop {pc}
.thumb
sub_80C76D0:
    push {lr}
    ldr r1, [pc, #0x80c76e0-0x80c76d2-2] // off_80C76E4
    ldrb r0, [r5,#9]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80C76E0:    .word off_80C76E4
off_80C76E4:    .word sub_80C76EC+1
    .word sub_80C7708+1
// end of function sub_80C76D0

.thumb
sub_80C76EC:
    push {r4,lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C7706
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x6e 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80C7706:
    pop {r4,pc}
// end of function sub_80C76EC

.thumb
sub_80C7708:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    bne loc_80C7744
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_80C7744
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #2
    ldrb r1, [r5,#0x16]
    cmp r1, #0
    beq loc_80C7728
    sub r0, #5
loc_80C7728:
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    cmp r1, #1
    beq loc_80C776C
    sub r1, #1
    mov r2, #0
    mov r3, #0
    ldr r6, [r5,#0x2c]
    ldrb r4, [r5,#6]
    lsl r4, r4, #0x10
    bl sub_80D91AC
    b loc_80C776C
loc_80C7744:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x41 
    bne loc_80C776C
    mov r0, #2
    ldrb r1, [r5,#0x16]
    cmp r1, #0
    beq loc_80C7754
    sub r0, #5
loc_80C7754:
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    cmp r1, #3
    beq loc_80C776C
    mov r2, #0
    mov r3, #0
    ldr r6, [r5,#0x2c]
    ldrb r4, [r5,#6]
    lsl r4, r4, #0x10
    bl sub_80D91AC
loc_80C776C:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x14
    bne loc_80C7776
    mov r0, #7
    strb r0, [r5,#0x10]
loc_80C7776:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80C7782
    mov r0, #8
    str r0, [r5,#8]
locret_80C7782:
    pop {r4,r6,r7,pc}
// end of function sub_80C7708

.thumb
sub_80C7784:
    push {lr}
    push {r0-r2,r5}
    mov r0, #0x3e 
    bl sub_8003298
    add r0, r5, #0
    pop {r1-r3,r5}
    beq locret_80C77A6
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0x17]
    ldrb r1, [r5,#0x16]
    strb r1, [r0,#0x16]
    str r6, [r0,#0x2c]
    str r7, [r0,#0x4c]
    mov r1, #1
    str r1, [r7]
locret_80C77A6:
    pop {pc}
// end of function sub_80C7784

loc_80C77A8:
    push {lr}
    ldr r1, [pc, #0x80c77bc-0x80c77aa-2] // off_80C77C0
    ldrb r0, [r5,#8]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801439C
    pop {pc}
    .balign 4, 0x00
off_80C77BC:    .word off_80C77C0
off_80C77C0:    .word sub_80C77CC+1
    .word sub_80C7848+1
    .word sub_8010F0C+1
.thumb
sub_80C77CC:
    push {r4,r7,lr}
    mov r1, #8
    mov r2, #9
    mov r0, #0x80
    bl sub_800285C
    bl sub_800281C
// end of function sub_80C77CC

    bl sub_8002E76
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
    mov r0, #6
    bl sub_800B91C
    bl sub_8002DCC
    bl sub_800AC72
    bl loc_8002F8E
    bl sub_800C05E
    bl sub_8012442
    tst r0, r0
    bne loc_80C7812
    bl sub_80033B4
    b locret_80C7840
loc_80C7812:
    mov r1, #0x10
    mov r2, #2
    mov r3, #3
    bl sub_8012958
    ldr r0, [pc, #0x80c7844-0x80c781c-4] // =0x20030
    bl sub_8012F36
    ldr r3, [r5,#0x58]
    mov r0, #0x70 
    add r3, r3, r0
    ldrb r0, [r5,#4]
    str r0, [r5,#0x60]
    mov r0, #0xc
    bl sub_80C7C14
    mov r0, #0
    bl sub_80C789C
    mov r0, #4
    str r0, [r5,#8]
    bl sub_80C7848
locret_80C7840:
    pop {r4,r7,pc}
    .balign 4, 0x00
dword_80C7844:    .word 0x20030
.thumb
sub_80C7848:
    push {lr}
    bl sub_8013548
    bl sub_80C7BD8
    ldr r0, [pc, #0x80c7860-0x80c7852-2] // off_80C7864
    bl sub_8013D54
    bl sub_8012D16
    pop {pc}
    .byte 0, 0
off_80C7860:    .word off_80C7864
off_80C7864:    .word sub_8010CDC+1
    .word sub_80C7894+1
    .word sub_8010CF8+1
    .word sub_8010E34+1
    .word sub_8010EB4+1
    .word ho_8010F5A+1
    .word loc_80C7904+1
    .word loc_80F38C0+1
    .word loc_80F3970+1
    .word loc_80F3A66+1
// end of function sub_80C7848

    sub r3, #0x9d
    lsr r7, r1, #0x20
    sub r5, #0x73 
    lsr r7, r1, #0x20
.thumb
sub_80C7894:
    push {lr}
    bl sub_8010F52
    pop {pc}
// end of function sub_80C7894

.thumb
sub_80C789C:
    push {r4,lr}
    push {r0}
    ldr r3, [r5,#0x58]
    mov r0, #0x70 
    add r3, r3, r0
    ldrb r0, [r5,#4]
    str r0, [r5,#0x60]
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x70]
    str r0, [r5,#0x64]
    mov r2, #0x6c 
    str r0, [r5,r2]
    pop {r0}
    cmp r0, #2
    beq loc_80C78DA
    ldrb r0, [r5,#0x16]
    tst r0, r0
    beq loc_80C78C6
    bl sub_80C7BA8
loc_80C78C6:
    mov r0, #3
    mov r1, #2
    mov r2, #0
    bl sub_80C7BB4
    mov r0, #4
    mov r1, #2
    mov r2, #1
    bl sub_80C7BB4
loc_80C78DA:
    bl sub_80C78E0
    pop {r4,pc}
// end of function sub_80C789C

.thumb
sub_80C78E0:
    push {r4,lr}
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    mov r3, #1
    lsl r3, r3, #0x10
    sub r2, r2, r3
    ldr r3, [r5,#0x3c]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #8
    mov r4, #5
    orr r4, r0
    bl sub_80E5A0C
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    pop {r4,pc}
// end of function sub_80C78E0

loc_80C7904:
    push {lr}
    mov r6, #0x74 
    add r6, r6, r5
    ldr r1, [pc, #0x80c7918-0x80c790a-2] // off_80C791C
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
.thumb

