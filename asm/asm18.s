.include "asm18.inc"

.thumb
sub_8085444:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r4, [r1,#0xf]
    cmp r4, #0xff
    bne loc_8085462
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r0, [r1,#0x3c]
    ldrb r4, [r0,#5]
    cmp r4, #0xff
    bne loc_8085462
    bl sub_8085BF8
    add r4, r0, #0
loc_8085462:
    ldr r0, [pc, #0x8085684-0x8085462-2] // =pt_8085688
    lsl r1, r4, #2
    ldr r0, [r0,r1]
    bl sub_8026188
    ldr r0, [pc, #0x8085478-0x808546c-4] // =dword_200A150
    mov r1, #8
    bl f900_8000904
    pop {pc}
    .balign 4, 0x00
off_8085478:    .word dword_200A150
// end of function sub_8085444

.thumb
sub_808547C:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r4, [r1,#0xf]
    cmp r4, #0xff
    bne loc_808549A
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r0, [r1,#0x3c]
    ldrb r4, [r0,#5]
    cmp r4, #0xff
    bne loc_808549A
    bl sub_8085BF8
    add r4, r0, #0
loc_808549A:
    lsl r1, r4, #4
    ldr r7, [pc, #0x80854d0-0x808549c-4] // =jt_80854D4
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
    ldr r0, [pc, #0x8085684-0x80854b6-2] // =pt_8085688
    lsl r1, r4, #2
    ldr r0, [r0,r1]
    bl sub_80261BA
    lsl r1, r4, #2
    ldr r0, [pc, #0x80854cc-0x80854c2-2] // =pt_8085A9C
    ldr r0, [r0,r1]
    bl sub_80024E0
    pop {r4-r7,pc}
off_80854CC:    .word pt_8085A9C
off_80854D0:    .word jt_80854D4
jt_80854D4:    .word nullsub_88+1  // <endpool>
// end of function sub_808547C

    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F0E+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F44+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word nullsub_87+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EFC+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word nullsub_88+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word nullsub_87+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001EB2+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F68+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F44+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F44+1
    .word 0x300593D, 0x0
    .word nullsub_88+1
    .word sub_8001F44+1
    .word 0x300593D, 0x0
off_8085684:    .word pt_8085688  // midfile <filepool>
pt_8085688:    .word dword_80856F4
    .word dword_8085718
    .word dword_808573C
    .word dword_8085760
    .word dword_8085784
    .word dword_80857A8
    .word dword_80857CC
    .word dword_80857F0
    .word dword_8085814
    .word dword_8085760
    .word dword_8085838
    .word dword_808585C
    .word dword_8085880
    .word dword_80858A4
    .word dword_80858C8
    .word dword_80858EC
    .word dword_8085910
    .word dword_8085934
    .word dword_8085958
    .word dword_808597C
    .word dword_80859A0
    .word dword_80859C4
    .word dword_80859E8
    .word dword_8085A0C
    .word byte_8085A30
    .word byte_8085A54
    .word byte_8085A78
dword_80856F4:    .word 0x860EF60, 0x2012800, 0x6000020, 0x860F3B8, 0x2012E00
    .word 0x3000800, 0x860F1D4, 0x3002A50, 0x20
dword_8085718:    .word 0x860F5DC, 0x2012800, 0x6000020, 0x8610778, 0x2013000
    .word 0x3000800, 0x860FAF4, 0x3002A50, 0x20
dword_808573C:    .word 0x8614CA0, 0x2012800, 0x6000020, 0x8615320, 0x2012E00
    .word 0x3000800, 0x8615034, 0x3002A50, 0x20
dword_8085760:    .word 0x8619ABC, 0x2012800, 0x6000020, 0x861A02C, 0x2012E00
    .word 0x3000800, 0x8619D84, 0x3002A50, 0x20
dword_8085784:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861A59C, 0x3002A50, 0x20
dword_80857A8:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861AB6C, 0x3002A50, 0x20
dword_80857CC:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861AB90, 0x3002A50, 0x20
dword_80857F0:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861ABB4, 0x3002A50, 0x20
dword_8085814:    .word 0x861AFE4, 0x2012800, 0x6000020, 0x861B390, 0x2012C00
    .word 0x3000800, 0x861B24C, 0x3002A50, 0x20
dword_8085838:    .word 0x8612E00, 0x2012800, 0x6000020, 0x86136B8, 0x2013000
    .word 0x3000800, 0x8613234, 0x3002A50, 0x20
dword_808585C:    .word 0x86155C4, 0x2012800, 0x6000020, 0x8615E4C, 0x2012E00
    .word 0x3000800, 0x8615A28, 0x3002A50, 0x20
dword_8085880:    .word 0x86155C4, 0x2012800, 0x6000020, 0x86167D4, 0x2012E00
    .word 0x3000800, 0x86162D0, 0x3002A50, 0x20
dword_80858A4:    .word 0x86155C4, 0x2012800, 0x6000020, 0x861744C, 0x2012E00
    .word 0x3000800, 0x8616C68, 0x3002A50, 0x20
dword_80858C8:    .word 0x8617680, 0x2012800, 0x6000020, 0x8617AB4, 0x2012E00
    .word 0x3000800, 0x8617A90, 0x3002A50, 0x20
dword_80858EC:    .word 0x86155C4, 0x2012800, 0x6000020, 0x8618340, 0x2012E00
    .word 0x3000800, 0x8617F1C, 0x3002A50, 0x20
dword_8085910:    .word 0x86155C4, 0x2012800, 0x6000020, 0x8618F84, 0x2012E00
    .word 0x3000800, 0x86187C0, 0x3002A50, 0x20
dword_8085934:    .word 0x861AFE4, 0x2012800, 0x6000020, 0x861BB20, 0x2012C00
    .word 0x3000800, 0x861B7BC, 0x3002A50, 0x20
dword_8085958:    .word 0x860F5DC, 0x2012800, 0x6000020, 0x86110A4, 0x2013000
    .word 0x3000800, 0x8610CFC, 0x3002A50, 0x20
dword_808597C:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861AF78, 0x3002A50, 0x20
dword_80859A0:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861AF9C, 0x3002A50
    .word 0x20
dword_80859C4:    .word 0x861A250, 0x2012800, 0x6000020, 0x861A920, 0x2012E00
    .word 0x3000800, 0x861AFC0, 0x3002A50, 0x20
dword_80859E8:    .word 0x86191E4, 0x2012800, 0x6000020, 0x8619810, 0x2012E00
    .word 0x3000800, 0x8619748, 0x3002A50, 0x20
dword_8085A0C:    .word 0x8613EB8, 0x2012800, 0x6000020, 0x8614970, 0x2013800
    .word 0x3000800, 0x861450C, 0x3002A50, 0x20
byte_8085A30:    .byte 0x18
    .byte 0xE5
    .hword 0x860
    .word unk_2012800
    .word 0x6000020, 0x860EBB4, 0x2013800, 0x3000800, 0x860EB6C
    .word 0x3002A50, 0x20
byte_8085A54:    .byte 0x18
    .byte 0xE5
    .hword 0x860
    .word unk_2012800
    .word 0x6000020, 0x860EBB4, 0x2013800, 0x3000800, 0x860EED0
    .word 0x3002A50, 0x20
byte_8085A78:    .byte 0x18
    .byte 0xE5
    .hword 0x860
    .word unk_2012800
    .word 0x6000020, 0x860EBB4, 0x2013800, 0x3000800, 0x860EF18
    .word 0x3002A50, 0x20
pt_8085A9C:    .word off_8085B08
    .word off_8085B10
    .word off_8085B24
    .word off_8085B2C
    .word off_8085B38
    .word off_8085B40
    .word off_8085B48
    .word off_8085B50
    .word off_8085B58
    .word off_8085B60
    .word off_8085B70
    .word off_8085B78
    .word off_8085B80
    .word off_8085B88
    .word dword_8085B90
    .word off_8085B94
    .word off_8085B9C
    .word off_8085BA4
    .word off_8085BAC
    .word off_8085BB8
    .word off_8085BC0
    .word off_8085BC8
    .word off_8085BD0
    .word off_8085BD8
    .word off_8085BE0
    .word off_8085BE8
    .word off_8085BF0
off_8085B08:    .word dword_8084A20+0x18
    .word 0xFFFFFFFF
off_8085B10:    .word dword_8084A8C+4
    .word dword_8084A8C+0x54
    .word dword_8084A8C+0xA4
    .word dword_8084B48+0x20
    .word 0xFFFFFFFF
off_8085B24:    .word dword_806E9C0+0x1E4
    .word 0xFFFFFFFF
off_8085B2C:    .word dword_8084B48+0x58
    .word dword_8070ED8+0x12C
    .word 0xFFFFFFFF
off_8085B38:    .word off_8084C28
    .word 0xFFFFFFFF
off_8085B40:    .word dword_8084CA0+0x18
    .word 0xFFFFFFFF
off_8085B48:    .word dword_8084CA0+0xA8
    .word 0xFFFFFFFF
off_8085B50:    .word dword_8084CA0+0x138
    .word 0xFFFFFFFF
off_8085B58:    .word dword_8084CA0+0x1C8
    .word 0xFFFFFFFF
off_8085B60:    .word dword_8084B48+0x58
    .word dword_8070ED8+0x12C
    .word dword_8070ED8+0x2D0
    .word 0xFFFFFFFF
off_8085B70:    .word dword_8084CA0+0x1E8
    .word 0xFFFFFFFF
off_8085B78:    .word dword_8084CA0+0x27C
    .word 0xFFFFFFFF
off_8085B80:    .word dword_8084CA0+0x2E4
    .word 0xFFFFFFFF
off_8085B88:    .word dword_8084CA0+0x334
    .word 0xFFFFFFFF
dword_8085B90:    .word 0xFFFFFFFF
off_8085B94:    .word dword_8084CA0+0x374
    .word 0xFFFFFFFF
off_8085B9C:    .word dword_8084CA0+0x3C4
    .word 0xFFFFFFFF
off_8085BA4:    .word dword_8084CA0+0x414
    .word 0xFFFFFFFF
off_8085BAC:    .word dword_8084CA0+0x454
    .word dword_8084CA0+0x4F4
    .word 0xFFFFFFFF
off_8085BB8:    .word dword_8084CA0+0x544
    .word 0xFFFFFFFF
off_8085BC0:    .word dword_8084CA0+0x5D4
    .word 0xFFFFFFFF
off_8085BC8:    .word dword_8084CA0+0x664
    .word 0xFFFFFFFF
off_8085BD0:    .word dword_806F340+0x718
    .word 0xFFFFFFFF
off_8085BD8:    .word dword_8084CA0+0x6F4
    .word 0xFFFFFFFF
off_8085BE0:    .word dword_8084CA0+0x744
    .word 0xFFFFFFFF
off_8085BE8:    .word dword_8084CA0+0x764
    .word 0xFFFFFFFF
off_8085BF0:    .word dword_8084CA0+0x784
    .word 0xFFFFFFFF
.thumb
sub_8085BF8:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#5]
    cmp r1, #0x80
    blt loc_8085C12
    ldr r2, [pc, #0x8085c18-0x8085c06-2] // =pt_8085C1C
    sub r1, #0x80
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    ldrb r0, [r2,r0]
    pop {r4-r7,pc}
loc_8085C12:
    mov r0, #3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8085C18:    .word pt_8085C1C
pt_8085C1C:    .word dword_8085C70
    .word dword_8085C80
    .word dword_8085C90
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word dword_8085CA0
    .word 0x0
    .word 0x0
    .word 0x0
    .word dword_8085CB0
    .word dword_8085CB0
    .word dword_8085CB0
    .word 0x0
    .word dword_8085CC0
    .word dword_8085CD0
    .word dword_8085CE0
    .word dword_8085CF0
    .word off_8085D00  // <endpool>
// end of function sub_8085BF8

/*For debugging purposes, connect comment at any range!*/
