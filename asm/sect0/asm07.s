.include "sect0/asm07.inc"

.thumb
sub_8069450:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x80694a8-0x8069454-4] // dword_80691D8+40
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8026098
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_80266E0
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x3c]
    ldr r2, [r5,#0x40]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_8025CFC
    bl sub_802610E
    bl sub_80694FC
    ldr r0, [pc, #0x80694ac-0x8069488-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x80694b0-0x8069492-2] // off_80694B4
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_80695B0
    bl sub_802A28C
    pop {r4-r7,pc}
off_80694A8:    .word dword_80691D8+0x28
off_80694AC:    .word unk_2038800
off_80694B0:    .word off_80694B4
off_80694B4:    .word dword_80694BC
    .word 0x80694C2
dword_80694BC:    .word 0x41C031C, 0x31CFFFF, 0xA1C041C
    .byte 0xFF, 0xFF
// end of function sub_8069450

.thumb
sub_80694CA:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x80694d8-0x80694ce-2] // off_80694DC
    ldr r0, [r0,r1]
    bl sub_80024E0
    pop {pc}
off_80694D8:    .word off_80694DC
off_80694DC:    .word off_80694E4
    .word off_80694F0
off_80694E4:    .word off_8069238
    .word off_80693C8
    .word 0xFFFFFFFF
off_80694F0:    .word off_8069238
    .word off_80693C8
    .word 0xFFFFFFFF
// end of function sub_80694CA

.thumb
sub_80694FC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x8069538-0x8069506-2] // off_806953C
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
    ldr r0, [pc, #0x806955c-0x8069520-4] // off_8069560
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8069538:    .word off_806953C
off_806953C:    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
off_806955C:    .word off_8069560
off_8069560:    .word off_8069568
    .word off_8069568
off_8069568:    .word dword_860EF60
    .word unk_2012800
    .word 0x600BC00, 0x860EFB0, 0x2012C00, 0x3000800, 0x860F1D4
    .word 0x3002A50, 0x20
// end of function sub_80694FC

.thumb
sub_806958C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x80695a0-0x8069596-2] // off_80695A4
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_80695A0:    .word off_80695A4
off_80695A4:    .word nullsub_71+1
    .word nullsub_72+1
// end of function sub_806958C

.thumb
nullsub_71:
    mov pc, lr
// end of function nullsub_71

.thumb
nullsub_72:
    mov pc, lr
// end of function nullsub_72

.thumb
sub_80695B0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80695c4-0x80695ba-2] // off_80695C8
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_80695C4:    .word off_80695C8
off_80695C8:    .word dword_80695D0  // <endpool>
// end of function sub_80695B0

    .word dword_80695FC
dword_80695D0:    .word 0x5, 0x240000, 0xFFDC0000, 0x0
    .word 0x2, 0x405, 0xD40000, 0xFFCE0000, 0x0
    .word 0x20005, 0xFF
dword_80695FC:    .word 0x5, 0xFFA40000, 0xC0000, 0x0
    .word 0x2, 0x405, 0xF40000, 0xFFFE0000, 0x0
    .word 0x20006, 0xFF, 0x806966C, 0x8069730, 0x8069690, 0x8069823
off_8069638:    .word off_80698D4
    .word dword_8069A24
    .word dword_8069648
    .word dword_8069658
/*For debugging purposes, connect comment at any range!*/
