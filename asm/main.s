.include "main.inc"

.thumb
// main routine here
main_:
    bl main_static_8000456
    bl sub_8001AD8
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x14
    strb r1, [r0]
    bl sub_802D6B8
game_routine:
    bl main_static_800039C
    bl main_static_800036C
    bl f500_8000706
    bl sub_8001EA0
    bl sub_8001CB8
    bl sub_8025BBC
    bl f800_8000800
    bl sub_800256C
    bl sub_8001D6E
    bl sub_80027DC
    bl sub_80029C0
    bl sub_8001B94
    bl main_static_80003B0
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r1, [r0]
    add r1, #1
    strh r1, [r0]
    bl fA00_8000C24
    ldr r0, [pc, #0x8000328-0x80002f2-2] // =jt_mainCallbacks
    mov r7, r10
    ldr r1, [r7]
    ldrb r1, [r1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0  // change CPU modes?
    bl sub_8007BD0
    tst r0, r0
    beq loc_800030C
    bl sub_8005B6E
loc_800030C:
    bl loc_804DFC4
    bl sub_8001E94
    bl sub_80020A0
    ldr r0, [pc, #0x8000324-0x8000318-4] // =loc_30063F8+1
    mov lr, pc
    bx r0
    bl main_static_8000418
    b game_routine
off_8000324:    .word loc_30063F8+1
off_8000328:    .word jt_mainCallbacks
jt_mainCallbacks:    .word ho_cb_8025268+1
    .word ho_8004B70+1
    .word ho_8006AF4+1
    .word loc_80297F0+1
    .word sub_802CFF2+1
    .word loc_802D6D2+1
    .word loc_80489EC+1
    .word loc_802DECC+1
    .word loc_8043238+1
    .word sub_8043864+1
    .word loc_804903C+1
    .word loc_8049CE8+1
    .word loc_804BDFC+1
    .word loc_8044FA8+1
    .word loc_8110000+1
    .word loc_80405E4+1
// end of function main_

.thumb
main_static_800036C:
    push {lr}
loc_800036E:
    ldr r0, [pc, #0x8000398-0x800036e-2] // =GeneralLCDStatus_STAT_LYC_
    mov r2, #1
loc_8000372:
    ldrh r1, [r0]
    tst r1, r2
    beq loc_8000372
    ldr r0, [pc, #0x8000390-0x8000378-4] // =dword_200ACB0
    ldr r2, [r0]
    ldr r1, [pc, #0x8000394-0x800037c-4] // =dword_200A338
    ldr r1, [r1]
    cmp r2, r1
    blt loc_800036E
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
    .word dword_200A4D0
off_8000390:    .word dword_200ACB0
off_8000394:    .word dword_200A338
off_8000398:    .word GeneralLCDStatus_STAT_LYC_
// end of function main_static_800036C

.thumb
main_static_800039C:
    push {lr}
    ldr r0, [pc, #0x80003ac-0x800039e-2] // =GeneralLCDStatus_STAT_LYC_
    mov r2, #1
loc_80003A2:
    ldrh r1, [r0]
    tst r1, r2
    bne loc_80003A2
    pop {pc}
    .balign 4, 0x00
off_80003AC:    .word GeneralLCDStatus_STAT_LYC_
// end of function main_static_800039C

.thumb
main_static_80003B0:
    mov r7, r10
    ldr r0, [r7,#4]
    ldrb r7, [r0,#0x13]
    add r7, #1
    cmp r7, #4
    ble loc_80003BE
    mov r7, #0
loc_80003BE:
    strb r7, [r0,#0x13]
    ldr r4, [pc, #0x8000414-0x80003c0-4] // =KeyStatus
    ldrh r4, [r4]
    mvn r4, r4
    ldrh r5, [r0]
    strh r5, [r0,#6]
    strh r4, [r0]
    add r6, r4, #0
    and r6, r5
    mov r1, #8
    mov r3, #0
loc_80003D4:
    mov r2, #1
    lsl r2, r3
    and r2, r6
    beq loc_80003F4
    ldrb r2, [r0,r1]
    cmp r2, #0x10
    bge loc_80003FA
    add r2, #1
    strb r2, [r0,r1]
    cmp r2, #1
    beq loc_8000402
loc_80003EA:
    mov r2, #1
    lsl r2, r3
    mvn r2, r2
    and r6, r2
    b loc_8000402
loc_80003F4:
    mov r2, #0
    strb r2, [r0,r1]
    b loc_8000402
loc_80003FA:
    ldrb r7, [r0,#0x13]
    cmp r7, #0
    beq loc_8000402
    b loc_80003EA
loc_8000402:
    add r3, #1
    add r1, #1
    cmp r1, #0x12
    blt loc_80003D4
    strh r6, [r0,#4]
    mvn r5, r5
    and r4, r5
    strh r4, [r0,#2]
    mov pc, lr
off_8000414:    .word KeyStatus
// end of function main_static_80003B0

.thumb
main_static_8000418:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq locret_8000454
    mov r7, r10
    ldr r0, [r7,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    ldr r1, [r7]
    add r1, #4
    ldrb r4, [r1]
    sub r4, #1
    cmp r4, #0
    bgt loc_8000452
    mov r4, #0
    mov r3, #0xf
    and r0, r3
    cmp r0, r3
    bne loc_8000452
    and r2, r3
    tst r2, r2
    beq loc_8000452
    push {r1}
    bl start_800025C
    bl main_static_8000456
    pop {r1}
    mov r4, #0xa
loc_8000452:
    strb r4, [r1]
locret_8000454:
    pop {r4-r7,pc}
// end of function main_static_8000418

.thumb
main_static_8000456:
    mov r0, #1
    b loc_800045C
    mov r0, #0
loc_800045C:
    push {r5,lr}
    push {r0}
    bl sub_80060AC
    bl sub_8006108
    .byte 1
    .byte 0xBC
    .byte 0x21 
    .byte 0x49 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0xD0
    .byte 0x20
    .byte 0x49 
    .byte 0x50 
    .byte 0x46 
    .byte 0x80
    .byte 0x68 
    .byte 1
    .byte 0x80
    .byte 1
    .byte 0xF0
    .byte 0x64 
    .byte 0xFC
    .byte 1
    .byte 0xF0
    .byte 0x1C
    .byte 0xFC
    .byte 0
    .byte 0xF0
    .byte 0x3C 
    .byte 0xF8
    .byte 0
    .byte 0xF0
    .byte 0x39 
    .byte 0xF9
    .byte 1
    .byte 0xF0
    .byte 0xF4
    .byte 0xFC
    .byte 2
    .byte 0xF0
    .byte 0xCF
    .byte 0xF8
    .byte 3
    .byte 0xF0
    .byte 0xD1
    .byte 0xF9
    .byte 1
    .byte 0xF0
    .byte 0x70 
    .byte 0xFB
    .byte 2
    .byte 0xF0
    .byte 0x7E 
    .byte 0xF9
    .byte 0x24 
    .byte 0xF0
    .byte 0xDE
    .byte 0xFE
    .byte 0x25 
    .byte 0xF0
    .byte 0x5E 
    .byte 0xFB
    .byte 0
    .byte 0xF0
    .byte 0xA8
    .byte 0xF9
    .byte 0x4D 
    .byte 0xF0
    .byte 0x4E 
    .byte 0xFD
    .byte 0x25 
    .byte 0xF0
    .byte 0x16
    .byte 0xFC
    .byte 4
    .byte 0xF0
    .byte 0x6A 
    .byte 0xFA
    .byte 4
    .byte 0xF0
    .byte 0x28 
    .byte 0xFA
    .byte 0x2B 
    .byte 0xF0
    .byte 0xF4
    .byte 0xFB
    .byte 0x2B 
    .byte 0xF0
    .byte 0x10
    .byte 0xFC
    .byte 1
    .byte 0xF0
    .byte 0xA2
    .byte 0xFD
    .byte 2
    .byte 0xF0
    .byte 0x16
    .byte 0xF8
    .byte 1
    .byte 0xF0
    .byte 0x4A 
    .byte 0xFC
    .byte 5
    .byte 0xF0
    .byte 0x40 
    .byte 0xFB
    .byte 5
    .byte 0xF0
    .byte 0xE4
    .byte 0xFD
    .byte 0x47 
    .byte 0xF0
    .byte 0x62 
    .byte 0xFE
    .byte 0x10
    .byte 0xF1
    .byte 0x8C
    .byte 0xFB
    .byte 6
    .byte 0x48 
    .byte 1
    .byte 0x21 
    .byte 1
    .byte 0x80
    .byte 0x50 
    .byte 0x46 
    .byte 0
    .byte 0x68 
    .byte 8
    .byte 0x21 
    .byte 0
    .byte 0xF0
    .byte 0x22 
    .byte 0xFA
    .byte 0x20
    .byte 0xBD
    .byte 0, 0
    .word 0x40
    .word 0xC0
    .word dword_200A338
// end of function main_static_8000456

.thumb
main_static_80004FC:
    push {lr}
    bl sub_8112630
    ldr r0, [pc, #0x8000528-0x8000502-2] // =0x93040D
    bl sub_8112BCC
    mov r0, #0x10
    ldr r1, [pc, #0x8000534-0x800050a-2] // =0x30059C4
    bl start_8000284
    ldr r0, [pc, #0x800052c-0x8000510-4] // =GeneralLCDStatus_STAT_LYC_
    ldrh r1, [r0]
    mov r2, #0xff
    and r1, r2
    mov r2, #0x20 
    orr r1, r2
    mov r2, #0x50 
    lsl r2, r2, #8
    orr r1, r2
    strh r1, [r0]
    pop {pc}
    .balign 4, 0x00
dword_8000528:    .word 0x93040D
off_800052C:    .word GeneralLCDStatus_STAT_LYC_
    .word dword_3002000
dword_8000534:    .word 0x30059C5
// end of function main_static_80004FC

.thumb
sub_8000538:
    push {lr}
    bl sub_81126A8
    pop {pc}
    .word unk_2007400
    .word dword_8000548
dword_8000548:    .word 0x4425121C, 0x0
// end of function sub_8000538

/*For debugging purposes, connect comment at any range!*/
