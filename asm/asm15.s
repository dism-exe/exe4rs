.include "asm15.inc"

.thumb
sub_807CB92:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x807cba0-0x807cb96-2] // =pt_807CBA4
    ldr r0, [r0,r1]
    bl sub_80024E0
    pop {pc}
off_807CBA0:    .word pt_807CBA4
pt_807CBA4:    .word off_807CBB0
    .word off_807CBC4
    .word off_807CBD8
off_807CBB0:    .word off_807C938
    .word off_807C9C8
    .word off_807CA28
    .word off_807CAC0
    .word 0xFFFFFFFF
off_807CBC4:    .word off_807C938
    .word off_807C9C8
    .word off_807CA28
    .word off_807CAC0
    .word 0xFFFFFFFF
off_807CBD8:    .word off_807C938
    .word off_807C9C8
    .word off_807CA28
    .word off_807CAC0
    .word 0xFFFFFFFF
// end of function sub_807CB92

.thumb
sub_807CBEC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x807cc28-0x807cbf6-2] // =off_807CC2C
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_8001E5C
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r2, [r1]
    ldr r0, [r7,#0xc]
    orr r2, r0
    strh r2, [r1]
    ldr r0, [pc, #0x807cc5c-0x807cc10-4] // =off_807CC60
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .balign 4, 0x00
off_807CC28:    .word off_807CC2C
off_807CC2C:    .word nullsub_88+1
    .word sub_8001ECE+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
off_807CC5C:    .word off_807CC60
off_807CC60:    .word off_807CC6C
    .word off_807CC6C
    .word off_807CC6C
off_807CC6C:    .word off_861A250
    .word unk_2012800
    .word 0x600CC80, 0x861A34C, 0x2012C00, 0x3001800, 0x861AB90
    .word 0x3002A50, 0x20
// end of function sub_807CBEC

loc_807CC90:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x807cca4-0x807cc9a-2] // =off_807CCA8
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_807CCA4:    .word off_807CCA8
off_807CCA8:    .word locret_807CCB4+1
    .word locret_807CCB6+1
    .word locret_807CCB8+1
locret_807CCB4:
    mov pc, lr
locret_807CCB6:
    mov pc, lr
locret_807CCB8:
    mov pc, lr
.thumb
sub_807CCBA:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x807ccd0-0x807ccc4-4] // =off_807CCD4
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
    .byte 0, 0
off_807CCD0:    .word off_807CCD4
off_807CCD4:    .word dword_807CCE0  // <endpool>
// end of function sub_807CCBA

    .word dword_807CCF8  // <filepool>
    .word dword_807CD24
dword_807CCE0:    .word 0x305, 0xFEFC0000, 0xFF660000, 0x400000, 0x4, 0xFF
dword_807CCF8:    .word 0x405, 0xFE8A0000, 0x40000, 0x400000, 0x2010B, 0x605
    .word 0xFE1A0000, 0x760000, 0x200000, 0x34, 0xFF
dword_807CD24:    .word 0x405, 0x960000, 0xFF7E0000, 0x0
    .word 0x3000C, 0xFF, 0x807CDA0, 0x807D0C4, 0x807D388, 0x807CECA
    .word 0x807D1A5, 0x807D598
off_807CD54:    .word off_807D808
    .word off_807E180
    .word off_807E5F8
    .word dword_807CD6C
    .word dword_807CD7C
    .word dword_807CD8C
/*For debugging purposes, connect comment at any range!*/
