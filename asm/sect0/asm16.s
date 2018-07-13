.include "sect0/asm16.inc"

.thumb
sub_807FD00:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x807fd14-0x807fd0a-2] // off_807FD18
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_807FD14:    .word off_807FD18
off_807FD18:    .word nullsub_83+1
    .word nullsub_84+1
    .word nullsub_85+1
    .word nullsub_86+1
// end of function sub_807FD00

.thumb
nullsub_83:
    mov pc, lr
// end of function nullsub_83

.thumb
nullsub_84:
    mov pc, lr
// end of function nullsub_84

.thumb
nullsub_85:
    mov pc, lr
// end of function nullsub_85

.thumb
nullsub_86:
    mov pc, lr
// end of function nullsub_86

.thumb
sub_807FD30:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x807fd44-0x807fd3a-2] // off_807FD48
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_807FD44:    .word off_807FD48
off_807FD48:    .word dword_807FD58  // <endpool>
// end of function sub_807FD30

    .word dword_807FE88  // <filepool>
    .word dword_807FEC8
    .word dword_807FF30
/*For debugging purposes, connect comment at any range!*/
