.include "externs/f500.inc"

// this section declaration is crucial for linking, otherwise it won't overlay
.section .f__f500, "ax"

.equ f500_static_8000734, 0x7000734
.equ loc_8000728, 0x08000728
.equ f500_static_8000596, 0x08000596
.equ f500_static_80005A8, 0x080005A8

.thumb
f500_8000550:
    push {lr}
    bl sub_8111FD4
    pop {pc}
// end of function f500_8000550

.thumb
f500_8000558:
    push {r1-r7,lr}
    bl f500_static_8000596
    pop {r1-r7,pc}
// end of function f500_8000558

.thumb
f500_8000560:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r1, [r7,#0x19]
    cmp r0, r1
    beq locret_800057C
    strb r0, [r7,#0x19]
    cmp r0, #0xff
    bne loc_8000578
    bl f500_static_80005A8
    b locret_800057C
loc_8000578:
    bl f500_static_8000596
locret_800057C:
    pop {r1-r7,pc}
// end of function f500_8000560

.thumb
f500_800057E:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x19]
    cmp r0, #0xff
    bne loc_8000590
    bl f500_static_80005A8
    b locret_8000594
loc_8000590:
    bl f500_static_8000596
locret_8000594:
    pop {r1-r7,pc}
// end of function f500_800057E

.thumb
f500_static_8000596:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000758-0x800059c-4] // =sub_81126B4 // [ERROR >>>>>>>>>>>>>>>>>]
    bl f500_static_8000734
    /*
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_8000596

.thumb
f500_static_80005A8:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800075c-0x80005ae-2] // =sub_81127E8
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_80005A8

.thumb
f500_80005BA:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000648-0x80005be-2] // =off_800064C
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x8000760-0x80005c6-2] // =sub_811365C
    bl f500_static_8000734
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function f500_80005BA

.thumb
f500_80005D2:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000648-0x80005d4-4] // =off_800064C
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r2, r10
    push {r2}
    ldr r3, [pc, #0x8000764-0x80005de-2] // =sub_8112610
    bl f500_static_8000734
    pop {r2}
    mov r10, r2
    pop {r4-r7,pc}
// end of function f500_80005D2

.thumb
f500_80005EA:
    push {r4-r7,lr}
    cmp r0, #0x21
    bgt loc_80005F8
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x19]
    b loc_80005F8
loc_80005F8:
    mov r4, r12
    mov r5, r8
    mov r6, r9
    mov r7, r10
    push {r4-r7}
    ldr r7, [pc, #0x8000648-0x8000602-2] // =off_800064C
    lsl r2, r2, #2
    ldr r7, [r7,r2]
    add r4, r0, #0
    add r5, r1, #0
    ldr r3, [pc, #0x8000768-0x800060c-4] // =sub_81126B4
    bl f500_static_8000734
    add r0, r7, #0
    ldr r3, [pc, #0x800076c-0x8000614-4] // =sub_81128A4
    bl f500_static_8000734
    add r0, r7, #0
    mov r1, #0xff
    mov r2, #0
    ldr r3, [pc, #0x8000770-0x8000620-4] // =sub_811365C
    bl f500_static_8000734
    add r0, r4, #0
    ldr r3, [pc, #0x8000774-0x8000628-4] // =sub_8112780
    bl f500_static_8000734
    add r0, r7, #0
    add r1, r5, #0
    ldr r3, [pc, #0x8000778-0x8000632-2] // =loc_811287C
    bl f500_static_8000734
    pop {r4-r7}
    mov r12, r4
    mov r8, r5
    mov r9, r6
    mov r10, r7
    pop {r4-r7,pc}
    .word unk_2011AA0
off_8000648:    .word off_800064C
off_800064C:    .word unk_20118A0
    .word unk_2011B20
    .word unk_2011B60
    .word unk_2011E30
    .word unk_2011D60
    .word unk_2011760
    .word unk_2011860
    .word unk_2011AE0
    .word unk_2011DF0
    .word unk_2011820
    .word unk_2011BA0
    .word unk_2011E70
    .word unk_2011CE0
    .word unk_2011720
    .word unk_2011A20
    .word unk_2011CA0
    .word unk_20117E0
    .word unk_2011D20
    .word unk_20119E0
    .word unk_20116A0
    .word unk_2011920
    .word unk_20119A0
    .word unk_2011C60
    .word unk_20116E0
    .word unk_2011960
    .word unk_2011BE0
    .word unk_20118E0
    .word unk_2011DB0
    .word unk_2011A60
    .word unk_2011C20
    .word unk_20117A0
    .word unk_2011AA0
// end of function f500_80005EA

.thumb
f500_80006CC:
    push {r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800077c-0x80006d2-2] // =sub_81127E8
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0xff
    strb r0, [r7,#0x19]
    pop {r7,pc}
    .balign 4, 0x00
// end of function f500_80006CC

.thumb
f500_80006E8:
    push {r1-r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000780-0x80006ee-2] // =sub_8112780
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {r1-r7,pc}
// end of function f500_80006E8

.thumb
file500_80006FA:
    push {lr}
    ldr r0, [pc, #0x8000750-0x80006fc-4] // =dword_200A800
    ldr r1, [pc, #0x8000784-0x80006fe-2] // =dword_204
    bl sub_8000930
    pop {pc}
// end of function file500_80006FA

.thumb
f500_8000706:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8000750-0x8000708-4] // =dword_200A800
    ldr r7, [r5]
    cmp r7, #0
    beq loc_8000728
    mov r6, #4
    add r6, r6, r5
loc_8000714:
    ldmia r6!, {r0-r3}
    mov r4, r10
    push {r4}
    ldr r4, [pc, #0x8000721-0x800071a-3] // =0xBC10
    mov lr, r4
    bx r3
loc_8000720:
    pop {r4}
    mov r10, r4
    sub r7, #1
    bne loc_8000714
loc_8000728:
    mov r0, #0
    str r0, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
off_8000730:    .word loc_8000720+1
// end of function f500_8000706

.thumb
f500_static_8000734:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8000750-0x8000736-2] // =dword_200A800
    ldr r7, [r5]
    cmp r7, #0x20
    blt loc_8000740
    b locret_800074C
loc_8000740:
    add r6, r7, #1
    str r6, [r5]
    lsl r7, r7, #4
    add r7, #4
    add r7, r7, r5
    stmia r7!, {r0-r3}
locret_800074C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8000750:    .word dword_200A800
    .word unk_2010BB0
off_8000758:    .word sub_81126B4+1
off_800075C:    .word sub_81127E8+1
off_8000760:    .word sub_811365C+1
off_8000764:    .word sub_8112610+1
off_8000768:    .word sub_81126B4+1
off_800076C:    .word sub_81128A4+1
off_8000770:    .word sub_811365C+1
off_8000774:    .word sub_8112780+1
off_8000778:    .word loc_811287C+1
off_800077C:    .word sub_81127E8+1
off_8000780:    .word sub_8112780+1
off_8000784:    .word dword_204
// end of function f500_static_8000734
*/
