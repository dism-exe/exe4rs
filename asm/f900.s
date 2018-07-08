.thumb
f900_8000904:
    push {r0-r2,lr}
    mov r2, #0
loc_8000908:
    sub r1, #1
    strb r2, [r0,r1]
    bne loc_8000908
    pop {r0-r2,pc}
// end of function f900_8000904

.thumb
.equ var_18, -0x18
.equ anonymous_2, -0x14
.equ anonymous_3, -0x10
.equ anonymous_0, -0xC
.equ anonymous_1, -0x8
f900_8000910:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800092c-0x8000912-2] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800092C:    .word 0x1000000
// end of function f900_8000910

.thumb
.equ var_18, -0x18
.equ anonymous_2, -0x14
.equ anonymous_3, -0x10
.equ anonymous_0, -0xC
.equ anonymous_1, -0x8
f900_8000930:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800094c-0x8000932-2] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800094C:    .word 0x5000000
// end of function f900_8000930

.thumb
.equ var_18, -0x18
.equ None, -0x19
.equ anonymous_0, -0xC
.equ anonymous_1, -0x8
f900_8000950:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800096c-0x8000952-2] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116E8
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800096C:    .word 0x1000000
// end of function f900_8000950

.thumb
f900_8000970:
    sub r2, #1
    ldrb r3, [r0,r2]
    strb r3, [r1,r2]
    bne f900_8000970
    mov pc, lr
// end of function f900_8000970

.thumb
f900_800097A:
    push {r0-r3,lr}
    ldr r3, [pc, #0x8000988-0x800097c-4] // =0x0
    lsr r2, r2, #1
    orr r2, r3
    bl sub_81116EC
    pop {r0-r3,pc}
dword_8000988:    .word 0x0
// end of function f900_800097A

.thumb
f900_800098C:
    push {r0-r3,lr}
    ldr r3, [pc, #0x800099c-0x800098e-2] // LCDControl
    lsr r2, r2, #2
    orr r2, r3
    bl sub_81116EC
    pop {r0-r3,pc}
    .balign 4, 0x00
off_800099C:    .word LCDControl
// end of function f900_800098C

.thumb
f900_80009A0:
    push {r0-r3,lr}
    ldr r3, [pc, #0x80009b0-0x80009a2-2] // =0x0
    lsr r2, r2, #2
    orr r2, r3
    bl sub_81116E8
    pop {r0-r3,pc}
    .byte 0, 0
dword_80009B0:    .word 0x0
// end of function f900_80009A0

.thumb
f900_80009B4:
    sub r1, #1
    strb r2, [r0,r1]
    bne f900_80009B4
    mov pc, lr
// end of function f900_80009B4

.thumb
.equ var_18, -0x18
.equ None, -0x19
.equ anonymous_0, -0xC
.equ anonymous_1, -0x8
f900_80009BC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009d8-0x80009c0-4] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009D8:    .word 0x1000000
// end of function f900_80009BC

.thumb
.equ var_18, -0x18
f900_80009DC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009f8-0x80009e0-4] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116EC
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009F8:    .word 0x5000000
// end of function f900_80009DC

.thumb
.equ var_18, -0x18
f900_80009FC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x8000a18-0x8000a00-4] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp,#0x18+var_18]
    mov r0, sp
    bl sub_81116E8
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_8000A18:    .word 0x1000000
// end of function f900_80009FC

