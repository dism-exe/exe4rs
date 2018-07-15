.include "sect0/asm23.inc"

.thumb
sub_8091404:
    push {r4-r7,lr}
    ldrb r4, [r5,#5]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#0x20]
    sub r0, r0, r4
    bgt loc_8091414
    mov r0, #1
loc_8091414:
    strh r0, [r1,#0x20]
    mov r0, #0x6b 
    bl f500_8000558
    mov r0, #0
    pop {r4-r7,pc}  // <endpool>
// end of function sub_8091404

/*For debugging purposes, connect comment at any range!*/
