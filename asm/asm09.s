.include "asm09.inc"

.thumb
ho_806D928:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x806d93c-0x806d932-2] // =jt_806D940
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806D93C:    .word jt_806D940
jt_806D940:    .word nullsub_73+1
    .word nullsub_74+1
    .word nullsub_75+1
    .word nullsub_76+1
    .word nullsub_77+1
// end of function ho_806D928

.thumb
nullsub_73:
    mov pc, lr
// end of function nullsub_73

.thumb
nullsub_74:
    mov pc, lr
// end of function nullsub_74

.thumb
nullsub_75:
    mov pc, lr
// end of function nullsub_75

.thumb
nullsub_76:
    mov pc, lr
// end of function nullsub_76

.thumb
nullsub_77:
    mov pc, lr
// end of function nullsub_77

.thumb
sub_806D95E:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x806d974-0x806d968-4] // =off_806D978
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
    .balign 4, 0x00
off_806D974:    .word off_806D978
off_806D978:    .word dword_806D98C  // <endpool>
// end of function sub_806D95E

    .word dword_806D9A4  // <filepool>
    .word dword_806D9D0
    .word dword_806D9FC
    .word dword_806DA28
dword_806D98C:    .word 0x605, 0x1040000, 0x7E0000, 0xFFFC0000, 0x1F, 0xFF
dword_806D9A4:    .word 0x5, 0xFE620000, 0x1C0000, 0x80000, 0x2B, 0x605, 0xFFF40000
    .word 0x100000, 0xFFFC0000, 0x20, 0xFF
dword_806D9D0:    .word 0x5, 0xFE6A0000, 0x440000, 0x80000, 0x2B, 0x605, 0x17C0000
    .word 0x380000, 0xFFFC0000, 0x21, 0xFF
dword_806D9FC:    .word 0x5, 0xFE300000, 0xFFEC0000, 0x80000, 0x2B, 0x5, 0x2040000
    .word 0xFFC00000, 0xFFFC0000, 0x49, 0xFF
dword_806DA28:    .word 0x1C05, 0xFE6E0000, 0x4C0000, 0x80000, 0x0
    .word 0xFF, 0x806DAE8, 0x806DB30, 0x806DB44, 0x806DB58, 0x806DC1C
    .word 0x806DAF2, 0x806DB3A, 0x806DB4E, 0x806DBA3, 0x806DCBA
off_806DA68:    .word dword_806DD18
    .word dword_806DE74
    .word dword_806DFC8
    .word dword_806E11C
    .word dword_806E3C0
    .word dword_806DA90
    .word dword_806DAA0
    .word dword_806DAB0
    .word dword_806DAC0
    .word dword_806DAD0
dword_806DA90:    .word 0xFF020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806DAA0:    .word 0x3020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806DAB0:    .word 0x3020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806DAC0:    .word 0x3020100, 0xFFFFFF04, 0xFFFFFFFF, 0xFFFFFFFF
/*For debugging purposes, connect comment at any range!*/
