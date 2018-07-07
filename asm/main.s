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
    bl loc_8001EA0
    bl sub_8001CB8
    bl sub_8025BBC
    bl f800_8000800
    bl loc_800256C
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
    bl sub_8000C24
    ldr r0, [pc, #0x8000328-0x80002f2-2] // off_800032C
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
    bl loc_8001E94
    bl loc_80020A0
    ldr r0, [pc, #0x8000324-0x8000318-4] // loc_30063F8+1
    mov lr, pc
    bx r0
    bl main_static_8000418
    b game_routine
off_8000324:    .word loc_30063F8+1
off_8000328:    .word off_800032C
off_800032C:    .word loc_8025268+1
    .word loc_8004B70+1
    .word loc_8006AF4+1
    .word loc_80297F0+1
    .word loc_802CFF2+1
    .word loc_802D6D2+1
    .word loc_80489EC+1
    .word loc_802DECC+1
    .word loc_8043238+1
    .word loc_8043864+1
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
    ldr r0, [pc, #0x8000398-0x800036e-2] // generallcdstatus_stat_lyc_
    mov r2, #1
loc_8000372:
    ldrh r1, [r0]
    tst r1, r2
    beq loc_8000372
    ldr r0, [pc, #0x8000390-0x8000378-4] // dword_200ACB0
    ldr r2, [r0]
    ldr r1, [pc, #0x8000394-0x800037c-4] // dword_200A338
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
    ldr r0, [pc, #0x80003ac-0x800039e-2] // generallcdstatus_stat_lyc_
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
    ldr r4, [pc, #0x8000414-0x80003c0-4] // KeyStatus
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
    pop {r0}
    ldr r1, [pc, #0x80004f0-0x800046a-2] // word_40
    tst r0, r0
    beq loc_8000472
    ldr r1, [pc, #0x80004f4-0x8000470-4] // byte_C0
loc_8000472:
    mov r0, r10
    ldr r0, [r0,#8]
    strh r1, [r0]
    bl sub_8001D44
    bl sub_8001CB8
    bl main_static_80004FC
    bl f500_80006FA
    bl sub_8001E74
    bl sub_800262E
    bl sub_8003836
    bl sub_8001B78
    bl sub_8002798
    bl sub_802525C
    bl sub_8025B60
    bl f800_80007F8
    bl sub_804DF48
    bl sub_8025CDC
    bl sub_8004988
    bl sub_8004908
    bl sub_802BCA4
    bl sub_802BCE0
    bl sub_8002008
    bl sub_80024F4
    bl sub_8001D60
    bl sub_8005B50
    bl sub_800609C
    bl sub_804819C
    bl sub_8110BF4
    ldr r0, [pc, #0x80004f8-0x80004dc-4] // dword_200A338
    mov r1, #1
    strh r1, [r0]
    mov r0, r10
    ldr r0, [r0]
    mov r1, #8
    bl f900_8000930
    pop {r5,pc}
    .byte 0, 0
off_80004F0:    .word word_40
off_80004F4:    .word byte_C0
off_80004F8:    .word dword_200A338
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
    ldr r0, [pc, #0x800052c-0x8000510-4] // generallcdstatus_stat_lyc_
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

    push {lr}
    bl sub_81126A8
    pop {pc}
    .word unk_2007400
    .word dword_8000548
dword_8000548:    .word 0x4425121C, 0x0
