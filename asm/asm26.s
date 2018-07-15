.include "asm26.inc"

.thumb
dead_80986C4:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0xad
    bl sub_8024FB8
    mov r0, #0
    pop {r4-r7,pc}  // <endpool>
// end of function dead_80986C4

/*For debugging purposes, connect comment at any range!*/
