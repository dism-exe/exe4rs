// forward references
.equ ho_null_807990C, 0x0807990C
.equ off_8079920, 0x08079920
.equ jt_null_8079924, 0x08079924
.equ nullsub_79, 0x08079934
.equ nullsub_80, 0x08079936
.equ nullsub_81, 0x08079938
.equ nullsub_82, 0x0807993A
.equ sub_807993C, 0x0807993C
.equ off_8079950, 0x08079950
.equ off_8079954, 0x08079954

.thumb
ho_null_807990C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x8079920-0x8079916-2] // jt_null_8079924
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8079920:    .word jt_null_8079924
jt_null_8079924:    .word nullsub_79+1
    .word nullsub_80+1
    .word nullsub_81+1
    .word nullsub_82+1
// end of function ho_null_807990C

.thumb
nullsub_79:
    mov pc, lr
// end of function nullsub_79

.thumb
nullsub_80:
    mov pc, lr
// end of function nullsub_80

.thumb
nullsub_81:
    mov pc, lr
// end of function nullsub_81

.thumb
nullsub_82:
    mov pc, lr
// end of function nullsub_82

.thumb
sub_807993C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8079950-0x8079946-2] // off_8079954
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_8079950:    .word off_8079954
off_8079954:    .word dword_8079964  // <endpool>
// end of function sub_807993C

    .word dword_8079A58  // <filepool>
    .word dword_8079A98
    .word dword_8079BF0
/*For debugging purposes, connect comment at any range!*/
