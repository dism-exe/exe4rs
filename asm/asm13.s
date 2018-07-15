.include "asm13.inc"

.thumb
sub_80772DA:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x80772e8-0x80772de-2] // off_80772EC
    ldr r0, [r0,r1]
    bl sub_80024E0
    pop {pc}
off_80772E8:    .word off_80772EC
off_80772EC:    .word off_80772F8
    .word off_8077304
    .word off_8077310
off_80772F8:    .word off_8076FB8
    .word dword_8076FBC+0x5C
    .word 0xFFFFFFFF
off_8077304:    .word off_8076FB8
    .word dword_8076FBC+0x5C
    .word 0xFFFFFFFF
off_8077310:    .word off_8076FB8
    .word dword_8076FBC+0x5C
    .word 0xFFFFFFFF
// end of function sub_80772DA

.thumb
sub_807731C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x8077358-0x8077326-2] // off_807735C
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
    ldr r0, [pc, #0x807738c-0x8077340-4] // off_8077390
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8077358:    .word off_807735C
off_807735C:    .word nullsub_88+1
    .word sub_8001ECE+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
off_807738C:    .word off_8077390
off_8077390:    .word off_807739C
    .word off_807739C
    .word off_807739C
off_807739C:    .word off_861A250
    .word unk_2012800
    .word 0x600CC80, 0x861A34C, 0x2012C00, 0x3001800, 0x861A59C
    .word 0x3002A50, 0x20
// end of function sub_807731C

loc_80773C0:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x80773d4-0x80773ca-2] // off_80773D8
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_80773D4:    .word off_80773D8
off_80773D8:    .word locret_80773E4+1
    .word locret_80773E6+1
    .word locret_80773E8+1
locret_80773E4:
    mov pc, lr
locret_80773E6:
    mov pc, lr
locret_80773E8:
    mov pc, lr
.thumb
sub_80773EA:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8077400-0x80773f4-4] // off_8077404
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
    .byte 0, 0
off_8077400:    .word off_8077404
off_8077404:    .word dword_8077410  // <endpool>
// end of function sub_80773EA

    .word dword_8077450  // <filepool>
    .word dword_807747C
dword_8077410:    .word 0x305, 0xFFFC0000, 0xFF860000, 0x0, 0x0
    .word 0x405, 0xFFCE0000, 0xA80000, 0x0
    .word 0x20000, 0x405, 0xC80000, 0x460000, 0x0
    .word 0x20001, 0xFF
dword_8077450:    .word 0x305, 0xB00000, 0xFE840000, 0x0
    .word 0x1, 0x405, 0x17A0000, 0xFF720000, 0x0
    .word 0x20102, 0xFF
dword_807747C:    .word 0x305, 0xFF940000, 0xFFB20000, 0x0
    .word 0x2, 0x405, 0x1220000, 0x400000, 0x0
    .word 0x20303, 0x405, 0xFF220000, 0xFF5E0000, 0x0
    .word 0x20104, 0xFF, 0x8077520, 0x80776FC, 0x8077970, 0x8077584
    .word 0x807781A, 0x8077A09
off_80774D4:    .word off_8077B0C
    .word off_8078140
    .word off_8078B60
    .word dword_80774EC
    .word dword_80774FC
    .word dword_807750C
dword_80774EC:    .word 0xFF020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80774FC:    .word 0xFFFF0100, 0xFFFFFF04, 0xFFFFFFFF, 0xFFFFFFFF
/*For debugging purposes, connect comment at any range!*/
