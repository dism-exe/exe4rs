.include "asm17.inc"

.thumb
ho_null_8082728:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x808273c-0x8082732-2] // jt_null_8082740
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_808273C:    .word jt_null_8082740
jt_null_8082740:    .word nullsub_98+1
    .word nullsub_99+1
    .word nullsub_100+1
    .word nullsub_101+1
    .word nullsub_102+1
    .word nullsub_103+1
    .word nullsub_104+1
    .word nullsub_105+1
// end of function ho_null_8082728

.thumb
nullsub_98:
    mov pc, lr
// end of function nullsub_98

.thumb
nullsub_99:
    mov pc, lr
// end of function nullsub_99

.thumb
nullsub_100:
    mov pc, lr
// end of function nullsub_100

.thumb
nullsub_101:
    mov pc, lr
// end of function nullsub_101

.thumb
nullsub_102:
    mov pc, lr
// end of function nullsub_102

.thumb
nullsub_103:
    mov pc, lr
// end of function nullsub_103

.thumb
nullsub_104:
    mov pc, lr
// end of function nullsub_104

.thumb
nullsub_105:
    mov pc, lr
// end of function nullsub_105

.thumb
sub_8082770:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8082784-0x808277a-2] // off_8082788
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_8082784:    .word off_8082788
off_8082788:    .word dword_80827A8  // <endpool>
// end of function sub_8082770

    .word dword_80827C0  // <filepool>
    .word dword_80827D8
    .word dword_8082804
    .word dword_8082880
    .word dword_80828AC
    .word dword_8082928
    .word dword_8082954
/*For debugging purposes, connect comment at any range!*/
