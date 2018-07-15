.include "asm19.inc"

.thumb
sub_8086488:
    push {r4-r7,lr}
    mov r4, #1
    ldrb r0, [r5,#7]
    sub r0, #2
    bge loc_8086496
    mov r0, #0
    mov r4, #0
loc_8086496:
    strb r0, [r5,#7]
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002CC6
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}  // <endpool>
// end of function sub_8086488

/*For debugging purposes, connect comment at any range!*/
