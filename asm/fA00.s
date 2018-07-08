.thumb
fA00_dead_8000A1C:
    ldr r0, [pc, #0x8000a28-0x8000a1c-4] // verticalcounter_ly_
    ldrh r0, [r0]
    ldr r1, [pc, #0x8000a2c-0x8000a20-4] // dword_200A4D0
    ldr r1, [r1]
    add r0, r0, r1
    mov pc, lr
off_8000A28:    .word VerticalCounter_LY_
off_8000A2C:    .word dword_200A4D0
// end of function fA00_dead_8000A1C

.thumb
fA00_8000A30:
    push {r4,r7,lr}
    ldr r1, [pc, #0x8000a84-0x8000a32-2] // =0x5F5E0FF
    cmp r0, r1
    bmi loc_8000A3C
    ldr r0, [pc, #0x8000a88-0x8000a38-4] // =0x99999999
    b locret_8000A5C
loc_8000A3C:
    ldr r7, [pc, #0x8000a60-0x8000a3c-4] // dword_8000A64
    mov r2, #0
    mov r3, #8
loc_8000A42:
    lsl r2, r2, #4
    ldr r1, [r7]
    mov r4, #0
loc_8000A48:
    cmp r0, r1
    bmi loc_8000A52
    sub r0, r0, r1
    add r4, #1
    b loc_8000A48
loc_8000A52:
    orr r2, r4
    add r7, #4
    sub r3, #1
    bne loc_8000A42
    add r0, r2, #0
locret_8000A5C:
    pop {r4,r7,pc}
    .byte 0, 0
off_8000A60:    .word dword_8000A64
dword_8000A64:    .word 0x989680
    .word 0xF4240, 0x186A0, 0x2710, 0x3E8, 0x64, 0xA, 0x1
dword_8000A84:    .word 0x5F5E0FF
dword_8000A88:    .word 0x99999999
// end of function fA00_8000A30

.thumb
fA00_8000A8C:
    mov r1, #1
    tst r0, r0
    beq loc_8000A9E
    mov r1, #0
loc_8000A94:
    tst r0, r0
    beq loc_8000A9E
    add r1, #1
    lsr r0, r0, #4
    b loc_8000A94
loc_8000A9E:
    add r0, r1, #0
    mov pc, lr
// end of function fA00_8000A8C

.thumb
fA00_8000AA2:
    push {r4-r6,lr}
loc_8000AA4:
    push {r0,r2}
    push {r1}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000AA4
    pop {r4-r6,pc}
// end of function fA00_8000AA2

.thumb
fA00_dead_8000AD6:
    push {r4-r6,lr}
loc_8000AD8:
    push {r0,r2}
    push {r1}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000AD8
    pop {r4-r6,pc}
// end of function fA00_dead_8000AD6

.thumb
fA00_8000B0A:
    push {r4-r6,lr}
loc_8000B0C:
    push {r0,r2}
    push {r1}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001AF6
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000B0C
    pop {r4-r6,pc}
// end of function fA00_8000B0A

.thumb
fA00_8000B42:
    push {r4-r6,lr}
loc_8000B44:
    push {r0,r2}
    push {r1}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001B26
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000B44
    pop {r4-r6,pc}
// end of function fA00_8000B42

.thumb
fA00_dead_8000B7A:
    push {r7,lr}
    add r7, r0, #0
    push {r1,r7}
    bl sub_8001AF6
    pop {r1,r7}
    bl sub_81116F0
    ldrb r0, [r7,r1]
    pop {r7,pc}
// end of function fA00_dead_8000B7A

.thumb
fA00_dead_8000B8E:
    push {r4,r6,lr}
    cmp r1, #2
    bmi locret_8000BB2
    mov r3, #1
loc_8000B96:
    ldrb r2, [r0,r3]
    mov r4, #0
loc_8000B9A:
    ldrb r6, [r0,r4]
    cmp r2, r6
    bhi loc_8000BA4
    strb r2, [r0,r4]
    add r2, r6, #0
loc_8000BA4:
    add r4, #1
    cmp r4, r3
    bmi loc_8000B9A
    strb r2, [r0,r3]
    add r3, #1
    cmp r3, r1
    bmi loc_8000B96
locret_8000BB2:
    pop {r4,r6,pc}
// end of function fA00_dead_8000B8E

.thumb
fA00_8000BB4:
    push {r4,r7,lr}
    ldr r1, [pc, #0x8000c18-0x8000bb6-2] // =0x1499700
    cmp r0, r1
    bmi loc_8000BC0
    ldr r0, [pc, #0x8000c1c-0x8000bbc-4] // =0x99595999
    pop {pc}
loc_8000BC0:
    ldr r7, [pc, #0x8000bf4-0x8000bc0-4] // dword_8000BF8
    mov r2, #0
    mov r3, #6
loc_8000BC6:
    lsl r2, r2, #4
    ldr r1, [r7]
    mov r4, #0
loc_8000BCC:
    cmp r0, r1
    bmi loc_8000BD6
    sub r0, r0, r1
    add r4, #1
    b loc_8000BCC
loc_8000BD6:
    orr r2, r4
    add r7, #4
    sub r3, #1
    bne loc_8000BC6
    lsl r2, r2, #8
    push {r2}
    ldr r1, [pc, #0x8000c20-0x8000be2-2] // =0x1AAAA
    mul r0, r1
    lsr r0, r0, #0x10
    bl fA00_8000A30
    pop {r2}
    orr r0, r2
    pop {r4,r7,pc}
    .balign 4, 0x00
off_8000BF4:    .word dword_8000BF8
dword_8000BF8:    .word 0x20F580
    .word 0x34BC0, 0x8CA0, 0xE10, 0x258, 0x3C, 0xA, 0x1
dword_8000C18:    .word 0x1499700
dword_8000C1C:    .word 0x99595999
dword_8000C20:    .word 0x1AAAA
// end of function fA00_8000BB4

.thumb
fA00_8000C24:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldr r0, [r3,#0x2c]
    add r0, #1
    ldr r1, [pc, #0x8000c38-0x8000c2c-4] // =0x14988F0
    cmp r0, r1
    ble loc_8000C34
    add r0, r1, #0
loc_8000C34:
    str r0, [r3,#0x2c]
    mov pc, lr
dword_8000C38:    .word 0x14988F0
// end of function fA00_8000C24

.thumb
fA00_8000C3C:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    mov pc, lr
// end of function fA00_8000C3C

.thumb
fA00_8000C44:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    cmp r0, #2
    blt locret_8000C50
    mov r0, #2
locret_8000C50:
    mov pc, lr
// end of function fA00_8000C44

.thumb
fA00_8000C52:
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r0, [r3,#0xd]
    cmp r0, #0x62 
    bge locret_8000C60
    add r0, #1
    strb r0, [r3,#0xd]
locret_8000C60:
    mov pc, lr
// end of function fA00_8000C52

.thumb
.equ var_10, -0x10
.equ var_C, -0xC
fA00_8000C62:
    push {r4,lr}
    sub sp, sp, #8
    ldr r1, [pc, #0x8000c8c-0x8000c66-2] // =0x34BC0
    bl sub_81116F0
    str r0, [sp,#0x10+var_10]
    add r0, r1, #0
    ldr r1, [pc, #0x8000c90-0x8000c70-4] // =0xE10
    bl sub_81116F0
    str r0, [sp,#0x10+var_C]
    add r0, r1, #0
    ldr r1, [pc, #0x8000c94-0x8000c7a-2] // =0x3C
    bl sub_81116F0
    add r3, r0, #0
    add r4, r1, #0
    ldr r1, [sp,#0x10+var_10]
    ldr r2, [sp,#0x10+var_C]
    add sp, sp, #8
    pop {r4,pc}
dword_8000C8C:    .word 0x34BC0
off_8000C90:    .word 0xE10
off_8000C94:    .word 0x3C
// end of function fA00_8000C62

