.include "asm30.inc"

.thumb
sub_8102E9C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8102eb0-0x8102ea2-2] // off_8102EB4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8102EB0:    .word off_8102EB4
off_8102EB4:    .word sub_8102EC0+1
    .word sub_81032F8+1
    .word sub_810334C+1
// end of function sub_8102E9C

.thumb
sub_8102EC0:
    push {lr}
    ldr r1, [pc, #0x8102fd0-0x8102ec2-2] // dword_8103230
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8102fd4-0x8102ece-2] // =0x8103234
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldr r1, [pc, #0x8102fd8-0x8102ede-2] // =0x8103240
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8102f4c-0x8102ee8-4] // dword_8102F54
    ldrb r0, [r1,r0]
    strb r0, [r7,#4]
    mov r1, #0x23 
    strb r1, [r5]
    mov r2, #3
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x8102fe8-0x8102ef6-2] // byte_200D908
    ldrb r1, [r1,#0x2] // (byte_200D90A - 0x200d908)
    tst r1, r1
    beq loc_8102F06
    tst r0, r0
    beq loc_8102F0E
    sub r0, #1
    mov r2, #4
loc_8102F06:
    cmp r0, r2
    bgt loc_8102F0E
    bl sub_8103874
loc_8102F0E:
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #3
    bl sub_8002E60
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r0, [pc, #0x8102fc4-0x8102f1c-4] // =0xFF
    ldr r1, [pc, #0x8102fcc-0x8102f1e-2] // dword_8103178
    ldrh r1, [r1,r2]
    add r0, r0, r1
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8102f50-0x8102f26-2] // =0x8102F60
    ldrb r1, [r5,#4]
    ldrb r0, [r0,r1]
    strb r0, [r7,#0xa]
    lsl r2, r2, #1
    strb r2, [r5,#9]
    ldr r6, [pc, #0x8102fe8-0x8102f32-2] // byte_200D908
    ldrb r0, [r6,#0x2] // (byte_200D90A - 0x200d908)
    tst r0, r0
    beq loc_8102F40
    bl sub_8102F9C
    b loc_8102F44
loc_8102F40:
    bl sub_8102F74
loc_8102F44:
    bl sub_81032F8
    pop {pc}
    .balign 4, 0x00
off_8102F4C:    .word dword_8102F54
dword_8102F50:    .word 0x8102F63
dword_8102F54:    .word 0x0, 0x0, 0x0
    .word 0x1000000, 0x1010101, 0x1010201, 0x1010101, 0x201
// end of function sub_8102EC0

.thumb
sub_8102F74:
    push {lr}
    ldr r4, [pc, #0x8102fc8-0x8102f76-2] // dword_8103178
    ldrsh r0, [r4,r2]
    cmp r2, #0x10
    ble loc_8102F92
    ldr r6, [pc, #0x8102fe8-0x8102f7e-2] // byte_200D908
    ldrb r2, [r6,#0x6] // (byte_200D90E - 0x200d908)
    strb r2, [r5,#0xb]
    str r2, [r5,#0x14]
    strb r2, [r5,#7]
    lsl r2, r2, #2
    ldrb r6, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldr r4, [pc, #0x8102fdc-0x8102f8c-4] // dword_8102FE0
    ldr r4, [r4,r6]
    ldrsh r0, [r4,r2]
loc_8102F92:
    strh r0, [r7,#0xc]
    add r2, #2
    ldrsh r0, [r4,r2]
    strh r0, [r7,#0xe]
    pop {pc}
// end of function sub_8102F74

.thumb
sub_8102F9C:
    push {lr}
    ldr r4, [pc, #0x8102fc8-0x8102f9e-2] // dword_8103178
    ldrsh r0, [r4,r2]
    cmp r2, #0x30 
    ble loc_8102FBA
    ldr r6, [pc, #0x8102fe8-0x8102fa6-2] // byte_200D908
    ldrb r2, [r6,#0x6] // (byte_200D90E - 0x200d908)
    strb r2, [r5,#0xb]
    str r2, [r5,#0x14]
    strb r2, [r5,#7]
    lsl r2, r2, #2
    ldrb r6, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldr r4, [pc, #0x8102fdc-0x8102fb4-4] // dword_8102FE0
    ldr r4, [r4,r6]
    ldrsh r0, [r4,r2]
loc_8102FBA:
    strh r0, [r7,#0xc]
    add r2, #2
    ldrsh r0, [r4,r2]
    strh r0, [r7,#0xe]
    pop {pc}
off_8102FC4:    .word 0x100
dword_8102FC8:    .word 0x81031B2
dword_8102FCC:    .word 0x8103212
off_8102FD0:    .word dword_8103230
dword_8102FD4:    .word 0x810323F
dword_8102FD8:    .word 0x810324E
off_8102FDC:    .word dword_8102FE0
dword_8102FE0:    .word 0x81031E6, 0x81031FA
off_8102FE8:    .word byte_200D908
off_8102FEC:    .word dword_8103024
    .word dword_8103034
    .word dword_8103044
    .word dword_8103054
    .word off_8103064
off_8103000:    .word dword_8103074
    .word dword_8103084
    .word dword_8103094
    .word dword_81030A4
    .word dword_81030A4
    .word dword_81030A4
    .word dword_81030A4
    .word dword_81030B4
    .word dword_81030C4
dword_8103024:    .word 0x5000000, 0xFFD00000, 0xFF960000, 0x0
dword_8103034:    .word 0x3000001, 0x960000, 0xDC0000, 0x0
dword_8103044:    .word 0x3000002, 0xFF2C0000, 0x140000, 0x0
dword_8103054:    .word 0x3000003, 0xFF8E0000, 0xFF820000, 0x100000
off_8103064:    .word Timer0Counter_Reload
    .word 0x0, 0x0, 0x0
dword_8103074:    .word 0x5000000, 0xFFD00000, 0xFF960000, 0x0
dword_8103084:    .word 0x3000004, 0xFFDC0000, 0xD00000, 0x0
dword_8103094:    .word 0x3000504, 0xFF280000, 0xFF760000, 0x0
dword_81030A4:    .word 0x3000704, 0xFF1C0000, 0x640000, 0x0
dword_81030B4:    .word 0x1000804, 0xFE9A0000, 0x360000, 0x0
dword_81030C4:    .word 0x5000205, 0x80000, 0xC40000, 0x0
off_81030D4:    .word dword_8103100
    .word dword_8103104
    .word dword_810310C
    .word dword_8103118
    .word dword_8103128
off_81030E8:    .word dword_810313C
    .word dword_8103140
    .word dword_8103148
    .word dword_8103154
    .word dword_8103164
    .word dword_8103178
dword_8103100:    .word 0x8103271
dword_8103104:    .word 0x8103275, 0x8103279
dword_810310C:    .word 0x810327D, 0x8103281, 0x8103285
dword_8103118:    .word 0x810325D, 0x810328D, 0x8103291, 0x8103295
dword_8103128:    .word 0x810325D, 0x8103261, 0x8103265, 0x8103269, 0x810326D
dword_810313C:    .word 0x8103299
dword_8103140:    .word 0x810329D, 0x81032A1
dword_8103148:    .word 0x81032A5, 0x81032A9, 0x81032AD
dword_8103154:    .word 0x81032B1, 0x81032B5, 0x81032B9, 0x81032BD
dword_8103164:    .word 0x81032C1, 0x81032C5, 0x81032C9, 0x81032CD, 0x81032D1
dword_8103178:    .word 0x81032D5, 0x81032D9, 0x81032DD, 0x81032E1, 0x81032E5
    .word 0x81032E9, 0x1010100, 0x1030102, 0x104FFFF, 0x1060105
    .word 0x1080107, 0x103FFFF, 0x1050104, 0x1070106, 0x1C0108
    .word 0x180020, 0xDC0044, 0xD80036, 0xBB004C, 0xC8001F
    .word 0xBC0024, 0x7E001A, 0xB40048, 0x44002C, 0x290044
    .word 0x680042, 0xD40024, 0xDB0044, 0x25001F, 0x2B0023
    .word 0xC50042, 0xCC0042, 0x82005B, 0xAB0044, 0x48001D
    .word 0x2D0036, 0x5B0053, 0xDB0013, 0x35, 0x400020
    .word 0x800060, 0xC000A0, 0x200000, 0x600040, 0xA00080
    .word 0xE000C0
dword_8103230:    .word 0x0
    .word 0x10000, 0x0, 0x0
    .word 0x4030201, 0x60A040C, 0x7050908, 0xA0900B0C, 0x60D0C0B0
    .word 0xA0907000, 0x60D0C0B0, 0x103FF00, 0xFF02FFFF, 0xFFFF0100
    .word 0x2040003, 0x2FF03FF, 0xFFFFFFFF, 0x1FFFFFF, 0xFFFFFFFF
    .word 0x1FFFF00, 0xFF02FFFF, 0xFFFF0100, 0x103FF00, 0xFF02FFFF
    .word 0xFFFF0100, 0x2FF0003, 0xFFFFFFFF, 0xFFFF01FF, 0xFF00FFFF
    .word 0x2FF01FF, 0x200FFFF, 0xFFFF01FF, 0xFF030100, 0x200FFFF
    .word 0xFF03FFFF, 0xFFFF0200, 0x2030100, 0x400FFFF, 0xFF0304FF
    .word 0xFFFF0200, 0x202FF00, 0x2030101, 0x400FF05, 0x3030405
    .word 0xFFFF0200, 0x202FF02, 0xFF0101, 0x20100FF, 0x1060403
    .word 0x8070302
// end of function sub_8102F9C

.thumb
sub_81032F8:
    push {lr}
    ldr r0, [pc, #0x810330c-0x81032fa-2] // off_8103310
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810330C:    .word off_8103310
off_8103310:    .word sub_8103854+1
    .word sub_8103858+1
    .word sub_810385C+1
    .word sub_8103860+1
    .word sub_8103864+1
    .word sub_8103894+1
    .word sub_8103354+1
    .word sub_8103870+1
    .word sub_8103870+1
    .word sub_8103870+1
    .word sub_8103870+1
    .word sub_8103870+1
    .word sub_8103870+1
    .word sub_8103894+1
    .word sub_8103354+1
// end of function sub_81032F8

.thumb
sub_810334C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810334C

.thumb
sub_8103354:
    push {lr}
    ldr r0, [pc, #0x8103364-0x8103356-2] // off_8103368
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8103364:    .word off_8103368
off_8103368:    .word sub_8103374+1
    .word sub_81033C8+1
    .word sub_8103834+1
// end of function sub_8103354

.thumb
sub_8103374:
    push {lr}
    ldr r6, [pc, #0x8103504-0x8103376-2] // byte_200D908
    ldrb r7, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldr r1, [pc, #0x8103504-0x810337a-2] // byte_200D908
    ldrb r0, [r1,#0x5] // (byte_200D90D - 0x200d908)
    cmp r0, #0x80
    beq locret_81033C4
    ldrb r2, [r1,#0x6] // (byte_200D90E - 0x200d908)
    cmp r0, r2
    beq locret_81033C4
    mov r0, #4
    strb r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r5,#0xb]
    add r4, r5, #0
    add r4, #0x20 
    ldr r0, [pc, #0x8103514-0x8103394-4] // =0x10000
    str r0, [r5,#0xc]
    ldrh r0, [r4,#0xc]
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    ldrh r0, [r4,#0xe]
    lsl r0, r0, #0x10
    str r0, [r5,#0x18]
    mov r0, #0xff
    strb r0, [r5,#0x1e]
    ldr r1, [pc, #0x8103504-0x81033a8-4] // byte_200D908
    ldrb r0, [r1,#0x6] // (byte_200D90E - 0x200d908)
    lsl r0, r0, #2
    ldr r3, [pc, #0x8103518-0x81033ae-2] // off_810351C
    ldr r3, [r3,r7]
    ldr r3, [r3,r0]
    ldr r3, [r3]
    ldrb r0, [r1,#0x5] // (byte_200D90D - 0x200d908)
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldrb r2, [r5,#0xb]
    add r2, #1
    bl sub_81034B8
locret_81033C4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8103374

.thumb
sub_81033C8:
    push {lr}
    ldr r6, [pc, #0x8103504-0x81033ca-2] // byte_200D908
    ldrb r7, [r6,#2]
    ldr r1, [pc, #0x8103504-0x81033ce-2] // byte_200D908
    ldrb r0, [r1,#6]
    lsl r0, r0, #2
    ldr r3, [pc, #0x8103518-0x81033d4-4] // off_810351C
    ldr r3, [r3,r7]
    ldr r3, [r3,r0]
    ldr r3, [r3]
    ldrb r0, [r1,#5]
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldrb r1, [r5,#0xb]
    add r1, #1
    ldrb r1, [r3,r1]
    add r7, r5, #0
    add r7, #0x20 
    ldrh r2, [r7,#0xc]
    ldrh r3, [r7,#0xe]
    ldr r6, [pc, #0x8103504-0x81033f0-4] // byte_200D908
    ldrb r7, [r6,#2]
    ldr r4, [pc, #0x81037c4-0x81033f4-4] // off_81037C8
    ldr r4, [r4,r7]
    lsl r1, r1, #2
    add r4, r4, r1
    ldrh r0, [r4]
    ldrh r1, [r4,#2]
    sub r4, r0, r2
    sub r6, r1, r3
    add r0, r6, #0
    add r1, r0, #0
    mul r0, r1
    add r2, r4, #0
    add r1, r2, #0
    mul r2, r1
    add r0, r0, r2
    bl dword_8111704
    mov r8, r0
    tst r0, r0
    beq loc_8103450
    add r7, r5, #0
    add r7, #0x20 
    ldr r1, [r5,#0xc]
    add r0, r4, #0
    mul r0, r1
    mov r1, r8
    svc 6
    ldr r1, [r5,#0x14]
    add r1, r1, r0
    str r1, [r5,#0x14]
    asr r1, r1, #0x10
    strh r1, [r7,#0xc]
    ldr r1, [r5,#0xc]
    add r0, r6, #0
    mul r0, r1
    mov r1, r8
    svc 6
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    str r1, [r5,#0x18]
    asr r1, r1, #0x10
    strh r1, [r7,#0xe]
    ldrh r0, [r5,#0x1c]
    sub r0, #1
    strh r0, [r5,#0x1c]
    pop {pc}
loc_8103450:
    ldr r6, [pc, #0x8103504-0x8103450-4] // byte_200D908
    ldrb r7, [r6,#2]
    ldr r1, [pc, #0x8103504-0x8103454-4] // byte_200D908
    ldrb r0, [r1,#6]
    lsl r0, r0, #2
    ldr r3, [pc, #0x8103518-0x810345a-2] // off_810351C
    ldr r3, [r3,r7]
    ldr r3, [r3,r0]
    ldr r3, [r3]
    ldrb r0, [r1,#5]
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldrb r2, [r5,#0xb]
    add r2, #1
    strb r2, [r5,#0xb]
    ldrb r1, [r3,r2]
    ldr r4, [pc, #0x81037c4-0x8103470-4] // off_81037C8
    ldr r4, [r4,r7]
    lsl r1, r1, #2
    add r4, r4, r1
    ldrh r0, [r4]
    ldrh r1, [r4,#2]
    add r7, r5, #0
    add r7, #0x20 
    strh r0, [r7,#0xc]
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    strh r1, [r7,#0xe]
    lsl r1, r1, #0x10
    str r1, [r5,#0x18]
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_81034B2
    ldr r0, [pc, #0x8103504-0x8103494-4] // byte_200D908
    mov r1, #0xff
    strb r1, [r0,#5]
    ldr r0, [pc, #0x8103504-0x810349a-2] // byte_200D908
    ldrb r0, [r0,#2]
    tst r0, r0
    bne loc_81034AC
    mov r0, #4
    bl sub_8002DF0
    bl sub_800281C
loc_81034AC:
    mov r0, #8
    strb r0, [r5,#0xa]
    b locret_81034B6
loc_81034B2:
    bl sub_81034B8
locret_81034B6:
    pop {pc}
// end of function sub_81033C8

.thumb
sub_81034B8:
    push {r7,lr}
    ldr r6, [pc, #0x8103504-0x81034ba-2] // byte_200D908
    ldrb r7, [r6,#2]
    ldrb r1, [r3,r2]
    ldr r4, [pc, #0x81037c4-0x81034c0-4] // off_81037C8
    ldr r4, [r4,r7]
    lsl r1, r1, #2
    add r4, r4, r1
    ldrh r1, [r4]
    ldrh r0, [r4,#2]
    add r7, r5, #0
    add r7, #0x20 
    ldrh r3, [r7,#0xc]
    ldrh r2, [r7,#0xe]
    sub r1, r1, r3
    sub r0, r0, r2
    lsl r1, r1, #0x10
    lsl r0, r0, #0x10
    bl sub_8001740
    mov r1, #0xe0
    and r0, r1
    lsr r0, r0, #5
    add r0, #2
    mov r1, #7
    and r0, r1
    add r0, #8
    ldrb r7, [r6,#2]
    tst r7, r7
    beq loc_81034FA
    ldr r1, [pc, #0x8103508-0x81034f4-4] // dword_810350C
    sub r0, #8
    ldrb r0, [r1,r0]
loc_81034FA:
    bl sub_8002DF0
    bl sub_800281C
    pop {r7,pc}
off_8103504:    .word byte_200D908
off_8103508:    .word dword_810350C
dword_810350C:    .word 0xB0B0B0B, 0xD0D0D0D
dword_8103514:    .word 0x10000
off_8103518:    .word off_810351C
off_810351C:    .word off_8103524
    .word off_81035B0
off_8103524:    .word off_8103538
    .word off_8103550
    .word off_8103568
    .word off_8103580
    .word off_8103598
off_8103538:    .word off_810353C
off_810353C:    .word dword_8103670
    .word dword_8103674
    .word dword_810367C
    .word dword_8103688
    .word dword_8103694
off_8103550:    .word off_8103554
off_8103554:    .word dword_81036A0
    .word dword_8103670
    .word dword_81036A8
    .word dword_81036B0
    .word dword_81036BC
off_8103568:    .word off_810356C
off_810356C:    .word dword_81036C8
    .word dword_81036D4
    .word dword_8103670
    .word dword_81036DC
    .word dword_81036E8
off_8103580:    .word off_8103584
off_8103584:    .word dword_81036F0
    .word dword_81036FC
    .word dword_8103708
    .word dword_8103670
    .word dword_8103714
off_8103598:    .word off_810359C
off_810359C:    .word dword_8103720
    .word dword_810372C
    .word dword_8103738
    .word dword_8103740
    .word dword_8103670
off_81035B0:    .word off_81035C8
    .word off_81035E4
    .word off_8103600
    .word off_810361C
    .word off_8103638
    .word off_8103654
off_81035C8:    .word off_81035CC
off_81035CC:    .word dword_8103670
    .word dword_810374C
    .word dword_8103750
    .word dword_8103754
    .word dword_8103758
    .word dword_810375C
off_81035E4:    .word off_81035E8
off_81035E8:    .word dword_8103760
    .word dword_8103670
    .word dword_8103764
    .word dword_8103768
    .word dword_810376C
    .word dword_8103770
off_8103600:    .word off_8103604
off_8103604:    .word dword_8103774
    .word dword_8103778
    .word dword_8103670
    .word dword_810377C
    .word dword_8103780
    .word dword_8103784
off_810361C:    .word off_8103620
off_8103620:    .word dword_8103788
    .word dword_810378C
    .word dword_8103790
    .word dword_8103670
    .word dword_8103794
    .word dword_8103798
off_8103638:    .word off_810363C
off_810363C:    .word dword_810379C
    .word dword_81037A0
    .word dword_81037A4
    .word dword_81037A8
    .word dword_8103670
    .word dword_81037AC
off_8103654:    .word off_8103658
off_8103658:    .word dword_81037B0
    .word dword_81037B4
    .word dword_81037B8
    .word dword_81037BC
    .word dword_81037C0
    .word dword_8103670
dword_8103670:    .word 0xFF
dword_8103674:    .word 0x7060500, 0xFF010C08
dword_810367C:    .word 0x7060500, 0x20D0908, 0xFF
dword_8103688:    .word 0xA060500, 0x3100F0E, 0xFF
dword_8103694:    .word 0xA060500, 0x40B1211, 0xFF
dword_81036A0:    .word 0x7080C01, 0xFF000506
dword_81036A8:    .word 0x9080C01, 0xFF020D
dword_81036B0:    .word 0x9080C01, 0xF0E0A11, 0xFF0310
dword_81036BC:    .word 0x9080C01, 0x40B1211, 0xFF
dword_81036C8:    .word 0x8090D02, 0x50607, 0xFF
dword_81036D4:    .word 0x8090D02, 0xFF010C
dword_81036DC:    .word 0x11090D02, 0x100F0E0A, 0xFF03
dword_81036E8:    .word 0x11090D02, 0xFF040B12
dword_81036F0:    .word 0xE0F1003, 0x5060A, 0xFF
dword_81036FC:    .word 0xE0F1003, 0x809110A, 0xFF010C
dword_8103708:    .word 0xE0F1003, 0xD09110A, 0xFF02
dword_8103714:    .word 0xE0F1003, 0xB12110A, 0xFF04
dword_8103720:    .word 0x11120B04, 0x5060A, 0xFF
dword_810372C:    .word 0x11120B04, 0x10C0809, 0xFF
dword_8103738:    .word 0x11120B04, 0xFF020D09
dword_8103740:    .word 0x11120B04, 0x100F0E0A, 0xFF03
dword_810374C:    .word 0xFF0100
dword_8103750:    .word 0xFF0200
dword_8103754:    .word 0xFF0300
dword_8103758:    .word 0xFF0400
dword_810375C:    .word 0xFF0500
dword_8103760:    .word 0xFF0001
dword_8103764:    .word 0xFF0201
dword_8103768:    .word 0xFF0301
dword_810376C:    .word 0xFF0401
dword_8103770:    .word 0xFF0501
dword_8103774:    .word 0xFF0002
dword_8103778:    .word 0xFF0102
dword_810377C:    .word 0xFF0302
dword_8103780:    .word 0xFF0402
dword_8103784:    .word 0xFF0502
dword_8103788:    .word 0xFF0003
dword_810378C:    .word 0xFF0103
dword_8103790:    .word 0xFF0203
dword_8103794:    .word 0xFF0403
dword_8103798:    .word 0xFF0503
dword_810379C:    .word 0xFF0004
dword_81037A0:    .word 0xFF0104
dword_81037A4:    .word 0xFF0204
dword_81037A8:    .word 0xFF0304
dword_81037AC:    .word 0xFF0504
dword_81037B0:    .word 0xFF0005
dword_81037B4:    .word 0xFF0105
dword_81037B8:    .word 0xFF0205
dword_81037BC:    .word 0xFF0305
dword_81037C0:    .word 0xFF0405
off_81037C4:    .word off_81037C8
off_81037C8:    .word dword_81037D0
    .word dword_810381A+2
dword_81037D0:    .word 0x1F00DB
    .word 0x230025
    .word 0x42002B
    .word 0x4200C5
    .word 0x5B00CC
    .word 0x1F0098
    .word 0x2C008A
    .word 0x1A007E
    .word 0x1A0062
    .word 0x2C0056
    .word 0x3C007A
    .word 0x5B0068
    .word 0x1A0050
    .word 0x420048
    .hword 0x86
    .word 0x940042
    .word 0x9E0042
    .word 0x64003E
    .word 0x5C003C
dword_810381A:    .word 0x820046
    .word 0xAB0044
    .word 0x48001D
    .word 0x2D0036
    .word 0x5B0053
    .word 0xDB0013
    .hword 0x35
// end of function sub_81034B8

.thumb
sub_8103834:
    push {lr}
    pop {pc}
// end of function sub_8103834

.thumb
sub_8103838:
    push {lr}
    ldr r0, [pc, #0x8103848-0x810383a-2] // off_810384C
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8103848:    .word off_810384C
off_810384C:    .word sub_8103850+1
// end of function sub_8103838

.thumb
sub_8103850:
    push {lr}
    pop {pc}
// end of function sub_8103850

.thumb
sub_8103854:
    push {lr}
    pop {pc}
// end of function sub_8103854

.thumb
sub_8103858:
    push {lr}
    pop {pc}
// end of function sub_8103858

.thumb
sub_810385C:
    push {lr}
    pop {pc}
// end of function sub_810385C

.thumb
sub_8103860:
    push {lr}
    pop {pc}
// end of function sub_8103860

.thumb
sub_8103864:
    push {lr}
    mov r1, #2
    ldrb r0, [r5]
    bic r0, r1
    strb r0, [r5]
    pop {pc}
// end of function sub_8103864

.thumb
sub_8103870:
    push {lr}
    pop {pc}
// end of function sub_8103870

.thumb
sub_8103874:
    push {r7,lr}
    ldr r6, [pc, #0x8103ad4-0x8103876-2] // byte_200D908
    ldrb r7, [r6,#2]
    ldr r1, [pc, #0x8103af0-0x810387a-2] // off_8103AF4
    ldr r1, [r1,r7]
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne locret_8103892
    mov r1, #2
    ldrb r0, [r5]
    bic r0, r1
    strb r0, [r5]
locret_8103892:
    pop {r7,pc}
// end of function sub_8103874

.thumb
sub_8103894:
    push {lr}
    ldr r0, [pc, #0x81038ec-0x8103896-2] // off_81038F0
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8005B5C
    beq locret_81038EA
    ldrb r0, [r5,#6]
    mov r1, #1
    tst r0, r1
    bne locret_81038EA
    bl sub_8103D9C
    beq locret_81038EA
    ldr r6, [pc, #0x8103ad4-0x81038b4-4] // byte_200D908
    ldrb r1, [r6,#5]
    cmp r1, #0x80
    beq loc_81038C2
    mov r0, #0xff
    strb r1, [r6,#5]
    b loc_81038D6
loc_81038C2:
    mov r0, #1
    strb r0, [r5,#6]
    ldrb r2, [r5,#7]
    strb r2, [r5,#0xb]
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #0x68 
    bl f500_8000558
    b loc_81038E2
loc_81038D6:
    mov r0, #0xc
    strb r0, [r5,#0xa]
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
loc_81038E2:
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x8103b00-0x81038e6-2] // =0x1340
    strh r1, [r0]
locret_81038EA:
    pop {pc}
off_81038EC:    .word off_81038F0
off_81038F0:    .word sub_810390C+1
    .word sub_810390C+1
    .word sub_8103B10+1
    .word sub_8103B28+1
    .word sub_8103BA0+1
    .word sub_8103BA4+1
    .word sub_8103C14+1
// end of function sub_8103894

.thumb
sub_810390C:
    push {lr}
    bl sub_8005B5C
    beq locret_8103990
    mov r0, #0
    mov r1, #0x6d 
    bl sub_8024FF0
    beq loc_8103920
    pop {pc}
loc_8103920:
    ldr r6, [pc, #0x8103ad4-0x8103920-4] // byte_200D908
    ldrb r7, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_8103956
    ldr r6, [pc, #0x8103af0-0x810392a-2] // off_8103AF4
    ldr r6, [r6,r7]
    mov r2, #0
loc_8103930:
    ldrh r0, [r6,r2]
    ldr r1, [pc, #0x8103b08-0x8103932-2] // =0xFFFF
    cmp r0, r1
    beq loc_8103944
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_8103944
    add r2, #2
    b loc_8103930
loc_8103944:
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#0xa]
    ldrb r0, [r5,#0xb]
    strb r0, [r5,#0x1f]
    ldr r0, [pc, #0x8103c10-0x810394e-2] // dword_2028000
    mov r1, #0
    bl sub_804E2A4
loc_8103956:
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #9
    tst r0, r1
    beq loc_8103992
    ldr r0, [pc, #0x8103c10-0x8103962-2] // dword_2028000
    mov r1, #1
    bl sub_804E2A4
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x8103b00-0x810396e-2] // =0x1340
    strh r1, [r0]
    ldr r0, [pc, #0x8103ad4-0x8103972-2] // byte_200D908
    ldrb r1, [r5,#0xb]
    strb r1, [r0,#0x5] // (byte_200D90D - 0x200d908)
    ldrb r2, [r5,#7]
    cmp r1, r2
    bne loc_8103986
    ldr r0, [pc, #0x8103ad4-0x810397e-2] // byte_200D908
    mov r1, #0xff
    strb r1, [r0,#0x5] // (byte_200D90D - 0x200d908)
    strb r1, [r0,#0x6] // (byte_200D90E - 0x200d908)
loc_8103986:
    mov r0, #8
    strb r0, [r5,#0xa]
    mov r0, #0x67 
    bl f500_8000558
locret_8103990:
    pop {pc}
loc_8103992:
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    ldr r1, [pc, #0x8103b0c-0x8103998-4] // =0xFF
    tst r0, r1
    beq loc_81039CA
    mov r0, #0x7d 
    bl f500_8000558
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r2, [r0]
    ldr r3, [pc, #0x8103b04-0x81039aa-2] // =0x400
    eor r2, r3
    strh r2, [r0]
    ldr r0, [pc, #0x8103c10-0x81039b0-4] // dword_2028000
    mov r1, #0
    tst r2, r3
    beq loc_81039C4
    ldrb r1, [r5,#0xb]
    tst r7, r7
    beq loc_81039C2
    add r1, #8
    b loc_81039C4
loc_81039C2:
    add r1, #3
loc_81039C4:
    bl sub_804E2A4
    pop {pc}
loc_81039CA:
    ldr r1, [pc, #0x8103ad8-0x81039ca-2] // off_8103ADC
    ldr r1, [r1,r7]
    ldrb r2, [r5,#5]
    lsl r2, r2, #1
    ldr r2, [r1,r2]
    ldrb r6, [r5,#0xb]
    lsl r0, r6, #2
    ldr r2, [r2,r0]
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#4]
    push {r2}
    ldr r2, [pc, #0x8103ad4-0x81039e2-2] // byte_200D908
    ldrb r2, [r2,#0x2] // (byte_200D90A - 0x200d908)
    tst r2, r2
    pop {r2}
    bne loc_8103A18
    mov r1, #0x40 
    tst r0, r1
    beq loc_81039F6
    ldrb r6, [r2]
    b loc_8103A12
loc_81039F6:
    mov r1, #0x80
    tst r0, r1
    beq loc_8103A00
    ldrb r6, [r2,#1]
    b loc_8103A12
loc_8103A00:
    mov r1, #0x20 
    tst r0, r1
    beq loc_8103A0A
    ldrb r6, [r2,#2]
    b loc_8103A12
loc_8103A0A:
    mov r1, #0x10
    tst r0, r1
    beq loc_8103A12
    ldrb r6, [r2,#3]
loc_8103A12:
    cmp r6, #0xff
    beq locret_8103AD0
    b loc_8103A76
loc_8103A18:
    mov r1, #0x60 
    tst r0, r1
    beq loc_8103A44
    ldrb r1, [r5,#0x1f]
loc_8103A20:
    sub r1, #1
    bge loc_8103A26
    mov r1, #5
loc_8103A26:
    bl sub_8103DE4
    ldr r2, [pc, #0x8103af0-0x8103a2a-2] // off_8103AF4
    ldr r2, [r2,#8]
    lsl r3, r1, #1
    ldrh r4, [r2,r3]
    push {r1}
    add r0, r4, #0
    bl sub_8024FF4
    pop {r1}
    beq loc_8103A20
    strb r1, [r5,#0x1f]
    add r6, r1, #0
    b loc_8103A72
loc_8103A44:
    mov r1, #0x90
    tst r0, r1
    beq loc_8103A72
    ldrb r1, [r5,#0x1f]
loc_8103A4C:
    add r1, #1
    cmp r1, #6
    blt loc_8103A54
    mov r1, #0
loc_8103A54:
    bl sub_8103DDC
    ldr r2, [pc, #0x8103af0-0x8103a58-4] // off_8103AF4
    ldr r2, [r2,#8]
    lsl r3, r1, #1
    ldrh r4, [r2,r3]
    push {r1}
    add r0, r4, #0
    bl sub_8024FF4
    pop {r1}
    beq loc_8103A4C
    strb r1, [r5,#0x1f]
    add r6, r1, #0
    b loc_8103A72
loc_8103A72:
    cmp r6, #0xff
    beq locret_8103AD0
loc_8103A76:
    ldrb r0, [r5,#0xb]
    cmp r0, r6
    beq loc_8103AA6
    strb r6, [r5,#0xb]
    mov r0, #0x66 
    bl f500_8000558
    bl sub_8103C2C
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r2, [r0]
    ldr r3, [pc, #0x8103b04-0x8103a8e-2] // =0x400
    ldr r0, [pc, #0x8103c10-0x8103a90-4] // dword_2028000
    tst r2, r3
    beq loc_8103AA6
    ldrb r1, [r5,#0xb]
    tst r7, r7
    beq loc_8103AA0
    add r1, #8
    b loc_8103AA2
loc_8103AA0:
    add r1, #3
loc_8103AA2:
    bl sub_804E2A4
loc_8103AA6:
    add r4, r5, #0
    add r4, #0x20 
    ldrb r6, [r5,#0xb]
    ldr r2, [r5,#0x14]
    cmp r6, r2
    beq locret_8103AD0
    str r6, [r5,#0x14]
    ldr r1, [pc, #0x8103ae4-0x8103ab4-4] // dword_8103AE8
    ldr r1, [r1,r7]
    lsl r6, r6, #2
    ldrsh r2, [r1,r6]
    strh r2, [r4,#0xc]
    add r6, #2
    ldrsh r2, [r1,r6]
    strh r2, [r4,#0xe]
    bl sub_8103E00
    ldrb r0, [r5,#6]
    mov r1, #4
    orr r0, r1
    strb r0, [r5,#6]
locret_8103AD0:
    pop {pc}
    .balign 4, 0x00
off_8103AD4:    .word byte_200D908
off_8103AD8:    .word off_8103ADC
off_8103ADC:    .word off_81030D4
    .word off_81030E8
off_8103AE4:    .word dword_8103AE8
dword_8103AE8:    .word 0x81031E6, 0x81031FA
off_8103AF0:    .word off_8103AF4
off_8103AF4:    .word dword_8103178+0x18
    .word 0x810319A
dword_8103AFC:    .word 0x81031A6
off_8103B00:    .word 0x1340
off_8103B04:    .word 0x400
dword_8103B08:    .word 0xFFFF
off_8103B0C:    .word 0x100
// end of function sub_810390C

.thumb
sub_8103B10:
    push {lr}
    ldr r0, [pc, #0x8103d98-0x8103b12-2] // byte_200D908
    ldrb r1, [r0,#0x5] // (byte_200D90D - 0x200d908)
    cmp r1, #0xff
    bne locret_8103B26
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0xc
    strb r0, [r5,#0xa]
locret_8103B26:
    pop {pc}
// end of function sub_8103B10

.thumb
sub_8103B28:
    push {lr}
    bl sub_8005B5C
    beq locret_8103B9E
    ldr r6, [pc, #0x8103d98-0x8103b30-4] // byte_200D908
    ldrb r7, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldr r0, [pc, #0x8103bf8-0x8103b34-4] // dword_8103BFC
    ldr r0, [r0,r7]
    ldrb r1, [r5,#0xb]
    ldrb r1, [r0,r1]
    cmp r1, #4
    bne loc_8103B5E
    mov r1, #1
    ldrb r0, [r5,#6]
    tst r0, r1
    beq loc_8103B58
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #4
    bge loc_8103B58
    bl sub_80431E4
    b locret_8103B9E
loc_8103B58:
    bl sub_8043200
    b locret_8103B9E
loc_8103B5E:
    cmp r1, #6
    bne loc_8103B80
    mov r1, #1
    ldrb r0, [r5,#6]
    tst r0, r1
    beq loc_8103B7A
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #4
    blt loc_8103B7A
    bl sub_80431E4
    b locret_8103B9E
loc_8103B7A:
    bl sub_804321C
    b locret_8103B9E
loc_8103B80:
    lsl r1, r1, #2
    ldr r0, [pc, #0x8103c04-0x8103b82-2] // off_8103C08
    ldr r0, [r0,r7]
    ldr r0, [r0,r1]
    mov r1, #0
    bl sub_8005644
    mov r0, #0
    bl sub_8005552
    mov r0, #0x10
    strb r0, [r5,#0xa]
    ldr r4, [pc, #0x8103d98-0x8103b98-4] // byte_200D908
    mov r0, #4
    strb r0, [r4,#0x1] // (byte_200D909 - 0x200d908)
locret_8103B9E:
    pop {pc}
// end of function sub_8103B28

.thumb
sub_8103BA0:
    push {lr}
    pop {pc}
// end of function sub_8103BA0

.thumb
sub_8103BA4:
    push {lr}
    ldr r6, [pc, #0x8103d98-0x8103ba6-2] // byte_200D908
    ldrb r7, [r6,#0x2] // (byte_200D90A - 0x200d908)
    ldr r0, [pc, #0x8103bf8-0x8103baa-2] // dword_8103BFC
    ldr r0, [r0,r7]
    ldrb r1, [r5,#0xb]
    ldrb r1, [r0,r1]
    cmp r1, #4
    bne loc_8103BCE
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #4
    bge loc_8103BEA
    ldr r0, [pc, #0x8103c10-0x8103bc0-4] // dword_2028000
    mov r1, #2
    bl sub_804E2A4
    mov r0, #0x18
    strb r0, [r5,#0xa]
    b locret_8103BF6
loc_8103BCE:
    cmp r1, #6
    bne loc_8103BEA
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #4
    blt loc_8103BEA
    ldr r0, [pc, #0x8103c10-0x8103bdc-4] // dword_2028000
    mov r1, #2
    bl sub_804E2A4
    mov r0, #0x18
    strb r0, [r5,#0xa]
    b locret_8103BF6
loc_8103BEA:
    mov r0, #0xc
    strb r0, [r5,#0xa]
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
locret_8103BF6:
    pop {pc}
off_8103BF8:    .word dword_8103BFC
dword_8103BFC:    .word 0x81032ED, 0x81032F2
off_8103C04:    .word off_8103C08
off_8103C08:    .word off_8102FEC
    .word off_8103000
off_8103C10:    .word dword_2028000
// end of function sub_8103BA4

.thumb
sub_8103C14:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8103C2A
    mov r0, #0xc
    strb r0, [r5,#0xa]
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
locret_8103C2A:
    pop {pc}
// end of function sub_8103C14

.thumb
sub_8103C2C:
    push {r6,lr}
    ldr r0, [pc, #0x8103d98-0x8103c2e-2] // byte_200D908
    ldrb r0, [r0,#0x2] // (byte_200D90A - 0x200d908)
    tst r0, r0
    beq loc_8103C38
    add r6, #5
loc_8103C38:
    lsl r6, r6, #2
    ldr r0, [pc, #0x8103c70-0x8103c3a-2] // off_8103C74
    ldr r1, [pc, #0x8103ca0-0x8103c3c-4] // unk_3002BF0
    ldr r2, [pc, #0x8103ca4-0x8103c3e-2] // off_8103CA8
    ldr r0, [r0,r6]
    ldr r2, [r2,r6]
    lsr r2, r2, #3
    bl loc_8000870
    ldr r0, [pc, #0x8103cd4-0x8103c4a-2] // off_8103CD8
    ldr r1, [pc, #0x8103d04-0x8103c4c-4] // =0x6006000
    ldr r2, [pc, #0x8103d08-0x8103c4e-2] // off_8103D0C
    ldr r0, [r0,r6]
    ldr r2, [r2,r6]
    bl loc_8000874
    push {r5}
    mov r0, #9
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8103d38-0x8103c60-4] // off_8103D3C
    ldr r3, [r3,r6]
    mov r4, #0xc
    mov r5, #0xa
    bl sub_8001DDC
// end of function sub_8103C2C

    pop {r5}
    pop {r6,pc}
off_8103C70:    .word off_8103C74
off_8103C74:    .word dword_86C26D0
    .word dword_86C28D0
    .word asc_86C29D4+0xFC
    .word dword_86C2CD0
    .word dword_86C2ED0
    .word dword_86C2ED0
    .word dword_86C32D0
    .word dword_86C34D0
    .word dword_86C36D0
    .word dword_86C38D0
    .word dword_86C3AD0
off_8103CA0:    .word unk_3002BF0
off_8103CA4:    .word off_8103CA8
off_8103CA8:    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
    .word 0x200
off_8103CD4:    .word off_8103CD8
off_8103CD8:    .word dword_201A000
    .word dword_201C000
    .word unk_201E000
    .word unk_2020000
    .word unk_2022000
    .word dword_201A000
    .word dword_201C000
    .word unk_201E000
    .word unk_2020000
    .word unk_2022000
    .word unk_2024000
dword_8103D04:    .word 0x6006000
off_8103D08:    .word off_8103D0C
off_8103D0C:    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
    .word 0x2000
off_8103D38:    .word off_8103D3C
off_8103D3C:    .word dword_86C4710
    .word dword_86C4800
    .word dword_86C48F0
    .word dword_86C49E0
    .word dword_86C4AD0
    .word dword_86C4AD0
    .word dword_86C50C0
    .word dword_86C51B0
    .word dword_86C52A0
    .word dword_86C5390
    .word dword_86C5480
    .word off_8103D6C
off_8103D6C:    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
    .word 0xF0
off_8103D98:    .word byte_200D908
.thumb
sub_8103D9C:
    push {r4-r7,lr}
    ldrb r0, [r5,#6]
    mov r1, #4
    tst r0, r1
    beq loc_8103DAC
    bic r0, r1
    strb r0, [r5,#6]
    b locret_8103DD8
loc_8103DAC:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    bne locret_8103DD8
    mov r1, #1
    tst r1, r0
    beq locret_8103DD8
    ldrb r0, [r5,#0xa]
    cmp r0, #8
    bne loc_8103DD4
    mov r1, #2
    ldrb r0, [r5,#6]
    tst r0, r1
    bne locret_8103DD8
    mov r1, #2
    ldrb r0, [r5,#6]
    orr r0, r1
    strb r0, [r5,#6]
loc_8103DD4:
    mov r0, #0
    tst r0, r0
locret_8103DD8:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8103D9C

.thumb
sub_8103DDC:
    push {lr}
    ldr r0, [pc, #0x8103dec-0x8103dde-2] // dword_8103DF4
    ldrb r1, [r0,r1]
    pop {pc}
// end of function sub_8103DDC

.thumb
sub_8103DE4:
    push {lr}
    ldr r0, [pc, #0x8103df0-0x8103de6-2] // =0x8103DF8
    ldrb r1, [r0,r1]
    pop {pc}
off_8103DEC:    .word dword_8103DF4
dword_8103DF0:    .word 0x8103DFA
dword_8103DF4:    .word 0x4050103
    .word 0x3000002
    .word 0x4010205
// end of function sub_8103DE4

.thumb
sub_8103E00:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r0, #0
    bl sub_80028E8
    mov r0, #0xc
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8103E00

    bl sub_8002FC2
    mov r0, #0x60 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldr r0, [pc, #0x8103e3c-0x8103e26-2] // =0xFF
    ldr r1, [pc, #0x8103e40-0x8103e28-4] // dword_8103E44
    ldrh r1, [r1,r2]
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    pop {pc}
off_8103E3C:    .word 0x100
off_8103E40:    .word dword_8103E44
dword_8103E44:    .word 0x200000, 0x600040, 0xA00080, 0xC0, 0x400020, 0x800060
    .word 0xC000A0, 0xE0
.thumb
sub_8103E64:
    push {lr}
    lsl r2, r2, #2
    ldrsh r0, [r6,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrsh r0, [r6,r2]
    strh r0, [r7,#0xe]
    pop {pc}
unk_8103E74:    .byte 0x14
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x2C 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0xA4
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0xC4
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0xDC
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0xB7
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x9D
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x49 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0xA6
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0xA9
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x5F 
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x5F 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 0x2F 
    .byte 0x1C
    .byte 0x20
    .byte 0x37 
    .byte 3
    .byte 0x48 
    .byte 0x29 
    .byte 0x7A 
    .byte 0x40 
    .byte 0x58 
    .byte 0xFE
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
    .word off_8103EE8
off_8103EE8:    .word loc_8103EF4+1
    .word loc_810427C+1
    .word sub_81042A0+1
// end of function sub_8103E64

loc_8103EF4:
    push {lr}
    ldr r0, [pc, #0x8103f04-0x8103ef6-2] // off_8103F08
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8103F04:    .word off_8103F08
off_8103F08:    .word sub_8103F14+1
    .word sub_8104040+1
    .word sub_810408C+1
.thumb
sub_8103F14:
    push {lr}
    mov r0, #0
    strb r0, [r5,#9]
    ldr r1, [pc, #0x810413c-0x8103f1a-2] // byte_200ACC0
    ldrb r4, [r1,#0x6] // (byte_200ACC6 - 0x200acc0)
    strb r4, [r5,#0x11]
    ldr r2, [pc, #0x810413c-0x8103f20-4] // byte_200ACC0
    ldrb r2, [r2,#0x5] // (byte_200ACC5 - 0x200acc0)
    strb r2, [r5,#0x15]
    mov r0, #0x20 
    mul r0, r2
    mov r2, r10
    ldr r2, [r2,#0x3c]
    add r2, r2, r0
    mov r1, #0
    add r2, r2, r1
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    add r0, r0, r2
    ldrb r0, [r0]
    strb r0, [r5,#0x16]
    cmp r0, #0xff
    bne loc_8103F44
    mov r0, #0x17
loc_8103F44:
    ldr r1, [pc, #0x8103fcc-0x8103f44-4] // =0x8104008
    ldrb r0, [r1,r0]
    strb r0, [r5,#6]
    mov r3, #2
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    mov r2, r10
    ldr r2, [r2,#0x3c]
    push {r7}
    ldr r7, [pc, #0x810413c-0x8103f56-2] // byte_200ACC0
    ldrb r1, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r4, #0x20 
    mul r1, r4
    add r2, r2, r1
    pop {r7}
    mov r1, #1
    add r0, r0, r2
    add r0, r0, r1
    ldrb r1, [r0]
    mov r2, #0xc0
    and r1, r2
    beq loc_8103F82
    mov r3, #0
    ldrb r1, [r5,#0x11]
    tst r1, r1
    bne loc_8103F82
    ldrb r1, [r0]
    mov r2, #0x40 
    and r1, r2
    bne loc_8103F82
    mov r3, #2
loc_8103F82:
    tst r3, r3
    bne loc_8103F9E
    ldrb r4, [r5,#0x16]
    ldr r1, [pc, #0x8103fc8-0x8103f88-4] // =0x8104008
    mov r0, #6
loc_8103F8C:
    ldrb r2, [r1,r0]
    cmp r2, #0xff
    beq loc_8103F9E
    cmp r2, r4
    bne loc_8103F9A
    mov r3, #3
    b loc_8103F9E
loc_8103F9A:
    sub r0, #1
    bge loc_8103F8C
loc_8103F9E:
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x8103fd0-0x8103fa0-4] // dword_8103FDC
    ldrb r2, [r1,r0]
    strb r2, [r5,#0x17]
    add r3, r3, r2
    strb r3, [r5,#7]
    ldr r1, [pc, #0x8103fd4-0x8103faa-2] // =0x8103FF0
    ldrb r6, [r1,r0]
    bl sub_8104164
// end of function sub_8103F14

    bl sub_81043E4
    ldr r0, [pc, #0x8103fd8-0x8103fb6-2] // =0x40
    strh r0, [r5,#0xe]
    mov r0, #5
    strb r0, [r5,#0x14]
    bl loc_810427C
    pop {pc}
    .word unk_8103E74
dword_8103FC8:    .word 0x810401A
dword_8103FCC:    .word 0x8104021
off_8103FD0:    .word dword_8103FDC
dword_8103FD4:    .word 0x8103FFB
off_8103FD8:    .word 0x40
dword_8103FDC:    .word 0x0
    .word 0x10101010, 0x20202020, 0x30303030, 0x0
    .word 0x10101010, 0x10101010, 0x101010, 0x0, 0x0, 0x0
    .word 0x11000000, 0x11111111, 0x11111111, 0x11111111, 0x3021111
    .word 0xB0A0706, 0x20100FF, 0x6050403, 0xA090807, 0xE0D0C0B
    .word 0x201000F, 0x4050403, 0x4050405, 0x6050405
.thumb
sub_8104040:
    push {lr}
    mov r0, #4
    strb r0, [r5,#9]
    ldrb r0, [r5,#6]
    tst r0, r0
    bne loc_8104052
    mov r0, #3
    strb r0, [r5,#6]
    b loc_810405A
loc_8104052:
    ldr r1, [pc, #0x810413c-0x8104052-2] // byte_200ACC0
    ldrb r0, [r1,#0x5] // (byte_200ACC5 - 0x200acc0)
    add r0, #4
    strb r0, [r5,#6]
loc_810405A:
    mov r0, #0
    strb r0, [r5,#7]
    mov r6, #8
    bl sub_8104164
// end of function sub_8104040

    mov r1, #0xa3
    ldrb r0, [r5,#6]
    cmp r0, #3
    beq loc_810406E
    mov r1, #0x23 
loc_810406E:
    strb r1, [r5]
    ldr r6, [pc, #0x8104088-0x8104070-4] // =0x8103E94
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x810413c-0x8104074-4] // byte_200ACC0
    ldrb r0, [r1,#0x5] // (byte_200ACC5 - 0x200acc0)
    lsl r0, r0, #1
    add r2, r2, r0
    bl sub_8103E64
    bl loc_810427C
    pop {pc}
    .balign 4, 0x00
dword_8104088:    .word 0x8103E94
.thumb
sub_810408C:
    push {lr}
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x12]
    ldrb r0, [r5,#6]
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#7]
    mov r1, #0xf
    and r0, r1
    strb r0, [r5,#0xd]
    ldrb r0, [r5,#7]
    mov r1, #0xf0
    and r0, r1
    strb r0, [r5,#0xe]
    ldrb r0, [r5,#0xd]
    ldr r1, [pc, #0x8104138-0x81040b0-4] // dword_8104160
    ldrb r0, [r1,r0]
    ldr r1, [pc, #0x810413c-0x81040b4-4] // byte_200ACC0
    ldrb r4, [r1,#0x6] // (byte_200ACC6 - 0x200acc0)
    strb r4, [r5,#0x11]
    tst r4, r4
    beq loc_81040C4
    ldrb r1, [r5,#0xe]
    tst r1, r1
    bne loc_81040C6
loc_81040C4:
    add r0, #3
loc_81040C6:
    strb r0, [r5,#6]
    mov r4, #5
    mov r3, #0
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #2
    mov r1, #1
    add r0, r0, r1
    mov r1, r10
    ldr r1, [r1,#0x3c]
    push {r7}
    ldr r7, [pc, #0x810413c-0x81040da-2] // byte_200ACC0
    ldrb r2, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r6, #0x20 
    mul r2, r6
    add r1, r1, r2
    pop {r7}
    add r0, r0, r1
    ldrb r1, [r0]
    mov r0, #0x40 
    add r2, r1, #0
    and r2, r0
    cmp r2, #0x40 
    beq loc_8104102
    mov r0, #0x80
    and r1, r0
    cmp r1, #0x80
    bne loc_8104106
    mov r4, #0
    mov r3, #2
    b loc_8104106
loc_8104102:
    mov r4, #0
    mov r3, #1
loc_8104106:
    strb r4, [r5,#7]
    strb r3, [r5,#0xf]
    mov r6, #0xa
    bl sub_8104164
// end of function sub_810408C

    ldr r6, [pc, #0x8104130-0x8104110-4] // =0x8103EB4
    ldrb r2, [r5,#4]
    bl sub_8103E64
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #2
    ldrb r1, [r5,#0xd]
    add r0, r0, r1
    ldr r1, [pc, #0x8104134-0x8104120-4] // dword_8104140
    ldrb r0, [r1,r0]
    bl loc_8002F8E
    bl loc_810427C
    pop {pc}
    .byte 0, 0
dword_8104130:    .word 0x8103EB4
off_8104134:    .word dword_8104140
off_8104138:    .word dword_8104160
off_810413C:    .word byte_200ACC0
dword_8104140:    .word 0x0
    .word 0x1, 0x100, 0x101, 0x10000, 0x10001, 0x10100, 0x10101
dword_8104160:    .word 0x20100
.thumb
sub_8104164:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r1, [pc, #0x81041c8-0x810416e-2] // dword_81041E0
    ldrb r0, [r1,r6]
    bl sub_80028E8
    ldrb r6, [r5,#4]
    ldrb r0, [r5,#6]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8104164

    bl sub_8002FC2
    ldrb r0, [r5,#5]
    tst r0, r0
    bne loc_8104190
    bl sub_8002D60
loc_8104190:
    ldr r1, [pc, #0x81041d0-0x8104190-4] // =0x810422C
    ldrb r0, [r1,r6]
    strb r0, [r7,#0x15]
    ldrb r0, [r5,#7]
    strb r0, [r7,#4]
    ldr r1, [pc, #0x81041c0-0x810419a-2] // dword_81041E0
    ldrb r0, [r1,r6]
    strb r0, [r5,#4]
    ldr r1, [pc, #0x81041d8-0x81041a0-4] // dword_8104258
    ldrb r0, [r1,r6]
    strb r0, [r7,#0xa]
    lsl r6, r6, #1
    ldr r0, [pc, #0x81041bc-0x81041a8-4] // =0x0
    ldr r1, [pc, #0x81041c4-0x81041aa-2] // dword_81041E0
    ldrh r1, [r1,r6]
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    pop {pc}
    .balign 4, 0x00
dword_81041BC:    .word 0x0
dword_81041C0:    .word 0x8104202
off_81041C4:    .word dword_81041E0
dword_81041C8:    .word 0x8104213
    .word 0x8104225
dword_81041D0:    .word 0x8104236
    .word 0x8104247
off_81041D8:    .word dword_8104258
    .word 0x8104269
dword_81041E0:    .word 0x100000, 0x300020, 0x500040, 0x700060, 0xA00080, 0xE000C0
    .word 0x1200100, 0x1600140, 0x1000180, 0x5040302, 0x1000706, 0x3020100
    .word 0x4060504, 0x4040404, 0x3040404, 0x2020203, 0x2020202, 0x5
    .word 0x0
    .word 0x40300, 0x1000000, 0x10000201, 0x50403020, 0x80807060
    .word 0xC0B0A090, 0xF0E0D0, 0x0
    .word LCDControl
    .word dword_80807E0+0x24
    .word dword_80807E0+0x28
dword_8104258:    .word 0x2020202, 0x2020202, 0x1010202, 0x1010101, 0x1, 0x0, 0x0
    .word 0x0, 0x0
loc_810427C:
    push {lr}
    ldr r0, [pc, #0x8104290-0x810427e-2] // off_8104294
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_8104290:    .word off_8104294
off_8104294:    .word loc_81042A8+1
    .word sub_81044E4+1
    .word sub_8104500+1
.thumb
sub_81042A0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81042A0

loc_81042A8:
    push {lr}
    ldrb r1, [r5,#0x11]
    lsl r1, r1, #2
    ldr r0, [pc, #0x81042b8-0x81042ae-2] // off_81042BC
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81042B8:    .word off_81042BC
off_81042BC:    .word sub_81042C4+1
    .word sub_81042E4+1
.thumb
sub_81042C4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_81042D4
    mov r0, #1
    strb r0, [r5,#0xb]
    bl sub_8002D9E
loc_81042D4:
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne locret_81042E2
    mov r0, #1
    strb r0, [r5,#0xa]
    bl sub_81043E4
locret_81042E2:
    pop {pc}
// end of function sub_81042C4

.thumb
sub_81042E4:
    push {lr}
    ldrb r1, [r5,#0xb]
    ldr r0, [pc, #0x81042f4-0x81042e8-4] // off_81042F8
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81042F4:    .word off_81042F8
off_81042F8:    .word sub_8104304+1
    .word sub_8104380+1
    .word sub_81043B8+1
// end of function sub_81042E4

.thumb
sub_8104304:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    mov r2, r10
    ldr r2, [r2,#0x3c]
    push {r7}
    ldr r7, [pc, #0x81045dc-0x8104310-4] // byte_200ACC0
    ldrb r1, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r3, #0x20 
    mul r1, r3
    add r2, r2, r1
    pop {r7}
    mov r1, #1
    add r0, r0, r2
    add r0, r0, r1
    ldrb r1, [r0]
    mov r2, #0xc0
    and r1, r2
    beq loc_8104364
    mov r1, r10
    ldr r1, [r1,#0x3c]
    push {r7}
    ldr r7, [pc, #0x81045dc-0x8104330-4] // byte_200ACC0
    ldrb r3, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r2, #0x20 
    mul r2, r3
    add r1, r1, r2
    pop {r7}
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    add r1, r1, r3
    mov r2, #1
    ldrb r3, [r1,#3]
    tst r3, r2
    bne loc_810435A
    mov r2, #2
    tst r3, r2
    beq loc_8104364
    mov r0, #2
    ldrb r1, [r5,#0x17]
    add r0, r0, r1
    strb r0, [r7,#4]
    b loc_8104364
loc_810435A:
    mov r0, #4
    strb r0, [r5,#0xb]
    mov r0, #0x3c 
    strb r0, [r5,#0xc]
    b loc_8104372
loc_8104364:
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_8104372
    mov r0, #1
    strb r0, [r5,#0xa]
    bl sub_81043E4
loc_8104372:
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0xe]
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
// end of function sub_8104304

.thumb
sub_8104380:
    push {lr}
    ldrh r2, [r5,#0xe]
    ldr r1, [pc, #0x81043e0-0x8104384-4] // =0x80
    add r2, r2, r1
    strh r2, [r5,#0xe]
    ldrb r0, [r5,#0x14]
    sub r0, #1
    strb r0, [r5,#0x14]
    bne loc_81043AA
    mov r1, #0x21 
    strb r1, [r5]
    mov r0, #8
    strb r0, [r5,#0xb]
    mov r0, #0
    strb r0, [r5,#0x11]
    bl sub_81043E4
    mov r0, #5
    strb r0, [r5,#0x14]
    mov r0, #1
    strb r0, [r5,#0x11]
loc_81043AA:
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0xe]
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_8104380

.thumb
sub_81043B8:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrh r2, [r5,#0xe]
    ldr r1, [pc, #0x81043e0-0x81043c0-4] // =0x80
    sub r2, r2, r1
    strh r2, [r5,#0xe]
    ldrb r0, [r5,#0x14]
    sub r0, #1
    strb r0, [r5,#0x14]
    bne loc_81043D2
    mov r0, #0
    strb r0, [r5,#0x11]
loc_81043D2:
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0xe]
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
off_81043E0:    .word 0x80
// end of function sub_81043B8

.thumb
sub_81043E4:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    mov r2, r10
    ldr r2, [r2,#0x3c]
    push {r7}
    ldr r7, [pc, #0x81045dc-0x81043f0-4] // byte_200ACC0
    ldrb r1, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r3, #0x20 
    mul r1, r3
    add r2, r2, r1
    pop {r7}
    mov r1, #1
    add r0, r0, r2
    add r0, r0, r1
    ldrb r1, [r0]
    add r3, r1, #0
    mov r2, #0xf
    and r1, r2
    bne loc_8104422
    ldrb r0, [r5,#4]
    lsl r0, r0, #4
    ldr r2, [pc, #0x8104460-0x8104410-4] // byte_8104464
    add r2, r2, r0
    mov r4, #0xc
    ldrh r0, [r2,r4]
    strh r0, [r7,#0xc]
    add r4, #2
    ldrh r0, [r2,r4]
    strh r0, [r7,#0xe]
    b locret_810445C
loc_8104422:
    mov r4, #0
    mov r2, #4
loc_8104426:
    add r6, r4, #0
    add r1, r3, #0
    and r1, r2
    beq loc_8104454
    add r1, r3, #0
    mov r0, #0x40 
    and r1, r0
    beq loc_810443E
    ldrb r1, [r5,#0x11]
    tst r1, r1
    beq loc_810443E
    add r6, #1
loc_810443E:
    ldrb r0, [r5,#4]
    lsl r0, r0, #4
    ldr r2, [pc, #0x8104460-0x8104442-2] // byte_8104464
    lsl r6, r6, #2
    add r6, r6, r0
    ldrh r0, [r2,r6]
    strh r0, [r7,#0xc]
    add r6, #2
    ldrh r0, [r2,r6]
    strh r0, [r7,#0xe]
    pop {pc}
loc_8104454:
    lsr r2, r2, #1
    add r4, #1
    cmp r4, #2
    ble loc_8104426
locret_810445C:
    pop {pc}
    .byte 0, 0
off_8104460:    .word byte_8104464
byte_8104464:    .byte 0x78
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x2C 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0xA4
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0xC4
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0xDC
    .byte 0
    .byte 0x90
    .byte 0
// end of function sub_81043E4

.thumb
sub_81044E4:
    push {lr}
    ldr r0, [pc, #0x81044f4-0x81044e6-2] // off_81044F8
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81044F4:    .word off_81044F8
off_81044F8:    .word sub_81044FC+1
// end of function sub_81044E4

.thumb
sub_81044FC:
    push {lr}
    pop {pc}
// end of function sub_81044FC

.thumb
sub_8104500:
    push {lr}
    ldrb r0, [r5,#0x11]
    tst r0, r0
    bne loc_8104530
    mov r2, r10
    ldr r2, [r2,#0x3c]
    push {r7}
    ldr r7, [pc, #0x81045dc-0x810450e-2] // byte_200ACC0
    ldrb r1, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r3, #0x20 
    mul r1, r3
    add r2, r2, r1
    pop {r7}
    ldrb r3, [r5,#0xc]
    lsl r3, r3, #2
    add r2, r2, r3
    ldrb r3, [r2,#1]
    mov r1, #4
    and r1, r3
    beq loc_810459E
    ldr r2, [pc, #0x81045dc-0x8104528-4] // byte_200ACC0
    mov r0, #2
    strb r0, [r2,#0x4] // (byte_200ACC4 - 0x200acc0)
    b loc_810459E
loc_8104530:
    ldrb r0, [r5,#0xe]
    tst r0, r0
    beq loc_810459E
    mov r1, #0x21 
    ldr r2, [pc, #0x81045dc-0x8104538-4] // byte_200ACC0
    ldrb r0, [r2,#0x4] // (byte_200ACC4 - 0x200acc0)
    tst r0, r0
    beq loc_810459C
    ldrb r0, [r5,#6]
    ldrb r1, [r5,#0x12]
    cmp r0, r1
    bne loc_810458C
    ldrb r0, [r2,#0x4] // (byte_200ACC4 - 0x200acc0)
    cmp r0, #2
    beq loc_810459E
    push {r2}
    bl sub_8002E36
    pop {r2}
    mov r1, #1
    tst r0, r1
    beq loc_8104560
    mov r0, #4
    strb r0, [r2,#4]
loc_8104560:
    mov r1, #0xc0
    and r0, r1
    beq loc_810459E
    mov r1, r10
    ldr r1, [r1,#0x3c]
    push {r2,r7}
    ldr r7, [pc, #0x81045dc-0x810456c-4] // byte_200ACC0
    ldrb r2, [r7,#0x5] // (byte_200ACC5 - 0x200acc0)
    mov r3, #0x20 
    mul r2, r3
    add r1, r1, r2
    pop {r2,r7}
    ldrb r3, [r5,#0xc]
    lsl r3, r3, #2
    add r1, r1, r3
    ldrb r3, [r1,#1]
    mov r1, #4
    and r1, r3
    beq loc_810459E
    mov r0, #2
    strb r0, [r2,#4]
    b loc_810459E
loc_810458C:
    strb r0, [r5,#0x12]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r1, #0x23 
loc_810459C:
    strb r1, [r5]
loc_810459E:
    ldrb r0, [r5,#0xf]
    tst r0, r0
    beq locret_81045DA
    cmp r0, #2
    bne loc_81045C2
    ldrb r4, [r5,#0x11]
    tst r4, r4
    beq loc_81045BE
    ldr r2, [pc, #0x81045dc-0x81045ae-2] // byte_200ACC0
    ldrb r0, [r2,#0x4] // (byte_200ACC4 - 0x200acc0)
    tst r0, r0
    beq loc_81045C2
    cmp r0, #4
    beq loc_81045BE
    cmp r0, #2
    bne loc_81045C2
loc_81045BE:
    mov r0, #5
    b loc_81045D8
loc_81045C2:
    ldrb r0, [r5,#0x10]
    sub r0, #1
    strb r0, [r5,#0x10]
    bne locret_81045DA
    mov r0, #4
    strb r0, [r5,#0x10]
    ldrb r0, [r7,#4]
    add r0, #1
    cmp r0, #4
    ble loc_81045D8
    mov r0, #0
loc_81045D8:
    strb r0, [r7,#4]
locret_81045DA:
    pop {pc}
off_81045DC:    .word byte_200ACC0
// end of function sub_8104500

loc_81045E0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81045f4-0x81045e6-2] // off_81045F8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81045F4:    .word off_81045F8
off_81045F8:    .word loc_8104604+1
    .word loc_81046CC+1
    .word sub_81046E8+1
loc_8104604:
    push {lr}
    ldr r0, [pc, #0x8104614-0x8104606-2] // off_8104618
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8104614:    .word off_8104618
off_8104618:    .word sub_8104620+1
    .word sub_810466C+1
.thumb
sub_8104620:
    push {lr}
    ldr r6, [pc, #0x8104658-0x8104622-2] // loc_810465C
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldrh r0, [r6,r1]
    strb r0, [r5,#5]
    lsr r0, r0, #8
    strb r0, [r5,#6]
    add r1, #2
    ldrb r0, [r6,r1]
    strb r0, [r5,#7]
    add r1, #1
    push {r1,r5}
    mov r0, #1
    ldrb r1, [r6,r1]
    mov r2, #3
    ldr r3, [pc, #0x8104654-0x8104640-4] // dword_86D6C34
    mov r4, #0x1c
    mov r5, #9
    bl sub_8001DDC
// end of function sub_8104620

    pop {r1,r5}
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
    .balign 4, 0x00
off_8104654:    .word dword_86D6C34
off_8104658:    .word loc_810465C
loc_810465C:
    lsl r0, r0, #0x10
    lsr r0, r0, #0xc
    lsl r4, r2, #0x10
    lsr r1, r0, #0xc
    lsl r5, r3, #0x10
    lsr r1, r0, #0xc
    lsl r0, r4, #0x10
    lsr r1, r0, #0xc
.thumb
sub_810466C:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_810467C
    mov r4, #0x21 
loc_810467C:
    strb r4, [r5]
    mov r0, #6
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810466C

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x81046c4-0x810469a-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0x1e
    strh r0, [r7,#0xc]
    ldrb r1, [r5,#5]
    lsl r1, r1, #1
    ldr r2, [pc, #0x81046c0-0x81046b4-4] // loc_81046C8
    ldrh r0, [r2,r1]
    strh r0, [r7,#0xe]
    bl loc_81046CC
    pop {pc}
off_81046C0:    .word loc_81046C8
off_81046C4:    .word 0x200
loc_81046C8:
    lsl r0, r0, #2
    lsl r0, r1, #2
loc_81046CC:
    push {lr}
    ldr r0, [pc, #0x81046dc-0x81046ce-2] // off_81046E0
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81046DC:    .word off_81046E0
off_81046E0:    .word sub_81046F0+1
    .word sub_810484C+1
.thumb
sub_81046E8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81046E8

.thumb
sub_81046F0:
    push {lr}
    ldr r0, [pc, #0x8104700-0x81046f2-2] // off_8104704
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8104700:    .word off_8104704
off_8104704:    .word sub_8104714+1
    .word sub_8104728+1
    .word sub_810472C+1
    .word sub_8104744+1
// end of function sub_81046F0

.thumb
sub_8104714:
    push {lr}
    ldrb r1, [r5,#5]
    bl sub_803478C
    mov r0, #8
    ldrb r1, [r5,#7]
    lsl r1, r1, #2
    add r0, r0, r1
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_8104714

.thumb
sub_8104728:
    push {lr}
    pop {pc}
// end of function sub_8104728

.thumb
sub_810472C:
    push {lr}
    mov r0, #8
    bl sub_80539A0
    beq locret_8104742
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r5,#6]
    strb r1, [r0,#2]
    mov r0, #4
    strb r0, [r5,#9]
locret_8104742:
    pop {pc}
// end of function sub_810472C

.thumb
sub_8104744:
    push {lr}
    mov r0, #0x20 
    bl sub_80539A0
    beq loc_810480C
    ldr r0, [pc, #0x8104848-0x810474e-2] // =0xFF
    bl sub_80539A0
    bne loc_810481C
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r0, [r1,#0xc]
    ldr r1, [pc, #0x8104844-0x810475c-4] // unk_2001E9C
    ldrb r0, [r1,r0]
    mov r1, #0x20 
    and r0, r1
    beq loc_8104768
    b loc_810477E
loc_8104768:
    bl sub_80539B0
    tst r0, r0
    bne loc_810477E
    mov r2, r10
    ldr r2, [r2,#0x34]
    ldrb r0, [r2,#0x11]
    mov r1, #2
    orr r0, r1
    strb r0, [r2,#0x11]
    b loc_810481C
loc_810477E:
    mov r0, #0x11
    mov r1, #0x65 
    bl sub_8024FF0
    beq loc_810478E
    mov r0, #0x1e
    strb r0, [r5,#5]
    b loc_8104806
loc_810478E:
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    bne loc_810479A
    b loc_810480C
loc_810479A:
    mov r0, #0x13
    bl sub_800D742
    push {r0}
    mov r0, r10
    ldr r1, [r0,#0x40]
    ldr r0, [r0,#0x34]
    ldrb r0, [r0,#0xc]
    bl sub_8043170
    add r1, r0, #0
    pop {r0}
    cmp r1, r0
    ble loc_81047BC
    mov r0, #0x1f
    strb r0, [r5,#5]
    b loc_8104806
loc_81047BC:
    mov r0, #0x14
    bl sub_800D742
    push {r0}
    mov r0, r10
    ldr r1, [r0,#0x40]
    ldr r0, [r0,#0x34]
    ldrb r0, [r0,#0xc]
    bl sub_80431A8
    add r1, r0, #0
    pop {r0}
    cmp r1, r0
    ble loc_81047DE
    mov r0, #0x1f
    strb r0, [r5,#5]
    b loc_8104806
loc_81047DE:
    mov r0, #0x15
    strb r0, [r5,#5]
    mov r0, r10
    ldr r1, [r0,#0x40]
    ldr r0, [r0,#0x34]
    ldrb r2, [r0,#0xc]
    strb r2, [r1,#2]
    mov r3, r10
    ldr r3, [r3,#0x2c]
    ldr r4, [pc, #0x8104844-0x81047f0-4] // unk_2001E9C
    ldrb r4, [r4,r2]
    str r4, [r3,#0x4c]
    ldrb r3, [r0,#0x15]
    mov r4, #2
    tst r3, r4
    beq loc_8104804
    cmp r2, #1
    bne loc_8104804
    add r2, #1
loc_8104804:
    strb r2, [r0,#0x17]
loc_8104806:
    mov r0, #0
    strb r0, [r5,#9]
    b locret_8104842
loc_810480C:
    mov r0, #0x80
    bl sub_80539A0
    beq loc_810481C
    mov r0, #8
    bl sub_80539A0
    beq locret_8104842
loc_810481C:
    bl sub_804E448
    mov r2, r10
    ldr r2, [r2,#0x34]
    mov r1, #4
    ldrb r0, [r2,#0x11]
    bic r0, r1
    strb r0, [r2,#0x11]
    mov r0, #0xa
    bl sub_80540EC
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r5,#6]
    strb r1, [r0,#2]
    mov r0, #4
    strb r0, [r5,#9]
locret_8104842:
    pop {pc}
off_8104844:    .word unk_2001E9C
off_8104848:    .word 0x100
// end of function sub_8104744

.thumb
sub_810484C:
    push {lr}
    pop {pc}
// end of function sub_810484C

    push {lr}
    bl sub_8005B5C
    beq locret_810487E
    ldr r0, [pc, #0x8104880-0x8104858-4] // =0x7FFF
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq locret_810487E
    ldrb r1, [r5,#0xd]
    lsl r1, r1, #5
    orr r0, r1
    ldrb r1, [r5,#0xc]
    orr r0, r1
    bl sub_8002F02
    mov r3, #0xc
    ldrsb r2, [r5,r3]
    tst r2, r2
    blt locret_810487E
    sub r1, r2, #1
    strb r1, [r5,#0xc]
    strb r1, [r5,#0xd]
    strb r1, [r5,#0xe]
locret_810487E:
    pop {pc}
dword_8104880:    .word 0x7FFF
dword_8104884:    .word 0xAC00BC, 0x9C00C4, 0xCC00B4, 0xFFE6FFE6, 0x80FFE6
    .word 0x800080, 0x1A0028, 0xA0032, 0x3A0022, 0xB40078
    .word 0xA400CC, 0xD400BC, 0xFFF0FFF0, 0xFFE6FFF0, 0xFFE6FFE6
loc_81048C0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81048d4-0x81048c6-2] // off_81048D8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81048D4:    .word off_81048D8
off_81048D8:    .word loc_81048E4+1
    .word loc_8104A08+1
    .word sub_8104A24+1
loc_81048E4:
    push {lr}
    ldr r0, [pc, #0x81048f4-0x81048e6-2] // off_81048F8
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81048F4:    .word off_81048F8
off_81048F8:    .word sub_8104904+1
    .word sub_810497C+1
    .word sub_810497C+1
.thumb
sub_8104904:
    push {lr}
    mov r4, #0
    mov r0, r10
    ldr r1, [r0,#0x34]
    ldrb r2, [r1]
    cmp r2, #0x20 
    bne loc_8104914
    mov r4, #1
loc_8104914:
    strb r4, [r5,#6]
    ldrb r1, [r5,#5]
    ldr r6, [pc, #0x810496c-0x8104918-4] // dword_8104970
    ldrb r6, [r6,r1]
    strb r6, [r5,#0x13]
    mov r2, #0x1e
    tst r6, r6
    beq loc_8104926
    ldrh r2, [r0,#0x24]
loc_8104926:
    strb r2, [r5,#0x10]
    ldr r6, [pc, #0x8104964-0x8104928-4] // dword_8104968
    ldrb r6, [r6,r1]
    strb r6, [r5,#0x12]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8104b44-0x8104930-4] // off_8104B48
    ldr r2, [r0,r1]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    str r2, [r5,#0xc]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x12]
    lsl r1, r1, #3
    ldrb r0, [r0,#0xc]
    lsl r0, r0, #1
    ldrsh r0, [r2,r0]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    mov r0, #0x28 
    strh r0, [r7,#0xe]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
    .balign 4, 0x00
off_8104964:    .word dword_8104968
dword_8104968:    .word 0x202626
off_810496C:    .word dword_8104970
dword_8104970:    .word 0x10000, 0x8104978, 0x10007
// end of function sub_8104904

.thumb
sub_810497C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r1, [r0,#6]
    sub r1, #1
    tst r1, r1
    bne loc_810499A
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r0, [r0]
    cmp r0, #0x20 
    beq loc_810499A
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_810499A:
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strh r0, [r7,#0xa]
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8104bb4-0x81049a6-2] // off_8104BB8
    ldr r2, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    lsl r0, r0, #2
    ldr r3, [r2,r0]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r0, [r0,#0xc]
    lsl r0, r0, #1
    add r3, r3, r0
    str r3, [r5,#0x10]
    ldr r1, [pc, #0x8104a00-0x81049c2-2] // loc_8104A04
    ldrb r2, [r5,#4]
    sub r2, #1
    lsl r0, r2, #1
    ldrh r0, [r1,r0]
    strh r0, [r5,#0xc]
    mov r0, r10
    ldr r1, [r0,#0x34]
    ldrb r1, [r1]
    cmp r1, #0x20 
    bne loc_81049DE
    mov r0, #0x14
    strh r0, [r7,#0xe]
    b loc_81049E2
loc_81049DE:
    mov r0, #0x54 
    strh r0, [r7,#0xe]
loc_81049E2:
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x12]
    lsl r1, r1, #3
    mov r2, #0
    ldrsh r0, [r3,r2]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0xa
    strb r0, [r5,#0xe]
    bl loc_8104A08
    pop {pc}
off_8104A00:    .word loc_8104A04
// end of function sub_810497C

loc_8104A04:
    add sp, sp, #0x38
    add sp, sp, #0x40
loc_8104A08:
    push {lr}
    ldr r0, [pc, #0x8104a18-0x8104a0a-2] // off_8104A1C
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8104A18:    .word off_8104A1C
off_8104A1C:    .word sub_8104A2C+1
    .word sub_8104A44+1
.thumb
sub_8104A24:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8104A24

.thumb
sub_8104A2C:
    push {lr}
    ldr r0, [pc, #0x8104a3c-0x8104a2e-2] // off_8104A40
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8104A3C:    .word off_8104A40
off_8104A40:    .word sub_8104A5C+1
// end of function sub_8104A2C

.thumb
sub_8104A44:
    push {lr}
    ldr r0, [pc, #0x8104a54-0x8104a46-2] // off_8104A58
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8104A54:    .word off_8104A58
off_8104A58:    .word sub_8104B7C+1
// end of function sub_8104A44

.thumb
sub_8104A5C:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x34]
    mov r1, #4
    ldrb r0, [r4,#0x11]
    tst r0, r1
    bne loc_8104B22
    ldrb r1, [r5,#0x12]
    ldrsb r0, [r4,r1]
    mov r1, #0xc
    ldrsb r6, [r4,r1]
    mov r1, r10
    ldr r1, [r1,#4]
    ldrh r2, [r1,#4]
    ldrb r3, [r5,#6]
    tst r3, r3
    bne loc_8104AA4
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r3, [r3,#6]
    sub r3, #1
    beq loc_8104AA4
    mov r1, #0x10
    and r1, r2
    beq loc_8104A96
    cmp r6, r3
    bge loc_8104A96
    add r6, #1
    b loc_8104B0A
loc_8104A96:
    mov r1, #0x20 
    and r1, r2
    beq loc_8104AA4
    tst r6, r6
    ble loc_8104AA4
    sub r6, #1
    b loc_8104B0A
loc_8104AA4:
    push {r0}
    ldrb r3, [r4,#0x13]
    ldrb r0, [r5,#0x13]
    cmp r0, r3
    pop {r0}
    bne loc_8104B0A
    mov r1, #0x40 
    and r1, r2
    beq loc_8104AC4
    tst r0, r0
    ble loc_8104B0A
    ldrh r1, [r7,#0xe]
    sub r1, #4
    strh r1, [r7,#0xe]
    sub r0, #1
    b loc_8104B0A
loc_8104AC4:
    mov r1, #0x80
    and r1, r2
    beq loc_8104AD8
    cmp r0, #0x17
    bge loc_8104B0A
    ldrh r1, [r7,#0xe]
    add r1, #4
    strh r1, [r7,#0xe]
    add r0, #1
    b loc_8104B0A
loc_8104AD8:
    mov r1, #0x80
    lsl r1, r1, #1
    and r1, r2
    beq loc_8104AF2
    ldrh r1, [r7,#0xe]
    cmp r0, #0x11
    blt loc_8104AEA
    mov r0, #0x10
    mov r1, #0x68 
loc_8104AEA:
    add r1, #0x1c
    strh r1, [r7,#0xe]
    add r0, #7
    b loc_8104B0A
loc_8104AF2:
    mov r1, #0x80
    lsl r1, r1, #2
    and r1, r2
    beq loc_8104B0A
    ldrh r1, [r7,#0xe]
    cmp r0, #7
    bge loc_8104B04
    mov r0, #7
    mov r1, #0x44 
loc_8104B04:
    sub r1, #0x1c
    strh r1, [r7,#0xe]
    sub r0, #7
loc_8104B0A:
    ldrb r1, [r5,#0x12]
    strb r0, [r4,r1]
    strb r6, [r4,#0xc]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x12]
    lsl r1, r1, #3
    ldr r2, [r5,#0xc]
    lsl r6, r6, #1
    ldrsh r0, [r2,r6]
    add r0, r0, r1
    strh r0, [r7,#0xc]
loc_8104B22:
    ldrh r0, [r7,#0xc]
    ldr r1, [pc, #0x8104c3c-0x8104b24-4] // =0xFF
    cmp r0, r1
    blt loc_8104B2C
    mov r0, #0xff
loc_8104B2C:
    lsl r0, r0, #0x10
    ldrb r1, [r7,#0xe]
    orr r0, r1
    ldr r1, [pc, #0x8104b78-0x8104b32-2] // =0xB001
    mov r2, #3
    lsl r2, r2, #0xa
    orr r1, r2
    ldrb r2, [r7,#0xa]
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8104A5C

    pop {pc}
off_8104B44:    .word off_8104B48
off_8104B48:    .word off_8104B54
    .word off_8104B60
    .word dword_8104B6C
off_8104B54:    .word dword_8104884
    .word 0x8104886, 0x810488A
off_8104B60:    .word dword_8104884+0xC
    .word dword_8104884+0xC
    .word dword_8104884+0xC
dword_8104B6C:    .word 0x8104896, 0x8104896, 0x8104896
dword_8104B78:    .word 0xB001
.thumb
sub_8104B7C:
    push {lr}
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8104bb4-0x8104b82-2] // off_8104BB8
    ldr r2, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    lsl r0, r0, #2
    ldr r3, [r2,r0]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r0, [r0,#0xc]
    lsl r0, r0, #1
    add r3, r3, r0
    str r3, [r5,#0x10]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x12]
    lsl r1, r1, #3
    mov r2, #0
    ldrsh r0, [r3,r2]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    bl sub_8104BF8
// end of function sub_8104B7C

    pop {pc}
off_8104BB4:    .word off_8104BB8
off_8104BB8:    .word off_8104BC8
    .word loc_8104BD4
    .word loc_8104BE0
    .word loc_8104BEC
off_8104BC8:    .word dword_8104884+0x18
    ldr r0, [pc, #0x8104e48-0x8104bcc-4] // =0x20FFF8
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104e5c-0x8104bd0-4] // =0x36B0
    lsr r0, r2, #0x20
loc_8104BD4:
    ldr r0, [pc, #0x8104e78-0x8104bd4-4] // sub_8105004+1
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104e84-0x8104bd8-4] // =0x46FE5840
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104e98-0x8104bdc-4] // loc_8104EC8+1
    lsr r0, r2, #0x20
loc_8104BE0:
    ldr r0, [pc, #0x8104eb4-0x8104be0-4] // =0x73685C08
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104eb8-0x8104be4-4] // =0x72282004
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104ebc-0x8104be8-4] // =0x82A82000
    lsr r0, r2, #0x20
loc_8104BEC:
    ldr r0, [pc, #0x8104ed8-0x8104bec-4] // =0x2000D002
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104edc-0x8104bf0-4] // =0x73E873A8
    lsr r0, r2, #0x20
    ldr r0, [pc, #0x8104ee0-0x8104bf4-4] // =0x72282004
    lsr r0, r2, #0x20
.thumb
sub_8104BF8:
    push {lr}
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    bne loc_8104C16
    mov r0, #0xa
    strb r0, [r5,#0xe]
    ldrh r0, [r5,#0xc]
    ldr r2, [pc, #0x8104c38-0x8104c08-4] // =0xB01E
    and r2, r0
    mov r1, #1
    and r0, r1
    eor r0, r1
    orr r0, r2
    strh r0, [r5,#0xc]
loc_8104C16:
    ldrh r0, [r7,#0xc]
    ldr r1, [pc, #0x8104c3c-0x8104c18-4] // =0xFF
    cmp r0, r1
    blt loc_8104C20
    mov r0, #0xff
loc_8104C20:
    lsl r0, r0, #0x10
    ldrh r1, [r7,#0xe]
    orr r0, r1
    ldrh r1, [r5,#0xc]
    mov r2, #2
    lsl r2, r2, #0xa
    orr r1, r2
    ldrb r2, [r5,#0xa]
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8104BF8

    pop {pc}
dword_8104C38:    .word 0xB01E
off_8104C3C:    .word 0x100
dword_8104C40:    .word 0xAC00BC, 0x9C00C4, 0xCC00B4, 0xFFE6FFE6, 0x80FFE6
    .word 0x800080
loc_8104C58:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8104c6c-0x8104c5e-2] // off_8104C70
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8104C6C:    .word off_8104C70
off_8104C70:    .word loc_8104C7C+1
    .word loc_8104D34+1
    .word sub_8104D4C+1
loc_8104C7C:
    push {lr}
    ldr r0, [pc, #0x8104c8c-0x8104c7e-2] // off_8104C90
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8104C8C:    .word off_8104C90
off_8104C90:    .word sub_8104C94+1
.thumb
sub_8104C94:
    push {lr}
    ldrb r1, [r5,#5]
    ldr r6, [pc, #0x8104d20-0x8104c98-4] // off_8104D2C
    ldrb r6, [r6,r1]
    push {r1}
    mov r0, #0x5e 
    lsl r0, r0, #0x10
    mov r1, #0x17
    svc 6
    tst r6, r6
    beq loc_8104CC0
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrh r1, [r0,#0x24]
    tst r1, r1
    bne loc_8104CB4
loc_8104CB4:
    mov r0, #0
    sub r1, #7
    ble loc_8104CC0
    mov r0, #0x5e 
    lsl r0, r0, #0x10
    svc 6
loc_8104CC0:
    str r0, [r5,#0x10]
    pop {r1}
    ldr r6, [pc, #0x8104d24-0x8104cc4-4] // dword_8104D30
    ldrb r6, [r6,r1]
    strb r6, [r5,#0x1a]
    ldr r6, [pc, #0x8104d1c-0x8104cca-2] // dword_8104D28
    ldrb r6, [r6,r1]
    strb r6, [r5,#0x18]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8104e08-0x8104cd2-2] // off_8104E0C
    ldr r2, [r0,r1]
    mov r4, r10
    ldr r0, [r4,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    str r2, [r5,#0xc]
    ldr r0, [r4,#0x34]
    ldrb r1, [r0,#0x12]
    lsl r1, r1, #3
    push {r4}
    mov r4, #0
    ldrb r3, [r5,#0x1a]
    tst r3, r3
    beq loc_8104CF6
    ldrb r4, [r0,#0xc]
loc_8104CF6:
    add r0, r4, #0
    pop {r4}
    lsl r0, r0, #1
    ldrsh r0, [r2,r0]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    mov r0, #0x26 
    strh r0, [r7,#0xe]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r2, #0x1e
    cmp r6, #0x26 
    beq loc_8104D14
    ldr r0, [r4,#0x34]
    ldrh r2, [r0,#0x24]
loc_8104D14:
    strh r2, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
off_8104D1C:    .word dword_8104D28
off_8104D20:    .word off_8104D2C
off_8104D24:    .word dword_8104D30
dword_8104D28:    .word 0x262026
off_8104D2C:    .word 0x100
dword_8104D30:    .word 0x10000
// end of function sub_8104C94

loc_8104D34:
    push {lr}
    ldr r0, [pc, #0x8104d44-0x8104d36-2] // off_8104D48
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8104D44:    .word off_8104D48
off_8104D48:    .word sub_8104D54+1
.thumb
sub_8104D4C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8104D4C

.thumb
sub_8104D54:
    push {lr}
    ldr r0, [pc, #0x8104d64-0x8104d56-2] // off_8104D68
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8104D64:    .word off_8104D68
off_8104D68:    .word loc_8104D6C+1
// end of function sub_8104D54

loc_8104D6C:
    push {lr}
    ldrb r4, [r5,#0x18]
    cmp r4, #0x20 
    bne loc_8104DA0
    .word 0x6B404650
    .word 0x29078C81, 0x4651DD3E, 0x8C8A6B49, 0x42828AA8
    .word 0x8C89D00A
    cmp r1, #7
    ble locret_8104DFC
    strh r2, [r5,#0x14]
    mov r0, #0
    sub r1, #7
    ble loc_8104DA0
    mov r0, #0x5e 
    lsl r0, r0, #0x10
    svc 6
    str r0, [r5,#0x10]
loc_8104DA0:
    mov r6, r10
    ldr r6, [r6,#0x34]
    .word 0x8AA95B30
    .word 0x42883907
    .word 0x235ED101
    .word 0x692BE002, 0xC1B4343, 0x6B404650, 0x7EA92600, 0xD0034209
    .word 0x7B427B06
    .word 0xD00642B2
    .word 0xC97C81
    .word 0x7668EA
    ldrsh r0, [r2,r6]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r7,#0xc]
    ldr r1, [pc, #0x8104e04-0x8104ddc-4] // =0xFF
    cmp r0, r1
    blt loc_8104DE4
    mov r0, #0xff
loc_8104DE4:
    lsl r0, r0, #0x10
    ldrb r1, [r7,#0xe]
    add r1, r1, r3
    orr r0, r1
    ldr r1, [pc, #0x8104e00-0x8104dec-4] // =0xB001
    mov r2, #3
    lsl r2, r2, #0xa
    orr r1, r2
    ldrb r2, [r7,#0xa]
    mov r3, #0
    bl sub_8025BD8
locret_8104DFC:
    pop {pc}
    .byte 0, 0
dword_8104E00:    .word 0xB001
off_8104E04:    .word 0x100
off_8104E08:    .word off_8104E0C
off_8104E0C:    .word off_8104E18
    .word dword_8104E24
    .word off_8104E30
off_8104E18:    .word dword_8104C40+0xC
    .word dword_8104C40+0xC
    .word dword_8104C40+0xC
dword_8104E24:    .word 0x8104C52, 0x8104C52, 0x8104C52
off_8104E30:    .word dword_8104C40
dword_8104E34:    .word 0x8104C42, 0x8104C46, 0x20FF58, 0x20FFF0, 0x20FF60
dword_8104E48:    .word 0x20FFF8
.thumb
sub_8104E4C:
    push {r1}
    mov r0, #0x26 
    mov r0, #0x26 
    cmp r6, #0x2c 
    cmp r6, #0x2c 
    .hword 0x0 // mov r0, r0  // <mkdata>
loc_8104E58:
    push {lr}
    add r7, r5, #0
loc_8104E5C:
    add r7, #0x20 
    ldr r0, [pc, #0x8104e6c-0x8104e5e-2] // off_8104E70
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8104E6C:    .word off_8104E70
off_8104E70:    .word loc_8104E7C+1
    .word loc_8104EF0+1
off_8104E78:    .word sub_8105004+1
// end of function sub_8104E4C

loc_8104E7C:
    push {lr}
    ldr r0, [pc, #0x8104e8c-0x8104e7e-2] // off_8104E90
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
dword_8104E84:    .word 0x46FE5840
    bx r0
    pop {pc}
off_8104E8C:    .word off_8104E90
off_8104E90:    .word loc_8104E9C+1
    .word loc_8104E9C+1
off_8104E98:    .word loc_8104EC8+1
loc_8104E9C:
    push {lr}
    mov r0, #2
    strh r0, [r7,#0xa]
    ldr r1, [pc, #0x8104eec-0x8104ea2-2] // sub_8104E4C
    ldrh r0, [r1]
    strh r0, [r5,#0x10]
    ldr r1, [pc, #0x8104ffc-0x8104ea8-4] // =0x8104E4E
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    strb r0, [r5,#0xc]
    ldr r1, [pc, #0x8105000-0x8104eb0-4] // =0x8104E52
    ldrb r0, [r5,#4]
dword_8104EB4:    .word 0x73685C08
dword_8104EB8:    .word 0x72282004
dword_8104EBC:    .word 0x82A82000
    bl loc_8104F10
    pop {pc}
    .balign 4, 0x00
loc_8104EC8:
    push {lr}
    mov r0, #2
    strh r0, [r7,#0xa]
    ldr r1, [pc, #0x8104eec-0x8104ece-2] // sub_8104E4C
    ldrh r0, [r1]
    strh r0, [r5,#0x10]
    ldrb r0, [r5,#5]
    tst r0, r0
dword_8104ED8:    .word 0x2000D002
dword_8104EDC:    .word 0x73E873A8
dword_8104EE0:    .word 0x72282004
    bl loc_8104EF0
    pop {pc}
    .balign 4, 0x00
off_8104EEC:    .word sub_8104E4C
loc_8104EF0:
    push {lr}
    ldr r0, [pc, #0x8104f00-0x8104ef2-2] // off_8104F04
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8104F00:    .word off_8104F04
off_8104F04:    .word loc_8104F10+1
    .word loc_8104F10+1
    .word dword_8104F74+1
loc_8104F10:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x34]
    ldrb r1, [r4,#0x12]
    lsl r1, r1, #3
    ldr r2, [pc, #0x8104ff8-0x8104f1a-2] // dword_8104E34+8
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    add r2, r2, r3
    mov r0, #0
    ldrsh r0, [r2,r0]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrb r0, [r5,#0xd]
    ldrh r0, [r4,r0]
    ldrb r3, [r5,#0xc]
    ldrh r1, [r4,r3]
    sub r0, r0, r1
    .word 0x4A300100
    .word 0x9B792B, 0x210218D2
    .word 0x18405E51
    .word 0x465181F8, 0x7C496B49, 0x42082004, 0x4651D10F
    .word 0x7D496B49
    .word 0x42082008, 0x210CD109, 0x28005E78, 0x89F9DB05, 0x23008AAA
    .word 0xFA42F733
    .word 0xBD0082AA
dword_8104F74:    .word 0x7968B500
    .word 0xD1024200
    mov r0, #0
    strb r0, [r5,#0xf]
    b locret_8104FF4
    mov r4, r10
    ldr r4, [r4,#0x34]
    ldrb r1, [r4,#0x12]
    lsl r1, r1, #3
    ldr r2, [pc, #0x8104ff8-0x8104f8a-2] // dword_8104E34+8
    ldrb r3, [r5,#6]
    lsl r3, r3, #2
    add r2, r2, r3
    mov r0, #0
    ldrsh r0, [r2,r0]
    add r0, #4
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrb r0, [r5,#0xf]
    tst r0, r0
    bne loc_8104FB8
    ldr r1, [pc, #0x8104ffc-0x8104fa2-2] // =0x8104E4E
    ldrb r0, [r5,#6]
    ldrb r0, [r1,r0]
    strb r0, [r5,#0xc]
    ldr r1, [pc, #0x8105000-0x8104faa-2] // =0x8104E52
    ldrb r0, [r5,#6]
    ldrb r0, [r1,r0]
    ldrh r0, [r4,r0]
    strh r0, [r5,#0x12]
    mov r0, #1
    strb r0, [r5,#0xf]
loc_8104FB8:
    ldrh r0, [r5,#0x12]
    ldrb r3, [r5,#0xc]
    ldrh r1, [r4,r3]
    sub r0, r0, r1
    blt locret_8104FF4
    cmp r0, #7
    bge locret_8104FF4
    lsl r0, r0, #4
    ldr r2, [pc, #0x8104ff8-0x8104fc8-4] // dword_8104E34+8
    ldrb r3, [r5,#6]
    lsl r3, r3, #2
    add r2, r2, r3
    mov r1, #2
    ldrsh r1, [r2,r1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    mov r1, #2
    and r0, r1
    beq locret_8104FF4
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r1, [r1,#0x11]
    mov r0, #4
    tst r0, r1
    bne locret_8104FF4
    bl sub_810500C
locret_8104FF4:
    pop {pc}
    .balign 4, 0x00
off_8104FF8:    .word dword_8104E34+8
dword_8104FFC:    .word 0x8104E4E
dword_8105000:    .word 0x8104E52
.thumb
sub_8105004:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8105004

.thumb
sub_810500C:
    push {lr}
    ldrh r0, [r7,#0xc]
    ldr r1, [pc, #0x81050ac-0x8105010-4] // =0xFF
    cmp r0, r1
    blt loc_8105018
    mov r0, #0xff
loc_8105018:
    lsl r0, r0, #0x10
    ldrh r1, [r7,#0xe]
    orr r0, r1
    ldrh r1, [r5,#0x10]
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    push {r0}
    bl sub_8025BD8
// end of function sub_810500C

    pop {r0}
    ldrh r0, [r7,#0xc]
    add r0, #8
    ldr r1, [pc, #0x81050ac-0x8105036-2] // =0xFF
    cmp r0, r1
    blt loc_810503E
    mov r0, #0xff
loc_810503E:
    lsl r0, r0, #0x10
    ldrh r1, [r7,#0xe]
    orr r0, r1
    ldrh r1, [r5,#0x10]
    add r1, #1
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
    ldrh r0, [r7,#0xc]
    ldr r1, [pc, #0x81050ac-0x8105058-4] // =0xFF
    cmp r0, r1
    blt loc_8105060
    mov r0, #0xff
loc_8105060:
    lsl r0, r0, #0x10
    ldrh r1, [r7,#0xe]
    add r1, #8
    orr r0, r1
    ldrh r1, [r5,#0x10]
    add r1, #2
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    push {r0}
    bl sub_8025BD8
    pop {r0}
    ldrh r0, [r7,#0xc]
    add r0, #8
    ldr r1, [pc, #0x81050ac-0x8105082-2] // =0xFF
    cmp r0, r1
    blt loc_810508A
    mov r0, #0xff
loc_810508A:
    lsl r0, r0, #0x10
    ldrh r1, [r7,#0xe]
    add r1, #8
    orr r0, r1
    ldrh r1, [r5,#0x10]
    add r1, #3
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    push {r0}
    bl sub_8025BD8
    pop {r0}
    pop {pc}
    .balign 4, 0x00
off_81050AC:    .word 0x100
loc_81050B0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81050c4-0x81050b6-2] // off_81050C8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81050C4:    .word off_81050C8
off_81050C8:    .word loc_81050D4+1
    .word loc_8105140+1
    .word sub_810515C+1
loc_81050D4:
    push {lr}
    ldr r0, [pc, #0x81050e4-0x81050d6-2] // off_81050E8
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81050E4:    .word off_81050E8
off_81050E8:    .word sub_81050F0+1
    .word sub_81050F8+1
.thumb
sub_81050F0:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
// end of function sub_81050F0

.thumb
sub_81050F8:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #6
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_81050F8

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810513c-0x810511a-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0x4e 
    strh r0, [r7,#0xc]
    mov r0, #0x80
    strh r0, [r7,#0xe]
    bl loc_8105140
    pop {pc}
    .balign 4, 0x00
off_810513C:    .word 0x200
loc_8105140:
    push {lr}
    ldr r0, [pc, #0x8105150-0x8105142-2] // off_8105154
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8105150:    .word off_8105154
off_8105154:    .word sub_8105164+1
    .word sub_8105290+1
.thumb
sub_810515C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810515C

.thumb
sub_8105164:
    push {lr}
    ldr r0, [pc, #0x8105178-0x8105166-2] // off_810517C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_8105178:    .word off_810517C
off_810517C:    .word sub_8105188+1
    .word sub_81051DC+1
    .word sub_8105228+1
// end of function sub_8105164

.thumb
sub_8105188:
    push {lr}
    mov r1, #0x5b 
    strb r1, [r5,#5]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldr r0, [r0,#0x1c]
    mov r1, #8
    tst r0, r1
    beq loc_81051A0
    mov r1, #0x5f 
    strb r1, [r5,#5]
    b loc_81051C0
loc_81051A0:
    mov r1, #1
    tst r0, r1
    bne loc_81051C0
    mov r1, #0x5c 
    strb r1, [r5,#5]
    mov r1, #0x5b 
    strb r1, [r5,#5]
    bl sub_8031BD4
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#0x15]
    cmp r0, r1
    ble loc_81051C0
    mov r1, #0x5a 
    strb r1, [r5,#5]
loc_81051C0:
    ldrb r1, [r5,#5]
    bl sub_803478C
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
    .word 0x15C0
    .word 0x1640
    .word 0x80
// end of function sub_8105188

.thumb
sub_81051DC:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [r6,#0x1c]
    mov r1, #2
    tst r0, r1
    beq locret_8105216
    ldr r0, [pc, #0x8105288-0x81051ea-2] // byte_2006EC0
    ldrh r1, [r6,#0x14]
    ldrh r2, [r6,#0x18]
    add r1, r1, r2
    ldrh r2, [r6,#0x12]
    sub r2, #1
    sub r2, r2, r1
    ldrb r1, [r0,r2]
    push {r1}
    mov r0, #9
    bl sub_802F628
    mov r1, r10
    ldr r1, [r1,#0x2c]
    str r0, [r1,#0x4c]
    pop {r1}
    ldr r0, [pc, #0x8105218-0x810520a-2] // dword_2028000
    bl sub_804DFA0
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
locret_8105216:
    pop {pc}
off_8105218:    .word dword_2028000
    .word dword_86CDE80
    .word unk_3002800
    .word 0x140
// end of function sub_81051DC

.thumb
sub_8105228:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8105270
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [r6,#0x1c]
    mov r1, #2
    bic r0, r1
    str r0, [r6,#0x1c]
    ldr r0, [pc, #0x8105288-0x810523e-2] // byte_2006EC0
    ldrh r1, [r6,#0x14]
    ldrh r2, [r6,#0x18]
    add r1, r1, r2
    ldrh r2, [r6,#0x12]
    sub r2, #1
    sub r2, r2, r1
    ldrb r1, [r0,r2]
    ldr r2, [pc, #0x8105284-0x810524e-2] // =0x1640
    add r2, r2, r1
    add r0, r2, #0
    bl sub_8024FBC
    push {r5}
    mov r0, #7
    mov r1, #1
    mov r2, #1
    ldr r3, [pc, #0x8105280-0x8105260-4] // dword_86D4980
    mov r4, #0x16
    mov r5, #0x13
    bl sub_8001DDC
    pop {r5}
    mov r0, #0
    strb r0, [r5,#9]
locret_8105270:
    pop {pc}
    .balign 4, 0x00
    .word dword_2028000
    .word 0x6015600, 0x86C6E60
off_8105280:    .word dword_86D4980
off_8105284:    .word 0x1640
off_8105288:    .word byte_2006EC0
    .word 0x2B0
// end of function sub_8105228

.thumb
sub_8105290:
    push {lr}
    ldr r0, [pc, #0x81052a4-0x8105292-2] // off_81052A8
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_81052A4:    .word off_81052A8
off_81052A8:    .word sub_81052B0+1
    .word sub_81052CC+1
// end of function sub_8105290

.thumb
sub_81052B0:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [r6,#0x1c]
    mov r1, #2
    tst r0, r1
    beq locret_81052C8
    mov r1, #0x21 
    strb r1, [r5]
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
locret_81052C8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_81052B0

.thumb
sub_81052CC:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_81052DE
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0
    strb r0, [r5,#9]
locret_81052DE:
    pop {pc}
    .word 0x10FFFC
    .word 0x380024
    .word 0x60004C
    .word 0x880074
    .word 0xB0009C
// end of function sub_81052CC

.thumb
sub_81052F4:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810530c-0x81052fe-2] // off_8105310
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810530C:    .word off_8105310
off_8105310:    .word sub_810531C+1
    .word sub_81053C0+1
    .word sub_81054F8+1
// end of function sub_81052F4

.thumb
sub_810531C:
    push {lr}
    mov r1, #0xa3
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8105328
    mov r1, #0xa1
loc_8105328:
    strb r1, [r5]
    mov r0, #8
    ldr r1, [pc, #0x810538c-0x810532c-4] // unk_2031004
    bl sub_80028E8
    mov r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810531C

    bl sub_8002FC2
    ldr r0, [pc, #0x8105390-0x8105340-4] // loc_81053A0
    bl loc_800301E
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #4
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    ldr r0, [pc, #0x810539c-0x8105358-4] // =0x140
    strh r0, [r7,#8]
    mov r0, #0x26 
    strh r0, [r7,#0xc]
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrh r0, [r6,#0x18]
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#3]
    lsl r0, r0, #1
    ldr r1, [pc, #0x8105394-0x810536c-4] // =0x81052E0
    ldrh r0, [r1,r0]
    strh r0, [r7,#0xe]
    strh r0, [r5,#6]
    mov r0, #1
    strb r0, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0xf]
    mov r0, #0
    strb r0, [r5,#8]
    strb r0, [r5,#0x18]
    bl sub_81053C0
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
off_810538C:    .word unk_2031004
off_8105390:    .word loc_81053A0
dword_8105394:    .word 0x81052E0
    .word 0x0
off_810539C:    .word 0x140
loc_81053A0:
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsr r4, r1, #0x10
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r4, r0, #0x14
    lsl r6, r0, #0x1c
    lsr r0, r1, #4
.thumb
sub_81053C0:
    push {lr}
    ldr r0, [pc, #0x81053d8-0x81053c2-2] // off_81053DC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrh r0, [r5,#6]
// end of function sub_81053C0

    strh r0, [r7,#0xe]
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_81053D8:    .word off_81053DC
off_81053DC:    .word sub_81053E8+1
    .word sub_8105464+1
    .word sub_81054DC+1
.thumb
sub_81053E8:
    push {lr}
    ldrh r0, [r6,#0x18]
    ldrh r1, [r6,#0x1a]
    cmp r0, r1
    beq loc_8105454
    sub r0, r0, r1
    bge loc_810540E
    mov r1, #0
    mvn r0, r0
    cmp r0, #1
    ble loc_8105400
    mov r1, #1
loc_8105400:
    strb r1, [r5,#0x18]
    ldrh r0, [r7,#0xe]
    strh r0, [r5,#6]
    strh r0, [r5,#0x14]
    add r0, #0x14
    strh r0, [r5,#4]
    b loc_8105422
loc_810540E:
    mov r1, #0
    cmp r0, #1
    ble loc_8105416
    mov r1, #1
loc_8105416:
    strb r1, [r5,#0x18]
    ldrh r0, [r7,#0xe]
    strh r0, [r5,#6]
    strh r0, [r5,#0x14]
    sub r0, #0x14
    strh r0, [r5,#4]
loc_8105422:
    mov r3, #4
    ldr r0, [r6,#0x1c]
    orr r0, r3
    str r0, [r6,#0x1c]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xd]
    ldrb r1, [r5,#0x18]
    tst r1, r1
    beq loc_810544A
    bl sub_8002D60
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_8002C70
loc_810544A:
    bl sub_8105530
    bl sub_8105500
    pop {pc}
loc_8105454:
    bl sub_81055BC
    bl sub_8105530
    bl sub_8105500
    pop {pc}
    .balign 4, 0x00
// end of function sub_81053E8

.thumb
sub_8105464:
    push {lr}
    mov r0, #6
    ldrsh r0, [r5,r0]
    mov r1, #4
    ldrsh r1, [r5,r1]
    cmp r0, r1
    beq loc_8105482
    sub r2, r0, r1
    blt loc_810547C
    sub r0, #4
    strh r0, [r5,#6]
    b loc_81054C6
loc_810547C:
    add r0, #4
    strh r0, [r5,#6]
    b loc_81054C6
loc_8105482:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#6]
    ldrb r0, [r5,#3]
    cmp r0, #1
    bne loc_8105498
    mov r0, #0xa3
    ldrh r1, [r6,#0x18]
    tst r1, r1
    bne loc_8105496
    mov r0, #0xa1
loc_8105496:
    strb r0, [r5]
loc_8105498:
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_81055BC
    bl sub_8105530
    bl sub_8105500
    ldrb r1, [r5,#0x18]
    tst r1, r1
    beq loc_81054BC
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_8002C70
    bl sub_8002D9E
loc_81054BC:
    mov r0, #4
    ldr r1, [r6,#0x1c]
    bic r1, r0
    str r1, [r6,#0x1c]
    b locret_81054D8
loc_81054C6:
    bl sub_8105530
    bl sub_8105500
    ldrb r1, [r5,#0x18]
    tst r1, r1
    beq locret_81054D8
    bl sub_81056A8
locret_81054D8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8105464

.thumb
sub_81054DC:
    push {lr}
    mov r0, #0xa3
    ldrh r1, [r6,#0x18]
    tst r1, r1
    bne loc_81054E8
    mov r0, #0xa1
loc_81054E8:
    strb r0, [r5]
    mov r0, #4
    ldr r1, [r6,#0x1c]
    bic r1, r0
    str r1, [r6,#0x1c]
    mov r0, #0
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_81054DC

.thumb
sub_81054F8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81054F8

.thumb
sub_8105500:
    push {lr}
    mov r0, #0x26 
    mov r4, #0
    ldrh r2, [r6,#0x14]
    add r2, #2
    ldrb r3, [r5,#3]
    cmp r2, r3
    bne loc_8105514
    mov r0, #0x2e 
    mov r4, #1
loc_8105514:
    ldrb r1, [r5,#0xb]
    cmp r1, r4
    beq locret_810552E
    ldr r1, [pc, #0x81056cc-0x810551a-2] // =0xFFFFFFFE
    tst r4, r4
    beq loc_8105522
    mov r1, #2
loc_8105522:
    ldrh r2, [r7,#0xc]
    add r2, r2, r1
    strh r2, [r7,#0xc]
    cmp r2, r0
    bne locret_810552E
    strb r4, [r5,#0xb]
locret_810552E:
    pop {pc}
// end of function sub_8105500

.thumb
sub_8105530:
    push {r7,lr}
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt locret_81055B0
    ldrh r0, [r6,#0x12]
    sub r0, #1
    ldrh r1, [r6,#0x18]
    sub r0, r0, r1
    ldrb r1, [r5,#3]
    sub r1, #2
    sub r0, r0, r1
    ldr r4, [pc, #0x81055b4-0x810554a-2] // byte_2006EC0
    add r4, r4, r0
    ldr r0, [pc, #0x81055b8-0x810554e-2] // =0x1640
    ldrb r4, [r4]
    add r0, r0, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_8105594
    bl sub_8002FE4
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq locret_81055B0
    mov r1, #1
    lsl r1, r1, #0x1b
    orr r0, r1
    mov r1, #1
    lsl r1, r1, #0x1d
    orr r0, r1
    mov r1, #1
    lsl r1, r1, #0x1c
    bic r0, r1
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r7, [r7]
    mov r3, #0x1f
    and r7, r3
    cmp r7, #0x10
    bge loc_810558E
    mov r1, #3
    lsl r1, r1, #0x1c
    eor r0, r1
loc_810558E:
    bl sub_8002FD8
    b locret_81055B0
loc_8105594:
    bl sub_8002FE4
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq locret_81055B0
    mov r1, #1
    lsl r1, r1, #0x1b
    bic r0, r1
    mov r1, #3
    lsl r1, r1, #0x1c
    orr r0, r1
    bl sub_8002FD8
locret_81055B0:
    pop {r7,pc}
    .balign 4, 0x00
off_81055B4:    .word byte_2006EC0
off_81055B8:    .word 0x1640
// end of function sub_8105530

.thumb
sub_81055BC:
    push {lr}
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt loc_81055F2
    ldrh r1, [r6,#0x12]
    cmp r0, r1
    bge loc_81055F2
    sub r0, r1, r0
    mov r1, #0xa
    svc 6
    mov r2, #0x1f
    sub r0, r2, r0
    sub r1, r2, r1
    sub r0, #5
    sub r1, #0xc
    mov r3, #1
    lsl r3, r0
    mov r4, #1
    lsl r4, r1
    ldr r0, [pc, #0x81055fc-0x81055e6-2] // =0x7FFFFFF
    bic r0, r3
    bic r0, r4
    bl sub_8002FD8
    b locret_81055FA
loc_81055F2:
    mov r0, #0
    sub r0, #1
    bl sub_8002FD8
locret_81055FA:
    pop {pc}
dword_81055FC:    .word 0x7FFFFFF
    .word LCDControl
    .word 0x80000, 0xF6FDB500, 0x2100FCEB, 0x42883901, 0x79A9D035
    .word 0x40CA4A1A, 0xF6FD4390, 0x796AFCDB, 0x1C133A01, 0x5C884918
    .word 0x49181C02, 0x30005C08, 0xB401D01B, 0x5C884916, 0x491601C0
    .word 0x49161840, 0x1DB79AB, 0x228018C9, 0xF910F6FB, 0x80BC01
    .word 0x58084912, 0x68413008, 0x79AA1840, 0x49100152, 0x22201889
    .word 0xF990F6FB, 0xF6FDE009, 0x2100FCB9, 0x42883901, 0x4903D003
    .word 0xF6FD4308, 0xBD00FCAB, 0x200, 0x3FF, 0x2006EC0
    .word 0x81063B0, 0x81063D2, 0x86E9280, 0x6012D40, 0x8027F8C
    .word 0x3002640
// end of function sub_81055BC

.thumb
sub_81056A8:
    push {lr}
    ldrb r0, [r5,#0x19]
    ldr r1, [pc, #0x81056c0-0x81056ac-4] // dword_81056C4
    ldrb r2, [r1,r0]
    add r0, #1
    strb r0, [r5,#0x19]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
off_81056C0:    .word dword_81056C4
dword_81056C4:    .word 0x80A08060, 0x60
dword_81056CC:    .word 0xFFFFFFFE
// end of function sub_81056A8

loc_81056D0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81056e4-0x81056d6-2] // off_81056E8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81056E4:    .word off_81056E8
off_81056E8:    .word sub_81056F4+1
    .word sub_8105760+1
    .word sub_8105780+1
.thumb
sub_81056F4:
    push {lr}
    bl sub_8105710
// end of function sub_81056F4

    mov r0, #0
    strb r0, [r7,#4]
    mov r2, r10
    ldr r2, [r2,#0x34]
    ldr r4, [pc, #0x8105754-0x8105702-2] // dword_810575C
    ldrh r0, [r4,r3]
    strh r0, [r7,#0xe]
    bl sub_8105760
    .byte 0
    .byte 0xBD
    .byte 0, 0
.thumb
sub_8105710:
    push {r7,lr}
    mov r1, #0xa3
    strb r1, [r5]
    ldr r1, [pc, #0x810574c-0x8105716-2] // unk_202E004
    mov r0, #7
    bl sub_80028E8
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #1
    bl sub_8002E60
    ldr r0, [pc, #0x8105750-0x810573e-2] // dword_8105758
    ldrb r3, [r5,#4]
    lsl r3, r3, #1
    ldrh r0, [r0,r3]
    strh r0, [r7,#8]
    pop {r7,pc}
    .balign 4, 0x00
off_810574C:    .word unk_202E004
off_8105750:    .word dword_8105758
off_8105754:    .word dword_810575C
dword_8105758:    .word 0x1400150
dword_810575C:    .word 0x19001C
// end of function sub_8105710

.thumb
sub_8105760:
    push {lr}
    ldr r0, [pc, #0x8105774-0x8105762-2] // off_8105778
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_8105774:    .word off_8105778
off_8105778:    .word sub_8105788+1
    .word sub_8105814+1
// end of function sub_8105760

.thumb
sub_8105780:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8105780

.thumb
sub_8105788:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    lsl r0, r0, #3
    ldr r2, [pc, #0x8105808-0x8105794-4] // =0xFFFFFFCD
    add r0, r0, r2
    strh r0, [r7,#0xc]
    ldrb r0, [r1,#0x10]
    cmp r0, #0x1e
    bge loc_81057C4
    mov r2, #1
    ldrb r1, [r7,#4]
    cmp r1, r2
    beq loc_81057E4
    push {r0,r2}
    mov r0, #7
    bl sub_802F628
    add r0, #0x20 
    ldr r1, [pc, #0x810580c-0x81057b2-2] // unk_3002760
    ldr r2, [pc, #0x8105810-0x81057b4-4] // =0x20
    bl loc_8000870
    bl sub_8105710
    pop {r0,r2}
    strb r2, [r7,#4]
    b loc_81057E4
loc_81057C4:
    mov r2, #0
    ldrb r1, [r7,#4]
    cmp r1, r2
    beq loc_81057E4
    push {r0,r2}
    mov r0, #7
    bl sub_802F628
    ldr r1, [pc, #0x810580c-0x81057d4-4] // unk_3002760
    ldr r2, [pc, #0x8105810-0x81057d6-2] // =0x20
    bl loc_8000870
    bl sub_8105710
    pop {r0,r2}
    strb r2, [r7,#4]
loc_81057E4:
    mov r1, #0xa
    svc 6
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r0, #3
    lsr r2, r0
    ldr r0, [pc, #0x8105804-0x81057f0-4] // =0x1FFF9400
    bic r0, r2
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r1, #7
    lsr r2, r1
    bic r0, r2
    bl sub_8002FD8
    pop {pc}
dword_8105804:    .word 0x1FFF9400
dword_8105808:    .word 0xFFFFFFCD
off_810580C:    .word unk_3002760
dword_8105810:    .word 0x20
// end of function sub_8105788

.thumb
sub_8105814:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    lsl r0, r0, #3
    ldr r2, [pc, #0x8105854-0x8105820-4] // =0xFFFFFFA8
    add r0, r0, r2
    strh r0, [r7,#0xc]
    mov r0, #0
    ldrb r1, [r1,#0x1b]
    tst r1, r1
    beq loc_810584A
    add r0, r1, #0
    mov r1, #0xa
    svc 6
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r0, #1
    lsr r2, r0
    ldr r0, [pc, #0x8105850-0x810583c-4] // =0x7FFFFFFF
    bic r0, r2
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r1, #0xb
    lsr r2, r1
    bic r0, r2
loc_810584A:
    bl sub_8002FD8
    pop {pc}
dword_8105850:    .word 0x7FFFFFFF
dword_8105854:    .word 0xFFFFFFA8
// end of function sub_8105814

loc_8105858:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810586c-0x810585e-2] // off_8105870
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810586C:    .word off_8105870
off_8105870:    .word loc_810587C+1
    .word loc_810593C+1
    .word sub_8105958+1
loc_810587C:
    push {lr}
    ldr r0, [pc, #0x810588c-0x810587e-2] // off_8105890
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810588C:    .word off_8105890
off_8105890:    .word sub_8105898+1
    .word sub_81058D0+1
.thumb
sub_8105898:
    push {lr}
    bl sub_81058A8
// end of function sub_8105898

    mov r0, #4
    strb r0, [r5,#8]
    bl loc_810593C
    pop {pc}
.thumb
sub_81058A8:
    push {r5,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x81058cc-0x81058b0-4] // dword_86D539C
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_81058A8

    mov r0, #3
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r5,pc}
off_81058CC:    .word dword_86D539C
.thumb
sub_81058D0:
    push {lr}
    mov r4, #0x23 
    ldrb r0, [r5,#5]
    cmp r0, #0x30 
    beq loc_81058F6
    cmp r0, #0x31 
    beq loc_81058F6
    cmp r0, #0x32 
    beq loc_81058F6
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_81058F8
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_81058F8
loc_81058F6:
    mov r4, #1
loc_81058F8:
    strb r4, [r5]
    mov r0, #6
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_81058D0

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8105938-0x8105916-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #2
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x36 
    strh r0, [r7,#0xc]
    mov r0, #0x50 
    strh r0, [r7,#0xe]
    bl loc_810593C
    pop {pc}
    .balign 4, 0x00
off_8105938:    .word 0x200
loc_810593C:
    push {lr}
    ldr r0, [pc, #0x810594c-0x810593e-2] // off_8105950
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810594C:    .word off_8105950
off_8105950:    .word loc_8105960+1
    .word sub_81059A0+1
.thumb
sub_8105958:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8105958

loc_8105960:
    push {lr}
    ldr r0, [pc, #0x8105974-0x8105962-2] // off_8105978
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_81058A8
    pop {pc}
    .balign 4, 0x00
off_8105974:    .word off_8105978
off_8105978:    .word sub_8105980+1
    .word sub_8105990+1
.thumb
sub_8105980:
    push {lr}
    ldrb r1, [r5,#5]
    bl sub_803478C
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_8105980

.thumb
sub_8105990:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_810599E
    mov r0, #8
    strb r0, [r5,#8]
locret_810599E:
    pop {pc}
// end of function sub_8105990

.thumb
sub_81059A0:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_81059AE
    mov r0, #8
    strb r0, [r5,#8]
loc_81059AE:
    bl sub_800283C
// end of function sub_81059A0

    pop {pc}
dword_81059B4:    .word 0x20FF18, 0x200080, 0xB002
loc_81059C0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81059d4-0x81059c6-2] // off_81059D8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81059D4:    .word off_81059D8
off_81059D8:    .word sub_81059E4+1
    .word sub_8105A28+1
    .word sub_8105A98+1
.thumb
sub_81059E4:
    push {lr}
    mov r0, #0
    strh r0, [r7,#0xa]
    ldr r1, [pc, #0x8105a20-0x81059ea-2] // dword_81059B4+8
    ldrh r0, [r1]
    strh r0, [r5,#0x1a]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8105A04
    mov r0, #0
    strh r0, [r5,#0x1e]
    bl sub_8105A28
    pop {pc}
    .balign 4, 0x00
// end of function sub_81059E4

.thumb
sub_8105A04:
    push {lr}
    ldr r2, [pc, #0x8105a24-0x8105a06-2] // loc_3006584
    mov r1, #0
loc_8105A0A:
    mov r3, #0xc
    ldrb r0, [r2,r1]
    add r3, r3, r1
    strb r0, [r5,r3]
    add r3, #7
    strb r0, [r5,r3]
    add r1, #1
    cmp r1, #7
    blt loc_8105A0A
    pop {pc}
    .byte 0, 0
off_8105A20:    .word dword_81059B4+8
dword_8105A24:    .word 0x3006584
// end of function sub_8105A04

.thumb
sub_8105A28:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r1, [r1,#0x11]
    mov r0, #4
    tst r0, r1
    bne locret_8105A92
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r1, [r1,#0x15]
    mov r0, #8
    tst r0, r1
    beq locret_8105A92
    bl sub_8105AA0
    mov r4, r10
    ldr r4, [r4,#0x34]
    ldrb r1, [r4,#0x12]
    cmp r1, #2
    bne loc_8105A56
    mov r3, #1
    strb r3, [r5,#4]
    b loc_8105A5E
loc_8105A56:
    cmp r1, #0x20 
    bne loc_8105A5E
    mov r3, #0
    strb r3, [r5,#4]
loc_8105A5E:
    lsl r1, r1, #3
    ldr r2, [pc, #0x8105a94-0x8105a60-4] // dword_81059B4
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    add r2, r2, r3
    mov r0, #0
    ldrsh r0, [r2,r0]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrb r0, [r4,#0x1a]
    lsl r0, r0, #4
    ldr r2, [pc, #0x8105a94-0x8105a74-4] // dword_81059B4
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    add r2, r2, r3
    mov r1, #2
    ldrsh r1, [r2,r1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    ldrh r0, [r7,#0xc]
    ldrh r1, [r7,#0xe]
    ldrh r2, [r5,#0x1e]
    mov r3, #0
    bl loc_80383F4
    strh r2, [r5,#0x1e]
locret_8105A92:
    pop {pc}
off_8105A94:    .word dword_81059B4
// end of function sub_8105A28

.thumb
sub_8105A98:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8105A98

.thumb
sub_8105AA0:
    push {r7,lr}
    mov r7, r10
    ldr r4, [r7,#4]
    ldr r7, [r7,#0x34]
    ldrh r0, [r4,#4]
    mov r1, #0x40 
    and r1, r0
    beq loc_8105AC6
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    bne loc_8105ABA
    mov r0, #6
    b loc_8105ABC
loc_8105ABA:
    sub r0, #1
loc_8105ABC:
    strb r0, [r7,#0x1a]
    mov r0, #0x7d 
    bl f500_8000558
    b locret_8105B0A
loc_8105AC6:
    mov r1, #0x80
    and r1, r0
    beq loc_8105AE6
    ldrb r0, [r7,#0x1a]
    cmp r0, #5
    ble loc_8105AD6
    mov r0, #0
    b loc_8105AD8
loc_8105AD6:
    add r0, #1
loc_8105AD8:
    strb r0, [r7,#0x1a]
    push {r0}
    mov r0, #0x7d 
    bl f500_8000558
    pop {r0}
    b locret_8105B0A
loc_8105AE6:
    mov r1, #1
    and r1, r0
    beq locret_8105B0A
    mov r0, #0x7e 
    bl f500_8000558
    mov r0, #1
    ldrb r1, [r7,#0x15]
    orr r1, r0
    strb r1, [r7,#0x15]
    ldrb r2, [r5,#4]
    tst r2, r2
    beq loc_8105B06
    bl loc_8105B6C
    b locret_8105B0A
loc_8105B06:
    bl loc_8105C04
locret_8105B0A:
    pop {r7,pc}
    .word dword_201C000
// end of function sub_8105AA0

.thumb
sub_8105B10:
    push {r5,r6,lr}
    mov r3, #7
    mul r3, r2
    add r5, r5, r3
    push {r0,r1,r5,r7}
    ldrb r2, [r7,#0x1a]
    mov r3, #0
loc_8105B1E:
    cmp r2, r3
    beq loc_8105B28
    ldr r7, [pc, #0x8105b68-0x8105b22-2] // loc_3006584
    ldrb r4, [r7,r3]
    strb r4, [r5,#0xc]
loc_8105B28:
    add r5, #1
    add r3, #1
    cmp r3, #7
    blt loc_8105B1E
    pop {r0,r1,r5,r7}
    mov r3, #0xc
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    mov r6, #4
    eor r4, r6
    strb r4, [r3]
    tst r4, r4
    beq loc_8105B4E
    ldr r3, [pc, #0x8105b60-0x8105b44-4] // off_8105B64
    ldr r3, [r3]
    mov lr, pc
    bx r3
    pop {r5,r6,pc}
loc_8105B4E:
    ldr r3, [pc, #0x8105b58-0x8105b4e-2] // off_8105B5C
    ldr r3, [r3]
    mov lr, pc
    bx r3
// end of function sub_8105B10

    pop {r5,r6,pc}
off_8105B58:    .word off_8105B5C
off_8105B5C:    .word loc_300658C+1
off_8105B60:    .word off_8105B64
off_8105B64:    .word loc_3006644+1
dword_8105B68:    .word 0x3006584
loc_8105B6C:
    push {lr}
    push {r0}
    ldrh r0, [r7,#0x24]
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105bc0-0x8105b74-4] // dword_201C000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105bc4-0x8105b7a-2] // off_8105BC8
    ldr r1, [r1,r2]
    mov r2, #1
    strb r2, [r5,#7]
    mov lr, pc
    bx r1
    pop {r0}
    ldrh r1, [r7,#0x24]
    ldr r0, [pc, #0x8105bc0-0x8105b8a-2] // dword_201C000
    mov r2, #1
    bl sub_8105B10
    push {r0}
    ldrh r0, [r7,#0x24]
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105bc0-0x8105b98-4] // dword_201C000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105be4-0x8105b9e-2] // off_8105BE8
    ldr r1, [r1,r2]
    mov lr, pc
    bx r1
    pop {r0}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r1, [r7,#0x1a]
    strb r1, [r0,#2]
    mov r2, #7
    mov r3, #0xc
    add r3, r3, r2
    add r3, r3, r1
    ldrb r1, [r5,r3]
    strb r1, [r0,#3]
    pop {pc}
    .byte 0, 0
off_8105BC0:    .word dword_201C000
off_8105BC4:    .word off_8105BC8
off_8105BC8:    .word sub_8105DB0+1
    .word sub_8105E84+1
    .word sub_8105F54+1
    .word sub_8106010+1
    .word sub_81060C8+1
    .word sub_810622C+1
    .word sub_81062E4+1
off_8105BE4:    .word off_8105BE8
off_8105BE8:    .word sub_8105E48+1
    .word sub_8105F18+1
    .word sub_8105FE0+1
    .word sub_8106098+1
    .word sub_8106140+1
    .word sub_81062B4+1
    .word sub_810636C+1
loc_8105C04:
    push {lr}
    ldrb r2, [r7,#0x11]
    mov r1, #0x80
    tst r2, r1
    beq loc_8105C76
    ldr r0, [pc, #0x8105da0-0x8105c0e-2] // dword_201A000
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r2, [r7,#0x16]
    add r6, r6, r2
    ldrb r2, [r6,#0x1d]
    mov r3, #0x20 
    mul r2, r3
    add r2, r2, r0
    ldrh r6, [r2]
    push {r0}
    mov r0, #0x1e
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105da0-0x8105c28-4] // dword_201A000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105cd0-0x8105c2e-2] // off_8105CD4
    ldr r1, [r1,r2]
    mov r2, #0
    strb r2, [r5,#7]
    mov lr, pc
    bx r1
    pop {r0}
    mov r1, #0x1e
    mov r2, #0
    bl sub_8105B10
    push {r0}
    mov r0, #0x1e
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105da0-0x8105c4a-2] // dword_201A000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105cf0-0x8105c50-4] // off_8105CF4
    ldr r1, [r1,r2]
    mov lr, pc
    bx r1
    pop {r0}
    add r0, r6, #0
    bl sub_8105D10
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r1, [r7,#0x1a]
    strb r1, [r0]
    mov r2, #0
    mov r3, #0xc
    add r3, r3, r2
    add r3, r3, r1
    ldrb r1, [r5,r3]
    strb r1, [r0,#1]
    pop {pc}
loc_8105C76:
    ldrb r2, [r7,#0x1a]
    cmp r2, #5
    bne loc_8105C80
    bl sub_8105D64
loc_8105C80:
    push {r0}
    mov r0, #0x1e
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105da0-0x8105c86-2] // dword_201A000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105cd0-0x8105c8c-4] // off_8105CD4
    ldr r1, [r1,r2]
    mov r2, #0
    strb r2, [r5,#7]
    mov lr, pc
    bx r1
    pop {r0}
    ldr r0, [pc, #0x8105da0-0x8105c9a-2] // dword_201A000
    mov r1, #0x1e
    mov r2, #0
    bl sub_8105B10
    push {r0}
    mov r0, #0x1e
    strh r0, [r5,#0x1c]
    ldr r0, [pc, #0x8105da0-0x8105caa-2] // dword_201A000
    ldrb r2, [r7,#0x1a]
    lsl r2, r2, #2
    ldr r1, [pc, #0x8105cf0-0x8105cb0-4] // off_8105CF4
    ldr r1, [r1,r2]
    mov lr, pc
    bx r1
    pop {r0}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r1, [r7,#0x1a]
    strb r1, [r0]
    mov r2, #0
    mov r3, #0xc
    add r3, r3, r2
    add r3, r3, r1
    ldrb r1, [r5,r3]
    strb r1, [r0,#1]
    pop {pc}
off_8105CD0:    .word off_8105CD4
off_8105CD4:    .word sub_8105DB0+1
    .word sub_8105E84+1
    .word sub_8105F54+1
    .word sub_8106010+1
    .word sub_81060C8+1
    .word sub_8106170+1
    .word sub_81062E4+1
off_8105CF0:    .word off_8105CF4
off_8105CF4:    .word sub_8105E48+1
    .word sub_8105F18+1
    .word sub_8105FE0+1
    .word sub_8106098+1
    .word sub_8106140+1
    .word sub_81061FC+1
    .word sub_810636C+1
.thumb
sub_8105D10:
    push {lr}
    mov r2, #0
loc_8105D14:
    ldr r1, [pc, #0x8105da0-0x8105d14-4] // dword_201A000
    mov r3, #0x20 
    mul r3, r2
    add r1, r1, r3
    ldrh r3, [r1]
    cmp r0, r3
    bne loc_8105D5A
    ldrb r1, [r7,#0x14]
    cmp r1, #7
    bge loc_8105D48
    ldrh r0, [r7,#0x26]
    sub r3, r2, r0
    cmp r1, r3
    beq loc_8105D48
    push {r2,r5}
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r2,r5}
loc_8105D48:
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r7,#0x16]
    add r6, r6, r0
    strb r2, [r6,#0x1d]
    ldrh r0, [r7,#0x26]
    sub r2, r2, r0
    strb r2, [r7,#0x14]
    pop {pc}
loc_8105D5A:
    add r2, #1
    cmp r2, #0x1e
    blt loc_8105D14
    pop {pc}
    .balign 4, 0x00
// end of function sub_8105D10

.thumb
sub_8105D64:
    push {r6,r7,lr}
    mov r4, #0
    ldr r6, [pc, #0x8105d9c-0x8105d68-4] // dword_2027400
    ldr r7, [pc, #0x8105da0-0x8105d6a-2] // dword_201A000
loc_8105D6C:
    mov r2, #0
    lsl r3, r4, #2
    ldrh r0, [r6,r3]
    ldr r1, [pc, #0x8105da8-0x8105d72-2] // =0xFFFF
    cmp r0, r1
    beq locret_8105D98
loc_8105D78:
    ldrh r1, [r7,r2]
    cmp r0, r1
    bne loc_8105D8C
    push {r6}
    ldr r1, [r6,r3]
    lsr r1, r1, #0x10
    add r6, r7, r2
    add r6, #2
    strh r1, [r6,#0x14]
    pop {r6}
loc_8105D8C:
    add r2, #0x20 
    ldr r1, [pc, #0x8105dac-0x8105d8e-2] // =0x3C0
    cmp r2, r1
    bne loc_8105D78
    add r4, #1
    b loc_8105D6C
locret_8105D98:
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8105D9C:    .word dword_2027400
off_8105DA0:    .word dword_201A000
    .word dword_201C000
dword_8105DA8:    .word 0xFFFF
off_8105DAC:    .word 0x3C0
// end of function sub_8105D64

.thumb
sub_8105DB0:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_8105DB4:
    ldr r1, [r0]
    tst r1, r1
    bne loc_8105DDC
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_8105DD8
    ldr r1, [pc, #0x8105e34-0x8105dd6-2] // =0x7FFFFFFF
loc_8105DD8:
    str r1, [r0]
    b loc_8105E26
loc_8105DDC:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0xc]
    tst r3, r3
    pop {r0}
    bne loc_8105E12
    mvn r1, r1
    mov r3, #0x7f
    and r1, r3
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x8105e38-0x8105e06-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0]
    b loc_8105E26
loc_8105E12:
    lsl r2, r2, #7
    mvn r2, r2
    ldr r3, [pc, #0x8105e3c-0x8105e16-2] // =0xFFFFFF40
    and r2, r3
    orr r2, r1
    ldr r1, [pc, #0x8105e40-0x8105e1c-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0]
loc_8105E26:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105DB4
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
dword_8105E34:    .word 0x7FFFFFFF
dword_8105E38:    .word 0xFFFF
dword_8105E3C:    .word 0xFFFFFF40
dword_8105E40:    .word 0xFFFF
    .word 0x1FF
// end of function sub_8105DB0

.thumb
sub_8105E48:
    push {r0,r7,lr}
    mov r7, #0
loc_8105E4C:
    ldr r1, [r0]
    ldr r2, [pc, #0x8105e78-0x8105e4e-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_8105E5A
    mov r1, #0
    str r1, [r0]
    b loc_8105E6A
loc_8105E5A:
    add r4, r1, #0
    ldr r2, [pc, #0x8105e7c-0x8105e5c-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0,#4]
    ldr r2, [pc, #0x8105e80-0x8105e62-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0]
loc_8105E6A:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105E4C
    pop {r0,r7,pc}
    .balign 4, 0x00
dword_8105E78:    .word 0x7FFFFFFF
dword_8105E7C:    .word 0xFFFF0000
dword_8105E80:    .word 0xFFFF
// end of function sub_8105E48

.thumb
sub_8105E84:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_8105E88:
    ldr r1, [r0,#4]
    tst r1, r1
    bne loc_8105EB0
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_8105EAC
    ldr r1, [pc, #0x8105f08-0x8105eaa-2] // =0x7FFFFFFF
loc_8105EAC:
    str r1, [r0,#4]
    b loc_8105EFA
loc_8105EB0:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0xd]
    tst r3, r3
    pop {r0}
    bne loc_8105EE6
    mvn r1, r1
    mov r3, #0x7f
    and r1, r3
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x8105f0c-0x8105eda-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#4]
    b loc_8105EFA
loc_8105EE6:
    lsl r2, r2, #7
    mvn r2, r2
    ldr r3, [pc, #0x8105f10-0x8105eea-2] // =0xFFFFFF40
    and r2, r3
    orr r2, r1
    ldr r1, [pc, #0x8105f0c-0x8105ef0-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#4]
loc_8105EFA:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105E88
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
dword_8105F08:    .word 0x7FFFFFFF
dword_8105F0C:    .word 0xFFFF
dword_8105F10:    .word 0xFFFFFF40
    .word 0x1FF
// end of function sub_8105E84

.thumb
sub_8105F18:
    push {r0,r7,lr}
    mov r7, #0
loc_8105F1C:
    ldr r1, [r0,#4]
    ldr r2, [pc, #0x8105f48-0x8105f1e-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_8105F2A
    mov r1, #0
    str r1, [r0,#4]
    b loc_8105F3A
loc_8105F2A:
    add r4, r1, #0
    ldr r2, [pc, #0x8105f4c-0x8105f2c-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x8105f50-0x8105f32-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#4]
loc_8105F3A:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105F1C
    pop {r0,r7,pc}
    .balign 4, 0x00
dword_8105F48:    .word 0x7FFFFFFF
dword_8105F4C:    .word 0xFFFF0000
dword_8105F50:    .word 0xFFFF
// end of function sub_8105F18

.thumb
sub_8105F54:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_8105F58:
    ldr r1, [r0,#8]
    tst r1, r1
    bne loc_8105F80
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_8105F7C
    ldr r1, [pc, #0x8105fdc-0x8105f7a-2] // =0x7FFFFFFF
loc_8105F7C:
    str r1, [r0,#8]
    b loc_8105FCE
loc_8105F80:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0xe]
    tst r3, r3
    pop {r0}
    bne loc_8105FC0
    ldr r3, [pc, #0x81063a0-0x8105fa0-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x81063a4-0x8105fb4-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#8]
    b loc_8105FCE
loc_8105FC0:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x8105fc4-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#8]
loc_8105FCE:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105F58
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
dword_8105FDC:    .word 0x7FFFFFFF
// end of function sub_8105F54

.thumb
sub_8105FE0:
    push {r0,r7,lr}
    mov r7, #0
loc_8105FE4:
    ldr r1, [r0,#8]
    ldr r2, [pc, #0x81063a8-0x8105fe6-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_8105FF2
    mov r1, #0
    str r1, [r0,#8]
    b loc_8106002
loc_8105FF2:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x8105ff4-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x8105ffa-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#8]
loc_8106002:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8105FE4
    pop {r0,r7,pc}
    .byte 0, 0
// end of function sub_8105FE0

.thumb
sub_8106010:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_8106014:
    ldr r1, [r0,#0xc]
    tst r1, r1
    bne loc_810603C
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_8106038
    ldr r1, [pc, #0x81063a8-0x8106036-2] // =0x7FFFFFFF
loc_8106038:
    str r1, [r0,#0xc]
    b loc_810608A
loc_810603C:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0xf]
    tst r3, r3
    pop {r0}
    bne loc_810607C
    ldr r3, [pc, #0x81063a0-0x810605c-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x81063a4-0x8106070-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0xc]
    b loc_810608A
loc_810607C:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x8106080-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0xc]
loc_810608A:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8106014
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_8106010

.thumb
sub_8106098:
    push {r0,r7,lr}
    mov r7, #0
loc_810609C:
    ldr r1, [r0,#0xc]
    ldr r2, [pc, #0x81063a8-0x810609e-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_81060AA
    mov r1, #0
    str r1, [r0,#0xc]
    b loc_81060BA
loc_81060AA:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x81060ac-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x81060b2-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0xc]
loc_81060BA:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_810609C
    pop {r0,r7,pc}
    .balign 4, 0x00
// end of function sub_8106098

.thumb
sub_81060C8:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_81060CC:
    ldr r1, [r0,#0x10]
    tst r1, r1
    bne loc_81060F4
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_81060F0
    ldr r1, [pc, #0x81063a8-0x81060ee-2] // =0x7FFFFFFF
loc_81060F0:
    str r1, [r0,#0x10]
    b loc_8106134
loc_81060F4:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0x10]
    tst r3, r3
    pop {r0}
    bne loc_8106126
    lsl r2, r2, #7
    orr r2, r1
    mvn r2, r2
    ldr r1, [pc, #0x81063a4-0x810611a-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x10]
    b loc_8106134
loc_8106126:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x810612a-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x10]
loc_8106134:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_81060CC
    pop {r0,r6,r7,pc}
// end of function sub_81060C8

.thumb
sub_8106140:
    push {r0,r7,lr}
    mov r7, #0
loc_8106144:
    ldr r1, [r0,#0x10]
    ldr r2, [pc, #0x81063a8-0x8106146-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_8106152
    mov r1, #0
    str r1, [r0,#0x10]
    b loc_8106162
loc_8106152:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x8106154-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x810615a-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x10]
loc_8106162:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8106144
    pop {r0,r7,pc}
    .byte 0, 0
// end of function sub_8106140

.thumb
sub_8106170:
    push {r0,r6,r7,lr}
    bl sub_8105D64
    ldr r0, [pc, #0x810639c-0x8106176-2] // dword_201A000
    mov r7, #0
loc_810617A:
    ldr r1, [r0,#0x14]
    tst r1, r1
    bne loc_81061A2
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_810619E
    ldr r1, [pc, #0x81063a8-0x810619c-4] // =0x7FFFFFFF
loc_810619E:
    str r1, [r0,#0x14]
    b loc_81061F0
loc_81061A2:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0x11]
    tst r3, r3
    pop {r0}
    bne loc_81061E2
    ldr r3, [pc, #0x81063a0-0x81061c2-2] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x81063a4-0x81061d6-2] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
    b loc_81061F0
loc_81061E2:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x81061e6-2] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
loc_81061F0:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_810617A
    pop {r0,r6,r7,pc}
// end of function sub_8106170

.thumb
sub_81061FC:
    push {r0,r7,lr}
    mov r7, #0
loc_8106200:
    ldr r1, [r0,#0x14]
    ldr r2, [pc, #0x81063a8-0x8106202-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_810620E
    mov r1, #0
    str r1, [r0,#0x14]
    b loc_810621E
loc_810620E:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x8106210-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x8106216-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x14]
loc_810621E:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8106200
    pop {r0,r7,pc}
    .balign 4, 0x00
// end of function sub_81061FC

.thumb
sub_810622C:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_8106230:
    ldr r1, [r0,#0x14]
    tst r1, r1
    bne loc_8106258
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_8106254
    ldr r1, [pc, #0x81063a8-0x8106252-2] // =0x7FFFFFFF
loc_8106254:
    str r1, [r0,#0x14]
    b loc_81062A6
loc_8106258:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0x11]
    tst r3, r3
    pop {r0}
    bne loc_8106298
    ldr r3, [pc, #0x81063a0-0x8106278-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x81063a4-0x810628c-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
    b loc_81062A6
loc_8106298:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x810629c-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x14]
loc_81062A6:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8106230
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_810622C

.thumb
sub_81062B4:
    push {r0,r7,lr}
    mov r7, #0
loc_81062B8:
    ldr r1, [r0,#0x14]
    ldr r2, [pc, #0x81063a8-0x81062ba-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_81062C6
    mov r1, #0
    str r1, [r0,#0x14]
    b loc_81062D6
loc_81062C6:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x81062c8-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x81062ce-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x14]
loc_81062D6:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_81062B8
    pop {r0,r7,pc}
    .balign 4, 0x00
// end of function sub_81062B4

.thumb
sub_81062E4:
    push {r0,r6,r7,lr}
    mov r7, #0
loc_81062E8:
    ldr r1, [r0,#0x18]
    tst r1, r1
    bne loc_8106310
    mov r1, #0
    mov r6, r10
    ldr r6, [r6,#0x34]
    mov r3, #7
    ldrb r2, [r5,#7]
    mul r3, r2
    mov r2, #0xc
    add r3, r3, r2
    ldrb r2, [r6,#0x1a]
    add r3, r3, r2
    add r3, r3, r5
    ldrb r4, [r3]
    tst r4, r4
    beq loc_810630C
    ldr r1, [pc, #0x81063a8-0x810630a-2] // =0x7FFFFFFF
loc_810630C:
    str r1, [r0,#0x18]
    b loc_810635E
loc_8106310:
    add r4, r1, #0
    lsr r4, r4, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r1, r1, #9
    ldr r2, [r0]
    lsr r2, r2, #0x10
    push {r0}
    mov r3, #7
    ldrb r0, [r5,#7]
    mul r3, r0
    add r3, r3, r5
    ldrb r3, [r3,#0x12]
    tst r3, r3
    pop {r0}
    bne loc_8106350
    ldr r3, [pc, #0x81063a0-0x8106330-4] // =0x1FC
    sub r2, r2, r3
    mvn r2, r2
    add r2, #1
    lsl r2, r2, #6
    mov r3, #0x3f 
    sub r1, r1, r3
    mvn r1, r1
    add r1, #1
    orr r2, r1
    ldr r3, [pc, #0x81063a4-0x8106344-4] // =0xFFFF
    and r2, r3
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x18]
    b loc_810635E
loc_8106350:
    lsl r2, r2, #7
    orr r2, r1
    ldr r1, [pc, #0x81063a4-0x8106354-4] // =0xFFFF
    and r2, r1
    lsl r4, r4, #0x10
    orr r4, r2
    str r4, [r0,#0x18]
loc_810635E:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_81062E8
    pop {r0,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_81062E4

.thumb
sub_810636C:
    push {r0,r7,lr}
    mov r7, #0
loc_8106370:
    ldr r1, [r0,#0x18]
    ldr r2, [pc, #0x81063a8-0x8106372-2] // =0x7FFFFFFF
    cmp r1, r2
    bne loc_810637E
    mov r1, #0
    str r1, [r0,#0x18]
    b loc_810638E
loc_810637E:
    add r4, r1, #0
    ldr r2, [pc, #0x81063ac-0x8106380-4] // =0xFFFF0000
    and r4, r2
    ldr r1, [r0]
    ldr r2, [pc, #0x81063a4-0x8106386-2] // =0xFFFF
    and r2, r1
    orr r4, r2
    str r4, [r0,#0x18]
loc_810638E:
    add r0, #0x20 
    add r7, #1
    ldrh r1, [r5,#0x1c]
    cmp r7, r1
    blt loc_8106370
    pop {r0,r7,pc}
    .balign 4, 0x00
off_810639C:    .word dword_201A000
dword_81063A0:    .word 0x1FF
dword_81063A4:    .word 0xFFFF
dword_81063A8:    .word 0x7FFFFFFF
dword_81063AC:    .word 0xFFFF0000
dword_81063B0:    .word 0x210005, 0x60000, 0x7070041, 0x270605, 0x5050505
    .word 0x5050505, 0x5050505, 0x2030004, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0
// end of function sub_810636C

loc_81063F4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8106408-0x81063fa-2] // off_810640C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8106408:    .word off_810640C
off_810640C:    .word sub_8106418+1
    .word sub_810647C+1
    .word sub_81064E0+1
.thumb
sub_8106418:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrh r1, [r6,#0x14]
    ldrh r0, [r6,#0x18]
    add r1, r1, r0
    ldrh r0, [r6,#0x12]
    sub r0, #1
    sub r0, r0, r1
    ldr r1, [pc, #0x81064dc-0x810642a-2] // byte_2006EC0
    ldrb r0, [r1,r0]
    mov r2, #0x23 
    ldr r1, [pc, #0x81064d8-0x8106430-4] // dword_81063B0
    ldrb r0, [r1,r0]
    strb r0, [r5,#0xc]
    tst r0, r0
    bne loc_810643C
    mov r2, #0x21 
loc_810643C:
    strb r2, [r5]
    bl sub_8002914
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8106418

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #1
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8106478-0x8106458-4] // =0x1C0
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0x4e 
    strh r0, [r7,#0xc]
    mov r0, #0x30 
    strh r0, [r7,#0xe]
    bl sub_810647C
    pop {pc}
off_8106478:    .word 0x1C0
.thumb
sub_810647C:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrh r1, [r6,#0x14]
    ldrh r0, [r6,#0x18]
    add r1, r1, r0
    ldrh r0, [r6,#0x12]
    sub r0, #1
    bge loc_8106492
    mov r1, #0x21 
    strb r1, [r5]
loc_8106492:
    sub r0, r0, r1
    ldr r1, [pc, #0x81064dc-0x8106494-4] // byte_2006EC0
    ldrb r0, [r1,r0]
    ldr r1, [pc, #0x81064d8-0x8106498-4] // dword_81063B0
    ldrb r0, [r1,r0]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_81064D2
    mov r1, #0x21 
    strb r0, [r5,#0xc]
    tst r0, r0
    beq loc_81064AC
    mov r1, #0x23 
loc_81064AC:
    strb r1, [r5]
    bl sub_8002914
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #1
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
loc_81064D2:
    bl sub_800283C
// end of function sub_810647C

    pop {pc}
off_81064D8:    .word dword_81063B0
off_81064DC:    .word byte_2006EC0
.thumb
sub_81064E0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81064E0

loc_81064E8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81064fc-0x81064ee-2] // off_8106500
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81064FC:    .word off_8106500
off_8106500:    .word sub_810650C+1
    .word loc_8106654+1
    .word sub_8106874+1
.thumb
sub_810650C:
    push {lr}
    mov r1, #0x43 
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_8106518
    mov r1, #0x23 
loc_8106518:
    strb r1, [r5]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x81065a0-0x810651c-4] // asc_81065E0
    ldrb r0, [r1,r0]
    bl sub_80028E8
    ldrb r0, [r5,#5]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810650C

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_8106554
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_8106548
    lsl r0, r0, #2
    ldr r1, [pc, #0x81065b0-0x8106540-4] // off_81065CC
    ldr r0, [r1,r0]
    bl loc_800301E
loc_8106548:
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x81065ac-0x810654c-4] // dword_81065B8
    ldr r0, [r1,r0]
    bl sub_8002FD8
loc_8106554:
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x81065a4-0x8106556-2] // asc_81065E0
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x81066e8-0x8106568-4] // off_81066EC
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x81065a8-0x810656e-2] // asc_81065E0
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0xff
    lsl r1, r0, #8
    orr r0, r1
    strh r0, [r5,#0xe]
    strh r0, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    mov r0, #0x36 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    bl loc_8106654
    pop {pc}
    .balign 4, 0x00
    .word dword_81065F4
off_81065A0:    .word asc_81065E0
dword_81065A4:    .word 0x81065E5
dword_81065A8:    .word 0x81065EA
off_81065AC:    .word dword_81065B8
off_81065B0:    .word off_81065CC
    .word 0x1E000000
dword_81065B8:    .word 0x0
    .word 0x7E000000, 0xA0000000, 0xDE000000, 0x401004
off_81065CC:    .word dword_81065F4
    .word dword_81065F4
    .word dword_8106614
    .word dword_8106634
    .word dword_81065F4
asc_81065E0:    .byte 0x9, 0xA
    .byte 0xA, 0xA
    .byte 0xA, 0x20
    .byte 0x20, 0x20
    .byte 0x20, 0x20
    .byte 0x20, 0x0
    .word 0x1800180, 0xB00180
dword_81065F4:    .word 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8106614:    .word 0x4040404, 0x40404, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8106634:    .word 0x30303, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
loc_8106654:
    push {lr}
    ldr r0, [pc, #0x8106664-0x8106656-2] // off_8106668
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8106664:    .word off_8106668
off_8106668:    .word sub_810667C+1
    .word loc_81066D4+1
    .word loc_81066D4+1
    .word loc_81066D4+1
    .word sub_8106804+1
.thumb
sub_810667C:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    mov r1, #0x10
    cmp r0, r1
    blt loc_81066AA
    mov r2, #0
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_81066A0
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0xe]
loc_81066A0:
    bl sub_810687C
    bl sub_8106B4C
    b loc_81066C6
loc_81066AA:
    mov r2, #1
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_81066BE
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0x10]
loc_81066BE:
    bl sub_81068A0
    bl sub_8106B4C
loc_81066C6:
    ldr r0, [r5,#0x14]
    tst r0, r0
    beq loc_81066CC
loc_81066CC:
    bl sub_800283C
// end of function sub_810667C

    pop {pc}
    .balign 4, 0x00
loc_81066D4:
    push {lr}
    ldr r0, [pc, #0x81066e8-0x81066d6-2] // off_81066EC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_81066E8:    .word off_81066EC
off_81066EC:    .word sub_810678C+1
    .word sub_81066F8+1
    .word sub_810673C+1
.thumb
sub_81066F8:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    mov r1, #0x10
    cmp r0, r1
    blt loc_8106712
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106734-0x810670a-2] // =0xFFFFFF36
    add r0, r0, r2
    strh r0, [r7,#0xc]
    b loc_810671A
loc_8106712:
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106738-0x8106714-4] // =0xB1
    add r0, r0, r2
    strh r0, [r7,#0xc]
loc_810671A:
    mov r0, #0x90
    strb r0, [r5,#6]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
dword_8106734:    .word 0xFFFFFF36
dword_8106738:    .word 0xB2
// end of function sub_81066F8

.thumb
sub_810673C:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    mov r1, #0x10
    cmp r0, r1
    blt loc_8106756
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106784-0x810674e-2] // =0xFFFFFF36
    add r0, r0, r2
    strh r0, [r7,#0xc]
    b loc_810675E
loc_8106756:
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106788-0x8106758-4] // =0xB1
    add r0, r0, r2
    strh r0, [r7,#0xc]
loc_810675E:
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_8106776
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_8106776:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
dword_8106784:    .word 0xFFFFFF36
dword_8106788:    .word 0xB2
// end of function sub_810673C

.thumb
sub_810678C:
    push {lr}
    mov r2, #0x43 
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r0, [r1,#0x15]
    mov r3, #0x10
    tst r0, r3
    beq loc_810679E
    mov r2, #1
loc_810679E:
    strb r2, [r5]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    mov r1, #0x10
    cmp r0, r1
    blt loc_81067D0
    mov r2, #0
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_81067BE
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0xe]
loc_81067BE:
    lsl r0, r0, #3
    ldr r2, [pc, #0x81067fc-0x81067c0-4] // =0xFFFFFF36
    add r0, r0, r2
    strh r0, [r7,#0xc]
    mov r7, #0x2c 
    mov r4, #0xe
    bl sub_81068C4
    b loc_81067F4
loc_81067D0:
    mov r2, #1
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_81067E4
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0x10]
loc_81067E4:
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106800-0x81067e6-2] // =0xB1
    add r0, r0, r2
    strh r0, [r7,#0xc]
    mov r7, #0x2e 
    mov r4, #0x10
    bl sub_81068C4
loc_81067F4:
    bl sub_800283C
// end of function sub_810678C

    pop {pc}
    .balign 4, 0x00
dword_81067FC:    .word 0xFFFFFF36
dword_8106800:    .word 0xB2
.thumb
sub_8106804:
    push {lr}
    mov r2, #0x43 
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrb r0, [r1,#0x15]
    mov r3, #0x10
    tst r0, r3
    beq loc_8106816
    mov r2, #1
loc_8106816:
    strb r2, [r5]
    mov r1, r10
    ldr r1, [r1,#0x34]
    mov r6, #0x12
    ldrsb r0, [r1,r6]
    mov r1, #0x10
    cmp r0, r1
    blt loc_8106844
    mov r2, #0
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_810683A
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0xe]
loc_810683A:
    lsl r0, r0, #3
    ldr r2, [pc, #0x810686c-0x810683c-4] // =0xFFFFFF36
    add r0, r0, r2
    strh r0, [r7,#0xc]
    b loc_8106860
loc_8106844:
    mov r2, #1
    strb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_8106858
    strb r2, [r5,#0xd]
    mov r2, #0xff
    lsl r3, r2, #8
    orr r2, r3
    strh r2, [r5,#0x10]
loc_8106858:
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106870-0x810685a-2] // =0xB1
    add r0, r0, r2
    strh r0, [r7,#0xc]
loc_8106860:
    ldr r0, [r5,#0x14]
    tst r0, r0
    beq loc_8106866
loc_8106866:
    bl sub_800283C
// end of function sub_8106804

    pop {pc}
dword_810686C:    .word 0xFFFFFF36
dword_8106870:    .word 0xB2
.thumb
sub_8106874:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8106874

.thumb
sub_810687C:
    push {r5,lr}
    lsl r0, r0, #3
    ldr r2, [pc, #0x8106898-0x8106880-4] // =0xFFFFFF36
    add r0, r0, r2
    strh r0, [r7,#0xc]
    push {r7}
    mov r7, #0x2c 
    mov r4, #0xe
    ldr r6, [pc, #0x810689c-0x810688c-4] // dword_201A000
    bl sub_8106908
    pop {r7}
    pop {r5,pc}
    .balign 4, 0x00
dword_8106898:    .word 0xFFFFFF36
off_810689C:    .word dword_201A000
// end of function sub_810687C

.thumb
sub_81068A0:
    push {lr}
    lsl r0, r0, #3
    ldr r2, [pc, #0x81068bc-0x81068a4-4] // =0xB1
    add r0, r0, r2
    strh r0, [r7,#0xc]
    push {r7}
    mov r7, #0x2e 
    mov r4, #0x10
    ldr r6, [pc, #0x81068c0-0x81068b0-4] // dword_201C000
    bl sub_8106908
    pop {r7}
    pop {pc}
    .balign 4, 0x00
dword_81068BC:    .word 0xB2
off_81068C0:    .word dword_201C000
// end of function sub_81068A0

.thumb
sub_81068C4:
    push {r7,lr}
    ldrb r0, [r5,#4]
    cmp r0, #2
    bne locret_81068EC
    ldrh r3, [r6,r7]
    strh r3, [r5,r4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x81068f4-0x81068d2-2] // dword_81068F8
    ldr r2, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldr r0, [r0,#0x48]
    ldr r1, [pc, #0x81068f0-0x81068dc-4] // =0x1E000000
    add r3, r1, #0
    lsl r1, r0
    and r3, r1
    orr r2, r3
    add r0, r2, #0
    bl sub_8002FD8
locret_81068EC:
    pop {r7,pc}
    .byte 0, 0
dword_81068F0:    .word 0x1E000000
off_81068F4:    .word dword_81068F8
dword_81068F8:    .word 0x0
    .word 0x7E000000, 0xA0000000, 0xDE000000
// end of function sub_81068C4

.thumb
sub_8106908:
    push {r5,lr}
    mov r1, r9
    push {r1}
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrh r0, [r1,r7]
    mov r1, #0x20 
    mul r0, r1
    add r1, r6, #0
    add r1, r1, r0
    ldr r7, [r1]
    lsl r1, r7, #0x10
    lsr r1, r1, #0x10
    add r2, r1, #0
    ldr r0, [pc, #0x8106be8-0x8106924-4] // =0x1FC
    and r2, r0
    strh r2, [r5,#0x12]
    push {r1}
    lsr r1, r1, #9
    bl sub_8106BA0
    pop {r1}
    ldrh r0, [r5,r4]
    cmp r0, r1
    bne loc_810693C
    b loc_8106A48
loc_810693C:
    strh r1, [r5,r4]
    tst r1, r1
    bne loc_8106954
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x15]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r0,#0x15]
    mov r0, #0
    str r0, [r5,#0x14]
    b loc_8106A48
loc_8106954:
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r1, [r0,#0x15]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r0,#0x15]
    lsl r0, r7, #0x17
    lsr r0, r0, #0x17
    push {r0,r1}
    mov r1, #0
    bl sub_8031660
    add r6, r0, #0
    mov r9, r1
    pop {r0,r1}
    bl sub_8106AC4
    bl sub_8019010
    ldr r1, [r0,#0x24]
    tst r1, r1
    beq loc_8106A48
    ldr r2, [r0,#0x28]
    bl sub_8106A50
    push {r0-r2}
    add r0, r2, #0
    ldr r1, [pc, #0x8106a88-0x810698a-2] // unk_3002700
    ldr r2, [pc, #0x8106a8c-0x810698c-4] // =0x40
    bl f900_800098C
    pop {r0-r2}
    push {r0-r2}
    ldr r0, [pc, #0x8106aa0-0x8106996-2] // loc_8745CB8
    ldr r1, [pc, #0x8106aa4-0x8106998-4] // unk_30026C0
    ldr r2, [pc, #0x8106aa8-0x810699a-2] // =0x40
    bl f900_800098C
    pop {r0-r2}
    push {r0-r2}
    ldr r0, [pc, #0x8106aac-0x81069a4-4] // dword_8707A80
    ldr r1, [pc, #0x8106ab0-0x81069a6-2] // unk_30026A0
    ldr r2, [pc, #0x8106ab4-0x81069a8-4] // =0x20
    bl f900_800098C
    pop {r0-r2}
    push {r0}
    lsl r0, r7, #0x10
    lsr r0, r0, #0x19
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x8106a90-0x81069ba-2] // dword_8706800
    add r0, r0, r1
    ldr r1, [pc, #0x8106a94-0x81069be-2] // =0x6013800
    mov r2, #0x40 
    bl loc_8000870
    pop {r0}
    push {r0}
    ldrb r1, [r0,#9]
    mov r2, #0x12
    and r1, r2
    add r5, r1, #0
    ldrb r0, [r0,#7]
    cmp r0, #0xd
    blt loc_81069DA
    mov r0, #0xc
loc_81069DA:
    mov r1, #0x80
    mul r0, r1
    ldr r1, [pc, #0x8106a98-0x81069de-2] // unk_8706F00
    add r0, r0, r1
    ldr r1, [pc, #0x8106a9c-0x81069e2-2] // =0x6013840
    mov r2, #0x80
    bl loc_8000870
    pop {r0}
    add r0, r5, #0
    tst r0, r0
    bne loc_81069F6
    mov r6, #0
    b loc_8106A42
loc_81069F6:
    mov r1, #0x10
    tst r0, r1
    bne loc_8106A04
    mov r1, r9
    tst r1, r1
    bne loc_8106A04
    b loc_8106A0E
loc_8106A04:
    mov r4, #0xaa
    lsl r4, r4, #4
    add r4, #0xa
    mov r6, #3
    b loc_8106A1C
loc_8106A0E:
    add r0, r6, #0
    bl fA00_8000A30
    add r4, r0, #0
    bl fA00_8000A8C
    add r6, r0, #0
loc_8106A1C:
    ldr r1, [pc, #0x8106abc-0x8106a1c-4] // =0x6013980
    add r3, r6, #0
loc_8106A20:
    mov r0, #0xf
    and r0, r4
    lsr r4, r4, #4
    mov r2, #0x40 
    mul r0, r2
    ldr r2, [pc, #0x8106ab8-0x8106a2a-2] // unk_8707580
    add r0, r0, r2
    mov r2, #0x40 
    push {r3}
    bl loc_8000870
    pop {r3}
    sub r1, #0x40 
    sub r3, #1
    bne loc_8106A20
    b loc_8106A42
    mov r6, #0
loc_8106A42:
    mov r5, r10
    ldr r5, [r5,#0x34]
    str r6, [r5,#0x48]
loc_8106A48:
    pop {r1}
    mov r9, r1
    pop {r5,pc}
    .byte 0, 0
// end of function sub_8106908

.thumb
sub_8106A50:
    push {r0-r2,r6,lr}
    mov r6, #0
    add r0, r1, #0
    ldr r1, [pc, #0x8106a7c-0x8106a56-2] // =0x6013000
loc_8106A58:
    push {r0,r1}
    ldr r2, [pc, #0x8106a80-0x8106a5a-2] // =0xE0
    bl loc_8000874
    pop {r0,r1}
    mov r4, #0xe0
    add r0, r0, r4
    ldr r2, [pc, #0x8106ac0-0x8106a66-2] // =0xFF
    add r1, r1, r2
    add r6, #1
    cmp r6, #6
    blt loc_8106A58
    pop {r0-r2,r6,pc}
    .balign 4, 0x00
    .word 0xFFFFFF36, 0x201A000
dword_8106A7C:    .word 0x6013000
off_8106A80:    .word 0xE0
    .word 0x600
off_8106A88:    .word unk_3002700
off_8106A8C:    .word 0x40
off_8106A90:    .word dword_8706800
dword_8106A94:    .word 0x6013800
off_8106A98:    .word unk_8706F00
dword_8106A9C:    .word 0x6013840
off_8106AA0:    .word loc_8745CB8
off_8106AA4:    .word unk_30026C0
off_8106AA8:    .word 0x40
off_8106AAC:    .word dword_8707A80
off_8106AB0:    .word unk_30026A0
dword_8106AB4:    .word 0x20
off_8106AB8:    .word unk_8707580
dword_8106ABC:    .word 0x6013980
off_8106AC0:    .word 0x100
// end of function sub_8106A50

.thumb
sub_8106AC4:
    push {r0-r2,r6,r7,lr}
    add r7, r0, #0
    ldr r0, [pc, #0x8106b34-0x8106ac8-4] // dword_8749F30
    cmp r7, #0xff
    ble loc_8106AE2
    ldr r0, [pc, #0x8106b38-0x8106ace-2] // dword_874C670
    ldr r1, [pc, #0x8106afc-0x8106ad0-4] // =0x135
    cmp r7, r1
    blt loc_8106AE2
    sub r1, r7, r1
    lsl r1, r1, #2
    ldr r0, [pc, #0x8106b00-0x8106ada-2] // off_8106B04
    ldr r0, [r0,r1]
    mov r1, #0
    b loc_8106AE6
loc_8106AE2:
    mov r1, #0xff
    and r1, r7
loc_8106AE6:
    ldr r2, [pc, #0x8106b44-0x8106ae6-2] // unk_2017800
    ldr r3, [pc, #0x8106b3c-0x8106ae8-4] // =0x6011600
    mov r4, #0xa
    mov r5, #3
    ldr r6, [pc, #0x8106b40-0x8106aee-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x68 
    .byte 0x61 
    .byte 0xC7
    .byte 0xBD
    .balign 4, 0x00
dword_8106AFC:    .word 0x137
off_8106B00:    .word off_8106B04
off_8106B04:    .word unk_2000520
    .word unk_200057C
// end of function sub_8106AC4

    push {r5,r7,lr}
    mov r0, r8
    push {r0}
    mov r1, #0
    mov r2, #3
    mov r3, #1
    mov r8, r3
    ldr r3, [r5,#0x14]
    ldrh r4, [r7,#0xc]
    sub r4, #0x24 
    ldrh r5, [r7,#0xe]
    add r5, #0xa
    mov r6, #0xe
    ldr r7, [pc, #0x8106b48-0x8106b26-2] // =0xB0
    bl sub_8053A6C
    pop {r0}
    mov r8, r0
    pop {r5,r7,pc}
    .balign 4, 0x00
off_8106B34:    .word dword_8749F30
off_8106B38:    .word dword_874C670
dword_8106B3C:    .word 0x6011600
off_8106B40:    .word dword_86C6E60
off_8106B44:    .word unk_2017800
off_8106B48:    .word 0xB0
.thumb
sub_8106B4C:
    push {r5,r7,lr}
    ldrh r0, [r5,#0x12]
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #0
    beq loc_8106B8A
    cmp r0, #1
    beq loc_8106B76
    cmp r0, #2
    bne loc_8106B8A
    mov r0, #2
    strb r0, [r7,#4]
    mov r0, #0x10
    bl sub_805411A
    beq locret_8106B9C
    add r1, #0x20 
    mov r0, #2
    strb r0, [r1,#4]
    b locret_8106B9C
loc_8106B76:
    mov r0, #1
    strb r0, [r7,#4]
    mov r0, #0x10
    bl sub_805411A
    beq locret_8106B9C
    add r1, #0x20 
    mov r0, #2
    strb r0, [r1,#4]
    b locret_8106B9C
loc_8106B8A:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x10
    bl sub_805411A
    beq locret_8106B9C
    add r1, #0x20 
    mov r0, #0
    strb r0, [r1,#4]
locret_8106B9C:
    pop {r5,r7,pc}
    .byte 0, 0
// end of function sub_8106B4C

.thumb
sub_8106BA0:
    push {r0-r7,lr}
    add r0, r2, #0
    tst r0, r0
    beq locret_8106BD2
    bl sub_800640C
    beq locret_8106BD2
    ldr r0, [pc, #0x8106bd4-0x8106bae-2] // dword_201A000
    ldr r1, [pc, #0x8106bd8-0x8106bb0-4] // =0x3C0
    mov r2, #0
    bl f900_80009DC
    ldr r0, [pc, #0x8106be0-0x8106bb8-4] // dword_201C000
    ldr r1, [pc, #0x8106be4-0x8106bba-2] // =0xF00
    mov r2, #0
    bl f900_80009DC
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0
    strb r1, [r0,#0x10]
    ldrb r1, [r0,#0x15]
    mov r2, #1
    orr r1, r2
    strb r1, [r0,#0x15]
locret_8106BD2:
    pop {r0-r7,pc}
off_8106BD4:    .word dword_201A000
off_8106BD8:    .word 0x3C0
    .word dword_201C000
off_8106BE0:    .word dword_201C000
off_8106BE4:    .word 0xF00
dword_8106BE8:    .word 0x1FF
// end of function sub_8106BA0

loc_8106BEC:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8106c00-0x8106bf2-2] // off_8106C04
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8106C00:    .word off_8106C04
off_8106C04:    .word sub_8106C10+1
    .word sub_8106CC4+1
    .word sub_8106D2C+1
.thumb
sub_8106C10:
    push {lr}
    mov r1, #0xa3
    strb r1, [r5]
    ldr r1, [pc, #0x8106c6c-0x8106c16-2] // unk_202E004
    mov r0, #0xb
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8106C10

    bl sub_8002FC2
    ldr r0, [pc, #0x8106ca4-0x8106c2c-4] // =0x6
    bl loc_800301E
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x8106c84-0x8106c42-2] // dword_8106C88
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8106c94-0x8106c4c-4] // byte_8106C98
    ldrh r0, [r0,r1]
    strh r0, [r7,#0xe]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0x42 
    strh r0, [r7,#0xc]
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r0, [r6,#0xc]
    strb r0, [r5,#0xc]
    bl sub_8106CC4
    pop {pc}
    .balign 4, 0x00
off_8106C6C:    .word unk_202E004
    .word 0x0
    .word 0x7E000000, 0xA0000000, 0xDE000000, 0x0
off_8106C84:    .word dword_8106C88
dword_8106C88:    .word 0x350000, 0x9F006A, 0x10900D4
off_8106C94:    .word byte_8106C98
byte_8106C98:    .byte 0x36
    .byte 0x0, 0x47, 0x0
    .byte 0x58
    .byte 0
    .byte 0x69 
    .byte 0
    .byte 0x7A 
    .byte 0
    .hword 0x8B
dword_8106CA4:    .word 0x6
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.thumb
sub_8106CC4:
    push {lr}
    ldr r0, [pc, #0x8106ce8-0x8106cc6-2] // off_8106CEC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    mov r2, #0x42 
// end of function sub_8106CC4

    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r0, [r6,#0xd]
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne loc_8106CE0
    mov r2, #0x3a 
loc_8106CE0:
    strh r2, [r7,#0xc]
    bl sub_800283C
    pop {pc}
off_8106CE8:    .word off_8106CEC
off_8106CEC:    .word sub_8106CF8+1
    .word sub_8106D00+1
    .word sub_8106D10+1
.thumb
sub_8106CF8:
    push {lr}
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_8106CF8

.thumb
sub_8106D00:
    push {lr}
    bl sub_8106D34
// end of function sub_8106D00

    bl sub_8106D9C
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
.thumb
sub_8106D10:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r0, [r6,#0xc]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8106D24
    strb r0, [r5,#0xc]
    bl sub_8106D34
loc_8106D24:
    bl sub_8106D9C
    pop {pc}
    .balign 4, 0x00
// end of function sub_8106D10

.thumb
sub_8106D2C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8106D2C

.thumb
sub_8106D34:
    push {r5-r7,lr}
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8106dc4-0x8106d38-4] // dword_201A000
    ldrb r1, [r1,r0]
    lsl r0, r0, #2
    ldr r2, [pc, #0x8106d7c-0x8106d3e-2] // dword_8106D80
    ldr r3, [r2,r0]
    ldr r2, [pc, #0x8106d60-0x8106d42-2] // off_8106D64
    ldr r2, [r2,r0]
    ldr r0, [pc, #0x8106d58-0x8106d46-2] // dword_87548F4
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8106d5c-0x8106d4c-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xE0
    .byte 0xBD
    .balign 4, 0x00
off_8106D58:    .word dword_87548F4
off_8106D5C:    .word dword_868E224
off_8106D60:    .word off_8106D64
off_8106D64:    .word unk_2016800
    .word dword_2016C00
    .word unk_2017000
    .word unk_2017400
    .word unk_2017800
    .word unk_2017C00
off_8106D7C:    .word dword_8106D80
dword_8106D80:    .word 0x60102C0, 0x6010960, 0x6011000, 0x60116A0, 0x6011D40
    .word 0x60123E0, 0xB0
// end of function sub_8106D34

.thumb
sub_8106D9C:
    push {lr}
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x8106dc4-0x8106da0-4] // dword_201A000
    ldrb r0, [r0,r1]
    cmp r0, #0xb0
    bge loc_8106DAC
    mov r0, #0
    b loc_8106DB8
loc_8106DAC:
    cmp r0, #0xb5
    ble loc_8106DB4
    mov r0, #0
    b loc_8106DB8
loc_8106DB4:
    bl sub_802D3F8
loc_8106DB8:
    lsl r1, r0, #2
    ldr r0, [pc, #0x8106dc8-0x8106dba-2] // dword_8106DCC
    ldr r0, [r0,r1]
    bl sub_8002FD8
    pop {pc}
off_8106DC4:    .word dword_201A000
off_8106DC8:    .word dword_8106DCC
dword_8106DCC:    .word 0xFFFFFFFF, 0xFF000, 0x3F000, 0x5F000, 0x6F000, 0x77000
    .word 0x7B000, 0x7D000, 0x7E000, 0x7F800, 0x4640B5A0, 0x2100B401
    .word 0x23012203, 0x692B4698, 0x3C2489BC, 0x350A89FD, 0x4F08260E, 0xFE2CF74C
    .word 0x4680BC01, 0xBDA0, 0x8749F30, 0x874C670, 0x6011600, 0x8695224
    .word 0x2017800, 0xB0
// end of function sub_8106D9C

loc_8106E34:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x8106e58-0x8106e3a-2] // byte_200A7F0
    ldr r0, [pc, #0x8106e48-0x8106e3c-4] // off_8106E4C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8106E48:    .word off_8106E4C
off_8106E4C:    .word sub_8106E5C+1
    .word sub_8106E9C+1
    .word sub_8106EB2+1
off_8106E58:    .word byte_200A7F0
.thumb
sub_8106E5C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0xc
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8106E5C

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8106e98-0x8106e7e-2] // =0x268
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8106E9C
    pop {pc}
    .balign 4, 0x00
off_8106E98:    .word 0x268
.thumb
sub_8106E9C:
    push {lr}
    mov r0, #0xcc
    strh r0, [r7,#0xc]
    mov r1, #6
    ldrsb r0, [r6,r1]
    strh r0, [r7,#0xe]
    bl sub_8106EBA
    bl sub_800283C
// end of function sub_8106E9C

    pop {pc}
.thumb
sub_8106EB2:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8106EB2

.thumb
sub_8106EBA:
    push {lr}
    ldrb r0, [r6,#2]
    add r0, #1
    lsr r0, r0, #1
    mov r1, #0xa
    svc 6
    mov r2, #0x1f
    sub r0, r2, r0
    sub r1, r2, r1
    sub r0, #4
    sub r1, #0xe
    mov r3, #1
    lsl r3, r0
    mov r4, #1
    lsl r4, r1
    ldr r0, [pc, #0x8106ee4-0x8106ed8-4] // =0xFFFFF00
    bic r0, r3
    bic r0, r4
    bl sub_8002FD8
    pop {pc}
dword_8106EE4:    .word 0xFFFFF00
// end of function sub_8106EBA

loc_8106EE8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x8106f0c-0x8106eee-2] // byte_200A7F0
    ldr r0, [pc, #0x8106efc-0x8106ef0-4] // off_8106F00
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8106EFC:    .word off_8106F00
off_8106F00:    .word sub_8106F10+1
    .word sub_8106F50+1
    .word sub_8106FAC+1
off_8106F0C:    .word byte_200A7F0
.thumb
sub_8106F10:
    push {lr}
    mov r0, #0x21 
    strb r0, [r5]
    mov r0, #0xc
    bl sub_80028E8
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8106F10

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8106f4c-0x8106f32-2] // =0x248
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8106F50
    pop {pc}
    .balign 4, 0x00
off_8106F4C:    .word 0x248
.thumb
sub_8106F50:
    push {lr}
    mov r4, #0x21 
    ldrb r0, [r6,#7]
    sub r0, #1
    blt loc_8106F6A
    strb r0, [r6,#7]
    mov r4, #0x23 
    ldrb r0, [r6,#8]
    add r0, #1
    bl sub_8002DF0
    bl sub_800281C
loc_8106F6A:
    strb r4, [r5]
    ldr r0, [pc, #0x8106f94-0x8106f6c-4] // dword_2006164
    bl sub_80035C0
    ldrb r2, [r6,#8]
    ldr r3, [pc, #0x8106f98-0x8106f74-4] // loc_8106F9C
    ldrsb r3, [r3,r2]
    add r0, r0, r3
    strh r0, [r7,#0xc]
    sub r1, #0x20 
    strh r1, [r7,#0xe]
    ldr r0, [pc, #0x8106fa0-0x8106f80-4] // dword_8106FA4
    ldrb r1, [r6,#0xb]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FD8
    bl sub_800283C
// end of function sub_8106F50

    pop {pc}
    .balign 4, 0x00
off_8106F94:    .word dword_2006164
off_8106F98:    .word loc_8106F9C
loc_8106F9C:
    b loc_8106FE0
    .byte 0, 0
off_8106FA0:    .word dword_8106FA4
dword_8106FA4:    .word 0xC000000, 0x10000000
.thumb
sub_8106FAC:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8106FAC

loc_8106FB4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8106fc8-0x8106fba-2] // off_8106FCC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8106FC8:    .word off_8106FCC
off_8106FCC:    .word sub_8106FD8+1
    .word sub_8107020+1
    .word sub_8107028+1
.thumb
sub_8106FD8:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #6
loc_8106FE0:
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8106FD8

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810701c-0x8106ffa-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0x1e
    strh r0, [r7,#0xc]
    mov r0, #0x80
    strh r0, [r7,#0xe]
    bl sub_8107020
    pop {pc}
    .balign 4, 0x00
off_810701C:    .word 0x200
.thumb
sub_8107020:
    push {lr}
    bl sub_800283C
// end of function sub_8107020

    pop {pc}
.thumb
sub_8107028:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8107028

loc_8107030:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8107044-0x8107036-2] // off_8107048
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107044:    .word off_8107048
off_8107048:    .word loc_8107054+1
    .word loc_81070E4+1
    .word sub_8107100+1
loc_8107054:
    push {lr}
    ldr r0, [pc, #0x8107064-0x8107056-2] // off_8107068
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8107064:    .word off_8107068
off_8107068:    .word sub_8107070+1
    .word sub_810709C+1
.thumb
sub_8107070:
    push {lr}
    mov r0, #0xff
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0xd]
    push {r5}
    mov r0, #0
    mov r1, #0xb
    mov r2, #2
    ldr r3, [pc, #0x8107098-0x8107082-2] // dword_86D6234
    mov r4, #0x1e
    mov r5, #9
    bl sub_8001DDC
// end of function sub_8107070

    pop {r5}
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_81070E4
    pop {pc}
off_8107098:    .word dword_86D6234
.thumb
sub_810709C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #6
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810709C

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x81070e0-0x81070be-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #2
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x1e
    strh r0, [r7,#0xc]
    mov r0, #0x80
    strh r0, [r7,#0xe]
    bl loc_81070E4
    pop {pc}
    .byte 0, 0
off_81070E0:    .word 0x200
loc_81070E4:
    push {lr}
    ldr r0, [pc, #0x81070f4-0x81070e6-2] // off_81070F8
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81070F4:    .word off_81070F8
off_81070F8:    .word sub_8107108+1
    .word sub_810717C+1
.thumb
sub_8107100:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8107100

.thumb
sub_8107108:
    push {lr}
    ldr r0, [pc, #0x8107118-0x810710a-2] // off_810711C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107118:    .word off_810711C
off_810711C:    .word sub_8107124+1
    .word sub_8107178+1
// end of function sub_8107108

.thumb
sub_8107124:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [r6,#0x14]
    mov r1, #1
    tst r0, r1
    beq loc_8107138
    bl sub_804E448
    b locret_810716C
loc_8107138:
    ldrb r1, [r6,#0xd]
    ldr r0, [pc, #0x8107174-0x810713a-2] // dword_201A000
    ldrb r1, [r0,r1]
    ldrb r2, [r5,#0xc]
    cmp r1, r2
    beq locret_810716C
    strb r1, [r5,#0xc]
    add r0, r1, #0
    push {r1}
    bl sub_802D3F8
    pop {r1}
    mov r3, r10
    ldr r3, [r3,#0x2c]
    str r0, [r3,#0x4c]
    tst r1, r1
    bne loc_8107166
    ldrb r2, [r5,#0xd]
    tst r2, r2
    bne loc_8107166
    mov r2, #1
    strb r2, [r5,#0xd]
    mov r1, #0xc4
loc_8107166:
    ldr r0, [pc, #0x8107170-0x8107166-2] // dword_2028000
    bl sub_804DFA0
locret_810716C:
    pop {pc}
    .byte 0, 0
off_8107170:    .word dword_2028000
off_8107174:    .word dword_201A000
// end of function sub_8107124

.thumb
sub_8107178:
    push {lr}
    pop {pc}
// end of function sub_8107178

.thumb
sub_810717C:
    push {lr}
    bl sub_800283C
// end of function sub_810717C

    pop {pc}
    .word 0xAC00BC, 0x9C00C4, 0xCC00B4, 0xFFE6FFE6, 0x80FFE6
    .word 0x800080
loc_810719C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x81071b0-0x81071a2-2] // off_81071B4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81071B0:    .word off_81071B4
off_81071B4:    .word sub_81071C0+1
    .word sub_81071F4+1
    .word sub_810720C+1
.thumb
sub_81071C0:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrh r0, [r1,#0xc]
    mov r2, #8
    sub r1, r0, r2
    bgt loc_81071D4
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_81071D4:
    mov r0, #1
    and r0, r1
    beq loc_81071DC
    add r1, #1
loc_81071DC:
    lsr r1, r1, #1
    mov r0, #0x30 
    lsl r0, r0, #0x10
    svc 6
    str r0, [r5,#0x10]
    mov r0, #0xd4
    strh r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
// end of function sub_81071C0

.thumb
sub_81071F4:
    push {lr}
    ldr r0, [pc, #0x8107204-0x81071f6-2] // off_8107208
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107204:    .word off_8107208
off_8107208:    .word sub_8107214+1
// end of function sub_81071F4

.thumb
sub_810720C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810720C

.thumb
sub_8107214:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r0, [r6,#0xf]
    mov r1, #0xfe
    and r0, r1
    lsr r0, r0, #1
    ldr r1, [r5,#0x10]
    mul r0, r1
    lsr r0, r0, #0x10
    mov r1, #0x1e
    add r1, r1, r0
    ldrh r0, [r7,#0xc]
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8107244-0x8107232-2] // =0xA001
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8107214

    pop {pc}
dword_8107244:    .word 0xA001
loc_8107248:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810725c-0x810724e-2] // off_8107260
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810725C:    .word off_8107260
off_8107260:    .word sub_810726C+1
    .word sub_81072C0+1
    .word sub_81072D8+1
.thumb
sub_810726C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    bl sub_8107344
    strb r0, [r5,#0xc]
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810726C

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    bl sub_8107314
    ldr r0, [pc, #0x81072b8-0x8107292-2] // =0x5000020
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x38 
    strh r0, [r7,#0xc]
    mov r0, #0x50 
    strh r0, [r7,#0xe]
    bl sub_81072C0
    pop {pc}
    .balign 4, 0x00
    .word 0x81072BA
dword_81072B8:    .word 0x5000020
    .word 0x140F0A
.thumb
sub_81072C0:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x34]
    mov r1, #0xc
    ldrsb r0, [r4,r1]
    lsl r0, r0, #3
    mov r1, #0x38 
    add r1, r1, r0
    strh r1, [r7,#0xc]
    bl sub_800283C
// end of function sub_81072C0

    pop {pc}
.thumb
sub_81072D8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81072D8

.thumb
sub_81072E0:
    push {r7,lr}
    add r7, r0, #0
    mov r0, #0x36 
    bl sub_800D752
    bl sub_800C016
    add r0, r0, r7
    cmp r0, r7
    bne locret_8107310
    add r7, r0, #0
    mov r0, #0x1f
    bl sub_800D742
    cmp r0, #1
    beq loc_810730E
    mov r0, #0
    bl sub_800D742
    cmp r0, #0xff
    beq loc_810730E
    add r0, r7, #0
    b locret_8107310
loc_810730E:
    add r0, r7, #4
locret_8107310:
    pop {r7,pc}
    .balign 4, 0x00
// end of function sub_81072E0

.thumb
sub_8107314:
    push {r7,lr}
    mov r0, #0x24 
    bl sub_800D742
    cmp r0, #0
    beq loc_8107324
    mov r0, #0
    b loc_8107332
loc_8107324:
    mov r0, #0x27 
    bl sub_800D742
    ldr r1, [pc, #0x8107338-0x810732a-2] // dword_810733C
    ldrb r0, [r1,r0]
    bl sub_81072E0
loc_8107332:
    strb r0, [r7,#4]
    pop {r7,pc}
    .balign 4, 0x00
off_8107338:    .word dword_810733C
dword_810733C:    .word 0xF0A0500, 0x14
// end of function sub_8107314

.thumb
sub_8107344:
    push {lr}
    mov r0, #0x24 
    bl sub_800D742
    ldr r1, [pc, #0x8107354-0x810734c-4] // aAbcdefghij
    ldrb r0, [r1,r0]
    pop {pc}
    .balign 4, 0x00
off_8107354:    .word aAbcdefghij
aAbcdefghij:    .byte 0xD, 0x3F, 0x40
    .byte 0x41, 0x42, 0x43
    .byte 0x44, 0x45, 0x46
    .byte 0x47, 0x48, 0x49
    .byte 0x4A, 0x0
    .balign 4, 0x00
// end of function sub_8107344

loc_8107368:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810737c-0x810736e-2] // off_8107380
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810737C:    .word off_8107380
off_8107380:    .word sub_810738C+1
    .word sub_81073B8+1
    .word sub_81073D0+1
.thumb
sub_810738C:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x34]
    ldrh r0, [r1,#0x16]
    mov r2, #4
    sub r1, r0, r2
    bgt loc_81073A0
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_81073A0:
    mov r0, #0x3a 
    lsl r0, r0, #0x10
    svc 6
    str r0, [r5,#0x10]
    mov r0, #0xd4
    strh r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810738C

.thumb
sub_81073B8:
    push {lr}
    ldr r0, [pc, #0x81073c8-0x81073ba-2] // off_81073CC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81073C8:    .word off_81073CC
off_81073CC:    .word sub_81073D8+1
// end of function sub_81073B8

.thumb
sub_81073D0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81073D0

.thumb
sub_81073D8:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r0, [r6,#0xf]
    ldr r1, [r5,#0x10]
    mul r0, r1
    lsr r0, r0, #0x10
    mov r1, #0x18
    add r1, r1, r0
    ldr r0, [pc, #0x8107414-0x81073ea-2] // =0x1DC
    mov r2, #0xc
    ldrsb r2, [r6,r2]
    lsl r2, r2, #3
    add r0, r0, r2
    cmp r0, #0
    blt locret_810740C
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8107410-0x81073fc-4] // =0xA001
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
locret_810740C:
    pop {pc}
    .byte 0, 0
dword_8107410:    .word 0xA001
off_8107414:    .word 0x1DC
// end of function sub_81073D8

loc_8107418:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810742c-0x810741e-2] // off_8107430
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810742C:    .word off_8107430
off_8107430:    .word sub_810743C+1
    .word sub_81074DC+1
    .word sub_8107548+1
.thumb
sub_810743C:
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_8107448
    mov r1, #0x43 
loc_8107448:
    strb r1, [r5]
    mov r0, #0xe
    bl loc_80028EC
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810743C

    bl sub_8002FC2
    mov r0, #0xb
    bl sub_802F628
    bl loc_800302C
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r1, [pc, #0x81074b4-0x8107478-4] // dword_81074BC
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r0, [r1,r2]
    strh r0, [r7,#8]
    mov r0, #0x26 
    strh r0, [r7,#0xc]
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_81074A4
    ldr r6, [pc, #0x8107658-0x810748c-4] // byte_200F770
    ldrb r2, [r6,#0x4] // (byte_200F774 - 0x200f770)
    ldrb r3, [r5,#4]
    cmp r2, r3
    bne loc_810749A
    mov r0, #0x2e 
    strh r0, [r7,#0xc]
loc_810749A:
    ldr r1, [pc, #0x81074b8-0x810749a-2] // dword_81074CC
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldrb r0, [r1,r0]
    b loc_81074A6
loc_81074A4:
    mov r0, #0x1c
loc_81074A6:
    strh r0, [r7,#0xe]
    mov r0, #0
    bl sub_8002E60
    bl sub_81074DC
    pop {pc}
off_81074B4:    .word dword_81074BC
off_81074B8:    .word dword_81074CC
dword_81074BC:    .word 0x2800280
    .word 0x2800280
    .word 0x2800280
    .word 0x2800280
dword_81074CC:    .word 0x2B001C
    .word 0x49003A
    .word 0x670058
    .word 0x850076
.thumb
sub_81074DC:
    push {lr}
    ldr r0, [pc, #0x81074fc-0x81074de-2] // off_8107500
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x8107658-0x81074e8-4] // byte_200F770
// end of function sub_81074DC

    ldrb r0, [r0]
    cmp r0, #8
    bne loc_81074F4
    mov r0, #8
    strb r0, [r5,#8]
loc_81074F4:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_81074FC:    .word off_8107500
off_8107500:    .word sub_8107508+1
    .word sub_810753C+1
.thumb
sub_8107508:
    push {lr}
    ldrh r1, [r7,#0xe]
    add r1, #8
    ldr r0, [pc, #0x8107528-0x810750e-2] // byte_810752C
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r0, [r0,r2]
    cmp r0, r1
    bgt loc_8107522
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#9]
    b locret_8107524
loc_8107522:
    strh r1, [r7,#0xe]
locret_8107524:
    pop {pc}
    .balign 4, 0x00
off_8107528:    .word byte_810752C
byte_810752C:    .byte 0x1C
    .byte 0
    .byte 0x2B 
    .byte 0
    .word 0x49003A
    .word 0x670058
    .word 0x850076
// end of function sub_8107508

.thumb
sub_810753C:
    push {lr}
    bl loc_8107550
    bl sub_8107628
    pop {pc}
// end of function sub_810753C

.thumb
sub_8107548:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8107548

loc_8107550:
    push {lr}
    ldr r0, [pc, #0x8107560-0x8107552-2] // off_8107564
    ldrb r1, [r5,#0xa]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8107560:    .word off_8107564
off_8107564:    .word sub_810756C+1
    .word sub_81075B0+1
.thumb
sub_810756C:
    push {lr}
    ldr r6, [pc, #0x8107658-0x810756e-2] // byte_200F770
    ldrb r0, [r6,#0x4] // (byte_200F774 - 0x200f770)
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne locret_81075AE
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0xe
    bl loc_80028EC
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0xb
    bl sub_802F628
    bl loc_800302C
    mov r0, #0xd0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #1
    strb r0, [r5,#0xa]
locret_81075AE:
    pop {pc}
// end of function sub_810756C

.thumb
sub_81075B0:
    push {lr}
    ldrb r1, [r5,#0xc]
    add r1, #1
    cmp r1, #0x18
    blt loc_81075BC
    mov r1, #0
loc_81075BC:
    strb r1, [r5,#0xc]
    ldr r0, [pc, #0x8107608-0x81075be-2] // dword_8107610
    ldrb r0, [r0,r1]
    strb r0, [r7,#4]
    ldr r6, [pc, #0x8107658-0x81075c4-4] // byte_200F770
    ldrb r0, [r6,#0x4] // (byte_200F774 - 0x200f770)
    ldrb r1, [r5,#4]
    cmp r0, r1
    beq locret_8107604
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0xe
    bl loc_80028EC
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0xb
    bl sub_802F628
    bl loc_800302C
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0x1e
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0xa]
locret_8107604:
    pop {pc}
    .balign 4, 0x00
off_8107608:    .word dword_8107610
    .word unk_30027C0
dword_8107610:    .word 0x1010101, 0x1010101, 0x2020202, 0x2020202, 0x0, 0x0
// end of function sub_81075B0

.thumb
sub_8107628:
    push {lr}
    ldr r6, [pc, #0x8107658-0x810762a-2] // byte_200F770
    mov r0, #0x26 
    ldr r1, [pc, #0x810765c-0x810762e-2] // =0xFFFFFFFE
    mov r4, #0
    ldrb r2, [r6,#0x4] // (byte_200F774 - 0x200f770)
    ldrb r3, [r5,#4]
    cmp r2, r3
    bne loc_8107640
    mov r0, #0x2e 
    mov r1, #2
    mov r4, #1
loc_8107640:
    ldrh r2, [r7,#0xc]
    add r2, r2, r1
    tst r4, r4
    beq loc_810764E
    cmp r2, r0
    bge loc_8107654
    b loc_8107652
loc_810764E:
    cmp r2, r0
    ble loc_8107654
loc_8107652:
    add r0, r2, #0
loc_8107654:
    strh r0, [r7,#0xc]
    pop {pc}
off_8107658:    .word byte_200F770
dword_810765C:    .word 0xFFFFFFFE
// end of function sub_8107628

loc_8107660:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x8107674-0x8107666-2] // off_8107678
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107674:    .word off_8107678
off_8107678:    .word sub_8107688+1
    .word sub_8107744+1
    .word loc_81077FC+1
    .word sub_8107A40+1
.thumb
sub_8107688:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq loc_81076C0
    mov r1, #0xc1
    strb r1, [r5]
    mov r0, #0xe
    bl loc_80028EC
    ldr r0, [pc, #0x8107714-0x810769e-2] // dword_8107738
    ldrb r1, [r5,#4]
    ldrb r0, [r0,r1]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r1, [r5,#6]
    tst r1, r1
    bne loc_81076B6
loc_81076B6:
    ldr r1, [pc, #0x8107710-0x81076b6-2] // dword_8107724
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r2, [r1,r0]
    str r2, [r7,#0xc]
loc_81076C0:
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #8
    strb r0, [r5,#8]
    ldr r1, [pc, #0x810770c-0x81076cc-4] // dword_8107718
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r0, [r1,r2]
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8107708-0x81076e2-2] // dword_8107738
    ldrb r0, [r1,r0]
    strb r0, [r5,#5]
    ldrb r0, [r5,#8]
    cmp r0, #8
    bne loc_8107702
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq loc_81076FC
    mov r0, #0x82
    ldrb r1, [r5]
    orr r1, r0
    strb r1, [r5]
loc_81076FC:
    bl loc_81077FC
    pop {pc}
loc_8107702:
    bl sub_8107744
    pop {pc}
dword_8107708:    .word 0x810773D
off_810770C:    .word dword_8107718
off_8107710:    .word dword_8107724
off_8107714:    .word dword_8107738
dword_8107718:    .word 0x2800280, 0x2800280, 0x280
dword_8107724:    .word 0x4B00AD, 0x2E00AD, 0x6800AD, 0xFFFFFFFF, 0x85009D
dword_8107738:    .word 0xFF0B0809, 0x107020A, 0x800
// end of function sub_8107688

.thumb
sub_8107744:
    push {lr}
    ldr r0, [pc, #0x8107768-0x8107746-2] // off_810776C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x810783c-0x8107750-4] // byte_200F770
// end of function sub_8107744

    ldrb r0, [r0]
    cmp r0, #8
    bne loc_810775C
    mov r0, #0xc
    strb r0, [r5,#8]
loc_810775C:
    ldrb r0, [r5,#4]
    cmp r0, #3
    beq locret_8107766
    bl sub_800283C
locret_8107766:
    pop {pc}
off_8107768:    .word off_810776C
off_810776C:    .word sub_8107778+1
    .word sub_81077A0+1
    .word sub_81077C8+1
.thumb
sub_8107778:
    push {lr}
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bgt locret_810779E
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq loc_8107796
    mov r1, #0x83
    strb r1, [r5]
    mov r0, #0
    mov r1, #0xff
    mov r2, #0xc0
    bl sub_8002C70
loc_8107796:
    mov r0, #0xff
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
locret_810779E:
    pop {pc}
// end of function sub_8107778

.thumb
sub_81077A0:
    push {lr}
    ldrb r0, [r5,#5]
    sub r0, #0x30 
    strb r0, [r5,#5]
    cmp r0, #0x40 
    bgt loc_81077B4
    mov r1, #0xc0
    strb r1, [r5,#5]
    mov r1, #8
    strb r1, [r5,#9]
loc_81077B4:
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq locret_81077C4
    mov r2, #0xc0
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
locret_81077C4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_81077A0

.thumb
sub_81077C8:
    push {lr}
    ldrb r0, [r5,#5]
    sub r0, #0x40 
    strb r0, [r5,#5]
    cmp r0, #0x40 
    bgt loc_81077E8
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq locret_81077F8
    bl sub_8002D9E
    pop {pc}
loc_81077E8:
    ldrb r1, [r5,#4]
    cmp r1, #3
    beq locret_81077F8
    add r2, r0, #0
    mov r1, #0x40 
    mov r0, #0
    bl sub_8002C70
locret_81077F8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_81077C8

loc_81077FC:
    push {lr}
    ldr r0, [pc, #0x8107824-0x81077fe-2] // off_8107828
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x810783c-0x810780a-2] // byte_200F770
    ldrb r0, [r0]
    cmp r0, #8
    bne loc_8107816
    mov r0, #0xc
    strb r0, [r5,#8]
loc_8107816:
    ldrb r0, [r5,#4]
    cmp r0, #3
    beq locret_8107820
    bl sub_800283C
locret_8107820:
    pop {pc}
    .balign 4, 0x00
off_8107824:    .word off_8107828
off_8107828:    .word sub_8107840+1
    .word sub_8107898+1
    .word sub_8107900+1
    .word sub_8107948+1
    .word sub_81079A8+1
off_810783C:    .word byte_200F770
.thumb
sub_8107840:
    push {r6,r7,lr}
    ldr r7, [pc, #0x810785c-0x8107842-2] // dword_8107860
    mov r6, #0
loc_8107846:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_8107864 - 0x8107860)
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8107840

    add r7, #8
    add r6, #1
    cmp r6, #7
    blt loc_8107846
    pop {r6,r7,pc}
off_810785C:    .word dword_8107860
dword_8107860:    .word 0xA08047
dword_8107864:    .word 0xE2F3
    .word 0xA88047, 0xE2F5, 0xB08047, 0xE2F7, 0xB88047, 0xE2F9
    .word 0xC08047, 0xE2FB, 0xC88047, 0xE2FD, 0xD08047, 0xE2FF
.thumb
sub_8107898:
    push {lr}
    ldr r7, [pc, #0x81078b4-0x810789a-2] // dword_81078B8
    mov r6, #0
loc_810789E:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_81078BC - 0x81078b8)
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8107898

    add r7, #8
    add r6, #1
    cmp r6, #9
    blt loc_810789E
    pop {pc}
off_81078B4:    .word dword_81078B8
dword_81078B8:    .word 0x90802A
dword_81078BC:    .word 0xE301
    .word 0x98802A, 0xE303, 0xA0802A, 0xE305, 0xA8802A, 0xE307
    .word 0xB0802A, 0xE309, 0xB8802A, 0xE30B, 0xC0802A, 0xE30D
    .word 0xC8802A, 0xE30F, 0xD0802A, 0xE311
.thumb
sub_8107900:
    push {lr}
    ldr r7, [pc, #0x810791c-0x8107902-2] // dword_8107920
    mov r6, #0
loc_8107906:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_8107924 - 0x8107920)
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8107900

    add r7, #8
    add r6, #1
    cmp r6, #5
    blt loc_8107906
    pop {pc}
off_810791C:    .word dword_8107920
dword_8107920:    .word 0xB08064
dword_8107924:    .word 0xE313
    strh r4, [r4,#2]
    lsl r0, r7, #2
    b loc_8107F5A
    .byte 0, 0
    strh r4, [r4,#2]
    lsl r0, r0, #3
    b loc_8107F66
    .balign 4, 0x00
    strh r4, [r4,#2]
    lsl r0, r1, #3
    b loc_8107F72
    .byte 0, 0
    strh r4, [r4,#2]
    lsl r0, r2, #3
    b loc_8107F7E
    .balign 4, 0x00
.thumb
sub_8107948:
    push {lr}
    ldr r7, [pc, #0x8107964-0x810794a-2] // dword_8107968
    mov r6, #0
loc_810794E:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_810796C - 0x8107968)
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8107948

    add r7, #8
    add r6, #1
    cmp r6, #8
    blt loc_810794E
    pop {pc}
off_8107964:    .word dword_8107968
dword_8107968:    .word 0x988010
dword_810796C:    .word 0xE31F
    strh r0, [r2]
    lsl r0, r4, #2
    b loc_8107FBA
    .balign 4, 0x00
    strh r0, [r2]
    lsl r0, r5, #2
    b loc_8107FC6
    .byte 0, 0
    strh r0, [r2]
    lsl r0, r6, #2
    b loc_8107FD2
    .balign 4, 0x00
    strh r0, [r2]
    lsl r0, r7, #2
    b loc_8107FDE
    .byte 0, 0
    .word 0xC08010, 0xE329, 0xC88010, 0xE32B, 0xD08010, 0xE32D
.thumb
sub_81079A8:
    push {lr}
    mov r4, #0xd
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x20 
    and r0, r1
    beq loc_81079BA
    mov r4, #0xc
loc_81079BA:
    ldr r7, [pc, #0x81079d4-0x81079ba-2] // dword_81079D8
    mov r6, #0
loc_81079BE:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_81079DC - 0x81079d8)
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_81079A8

    add r7, #8
    add r6, #1
    cmp r6, r4
    blt loc_81079BE
    pop {pc}
off_81079D4:    .word dword_81079D8
dword_81079D8:    .word 0x708081
dword_81079DC:    .word 0xE32F
    strh r1, [r0,#4]
    lsl r0, r7, #1
    b loc_810804A
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r0, #2
    b loc_8108056
    .byte 0, 0
    strh r1, [r0,#4]
    lsl r0, r1, #2
    b locret_8108062
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r2, #2
    b loc_810806E
    .byte 0, 0
    strh r1, [r0,#4]
    lsl r0, r3, #2
    b loc_810807A
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r4, #2
    b loc_8108086
    .byte 0, 0
    strh r1, [r0,#4]
    lsl r0, r5, #2
    b locret_8108092
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r6, #2
    b loc_810809E
    .byte 0, 0
    strh r1, [r0,#4]
    lsl r0, r7, #2
    b loc_81080AA
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r0, #3
    b locret_81080B6
    .byte 0, 0
    strh r1, [r0,#4]
    lsl r0, r1, #3
    b loc_81080C2
    .balign 4, 0x00
    strh r1, [r0,#4]
    lsl r0, r2, #3
    b loc_81080CE
    .byte 0, 0
.thumb
sub_8107A40:
    push {lr}
    bl sub_8002D9E
    bl sub_80540E0
    pop {pc}
// end of function sub_8107A40

loc_8107A4C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8107a64-0x8107a56-2] // off_8107A68
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107A64:    .word off_8107A68
off_8107A68:    .word sub_8107A7C+1
    .word loc_8107ADC+1
    .word sub_8107B38+1
    .word sub_8107B78+1
    .word sub_8107CF0+1
.thumb
sub_8107A7C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0xf
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8107A7C

    bl sub_8002FC2
    ldrb r0, [r5,#3]
    add r0, #1
    lsl r0, r0, #4
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8107ac8-0x8107aa2-2] // dword_8107ACC
    ldrb r1, [r5,#3]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    bl loc_8107ADC
    pop {pc}
off_8107AC8:    .word dword_8107ACC
dword_8107ACC:    .word 0x18001C0, 0x1000140, 0x8000C0, 0x40
loc_8107ADC:
    push {lr}
    ldr r0, [pc, #0x8107af4-0x8107ade-2] // off_8107AF8
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8107CF8
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_8107AF4:    .word off_8107AF8
off_8107AF8:    .word sub_8107B00+1
    .word sub_8107B20+1
.thumb
sub_8107B00:
    push {lr}
    mov r0, #0xb0
    strh r0, [r7,#0xc]
    ldr r1, [pc, #0x8107b14-0x8107b06-2] // loc_8107B18
    ldrb r0, [r5,#3]
    ldrb r0, [r1,r0]
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
off_8107B14:    .word loc_8107B18
// end of function sub_8107B00

loc_8107B18:
    lsr r6, r6, #3
    cmp r4, #0x1a
    str r6, [r7,r0]
    lsl r2, r4, #1
.thumb
sub_8107B20:
    push {lr}
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8107D0C
    bl sub_8107D2C
    bl sub_8107DD4
    pop {pc}
// end of function sub_8107B20

.thumb
sub_8107B38:
    push {lr}
    ldrb r3, [r6,#0xe]
    tst r3, r3
    beq loc_8107B52
    mov r0, #0xc
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8002F1A
    bl sub_8107CF8
    b loc_8107B70
loc_8107B52:
    mov r0, #0xb0
    ldrh r3, [r6,#0x30]
    add r3, #2
    ldrb r4, [r5,#3]
    cmp r3, r4
    bne loc_8107B60
    mov r0, #0xb0
loc_8107B60:
    ldrh r1, [r7,#0xc]
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    bl sub_8107CF8
    bl sub_8107E2C
loc_8107B70:
    bl sub_800283C
// end of function sub_8107B38

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8107B78:
    push {lr}
    ldr r0, [pc, #0x8107b94-0x8107b7a-2] // off_8107B98
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0xc]
// end of function sub_8107B78

    strh r0, [r7,#0xe]
    bl sub_8107CF8
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_8107B94:    .word off_8107B98
off_8107B98:    .word sub_8107BB0+1
    .word sub_8107C10+1
    .word sub_8107C30+1
    .word sub_8107C58+1
    .word sub_8107C90+1
    .word sub_8107CD4+1
.thumb
sub_8107BB0:
    push {lr}
    ldrb r3, [r6,#0xe]
    cmp r3, #0x10
    beq loc_8107BF4
    mov r0, #0xb0
    strh r0, [r7,#0xc]
    ldrh r0, [r7,#0xe]
    strb r0, [r5,#4]
    str r0, [r5,#0xc]
    cmp r3, #0xc
    beq loc_8107BD4
    ldr r4, [pc, #0x8107c00-0x8107bc6-2] // dword_8107C04
    ldr r3, [r4,r3]
    add r0, r0, r3
    str r0, [r5,#0x10]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
loc_8107BD4:
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    strb r2, [r5,#7]
    bl sub_8002C70
    mov r0, #0xfc
    lsl r0, r0, #0x18
    mvn r0, r0
    bl sub_8002FD8
    mov r0, #0xc
    strb r0, [r5,#9]
    pop {pc}
loc_8107BF4:
    ldrh r0, [r7,#0xe]
    str r0, [r5,#0xc]
    mov r0, #0x14
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
off_8107C00:    .word dword_8107C04
dword_8107C04:    .word 0x0
    .word 0x12, 0xFFFFFFEE
// end of function sub_8107BB0

.thumb
sub_8107C10:
    push {lr}
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    bl sub_8107E6C
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    cmp r0, r1
    bne locret_8107C2C
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #2
    strb r0, [r5,#7]
locret_8107C2C:
    pop {pc}
    .byte 0, 0
// end of function sub_8107C10

.thumb
sub_8107C30:
    push {lr}
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bgt locret_8107C56
    ldrb r0, [r5,#4]
    str r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r3, #0
    strb r3, [r6,#0xe]
    bl sub_8107D0C
    bl sub_8107D2C
    bl sub_8107DD4
locret_8107C56:
    pop {pc}
// end of function sub_8107C30

.thumb
sub_8107C58:
    push {lr}
    ldrb r2, [r5,#7]
    add r2, #0x30 
    cmp r2, #0xff
    blt loc_8107C64
    mov r2, #0xff
loc_8107C64:
    strb r2, [r5,#7]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8002C70
    ldrb r0, [r5,#7]
    cmp r0, #0xff
    bne locret_8107C8E
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r4, #1
    ldrh r0, [r6,#0x22]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt loc_8107C8C
    ldrh r1, [r6,#0x2e]
    cmp r0, r1
    bge loc_8107C8C
    mov r4, #0x23 
loc_8107C8C:
    strb r4, [r5]
locret_8107C8E:
    pop {pc}
// end of function sub_8107C58

.thumb
sub_8107C90:
    push {lr}
    ldrb r2, [r5,#7]
    sub r2, #0x30 
    cmp r2, #0x40 
    bgt loc_8107C9C
    mov r2, #0x40 
loc_8107C9C:
    strb r2, [r5,#7]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8002C70
    ldrb r0, [r5,#7]
    cmp r0, #0x40 
    bne locret_8107CD2
    ldrb r0, [r5,#4]
    str r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r3, #0
    strb r3, [r6,#0xe]
    bl sub_8002D9E
    mov r0, #0
    bl sub_8002FD8
    bl sub_8107D0C
    bl sub_8107D2C
    bl sub_8107DD4
locret_8107CD2:
    pop {pc}
// end of function sub_8107C90

.thumb
sub_8107CD4:
    push {lr}
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8107D0C
    bl sub_8107D2C
    bl sub_8107DD4
    mov r3, #0
    strb r3, [r6,#0xe]
    pop {pc}
// end of function sub_8107CD4

.thumb
sub_8107CF0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8107CF0

.thumb
sub_8107CF8:
    push {r4-r7,lr}
    mov r1, #0
    ldrb r0, [r6,#1]
    cmp r0, #4
    beq loc_8107D04
    mov r1, #1
loc_8107D04:
    ldr r4, [r5,#0x14]
    add r1, r1, r4
    strb r1, [r7,#4]
    pop {r4-r7,pc}
// end of function sub_8107CF8

.thumb
sub_8107D0C:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x22]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt loc_8107D24
    ldrh r1, [r6,#0x2e]
    cmp r0, r1
    bge loc_8107D24
    mov r0, #0x23 
    strb r0, [r5]
    b locret_8107D28
loc_8107D24:
    mov r0, #1
    strb r0, [r5]
locret_8107D28:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8107D0C

.thumb
sub_8107D2C:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x22]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt locret_8107D80
    ldrh r1, [r6,#0x2e]
    cmp r0, r1
    bge locret_8107D80
    lsl r0, r0, #2
    ldr r1, [pc, #0x8107d84-0x8107d40-4] // dword_201A000
    add r1, r1, r0
    mov r4, #4
    ldrh r2, [r1]
    ldr r3, [pc, #0x8107db0-0x8107d48-4] // =0x17C
    cmp r2, r3
    beq loc_8107D58
    ldrh r2, [r1,#2]
    mov r4, #0
    tst r2, r2
    bne loc_8107D58
    mov r4, #2
loc_8107D58:
    str r4, [r5,#0x14]
    mov r4, r10
    ldr r4, [r4,#0x38]
    str r2, [r4,#4]
    ldrh r1, [r1]
    sub r1, #0xc0
    lsr r1, r1, #2
    ldr r0, [pc, #0x8107d8c-0x8107d66-2] // byte_86E66B8
    ldrb r4, [r5,#3]
    lsl r4, r4, #2
    ldr r2, [pc, #0x8107d90-0x8107d6c-4] // off_8107D94
    ldr r2, [r2,r4]
    ldr r3, [pc, #0x8107db4-0x8107d70-4] // loc_8107DB8
    ldr r3, [r3,r4]
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8107d88-0x8107d78-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
locret_8107D80:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8107D84:    .word dword_201A000
off_8107D88:    .word dword_868E224
off_8107D8C:    .word byte_86E66B8
off_8107D90:    .word off_8107D94
off_8107D94:    .word unk_2016000
    .word unk_2016400
    .word unk_2016800
    .word dword_2016C00
    .word unk_2017000
    .word unk_2017400
    .word unk_2017800
off_8107DB0:    .word 0x17C
off_8107DB4:    .word loc_8107DB8
// end of function sub_8107D2C

loc_8107DB8:
    sub r3, #0xc0
    lsl r1, r0, #0x18
    add r3, #0xc0
    lsl r1, r0, #0x18
    cmp r3, #0xc0
    lsl r1, r0, #0x18
    mov r3, #0xc0
    lsl r1, r0, #0x18
    sub r0, r0, r7
    lsl r1, r0, #0x18
    asr r0, r0, #0xf
    lsl r1, r0, #0x18
    lsr r0, r0, #0xf
    lsl r1, r0, #0x18
.thumb
sub_8107DD4:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x22]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt locret_8107DF8
    ldrh r1, [r6,#0x2e]
    cmp r0, r1
    bge locret_8107DF8
    lsl r0, r0, #2
    ldr r1, [pc, #0x8107dfc-0x8107de8-4] // dword_201A000
    add r0, r0, r1
    ldrh r1, [r0,#2]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8107e00-0x8107df0-4] // dword_8107E04
    ldr r0, [r0,r1]
    bl sub_8002FD8
locret_8107DF8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8107DFC:    .word dword_201A000
off_8107E00:    .word dword_8107E04
dword_8107E04:    .word 0xFFFFFFFF, 0x3FE00, 0xFE00, 0x17E00, 0x1BE00, 0x1DE00
    .word 0x1EE00, 0x1F600, 0x1FA00, 0x1FC00
// end of function sub_8107DD4

.thumb
sub_8107E2C:
    push {r4-r7,lr}
    bl sub_8002F1A
    ldrh r0, [r6,#0x30]
    add r0, #2
    ldrb r1, [r5,#3]
    cmp r0, r1
    bne locret_8107E56
    ldrb r0, [r6,#1]
    cmp r0, #4
    bne locret_8107E56
    ldr r7, [pc, #0x8107e58-0x8107e42-2] // dword_8107E5C
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #7
    and r0, r1
    lsl r0, r0, #1
    ldrh r0, [r7,r0]
    bl sub_8002F02
locret_8107E56:
    pop {r4-r7,pc}
off_8107E58:    .word dword_8107E5C
dword_8107E5C:    .word 0x4210000, 0x4210842, 0x84218000, 0x84218842
// end of function sub_8107E2C

.thumb
sub_8107E6C:
    push {lr}
    add r2, r0, #0
    sub r0, r1, r0
    cmp r0, #0
    blt loc_8107E84
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_8107E80
    add r0, r2, r0
    pop {pc}
loc_8107E80:
    add r0, r2, #0
    pop {pc}
loc_8107E84:
    add r1, r0, #0
    neg r0, r0
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_8107E94
    asr r1, r1, #1
    add r0, r1, r2
    pop {pc}
loc_8107E94:
    add r0, r2, #0
    pop {pc}
// end of function sub_8107E6C

loc_8107E98:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8107eb0-0x8107ea2-2] // off_8107EB4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8107EB0:    .word off_8107EB4
off_8107EB4:    .word sub_8107EC4+1
    .word 0x0
    .word sub_8107F38+1
    .word sub_8108170+1
.thumb
sub_8107EC4:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0x10
    bl sub_80028E8
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8107EC4

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8107f34-0x8107eea-2] // =0x230
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    ldr r4, [pc, #0x8107f28-0x8107ef8-4] // dword_8107F2C
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x32]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x24]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#9]
    bl sub_8107F38
    pop {pc}
    .balign 4, 0x00
off_8107F28:    .word dword_8107F2C
dword_8107F2C:    .word 0x3A1E3A26, 0x321E
off_8107F34:    .word 0x230
.thumb
sub_8107F38:
    push {lr}
    ldr r0, [r5,#0xc]
    str r0, [r5,#0x10]
    ldr r0, [pc, #0x8107f4c-0x8107f3e-2] // loc_8107F50
    ldrb r1, [r6,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8107F4C:    .word loc_8107F50
// end of function sub_8107F38

loc_8107F50:
    ldrb r5, [r0,#0x1e]
    lsr r0, r2, #0x20
    ldrb r1, [r5,#0x1e]
    lsr r0, r2, #0x20
    ldrb r1, [r5,#0x1e]
loc_8107F5A:
    lsr r0, r2, #0x20
    ldrb r1, [r6,#0x1f]
    lsr r0, r2, #0x20
    strh r5, [r4,#2]
    lsr r0, r2, #0x20
    strh r5, [r2,#4]
loc_8107F66:
    lsr r0, r2, #0x20
    strh r1, [r7,#4]
    lsr r0, r2, #0x20
    strh r1, [r6,#6]
    lsr r0, r2, #0x20
    strh r5, [r5,#8]
loc_8107F72:
    lsr r0, r2, #0x20
    ldrb r1, [r6,#0x1f]
    lsr r0, r2, #0x20
    strh r1, [r0,#2]
    lsr r0, r2, #0x20
    ldrb r1, [r5,#0x1e]
loc_8107F7E:
    lsr r0, r2, #0x20
    strh r1, [r2,#0xa]
    lsr r0, r2, #0x20
    push {lr}
    mov r1, #1
    strb r1, [r5]
    bl sub_8108178
    mov r0, #2
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_8107FA2
    bl sub_8002DF0
    bl sub_800281C
loc_8107FA2:
    bl sub_800283C
    pop {pc}
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0xa
    bl sub_805411A
    bne loc_8107FBA
    mov r1, #0x23 
    strb r1, [r5]
loc_8107FBA:
    ldrh r0, [r6,#0x30]
    add r0, #2
    bl sub_805411A
    add r1, #0x20 
    ldrh r2, [r1,#0xc]
loc_8107FC6:
    sub r2, #0x30 
    strh r2, [r7,#0xc]
    ldrh r0, [r6,#0x30]
    mov r1, #0x12
    mul r0, r1
    add r0, #0x1a
loc_8107FD2:
    strh r0, [r7,#0xe]
    mov r0, #3
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
loc_8107FDE:
    beq loc_8107FE8
    bl sub_8002DF0
    bl sub_800281C
loc_8107FE8:
    bl sub_800283C
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    bl sub_8108178
    ldrh r0, [r7,#0xe]
    cmp r0, #0x76 
    blt loc_810800C
    mov r0, #0x80
    bl sub_80539A0
    beq loc_810800C
    mov r0, #1
    strb r0, [r5]
loc_810800C:
    mov r0, #2
    str r0, [r5,#0xc]
    ldrb r0, [r6,#0x10]
    tst r0, r0
    bne loc_8108028
    mov r0, #0
    str r0, [r5,#0xc]
    ldrh r0, [r6,#0x32]
    ldrh r1, [r6,#0x24]
    bl sub_8046E64
    beq loc_8108028
    mov r0, #1
    str r0, [r5,#0xc]
loc_8108028:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_8108038
    bl sub_8002DF0
    bl sub_800281C
loc_8108038:
    bl sub_800283C
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    bl sub_8108178
loc_810804A:
    mov r0, #0
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_810805E
loc_8108056:
    bl sub_8002DF0
    bl sub_800281C
loc_810805E:
    bl sub_800283C
locret_8108062:
    pop {pc}
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrh r0, [r6,#0x30]
    add r0, #2
loc_810806E:
    bl sub_805411A
    add r4, r1, #0
    add r4, #0x20 
    bl sub_81081CC
loc_810807A:
    mov r0, #5
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_810808E
loc_8108086:
    bl sub_8002DF0
    bl sub_800281C
loc_810808E:
    bl sub_800283C
locret_8108092:
    pop {pc}
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    bl sub_8108178
loc_810809E:
    mov r0, #4
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_81080B2
loc_81080AA:
    bl sub_8002DF0
    bl sub_800281C
loc_81080B2:
    bl sub_800283C
locret_81080B6:
    pop {pc}
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r6,#0x10]
    tst r0, r0
    bne loc_81080C4
loc_81080C2:
    mov r1, #1
loc_81080C4:
    strb r1, [r5]
    bl sub_8108178
    mov r0, #2
    str r0, [r5,#0xc]
loc_81080CE:
    ldrb r0, [r6,#0x10]
    tst r0, r0
    bne loc_81080D8
    mov r0, #0
    str r0, [r5,#0xc]
loc_81080D8:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_81080E8
    bl sub_8002DF0
    bl sub_800281C
loc_81080E8:
    bl sub_800283C
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrh r0, [r6,#0x30]
    add r0, #2
    bl sub_805411A
    add r1, #0x20 
    ldrh r2, [r1,#0xc]
    sub r2, #0x30 
    strh r2, [r7,#0xc]
    ldrh r0, [r6,#0x30]
    mov r1, #0x12
    mul r0, r1
    add r0, #0x1a
    strh r0, [r7,#0xe]
    mov r0, #3
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_8108124
    bl sub_8002DF0
    bl sub_800281C
loc_8108124:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    bl sub_8108178
    mov r0, #2
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_810814A
    bl sub_8002DF0
    bl sub_800281C
loc_810814A:
    bl sub_800283C
    pop {pc}
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    beq loc_810816A
    bl sub_8002DF0
    bl sub_800281C
loc_810816A:
    bl sub_800283C
    pop {pc}
.thumb
sub_8108170:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108170

.thumb
sub_8108178:
    push {lr}
    ldr r4, [pc, #0x81081c0-0x810817a-2] // dword_81081C4
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x32]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    ldrh r1, [r7,#0xc]
    mov r8, r0
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x24]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    ldrh r1, [r7,#0xe]
    mov r9, r0
    bl sub_8107E6C
    strh r0, [r7,#0xe]
    mov r1, #1
    ldrh r0, [r7,#0xc]
    cmp r0, r8
    bne loc_81081BA
    ldrh r0, [r7,#0xe]
    cmp r0, r9
    bne loc_81081BA
    mov r1, #0
loc_81081BA:
    strb r1, [r5,#4]
    pop {pc}
    .byte 0, 0
off_81081C0:    .word dword_81081C4
dword_81081C4:    .word 0x3A1E3A26, 0x321E
// end of function sub_8108178

.thumb
sub_81081CC:
    push {lr}
    ldrh r0, [r4,#0xc]
    sub r0, #0x2c 
    ldrh r1, [r7,#0xc]
    mov r8, r0
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    ldrh r0, [r4,#0xe]
    ldrh r1, [r7,#0xe]
    mov r9, r0
    bl sub_8107E6C
    strh r0, [r7,#0xe]
    mov r1, #1
    ldrh r0, [r7,#0xc]
    cmp r0, r8
    bne loc_81081F8
    ldrh r0, [r7,#0xe]
    cmp r0, r9
    bne loc_81081F8
    mov r1, #0
loc_81081F8:
    strb r1, [r5,#4]
    pop {pc}
// end of function sub_81081CC

loc_81081FC:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108214-0x8108206-2] // off_8108218
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8108214:    .word off_8108218
off_8108218:    .word sub_8108224+1
    .word loc_8108294+1
    .word sub_8108484+1
.thumb
sub_8108224:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x8108280-0x810822a-2] // unk_202E004
    mov r0, #0x12
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108224

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    ldr r0, [pc, #0x8108290-0x8108244-4] // =0x0
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    ldr r4, [pc, #0x8108284-0x8108252-2] // dword_8108288
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x32]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x24]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl loc_8108294
    pop {pc}
off_8108280:    .word unk_202E004
off_8108284:    .word dword_8108288
dword_8108288:    .word 0x3A1E3A26, 0x321E
dword_8108290:    .word 0x0
loc_8108294:
    push {lr}
    ldr r0, [pc, #0x81082b4-0x8108296-2] // off_81082B8
    ldrb r1, [r6,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_810848C
    bl sub_8002DF0
    bl sub_800281C
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_81082B4:    .word off_81082B8
off_81082B8:    .word sub_81082EC+1
    .word sub_8108300+1
    .word sub_8108300+1
    .word sub_810835C+1
    .word sub_81083C4+1
    .word sub_81083F0+1
    .word sub_810841C+1
    .word sub_8108300+1
    .word sub_8108448+1
    .word sub_810835C+1
    .word sub_8108398+1
    .word sub_8108300+1
    .word sub_8108474+1
.thumb
sub_81082EC:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_81082EC

.thumb
sub_8108300:
    push {lr}
    mov r4, #0x23 
    strb r4, [r5]
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8108314
    ldrb r0, [r6,#0xe]
    cmp r0, #0xc
    bne loc_810831A
loc_8108314:
    mov r4, #1
    strb r4, [r5]
    b loc_810832C
loc_810831A:
    ldrh r0, [r6,#0x30]
    ldrh r1, [r6,#0x22]
    add r0, r0, r1
    ldrh r1, [r6,#0x2e]
    sub r1, #1
    cmp r0, r1
    bne loc_810832C
    mov r1, #1
    strb r1, [r5]
loc_810832C:
    mov r0, #4
    str r0, [r5,#0xc]
    bl sub_8002D1A
    bl sub_8002F1A
    ldrh r0, [r6,#0x30]
    add r0, #2
    bl sub_805411A
    add r1, #0x20 
    ldrh r2, [r1,#0xc]
    add r2, #0x30 
    strh r2, [r7,#0xc]
    ldrh r0, [r6,#0x30]
    mov r1, #0x12
    mul r0, r1
    add r0, #0x1b
    strh r0, [r7,#0xe]
    bl sub_81084B0
    bl sub_8108510
    pop {pc}
// end of function sub_8108300

.thumb
sub_810835C:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_810836A
    mov r4, #0x21 
loc_810836A:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    ldrb r0, [r5,#0x10]
    tst r0, r0
    bne loc_810837C
    mov r4, #1
    strb r4, [r5]
    b loc_8108382
loc_810837C:
    mov r0, #2
    str r0, [r5,#0xc]
    b loc_8108382
loc_8108382:
    bl sub_8002D1A
    bl sub_8002F1A
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_810835C

.thumb
sub_8108398:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_81083A6
    mov r4, #0x21 
loc_81083A6:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002CC6
    bl sub_8002F1A
    bl sub_81085A8
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_8108398

.thumb
sub_81083C4:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_81083D2
    mov r4, #0x21 
loc_81083D2:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002CC6
    bl sub_8002F1A
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_81083C4

.thumb
sub_81083F0:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_81083FE
    mov r4, #0x21 
loc_81083FE:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002CC6
    bl sub_8002F1A
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_81083F0

.thumb
sub_810841C:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_810842A
    mov r4, #0x21 
loc_810842A:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002CC6
    bl sub_81085D8
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
// end of function sub_810841C

.thumb
sub_8108448:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl sub_80539A0
    beq loc_8108456
    mov r4, #0x21 
loc_8108456:
    strb r4, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    bl sub_8002D1A
    bl sub_8002F1A
    bl sub_8108554
    bl sub_81084B0
    bl sub_81084D4
    pop {pc}
    .balign 4, 0x00
// end of function sub_8108448

.thumb
sub_8108474:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    beq locret_8108482
    mov r4, #1
    strb r4, [r5]
locret_8108482:
    pop {pc}
// end of function sub_8108474

.thumb
sub_8108484:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108484

.thumb
sub_810848C:
    push {r4-r7,lr}
    ldr r0, [r6,#0x40]
    ldr r1, [r6,#0x44]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8108550-0x8108496-2] // dword_201A000
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046C98
    ldr r0, [r5,#0xc]
    ldrb r1, [r7,#1]
    cmp r1, #0
    beq locret_81084AC
    add r0, #1
locret_81084AC:
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_810848C

.thumb
sub_81084B0:
    push {r4-r7,lr}
    push {r7}
    ldr r0, [r6,#0x40]
    ldr r1, [r6,#0x44]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8108550-0x81084bc-4] // dword_201A000
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046C98
    ldrb r0, [r7,#3]
    sub r0, #1
    pop {r7}
    strb r0, [r7,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_81084B0

.thumb
sub_81084D4:
    push {r4-r7,lr}
    ldr r0, [r6,#0x40]
    ldr r1, [r6,#0x44]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8108550-0x81084de-2] // dword_201A000
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0xc0
    ldr r1, [r6,#0x48]
    bl sub_8046F02
    mov r4, #0
    mov r0, #0
    mvn r0, r0
    mov r2, #0x80
    lsl r2, r2, #0x18
loc_81084F6:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_81084FE
    bic r0, r2
loc_81084FE:
    lsr r2, r2, #1
    add r7, #1
    add r4, #1
    cmp r4, #0x19
    blt loc_81084F6
    bl sub_8002FD8
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_81084D4

.thumb
sub_8108510:
    push {r4-r7,lr}
    ldr r0, [r6,#0x40]
    ldr r1, [r6,#0x44]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8108550-0x810851a-2] // dword_201A000
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0xc0
    ldr r1, [r6,#0x48]
    bl sub_8046F02
    mov r4, #0
    mov r0, #0
    mvn r0, r0
    lsl r0, r0, #1
    lsr r0, r0, #1
    mov r2, #0x80
    lsl r2, r2, #0x17
loc_8108536:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_810853E
    bic r0, r2
loc_810853E:
    lsr r2, r2, #1
    add r7, #1
    add r4, #1
    cmp r4, #0x19
    blt loc_8108536
    bl sub_8002FD8
    pop {r4-r7,pc}
    .byte 0, 0
off_8108550:    .word dword_201A000
// end of function sub_8108510

.thumb
sub_8108554:
    push {r4-r7,lr}
    ldr r4, [pc, #0x810859c-0x8108556-2] // dword_81085A0
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x32]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    ldrh r1, [r7,#0xc]
    mov r8, r0
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x24]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    ldrh r1, [r7,#0xe]
    mov r9, r0
    bl sub_8107E6C
    strh r0, [r7,#0xe]
    mov r1, #1
    ldrh r0, [r7,#0xc]
    cmp r0, r8
    bne loc_8108596
    ldrh r0, [r7,#0xe]
    cmp r0, r9
    bne loc_8108596
    mov r1, #0
loc_8108596:
    strb r1, [r5,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810859C:    .word dword_81085A0
dword_81085A0:    .word 0x3A1E3A26, 0x321E
// end of function sub_8108554

.thumb
sub_81085A8:
    push {r4-r7,lr}
    mov r0, #0x90
    ldrh r1, [r7,#0xc]
    mov r8, r0
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    mov r0, #0x38 
    ldrh r1, [r7,#0xe]
    mov r9, r0
    bl sub_8107E6C
    strh r0, [r7,#0xe]
    mov r1, #1
    ldrh r0, [r7,#0xc]
    cmp r0, r8
    bne loc_81085D2
    ldrh r0, [r7,#0xe]
    cmp r0, r9
    bne loc_81085D2
    mov r1, #0
loc_81085D2:
    strb r1, [r5,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_81085A8

.thumb
sub_81085D8:
    push {r4-r7,lr}
    bl sub_8002F1A
    ldr r7, [pc, #0x81085f4-0x81085de-2] // dword_81085F8
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #7
    and r0, r1
    lsl r0, r0, #1
    ldrh r0, [r7,r0]
    bl sub_8002F02
    pop {r4-r7,pc}
off_81085F4:    .word dword_81085F8
dword_81085F8:    .word 0x8420000, 0x8421084, 0x88428000, 0x88429084
// end of function sub_81085D8

loc_8108608:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108620-0x8108612-2] // off_8108624
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8108620:    .word off_8108624
off_8108624:    .word sub_8108630+1
    .word sub_8108654+1
    .word sub_8108674+1
.thumb
sub_8108630:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    str r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    ldr r0, [r6,#0x4c]
    mvn r0, r0
    str r0, [r5,#0xc]
    bl sub_8108654
// end of function sub_8108630

    pop {pc}
.thumb
sub_8108654:
    push {lr}
    ldrb r0, [r6,#0xf]
    cmp r0, #0
    bne loc_8108664
    ldr r0, [r6,#0x4c]
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8108668
loc_8108664:
    bl sub_810867C
loc_8108668:
    ldr r0, [r6,#0x4c]
    str r0, [r5,#0xc]
    bl sub_8108704
// end of function sub_8108654

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8108674:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108674

.thumb
sub_810867C:
    push {r4-r7,lr}
    ldrb r1, [r5,#4]
    ldr r3, [pc, #0x81086e4-0x8108680-4] // dword_81086E8
    ldr r3, [r3,r1]
    push {r5}
    mov r0, #0x11
    mov r1, #0xb
    mov r2, #2
    mov r4, #0xc
    mov r5, #9
    bl sub_8001DDC
// end of function sub_810867C

    pop {r5}
    mov r0, #0
    str r0, [r5,#0x10]
    ldrb r1, [r5,#4]
    tst r1, r1
    beq loc_81086A6
    bl sub_80347B4
    b loc_81086AA
loc_81086A6:
    ldr r0, [pc, #0x81086d8-0x81086a6-2] // off_81086DC
    ldr r0, [r0,r1]
loc_81086AA:
    ldr r7, [pc, #0x81086f4-0x81086aa-2] // dword_81086F8
    ldr r7, [r7,r1]
    push {r5}
    ldr r1, [r6,#0x4c]
    ldr r2, [pc, #0x81086cc-0x81086b2-2] // unk_2016000
    ldr r3, [pc, #0x81086d0-0x81086b4-4] // =0x6003400
    mov r4, #0xa
    mov r5, #3
    ldr r6, [pc, #0x81086d4-0x81086ba-2] // dword_86C6E60
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0x68 
    .byte 0x61 
    .byte 0
    .byte 0x20
    .byte 0xA8
    .byte 0x61 
    .byte 0xF0
    .byte 0xBD
    .balign 4, 0x00
off_81086CC:    .word unk_2016000
dword_81086D0:    .word 0x6003400
off_81086D4:    .word dword_86C6E60
off_81086D8:    .word off_81086DC
off_81086DC:    .word loc_86E6888
    .word unk_86DE644
off_81086E4:    .word dword_81086E8
dword_81086E8:    .word 0x86F17E0, 0x86F17E0, 0x86F17E0
off_81086F4:    .word dword_81086F8
dword_81086F8:    .word 0x0, 0x0, 0x0
.thumb
sub_8108704:
    push {r4-r7,lr}
    mov r2, #0x78 
    ldr r1, [r5,#0x14]
    b loc_810870C
loc_810870C:
    mov r0, #0x12
    mov r1, #0xd
    lsr r2, r2, #2
    bl sub_8108718
// end of function sub_8108704

    pop {r4-r7,pc}
.thumb
sub_8108718:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8108750-0x810871a-2] // dword_803511C+128
    mov r6, #0
loc_810871E:
    push {r0}
    mov r4, #0
loc_8108722:
    push {r0-r4}
    mov r2, #2
    mov r4, #1
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8108718

    pop {r0-r4}
    sub r2, #1
    bgt loc_8108738
    pop {r0}
    b locret_810874C
loc_8108738:
    add r0, #1
    add r3, #4
    add r4, #1
    cmp r4, #0xa
    blt loc_8108722
    pop {r0}
    add r1, #2
    add r6, #1
    cmp r6, #3
    blt loc_810871E
locret_810874C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8108750:    .word dword_803511C+0x80
loc_8108754:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810876c-0x810875e-2] // off_8108770
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810876C:    .word off_8108770
off_8108770:    .word sub_810877C+1
    .word sub_81087C0+1
    .word sub_8108808+1
.thumb
sub_810877C:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0x11
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810877C

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x81087bc-0x810879e-2] // =0x240
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_81087C0
    pop {pc}
off_81087BC:    .word 0x240
.thumb
sub_81087C0:
    push {lr}
    ldr r0, [pc, #0x81087d0-0x81087c2-2] // off_81087D4
    ldrb r1, [r6,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81087D0:    .word off_81087D4
off_81087D4:    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108810+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
    .word sub_8108848+1
// end of function sub_81087C0

.thumb
sub_8108808:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108808

.thumb
sub_8108810:
    push {lr}
    mov r1, #0x43 
    strb r1, [r5]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    bl sub_8108868
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    tst r0, r0
    bne loc_810882A
    mov r0, #1
    strb r0, [r5]
loc_810882A:
    ldr r0, [r5,#0x10]
    bl sub_81088B8
    bl sub_81088F4
    mov r0, #0x80
    bl sub_80539A0
    beq loc_8108840
    mov r0, #1
    strb r0, [r5]
loc_8108840:
    bl sub_800283C
// end of function sub_8108810

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8108848:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0
    mvn r0, r0
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    ldr r0, [r5,#0x10]
    bl sub_81088B8
    bl sub_81088F4
    bl sub_800283C
// end of function sub_8108848

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8108868:
    push {r4-r7,lr}
    add r5, r0, #0
    add r4, r1, #0
    ldrh r0, [r6,#0x32]
    ldrh r1, [r6,#0x24]
    bl sub_8046E64
    beq loc_8108882
    sub r0, #1
    bl sub_8046CA8
    ldrb r1, [r7]
    b loc_8108884
loc_8108882:
    mov r1, #0
loc_8108884:
    lsr r1, r1, #2
    cmp r1, r5
    beq loc_81088A2
    push {r1}
    ldr r0, [pc, #0x81088a8-0x810888c-4] // byte_86E66B8
    ldr r2, [pc, #0x81088ac-0x810888e-2] // unk_2017C00
    ldr r3, [pc, #0x81088b4-0x8108890-4] // =0x6014800
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x81088b0-0x8108896-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 4
    .byte 0x1C
    .byte 0x20
    .byte 0xBC
loc_81088A2:
    add r0, r5, #0
    add r1, r4, #0
    pop {r4-r7,pc}
off_81088A8:    .word byte_86E66B8
off_81088AC:    .word unk_2017C00
off_81088B0:    .word dword_868E224
dword_81088B4:    .word 0x6014800
// end of function sub_8108868

.thumb
sub_81088B8:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r3, [pc, #0x81088e8-0x81088bc-4] // dword_81088EC
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r3, r3, r0
    ldrh r0, [r6,#0x32]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r3]
    add r0, r0, r1
    mov r1, #8
    sub r1, r1, r4
    lsl r1, r1, #2
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x24]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r3,#1]
    add r0, r0, r1
    add r0, #0xa
    strh r0, [r7,#0xe]
    pop {r4-r7,pc}
off_81088E8:    .word dword_81088EC
dword_81088EC:    .word 0x3A1E3A26, 0x321E
// end of function sub_81088B8

.thumb
sub_81088F4:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x3f 
    and r0, r1
    lsr r0, r0, #2
    ldr r4, [pc, #0x8108910-0x8108902-2] // loc_8108914
    lsl r0, r0, #1
    ldrh r0, [r4,r0]
    bl sub_8002F02
    pop {r4-r7,pc}
    .byte 0, 0
off_8108910:    .word loc_8108914
// end of function sub_81088F4

loc_8108914:
    tst r0, r2
    sub r2, #0x2e 
    add r2, #0x4c 
    cmp r2, #0x6a 
    mov r2, #0x88
    sub r6, r0, r2
    asr r4, r0, #0xa
    lsr r2, r0, #0xa
    lsl r0, r0, #0xa
    lsr r2, r0, #0xa
    asr r4, r0, #0xa
    sub r6, r0, r2
    mov r2, #0x88
    cmp r2, #0x6a 
    add r2, #0x4c 
    sub r2, #0x2e 
loc_8108934:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810894c-0x810893e-2] // off_8108950
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810894C:    .word off_8108950
off_8108950:    .word sub_810895C+1
    .word sub_810899C+1
    .word sub_81089D0+1
.thumb
sub_810895C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0x13
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810895C

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8108998-0x810897e-2] // =0x250
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810899C
    pop {pc}
    .balign 4, 0x00
off_8108998:    .word 0x250
.thumb
sub_810899C:
    push {lr}
    mov r0, #9
    bl sub_805411A
    add r1, #0x20 
    ldrh r0, [r1,#0xc]
    strh r0, [r7,#0xc]
    ldrh r0, [r1,#0xe]
    add r0, #0x14
    strh r0, [r7,#0xe]
    ldr r0, [pc, #0x81089c4-0x81089b0-4] // off_81089C8
    ldrh r1, [r6,#0x34]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FD8
    bl sub_800283C
// end of function sub_810899C

    pop {pc}
    .balign 4, 0x00
off_81089C4:    .word off_81089C8
off_81089C8:    .word start_
    .word 0x10000000
.thumb
sub_81089D0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_81089D0

loc_81089D8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x81089f0-0x81089e2-2] // off_81089F4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81089F0:    .word off_81089F4
off_81089F4:    .word sub_8108A04+1
    .word sub_8108A5C+1
    .word sub_8108AD8+1
    .word sub_8108B78+1
.thumb
sub_8108A04:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #8
    ldr r1, [pc, #0x8108a54-0x8108a0c-4] // unk_2031004
    bl sub_80028E8
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108A04

    bl sub_8002FC2
    bl sub_8002D60
    mov r0, #0xf0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8108a58-0x8108a2c-4] // =0x280
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0x78 
    strh r0, [r7,#0xc]
    mov r0, #0x4c 
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_8108A5C
    .byte 0
    .byte 0xBD
off_8108A54:    .word unk_2031004
off_8108A58:    .word 0x280
.thumb
sub_8108A5C:
    push {lr}
    ldr r0, [pc, #0x8108a70-0x8108a5e-2] // off_8108A74
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_8108A70:    .word off_8108A74
off_8108A74:    .word sub_8108A80+1
    .word sub_8108AA0+1
    .word sub_8108AC0+1
// end of function sub_8108A5C

.thumb
sub_8108A80:
    push {lr}
    bl sub_8108B80
// end of function sub_8108A80

    mov r0, #0xa3
    strb r0, [r5]
    mov r0, #0
    mov r1, #0xff
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0xff
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
.thumb
sub_8108AA0:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x28 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_8108AB2
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0x40 
loc_8108AB2:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
// end of function sub_8108AA0

.thumb
sub_8108AC0:
    push {lr}
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    bl sub_8108BA8
// end of function sub_8108AC0

    mov r0, #0xa1
    strb r0, [r5]
    pop {pc}
.thumb
sub_8108AD8:
    push {lr}
    ldr r0, [pc, #0x8108aec-0x8108ada-2] // off_8108AF0
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_8108AEC:    .word off_8108AF0
off_8108AF0:    .word sub_8108AFC+1
    .word sub_8108B2C+1
    .word sub_8108B4C+1
// end of function sub_8108AD8

.thumb
sub_8108AFC:
    push {lr}
    mov r0, #8
    bl sub_80539A0
    beq locret_8108B28
    bl sub_8108B80
    bl sub_804E448
    mov r0, #0xa3
    strb r0, [r5]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x40 
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
locret_8108B28:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8108AFC

.thumb
sub_8108B2C:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0xff
    blt loc_8108B40
    mov r1, #0x40 
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#9]
loc_8108B40:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
// end of function sub_8108B2C

.thumb
sub_8108B4C:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x20 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    blt loc_8108B6A
    bl sub_8002D9E
    bl sub_80540E0
    mov r0, #0xff
    strb r0, [r6,#0xf]
    bl sub_8108BC8
    pop {pc}
loc_8108B6A:
    add r2, r0, #0
    mov r1, #0xff
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_8108B4C

.thumb
sub_8108B78:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108B78

.thumb
sub_8108B80:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x8108ba4-0x8108b88-4] // dword_86D51EC
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_8108B80

    mov r0, #3
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r4-r7,pc}
off_8108BA4:    .word dword_86D51EC
.thumb
sub_8108BA8:
    push {r4-r7,lr}
    ldrb r1, [r5,#4]
    bl sub_803478C
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x8108bc4-0x8108bb6-2] // dword_86D539C
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_8108BA8

    pop {r4-r7,pc}
    .balign 4, 0x00
off_8108BC4:    .word dword_86D539C
.thumb
sub_8108BC8:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
// end of function sub_8108BC8

    pop {r4-r7,pc}
loc_8108BDC:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108bf4-0x8108be6-2] // off_8108BF8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8108BF4:    .word off_8108BF8
off_8108BF8:    .word sub_8108C04+1
    .word sub_8108C68+1
    .word sub_8108C70+1
.thumb
sub_8108C04:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x14
    bl sub_80028E8
    ldrb r0, [r6,#0xd]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108C04

    bl sub_8002FC2
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8108c58-0x8108c26-2] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    bl sub_8002C9E
    ldr r4, [pc, #0x8108c5c-0x8108c38-4] // byte_8108C60
    ldrb r0, [r6,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrb r1, [r4]
    strh r1, [r7,#0xc]
    ldrb r1, [r4,#1]
    strh r1, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_8108C68
    pop {pc}
    .balign 4, 0x00
off_8108C58:    .word 0x200
off_8108C5C:    .word byte_8108C60
byte_8108C60:    .byte 0x4C
    .byte 0x62, 0x44
    .byte 0x62, 0x44
    .byte 0x5A, 0x0
    .byte 0x0
.thumb
sub_8108C68:
    push {lr}
    bl sub_800283C
// end of function sub_8108C68

    pop {pc}
.thumb
sub_8108C70:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108C70

loc_8108C78:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108c90-0x8108c82-2] // off_8108C94
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8108C90:    .word off_8108C94
off_8108C94:    .word sub_8108CA0+1
    .word sub_8108D00+1
    .word sub_8108D20+1
.thumb
sub_8108CA0:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    ldr r1, [pc, #0x8108cf8-0x8108ca6-2] // unk_202E004
    mov r0, #0x12
    bl sub_80028E8
    ldrb r0, [r6,#0xd]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108CA0

    bl sub_8002FC2
    bl sub_8002D60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    str r0, [r5,#0x18]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8108cfc-0x8108cd2-2] // =0x280
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0
    strh r0, [r7,#0xc]
    mov r0, #0
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [r6,#0x4c]
    mvn r0, r0
    str r0, [r5,#0xc]
    bl sub_8108D00
    pop {pc}
off_8108CF8:    .word unk_202E004
off_8108CFC:    .word 0x280
.thumb
sub_8108D00:
    push {lr}
    ldrb r0, [r6,#0xf]
    cmp r0, #0
    bne loc_8108D0E
    ldr r0, [r6,#0x4c]
    cmp r0, #0xff
    beq loc_8108D12
loc_8108D0E:
    bl sub_8108D28
loc_8108D12:
    mov r0, #0xff
    str r0, [r6,#0x4c]
    bl sub_800283C
// end of function sub_8108D00

    bl sub_8108D78
    pop {pc}
.thumb
sub_8108D20:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108D20

.thumb
sub_8108D28:
    push {r4-r7,lr}
    push {r5}
    mov r0, #0x11
    mov r1, #0xf
    mov r2, #2
    ldr r3, [pc, #0x8108d64-0x8108d32-2] // dword_86F1840
    mov r4, #0xc
    mov r5, #5
    bl sub_8001DDC
// end of function sub_8108D28

    pop {r5}
    mov r0, #0
    str r0, [r5,#0x10]
    push {r5}
    ldr r0, [pc, #0x8108d70-0x8108d44-4] // byte_86E66B8
    ldr r1, [r6,#0x4c]
    ldr r2, [pc, #0x8108d68-0x8108d48-4] // unk_2016000
    ldr r3, [pc, #0x8108d6c-0x8108d4a-2] // =0x6003680
    mov r4, #0xa
    mov r5, #1
    ldr r6, [pc, #0x8108d74-0x8108d50-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0x68 
    .byte 0x61 
    .byte 0
    .byte 0x20
    .byte 0xA8
    .byte 0x61 
    .byte 0xF0
    .byte 0xBD
    .balign 4, 0x00
off_8108D64:    .word dword_86F1840
off_8108D68:    .word unk_2016000
dword_8108D6C:    .word 0x6003680
off_8108D70:    .word byte_86E66B8
off_8108D74:    .word dword_86C6E60
.thumb
sub_8108D78:
    push {r4-r7,lr}
    mov r2, #0x28 
    ldr r1, [r5,#0x10]
    add r1, #2
    str r1, [r5,#0x10]
    ldr r3, [r5,#0x14]
    lsl r3, r3, #2
    cmp r1, r3
    bge loc_8108DA6
    add r2, r1, #0
    ldr r4, [r5,#0x18]
    add r4, #1
    str r4, [r5,#0x18]
    mov r3, #3
    and r4, r3
    bne loc_8108DA6
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8108DA6
    mov r0, #0x7c 
    bl f500_8000558
loc_8108DA6:
    mov r0, #0x12
    mov r1, #0xf
    lsr r2, r2, #2
    bl sub_8108DB4
// end of function sub_8108D78

    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_8108DB4:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8108ddc-0x8108db6-2] // dword_803511C+168
    mov r4, #0
loc_8108DBA:
    push {r0-r4}
    mov r2, #2
    mov r4, #1
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8108DB4

    pop {r0-r4}
    sub r2, #1
    bgt loc_8108DCE
    b locret_8108DD8
loc_8108DCE:
    add r0, #1
    add r3, #4
    add r4, #1
    cmp r4, #0xa
    blt loc_8108DBA
locret_8108DD8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8108DDC:    .word dword_803511C+0xA8
loc_8108DE0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108df8-0x8108dea-2] // off_8108DFC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8108DF8:    .word off_8108DFC
off_8108DFC:    .word sub_8108E08+1
    .word sub_8108E68+1
    .word sub_8108E8C+1
.thumb
sub_8108E08:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x10
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108E08

    bl sub_8002FC2
    bl sub_8002D60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    str r0, [r5,#0x18]
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8108e64-0x8108e38-4] // =0x210
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    ldrh r0, [r6,#0x34]
    lsl r0, r0, #4
    add r0, #8
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x26]
    lsl r0, r0, #4
    add r0, #0x88
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8108E68
    pop {pc}
off_8108E64:    .word 0x210
.thumb
sub_8108E68:
    push {lr}
    ldrh r0, [r6,#0x34]
    lsl r0, r0, #4
    add r0, #8
    ldrh r1, [r7,#0xc]
    bl sub_8107E6C
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x26]
    lsl r0, r0, #4
    add r0, #0x88
    ldrh r1, [r7,#0xe]
    bl sub_8107E6C
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_8108E68

    pop {pc}
.thumb
sub_8108E8C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8108E8C

    push {r4-r7,lr}
    push {r5}
    mov r0, #0x11
    mov r1, #0xf
    mov r2, #2
    ldr r3, [pc, #0x8108ed0-0x8108e9e-2] // dword_86F1840
    mov r4, #0xc
    mov r5, #5
    bl sub_8001DDC
    pop {r5}
    mov r0, #0
    str r0, [r5,#0x10]
    push {r5}
    ldr r0, [pc, #0x8108edc-0x8108eb0-4] // byte_86E66B8
    ldr r1, [r6,#0x4c]
    ldr r2, [pc, #0x8108ed4-0x8108eb4-4] // unk_2016000
    ldr r3, [pc, #0x8108ed8-0x8108eb6-2] // =0x6003680
    mov r4, #0xa
    mov r5, #1
    ldr r6, [pc, #0x8108ee0-0x8108ebc-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0x68 
    .byte 0x61 
    .byte 0
    .byte 0x20
    .byte 0xA8
    .byte 0x61 
    .byte 0xF0
    .byte 0xBD
    .byte 0, 0
off_8108ED0:    .word dword_86F1840
off_8108ED4:    .word unk_2016000
dword_8108ED8:    .word 0x6003680
off_8108EDC:    .word byte_86E66B8
off_8108EE0:    .word dword_86C6E60
    push {r4-r7,lr}
    mov r2, #0x28 
    ldr r1, [r5,#0x10]
    add r1, #2
    str r1, [r5,#0x10]
    ldr r3, [r5,#0x14]
    lsl r3, r3, #2
    cmp r1, r3
    bge loc_8108F0C
    add r2, r1, #0
    ldr r4, [r5,#0x18]
    add r4, #1
    str r4, [r5,#0x18]
    mov r3, #3
    and r4, r3
    bne loc_8108F0C
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8108F0C
loc_8108F0C:
    mov r0, #0x12
    mov r1, #0xf
    lsr r2, r2, #2
    bl sub_8108F18
    pop {r4-r7,pc}
.thumb
sub_8108F18:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8108f40-0x8108f1a-2] // dword_803511C+168
    mov r4, #0
loc_8108F1E:
    push {r0-r4}
    mov r2, #2
    mov r4, #1
    mov r5, #2
    bl sub_8001DDC
// end of function sub_8108F18

    pop {r0-r4}
    sub r2, #1
    bgt loc_8108F32
    b locret_8108F3C
loc_8108F32:
    add r0, #1
    add r3, #4
    add r4, #1
    cmp r4, #0xa
    blt loc_8108F1E
locret_8108F3C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8108F40:    .word dword_803511C+0xA8
loc_8108F44:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8108f60-0x8108f4e-2] // off_8108F64
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8108F60:    .word off_8108F64
off_8108F64:    .word off_8108F78
    .word off_8108F84
    .word off_8108F90
    .word off_8108F9C
    .word off_8108FA8
off_8108F78:    .word sub_8108FB4+1
    .word sub_8109044+1
    .word sub_8109284+1
off_8108F84:    .word sub_8108FB4+1
    .word sub_8109094+1
    .word sub_8109284+1
off_8108F90:    .word sub_8108FB4+1
    .word sub_81090E4+1
    .word sub_8109284+1
off_8108F9C:    .word sub_8108FB4+1
    .word sub_8109134+1
    .word sub_8109284+1
off_8108FA8:    .word sub_8108FB4+1
    .word sub_81091BC+1
    .word sub_8109284+1
.thumb
sub_8108FB4:
    push {lr}
    mov r1, #0xa3
    ldrb r0, [r5,#4]
    cmp r0, #0xc
    blt loc_8108FC0
    mov r1, #0x83
loc_8108FC0:
    strb r1, [r5]
    mov r0, #0x15
    bl sub_80028E8
    ldrb r0, [r5,#3]
    sub r0, #4
    ldr r1, [pc, #0x810900c-0x8108fcc-4] // dword_8109014
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8108FB4

    bl sub_8002FC2
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldrb r0, [r5,#3]
    sub r0, #4
    lsl r0, r0, #1
    ldr r1, [pc, #0x8109010-0x8108ff2-2] // dword_8109014
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    pop {pc}
dword_810900C:    .word 0x8109032
off_8109010:    .word dword_8109014
dword_8109014:    .word 0x1200110, 0x1100120, 0x1200120, 0x1200110, 0x1100120
    .word 0x1200120, 0x1200110, 0x2000120, 0x2020002, 0x20200
    .word 0x2000202, 0x2
.thumb
sub_8109044:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #4
    beq loc_8109052
    cmp r0, #5
    beq loc_8109060
    b loc_8109076
loc_8109052:
    ldrb r0, [r6,#0xc]
    sub r0, #0x87
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_810908C
loc_8109060:
    ldrb r0, [r6,#0xc]
    sub r0, #0x87
    lsl r0, r0, #3
    sub r0, #0xd
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldr r0, [r6,#0x44]
    bl sub_810928C
    b loc_810908C
loc_8109076:
    ldrb r0, [r6,#0xc]
    sub r0, #0x87
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldrh r0, [r6,#0x12]
    bl sub_810928C
    b loc_810908C
loc_810908C:
    bl sub_800283C
// end of function sub_8109044

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8109094:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #7
    beq loc_81090A2
    cmp r0, #8
    beq loc_81090B0
    b loc_81090C6
loc_81090A2:
    ldrb r0, [r6,#0xc]
    sub r0, #0x75 
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_81090DC
loc_81090B0:
    ldrb r0, [r6,#0xc]
    sub r0, #0x75 
    lsl r0, r0, #3
    sub r0, #0xd
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldr r0, [r6,#0x48]
    bl sub_810928C
    b loc_81090DC
loc_81090C6:
    ldrb r0, [r6,#0xc]
    sub r0, #0x75 
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldrh r0, [r6,#0x1c]
    bl sub_810928C
    b loc_81090DC
loc_81090DC:
    bl sub_800283C
// end of function sub_8109094

    pop {pc}
    .balign 4, 0x00
.thumb
sub_81090E4:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0xa
    beq loc_81090F2
    cmp r0, #0xb
    beq loc_8109100
    b loc_8109116
loc_81090F2:
    ldrb r0, [r6,#0xc]
    sub r0, #0x63 
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_810912C
loc_8109100:
    ldrb r0, [r6,#0xc]
    sub r0, #0x63 
    lsl r0, r0, #3
    sub r0, #0xd
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldr r0, [r6,#0x4c]
    bl sub_810928C
    b loc_810912C
loc_8109116:
    ldrb r0, [r6,#0xc]
    sub r0, #0x63 
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldrh r0, [r6,#0x26]
    bl sub_810928C
    b loc_810912C
loc_810912C:
    bl sub_800283C
// end of function sub_81090E4

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8109134:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0xd
    beq loc_8109142
    cmp r0, #0xe
    beq loc_8109168
    b loc_810918C
loc_8109142:
    bl sub_81091B4
    beq loc_810915A
    ldr r0, [r5,#0x10]
    tst r0, r0
    bne loc_810915A
    mov r0, #1
    str r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
loc_810915A:
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_81091AE
loc_8109168:
    mov r4, #0xd
    bl sub_81091B4
    beq loc_8109176
    ldr r0, [r6,#0x50]
    bl sub_81092D8
loc_8109176:
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    sub r0, r0, r4
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldr r0, [r6,#0x50]
    bl sub_810928C
    b loc_81091AE
loc_810918C:
    bl sub_81091B4
    beq loc_8109198
    mov r0, #1
    strb r0, [r5]
    b loc_81091AE
loc_8109198:
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    ldrh r0, [r6,#0x30]
    bl sub_810928C
    b loc_81091AE
loc_81091AE:
    bl sub_800283C
// end of function sub_8109134

    pop {pc}
.thumb
sub_81091B4:
    ldr r0, [r6,#0x50]
    cmp r0, #0x38 
    mov pc, lr
    .balign 4, 0x00
// end of function sub_81091B4

.thumb
sub_81091BC:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0x10
    beq loc_81091CA
    cmp r0, #0x11
    beq loc_8109204
    b loc_810923E
loc_81091CA:
    bl sub_810927C
    beq loc_81091E2
    ldr r0, [r5,#0x10]
    tst r0, r0
    bne loc_81091E2
    mov r0, #1
    str r0, [r5,#0x10]
    bl sub_8002DF0
    bl sub_800281C
loc_81091E2:
    ldr r0, [r6,#0x30]
    tst r0, r0
    bne loc_81091F6
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_8109276
loc_81091F6:
    ldrb r0, [r6,#0xc]
    sub r0, #0x3f 
    lsl r0, r0, #3
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_8109276
loc_8109204:
    mov r4, #0xd
    bl sub_810927C
    beq loc_8109212
    ldr r0, [r6,#0x54]
    bl sub_81092D8
loc_8109212:
    ldr r0, [r6,#0x30]
    tst r0, r0
    bne loc_8109228
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    sub r0, r0, r4
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_8109236
loc_8109228:
    ldrb r0, [r6,#0xc]
    sub r0, #0x3f 
    lsl r0, r0, #3
    sub r0, r0, r4
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
loc_8109236:
    ldr r0, [r6,#0x54]
    bl sub_810928C
    b loc_8109276
loc_810923E:
    bl sub_810927C
    beq loc_810924A
    mov r0, #1
    strb r0, [r5]
    b loc_8109276
loc_810924A:
    ldr r0, [r6,#0x30]
    tst r0, r0
    bne loc_8109260
    ldrb r0, [r6,#0xc]
    sub r0, #0x51 
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
    b loc_810926E
loc_8109260:
    ldrb r0, [r6,#0xc]
    sub r0, #0x3f 
    lsl r0, r0, #3
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r0, #0x19
    strh r0, [r7,#0xe]
loc_810926E:
    ldrh r0, [r6,#0x3a]
    bl sub_810928C
    b loc_8109276
loc_8109276:
    bl sub_800283C
// end of function sub_81091BC

    pop {pc}
.thumb
sub_810927C:
    ldr r0, [r6,#0x54]
    cmp r0, #0x1e
    mov pc, lr
    .balign 4, 0x00
// end of function sub_810927C

.thumb
sub_8109284:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109284

.thumb
sub_810928C:
    push {r4-r7,lr}
    ldr r1, [r5,#0xc]
    tst r1, r1
    bne locret_81092D0
    mov r1, #1
    str r1, [r5,#0xc]
    mov r1, #0x64 
    svc 6
    add r6, r0, #0
    add r0, r1, #0
    mov r1, #0xa
    svc 6
    add r7, r0, #0
    add r4, r1, #0
    mov r2, #0x80
    lsl r2, r2, #0x18
    ldr r0, [pc, #0x81092d4-0x81092ac-4] // =0xFFFFFFFF
    add r3, r2, #0
    lsr r3, r6
    bic r0, r3
    tst r7, r7
    bne loc_81092BC
    tst r6, r6
    beq loc_81092C4
loc_81092BC:
    add r7, #3
    add r3, r2, #0
    lsr r3, r7
    bic r0, r3
loc_81092C4:
    add r4, #0xd
    add r3, r2, #0
    lsr r3, r4
    bic r0, r3
    bl sub_8002FD8
locret_81092D0:
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81092D4:    .word 0xFFFFFFFF
// end of function sub_810928C

.thumb
sub_81092D8:
    mov r4, #0
    cmp r0, #0x64 
    bge locret_81092E6
    mov r4, #3
    cmp r0, #0xa
    bge locret_81092E6
    mov r4, #6
locret_81092E6:
    mov pc, lr
dword_81092E8:    .word 0x6011800, 0x6013800, 0x6011800, 0x6013C00, 0x6013800
off_81092FC:    .word unk_2017800
    .word unk_2029000
    .word unk_2017800
    .word unk_2015800
    .word unk_2029000
dword_8109310:    .word 0x6013000, 0x6016800, 0x6012000, 0x6014400, 0x6016800
dword_8109324:    .word 0x6013800, 0x6017000, 0x6012800, 0x6014C00
    .word 0x6017000
off_8109338:    .word unk_3002700
    .word unk_3002760
    .word unk_3002700
    .word unk_30027A0
    .word unk_3002660
// end of function sub_81092D8

loc_810934C:
    sub r0, #0x40 
    lsl r1, r0, #0x18
    strb r0, [r0,#1]
    lsl r1, r0, #0x18
    cmp r0, #0x40 
    lsl r1, r0, #0x18
    ldr r4, [pc, #0x810945c-0x8109358-4] // dword_8109478
    lsl r1, r0, #0x18
    strb r0, [r0,#1]
    lsl r1, r0, #0x18
loc_8109360:
    mov r6, #0xa0
    lsl r0, r0, #0xc
    mov r7, #0xa0
    lsl r0, r0, #0xc
    mov r6, #0xa0
    lsl r0, r0, #0xc
    mov r7, #0x40 
    lsl r0, r0, #0xc
    mov r6, #0x80
    lsl r0, r0, #0xc
loc_8109374:
    mov r6, #0xc0
    lsl r0, r0, #0xc
    mov r7, #0xc0
    lsl r0, r0, #0xc
    mov r6, #0xc0
    lsl r0, r0, #0xc
    mov r7, #0x60 
    lsl r0, r0, #0xc
    mov r6, #0xa0
    lsl r0, r0, #0xc
loc_8109388:
    sub r1, #0x80
    lsl r1, r0, #0x18
    strb r0, [r0,#6]
    lsl r1, r0, #0x18
    cmp r1, #0x80
    lsl r1, r0, #0x18
    ldr r5, [pc, #0x8109598-0x8109394-4] // =0x20006824
    lsl r1, r0, #0x18
    strb r0, [r0,#6]
    lsl r1, r0, #0x18
loc_810939C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x81093b4-0x81093a6-2] // off_81093B8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81093B4:    .word off_81093B8
off_81093B8:    .word sub_81093C4+1
    .word loc_81094A8+1
    .word sub_8109578+1
.thumb
sub_81093C4:
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#3]
    cmp r0, #2
    beq loc_81093D0
    mov r1, #0x43 
loc_81093D0:
    strb r1, [r5]
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x8109454-0x81093d4-4] // dword_8109478
    ldrb r0, [r1,r0]
    bl sub_80028E8
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x810944c-0x81093de-2] // off_8109474
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_81093C4

    bl sub_8002FC2
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_81093FA
    ldr r0, [pc, #0x8109470-0x81093f4-4] // dword_8109484
    bl loc_800301E
loc_81093FA:
    ldrb r0, [r5,#3]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8109460-0x81093fe-2] // dword_8109464
    ldr r0, [r1,r0]
    bl sub_8002FD8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x8109458-0x8109408-4] // dword_8109478
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x8109450-0x8109414-4] // loc_81094A4
    ldrb r0, [r1,r0]
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x810944c-0x810941e-2] // off_8109474
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x810945c-0x8109424-4] // dword_8109478
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x2e 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    mov r0, #0
    strb r0, [r5,#0xc]
    strh r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_81094A8
    pop {pc}
off_810944C:    .word off_8109474
off_8109450:    .word loc_81094A4
off_8109454:    .word dword_8109478
dword_8109458:    .word 0x810947B
dword_810945C:    .word 0x810947E
off_8109460:    .word dword_8109464
dword_8109464:    .word 0x40000000, 0x401004, 0x0
off_8109470:    .word dword_8109484
off_8109474:    .word 0x100
dword_8109478:    .word 0x20090A0A, 0x1802020, 0x3000C0
dword_8109484:    .word 0x4030006, 0x40404, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
loc_81094A4:
    lsl r2, r0, #8
    lsl r1, r0, #4
loc_81094A8:
    push {lr}
    ldr r0, [pc, #0x81094b8-0x81094aa-2] // off_81094BC
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81094B8:    .word off_81094BC
off_81094BC:    .word sub_81094E0+1
    .word sub_810955C+1
    .word sub_81094C8+1
.thumb
sub_81094C8:
    push {lr}
    ldr r0, [r6,#0x58]
    mov r1, #1
    tst r0, r1
    bne loc_81094DA
    bl loc_8109580
    bl sub_8109930
loc_81094DA:
    bl sub_800283C
// end of function sub_81094C8

    pop {pc}
.thumb
sub_81094E0:
    push {lr}
    ldr r0, [pc, #0x8109504-0x81094e2-2] // off_8109508
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r6,#0x58]
    mov r1, #1
    tst r0, r1
    beq loc_81094FC
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_81094FC:
    bl sub_800283C
// end of function sub_81094E0

    pop {pc}
    .balign 4, 0x00
off_8109504:    .word off_8109508
off_8109508:    .word sub_8109558+1
    .word sub_8109514+1
    .word sub_8109530+1
.thumb
sub_8109514:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#6]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
// end of function sub_8109514

.thumb
sub_8109530:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810954A
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810954A:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_8109530

.thumb
sub_8109558:
    push {r7,lr}
    pop {r7,pc}
// end of function sub_8109558

.thumb
sub_810955C:
    push {lr}
    ldr r0, [r6,#0x58]
    mov r1, #1
    tst r0, r1
    beq loc_8109570
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    pop {pc}
loc_8109570:
    bl sub_800283C
// end of function sub_810955C

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8109578:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109578

loc_8109580:
    push {r5-r7,lr}
    mov r0, r8
    push {r0}
    mov r0, #0
    mov r8, r0
    ldr r4, [pc, #0x81096ac-0x810958a-2] // off_81096B0
    ldrb r0, [r6,#1]
    cmp r0, #4
    bne loc_810959E
    ldrb r1, [r5,#0xc]
    strb r0, [r5,#0xc]
    strb r1, [r5,#0xd]
off_8109598:    .word 0x20006824
    b loc_81095D0
loc_810959E:
    cmp r0, #0x10
    bne loc_81095AE
    ldrb r1, [r5,#0xc]
    strb r0, [r5,#0xc]
    strb r1, [r5,#0xd]
    ldr r4, [r4,#0x4] // (off_81096B4 - 0x81096b0)
    mov r0, #0xa
    b loc_81095D0
loc_81095AE:
    cmp r0, #0x1c
    bne loc_81095BE
    ldrb r1, [r5,#0xc]
    strb r0, [r5,#0xc]
    strb r1, [r5,#0xd]
    ldr r4, [r4,#0x8] // (off_81096B8 - 0x81096b0)
    mov r0, #0x14
    b loc_81095D0
loc_81095BE:
    cmp r0, #0x28 
    bne loc_81095CE
    ldrb r1, [r5,#0xc]
    strb r0, [r5,#0xc]
    strb r1, [r5,#0xd]
    ldr r4, [r4,#0xc] // (off_81096BC - 0x81096b0)
    mov r0, #0x1e
    b loc_81095D0
loc_81095CE:
    b loc_81096A4
loc_81095D0:
    mov r1, #0x14
    add r1, r1, r6
    add r1, r1, r0
    mov r2, #0x18
    add r2, r2, r6
    add r2, r2, r0
    ldrb r0, [r1]
    ldrb r1, [r2]
    add r1, r1, r0
    lsl r1, r1, #2
    ldrh r7, [r4,r1]
    add r1, #2
    ldrb r0, [r4,r1]
    tst r0, r0
    bne loc_8109606
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    bne loc_8109600
    ldrh r0, [r5,#0x10]
    cmp r0, r7
    beq loc_81096A4
    strh r7, [r5,#0x10]
    b loc_8109602
loc_8109600:
    strh r7, [r5,#0x10]
loc_8109602:
    tst r7, r7
    bne loc_810962C
loc_8109606:
    strh r7, [r5,#0x10]
    mov r0, #0
    bl sub_805411A
    push {r5}
    add r5, r1, #0
    bl sub_8002FE4
    ldr r1, [pc, #0x81096c4-0x8109616-2] // =0xBE000000
    orr r0, r1
    bl sub_8002FD8
    pop {r5}
    mov r0, #1
    bl sub_805411A
    mov r0, #1
    strb r0, [r1]
    b loc_81096A4
loc_810962C:
    add r0, r7, #0
    bl sub_81098EC
    add r0, r7, #0
    bl sub_8019010
    ldr r1, [r0,#0x24]
    tst r1, r1
    beq loc_81096A4
    ldr r2, [r0,#0x28]
    bl sub_81096D8
    bl sub_8109734
    bl sub_810978C
    ldr r0, [pc, #0x81096d0-0x810964c-4] // =0x3600
    ldr r1, [pc, #0x81096d4-0x810964e-2] // =0x400
    bl sub_8031640
    push {r5}
    add r0, r7, #0
    bl sub_8109748
    bl sub_8109778
    add r0, r7, #0
    bl sub_81097A0
    pop {r5}
    strb r6, [r5,#0xe]
    mov r0, #0
    bl sub_805411A
    add r4, r1, #0
    push {r5}
    add r5, r1, #0
    bl sub_8109514
    bl sub_8002FE4
    ldr r1, [pc, #0x81096c4-0x810967e-2] // =0xBE000000
    bic r0, r1
    ldr r1, [pc, #0x81096c8-0x8109682-2] // =0x1E000000
    orr r0, r1
    tst r6, r6
    beq loc_8109694
    ldr r1, [pc, #0x81096cc-0x810968a-2] // unk_2000000
loc_810968C:
    bic r0, r1
    lsl r1, r1, #1
    sub r6, #1
    bgt loc_810968C
loc_8109694:
    bl sub_8002FD8
    pop {r5}
    mov r0, #1
    bl sub_805411A
    mov r0, #0x43 
    strb r0, [r1]
loc_81096A4:
    pop {r0}
    mov r8, r0
    pop {r5-r7,pc}
    .balign 4, 0x00
off_81096AC:    .word off_81096B0
off_81096B0:    .word dword_201A000
off_81096B4:    .word unk_201A800
off_81096B8:    .word unk_201B000
off_81096BC:    .word dword_201B800
    .word dword_201C000
dword_81096C4:    .word 0xBE000000
dword_81096C8:    .word 0x1E000000
off_81096CC:    .word unk_2000000
off_81096D0:    .word 0x3600
off_81096D4:    .word 0x400
.thumb
sub_81096D8:
    push {r0-r2,r6,lr}
    push {r0,r1}
    mov r1, r8
    ldr r0, [pc, #0x81098b8-0x81096de-2] // dword_8109310
    ldr r0, [r0,r1]
    push {r0}
    ldr r1, [pc, #0x810988c-0x81096e4-4] // =0x800
    bl f900_8000950
    pop {r0}
    ldr r1, [pc, #0x81098d4-0x81096ec-4] // =0x6010000
    sub r0, r0, r1
    ldr r1, [pc, #0x81098d8-0x81096f0-4] // =0x400
    bl sub_8031640
    pop {r0,r1}
    mov r6, #0
    add r0, r1, #0
    ldr r1, [pc, #0x81098b8-0x81096fc-4] // dword_8109310
    mov r2, r8
    ldr r1, [r1,r2]
loc_8109702:
    push {r0,r1}
    ldr r2, [pc, #0x8109888-0x8109704-4] // =0xE0
    bl loc_8000874
    pop {r0,r1}
    mov r4, #0xe0
    add r0, r0, r4
    ldr r2, [pc, #0x81098e8-0x8109710-4] // =0xFF
    add r1, r1, r2
    add r6, #1
    cmp r6, #6
    blt loc_8109702
    pop {r0-r2,r6,pc}
// end of function sub_81096D8

.thumb
sub_810971C:
    push {r0-r2,r6,lr}
    mov r1, #0x40 
    mul r0, r1
    ldr r1, [pc, #0x810989c-0x8109722-2] // dword_8706800
    add r0, r0, r1
    mov r2, r8
    ldr r1, [pc, #0x81098bc-0x8109728-4] // dword_8109324
    ldr r1, [r1,r2]
    mov r2, #0x40 
    bl f900_80009A0
    pop {r0-r2,r6,pc}
// end of function sub_810971C

.thumb
sub_8109734:
    push {r0-r2,lr}
    add r0, r2, #0
    mov r2, r8
    ldr r1, [pc, #0x81098c0-0x810973a-2] // off_8109338
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8109898-0x810973e-2] // =0x40
    bl f900_800098C
    pop {r0-r2,pc}
    .balign 4, 0x00
// end of function sub_8109734

.thumb
sub_8109748:
    push {r0-r2,lr}
    tst r0, r0
    beq locret_8109776
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x12
    and r1, r2
    add r5, r1, #0
    ldrb r0, [r0,#7]
    cmp r0, #0xd
    blt loc_8109762
    mov r0, #0xc
loc_8109762:
    mov r1, #0x80
    mul r0, r1
    ldr r1, [pc, #0x81098a0-0x8109766-2] // unk_8706F00
    add r0, r0, r1
    mov r2, r8
    ldr r1, [pc, #0x81098c4-0x810976c-4] // loc_810934C
    ldr r1, [r1,r2]
    mov r2, #0x80
    bl f900_80009A0
locret_8109776:
    pop {r0-r2,pc}
// end of function sub_8109748

.thumb
sub_8109778:
    push {r0-r2,lr}
    ldr r0, [pc, #0x81098ac-0x810977a-2] // dword_8707A80
    mov r2, r8
    ldr r1, [pc, #0x81098c8-0x810977e-2] // loc_8109360
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x81098b0-0x8109782-2] // =0x20
    bl f900_800098C
    pop {r0-r2,pc}
    .balign 4, 0x00
// end of function sub_8109778

.thumb
sub_810978C:
    push {r0-r2,lr}
    ldr r0, [pc, #0x81098a4-0x810978e-2] // loc_8745CB8
    mov r2, r8
    ldr r1, [pc, #0x81098cc-0x8109792-2] // loc_8109374
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x81098a8-0x8109796-2] // =0x40
    bl f900_800098C
    pop {r0-r2,pc}
    .byte 0, 0
// end of function sub_810978C

.thumb
sub_81097A0:
    push {r0-r2,r4,lr}
    bl sub_8031660
    add r6, r0, #0
    tst r1, r1
    bne loc_81097D6
    add r0, r5, #0
    mov r1, #2
    tst r1, r0
    bne loc_81097D0
    mov r3, r8
    ldr r1, [pc, #0x81098d0-0x81097b6-2] // loc_8109388
    ldr r1, [r1,r3]
    push {r1}
    add r0, r1, #0
    ldr r1, [pc, #0x81098d4-0x81097be-2] // =0x6010000
    sub r0, r0, r1
    sub r0, #0xc0
    ldr r1, [pc, #0x81098e4-0x81097c4-4] // =0xFF
    bl sub_8031640
    pop {r1}
    mov r6, #0
    b loc_8109828
loc_81097D0:
    mov r1, #0x10
    tst r0, r1
    beq loc_81097E0
loc_81097D6:
    mov r4, #0xaa
    lsl r4, r4, #4
    add r4, #0xa
    mov r6, #3
    b loc_81097EE
loc_81097E0:
    add r0, r6, #0
    bl fA00_8000A30
    add r4, r0, #0
    bl fA00_8000A8C
    add r6, r0, #0
loc_81097EE:
    mov r3, r8
    ldr r1, [pc, #0x81098d0-0x81097f0-4] // loc_8109388
    ldr r1, [r1,r3]
    push {r1}
    add r0, r1, #0
    ldr r1, [pc, #0x81098d4-0x81097f8-4] // =0x6010000
    sub r0, r0, r1
    sub r0, #0xc0
    ldr r1, [pc, #0x81098e4-0x81097fe-2] // =0xFF
    bl sub_8031640
    pop {r1}
    add r3, r6, #0
loc_8109808:
    mov r0, #0xf
    and r0, r4
    lsr r4, r4, #4
    mov r2, #0x40 
    mul r0, r2
    ldr r2, [pc, #0x81098b4-0x8109812-2] // unk_8707580
    add r0, r0, r2
    mov r2, #0x40 
    push {r3}
    bl f900_80009A0
    pop {r3}
    sub r1, #0x40 
    sub r3, #1
    bne loc_8109808
    b locret_810982A
loc_8109828:
    mov r6, #0
locret_810982A:
    pop {r0-r2,r4,pc}
// end of function sub_81097A0

.thumb
sub_810982C:
    push {r4-r7,lr}
    add r7, r0, #0
    add r1, r7, #0
    ldr r0, [pc, #0x81098b8-0x8109832-2] // dword_8109310
    ldr r0, [r0,r1]
    add r6, r0, #0
    ldr r1, [pc, #0x810988c-0x8109838-4] // =0x800
    bl f900_8000950
    add r0, r6, #0
    ldr r1, [pc, #0x81098d4-0x8109840-4] // =0x6010000
    sub r0, r0, r1
    ldr r1, [pc, #0x81098d8-0x8109844-4] // =0x400
    bl sub_8031640
    add r1, r7, #0
    ldr r0, [pc, #0x81098bc-0x810984c-4] // dword_8109324
    ldr r0, [r0,r1]
    add r6, r0, #0
    ldr r1, [pc, #0x8109890-0x8109852-2] // =0x200
    bl f900_8000950
    add r0, r6, #0
    ldr r1, [pc, #0x81098d4-0x810985a-2] // =0x6010000
    sub r0, r0, r1
    ldr r1, [pc, #0x81098dc-0x810985e-2] // =0x200
    bl sub_8031640
    add r1, r7, #0
    ldr r0, [pc, #0x8109924-0x8109866-2] // dword_81092E8
    ldr r0, [r0,r1]
    add r6, r0, #0
    ldr r1, [pc, #0x8109894-0x810986c-4] // =0x800
    bl f900_8000950
    add r0, r6, #0
    ldr r1, [pc, #0x81098d4-0x8109874-4] // =0x6010000
    sub r0, r0, r1
    ldr r1, [pc, #0x81098e0-0x8109878-4] // =0x400
    bl sub_8031640
    pop {r4-r7,pc}
    .word 0xFFFFFF2E, 0x201A000
off_8109888:    .word 0xE0
off_810988C:    .word 0x800
off_8109890:    .word 0x200
off_8109894:    .word 0x800
off_8109898:    .word 0x40
off_810989C:    .word dword_8706800
off_81098A0:    .word unk_8706F00
off_81098A4:    .word loc_8745CB8
off_81098A8:    .word 0x40
off_81098AC:    .word dword_8707A80
dword_81098B0:    .word 0x20
off_81098B4:    .word unk_8707580
off_81098B8:    .word dword_8109310
off_81098BC:    .word dword_8109324
off_81098C0:    .word off_8109338
off_81098C4:    .word loc_810934C
off_81098C8:    .word loc_8109360
off_81098CC:    .word loc_8109374
off_81098D0:    .word loc_8109388
dword_81098D4:    .word 0x6010000
off_81098D8:    .word 0x400
off_81098DC:    .word 0x200
off_81098E0:    .word 0x400
off_81098E4:    .word 0x100
off_81098E8:    .word 0x100
// end of function sub_810982C

.thumb
sub_81098EC:
    push {r0-r2,r6,r7,lr}
    add r7, r0, #0
    ldr r0, [pc, #0x810991c-0x81098f0-4] // dword_874C670
    cmp r7, #0xff
    bgt loc_81098F8
    ldr r0, [pc, #0x8109918-0x81098f6-2] // dword_8749F30
loc_81098F8:
    mov r1, #0xff
    and r7, r1
    add r1, r7, #0
    ldr r2, [pc, #0x8109928-0x81098fe-2] // off_81092FC
    mov r4, r8
    ldr r2, [r2,r4]
    ldr r3, [pc, #0x8109924-0x8109904-4] // dword_81092E8
    ldr r3, [r3,r4]
    mov r4, #0xa
    mov r5, #3
    ldr r6, [pc, #0x8109920-0x810990c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xC7
    .byte 0xBD
    .balign 4, 0x00
off_8109918:    .word dword_8749F30
off_810991C:    .word dword_874C670
off_8109920:    .word dword_86C6E60
off_8109924:    .word dword_81092E8
off_8109928:    .word off_81092FC
    .word 0xB0
// end of function sub_81098EC

.thumb
sub_8109930:
    push {r4,lr}
    ldrb r1, [r6,#1]
    lsr r1, r1, #2
    ldr r0, [pc, #0x8109970-0x8109936-2] // dword_8109974
    ldrb r4, [r0,r1]
    cmp r4, #0xf0
    beq locret_810996A
    cmp r4, #0xff
    bne loc_810995E
    ldrh r0, [r6,#0x36]
    ldrh r1, [r6,#0x32]
    add r0, r0, r1
    ldr r4, [pc, #0x810996c-0x8109948-4] // dword_201B800
    lsl r0, r0, #2
    ldrh r0, [r4,r0]
    tst r0, r0
    bne loc_8109958
    mov r4, #0
    strb r4, [r7,#4]
    b locret_810996A
loc_8109958:
    bl sub_8019010
    ldrb r4, [r0,#8]
loc_810995E:
    strb r4, [r7,#4]
    mov r0, #1
    bl sub_805411A
    add r1, #0x20 
    strb r4, [r1,#4]
locret_810996A:
    pop {r4,pc}
off_810996C:    .word dword_201B800
off_8109970:    .word dword_8109974
dword_8109974:    .word 0x1000000, 0x2020101, 0xF0FFFF02, 0xF0F00000, 0x2F0F0F0
    .word 0x2
// end of function sub_8109930

.thumb
sub_810998C:
    push {r4-r7,lr}
    mov r3, r8
    push {r3}
    add r6, r0, #0
    add r7, r1, #0
    mov r8, r2
    add r0, r6, #0
    bl sub_81098EC
    bl sub_8019010
    mov r2, #0
loc_81099A4:
    ldrb r1, [r0,r2]
    cmp r1, r7
    beq loc_81099B2
    add r2, #1
    cmp r2, #3
    ble loc_81099A4
    b loc_81099E0
loc_81099B2:
    ldr r1, [r0,#0x24]
    tst r1, r1
    beq loc_81099E0
    ldr r2, [r0,#0x28]
    bl sub_81096D8
    bl sub_8109734
    add r0, r7, #0
    bl sub_810971C
    bl sub_810978C
    push {r5}
    add r0, r6, #0
    bl sub_8109748
    bl sub_8109778
    add r0, r6, #0
    bl sub_81097A0
    pop {r5}
loc_81099E0:
    pop {r3}
    mov r8, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word 0x3600
    .word 0x400
// end of function sub_810998C

loc_81099F0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x8109a0c-0x81099fa-2] // off_8109A10
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8109A0C:    .word off_8109A10
off_8109A10:    .word off_8109A20
    .word off_8109A2C
    .word off_8109A38
    .word off_8109A44
off_8109A20:    .word sub_8109A50+1
    .word sub_8109B00+1
    .word sub_8109BF4+1
off_8109A2C:    .word sub_8109A50+1
    .word sub_8109B00+1
    .word sub_8109BF4+1
off_8109A38:    .word sub_8109A50+1
    .word sub_8109B00+1
    .word sub_8109BF4+1
off_8109A44:    .word sub_8109A50+1
    .word sub_8109B00+1
    .word sub_8109BF4+1
.thumb
sub_8109A50:
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_8109A5C
    mov r1, #1
loc_8109A5C:
    strb r1, [r5]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x8109ac8-0x8109a60-4] // off_8109ACC
    ldr r1, [r1,r2]
    lsr r2, r2, #2
    ldr r3, [pc, #0x8109ae4-0x8109a66-2] // dword_8109AF4
    ldrb r0, [r3,r2]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #2
    ldr r1, [pc, #0x8109adc-0x8109a72-2] // off_8109AEC
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8109A50

    bl sub_8002FC2
    ldr r1, [pc, #0x8109ae0-0x8109a82-2] // dword_8109AF0
    ldrb r0, [r5,#4]
    lsr r0, r0, #2
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x8109adc-0x8109a98-4] // off_8109AEC
    ldrb r0, [r5,#4]
    lsr r0, r0, #1
    ldr r1, [pc, #0x8109ae8-0x8109a9e-2] // dword_8109AF8
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x2e 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strb r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strh r0, [r5,#0xe]
    strh r0, [r5,#0x10]
    strb r0, [r5,#0xc]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    bl sub_8109B00
    pop {pc}
off_8109AC8:    .word off_8109ACC
off_8109ACC:    .word unk_2031004
    .word unk_202E004
    .word unk_202E004
    .word unk_202E004
off_8109ADC:    .word off_8109AEC
off_8109AE0:    .word dword_8109AF0
off_8109AE4:    .word dword_8109AF4
off_8109AE8:    .word dword_8109AF8
off_8109AEC:    .word unk_2010000
dword_8109AF0:    .word 0x20909020
dword_8109AF4:    .word 0x17171716
dword_8109AF8:    .word 0x1800030
    .word 0xD001B6
.thumb
sub_8109B00:
    push {lr}
    ldr r0, [pc, #0x8109b10-0x8109b02-2] // off_8109B14
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8109B10:    .word off_8109B14
off_8109B14:    .word sub_8109B24+1
    .word sub_8109B34+1
    .word sub_8109B34+1
    .word sub_8109BD8+1
// end of function sub_8109B00

.thumb
sub_8109B24:
    push {lr}
    bl sub_8109C24
    bl sub_8109C68
    bl sub_800283C
// end of function sub_8109B24

    pop {pc}
.thumb
sub_8109B34:
    push {lr}
    ldr r0, [pc, #0x8109b58-0x8109b36-2] // off_8109B5C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r6,#0x58]
// end of function sub_8109B34

    mov r1, #1
    tst r0, r1
    beq loc_8109B50
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_8109B50:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_8109B58:    .word off_8109B5C
off_8109B5C:    .word sub_8109BAC+1
    .word sub_8109B68+1
    .word sub_8109B84+1
.thumb
sub_8109B68:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#6]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
// end of function sub_8109B68

.thumb
sub_8109B84:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_8109B9E
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_8109B9E:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_8109B84

.thumb
sub_8109BAC:
    push {lr}
    mov r0, #0x40 
    ldrh r0, [r6,r0]
    ldrh r1, [r6,#0x3c]
    add r0, r0, r1
    mov r1, #0x42 
    ldrh r1, [r6,r1]
    ldrh r2, [r6,#0x3e]
    add r1, r1, r2
    cmp r0, r1
    beq loc_8109BC6
    mov r1, #4
    strb r1, [r5,#9]
loc_8109BC6:
    ldrb r0, [r5,#3]
    cmp r0, #1
    bne loc_8109BD0
    bl sub_8109D1C
loc_8109BD0:
    bl sub_800283C
// end of function sub_8109BAC

    pop {pc}
    .balign 4, 0x00
.thumb
sub_8109BD8:
    push {lr}
    bl sub_8109CB0
    ldr r0, [r6,#0x58]
    mov r1, #1
    tst r0, r1
    beq loc_8109BEE
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_8109BEE:
    bl sub_800283C
// end of function sub_8109BD8

    pop {pc}
.thumb
sub_8109BF4:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109BF4

.thumb
sub_8109BFC:
    push {lr}
    ldr r3, [pc, #0x8109c20-0x8109bfe-2] // dword_201C000
    mov r1, #0x40 
    ldrh r1, [r6,r1]
    mov r2, #0x3c 
    ldrh r2, [r6,r2]
    add r1, r1, r2
    lsl r1, r1, #2
    add r3, r3, r1
    ldrh r0, [r3]
    ldrb r1, [r3,#2]
    ldrb r2, [r3,#3]
    tst r1, r1
    beq loc_8109C1A
    mov r0, #0
loc_8109C1A:
    tst r0, r0
    pop {pc}
    .byte 0, 0
off_8109C20:    .word dword_201C000
// end of function sub_8109BFC

.thumb
sub_8109C24:
    push {r4-r7,lr}
    bl sub_8109BFC
    beq loc_8109C48
    ldr r4, [pc, #0x8109cac-0x8109c2c-4] // =0x140
    sub r0, r0, r4
    ldr r4, [pc, #0x8109c5c-0x8109c30-4] // dword_8036C70+512
    ldrb r4, [r4,r0]
    bl sub_8002FE4
    ldr r1, [pc, #0x8109c60-0x8109c38-4] // =0xFC
    orr r0, r1
    mov r2, #0x80
    lsr r2, r4
    bic r0, r2
    bl sub_8002FD8
    pop {r4-r7,pc}
loc_8109C48:
    bl sub_8002FE4
    ldr r1, [pc, #0x8109c60-0x8109c4c-4] // =0xFC
    bic r0, r1
    ldr r1, [pc, #0x8109c64-0x8109c50-4] // =0x78
    orr r0, r1
    bl sub_8002FD8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8109C5C:    .word dword_8036C70+0x200
off_8109C60:    .word 0xFC
off_8109C64:    .word 0x7C
// end of function sub_8109C24

.thumb
sub_8109C68:
    push {r4-r7,lr}
    bl sub_8109BFC
    tst r0, r0
    beq loc_8109C90
    tst r1, r1
    bne loc_8109C90
    add r4, r2, #0
    add r4, #1
    bl sub_8002FE4
    ldr r1, [pc, #0x8109ca4-0x8109c7e-2] // =0x3F00
    orr r0, r1
    mov r2, #0x80
    lsl r2, r2, #6
    lsr r2, r4
    bic r0, r2
    bl sub_8002FD8
    pop {r4-r7,pc}
loc_8109C90:
    bl sub_8002FE4
    ldr r1, [pc, #0x8109ca4-0x8109c94-4] // =0x3F00
    bic r0, r1
    ldr r1, [pc, #0x8109ca8-0x8109c98-4] // =0x1F00
    orr r0, r1
    bl sub_8002FD8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8109CA4:    .word 0x3F00
off_8109CA8:    .word 0x1F00
off_8109CAC:    .word 0x140
// end of function sub_8109C68

.thumb
sub_8109CB0:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x3c]
    mov r1, #0x40 
    ldrh r1, [r6,r1]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r7, [pc, #0x8109d04-0x8109cbc-4] // dword_201C000
    add r2, r0, #2
    ldrb r1, [r7,r2]
    tst r1, r1
    bne loc_8109CCC
    ldrh r1, [r7,r0]
    tst r1, r1
    bne loc_8109CD8
loc_8109CCC:
    ldrh r1, [r7,r0]
    strh r1, [r5,#0xe]
    strh r1, [r5,#0x10]
    mov r0, #1
    strb r0, [r5]
    b locret_8109D00
loc_8109CD8:
    strh r1, [r5,#0xe]
    ldrh r0, [r5,#0x10]
    cmp r0, r1
    beq locret_8109D00
    strh r1, [r5,#0x10]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    push {r5}
    ldr r0, [pc, #0x8109d08-0x8109ce8-4] // dword_874C670
    ldr r2, [pc, #0x8109d0c-0x8109cea-2] // unk_2017800
    ldr r3, [pc, #0x8109d10-0x8109cec-4] // =0x6011A00
    mov r4, #9
    mov r5, #3
    ldr r6, [pc, #0x8109d14-0x8109cf2-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0x43 
    .byte 0x20
    .byte 0x28 
    .byte 0x70 
locret_8109D00:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8109D04:    .word dword_201C000
off_8109D08:    .word dword_874C670
off_8109D0C:    .word unk_2017800
dword_8109D10:    .word 0x6011A00
off_8109D14:    .word dword_86C6E60
    .word 0x140
// end of function sub_8109CB0

.thumb
sub_8109D1C:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x3c]
    mov r1, #0x40 
    ldrh r1, [r6,r1]
    add r0, r0, r1
    lsl r0, r0, #2
    add r2, r0, #2
    ldr r7, [pc, #0x8109dac-0x8109d2a-2] // dword_201C000
    ldrb r1, [r7,r2]
    tst r1, r1
    bne loc_8109D38
    ldrh r1, [r7,r0]
    tst r1, r1
    bne loc_8109D4E
loc_8109D38:
    ldrh r1, [r7,r0]
    strh r1, [r5,#0xe]
    strh r1, [r5,#0x10]
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    bl sub_805411A
    mov r0, #1
    strb r0, [r1]
    b locret_8109DAA
loc_8109D4E:
    strh r1, [r5,#0xe]
    ldrh r1, [r5,#0xe]
    ldrh r2, [r5,#0x10]
    cmp r2, r1
    bne loc_8109D6C
    ldr r2, [pc, #0x8109dc0-0x8109d58-4] // =0x140
    sub r1, r1, r2
    add r0, #3
    ldrb r0, [r7,r0]
    strb r0, [r5,#0xc]
    ldrb r2, [r5,#0xd]
    cmp r0, r2
    beq locret_8109DAA
    strb r0, [r5,#0xd]
    b loc_8109D7A
loc_8109D6C:
    strh r1, [r5,#0x10]
    ldr r2, [pc, #0x8109dc0-0x8109d6e-2] // =0x140
    sub r1, r1, r2
    add r0, #3
    ldrb r0, [r7,r0]
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
loc_8109D7A:
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r2, #5
    mul r1, r2
    ldrb r0, [r5,#0xc]
    add r1, r1, r0
    push {r5}
    ldr r0, [pc, #0x8109db0-0x8109d88-4] // dword_2028000
    ldr r2, [pc, #0x8109db4-0x8109d8a-2] // dword_2016C00
    ldr r3, [pc, #0x8109db8-0x8109d8c-4] // =0x6013000
    mov r4, #9
    mov r5, #4
    ldr r6, [pc, #0x8109dbc-0x8109d92-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0xC3
    .byte 0x20
    .byte 0x28 
    .byte 0x70 
    .byte 2
    .byte 0x20
    .byte 0x4A 
    .byte 0xF7
    .byte 0xBA
    .byte 0xF9
    .byte 0xC3
    .byte 0x20
    .byte 8
    .byte 0x70 
locret_8109DAA:
    pop {r4-r7,pc}
off_8109DAC:    .word dword_201C000
off_8109DB0:    .word dword_2028000
off_8109DB4:    .word dword_2016C00
dword_8109DB8:    .word 0x6013000
off_8109DBC:    .word dword_868E224
off_8109DC0:    .word 0x140
// end of function sub_8109D1C

loc_8109DC4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x8109de8-0x8109dca-2] // byte_20004D0
    ldr r0, [pc, #0x8109dd8-0x8109dcc-4] // off_8109DDC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8109DD8:    .word off_8109DDC
off_8109DDC:    .word sub_8109DEC+1
    .word sub_8109E2C+1
    .word sub_8109E42+1
off_8109DE8:    .word byte_20004D0
.thumb
sub_8109DEC:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x18
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8109DEC

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8109e28-0x8109e0e-2] // =0x268
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8109E2C
    pop {pc}
    .balign 4, 0x00
dword_8109E28:    .word 0x26A
.thumb
sub_8109E2C:
    push {lr}
    ldrb r0, [r6,#0xc]
    strh r0, [r7,#0xc]
    mov r1, #0xd
    ldrsb r0, [r6,r1]
    strh r0, [r7,#0xe]
    bl sub_8109E4A
    bl sub_800283C
// end of function sub_8109E2C

    pop {pc}
.thumb
sub_8109E42:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109E42

.thumb
sub_8109E4A:
    push {lr}
    bl sub_802D690
    mov r1, #0xa
    svc 6
    mov r2, #0x1f
    sub r0, r2, r0
    sub r1, r2, r1
    sub r0, #7
    sub r1, #0x11
    mov r3, #1
    lsl r3, r0
    mov r4, #1
    lsl r4, r1
    ldr r0, [pc, #0x8109e74-0x8109e66-2] // =0x1FFFFE0
    bic r0, r3
    bic r0, r4
    bl sub_8002FD8
    pop {pc}
    .balign 4, 0x00
dword_8109E74:    .word 0x1FFFFE0
// end of function sub_8109E4A

loc_8109E78:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x8109e9c-0x8109e7e-2] // byte_200A720
    ldr r0, [pc, #0x8109e8c-0x8109e80-4] // off_8109E90
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8109E8C:    .word off_8109E90
off_8109E90:    .word sub_8109EA0+1
    .word sub_8109EEC+1
    .word sub_8109EF8+1
off_8109E9C:    .word byte_200A720
.thumb
sub_8109EA0:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0x1a
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8109EA0

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8109ee8-0x8109ec2-2] // =0x140
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0xce
    strh r0, [r7,#0xc]
    mov r0, #0xa
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8109EEC
    pop {pc}
    .balign 4, 0x00
off_8109EE8:    .word 0x140
.thumb
sub_8109EEC:
    push {lr}
    bl sub_8109F00
    bl sub_800283C
// end of function sub_8109EEC

    pop {pc}
.thumb
sub_8109EF8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109EF8

.thumb
sub_8109F00:
    push {r4-r7,lr}
    ldrb r0, [r6,#5]
    mov r1, #0xa
    svc 6
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r0, #2
    lsr r2, r0
    ldr r0, [pc, #0x8109f44-0x8109f10-4] // =0x3FFFFFFF
    bic r0, r2
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r1, #7
    lsr r2, r1
    bic r0, r2
    add r7, r0, #0
    ldrb r0, [r6,#0x12]
    mov r1, #0xa
    svc 6
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r0, #0x11
    lsr r2, r0
    add r0, r7, #0
    bic r0, r2
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r1, #0x16
    lsr r2, r1
    bic r0, r2
    bl sub_8002FD8
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8109F44:    .word 0x3FFFFFFF
// end of function sub_8109F00

loc_8109F48:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x8109f6c-0x8109f4e-2] // byte_20004D0
    ldr r0, [pc, #0x8109f5c-0x8109f50-4] // off_8109F60
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8109F5C:    .word off_8109F60
off_8109F60:    .word sub_8109F70+1
    .word sub_8109FB0+1
    .word sub_8109FD2+1
off_8109F6C:    .word byte_20004D0
.thumb
sub_8109F70:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x19
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_8109F70

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x8109fac-0x8109f92-2] // =0x290
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8109FB0
    pop {pc}
    .balign 4, 0x00
off_8109FAC:    .word 0x291
.thumb
sub_8109FB0:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xf]
    tst r0, r0
    beq loc_8109FC0
    bic r4, r1
    b loc_8109FC2
loc_8109FC0:
    orr r4, r1
loc_8109FC2:
    strb r4, [r5]
    mov r0, #0xe4
    strh r0, [r7,#0xc]
    mov r0, #0x2c 
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_8109FB0

    pop {pc}
.thumb
sub_8109FD2:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_8109FD2

.thumb
sub_8109FDA:
    push {r4-r7,lr}
    mov r0, #5
    bl sub_8002018
    add r7, r0, #0
    mov r1, #0xe0
    bl f900_8000930
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r4, [r1,#9]
    add r4, #1
    mov r0, #0x33 
    cmp r4, #0x1e
    bge loc_810A000
    mov r0, #0x77 
    cmp r4, #0xa
    bge loc_810A000
    mov r0, #0x88
loc_810A000:
    lsr r4, r4, #1
    add r7, #0xc4
    mov r6, #0
loc_810A006:
    cmp r4, r6
    ble loc_810A018
    strb r0, [r7]
    strb r0, [r7,#1]
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    sub r7, #4
    add r6, #1
    b loc_810A006
loc_810A018:
    mov r0, #5
    bl sub_8002018
    ldr r1, [pc, #0x810a028-0x810a01e-2] // =0x6015620
    mov r2, #0xe0
    bl loc_8000874
    pop {r4-r7,pc}
dword_810A028:    .word 0x6015620
// end of function sub_8109FDA

loc_810A02C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810a084-0x810a032-2] // byte_200A740
    ldr r0, [pc, #0x810a044-0x810a034-4] // off_810A048
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A044:    .word off_810A048
off_810A048:    .word off_810A054
    .word off_810A064
    .word off_810A074
off_810A054:    .word sub_810A088+1
    .word sub_810A088+1
    .word sub_810A218+1
    .word sub_810A2C0+1
off_810A064:    .word sub_810A0FC+1
    .word sub_810A1A8+1
    .word sub_810A274+1
    .word sub_810A2C0+1
off_810A074:    .word sub_810A088+1
    .word sub_810A088+1
    .word sub_810A218+1
    .word sub_810A2C0+1
off_810A084:    .word byte_200A740
.thumb
sub_810A088:
    push {lr}
    mov r1, #0x43 
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_810A094
    mov r1, #0x23 
loc_810A094:
    strb r1, [r5]
    ldr r0, [pc, #0x810a160-0x810a096-2] // dword_810A19C
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A088

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810a16c-0x810a0b4-4] // dword_810A170
    ldr r0, [r1,r0]
    bl sub_8002FD8
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r4, #0
    bl sub_810A2C8
    beq loc_810A0CE
    bl sub_8019010
    ldrb r4, [r0,#8]
loc_810A0CE:
    add r0, r4, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a164-0x810a0d2-2] // dword_810A19C
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    strb r0, [r5,#0xa]
    mov r0, #0xff
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bl sub_810A218
    pop {pc}
.thumb
sub_810A0FC:
    push {lr}
    mov r1, #0x43 
    strb r1, [r5]
    ldr r0, [pc, #0x810a160-0x810a102-2] // dword_810A19C
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A0FC

    bl sub_8002FC2
    ldr r0, [pc, #0x810a168-0x810a11e-2] // dword_810A17C
    bl loc_800301E
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a164-0x810a12c-4] // dword_810A19C
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    strb r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_810A2C8
    mvn r0, r0
    str r0, [r5,#0xc]
    mvn r1, r1
    str r1, [r5,#0x10]
    bl sub_810A274
    pop {pc}
dword_810A160:    .word 0x810A1A2
off_810A164:    .word dword_810A19C
off_810A168:    .word dword_810A17C
off_810A16C:    .word dword_810A170
dword_810A170:    .word 0x0, 0x0
    .word 0x401004
dword_810A17C:    .word 0x4030406, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x4040404, 0x4040404, 0x4040404
dword_810A19C:    .word 0x1800030, 0xA0900C0, 0xA
.thumb
sub_810A1A8:
    push {lr}
    ldr r0, [pc, #0x810a1bc-0x810a1aa-2] // off_810A1C0
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810A1BC:    .word off_810A1C0
off_810A1C0:    .word sub_810A1C8+1
    .word sub_810A1EC+1
// end of function sub_810A1A8

.thumb
sub_810A1C8:
    push {lr}
    mov r1, #0x43 
    strb r1, [r5]
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x90
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    bl sub_810A2C8
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810A1C8

.thumb
sub_810A1EC:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810A20A
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810A20A:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810A1EC

.thumb
sub_810A218:
    push {lr}
    mov r0, #0x7e 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810A26C
    bl sub_810A2C8
    ldrb r4, [r5]
    mov r2, #2
    tst r0, r0
    beq loc_810A25C
    orr r4, r2
    ldr r2, [r5,#0xc]
    str r0, [r5,#0xc]
    ldr r3, [r5,#0x10]
    str r1, [r5,#0x10]
    cmp r1, r3
    bne loc_810A246
    cmp r0, r2
    beq loc_810A262
loc_810A246:
    ldrb r2, [r5,#0xa]
    tst r2, r2
    bne loc_810A262
    mov r2, #1
    strb r2, [r5,#0xa]
    push {r0,r1}
    mov r2, #0
    bl sub_810998C
    pop {r0,r1}
    b loc_810A262
loc_810A25C:
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bic r4, r2
loc_810A262:
    strb r4, [r5]
    bl sub_8019010
    ldrb r0, [r0,#8]
    strb r0, [r7,#4]
loc_810A26C:
    bl sub_800283C
// end of function sub_810A218

    pop {pc}
    .balign 4, 0x00
.thumb
sub_810A274:
    push {lr}
    bl sub_810A2C8
    beq loc_810A28A
    ldr r2, [r5,#0xc]
    cmp r0, r2
    bne loc_810A28A
    ldr r2, [r5,#0x10]
    cmp r1, r2
    bne loc_810A28A
    b loc_810A2AA
loc_810A28A:
    ldrb r0, [r5,#0xa]
    tst r0, r0
    beq loc_810A296
    mov r0, #1
    strb r0, [r5]
    b loc_810A2AA
loc_810A296:
    bl sub_8002D60
    mov r0, #1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #1
    strb r0, [r5,#0xa]
loc_810A2AA:
    mov r0, #0x7e 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_810A274

    bl sub_810A2C8
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    pop {pc}
.thumb
sub_810A2C0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810A2C0

.thumb
sub_810A2C8:
    push {r7,lr}
    ldr r7, [pc, #0x810a2e0-0x810a2ca-2] // dword_201A000
    ldrh r0, [r6,#0x14]
    ldrh r1, [r6,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    tst r0, r0
    pop {r7,pc}
off_810A2E0:    .word dword_201A000
// end of function sub_810A2C8

loc_810A2E4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810a308-0x810a2ea-2] // byte_200A740
    ldr r0, [pc, #0x810a2f8-0x810a2ec-4] // off_810A2FC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A2F8:    .word off_810A2FC
off_810A2FC:    .word sub_810A30C+1
    .word sub_810A358+1
    .word sub_810A384+1
off_810A308:    .word byte_200A740
.thumb
sub_810A30C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x810a350-0x810a312-2] // unk_202E004
    mov r0, #0x12
    bl sub_80028E8
    mov r0, #6
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A30C

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a354-0x810a330-4] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    str r0, [r5,#0xc]
    bl sub_810A358
    pop {pc}
off_810A350:    .word unk_202E004
off_810A354:    .word 0x200
.thumb
sub_810A358:
    push {lr}
    mov r0, #0xcc
    strh r0, [r7,#0xc]
    mov r0, #0x44 
    strh r0, [r7,#0xe]
    bl sub_810A3D0
    bl sub_810A38C
    bl sub_810A3EC
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_810A37E
    str r0, [r5,#0xc]
    bl sub_8002DF0
    bl sub_800281C
loc_810A37E:
    bl sub_800283C
// end of function sub_810A358

    pop {pc}
.thumb
sub_810A384:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810A384

.thumb
sub_810A38C:
    push {r4-r7,lr}
    bl sub_810A408
    tst r0, r0
    beq loc_810A3C4
    sub r0, #0xc0
    mov r1, #0
    bl sub_8046F02
    mov r4, #0
    mov r0, #0
    mvn r0, r0
    lsl r0, r0, #4
    lsr r0, r0, #4
    mov r2, #0x80
    lsl r2, r2, #0x14
loc_810A3AC:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_810A3B4
    bic r0, r2
loc_810A3B4:
    lsr r2, r2, #1
    add r7, #1
    add r4, #1
    cmp r4, #0x19
    blt loc_810A3AC
    bl sub_8002FD8
    pop {r4-r7,pc}
loc_810A3C4:
    mov r0, #0
    mvn r0, r0
    bl sub_8002FD8
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_810A38C

.thumb
sub_810A3D0:
    push {r4-r7,lr}
    bl sub_810A408
    tst r0, r0
    beq loc_810A3E8
    sub r0, #0xc0
    push {r7}
    bl sub_8046C98
    ldrb r0, [r7,#3]
    pop {r7}
    sub r0, #1
loc_810A3E8:
    strb r0, [r7,#4]
    pop {r4-r7,pc}
// end of function sub_810A3D0

.thumb
sub_810A3EC:
    push {r4-r7,lr}
    bl sub_810A408
    tst r0, r0
    beq locret_810A406
    sub r0, #0xc0
    bl sub_8046C98
    mov r0, #6
    ldrb r1, [r7,#1]
    cmp r1, #0
    beq locret_810A406
    add r0, #1
locret_810A406:
    pop {r4-r7,pc}
// end of function sub_810A3EC

.thumb
sub_810A408:
    push {r4-r7,lr}
    ldr r7, [pc, #0x810a430-0x810a40a-2] // dword_201A000
    ldrh r0, [r6,#0x14]
    ldrh r1, [r6,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrb r0, [r7]
    cmp r0, #3
    bne loc_810A42A
    ldrh r0, [r7,#2]
    add r0, #0xc0
    ldrh r1, [r7,#4]
    bl sub_802D638
    pop {r4-r7,pc}
loc_810A42A:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_810A430:    .word dword_201A000
// end of function sub_810A408

loc_810A434:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810a458-0x810a43a-2] // byte_200B190
    ldr r0, [pc, #0x810a448-0x810a43c-4] // off_810A44C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A448:    .word off_810A44C
off_810A44C:    .word sub_810A45C+1
    .word sub_810A4B0+1
    .word sub_810A4C4+1
off_810A458:    .word byte_200B190
.thumb
sub_810A45C:
    push {lr}
    mov r1, #0xa3
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810A468
    mov r1, #0xc3
loc_810A468:
    strb r1, [r5]
    ldr r1, [pc, #0x810a4a8-0x810a46a-2] // unk_202E004
    mov r0, #7
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #2
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A45C

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a4ac-0x810a48a-2] // =0x30
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_810A4B0
    pop {pc}
    .balign 4, 0x00
off_810A4A8:    .word unk_202E004
off_810A4AC:    .word 0x30
.thumb
sub_810A4B0:
    push {lr}
    bl sub_810A4CC
    mov r0, #0xd0
    strh r0, [r7,#0xc]
    mov r0, #0x1d
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_810A4B0

    pop {pc}
.thumb
sub_810A4C4:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810A4C4

.thumb
sub_810A4CC:
    push {r4-r7,lr}
    ldrb r0, [r6,#0x12]
    mov r1, #0xa
    svc 6
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r0, #3
    lsr r2, r0
    ldr r0, [pc, #0x810a4f8-0x810a4dc-4] // =0x1FFFB800
    ldr r3, [r6,#0x30]
    cmp r3, #3
    beq loc_810A4E6
    ldr r0, [pc, #0x810a4fc-0x810a4e4-4] // =0x1FFFA400
loc_810A4E6:
    bic r0, r2
    mov r2, #0x80
    lsl r2, r2, #0x18
    add r1, #7
    lsr r2, r1
    bic r0, r2
    bl sub_8002FD8
    pop {r4-r7,pc}
dword_810A4F8:    .word 0x1FFFB800
dword_810A4FC:    .word 0x1FFFA400
// end of function sub_810A4CC

loc_810A500:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810a528-0x810a506-2] // byte_200B190
    ldr r0, [pc, #0x810a514-0x810a508-4] // off_810A518
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A514:    .word off_810A518
off_810A518:    .word sub_810A52C+1
    .word loc_810A580+1
    .word loc_810A5F8+1
    .word sub_810A690+1
off_810A528:    .word byte_200B190
.thumb
sub_810A52C:
    push {lr}
    mov r0, #8
    ldr r1, [pc, #0x810a578-0x810a530-4] // unk_2031004
    bl sub_80028E8
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A52C

    bl sub_8002FC2
    bl sub_8002D60
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a57c-0x810a550-4] // =0x200
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0x78 
    strh r0, [r7,#0xc]
    mov r0, #0x4c 
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#7]
    bl loc_810A580
    pop {pc}
off_810A578:    .word unk_2031004
off_810A57C:    .word 0x200
loc_810A580:
    push {lr}
    ldr r0, [pc, #0x810a594-0x810a582-2] // off_810A598
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810A594:    .word off_810A598
off_810A598:    .word sub_810A5A4+1
    .word sub_810A5C0+1
    .word sub_810A5E0+1
.thumb
sub_810A5A4:
    push {lr}
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #0
    mov r1, #0xff
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0xff
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
// end of function sub_810A5A4

.thumb
sub_810A5C0:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x28 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810A5D2
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0x40 
loc_810A5D2:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
// end of function sub_810A5C0

.thumb
sub_810A5E0:
    push {lr}
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    bl sub_810A698
// end of function sub_810A5E0

    mov r1, #1
    strb r1, [r5]
    pop {pc}
loc_810A5F8:
    push {lr}
    ldr r0, [pc, #0x810a60c-0x810a5fa-2] // off_810A610
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810A60C:    .word off_810A610
off_810A610:    .word sub_810A61C+1
    .word sub_810A648+1
    .word sub_810A668+1
.thumb
sub_810A61C:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_810A644
    bl sub_810A6C4
    mov r1, #0xc3
    strb r1, [r5]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x40 
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
locret_810A644:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810A61C

.thumb
sub_810A648:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0xff
    blt loc_810A65C
    mov r1, #0x40 
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#9]
loc_810A65C:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
// end of function sub_810A648

.thumb
sub_810A668:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x20 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    blt loc_810A682
    bl sub_8002D9E
    bl sub_80540E0
    mov r0, #0xff
    strb r0, [r6,#0x11]
    pop {pc}
loc_810A682:
    add r2, r0, #0
    mov r1, #0xff
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
// end of function sub_810A668

.thumb
sub_810A690:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810A690

.thumb
sub_810A698:
    push {r4-r7,lr}
    mov r1, #2
    ldr r0, [r6,#0x30]
    cmp r0, #3
    beq loc_810A6A4
    mov r1, #8
loc_810A6A4:
    ldr r0, [pc, #0x810a6bc-0x810a6a4-4] // dword_87017BC
    bl sub_804DFA0
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x810a6c0-0x810a6b0-4] // dword_86D539C
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_810A698

    pop {r4-r7,pc}
off_810A6BC:    .word dword_87017BC
off_810A6C0:    .word dword_86D539C
.thumb
sub_810A6C4:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x810a6d8-0x810a6cc-4] // dword_86D51EC
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_810A6C4

    pop {r4-r7,pc}
off_810A6D8:    .word dword_86D51EC
off_810A6DC:    .word 0x90
off_810A6E0:    .word off_810A710
    .word 0x190
    .word off_810A71C
    .word 0x290
    .word off_810A730
    .word 0x91, 0x810A73C, 0x191, 0x810A750, 0x291, 0x810A75C
    .word 0x0
off_810A710:    .word unk_20069B0
    .word 0x745, 0x0
off_810A71C:    .word unk_20068D8
    .word 0x746, 0x20069B0, 0x747, 0x0
off_810A730:    .word unk_2006A88
    .word 0x748
    .word 0x0
    .word unk_2006800
    .word 0x749, 0x20068D8, 0x74A, 0x0
    .word unk_20068D8
    .word 0x74B, 0x0
    .word unk_2006A88
    .word 0x74C
    .byte 0, 0, 0, 0
loc_810A768:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810a790-0x810a76e-2] // byte_20004D0
    ldr r0, [pc, #0x810a77c-0x810a770-4] // off_810A780
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A77C:    .word off_810A780
off_810A780:    .word sub_810A794+1
    .word sub_810A7E0+1
    .word sub_810A844+1
    .word sub_810A85C+1
off_810A790:    .word byte_20004D0
.thumb
sub_810A794:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x1b
    bl sub_80028E8
    bl sub_810A864
    strb r0, [r5,#0xc]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A794

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810a7dc-0x810a7ba-2] // =0x290
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xe1
    strh r0, [r7,#0xc]
    mov r0, #0x1a
    strh r0, [r7,#0xe]
    bl sub_810A7E0
    pop {pc}
    .balign 4, 0x00
off_810A7DC:    .word 0x291
.thumb
sub_810A7E0:
    push {r4-r7,lr}
    bl sub_810A864
    ldrb r1, [r5,#0xc]
    strb r0, [r5,#0xd]
    cmp r0, r1
    beq loc_810A812
    ldr r2, [pc, #0x810a818-0x810a7ee-2] // dword_810A824
    lsl r1, r1, #2
    add r2, r2, r1
    ldrb r0, [r2,r0]
    add r6, r0, #0
    bl sub_8002DF0
    bl sub_800281C
    lsl r6, r6, #1
    ldr r2, [pc, #0x810a830-0x810a802-2] // dword_810A834
    ldrh r0, [r2,r6]
    tst r0, r0
    beq loc_810A80E
    bl f500_8000558
loc_810A80E:
    mov r0, #8
    strb r0, [r5,#8]
loc_810A812:
    bl sub_800283C
// end of function sub_810A7E0

    pop {r4-r7,pc}
off_810A818:    .word dword_810A824
    .word dword_810A828
    .word dword_810A82C
dword_810A824:    .word 0xFF020300
dword_810A828:    .word 0xFF040106
dword_810A82C:    .word 0xFF020500
off_810A830:    .word dword_810A834
dword_810A834:    .word 0x0
    .word 0x10E0000, 0x10F010E, 0x10E010F
.thumb
sub_810A844:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne loc_810A856
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#0xd]
    strb r0, [r5,#0xc]
loc_810A856:
    bl sub_800283C
// end of function sub_810A844

    pop {pc}
.thumb
sub_810A85C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810A85C

.thumb
sub_810A864:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r1, [r1,#4]
    ldr r4, [pc, #0x810a8d8-0x810a86c-4] // off_810A6DC
loc_810A86E:
    ldr r0, [r4]
    tst r0, r0
    beq loc_810A8D2
    cmp r0, r1
    beq loc_810A87C
    add r4, #8
    b loc_810A86E
loc_810A87C:
    ldr r4, [r4,#4]
    mov r6, #0
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
loc_810A886:
    ldr r3, [r4]
    tst r3, r3
    beq loc_810A8CC
    ldr r0, [r4,#4]
    add r4, #8
    push {r0-r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0-r3}
    bne loc_810A886
    ldr r0, [r3,#0x24]
    ldr r1, [r7,#0x24]
    sub r0, r0, r1
    asr r0, r0, #0x10
    add r1, r0, #0
    mul r0, r1
    ldr r1, [r3,#0x28]
    ldr r2, [r7,#0x28]
    sub r1, r1, r2
    asr r1, r1, #0x10
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    ldr r1, [pc, #0x810a8dc-0x810a8b6-2] // =0x2000
    cmp r0, r1
    bge loc_810A886
    mov r2, #1
    orr r6, r2
    ldr r1, [pc, #0x810a8e0-0x810a8c0-4] // =0x800
    cmp r0, r1
    bge loc_810A886
    mov r2, #2
    orr r6, r2
    b loc_810A886
loc_810A8CC:
    ldr r0, [pc, #0x810a8e4-0x810a8cc-4] // off_810A8E8
    ldrb r0, [r0,r6]
    pop {r4-r7,pc}
loc_810A8D2:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810A8D8:    .word off_810A6DC
off_810A8DC:    .word 0x2000
off_810A8E0:    .word 0x800
off_810A8E4:    .word off_810A8E8
off_810A8E8:    .word unk_2020100
// end of function sub_810A864

loc_810A8EC:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    mov r1, #0x10
    ldr r6, [r6,r1]
    ldr r0, [pc, #0x810a908-0x810a8f8-4] // off_810A90C
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810A908:    .word off_810A90C
off_810A90C:    .word off_810A918
    .word off_810A928
    .word off_810A938
off_810A918:    .word sub_810A948+1
    .word sub_810A948+1
    .word sub_810AAD8+1
    .word sub_810AB70+1
off_810A928:    .word sub_810A9B4+1
    .word loc_810AA60+1
    .word sub_810AB30+1
    .word sub_810AB70+1
off_810A938:    .word sub_810A948+1
    .word sub_810A948+1
    .word sub_810AAD8+1
    .word sub_810AB70+1
.thumb
sub_810A948:
    push {lr}
    mov r1, #1
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_810A954
    mov r1, #0x23 
loc_810A954:
    strb r1, [r5]
    mov r4, #0
    str r4, [r5,#0x14]
    bl sub_810A974
// end of function sub_810A948

    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_810AAD8
    pop {pc}
    .balign 4, 0x00
.thumb
sub_810A974:
    push {lr}
    ldr r0, [pc, #0x810aa18-0x810a976-2] // dword_810AA54
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A974

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810aa24-0x810a994-4] // dword_810AA28
    ldr r0, [r1,r0]
    bl sub_8002FD8
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    strb r4, [r7,#4]
    ldr r0, [pc, #0x810aa1c-0x810a9a2-2] // dword_810AA54
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    pop {pc}
    .balign 4, 0x00
.thumb
sub_810A9B4:
    push {lr}
    mov r1, #0x41 
    strb r1, [r5]
    ldr r0, [pc, #0x810aa18-0x810a9ba-2] // dword_810AA54
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810A9B4

    bl sub_8002FC2
    ldr r0, [pc, #0x810aa20-0x810a9d6-2] // dword_810AA34
    bl loc_800301E
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810aa1c-0x810a9e4-4] // dword_810AA54
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_810AB78
    mvn r0, r0
    str r0, [r5,#0xc]
    mvn r1, r1
    str r1, [r5,#0x10]
    bl sub_810AB30
    pop {pc}
    .balign 4, 0x00
dword_810AA18:    .word 0x810AA5A
off_810AA1C:    .word dword_810AA54
off_810AA20:    .word dword_810AA34
off_810AA24:    .word dword_810AA28
dword_810AA28:    .word 0x0, 0x0
    .word 0x401004
dword_810AA34:    .word 0xC0B0C09, 0xC0C0C0C, 0xC0C0C0C, 0xC0C0C0C, 0xC0C0C0C
    .word 0xC0C0C0C, 0xC0C0C0C, 0xC0C0C0C
dword_810AA54:    .word 0x3400200, 0xA0901C0, 0xA
loc_810AA60:
    push {lr}
    ldrb r0, [r6,#4]
    sub r0, #0x40 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    ldr r0, [pc, #0x810aa7c-0x810aa6c-4] // off_810AA80
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_810AA7C:    .word off_810AA80
off_810AA80:    .word sub_810AA88+1
    .word sub_810AAAC+1
.thumb
sub_810AA88:
    push {lr}
    mov r1, #0x43 
    strb r1, [r5]
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x90
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    bl sub_810AB78
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810AA88

.thumb
sub_810AAAC:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810AACA
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810AACA:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810AAAC

.thumb
sub_810AAD8:
    push {lr}
    ldrb r0, [r6,#4]
    sub r0, #0x40 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810AB28
    bl sub_810AB78
    ldrb r4, [r5]
    mov r2, #2
    tst r0, r0
    beq loc_810AB14
    orr r4, r2
    ldr r2, [r5,#0xc]
    str r0, [r5,#0xc]
    ldr r3, [r5,#0x10]
    str r1, [r5,#0x10]
    cmp r1, r3
    bne loc_810AB08
    cmp r0, r2
    beq loc_810AB1A
loc_810AB08:
    push {r0,r1}
    mov r2, #4
    bl sub_810998C
    pop {r0,r1}
    b loc_810AB1A
loc_810AB14:
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bic r4, r2
loc_810AB1A:
    strb r4, [r5]
    tst r0, r0
    beq loc_810AB28
    bl sub_8019010
    ldrb r0, [r0,#8]
    strb r0, [r7,#4]
loc_810AB28:
    bl sub_800283C
// end of function sub_810AAD8

    pop {pc}
    .byte 0, 0
.thumb
sub_810AB30:
    push {lr}
    bl sub_810AB78
    beq loc_810AB56
    ldr r2, [r5,#0xc]
    cmp r0, r2
    bne loc_810AB46
    ldr r2, [r5,#0x10]
    cmp r1, r2
    bne loc_810AB46
    b loc_810AB56
loc_810AB46:
    bl sub_8002D60
    mov r0, #1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
loc_810AB56:
    ldrb r0, [r6,#4]
    sub r0, #0x40 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_810AB30

    bl sub_810AB78
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    pop {pc}
    .byte 0, 0
.thumb
sub_810AB70:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810AB70

.thumb
sub_810AB78:
    ldrh r0, [r6,#6]
    ldrb r1, [r6,#5]
    tst r0, r0
    mov pc, lr
// end of function sub_810AB78

loc_810AB80:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    mov r1, #0x34 
    ldr r6, [r6,r1]
    ldr r0, [pc, #0x810ab98-0x810ab8c-4] // off_810AB9C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810AB98:    .word off_810AB9C
off_810AB9C:    .word sub_810ABA8+1
    .word sub_810ABFC+1
    .word sub_810AC08+1
.thumb
sub_810ABA8:
    push {lr}
    mov r1, #0xa3
    strb r1, [r5]
    ldr r1, [pc, #0x810abf8-0x810abae-2] // unk_202E004
    mov r0, #0x1c
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810ABA8

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #1
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810abf4-0x810abcc-4] // =0x250
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0x42 
    strh r0, [r7,#0xc]
    mov r0, #0x17
    strh r0, [r7,#0xe]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0xff
    strb r0, [r5,#0xc]
    bl sub_800283C
    pop {pc}
off_810ABF4:    .word 0x250
off_810ABF8:    .word unk_202E004
.thumb
sub_810ABFC:
    push {lr}
    bl sub_810AC10
    bl sub_800283C
// end of function sub_810ABFC

    pop {pc}
.thumb
sub_810AC08:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810AC08

.thumb
sub_810AC10:
    push {r5-r7,lr}
    ldrb r0, [r6,#0xc]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810AC32
    strb r0, [r5,#0xc]
    mov r1, #0xb4
    add r1, r1, r0
    ldr r0, [pc, #0x810ac34-0x810ac20-4] // unk_86DE644
    ldr r2, [pc, #0x810ac38-0x810ac22-2] // word_2014000
    ldr r3, [pc, #0x810ac3c-0x810ac24-4] // =0x6014C00
    mov r4, #0xb
    mov r5, #1
    ldr r6, [pc, #0x810ac40-0x810ac2a-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
locret_810AC32:
    pop {r5-r7,pc}
off_810AC34:    .word unk_86DE644
off_810AC38:    .word word_2014000
dword_810AC3C:    .word 0x6014C00
off_810AC40:    .word dword_868E224
// end of function sub_810AC10

loc_810AC44:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    mov r1, #0x34 
    ldr r6, [r6,r1]
    ldr r0, [pc, #0x810ac5c-0x810ac50-4] // off_810AC60
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810AC5C:    .word off_810AC60
off_810AC60:    .word sub_810AC6C+1
    .word loc_810ACE8+1
    .word sub_810AD7C+1
.thumb
sub_810AC6C:
    push {lr}
    mov r2, #0xa3
    strb r2, [r5]
    ldr r1, [pc, #0x810accc-0x810ac72-2] // unk_202E004
    mov r0, #0x1c
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810AC6C

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810acc4-0x810ac90-4] // off_810ACD0
    ldrb r1, [r5,#3]
    lsl r2, r1, #2
    ldr r0, [r0,r2]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0x42 
    strh r0, [r7,#0xc]
    ldr r0, [pc, #0x810acc8-0x810aca2-2] // byte_810ACE0
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#0xe]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0xff
    strb r0, [r5,#0xc]
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810ACC4:    .word off_810ACD0
off_810ACC8:    .word byte_810ACE0
off_810ACCC:    .word unk_202E004
off_810ACD0:    .word 0x220
    .word 0x1F0
    .word 0x1C0
    .word 0x190
byte_810ACE0:    .byte 0x26
    .byte 0
    .byte 0x36 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x56 
    .byte 0
loc_810ACE8:
    push {lr}
    ldr r0, [pc, #0x810ad00-0x810acea-2] // off_810AD04
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_810AD84
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_810AD00:    .word off_810AD04
off_810AD04:    .word sub_810AD14+1
    .word sub_810AD30+1
    .word sub_810AD64+1
    .word sub_810AD18+1
.thumb
sub_810AD14:
    push {lr}
    pop {pc}
// end of function sub_810AD14

.thumb
sub_810AD18:
    push {lr}
    mov r2, #0x21 
    ldrh r0, [r6,#0x12]
    sub r0, #1
    ldrb r1, [r5,#3]
    cmp r0, r1
    blt loc_810AD28
    mov r2, #0xa3
loc_810AD28:
    strb r2, [r5]
    mov r0, #0
    strb r0, [r5,#9]
    pop {pc}
// end of function sub_810AD18

.thumb
sub_810AD30:
    push {lr}
    mov r1, #0xc
    ldrsh r0, [r7,r1]
    sub r0, #0xc
    strh r0, [r7,#0xc]
    mov r1, #0x1d
    mvn r1, r1
    cmp r0, r1
    bgt locret_810AD60
    strh r1, [r7,#0xc]
    mov r2, #0xa3
    ldrb r3, [r5,#6]
    cmp r3, #0xf
    beq loc_810AD54
    ldrh r0, [r6,#0x12]
    ldrb r1, [r5,#3]
    cmp r0, r1
    bgt loc_810AD58
loc_810AD54:
    mov r2, #0x21 
    ldrb r3, [r5,#5]
loc_810AD58:
    strb r2, [r5]
    strb r3, [r5,#5]
    mov r0, #8
    strb r0, [r5,#9]
locret_810AD60:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810AD30

.thumb
sub_810AD64:
    push {lr}
    mov r1, #0xc
    ldrsh r0, [r7,r1]
    add r0, #0xc
    strh r0, [r7,#0xc]
    mov r1, #0x42 
    cmp r0, r1
    blt locret_810AD7A
    strh r1, [r7,#0xc]
    mov r0, #0
    strb r0, [r5,#9]
locret_810AD7A:
    pop {pc}
// end of function sub_810AD64

.thumb
sub_810AD7C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810AD7C

.thumb
sub_810AD84:
    push {r5-r7,lr}
    ldrb r0, [r5,#5]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810ADAE
    strb r0, [r5,#0xc]
    mov r1, #0xb5
    add r1, r1, r0
    ldr r0, [pc, #0x810adb0-0x810ad94-4] // unk_86DE644
    ldrb r7, [r5,#3]
    lsl r7, r7, #2
    ldr r3, [pc, #0x810adb4-0x810ad9a-2] // off_810ADBC
    ldr r2, [r3,r7]
    ldr r3, [pc, #0x810adb8-0x810ad9e-2] // dword_810ADCC
    ldr r3, [r3,r7]
    mov r4, #0xb
    mov r5, #1
    ldr r6, [pc, #0x810addc-0x810ada6-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
locret_810ADAE:
    pop {r5-r7,pc}
off_810ADB0:    .word unk_86DE644
off_810ADB4:    .word off_810ADBC
off_810ADB8:    .word dword_810ADCC
off_810ADBC:    .word byte_2014600
    .word unk_2014C00
    .word unk_2015200
    .word unk_2015800
dword_810ADCC:    .word 0x6014600, 0x6014000, 0x6013A00, 0x6013400
off_810ADDC:    .word dword_868E224
// end of function sub_810AD84

loc_810ADE0:
    push {r7,lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810adf4-0x810ade6-2] // off_810ADF8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r7,pc}
    .balign 4, 0x00
off_810ADF4:    .word off_810ADF8
off_810ADF8:    .word sub_810AE04+1
    .word loc_810AEA0+1
    .word sub_810B008+1
.thumb
sub_810AE04:
    push {r4,lr}
    mov r2, #0x23 
    ldrb r4, [r5,#4]
    cmp r4, #2
    bne loc_810AE10
    mov r2, #0x21 
loc_810AE10:
    strb r2, [r5]
    ldr r2, [pc, #0x810ae80-0x810ae12-2] // dword_810AE84
    ldr r0, [pc, #0x810ae7c-0x810ae14-4] // unk_200AA20
    ldrb r0, [r0,#0x6] // (byte_200AA26 - 0x200aa20)
    ldrb r1, [r2,r0]
    strb r1, [r5,#5]
    ldr r2, [pc, #0x810ae88-0x810ae1c-4] // dword_810AE8C
    ldrb r1, [r2,r0]
    strb r1, [r5,#6]
    mov r0, #0x1f
    bl sub_80028E8
    add r0, r4, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810AE04

    bl sub_8002FC2
    mov r0, #0xd0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r2, [pc, #0x810ae74-0x810ae3e-2] // dword_810AE78
    add r1, r4, #0
    ldrb r1, [r2,r1]
    ldr r0, [pc, #0x810b010-0x810ae44-4] // =0x3C0
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    ldr r0, [pc, #0x810ae90-0x810ae4e-2] // off_810AE94
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    strh r0, [r7,#0xc]
    mov r0, #0x78 
    strh r0, [r7,#0xe]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#4]
    strb r0, [r5,#9]
    bl sub_800283C
    pop {r4,pc}
    .byte 0, 0
    .word 0x84C0D64
off_810AE74:    .word dword_810AE78
dword_810AE78:    .word 0x110E00
off_810AE7C:    .word unk_200AA20
off_810AE80:    .word dword_810AE84
dword_810AE84:    .word 0xFF050403
off_810AE88:    .word dword_810AE8C
dword_810AE8C:    .word 0xFF050505
off_810AE90:    .word off_810AE94
off_810AE94:    .word 0x78
    .word 0x37, 0x78
loc_810AEA0:
    push {lr}
    ldr r0, [pc, #0x810aeb4-0x810aea2-2] // off_810AEB8
    ldrb r1, [r5,#9]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
off_810AEB4:    .word off_810AEB8
off_810AEB8:    .word sub_810AEC4+1
    .word sub_810AEC8+1
    .word loc_810AFB4+1
.thumb
sub_810AEC4:
    push {lr}
    pop {pc}
// end of function sub_810AEC4

.thumb
sub_810AEC8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r0, [r0,#0x4c]
    tst r0, r0
    bne loc_810AEDC
    ldr r0, [pc, #0x810aff0-0x810aed4-4] // unk_200AA20
    mov r1, #3
    strb r1, [r0,#0x8] // (byte_200AA28 - 0x200aa20)
    pop {pc}
loc_810AEDC:
    ldr r0, [pc, #0x810af34-0x810aedc-4] // off_810AF38
    ldrb r1, [r5,#0xa]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r1, [r5,#0xa]
    cmp r1, #2
    bmi locret_810AF30
    cmp r1, #4
    beq locret_810AF30
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #2
    tst r0, r1
    beq locret_810AF30
    ldrh r0, [r7,#0xc]
    sub r0, #0x78 
    cmp r0, #0
    bge loc_810AF08
    neg r0, r0
loc_810AF08:
    ldrb r1, [r5,#6]
    cmp r0, r1
    bgt loc_810AF1A
    ldr r0, [pc, #0x810aff0-0x810af0e-2] // unk_200AA20
    mov r1, #1
    strb r1, [r0,#0x8] // (byte_200AA28 - 0x200aa20)
    mov r1, #4
    strb r1, [r5,#0xa]
    b locret_810AF30
loc_810AF1A:
    ldr r0, [pc, #0x810af4c-0x810af1a-2] // =0x13A
    bl f500_8000558
    ldr r0, [pc, #0x810af50-0x810af20-4] // =0x135
    bl f500_8000558
    ldr r0, [pc, #0x810aff0-0x810af26-2] // unk_200AA20
    mov r1, #2
    strb r1, [r0,#0x8] // (byte_200AA28 - 0x200aa20)
    mov r1, #4
    strb r1, [r5,#0xa]
locret_810AF30:
    pop {pc}
    .balign 4, 0x00
off_810AF34:    .word off_810AF38
off_810AF38:    .word sub_810AF54+1
    .word sub_810AF60+1
    .word sub_810AF74+1
    .word sub_810AF90+1
    .word sub_810AFB0+1
dword_810AF4C:    .word 0x13A
off_810AF50:    .word 0x138
// end of function sub_810AEC8

.thumb
sub_810AF54:
    push {lr}
    mov r1, #1
    strb r1, [r5,#7]
    mov r1, #1
    strb r1, [r5,#0xa]
    pop {pc}
// end of function sub_810AF54

.thumb
sub_810AF60:
    push {lr}
    ldrb r1, [r5,#7]
    sub r1, #1
    strb r1, [r5,#7]
    tst r1, r1
    bne locret_810AF70
    mov r1, #2
    strb r1, [r5,#0xa]
locret_810AF70:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810AF60

.thumb
sub_810AF74:
    push {lr}
    ldrh r0, [r7,#0xc]
    ldrb r1, [r5,#5]
    add r0, r0, r1
    cmp r0, #0xb9
    bmi loc_810AF8C
    ldr r0, [pc, #0x810afac-0x810af80-4] // =0x123
    bl f500_8000558
    mov r0, #0xb9
    mov r1, #3
    strb r1, [r5,#0xa]
loc_810AF8C:
    strh r0, [r7,#0xc]
    pop {pc}
// end of function sub_810AF74

.thumb
sub_810AF90:
    push {lr}
    ldrh r0, [r7,#0xc]
    ldrb r1, [r5,#5]
    sub r0, r0, r1
    cmp r0, #0x37 
    bgt loc_810AFA8
    ldr r0, [pc, #0x810afac-0x810af9c-4] // =0x123
    bl f500_8000558
    mov r0, #0x37 
    mov r1, #2
    strb r1, [r5,#0xa]
loc_810AFA8:
    strh r0, [r7,#0xc]
    pop {pc}
dword_810AFAC:    .word 0x123
// end of function sub_810AF90

.thumb
sub_810AFB0:
    push {lr}
    pop {pc}
// end of function sub_810AFB0

loc_810AFB4:
    push {lr}
    ldr r0, [pc, #0x810afc4-0x810afb6-2] // off_810AFC8
    ldrb r1, [r5,#0xa]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810AFC4:    .word off_810AFC8
off_810AFC8:    .word sub_810AFD0+1
    .word sub_810AFF4+1
.thumb
sub_810AFD0:
    push {lr}
    ldr r0, [pc, #0x810aff0-0x810afd2-2] // unk_200AA20
    ldrb r0, [r0,#0x8] // (byte_200AA28 - 0x200aa20)
    cmp r0, #1
    bne locret_810AFEC
    mov r0, #2
    bl sub_8002DF0
    bl sub_800281C
    mov r2, #0x23 
    strb r2, [r5]
    mov r0, #1
    strb r0, [r5,#0xa]
locret_810AFEC:
    pop {pc}
    .byte 0, 0
off_810AFF0:    .word unk_200AA20
// end of function sub_810AFD0

.thumb
sub_810AFF4:
    push {lr}
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq locret_810B004
    mov r0, #8
    strb r0, [r5,#8]
locret_810B004:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810AFF4

.thumb
sub_810B008:
    push {lr}
    bl sub_80540E0
    pop {pc}
off_810B010:    .word 0x3C0
// end of function sub_810B008

loc_810B014:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810b02c-0x810b01e-2] // off_810B030
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810B02C:    .word off_810B030
off_810B030:    .word sub_810B040+1
    .word sub_810B0A0+1
    .word sub_810B124+1
    .word sub_810B1D8+1
.thumb
sub_810B040:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #8
    ldr r1, [pc, #0x810b098-0x810b048-4] // unk_2031004
    bl sub_80028E8
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B040

    bl sub_8002FC2
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_810B066
    bl sub_8002D60
loc_810B066:
    mov r0, #4
    mov r1, #0
    strb r0, [r5,#8]
    strb r1, [r5,#9]
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810b09c-0x810b076-2] // =0x280
    strh r0, [r7,#8]
    mov r0, #2
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x78 
    strh r0, [r7,#0xc]
    mov r0, #0x4c 
    strh r0, [r7,#0xe]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_810B0A0
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
off_810B098:    .word unk_2031004
off_810B09C:    .word 0x280
.thumb
sub_810B0A0:
    push {lr}
    ldr r0, [pc, #0x810b0b4-0x810b0a2-2] // off_810B0B8
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810B0B4:    .word off_810B0B8
off_810B0B8:    .word sub_810B0C4+1
    .word sub_810B0EC+1
    .word sub_810B10C+1
// end of function sub_810B0A0

.thumb
sub_810B0C4:
    push {lr}
    bl sub_810B1E0
// end of function sub_810B0C4

    mov r0, #0xa3
    strb r0, [r5]
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_810B0E6
    mov r0, #0
    mov r1, #0xff
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0xff
    strb r0, [r5,#6]
    mov r0, #4
    b loc_810B0E8
loc_810B0E6:
    mov r0, #8
loc_810B0E8:
    strb r0, [r5,#9]
    pop {pc}
.thumb
sub_810B0EC:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x28 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810B0FE
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0x40 
loc_810B0FE:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B0EC

.thumb
sub_810B10C:
    push {lr}
    mov r1, #8
    strb r1, [r5,#8]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    bl sub_810B208
// end of function sub_810B10C

    mov r0, #0xa1
    strb r0, [r5]
    pop {pc}
.thumb
sub_810B124:
    push {lr}
    ldr r0, [pc, #0x810b138-0x810b126-2] // off_810B13C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810B138:    .word off_810B13C
off_810B13C:    .word sub_810B148+1
    .word sub_810B18C+1
    .word sub_810B1AC+1
// end of function sub_810B124

.thumb
sub_810B148:
    push {lr}
    mov r0, #8
    bl sub_80539A0
    beq locret_810B188
    bl sub_810B1E0
    bl sub_804E448
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_810B16E
    bl sub_80540E0
    bl sub_810B228
    mov r0, #0xff
    strb r0, [r6,#0xf]
    pop {pc}
loc_810B16E:
    mov r0, #0xa3
    strb r0, [r5]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x40 
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
locret_810B188:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B148

.thumb
sub_810B18C:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0xff
    blt loc_810B1A0
    mov r1, #0x40 
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#9]
loc_810B1A0:
    mov r2, #0x40 
    add r1, r0, #0
    mov r0, #0
    bl sub_8002C70
    pop {pc}
// end of function sub_810B18C

.thumb
sub_810B1AC:
    push {lr}
    ldrb r0, [r5,#6]
    add r0, #0x20 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    blt loc_810B1CA
    bl sub_8002D9E
    bl sub_80540E0
    bl sub_810B228
    mov r0, #0xff
    strb r0, [r6,#0xf]
    pop {pc}
loc_810B1CA:
    add r2, r0, #0
    mov r1, #0xff
    mov r0, #0
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B1AC

.thumb
sub_810B1D8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810B1D8

.thumb
sub_810B1E0:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x810b204-0x810b1e8-4] // dword_86D51EC
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_810B1E0

    mov r0, #3
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r4-r7,pc}
off_810B204:    .word dword_86D51EC
.thumb
sub_810B208:
    push {r4-r7,lr}
    ldrb r1, [r5,#4]
    bl sub_803478C
    mov r0, #3
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x810b224-0x810b216-2] // dword_86D539C
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DDC
// end of function sub_810B208

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810B224:    .word dword_86D539C
.thumb
sub_810B228:
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
// end of function sub_810B228

    pop {r4-r7,pc}
loc_810B23C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810b250-0x810b242-2] // off_810B254
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_810B250:    .word off_810B254
off_810B254:    .word sub_810B260+1
    .word sub_810B2F4+1
    .word sub_810B314+1
.thumb
sub_810B260:
    push {lr}
    mov r0, #0xa3
    strb r0, [r5]
    ldr r1, [pc, #0x810b2b8-0x810b266-2] // unk_202E004
    mov r0, #0x21 
    bl sub_80028E8
    ldrb r6, [r5,#3]
    ldr r1, [pc, #0x810b2e8-0x810b270-4] // dword_810B2EC
    ldrb r0, [r1,r6]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B260

    bl sub_8002FC2
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810b2b4-0x810b288-4] // off_810B2BC
    lsl r1, r6, #2
    ldr r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    ldr r2, [pc, #0x810b2d0-0x810b29a-2] // dword_810B2D4
    lsl r1, r6, #2
    ldrh r0, [r2,r1]
    strh r0, [r7,#0xc]
    add r1, #2
    ldrh r0, [r2,r1]
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810B2F4
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
off_810B2B4:    .word off_810B2BC
off_810B2B8:    .word unk_202E004
off_810B2BC:    .word 0x278
    .word 0x270
    .word 0x268
    .word 0x260
    .word 0x258
off_810B2D0:    .word dword_810B2D4
dword_810B2D4:    .word 0x140050, 0x14006C, 0x140090, 0x1400AC, 0x1400D4
off_810B2E8:    .word dword_810B2EC
dword_810B2EC:    .word 0x3010300, 0x4
.thumb
sub_810B2F4:
    push {lr}
    ldr r0, [pc, #0x810b308-0x810b2f6-2] // off_810B30C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810B308:    .word off_810B30C
off_810B30C:    .word sub_810B310+1
// end of function sub_810B2F4

.thumb
sub_810B310:
    push {lr}
    pop {pc}
// end of function sub_810B310

.thumb
sub_810B314:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810B314

loc_810B31C:
    push {r7,lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810b330-0x810b322-2] // off_810B334
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r7,pc}
    .byte 0, 0
off_810B330:    .word off_810B334
off_810B334:    .word sub_810B340+1
    .word sub_810B3A4+1
    push {r0,r2,r4}
    lsr r0, r2, #0x20
.thumb
sub_810B340:
    push {r4,lr}
    mov r2, #0x23 
    strb r2, [r5]
    mov r0, #0x20 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B340

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810b41c-0x810b362-2] // =0x360
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    ldr r0, [pc, #0x810b398-0x810b36a-2] // dword_810B39C
    ldrb r4, [r5,#4]
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    strh r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#0xe]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_800283C
    pop {r4,pc}
    .word 0x84C1468, 0x6017800, 0x200AA20
off_810B398:    .word dword_810B39C
dword_810B39C:    .word 0x3A, 0xAE
.thumb
sub_810B3A4:
    push {r4,r6,r7,lr}
    mov r6, #0
    mvn r6, r6
    mov r1, #3
    lsl r1, r1, #0x1e
    eor r6, r1
    ldr r0, [pc, #0x810b408-0x810b3b0-4] // off_810B40C
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldr r0, [r0,r3]
    ldrb r0, [r0]
    mov r1, #0x64 
    svc 6
    add r7, r0, #0
    tst r0, r0
    beq loc_810B3D0
    add r0, #2
    mov r4, #1
    sub r0, #0x1f
    neg r0, r0
    lsl r4, r0
    bic r6, r4
loc_810B3D0:
    add r0, r1, #0
    mov r1, #0xa
    svc 6
    tst r0, r0
    bne loc_810B3E0
    tst r7, r7
    bne loc_810B3E0
    b loc_810B3EC
loc_810B3E0:
    add r0, #4
    mov r4, #1
    sub r0, #0x1f
    neg r0, r0
    lsl r4, r0
    bic r6, r4
loc_810B3EC:
    mov r4, #0xe
    add r1, r1, r4
    mov r4, #1
    sub r1, #0x1f
    neg r1, r1
    lsl r4, r1
    bic r6, r4
    add r0, r6, #0
    bl sub_8002FD8
    bl sub_800283C
// end of function sub_810B3A4

    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_810B408:    .word off_810B40C
off_810B40C:    .word dword_200AAB0+1
    add r2, sp, #0x2c8
    lsl r0, r0, #8
    push {lr}
    bl sub_80540E0
    pop {pc}
dword_810B41C:    .word 0x363
    push {r7,lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810b434-0x810b426-2] // sub_810B438
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r7,pc}
    .balign 4, 0x00
off_810B434:    .word sub_810B438
.thumb
sub_810B438:
    push {r0,r2,r6}
    lsr r0, r2, #0x20
    push {r0,r2-r5,r7}
    lsr r0, r2, #0x20
    push {r0,r2,r6,r7}
    lsr r0, r2, #0x20
    push {r4,lr}
    mov r2, #0x23 
    strb r2, [r5]
    mov r0, #5
    bl sub_80028E8
    mov r0, #6
    ldrb r4, [r5,#4]
    tst r4, r4
    beq loc_810B460
    mov r0, #4
    bl sub_80028E8
    mov r0, #6
loc_810B460:
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B438

    bl sub_8002FC2
    mov r0, #8
    add r0, r0, r4
    lsl r0, r0, #4
    strb r0, [r7,#0x15]
    mov r0, #0x10
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810b4cc-0x810b478-4] // =0x398
    mov r1, #0x10
    mul r1, r4
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    ldr r0, [pc, #0x810b4b0-0x810b486-2] // dword_810B4B4
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    strh r0, [r7,#0xc]
    mov r0, #0x14
    strh r0, [r7,#0xe]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_800283C
    pop {r4,pc}
    .balign 4, 0x00
    .word 0x6017800, 0x200AA20
off_810B4B0:    .word dword_810B4B4
dword_810B4B4:    .word 0x16, 0xDA, 0xF6F7B5D0, 0xBDD0F9BD, 0xF748B500, 0xBD00FE0B
dword_810B4CC:    .word 0x39B
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810b4e8-0x810b4da-2] // loc_810B4EC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810B4E8:    .word loc_810B4EC
loc_810B4EC:
    push {r0,r3-r7}
    lsr r0, r2, #0x20
    push {r0,r2-r4,r6,r7,lr}
    lsr r0, r2, #0x20
    .word sub_810B67C+1
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#4]
    cmp r0, #2
    beq loc_810B504
    mov r1, #0x43 
loc_810B504:
    strb r1, [r5]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b588-0x810b508-4] // byte_810B5AC
    ldrb r0, [r1,r0]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b580-0x810b512-2] // off_810B5A8
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_810B52E
    ldr r0, [pc, #0x810b5a4-0x810b528-4] // dword_810B5B8
    bl loc_800301E
loc_810B52E:
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x810b594-0x810b532-2] // dword_810B598
    ldr r0, [r1,r0]
    bl sub_8002FD8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b58c-0x810b53c-4] // =0x810B5AD
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b584-0x810b548-4] // dword_810B5D8
    ldrb r0, [r1,r0]
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, [pc, #0x810b580-0x810b552-2] // off_810B5A8
    ldrb r0, [r5,#3]
    lsl r0, r0, #1
    ldr r1, [pc, #0x810b590-0x810b558-4] // =0x810B5AD
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0xc2
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    mov r0, #0
    strb r0, [r5,#0xc]
    strh r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_810B5DC
    pop {pc}
off_810B580:    .word off_810B5A8
off_810B584:    .word dword_810B5D8
off_810B588:    .word byte_810B5AC
dword_810B58C:    .word 0x810B5AF
dword_810B590:    .word 0x810B5B2
off_810B594:    .word dword_810B598
dword_810B598:    .word 0x0
    .word 0x401004, 0x0
off_810B5A4:    .word dword_810B5B8
off_810B5A8:    .word 0x100
byte_810B5AC:    .byte 0xA
    .byte 0xA
    .byte 0x9
    .byte 0x20
    .byte 0x20
    .byte 0x20
    .byte 0x30
    .byte 0x0
    .word 0x18000C0
dword_810B5B8:    .word 0x4030406, 0x40404, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_810B5D8:    .word 0x0
loc_810B5DC:
    push {lr}
    ldr r0, [pc, #0x810b5ec-0x810b5de-2] // off_810B5F0
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810B5EC:    .word off_810B5F0
off_810B5F0:    .word loc_810B608+1
    .word sub_810B674+1
    push {r0,r2-r7,lr}
    lsr r0, r2, #0x20
    push {lr}
    bl sub_810B684
    bl sub_800283C
    pop {pc}
loc_810B608:
    push {lr}
    ldr r0, [pc, #0x810b61c-0x810b60a-2] // off_810B620
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810B61C:    .word off_810B620
off_810B620:    .word sub_810B670+1
    .word sub_810B62C+1
    .word sub_810B648+1
.thumb
sub_810B62C:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#6]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B62C

.thumb
sub_810B648:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810B662
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810B662:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .byte 0, 0
// end of function sub_810B648

.thumb
sub_810B670:
    push {r7,lr}
    pop {r7,pc}
// end of function sub_810B670

.thumb
sub_810B674:
    push {lr}
    bl sub_800283C
// end of function sub_810B674

    pop {pc}
.thumb
sub_810B67C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810B67C

.thumb
sub_810B684:
    push {r4,lr}
    ldrh r0, [r6,#0x30]
    bl sub_8019010
    ldrb r4, [r0,#8]
    cmp r4, #2
    bgt locret_810B69E
    strb r4, [r7,#4]
    mov r0, #1
    bl sub_805411A
    add r1, #0x20 
    strb r4, [r1,#4]
locret_810B69E:
    pop {r4,pc}
// end of function sub_810B684

loc_810B6A0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810b6b8-0x810b6aa-2] // off_810B6BC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810B6B8:    .word off_810B6BC
off_810B6BC:    .word sub_810B6C8+1
    .word loc_810B7EC+1
    .word sub_810B890+1
.thumb
sub_810B6C8:
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#4]
    cmp r0, #2
    beq loc_810B6D4
    mov r1, #0x43 
loc_810B6D4:
    strb r1, [r5]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b768-0x810b6d8-4] // dword_810B79C
    ldrb r0, [r1,r0]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810b760-0x810b6e2-2] // off_810B798
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B6C8

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_810B706
    ldr r0, [pc, #0x810b784-0x810b6f8-4] // dword_810B7A0
    ldrb r1, [r5,#3]
    cmp r1, #2
    beq loc_810B702
    ldr r0, [pc, #0x810b788-0x810b700-4] // =0x810B7C4
loc_810B702:
    bl loc_800301E
loc_810B706:
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x810b774-0x810b70a-2] // dword_810B778
    ldr r0, [r1,r0]
    bl sub_8002FD8
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x810b76c-0x810b714-4] // dword_810B7A0
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldrb r0, [r5,#3]
    ldr r1, [pc, #0x810b764-0x810b720-4] // =0x810B7C4
    ldrb r0, [r1,r0]
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#3]
    lsl r0, r0, #1
    ldr r1, [pc, #0x810b770-0x810b72e-2] // dword_810B78C
    ldrh r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #3
    bl sub_8002E60
    mov r1, #0xc4
    mov r2, #0x5a 
    ldrb r0, [r5,#3]
    cmp r0, #2
    bgt loc_810B748
    mov r1, #0x2c 
    mov r2, #0x5a 
loc_810B748:
    strh r1, [r7,#0xc]
    strh r2, [r7,#0xe]
    mov r0, #0
    strb r0, [r5,#0xc]
    strh r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_810B7EC
    pop {pc}
off_810B760:    .word off_810B798
dword_810B764:    .word 0x810B7E6
off_810B768:    .word dword_810B79C
off_810B76C:    .word dword_810B7A0
off_810B770:    .word dword_810B78C
off_810B774:    .word dword_810B778
dword_810B778:    .word 0x0
    .word 0x401004, 0x0
dword_810B784:    .word 0x810B7A6
dword_810B788:    .word 0x810B7C6
dword_810B78C:    .word 0xC00030, 0x1500100, 0x22001E0
off_810B798:    .word 0x100
dword_810B79C:    .word 0x90A0A
dword_810B7A0:    .word 0x70202020, 0x4067070, 0x4040403, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x90B0000, 0x9090908, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
loc_810B7EC:
    push {lr}
    ldr r0, [pc, #0x810b800-0x810b7ee-2] // off_810B804
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_810B8B8
    pop {pc}
off_810B800:    .word off_810B804
off_810B804:    .word loc_810B81C+1
    .word sub_810B888+1
    .word sub_810B810+1
.thumb
sub_810B810:
    push {lr}
    bl sub_810B898
    bl sub_800283C
// end of function sub_810B810

    pop {pc}
loc_810B81C:
    push {lr}
    ldr r0, [pc, #0x810b830-0x810b81e-2] // off_810B834
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_810B830:    .word off_810B834
off_810B834:    .word sub_810B884+1
    .word sub_810B840+1
    .word sub_810B85C+1
.thumb
sub_810B840:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#6]
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B840

.thumb
sub_810B85C:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810B876
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810B876:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B85C

.thumb
sub_810B884:
    push {r7,lr}
    pop {r7,pc}
// end of function sub_810B884

.thumb
sub_810B888:
    push {lr}
    bl sub_800283C
// end of function sub_810B888

    pop {pc}
.thumb
sub_810B890:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810B890

.thumb
sub_810B898:
    push {r4,lr}
    ldrh r0, [r5,#6]
    bl sub_8019010
    ldrb r4, [r0,#8]
    cmp r4, #2
    bgt locret_810B8B4
    strb r4, [r7,#4]
    ldrb r0, [r5,#3]
    sub r0, #1
    bl sub_805411A
    add r1, #0x20 
    strb r4, [r1,#4]
locret_810B8B4:
    pop {r4,pc}
    .balign 4, 0x00
// end of function sub_810B898

.thumb
sub_810B8B8:
    push {lr}
    ldrb r0, [r6,#0x11]
    tst r0, r0
    beq locret_810B8F0
    mov r0, #1
    bl sub_8002E60
    ldrb r0, [r5,#3]
    cmp r0, #3
    blt loc_810B8DE
    ldrh r0, [r7,#0xc]
    sub r0, #8
    cmp r0, #0x2c 
    bgt loc_810B8EE
    mov r0, #3
    bl sub_8002E60
    mov r0, #0x2c 
    b loc_810B8EE
loc_810B8DE:
    ldrh r0, [r7,#0xc]
    add r0, #8
    cmp r0, #0xc4
    blt loc_810B8EE
    mov r0, #3
    bl sub_8002E60
    mov r0, #0xc4
loc_810B8EE:
    strh r0, [r7,#0xc]
locret_810B8F0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810B8B8

loc_810B8F4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810b90c-0x810b8fe-2] // off_810B910
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810B90C:    .word off_810B910
off_810B910:    .word sub_810B91C+1
    .word sub_810B970+1
    .word sub_810B9D8+1
.thumb
sub_810B91C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x810b96c-0x810b922-2] // unk_202E004
    mov r0, #0x1e
    bl sub_80028E8
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810B91C

    bl sub_8002FC2
    mov r0, #0x10
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810b968-0x810b940-4] // =0x270
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x7a 
    strh r0, [r7,#0xc]
    mov r0, #0x55 
    strh r0, [r7,#0xe]
    mov r0, #0xff
    str r0, [r5,#0xc]
    ldrh r0, [r6,#0x28]
    strh r0, [r5,#0xe]
    bl sub_810B970
    pop {pc}
off_810B968:    .word 0x270
off_810B96C:    .word unk_202E004
.thumb
sub_810B970:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_810B994
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_810B9BA
    str r0, [r5,#0xc]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002FD8
    b loc_810B9BA
loc_810B994:
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810B9A2
    mov r0, #0
    bl sub_8002FD8
    b loc_810B9BA
loc_810B9A2:
    ldr r0, [pc, #0x810b9cc-0x810b9a2-2] // dword_810B9D0
    ldrh r1, [r6,#0x28]
    ldrh r2, [r5,#0xe]
    cmp r1, r2
    beq loc_810B9B2
    strh r1, [r5,#0xe]
    bl sub_810B9E0
loc_810B9B2:
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FD8
loc_810B9BA:
    bl sub_800283C
// end of function sub_810B970

    ldrb r0, [r6,#0x11]
    tst r0, r0
    beq locret_810B9C8
    mov r0, #8
    strb r0, [r5,#8]
locret_810B9C8:
    pop {pc}
    .balign 4, 0x00
off_810B9CC:    .word dword_810B9D0
dword_810B9D0:    .word 0x20000000, 0x40000000
.thumb
sub_810B9D8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810B9D8

.thumb
sub_810B9E0:
    push {r0,r1,lr}
    mov r0, #0x7d 
    bl f500_8000558
    pop {r0,r1,pc}
    .balign 4, 0x00
// end of function sub_810B9E0

loc_810B9EC:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810ba10-0x810b9f2-2] // byte_20004D0
    ldr r0, [pc, #0x810ba00-0x810b9f4-4] // off_810BA04
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810BA00:    .word off_810BA04
off_810BA04:    .word sub_810BA14+1
    .word sub_810BA54+1
    .word sub_810BA7C+1
off_810BA10:    .word byte_20004D0
.thumb
sub_810BA14:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x23 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810BA14

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810ba50-0x810ba36-2] // =0x274
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810BA54
    pop {pc}
    .byte 0, 0
off_810BA50:    .word 0x274
.thumb
sub_810BA54:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xd]
    tst r0, r0
    beq loc_810BA64
    bic r4, r1
    b loc_810BA66
loc_810BA64:
    orr r4, r1
loc_810BA66:
    strb r4, [r5]
    mov r0, #0xce
    strh r0, [r7,#0xc]
    mov r1, #0x11
    ldrsb r0, [r6,r1]
    strh r0, [r7,#0xe]
    bl sub_810BA84
    bl sub_800283C
// end of function sub_810BA54

    pop {pc}
.thumb
sub_810BA7C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810BA7C

.thumb
sub_810BA84:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0xb]
    mov r1, #0xa
    svc 6
    mov r2, #0x1f
    sub r0, r2, r0
    sub r1, r2, r1
    sub r0, #5
    sub r1, #0xa
    mov r3, #1
    lsl r3, r0
    mov r4, #1
    lsl r4, r1
    ldr r0, [pc, #0x810bab0-0x810baa2-2] // =0x7FFFF00
    bic r0, r3
    bic r0, r4
    bl sub_8002FD8
    pop {pc}
    .byte 0, 0
dword_810BAB0:    .word 0x7FFFF00
// end of function sub_810BA84

loc_810BAB4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810bac8-0x810baba-2] // off_810BACC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810BAC8:    .word off_810BACC
off_810BACC:    .word sub_810BADC+1
    .word sub_810BB24+1
    .word sub_810BB60+1
    .word sub_810BB7C+1
.thumb
sub_810BADC:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x27 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810BADC

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810bb20-0x810bafe-2] // =0x2B0
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x78 
    strh r0, [r7,#0xc]
    mov r0, #0x48 
    strh r0, [r7,#0xe]
    bl sub_810BB24
    pop {pc}
    .byte 0, 0
off_810BB20:    .word 0x2B0
.thumb
sub_810BB24:
    push {lr}
    bl sub_80A41DC
    asr r0, r0, #0x10
    asr r1, r1, #0x10
    strh r0, [r7,#0xc]
    strh r1, [r7,#0xe]
    cmp r3, #2
    beq loc_810BB50
    tst r2, r2
    beq loc_810BB54
    mov r0, #8
    strb r0, [r5,#8]
    ldr r0, [pc, #0x810bb5c-0x810bb3e-2] // =0x12D
    bl f500_8000558
    mov r0, #1
    bl sub_8002DF0
    bl sub_800281C
    b loc_810BB54
loc_810BB50:
    bl sub_80540E0
loc_810BB54:
    bl sub_800283C
// end of function sub_810BB24

    pop {pc}
    .balign 4, 0x00
dword_810BB5C:    .word 0x12F
.thumb
sub_810BB60:
    push {lr}
    bl sub_80A41DC
    asr r0, r0, #0x10
    asr r1, r1, #0x10
    strh r0, [r7,#0xc]
    strh r1, [r7,#0xe]
    tst r2, r2
    bne loc_810BB76
    mov r0, #0xc
    strb r0, [r5,#8]
loc_810BB76:
    bl sub_800283C
// end of function sub_810BB60

    pop {pc}
.thumb
sub_810BB7C:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810BB7C

loc_810BB84:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810bb98-0x810bb8a-2] // off_810BB9C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810BB98:    .word off_810BB9C
off_810BB9C:    .word sub_810BBA8+1
    .word sub_810BBF0+1
    .word sub_810BC54+1
.thumb
sub_810BBA8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x26 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810BBA8

    bl sub_8002FC2
    mov r0, #0xa0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810bbec-0x810bbca-2] // =0x290
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x77 
    strh r0, [r7,#0xc]
    mov r0, #0x68 
    strh r0, [r7,#0xe]
    bl sub_810BBF0
    pop {pc}
    .balign 4, 0x00
dword_810BBEC:    .word 0x29A
.thumb
sub_810BBF0:
    push {lr}
    mov r4, #0x23 
    bl sub_80A41EC
    tst r1, r1
    bne loc_810BBFE
    mov r4, #0x21 
loc_810BBFE:
    strb r4, [r5]
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #8
    and r1, r2
    lsr r1, r1, #3
    ldr r2, [pc, #0x810bc34-0x810bc0c-4] // off_810BC38
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    lsl r1, r1, #2
    ldr r0, [r2,r1]
    bl sub_8002FD8
    bl sub_800283C
// end of function sub_810BBF0

    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #0xf
    and r1, r2
    cmp r1, #8
    bne locret_810BC32
    ldr r0, [pc, #0x810bc50-0x810bc2c-4] // =0x123
    bl f500_8000558
locret_810BC32:
    pop {pc}
off_810BC34:    .word off_810BC38
off_810BC38:    .word dword_810BC40
    .word dword_810BC48
dword_810BC40:    .word 0x68000000, 0x60000000
dword_810BC48:    .word 0x38000000, 0x18000000
dword_810BC50:    .word 0x123
.thumb
sub_810BC54:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810BC54

loc_810BC5C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810bc70-0x810bc62-2] // off_810BC74
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_810BC70:    .word off_810BC74
off_810BC74:    .word sub_810BC80+1
    .word sub_810BCAC+1
    .word sub_810BDE0+1
.thumb
sub_810BC80:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrh r0, [r5,#0xe]
    lsl r0, r0, #0x19
    lsr r0, r0, #0x19
    strh r0, [r5,#0x12]
    ldr r1, [pc, #0x810bc9c-0x810bc8e-2] // dword_810BCA0
    lsl r0, r0, #1
    ldr r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
off_810BC9C:    .word dword_810BCA0
dword_810BCA0:    .word 0x100000, 0x300020, 0x50
// end of function sub_810BC80

.thumb
sub_810BCAC:
    push {lr}
    ldrh r2, [r5,#0xe]
    lsl r2, r2, #0x19
    bcs loc_810BCBC
    mov r3, #0xc
    bl sub_810BCD0
    b loc_810BCC2
loc_810BCBC:
    mov r3, #0xe
    bl sub_810BCD0
loc_810BCC2:
    mov r3, #0xc
    ldrsh r0, [r7,r3]
    mov r3, #0xe
    ldrsh r1, [r7,r3]
    bl sub_810BCF6
    pop {pc}
// end of function sub_810BCAC

.thumb
sub_810BCD0:
    ldrsh r0, [r7,r3]
    mov r2, #0x10
    ldrsb r1, [r5,r2]
    cmp r1, #0
    bgt loc_810BCE8
    add r0, r0, r1
    mov r2, #0xc
    ldrsh r1, [r5,r2]
    cmp r0, r1
    bge loc_810BCF2
    sub r0, r0, r1
    b loc_810BCF2
loc_810BCE8:
    add r0, r0, r1
    bmi loc_810BCF2
    mov r2, #0xc
    ldrsh r1, [r5,r2]
    add r0, r0, r1
loc_810BCF2:
    strh r0, [r7,r3]
    mov pc, lr
// end of function sub_810BCD0

.thumb
sub_810BCF6:
    push {r4,r6,lr}
    str r0, [r7,#0x10]
    str r1, [r7,#0x14]
loc_810BCFC:
    str r0, [r5,#0x14]
    str r1, [r5,#0x18]
    ldrh r2, [r7,#8]
    add r6, r2, #0
    ldr r4, [pc, #0x810bd90-0x810bd04-4] // off_810BD94
    ldrh r3, [r5,#0x12]
    lsl r3, r3, #2
    ldr r4, [r4,r3]
loc_810BD0C:
    ldr r2, [r4]
    tst r2, r2
    bne loc_810BD32
    mov r2, #0xc
    ldrsh r3, [r5,r2]
    neg r3, r3
    ldrh r2, [r5,#0xe]
    lsl r2, r2, #0x19
    bcs loc_810BD28
    ldr r0, [r7,#0x10]
    add r0, r0, r3
    str r0, [r7,#0x10]
    ldr r1, [r7,#0x14]
    b loc_810BCFC
loc_810BD28:
    ldr r1, [r7,#0x14]
    add r1, r1, r3
    str r1, [r7,#0x14]
    ldr r0, [r7,#0x10]
    b loc_810BCFC
loc_810BD32:
    add r3, r2, #0
    lsl r3, r3, #7
    lsr r3, r3, #0x17
    ldr r0, [r5,#0x14]
    add r0, r0, r3
    str r0, [r5,#0x14]
    cmp r0, #0xf0
    bge locret_810BD8E
    mov r3, #0x20 
    neg r3, r3
    cmp r0, r3
    blt loc_810BD82
    lsl r0, r0, #0x17
    lsr r0, r0, #7
    add r3, r2, #0
    lsl r3, r3, #0x18
    lsr r3, r3, #0x18
    ldr r1, [r5,#0x18]
    add r1, r1, r3
    str r1, [r5,#0x18]
    cmp r1, #0xa0
    bge locret_810BD8E
    mov r3, #0x20 
    neg r3, r3
    cmp r1, r3
    blt loc_810BD82
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    ldr r3, [pc, #0x810bdd0-0x810bd6a-2] // =0x1FF00FF
    mvn r3, r3
    and r2, r3
    orr r2, r1
    orr r0, r2
    mov r1, #3
    lsl r1, r1, #0xa
    orr r1, r6
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
loc_810BD82:
    ldr r2, [pc, #0x810bdd4-0x810bd82-2] // dword_810BDD8
    ldrh r3, [r5,#0x12]
    ldrb r2, [r2,r3]
    add r6, r6, r2
    add r4, #4
    b loc_810BD0C
locret_810BD8E:
    pop {r4,r6,pc}
off_810BD90:    .word off_810BD94
off_810BD94:    .word dword_810BDA8
    .word dword_810BDA8
    .word dword_810BDA8
    .word dword_810BDA8
    .word dword_810BDB4
dword_810BDA8:    .word 0x40004000, 0x40204000, 0x0
dword_810BDB4:    .word 0x80008000, 0x80008020, 0x80008020, 0x80008020, 0x80008020
    .word 0x80008020, 0x0
dword_810BDD0:    .word 0x1FF00FF
off_810BDD4:    .word dword_810BDD8
dword_810BDD8:    .word 0x4040404, 0x8
// end of function sub_810BCF6

.thumb
sub_810BDE0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810BDE0

loc_810BDE8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810bdfc-0x810bdee-2] // off_810BE00
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810BDFC:    .word off_810BE00
off_810BE00:    .word sub_810BE0C+1
    .word sub_810BE40+1
    .word sub_810BEB0+1
.thumb
sub_810BE0C:
    push {lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_810BE2C
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    mov r0, #2
    str r0, [r5,#0x10]
    mov r0, #0x10
    strb r0, [r5,#5]
    mov r0, #0x23 
    strb r0, [r5,#4]
    mov r0, #4
    strb r0, [r5,#9]
loc_810BE2C:
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    bgt locret_810BE3C
    mov r0, #0x4b 
    strb r0, [r5,#4]
    mov r0, #4
    strb r0, [r5,#8]
locret_810BE3C:
    pop {pc}
    .byte 0, 0
// end of function sub_810BE0C

.thumb
sub_810BE40:
    push {r6,r7,lr}
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    bgt loc_810BE4E
    mov r0, #8
    strb r0, [r5,#8]
loc_810BE4E:
    mov r6, #0x3f 
    mov r7, #0x40 
loc_810BE52:
    ldr r0, [pc, #0x810beac-0x810be52-2] // =0x87
    add r1, r6, #0
    lsl r1, r1, #0x10
    orr r0, r1
    mov r1, #0
    orr r1, r7
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_810BE40

    add r6, #8
    add r7, #1
    ldr r0, [r5,#0xc]
    add r0, #0x41 
    cmp r7, r0
    blt loc_810BE52
    bne loc_810BE82
    ldrb r0, [r5,#5]
    cmp r0, #8
    blt loc_810BE82
    cmp r7, #0x4f 
    bge loc_810BE82
    mov r7, #0x4e 
    b loc_810BE52
loc_810BE82:
    ldrb r0, [r5,#5]
    sub r0, #1
    bpl loc_810BE8A
    mov r0, #0x10
loc_810BE8A:
    strb r0, [r5,#5]
    ldr r0, [r5,#0xc]
    cmp r0, #0xd
    bge locret_810BEA8
    ldr r0, [r5,#0x10]
    sub r0, #1
    bne loc_810BEA6
    mov r0, #0x7c 
    bl f500_8000558
    ldr r0, [r5,#0xc]
    add r0, #1
    str r0, [r5,#0xc]
    mov r0, #2
loc_810BEA6:
    str r0, [r5,#0x10]
locret_810BEA8:
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_810BEAC:    .word 0x87
.thumb
sub_810BEB0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810BEB0

loc_810BEB8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810becc-0x810bebe-2] // off_810BED0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810BECC:    .word off_810BED0
off_810BED0:    .word sub_810BEDC+1
    .word sub_810C0C8+1
    .word sub_810C2F0+1
.thumb
sub_810BEDC:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    ldrb r6, [r5,#4]
    ldr r1, [pc, #0x810bfac-0x810bee4-4] // unk_20014C0
    mov r0, #4
    mul r0, r6
    add r1, r1, r0
    str r1, [r5,#0x10]
    ldrb r6, [r1]
    ldr r0, [pc, #0x810bfb8-0x810bef0-4] // dword_810C060
    ldrb r0, [r0,r6]
    bl sub_80028E8
    ldr r1, [r5,#0x10]
    ldrb r0, [r1]
    ldr r1, [pc, #0x810bfc8-0x810befc-4] // dword_810C0A8
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810BEDC

    bl sub_8002FC2
    ldr r0, [pc, #0x810bfbc-0x810bf0c-4] // dword_810C080
    ldrb r4, [r5,#4]
    ldrb r0, [r0,r4]
    strb r0, [r7,#0x15]
    ldr r0, [pc, #0x810bfc0-0x810bf14-4] // dword_810C088
    ldrb r0, [r0,r6]
    ldr r1, [r5,#0x10]
    ldrb r1, [r1,#1]
    strb r1, [r5,#0xc]
    mov r2, #0x40 
    and r2, r1
    bne loc_810BF26
    add r0, #2
loc_810BF26:
    strb r0, [r7,#4]
    strb r0, [r5,#0xd]
    ldr r0, [pc, #0x810bfb4-0x810bf2a-2] // dword_810BFD0
    lsl r1, r4, #1
    ldrh r1, [r0,r1]
    ldr r0, [pc, #0x810bfb0-0x810bf30-4] // =0x0
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0
    bl sub_810BF58
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x28 
    strb r0, [r5,#0x14]
    mov r0, #5
    strb r0, [r5,#0xe]
    bl sub_810C0C8
    .byte 0
    .byte 0xBD
.thumb
sub_810BF58:
    push {lr}
    add r6, r0, #0
    ldr r2, [r5,#0x10]
    ldrb r0, [r2,#1]
    mov r1, #0xf
    and r1, r0
    mov r3, #0
loc_810BF66:
    mov r0, #1
    lsl r0, r3
    tst r1, r0
    beq loc_810BF74
    add r3, #1
    cmp r3, #3
    blt loc_810BF66
loc_810BF74:
    lsl r3, r3, #2
    ldr r2, [pc, #0x810bfc4-0x810bf76-2] // dword_810BFE0
    mov r0, #0x10
    ldrb r1, [r5,#4]
    mul r0, r1
    add r2, r2, r0
    ldrh r0, [r2,r3]
    strh r0, [r7,#0xc]
    add r3, #2
    ldrh r0, [r2,r3]
    strh r0, [r7,#0xe]
    ldrb r3, [r5,#4]
    ldr r1, [pc, #0x810bfcc-0x810bf8c-4] // byte_20015E0
    ldrb r2, [r1,#0x2] // (byte_20015E2 - 0x20015e0)
    cmp r2, r3
    beq loc_810BF9A
    ldrb r2, [r1,#0x3] // (byte_20015E3 - 0x20015e0)
    cmp r2, r3
    bne locret_810BFAA
loc_810BF9A:
    ldrb r1, [r1,#0x9] // (byte_20015E9 - 0x20015e0)
    tst r1, r1
    beq locret_810BFAA
    tst r6, r6
    bne locret_810BFAA
    ldrh r0, [r7,#0xe]
    sub r0, #0x14
    strh r0, [r7,#0xe]
locret_810BFAA:
    pop {pc}
off_810BFAC:    .word unk_20014C0
dword_810BFB0:    .word 0x0
off_810BFB4:    .word dword_810BFD0
off_810BFB8:    .word dword_810C060
off_810BFBC:    .word dword_810C080
off_810BFC0:    .word dword_810C088
off_810BFC4:    .word dword_810BFE0
off_810BFC8:    .word dword_810C0A8
off_810BFCC:    .word byte_20015E0
dword_810BFD0:    .word 0x100000, 0x300020, 0x500040, 0x700060
dword_810BFE0:    .word 0x900014, 0x5E0020, 0x46003C, 0x320078, 0x90002C, 0x5E0020
    .word 0x46003C, 0x320078, 0x90004C, 0x5E0058, 0x46003C, 0x320078
    .word 0x900064, 0x5E0058, 0x46003C, 0x320078, 0x90008C, 0x5E0098
    .word 0x4600B4, 0x320078, 0x9000A4, 0x5E0098, 0x4600B4, 0x320078
    .word 0x9000C4, 0x5E00D0, 0x4600B4, 0x320078, 0x9000DC, 0x5E00D0
    .word 0x4600B4, 0x320078
dword_810C060:    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505
dword_810C080:    .word 0x30201000, 0x70605040
dword_810C088:    .word 0x0
    .word 0x10101010, 0x20202020, 0x30303030, 0x0
    .word 0x10101010
    .word 0x10101010
    .word 0x10101010
dword_810C0A8:    .word 0x3020100
    .word 0x7060504
    .word 0xB0A0908
    .word 0xF0E0D0C
    .word 0x5040100
    .word 0x5040504
    .word 0x5040504
    .word 0x60504
// end of function sub_810BF58

.thumb
sub_810C0C8:
    push {lr}
    ldr r0, [pc, #0x810c0dc-0x810c0ca-2] // off_810C0E0
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810C0DC:    .word off_810C0E0
off_810C0E0:    .word sub_810C104+1
    .word sub_810C154+1
    .word sub_810C194+1
    .word sub_810C1D0+1
    .word sub_810C210+1
    .word sub_810C22C+1
    .word sub_810C1D0+1
    .word sub_810C2CC+1
    .word sub_810C2D0+1
// end of function sub_810C0C8

.thumb
sub_810C104:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r4, [pc, #0x810c150-0x810c108-4] // byte_20015E0
    ldrb r1, [r4,#0x2] // (byte_20015E2 - 0x20015e0)
    cmp r0, r1
    beq loc_810C118
    ldrb r1, [r4,#0x3] // (byte_20015E3 - 0x20015e0)
    cmp r0, r1
    beq loc_810C118
    pop {pc}
loc_810C118:
    ldr r1, [r5,#0x10]
    ldrb r0, [r1,#1]
    ldrb r2, [r5,#0xc]
    cmp r0, r2
    bne loc_810C144
    ldrb r0, [r4,#0x9] // (byte_20015E9 - 0x20015e0)
    tst r0, r0
    bne loc_810C136
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#7]
    pop {pc}
loc_810C136:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#7]
    pop {pc}
loc_810C144:
    mov r1, #0x80
    and r1, r0
    beq locret_810C14E
    ldr r4, [pc, #0x810c150-0x810c14a-2] // byte_20015E0
    ldrb r0, [r4]
locret_810C14E:
    pop {pc}
off_810C150:    .word byte_20015E0
// end of function sub_810C104

.thumb
sub_810C154:
    push {lr}
    ldrb r0, [r5,#6]
    cmp r0, #0x14
    bge loc_810C168
    add r0, #1
    strb r0, [r5,#6]
    ldrh r1, [r7,#0xe]
    sub r1, #1
    strh r1, [r7,#0xe]
    pop {pc}
loc_810C168:
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x810c180-0x810c172-2] // dword_810C184
    ldrb r0, [r1,r0]
    ldrb r1, [r5,#0xd]
    add r1, r1, r0
    strb r1, [r7,#4]
    pop {pc}
    .byte 0, 0
off_810C180:    .word dword_810C184
dword_810C184:    .word 0x0, 0x0
// end of function sub_810C154

    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
.thumb
sub_810C194:
    push {lr}
    ldr r1, [r5,#0x10]
    ldrb r0, [r1,#1]
    ldrb r2, [r5,#0xc]
    cmp r0, r2
    beq locret_810C1CE
    mov r1, #0x80
    tst r1, r0
    beq loc_810C1C6
    ldrb r0, [r5,#6]
    cmp r0, #0x14
    blt loc_810C1BA
    ldrb r0, [r5,#0xd]
    add r0, #2
    strb r0, [r5,#0xd]
    strb r0, [r7,#4]
    mov r0, #0xc
    strb r0, [r5,#9]
    b locret_810C1CE
loc_810C1BA:
    add r0, #1
    strb r0, [r5,#6]
    ldrh r1, [r7,#0xe]
    add r1, #1
    strh r1, [r7,#0xe]
    pop {pc}
loc_810C1C6:
    mov r0, #0x14
    strb r0, [r5,#6]
    mov r0, #0x10
    strb r0, [r5,#9]
locret_810C1CE:
    pop {pc}
// end of function sub_810C194

.thumb
sub_810C1D0:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r4, [pc, #0x810c208-0x810c1d4-4] // byte_20015E0
    ldrb r1, [r4,#0x2] // (byte_20015E2 - 0x20015e0)
    cmp r0, r1
    beq loc_810C1E2
    ldrb r1, [r4,#0x3] // (byte_20015E3 - 0x20015e0)
    cmp r0, r1
    bne locret_810C206
loc_810C1E2:
    mov r2, #0x1c
    ldrb r0, [r4]
    cmp r0, #2
    bne loc_810C1FE
    ldrb r0, [r5,#4]
    mov r1, #4
    mul r0, r1
    ldr r1, [pc, #0x810c20c-0x810c1f0-4] // unk_20014C0
    add r0, r0, r1
    ldrb r0, [r0,#1]
    mov r1, #0x80
    tst r0, r1
    bne loc_810C1FE
    mov r2, #0x20 
loc_810C1FE:
    strb r2, [r5,#9]
    ldr r1, [r5,#0x10]
    ldrb r1, [r1,#1]
    strb r1, [r5,#0xc]
locret_810C206:
    pop {pc}
off_810C208:    .word byte_20015E0
off_810C20C:    .word unk_20014C0
// end of function sub_810C1D0

.thumb
sub_810C210:
    push {lr}
    ldrb r0, [r5,#6]
    tst r0, r0
    beq loc_810C21E
    sub r0, #1
    strb r0, [r5,#6]
    b locret_810C228
loc_810C21E:
    ldr r4, [r5,#0x10]
    mov r0, #1
    strb r0, [r4,#3]
    mov r0, #0x14
    strb r0, [r5,#9]
locret_810C228:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C210

.thumb
sub_810C22C:
    push {lr}
    ldr r4, [r5,#0x10]
    ldrb r0, [r4,#3]
    tst r0, r0
    bne locret_810C240
    ldrb r1, [r5,#0xa]
    ldr r0, [pc, #0x810c244-0x810c238-4] // off_810C248
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_810C240:
    pop {pc}
    .balign 4, 0x00
off_810C244:    .word off_810C248
off_810C248:    .word sub_810C254+1
    .word sub_810C26C+1
    .word sub_810C29C+1
// end of function sub_810C22C

.thumb
sub_810C254:
    push {lr}
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0x14]
    bl sub_8002C70
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C254

.thumb
sub_810C26C:
    push {lr}
    ldrh r2, [r5,#0x14]
    ldr r1, [pc, #0x810c2c8-0x810c270-4] // =0x80
    add r2, r2, r1
    strh r2, [r5,#0x14]
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    bne loc_810C290
    mov r1, #0x21 
    strb r1, [r5]
    mov r0, #8
    strb r0, [r5,#0xa]
    mov r0, #1
    bl sub_810BF58
    mov r0, #5
    strb r0, [r5,#0xe]
loc_810C290:
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0x14]
    bl sub_8002C70
    pop {pc}
// end of function sub_810C26C

.thumb
sub_810C29C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrh r2, [r5,#0x14]
    ldr r1, [pc, #0x810c2c8-0x810c2a4-4] // =0x80
    sub r2, r2, r1
    strh r2, [r5,#0x14]
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    bne loc_810C2BC
    bl sub_8002D9E
    mov r0, #0x18
    strb r0, [r5,#9]
    b locret_810C2C6
loc_810C2BC:
    mov r0, #0
    mov r1, #0x40 
    ldrh r2, [r5,#0x14]
    bl sub_8002C70
locret_810C2C6:
    pop {pc}
off_810C2C8:    .word 0x80
// end of function sub_810C29C

.thumb
sub_810C2CC:
    push {lr}
    pop {pc}
// end of function sub_810C2CC

.thumb
sub_810C2D0:
    push {lr}
    ldr r0, [pc, #0x810c2e8-0x810c2d2-2] // byte_20015E0
    ldrb r0, [r0,#0x9] // (byte_20015E9 - 0x20015e0)
    tst r0, r0
    bne locret_810C2E6
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#7]
locret_810C2E6:
    pop {pc}
off_810C2E8:    .word byte_20015E0
    .word unk_20014C0
// end of function sub_810C2D0

.thumb
sub_810C2F0:
    push {lr}
    pop {pc}
// end of function sub_810C2F0

.thumb
sub_810C2F4:
    push {lr}
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810C2F4

    bl sub_8002FC2
    ldrb r4, [r5,#4]
    sub r4, #8
    ldr r0, [pc, #0x810c324-0x810c306-2] // dword_810C328
    lsl r1, r4, #1
    ldrh r1, [r0,r1]
    ldr r0, [pc, #0x810c320-0x810c30c-4] // =0x80
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    pop {pc}
    .byte 0, 0
off_810C320:    .word 0x80
off_810C324:    .word dword_810C328
dword_810C328:    .word 0x100000, 0x300020, 0x500040, 0x700060
loc_810C338:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810c34c-0x810c33e-2] // off_810C350
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810C34C:    .word off_810C350
off_810C350:    .word sub_810C35C+1
    .word sub_810CCD4+1
    .word sub_810CDBC+1
.thumb
sub_810C35C:
    push {lr}
    mov r0, #2
    bl sub_80028E8
    ldrb r2, [r5,#4]
    sub r2, #8
    ldr r1, [pc, #0x810c390-0x810c368-4] // dword_810C394
    ldrb r0, [r1,r2]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
// end of function sub_810C35C

    mov r0, #0xff
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    mov r0, #0
    str r0, [r5,#0x10]
    bl sub_810C39C
    mov r0, #0
    bl sub_810CC7C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810CCD4
    .byte 0
    .byte 0xBD
off_810C390:    .word dword_810C394
dword_810C394:    .word 0x0
    .word 0x20101
.thumb
sub_810C39C:
    push {lr}
    ldrb r1, [r5,#4]
    sub r1, #8
    lsl r1, r1, #2
    ldr r0, [pc, #0x810c3b0-0x810c3a4-4] // off_810C3B4
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_810C3B0:    .word off_810C3B4
off_810C3B4:    .word sub_810C3D0+1
    .word sub_810C454+1
    .word sub_810C4CC+1
    .word sub_810C544+1
    .word sub_810C5BC+1
    .word sub_810C65C+1
    .word sub_810C6FC+1
// end of function sub_810C39C

.thumb
sub_810C3D0:
    push {r6,lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C410
loc_810C3E0:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C3FC
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C430
loc_810C3FC:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C430
loc_810C410:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C42A
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C3E0
loc_810C42A:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C446
loc_810C430:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C446
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C446:
    pop {r6,pc}
    .word byte_20015E0
    .word dword_810C450
dword_810C450:    .word 0x60400
// end of function sub_810C3D0

.thumb
sub_810C454:
    push {lr}
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C494
loc_810C464:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C480
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C4B4
loc_810C480:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C4B4
loc_810C494:
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C4AE
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C464
loc_810C4AE:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C4CA
loc_810C4B4:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C4CA
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C4CA:
    pop {pc}
// end of function sub_810C454

.thumb
sub_810C4CC:
    push {lr}
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C50C
loc_810C4DC:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C4F8
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C52C
loc_810C4F8:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C52C
loc_810C50C:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C526
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C4DC
loc_810C526:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C542
loc_810C52C:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C542
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C542:
    pop {pc}
// end of function sub_810C4CC

.thumb
sub_810C544:
    push {lr}
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C584
loc_810C554:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C570
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C5A4
loc_810C570:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C5A4
loc_810C584:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C59E
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C554
loc_810C59E:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C5BA
loc_810C5A4:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C5BA
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C5BA:
    pop {pc}
// end of function sub_810C544

.thumb
sub_810C5BC:
    push {lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810C5FC
loc_810C5CC:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C5E8
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C644
loc_810C5E8:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C644
loc_810C5FC:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    bne loc_810C5CC
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    beq loc_810C624
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C5CC
loc_810C624:
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    beq loc_810C63E
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C5CC
loc_810C63E:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C65A
loc_810C644:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C65A
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C65A:
    pop {pc}
// end of function sub_810C5BC

.thumb
sub_810C65C:
    push {lr}
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810C69C
loc_810C66C:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C688
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C6E4
loc_810C688:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C6E4
loc_810C69C:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    bne loc_810C66C
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810C6C4
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C66C
loc_810C6C4:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810C6DE
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C66C
loc_810C6DE:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C6FA
loc_810C6E4:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C6FA
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C6FA:
    pop {pc}
// end of function sub_810C65C

.thumb
sub_810C6FC:
    push {lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810C73C
loc_810C70C:
    str r6, [r5,#0x10]
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C728
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C7D0
loc_810C728:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810C7D0
loc_810C73C:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810C70C
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810C70C
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810C70C
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810C780
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C70C
loc_810C780:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810C79A
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C70C
loc_810C79A:
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810C7B0
    mov r0, #1
    bl loc_8002F8E
    b loc_810C70C
loc_810C7B0:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810C7CA
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C70C
loc_810C7CA:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810C7E6
loc_810C7D0:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810C7E6
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
locret_810C7E6:
    pop {pc}
    .word byte_20015E0
    .word dword_810C7F0
dword_810C7F0:    .word 0x60400
// end of function sub_810C6FC

loc_810C7F4:
    push {lr}
    ldrb r1, [r5,#4]
    sub r1, #8
    lsl r1, r1, #2
    ldr r0, [pc, #0x810c808-0x810c7fc-4] // off_810C80C
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810C808:    .word off_810C80C
off_810C80C:    .word sub_810C828+1
    .word sub_810C89C+1
    .word sub_810C904+1
    .word sub_810C96C+1
    .word sub_810C9D4+1
    .word sub_810CA94+1
    .word sub_810CB54+1
.thumb
sub_810C828:
    push {r6,lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C86E
loc_810C838:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    bne loc_810C846
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C85A
loc_810C846:
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C88C
loc_810C85A:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C88C
loc_810C86E:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C888
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C838
loc_810C888:
    mov r1, #0xa1
    strb r1, [r5]
locret_810C88C:
    pop {r6,pc}
    .byte 0, 0
    .word byte_20015E0
    .word dword_810C898
dword_810C898:    .word 0x60400
// end of function sub_810C828

.thumb
sub_810C89C:
    push {lr}
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C8E2
loc_810C8AC:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    bne loc_810C8BA
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C8CE
loc_810C8BA:
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C900
loc_810C8CE:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C900
loc_810C8E2:
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C8FC
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C8AC
loc_810C8FC:
    mov r1, #0xa1
    strb r1, [r5]
locret_810C900:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C89C

.thumb
sub_810C904:
    push {lr}
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C94A
loc_810C914:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    bne loc_810C922
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C936
loc_810C922:
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C968
loc_810C936:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C968
loc_810C94A:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C964
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C914
loc_810C964:
    mov r1, #0xa1
    strb r1, [r5]
locret_810C968:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C904

.thumb
sub_810C96C:
    push {lr}
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C9B2
loc_810C97C:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    bne loc_810C98A
    mov r1, #0x40 
    tst r0, r1
    bne loc_810C99E
loc_810C98A:
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C9D0
loc_810C99E:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b locret_810C9D0
loc_810C9B2:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #1
    tst r0, r2
    beq loc_810C9CC
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C97C
loc_810C9CC:
    mov r1, #0xa1
    strb r1, [r5]
locret_810C9D0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C96C

.thumb
sub_810C9D4:
    push {lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810CA18
loc_810C9E4:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    beq loc_810CA04
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CA60
loc_810CA04:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CA60
loc_810CA18:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    bne loc_810C9E4
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    beq loc_810CA40
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C9E4
loc_810CA40:
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r2, #2
    tst r0, r2
    beq loc_810CA5A
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810C9E4
loc_810CA5A:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810CA90
loc_810CA60:
    ldr r1, [pc, #0x810cc60-0x810ca60-4] // byte_20015E0
    ldrb r0, [r1]
    ldr r2, [pc, #0x810cc64-0x810ca64-4] // dword_810CC68
    ldrb r0, [r2,r0]
    ldrb r1, [r1,#0x1] // (byte_20015E1 - 0x20015e0)
    add r0, r0, r1
    ldrb r1, [r5,#4]
    sub r1, #8
    sub r0, r0, r1
    cmp r0, #2
    blt locret_810CA90
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810CA90
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #8
    strb r0, [r5,#9]
locret_810CA90:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810C9D4

.thumb
sub_810CA94:
    push {lr}
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810CAD8
loc_810CAA4:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    beq loc_810CAC4
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CB20
loc_810CAC4:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CB20
loc_810CAD8:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    bne loc_810CAA4
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810CB00
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810CAA4
loc_810CB00:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #2
    tst r0, r1
    beq loc_810CB1A
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810CAA4
loc_810CB1A:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810CB50
loc_810CB20:
    ldr r1, [pc, #0x810cc60-0x810cb20-4] // byte_20015E0
    ldrb r0, [r1]
    ldr r2, [pc, #0x810cc64-0x810cb24-4] // dword_810CC68
    ldrb r0, [r2,r0]
    ldrb r1, [r1,#0x1] // (byte_20015E1 - 0x20015e0)
    add r0, r0, r1
    ldrb r1, [r5,#4]
    sub r1, #8
    sub r0, r0, r1
    cmp r0, #2
    blt locret_810CB50
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810CB50
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #8
    strb r0, [r5,#9]
locret_810CB50:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810CA94

.thumb
sub_810CB54:
    push {lr}
    mov r0, #0
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810CB98
loc_810CB64:
    str r6, [r5,#0x10]
    mov r1, #0x80
    tst r0, r1
    beq loc_810CB84
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #5
    strb r0, [r7,#4]
    mov r0, #0xc0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CC2C
loc_810CB84:
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    b loc_810CC2C
loc_810CB98:
    mov r0, #1
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810CB64
    mov r0, #2
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810CB64
    mov r0, #3
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    bne loc_810CB64
    mov r0, #4
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810CBDC
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810CB64
loc_810CBDC:
    mov r0, #5
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810CBF6
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810CB64
loc_810CBF6:
    mov r0, #6
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810CC0C
    mov r0, #1
    bl loc_8002F8E
    b loc_810CB64
loc_810CC0C:
    mov r0, #7
    bl sub_810CC6C
    add r6, r1, #0
    mov r1, #4
    tst r0, r1
    beq loc_810CC26
    push {r0}
    mov r0, #1
    bl loc_8002F8E
    pop {r0}
    b loc_810CB64
loc_810CC26:
    mov r1, #0xa1
    strb r1, [r5]
    b locret_810CC5C
loc_810CC2C:
    ldr r1, [pc, #0x810cc60-0x810cc2c-4] // byte_20015E0
    ldrb r0, [r1]
    ldr r2, [pc, #0x810cc64-0x810cc30-4] // dword_810CC68
    ldrb r0, [r2,r0]
    ldrb r1, [r1,#0x1] // (byte_20015E1 - 0x20015e0)
    add r0, r0, r1
    ldrb r1, [r5,#4]
    sub r1, #8
    sub r0, r0, r1
    cmp r0, #2
    blt locret_810CC5C
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_810CC5C
    add r0, #3
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #8
    strb r0, [r5,#9]
locret_810CC5C:
    pop {pc}
    .byte 0, 0
off_810CC60:    .word byte_20015E0
off_810CC64:    .word dword_810CC68
dword_810CC68:    .word 0x60400
// end of function sub_810CB54

.thumb
sub_810CC6C:
    push {lr}
    add r2, r0, #0
    ldr r0, [pc, #0x810cc94-0x810cc70-4] // unk_20014C0
    mov r1, #4
    mul r1, r2
    add r1, r1, r0
    ldrb r0, [r1,#1]
    pop {pc}
// end of function sub_810CC6C

.thumb
sub_810CC7C:
    push {lr}
    ldrb r4, [r5,#4]
    sub r4, #8
    lsl r4, r4, #2
    ldr r1, [pc, #0x810cca0-0x810cc84-4] // byte_810CCA8
    ldrh r0, [r1,r4]
    strh r0, [r7,#0xc]
    add r4, #2
    ldrh r0, [r1,r4]
    strh r0, [r7,#0xe]
    pop {pc}
    .balign 4, 0x00
off_810CC94:    .word unk_20014C0
    .word dword_810CCC4
    .word 0x810CCCB
off_810CCA0:    .word byte_810CCA8
    .word byte_20015E0
byte_810CCA8:    .byte 0x20
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0x77 
    .byte 0
    .word 0x770098, 0x7700D0, 0x5F003C, 0x5F00B4, 0x470078
dword_810CCC4:    .word 0x80808080, 0x808080, 0x50005, 0x5
// end of function sub_810CC7C

.thumb
sub_810CCD4:
    push {lr}
    ldr r0, [pc, #0x810cce8-0x810ccd6-2] // off_810CCEC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810CCE8:    .word off_810CCEC
off_810CCEC:    .word sub_810CCFC+1
    .word sub_810CD40+1
    .word sub_810CDB8+1
    .word byte_20015E0
// end of function sub_810CCD4

.thumb
sub_810CCFC:
    push {lr}
    ldr r1, [pc, #0x810cd34-0x810ccfe-2] // byte_20015E0
    ldrb r0, [r1]
    ldr r2, [pc, #0x810cd38-0x810cd02-2] // loc_810CD3C
    ldrb r0, [r2,r0]
    ldrb r1, [r1,#0x1] // (byte_20015E1 - 0x20015e0)
    add r0, r0, r1
    ldrb r1, [r5,#4]
    sub r1, #8
    add r1, #1
    cmp r0, r1
    blt locret_810CD32
    bl loc_810C7F4
    ldr r4, [r5,#0x10]
    tst r4, r4
    beq locret_810CD32
    ldrb r0, [r4,#3]
    tst r0, r0
    beq locret_810CD32
    mov r1, #0xa3
    strb r1, [r5]
    ldrb r0, [r5,#0xf]
    bl sub_810C2F4
    mov r0, #4
    strb r0, [r5,#9]
locret_810CD32:
    pop {pc}
off_810CD34:    .word byte_20015E0
off_810CD38:    .word loc_810CD3C
// end of function sub_810CCFC

loc_810CD3C:
    lsl r0, r0, #0x10
    lsl r6, r0, #0x1c
.thumb
sub_810CD40:
    push {r4,lr}
    bl sub_8002E36
    mov r1, #1
    tst r0, r1
    beq loc_810CD52
    ldr r4, [r5,#0x10]
    mov r1, #0
    strb r1, [r4,#3]
loc_810CD52:
    mov r1, #0xc0
    and r0, r1
    beq locret_810CDA6
    ldr r1, [pc, #0x810cda8-0x810cd58-4] // byte_20015E0
    ldrb r0, [r1]
    ldr r2, [pc, #0x810cdb0-0x810cd5c-4] // loc_810CDB4
    ldrb r0, [r2,r0]
    ldrb r1, [r1,#0x1] // (byte_20015E1 - 0x20015e0)
    add r0, r0, r1
    ldrb r1, [r5,#4]
    sub r1, #8
    add r1, #1
    cmp r0, r1
    bne locret_810CDA6
    ldr r4, [pc, #0x810cda8-0x810cd6e-2] // byte_20015E0
    ldrb r0, [r4]
    cmp r0, #3
    beq loc_810CD9A
    ldrb r0, [r4,#0x2] // (byte_20015E2 - 0x20015e0)
    mov r1, #4
    mul r0, r1
    ldr r1, [pc, #0x810cdac-0x810cd7c-4] // unk_20014C0
    add r0, r0, r1
    ldrb r1, [r0,#1]
    mov r2, #0x80
    bic r1, r2
    strb r1, [r0,#1]
    ldrb r0, [r4,#0x3] // (byte_20015E3 - 0x20015e0)
    mov r1, #4
    mul r0, r1
    ldr r1, [pc, #0x810cdac-0x810cd8e-2] // unk_20014C0
    add r0, r0, r1
    ldrb r1, [r0,#1]
    mov r2, #0x80
    bic r1, r2
    strb r1, [r0,#1]
loc_810CD9A:
    mov r0, #2
    ldrb r1, [r4,#0xe] // (byte_20015EE - 0x20015e0)
    orr r1, r0
    strb r1, [r4,#0xe] // (byte_20015EE - 0x20015e0)
    mov r0, #8
    strb r0, [r5,#9]
locret_810CDA6:
    pop {r4,pc}
off_810CDA8:    .word byte_20015E0
off_810CDAC:    .word unk_20014C0
off_810CDB0:    .word loc_810CDB4
// end of function sub_810CD40

loc_810CDB4:
    lsl r0, r0, #0x10
    lsl r6, r0, #0x1c
.thumb
sub_810CDB8:
    push {lr}
    pop {pc}
// end of function sub_810CDB8

.thumb
sub_810CDBC:
    push {lr}
    pop {pc}
// end of function sub_810CDBC

loc_810CDC0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810cde4-0x810cdc6-2] // byte_200AA10
    ldr r0, [pc, #0x810cdd4-0x810cdc8-4] // off_810CDD8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810CDD4:    .word off_810CDD8
off_810CDD8:    .word sub_810CDE8+1
    .word sub_810CE28+1
    .word sub_810CE48+1
off_810CDE4:    .word byte_200AA10
.thumb
sub_810CDE8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x24 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810CDE8

    bl sub_8002FC2
    mov r0, #0xb0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810ce24-0x810ce0a-2] // =0x280
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810CE28
    pop {pc}
    .balign 4, 0x00
off_810CE24:    .word 0x280
.thumb
sub_810CE28:
    push {lr}
    ldr r4, [pc, #0x810ce40-0x810ce2a-2] // loc_810CE44
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrb r0, [r4]
    strh r0, [r7,#0xc]
    ldrb r0, [r4,#1]
    strh r0, [r7,#0xe]
    bl sub_800283C
// end of function sub_810CE28

    pop {pc}
off_810CE40:    .word loc_810CE44
loc_810CE44:
    ldr r0, [pc, #0x810cf78-0x810ce44-4] // =0x0
    ldr r0, [pc, #0x810d0d8-0x810ce46-2] // =0x71382000
.thumb
sub_810CE48:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810CE48

.thumb
sub_810CE50:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    mov r0, #9
    bl sub_8002018
    add r7, r0, #0
    mov r1, #0xe0
    bl f900_8000930
    add r4, #1
    mov r0, #0xcc
    tst r5, r5
    beq loc_810CE7C
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #7
    and r1, r2
    cmp r1, #4
    bge loc_810CE7C
    mov r0, #0xdd
loc_810CE7C:
    lsr r4, r4, #1
    add r7, #0xc4
    mov r6, #0
loc_810CE82:
    cmp r4, r6
    ble loc_810CE94
    strb r0, [r7]
    strb r0, [r7,#1]
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    sub r7, #4
    add r6, #1
    b loc_810CE82
loc_810CE94:
    mov r0, #9
    bl sub_8002018
    ldr r1, [pc, #0x810cea4-0x810ce9a-2] // =0x6015480
    mov r2, #0xe0
    bl loc_8000874
    pop {r4-r7,pc}
dword_810CEA4:    .word 0x6015480
    .word 0x10004B
    .word 0x100092
// end of function sub_810CE50

.thumb
sub_810CEB0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810cec4-0x810ceb6-2] // off_810CEC8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810CEC4:    .word off_810CEC8
off_810CEC8:    .word sub_810CED4+1
    .word sub_810CF4C+1
    .word sub_810CF54+1
// end of function sub_810CEB0

.thumb
sub_810CED4:
    push {lr}
    mov r1, #0x23 
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810CEE0
    mov r1, #0xa3
loc_810CEE0:
    strb r1, [r5]
    mov r0, #3
    bl sub_80028E8
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810cf34-0x810ceea-2] // dword_810CF48
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810CED4

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    ldr r0, [pc, #0x810cf38-0x810cefe-2] // dword_810CF44
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    ldrb r0, [r0,r1]
    ldr r1, [pc, #0x810cf3c-0x810cf06-2] // =0xF0
    add r0, r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    ldr r0, [pc, #0x810cf40-0x810cf1a-2] // =0x810CEA8
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldrh r1, [r0,r2]
    strh r1, [r7,#0xc]
    add r2, #2
    ldrh r1, [r0,r2]
    strh r1, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810CF4C
    pop {pc}
off_810CF34:    .word dword_810CF48
off_810CF38:    .word dword_810CF44
off_810CF3C:    .word 0xF0
dword_810CF40:    .word 0x810CEA8
dword_810CF44:    .word 0x200000
dword_810CF48:    .word 0x307
.thumb
sub_810CF4C:
    push {lr}
    bl sub_800283C
// end of function sub_810CF4C

    pop {pc}
.thumb
sub_810CF54:
    push {lr}
    pop {pc}
dword_810CF58:    .word 0x32899CF, 0x704, 0x0, 0x0
    .word 0x805804A0, 0x58A80000, 0x10040328, 0x0
dword_810CF78:    .word 0x0
    .word 0x960000, 0x0
    .word 0x35A8797, 0xF04, 0x0, 0x0
    .word 0xA404A0, 0x3A1D0000, 0x7040350, 0x0, 0x0
    .word 0xA00000, 0x0
    .word 0x3329913, 0xA04, 0x0
    .word 0x300
    .word 0x809D02A0, 0x805E0000, 0xA04033C, 0x0
    .word 0x1030100, 0xA00000, 0x0
    .word 0x33C7C1C, 0xF04, 0x0
    .word 0x100
    .word 0xA0
    .word 0x9BAB0000, 0x5040328, 0x0
    .word unk_2030200
    .word 0x4A00000, 0x8E, 0x3326F91, 0x204, 0x0, 0x0
    .word 0xA0
    .word 0x96680000, 0x704035A, 0xA04, 0x2000000, 0x4A00000
    .word 0xA208B7, 0x364693B, 0x104, 0x0
    .word 0x10000, 0xA0, 0x9C6D0000, 0xA040328, 0x0
    .word unk_3000000
    .word 0xA00000, 0x0
    .word 0x3509839, 0xA040704, 0x0
    .word 0x200
    .word 0xA0
    .byte 0, 0, 0, 0
// end of function sub_810CF54

loc_810D078:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810d0a4-0x810d07e-2] // dword_810CF58
    ldrb r0, [r5,#5]
    mov r1, #0x16
    mul r0, r1
    add r6, r6, r0
    ldr r0, [pc, #0x810d094-0x810d088-4] // off_810D098
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810D094:    .word off_810D098
off_810D098:    .word sub_810D0A8+1
    .word sub_810D126+1
    .word locret_810D186+1
off_810D0A4:    .word dword_810CF58
.thumb
sub_810D0A8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x28 
    ldrb r1, [r5,#5]
    add r0, r0, r1
    bl sub_80028E8
    ldrb r0, [r6,#3]
    bl sub_8002DF0
    bl sub_800281C
    .hword 0x7BB0
    .word 0xD0024200, 0xFF7BF6F5, 0xF6F5E001, 0x7928FEDD, 0x75780100
dword_810D0D8:    .word 0x71382000
// end of function sub_810D0A8

    ldrb r0, [r6,#0xd]
    strb r0, [r7,#0xa]
    ldrh r0, [r5,#6]
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    ldrb r0, [r6]
    strh r0, [r7,#0xc]
    ldrb r0, [r6,#1]
    strh r0, [r7,#0xe]
    ldrb r0, [r6,#4]
    strb r0, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0x12]
    bl sub_810D188
    ldrb r1, [r6,#0xb]
    tst r1, r1
    beq loc_810D118
    mov r0, #0x41 
    sub r1, #1
    add r2, r1, #0
    add r1, #0x14
    ldrb r3, [r6,#0xc]
    lsl r3, r3, #8
    orr r2, r3
    bl sub_80540C6
    str r7, [r0,#0xc]
loc_810D118:
    mov r0, #2
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810D126
    pop {pc}
.thumb
sub_810D126:
    push {lr}
    ldrb r0, [r5,#0x10]
    tst r0, r0
    bne loc_810D144
    bl sub_8002E36
    mov r1, #0x80
    tst r0, r1
    beq loc_810D16E
    ldr r0, [r5,#0xc]
    mov r1, #0
    strb r1, [r0]
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_810D144:
    sub r0, #1
    bne loc_810D16C
    mov r1, #3
    ldrb r2, [r5,#6]
    add r2, r2, r1
    ldrb r0, [r6,r2]
    bl sub_8002DF0
    bl sub_800281C
    mov r1, #4
    ldrb r2, [r5,#6]
    add r2, r2, r1
    ldrb r0, [r6,r2]
    ldrb r1, [r5,#6]
    add r1, #2
    strb r1, [r5,#6]
    cmp r1, #0xc
    blt loc_810D16C
    mov r0, #0
loc_810D16C:
    strb r0, [r5,#0x10]
loc_810D16E:
    ldrb r0, [r5,#0x11]
    tst r0, r0
    beq loc_810D180
    sub r0, #1
    strb r0, [r5,#0x11]
    tst r0, r0
    bne loc_810D180
    bl sub_810D188
loc_810D180:
    bl sub_800283C
// end of function sub_810D126

    pop {pc}
locret_810D186:
    mov pc, lr
.thumb
sub_810D188:
    push {r4,lr}
    ldrb r4, [r5,#0x12]
    add r0, r4, #0
    add r0, #2
    strb r0, [r5,#0x12]
    add r4, r4, r6
    ldrb r0, [r4,#0x10]
    ldrb r1, [r4,#0x11]
    lsr r1, r1, #7
    lsl r1, r1, #8
    add r0, r0, r1
    bl f500_8000558
    ldrb r0, [r4,#0x11]
    mov r1, #0x7f
    and r0, r1
    strb r0, [r5,#0x11]
    pop {r4,pc}
// end of function sub_810D188

.thumb
sub_810D1AC:
    lsr r6, r6, #0x14
    lsl r0, r0, #0xe
    lsl r2, r1, #0x1c
    lsr r5, r6, #0x18
    lsl r0, r2, #0xe
    asr r7, r0, #0x14
loc_810D1B8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810d1e4-0x810d1be-2] // sub_810D1AC
    ldrb r0, [r5,#4]
    mov r1, #6
    mul r0, r1
    add r6, r6, r0
    ldr r0, [pc, #0x810d1d4-0x810d1c8-4] // off_810D1D8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810D1D4:    .word off_810D1D8
off_810D1D8:    .word sub_810D1E8+1
    .word sub_810D234+1
    .word locret_810D25C+1
off_810D1E4:    .word sub_810D1AC
// end of function sub_810D1AC

.thumb
sub_810D1E8:
    push {lr}
    mov r0, #0x21 
    strb r0, [r5]
    ldrb r0, [r6]
    bl sub_80028E8
    ldrb r0, [r6,#4]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810D1E8

    bl sub_8002FC2
    ldrb r0, [r6,#1]
    lsl r0, r0, #4
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r3, [r5,#0xc]
    ldrb r0, [r3,#0xa]
    strb r0, [r7,#0xa]
    ldrh r0, [r6,#2]
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    ldr r3, [r5,#0xc]
    ldrh r0, [r3,#0xc]
    strh r0, [r7,#0xc]
    ldrh r0, [r3,#0xe]
    strh r0, [r7,#0xe]
    ldrb r0, [r6,#5]
    strb r0, [r5,#0x10]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810D234
    pop {pc}
.thumb
sub_810D234:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_810D242
    sub r0, #1
    strb r0, [r5,#5]
    pop {pc}
loc_810D242:
    mov r0, #0x23 
    strb r0, [r5]
    ldrb r0, [r5,#0x10]
    tst r0, r0
    bne loc_810D252
    mov r0, #8
    strb r0, [r5,#8]
    pop {pc}
loc_810D252:
    sub r0, #1
    strb r0, [r5,#0x10]
    bl sub_800283C
// end of function sub_810D234

    pop {pc}
locret_810D25C:
    mov pc, lr
    .byte 0, 0
loc_810D260:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810d278-0x810d26a-2] // off_810D27C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810D278:    .word off_810D27C
off_810D27C:    .word sub_810D28C+1
    .word 0x0
    .word sub_810D2F8+1
    .word sub_810D320+1
.thumb
sub_810D28C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x810d2ec-0x810d292-2] // unk_2030004
    mov r0, #0x1d
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810D28C

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810d2f0-0x810d2aa-2] // dword_810D2F4
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810d2dc-0x810d2b4-4] // off_810D2E0
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0xc]
    bl sub_810D2F8
    pop {pc}
    .balign 4, 0x00
off_810D2DC:    .word off_810D2E0
off_810D2E0:    .word 0x30
    .word 0x30
    .word 0x34
off_810D2EC:    .word unk_2030004
off_810D2F0:    .word dword_810D2F4
dword_810D2F4:    .word 0x100070
.thumb
sub_810D2F8:
    push {lr}
    bl sub_810D3A0
    bl sub_810D368
    bl sub_810D328
    bl sub_810D384
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_810D31A
    str r0, [r5,#0xc]
    bl sub_8002DF0
    bl sub_800281C
loc_810D31A:
    bl sub_800283C
// end of function sub_810D2F8

    pop {pc}
.thumb
sub_810D320:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810D320

.thumb
sub_810D328:
    push {r4-r7,lr}
    bl sub_810D3DC
    tst r0, r0
    beq loc_810D35C
    sub r0, #0xc0
    mov r1, #0
    bl sub_8046F02
    mov r4, #0
    mov r0, #0
    mvn r0, r0
    mov r2, #0x80
    lsl r2, r2, #0x18
loc_810D344:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_810D34C
    bic r0, r2
loc_810D34C:
    lsr r2, r2, #1
    add r7, #1
    add r4, #1
    cmp r4, #0x19
    blt loc_810D344
    bl sub_8002FD8
    pop {r4-r7,pc}
loc_810D35C:
    mov r0, #0
    mvn r0, r0
    bl sub_8002FD8
    pop {r4-r7,pc}
// end of function sub_810D328

    pop {r4-r7,pc}
.thumb
sub_810D368:
    push {r4-r7,lr}
    bl sub_810D3DC
    tst r0, r0
    beq locret_810D382
    sub r0, #0xc0
    push {r7}
    bl sub_8046C98
    ldrb r0, [r7,#3]
    pop {r7}
    sub r0, #1
    strb r0, [r7,#4]
locret_810D382:
    pop {r4-r7,pc}
// end of function sub_810D368

.thumb
sub_810D384:
    push {r4-r7,lr}
    bl sub_810D3DC
    tst r0, r0
    beq locret_810D39E
    sub r0, #0xc0
    bl sub_8046C98
    mov r0, #0
    ldrb r1, [r7,#1]
    cmp r1, #0
    beq locret_810D39E
    add r0, #1
locret_810D39E:
    pop {r4-r7,pc}
// end of function sub_810D384

.thumb
sub_810D3A0:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r3, [pc, #0x810d3cc-0x810d3a6-2] // dword_810D3D0
    add r3, r3, r0
    ldrb r1, [r3]
    ldrb r2, [r3,#1]
    ldrb r3, [r3,#3]
    cmp r3, #0
    beq loc_810D3B8
    cmp r3, #1
    beq loc_810D3BE
loc_810D3B8:
    ldrb r3, [r6,#0x11]
    add r1, r1, r3
    b loc_810D3C4
loc_810D3BE:
    ldrb r3, [r6,#0x11]
    sub r1, r1, r3
    b loc_810D3C4
loc_810D3C4:
    strh r1, [r7,#0xc]
    strh r2, [r7,#0xe]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810D3CC:    .word dword_810D3D0
dword_810D3D0:    .word 0xFFFF3542, 0xFF353A, 0x1FF35B2
// end of function sub_810D3A0

.thumb
sub_810D3DC:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810D3F0
    cmp r0, #1
    beq loc_810D3EC
    ldr r0, [r6,#0x2c]
    b loc_810D3FE
loc_810D3EC:
    ldr r0, [r6,#0x28]
    b loc_810D3FE
loc_810D3F0:
    ldrh r0, [r6,#0x18]
    ldrh r1, [r6,#0x14]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x810d410-0x810d3f8-4] // unk_2019FFC
    add r0, r0, r1
    ldrh r0, [r0]
loc_810D3FE:
    mov r2, #0
    mvn r2, r2
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    cmp r0, r2
    bne locret_810D40C
    mov r0, #0
locret_810D40C:
    pop {r4-r7,pc}
    .byte 0, 0
off_810D410:    .word unk_2019FFC
// end of function sub_810D3DC

loc_810D414:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810d42c-0x810d41e-2] // off_810D430
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810D42C:    .word off_810D430
off_810D430:    .word sub_810D444+1
    .word loc_810D4A0+1
    .word sub_810D4F8+1
    .word sub_810D52C+1
    .word sub_810D6A0+1
.thumb
sub_810D444:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0xf
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810D444

    bl sub_8002FC2
    ldrb r0, [r5,#3]
    add r0, #1
    lsl r0, r0, #4
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810d490-0x810d46a-2] // loc_810D494
    ldrb r1, [r5,#3]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    bl loc_810D4A0
    pop {pc}
off_810D490:    .word loc_810D494
loc_810D494:
    lsl r0, r0, #7
    lsl r0, r0, #6
    lsl r0, r0, #5
    lsl r0, r0, #4
    lsl r0, r0, #3
    lsl r0, r0, #2
loc_810D4A0:
    push {lr}
    ldr r0, [pc, #0x810d4b4-0x810d4a2-2] // off_810D4B8
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810D4B4:    .word off_810D4B8
off_810D4B8:    .word sub_810D4C0+1
    .word sub_810D4E0+1
.thumb
sub_810D4C0:
    push {lr}
    mov r0, #0xb8
    strh r0, [r7,#0xc]
    ldr r1, [pc, #0x810d4d4-0x810d4c6-2] // dword_810D4D8
    ldrb r0, [r5,#3]
    ldrb r0, [r1,r0]
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
off_810D4D4:    .word dword_810D4D8
dword_810D4D8:    .word 0x5D48331E, 0x8772
// end of function sub_810D4C0

.thumb
sub_810D4E0:
    push {lr}
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_810D6A8
    bl sub_810D6C8
    bl sub_810D758
    pop {pc}
// end of function sub_810D4E0

.thumb
sub_810D4F8:
    push {lr}
    ldrb r3, [r6,#0x10]
    tst r3, r3
    beq loc_810D50E
    mov r0, #0xc
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8002F1A
    b loc_810D524
loc_810D50E:
    mov r0, #0xb8
    ldrh r3, [r6,#0x14]
    add r3, #0
    ldrb r4, [r5,#3]
    cmp r3, r4
    bne loc_810D51C
    mov r0, #0xb8
loc_810D51C:
    ldrh r1, [r7,#0xc]
    bl sub_8107E6C
    strh r0, [r7,#0xc]
loc_810D524:
    bl sub_800283C
// end of function sub_810D4F8

    pop {pc}
    .balign 4, 0x00
.thumb
sub_810D52C:
    push {lr}
    ldr r0, [pc, #0x810d544-0x810d52e-2] // off_810D548
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0xc]
// end of function sub_810D52C

    strh r0, [r7,#0xe]
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810D544:    .word off_810D548
off_810D548:    .word sub_810D560+1
    .word sub_810D5C0+1
    .word sub_810D5E0+1
    .word sub_810D608+1
    .word sub_810D640+1
    .word sub_810D684+1
.thumb
sub_810D560:
    push {lr}
    ldrb r3, [r6,#0x10]
    cmp r3, #0x10
    beq loc_810D5A4
    mov r0, #0xb8
    strh r0, [r7,#0xc]
    ldrh r0, [r7,#0xe]
    strb r0, [r5,#4]
    str r0, [r5,#0xc]
    cmp r3, #0xc
    beq loc_810D584
    ldr r4, [pc, #0x810d5b0-0x810d576-2] // dword_810D5B4
    ldr r3, [r4,r3]
    add r0, r0, r3
    str r0, [r5,#0x10]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
loc_810D584:
    bl sub_8002D60
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    strb r2, [r5,#7]
    bl sub_8002C70
    mov r0, #0xfc
    lsl r0, r0, #0x18
    mvn r0, r0
    bl sub_8002FD8
    mov r0, #0xc
    strb r0, [r5,#9]
    pop {pc}
loc_810D5A4:
    ldrh r0, [r7,#0xe]
    str r0, [r5,#0xc]
    mov r0, #0x14
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
off_810D5B0:    .word dword_810D5B4
dword_810D5B4:    .word 0x0
    .word 0x12, 0xFFFFFFEE
// end of function sub_810D560

.thumb
sub_810D5C0:
    push {lr}
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    bl sub_8107E6C
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    cmp r0, r1
    bne locret_810D5DC
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #2
    strb r0, [r5,#7]
locret_810D5DC:
    pop {pc}
    .byte 0, 0
// end of function sub_810D5C0

.thumb
sub_810D5E0:
    push {lr}
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bgt locret_810D606
    ldrb r0, [r5,#4]
    str r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r3, #0
    strb r3, [r6,#0x10]
    bl sub_810D6A8
    bl sub_810D6C8
    bl sub_810D758
locret_810D606:
    pop {pc}
// end of function sub_810D5E0

.thumb
sub_810D608:
    push {lr}
    ldrb r2, [r5,#7]
    add r2, #0x30 
    cmp r2, #0xff
    blt loc_810D614
    mov r2, #0xff
loc_810D614:
    strb r2, [r5,#7]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8002C70
    ldrb r0, [r5,#7]
    cmp r0, #0xff
    bne locret_810D63E
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r4, #1
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt loc_810D63C
    ldrh r1, [r6,#0x12]
    cmp r0, r1
    bge loc_810D63C
    mov r4, #0x23 
loc_810D63C:
    strb r4, [r5]
locret_810D63E:
    pop {pc}
// end of function sub_810D608

.thumb
sub_810D640:
    push {lr}
    ldrb r2, [r5,#7]
    sub r2, #0x30 
    cmp r2, #0x40 
    bgt loc_810D64C
    mov r2, #0x40 
loc_810D64C:
    strb r2, [r5,#7]
    mov r0, #0
    mov r1, #0x40 
    bl sub_8002C70
    ldrb r0, [r5,#7]
    cmp r0, #0x40 
    bne locret_810D682
    ldrb r0, [r5,#4]
    str r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r3, #0
    strb r3, [r6,#0x10]
    bl sub_8002D9E
    mov r0, #0
    bl sub_8002FD8
    bl sub_810D6A8
    bl sub_810D6C8
    bl sub_810D758
locret_810D682:
    pop {pc}
// end of function sub_810D640

.thumb
sub_810D684:
    push {lr}
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_810D6A8
    bl sub_810D6C8
    bl sub_810D758
    mov r3, #0
    strb r3, [r6,#0x10]
    pop {pc}
// end of function sub_810D684

.thumb
sub_810D6A0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810D6A0

.thumb
sub_810D6A8:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    add r0, #0
    blt loc_810D6C0
    ldrh r1, [r6,#0x12]
    cmp r0, r1
    bge loc_810D6C0
    mov r0, #0x23 
    strb r0, [r5]
    b locret_810D6C4
loc_810D6C0:
    mov r0, #1
    strb r0, [r5]
locret_810D6C4:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_810D6A8

.thumb
sub_810D6C8:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    add r0, #0
    blt locret_810D70E
    ldrh r1, [r6,#0x12]
    cmp r0, r1
    bge locret_810D70E
    lsl r0, r0, #2
    ldr r1, [pc, #0x810d710-0x810d6dc-4] // dword_201A000
    add r0, r0, r1
    sub r0, #4
    add r1, r0, #0
    ldr r0, [pc, #0x810d754-0x810d6e4-4] // unk_86DE644
    ldrh r1, [r1]
    tst r1, r1
    beq loc_810D6F4
    sub r1, #0xc0
    lsr r1, r1, #2
    ldr r0, [pc, #0x810d718-0x810d6f0-4] // byte_86E66B8
    b loc_810D6F6
loc_810D6F4:
    mov r1, #0xb1
loc_810D6F6:
    ldrb r4, [r5,#3]
    lsl r4, r4, #2
    ldr r2, [pc, #0x810d71c-0x810d6fa-2] // off_810D720
    ldr r2, [r2,r4]
    ldr r3, [pc, #0x810d738-0x810d6fe-2] // dword_810D73C
    ldr r3, [r3,r4]
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x810d714-0x810d706-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
locret_810D70E:
    pop {r4-r7,pc}
off_810D710:    .word dword_201A000
off_810D714:    .word dword_868E224
off_810D718:    .word byte_86E66B8
off_810D71C:    .word off_810D720
off_810D720:    .word unk_2016000
    .word unk_2016400
    .word unk_2016800
    .word dword_2016C00
    .word unk_2017000
    .word unk_2017400
off_810D738:    .word dword_810D73C
dword_810D73C:    .word 0x6013BC0, 0x60133C0, 0x6012BC0, 0x60123C0, 0x6011BC0
    .word 0x60113C0
off_810D754:    .word unk_86DE644
// end of function sub_810D6C8

.thumb
sub_810D758:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x18]
    ldrb r1, [r5,#3]
    add r0, r0, r1
    add r0, #0
    blt locret_810D77E
    ldrh r1, [r6,#0x12]
    cmp r0, r1
    bge locret_810D77E
    lsl r0, r0, #2
    ldr r1, [pc, #0x810d780-0x810d76c-4] // dword_201A000
    add r0, r0, r1
    sub r0, #4
    ldrh r1, [r0,#2]
    lsl r1, r1, #2
    ldr r0, [pc, #0x810d784-0x810d776-2] // dword_810D788
    ldr r0, [r0,r1]
    bl sub_8002FD8
locret_810D77E:
    pop {r4-r7,pc}
off_810D780:    .word dword_201A000
off_810D784:    .word dword_810D788
dword_810D788:    .word 0xFFFFFFFF, 0x3FE00, 0xFE00, 0x17E00, 0x1BE00, 0x1DE00
    .word 0x1EE00, 0x1F600, 0x1FA00, 0x1FC00
// end of function sub_810D758

loc_810D7B0:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810d7c8-0x810d7ba-2] // off_810D7CC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810D7C8:    .word off_810D7CC
off_810D7CC:    .word sub_810D7D8+1
    .word sub_810D82C+1
    .word sub_810D894+1
.thumb
sub_810D7D8:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x810d828-0x810d7de-2] // unk_202E004
    mov r0, #0x1e
    bl sub_80028E8
    ldrb r0, [r5,#4]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810D7D8

    bl sub_8002FC2
    mov r0, #0x20 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810d824-0x810d7fc-4] // =0x270
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x7a 
    strh r0, [r7,#0xc]
    mov r0, #0x55 
    strh r0, [r7,#0xe]
    mov r0, #0xff
    str r0, [r5,#0xc]
    ldrh r0, [r6,#0x14]
    strh r0, [r5,#0xe]
    bl sub_810D82C
    pop {pc}
off_810D824:    .word 0x270
off_810D828:    .word unk_202E004
.thumb
sub_810D82C:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_810D850
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_810D876
    str r0, [r5,#0xc]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0
    bl sub_8002FD8
    b loc_810D876
loc_810D850:
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_810D85E
    mov r0, #0
    bl sub_8002FD8
    b loc_810D876
loc_810D85E:
    ldr r0, [pc, #0x810d888-0x810d85e-2] // dword_810D88C
    ldrh r1, [r6,#0x14]
    ldrh r2, [r5,#0xe]
    cmp r1, r2
    beq loc_810D86E
    strh r1, [r5,#0xe]
    bl sub_810D89C
loc_810D86E:
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FD8
loc_810D876:
    bl sub_800283C
// end of function sub_810D82C

    ldrh r0, [r6,#0x22]
    tst r0, r0
    beq locret_810D884
    mov r0, #8
    strb r0, [r5,#8]
locret_810D884:
    pop {pc}
    .balign 4, 0x00
off_810D888:    .word dword_810D88C
dword_810D88C:    .word 0x20000000, 0x40000000
.thumb
sub_810D894:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810D894

.thumb
sub_810D89C:
    push {r0,r1,lr}
    mov r0, #0x7d 
    bl f500_8000558
    pop {r0,r1,pc}
    .balign 4, 0x00
// end of function sub_810D89C

loc_810D8A8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810d8bc-0x810d8ae-2] // off_810D8C0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810D8BC:    .word off_810D8C0
off_810D8C0:    .word sub_810D8CC+1
    .word sub_810D9A8+1
    .word sub_810D9E4+1
.thumb
sub_810D8CC:
    push {lr}
    mov r2, #1
    ldrb r6, [r5,#4]
    ldr r1, [pc, #0x810d948-0x810d8d2-2] // unk_201D000
    ldrb r4, [r1,r6]
    cmp r4, #0xff
    beq loc_810D8DC
    mov r2, #0x23 
loc_810D8DC:
    strb r2, [r5]
    ldr r1, [pc, #0x810d964-0x810d8de-2] // unk_2031004
    mov r0, #0x37 
    bl sub_80028E8
    ldr r1, [pc, #0x810d94c-0x810d8e6-2] // dword_810D98C
    mov r0, #0
loc_810D8EA:
    ldrb r2, [r1,r0]
    cmp r2, r4
    beq loc_810D8FC
    add r0, #1
    cmp r2, #0xff
    bne loc_810D8EA
    mov r2, #1
    strb r2, [r5]
    mov r0, #0
loc_810D8FC:
    ldr r1, [pc, #0x810d95c-0x810d8fc-4] // dword_810D98C
    push {r0}
    ldrb r0, [r1,r0]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810D8CC

    bl sub_8002FC2
    pop {r0}
    ldr r1, [pc, #0x810d960-0x810d910-4] // dword_810D98C
    ldrb r0, [r1,r0]
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810d950-0x810d916-2] // dword_810D98C
    ldrb r0, [r0,r6]
    strb r0, [r7,#0x15]
    ldr r0, [pc, #0x810d954-0x810d91c-4] // byte_810D968
    lsl r1, r6, #1
    ldrh r1, [r0,r1]
    strh r1, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    ldr r0, [pc, #0x810d958-0x810d92e-2] // dword_810D974
    lsl r1, r6, #2
    ldrh r2, [r0,r1]
    strh r2, [r7,#0xc]
    add r1, #2
    ldrh r2, [r0,r1]
    strh r2, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810D9A8
    pop {pc}
    .balign 4, 0x00
off_810D948:    .word unk_201D000
off_810D94C:    .word dword_810D98C
dword_810D950:    .word 0x810D993
off_810D954:    .word byte_810D968
off_810D958:    .word dword_810D974
dword_810D95C:    .word 0x810D999
dword_810D960:    .word 0x810D99F
off_810D964:    .word unk_2031004
byte_810D968:    .byte 0x50
    .byte 0x0, 0x54, 0x0
    .byte 0x58
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x60 
    .byte 0
    .byte 0x64 
    .byte 0
dword_810D974:    .word 0x2A001C, 0x3C001C, 0x4E001C, 0x2A0054, 0x3C0054, 0x4E0054
dword_810D98C:    .word 0x1A191817, 0xFF1C1B, 0x40302010, 0x2010050, 0x50403
    .word 0x10101, 0x0
.thumb
sub_810D9A8:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x34]
    mov r1, #0xc
    ldrsb r0, [r4,r1]
    lsl r0, r0, #3
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r2, [pc, #0x810d9c8-0x810d9b8-4] // dword_810D9CC
    ldrh r1, [r2,r1]
    add r1, r1, r0
    strh r1, [r7,#0xc]
    bl sub_800283C
// end of function sub_810D9A8

    pop {pc}
    .balign 4, 0x00
off_810D9C8:    .word dword_810D9CC
dword_810D9CC:    .word 0x28001C
    .word 0x3A001C
    .word 0x4C001C
    .word 0x28005E
    .word 0x3A005E
    .word 0x4C005E
.thumb
sub_810D9E4:
    push {lr}
    pop {pc}
// end of function sub_810D9E4

.thumb
sub_810D9E8:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810d9fc-0x810d9ee-2] // off_810DA00
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810D9FC:    .word off_810DA00
off_810DA00:    .word sub_810DA08+1
    .word sub_810DA4C+1
// end of function sub_810D9E8

.thumb
sub_810DA08:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x22 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810DA08

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0x14
    lsl r0, r0, #4
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0xc8
    strh r0, [r7,#0xc]
    mov r0, #0x40 
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810DA4C
    pop {pc}
.thumb
sub_810DA4C:
    push {lr}
    bl sub_800283C
// end of function sub_810DA4C

    pop {pc}
    push {r4-r7,lr}
    mov r0, #0xb
    bl sub_8002018
    add r7, r0, #0
    mov r1, #0xe0
    bl f900_8000930
    ldr r3, [pc, #0x810da98-0x810da64-4] // unk_200D910
    ldrb r4, [r3,#0x6] // (byte_200D916 - 0x200d910)
    add r4, #1
    mov r0, #0xff
    lsr r4, r4, #1
    add r7, #0xc4
    mov r6, #0
loc_810DA72:
    cmp r4, r6
    ble loc_810DA84
    strb r0, [r7]
    strb r0, [r7,#1]
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    sub r7, #4
    add r6, #1
    b loc_810DA72
loc_810DA84:
    mov r0, #5
    bl sub_8002018
    ldr r1, [pc, #0x810da94-0x810da8a-2] // =0x6012C80
    mov r2, #0xe0
    bl loc_8000874
    pop {r4-r7,pc}
dword_810DA94:    .word 0x6012C80
off_810DA98:    .word unk_200D910
loc_810DA9C:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810dab0-0x810daa2-2] // off_810DAB4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_810DAB0:    .word off_810DAB4
off_810DAB4:    .word sub_810DABC+1
    .word sub_810DB0C+1
.thumb
sub_810DABC:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x25 
    bl sub_80028E8
    mov r0, #0
    ldrb r1, [r5,#4]
    cmp r1, #3
    bne loc_810DAD2
    mov r0, #1
loc_810DAD2:
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810DABC

    bl sub_8002FC2
    mov r0, #0x80
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0x10
    lsl r0, r0, #4
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0xa8
    strh r0, [r7,#0xc]
    mov r0, #0x28 
    strh r0, [r7,#0xe]
    bl sub_810DB2A
    mov r0, #0x28 
    strb r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
.thumb
sub_810DB0C:
    push {lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #0x26 
    bge loc_810DB18
    mov r1, #0x23 
    strb r1, [r5]
loc_810DB18:
    sub r0, #1
    strb r0, [r5,#0xc]
    bne loc_810DB24
    bl sub_80540E0
    pop {pc}
loc_810DB24:
    bl sub_800283C
// end of function sub_810DB0C

    pop {pc}
.thumb
sub_810DB2A:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r3, [pc, #0x810db3c-0x810db2e-2] // word_810DB40
    ldrb r0, [r0,r3]
    lsl r0, r0, #0x1c
    bl sub_8002FD8
    pop {pc}
    .balign 4, 0x00
off_810DB3C:    .word word_810DB40
word_810DB40:    .hword 0x603
    .hword 0x5
// end of function sub_810DB2A

.thumb
sub_810DB44:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810db5c-0x810db4e-2] // off_810DB60
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810DB5C:    .word off_810DB60
off_810DB60:    .word function_chunks__function_chunks_loc_810DB6C+1
    .word sub_810DBE0+1
    .word sub_810DCD8+1
// end of function sub_810DB44

function_chunks__function_chunks_loc_810DB6C:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrh r0, [r6,#0x28]
    ldr r1, [pc, #0x810dbdc-0x810db74-4] // =0xFFFF
    cmp r0, r1
    beq loc_810DB92
    strb r0, [r5,#0xc]
    bl sub_810DCE0
    mov r0, #1
    bl sub_805411A
    beq loc_810DB8C
    ldrb r0, [r5,#0xc]
    strb r0, [r1,#0xc]
loc_810DB8C:
    mov r0, #1
    strb r0, [r5,#0xe]
    b loc_810DBCC
loc_810DB92:
    mov r0, #0xd
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810dbd8-0x810dbae-2] // =0x20
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x50 
    strh r0, [r7,#0xc]
    mov r0, #0x50 
    strh r0, [r7,#0xe]
    mov r0, #0xff
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0xe]
loc_810DBCC:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810DBE0
    pop {pc}
    .balign 4, 0x00
dword_810DBD8:    .word 0x20
dword_810DBDC:    .word 0xFFFF
.thumb
sub_810DBE0:
    push {lr}
    ldr r0, [pc, #0x810dc0c-0x810dbe2-2] // off_810DC14
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    mov r0, #1
    ldrb r1, [r5,#0xe]
    tst r0, r1
// end of function sub_810DBE0

    beq loc_810DC04
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #1
    ldr r2, [pc, #0x810dc10-0x810dbf8-4] // dword_810DC20
    ldrh r1, [r2,r0]
    add r0, r1, #0
    mov r2, #0xa
    bl sub_810DD74
loc_810DC04:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810DC0C:    .word off_810DC14
off_810DC10:    .word dword_810DC20
off_810DC14:    .word sub_810DC3C+1
    .word sub_810DC7C+1
    .word sub_810DCB4+1
dword_810DC20:    .word 0x2BC0320, 0x32003E8, 0x3840320, 0x3200320, 0x3E802BC
    .word 0x2BC0384, 0x3E8
.thumb
sub_810DC3C:
    push {lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldrb r1, [r6,#0xd]
    mov r2, #8
    tst r1, r2
    beq locret_810DC76
    ldrh r0, [r6,#0x28]
    ldr r1, [pc, #0x810dc78-0x810dc4c-4] // =0xFFFF
    cmp r0, r1
    beq locret_810DC76
    ldrb r1, [r5,#0xc]
    cmp r1, r0
    beq locret_810DC76
    strb r0, [r5,#0xc]
    mov r0, #1
    bl sub_805411A
    beq loc_810DC66
    ldrb r0, [r5,#0xc]
    strb r0, [r1,#0xc]
loc_810DC66:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #1
    ldrb r1, [r5,#0xe]
    bic r0, r1
    strb r1, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0xd]
locret_810DC76:
    pop {pc}
dword_810DC78:    .word 0xFFFF
// end of function sub_810DC3C

.thumb
sub_810DC7C:
    push {lr}
    ldrb r0, [r5,#0xd]
    add r1, r0, #0
    bl sub_8002F28
    ldrb r0, [r5,#0xd]
    add r0, #1
    strb r0, [r5,#0xd]
    cmp r0, #0xf
    blt locret_810DCAE
    ldrb r0, [r5,#0xc]
    bl sub_810DCE0
    mov r0, #0xb0
    bl f500_8000558
    ldr r0, [pc, #0x810dcb0-0x810dc9c-4] // =0x1C1
    bl f500_8000558
    mov r0, #1
    ldrb r1, [r5,#0xe]
    orr r0, r1
    strb r0, [r5,#0xe]
    mov r0, #8
    strb r0, [r5,#9]
locret_810DCAE:
    pop {pc}
dword_810DCB0:    .word 0x1C2
// end of function sub_810DC7C

.thumb
sub_810DCB4:
    push {lr}
    ldrb r0, [r5,#0xd]
    add r1, r0, #0
    bl sub_8002F28
    ldrb r0, [r5,#0xd]
    sub r0, #1
    strb r0, [r5,#0xd]
    bgt locret_810DCD6
    bl sub_8002F5E
    ldrb r0, [r6,#0xd]
    mov r1, #0x20 
    orr r0, r1
    strb r0, [r6,#0xd]
    mov r0, #0
    strb r0, [r5,#9]
locret_810DCD6:
    pop {pc}
// end of function sub_810DCB4

.thumb
sub_810DCD8:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810DCD8

.thumb
sub_810DCE0:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r2, [pc, #0x810dd28-0x810dce6-2] // a01234_1
    ldrb r0, [r2,r0]
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810DCE0

    bl sub_8002FC2
    mov r0, #0x90
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810dd24-0x810dd04-4] // =0x20
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r1, [pc, #0x810dd2c-0x810dd16-2] // byte_810DD30
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xe]
    pop {pc}
dword_810DD24:    .word 0x20
off_810DD28:    .word a01234_1
off_810DD2C:    .word byte_810DD30
byte_810DD30:    .byte 0x44
    .byte 0x0, 0x50, 0x0
    .byte 0x4C
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x4E 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x52 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x50 
    .byte 0
a01234_1:    .byte 0xD, 0x29, 0x2A, 0x2B
    .byte 0x2C, 0x2D, 0x2E, 0x2F
    .byte 0x30, 0x31, 0x32, 0x33
    .byte 0x34, 0x0
    .balign 4, 0x00
.thumb
sub_810DD74:
    push {r4-r7,lr}
    add r6, r2, #0
    lsl r6, r6, #0x10
    push {r0}
    lsr r1, r1, #2
    mov r2, #0x20 
    cmp r0, r1
    ble loc_810DD86
    mov r2, #0
loc_810DD86:
    ldr r0, [pc, #0x810ddfc-0x810dd86-2] // dword_86A0364
    add r0, r0, r2
    ldr r1, [pc, #0x810de00-0x810dd8a-2] // unk_30027C0
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0}
    bl fA00_8000A30
    add r2, r0, #0
    mov r4, #0
    add r5, r4, #0
    mov r7, #0xc
    mov r0, #8
loc_810DDA2:
    push {r0,r2,r7}
    lsr r2, r7
    mov r1, #0xf
    and r2, r1
    ldr r1, [pc, #0x810de04-0x810ddaa-2] // =0x8010
    lsl r0, r0, #0x10
    orr r0, r1
    tst r2, r2
    bne loc_810DDC2
    add r4, r5, #0
    tst r4, r4
    bne loc_810DDC6
    tst r7, r7
    beq loc_810DDC6
    mov r2, #0xb
    b loc_810DDC6
loc_810DDC2:
    mov r4, #1
    add r5, r4, #0
loc_810DDC6:
    add r0, r0, r6
    lsl r2, r2, #1
    ldr r1, [pc, #0x810de08-0x810ddca-2] // =0xC792
    add r1, r1, r2
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_810DD74

    pop {r0,r2,r7}
    add r0, #8
    sub r7, #4
    bge loc_810DDA2
    ldr r0, [pc, #0x810de04-0x810ddde-2] // =0x8010
    add r0, r0, r6
    ldr r1, [pc, #0x810de0c-0x810dde2-2] // =0xC790
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    ldr r0, [pc, #0x810de10-0x810ddec-4] // =0x10288010
    add r0, r0, r6
    ldr r1, [pc, #0x810de0c-0x810ddf0-4] // =0xC790
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    pop {r4-r7,pc}
off_810DDFC:    .word dword_86A0364
off_810DE00:    .word unk_30027C0
dword_810DE04:    .word 0x8010
dword_810DE08:    .word 0xC792
dword_810DE0C:    .word 0xC790
dword_810DE10:    .word 0x10288010
loc_810DE14:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810de2c-0x810de1e-2] // off_810DE30
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810DE2C:    .word off_810DE30
off_810DE30:    .word sub_810DE3C+1
    .word sub_810DEB4+1
    .word sub_810DF08+1
.thumb
sub_810DE3C:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, [pc, #0x810de90-0x810de42-2] // unk_202E004
    mov r0, #0x39 
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810DE3C

    bl sub_8002FC2
    ldr r0, [pc, #0x810de8c-0x810de58-4] // asc_810DE94
    bl loc_800301E
    mov r0, #0x80
    strb r0, [r7,#0x15]
    bl sub_8107314
    ldr r0, [pc, #0x810de88-0x810de66-2] // =0x70
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x38 
    strh r0, [r7,#0xc]
    mov r0, #0x50 
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810DEB4
    pop {pc}
    .balign 4, 0x00
off_810DE88:    .word 0x70
off_810DE8C:    .word asc_810DE94
off_810DE90:    .word unk_202E004
asc_810DE94:    .byte 0x9, 0x9, 0x9, 0x9, 0x0
    .byte 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.thumb
sub_810DEB4:
    push {lr}
    mov r4, #0x23 
    mov r0, #0x24 
    bl sub_800D742
    cmp r0, #0
    bne loc_810DED6
    mov r0, #0x11
    mov r1, #0x80
    bl sub_8024FF0
    bne loc_810DED8
    mov r0, #0x11
    mov r1, #0x83
    bl sub_8024FF0
    bne loc_810DED8
loc_810DED6:
    mov r4, #1
loc_810DED8:
    strb r4, [r5]
    mov r0, #1
    bl sub_805411A
    add r6, r1, #0
    add r1, #0x20 
    ldrh r0, [r1,#0xc]
    ldrh r1, [r1,#0xe]
    strh r0, [r7,#0xc]
    strh r1, [r7,#0xe]
    add r0, r6, #0
    bl sub_8002D2C
    bl loc_8002CCA
    add r0, r6, #0
    bl sub_8002F70
    bl loc_8002F34
    bl sub_800283C
// end of function sub_810DEB4

    pop {pc}
    .balign 4, 0x00
.thumb
sub_810DF08:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810DF08

loc_810DF10:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810df28-0x810df1a-2] // off_810DF2C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810DF28:    .word off_810DF2C
off_810DF2C:    .word sub_810DF38+1
    .word sub_810DF54+1
    .word sub_810DFDC+1
.thumb
sub_810DF38:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0xff
    strb r0, [r5,#0x1f]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
    bl sub_810DF54
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
// end of function sub_810DF38

.thumb
sub_810DF54:
    push {lr}
    ldr r0, [pc, #0x810df68-0x810df56-2] // off_810DF6C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810DF68:    .word off_810DF6C
off_810DF6C:    .word sub_810DF74+1
    .word sub_810DFA8+1
// end of function sub_810DF54

.thumb
sub_810DF74:
    push {lr}
    bl sub_810DFE8
    tst r0, r0
    beq locret_810DF8E
    mov r0, #4
    strb r0, [r5,#9]
    ldr r1, [pc, #0x810df90-0x810df82-2] // =0xFF
    strh r1, [r5,#0xc]
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
locret_810DF8E:
    pop {pc}
off_810DF90:    .word 0x100
    .word loc_810DF98
// end of function sub_810DF74

loc_810DF98:
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
.thumb
sub_810DFA8:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrh r1, [r5,#0xc]
    cmp r1, #0x40 
    ble loc_810DFBA
    sub r1, #0x18
    strh r1, [r5,#0xc]
    b loc_810DFCC
loc_810DFBA:
    mov r0, #0
    strb r0, [r5,#9]
    mov r1, #0x40 
    strh r1, [r5,#0xc]
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    b locret_810DFD8
loc_810DFCC:
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    bl sub_810DFE8
locret_810DFD8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810DFA8

.thumb
sub_810DFDC:
    push {lr}
    bl sub_8002D9E
    bl sub_80540E0
    pop {pc}
// end of function sub_810DFDC

.thumb
sub_810DFE8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810e0a0-0x810dfea-2] // byte_200D908
    ldrb r1, [r0,#0x2] // (byte_200D90A - 0x200d908)
    tst r1, r1
    beq loc_810E004
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810DFFE
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810DFFE:
    mov r6, #5
    mov r0, #6
    b loc_810E014
loc_810E004:
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810E010
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810E010:
    mov r6, #0
    mov r0, #5
loc_810E014:
    bl sub_805411A
    beq loc_810E09C
    add r4, r1, #0
    ldrb r0, [r4,#0xb]
    ldrb r1, [r5,#0xb]
    cmp r0, r1
    beq loc_810E09C
    mov r2, #1
    ldrb r1, [r4,#6]
    tst r1, r2
    bne loc_810E09C
    strb r0, [r5,#0xb]
    cmp r0, #7
    beq loc_810E03A
    cmp r0, #8
    bne loc_810E03C
    sub r0, #3
    b loc_810E03C
loc_810E03A:
    sub r0, #2
loc_810E03C:
    ldr r1, [pc, #0x810e0ac-0x810e03c-4] // dword_810E0F4
    ldrb r1, [r1,r0]
    add r1, r1, r6
    add r2, r1, #0
    sub r2, #0x16
    push {r2}
    lsl r2, r2, #2
    ldr r3, [pc, #0x810e0c0-0x810e04a-2] // dword_810E0C8
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xe]
    mov r1, #1
    strb r1, [r5]
    ldrb r0, [r5,#8]
    tst r0, r0
    beq loc_810E064
    bl sub_8002D9E
loc_810E064:
    mov r0, #0x38 
    ldr r1, [pc, #0x810e0c4-0x810e066-2] // unk_202E004
    bl sub_80028E8
    pop {r2}
    ldr r0, [pc, #0x810e0a8-0x810e06e-2] // dword_810E0F4
    ldrb r0, [r0,r2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    bl sub_8002D60
    mov r0, #0x10
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e0a4-0x810e08a-2] // =0x30
    strh r0, [r7,#8]
    mov r0, #2
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #1
    b locret_810E09E
loc_810E09C:
    mov r0, #0
locret_810E09E:
    pop {r4-r7,pc}
off_810E0A0:    .word byte_200D908
off_810E0A4:    .word 0x30
dword_810E0A8:    .word 0x810E0FF
off_810E0AC:    .word dword_810E0F4
    .word dword_2028000
    .word word_2014000
// end of function sub_810DFE8

    b loc_810E504
    .hword 0x868
    .word 0x6010600
off_810E0C0:    .word dword_810E0C8
off_810E0C4:    .word unk_202E004
dword_810E0C8:    .word 0x1A00C5, 0x1E003B, 0x3D0045, 0x3D00AB, 0x5100B2, 0x3F009C
    .word 0x1800C6, 0x31002E, 0x500047, 0xE0041, 0x3000C1
dword_810E0F4:    .word 0x19181716, 0x1D1C1B1A, 0x201F1E, 0x4030201, 0x607050A
    .word 0x908, 0xA800806, 0x90090420
    mov r0, #0xe6
loc_810E116:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r0, [pc, #0x810e128-0x810e11c-4] // off_810E12C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810E128:    .word off_810E12C
off_810E12C:    .word sub_810E134+1
    .word sub_810E188+1
.thumb
sub_810E134:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    ldr r6, [pc, #0x810e184-0x810e13a-2] // dword_810E0F4+24
    ldrb r0, [r5,#4]
    mov r1, #5
    mul r0, r1
    add r6, r6, r0
    mov r0, #5
    bl sub_80028E8
    ldrb r0, [r6]
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810E134

    bl sub_8002FC2
    ldrb r0, [r6,#1]
    lsl r0, r0, #4
    strb r0, [r7,#0x15]
    mov r0, #0x10
    strb r0, [r7,#4]
    mov r0, #1
    strb r0, [r7,#0xa]
    ldrb r0, [r6,#2]
    strh r0, [r7,#8]
    mov r0, #1
    bl sub_8002E60
    mov r0, #1
    bl loc_8002F8E
    ldrb r0, [r6,#3]
    strh r0, [r7,#0xc]
    ldrb r0, [r6,#4]
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
off_810E184:    .word dword_810E0F4+0x18
.thumb
sub_810E188:
    push {lr}
    bl sub_800283C
// end of function sub_810E188

    pop {pc}
loc_810E190:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810e1a8-0x810e19a-2] // off_810E1AC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810E1A8:    .word off_810E1AC
off_810E1AC:    .word sub_810E1B8+1
    .word sub_810E1F0+1
    .word sub_810E288+1
.thumb
sub_810E1B8:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    bl sub_805411A
    beq loc_810E1D6
    ldrb r0, [r1,#0xc]
    cmp r0, #0xff
    beq loc_810E1D6
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xe]
    bl sub_810E290
    b loc_810E1DC
loc_810E1D6:
    mov r0, #0xff
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xe]
loc_810E1DC:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810E1F0
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
    .word 0x20, 0xFFFF
// end of function sub_810E1B8

.thumb
sub_810E1F0:
    push {lr}
    ldr r0, [pc, #0x810e204-0x810e1f2-2] // off_810E20C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810E204:    .word off_810E20C
    .word dword_810E218
off_810E20C:    .word sub_810E234+1
    .word sub_810E24C+1
    .word sub_810E26C+1
dword_810E218:    .word 0x32003E8, 0x3E805DC, 0x51404B0, 0x3E804B0, 0x57803E8
    .word 0x3200514, 0x5DC
// end of function sub_810E1F0

.thumb
sub_810E234:
    push {lr}
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xe]
    cmp r0, r1
    beq locret_810E248
    strb r0, [r5,#0xe]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xd]
locret_810E248:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810E234

.thumb
sub_810E24C:
    push {lr}
    ldrb r0, [r5,#0xd]
    add r1, r0, #0
    bl sub_8002F28
    ldrb r0, [r5,#0xd]
    add r0, #1
    strb r0, [r5,#0xd]
    cmp r0, #0xf
    blt locret_810E26A
    ldrb r0, [r5,#0xc]
    bl sub_810E290
    mov r0, #8
    strb r0, [r5,#9]
locret_810E26A:
    pop {pc}
// end of function sub_810E24C

.thumb
sub_810E26C:
    push {lr}
    ldrb r0, [r5,#0xd]
    add r1, r0, #0
    bl sub_8002F28
    ldrb r0, [r5,#0xd]
    sub r0, #1
    strb r0, [r5,#0xd]
    bgt locret_810E286
    bl sub_8002F5E
    mov r0, #0
    strb r0, [r5,#9]
locret_810E286:
    pop {pc}
// end of function sub_810E26C

.thumb
sub_810E288:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810E288

.thumb
sub_810E290:
    push {lr}
    add r4, r0, #0
    ldr r2, [pc, #0x810e2e4-0x810e294-4] // dword_810E324
    ldrb r0, [r2,r0]
    cmp r0, #0xff
    beq loc_810E2DA
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x70 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e2e0-0x810e2b6-2] // =0x80
    strh r0, [r7,#8]
    ldr r0, [pc, #0x810e2ec-0x810e2ba-2] // dword_810E324
    ldrb r0, [r0,r4]
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r1, [pc, #0x810e2e8-0x810e2ca-2] // byte_810E2F0
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrh r0, [r1,r2]
    strh r0, [r7,#0xe]
    mov r1, #0x23 
    b loc_810E2DC
loc_810E2DA:
    mov r1, #1
loc_810E2DC:
    strb r1, [r5]
    pop {pc}
off_810E2E0:    .word 0x80
off_810E2E4:    .word dword_810E324
off_810E2E8:    .word byte_810E2F0
dword_810E2EC:    .word 0x810E331
byte_810E2F0:    .byte 0x44
    .byte 0x0, 0x50, 0x0
    .byte 0x4C
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x4E 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x52 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x50 
    .byte 0
dword_810E324:    .word 0x3CFFFFFF, 0xFFFF36FF, 0x3BFF3D3A, 0x20202FF, 0x2020202
    .word 0x2000202, 0x202
// end of function sub_810E290

loc_810E340:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    ldr r6, [pc, #0x810e398-0x810e346-2] // byte_200B190
    ldr r0, [pc, #0x810e358-0x810e348-4] // off_810E35C
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_810E358:    .word off_810E35C
off_810E35C:    .word off_810E368
    .word off_810E378
    .word off_810E388
off_810E368:    .word sub_810E39C+1
    .word sub_810E39C+1
    .word sub_810E51C+1
    .word sub_810E5B0+1
off_810E378:    .word sub_810E400+1
    .word loc_810E4AC+1
    .word sub_810E570+1
    .word sub_810E5B0+1
off_810E388:    .word sub_810E39C+1
    .word sub_810E39C+1
    .word sub_810E51C+1
    .word sub_810E5B0+1
off_810E398:    .word byte_200B190
.thumb
sub_810E39C:
    push {lr}
    mov r1, #0x41 
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_810E3A8
    mov r1, #0x23 
loc_810E3A8:
    strb r1, [r5]
    ldr r0, [pc, #0x810e464-0x810e3aa-2] // dword_810E4A0
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810E39C

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810e470-0x810e3c8-4] // dword_810E474
    ldr r0, [r1,r0]
    bl sub_8002FD8
    mov r0, #0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e468-0x810e3d8-4] // dword_810E4A0
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_810E51C
    pop {pc}
.thumb
sub_810E400:
    push {lr}
    mov r1, #0x41 
    strb r1, [r5]
    ldr r0, [pc, #0x810e464-0x810e406-2] // dword_810E4A0
    ldrb r1, [r5,#4]
    lsr r1, r1, #2
    ldrb r0, [r0,r1]
    bl sub_80028E8
    ldrb r0, [r5,#4]
    lsr r0, r0, #3
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810E400

    bl sub_8002FC2
    ldr r0, [pc, #0x810e46c-0x810e422-2] // dword_810E480
    bl loc_800301E
    mov r0, #0
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e468-0x810e430-4] // dword_810E4A0
    ldrb r1, [r5,#4]
    lsr r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #0
    bl sub_8002E60
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_810E5B8
    mvn r0, r0
    str r0, [r5,#0xc]
    mvn r1, r1
    str r1, [r5,#0x10]
    bl sub_810E570
    pop {pc}
    .balign 4, 0x00
dword_810E464:    .word 0x810E4A6
off_810E468:    .word dword_810E4A0
off_810E46C:    .word dword_810E480
off_810E470:    .word dword_810E474
dword_810E474:    .word 0x0, 0x0
    .word 0x401004
dword_810E480:    .word 0x3020301, 0x3030303, 0x3030303, 0x3030303, 0x3030303
    .word 0x3030303, 0x3030303, 0x3030303
dword_810E4A0:    .word 0x3400200, 0xA0901C0, 0xA
loc_810E4AC:
    push {lr}
    ldr r0, [pc, #0x810e4c0-0x810e4ae-2] // off_810E4C4
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .byte 0, 0
off_810E4C0:    .word off_810E4C4
off_810E4C4:    .word sub_810E4CC+1
    .word sub_810E4F0+1
.thumb
sub_810E4CC:
    push {lr}
    mov r1, #0x43 
    strb r1, [r5]
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sub_8002C70
    mov r0, #0x90
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    bl sub_810E5B8
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    pop {pc}
    .byte 0, 0
// end of function sub_810E4CC

.thumb
sub_810E4F0:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #0x40 
    strb r0, [r5,#6]
    cmp r0, #0x40 
    bgt loc_810E50E
    mov r1, #0xc0
    strb r1, [r5,#6]
    mov r1, #8
    strb r1, [r5,#8]
loc_810E504:
    mov r1, #0
    strb r1, [r5,#9]
    bl sub_8002D9E
    pop {pc}
loc_810E50E:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    pop {pc}
    .balign 4, 0x00
// end of function sub_810E4F0

.thumb
sub_810E51C:
    push {lr}
    mov r2, #0x54 
    ldrb r0, [r6,r2]
    sub r0, #0x40 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    bl sub_810E5B8
    ldrb r2, [r5,#4]
    tst r2, r2
    beq loc_810E562
    ldrb r4, [r5]
    mov r2, #2
    tst r0, r0
    beq loc_810E55A
    orr r4, r2
    ldr r2, [r5,#0xc]
    str r0, [r5,#0xc]
    ldr r3, [r5,#0x10]
    str r1, [r5,#0x10]
    cmp r1, r3
    bne loc_810E54E
    cmp r0, r2
    beq loc_810E560
loc_810E54E:
    push {r0,r1}
    mov r2, #0x10
    bl sub_810998C
    pop {r0,r1}
    b loc_810E560
loc_810E55A:
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bic r4, r2
loc_810E560:
    strb r4, [r5]
loc_810E562:
    bl sub_8019010
    ldrb r0, [r0,#8]
    strb r0, [r7,#4]
    bl sub_800283C
// end of function sub_810E51C

    pop {pc}
.thumb
sub_810E570:
    push {lr}
    bl sub_810E5B8
    beq loc_810E586
    ldr r2, [r5,#0xc]
    cmp r0, r2
    bne loc_810E586
    ldr r2, [r5,#0x10]
    cmp r1, r2
    bne loc_810E586
    b loc_810E596
loc_810E586:
    bl sub_8002D60
    mov r0, #1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
loc_810E596:
    mov r2, #0x54 
    ldrb r0, [r6,r2]
    sub r0, #0x40 
    strh r0, [r7,#0xc]
    mov r0, #0x58 
    strh r0, [r7,#0xe]
    bl sub_810E5B8
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bl sub_800283C
// end of function sub_810E570

    pop {pc}
.thumb
sub_810E5B0:
    push {lr}
    bl sub_80540E0
    pop {pc}
// end of function sub_810E5B0

.thumb
sub_810E5B8:
    mov r2, #0x56 
    ldrh r0, [r6,r2]
    mov r2, #0x55 
    ldrb r1, [r6,r2]
    tst r0, r0
    mov pc, lr
// end of function sub_810E5B8

loc_810E5C4:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810e5dc-0x810e5ce-2] // off_810E5E0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810E5DC:    .word off_810E5E0
off_810E5E0:    .word sub_810E5EC+1
    .word loc_810E630+1
    .word sub_810E65C+1
.thumb
sub_810E5EC:
    push {lr}
    mov r1, #0xa3
    strb r1, [r5]
    mov r0, #0
    bl sub_80028E8
    mov r0, #0xe
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810E5EC

    bl sub_8002FC2
    mov r0, #0x60 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e62c-0x810e60e-2] // =0x1F4
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strb r0, [r5,#0xb]
    bl loc_810E630
    pop {pc}
    .balign 4, 0x00
off_810E62C:    .word 0x1F4
loc_810E630:
    push {lr}
    ldr r0, [pc, #0x810e644-0x810e632-2] // off_810E648
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810E644:    .word off_810E648
off_810E648:    .word sub_810E650+1
    .word sub_810E658+1
.thumb
sub_810E650:
    push {lr}
    bl sub_810E668
    pop {pc}
// end of function sub_810E650

.thumb
sub_810E658:
    push {lr}
    pop {pc}
// end of function sub_810E658

.thumb
sub_810E65C:
    push {lr}
    bl sub_8002D9E
    bl sub_80540E0
    pop {pc}
// end of function sub_810E65C

.thumb
sub_810E668:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810e708-0x810e66a-2] // byte_200D908
    ldrb r1, [r0,#0x2] // (byte_200D90A - 0x200d908)
    tst r1, r1
    beq loc_810E684
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810E67E
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810E67E:
    mov r6, #5
    mov r0, #6
    b loc_810E694
loc_810E684:
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810E690
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810E690:
    mov r6, #0
    mov r0, #5
loc_810E694:
    bl sub_805411A
    beq locret_810E704
    add r4, r1, #0
    ldrb r0, [r4,#0xb]
    ldrb r1, [r5,#0xb]
    cmp r0, r1
    beq locret_810E704
    mov r2, #1
    ldrb r1, [r4,#6]
    tst r1, r2
    bne locret_810E704
    strb r0, [r5,#0xb]
    cmp r0, #7
    beq loc_810E6BA
    cmp r0, #8
    bne loc_810E6BC
    sub r0, #3
    b loc_810E6BC
loc_810E6BA:
    sub r0, #2
loc_810E6BC:
    ldr r1, [pc, #0x810e70c-0x810e6bc-4] // dword_810E748
    ldrb r1, [r1,r0]
    add r1, r1, r6
    add r2, r1, #0
    sub r2, #0x16
    push {r2}
    lsl r2, r2, #2
    ldr r3, [pc, #0x810e718-0x810e6ca-2] // dword_810E71C
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xe]
    mov r0, #0
    bl sub_80028E8
    pop {r2}
    ldr r0, [pc, #0x810e710-0x810e6de-2] // dword_810E748
    ldrb r0, [r0,r2]
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    mov r0, #0x60 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e714-0x810e6f6-2] // =0x1F4
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
locret_810E704:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810E708:    .word byte_200D908
off_810E70C:    .word dword_810E748
dword_810E710:    .word 0x810E753
off_810E714:    .word 0x1F4
off_810E718:    .word dword_810E71C
dword_810E71C:    .word 0x1F00DB, 0x230025, 0x42002B, 0x4200C5, 0x5900CC, 0x440082
    .word 0x1D00AB, 0x360048, 0x55002D, 0x13005B, 0x3500DB
dword_810E748:    .word 0x19181716, 0x1D1C1B1A, 0xF201F1E, 0x100F0E0E, 0xE0F0E0E
    .word 0xF0F
// end of function sub_810E668

loc_810E760:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810e778-0x810e76a-2] // off_810E77C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_810E778:    .word off_810E77C
off_810E77C:    .word sub_810E788+1
    .word loc_810E7A0+1
    .word sub_810E814+1
.thumb
sub_810E788:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
    bl loc_810E7A0
    pop {pc}
    .byte 0, 0
// end of function sub_810E788

loc_810E7A0:
    push {lr}
    ldr r0, [pc, #0x810e7b4-0x810e7a2-2] // off_810E7B8
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_810E7B4:    .word off_810E7B8
off_810E7B8:    .word sub_810E7C0+1
    .word sub_810E7E0+1
.thumb
sub_810E7C0:
    push {lr}
    bl sub_810E820
    tst r0, r0
    beq locret_810E7DA
    mov r0, #4
    strb r0, [r5,#9]
    ldr r1, [pc, #0x810e7dc-0x810e7ce-2] // =0xFF
    strh r1, [r5,#0xc]
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
locret_810E7DA:
    pop {pc}
off_810E7DC:    .word 0x100
// end of function sub_810E7C0

.thumb
sub_810E7E0:
    push {lr}
    mov r1, #0xa3
    strb r1, [r5]
    ldrh r1, [r5,#0xc]
    cmp r1, #0x40 
    ble loc_810E7F2
    sub r1, #0x10
    strh r1, [r5,#0xc]
    b loc_810E804
loc_810E7F2:
    mov r0, #0
    strb r0, [r5,#9]
    mov r1, #0x40 
    strh r1, [r5,#0xc]
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    b locret_810E810
loc_810E804:
    mov r0, #0
    mov r2, #0x40 
    bl sub_8002C70
    bl sub_810E820
locret_810E810:
    pop {pc}
    .balign 4, 0x00
// end of function sub_810E7E0

.thumb
sub_810E814:
    push {lr}
    bl sub_8002D9E
    bl sub_80540E0
    pop {pc}
// end of function sub_810E814

.thumb
sub_810E820:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810e8e0-0x810e822-2] // byte_200D908
    ldrb r1, [r0,#0x2] // (byte_200D90A - 0x200d908)
    tst r1, r1
    beq loc_810E83C
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810E836
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810E836:
    mov r6, #5
    mov r0, #6
    b loc_810E84C
loc_810E83C:
    ldrb r2, [r5,#0xa]
    cmp r1, r2
    beq loc_810E848
    strb r1, [r5,#0xa]
    mov r0, #0xff
    strb r0, [r5,#0xb]
loc_810E848:
    mov r6, #0
    mov r0, #5
loc_810E84C:
    bl sub_805411A
    beq locret_810E8DE
    add r4, r1, #0
    ldrb r0, [r4,#0xb]
    ldrb r1, [r5,#0xb]
    cmp r0, r1
    beq loc_810E8DC
    mov r2, #1
    ldrb r1, [r4,#6]
    tst r1, r2
    bne loc_810E8DC
    strb r0, [r5,#0xb]
    cmp r0, #7
    beq loc_810E872
    cmp r0, #8
    bne loc_810E874
    sub r0, #3
    b loc_810E874
loc_810E872:
    sub r0, #2
loc_810E874:
    ldr r1, [pc, #0x810e8e4-0x810e874-4] // dword_810E950
    ldrb r1, [r1,r0]
    add r1, r1, r6
    add r2, r1, #0
    sub r2, #0x16
    push {r2}
    lsl r2, r2, #2
    ldr r3, [pc, #0x810e8f0-0x810e882-2] // dword_810E924
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xc]
    add r2, #2
    ldrh r0, [r3,r2]
    strh r0, [r7,#0xe]
    ldrb r0, [r5,#8]
    tst r0, r0
    beq loc_810E898
    bl sub_8002D9E
loc_810E898:
    mov r0, #0
    bl sub_80028E8
    pop {r2}
    ldr r0, [pc, #0x810e8e8-0x810e8a0-4] // dword_810E950
    ldrb r0, [r0,r2]
    push {r2}
    bl sub_8002DF0
    bl sub_800281C
    bl sub_8002FC2
    pop {r2}
    ldr r0, [pc, #0x810e8f4-0x810e8b4-4] // dword_810E8F8
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    bl sub_8002FD8
    bl sub_8002D60
    mov r0, #0x60 
    strb r0, [r7,#0x15]
    mov r0, #0
    strb r0, [r7,#4]
    ldr r0, [pc, #0x810e8ec-0x810e8ca-2] // =0x1F4
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#0xa]
    mov r0, #3
    bl sub_8002E60
    mov r0, #1
    b locret_810E8DE
loc_810E8DC:
    mov r0, #0
locret_810E8DE:
    pop {r4-r7,pc}
off_810E8E0:    .word byte_200D908
off_810E8E4:    .word dword_810E950
dword_810E8E8:    .word 0x810E95B
dword_810E8EC:    .word 0x1F6
off_810E8F0:    .word dword_810E924
off_810E8F4:    .word dword_810E8F8
dword_810E8F8:    .word 0xFC00000, 0xFC00000, 0xC00000, 0x0
    .word 0x1C00000, 0xFC00000, 0x3C00000, 0x7C00000, 0x3C00000
    .word 0x7C00000, 0x7C00000
dword_810E924:    .word 0x1F00C3, 0x23003D, 0x420043, 0x4200AD, 0x5600B2, 0x44009A
    .word 0x1D00C3, 0x360030, 0x550045, 0x130043, 0x3500C3
dword_810E950:    .word 0x19181716, 0x1D1C1B1A, 0x12201F1E, 0x12121111, 0x11121111
    .word 0x1212
// end of function sub_810E820

loc_810E968:
    push {lr}
    add r7, r5, #0
    add r7, #0x20 
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, [pc, #0x810e980-0x810e972-2] // off_810E984
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_810E980:    .word off_810E984
off_810E984:    .word sub_810E990+1
    .word sub_810E9FC+1
    .word sub_810EA14+1
.thumb
sub_810E990:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810e9ec-0x810e998-4] // asc_810E9F4
    ldrb r0, [r1,r0]
    bl sub_80028E8
    mov r0, #0
    bl sub_8002DF0
    bl sub_800281C
// end of function sub_810E990

    bl sub_8002FC2
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x810e9f0-0x810e9b0-4] // asc_810E9F4
    ldrb r0, [r1,r0]
    strb r0, [r7,#0x15]
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x810e9dc-0x810e9ba-2] // off_810E9E0
    ldr r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#0xa]
    mov r0, #1
    bl sub_8002E60
    mov r0, #0x38 
    strh r0, [r7,#0xc]
    mov r0, #0x50 
    strh r0, [r7,#0xe]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_810E9FC
    pop {pc}
off_810E9DC:    .word off_810E9E0
off_810E9E0:    .word 0x98
    .word 0xB8
    .word 0xB8
off_810E9EC:    .word asc_810E9F4
dword_810E9F0:    .word 0x810E9F7
asc_810E9F4:    .byte 0x3E, 0x4B
    .byte 0x4C, 0x60
    .byte 0x70, 0x70
    .byte 0x0
    .byte 0x0
.thumb
sub_810E9FC:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x34]
    mov r1, #0xc
    ldrsb r0, [r4,r1]
    lsl r0, r0, #3
    mov r1, #0x38 
    add r1, r1, r0
    strh r1, [r7,#0xc]
    bl sub_800283C
// end of function sub_810E9FC

    pop {pc}
.thumb
sub_810EA14:
    push {lr}
    bl sub_80540E0
    pop {pc}
off_810EA1C:    .word dword_809ECC8+0x10
    .word 0x0, 0x0
    .word 0x89
    .word dword_809ECC8+0x1C
    .word 0x0, 0x0
    .word 0x89
    .word 0x8086D64
    .word 0x1, 0x200AAD0, 0x0
    .word dword_8086F84
    .word 0x1, 0x200AAD0, 0x0
    .word dword_8086F84+0xC
    .word 0x1, 0x200AAD0, 0x0
// end of function sub_810EA14

    push {r4-r7,lr}
    ldr r0, [pc, #0x810ea7c-0x810ea6e-2] // off_810EA80
    ldrb r1, [r5,#0x14]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810EA7C:    .word off_810EA80
off_810EA80:    .word sub_810EA88+1
    .word sub_810EAF4+1
.thumb
sub_810EA88:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810eae4-0x810ea8a-2] // dword_86879FC
    ldr r1, [pc, #0x810eae8-0x810ea8c-4] // =0x600B900
    ldr r2, [pc, #0x810eaec-0x810ea8e-2] // =0x700
    bl loc_8000874
    ldr r0, [pc, #0x810eadc-0x810ea94-4] // dword_86879DC
    ldr r1, [pc, #0x810eae0-0x810ea96-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r1, r10
    ldr r1, [r1,#8]
    ldr r0, [pc, #0x810ead8-0x810eaa2-2] // =0x1F09
    strh r0, [r1,#0xa]
    mov r4, r10
    ldr r4, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r4]
    mov r0, #0x37 
    strb r0, [r4,#1]
    mov r7, r10
    ldr r7, [r7,#0x1c]
    mov r0, #0x3f 
    strb r0, [r7,#9]
    mov r0, #0x17
    strb r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r5,#0x14]
    mov r0, #0x3c 
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x15]
    strb r0, [r5,#0x17]
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #4
    ldr r1, [pc, #0x810eaf0-0x810ead0-4] // off_810EA1C
    add r1, r1, r0
    str r1, [r5,#0x18]
    pop {r4-r7,pc}
off_810EAD8:    .word 0x1F09
off_810EADC:    .word dword_86879DC
off_810EAE0:    .word unk_3002BF0
off_810EAE4:    .word dword_86879FC
dword_810EAE8:    .word 0x600B900
off_810EAEC:    .word 0x700
off_810EAF0:    .word off_810EA1C
// end of function sub_810EA88

.thumb
sub_810EAF4:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ec30-0x810eafc-4] // =0x4800
    orr r0, r2
    strh r0, [r1]
    ldr r0, [pc, #0x810ec34-0x810eb02-2] // =0x3001800
    ldr r1, [pc, #0x810ec38-0x810eb04-4] // =0x800
    ldr r2, [pc, #0x810ec3c-0x810eb06-2] // =0x2FF02FF
    bl f900_80009FC
    bl sub_810EBEC
    tst r0, r0
    bne loc_810EB26
    ldrb r1, [r5,#0x17]
    tst r1, r1
    beq loc_810EB34
    ldr r0, [r5,#0x18]
    ldr r0, [r0,#0xc]
    tst r0, r0
    beq loc_810EB26
    bl f500_8000558
loc_810EB26:
    bl sub_810EBAC
    tst r2, r2
    beq loc_810EB3A
    mov r1, #1
    tst r2, r1
    beq locret_810EB38
loc_810EB34:
    bl sub_8002610
locret_810EB38:
    pop {r4-r7,pc}
loc_810EB3A:
    ldrb r7, [r5,#0x15]
    ldr r1, [pc, #0x810eb84-0x810eb3c-4] // off_810EB88
    ldrb r2, [r1,r7]
    ldr r1, [pc, #0x810eb94-0x810eb40-4] // dword_810EB98
    lsl r7, r7, #1
    ldrb r3, [r1,r7]
    add r7, #1
    ldrb r0, [r1,r7]
    ldr r4, [pc, #0x810eb68-0x810eb4a-2] // dword_810EB6C
    ldr r1, [r4,r2]
    mov r7, r10
    ldr r7, [r7,#0x20]
    strb r3, [r7,#2]
    strb r0, [r7,#3]
    add r2, #4
    ldr r2, [r4,r2]
    add r3, r2, #0
    ldr r0, [r5,#0x18]
    ldr r0, [r0]
    bl sub_8002664
// end of function sub_810EAF4

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810EB68:    .word dword_810EB6C
dword_810EB6C:    .word 0x86880FC, 0x10, 0x8688104, 0x60, 0x8688224, 0xC0
off_810EB84:    .word off_810EB88
off_810EB88:    .word start_
    .word 0x10100808, 0x10
off_810EB94:    .word dword_810EB98
dword_810EB98:    .word 0x4120412, 0xB080412, 0xB080B08, 0x10041004, 0x1004
.thumb
sub_810EBAC:
    push {lr}
    mov r2, #0
    ldr r1, [r5,#0x18]
    ldr r1, [r1,#4]
    cmp r1, #0
    beq loc_810EBE6
    cmp r1, #1
    beq loc_810EBD4
    cmp r0, #9
    bgt loc_810EBE2
    cmp r0, #9
    beq loc_810EBC6
    pop {pc}
loc_810EBC6:
    ldrb r1, [r5,#0x16]
    add r1, #1
    ldrb r3, [r5,#0xd]
    cmp r1, r3
    beq loc_810EBDE
    strb r1, [r5,#0x16]
    b loc_810EBE2
loc_810EBD4:
    cmp r0, #9
    beq loc_810EBDE
    cmp r0, #9
    bgt loc_810EBE2
    pop {pc}
loc_810EBDE:
    mov r2, #1
    pop {pc}
loc_810EBE2:
    mov r2, #2
    pop {pc}
loc_810EBE6:
    cmp r0, #9
    bge loc_810EBE2
    pop {pc}
// end of function sub_810EBAC

.thumb
sub_810EBEC:
    push {lr}
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#0x17]
    ldr r7, [r5,#0x18]
    ldr r7, [r7,#8]
    tst r7, r7
    bne loc_810EC00
    mov r7, r10
    ldr r7, [r7,#0x44]
    add r7, #0x4c 
loc_810EC00:
    ldr r0, [r7]
    add r4, r0, #0
    mov r1, #0x3c 
    svc 6
    mov r0, #0x3b 
    sub r0, r0, r1
    strb r0, [r5,#0x15]
    mov r6, #0x10
    add r6, r5, r6
    cmp r7, r6
    bne locret_810EC1E
    sub r1, r4, #1
    bgt loc_810EC1C
    mov r1, #0x3c 
loc_810EC1C:
    strb r1, [r5,#0x10]
locret_810EC1E:
    pop {pc}
// end of function sub_810EBEC

    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ec30-0x810ec28-4] // =0x4800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
dword_810EC30:    .word 0x4800
dword_810EC34:    .word 0x3001800
off_810EC38:    .word 0x800
dword_810EC3C:    .word 0x2FF02FF
dword_810EC40:    .word 0x40000, 0xFFBC0000, 0x420000, 0x86888A4, 0x100C2050
    .word 0x40000, 0xFFBC0000, 0x420000, 0x86888A4, 0x8092050
    .word 0xFF740000, 0xFFDA0000, 0x260000, 0x86888A4, 0x100C2050
    .word 0xFF740000, 0xFFDA0000, 0x260000, 0x86888A4, 0x70A2050
    .word 0xFFCC0000, 0x140000, 0x480000, 0x86888A4, 0x100C2050
    .word 0xFFCC0000, 0x140000, 0x480000, 0x86888A4, 0x8092050
    .word 0x4F08B5F0, 0x21147B28, 0x183F4348, 0x7C294802, 0x46FE5840
    .word 0xBDF04700, 0x810ECD4, 0x810ECF1, 0x810ED51, 0x810EC40
    .word 0x4654B5F0, 0x880868A1, 0x43904A23, 0xBDF08008, 0x4811B5F0
    .word 0x4A124911, 0xFDBCF6F1, 0x49124811, 0xF6F12220, 0x4654FDB7
    .word 0x481068A1, 0x6A218148, 0x70082048, 0x70482037, 0x70887CB8
    .word 0x70C87CF8, 0x203F69E1, 0x20177248, 0x20007288, 0x200474E8
    .word 0xF0007428, 0xBDF0F80D, 0x86886C4, 0x600C000, 0x1E0
    .word 0x86886A4, 0x3002BF0, 0x1F09, 0x7CE8B5F0, 0xD0054200
    .word 0x68A14654, 0x4A068808, 0x80084310, 0x74E82001, 0x68F91C38
    .word 0x7C7B7C3A, 0xFC78F6F3, 0xBDF0, 0x4800, 0x4F08B5F0
    .word 0x21147B28, 0x183F4348, 0x7C294802, 0x46FE5840, 0xBDF04700
    .word 0x810ED98, 0x810EDB5, 0x810EE15, 0x810EC40, 0x4654B5F0
    .word 0x880868A1, 0x43904A27, 0xBDF08008, 0x4811B5F0, 0x4A124911
    .word 0xFD5AF6F1, 0x49124811, 0xF6F12220, 0x4654FD55, 0x481068A1
    .word 0x6A218108, 0x70082044, 0x7048203B, 0x70887CB8, 0x70C87CF8
    .word 0x203F69E1, 0x201B7248, 0x20007288, 0x200474E8, 0xF0007428
    .word 0xBDF0F80D, 0x86886C4, 0x600C000, 0x1E0, 0x86886A4
    .word 0x3002BF0, 0x1E09, 0x7CE8B5F0, 0xD0054200, 0x68A44654
    .word 0x4A0A8820, 0x80204310, 0x74E82001, 0x68F91C38, 0x7C7B7C3A
    .word 0xFC10F6F3, 0x68A44654, 0x380C8B60, 0x8B208360, 0x8320300C
    .word 0xBDF0, 0x4400, 0xFFCA0000, 0x560000, 0x0
    .word 0x8688DD4, 0x80C3030, 0x4F08B5F0, 0x21147B28, 0x183F4348
    .word 0x7C294802, 0x46FE5840, 0xBDF04700
    .word off_810EE80
off_810EE80:    .word sub_810EE9C+1
    .word sub_810EF04+1
    .word dword_810EC40+0x210
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ef20-0x810ee94-4] // =0x4800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
.thumb
sub_810EE9C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810eee8-0x810ee9e-2] // dword_8688974
    ldr r1, [pc, #0x810eeec-0x810eea0-4] // =0x600CBA0
    ldr r2, [pc, #0x810eef0-0x810eea2-2] // =0x460
    bl loc_8000874
    ldr r0, [pc, #0x810eef4-0x810eea8-4] // dword_86888F4
    ldr r1, [pc, #0x810eef8-0x810eeaa-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810eefc-0x810eeb6-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    ldrb r0, [r7,#0x12]
    strb r0, [r1,#2]
    ldrb r0, [r7,#0x13]
    strb r0, [r1,#3]
    ldr r1, [r4,#0x1c]
    mov r0, #0x3f 
    strb r0, [r1,#9]
    mov r0, #0x17
    strb r0, [r1,#0xa]
    mov r0, #4
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x810ef00-0x810eeda-2] // off_805D0A0
    bl sub_8002028
    bl sub_810EF04
// end of function sub_810EE9C

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810EEE8:    .word dword_8688974
dword_810EEEC:    .word 0x600CBA0
off_810EEF0:    .word 0x460
off_810EEF4:    .word dword_86888F4
off_810EEF8:    .word unk_3002BF0
off_810EEFC:    .word 0x1F09
off_810EF00:    .word off_805D0A0
.thumb
sub_810EF04:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ef20-0x810ef0c-4] // =0x4800
    orr r0, r2
    strh r0, [r1]
    add r0, r7, #0
    ldr r1, [r7,#0xc]
    ldrb r2, [r7,#0x10]
    ldrb r3, [r7,#0x11]
    bl sub_8002664
// end of function sub_810EF04

    pop {r4-r7,pc}
dword_810EF20:    .word 0x4800
dword_810EF24:    .word 0x400000, 0x180000, 0x0
    .word 0x86893DC, 0x109090, 0x4F08B5F0, 0x21147B28, 0x183F4348
    .word 0x7C294802, 0x46FE5840, 0xBDF04700
    .word off_810EF54
off_810EF54:    .word sub_810EF70+1
    .word sub_810EFCC+1
    .word dword_810EF24
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f000-0x810ef68-4] // =0x4800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
.thumb
sub_810EF70:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810efb4-0x810ef72-2] // a99999999999999+488
    ldr r1, [pc, #0x810efb8-0x810ef74-4] // =0x600CC40
    ldr r2, [pc, #0x810efbc-0x810ef76-2] // =0x3C0
    bl loc_8000874
    ldr r0, [pc, #0x810efc0-0x810ef7c-4] // dword_8688E1C
    ldr r1, [pc, #0x810efc4-0x810ef7e-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810efc8-0x810ef8a-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    ldrb r0, [r7,#0x12]
    strb r0, [r1,#2]
    ldrb r0, [r7,#0x13]
    strb r0, [r1,#3]
    ldr r1, [r4,#0x1c]
    mov r0, #0x3f 
    strb r0, [r1,#9]
    mov r0, #0x17
    strb r0, [r1,#0xa]
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810EFCC
// end of function sub_810EF70

    pop {r4-r7,pc}
off_810EFB4:    .word a99999999999999+0x1E8
dword_810EFB8:    .word 0x600CC40
off_810EFBC:    .word 0x3C0
off_810EFC0:    .word dword_8688E1C
off_810EFC4:    .word unk_3002BF0
dword_810EFC8:    .word 0x1F0A
.thumb
sub_810EFCC:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f000-0x810efd4-4] // =0x4800
    orr r0, r2
    strh r0, [r1]
    add r0, r7, #0
    ldr r1, [r7]
    ldr r2, [r7,#4]
    ldr r3, [r7,#8]
    ldrb r0, [r5,#0xd]
    lsl r0, r0, #0x10
    sub r3, r3, r0
    sub sp, sp, #0xc
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r0, sp
    ldr r1, [r7,#0xc]
    ldrb r2, [r7,#0x10]
    ldrb r3, [r7,#0x11]
    bl sub_8002664
// end of function sub_810EFCC

    add sp, sp, #0xc
    pop {r4-r7,pc}
dword_810F000:    .word 0x4800
    .word 0xFED40000, 0xBA0000, 0x0
    .word 0x10E, 0x8689784, 0x1008200C, 0x8689684, 0x600C000
    .word 0x100, 0x8689664, 0x3002BF0, 0x1F09, 0x1C0000
    .word 0xFFBC0000, 0x200000, 0x0
    .word 0x868A5A4, 0x1008200C, 0x868A4A4, 0x600C000, 0x100
    .word 0x868A484, 0x3002BF0, 0x1F09, 0x4F0BB5F0, 0x21307B28
    .word 0x183F4348, 0x7C294802, 0x46FE5840, 0xBDF04700, 0x810F080
    .word 0x810F0A9, 0x810F0F1, 0x810F113, 0x810F13F, 0x810F15F
    .word 0x810F004, 0x4654B5F0, 0x880868A1, 0x43904A3B, 0xBDF08008
    .word 0x69B8B5F0, 0x6A3A69F9, 0xFBE0F6F1, 0x6AB96A78, 0xF6F12220
    .word 0x4654FBDB, 0x6AF868A1, 0x6A218148, 0x70082048, 0x70482037
    .word 0x70882000, 0x70C87DF8, 0x203F69E1, 0x201772C8, 0x20007288
    .word 0x20046168, 0xF0007428, 0xBDF0F801, 0x4651B5F0, 0x69686A09
    .word 0x61683001, 0x7DB97088, 0xDB034288, 0x616868F8, 0x74282008
    .word 0xF82BF000, 0xB5F0BDF0, 0x420068F8, 0x7B68D103, 0xD00B4200
    .word 0x6968E004, 0x61683801, 0xDC052800, 0x6A094651, 0x61687888
    .word 0x7428200C, 0xF815F000, 0xB5F0BDF0, 0x6A094651, 0x38016968
    .word 0x70886168, 0xDC032800, 0x616868F8, 0x74282010, 0xF805F000
    .word 0xB5F0BDF0, 0xF801F000, 0xB5F0BDF0, 0x68A14654, 0x4A088808
    .word 0x80084310, 0x69391C38, 0xD27D3A, 0xDB7D7B, 0xFA70F6F3
    .word 0x6A6068A1, 0x83488800, 0xBDF0, 0x8800, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0xFED40000, 0x600000, 0x140000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0x14E0000, 0xFFE40000, 0x140000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0x1D80000, 0xFFC20000, 0x140000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0xD00000, 0xFFC40000, 0x200000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0xD00000, 0x40000, 0x200000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0xD00000, 0xFFE40000, 0x300000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0x15A0000, 0xFF560000, 0x580000, 0xFF, 0x4F09B5F0
    .word 0x21287B28, 0x183F4348, 0x7C294802, 0x46FE5840, 0xBDF04700
    .word 0x810F2C8, 0x810F2F5, 0x810F34D, 0x810F389, 0x810F194
.thumb
sub_810F2D8:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f384-0x810f2e0-4] // =0x2800
    bic r0, r2
    strh r0, [r1]
    ldr r0, [pc, #0x810f2f0-0x810f2e6-2] // loc_3006E40+1
    mov lr, pc
    bx r0
// end of function sub_810F2D8

    pop {r4-r7,pc}
    .byte 0, 0
off_810F2F0:    .word loc_3006E40+1
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f330-0x810f2f6-2] // dword_8689AC4
    ldr r1, [pc, #0x810f334-0x810f2f8-4] // =0x600CFE0
    ldr r2, [pc, #0x810f338-0x810f2fa-2] // =0x20
    bl loc_8000874
    ldrb r1, [r5,#0xd]
    lsl r1, r1, #5
    ldr r0, [pc, #0x810f33c-0x810f304-4] // dword_8689A84
    add r0, r0, r1
    ldr r1, [pc, #0x810f340-0x810f308-4] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810f344-0x810f314-4] // =0x1F09
    strh r0, [r1,#0xa]
    mov r0, #0
    strh r0, [r1,#0x1a]
    strh r0, [r1,#0x18]
    add r0, r7, #0
    ldr r1, [pc, #0x810f348-0x810f320-4] // loc_3006D04+1
    mov lr, pc
    bx r1
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810F34C
    pop {r4-r7,pc}
off_810F330:    .word dword_8689AC4
dword_810F334:    .word 0x600CFE0
dword_810F338:    .word 0x20
off_810F33C:    .word dword_8689A84
off_810F340:    .word unk_3002BF0
off_810F344:    .word 0x1F09
off_810F348:    .word loc_3006D04+1
.thumb
sub_810F34C:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f384-0x810f354-4] // =0x2800
    orr r0, r2
    strh r0, [r1]
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x810f37c-0x810f362-2] // dword_8689AE4
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_810F34C

    pop {r5}
    ldr r0, [pc, #0x810f380-0x810f36e-2] // loc_3006D74+1
    mov lr, pc
    bx r0
    beq locret_810F37A
    mov r0, #8
    strb r0, [r5,#0x10]
locret_810F37A:
    pop {r4-r7,pc}
off_810F37C:    .word dword_8689AE4
off_810F380:    .word loc_3006D74+1
off_810F384:    .word 0x2800
    push {r4-r7,lr}
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f39c-0x810f38e-2] // off_810F3A0
    ldrb r1, [r5,#0x10]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F39C:    .word off_810F3A0
off_810F3A0:    .word loc_810F3B8+1
    .word sub_810F44C+1
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f47c-0x810f3b0-4] // =0x800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
loc_810F3B8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f404-0x810f3ba-2] // dword_8689FB4
    ldr r1, [pc, #0x810f408-0x810f3bc-4] // =0x600CFE0
    ldr r2, [pc, #0x810f40c-0x810f3be-2] // =0x20
    bl loc_8000874
    ldr r0, [pc, #0x810f410-0x810f3c4-4] // dword_8689F94
    ldr r1, [pc, #0x810f414-0x810f3c6-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810f418-0x810f3d2-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    mov r0, #0xc
    strb r0, [r1,#2]
    mov r0, #0x10
    strb r0, [r1,#3]
    bl sub_8001E74
    ldr r0, [pc, #0x810f41c-0x810f3ec-4] // off_810F420
    ldrb r1, [r5,#0xc]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_810F450
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810F44C
    pop {r4-r7,pc}
off_810F404:    .word dword_8689FB4
dword_810F408:    .word 0x600CFE0
dword_810F40C:    .word 0x20
off_810F410:    .word dword_8689F94
off_810F414:    .word unk_3002BF0
off_810F418:    .word 0x1F09
off_810F41C:    .word off_810F420
off_810F420:    .word sub_810F438+1
    .word sub_810F438+1
    .word sub_810F438+1
    .word sub_810F442+1
    .word sub_810F442+1
    .word sub_810F442+1
.thumb
sub_810F438:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_8002078
    pop {r4-r7,pc}
// end of function sub_810F438

.thumb
sub_810F442:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_8002078
    pop {r4-r7,pc}
// end of function sub_810F442

.thumb
sub_810F44C:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_810F44C

.thumb
sub_810F450:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f47c-0x810f458-4] // =0x800
    orr r0, r2
    strh r0, [r1]
    mov r0, #0
    strh r0, [r1,#0x1a]
    strh r0, [r1,#0x18]
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x810f478-0x810f46a-2] // dword_8689FD4
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_810F450

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F478:    .word dword_8689FD4
off_810F47C:    .word 0x800
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f490-0x810f482-2] // off_810F494
    ldrb r1, [r5,#0x10]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_810F490:    .word off_810F494
off_810F494:    .word sub_810F4B4+1
    .word sub_810F518+1
    .word sub_810F546+1
    .word sub_810F56A+1
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f5c8-0x810f4ac-4] // =0x2800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
.thumb
sub_810F4B4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f500-0x810f4b6-2] // dword_868A8C4
    ldr r1, [pc, #0x810f504-0x810f4b8-4] // =0x600CC40
    ldr r2, [pc, #0x810f508-0x810f4ba-2] // =0xA0
    bl loc_8000874
    ldr r0, [pc, #0x810f50c-0x810f4c0-4] // dword_868A8A4
    ldr r1, [pc, #0x810f510-0x810f4c2-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810f514-0x810f4ce-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    mov r0, #0xc
    strb r0, [r1,#2]
    mov r0, #0x10
    strb r0, [r1,#3]
    ldr r1, [r4,#0x1c]
    mov r0, #0x3f 
    strb r0, [r1,#9]
    strb r0, [r1,#8]
    mov r0, #0x17
    strb r0, [r1,#0xa]
    mov r0, #0x10
    str r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810F518
// end of function sub_810F4B4

    pop {r4-r7,pc}
    .byte 0, 0
off_810F500:    .word dword_868A8C4
dword_810F504:    .word 0x600CC40
off_810F508:    .word 0xA0
off_810F50C:    .word dword_868A8A4
off_810F510:    .word unk_3002BF0
off_810F514:    .word 0x1F09
.thumb
sub_810F518:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    sub r6, #4
    bge loc_810F526
    mov r6, #0
    mov r0, #8
    strb r0, [r5,#0x10]
loc_810F526:
    str r6, [r5,#0x14]
    bl sub_810F596
// end of function sub_810F518

    mov r4, r10
    ldr r1, [r4,#0x1c]
    mov r0, #0x68 
    add r0, r0, r6
    strb r0, [r1,#1]
    mov r0, #0x88
    sub r0, r0, r6
    strb r0, [r1]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F546:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    add r6, #1
    cmp r6, #0x80
    ble loc_810F556
    mov r6, #0
    mov r0, #0xc
    strb r0, [r5,#0x10]
loc_810F556:
    str r6, [r5,#0x14]
    bl sub_810F596
// end of function sub_810F546

    mov r4, r10
    ldr r1, [r4,#0x1c]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F56A:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    add r6, #4
    cmp r6, #0x10
    ble loc_810F576
    mov r6, #0x10
loc_810F576:
    str r6, [r5,#0x14]
    bl sub_810F596
// end of function sub_810F56A

    mov r4, r10
    ldr r1, [r4,#0x1c]
    mov r0, #0x68 
    add r0, r0, r6
    strb r0, [r1,#1]
    mov r0, #0x88
    sub r0, r0, r6
    strb r0, [r1]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F596:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f5c8-0x810f59e-2] // =0x2800
    orr r0, r2
    strh r0, [r1]
    ldr r0, [pc, #0x810f5b4-0x810f5a4-4] // dword_810F5B8
    ldr r1, [pc, #0x810f5c4-0x810f5a6-2] // dword_868A964
    mov r2, #0x20 
    mov r3, #0xa0
    bl sub_8002664
// end of function sub_810F596

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F5B4:    .word dword_810F5B8
dword_810F5B8:    .word 0x7E0000, 0xFF220000, 0x740000
off_810F5C4:    .word dword_868A964
off_810F5C8:    .word 0x2800
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f5dc-0x810f5ce-2] // off_810F5E0
    ldrb r1, [r5,#0x10]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F5DC:    .word off_810F5E0
off_810F5E0:    .word sub_810F60C+1
    .word sub_810F690+1
    .word sub_810F6BE+1
    .word sub_810F6E2+1
    .word sub_810F6EA+1
    .word sub_810F71A+1
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f608-0x810f600-4] // =0x6800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
dword_810F608:    .word 0x6800
.thumb
sub_810F60C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f678-0x810f60e-2] // dword_868A8C4
    ldr r1, [pc, #0x810f67c-0x810f610-4] // =0x600CC40
    ldr r2, [pc, #0x810f680-0x810f612-2] // =0xA0
    bl loc_8000874
    ldr r0, [pc, #0x810f684-0x810f618-4] // dword_868A8C4
    ldr r1, [pc, #0x810f688-0x810f61a-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810f68c-0x810f626-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    mov r0, #0xc
    strb r0, [r1,#2]
    mov r0, #0x10
    strb r0, [r1,#3]
    ldr r1, [r4,#0x1c]
    mov r0, #0x3f 
    strb r0, [r1,#9]
    strb r0, [r1,#8]
    mov r0, #0x17
    strb r0, [r1,#0xa]
    mov r0, #0x10
    str r0, [r5,#0x14]
    ldrb r0, [r5,#0xc]
    cmp r0, #1
    beq loc_810F660
    cmp r0, #2
    beq loc_810F66A
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810F690
    pop {r4-r7,pc}
loc_810F660:
    mov r0, #0xc
    strb r0, [r5,#0x10]
    bl sub_810F6E2
    pop {r4-r7,pc}
loc_810F66A:
    mov r0, #0
    str r0, [r5,#0x14]
    mov r0, #0x10
    strb r0, [r5,#0x10]
    bl sub_810F6EA
// end of function sub_810F60C

    pop {r4-r7,pc}
off_810F678:    .word dword_868A8C4
dword_810F67C:    .word 0x600CC40
off_810F680:    .word 0xA0
off_810F684:    .word dword_868A8C4
off_810F688:    .word unk_3002BF0
off_810F68C:    .word 0x1F09
.thumb
sub_810F690:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    sub r6, #4
    bge loc_810F69E
    mov r6, #0
    mov r0, #8
    strb r0, [r5,#0x10]
loc_810F69E:
    str r6, [r5,#0x14]
    bl sub_810F72E
// end of function sub_810F690

    mov r4, r10
    ldr r1, [r4,#0x1c]
    mov r0, #0x68 
    add r0, r0, r6
    strb r0, [r1,#1]
    mov r0, #0x88
    sub r0, r0, r6
    strb r0, [r1]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F6BE:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    add r6, #1
    cmp r6, #0x80
    ble loc_810F6CE
    mov r6, #0
    mov r0, #0xc
    strb r0, [r5,#0x10]
loc_810F6CE:
    str r6, [r5,#0x14]
    bl sub_810F72E
// end of function sub_810F6BE

    mov r4, r10
    ldr r1, [r4,#0x1c]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F6E2:
    push {r4-r7,lr}
    bl sub_810F750
// end of function sub_810F6E2

    pop {r4-r7,pc}
.thumb
sub_810F6EA:
    push {r4-r7,lr}
    ldr r6, [r5,#0x14]
    add r6, #4
    cmp r6, #0x10
    ble loc_810F6FA
    mov r6, #0x10
    mov r0, #0x14
    strb r0, [r5,#0x10]
loc_810F6FA:
    str r6, [r5,#0x14]
    bl sub_810F72E
// end of function sub_810F6EA

    mov r4, r10
    ldr r1, [r4,#0x1c]
    mov r0, #0x68 
    add r0, r0, r6
    strb r0, [r1,#1]
    mov r0, #0x88
    sub r0, r0, r6
    strb r0, [r1]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F71A:
    push {r4-r7,lr}
    bl sub_810F72E
// end of function sub_810F71A

    mov r4, r10
    ldr r1, [r4,#0x1c]
    ldrb r0, [r1,#7]
    strb r0, [r1,#5]
    ldrb r0, [r1,#6]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.thumb
sub_810F72E:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f74c-0x810f736-2] // =0x2800
    orr r0, r2
    strh r0, [r1]
    ldr r0, [pc, #0x810f770-0x810f73c-4] // dword_810F774
    ldr r1, [pc, #0x810f780-0x810f73e-2] // dword_868A964
    mov r2, #0x20 
    mov r3, #0xa0
    bl sub_8002664
// end of function sub_810F72E

    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F74C:    .word 0x2800
.thumb
sub_810F750:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810f784-0x810f758-4] // =0x4800
    orr r0, r2
    ldr r2, [pc, #0x810f788-0x810f75c-4] // =0x2000
    bic r0, r2
    strh r0, [r1]
    ldr r0, [pc, #0x810f770-0x810f762-2] // dword_810F774
    ldr r1, [pc, #0x810f780-0x810f764-4] // dword_868A964
    mov r2, #0x20 
    mov r3, #0xa0
    bl sub_8002664
// end of function sub_810F750

    pop {r4-r7,pc}
off_810F770:    .word dword_810F774
dword_810F774:    .word 0x7E0000, 0xFF220000, 0x740000
off_810F780:    .word dword_868A964
dword_810F784:    .word 0x4800
off_810F788:    .word 0x2000
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#4]
    cmp r1, #0x92
    beq loc_810F79A
    pop {r4-r7,pc}
loc_810F79A:
    bl sub_80A1B94
    bl sub_80A6FB6
    bne loc_810F7B2
    bl sub_802BCFC
    bne loc_810F7B2
    bl sub_802BD14
    bne loc_810F7B2
    b loc_810F7B6
loc_810F7B2:
    bl sub_80A1BC0
loc_810F7B6:
    ldr r0, [pc, #0x810f7c4-0x810f7b6-2] // off_810F7C8
    ldrb r1, [r5,#0x10]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810F7C4:    .word off_810F7C8
off_810F7C8:    .word sub_810F7E4+1
    .word loc_810F854+1
.thumb
sub_810F7D0:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810fbd0-0x810f7d8-4] // =0x800
    bic r0, r2
    strh r0, [r1]
    bl sub_8001D60
    pop {r4-r7,pc}
// end of function sub_810F7D0

.thumb
sub_810F7E4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f83c-0x810f7e6-2] // dword_868AA24
    ldr r1, [pc, #0x810f840-0x810f7e8-4] // =0x600CE00
    ldr r2, [pc, #0x810f844-0x810f7ea-2] // =0x200
    bl loc_8000874
    ldr r0, [pc, #0x810f848-0x810f7f0-4] // dword_868AA04
    ldr r1, [pc, #0x810f84c-0x810f7f2-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810f850-0x810f7fe-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    mov r0, #4
    strb r0, [r1,#2]
    mov r0, #0xb
    strb r0, [r1,#3]
    bl sub_8001E74
    mov r0, #0
    bl sub_8002078
    mov r0, #0
    strb r0, [r5,#0x16]
    strh r0, [r5,#0x14]
    mov r0, #0x63 
    strh r0, [r5,#0x18]
    ldr r0, [pc, #0x810f8f0-0x810f828-4] // off_810F8F4
    ldr r0, [r0]
    str r0, [r5,#0x1c]
    bl sub_810FBAC
// end of function sub_810F7E4

    mov r0, #4
    strb r0, [r5,#0x10]
    bl loc_810F854
    pop {r4-r7,pc}
off_810F83C:    .word dword_868AA24
dword_810F840:    .word 0x600CE00
off_810F844:    .word 0x200
off_810F848:    .word dword_868AA04
off_810F84C:    .word unk_3002BF0
off_810F850:    .word 0x1F09
loc_810F854:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810f864-0x810f856-2] // off_810F868
    ldrb r1, [r5,#0x11]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_810F864:    .word off_810F868
off_810F868:    .word sub_810F870+1
    .word sub_810FB78+1
.thumb
sub_810F870:
    push {r4-r7,lr}
    mov r0, #8
    mov r1, #0x91
    bl sub_8024FF0
    beq loc_810F894
    mov r0, #1
    strb r0, [r5,#0x11]
    ldr r3, [pc, #0x810f8f0-0x810f880-4] // off_810F8F4
    mov r0, #4
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    str r3, [r5,#0x1c]
    ldr r3, [pc, #0x810f8d8-0x810f88a-2] // off_810F8DC
    ldr r0, [r3,r0]
    strh r0, [r5,#0x18]
    mov r2, #0
    b loc_810F8BA
loc_810F894:
    ldrb r2, [r5,#0x16]
    add r2, #1
    ldrh r0, [r5,#0x18]
    cmp r2, r0
    ble loc_810F8BA
    push {r2}
    bl sub_8001AF6
    pop {r2}
    mov r1, #3
    and r0, r1
    ldr r3, [pc, #0x810f8f0-0x810f8aa-2] // off_810F8F4
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    str r3, [r5,#0x1c]
    ldr r3, [pc, #0x810f8d8-0x810f8b2-2] // off_810F8DC
    ldr r0, [r3,r0]
    strh r0, [r5,#0x18]
    mov r2, #0
loc_810F8BA:
    strb r2, [r5,#0x16]
    ldr r3, [r5,#0x1c]
    ldrb r3, [r3,r2]
    ldrh r0, [r5,#0x14]
    add r3, #2
    add r0, r0, r3
    strh r0, [r5,#0x14]
    mov r3, #0x80
    sub r2, r0, r3
    neg r2, r2
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x1a]
    strh r0, [r1,#0x18]
    pop {r4-r7,pc}
off_810F8D8:    .word off_810F8DC
off_810F8DC:    .word 0x80
    .word 0x63, 0x3F, 0x4E, 0xB3
off_810F8F0:    .word off_810F8F4
off_810F8F4:    .word dword_810F908
    .word dword_810F98C
    .word dword_810F9F0
    .word loc_810FA38
    .word loc_810FA88
dword_810F908:    .word 0x3030303, 0x3030303, 0x3030303, 0x3030303, 0x3030303
    .word 0x3030303, 0x4040403, 0x4040404, 0x4040404, 0x4040404
    .word 0x4040404, 0x4040404, 0x4040404, 0x5040404, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x4050505, 0x4040404
    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x4040404, 0x3030304, 0x3030303, 0x3030303, 0x3030303
    .word 0x3030303, 0x3030303, 0x303
dword_810F98C:    .word 0x3030303, 0x3030303, 0x3030303, 0x3030303, 0x3030303
    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x3030303, 0x3030303, 0x3030303, 0x3030303, 0x3030303
dword_810F9F0:    .word 0x3030303, 0x3030303, 0x4040303, 0x4040404, 0x4040404
    .word 0x4040404, 0x4040404, 0x5050404, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x4040505, 0x4040404, 0x4040404
    .word 0x3030303, 0x3030303, 0x303
// end of function sub_810F870

loc_810FA38:
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
loc_810FA88:
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r5, r0, #0x14
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r4, r0, #0x10
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r3, r0, #0xc
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r2, r0, #8
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
    lsl r1, r0, #4
.thumb
sub_810FB78:
    push {r4-r7,lr}
    ldrb r2, [r5,#0x16]
    add r2, #1
    ldrh r0, [r5,#0x18]
    sub r0, #0x3c 
    cmp r2, r0
    ble loc_810FB8C
    ldr r0, [pc, #0x810fba8-0x810fb86-2] // unk_200AA20
    mov r1, #1
    strb r1, [r0,#0xa] // (byte_200AA2A - 0x200aa20)
loc_810FB8C:
    strb r2, [r5,#0x16]
    ldr r3, [r5,#0x1c]
    ldrb r3, [r3,r2]
    ldrh r0, [r5,#0x14]
    add r0, r0, r3
    strh r0, [r5,#0x14]
    mov r3, #0x80
    sub r2, r0, r3
    neg r2, r2
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x1a]
    strh r0, [r1,#0x18]
    pop {r4-r7,pc}
off_810FBA8:    .word unk_200AA20
// end of function sub_810FB78

.thumb
sub_810FBAC:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810fbd0-0x810fbb4-4] // =0x800
    orr r0, r2
    strh r0, [r1]
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x810fbcc-0x810fbc0-4] // dword_868AC24
    mov r4, #0x20 
    mov r5, #0x20 
    bl sub_8001DDC
// end of function sub_810FBAC

    pop {r4-r7,pc}
off_810FBCC:    .word dword_868AC24
off_810FBD0:    .word 0x800
    .byte 0, 0, 0, 0
    .word unk_3002C50
    .word 0xFF09080C, 0x80001084, 0x4, 0x800014A5, 0x4, 0x800018C6
    .word 0x4, 0x800014A5, 0x4, 0x1, 0x0
    .word unk_3002840
dword_810FC0C:    .word 0xFF09090C, 0x80001084, 0x4, 0x800014A5, 0x4, 0x800018C6
    .word 0x4, 0x800014A5, 0x4, 0x1, 0x4803B5F0, 0x58407C29
    .word 0x470046FE, 0xBDF0, 0x810FC48, 0x810FC61, 0x810FD09, 0x4654B5F0
    .word 0x880868A1, 0x43904A3D, 0xBDF08008, 0x4818B5F0, 0x58407B29, 0x4A1A4919
    .word 0x58D27B2B, 0xFE00F6F0, 0x7B29481A, 0x491C5840, 0xF6F02220, 0x4654FDF9
    .word 0x481A68A1, 0x4A1A8148, 0x18D27B2B, 0x20486A21, 0x20377008, 0x78107048
    .word 0x78507088, 0xF6F270C8, 0x7B28F8E7, 0xD0054200, 0xF6F24814, 0x4814F9BB
    .word 0xF9B8F6F2, 0x74282004, 0xF824F000, 0xBDF0, 0x810FCC8, 0x868B444
    .word 0x868BD04, 0x600CF40, 0x810FCD8, 0xA0, 0xA0, 0x810FCE4
    .word 0x86886A4, 0x86886A4, 0x3002BF0, 0x1F09, 0x810FCF8, 0xFFFF080C
    .word 0xFFFF100C, 0x810FBD4, 0x810FC04, 0x4654B5F0, 0x882068A4, 0x43104A0F
    .word 0x480B8020, 0x58407B29, 0x470046FE, 0x21002000, 0x4B042203, 0x591B7B2C
    .word 0x25202420, 0xF854F6F2, 0xBDF0, 0x810FD3C, 0x868B4E4, 0x868BDA4
    .word 0x810FD48, 0x810FD55, 0x810FD89, 0x800, 0x4B0AB5F0, 0x6A404650
    .word 0x49098800, 0x5E184008, 0x83201100, 0x8AE08AA9, 0x1A0982A8, 0x2100DA00
    .word 0x38028B60, 0x83601A40, 0xBDF0, 0x8005D78, 0x1FE, 0x8B60B5F0
    .word 0x8360380C, 0x300C8B20, 0xBDF08320, 0xFE0000, 0xFFEA0000, 0x0
    .word 0x868C884, 0x80C4070, 0x4F08B5F0, 0x21147B28, 0x183F4348
    .word 0x7C294802, 0x46FE5840, 0xBDF04700
    .word off_810FDC8
off_810FDC8:    .word sub_810FDE4+1
    .word sub_810FE40+1
    .word dword_810FC0C+0x18C
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810fe5c-0x810fddc-4] // =0x4800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
.thumb
sub_810FDE4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810fe28-0x810fde6-2] // dword_868C5C4
    ldr r1, [pc, #0x810fe2c-0x810fde8-4] // =0x600C800
    ldr r2, [pc, #0x810fe30-0x810fdea-2] // =0x2C0
    bl loc_8000874
    ldr r0, [pc, #0x810fe34-0x810fdf0-4] // dword_868C5A4
    ldr r1, [pc, #0x810fe38-0x810fdf2-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810fe3c-0x810fdfe-2] // =0x1F09
    strh r0, [r1,#0xa]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    ldrb r0, [r7,#0x12]
    strb r0, [r1,#2]
    ldrb r0, [r7,#0x13]
    strb r0, [r1,#3]
    ldr r1, [r4,#0x1c]
    mov r0, #0x3f 
    strb r0, [r1,#9]
    mov r0, #0x17
    strb r0, [r1,#0xa]
    mov r0, #4
    strb r0, [r5,#0x10]
    bl sub_810FE40
// end of function sub_810FDE4

    pop {r4-r7,pc}
off_810FE28:    .word dword_868C5C4
dword_810FE2C:    .word 0x600C800
off_810FE30:    .word 0x2C0
off_810FE34:    .word dword_868C5A4
off_810FE38:    .word unk_3002BF0
dword_810FE3C:    .word 0x1F0A
.thumb
sub_810FE40:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810fe5c-0x810fe48-4] // =0x4800
    orr r0, r2
    strh r0, [r1]
    add r0, r7, #0
    ldr r1, [r7,#0xc]
    ldrb r2, [r7,#0x10]
    ldrb r3, [r7,#0x11]
    bl sub_8002664
// end of function sub_810FE40

    pop {r4-r7,pc}
dword_810FE5C:    .word 0x4800
    push {r4-r7,lr}
    ldr r0, [pc, #0x810fe70-0x810fe62-2] // off_810FE74
    ldrb r1, [r5,#0x10]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_810FE70:    .word off_810FE74
off_810FE74:    .word sub_810FE94+1
    .word sub_810FEFC+1
    .word sub_810FF40+1
    .word sub_810FFA6+1
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ffd4-0x810fe8c-4] // =0x800
    bic r0, r2
    strh r0, [r1]
    pop {r4-r7,pc}
.thumb
sub_810FE94:
    push {r4-r7,lr}
    ldr r0, [pc, #0x810fee0-0x810fe96-2] // dword_868C984
    ldr r1, [pc, #0x810fee4-0x810fe98-4] // =0x600C020
    ldr r2, [pc, #0x810fee8-0x810fe9a-2] // =0x920
    bl loc_8000874
    ldr r0, [pc, #0x810feec-0x810fea0-4] // dword_868C964
    ldr r1, [pc, #0x810fef0-0x810fea2-2] // unk_3002BF0
    mov r2, #0x20 
    bl loc_8000874
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [pc, #0x810fef4-0x810feae-2] // =0x1F09
    strh r0, [r1,#0xa]
    mov r0, #0
    strh r0, [r1,#0x18]
    strh r0, [r1,#0x1a]
    ldr r1, [r4,#0x20]
    mov r0, #0x48 
    strb r0, [r1]
    mov r0, #0x37 
    strb r0, [r1,#1]
    mov r0, #0
    str r0, [r5,#0x14]
    mov r0, #0xa0
    str r0, [r5,#0x18]
    ldr r0, [pc, #0x810fef8-0x810feca-2] // =0x18C
    bl f500_8000558
    mov r0, #0x5a 
    str r0, [r5,#0x1c]
    mov r0, #4
    str r0, [r5,#0x10]
    bl sub_810FEFC
// end of function sub_810FE94

    pop {r4-r7,pc}
    .byte 0, 0
off_810FEE0:    .word dword_868C984
dword_810FEE4:    .word 0x600C020
off_810FEE8:    .word 0x920
off_810FEEC:    .word dword_868C964
off_810FEF0:    .word unk_3002BF0
dword_810FEF4:    .word 0x1F0A
dword_810FEF8:    .word 0x18E
.thumb
sub_810FEFC:
    push {r4-r7,lr}
    ldr r3, [pc, #0x810ff88-0x810fefe-2] // loc_810FF8C
    ldr r0, [r5,#0x14]
    lsr r0, r0, #2
    add r3, r3, r0
    mov r4, r10
    ldr r1, [r4,#0x20]
    ldrb r0, [r3]
    strb r0, [r1,#2]
    ldrb r0, [r3,#0xd]
    strb r0, [r1,#3]
    ldr r0, [r5,#0x14]
    add r0, #1
    cmp r0, #0x34 
    bge loc_810FF1E
    str r0, [r5,#0x14]
    b loc_810FF22
loc_810FF1E:
    mov r0, #8
    str r0, [r5,#0x10]
loc_810FF22:
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [r5,#0x18]
    sub r0, #1
    str r0, [r5,#0x18]
    cmp r0, #0x36 
    blt loc_810FF34
    lsr r2, r0, #1
    strh r2, [r1,#0x1a]
loc_810FF34:
    bl sub_810FFD8
    bl sub_810FFAE
// end of function sub_810FEFC

    pop {r4-r7,pc}
    .byte 0, 0
.thumb
sub_810FF40:
    push {r4-r7,lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #1
    bne loc_810FF7E
    ldr r3, [pc, #0x810ff88-0x810ff48-4] // loc_810FF8C
    ldr r0, [r5,#0x14]
    lsr r0, r0, #2
    add r3, r3, r0
    mov r4, r10
    ldr r1, [r4,#0x20]
    ldrb r0, [r3]
    strb r0, [r1,#2]
    ldrb r0, [r3,#0xd]
    strb r0, [r1,#3]
    ldr r0, [r5,#0x14]
    sub r0, #1
    cmp r0, #0
    blt loc_810FF68
    str r0, [r5,#0x14]
    b loc_810FF70
loc_810FF68:
    mov r0, #0xc
    str r0, [r5,#0x10]
    mov r0, #2
    strb r0, [r5,#0xc]
loc_810FF70:
    mov r4, r10
    ldr r1, [r4,#8]
    ldr r0, [r5,#0x18]
    add r0, #1
    str r0, [r5,#0x18]
    lsr r2, r0, #1
    strh r2, [r1,#0x1a]
loc_810FF7E:
    bl sub_810FFD8
    bl sub_810FFAE
// end of function sub_810FF40

    pop {r4-r7,pc}
off_810FF88:    .word loc_810FF8C
loc_810FF8C:
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r4, r0, #0x14
    lsl r6, r0, #0x1c
    lsr r0, r1, #4
    lsr r2, r1, #0xc
    asr r4, r1, #0x20
    lsr r7, r1, #0x18
    lsr r5, r1, #0x10
    lsr r3, r1, #8
    lsr r1, r1, #0x20
    lsl r7, r0, #0x18
    lsl r5, r0, #0x10
.thumb
sub_810FFA6:
    push {r4-r7,lr}
    bl sub_810FFAE
// end of function sub_810FFA6

    pop {r4-r7,pc}
.thumb
sub_810FFAE:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x810ffd4-0x810ffb6-2] // =0x800
    orr r0, r2
    strh r0, [r1]
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x810ffd0-0x810ffc2-2] // dword_868D244+96
    mov r4, #0x1e
    mov r5, #0x20 
    bl sub_8001DDC
// end of function sub_810FFAE

    pop {r4-r7,pc}
    .byte 0, 0
off_810FFD0:    .word dword_868D244+0x60
off_810FFD4:    .word 0x800
.thumb
sub_810FFD8:
    push {r4-r7,lr}
    ldr r0, [r5,#0x1c]
    sub r0, #1
    str r0, [r5,#0x1c]
    bge locret_810FFEC
    mov r0, #0x40 
    str r0, [r5,#0x1c]
    ldr r0, [pc, #0x810fff0-0x810ffe6-2] // =0x18C
    bl f500_8000558
locret_810FFEC:
    pop {r4-r7,pc}
    .byte 0, 0
dword_810FFF0:    .word 0x18F
// end of function sub_810FFD8

.thumb
sub_810FFF4:
    push {lr}
    ldr r0, [pc, #0x8110020-0x810fff6-2] // byte_200AD00
    mov r1, #0x1c
    bl f900_8000930
    pop {pc}
// end of function sub_810FFF4

loc_8110000:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8110020-0x8110002-2] // byte_200AD00
    ldr r0, [pc, #0x8110010-0x8110004-4] // off_8110014
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_8110010:    .word off_8110014
off_8110014:    .word sub_8110024+1
    .word sub_8110148+1
    .word sub_811016C+1
off_8110020:    .word byte_200AD00
.thumb
sub_8110024:
    push {r7,lr}
    ldr r0, [pc, #0x8110124-0x8110026-2] // off_86112F4
    ldr r1, [r0,#0x4] // (dword_86112F8 - 0x86112f4)
    add r0, r0, r1
    ldr r1, [pc, #0x8110128-0x811002c-4] // word_2014000
    bl dword_8111700
    ldr r0, [pc, #0x8110134-0x8110032-2] // dword_8613920
    add r0, #0xc
    ldr r1, [pc, #0x8110138-0x8110036-2] // dword_201C000
    bl dword_8111700
    bl sub_8001D04
    bl sub_8001D38
    ldr r0, [pc, #0x8110108-0x8110044-4] // =0x6006000
    mov r1, #0x20 
    bl f900_8000950
    ldr r0, [pc, #0x8110128-0x811004c-4] // word_2014000
    ldr r1, [pc, #0x811012c-0x811004e-2] // =0x6008040
    ldr r2, [pc, #0x8110130-0x8110050-4] // =0x2E40
    bl f900_80009A0
    ldr r0, [pc, #0x8110110-0x8110056-2] // dword_87D85B0
    ldr r1, [pc, #0x8110114-0x8110058-4] // =0x6006020
    ldr r2, [pc, #0x8110118-0x811005a-2] // =0x680
    bl f900_80009A0
    push {r4,r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x811010c-0x8110068-4] // =0xD300
    mov r4, #0x20 
    mov r5, #0x20 
    bl sub_8001DF8
// end of function sub_8110024

    mov r0, #0
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x8110138-0x8110078-4] // dword_201C000
    mov r4, #0x20 
    mov r5, #0x20 
    bl sub_8001DDC
    pop {r4,r5}
    ldr r0, [pc, #0x811013c-0x8110084-4] // dword_8613CB8
    ldr r1, [pc, #0x8110140-0x8110086-2] // word_3002A50
    ldr r2, [pc, #0x8110144-0x8110088-4] // =0x1E0
    bl f900_80009A0
    ldr r0, [pc, #0x8110100-0x811008e-2] // dword_86CDE80
    ldr r1, [pc, #0x8110104-0x8110090-4] // unk_3002BF0
    mov r2, #0x20 
    bl f900_80009A0
    ldr r0, [pc, #0x811011c-0x8110098-4] // unk_87D8C30
    ldr r1, [pc, #0x8110120-0x811009a-2] // unk_3002C10
    mov r2, #0x20 
    bl f900_80009A0
    mov r2, r10
    ldr r2, [r2,#8]
    mov r0, #0
    strh r0, [r2,#0x10]
    strh r0, [r2,#0x12]
    strh r0, [r2,#0x14]
    strh r0, [r2,#0x16]
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r7, r10
    ldr r7, [r7,#0x44]
    ldr r0, [r7,#0x2c]
    str r0, [r5,#0x18]
    ldr r1, [pc, #0x81100f8-0x81100bc-4] // =0x34BC0
    svc 6
    strb r0, [r5,#8]
    add r0, r1, #0
    ldr r1, [pc, #0x81100fc-0x81100c4-4] // =0xE10
    svc 6
    strb r0, [r5,#9]
    bl sub_80372BC
    strh r0, [r5,#0xc]
    bl sub_8037304
    strh r0, [r5,#0xe]
    bl sub_8037364
    strh r0, [r5,#0x10]
    bl sub_8037404
    strh r0, [r5,#0x12]
    mov r0, #0x1c
    bl f500_8000560
    mov r0, #0x3c 
    strh r0, [r5,#4]
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    pop {r7,pc}
    .balign 4, 0x00
dword_81100F8:    .word 0x34BC0
off_81100FC:    .word 0xE10
off_8110100:    .word dword_86CDE80
off_8110104:    .word unk_3002BF0
dword_8110108:    .word 0x6006000
dword_811010C:    .word 0xD300
off_8110110:    .word dword_87D85B0
dword_8110114:    .word 0x6006020
off_8110118:    .word 0x680
off_811011C:    .word unk_87D8C30
off_8110120:    .word unk_3002C10
off_8110124:    .word off_86112F4
off_8110128:    .word word_2014000
dword_811012C:    .word 0x6008040
off_8110130:    .word 0x2E40
off_8110134:    .word dword_8613920
off_8110138:    .word dword_201C000
off_811013C:    .word dword_8613CB8
off_8110140:    .word word_3002A50
off_8110144:    .word 0x1E0
.thumb
sub_8110148:
    push {r7,lr}
    ldr r0, [pc, #0x8110158-0x811014a-2] // off_811015C
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r7,pc}
    .balign 4, 0x00
off_8110158:    .word off_811015C
off_811015C:    .word sub_81101A8+1
    .word sub_81101E0+1
    .word sub_8110200+1
    .word sub_81103BA+1
// end of function sub_8110148

.thumb
sub_811016C:
    push {r7,lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_81101A0
    ldr r0, [r5,#0x18]
    bl sub_8000DBA
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [r7,#0x40]
    mov r1, #4
    strb r1, [r0,#4]
    strb r1, [r0,#5]
    mov r1, #0
    strb r1, [r0]
    mov r1, #0x2b 
    strb r1, [r0,#6]
    mov r1, #0x26 
    strb r1, [r0,#7]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x81101a4-0x811019c-4] // =0x40
    strh r1, [r0]
locret_81101A0:
    pop {r7,pc}
    .balign 4, 0x00
off_81101A4:    .word 0x40
// end of function sub_811016C

.thumb
sub_81101A8:
    push {r7,lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bgt locret_81101D2
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x81101d4-0x81101b6-2] // =0x1640
    strh r1, [r0]
    ldr r1, [pc, #0x81101d8-0x81101ba-2] // =0x1D00
    strh r1, [r0,#6]
    ldr r1, [pc, #0x81101dc-0x81101be-2] // =0x1E88
    strh r1, [r0,#8]
    mov r0, #8
    mov r1, #4
    bl sub_8005ADC
    mov r0, #0
    strh r0, [r5,#4]
    mov r0, #4
    strb r0, [r5,#1]
locret_81101D2:
    pop {r7,pc}
off_81101D4:    .word 0x1640
off_81101D8:    .word 0x1D00
off_81101DC:    .word 0x1E89
// end of function sub_81101A8

.thumb
sub_81101E0:
    push {r7,lr}
    bl sub_8005B5C
    beq locret_81101F8
    ldr r0, [pc, #0x81101fc-0x81101e8-4] // dword_8110498
    str r0, [r5,#0x14]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_81101F8:
    pop {r7,pc}
    .balign 4, 0x00
off_81101FC:    .word dword_8110498
// end of function sub_81101E0

.thumb
sub_8110200:
    push {r7,lr}
    ldr r1, [pc, #0x8110210-0x8110202-2] // off_8110214
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r7,pc}
    .byte 0, 0
off_8110210:    .word off_8110214
off_8110214:    .word loc_8110220+1
    .word sub_8110378+1
    .word sub_81103AA+1
// end of function sub_8110200

loc_8110220:
    push {lr}
loc_8110222:
    ldr r3, [r5,#0x14]
    ldrb r0, [r3]
    ldr r1, [pc, #0x8110234-0x8110226-2] // off_8110238
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    cmp r0, #0
    beq loc_8110222
    pop {pc}
off_8110234:    .word off_8110238
off_8110238:    .word sub_811025C+1
    .word sub_81102E4+1
    .word sub_81102FE+1
    .word sub_8110314+1
    .word sub_8110322+1
    .word sub_8110334+1
    .word sub_8110348+1
    .word sub_8110358+1
    .word sub_8110368+1
.thumb
sub_811025C:
    push {lr}
    push {r0-r7}
    ldr r0, [pc, #0x81103e0-0x8110260-4] // loc_87D8CE0
    ldrb r1, [r3,#1]
    ldr r3, [pc, #0x81102d4-0x8110264-4] // unk_2015000
    ldr r2, [pc, #0x81102d0-0x8110266-2] // word_2014000
    mov r4, #0xc
    mov r5, #1
    ldr r6, [pc, #0x81102d8-0x811026c-4] // dword_8695224
    ldr r7, [pc, #0x81102dc-0x811026e-2] // byte_2014600
    bl function_chunks__function_chunks_loc_8053A28
    pop {r0-r7}
    bl sub_8110290
    bl sub_81103E4
// end of function sub_811025C

    ldrb r0, [r5,#0xb]
    add r0, #1
    mov r1, #0xf
    and r0, r1
    strb r0, [r5,#0xb]
    add r3, #4
    str r3, [r5,#0x14]
    mov r0, #0
    pop {pc}
.thumb
sub_8110290:
    push {r3,r4,r6,r7,lr}
    ldr r0, [pc, #0x81102dc-0x8110292-2] // byte_2014600
    ldr r4, [pc, #0x81102cc-0x8110294-4] // =0x600
loc_8110296:
    ldrb r1, [r0]
    mov r2, #0x70 
    and r2, r1
    mov r3, #7
    and r1, r3
    cmp r1, #2
    bge loc_81102A6
    mov r1, #0
loc_81102A6:
    cmp r2, #0x20 
    bge loc_81102AC
    mov r2, #0
loc_81102AC:
    orr r1, r2
    strb r1, [r0]
    add r0, #1
    sub r4, #1
    bne loc_8110296
    ldr r2, [pc, #0x81102cc-0x81102b6-2] // =0x600
    ldrb r1, [r5,#0xb]
    mul r2, r1
    ldr r1, [pc, #0x81102e0-0x81102bc-4] // =0x6000000
    add r1, r1, r2
    ldr r0, [pc, #0x81102d4-0x81102c0-4] // unk_2015000
    ldr r2, [pc, #0x81102cc-0x81102c2-2] // =0x600
    bl loc_8000874
    pop {r3,r4,r6,r7,pc}
    .balign 4, 0x00
off_81102CC:    .word 0x600
off_81102D0:    .word word_2014000
off_81102D4:    .word unk_2015000
off_81102D8:    .word dword_8695224
off_81102DC:    .word byte_2014600
dword_81102E0:    .word 0x6000000
// end of function sub_8110290

.thumb
sub_81102E4:
    push {lr}
    ldrb r0, [r3,#1]
    mov r1, #0x40 
    mul r0, r1
    strh r0, [r5,#4]
    mov r0, #4
    strh r0, [r5,#2]
    bl sub_8110378
    add r3, #2
    str r3, [r5,#0x14]
    mov r0, #1
    pop {pc}
// end of function sub_81102E4

.thumb
sub_81102FE:
    push {lr}
    ldrb r0, [r3,#1]
    strh r0, [r5,#4]
    mov r0, #8
    strh r0, [r5,#2]
    bl sub_81103AA
    add r3, #2
    str r3, [r5,#0x14]
    mov r0, #1
    pop {pc}
// end of function sub_81102FE

.thumb
sub_8110314:
    push {lr}
    mov r0, #0xc
    strb r0, [r5,#1]
    add r3, #1
    str r3, [r5,#0x14]
    mov r0, #1
    pop {pc}
// end of function sub_8110314

.thumb
sub_8110322:
    push {lr}
    bl sub_811045C
// end of function sub_8110322

    add r3, #1
    str r3, [r5,#0x14]
    mov r0, #1
    strb r0, [r5,#6]
    mov r0, #0
    pop {pc}
.thumb
sub_8110334:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldrb r0, [r5,#8]
    str r0, [r2,#4]
    ldrb r0, [r5,#9]
    str r0, [r2,#8]
    bl sub_811025C
// end of function sub_8110334

    pop {pc}
.thumb
sub_8110348:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldrh r0, [r5,#0xc]
    str r0, [r2,#4]
    bl sub_811025C
// end of function sub_8110348

    pop {pc}
.thumb
sub_8110358:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldrh r0, [r5,#0xe]
    str r0, [r2,#4]
    bl sub_811025C
// end of function sub_8110358

    pop {pc}
.thumb
sub_8110368:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldrh r0, [r5,#0x10]
    str r0, [r2,#4]
    bl sub_811025C
// end of function sub_8110368

    pop {pc}
.thumb
sub_8110378:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne loc_8110386
    mov r0, #0
    strh r0, [r5,#2]
loc_8110386:
    mov r1, #3
    tst r0, r1
    bne loc_8110398
    ldrb r1, [r5,#0xa]
    add r1, #1
    strb r1, [r5,#0xa]
    mov r2, r10
    ldr r2, [r2,#8]
    strh r1, [r2,#0x12]
loc_8110398:
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne locret_81103A8
    mov r1, #0x3f 
    and r0, r1
    bne locret_81103A8
    bl sub_8110442
locret_81103A8:
    pop {pc}
// end of function sub_8110378

.thumb
sub_81103AA:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_81103B8
    mov r0, #0
    strh r0, [r5,#2]
locret_81103B8:
    pop {pc}
// end of function sub_81103AA

.thumb
sub_81103BA:
    push {r7,lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    tst r0, r0
    beq locret_81103DE
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x1f
    mov r1, #3
    bl f500_80005D2
    mov r4, #8
    strb r4, [r5]
    mov r0, #0
    strb r0, [r5,#1]
locret_81103DE:
    pop {r7,pc}
off_81103E0:    .word loc_87D8CE0
// end of function sub_81103BA

.thumb
sub_81103E4:
    push {r3-r7,lr}
    sub sp, sp, #0x60
    add r6, r3, #0
    ldrb r0, [r5,#0xb]
    mov r1, #0x30 
    mul r0, r1
    ldr r1, [pc, #0x8110494-0x81103f0-4] // =0xD000
    add r0, r0, r1
    ldrb r3, [r6,#3]
    mov r7, sp
    mov r4, sp
    lsl r1, r3, #1
    add r4, r4, r1
loc_81103FE:
    strh r0, [r7]
    add r1, r0, #1
    strh r1, [r7,#2]
    add r1, r0, #2
    strh r1, [r4]
    add r1, r0, #3
    strh r1, [r4,#2]
    add r0, #4
    add r7, #4
    add r4, #4
    sub r3, #2
    bne loc_81103FE
    ldrb r1, [r5,#0xa]
    add r1, #0xa0
    lsl r1, r1, #0x18
    lsr r1, r1, #0x1b
    push {r1}
    mov r0, #0
    mov r2, #1
    ldr r3, [pc, #0x8110490-0x8110424-4] // =0xD300
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
// end of function sub_81103E4

    pop {r1}
    ldrb r0, [r6,#2]
    mov r2, #1
    mov r3, sp
    ldrb r4, [r6,#3]
    mov r5, #2
    bl sub_8001DDC
    add sp, sp, #0x60
    pop {r3-r7,pc}
.thumb
sub_8110442:
    push {r4,r5,lr}
    ldrb r1, [r5,#0xa]
    add r1, #0xa0
    lsl r1, r1, #0x18
    lsr r1, r1, #0x1b
    mov r0, #0
    mov r2, #1
    ldr r3, [pc, #0x8110490-0x8110450-4] // =0xD300
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
// end of function sub_8110442

    pop {r4,r5,pc}
.thumb
sub_811045C:
    push {r3-r5,lr}
    ldrb r1, [r5,#0xa]
    add r1, #0xa0
    lsl r1, r1, #0x18
    lsr r1, r1, #0x1b
    push {r1}
    mov r0, #0
    mov r2, #1
    ldr r3, [pc, #0x8110490-0x811046c-4] // =0xD300
    mov r4, #0x20 
    mov r5, #8
    bl sub_8001DF8
// end of function sub_811045C

    pop {r1}
    mov r0, #9
    add r1, #1
    mov r2, #1
    ldr r3, [pc, #0x811048c-0x811047e-2] // loc_87D8C50
    mov r4, #0xc
    mov r5, #6
    bl sub_8001DDC
    pop {r3-r5,pc}
    .balign 4, 0x00
off_811048C:    .word loc_87D8C50
dword_8110490:    .word 0xD300
dword_8110494:    .word 0xD000
dword_8110498:    .word 0x18044500, 0x204, 0x2040604, 0x18060100, 0x2000404
    .word 0x2040804, 0x18060300, 0x4000104, 0x4041806, 0x10040500
    .word 0x6000204, 0x1041806, 0x18060700, 0x8000104, 0x2041806
    .word 0x10040900, 0xA000204, 0x2041806, 0x10040B00, 0xC000204
    .word 0x2041806, 0x10040D00, 0xE000204, 0x4041806, 0xA040F00
    .word 0x10000204, 0x1041806, 0x18061100, 0x12000104, 0x4041806
    .word 0xA041300, 0x14000204, 0x1041806, 0x18061500, 0x16000104
    .word 0x4041806, 0xA041700, 0x18000204, 0x1041806, 0x18061900
    .word 0x1A000104, 0x1041806, 0x18061B00, 0x1C000104, 0x1041806
    .word 0x18061D00, 0x1E000404, 0x2040804, 0x18061F00, 0x20000404
    .word 0x2040A04, 0x18062100, 0x22000404, 0x2041004, 0x18062300
    .word 0x24000404, 0x2041004, 0x18062500, 0x26000404, 0x2041004
    .word 0x18062700, 0x28000404, 0x2041004, 0x18062900, 0x2A000404
    .word 0x2041004, 0x18062B00, 0x2C000104, 0x1041806, 0x18062D00
    .word 0x2E000104, 0x1041806, 0x18062F00, 0x30000104, 0x1041806
    .word 0x18063100, 0x32000104, 0x1041806, 0x18063300, 0x34000104
    .word 0x1041806, 0x18063500, 0x36000104, 0x1041806, 0x18063700
    .word 0x38000104, 0x1041806, 0x18063900, 0x3A000104, 0x1041806
    .word 0x18063B00, 0x3C000104, 0x1041806, 0x18063D00, 0x3E000104
    .word 0xC041806, 0xE043F00, 0x40000204, 0xC041806, 0x18044114
    .word 0x42180204, 0x1041804, 0x1804431C, 0x44200104, 0x1041804
    .word 0xC040410, 0x4657B5F0, 0x4645464E, 0xB089B4E0, 0x23004681
    .word 0x428B3901, 0x4688DA3B, 0x38200090, 0x46844448, 0x3301468A
    .word 0x42999308, 0x149DB2D, 0x38201C08, 0x1884464A, 0x194A4665
    .word 0x198B464E, 0x68106A11, 0xDA174281, 0x1C184669, 0xC1E0C8E0
    .word 0xC1E0C8E0, 0xC1A0C8A0, 0x1C201C19, 0xC1E0C8E0, 0xC1E0C8E0
    .word 0xC1C0C8C0, 0x46681C21, 0xC1E0C8E0, 0xC1E0C8E0, 0xC160C860
    .word 0x3A203C20, 0x27013B20, 0x44BA427F, 0x45829808, 0x9B08DADA
    .word 0x428B4641, 0xB009DBC8, 0x4698BC38, 0x46AA46A1, 0xBC01BCF0
    .word 0x4700, 0x4657B5F0, 0x4645464E, 0xB089B4E0, 0x23004681
    .word 0x428B3901, 0x4688DA3B, 0x38200090, 0x46844448, 0x3301468A
    .word 0x42999308, 0x149DB2D, 0x38201C08, 0x1884464A, 0x194A4665
    .word 0x198B464E, 0x68106A11, 0xDD174281, 0x1C184669, 0xC1E0C8E0
    .word 0xC1E0C8E0, 0xC1A0C8A0, 0x1C201C19, 0xC1E0C8E0, 0xC1E0C8E0
    .word 0xC1C0C8C0, 0x46681C21, 0xC1E0C8E0, 0xC1E0C8E0, 0xC160C860
    .word 0x3A203C20, 0x27013B20, 0x44BA427F, 0x45829808, 0x9B08DADA
    .word 0x428B4641, 0xB009DBC8, 0x4698BC38, 0x46AA46A1, 0xBC01BCF0
    .word 0x4700, 0x4657B5F0, 0x4645464E, 0xB08BB4E0, 0x46889008
    .word 0x45442401, 0x90DA43, 0x44691C01, 0x9A08468A, 0x46811880
    .word 0x46690160, 0x18C09B08, 0xC1E0C8E0, 0xC12CC82C, 0xC1C0C8C0
    .word 0x34011E63, 0x2B0046A4, 0x4650DB1F, 0x90096800, 0x1C080159
    .word 0x9A083020, 0x900A1880, 0x194C464D, 0x6820188A, 0x42B09E09
    .word 0x990ADD0F, 0xC8E01C10, 0xC8E0C1E0, 0xC8A0C1E0, 0x9E0AC1A0
    .word 0x960A3E20, 0x3A203C20, 0x2B003B01, 0x159DAEB, 0x19C99F08
    .word 0x46683120, 0xC11CC81C, 0xC1E0C8E0, 0xC10CC80C, 0x45444664
    .word 0xB00BDBC2, 0x4698BC38, 0x46AA46A1, 0xBC01BCF0, 0x4700
    .word 0x4657B5F0, 0x4645464E, 0xB08BB4E0, 0x46889008, 0x45442401
    .word 0x90DA43, 0x44691C01, 0x9A08468A, 0x46811880, 0x46690160
    .word 0x18C09B08, 0xC1E0C8E0, 0xC12CC82C, 0xC1C0C8C0, 0x34011E63
    .word 0x2B0046A4, 0x4650DB1F, 0x90096800, 0x1C080159, 0x9A083020
    .word 0x900A1880, 0x194C464D, 0x6820188A, 0x42B09E09, 0x990ADA0F
    .word 0xC8E01C10, 0xC8E0C1E0, 0xC8A0C1E0, 0x9E0AC1A0, 0x960A3E20
    .word 0x3A203C20, 0x2B003B01, 0x159DAEB, 0x19C99F08, 0x46683120
    .word 0xC11CC81C, 0xC1E0C8E0, 0xC10CC80C, 0x45444664, 0xB00BDBC2
    .word 0x4698BC38, 0x46AA46A1, 0xBC01BCF0, 0x4700, 0x4657B5F0
    .word 0x4645464E, 0xB089B4E0, 0x46884682, 0x25014691, 0xDC3E4545
    .word 0x19400068, 0x45451C45, 0xE038DDFA, 0x45421C02, 0x151DA35
    .word 0x44514668, 0xC058C958, 0xC098C998, 0xC0C0C9C0, 0x32011B53
    .word 0x2B004694, 0x4648DB1A, 0x46690084, 0x68001860, 0x1589008
    .word 0x19824656, 0x680018A0, 0x42B89F08, 0x1959DD0C, 0x44510149
    .word 0xC8C41C10, 0xC8C4C1C4, 0xC844C1C4, 0x1B5BC144, 0xDAEA2B00
    .word 0x1491959, 0x46684451, 0xC18CC88C, 0xC1D0C8D0, 0xC10CC80C
    .word 0x45424662, 0x1C28DBC9, 0xF0002103, 0x1C05FFAD, 0xDCBF2800
    .word 0xBC38B009, 0x46A14698, 0xBCF046AA, 0x4700BC01, 0x4657B5F0
    .word 0x4645464E, 0xB089B4E0, 0x46884682, 0x25014691, 0xDC3E4545
    .word 0x19400068, 0x45451C45, 0xE038DDFA, 0x45421C02, 0x151DA35
    .word 0x44514668, 0xC058C958, 0xC098C998, 0xC0C0C9C0, 0x32011B53
    .word 0x2B004694, 0x4648DB1A, 0x46690084, 0x68001860, 0x1589008
    .word 0x19824656, 0x680018A0, 0x42B89F08, 0x1959DA0C, 0x44510149
    .word 0xC8C41C10, 0xC8C4C1C4, 0xC844C1C4, 0x1B5BC144, 0xDAEA2B00
    .word 0x1491959, 0x46684451, 0xC18CC88C, 0xC1D0C8D0, 0xC10CC80C
    .word 0x45424662, 0x1C28DBC9, 0xF0002103, 0x1C05FF53, 0xDCBF2800
    .word 0xBC38B009, 0x46A14698, 0xBCF046AA, 0x4700BC01
.thumb
sub_8110A48:
    push {r4-r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    mov r2, #1
    cmp r2, r6
    bge loc_8110A86
loc_8110A54:
    lsl r0, r2, #2
    add r0, r0, r4
    ldr r1, [r0]
    sub r3, r2, #1
    add r5, r2, #1
    cmp r3, #0
    blt loc_8110A7A
    lsl r0, r3, #2
    add r2, r0, r4
    b loc_8110A74
loc_8110A68:
    ldr r0, [r2]
    str r0, [r2,#4]
    sub r2, #4
    sub r3, #1
    cmp r3, #0
    blt loc_8110A7A
loc_8110A74:
    ldr r0, [r2]
    cmp r0, r1
    bcc loc_8110A68
loc_8110A7A:
    lsl r0, r3, #2
    add r0, r0, r4
    str r1, [r0,#4]
    add r2, r5, #0
    cmp r2, r6
    blt loc_8110A54
loc_8110A86:
    pop {r4-r6}
    pop {r0}
    bx r0
// end of function sub_8110A48

.thumb
sub_8110A8C:
    push {r4,r5,lr}
    sub sp, sp, #8
    ldr r0, [pc, #0x8110ae4-0x8110a90-4] // word_20078B0
    ldr r2, [pc, #0x8110ae8-0x8110a92-2] // InterruptMasterEnableRegister
    ldrh r4, [r2]
    strh r4, [r0]
    mov r5, #0
    strh r5, [r2]
    ldr r3, [pc, #0x8110aec-0x8110a9c-4] // InterruptEnableRegister
    ldrh r1, [r3]
    ldr r0, [pc, #0x8110af0-0x8110aa0-4] // =0xFF3F
    and r0, r1
    strh r0, [r3]
    strh r4, [r2]
    ldr r1, [pc, #0x8110af4-0x8110aa8-4] // SIOControlRegister
    mov r2, #0x80
    lsl r2, r2, #6
    add r0, r2, #0
    strh r0, [r1]
    ldr r0, [pc, #0x8110af8-0x8110ab2-2] // Timer3Control
    strh r5, [r0]
    add r1, #0xda
    mov r0, #0xc0
    strh r0, [r1]
    mov r4, #0
    str r4, [sp]
    ldr r1, [pc, #0x8110afc-0x8110ac0-4] // byte_2010D00
    ldr r2, [pc, #0x8110b00-0x8110ac2-2] // =0x5000266
    mov r0, sp
    bl loc_81116EC
    add r0, sp, #4
    strh r4, [r0]
    ldr r4, [pc, #0x8110b04-0x8110ace-2] // unk_2010CF8
    ldr r2, [pc, #0x8110b08-0x8110ad0-4] // =0x1000002
    add r1, r4, #0
    bl loc_81116EC
    strb r5, [r4,#0x1] // (byte_2010CF9 - 0x2010cf8)
    add sp, sp, #8
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8110AE4:    .word word_20078B0
off_8110AE8:    .word InterruptMasterEnableRegister
off_8110AEC:    .word InterruptEnableRegister
dword_8110AF0:    .word 0xFF3F
off_8110AF4:    .word SIOControlRegister
off_8110AF8:    .word Timer3Control
off_8110AFC:    .word byte_2010D00
dword_8110B00:    .word 0x5000266
off_8110B04:    .word unk_2010CF8
dword_8110B08:    .word 0x1000002
// end of function sub_8110A8C

.thumb
sub_8110B0C:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r6, [pc, #0x8110ba0-0x8110b10-4] // word_20078B0
    ldr r3, [pc, #0x8110ba4-0x8110b12-2] // InterruptMasterEnableRegister
    ldrh r2, [r3]
    mov r4, #0
    strh r4, [r3]
    ldr r5, [pc, #0x8110ba8-0x8110b1a-2] // InterruptEnableRegister
    ldrh r1, [r5]
    ldr r0, [pc, #0x8110bac-0x8110b1e-2] // =0xFF3F
    and r0, r1
    strh r0, [r5]
    strh r2, [r3]
    ldr r0, [pc, #0x8110bb0-0x8110b26-2] // SIOModeSelect_GeneralPurposeData
    strh r4, [r0]
    ldr r2, [pc, #0x8110bb4-0x8110b2a-2] // SIOControlRegister
    mov r1, #0x80
    lsl r1, r1, #6
    add r0, r1, #0
    strh r0, [r2]
    ldrh r0, [r2]
    ldr r7, [pc, #0x8110bb8-0x8110b36-2] // =0x4003
    add r1, r7, #0
    orr r0, r1
    strh r0, [r2]
    ldrh r2, [r3]
    strh r2, [r6]
    strh r4, [r3]
    ldrh r0, [r5]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r5]
    strh r2, [r3]
    ldr r0, [pc, #0x8110bbc-0x8110b4e-2] // SIOData_Normal_8bitandUARTMode_
    strh r4, [r0]
    ldr r2, [pc, #0x8110bc0-0x8110b52-2] // SIOData0_Parent__Multi_PlayerMode_
    mov r0, #0
    mov r1, #0
    str r0, [r2]
    str r1, [r2,#0x4] // (SIOData2_2ndChild__Multi_PlayerMode_ - 0x4000120)
    mov r5, #0
    str r5, [sp]
    ldr r1, [pc, #0x8110bc4-0x8110b60-4] // byte_2010D00
    ldr r2, [pc, #0x8110bc8-0x8110b62-2] // =0x5000266
    mov r0, sp
    bl loc_81116EC
    add r0, sp, #4
    strh r5, [r0]
    ldr r1, [pc, #0x8110bcc-0x8110b6e-2] // unk_2010CF8
    ldr r2, [pc, #0x8110bd0-0x8110b70-4] // =0x1000002
    bl loc_81116EC
    ldr r0, [pc, #0x8110bd4-0x8110b76-2] // byte_20078B2
    strb r4, [r0]
    ldr r0, [pc, #0x8110bd8-0x8110b7a-2] // byte_20078B3
    strb r4, [r0]
    ldr r0, [pc, #0x8110bdc-0x8110b7e-2] // byte_20078B5
    strb r4, [r0]
    ldr r0, [pc, #0x8110be0-0x8110b82-2] // byte_2010CF0
    strb r4, [r0]
    ldr r0, [pc, #0x8110be4-0x8110b86-2] // byte_2010CF4
    strb r4, [r0]
    ldr r0, [pc, #0x8110be8-0x8110b8a-2] // byte_20078B6
    strb r4, [r0]
    ldr r0, [pc, #0x8110bec-0x8110b8e-2] // word_20078B8
    strh r5, [r0]
    ldr r0, [pc, #0x8110bf0-0x8110b92-2] // word_20078BA
    strh r5, [r0]
    add sp, sp, #8
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
off_8110BA0:    .word word_20078B0
off_8110BA4:    .word InterruptMasterEnableRegister
off_8110BA8:    .word InterruptEnableRegister
dword_8110BAC:    .word 0xFF3F
off_8110BB0:    .word SIOModeSelect_GeneralPurposeData
off_8110BB4:    .word SIOControlRegister
dword_8110BB8:    .word 0x4003
off_8110BBC:    .word SIOData_Normal_8bitandUARTMode_
off_8110BC0:    .word SIOData0_Parent__Multi_PlayerMode_
off_8110BC4:    .word byte_2010D00
dword_8110BC8:    .word 0x5000266
off_8110BCC:    .word unk_2010CF8
dword_8110BD0:    .word 0x1000002
off_8110BD4:    .word byte_20078B2
off_8110BD8:    .word byte_20078B3
off_8110BDC:    .word byte_20078B5
off_8110BE0:    .word byte_2010CF0
off_8110BE4:    .word byte_2010CF4
off_8110BE8:    .word byte_20078B6
off_8110BEC:    .word word_20078B8
off_8110BF0:    .word word_20078BA
// end of function sub_8110B0C

.thumb
sub_8110BF4:
    push {lr}
    bl sub_8110B0C
    bl sub_8110A8C
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8110BF4

.thumb
sub_8110C04:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r0, [pc, #0x8110c20-0x8110c0c-4] // byte_2010D00
    ldrb r0, [r0,#0x1] // (byte_2010D01 - 0x2010d00)
    cmp r0, #4  // switch 5 cases 
    bhi def_8110C1C
    lsl r0, r0, #2
    ldr r1, [pc, #0x8110c24-0x8110c16-2] // jpt_8110C1C
    add r0, r0, r1
    ldr r0, [r0]
    mov pc, r0  // switch jump
    .byte 0, 0
off_8110C20:    .word byte_2010D00
off_8110C24:    .word jpt_8110C1C
jpt_8110C1C:    .word loc_8110C3C  // jump table for switch statement
    .word loc_8110C4C
    .word loc_8110C64
    .word loc_8110CA0
    .word loc_8110CAA
loc_8110C3C:
    bl sub_8110A8C
    ldr r1, [pc, #0x8110c48-0x8110c40-4] // byte_2010D00
    mov r0, #1
    strb r0, [r1,#0x1] // (byte_2010D01 - 0x2010d00)
    b def_8110C1C
off_8110C48:    .word byte_2010D00
loc_8110C4C:
    ldrb r0, [r4]
    cmp r0, #1
    bne def_8110C1C
    bl sub_8110B0C
    ldr r1, [pc, #0x8110c60-0x8110c56-2] // byte_2010D00
    mov r0, #2
    strb r0, [r1,#0x1] // (byte_2010D01 - 0x2010d00)
    b def_8110C1C
    .byte 0, 0
off_8110C60:    .word byte_2010D00
loc_8110C64:
    ldrb r1, [r4]
    cmp r1, #1
    beq loc_8110C74
    cmp r1, #2
    beq loc_8110C8C
    bl sub_8110D24
    b def_8110C1C
loc_8110C74:
    ldr r2, [pc, #0x8110c88-0x8110c74-4] // byte_2010D00
    ldrb r0, [r2]
    cmp r0, #0
    beq def_8110C1C
    ldrb r0, [r2,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r0, #1
    bls def_8110C1C
    strb r1, [r2,#0x10] // (byte_2010D10 - 0x2010d00)
    b def_8110C1C
    .balign 4, 0x00
off_8110C88:    .word byte_2010D00
loc_8110C8C:
    ldr r0, [pc, #0x8110c98-0x8110c8c-4] // byte_2010D00
    mov r1, #0
    strb r1, [r0,#0x1] // (byte_2010D01 - 0x2010d00)
    ldr r0, [pc, #0x8110c9c-0x8110c92-2] // SIOData_Normal_8bitandUARTMode_
    strh r1, [r0]
    b def_8110C1C
off_8110C98:    .word byte_2010D00
off_8110C9C:    .word SIOData_Normal_8bitandUARTMode_
loc_8110CA0:
    bl sub_8110D4C
    ldr r1, [pc, #0x8110cf8-0x8110ca4-4] // byte_2010D00
    mov r0, #4
    strb r0, [r1,#0x1] // (byte_2010D01 - 0x2010d00)
loc_8110CAA:
    add r0, r5, #0
    bl sub_8110D9C
    add r0, r6, #0
    bl sub_8110E84
def_8110C1C:
    mov r0, #0
    strb r0, [r4]
    ldr r1, [pc, #0x8110cf8-0x8110cba-2] // byte_2010D00
    ldrb r2, [r1,#0x2] // (byte_2010D02 - 0x2010d00)
    ldrb r0, [r1,#0x3] // (byte_2010D03 - 0x2010d00)
    lsl r0, r0, #2
    orr r2, r0
    ldrb r0, [r1]
    cmp r0, #8
    bne loc_8110CCE
    mov r0, #0x20 
    orr r2, r0
loc_8110CCE:
    ldrb r0, [r1,#0xc] // (byte_2010D0C - 0x2010d00)
    lsl r3, r0, #8
    ldrb r0, [r1,#0x11] // (byte_2010D11 - 0x2010d00)
    lsl r4, r0, #9
    ldrb r0, [r1,#0x12] // (byte_2010D12 - 0x2010d00)
    lsl r5, r0, #0x10
    ldrb r0, [r1,#0x13] // (byte_2010D13 - 0x2010d00)
    lsl r6, r0, #0x11
    ldrb r0, [r1,#0x14] // (byte_2010D14 - 0x2010d00)
    lsl r7, r0, #0x12
    ldrb r0, [r1,#0x15] // (byte_2010D15 - 0x2010d00)
    lsl r0, r0, #0x14
    mov r12, r0
    ldrb r0, [r1,#0x1] // (byte_2010D01 - 0x2010d00)
    cmp r0, #4
    bne loc_8110CFC
    mov r0, #0x40 
    orr r0, r3
    orr r0, r2
    b loc_8110D00
    .balign 4, 0x00
off_8110CF8:    .word byte_2010D00
loc_8110CFC:
    add r0, r2, #0
    orr r0, r3
loc_8110D00:
    orr r0, r4
    orr r0, r5
    orr r0, r6
    orr r0, r7
    mov r2, r12
    orr r0, r2
    add r2, r0, #0
    ldrb r0, [r1,#0x2] // (byte_2010D02 - 0x2010d00)
    cmp r0, #3
    bls loc_8110D1A
    mov r0, #0x80
    lsl r0, r0, #0xf
    orr r2, r0
loc_8110D1A:
    add r0, r2, #0
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8110C04

.thumb
sub_8110D24:
    ldr r0, [pc, #0x8110d3c-0x8110d24-4] // SIOControlRegister
    ldr r1, [r0]
    mov r0, #0xc
    and r1, r0
    ldr r2, [pc, #0x8110d40-0x8110d2c-4] // byte_2010D00
    cmp r1, #8
    bne loc_8110D44
    ldrb r0, [r2,#0x2] // (byte_2010D02 - 0x2010d00)
    cmp r0, #0
    bne loc_8110D44
    strb r1, [r2]
    b locret_8110D48
off_8110D3C:    .word SIOControlRegister
off_8110D40:    .word byte_2010D00
loc_8110D44:
    mov r0, #0
    strb r0, [r2]
locret_8110D48:
    bx lr
    .balign 4, 0x00
// end of function sub_8110D24

.thumb
sub_8110D4C:
    push {r4,lr}
    ldr r0, [pc, #0x8110d84-0x8110d4e-2] // byte_2010D00
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_8110D7C
    ldr r1, [pc, #0x8110d88-0x8110d56-2] // Timer3Counter_Reload
    ldr r2, [pc, #0x8110d8c-0x8110d58-4] // =0xFF7C
    add r0, r2, #0
    strh r0, [r1]
    add r1, #2
    mov r0, #0x41 
    strh r0, [r1]
    ldr r0, [pc, #0x8110d90-0x8110d64-4] // word_20078B0
    ldr r2, [pc, #0x8110d94-0x8110d66-2] // InterruptMasterEnableRegister
    ldrh r4, [r2]
    strh r4, [r0]
    mov r0, #0
    strh r0, [r2]
    ldr r3, [pc, #0x8110d98-0x8110d70-4] // InterruptEnableRegister
    ldrh r0, [r3]
    mov r1, #0x40 
    orr r0, r1
    strh r0, [r3]
    strh r4, [r2]
loc_8110D7C:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8110D84:    .word byte_2010D00
off_8110D88:    .word Timer3Counter_Reload
dword_8110D8C:    .word 0xFF7C
off_8110D90:    .word word_20078B0
off_8110D94:    .word InterruptMasterEnableRegister
off_8110D98:    .word InterruptEnableRegister
// end of function sub_8110D4C

.thumb
sub_8110D9C:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r3, r0, #0
    ldr r2, [pc, #0x8110e14-0x8110da8-4] // word_20078B0
    ldr r1, [pc, #0x8110e18-0x8110daa-2] // InterruptMasterEnableRegister
    ldrh r0, [r1]
    strh r0, [r2]
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x8110e1c-0x8110db4-4] // byte_2010D00
    ldr r4, [pc, #0x8110e20-0x8110db6-2] // =0x211
    add r0, r1, r4
    ldrb r4, [r0]
    mov r10, r2
    add r6, r1, #0
    cmp r4, #0x1d
    bhi loc_8110E2C
    mov r1, #0x84
    lsl r1, r1, #2
    add r0, r6, r1
    ldrb r0, [r0]
    add r0, r4, r0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_8110DDC
    sub r0, #0x1e
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
loc_8110DDC:
    mov r2, #0
    ldr r4, [pc, #0x8110e24-0x8110dde-2] // word_20078B8
    mov r8, r4
    ldr r1, [pc, #0x8110e28-0x8110de2-2] // byte_2010CF0
    mov r9, r1
    lsl r5, r0, #1
    mov r0, #0x30 
    add r0, r0, r6
    mov r12, r0
    mov r7, #0
loc_8110DF0:
    ldrh r0, [r4]
    ldrh r1, [r3]
    orr r0, r1
    strh r0, [r4]
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #2
    add r0, r5, r0
    add r0, r12
    strh r1, [r0]
    strh r7, [r3]
    add r3, #2
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_8110DF0
    b loc_8110E3C
off_8110E14:    .word word_20078B0
off_8110E18:    .word InterruptMasterEnableRegister
off_8110E1C:    .word byte_2010D00
off_8110E20:    .word 0x211
off_8110E24:    .word word_20078B8
off_8110E28:    .word byte_2010CF0
loc_8110E2C:
    ldrb r1, [r6,#0x14] // (byte_2010D14 - 0x2010d00)
    mov r0, #1
    orr r0, r1
    strb r0, [r6,#0x14] // (byte_2010D14 - 0x2010d00)
    ldr r1, [pc, #0x8110e74-0x8110e34-4] // word_20078B8
    mov r8, r1
    ldr r2, [pc, #0x8110e78-0x8110e38-4] // byte_2010CF0
    mov r9, r2
loc_8110E3C:
    mov r4, r8
    ldrh r0, [r4]
    cmp r0, #0
    beq loc_8110E52
    ldr r1, [pc, #0x8110e7c-0x8110e44-4] // =0x211
    add r0, r6, r1
    ldrb r1, [r0]
    add r1, #1
    mov r2, #0
    strb r1, [r0]
    strh r2, [r4]
loc_8110E52:
    ldr r1, [pc, #0x8110e80-0x8110e52-2] // InterruptMasterEnableRegister
    mov r2, r10
    ldrh r0, [r2]
    strh r0, [r1]
    ldr r4, [pc, #0x8110e7c-0x8110e5a-2] // =0x211
    add r0, r6, r4
    ldrb r0, [r0]
    mov r1, r9
    strb r0, [r1]
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8110E74:    .word word_20078B8
off_8110E78:    .word byte_2010CF0
off_8110E7C:    .word 0x211
off_8110E80:    .word InterruptMasterEnableRegister
// end of function sub_8110D9C

.thumb
sub_8110E84:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    mov r12, r0
    ldr r2, [pc, #0x8110ee4-0x8110e90-4] // word_20078B0
    ldr r1, [pc, #0x8110ee8-0x8110e92-2] // InterruptMasterEnableRegister
    ldrh r0, [r1]
    strh r0, [r2]
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x8110eec-0x8110e9c-4] // byte_2010D00
    ldr r3, [pc, #0x8110ef0-0x8110e9e-2] // =0x995
    add r0, r1, r3
    ldrb r0, [r0]
    add r7, r1, #0
    cmp r0, #0
    bne loc_8110EF4
    mov r3, #0
    mov r8, r7
    ldrb r6, [r7,#0x3] // (byte_2010D03 - 0x2010d00)
loc_8110EB0:
    mov r2, #0
    add r5, r3, #1
    cmp r2, r6
    bcs loc_8110ED4
    lsl r0, r3, #3
    mov r1, r12
    add r3, r0, r1
    mov r4, #0
    mov r0, r8
    ldrb r1, [r0,#0x3] // (byte_2010D03 - 0x2010d00)
loc_8110EC4:
    lsl r0, r2, #1
    add r0, r0, r3
    strh r4, [r0]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, r1
    bcc loc_8110EC4
loc_8110ED4:
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8110EB0
    mov r0, #1
    strb r0, [r7,#0xc] // (byte_2010D0C - 0x2010d00)
    b loc_8110F6C
    .balign 4, 0x00
off_8110EE4:    .word word_20078B0
off_8110EE8:    .word InterruptMasterEnableRegister
off_8110EEC:    .word byte_2010D00
off_8110EF0:    .word 0x995
loc_8110EF4:
    mov r3, #0
    ldrb r1, [r7,#0x3] // (byte_2010D03 - 0x2010d00)
    mov r9, r1
    mov r2, #0x85
    lsl r2, r2, #2
    add r2, r2, r7
    mov r8, r2
    mov r10, r7
loc_8110F04:
    mov r2, #0
    add r5, r3, #1
    cmp r2, r9
    bcs loc_8110F40
    lsl r0, r3, #3
    mov r1, r12
    add r6, r0, r1
    ldr r0, [pc, #0x8110f84-0x8110f12-2] // byte_2011694
    ldrb r1, [r0]
    lsl r1, r1, #1
    mov r0, r10
    ldrb r4, [r0,#0x3] // (byte_2010D03 - 0x2010d00)
    lsl r0, r3, #4
    sub r0, r0, r3
    lsl r0, r0, #2
    add r3, r1, r0
loc_8110F24:
    lsl r1, r2, #1
    add r1, r1, r6
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #5
    add r0, r3, r0
    add r0, r8
    ldrh r0, [r0]
    strh r0, [r1]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, r4
    bcc loc_8110F24
loc_8110F40:
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8110F04
    add r2, r7, #0
    ldr r3, [pc, #0x8110f88-0x8110f4a-2] // =0x995
    add r1, r2, r3
    ldrb r0, [r1]
    sub r0, #1
    mov r3, #0
    strb r0, [r1]
    ldr r0, [pc, #0x8110f8c-0x8110f56-2] // =0x994
    add r2, r2, r0
    ldrb r0, [r2]
    add r0, #1
    strb r0, [r2]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_8110F6A
    strb r3, [r2]
loc_8110F6A:
    strb r3, [r7,#0xc] // (byte_2010D0C - 0x2010d00)
loc_8110F6C:
    ldr r1, [pc, #0x8110f90-0x8110f6c-4] // InterruptMasterEnableRegister
    ldr r2, [pc, #0x8110f94-0x8110f6e-2] // word_20078B0
    ldrh r0, [r2]
    strh r0, [r1]
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8110F84:    .word byte_2011694
off_8110F88:    .word 0x995
off_8110F8C:    .word 0x994
off_8110F90:    .word InterruptMasterEnableRegister
off_8110F94:    .word word_20078B0
// end of function sub_8110E84

.thumb
sub_8110F98:
    push {r4,lr}
    ldr r4, [pc, #0x8110fc0-0x8110f9a-2] // byte_2010D00
    ldrb r3, [r4]
    cmp r3, #0
    beq loc_8111004
    ldrb r0, [r4,#0x1] // (byte_2010D01 - 0x2010d00)
    cmp r0, #2
    beq loc_8110FCC
    cmp r0, #4
    bne loc_8111030
    ldrb r0, [r4,#0xd] // (byte_2010D0D - 0x2010d00)
    cmp r0, #8
    bhi loc_8110FC4
    ldrb r0, [r4,#0x12] // (byte_2010D12 - 0x2010d00)
    cmp r0, #0
    bne loc_8110FCC
    mov r0, #1
    strb r0, [r4,#0x15] // (byte_2010D15 - 0x2010d00)
    b loc_8111030
    .byte 0, 0
off_8110FC0:    .word byte_2010D00
loc_8110FC4:
    ldrb r0, [r4,#0x15] // (byte_2010D15 - 0x2010d00)
    cmp r0, #0
    bne loc_8111030
    strb r0, [r4,#0xd] // (byte_2010D0D - 0x2010d00)
loc_8110FCC:
    bl sub_81110EC
    ldr r0, [pc, #0x8110ff8-0x8110fd0-4] // byte_2010CFC
    ldrb r2, [r0]
    cmp r2, #2
    bne loc_8111030
    ldr r1, [pc, #0x8110ffc-0x8110fd8-4] // byte_20078B2
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #6
    bls loc_8111030
    ldr r0, [pc, #0x8111000-0x8110fe8-4] // byte_2010D00
    mov r1, #0
    strb r2, [r0,#0x15] // (byte_2010D15 - 0x2010d00)
    strb r1, [r0,#0x2] // (byte_2010D02 - 0x2010d00)
    strb r1, [r0,#0x3] // (byte_2010D03 - 0x2010d00)
    strb r1, [r0,#0x11] // (byte_2010D11 - 0x2010d00)
    b loc_8111030
    .balign 4, 0x00
off_8110FF8:    .word byte_2010CFC
off_8110FFC:    .word byte_20078B2
off_8111000:    .word byte_2010D00
loc_8111004:
    ldrb r2, [r4,#0x1] // (byte_2010D01 - 0x2010d00)
    cmp r2, #4
    beq loc_811100E
    cmp r2, #2
    bne loc_8111030
loc_811100E:
    ldr r1, [pc, #0x8111038-0x811100e-2] // byte_20078B2
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #6
    bls loc_8111030
    cmp r2, #4
    bne loc_8111026
    mov r0, #2
    strb r0, [r4,#0x15] // (byte_2010D15 - 0x2010d00)
loc_8111026:
    cmp r2, #2
    bne loc_8111030
    strb r3, [r4,#0x2] // (byte_2010D02 - 0x2010d00)
    strb r3, [r4,#0x3] // (byte_2010D03 - 0x2010d00)
    strb r3, [r4,#0x11] // (byte_2010D11 - 0x2010d00)
loc_8111030:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8111038:    .word byte_20078B2
// end of function sub_8110F98

.thumb
sub_811103C:
    push {lr}
    bl sub_8111554
    bl sub_81110EC
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_811103C

.thumb
sub_811104C:
    push {r4,lr}
    ldr r0, [pc, #0x8111074-0x811104e-2] // SIOControlRegister
    ldr r0, [r0]
    ldr r4, [pc, #0x8111078-0x8111052-2] // byte_2010D00
    lsl r0, r0, #0x1a
    lsr r0, r0, #0x1e
    strb r0, [r4,#0x2] // (byte_2010D02 - 0x2010d00)
    ldrb r0, [r4,#0x1] // (byte_2010D01 - 0x2010d00)
    cmp r0, #2
    beq loc_811107C
    cmp r0, #4
    bne loc_81110B4
    bl sub_81112C0
    bl sub_811149C
    bl sub_8111584
    b loc_81110B4
    .balign 4, 0x00
off_8111074:    .word SIOControlRegister
off_8111078:    .word byte_2010D00
loc_811107C:
    bl sub_81110FC
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_811109C
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_8111096
    mov r0, #3
    strb r0, [r4,#0x1] // (byte_2010D01 - 0x2010d00)
    mov r0, #8
    strb r0, [r4,#0xd] // (byte_2010D0D - 0x2010d00)
    b loc_81110B4
loc_8111096:
    mov r0, #4
    strb r0, [r4,#0x1] // (byte_2010D01 - 0x2010d00)
    b loc_81110B4
loc_811109C:
    mov r2, #0
    add r4, #0x2a 
    mov r3, #0xff
loc_81110A2:
    add r0, r2, r4
    ldrb r1, [r0]
    orr r1, r3
    strb r1, [r0]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_81110A2
loc_81110B4:
    ldr r3, [pc, #0x81110dc-0x81110b4-4] // byte_2010D00
    ldrb r0, [r3,#0xd] // (byte_2010D0D - 0x2010d00)
    add r0, #1
    mov r2, #0
    strb r0, [r3,#0xd] // (byte_2010D0D - 0x2010d00)
    ldr r1, [pc, #0x81110e0-0x81110be-2] // byte_20078B2
    strb r2, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #8
    bne loc_81110D4
    ldr r0, [pc, #0x81110e4-0x81110ca-2] // byte_2010CF4
    ldr r2, [pc, #0x81110e8-0x81110cc-4] // =0x995
    add r1, r3, r2
    ldrb r1, [r1]
    strb r1, [r0]
loc_81110D4:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81110DC:    .word byte_2010D00
off_81110E0:    .word byte_20078B2
off_81110E4:    .word byte_2010CF4
off_81110E8:    .word 0x995
// end of function sub_811104C

.thumb
sub_81110EC:
    ldr r0, [pc, #0x81110f8-0x81110ec-4] // SIOControlRegister
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
    bx lr
off_81110F8:    .word SIOControlRegister
// end of function sub_81110EC

.thumb
sub_81110FC:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    mov r0, #0
    mov r9, r0
    ldr r1, [pc, #0x811112c-0x811110a-2] // =0xFFFF
    mov r12, r1
    ldr r0, [pc, #0x8111130-0x811110e-2] // byte_2010CFC
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_811111C
    cmp r0, #2
    beq loc_811111C
    b loc_811126C
loc_811111C:
    ldr r0, [pc, #0x8111134-0x811111c-4] // byte_2010D00
    ldrb r1, [r0,#0x10] // (byte_2010D10 - 0x2010d00)
    mov r10, r0
    cmp r1, #1
    bne loc_8111150
    ldr r1, [pc, #0x8111138-0x8111126-2] // SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x811113c-0x8111128-4] // =0x8FFF
    b loc_8111154
dword_811112C:    .word 0xFFFF
off_8111130:    .word byte_2010CFC
off_8111134:    .word byte_2010D00
off_8111138:    .word SIOData_Normal_8bitandUARTMode_
dword_811113C:    .word 0x8FFF
loc_8111140:
    mov r0, r8
    add r0, #0x2a 
    add r0, r4, r0
    mov r1, #0xff
    strb r1, [r0]
    mov r0, #0
    mov r9, r0
    b loc_8111212
loc_8111150:
    ldr r1, [pc, #0x81111c0-0x8111150-4] // SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x81111c4-0x8111152-2] // =0xA3D0
loc_8111154:
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    mov r1, r10
    strb r0, [r1,#0x10] // (byte_2010D10 - 0x2010d00)
    mov r4, #0
    mov r2, r10
    add r2, #4
    mov r5, r10
    add r5, #0x2a 
    mov r3, #0xff
loc_811116A:
    add r0, r4, r5
    ldrb r1, [r0]
    orr r1, r3
    strb r1, [r0]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_811116A
    ldr r0, [pc, #0x81111c8-0x811117c-4] // SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (SIOData2_2ndChild__Multi_PlayerMode_ - 0x4000120)
    ldr r0, [r0]
    str r0, [r2]
    str r1, [r2,#0x4] // (dword_2010D08 - 0x2010d04)
    mov r4, #0
    sub r0, r2, #4
    mov r8, r0
    add r5, r2, #0
    ldr r7, [pc, #0x81111cc-0x811118e-2] // =0xFFC6
    mov r6, r8
    add r6, #0x2a 
loc_8111194:
    lsl r2, r4, #1
    add r0, r2, r5
    ldrh r3, [r0]
    mov r0, #4
    neg r0, r0
    and r0, r3
    ldr r1, [pc, #0x81111c4-0x81111a0-4] // =0xA3D0
    cmp r0, r1
    beq loc_81111B2
    add r0, r3, #0
    ldr r1, [pc, #0x81111d0-0x81111a8-4] // =0x8FFF
    cmp r0, r1
    beq loc_81111B2
    cmp r0, r7
    bne loc_81111F6
loc_81111B2:
    add r0, r2, r5
    ldrh r0, [r0]
    cmp r0, r7
    bne loc_81111D4
    add r1, r4, r6
    mov r0, #2
    b loc_81111D8
off_81111C0:    .word SIOData_Normal_8bitandUARTMode_
dword_81111C4:    .word 0xA3D0
off_81111C8:    .word SIOData0_Parent__Multi_PlayerMode_
dword_81111CC:    .word 0xFFC6
dword_81111D0:    .word 0x8FFF
loc_81111D4:
    add r1, r4, r6
    mov r0, #1
loc_81111D8:
    strb r0, [r1]
    mov r0, r9
    add r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r9, r0
    add r0, r2, r5
    ldrh r1, [r0]
    cmp r12, r1
    bls loc_8111208
    cmp r1, #0
    beq loc_8111208
    add r0, r1, #0
    mov r12, r0
    b loc_8111208
loc_81111F6:
    ldr r2, [pc, #0x8111234-0x81111f6-2] // =0xFFFF
    cmp r0, r2
    bne loc_8111140
    mov r0, r8
    ldrb r0, [r0,#0x2] // (byte_2010D02 - 0x2010d00)
    cmp r4, r0
    bne loc_8111208
    mov r1, #0
    mov r9, r1
loc_8111208:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8111194
loc_8111212:
    mov r0, r9
    mov r2, r10
    strb r0, [r2,#0x3] // (byte_2010D03 - 0x2010d00)
    mov r0, r9
    cmp r0, #1
    bls loc_8111256
    ldr r1, [pc, #0x8111238-0x811121e-2] // byte_20078B5
    ldrb r1, [r1]
    cmp r0, r1
    bne loc_8111240
    ldrh r1, [r2,#0x4] // (dword_2010D04 - 0x2010d00)
    ldr r0, [pc, #0x811123c-0x8111228-4] // =0x8FFF
    cmp r1, r0
    bne loc_8111240
    mov r0, #1
    b loc_81112A4
    .balign 4, 0x00
dword_8111234:    .word 0xFFFF
off_8111238:    .word byte_20078B5
dword_811123C:    .word 0x8FFF
loc_8111240:
    mov r2, r10
    ldrb r0, [r2,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r0, #1
    bls loc_8111256
    mov r0, #3
    mov r1, r12
    and r1, r0
    mov r12, r1
    mov r0, r12
    add r0, #1
    b loc_811125A
loc_8111256:
    mov r0, #0
    mov r2, r10
loc_811125A:
    strb r0, [r2,#0x11] // (byte_2010D11 - 0x2010d00)
    mov r1, r10
    ldrb r0, [r1,#0x3] // (byte_2010D03 - 0x2010d00)
    ldr r2, [pc, #0x8111268-0x8111260-4] // byte_20078B5
    strb r0, [r2]
    b loc_81112A2
    .balign 4, 0x00
off_8111268:    .word byte_20078B5
loc_811126C:
    ldr r0, [pc, #0x811127c-0x811126c-4] // byte_2010D00
    ldrb r1, [r0,#0x10] // (byte_2010D10 - 0x2010d00)
    mov r10, r0
    cmp r1, #1
    bne loc_8111288
    ldr r1, [pc, #0x8111280-0x8111276-2] // SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x8111284-0x8111278-4] // =0x8FFF
    b loc_811128C
off_811127C:    .word byte_2010D00
off_8111280:    .word SIOData_Normal_8bitandUARTMode_
dword_8111284:    .word 0x8FFF
loc_8111288:
    ldr r1, [pc, #0x81112b4-0x8111288-4] // SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x81112b8-0x811128a-2] // =0xA3D0
loc_811128C:
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    mov r1, r10
    strb r0, [r1,#0x10] // (byte_2010D10 - 0x2010d00)
    ldr r0, [pc, #0x81112bc-0x8111296-2] // SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (SIOData2_2ndChild__Multi_PlayerMode_ - 0x4000120)
    ldr r0, [r0]
    mov r2, r10
    str r0, [r2,#0x4] // (dword_2010D04 - 0x2010d00)
    str r1, [r2,#0x8] // (dword_2010D08 - 0x2010d00)
loc_81112A2:
    mov r0, #0
loc_81112A4:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
off_81112B4:    .word SIOData_Normal_8bitandUARTMode_
dword_81112B8:    .word 0xA3D0
off_81112BC:    .word SIOData0_Parent__Multi_PlayerMode_
// end of function sub_81110FC

.thumb
sub_81112C0:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    sub sp, sp, #8
    ldr r0, [pc, #0x811133c-0x81112ca-2] // SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (SIOData2_2ndChild__Multi_PlayerMode_ - 0x4000120)
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp,#4]
    mov r4, #0
    ldr r5, [pc, #0x8111340-0x81112d6-2] // byte_2010D29
loc_81112D8:
    lsl r0, r4, #1
    add r0, sp
    ldrh r0, [r0]
    ldrb r2, [r5]
    add r1, r4, #0
    bl sub_8034E74
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81112D8
    ldr r0, [pc, #0x8111344-0x81112f0-4] // byte_2010D00
    add r6, r0, #0
    add r0, #0x28 
    ldrb r0, [r0]
    add r3, r6, #0
    cmp r0, #0
    bne loc_8111380
    mov r4, #0
    ldr r0, [pc, #0x8111348-0x8111300-4] // byte_20078B6
    mov r9, r0
    ldrb r1, [r3,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r4, r1
    bcs loc_8111374
    add r5, r3, #0
    ldr r2, [pc, #0x811134c-0x811130c-4] // =0xFFC6
    mov r8, r2
    mov r7, #0x20 
    add r7, r7, r3
    mov r12, r7
loc_8111316:
    add r0, r5, #0
    add r0, #0x2a 
    add r0, r4, r0
    ldrb r2, [r0]
    cmp r2, #1
    bne loc_8111350
    lsl r0, r4, #1
    mov r7, sp
    add r1, r7, r0
    ldrh r0, [r6,#0x16] // (word_2010D16 - 0x2010d00)
    ldrh r1, [r1]
    cmp r0, r1
    beq loc_8111366
    mov r1, r9
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_8111366
    strb r2, [r5,#0x13] // (byte_2010D13 - 0x2010d00)
    b loc_8111366
off_811133C:    .word SIOData0_Parent__Multi_PlayerMode_
off_8111340:    .word byte_2010D29
off_8111344:    .word byte_2010D00
off_8111348:    .word byte_20078B6
dword_811134C:    .word 0xFFC6
loc_8111350:
    cmp r2, #2
    bne loc_8111366
    lsl r1, r4, #1
    mov r2, sp
    add r0, r2, r1
    ldrh r0, [r0]
    cmp r0, r8
    bne loc_8111366
    add r1, r12
    mov r0, #0
    strh r0, [r1]
loc_8111366:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r6, r3, #0
    ldrb r7, [r3,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r4, r7
    bcc loc_8111316
loc_8111374:
    mov r0, #0
    strh r0, [r3,#0x16] // (word_2010D16 - 0x2010d00)
    mov r0, #1
    mov r1, r9
    strb r0, [r1]
    b loc_8111484
loc_8111380:
    ldr r2, [pc, #0x81113f4-0x8111380-4] // =0x994
    add r1, r3, r2
    ldr r7, [pc, #0x81113f8-0x8111384-4] // =0x995
    add r0, r3, r7
    ldrb r2, [r0]
    ldrb r1, [r1]
    add r0, r2, r1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_811139C
    sub r0, #0x1e
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
loc_811139C:
    cmp r2, #0x1d
    bhi loc_8111454
    mov r4, #0
    ldrb r1, [r3,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r4, r1
    bcs loc_811145C
    mov r12, r3
    lsl r7, r0, #1
    mov r2, #0x85
    lsl r2, r2, #2
    add r2, r2, r3
    mov r8, r2
    ldr r6, [pc, #0x81113fc-0x81113b4-4] // word_20078BA
    add r5, r3, #0
    add r5, #0x20 
loc_81113BA:
    mov r0, r12
    add r0, #0x2a 
    add r0, r4, r0
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8111400
    lsl r0, r4, #1
    add r0, sp
    ldrh r2, [r0]
    ldrh r1, [r3,#0x16] // (word_2010D16 - 0x2010d00)
    add r0, r2, r1
    strh r0, [r3,#0x16] // (word_2010D16 - 0x2010d00)
    ldrh r0, [r6]
    orr r0, r2
    strh r0, [r6]
    add r0, r3, #0
    add r0, #0x29 
    ldrb r0, [r0]
    lsl r1, r0, #4
    sub r1, r1, r0
    lsl r1, r1, #2
    add r1, r7, r1
    lsl r0, r4, #4
    sub r0, r0, r4
    lsl r0, r0, #5
    add r1, r1, r0
    add r1, r8
    strh r2, [r1]
    b loc_8111444
off_81113F4:    .word 0x994
off_81113F8:    .word 0x995
off_81113FC:    .word word_20078BA
loc_8111400:
    cmp r0, #2
    bne loc_8111444
    mov r0, r12
    add r0, #0x28 
    ldrb r0, [r0]
    cmp r0, #4
    bne loc_811141C
    lsl r0, r4, #1
    mov r1, r12
    add r1, #0x18
    add r1, r0, r1
    add r0, sp
    ldrh r0, [r0]
    b loc_8111442
loc_811141C:
    cmp r0, #3
    bne loc_8111432
    lsl r1, r4, #1
    add r2, r1, r5
    ldrh r0, [r2]
    add r1, sp
    add r0, #1
    ldrh r1, [r1]
    add r0, r0, r1
    strh r0, [r2]
    b loc_8111444
loc_8111432:
    cmp r0, #5
    bne loc_8111444
    lsl r0, r4, #1
    add r1, r0, r5
    add r0, sp
    ldrh r0, [r0]
    ldrh r2, [r1]
    add r0, r0, r2
loc_8111442:
    strh r0, [r1]
loc_8111444:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    mov r0, r12
    ldrb r0, [r0,#0x3] // (byte_2010D03 - 0x2010d00)
    cmp r4, r0
    bcc loc_81113BA
    b loc_811145C
loc_8111454:
    ldrb r1, [r3,#0x14] // (byte_2010D14 - 0x2010d00)
    mov r0, #2
    orr r0, r1
    strb r0, [r3,#0x14] // (byte_2010D14 - 0x2010d00)
loc_811145C:
    add r1, r3, #0
    add r1, #0x29 
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #8
    bne loc_8111484
    ldr r2, [pc, #0x8111494-0x811146e-2] // word_20078BA
    ldrh r0, [r2]
    cmp r0, #0
    beq loc_8111484
    ldr r1, [pc, #0x8111498-0x8111476-2] // =0x995
    add r0, r3, r1
    ldrb r1, [r0]
    add r1, #1
    strb r1, [r0]
    mov r0, #0
    strh r0, [r2]
loc_8111484:
    add sp, sp, #8
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8111494:    .word word_20078BA
off_8111498:    .word 0x995
// end of function sub_81112C0

.thumb
sub_811149C:
    ldr r1, [pc, #0x81114dc-0x811149c-4] // byte_2010D00
    add r0, r1, #0
    add r0, #0x28 
    ldrb r0, [r0]
    mov r12, r1
    cmp r0, #8
    bne loc_81114F0
    ldr r1, [pc, #0x81114e0-0x81114aa-2] // SIOData_Normal_8bitandUARTMode_
    mov r2, r12
    ldrh r0, [r2,#0x16] // (word_2010D16 - 0x2010d00)
    strh r0, [r1]
    ldr r1, [pc, #0x81114e4-0x81114b2-2] // byte_20078B3
    ldrb r2, [r1]
    cmp r2, #0
    bne loc_81114EC
    ldr r1, [pc, #0x81114e8-0x81114ba-2] // =0x211
    add r1, r12
    ldrb r0, [r1]
    sub r0, #1
    strb r0, [r1]
    mov r1, #0x84
    lsl r1, r1, #2
    add r1, r12
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls locret_811154E
    strb r2, [r1]
    b locret_811154E
off_81114DC:    .word byte_2010D00
off_81114E0:    .word SIOData_Normal_8bitandUARTMode_
off_81114E4:    .word byte_20078B3
off_81114E8:    .word 0x211
loc_81114EC:
    mov r0, #0
    b loc_811154C
loc_81114F0:
    ldr r1, [pc, #0x8111514-0x81114f0-4] // byte_20078B3
    cmp r0, #0
    bne loc_8111504
    ldr r0, [pc, #0x8111518-0x81114f6-2] // =0x211
    add r0, r12
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8111504
    mov r0, #1
    strb r0, [r1]
loc_8111504:
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_8111520
    ldr r1, [pc, #0x811151c-0x811150a-2] // SIOData_Normal_8bitandUARTMode_
    mov r0, #0
    strh r0, [r1]
    b loc_8111544
    .balign 4, 0x00
off_8111514:    .word byte_20078B3
off_8111518:    .word 0x211
off_811151C:    .word SIOData_Normal_8bitandUARTMode_
loc_8111520:
    ldr r3, [pc, #0x8111550-0x8111520-4] // SIOData_Normal_8bitandUARTMode_
    mov r0, #0x84
    lsl r0, r0, #2
    add r0, r12
    ldrb r1, [r0]
    lsl r1, r1, #1
    mov r0, r12
    add r0, #0x28 
    ldrb r2, [r0]
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #2
    add r1, r1, r0
    mov r0, r12
    add r0, #0x30 
    add r1, r1, r0
    ldrh r0, [r1]
    strh r0, [r3]
loc_8111544:
    mov r1, r12
    add r1, #0x28 
    ldrb r0, [r1]
    add r0, #1
loc_811154C:
    strb r0, [r1]
locret_811154E:
    bx lr
off_8111550:    .word SIOData_Normal_8bitandUARTMode_
// end of function sub_811149C

.thumb
sub_8111554:
    ldr r0, [pc, #0x8111570-0x8111554-4] // byte_2010D00
    ldrb r0, [r0]
    cmp r0, #0
    beq locret_811156E
    ldr r2, [pc, #0x8111574-0x811155c-4] // Timer3Control
    ldrh r1, [r2]
    ldr r0, [pc, #0x8111578-0x8111560-4] // =0xFF7F
    and r0, r1
    strh r0, [r2]
    ldr r1, [pc, #0x811157c-0x8111566-2] // Timer3Counter_Reload
    ldr r2, [pc, #0x8111580-0x8111568-4] // =0xFF7C
    add r0, r2, #0
    strh r0, [r1]
locret_811156E:
    bx lr
off_8111570:    .word byte_2010D00
off_8111574:    .word Timer3Control
dword_8111578:    .word 0xFF7F
off_811157C:    .word Timer3Counter_Reload
dword_8111580:    .word 0xFF7C
// end of function sub_8111554

.thumb
sub_8111584:
    ldr r1, [pc, #0x811159c-0x8111584-4] // byte_2010D00
    add r2, r1, #0
    add r2, #0x29 
    ldrb r0, [r2]
    cmp r0, #8
    bne loc_81115A0
    add r1, #0x28 
    mov r0, #0
    strb r0, [r1]
    strb r0, [r2]
    b locret_81115B0
    .balign 4, 0x00
off_811159C:    .word byte_2010D00
loc_81115A0:
    ldrb r0, [r1]
    cmp r0, #0
    beq locret_81115B0
    ldr r0, [pc, #0x81115b4-0x81115a6-2] // Timer3Control
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
locret_81115B0:
    bx lr
    .balign 4, 0x00
off_81115B4:    .word Timer3Control
// end of function sub_8111584

.thumb
sub_81115B8:
    push {r4,r5,lr}
    ldr r1, [pc, #0x81115fc-0x81115ba-2] // byte_2010D00
    ldr r2, [pc, #0x8111600-0x81115bc-4] // =0x211
    add r0, r1, r2
    mov r2, #0
    strb r2, [r0]
    mov r3, #0x84
    lsl r3, r3, #2
    add r0, r1, r3
    strb r2, [r0]
    add r5, r1, #0
    add r5, #0x30 
    ldr r4, [pc, #0x8111604-0x81115d0-4] // =0xEFFF
loc_81115D2:
    mov r3, #0
    lsl r0, r2, #4
    add r1, r2, #1
    sub r0, r0, r2
    lsl r2, r0, #2
loc_81115DC:
    lsl r0, r3, #1
    add r0, r0, r2
    add r0, r0, r5
    strh r4, [r0]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0x1d
    bls loc_81115DC
    lsl r0, r1, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_81115D2
    pop {r4,r5}
    pop {r0}
    bx r0
off_81115FC:    .word byte_2010D00
off_8111600:    .word 0x211
dword_8111604:    .word 0xEFFF
// end of function sub_81115B8

.thumb
sub_8111608:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8111664-0x811160a-2] // byte_2010D00
    ldr r2, [pc, #0x8111668-0x811160c-4] // =0x995
    add r0, r1, r2
    mov r2, #0
    strb r2, [r0]
    ldr r3, [pc, #0x811166c-0x8111614-4] // =0x994
    add r0, r1, r3
    strb r2, [r0]
    mov r3, #0
    mov r0, #0x85
    lsl r0, r0, #2
    add r7, r1, r0
    ldr r6, [pc, #0x8111670-0x8111622-2] // =0xEFFF
loc_8111624:
    mov r2, #0
    lsl r0, r3, #4
    add r5, r3, #1
    sub r0, r0, r3
    lsl r4, r0, #5
loc_811162E:
    mov r3, #0
    lsl r0, r2, #4
    add r1, r2, #1
    sub r0, r0, r2
    lsl r2, r0, #2
loc_8111638:
    lsl r0, r3, #1
    add r0, r0, r2
    add r0, r0, r4
    add r0, r0, r7
    strh r6, [r0]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0x1d
    bls loc_8111638
    lsl r0, r1, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_811162E
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_8111624
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8111664:    .word byte_2010D00
off_8111668:    .word 0x995
off_811166C:    .word 0x994
dword_8111670:    .word 0xEFFF
// end of function sub_8111608

.thumb
sub_8111674:
    ldr r0, [pc, #0x811167c-0x8111674-4] // byte_2010D00
    ldrb r0, [r0,#0x1] // (byte_2010D01 - 0x2010d00)
    bx lr
    .balign 4, 0x00
off_811167C:    .word byte_2010D00
// end of function sub_8111674

    ldr r0, [pc, #0x8111688-0x8111680-4] // byte_2010D00
    add r0, #0x29 
    ldrb r0, [r0]
    bx lr
off_8111688:    .word byte_2010D00
.thumb
sub_811168C:
    ldr r1, [pc, #0x8111694-0x811168c-4] // byte_2010CFC
    strb r0, [r1]
    bx lr
    .balign 4, 0x00
off_8111694:    .word byte_2010CFC
// end of function sub_811168C

.thumb
sub_8111698:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r1, [pc, #0x81116a8-0x811169c-4] // byte_2010D00
    add r1, #0x2a 
    add r0, r0, r1
    ldrb r0, [r0]
    bx lr
    .balign 4, 0x00
off_81116A8:    .word byte_2010D00
// end of function sub_8111698

.thumb
sub_81116AC:
    ldr r0, [pc, #0x81116b4-0x81116ac-4] // byte_2010CF0
    ldrb r0, [r0]
    bx lr
    .balign 4, 0x00
off_81116B4:    .word byte_2010CF0
// end of function sub_81116AC

.thumb
sub_81116B8:
    ldr r0, [pc, #0x81116c0-0x81116b8-4] // byte_2010CF4
    ldrb r0, [r0]
    bx lr
    .byte 0, 0
off_81116C0:    .word byte_2010CF4
// end of function sub_81116B8

    ldr r0, [pc, #0x81116d8-0x81116c4-4] // byte_2010CF0
    ldrb r0, [r0]
    cmp r0, #5
    bhi loc_81116E0
    ldr r0, [pc, #0x81116dc-0x81116cc-4] // byte_2010CF4
    ldrb r0, [r0]
    cmp r0, #5
    bhi loc_81116E0
    mov r0, #0
    b locret_81116E2
off_81116D8:    .word byte_2010CF0
off_81116DC:    .word byte_2010CF4
loc_81116E0:
    mov r0, #1
locret_81116E2:
    bx lr
.thumb
sub_81116E4:
    svc 0xe
    bx lr
// end of function sub_81116E4

loc_81116E8:
    svc 0xc
    bx lr
loc_81116EC:
    svc 0xb
    bx lr
loc_81116F0:
    svc 6
    bx lr
loc_81116F4:
    svc 6
    add r0, r1, #0
    bx lr
    .hword 0x0
dword_81116FC:    .word 0x4770DF12
dword_8111700:    .word 0x4770DF11
dword_8111704:    .word 0x4770DF08
.thumb
sub_8111708:
    push {r4,lr}
    add r4, r0, #0
    sub r3, r2, #1
    cmp r2, #0
    beq loc_8111724
    mov r2, #1
    neg r2, r2
loc_8111716:
    ldrb r0, [r4]
    strb r0, [r1]
    add r4, #1
    add r1, #1
    sub r3, #1
    cmp r3, r2
    bne loc_8111716
loc_8111724:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8111708

.thumb
sub_811172C:
    push {r4-r6,lr}
    sub sp, sp, #0x80
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r2, [pc, #0x8111758-0x8111736-2] // GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x811175c-0x811173a-2] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    ldr r3, [pc, #0x8111760-0x8111744-4] // sub_8111708+1
    mov r0, #1
    bic r3, r0
    mov r2, sp
    ldr r0, [pc, #0x8111764-0x811174c-4] // sub_811172C+1
    ldr r1, [pc, #0x8111760-0x811174e-2] // sub_8111708+1
    sub r0, r0, r1
    lsl r0, r0, #0xf
    b loc_8111774
    .balign 4, 0x00
off_8111758:    .word GamePakWaitstateControl
dword_811175C:    .word 0xFFFC
off_8111760:    .word sub_8111708+1
off_8111764:    .word sub_811172C+1
loc_8111768:
    ldrh r0, [r3]
    strh r0, [r2]
    add r3, #2
    add r2, #2
    sub r0, r1, #1
    lsl r0, r0, #0x10
loc_8111774:
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_8111768
    mov r3, sp
    add r3, #1
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
    bl dword_81118A8
    add sp, sp, #0x80
    pop {r4-r6}
    pop {r0}
    bx r0
// end of function sub_811172C

.thumb
sub_8111790:
    push {r4,r5,lr}
    add r5, r0, #0
    add r4, r1, #0
    add r3, r2, #0
    ldr r2, [pc, #0x81117c8-0x8111798-4] // GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x81117cc-0x811179c-4] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    sub r3, #1
    mov r0, #1
    neg r0, r0
    cmp r3, r0
    beq loc_81117C0
    add r1, r0, #0
loc_81117B2:
    ldrb r0, [r5]
    strb r0, [r4]
    add r5, #1
    add r4, #1
    sub r3, #1
    cmp r3, r1
    bne loc_81117B2
loc_81117C0:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81117C8:    .word GamePakWaitstateControl
dword_81117CC:    .word 0xFFFC
word_81117D0:    .hword 0xB530
// end of function sub_8111790

    add r5, r0, #0
    add r3, r1, #0
    sub r4, r2, #1
    cmp r2, #0
    beq loc_81117F6
    mov r2, #1
    neg r2, r2
loc_81117E0:
    ldrb r1, [r3]
    ldrb r0, [r5]
    add r5, #1
    add r3, #1
    cmp r1, r0
    beq loc_81117F0
    sub r0, r3, #1
    b loc_81117F8
loc_81117F0:
    sub r4, #1
    cmp r4, r2
    bne loc_81117E0
loc_81117F6:
    mov r0, #0
loc_81117F8:
    pop {r4,r5}
    pop {r1}
    bx r1
    .byte 0, 0
.thumb
sub_8111800:
    push {r4-r6,lr}
    sub sp, sp, #0xc0
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r2, [pc, #0x811182c-0x811180a-2] // GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x8111830-0x811180e-2] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    ldr r3, [pc, #0x8111834-0x8111818-4] // word_81117D0+1
    mov r0, #1
    bic r3, r0
    mov r2, sp
    ldr r0, [pc, #0x8111838-0x8111820-4] // sub_8111800+1
    ldr r1, [pc, #0x8111834-0x8111822-2] // word_81117D0+1
    sub r0, r0, r1
    lsl r0, r0, #0xf
    b loc_8111848
    .balign 4, 0x00
off_811182C:    .word GamePakWaitstateControl
dword_8111830:    .word 0xFFFC
off_8111834:    .word word_81117D0+1
off_8111838:    .word sub_8111800+1
loc_811183C:
    ldrh r0, [r3]
    strh r0, [r2]
    add r3, #2
    add r2, #2
    sub r0, r1, #1
    lsl r0, r0, #0x10
loc_8111848:
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_811183C
    mov r3, sp
    add r3, #1
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
    bl dword_81118A8
    add sp, sp, #0xc0
    pop {r4-r6}
    pop {r1}
    bx r1
// end of function sub_8111800

.thumb
sub_8111864:
    push {r4-r7,lr}
    add r6, r0, #0
    add r5, r1, #0
    add r4, r2, #0
    mov r7, #0
    b loc_8111876
loc_8111870:
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
loc_8111876:
    cmp r7, #2
    bhi loc_8111894
    add r0, r6, #0
    add r1, r5, #0
    add r2, r4, #0
loc_8111880:
    bl sub_8111790
    add r0, r6, #0
    add r1, r5, #0
    add r2, r4, #0
    bl sub_8111800
    add r3, r0, #0
    cmp r3, #0
    bne loc_8111870
loc_8111894:
    add r0, r3, #0
    pop {r4-r7}
    pop {r1}
    bx r1
    .hword 0x4700
    .hword 0x46C0
word_81118A0:    .hword 0x4708
    .hword 0x46C0
word_81118A4:    .hword 0x4710
    .hword 0x46C0
dword_81118A8:    .word 0x46C04718
    .word 0x46C04720
    .word 0x46C04728
    .word 0x46C04730
    .word 0x46C04738
    .word 0x46C04740
    .word 0x46C04748
    .word 0x46C04750
    .word 0x46C04758
    .word 0x46C04760
    .word 0x46C04768
    .hword 0x4770
    .hword 0x46C0
// end of function sub_8111864

.thumb
sub_81118D8:
    cmp r1, #0
    beq loc_8111960
    push {r4}
    add r4, r0, #0
    eor r4, r1
    mov r12, r4
    mov r3, #1
    mov r2, #0
    cmp r1, #0
    bpl loc_81118EE
    neg r1, r1
loc_81118EE:
    cmp r0, #0
    bpl loc_81118F4
    neg r0, r0
loc_81118F4:
    cmp r0, r1
    bcc loc_8111952
    mov r4, #1
    lsl r4, r4, #0x1c
loc_81118FC:
    cmp r1, r4
    bcs loc_811190A
    cmp r1, r0
    bcs loc_811190A
    lsl r1, r1, #4
    lsl r3, r3, #4
    b loc_81118FC
loc_811190A:
    lsl r4, r4, #3
loc_811190C:
    cmp r1, r4
    bcs loc_811191A
    cmp r1, r0
    bcs loc_811191A
    lsl r1, r1, #1
    lsl r3, r3, #1
    b loc_811190C
loc_811191A:
    cmp r0, r1
    bcc loc_8111922
    sub r0, r0, r1
    orr r2, r3
loc_8111922:
    lsr r4, r1, #1
    cmp r0, r4
    bcc loc_811192E
    sub r0, r0, r4
    lsr r4, r3, #1
    orr r2, r4
loc_811192E:
    lsr r4, r1, #2
    cmp r0, r4
    bcc loc_811193A
    sub r0, r0, r4
    lsr r4, r3, #2
    orr r2, r4
loc_811193A:
    lsr r4, r1, #3
    cmp r0, r4
    bcc loc_8111946
    sub r0, r0, r4
    lsr r4, r3, #3
    orr r2, r4
loc_8111946:
    cmp r0, #0
    beq loc_8111952
    lsr r3, r3, #4
    beq loc_8111952
    lsr r1, r1, #4
    b loc_811191A
loc_8111952:
    add r0, r2, #0
    mov r4, r12
    cmp r4, #0
    bpl loc_811195C
    neg r0, r0
loc_811195C:
    pop {r4}
    mov pc, lr
loc_8111960:
    push {lr}
    bl nullsub_1
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_81118D8

.thumb
nullsub_1:
    mov pc, lr
    .byte 0, 0
function_chunks_loc_8111970:    .byte 0
    .byte 0xA2
    .byte 0x10
    .byte 0x47 
    .byte 0x90
    .byte 0x21 
    .byte 0x83
    .byte 0xE0
    .word 0xE2830000
    .word 0xE12FFF1E
function_chunks_loc_8111980:    .word 0x6800481A, 0x68034A1A, 0xD000429A, 0x33014770, 0xB5F06003
    .word 0x464A4641, 0x465C4653, 0xB086B41F, 0x29007B01, 0x4A14D005
    .word 0x2AA07812, 0x32E4D200, 0x91051889, 0x2B006A03, 0x6A40D003
    .word 0xF9F1F000, 0x6A839806, 0xF9EDF000, 0x69039806, 0x4D0B4698
    .word 0x7904182D, 0xD9041E67, 0x1BC97AC1, 0x434A4642
    .word 0x950218AD
    .word 0x4B034E06
    .word 0x4718
    .word loc_3007FF0
    .word 0x68736D53
    .word loc_30047E0+1
    .word VerticalCounter_LY_
    .word 0x350
dword_8111A00:    .word 0x630, 0x2B007943, 0xA101D02C, 0x4708, 0xE3540002
    .word 0x2807E35, 0x10857008, 0xE1A04008, 0xE19500D6, 0xE1D510D0
    .word 0xE0800001, 0xE19710D6, 0xE0800001, 0xE0D710D1, 0xE0800001
    .word 0xE0010390, 0xE1A004C1, 0xE3100080, 0x12800001, 0xE7C50006
    .word 0xE4C50001, 0xE2544001, 0xCAFFFFF0, 0xE28F002F, 0xE12FFF10
    .word 0x46412000, 0x8C91976, 0xC501D301, 0x849C601, 0xC501D303
    .word 0xC501C601, 0xC501C601, 0xC501C601, 0xC501C601, 0xC501C601
    .word 0x3901C601, 0x9C06DCF5, 0x468469A0, 0x345079A0, 0x6A639001
    .word 0x28009805, 0x4904D00A, 0x29A07809, 0x31E4D200, 0xD3034281
    .word 0xE16B, 0x4000006, 0x20C77826, 0xD1004230, 0x2080E15E
    .word 0xD0144230, 0x42302040, 0x2603D119, 0x1C187026, 0x62A03010
    .word 0x61A068D8, 0x72652500, 0x78DA61E5, 0x421020C0, 0x2010D02F
    .word 0x70264306, 0x7A65E02B, 0x42302004, 0x7B60D006, 0x73603801
    .word 0x2000D82A, 0xE13B7020, 0x42302040, 0x79E0D00C, 0xA2D4345
    .word 0x42857B20, 0x7B25D81E, 0xD0F02D00, 0x43062004, 0xE0177026
    .word 0x40322203, 0xD10A2A02, 0x43457960, 0x79A00A2D, 0xD80D4285
    .word 0xD0EC1C05, 0x70263E01, 0x2A03E008, 0x7920D106, 0x2DFF182D
    .word 0x25FFD302, 0x70263E01, 0x98067265, 0x300179C0, 0x9054368
    .word 0x436878A0, 0x72A00A00, 0x436878E0, 0x72E00A00, 0x40302010
    .word 0xD0079004, 0x30101C18, 0x18406899, 0x68D89003, 0x90041A40
    .word 0x69A29D02, 0xA0016AA3, 0x4700, 0xE58D8000, 0xE5D4A00A
    .word 0xE5D4B00B, 0xE1A0A80A, 0xE1A0B80B, 0xE5D40001, 0xE3100008
    .word 0xA000047, 0xE3520004, 0xDA000019
    .byte 0x8
    .byte 0x20
    .word 0xE000E052
    .hword 0xC3A0
    .word 0xCA000005, 0xE1A0E008, 0xE0822008, 0xE2428004, 0xE04EE008
    .word 0xE2122003
    .word 0x3A02004, 0xE5956000, 0xE5957630
    .word 0xE0D300D1, 0xE001009A, 0xE3C118FF
    .word 0xE0816466, 0xE001009B, 0xE3C118FF
    .word 0xE0817467, 0xE2955101, 0x3AFFFFF6, 0xE5857630, 0xE4856004
    .word 0xE2588004, 0xCAFFFFF0, 0xE098800E, 0xA000050, 0xE5956000
    .word 0xE5957630, 0xE0D300D1, 0xE001009A, 0xE3C118FF
    .word 0xE0816466, 0xE001009B, 0xE3C118FF
    .word 0xE0817467, 0xE2522001, 0xA000012, 0xE2955101, 0x3AFFFFF4
    .word 0xE5857630, 0xE4856004, 0xE2588004
    .byte 0xD2, 0xFF
    .word 0x3ECAFF, 0x18EA00, 0xE59D, 0x5E350, 0x30140A00
    .word 0x9000E59D, 0x2002E262, 0x2BE090, 0x9000CA00, 0xFFFBE049
    .word 0x1010EAFF, 0x2000E8BD, 0x3E3A0, 0x2010EA00, 0xE59D
    .word 0x300CE352, 0xFFE8159D, 0x20001AFF, 0xF25E5C4, 0x5103E1A0
    .word 0x3E3C5, 0x180E260, 0x6076E1A0, 0x7077E1A0, 0x7630E1A0
    .word 0x6004E585, 0x26E485, 0x1010EA00
    .word 0xE01CE92D, 0x1020E594, 0x19CE594, 0xD0E004, 0x10D1E1D3
    .word 0x1000E1F3
    .word 0x6000E041
    .word 0x7630E595
    .word 0x19EE595
dword_8111D02:    .word 0x9BC9E009
    .byte 0x80
    .byte 0xE0
    .word 0xE00C099A
    .word 0xE3CCC8FF
    .word 0xE08C6466
    .word 0xE00C099B
    .word 0xE3CCC8FF
    .word 0xE08C7467
    .word 0xE08EE004
    .byte 0xAE
    .byte 0x9B
dword_8111D26:    .word 0x7E1B0
    .hword 0xA00
    .word 0xE3CEE5FE
dword_8111D30:    .word 0xE0522009, 0xDAFFFFCE, 0xE2599001, 0x800001, 0x11B300D9
    .byte 0xD1
    .byte 0x10
dword_8111D46:    .word 0x1000E1F3
    .byte 0x41 
    .byte 0xE0
    .word 0xE2955101
    .word 0x3AFFFFEA
    .word 0xE5857630
    .hword 0x6004
    .word 0x8004E485, 0xFFE4E258, 0x3001CAFF, 0x1010E243, 0xE01CE8BD
    .word 0x2018E584, 0x3028E584, 0x8000E584
    .hword 0xE59D
    .word 0xE28F0001, 0xE12FFF10, 0x38019801, 0x3440DD01, 0x9806E686
    .word 0x60034B04, 0xBCFFB007, 0x46894680
    .word 0x469B4692
    .byte 8
    .byte 0xBC
    .byte 0x18
    .byte 0x47 
    .word 0x68736D53
    .word 0x210046A4
dword_8111DAC:    .word 0x23002200
    .word 0xC01E2400
    .word 0xC01EC01E
    .word 0x4664C01E
    .word 0x4770
// end of function nullsub_1

.thumb
sub_8111DC0:
    ldr r3, [r0,#0x2c]
    cmp r3, #0
    beq locret_8111DDE
    ldr r1, [r0,#0x34]
    ldr r2, [r0,#0x30]
    cmp r2, #0
    beq loc_8111DD2
    str r1, [r2,#0x34]
    b loc_8111DD4
loc_8111DD2:
    str r1, [r3,#0x20]
loc_8111DD4:
    cmp r1, #0
    beq loc_8111DDA
    str r2, [r1,#0x30]
loc_8111DDA:
    mov r1, #0
    str r1, [r0,#0x2c]
locret_8111DDE:
    bx lr
// end of function sub_8111DC0

.thumb
sub_8111DE0:
    push {r4,r5,lr}
    add r5, r1, #0
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_8111E04
loc_8111DEA:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_8111DF8
    mov r0, #0x40 
    orr r1, r0
    strb r1, [r4]
loc_8111DF8:
    add r0, r4, #0
    bl sub_8111DC0
    ldr r4, [r4,#0x34]
    cmp r4, #0
    bne loc_8111DEA
loc_8111E04:
    mov r0, #0
    strb r0, [r5]
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8111DE0

.thumb
sub_8111E10:
    mov r12, lr
    mov r1, #0x24 
    ldr r2, [pc, #0x8111e40-0x8111e14-4] // off_8209FF0
loc_8111E16:
    ldr r3, [r2]
    bl sub_8111E2A
    stmia r0!, {r3}
    add r2, #4
    sub r1, #1
    bgt loc_8111E16
    bx r12
    .balign 4, 0x00
// end of function sub_8111E10

.thumb
sub_8111E28:
    ldrb r3, [r2]
// end of function sub_8111E28

.thumb
sub_8111E2A:
    push {r0}
    lsr r0, r2, #0x19
    bne loc_8111E3C
    ldr r0, [pc, #0x8111e40-0x8111e30-4] // off_8209FF0
    cmp r2, r0
    bcc loc_8111E3A
    lsr r0, r2, #0xe
    beq loc_8111E3C
loc_8111E3A:
    mov r3, #0
loc_8111E3C:
    pop {r0}
    bx lr
off_8111E40:    .word off_8209FF0
// end of function sub_8111E2A

.thumb
sub_8111E44:
    ldr r2, [r1,#0x40]
loc_8111E46:
    add r3, r2, #1
    str r3, [r1,#0x40]
    ldrb r3, [r2]
    b sub_8111E2A
    .byte 0, 0
// end of function sub_8111E44

.thumb
sub_8111E50:
    push {lr}
loc_8111E52:
    ldr r2, [r1,#0x40]
    ldrb r0, [r2,#3]
    lsl r0, r0, #8
    ldrb r3, [r2,#2]
    orr r0, r3
    lsl r0, r0, #8
    ldrb r3, [r2,#1]
    orr r0, r3
    lsl r0, r0, #8
    bl sub_8111E28
    orr r0, r3
    str r0, [r1,#0x40]
    pop {r0}
    bx r0
// end of function sub_8111E50

.thumb
sub_8111E70:
    ldrb r2, [r1,#2]
    cmp r2, #3
    bcs loc_8111E88
    lsl r2, r2, #2
    add r3, r1, r2
    ldr r2, [r1,#0x40]
    add r2, #4
    str r2, [r3,#0x44]
    ldrb r2, [r1,#2]
    add r2, #1
    strb r2, [r1,#2]
    b sub_8111E50
loc_8111E88:
    b sub_8111DE0
    .balign 4, 0x00
// end of function sub_8111E70

.thumb
sub_8111E8C:
    ldrb r2, [r1,#2]
    cmp r2, #0
    beq locret_8111E9E
    sub r2, #1
    strb r2, [r1,#2]
    lsl r2, r2, #2
    add r3, r1, r2
    ldr r2, [r3,#0x44]
    str r2, [r1,#0x40]
locret_8111E9E:
    bx lr
// end of function sub_8111E8C

.thumb
sub_8111EA0:
    push {lr}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    cmp r3, #0
    bne loc_8111EB0
    add r2, #1
    str r2, [r1,#0x40]
    b loc_8111E52
loc_8111EB0:
    ldrb r3, [r1,#3]
    add r3, #1
    strb r3, [r1,#3]
    mov r12, r3
    bl sub_8111E44
    cmp r12, r3
    bcs loc_8111EC2
    b loc_8111E52
loc_8111EC2:
    mov r3, #0
    strb r3, [r1,#3]
    add r2, #5
    str r2, [r1,#0x40]
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8111EA0

.thumb
sub_8111ED0:
    mov r12, lr
    bl sub_8111E44
    strb r3, [r1,#0x1d]
    bx r12
    .balign 4, 0x00
// end of function sub_8111ED0

.thumb
sub_8111EDC:
    mov r12, lr
    bl sub_8111E44
    lsl r3, r3, #1
    strh r3, [r0,#0x1c]
    ldrh r2, [r0,#0x1e]
    mul r3, r2
    lsr r3, r3, #8
    strh r3, [r0,#0x20]
    bx r12
// end of function sub_8111EDC

.thumb
sub_8111EF0:
    mov r12, lr
    bl sub_8111E44
    strb r3, [r1,#0xa]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
// end of function sub_8111EF0

    .hword 0x0 // mov r0, r0  // <mkdata>
loc_8111F04:
    mov r12, lr
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    str r2, [r1,#0x40]
    lsl r2, r3, #1
    add r2, r2, r3
    lsl r2, r2, #2
    ldr r3, [r0,#0x30]
    add r2, r2, r3
    ldr r3, [r2]
    bl sub_8111E2A
    str r3, [r1,#0x24]
    ldr r3, [r2,#4]
    bl sub_8111E2A
    str r3, [r1,#0x28]
    ldr r3, [r2,#8]
    bl sub_8111E2A
    str r3, [r1,#0x2c]
    bx r12
    .balign 4, 0x00
loc_8111F34:
    mov r12, lr
    bl sub_8111E44
    strb r3, [r1,#0x12]
    ldrb r3, [r1]
    mov r2, #3
    orr r3, r2
    strb r3, [r1]
    bx r12
    .balign 4, 0x00
loc_8111F48:
    mov r12, lr
    bl sub_8111E44
    sub r3, #0x40 
    strb r3, [r1,#0x14]
    ldrb r3, [r1]
    mov r2, #3
    orr r3, r2
    strb r3, [r1]
    bx r12
loc_8111F5C:
    mov r12, lr
    bl sub_8111E44
    sub r3, #0x40 
    strb r3, [r1,#0xe]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
loc_8111F70:
    mov r12, lr
    bl sub_8111E44
    strb r3, [r1,#0xf]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
    .balign 4, 0x00
loc_8111F84:
    mov r12, lr
    bl sub_8111E44
    strb r3, [r1,#0x1b]
    bx r12
    .byte 0, 0
loc_8111F90:
    mov r12, lr
    bl sub_8111E44
    ldrb r0, [r1,#0x18]
    cmp r0, r3
    beq loc_8111FA6
    strb r3, [r1,#0x18]
    ldrb r3, [r1]
    mov r2, #0xf
    orr r3, r2
    strb r3, [r1]
loc_8111FA6:
    bx r12
loc_8111FA8:
    mov r12, lr
    bl sub_8111E44
    sub r3, #0x40 
    strb r3, [r1,#0xc]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
loc_8111FBC:
    mov r12, lr
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    ldr r0, [pc, #0x8111fd0-0x8111fc4-4] // Channel1Sweepregister_NR10_
    add r0, r0, r3
    bl loc_8111E46
    strb r3, [r0]
    bx r12
off_8111FD0:    .word Channel1Sweepregister_NR10_
.thumb
sub_8111FD4:
    ldr r0, [pc, #0x8112280-0x8111fd4-4] // loc_3007FF0
    ldr r0, [r0]
    ldr r2, [pc, #0x8112284-0x8111fd8-4] // =0x68736D53
    ldr r3, [r0]
    sub r3, r3, r2
    cmp r3, #1
    bhi locret_8112014
    ldrb r1, [r0,#4]
    sub r1, #1
    strb r1, [r0,#4]
    bgt locret_8112014
    ldrb r1, [r0,#0xb]
    strb r1, [r0,#4]
    ldr r2, [pc, #0x8112018-0x8111fee-2] // DMA1SourceAddress
    ldr r1, [r2,#0x8] // (DMA1WordCount - 0x40000bc)
    lsl r1, r1, #7
    bcc loc_8111FFA
    ldr r1, [pc, #0x811201c-0x8111ff6-2] // =0x84400004
    str r1, [r2,#0x8] // (DMA1WordCount - 0x40000bc)
loc_8111FFA:
    ldr r1, [r2,#0x14] // (DMA2WordCount - 0x40000bc)
    lsl r1, r1, #7
    bcc loc_8112004
    ldr r1, [pc, #0x811201c-0x8112000-4] // =0x84400004
    str r1, [r2,#0x14] // (DMA2WordCount - 0x40000bc)
loc_8112004:
    mov r1, #4
    lsl r1, r1, #8
    strh r1, [r2,#0xa] // (DMA1Control - 0x40000bc)
    strh r1, [r2,#0x16] // (DMA2Control - 0x40000bc)
    mov r1, #0xb6
    lsl r1, r1, #8
    strh r1, [r2,#0xa] // (DMA1Control - 0x40000bc)
    strh r1, [r2,#0x16] // (DMA2Control - 0x40000bc)
locret_8112014:
    bx lr
    .balign 4, 0x00
off_8112018:    .word DMA1SourceAddress
dword_811201C:    .word 0x84400004
// end of function sub_8111FD4

loc_8112020:
    ldr r2, [pc, #0x8112284-0x8112020-4] // =0x68736D53
    ldr r3, [r0,#0x34]
    cmp r2, r3
    beq loc_811202A
    bx lr
loc_811202A:
    add r3, #1
    str r3, [r0,#0x34]
    push {r0,lr}
    ldr r3, [r0,#0x38]
    cmp r3, #0
    beq loc_811203C
    ldr r0, [r0,#0x3c]
    bl nullsub_65
loc_811203C:
    pop {r0}
    push {r4-r7}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4-r7}
    add r7, r0, #0
    ldr r0, [r7,#4]
    cmp r0, #0
    bge loc_8112054
    b loc_8112268
loc_8112054:
    ldr r0, [pc, #0x8112280-0x8112054-4] // loc_3007FF0
    ldr r0, [r0]
    mov r8, r0
    add r0, r7, #0
    bl sub_8112F0C
    ldr r0, [r7,#4]
    cmp r0, #0
    bge loc_8112068
    b loc_8112268
loc_8112068:
    ldrh r0, [r7,#0x22]
    ldrh r1, [r7,#0x20]
    add r0, r0, r1
    b loc_81121B8
loc_8112070:
    ldrb r6, [r7,#8]
    ldr r5, [r7,#0x2c]
    mov r3, #1
    mov r4, #0
loc_8112078:
    ldrb r0, [r5]
    mov r1, #0x80
    tst r1, r0
    bne loc_8112082
    b loc_8112194
loc_8112082:
    mov r10, r3
    orr r4, r3
    mov r11, r4
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_81120B6
loc_811208E:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_81120AA
    ldrb r0, [r4,#0x10]
    cmp r0, #0
    beq loc_81120B0
    sub r0, #1
    strb r0, [r4,#0x10]
    bne loc_81120B0
    mov r0, #0x40 
    orr r1, r0
    strb r1, [r4]
    b loc_81120B0
loc_81120AA:
    add r0, r4, #0
    bl sub_8112A08
loc_81120B0:
    ldr r4, [r4,#0x34]
    cmp r4, #0
    bne loc_811208E
loc_81120B6:
    ldrb r3, [r5]
    mov r0, #0x40 
    tst r0, r3
    beq loc_8112134
    add r0, r5, #0
    bl sub_8112A1C
    mov r0, #0x80
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#0xf]
    mov r0, #0x40 
    strb r0, [r5,#0x13]
    mov r0, #0x16
    strb r0, [r5,#0x19]
    mov r0, #1
    add r1, r5, #6
    strb r0, [r1,#0x1e]
    b loc_8112134
loc_81120DC:
    ldr r2, [r5,#0x40]
    ldrb r1, [r2]
    cmp r1, #0x80
    bcs loc_81120E8
    ldrb r1, [r5,#7]
    b loc_81120F2
loc_81120E8:
    add r2, #1
    str r2, [r5,#0x40]
    cmp r1, #0xbd
    bcc loc_81120F2
    strb r1, [r5,#7]
loc_81120F2:
    cmp r1, #0xcf
    bcc loc_8112108
    mov r0, r8
    ldr r3, [r0,#0x38]
    add r0, r1, #0
    sub r0, #0xcf
    add r1, r7, #0
    add r2, r5, #0
    bl nullsub_65
    b loc_8112134
loc_8112108:
    cmp r1, #0xb0
    bls loc_811212A
    add r0, r1, #0
    sub r0, #0xb1
    strb r0, [r7,#0xa]
    mov r3, r8
    ldr r3, [r3,#0x34]
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    add r0, r7, #0
    add r1, r5, #0
    bl nullsub_65
    ldrb r0, [r5]
    cmp r0, #0
    beq loc_8112190
    b loc_8112134
loc_811212A:
    ldr r0, [pc, #0x811227c-0x811212a-2] // dword_820A264
    sub r1, #0x80
    add r1, r1, r0
    ldrb r0, [r1]
    strb r0, [r5,#1]
loc_8112134:
    ldrb r0, [r5,#1]
    cmp r0, #0
    beq loc_81120DC
    sub r0, #1
    strb r0, [r5,#1]
    ldrb r1, [r5,#0x19]
    cmp r1, #0
    beq loc_8112190
    ldrb r0, [r5,#0x17]
    cmp r0, #0
    beq loc_8112190
    ldrb r0, [r5,#0x1c]
    cmp r0, #0
    beq loc_8112156
    sub r0, #1
    strb r0, [r5,#0x1c]
    b loc_8112190
loc_8112156:
    ldrb r0, [r5,#0x1a]
    add r0, r0, r1
    strb r0, [r5,#0x1a]
    add r1, r0, #0
    sub r0, #0x40 
    lsl r0, r0, #0x18
    bpl loc_811216A
    lsl r2, r1, #0x18
    asr r2, r2, #0x18
    b loc_811216E
loc_811216A:
    mov r0, #0x80
    sub r2, r0, r1
loc_811216E:
    ldrb r0, [r5,#0x17]
    mul r0, r2
    asr r2, r0, #6
    ldrb r0, [r5,#0x16]
    eor r0, r2
    lsl r0, r0, #0x18
    beq loc_8112190
    strb r2, [r5,#0x16]
    ldrb r0, [r5]
    ldrb r1, [r5,#0x18]
    cmp r1, #0
    bne loc_811218A
    mov r1, #0xc
    b loc_811218C
loc_811218A:
    mov r1, #3
loc_811218C:
    orr r0, r1
    strb r0, [r5]
loc_8112190:
    mov r3, r10
    mov r4, r11
loc_8112194:
    sub r6, #1
    ble loc_81121A0
    mov r0, #0x50 
    add r5, r5, r0
    lsl r3, r3, #1
    b loc_8112078
loc_81121A0:
    ldr r0, [r7,#0xc]
    add r0, #1
    str r0, [r7,#0xc]
    cmp r4, #0
    bne loc_81121B2
    mov r0, #0x80
    lsl r0, r0, #0x18
    str r0, [r7,#4]
    b loc_8112268
loc_81121B2:
    str r4, [r7,#4]
    ldrh r0, [r7,#0x22]
    sub r0, #0x96
loc_81121B8:
    strh r0, [r7,#0x22]
    cmp r0, #0x96
    bcc loc_81121C0
    b loc_8112070
loc_81121C0:
    ldrb r2, [r7,#8]
    ldr r5, [r7,#0x2c]
loc_81121C4:
    ldrb r0, [r5]
    mov r1, #0x80
    tst r1, r0
    beq loc_811225E
    mov r1, #0xf
    tst r1, r0
    beq loc_811225E
    mov r9, r2
    add r0, r7, #0
    add r1, r5, #0
loc_81121D8:
    bl sub_8112FD4
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_8112254
loc_81121E2:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    bne loc_81121F2
    add r0, r4, #0
    bl sub_8112A08
    b loc_811224E
loc_81121F2:
    ldrb r0, [r4,#1]
    mov r6, #7
    and r6, r0
    ldrb r3, [r5]
    mov r0, #3
    tst r0, r3
    beq loc_8112210
    bl sub_81122CC
    cmp r6, #0
    beq loc_8112210
    ldrb r0, [r4,#0x1d]
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
loc_8112210:
    ldrb r3, [r5]
    mov r0, #0xc
    tst r0, r3
    beq loc_811224E
    ldrb r1, [r4,#8]
    mov r0, #8
    ldrsb r0, [r5,r0]
    add r2, r1, r0
    bpl loc_8112224
    mov r2, #0
loc_8112224:
    cmp r6, #0
    beq loc_8112242
    mov r0, r8
    ldr r3, [r0,#0x30]
    add r1, r2, #0
    ldrb r2, [r5,#9]
    add r0, r6, #0
    bl nullsub_65
    str r0, [r4,#0x20]
    ldrb r0, [r4,#0x1d]
    mov r1, #2
    orr r0, r1
    strb r0, [r4,#0x1d]
    b loc_811224E
loc_8112242:
    add r1, r2, #0
    ldrb r2, [r5,#9]
    ldr r0, [r4,#0x24]
    bl sub_811258C
    str r0, [r4,#0x20]
loc_811224E:
    ldr r4, [r4,#0x34]
    cmp r4, #0
    bne loc_81121E2
loc_8112254:
    ldrb r0, [r5]
    mov r1, #0xf0
    and r0, r1
    strb r0, [r5]
    mov r2, r9
loc_811225E:
    sub r2, #1
    ble loc_8112268
    mov r0, #0x50 
    add r5, r5, r0
    bgt loc_81121C4
loc_8112268:
    ldr r0, [pc, #0x8112284-0x8112268-4] // =0x68736D53
    str r0, [r7,#0x34]
    pop {r0-r7}
    mov r8, r0
    mov r9, r1
    mov r10, r2
    mov r11, r3
    pop {r3}
.thumb
nullsub_65:
    bx r3
    .balign 4, 0x00
off_811227C:    .word dword_820A264
off_8112280:    .word loc_3007FF0
dword_8112284:    .word 0x68736D53
// end of function nullsub_65

.thumb
sub_8112288:
    push {r4-r6,lr}
    add r5, r1, #0
    ldrb r1, [r5]
    mov r0, #0x80
    tst r0, r1
    beq loc_81122C0
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_81122BE
    mov r6, #0
loc_811229C:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_81122B6
    ldrb r0, [r4,#1]
    mov r3, #7
    and r0, r3
    beq loc_81122B4
    ldr r3, [pc, #0x81122c8-0x81122aa-2] // loc_3007FF0
    ldr r3, [r3]
    ldr r3, [r3,#0x2c]
    bl nullsub_65
loc_81122B4:
    strb r6, [r4]
loc_81122B6:
    str r6, [r4,#0x2c]
    ldr r4, [r4,#0x34]
    cmp r4, #0
    bne loc_811229C
loc_81122BE:
    str r4, [r5,#0x20]
loc_81122C0:
    pop {r4-r6}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81122C8:    .word loc_3007FF0
// end of function sub_8112288

.thumb
sub_81122CC:
    ldrb r1, [r4,#0x12]
    mov r0, #0x14
    ldrsb r2, [r4,r0]
    mov r3, #0x80
    add r3, r3, r2
    mul r3, r1
    ldrb r0, [r5,#0x10]
    mul r0, r3
    asr r0, r0, #0xe
    cmp r0, #0xff
    bls loc_81122E4
    mov r0, #0xff
loc_81122E4:
    strb r0, [r4,#2]
    mov r3, #0x7f
    sub r3, r3, r2
    mul r3, r1
    ldrb r0, [r5,#0x11]
    mul r0, r3
    asr r0, r0, #0xe
    cmp r0, #0xff
    bls loc_81122F8
    mov r0, #0xff
loc_81122F8:
    strb r0, [r4,#3]
    bx lr
// end of function sub_81122CC

.thumb
sub_81122FC:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4-r7}
    sub sp, sp, #0x18
    str r1, [sp]
    add r5, r2, #0
    ldr r1, [pc, #0x81124f4-0x811230e-2] // loc_3007FF0
    ldr r1, [r1]
    str r1, [sp,#4]
    ldr r1, [pc, #0x81124f8-0x8112314-4] // dword_820A264
    add r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r5,#4]
    ldr r3, [r5,#0x40]
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_8112342
    strb r0, [r5,#5]
    add r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_8112340
    strb r0, [r5,#6]
    add r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_8112340
    ldrb r1, [r5,#4]
    add r1, r1, r0
    strb r1, [r5,#4]
    add r3, #1
loc_8112340:
    str r3, [r5,#0x40]
loc_8112342:
    mov r0, #0
    str r0, [sp,#0x14]
    add r4, r5, #0
    add r4, #0x24 
    ldrb r2, [r4]
    mov r0, #0xc0
    tst r0, r2
    beq loc_8112394
    ldrb r3, [r5,#5]
    mov r0, #0x40 
    tst r0, r2
    beq loc_8112362
    ldr r1, [r5,#0x2c]
    add r1, r1, r3
    ldrb r0, [r1]
    b loc_8112364
loc_8112362:
    add r0, r3, #0
loc_8112364:
    lsl r1, r0, #1
    add r1, r1, r0
    lsl r1, r1, #2
    ldr r0, [r5,#0x28]
    add r1, r1, r0
    mov r9, r1
    mov r6, r9
    ldrb r1, [r6]
    mov r0, #0xc0
    tst r0, r1
    beq loc_811237C
    b loc_81124E2
loc_811237C:
    mov r0, #0x80
    tst r0, r2
    beq loc_8112398
    ldrb r1, [r6,#3]
    mov r0, #0x80
    tst r0, r1
    beq loc_8112390
    sub r1, #0xc0
    lsl r1, r1, #1
    str r1, [sp,#0x14]
loc_8112390:
    ldrb r3, [r6,#1]
    b loc_8112398
loc_8112394:
    mov r9, r4
    ldrb r3, [r5,#5]
loc_8112398:
    str r3, [sp,#8]
    ldr r6, [sp]
    ldrb r1, [r6,#9]
    ldrb r0, [r5,#0x1d]
    add r0, r0, r1
    cmp r0, #0xff
    bls loc_81123A8
    mov r0, #0xff
loc_81123A8:
    str r0, [sp,#0x10]
    mov r6, r9
    ldrb r0, [r6]
    mov r6, #7
    and r6, r0
    str r6, [sp,#0xc]
    beq loc_81123E8
    ldr r0, [sp,#4]
    ldr r4, [r0,#0x1c]
    cmp r4, #0
    bne loc_81123C0
    b loc_81124E2
loc_81123C0:
    sub r6, #1
    lsl r0, r6, #6
    add r4, r4, r0
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_811243C
    mov r0, #0x40 
    tst r0, r1
    bne loc_811243C
    ldrb r1, [r4,#0x13]
    ldr r0, [sp,#0x10]
    cmp r1, r0
    bcc loc_811243C
    beq loc_81123E0
    b loc_81124E2
loc_81123E0:
    ldr r0, [r4,#0x2c]
    cmp r0, r5
    bcs loc_811243C
    b loc_81124E2
loc_81123E8:
    ldr r6, [sp,#0x10]
    add r7, r5, #0
    mov r2, #0
    mov r8, r2
    ldr r4, [sp,#4]
    ldrb r3, [r4,#6]
    add r4, #0x50 
loc_81123F6:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_811243C
    mov r0, #0x40 
    tst r0, r1
    beq loc_8112410
    cmp r2, #0
    bne loc_8112414
    add r2, #1
    ldrb r6, [r4,#0x13]
    ldr r7, [r4,#0x2c]
    b loc_811242E
loc_8112410:
    cmp r2, #0
    bne loc_8112430
loc_8112414:
    ldrb r0, [r4,#0x13]
    cmp r0, r6
    bcs loc_8112420
    add r6, r0, #0
    ldr r7, [r4,#0x2c]
    b loc_811242E
loc_8112420:
    bhi loc_8112430
    ldr r0, [r4,#0x2c]
    cmp r0, r7
    bls loc_811242C
    add r7, r0, #0
    b loc_811242E
loc_811242C:
    bcc loc_8112430
loc_811242E:
    mov r8, r4
loc_8112430:
    add r4, #0x40 
    sub r3, #1
    bgt loc_81123F6
    mov r4, r8
    cmp r4, #0
    beq loc_81124E2
loc_811243C:
    add r0, r4, #0
    bl sub_8112A08
    mov r1, #0
    str r1, [r4,#0x30]
    ldr r3, [r5,#0x20]
    str r3, [r4,#0x34]
    cmp r3, #0
    beq loc_8112450
    str r4, [r3,#0x30]
loc_8112450:
    str r4, [r5,#0x20]
    str r5, [r4,#0x2c]
    ldrb r0, [r5,#0x1b]
    strb r0, [r5,#0x1c]
    cmp r0, r1
    beq loc_8112462
    add r1, r5, #0
    bl sub_811253C
loc_8112462:
    ldr r0, [sp]
    add r1, r5, #0
    bl sub_8112FD4
    ldr r0, [r5,#4]
    str r0, [r4,#0x10]
    ldr r0, [sp,#0x10]
    strb r0, [r4,#0x13]
    ldr r0, [sp,#8]
    strb r0, [r4,#8]
    ldr r0, [sp,#0x14]
    strb r0, [r4,#0x14]
    mov r6, r9
    ldrb r0, [r6]
    strb r0, [r4,#1]
    ldr r7, [r6,#4]
    str r7, [r4,#0x24]
    ldr r0, [r6,#8]
    str r0, [r4,#4]
    ldrh r0, [r5,#0x1e]
    strh r0, [r4,#0xc]
    bl sub_81122CC
    ldrb r1, [r4,#8]
    mov r0, #8
    ldrsb r0, [r5,r0]
    add r3, r1, r0
    bpl loc_811249C
    mov r3, #0
loc_811249C:
    ldr r6, [sp,#0xc]
    cmp r6, #0
    beq loc_81124CA
    mov r6, r9
    ldrb r0, [r6,#2]
    strb r0, [r4,#0x1e]
    ldrb r1, [r6,#3]
    mov r0, #0x80
    tst r0, r1
    bne loc_81124B6
    mov r0, #0x70 
    tst r0, r1
    bne loc_81124B8
loc_81124B6:
    mov r1, #8
loc_81124B8:
    strb r1, [r4,#0x1f]
    ldrb r2, [r5,#9]
    add r1, r3, #0
    ldr r0, [sp,#0xc]
    ldr r3, [sp,#4]
    ldr r3, [r3,#0x30]
    bl nullsub_65
    b loc_81124D4
loc_81124CA:
    ldrb r2, [r5,#9]
    add r1, r3, #0
    add r0, r7, #0
    bl sub_811258C
loc_81124D4:
    str r0, [r4,#0x20]
    mov r0, #0x80
    strb r0, [r4]
    ldrb r1, [r5]
    mov r0, #0xf0
    and r0, r1
    strb r0, [r5]
loc_81124E2:
    add sp, sp, #0x18
    pop {r0-r7}
    mov r8, r0
    mov r9, r1
    mov r10, r2
    mov r11, r3
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81124F4:    .word loc_3007FF0
off_81124F8:    .word dword_820A264
// end of function sub_81122FC

.thumb
sub_81124FC:
    push {r4,r5}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    cmp r3, #0x80
    bcs loc_811250E
    strb r3, [r1,#5]
    add r2, #1
    str r2, [r1,#0x40]
    b loc_8112510
loc_811250E:
    ldrb r3, [r1,#5]
loc_8112510:
    ldr r1, [r1,#0x20]
    cmp r1, #0
    beq loc_8112538
    mov r4, #0x83
    mov r5, #0x40 
loc_811251A:
    ldrb r2, [r1]
    tst r2, r4
    beq loc_8112532
    tst r2, r5
    bne loc_8112532
    ldrb r0, [r1,#0x11]
    cmp r0, r3
    bne loc_8112532
    mov r0, #0x40 
    orr r2, r0
    strb r2, [r1]
    b loc_8112538
loc_8112532:
    ldr r1, [r1,#0x34]
    cmp r1, #0
    bne loc_811251A
loc_8112538:
    pop {r4,r5}
    bx lr
// end of function sub_81124FC

.thumb
sub_811253C:
    mov r2, #0
    strb r2, [r1,#0x16]
    strb r2, [r1,#0x1a]
    ldrb r2, [r1,#0x18]
    cmp r2, #0
    bne loc_811254C
    mov r2, #0xc
    b loc_811254E
loc_811254C:
    mov r2, #3
loc_811254E:
    ldrb r3, [r1]
    orr r3, r2
    strb r3, [r1]
    bx lr
    .balign 4, 0x00
// end of function sub_811253C

.thumb
sub_8112558:
    ldr r2, [r1,#0x40]
    add r3, r2, #1
    str r3, [r1,#0x40]
    ldrb r3, [r2]
    bx lr
    .balign 4, 0x00
// end of function sub_8112558

.thumb
sub_8112564:
    mov r12, lr
    bl sub_8112558
    strb r3, [r1,#0x19]
    cmp r3, #0
    bne loc_8112574
    bl sub_811253C
loc_8112574:
    bx r12
    .balign 4, 0x00
// end of function sub_8112564

.thumb
sub_8112578:
    mov r12, lr
    bl sub_8112558
    strb r3, [r1,#0x17]
    cmp r3, #0
    bne loc_8112588
    bl sub_811253C
loc_8112588:
    bx r12
    .balign 4, 0x00
// end of function sub_8112578

.thumb
sub_811258C:
    push {r4-r7,lr}
    mov r12, r0
    lsl r1, r1, #0x18
    lsr r6, r1, #0x18
    lsl r7, r2, #0x18
    cmp r6, #0xb2
    bls loc_81125A0
    mov r6, #0xb2
    mov r7, #0xff
    lsl r7, r7, #0x18
loc_81125A0:
    ldr r3, [pc, #0x81125e8-0x81125a0-4] // dword_820A080
    add r0, r6, r3
    ldrb r5, [r0]
    ldr r4, [pc, #0x81125ec-0x81125a6-2] // dword_820A134
    mov r2, #0xf
    add r0, r5, #0
    and r0, r2
    lsl r0, r0, #2
    add r0, r0, r4
    lsr r1, r5, #4
    ldr r5, [r0]
    lsr r5, r1
    add r0, r6, #1
    add r0, r0, r3
    ldrb r1, [r0]
    add r0, r1, #0
    and r0, r2
    lsl r0, r0, #2
    add r0, r0, r4
    lsr r1, r1, #4
    ldr r0, [r0]
    lsr r0, r1
    mov r1, r12
    ldr r4, [r1,#4]
    sub r0, r0, r5
    add r1, r7, #0
    bl function_chunks_loc_8111970
    add r1, r0, #0
    add r1, r5, r1
    add r0, r4, #0
    bl function_chunks_loc_8111970
    pop {r4-r7}
    pop {r1}
    bx r1
off_81125E8:    .word dword_820A080
off_81125EC:    .word dword_820A134
// end of function sub_811258C

    bx lr
    .balign 4, 0x00
.thumb
sub_81125F4:
    add r2, r0, #0
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x8112608-0x81125f8-4] // =0x68736D53
    cmp r3, r0
    bne locret_8112606
    ldr r0, [r2,#4]
    ldr r1, [pc, #0x811260c-0x8112600-4] // =0x7FFFFFFF
    and r0, r1
    str r0, [r2,#4]
locret_8112606:
    bx lr
dword_8112608:    .word 0x68736D53
dword_811260C:    .word 0x7FFFFFFF
// end of function sub_81125F4

.thumb
sub_8112610:
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x811262c-0x8112618-4] // =0x68736D53
    cmp r3, r0
    bne locret_8112628
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    mov r0, #0x80
    lsl r0, r0, #1
    strh r0, [r2,#0x28]
locret_8112628:
    bx lr
    .balign 4, 0x00
dword_811262C:    .word 0x68736D53
// end of function sub_8112610

.thumb
sub_8112630:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8112684-0x8112632-2] // dword_8111A00+5
    mov r1, #2
    neg r1, r1
    and r0, r1
    ldr r1, [pc, #0x8112688-0x811263a-2] // loc_30047E0
    ldr r2, [pc, #0x811268c-0x811263c-4] // Timer0Counter_Reload
    bl loc_81116EC
    ldr r0, [pc, #0x8112690-0x8112642-2] // unk_30036A0
    bl sub_8112A30
    ldr r0, [pc, #0x8112694-0x8112648-4] // unk_30046E0
    bl sub_81128EC
    ldr r0, [pc, #0x8112698-0x811264e-2] // =0x93C400
    bl sub_8112BCC
    ldr r0, [pc, #0x811269c-0x8112654-4] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_811267E
    ldr r5, [pc, #0x81126a0-0x811265e-2] // off_8155CE4
    add r6, r0, #0
loc_8112662:
    ldr r4, [r5]
    ldr r1, [r5,#4]
    ldrb r2, [r5,#8]
    add r0, r4, #0
    bl sub_8112D70
    ldrh r0, [r5,#0xa]
    strb r0, [r4,#0xb]
    ldr r0, [pc, #0x81126a4-0x8112672-2] // unk_2011DA0
    str r0, [r4,#0x18]
    add r5, #0xc
    sub r6, #1
    cmp r6, #0
    bne loc_8112662
loc_811267E:
    pop {r4-r6}
    pop {r0}
    bx r0
off_8112684:    .word dword_8111A00+5
off_8112688:    .word loc_30047E0
off_811268C:    .word Timer0Counter_Reload
off_8112690:    .word unk_30036A0
off_8112694:    .word unk_30046E0
dword_8112698:    .word 0x93C400
dword_811269C:    .word 0x20
off_81126A0:    .word off_8155CE4
off_81126A4:    .word unk_2011DA0
// end of function sub_8112630

.thumb
sub_81126A8:
    push {lr}
    bl function_chunks_loc_8111980
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_81126A8

.thumb
sub_81126B4:
    push {lr}
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x81126d8-0x81126b8-4] // off_8155CE4
    ldr r1, [pc, #0x81126dc-0x81126ba-2] // off_8155E64
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r3, [r0,#4]
    lsl r1, r3, #1
    add r1, r1, r3
    lsl r1, r1, #2
    add r1, r1, r2
    ldr r2, [r1]
    ldr r1, [r0]
    add r0, r2, #0
    bl sub_8112DE8
    pop {r0}
    bx r0
off_81126D8:    .word off_8155CE4
off_81126DC:    .word off_8155E64
// end of function sub_81126B4

    push {lr}
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x811270c-0x81126e4-4] // off_8155CE4
    ldr r1, [pc, #0x8112710-0x81126e6-2] // off_8155E64
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r3, [r0,#4]
    lsl r1, r3, #1
    add r1, r1, r3
    lsl r1, r1, #2
    add r1, r1, r2
    ldr r1, [r1]
    ldr r3, [r1]
    ldr r2, [r0]
    cmp r3, r2
    beq loc_8112714
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8112DE8
    b loc_8112728
    .balign 4, 0x00
off_811270C:    .word off_8155CE4
off_8112710:    .word off_8155E64
loc_8112714:
    ldr r2, [r1,#4]
    ldrh r0, [r1,#4]
    cmp r0, #0
    beq loc_8112720
    cmp r2, #0
    bge loc_8112728
loc_8112720:
    add r0, r1, #0
    add r1, r3, #0
    bl sub_8112DE8
loc_8112728:
    pop {r0}
    bx r0
    push {lr}
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x8112758-0x8112730-4] // off_8155CE4
    ldr r1, [pc, #0x811275c-0x8112732-2] // off_8155E64
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r3, [r0,#4]
    lsl r1, r3, #1
    add r1, r1, r3
    lsl r1, r1, #2
    add r1, r1, r2
    ldr r1, [r1]
    ldr r3, [r1]
    ldr r2, [r0]
    cmp r3, r2
    beq loc_8112760
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8112DE8
    b loc_811277C
    .balign 4, 0x00
off_8112758:    .word off_8155CE4
off_811275C:    .word off_8155E64
loc_8112760:
    ldr r2, [r1,#4]
    ldrh r0, [r1,#4]
    cmp r0, #0
    bne loc_8112772
    add r0, r1, #0
    add r1, r3, #0
    bl sub_8112DE8
    b loc_811277C
loc_8112772:
    cmp r2, #0
    bge loc_811277C
    add r0, r1, #0
    bl sub_81125F4
loc_811277C:
    pop {r0}
    bx r0
.thumb
sub_8112780:
    push {lr}
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x81127ac-0x8112784-4] // off_8155CE4
    ldr r1, [pc, #0x81127b0-0x8112786-2] // off_8155E64
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r3, [r0,#4]
    lsl r1, r3, #1
    add r1, r1, r3
    lsl r1, r1, #2
    add r1, r1, r2
    ldr r2, [r1]
    ldr r1, [r2]
    ldr r0, [r0]
    cmp r1, r0
    bne loc_81127A6
    add r0, r2, #0
    bl sub_8112ECC
loc_81127A6:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81127AC:    .word off_8155CE4
off_81127B0:    .word off_8155E64
// end of function sub_8112780

    push {lr}
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x81127e0-0x81127b8-4] // off_8155CE4
    ldr r1, [pc, #0x81127e4-0x81127ba-2] // off_8155E64
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r3, [r0,#4]
    lsl r1, r3, #1
    add r1, r1, r3
    lsl r1, r1, #2
    add r1, r1, r2
    ldr r2, [r1]
    ldr r1, [r2]
    ldr r0, [r0]
    cmp r1, r0
    bne loc_81127DA
    add r0, r2, #0
    bl sub_81125F4
loc_81127DA:
    pop {r0}
    bx r0
    .byte 0, 0
off_81127E0:    .word off_8155CE4
off_81127E4:    .word off_8155E64
.thumb
sub_81127E8:
    push {r4,r5,lr}
    ldr r0, [pc, #0x811280c-0x81127ea-2] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_8112806
    ldr r5, [pc, #0x8112810-0x81127f4-4] // off_8155CE4
    add r4, r0, #0
loc_81127F8:
    ldr r0, [r5]
    bl sub_8112ECC
    add r5, #0xc
    sub r4, #1
    cmp r4, #0
    bne loc_81127F8
loc_8112806:
    pop {r4,r5}
    pop {r0}
    bx r0
dword_811280C:    .word 0x20
off_8112810:    .word off_8155CE4
// end of function sub_81127E8

    push {lr}
    bl sub_81125F4
    pop {r0}
    bx r0
    .byte 0, 0
    push {r4,r5,lr}
    ldr r0, [pc, #0x8112844-0x8112822-2] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_811283E
    ldr r5, [pc, #0x8112848-0x811282c-4] // off_8155CE4
    add r4, r0, #0
loc_8112830:
    ldr r0, [r5]
    bl sub_81125F4
    add r5, #0xc
    sub r4, #1
    cmp r4, #0
    bne loc_8112830
loc_811283E:
    pop {r4,r5}
    pop {r0}
    bx r0
dword_8112844:    .word 0x20
off_8112848:    .word off_8155CE4
    push {lr}
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    bl sub_8112610
    pop {r0}
    bx r0
    .balign 4, 0x00
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x8112874-0x8112864-4] // =0x68736D53
    cmp r3, r0
    bne locret_8112872
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    ldr r0, [pc, #0x8112878-0x811286e-2] // =0xFF
    strh r0, [r2,#0x28]
locret_8112872:
    bx lr
dword_8112874:    .word 0x68736D53
off_8112878:    .word 0x101
loc_811287C:
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x811289c-0x8112884-4] // =0x68736D53
    cmp r3, r0
    bne locret_811289A
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    mov r0, #2
    strh r0, [r2,#0x28]
    ldr r0, [r2,#4]
    ldr r1, [pc, #0x81128a0-0x8112894-4] // =0x7FFFFFFF
    and r0, r1
    str r0, [r2,#4]
locret_811289A:
    bx lr
dword_811289C:    .word 0x68736D53
dword_81128A0:    .word 0x7FFFFFFF
.thumb
sub_81128A4:
    push {r4-r7,lr}
    ldrb r5, [r0,#8]
    ldr r4, [r0,#0x2c]
    cmp r5, #0
    ble loc_81128E6
    mov r7, #0x80
loc_81128B0:
    ldrb r1, [r4]
    add r0, r7, #0
    and r0, r1
    cmp r0, #0
    beq loc_81128DE
    mov r6, #0x40 
    add r0, r6, #0
    and r0, r1
    cmp r0, #0
    beq loc_81128DE
    add r0, r4, #0
    bl sub_8112A1C
    strb r7, [r4]
    mov r0, #2
    strb r0, [r4,#0xf]
    strb r6, [r4,#0x13]
    mov r0, #0x16
    strb r0, [r4,#0x19]
    add r1, r4, #0
    add r1, #0x24 
    mov r0, #1
    strb r0, [r1]
loc_81128DE:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_81128B0
loc_81128E6:
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_81128A4

.thumb
sub_81128EC:
    push {r4-r6,lr}
    sub sp, sp, #4
    add r5, r0, #0
    ldr r1, [pc, #0x81129b4-0x81128f2-2] // ControlSoundon_off_NR52_
    mov r0, #0x8f
    strh r0, [r1]
    ldr r3, [pc, #0x81129b8-0x81128f8-4] // ControlStereo_Volume_Enable_NR50_NR51_
    mov r2, #0
    strh r2, [r3]
    ldr r0, [pc, #0x81129bc-0x81128fe-2] // channel1duty_length_envelope_nr11_nr12_+1
    mov r1, #8
    strb r1, [r0]
    add r0, #6
    strb r1, [r0]
    add r0, #0x10
    strb r1, [r0]
    sub r0, #0x14
    mov r1, #0x80
    strb r1, [r0]
    add r0, #8
    strb r1, [r0]
    add r0, #0x10
    strb r1, [r0]
    sub r0, #0xd
    strb r2, [r0]
    mov r0, #0x77 
    strb r0, [r3]
    ldr r0, [pc, #0x81129c0-0x8112922-2] // loc_3007FF0
    ldr r4, [r0]
    ldr r6, [r4]
    ldr r0, [pc, #0x81129c4-0x8112928-4] // =0x68736D53
    cmp r6, r0
    bne loc_81129AC
    add r0, r6, #1
    str r0, [r4]
    ldr r1, [pc, #0x81129c8-0x8112932-2] // dword_3004650
    ldr r0, [pc, #0x81129cc-0x8112934-4] // sub_81138A8+1
    str r0, [r1,#0x20] // (dword_3004670 - 0x3004650)
    ldr r0, [pc, #0x81129d0-0x8112938-4] // sub_8112564+1
    str r0, [r1,#0x44] // (dword_3004694 - 0x3004650)
    ldr r0, [pc, #0x81129d4-0x811293c-4] // sub_8112578+1
    str r0, [r1,#0x4c] // (dword_300469C - 0x3004650)
    ldr r0, [pc, #0x81129d8-0x8112940-4] // sub_8113A00+1
    str r0, [r1,#0x70] // (dword_30046C0 - 0x3004650)
    ldr r0, [pc, #0x81129dc-0x8112944-4] // sub_81124FC+1
    str r0, [r1,#0x74] // (dword_30046C4 - 0x3004650)
    ldr r0, [pc, #0x81129e0-0x8112948-4] // sub_8112B28+1
    str r0, [r1,#0x78] // (dword_30046C8 - 0x3004650)
    ldr r0, [pc, #0x81129e4-0x811294c-4] // sub_8112288+1
    str r0, [r1,#0x7c] // (dword_30046CC - 0x3004650)
    add r2, r1, #0
    add r2, #0x80
    ldr r0, [pc, #0x81129e8-0x8112954-4] // sub_8112F0C+1
    str r0, [r2]
    add r1, #0x84
    ldr r0, [pc, #0x81129ec-0x811295a-2] // sub_8112FD4+1
    str r0, [r1]
    str r5, [r4,#0x1c]
    ldr r0, [pc, #0x81129f0-0x8112960-4] // sub_81131E8+1
    str r0, [r4,#0x28]
    ldr r0, [pc, #0x81129f4-0x8112964-4] // sub_8113130+1
    str r0, [r4,#0x2c]
    ldr r0, [pc, #0x81129f8-0x8112968-4] // sub_8113088+1
    str r0, [r4,#0x30]
    ldr r0, [pc, #0x81129fc-0x811296c-4] // =0x0
    mov r1, #0
    strb r0, [r4,#0xc]
    str r1, [sp]
    ldr r2, [pc, #0x8112a00-0x8112974-4] // =0x5000040
    mov r0, sp
    add r1, r5, #0
    bl loc_81116EC
    mov r0, #1
    strb r0, [r5,#1]
    mov r0, #0x11
    strb r0, [r5,#0x1c]
    add r1, r5, #0
    add r1, #0x41 
    mov r0, #2
    strb r0, [r1]
    add r1, #0x1b
    mov r0, #0x22 
    strb r0, [r1]
    add r1, #0x25 
    mov r0, #3
    strb r0, [r1]
    add r1, #0x1b
    mov r0, #0x44 
    strb r0, [r1]
    add r1, #0x24 
    mov r0, #4
    strb r0, [r1,#1]
    mov r0, #0x88
    strb r0, [r1,#0x1c]
    str r6, [r4]
loc_81129AC:
    add sp, sp, #4
    pop {r4-r6}
    pop {r0}
    bx r0
off_81129B4:    .word ControlSoundon_off_NR52_
off_81129B8:    .word ControlStereo_Volume_Enable_NR50_NR51_
off_81129BC:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
off_81129C0:    .word loc_3007FF0
dword_81129C4:    .word 0x68736D53
off_81129C8:    .word dword_3004650
off_81129CC:    .word sub_81138A8+1
off_81129D0:    .word sub_8112564+1
off_81129D4:    .word sub_8112578+1
off_81129D8:    .word sub_8113A00+1
off_81129DC:    .word sub_81124FC+1
off_81129E0:    .word sub_8112B28+1
off_81129E4:    .word sub_8112288+1
off_81129E8:    .word sub_8112F0C+1
off_81129EC:    .word sub_8112FD4+1
off_81129F0:    .word sub_81131E8+1
off_81129F4:    .word sub_8113130+1
off_81129F8:    .word sub_8113088+1
dword_81129FC:    .word 0x0
dword_8112A00:    .word 0x5000040
// end of function sub_81128EC

    svc 0x2a 
    bx lr
.thumb
sub_8112A08:
    push {lr}
    ldr r1, [pc, #0x8112a18-0x8112a0a-2] // dword_30046D8
    ldr r1, [r1]
    bl word_81118A0
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112A18:    .word dword_30046D8
// end of function sub_8112A08

.thumb
sub_8112A1C:
    push {lr}
    ldr r1, [pc, #0x8112a2c-0x8112a1e-2] // dword_30046DC
    ldr r1, [r1]
    bl word_81118A0
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112A2C:    .word dword_30046DC
// end of function sub_8112A1C

.thumb
sub_8112A30:
    push {r4,r5,lr}
    sub sp, sp, #4
    add r5, r0, #0
    mov r3, #0
    str r3, [r5]
    ldr r1, [pc, #0x8112ae8-0x8112a3a-2] // DMA1WordCount
    ldr r0, [r1]
    mov r2, #0x80
    lsl r2, r2, #0x12
    and r0, r2
    cmp r0, #0
    beq loc_8112A4C
    ldr r0, [pc, #0x8112aec-0x8112a48-4] // =0x84400004
    str r0, [r1]
loc_8112A4C:
    ldr r1, [pc, #0x8112af0-0x8112a4c-4] // DMA2WordCount
    ldr r0, [r1]
    and r0, r2
    cmp r0, #0
    beq loc_8112A5A
    ldr r0, [pc, #0x8112aec-0x8112a56-2] // =0x84400004
    str r0, [r1]
loc_8112A5A:
    ldr r0, [pc, #0x8112af4-0x8112a5a-2] // DMA1Control
    mov r2, #0x80
    lsl r2, r2, #3
    add r1, r2, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    ldr r1, [pc, #0x8112af8-0x8112a68-4] // ControlSoundon_off_NR52_
    mov r0, #0x8f
    strh r0, [r1]
    sub r1, #2
    ldr r2, [pc, #0x8112afc-0x8112a70-4] // =0xA90E
    add r0, r2, #0
    strh r0, [r1]
    ldr r2, [pc, #0x8112b00-0x8112a76-2] // soundpwmcontrol+1
    ldrb r1, [r2]
    mov r0, #0x3f 
    and r0, r1
    mov r1, #0x40 
    orr r0, r1
    strb r0, [r2]
    ldr r1, [pc, #0x8112b04-0x8112a84-4] // DMA1SourceAddress
    mov r2, #0xd4
    lsl r2, r2, #2
    add r0, r5, r2
    str r0, [r1]
    add r1, #4
    ldr r0, [pc, #0x8112b08-0x8112a90-4] // ChannelAFIFO_Data0_3
    str r0, [r1]
    add r1, #8
    mov r2, #0x98
    lsl r2, r2, #4
    add r0, r5, r2
    str r0, [r1]
    add r1, #4
    ldr r0, [pc, #0x8112b0c-0x8112aa0-4] // ChannelBFIFO_Data0_3
    str r0, [r1]
    ldr r0, [pc, #0x8112b10-0x8112aa4-4] // loc_3007FF0
    str r5, [r0]
    str r3, [sp]
    ldr r2, [pc, #0x8112b14-0x8112aaa-2] // =0x50003EC
    mov r0, sp
    add r1, r5, #0
    bl loc_81116EC
    mov r0, #8
    strb r0, [r5,#6]
    mov r0, #0xf
    strb r0, [r5,#7]
    ldr r0, [pc, #0x8112b18-0x8112abc-4] // sub_81122FC+1
    str r0, [r5,#0x38]
    ldr r0, [pc, #0x8112b1c-0x8112ac0-4] // locret_8113B20+1
    str r0, [r5,#0x28]
    str r0, [r5,#0x2c]
    str r0, [r5,#0x30]
    str r0, [r5,#0x3c]
    ldr r4, [pc, #0x8112b20-0x8112aca-2] // dword_3004650
    add r0, r4, #0
    bl sub_8111E10
    str r4, [r5,#0x34]
    mov r0, #0x80
    lsl r0, r0, #0xb
    bl sub_8112B28
    ldr r0, [pc, #0x8112b24-0x8112adc-4] // =0x68736D53
    str r0, [r5]
    add sp, sp, #4
    pop {r4,r5}
    pop {r0}
    bx r0
off_8112AE8:    .word DMA1WordCount
dword_8112AEC:    .word 0x84400004
off_8112AF0:    .word DMA2WordCount
off_8112AF4:    .word DMA1Control
off_8112AF8:    .word ControlSoundon_off_NR52_
dword_8112AFC:    .word 0xA90E
off_8112B00:    .word SoundPWMControl+1
off_8112B04:    .word DMA1SourceAddress
off_8112B08:    .word ChannelAFIFO_Data0_3
off_8112B0C:    .word ChannelBFIFO_Data0_3
off_8112B10:    .word loc_3007FF0
dword_8112B14:    .word 0x50003EC
off_8112B18:    .word sub_81122FC+1
off_8112B1C:    .word locret_8113B20+1
off_8112B20:    .word dword_3004650
dword_8112B24:    .word 0x68736D53
// end of function sub_8112A30

.thumb
sub_8112B28:
    push {r4-r6,lr}
    add r2, r0, #0
    ldr r0, [pc, #0x8112ba8-0x8112b2c-4] // loc_3007FF0
    ldr r4, [r0]
    mov r0, #0xf0
    lsl r0, r0, #0xc
    and r0, r2
    lsr r2, r0, #0x10
    mov r6, #0
    strb r2, [r4,#8]
    ldr r1, [pc, #0x8112bac-0x8112b3c-4] // dword_820A164
    sub r0, r2, #1
    lsl r0, r0, #1
    add r0, r0, r1
    ldrh r5, [r0]
    str r5, [r4,#0x10]
    mov r0, #0xc6
    lsl r0, r0, #3
    add r1, r5, #0
    bl sub_81118D8
    strb r0, [r4,#0xb]
    ldr r0, [pc, #0x8112bb0-0x8112b54-4] // =0x91D1B
    mul r0, r5
    ldr r1, [pc, #0x8112bb4-0x8112b58-4] // =0x1388
    add r0, r0, r1
    ldr r1, [pc, #0x8112bb8-0x8112b5c-4] // =0x2710
    bl sub_81118D8
    add r1, r0, #0
    str r1, [r4,#0x14]
    mov r0, #0x80
    lsl r0, r0, #0x11
    bl sub_81118D8
    add r0, #1
    asr r0, r0, #1
    str r0, [r4,#0x18]
    ldr r0, [pc, #0x8112bbc-0x8112b74-4] // Timer0Control
    strh r6, [r0]
    ldr r4, [pc, #0x8112bc0-0x8112b78-4] // Timer0Counter_Reload
    ldr r0, [pc, #0x8112bc4-0x8112b7a-2] // =0x44940
    add r1, r5, #0
    bl sub_81118D8
    neg r0, r0
    strh r0, [r4]
    bl sub_8112D34
    ldr r1, [pc, #0x8112bc8-0x8112b8a-2] // VerticalCounter_LY_
loc_8112B8C:
    ldrb r0, [r1]
    cmp r0, #0x9f
    beq loc_8112B8C
    ldr r1, [pc, #0x8112bc8-0x8112b92-2] // VerticalCounter_LY_
loc_8112B94:
    ldrb r0, [r1]
    cmp r0, #0x9f
    bne loc_8112B94
    ldr r1, [pc, #0x8112bbc-0x8112b9a-2] // Timer0Control
    mov r0, #0x80
    strh r0, [r1]
    pop {r4-r6}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112BA8:    .word loc_3007FF0
off_8112BAC:    .word dword_820A164
dword_8112BB0:    .word 0x91D1B
off_8112BB4:    .word 0x1388
off_8112BB8:    .word 0x2710
off_8112BBC:    .word Timer0Control
off_8112BC0:    .word Timer0Counter_Reload
dword_8112BC4:    .word 0x44940
off_8112BC8:    .word VerticalCounter_LY_
// end of function sub_8112B28

.thumb
sub_8112BCC:
    push {r4,r5,lr}
    add r3, r0, #0
    ldr r0, [pc, #0x8112c58-0x8112bd0-4] // loc_3007FF0
    ldr r5, [r0]
    ldr r1, [r5]
    ldr r0, [pc, #0x8112c5c-0x8112bd6-2] // =0x68736D53
    cmp r1, r0
    bne loc_8112C52
    add r0, r1, #1
    str r0, [r5]
    mov r4, #0xff
    and r4, r3
    cmp r4, #0
    beq loc_8112BEE
    mov r0, #0x7f
    and r4, r0
    strb r4, [r5,#5]
loc_8112BEE:
    mov r4, #0xf0
    lsl r4, r4, #4
    and r4, r3
    cmp r4, #0
    beq loc_8112C0E
    lsr r0, r4, #8
    strb r0, [r5,#6]
    mov r4, #0xc
    add r0, r5, #0
    add r0, #0x50 
    mov r1, #0
loc_8112C04:
    strb r1, [r0]
    sub r4, #1
    add r0, #0x40 
    cmp r4, #0
    bne loc_8112C04
loc_8112C0E:
    mov r4, #0xf0
    lsl r4, r4, #8
    and r4, r3
    cmp r4, #0
    beq loc_8112C1C
    lsr r0, r4, #0xc
    strb r0, [r5,#7]
loc_8112C1C:
    mov r4, #0xb0
    lsl r4, r4, #0x10
    and r4, r3
    cmp r4, #0
    beq loc_8112C3A
    mov r0, #0xc0
    lsl r0, r0, #0xe
    and r0, r4
    lsr r4, r0, #0xe
    ldr r2, [pc, #0x8112c60-0x8112c2e-2] // soundpwmcontrol+1
    ldrb r1, [r2]
    mov r0, #0x3f 
    and r0, r1
    orr r0, r4
    strb r0, [r2]
loc_8112C3A:
    mov r4, #0xf0
    lsl r4, r4, #0xc
    and r4, r3
    cmp r4, #0
    beq loc_8112C4E
    bl sub_8112CB8
    add r0, r4, #0
    bl sub_8112B28
loc_8112C4E:
    ldr r0, [pc, #0x8112c5c-0x8112c4e-2] // =0x68736D53
    str r0, [r5]
loc_8112C52:
    pop {r4,r5}
    pop {r0}
    bx r0
off_8112C58:    .word loc_3007FF0
dword_8112C5C:    .word 0x68736D53
off_8112C60:    .word SoundPWMControl+1
// end of function sub_8112BCC

    push {r4-r7,lr}
    ldr r0, [pc, #0x8112cb0-0x8112c66-2] // loc_3007FF0
    ldr r6, [r0]
    ldr r1, [r6]
    ldr r0, [pc, #0x8112cb4-0x8112c6c-4] // =0x68736D53
    cmp r1, r0
    bne loc_8112CAA
    add r0, r1, #1
    str r0, [r6]
    mov r5, #0xc
    add r4, r6, #0
    add r4, #0x50 
    mov r0, #0
loc_8112C7E:
    strb r0, [r4]
    sub r5, #1
    add r4, #0x40 
    cmp r5, #0
    bgt loc_8112C7E
    ldr r4, [r6,#0x1c]
    cmp r4, #0
    beq loc_8112CA6
    mov r5, #1
    mov r7, #0
loc_8112C92:
    lsl r0, r5, #0x18
    lsr r0, r0, #0x18
    ldr r1, [r6,#0x2c]
    bl word_81118A0
    strb r7, [r4]
    add r5, #1
    add r4, #0x40 
    cmp r5, #4
    ble loc_8112C92
loc_8112CA6:
    ldr r0, [pc, #0x8112cb4-0x8112ca6-2] // =0x68736D53
    str r0, [r6]
loc_8112CAA:
    pop {r4-r7}
    pop {r0}
    bx r0
off_8112CB0:    .word loc_3007FF0
dword_8112CB4:    .word 0x68736D53
.thumb
sub_8112CB8:
    push {lr}
    sub sp, sp, #4
    ldr r0, [pc, #0x8112d18-0x8112cbc-4] // loc_3007FF0
    ldr r2, [r0]
    ldr r1, [r2]
    ldr r3, [pc, #0x8112d1c-0x8112cc2-2] // =0x978C92AD
    add r0, r1, r3
    cmp r0, #1
    bhi loc_8112D10
    add r0, r1, #0
    add r0, #0xa
    str r0, [r2]
    ldr r1, [pc, #0x8112d20-0x8112cd0-4] // DMA1WordCount
    ldr r0, [r1]
    mov r3, #0x80
    lsl r3, r3, #0x12
    and r0, r3
    cmp r0, #0
    beq loc_8112CE2
    ldr r0, [pc, #0x8112d24-0x8112cde-2] // =0x84400004
    str r0, [r1]
loc_8112CE2:
    ldr r1, [pc, #0x8112d28-0x8112ce2-2] // DMA2WordCount
    ldr r0, [r1]
    and r0, r3
    cmp r0, #0
    beq loc_8112CF0
    ldr r0, [pc, #0x8112d24-0x8112cec-4] // =0x84400004
    str r0, [r1]
loc_8112CF0:
    ldr r0, [pc, #0x8112d2c-0x8112cf0-4] // DMA1Control
    mov r3, #0x80
    lsl r3, r3, #3
    add r1, r3, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    mov r0, #0
    str r0, [sp]
    mov r0, #0xd4
    lsl r0, r0, #2
    add r1, r2, r0
    ldr r2, [pc, #0x8112d30-0x8112d08-4] // =0x5000318
    mov r0, sp
    bl loc_81116EC
loc_8112D10:
    add sp, sp, #4
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112D18:    .word loc_3007FF0
dword_8112D1C:    .word 0x978C92AD
off_8112D20:    .word DMA1WordCount
dword_8112D24:    .word 0x84400004
off_8112D28:    .word DMA2WordCount
off_8112D2C:    .word DMA1Control
dword_8112D30:    .word 0x5000318
// end of function sub_8112CB8

.thumb
sub_8112D34:
    push {r4,lr}
    ldr r0, [pc, #0x8112d64-0x8112d36-2] // loc_3007FF0
    ldr r2, [r0]
    ldr r3, [r2]
    ldr r0, [pc, #0x8112d68-0x8112d3c-4] // =0x68736D53
    cmp r3, r0
    beq loc_8112D5C
    ldr r0, [pc, #0x8112d6c-0x8112d42-2] // DMA1Control
    mov r4, #0xb6
    lsl r4, r4, #8
    add r1, r4, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    ldrb r0, [r2,#4]
    mov r0, #0
    strb r0, [r2,#4]
    add r0, r3, #0
    sub r0, #0xa
    str r0, [r2]
loc_8112D5C:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112D64:    .word loc_3007FF0
dword_8112D68:    .word 0x68736D53
off_8112D6C:    .word DMA1Control
// end of function sub_8112D34

.thumb
sub_8112D70:
    push {r4-r7,lr}
    add r7, r0, #0
    add r6, r1, #0
    lsl r2, r2, #0x18
    lsr r4, r2, #0x18
    cmp r4, #0
    beq loc_8112DD4
    cmp r4, #0x10
    bls loc_8112D84
    mov r4, #0x10
loc_8112D84:
    ldr r0, [pc, #0x8112ddc-0x8112d84-4] // loc_3007FF0
    ldr r5, [r0]
    ldr r1, [r5]
    ldr r0, [pc, #0x8112de0-0x8112d8a-2] // =0x68736D53
    cmp r1, r0
    bne loc_8112DD4
    add r0, r1, #1
    str r0, [r5]
    add r0, r7, #0
    bl sub_8112A1C
    str r6, [r7,#0x2c]
    strb r4, [r7,#8]
    mov r0, #0x80
    lsl r0, r0, #0x18
    str r0, [r7,#4]
    cmp r4, #0
    beq loc_8112DB8
    mov r1, #0
loc_8112DAA:
    strb r1, [r6]
    sub r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r6, #0x50 
    cmp r4, #0
    bne loc_8112DAA
loc_8112DB8:
    ldr r0, [r5,#0x20]
    cmp r0, #0
    beq loc_8112DC8
    str r0, [r7,#0x38]
    ldr r0, [r5,#0x24]
    str r0, [r7,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
loc_8112DC8:
    str r7, [r5,#0x24]
    ldr r0, [pc, #0x8112de4-0x8112dca-2] // loc_8112020+1
    str r0, [r5,#0x20]
    ldr r0, [pc, #0x8112de0-0x8112dce-2] // =0x68736D53
    str r0, [r5]
    str r0, [r7,#0x34]
loc_8112DD4:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8112DDC:    .word loc_3007FF0
dword_8112DE0:    .word 0x68736D53
off_8112DE4:    .word loc_8112020+1
// end of function sub_8112D70

.thumb
sub_8112DE8:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    add r5, r0, #0
    add r7, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [pc, #0x8112ec8-0x8112df4-4] // =0x68736D53
    cmp r1, r0
    bne loc_8112EBE
    ldrb r0, [r5,#0xb]
    ldrb r2, [r7,#2]
    cmp r0, #0
    beq loc_8112E2A
    ldr r0, [r5]
    cmp r0, #0
    beq loc_8112E14
    ldr r1, [r5,#0x2c]
    mov r0, #0x40 
    ldrb r1, [r1]
    and r0, r1
    cmp r0, #0
    bne loc_8112E20
loc_8112E14:
    ldr r1, [r5,#4]
    ldrh r0, [r5,#4]
    cmp r0, #0
    beq loc_8112E2A
    cmp r1, #0
    blt loc_8112E2A
loc_8112E20:
    ldrb r0, [r7,#2]
    add r2, r0, #0
    ldrb r0, [r5,#9]
    cmp r0, r2
    bhi loc_8112EBE
loc_8112E2A:
    ldr r0, [r5,#0x34]
    add r0, #1
    str r0, [r5,#0x34]
    mov r1, #0
    str r1, [r5,#4]
    str r7, [r5]
    ldr r0, [r7,#4]
    str r0, [r5,#0x30]
    strb r2, [r5,#9]
    str r1, [r5,#0xc]
    mov r0, #0x96
    strh r0, [r5,#0x1c]
    strh r0, [r5,#0x20]
    add r0, #0x6a 
    strh r0, [r5,#0x1e]
    strh r1, [r5,#0x22]
    strh r1, [r5,#0x24]
    mov r6, #0
    ldr r4, [r5,#0x2c]
    ldrb r1, [r7]
    cmp r6, r1
    bge loc_8112E8A
    ldrb r0, [r5,#8]
    cmp r6, r0
    bge loc_8112EAA
    mov r8, r6
loc_8112E5E:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_8112288
    mov r0, #0xc0
    strb r0, [r4]
    mov r1, r8
    str r1, [r4,#0x20]
    lsl r1, r6, #2
    add r0, r7, #0
    add r0, #8
    add r0, r0, r1
    ldr r0, [r0]
    str r0, [r4,#0x40]
    add r6, #1
    add r4, #0x50 
    ldrb r0, [r7]
    cmp r6, r0
    bge loc_8112E8A
    ldrb r1, [r5,#8]
    cmp r6, r1
    blt loc_8112E5E
loc_8112E8A:
    ldrb r0, [r5,#8]
    cmp r6, r0
    bge loc_8112EAA
    mov r1, #0
    mov r8, r1
loc_8112E94:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_8112288
    mov r0, r8
    strb r0, [r4]
    add r6, #1
    add r4, #0x50 
    ldrb r1, [r5,#8]
    cmp r6, r1
    blt loc_8112E94
loc_8112EAA:
    mov r0, #0x80
    ldrb r1, [r7,#3]
    and r0, r1
    cmp r0, #0
    beq loc_8112EBA
    ldrb r0, [r7,#3]
    bl sub_8112BCC
loc_8112EBA:
    ldr r0, [pc, #0x8112ec8-0x8112eba-2] // =0x68736D53
    str r0, [r5,#0x34]
loc_8112EBE:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
dword_8112EC8:    .word 0x68736D53
// end of function sub_8112DE8

.thumb
sub_8112ECC:
    push {r4-r6,lr}
    add r6, r0, #0
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x8112f08-0x8112ed2-2] // =0x68736D53
    cmp r1, r0
    bne loc_8112F02
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldr r0, [r6,#4]
    mov r1, #0x80
    lsl r1, r1, #0x18
    orr r0, r1
    str r0, [r6,#4]
    ldrb r4, [r6,#8]
    ldr r5, [r6,#0x2c]
    cmp r4, #0
    ble loc_8112EFE
loc_8112EEE:
    add r0, r6, #0
    add r1, r5, #0
    bl sub_8112288
    sub r4, #1
    add r5, #0x50 
    cmp r4, #0
    bgt loc_8112EEE
loc_8112EFE:
    ldr r0, [pc, #0x8112f08-0x8112efe-2] // =0x68736D53
    str r0, [r6,#0x34]
loc_8112F02:
    pop {r4-r6}
    pop {r0}
    bx r0
dword_8112F08:    .word 0x68736D53
// end of function sub_8112ECC

.thumb
sub_8112F0C:
    push {r4-r7,lr}
    add r6, r0, #0
    ldrh r1, [r6,#0x24]
    cmp r1, #0
    beq loc_8112FCE
    ldrh r0, [r6,#0x26]
    sub r0, #1
    strh r0, [r6,#0x26]
    ldr r3, [pc, #0x8112f4c-0x8112f1c-4] // =0xFFFF
    add r2, r3, #0
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    cmp r3, #0
    bne loc_8112FCE
    strh r1, [r6,#0x26]
    ldrh r1, [r6,#0x28]
    mov r0, #2
    and r0, r1
    cmp r0, #0
    beq loc_8112F50
    add r0, r1, #0
    add r0, #0x10
    strh r0, [r6,#0x28]
    and r0, r2
    cmp r0, #0xff
    bls loc_8112FA2
    mov r0, #0x80
    lsl r0, r0, #1
    strh r0, [r6,#0x28]
    strh r3, [r6,#0x24]
    b loc_8112FA2
    .balign 4, 0x00
dword_8112F4C:    .word 0xFFFF
loc_8112F50:
    add r0, r1, #0
    sub r0, #0x10
    strh r0, [r6,#0x28]
    and r0, r2
    lsl r0, r0, #0x10
    cmp r0, #0
    bgt loc_8112FA2
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    cmp r5, #0
    ble loc_8112F82
loc_8112F66:
    add r0, r6, #0
    add r1, r4, #0
    bl sub_8112288
    mov r0, #1
    ldrh r7, [r6,#0x28]
    and r0, r7
    cmp r0, #0
    bne loc_8112F7A
    strb r0, [r4]
loc_8112F7A:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_8112F66
loc_8112F82:
    mov r0, #1
    ldrh r1, [r6,#0x28]
    and r0, r1
    cmp r0, #0
    beq loc_8112F96
    ldr r0, [r6,#4]
    mov r1, #0x80
    lsl r1, r1, #0x18
    orr r0, r1
    b loc_8112F9A
loc_8112F96:
    mov r0, #0x80
    lsl r0, r0, #0x18
loc_8112F9A:
    str r0, [r6,#4]
    mov r0, #0
    strh r0, [r6,#0x24]
    b loc_8112FCE
loc_8112FA2:
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    cmp r5, #0
    ble loc_8112FCE
    mov r3, #0x80
    mov r7, #0
    mov r2, #3
loc_8112FB0:
    ldrb r1, [r4]
    add r0, r3, #0
    and r0, r1
    cmp r0, #0
    beq loc_8112FC6
    ldrh r7, [r6,#0x28]
    lsr r0, r7, #2
    strb r0, [r4,#0x13]
    add r0, r1, #0
    orr r0, r2
    strb r0, [r4]
loc_8112FC6:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_8112FB0
loc_8112FCE:
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_8112F0C

.thumb
sub_8112FD4:
    push {r4,lr}
    add r2, r1, #0
    mov r0, #1
    ldrb r1, [r2]
    and r0, r1
    cmp r0, #0
    beq loc_8113038
    ldrb r3, [r2,#0x13]
    ldrb r1, [r2,#0x12]
    add r0, r3, #0
    mul r0, r1
    lsr r3, r0, #5
    ldrb r4, [r2,#0x18]
    cmp r4, #1
    bne loc_8112FFC
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    add r0, #0x80
    mul r0, r3
    lsr r3, r0, #7
loc_8112FFC:
    mov r0, #0x14
    ldrsb r0, [r2,r0]
    lsl r0, r0, #1
    mov r1, #0x15
    ldrsb r1, [r2,r1]
    add r1, r0, r1
    cmp r4, #2
    bne loc_8113012
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    add r1, r1, r0
loc_8113012:
    mov r0, #0x80
    neg r0, r0
    cmp r1, r0
    bge loc_811301E
    add r1, r0, #0
    b loc_8113024
loc_811301E:
    cmp r1, #0x7f
    ble loc_8113024
    mov r1, #0x7f
loc_8113024:
    add r0, r1, #0
    add r0, #0x80
    mul r0, r3
    lsr r0, r0, #8
    strb r0, [r2,#0x10]
    mov r0, #0x7f
    sub r0, r0, r1
    mul r0, r3
    lsr r0, r0, #8
    strb r0, [r2,#0x11]
loc_8113038:
    ldrb r1, [r2]
    mov r0, #4
    and r0, r1
    add r3, r1, #0
    cmp r0, #0
    beq loc_811307C
    mov r0, #0xe
    ldrsb r0, [r2,r0]
    ldrb r1, [r2,#0xf]
    mul r0, r1
    mov r1, #0xc
    ldrsb r1, [r2,r1]
    add r1, r1, r0
    lsl r1, r1, #2
    mov r0, #0xa
    ldrsb r0, [r2,r0]
    lsl r0, r0, #8
    add r1, r1, r0
    mov r0, #0xb
    ldrsb r0, [r2,r0]
    lsl r0, r0, #8
    add r1, r1, r0
    ldrb r0, [r2,#0xd]
    add r1, r0, r1
    ldrb r0, [r2,#0x18]
    cmp r0, #0
    bne loc_8113076
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    lsl r0, r0, #4
    add r1, r1, r0
loc_8113076:
    asr r0, r1, #8
    strb r0, [r2,#8]
    strb r1, [r2,#9]
loc_811307C:
    mov r0, #0xfa
    and r0, r3
    strb r0, [r2]
    pop {r4}
    pop {r0}
    bx r0
// end of function sub_8112FD4

.thumb
sub_8113088:
    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x18
    lsr r5, r1, #0x18
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r12, r2
    cmp r0, #4
    bne loc_81130C0
    cmp r5, #0x14
    bhi loc_81130A4
    mov r5, #0
    b loc_81130B2
loc_81130A4:
    add r0, r5, #0
    sub r0, #0x15
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0x3b 
    bls loc_81130B2
    mov r5, #0x3b 
loc_81130B2:
    ldr r0, [pc, #0x81130bc-0x81130b2-2] // byte_820A218
    add r0, r5, r0
    ldrb r0, [r0]
    b loc_8113122
    .balign 4, 0x00
off_81130BC:    .word byte_820A218
loc_81130C0:
    cmp r5, #0x23 
    bhi loc_81130CC
    mov r0, #0
    mov r12, r0
    mov r5, #0
    b loc_81130DE
loc_81130CC:
    add r0, r5, #0
    sub r0, #0x24 
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0x82
    bls loc_81130DE
    mov r5, #0x82
    mov r1, #0xff
    mov r12, r1
loc_81130DE:
    ldr r3, [pc, #0x8113128-0x81130de-2] // byte_820A17C
    add r0, r5, r3
    ldrb r6, [r0]
    ldr r4, [pc, #0x811312c-0x81130e4-4] // dword_820A200
    mov r2, #0xf
    add r0, r6, #0
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r4
    mov r7, #0
    ldrsh r1, [r0,r7]
    asr r0, r6, #4
    add r6, r1, #0
    asr r6, r0
    add r0, r5, #1
    add r0, r0, r3
    ldrb r1, [r0]
    add r0, r1, #0
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r4
    mov r2, #0
    ldrsh r0, [r0,r2]
    asr r1, r1, #4
    asr r0, r1
    sub r0, r0, r6
    mov r7, r12
    mul r7, r0
    add r0, r7, #0
    asr r0, r0, #8
    add r0, r6, r0
    mov r1, #0x80
    lsl r1, r1, #4
    add r0, r0, r1
loc_8113122:
    pop {r4-r7}
    pop {r1}
    bx r1
off_8113128:    .word byte_820A17C
off_811312C:    .word dword_820A200
// end of function sub_8113088

.thumb
sub_8113130:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #2
    beq loc_8113158
    cmp r0, #2
    bgt loc_8113144
    cmp r0, #1
    beq loc_811314A
    b loc_811316C
loc_8113144:
    cmp r1, #3
    beq loc_8113160
    b loc_811316C
loc_811314A:
    ldr r1, [pc, #0x8113154-0x811314a-2] // channel1duty_length_envelope_nr11_nr12_+1
    mov r0, #8
    strb r0, [r1]
    add r1, #2
    b loc_8113174
off_8113154:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
loc_8113158:
    ldr r1, [pc, #0x811315c-0x8113158-4] // channel2duty_length_envelope_nr21_nr22_+1
    b loc_811316E
off_811315C:    .word Channel2Duty_Length_Envelope_NR21_NR22_+1
loc_8113160:
    ldr r1, [pc, #0x8113168-0x8113160-4] // Channel3Stop_WaveRAMselect_NR30_
    mov r0, #0
    b loc_8113176
    .balign 4, 0x00
off_8113168:    .word Channel3Stop_WaveRAMselect_NR30_
loc_811316C:
    ldr r1, [pc, #0x811317c-0x811316c-4] // channel4length_envelope_nr41_nr42_+1
loc_811316E:
    mov r0, #8
    strb r0, [r1]
    add r1, #4
loc_8113174:
    mov r0, #0x80
loc_8113176:
    strb r0, [r1]
    bx lr
    .balign 4, 0x00
off_811317C:    .word Channel4Length_Envelope_NR41_NR42_+1
// end of function sub_8113130

.thumb
sub_8113180:
    push {r4,lr}
    add r1, r0, #0
    ldrb r0, [r1,#2]
    lsl r2, r0, #0x18
    lsr r4, r2, #0x18
    ldrb r3, [r1,#3]
    lsl r0, r3, #0x18
    lsr r3, r0, #0x18
    cmp r4, r3
    bcc loc_81131A0
    lsr r0, r2, #0x19
    cmp r0, r3
    bcc loc_81131AC
    mov r0, #0xf
    strb r0, [r1,#0x1b]
    b loc_81131BA
loc_81131A0:
    lsr r0, r0, #0x19
    cmp r0, r4
    bcc loc_81131AC
    mov r0, #0xf0
    strb r0, [r1,#0x1b]
    b loc_81131BA
loc_81131AC:
    mov r0, #0xff
    strb r0, [r1,#0x1b]
    ldrb r2, [r1,#3]
    ldrb r3, [r1,#2]
    add r0, r2, r3
    lsr r0, r0, #4
    b loc_81131CA
loc_81131BA:
    ldrb r2, [r1,#3]
    ldrb r3, [r1,#2]
    add r0, r2, r3
    lsr r0, r0, #4
    strb r0, [r1,#0xa]
    cmp r0, #0xf
    bls loc_81131CC
    mov r0, #0xf
loc_81131CA:
    strb r0, [r1,#0xa]
loc_81131CC:
    ldrb r2, [r1,#6]
    ldrb r3, [r1,#0xa]
    add r0, r2, #0
    mul r0, r3
    add r0, #0xf
    asr r0, r0, #4
    strb r0, [r1,#0x19]
    ldrb r0, [r1,#0x1c]
    ldrb r2, [r1,#0x1b]
    and r0, r2
    strb r0, [r1,#0x1b]
    pop {r4}
    pop {r0}
    bx r0
// end of function sub_8113180

.thumb
sub_81131E8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #0x1c
    ldr r0, [pc, #0x8113208-0x81131f4-4] // loc_3007FF0
    ldr r0, [r0]
    str r0, [sp,#4]
    ldrb r0, [r0,#0xa]
    cmp r0, #0
    beq loc_811320C
    sub r0, #1
    ldr r1, [sp,#4]
    strb r0, [r1,#0xa]
    b loc_8113212
off_8113208:    .word loc_3007FF0
loc_811320C:
    mov r0, #0xe
    ldr r2, [sp,#4]
    strb r0, [r2,#0xa]
loc_8113212:
    mov r6, #1
    ldr r0, [sp,#4]
    ldr r4, [r0,#0x1c]
loc_8113218:
    ldrb r1, [r4]
    mov r0, #0xc7
    and r0, r1
    add r2, r6, #1
    mov r10, r2
    mov r2, #0x40 
    add r2, r2, r4
    mov r9, r2
    cmp r0, #0
    bne loc_811322E
    b loc_8113618
loc_811322E:
    cmp r6, #2
    beq loc_8113260
    cmp r6, #2
    bgt loc_811323C
    cmp r6, #1
    beq loc_8113242
    b loc_8113298
loc_811323C:
    cmp r6, #3
    beq loc_8113278
    b loc_8113298
loc_8113242:
    ldr r0, [pc, #0x8113254-0x8113242-2] // Channel1Sweepregister_NR10_
    str r0, [sp,#8]
    ldr r7, [pc, #0x8113258-0x8113246-2] // Channel1Duty_Length_Envelope_NR11_NR12_
    ldr r2, [pc, #0x811325c-0x8113248-4] // channel1duty_length_envelope_nr11_nr12_+1
    str r2, [sp,#0xc]
    add r0, #4
    str r0, [sp,#0x10]
    add r2, #2
    b loc_81132A8
off_8113254:    .word Channel1Sweepregister_NR10_
off_8113258:    .word Channel1Duty_Length_Envelope_NR11_NR12_
off_811325C:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
loc_8113260:
    ldr r0, [pc, #0x811326c-0x8113260-4] // channel1sweepregister_nr10_+1
    str r0, [sp,#8]
    ldr r7, [pc, #0x8113270-0x8113264-4] // Channel2Duty_Length_Envelope_NR21_NR22_
    ldr r2, [pc, #0x8113274-0x8113266-2] // channel2duty_length_envelope_nr21_nr22_+1
    b loc_81132A0
    .balign 4, 0x00
off_811326C:    .word Channel1Sweepregister_NR10_+1
off_8113270:    .word Channel2Duty_Length_Envelope_NR21_NR22_
off_8113274:    .word Channel2Duty_Length_Envelope_NR21_NR22_+1
loc_8113278:
    ldr r0, [pc, #0x811328c-0x8113278-4] // Channel3Stop_WaveRAMselect_NR30_
    str r0, [sp,#8]
    ldr r7, [pc, #0x8113290-0x811327c-4] // Channel3Length_Volume_NR31_NR32_
    ldr r2, [pc, #0x8113294-0x811327e-2] // channel3length_volume_nr31_nr32_+1
    str r2, [sp,#0xc]
    add r0, #4
    str r0, [sp,#0x10]
    add r2, #2
    b loc_81132A8
    .balign 4, 0x00
off_811328C:    .word Channel3Stop_WaveRAMselect_NR30_
off_8113290:    .word Channel3Length_Volume_NR31_NR32_
off_8113294:    .word Channel3Length_Volume_NR31_NR32_+1
loc_8113298:
    ldr r0, [pc, #0x81132f8-0x8113298-4] // channel3stop_waveramselect_nr30_+1
    str r0, [sp,#8]
    ldr r7, [pc, #0x81132fc-0x811329c-4] // Channel4Length_Envelope_NR41_NR42_
    ldr r2, [pc, #0x8113300-0x811329e-2] // channel4length_envelope_nr41_nr42_+1
loc_81132A0:
    str r2, [sp,#0xc]
    add r0, #0xb
    str r0, [sp,#0x10]
    add r2, #4
loc_81132A8:
    str r2, [sp,#0x14]
    ldr r0, [sp,#4]
    ldrb r0, [r0,#0xa]
    str r0, [sp]
    ldr r2, [sp,#0xc]
    ldrb r0, [r2]
    mov r8, r0
    add r2, r1, #0
    mov r0, #0x80
    and r0, r2
    cmp r0, #0
    beq loc_811339E
    mov r3, #0x40 
    add r0, r3, #0
    and r0, r2
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    add r0, r6, #1
    mov r10, r0
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r5, #0
    bne loc_81133C2
    mov r0, #3
    strb r0, [r4]
    strb r0, [r4,#0x1d]
    add r0, r4, #0
    str r3, [sp,#0x18]
    bl sub_8113180
    ldr r3, [sp,#0x18]
    cmp r6, #2
    beq loc_8113310
    cmp r6, #2
    bgt loc_8113304
    cmp r6, #1
    beq loc_811330A
    b loc_8113364
    .balign 4, 0x00
off_81132F8:    .word Channel3Stop_WaveRAMselect_NR30_+1
off_81132FC:    .word Channel4Length_Envelope_NR41_NR42_
off_8113300:    .word Channel4Length_Envelope_NR41_NR42_+1
loc_8113304:
    cmp r6, #3
    beq loc_811331C
    b loc_8113364
loc_811330A:
    ldrb r0, [r4,#0x1f]
    ldr r2, [sp,#8]
    strb r0, [r2]
loc_8113310:
    ldr r0, [r4,#0x24]
    lsl r0, r0, #6
    ldrb r1, [r4,#0x1e]
    add r0, r1, r0
    strb r0, [r7]
    b loc_8113370
loc_811331C:
    ldr r1, [r4,#0x24]
    ldr r0, [r4,#0x28]
    cmp r1, r0
    beq loc_8113344
    ldr r2, [sp,#8]
    strb r3, [r2]
    ldr r1, [pc, #0x8113358-0x8113328-4] // Channel3WavePatternRAM_2banks___
    ldr r2, [r4,#0x24]
    ldr r0, [r2]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#4]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#8]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#0xc]
    str r0, [r1]
    str r2, [r4,#0x28]
loc_8113344:
    ldr r0, [sp,#8]
    strb r5, [r0]
    ldrb r0, [r4,#0x1e]
    strb r0, [r7]
    ldrb r0, [r4,#0x1e]
    cmp r0, #0
    beq loc_811335C
    mov r0, #0xc0
    b loc_811337E
    .balign 4, 0x00
off_8113358:    .word Channel3WavePatternRAM_2banks___
loc_811335C:
    mov r1, #0x80
    neg r1, r1
    strb r1, [r4,#0x1a]
    b loc_8113380
loc_8113364:
    ldrb r0, [r4,#0x1e]
    strb r0, [r7]
    ldr r0, [r4,#0x24]
    lsl r0, r0, #3
    ldr r2, [sp,#0x10]
    strb r0, [r2]
loc_8113370:
    ldrb r0, [r4,#4]
    add r0, #8
    mov r8, r0
    ldrb r0, [r4,#0x1e]
    cmp r0, #0
    beq loc_811337E
    mov r0, #0x40 
loc_811337E:
    strb r0, [r4,#0x1a]
loc_8113380:
    ldrb r1, [r4,#4]
    mov r2, #0
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    add r1, r6, #1
    mov r10, r1
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r0, #0
    bne loc_811339A
    b loc_81134D6
loc_811339A:
    strb r2, [r4,#9]
    b loc_8113504
loc_811339E:
    mov r0, #4
    and r0, r2
    cmp r0, #0
    beq loc_81133D0
    ldrb r0, [r4,#0xd]
    sub r0, #1
    strb r0, [r4,#0xd]
    mov r2, #0xff
    and r0, r2
    lsl r0, r0, #0x18
    add r1, r6, #1
    mov r10, r1
    mov r2, #0x40 
    add r2, r2, r4
    mov r9, r2
    cmp r0, #0
    ble loc_81133C2
    b loc_8113516
loc_81133C2:
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    bl sub_8113130
    mov r0, #0
    strb r0, [r4]
    b loc_8113614
loc_81133D0:
    mov r0, #0x40 
    and r0, r1
    add r2, r6, #1
    mov r10, r2
    mov r2, #0x40 
    add r2, r2, r4
    mov r9, r2
    cmp r0, #0
    beq loc_8113410
    mov r0, #3
    and r0, r1
    cmp r0, #0
    beq loc_8113410
    mov r0, #0xfc
    and r0, r1
    mov r2, #0
    strb r0, [r4]
    ldrb r1, [r4,#7]
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    cmp r0, #0
    beq loc_8113442
    mov r0, #1
    ldrb r1, [r4,#0x1d]
    orr r0, r1
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_8113504
    ldrb r2, [r4,#7]
    mov r8, r2
    b loc_8113504
loc_8113410:
    ldrb r0, [r4,#0xb]
    cmp r0, #0
    bne loc_8113504
    cmp r6, #3
    bne loc_8113422
    mov r0, #1
    ldrb r1, [r4,#0x1d]
    orr r0, r1
    strb r0, [r4,#0x1d]
loc_8113422:
    add r0, r4, #0
    bl sub_8113180
    mov r0, #3
    ldrb r2, [r4]
    and r0, r2
    cmp r0, #0
    bne loc_8113476
    ldrb r0, [r4,#9]
    sub r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #0x18
    cmp r0, #0
    bgt loc_8113472
loc_8113442:
    ldrb r2, [r4,#0xc]
    ldrb r1, [r4,#0xa]
    add r0, r2, #0
    mul r0, r1
    add r0, #0xff
    asr r0, r0, #8
    mov r1, #0
    strb r0, [r4,#9]
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_81133C2
    mov r0, #4
    ldrb r2, [r4]
    orr r0, r2
    strb r0, [r4]
    mov r0, #1
    ldrb r1, [r4,#0x1d]
    orr r0, r1
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_8113516
    mov r2, #8
    mov r8, r2
    b loc_8113516
loc_8113472:
    ldrb r0, [r4,#7]
    b loc_8113502
loc_8113476:
    cmp r0, #1
    bne loc_8113482
loc_811347A:
    ldrb r0, [r4,#0x19]
    strb r0, [r4,#9]
    mov r0, #7
    b loc_8113502
loc_8113482:
    cmp r0, #2
    bne loc_81134C6
    ldrb r0, [r4,#9]
    sub r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #0x18
    ldrb r2, [r4,#0x19]
    lsl r1, r2, #0x18
    cmp r0, r1
    bgt loc_81134C2
loc_811349A:
    ldrb r0, [r4,#6]
    cmp r0, #0
    bne loc_81134AA
    mov r0, #0xfc
    ldrb r1, [r4]
    and r0, r1
    strb r0, [r4]
    b loc_8113442
loc_81134AA:
    ldrb r0, [r4]
    sub r0, #1
    strb r0, [r4]
    mov r0, #1
    ldrb r2, [r4,#0x1d]
    orr r0, r2
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_811347A
    mov r0, #8
    mov r8, r0
    b loc_811347A
loc_81134C2:
    ldrb r0, [r4,#5]
    b loc_8113502
loc_81134C6:
    ldrb r0, [r4,#9]
    add r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    ldrb r2, [r4,#0xa]
    cmp r0, r2
    bcc loc_8113500
loc_81134D6:
    ldrb r0, [r4]
    sub r0, #1
    mov r2, #0
    strb r0, [r4]
    ldrb r1, [r4,#5]
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    cmp r0, #0
    beq loc_811349A
    mov r0, #1
    ldrb r1, [r4,#0x1d]
    orr r0, r1
    strb r0, [r4,#0x1d]
    ldrb r0, [r4,#0xa]
    strb r0, [r4,#9]
    cmp r6, #3
    beq loc_8113504
    ldrb r2, [r4,#5]
    mov r8, r2
    b loc_8113504
loc_8113500:
    ldrb r0, [r4,#4]
loc_8113502:
    strb r0, [r4,#0xb]
loc_8113504:
    ldrb r0, [r4,#0xb]
    sub r0, #1
    strb r0, [r4,#0xb]
    ldr r0, [sp]
    cmp r0, #0
    bne loc_8113516
    sub r0, #1
    str r0, [sp]
    b loc_8113410
loc_8113516:
    mov r0, #2
    ldrb r1, [r4,#0x1d]
    and r0, r1
    cmp r0, #0
    beq loc_811358E
    cmp r6, #3
    bgt loc_8113556
    mov r0, #8
    ldrb r2, [r4,#1]
    and r0, r2
    cmp r0, #0
    beq loc_8113556
    ldr r0, [pc, #0x8113540-0x811352e-2] // soundpwmcontrol+1
    ldrb r0, [r0]
    cmp r0, #0x3f 
    bgt loc_8113548
    ldr r0, [r4,#0x20]
    add r0, #2
    ldr r1, [pc, #0x8113544-0x811353a-2] // =0x7FC
    b loc_8113552
    .byte 0, 0
off_8113540:    .word SoundPWMControl+1
off_8113544:    .word 0x7FC
loc_8113548:
    cmp r0, #0x7f
    bgt loc_8113556
    ldr r0, [r4,#0x20]
    add r0, #1
    ldr r1, [pc, #0x8113564-0x8113550-4] // =0x7FC
loc_8113552:
    and r0, r1
    str r0, [r4,#0x20]
loc_8113556:
    cmp r6, #4
    beq loc_8113568
    ldr r0, [r4,#0x20]
    ldr r1, [sp,#0x10]
    strb r0, [r1]
    b loc_8113576
    .balign 4, 0x00
dword_8113564:    .word 0x7FE
loc_8113568:
    ldr r2, [sp,#0x10]
    ldrb r0, [r2]
    mov r1, #8
    and r1, r0
    ldr r0, [r4,#0x20]
    orr r0, r1
    strb r0, [r2]
loc_8113576:
    mov r0, #0xc0
    ldrb r1, [r4,#0x1a]
    and r0, r1
    add r1, r4, #0
    add r1, #0x21 
    ldrb r1, [r1]
    add r0, r1, r0
    strb r0, [r4,#0x1a]
    mov r2, #0xff
    and r0, r2
    ldr r1, [sp,#0x14]
    strb r0, [r1]
loc_811358E:
    mov r0, #1
    ldrb r2, [r4,#0x1d]
    and r0, r2
    cmp r0, #0
    beq loc_8113614
    ldr r1, [pc, #0x81135d8-0x8113598-4] // controlstereo_volume_enable_nr50_nr51_+1
    ldrb r0, [r1]
    ldrb r2, [r4,#0x1c]
    bic r0, r2
    ldrb r2, [r4,#0x1b]
    orr r0, r2
    strb r0, [r1]
    cmp r6, #3
    bne loc_81135E0
    ldr r0, [pc, #0x81135dc-0x81135aa-2] // dword_820A254
    ldrb r1, [r4,#9]
    add r0, r1, r0
    ldrb r0, [r0]
    ldr r2, [sp,#0xc]
    strb r0, [r2]
    mov r1, #0x80
    add r0, r1, #0
    ldrb r2, [r4,#0x1a]
    and r0, r2
    cmp r0, #0
    beq loc_8113614
    ldr r0, [sp,#8]
    strb r1, [r0]
    ldrb r0, [r4,#0x1a]
    ldr r1, [sp,#0x14]
    strb r0, [r1]
    mov r0, #0x7f
    ldrb r2, [r4,#0x1a]
    and r0, r2
    strb r0, [r4,#0x1a]
    b loc_8113614
    .balign 4, 0x00
off_81135D8:    .word ControlStereo_Volume_Enable_NR50_NR51_+1
off_81135DC:    .word dword_820A254
loc_81135E0:
    mov r0, #0xf
    mov r1, r8
    and r1, r0
    mov r8, r1
    ldrb r2, [r4,#9]
    lsl r0, r2, #4
    add r0, r8
    ldr r1, [sp,#0xc]
    strb r0, [r1]
    mov r2, #0x80
    ldrb r0, [r4,#0x1a]
    orr r0, r2
    ldr r1, [sp,#0x14]
    strb r0, [r1]
    cmp r6, #1
    bne loc_8113614
    ldr r0, [sp,#8]
    ldrb r1, [r0]
    mov r0, #8
    and r0, r1
    cmp r0, #0
    bne loc_8113614
    ldrb r0, [r4,#0x1a]
    orr r0, r2
    ldr r1, [sp,#0x14]
    strb r0, [r1]
loc_8113614:
    mov r0, #0
    strb r0, [r4,#0x1d]
loc_8113618:
    mov r6, r10
    mov r4, r9
    cmp r6, #4
    bgt loc_8113622
    b loc_8113218
loc_8113622:
    add sp, sp, #0x1c
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_81131E8

    push {r4,lr}
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x8113658-0x811363e-2] // =0x68736D53
    cmp r3, r0
    bne loc_8113650
    strh r1, [r2,#0x1e]
    ldrh r4, [r2,#0x1c]
    add r0, r1, #0
    mul r0, r4
    asr r0, r0, #8
    strh r0, [r2,#0x20]
loc_8113650:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_8113658:    .word 0x68736D53
.thumb
sub_811365C:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    lsl r6, r2, #0x10
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x81136c0-0x811366e-2] // =0x68736D53
    cmp r3, r0
    bne loc_81136B4
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r1, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_81136B0
    mov r0, #0x80
    mov r8, r0
    lsr r6, r6, #0x12
    mov r0, #3
    mov r12, r0
loc_811368C:
    add r0, r7, #0
    and r0, r5
    cmp r0, #0
    beq loc_81136A6
    ldrb r3, [r1]
    mov r0, r8
    and r0, r3
    cmp r0, #0
    beq loc_81136A6
    strb r6, [r1,#0x13]
    mov r0, r12
    orr r0, r3
    strb r0, [r1]
loc_81136A6:
    sub r2, #1
    add r1, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_811368C
loc_81136B0:
    ldr r0, [pc, #0x81136c0-0x81136b0-4] // =0x68736D53
    str r0, [r4,#0x34]
loc_81136B4:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
dword_81136C0:    .word 0x68736D53
// end of function sub_811365C

    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r12, r1
    lsl r2, r2, #0x10
    lsr r6, r2, #0x10
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x8113734-0x81136dc-4] // =0x68736D53
    cmp r3, r0
    bne loc_8113726
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r3, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_8113722
    mov r0, #0x80
    mov r9, r0
    lsl r0, r6, #0x10
    asr r7, r0, #0x18
    mov r0, #0xc
    mov r8, r0
loc_81136FC:
    mov r0, r12
    and r0, r5
    cmp r0, #0
    beq loc_8113718
    ldrb r1, [r3]
    mov r0, r9
    and r0, r1
    cmp r0, #0
    beq loc_8113718
    strb r7, [r3,#0xb]
    strb r6, [r3,#0xd]
    mov r0, r8
    orr r0, r1
    strb r0, [r3]
loc_8113718:
    sub r2, #1
    add r3, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_81136FC
loc_8113722:
    ldr r0, [pc, #0x8113734-0x8113722-2] // =0x68736D53
    str r0, [r4,#0x34]
loc_8113726:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
dword_8113734:    .word 0x68736D53
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    lsl r2, r2, #0x18
    lsr r6, r2, #0x18
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x811379c-0x811374c-4] // =0x68736D53
    cmp r3, r0
    bne loc_8113790
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r1, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_811378C
    mov r0, #0x80
    mov r8, r0
    mov r0, #3
    mov r12, r0
loc_8113768:
    add r0, r7, #0
    and r0, r5
    cmp r0, #0
    beq loc_8113782
    ldrb r3, [r1]
    mov r0, r8
    and r0, r3
    cmp r0, #0
    beq loc_8113782
    strb r6, [r1,#0x15]
    mov r0, r12
    orr r0, r3
    strb r0, [r1]
loc_8113782:
    sub r2, #1
    add r1, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_8113768
loc_811378C:
    ldr r0, [pc, #0x811379c-0x811378c-4] // =0x68736D53
    str r0, [r4,#0x34]
loc_8113790:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
dword_811379C:    .word 0x68736D53
.thumb
sub_81137A0:
    add r1, r0, #0
    mov r2, #0
    mov r0, #0
    strb r0, [r1,#0x1a]
    strb r0, [r1,#0x16]
    ldrb r0, [r1,#0x18]
    cmp r0, #0
    bne loc_81137B4
    mov r0, #0xc
    b loc_81137B6
loc_81137B4:
    mov r0, #3
loc_81137B6:
    ldrb r2, [r1]
    orr r0, r2
    strb r0, [r1]
    bx lr
    .byte 0, 0
// end of function sub_81137A0

    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r6, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r10, r1
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r8, r2
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x8113830-0x81137da-2] // =0x68736D53
    cmp r1, r0
    bne loc_8113820
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    mov r7, #1
    cmp r5, #0
    ble loc_811381C
    mov r9, r8
loc_81137F0:
    mov r0, r10
    and r0, r7
    cmp r0, #0
    beq loc_8113812
    mov r0, #0x80
    ldrb r1, [r4]
    and r0, r1
    cmp r0, #0
    beq loc_8113812
    mov r0, r8
    strb r0, [r4,#0x17]
    mov r1, r9
    cmp r1, #0
    bne loc_8113812
    add r0, r4, #0
    bl sub_81137A0
loc_8113812:
    sub r5, #1
    add r4, #0x50 
    lsl r7, r7, #1
    cmp r5, #0
    bgt loc_81137F0
loc_811381C:
    ldr r0, [pc, #0x8113830-0x811381c-4] // =0x68736D53
    str r0, [r6,#0x34]
loc_8113820:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
dword_8113830:    .word 0x68736D53
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r6, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r10, r1
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r8, r2
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x81138a4-0x811384e-2] // =0x68736D53
    cmp r1, r0
    bne loc_8113894
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    mov r7, #1
    cmp r5, #0
    ble loc_8113890
    mov r9, r8
loc_8113864:
    mov r0, r10
    and r0, r7
    cmp r0, #0
    beq loc_8113886
    mov r0, #0x80
    ldrb r1, [r4]
    and r0, r1
    cmp r0, #0
    beq loc_8113886
    mov r0, r8
    strb r0, [r4,#0x19]
    mov r1, r9
    cmp r1, #0
    bne loc_8113886
    add r0, r4, #0
    bl sub_81137A0
loc_8113886:
    sub r5, #1
    add r4, #0x50 
    lsl r7, r7, #1
    cmp r5, #0
    bgt loc_8113864
loc_8113890:
    ldr r0, [pc, #0x81138a4-0x8113890-4] // =0x68736D53
    str r0, [r6,#0x34]
loc_8113894:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_81138A4:    .word 0x68736D53
.thumb
sub_81138A8:
    push {r4-r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    ldr r1, [r6,#0x40]
    ldrb r5, [r1]
    add r2, r1, #1
    str r2, [r6,#0x40]
    ldr r0, [r4,#0x18]
    ldrb r1, [r1,#1]
    add r3, r1, r0
    add r0, r2, #1
    str r0, [r6,#0x40]
    ldrb r2, [r2,#1]
    add r0, #1
    str r0, [r6,#0x40]
    cmp r5, #0x11  // switch 18 cases 
    bls loc_81138CC
    b def_81138D4
loc_81138CC:
    lsl r0, r5, #2
    ldr r1, [pc, #0x81138d8-0x81138ce-2] // jpt_81138D4
    add r0, r0, r1
    ldr r0, [r0]
    mov pc, r0  // switch jump
    .balign 4, 0x00
off_81138D8:    .word jpt_81138D4
jpt_81138D4:    .word loc_8113924  // jump table for switch statement
    .word loc_8113928
    .word loc_8113930
    .word loc_8113938
    .word loc_8113942
    .word loc_8113950
    .word loc_811395E
    .word loc_8113966
    .word loc_811396E
    .word loc_8113976
    .word loc_811397E
    .word loc_8113986
    .word loc_811398E
    .word loc_811399C
    .word loc_81139AA
    .word loc_81139B8
    .word loc_81139C6
    .word loc_81139D4
loc_8113924:
    strb r2, [r3]
    b def_81138D4
loc_8113928:
    ldrb r1, [r3]
    add r0, r1, r2
    strb r0, [r3]
    b def_81138D4
loc_8113930:
    ldrb r1, [r3]
    sub r0, r1, r2
    strb r0, [r3]
    b def_81138D4
loc_8113938:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r0, [r0]
    strb r0, [r3]
    b def_81138D4
loc_8113942:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r1, [r3]
    ldrb r0, [r0]
    add r0, r1, r0
    strb r0, [r3]
    b def_81138D4
loc_8113950:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r1, [r3]
    ldrb r0, [r0]
    sub r0, r1, r0
    strb r0, [r3]
    b def_81138D4
loc_811395E:
    ldrb r3, [r3]
    cmp r3, r2
    beq loc_81139E0
    b loc_81139F4
loc_8113966:
    ldrb r3, [r3]
    cmp r3, r2
    bne loc_81139E0
    b loc_81139F4
loc_811396E:
    ldrb r3, [r3]
    cmp r3, r2
    bhi loc_81139E0
    b loc_81139F4
loc_8113976:
    ldrb r3, [r3]
    cmp r3, r2
    bcs loc_81139E0
    b loc_81139F4
loc_811397E:
    ldrb r3, [r3]
    cmp r3, r2
    bls loc_81139E0
    b loc_81139F4
loc_8113986:
    ldrb r3, [r3]
    cmp r3, r2
    bcc loc_81139E0
    b loc_81139F4
loc_811398E:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    beq loc_81139E0
    b loc_81139F4
loc_811399C:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bne loc_81139E0
    b loc_81139F4
loc_81139AA:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bhi loc_81139E0
    b loc_81139F4
loc_81139B8:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bcs loc_81139E0
    b loc_81139F4
loc_81139C6:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bls loc_81139E0
    b loc_81139F4
loc_81139D4:
    ldr r0, [r4,#0x18]
    add r0, r0, r2
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bcs loc_81139F4
loc_81139E0:
    ldr r0, [pc, #0x81139f0-0x81139e0-4] // dword_3004654
    ldr r2, [r0]
    add r0, r4, #0
    add r1, r6, #0
    bl word_81118A4
    b def_81138D4
    .byte 0, 0
off_81139F0:    .word dword_3004654
loc_81139F4:
    ldr r0, [r6,#0x40]
    add r0, #4
    str r0, [r6,#0x40]
def_81138D4:
    pop {r4-r6}
    pop {r0}
    bx r0
// end of function sub_81138A8

.thumb
sub_8113A00:
    push {lr}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    str r2, [r1,#0x40]
    ldr r2, [pc, #0x8113a1c-0x8113a0a-2] // off_820A298
    lsl r3, r3, #2
    add r3, r3, r2
    ldr r2, [r3]
    bl word_81118A4
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8113A1C:    .word off_820A298
// end of function sub_8113A00

.thumb
sub_8113A20:
    push {lr}
    ldr r2, [pc, #0x8113a30-0x8113a22-2] // dword_3004650
    ldr r2, [r2]
    bl word_81118A4
    pop {r0}
    bx r0
    .byte 0, 0
off_8113A30:    .word dword_3004650
// end of function sub_8113A20

.thumb
sub_8113A34:
    push {r4,lr}
    ldr r2, [r1,#0x40]
    ldr r0, [pc, #0x8113a6c-0x8113a38-4] // =0xFFFFFF00
    and r4, r0
    ldrb r0, [r2]
    orr r4, r0
    ldrb r0, [r2,#1]
    lsl r3, r0, #8
    ldr r0, [pc, #0x8113a70-0x8113a44-4] // =0xFFFF00FF
    and r4, r0
    orr r4, r3
    ldrb r0, [r2,#2]
    lsl r3, r0, #0x10
    ldr r0, [pc, #0x8113a74-0x8113a4e-2] // =0xFF00FFFF
    and r4, r0
    orr r4, r3
    ldrb r0, [r2,#3]
    lsl r3, r0, #0x18
    ldr r0, [pc, #0x8113a78-0x8113a58-4] // =0xFFFFFF
    and r4, r0
    orr r4, r3
    str r4, [r1,#0x28]
    add r2, #4
    str r2, [r1,#0x40]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_8113A6C:    .word 0xFFFFFF00
dword_8113A70:    .word 0xFFFF00FF
dword_8113A74:    .word 0xFF00FFFF
dword_8113A78:    .word 0xFFFFFF
// end of function sub_8113A34

loc_8113A7C:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    add r0, r1, #0
    add r0, #0x24 
    strb r2, [r0]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .byte 0, 0
loc_8113A90:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    add r0, r1, #0
    add r0, #0x2c 
    strb r2, [r0]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
loc_8113AA4:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2d 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
loc_8113AB8:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2e 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
loc_8113ACC:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2f 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .byte 0, 0
loc_8113AE0:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    strb r2, [r1,#0x1e]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
loc_8113AEC:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    strb r2, [r1,#0x1f]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
.thumb
sub_8113AF8:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x26 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_8113AF8

.thumb
sub_8113B0C:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x27 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .hword 0x0
// end of function sub_8113B0C

locret_8113B20:
    bx lr
/*For debugging purposes, connect comment at any range!*/
