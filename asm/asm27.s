.include "asm27.inc"

.thumb
sub_809CDD0:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809cde0-0x809cdd2-2] // =dword_2033800
    ldrb r1, [r5,#4]
    bl sub_804E2A4
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_809CDE0:    .word dword_2033800
dword_809CDE4:    .word 0x3606003B, 0x16800405, 0xFB1189FF, 0x110809CD, 0x9CE0220
    .word 0x27200A08, 0x3B1189FF, 0x43C0004, 0x143FF06, 0x73E10FF
    .word 0x430010FF, 0x1000FF01, 0x4, 0x3002C50, 0xFF0D0E0C
    .word 0x80000842, 0x2, 0x80000C63, 0x2, 0x80001084
    .word 0x2, 0x800014A5, 0x2, 0x800018C6, 0x2
    .word 0x0
    .word 0x4, 0x3002860, 0xFF0B0F0C, 0x80000842, 0x2, 0x80000C63
    .word 0x2, 0x80001084, 0x2, 0x800014A5, 0x2, 0x800018C6
    .word 0x2, 0x0
    .word 0x4, 0x3002C50, 0xFF0D0E0C, 0x800018C6, 0x2, 0x800014A5
    .word 0x2, 0x80001084, 0x2, 0x80000C63, 0x2, 0x80000842
    .word 0x2, 0x80000000, 0x2, 0x0
    .word 0x4, 0x3002860, 0xFF0B0F0C, 0x800018C6, 0x2, 0x800014A5
    .word 0x2, 0x80001084, 0x2, 0x80000C63, 0x2, 0x80000842
    .word 0x2, 0x80000000, 0x2, 0x0
dword_809CF04:    .word 0x100008C, 0xFFA40000, 0xFFFC0000, 0x0
    .word 0xA, 0x100018C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x1000088, 0xFF440000, 0xFFDC0000, 0x0
    .word 0xB, 0x1000080, 0xFEC20000, 0xFFDE0000, 0x0, 0x0
    .word 0x100028C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100038C, 0xFFA40000, 0xFFFC0000, 0x0
    .word 0xD, 0x100048C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100058C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x7000081, 0xFE740000, 0x9C0000, 0x0, 0x0
    .word 0x7000181, 0xFF8C0000, 0x1C40000, 0x0, 0x0
    .word 0x3000281, 0xFF9E0000, 0xFF320000, 0x0, 0x0
    .word 0x7000381, 0xFF860000, 0x1FA0000, 0x0, 0x0
    .word 0x100068C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x7000188, 0xFFB40000, 0xAC0000, 0x0, 0x0
    .word 0x7000288, 0xD40000, 0xFFCC0000, 0x0, 0x0
    .word 0x3000388, 0x1C0000, 0xFF340000, 0x0, 0x0
    .word 0x3000488, 0xFEDC0000, 0xFF140000, 0x0, 0x0
    .word 0x1000B8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100078C, 0xFEB40000, 0xFFEC0000, 0x0, 0x0
    .word 0x100088C, 0xFEB40000, 0xFFEC0000, 0x0, 0x0
    .word 0x100098C, 0xFEB40000, 0xFFEC0000, 0x0, 0x0
    .word 0x1000A8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x7000082, 0x2C0000, 0x1640000, 0x0, 0x0
    .word 0x5000588, 0x12C0000, 0x40000, 0x0, 0x0
    .word 0x7000688, 0xFFE40000, 0x10C0000, 0x0, 0x0
    .word 0x1000C8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x1000D8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x1000E8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x1000F8C, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100008D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100018D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100028D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100038D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100008E, 0xFFA40000, 0xFFFC0000, 0x0
    .word 0x10, 0x100048D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100058D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100068D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100078D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100088D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x100098D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x1000A8D, 0xFFA40000, 0xFFFC0000, 0x0, 0x0
    .word 0x7000788, 0x140000, 0x11C0000, 0x0, 0x0
dword_809D24C:    .word 0x3A06003B, 0x87542B4, 0x1162FF26, 0x117EFF27, 0x4FF0043
    .word 0x4FF043C, 0x9D2E547, 0x2053608, 0xFF1601FF, 0xD27E117E
    .word 0x75490809, 0xD2811400, 0x69490809, 0x16800400, 0xD8117EFF
    .word 0x330809D2, 0x809CE14, 0x9CE4C33, 0xAFF0208, 0x19FF0043
    .word 0x501FF02, 0xAB4903, 0xFF4A0105, 0x774900, 0x10450205
    .word 0x0
    .word unk_3000000
    .word 0x5000000, 0xCFF0280, 0x1004FF24, 0x64FF2707, 0xFFF0211
    .word 0x8148, 0x14000000, 0x809D2DC, 0x117EFF27, 0x1162FF27
    .word 0x43B, 0x48047929, 0x434A2214, 0x63681880, 0x71697C01
    .word 0x46F72000, 0x809CF04
dword_809D2FC:    .word 0x3A06003B, 0x8754474, 0x4FF0043, 0x4FF043C, 0x117EFF27
    .word 0x9D35947, 0x4043608, 0x7EFF16A0, 0x9D34D11, 0xD32A3908
    .word 0xD34D0809, 0x80040809, 0x430AFF02, 0x491EFF00, 0xFF020076
    .word 0x4FF240A, 0xFF020710, 0x181480F, 0x0
    .word 0x9D35314, 0x7EFF2708, 0x3B800411, 0x4, 0x6C1B4653, 0x71287A18
    .word 0x46F72000
unk_809D364:    .byte 0x3B 
    .byte 0
    .byte 6
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x3B 
    .byte 0x34 
    .byte 7
    .byte 0x11
    .byte 0x20
    .byte 0x78 
    .byte 0xD3
    .byte 9
    .byte 8
    .byte 0xA
    .byte 0x20
    .byte 0x3B 
    .byte 4
    .byte 0
    .byte 0x3B 
    .byte 0x30 
    .byte 0x43 
    .byte 0
    .byte 0xFF
    .byte 0x19
    .byte 0x49 
    .byte 0x76 
    .byte 0
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 5
    .byte 0x80
    .byte 0x43 
    .byte 1
    .byte 0xFF
    .byte 8
    .byte 0x3E 
    .byte 0xFF
    .byte 0x14
    .byte 0x10
    .byte 0
    .byte 0x43 
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0x10
unk_809D394:    .byte 0x3B 
    .byte 0
    .byte 6
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x3B 
    .byte 0x34 
    .byte 7
    .byte 0x47 
    .hword 0x5391
    .word 0xA947080A, 0x11080A53, 0x9D3B220, 0x3B200A08, 0x303B0004
    .word 0x8FF0143, 0x1014FF3E, 0xFF014300, 0x1000, 0x3B0814
    .word 0xFF004306, 0x76491E, 0x501FF02, 0xCFF2480, 0x40480710
    .word 0x3B00043B, 0x430600, 0x76491EFF, 0x1FF0200, 0xFF248005
    .word 0x25071004, 0xFF021000, 0x101481E, 0x809D404, 0x43B
    .word 0x4000000, 0x0, 0x0, 0x0
unk_809D414:    .byte 0x3B 
    .byte 0
    .byte 6
    .byte 0x43 
    .byte 0
    .byte 0xFF
    .byte 0x1E
    .byte 0x49 
    .byte 0x76 
    .byte 0
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 5
    .byte 0x80
    .byte 0x3B 
    .byte 0x34 
    .byte 0x3B 
    .byte 0x1C
    .byte 0x3B 
    .byte 0x14
    .byte 0x47 
    .hword 0xD491
    .word 0x500809, 0x809D3C4, 0x3B015008, 0x3B103B18, 0xFF004330
    .word 0x764919, 0x501FF02, 0x54201180, 0xA0809D4, 0x43B20
    .word 0x8FF0143, 0x1014FF3E, 0xFF014300, 0x1000, 0x4000000
    .word 0x0, 0x0, 0x0
unk_809D474:    .byte 0x3B 
    .byte 0
    .byte 6
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x47 
    .byte 0x91
    .byte 0x53 
    .byte 0xA
    .byte 8
    .byte 0x47 
    .word sub_80A53A8+1
    .word 0x1186FF26, 0x43B4048, 0x0
// end of function sub_809CDD0

.thumb
sub_809D490:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x14]
    mov r0, #0
    strb r0, [r4,#0x10]
    mov r0, #0x10
    ldrb r1, [r4,#0x12]
    ldr r4, [r4,#0x14]
    sub r1, #1
    mul r1, r0
    add r4, r4, r1
    ldr r0, [r4,#4]
    ldr r1, [r4,#8]
    ldr r2, [r4,#0xc]
    bl sub_80A6DF0
    ldrb r0, [r4,#3]
    bl sub_80A6F0E
    mov r0, #0
    pop {r4,pc}
    .balign 4, 0x00
dword_809D4BC:    .word 0x3A06003B
    .word 0x86E4890
    .word 0xFF054F07
    .word 0x4F3EFF02
    .word 0xDD4701FF
    .word 0x360809D4
    .word 0x3B800404
    .word 0x4
// end of function sub_809D490

.thumb
sub_809D4DC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809d500-0x809d4de-2] // =0x15C0
    ldrb r1, [r5,#6]
    add r0, r0, r1
    bl sub_80250C2
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_809D4FA
    ldr r0, [pc, #0x809d504-0x809d4ee-2] // =0x1640
    ldrb r1, [r5,#6]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_809D4FA:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_809D500:    .word 0x15C0
off_809D504:    .word 0x1640
dword_809D508:    .word 0x1000180, 0x1AA0000, 0xFF8C0000, 0x0
    .word 0x2FF1004, 0x100008C, 0xFFA40000, 0xFFFC0000, 0x0
    .word 0x41004, 0x5000305, 0xBC0000, 0x7C0000, 0x400000
    .word 0xFFFF100C, 0x5000105, 0x6E0000, 0x840000, 0x0
    .word 0xFFFF100C, 0x4706003B, 0x809D585, 0x6EFF051B, 0x360809D5
    .word 0x2800405, 0x6241EFF, 0x4807FFFF, 0x80, 0x7F140000
    .word 0x3B0809D5, 0x4, 0x480A7929, 0x434A2214, 0x63681880
    .word 0x71697CC1, 0x71A97C01, 0x71E97C41, 0x6C124652, 0x29FF7C81
    .word 0x7491D002, 0x74D121FF
    .word 0x46F72000
    .word dword_809D508
dword_809D5B4:    .word 0x4000005, 0x0, 0x0, 0x0, 0xFF0C020C
    .word 0x0, 0x3A06003B, 0x2033800, 0x414FF36, 0x18800480
    .word 0x2117FFF, 0x470809D6, 0x809D60D, 0x4C1EFF02, 0x6241F08
    .word 0x207FFFF, 0x804878FF, 0x0, 0xD6071400, 0x7140809
    .word 0x3B0809D6, 0x4
// end of function sub_809D4DC

.thumb
sub_809D60C:
    push {r4-r7,lr}
    ldrb r1, [r5,#4]
    ldr r4, [pc, #0x809d650-0x809d610-4] // =dword_809D5B4
    mov r2, #0x18
    mul r2, r1
    add r4, r4, r2
    str r4, [r5,#0x34]
    ldrb r1, [r4,#0x10]
    strb r1, [r5,#6]
    ldrb r1, [r4,#0x11]
    strb r1, [r5,#7]
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r1, [r4,#0x12]
    cmp r1, #0xff
    beq loc_809D632
    strb r1, [r2,#0x12]
    mov r1, #0xff
    strb r1, [r2,#0x13]
loc_809D632:
    ldrh r0, [r4,#0x14]
    tst r0, r0
    beq loc_809D63E
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_809D63E:
    ldrh r0, [r4,#0x16]
    tst r0, r0
    beq loc_809D64A
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
loc_809D64A:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_809D650:    .word dword_809D5B4
dword_809D654:    .word 0xC06003B, 0xFF061B07, 0x809D667, 0x3614FF02, 0x2880406
    .word 0x85471EFF, 0x3B0809D6, 0x4, 0xC06003B, 0x3CFF0207
    .word 0x9D6B947, 0x43B08, 0x7928B500, 0xFA98F76A, 0x22FF7969
    .word 0xF7672300, 0x4651FF47, 0x79096C09, 0xDA062980, 0x420079E8
    .word 0x2011D103, 0xF7872182, 0x7928FC77, 0xFEB4F78C, 0xBD002000
    .word 0x2001B500, 0x79AA2100, 0xF7712301, 0xF7FFFA3E, 0x2000FFDD
    .word 0xBD00
dword_809D6D0:    .word 0x4306003B, 0x4704FF00, 0x809D6ED, 0x43C8004, 0x4304FF
    .word 0x43B04FF, 0x0
// end of function sub_809D60C

.thumb
dead_809D6EC:
    push {lr}
    mov r0, #0x1c
    mov r1, #1
    bl sub_800D742
    cmp r0, #1
    bne loc_809D704
    ldr r0, [pc, #0x809d714-0x809d6fa-2] // =loc_86E8448
    mov r1, #0
    bl sub_804E2A4
    b loc_809D70E
loc_809D704:
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x11]
    bl sub_804E294
loc_809D70E:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_809D714:    .word loc_86E8448
    .word 0x0
    .word 0x1FF0119, 0x640000, 0xC0000, 0x0
    .word 0x640000, 0xC0000, 0x0, 0x0
    .word 0xFF0125, 0xFFE40000, 0x700000, 0x0
    .word 0xFFE40000, 0x700000, 0x0
    .word 0x87B5D80, 0xFF0400, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x87B5DA0, 0xFF0400, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x87B5DC8, 0xFF0400, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x87B5DE4, 0xFF0400, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .byte 0x8, 0x5E, 0x7B, 0x8
    .byte 0x0
    .byte 0x4, 0xFF, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0404, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x1FF0185, 0x640000, 0x6A0000, 0x0
    .word 0x640000, 0x6A0000, 0x0, 0x0
    .word 0xFF041F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0403, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0404, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0405, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0433, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0403, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0403, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0433, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFF0415, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x1FF011C, 0x640000, 0xC0000, 0x0
    .word 0x640000, 0xC0000, 0x0, 0x0
    .word 0x1FF0599, 0xFF9E0000, 0x1240000, 0x0
    .word 0xFF9E0000, 0x1240000, 0x0, 0x0
    .word 0x1FF0703, 0xD20000, 0xFE4E0000, 0x0
    .word 0xD20000, 0xFE3E0000, 0x0, 0x0
    .word 0x1FF0708, 0xB60000, 0x240000, 0x0
    .word 0xB60000, 0x140000, 0x0, 0x0
    .word 0x1FF030D, 0xFE780000, 0x1480000, 0x0
    .word 0xFE780000, 0x1580000, 0x0
    .word 0x206003B, 0x394701FF, 0x430809DA, 0x200FF01, 0xFF241EFF
    .word 0x1B070808, 0xDA1DFF05, 0x5360809, 0xFF028004, 0xCFF241E
    .word 0x89470708, 0x270809DA, 0x21175FF, 0xFF241EFF, 0x3B070808
    .word 0x4, 0x7928B5F0, 0x21204F11, 0x187F4341, 0x42006838
    .word 0x6328D000, 0x71687938, 0x420079F8, 0x7978D013, 0xFA59F009
    .word 0x68F968B8, 0xF009693A, 0x2000F9D3, 0xFA59F788, 0x69B96978
    .word 0xF78869FA, 0x2011FA59, 0xF7872175, 0x2000FA9D, 0xBDF0
    .word 0x809D718, 0x2001B5F0, 0x6C094651, 0x31246A89, 0xFA43F788
    .word 0xBDF02000
dword_809DA9C:    .word 0x3A06003B, 0x86E4890, 0x80040436, 0x43B
dword_809DAAC:    .word 0x4706003B
    .word sub_809DAD0+1
    .word 0xC08FF24, 0x5B7C3A07, 0x4D470875, 0x360809DB, 0x27800404
    .word 0x3B116AFF, 0x4
// end of function dead_809D6EC

.thumb
sub_809DAD0:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    ldrb r0, [r0,#0x10]
    lsl r0, r0, #3
    ldr r7, [pc, #0x809db08-0x809dadc-4] // =dword_809DB0C
    add r7, r7, r0
    mov r3, #0
    ldrsh r0, [r7,r3]
    lsl r0, r0, #0xc
    mov r3, #2
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0xc
    mov r2, #0
    push {r7}
    bl sub_80A6E24
    pop {r7}
    ldrb r0, [r7,#6]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    strb r0, [r7,#0x10]
    bl sub_80A6DB8
    mov r0, #0
    pop {r4-r7,pc}
off_809DB08:    .word dword_809DB0C
dword_809DB0C:    .word 0xFF40, 0x100FF, 0xFFA0FFA0, 0x200FF, 0xFF400000, 0x300FF
    .word 0xFF4000C0, 0x400FF, 0xC0, 0x500FF, 0x600060, 0x600FF
    .word 0xC00000, 0x700FF, 0xC0FF40, 0xFF, 0xF00BB5F0, 0x7F38FAEF
    .word 0x22907128, 0x465658B8, 0x64F06AF6, 0xFA64F010, 0x65B16570, 0xBDF02000
    .word 0xE2C2E2C0, 0xE2C6E2C4, 0xE2CAE2C8, 0xE2C1E2CC, 0xE2C5E2C3, 0xE2C9E2C7
    .word 0xE2CDE2CB, 0xFF00002C, 0xFF04012C, 0xFF08022C, 0xFFFFFFFF
dword_809DB98:    .word 0x9DC1D47, 0x6003B08, 0xFF0143, 0x7017BC3A, 0x28001A08
    .word 0xC00200AA, 0xC0809DB, 0x80040436, 0x9DE2147, 0x43B08
    .word 0x9DC3D47, 0xDC4D4708, 0x6D470809, 0x470809DC, 0x809DC85
    .word 0xAA29001A, 0xDBF00200, 0x47010809, 0x809DD01, 0x4701FF02
    .word 0x809DE21, 0x43B37, 0x9DD3547, 0xDD914708, 0xCD470809
    .word 0x1A0809DD, 0xAA2900, 0x9DBCF02, 0x1470108, 0x20809DD
    .word 0x214701FF, 0x370809DE, 0x43B, 0x2000B5F0, 0xFD6EF78B
    .word 0xF90AF000, 0x71297229, 0xFCDCF78F, 0xF7656668, 0x2000FE11
    .word 0xBDF0, 0xF000B5F0, 0x2020F921, 0x200066A8, 0xBDF0
    .word 0x6EA8B5F0, 0x66A83802, 0xDC052815, 0x66A82015, 0xF928F000
    .word 0xBDF02000, 0xF924F000, 0xBDF02001, 0x48A7B5F0, 0xF7B068A9
    .word 0x6EA8FB17, 0xF91AF000, 0x72682000, 0xBDF02000, 0x2080B5F0
    .word 0xFE8AF7B5, 0x2008D030, 0xFE86F7B5, 0xF7B5D027, 0x2800FE8B
    .word 0xF7AED128, 0x4F16F8A7, 0xFEA2F7AF, 0x80F980B8, 0xF77B2201
    .word 0x200AF9E6, 0xFC82F78F, 0xFD4CF7AA, 0x6AF64656, 0x64F288BA
    .word 0x653288FA, 0x210F4890, 0xFAEAF7B0, 0x863A2200, 0x80FA80BA
    .word 0x716A80EA, 0x60E82028, 0x72682001
    .word 0x6EA8E004
    .word 0xF8E2F000
    .word 0xBDF02001
    .word 0xF0006EA8
    .byte 0xDD
    .byte 0xF8
    .word 0xBDF02000
    .balign 4, 0x00
    .word byte_200B190
// end of function sub_809DAD0

.thumb
sub_809DD00:
    push {r4-r7,lr}
    mov r0, #8
    bl sub_80539A0
    bne loc_809DD12
    mov r0, #0x80
    bl sub_80539A0
    bne loc_809DD2A
loc_809DD12:
    ldr r0, [r5,#0x68]
    add r0, #2
    str r0, [r5,#0x68]
    cmp r0, #0x20 
    blt loc_809DD2A
    mov r0, #0x20 
    str r0, [r5,#0x68]
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    mov r0, #0
    pop {r4-r7,pc}
loc_809DD2A:
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_809DD00

.thumb
sub_809DD34:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x2b 
    bl sub_8024FF0
    beq loc_809DD82
    ldr r0, [r5,#0xc]
    sub r0, #1
    blt loc_809DD58
    str r0, [r5,#0xc]
    mov r1, #4
    svc 6
    tst r1, r1
    bne loc_809DD82
    ldr r0, [r5,#0x64]
    sub r0, #1
    str r0, [r5,#0x64]
    b loc_809DD82
loc_809DD58:
    bl sub_802D5E8
    str r0, [r5,#0x64]
    mov r0, #0
    mov r1, #0x2a 
    bl sub_8024FF0
    beq loc_809DD82
    mov r0, #0x20 
    strb r0, [r5,#4]
    bl sub_80540BA
    ldr r0, [pc, #0x809dd8c-0x809dd70-4] // =dword_809DB0C+124
    bl sub_8053FFC
    mov r0, #0
    mov r1, #0x2b 
    bl sub_8024FB8
    mov r0, #0
    pop {r4-r7,pc}
loc_809DD82:
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    mov r0, #1
    pop {r4-r7,pc}
off_809DD8C:    .word dword_809DB0C+0x7C
// end of function sub_809DD34

.thumb
sub_809DD90:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    add r0, #0x10
    cmp r0, #0x6c 
    ble loc_809DDA8
    mov r6, r10
    ldr r6, [r6,#0x2c]
    ldr r2, [r6,#0x4c]
    strh r2, [r5,#6]
    ldr r2, [r6,#0x50]
    strb r2, [r5,#5]
    mov r0, #0x6c 
loc_809DDA8:
    strb r0, [r5,#4]
    bl sub_8054018
    bl sub_8054054
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    mov r0, #0
    mov r1, #0x2a 
    bl sub_8024FF0
    bne loc_809DDC6
    mov r0, #0
    pop {r4-r7,pc}
loc_809DDC6:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_809DD90

.thumb
sub_809DDCC:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    sub r0, #0x10
    cmp r0, #0
    bge loc_809DDD8
    mov r0, #0
loc_809DDD8:
    strb r0, [r5,#4]
    bl sub_8054018
    bl sub_8054054
    mov r0, #8
    bl sub_80539A0
    beq loc_809DE16
    bl sub_802D5E8
    add r7, r0, #0
    cmp r7, #0xa
    blt loc_809DDFC
    bl sub_80539B0
    cmp r0, #0
    beq loc_809DE08
loc_809DDFC:
    mov r0, #0
    strb r0, [r5,#9]
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    b loc_809DE12
loc_809DE08:
    mov r0, #1
    strb r0, [r5,#9]
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
loc_809DE12:
    mov r0, #0
    pop {r4-r7,pc}
loc_809DE16:
    ldr r0, [r5,#0x68]
    bl sub_809DEB0
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_809DDCC

.thumb
sub_809DE20:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_8029700
    bl sub_8001D9C
    bl sub_8029296
    bl sub_8003836
    bl sub_800386E
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809DE20

.thumb
sub_809DE3C:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r1, [r3,#4]
    ldrb r2, [r3,#5]
    lsl r1, r1, #8
    orr r1, r2
    ldr r2, [pc, #0x809de60-0x809de48-4] // =dword_809DE64
    mov r4, #0
loc_809DE4C:
    ldr r0, [r2]
    cmp r0, r1
    bne loc_809DE56
    ldrb r1, [r2,#4]
    b locret_809DE5E
loc_809DE56:
    add r2, #8
    add r4, #8
    cmp r4, #0x20 
    blt loc_809DE4C
locret_809DE5E:
    mov pc, lr
off_809DE60:    .word dword_809DE64
dword_809DE64:    .word 0x6
byte_809DE68:    .byte 0x0
    .byte 0x0, 0x0, 0x0
    .word 0x9407, 0xC, 0x401, 0x6, 0x101, 0x6, 0x4805B5F0, 0x4A084905
    .word 0xFD88F762, 0x49054804, 0xF7622220, 0xBDF0FD79, 0x86FF38C, 0x600C800, 0x86FF9EC, 0x3002C10
    .word 0x660
// end of function sub_809DE3C

.thumb
sub_809DEB0:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldr r1, [r5,#0x64]
    str r1, [r0,#4]
    add r0, r7, #0
    mov r1, #0
    mov r2, #0
    ldr r3, [pc, #0x809def4-0x809dec2-2] // =dword_86FF0DC+596
    mov r4, #9
    mov r5, #5
    bl sub_8001DDC
    add r0, r7, #1
    mov r1, #2
    mov r2, #0
    ldr r3, [pc, #0x809def8-0x809ded2-2] // =dword_809DB0C+96
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
    ldr r0, [pc, #0x809defc-0x809dedc-4] // =dword_2033800
    mov r1, #0x22 
    ldr r2, [pc, #0x809df00-0x809dee0-4] // =unk_2010780
    ldr r3, [pc, #0x809df04-0x809dee2-2] // =0x600D800
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x809df08-0x809dee8-4] // =dword_868E224
    mov r7, #4
    bl sub_8053A04
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809DEF4:    .word dword_86FF0DC+0x254
off_809DEF8:    .word dword_809DB0C+0x60
off_809DEFC:    .word dword_2033800
off_809DF00:    .word unk_2010780
dword_809DF04:    .word 0x600D800
off_809DF08:    .word dword_868E224
    .word 0x87017BC
dword_809DF10:    .word 0x4306003B, 0x4700FF01, 0x809DF45, 0xC08FF24, 0x17BC3A07
    .word 0x4360870, 0x9DF8147, 0xDFA54708, 0xFF020809, 0xDFD94701
    .word 0x47370809, 0x809E001, 0x43B, 0x2000B5F0, 0xFBDAF78B
    .word 0x46564F31, 0x88BA6AF6, 0x88FA64F2, 0x8E386532, 0x28032103
    .word 0x2109D000, 0x22007129, 0x80BA863A, 0x80EA80FA, 0xF765716A
    .word 0xF7B6FC71, 0x2000F8A0, 0xBDF0, 0x2000B5F0, 0xF787212A
    .word 0xD006F833, 0x71282020, 0xF7B64803, 0x2000F833, 0x2001BDF0
    .word 0xBDF0, 0x809DB88, 0x7928B5F0, 0x286C3010, 0x4656DD06
    .word 0x6CF26AF6, 0x6D3280EA, 0x206C716A, 0xF7B67128, 0xF7B6F82B
    .word 0x2000F847, 0xF787212A, 0xD101F811, 0xBDF02000, 0xBDF02001
    .word 0x7928B5F0, 0x28003810, 0x2000DA00, 0xF7B67128, 0xF7B6F817
    .word 0x2080F833, 0xFCD6F7B5, 0x2000D101, 0x2001BDF0, 0xBDF0
    .word 0xF765B5F0, 0xF765FC18, 0x2001FC32, 0xFB78F78B, 0xBDF02000
    .word 0x200B190
dword_809E018:    .word 0x4306003B, 0x4700FF01, 0x809E08D, 0x9E0AD47, 0x1081B08
    .word 0x809E03A, 0xC5478004, 0x3B0809E2, 0x8040004, 0x9E0ED47
    .word 0x1081B08, 0x809E024, 0x6203081B, 0x1B0809E0, 0xE0300408
    .word 0x8040809, 0x9E21547, 0xE0301408, 0x88040809, 0x9E22D47
    .word 0x81B08, 0x809E030, 0x9E24947, 0xE25D4708, 0xFF020809
    .word 0xE2954701, 0x47370809, 0x809E2C5, 0x43B, 0x2000B5F0
    .word 0xFB36F78B, 0xFBE0F765, 0x21134893, 0xF902F7B0, 0xF80BF7B6
    .word 0x72282000, 0xBDF0, 0x2008B5F0, 0xFC76F7B5, 0xF7B5D018
    .word 0x2800FC7B, 0x488AD10D, 0xF7B02115, 0x2001F8EF, 0x20117228
    .word 0xF786218C, 0x2008FF73, 0x200067A8, 0x4883BDF0, 0xF7B02114
    .word 0x2000F8E1, 0xBDF07228, 0xBDF02001, 0x2011B5F0, 0xF786218C
    .word 0xD014FF7D, 0x42006FA8, 0x3801D001, 0x465067A8, 0x78806840
    .word 0x40012102, 0x2004D009, 0x20687228, 0xFA20F762, 0x21144873
    .word 0xF8C2F7B0, 0x2008E05E, 0xFC3CF7B5, 0xB082D05C, 0x6AC04650
    .word 0x4669304C, 0xF7622208, 0x4668FC29, 0xFEC8F7AF, 0xB00266EC
    .word 0xD0082801, 0xD0432802, 0x21164866, 0xF8A8F7B0, 0x72282001
    .word 0x4654E042, 0x64E26AE4, 0x29016523, 0x2902D010, 0x2903D018
    .word 0x672AD022, 0x2000676B, 0x716880E8, 0x1C191C10, 0xF77A2201
    .word 0x2018FF7E, 0xE01E2103, 0x1C10B404, 0xF78F2101, 0xBC01F8F5
    .word 0xF828F000, 0xE0142103, 0x21011C10, 0xF8ECF78F, 0xD1024200
    .word 0x2103201A, 0x201BE00B, 0xE0082100, 0x64E01C10, 0x1C191C10
    .word 0xF78F2201, 0x201CFA1D, 0x66A82103, 0x48477229, 0xF7B02117
    .word 0xE005F869, 0x211D4844, 0xF864F7B0, 0x72282001, 0xBDF02000
    .word 0xBDF02001, 0x4906B5FE, 0x784B780A, 0x2AFF3102, 0x4290D003
    .word 0x1C18D1F8, 0x2019BDFE, 0xBDFE, 0x809E208, 0xF084EF83
    .word 0xF280F185, 0xFFFF, 0x6EE8B5F0, 0xF7861C00, 0x4832FECF
    .word 0xF7B06EA9, 0x2000F83F, 0xBDF0, 0x482EB5F0, 0xF7B06EA9
    .word 0x211CF837, 0x28186EA8, 0x2100D000, 0x20007229, 0xBDF0
    .word 0x2020B5F0, 0x48027128, 0xFED4F7B5, 0xBDF02000, 0x809DB88
    .word 0x7928B5F0, 0x286C3010, 0x4656DD06, 0x6CF26AF6, 0x6D3280EA
    .word 0xE006716A, 0xF7B57128, 0xF7B5FECF, 0x2001FEEB, 0x206CBDF0
    .word 0xF7B57128, 0xF7B5FEC7, 0x2000FEE3, 0xBDF0, 0x2000B5F0
    .word 0xF786212A, 0xD005FEA9, 0x38107928, 0xDA002800, 0x71282000
    .word 0xFEB4F7B5, 0xFED0F7B5, 0xF7B52080, 0xD101FB73, 0xBDF02000
    .word 0xBDF02001, 0x2000B5F0, 0xF786212A, 0x2011FE75, 0xF786218C
    .word 0x2001FE71, 0xFA12F78B, 0xFAABF765, 0xFAC5F765, 0xBDF02000
    .word 0x2033800, 0x706003B, 0x3614FF02, 0x80040AFF, 0x241EFF02
    .word 0x7080CFF, 0x471EFF02, 0x809E30D, 0x43B, 0xF7A9B500
    .word 0x2000FA09, 0xBD00
dword_809E318:    .word 0x4306003B, 0x4700FF01, 0x809E365, 0x808FF24, 0x17BC3A07
    .word 0xFF360870, 0xE391471A, 0x1A0809, 0x200AA27, 0x809E34C
    .word 0x37800400, 0x9E41D47, 0x43B08, 0x9E3B547, 0x1FF0208
    .word 0x9E3F547, 0x1D473708, 0x3B0809E4, 0x4, 0x2000B5F0
    .word 0xF9CAF78B, 0x46564F37, 0x8A7A6AF6, 0x8ABA6572, 0x7DB86532
    .word 0x200071E8, 0xF7657128, 0xF7B5FA69, 0x2000FE98, 0xBDF0
    .word 0x2000B5F0, 0xF786212A, 0xD007FE2B, 0x420079E8, 0x4803D102
    .word 0xFE2AF7B5, 0xBDF02000, 0xBDF02001, 0x809DB88, 0x7928B5F0
    .word 0x286C3010, 0x4656DD06, 0x6D726AF6, 0x6D3280EA, 0x206C716A
    .word 0xF7B57128, 0xF7B5FE23, 0x2000FE3F, 0xF786212A, 0xD106FE09
    .word 0x796988E8, 0xF77A2201, 0x2000FE4A, 0x2001BDF0, 0xBDF0
    .word 0x7928B5F0, 0x28003810, 0x2000DA00, 0xF7B57128, 0xF7B5FE09
    .word 0x2080FE25, 0xFAC8F7B5, 0x2000D101, 0x2001BDF0, 0xBDF0
    .word 0x2001B5F0, 0xF96EF78B, 0x20004F0A, 0x75B874B8, 0xF7637538
    .word 0xF78AFCB5, 0xF765FF30, 0xF765F9FE, 0xF765FA18, 0xF7A6F9FA
    .word 0x2000F9A9, 0xBDF0, 0x20015E0, 0x20015E0, 0x406003B
    .word 0x14FF0280, 0x80CFF24, 0x2054607, 0x131EFF, 0x24000000
    .word 0x7080CFF, 0x1E3FF16, 0x809E488, 0x1E3FF26, 0xA8000048
    .word 0x140809E4, 0x809E493, 0x1E3FF27, 0xB8000048, 0x370809E4
    .word 0x1E4FF27, 0x1175FF27, 0x3800043B, 0x66144000, 0x809E4
    .word 0x7000704, 0xFF720000, 0xFF720000, 0x0
    .word 0x3000704, 0xFF720000, 0x320000, 0x0
dword_809E4C8:    .word 0x9F032B04, 0x50809EB, 0xEB9F0149, 0xE5320809, 0x180809E5
    .word 0x1C042507, 0x9E4F13F, 0x9E52E08, 0x9E56B08, 0x9E58808
    .word 0x841408, 0xFF5C, 0x10073808, 0x9EBC80C, 0x10013808
    .word 0x9EBB010, 0x10033808, 0x9EBC010, 0x10053808, 0x9EBB80C
    .word 0x10073808, 0x9EBC804, 0x10053808, 0x9EBB804, 0xE4F90208
    .word 0x44140809, 0xBCFF, 0x7380800, 0xEBC81010, 0x1380809
    .word 0xEBB00C10, 0x3380809, 0xEBC00410, 0x1380809, 0xEBB00410
    .word 0x3380809, 0xEBC00C10, 0x5380809, 0xEBB81010, 0x36020809
    .word 0x140809E5, 0xFF7CFF44, 0x38080000, 0xC8101007, 0x380809EB
    .word 0xC0101003, 0x20809EB, 0x809E573, 0x3AFF4414, 0x8000000
    .word 0xC100138, 0x809EBB0, 0x4100338, 0x809EBC0, 0x4100138
    .word 0x809EBB0, 0xC100338, 0x809EBC0, 0x18100138, 0x809EBB0
    .word 0xC100738, 0x809EBC8, 0x18100538, 0x809EBB8, 0xC100338
    .word 0x809EBC0, 0x10100538, 0x809EBB8, 0x10100738, 0x809EBC8
    .word 0x9E59002, 0x5013308, 0xE5E5032B, 0x1F0E0809, 0x4340927
    .word 0xEB9F032C, 0x49050809, 0x9EB9F01, 0xE6D83208, 0x8180809
    .word 0x3F1C0425, 0x809E61C, 0x809E639, 0x809E666, 0x809E693
    .word 0xBC008414, 0x8000000, 0x28120538, 0x809EBB8, 0x28120138
    .word 0x809EBB0, 0x9E62402, 0x1041408, 0x3C, 0x12033808
    .word 0x9EBC010, 0x12053808, 0x9EBB820, 0x12013808, 0x9EBB020
    .word 0x12073808, 0x9EBC810, 0xE6410208, 0xC6140809, 0xFF5CFF
    .word 0x7380800, 0xEBC80C12, 0x1380809, 0xEBB01812, 0x3380809
    .word 0xEBC00C12, 0x5380809, 0xEBB81812, 0x6E020809, 0x140809E6
    .word 0xFEFC0086, 0x38080000, 0xB0101201, 0x380809EB, 0xC0101203
    .word 0x380809EB, 0xB80C1205, 0x380809EB, 0xC8041207, 0x380809EB
    .word 0xB81C1205, 0x380809EB, 0xC80C1207, 0x380809EB, 0xB0181201
    .word 0x20809EB, 0x809E69B, 0x2C050133, 0x9E6D803, 0x271F0E08
    .word 0x2D043409, 0x9EB9F03, 0x1490508, 0x809EB9F, 0x9E7B332
    .word 0x25091808, 0xF3F1C04, 0x3C0809E7, 0x590809E7, 0x760809E7
    .word 0x140809E7, 0xFEFCFFC4, 0x38080000, 0xB80F1405, 0x380809EB
    .word 0xC0101403, 0x380809EB, 0xC8101407, 0x380809EB, 0xB00F1401
    .word 0x20809EB, 0x809E717, 0xFCFFC414, 0x80000FE, 0x28140138
    .word 0x809EBB0, 0x28140538, 0x809EBB8, 0x9E74402, 0xFF441408
    .word 0xBC, 0x14013808, 0x9EBB038, 0x14053808, 0x9EBB838
    .word 0xE7610208, 0x6140809, 0x3C01, 0x5380800, 0xEBB80C14
    .word 0x7380809, 0xEBC80A14, 0x3380809, 0xEBC00A14, 0x1380809
    .word 0xEBB00C14, 0x3380809, 0xEBC01014, 0x7380809, 0xEBC81014
    .word 0x7E020809, 0x330809E7, 0x32D0501, 0x809E7B3, 0x9271F0E
    .word 0x32E0434, 0x809EB9F, 0x9F014905, 0x320809EB, 0x809E89E
    .word 0x4250D18, 0xE7EA3F1C, 0xE8170809, 0xE8440809, 0xE8710809
    .word 0x46140809, 0xFF0C00, 0x3380800, 0xEBC01414, 0x5380809
    .word 0xEBB81014, 0x7380809, 0xEBC81414, 0x1380809, 0xEBB01014
    .word 0xF2020809, 0x140809E7, 0x10AFFC4, 0x38080000, 0xB8101405
    .word 0x380809EB, 0xC8111407, 0x380809EB, 0xC0111403, 0x380809EB
    .word 0xB0101401, 0x20809EB, 0x809E81F, 0x8A00C414, 0x80000FF
    .word 0x10140538, 0x809EBB8, 0x10140338, 0x809EBC0, 0x10140138
    .word 0x809EBB0, 0x10140738, 0x809EBC8, 0x9E84C02, 0xFF461408
    .word 0x8C, 0x14053808, 0x9EBB810, 0x14073808, 0x9EBC810
    .word 0x14013808, 0x9EBB010, 0x14033808, 0x9EBC010, 0xE8790208
    .word 0x1330809, 0x9E032E05, 0xE0809E8, 0x3409271F, 0x9F032F04
    .word 0x50809EB, 0xEB9F0149, 0xA9320809, 0x180809E9, 0x1C04250E
    .word 0x9E8D53F, 0x9E90208, 0x9E92F08, 0x9E94C08, 0xFF461408
    .word 0x8A, 0x16053808, 0x9EBB810, 0x16073808, 0x9EBC820
    .word 0x16013808, 0x9EBB010, 0x16033808, 0x9EBC020, 0xE8DD0208
    .word 0xC6140809, 0xAFE, 0x7380800, 0xEBC81016, 0x3380809
    .word 0xEBC01016, 0x3380809, 0xEBC01016, 0x7380809, 0xEBC81016
    .word 0xA020809, 0x140809E9, 0xFF0C0044, 0x38080000, 0xB8201605
    .word 0x380809EB, 0xB0201601, 0x20809EB, 0x809E937, 0x8C00C814
    .word 0x8000000, 0x10160738, 0x809EBC8, 0x10160538, 0x809EBB8
    .word 0xC160338, 0x809EBC0, 0x10160538, 0x809EBB8, 0x14160338
    .word 0x809EBC0, 0x10160138, 0x809EBB0, 0x8160738, 0x809EBC8
    .word 0x8160138, 0x809EBB0, 0x8160738, 0x809EBC8, 0x8160138
    .word 0x809EBB0, 0x9E95402, 0x5013308, 0xE9A9032F, 0x1F0E0809
    .word 0x4340927, 0xEB9F0330, 0x49050809, 0x9EB9F01, 0xEAD43208
    .word 0xF180809, 0x3F1C0425, 0x809E9E0, 0x809EA3D, 0x809EA7A
    .word 0x809EAA7, 0xE004614, 0x8000001, 0x80C0738, 0x809EBC8
    .word 0x80C0138, 0x809EBB0, 0x80C0738, 0x809EBC8, 0x80C0138
    .word 0x809EBB0, 0x100C0738, 0x809EBC8, 0x100C0538, 0x809EBB8
    .word 0xC0C0338, 0x809EBC0, 0x100C0538, 0x809EBB8, 0x140C0338
    .word 0x809EBC0, 0x100C0138, 0x809EBB0, 0x9E9E802, 0xC41408
    .word 0xC, 0xC053808, 0x9EBB810, 0xC033808, 0x9EBC018
    .word 0xC013808, 0x9EBB008, 0xC073808, 0x9EBC808, 0xC013808
    .word 0x9EBB008, 0xC073808, 0x9EBC810, 0xEA450208, 0xC6140809
    .word 0x88FE, 0x1380800, 0xEBB0100C, 0x7380809, 0xEBC8100C
    .word 0x5380809, 0xEBB8100C, 0x3380809, 0xEBC0100C, 0x82020809
    .word 0x140809EA, 0xFF0C00A6, 0x38080000, 0xB0040C01, 0x380809EB
    .word 0xC0140C03, 0x380809EB, 0xC8140C07, 0x380809EB, 0xB8040C05
    .word 0x20809EB, 0x809EAAF, 0x30050133, 0x9EAD403, 0x271F0E08
    .word 0x31043409, 0x9EB9F03, 0x1490508, 0x809EB9F, 0x9EBA032
    .word 0x25101808, 0xB3F1C04, 0x280809EB, 0x550809EB, 0x720809EB
    .word 0x140809EB, 0xFF0E00C4, 0x38080000, 0xC01A2003, 0x380809EB
    .word 0xC81A2007, 0x20809EB, 0x809EB13, 0xE004614, 0x80000FF
    .word 0x10200338, 0x809EBC0, 0x10200138, 0x809EBB0, 0x10200738
    .word 0x809EBC8, 0x10200538, 0x809EBB8, 0x9EB3002, 0x441408
    .word 0x6C, 0x20053808, 0x9EBB81C, 0x20013808, 0x9EBB01C
    .word 0xEB5D0208, 0x44140809, 0xFF0C00, 0x5380800, 0xEBB82020
    .word 0x3380809, 0xEBC01420, 0x1380809, 0xEBB02020, 0x7380809
    .word 0xEBC81420, 0x7A020809, 0x30809EB, 0x31050133, 0x9EBA003
    .word 0x271F0E08, 0x3409, 0x390816, 0x3A0116, 0x390A16
    .word 0x3A0516, 0x390916, 0x3A0316, 0x390B16, 0x3A0716
    .word 0x4, 0x3002C50, 0xFF0D0F0C, 0x80000018, 0xA
    .word 0x2, 0x809EC08, 0x4, 0x3002840, 0xFF0B0E0C
    .word 0x80000018, 0xA, 0x2, 0x809EC08, 0x80000016
    .word 0x4, 0x2, 0x809EC08, 0x4657B580, 0x797F6C3F
    .word 0xFF69F762, 0x423F2103, 0x2104D000, 0x4650DF06, 0x300C6C40
    .word 0x48047001, 0xF944F000, 0xF0002001, 0x2000F805, 0xBD80
    .word 0x258, 0x1C04B510, 0x214A2001, 0xF9CCF786, 0xBD10D100
    .word 0xD10E4224, 0x6C004650, 0x7B407941, 0xD0084288, 0x214A2001
    .word 0xF9A2F786, 0x21492001, 0xF99EF786, 0x2000BD10, 0xFDB2F764
    .word 0xF763488D, 0x488DF9CF, 0xF9CCF763, 0xBD102000, 0x2001B500
    .word 0xF786214A, 0xD100F9A9, 0x4652BD00, 0x79526C12, 0x49074806
    .word 0xFCA2F763, 0x924806, 0x68015880, 0x23006842, 0xF9CEF010
    .word 0xBD002000, 0x810EA6D
dword_809ECC8:    .word 0x810EC21, 0x809ECD0, 0x809ECD8, 0x809ECE4, 0x240000
    .word 0xFFDC0000, 0x240000, 0xFFA40000, 0xC0000, 0x240000
// end of function sub_809DEB0

.thumb
sub_809ECF0:
    push {r0,lr}
    ldr r0, [pc, #0x809ed08-0x809ecf2-2] // =dword_8701E80
    ldr r1, [pc, #0x809ed0c-0x809ecf4-4] // =0x6016800
    ldr r2, [pc, #0x809ed10-0x809ecf6-2] // =0x460
    bl f900_80009A0
    ldr r0, [pc, #0x809ed14-0x809ecfc-4] // =dword_87022E0
    ldr r1, [pc, #0x809ed18-0x809ecfe-2] // =unk_30027A0
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0,pc}
off_809ED08:    .word dword_8701E80
dword_809ED0C:    .word 0x6016800
off_809ED10:    .word 0x460
off_809ED14:    .word dword_87022E0
off_809ED18:    .word unk_30027A0
// end of function sub_809ECF0

.thumb
sub_809ED1C:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    str r0, [r7,#0x34]
    bl sub_802A326
    mov r0, #0xe
    bl sub_8002078
    mov r0, #0xf
    bl sub_8002078
    bl sub_8002610
    pop {r7,pc}
// end of function sub_809ED1C

.thumb
sub_809ED3C:
    push {lr}
    mov r0, #1
    mov r1, #0x4a 
    bl sub_8024FB8
    mov r0, #1
    mov r1, #0x49 
    bl sub_8024FB8
    mov r0, #0xe
    bl sub_8002078
    mov r0, #0xf
    bl sub_8002078
    bl sub_8002610
    pop {pc}
// end of function sub_809ED3C

.thumb
sub_809ED60:
    push {r7,lr}
    bl sub_809EECC
    bne locret_809ED82
    bl sub_80A6FB6
    bne locret_809ED82
    mov r0, #1
    mov r1, #0x49 
    bl sub_8024FB8
    bl sub_809ED1C
    mov r0, #1
    mov r1, #0x4c 
    bl sub_8024F9C
locret_809ED82:
    pop {r7,pc}
// end of function sub_809ED60

.thumb
sub_809ED84:
    push {r4-r6,lr}
    mov r0, #1
    mov r1, #0x4a 
    bl sub_8024FF0
    bne loc_809ED92
    pop {r4-r6,pc}
loc_809ED92:
    sub sp, sp, #0x10
    mov r0, #1
    bl sub_802D92C
    bne loc_809EE14
    mov r0, #1
    mov r1, #0x49 
    bl sub_8024FF0
    beq loc_809EDAA
    bl sub_809EEE0
loc_809EDAA:
    bl sub_809ECF0
    ldr r5, [pc, #0x809ee1c-0x809edae-2] // =dword_809EE20
    ldr r6, [pc, #0x809ee30-0x809edb0-4] // =dword_809EE34
    mov r4, #0xc // (dword_809EE2C - 0x809ee20)
loc_809EDB4:
    ldr r0, [r5,r4]
    ldr r1, [r6,r4]
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    sub r4, #4
    bge loc_809EDB4
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldr r0, [r1,#0x4c]
    bl fA00_8000BB4
    lsr r0, r0, #8
    lsr r1, r0, #4
    mov r2, #0xa
    mul r1, r2
    mov r2, #0xf
    and r0, r2
    add r0, r0, r1
    eor r4, r4
    ldr r5, [pc, #0x809ee7c-0x809edde-2] // =dword_809EE80
    str r5, [sp]
loc_809EDE2:
    ldr r1, [r5,r4]
    cmp r0, r1
    bge loc_809EDF0
    cmp r1, #1
    beq loc_809EDF0
    add r4, #4
    b loc_809EDE2
loc_809EDF0:
    ldr r5, [pc, #0x809ee44-0x809edf0-4] // =dword_809EE48
    ldr r6, [pc, #0x809ee50-0x809edf2-2] // =dword_809EE54
loc_809EDF4:
    svc 6
    str r1, [sp,#4]
    ldr r0, [r5,r4]
    lsl r3, r3, #2
    ldr r1, [r6,r3]
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    ldr r1, [sp]
    ldr r0, [sp,#4]
    cmp r4, #4
    beq loc_809EE14
    add r4, #4
    ldr r1, [r1,r4]
    b loc_809EDF4
loc_809EE14:
    add sp, sp, #0x10
    mov r0, #1
    pop {r4-r6,pc}
    .balign 4, 0x00
off_809EE1C:    .word dword_809EE20
dword_809EE20:    .word 0x80644004, 0x40644014, 0x848004
dword_809EE2C:    .word 0x840014
off_809EE30:    .word dword_809EE34
dword_809EE34:    .word 0xB754, 0xB75C, 0xB760
    .word 0xB762
off_809EE44:    .word dword_809EE48
dword_809EE48:    .word 0x6E8008, 0x7A8008
off_809EE50:    .word dword_809EE54
dword_809EE54:    .word 0xB740, 0xB742, 0xB744, 0xB746, 0xB748, 0xB74A, 0xB74C
    .word 0xB74E, 0xB750, 0xB752
off_809EE7C:    .word dword_809EE80
dword_809EE80:    .word 0xA, 0x1, 0x4657B5A0, 0x797F6C3F, 0x423F2103, 0x2104D000
    .word 0x48053901, 0x59C300BF, 0x581A0088, 0xFC10F787, 0xDAF93901, 0xBDA02000
    .word 0x809EEB4, 0x80698D4, 0x8069A24, 0x809EBD0, 0x809EBEC, 0x6C494651
    .word 0x46F764C8
// end of function sub_809ED84

.thumb
sub_809EECC:
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r0, [r0,#0x4c]
    tst r0, r0
    mov pc, lr
    .balign 4, 0x00
// end of function sub_809EECC

.thumb
sub_809EED8:
    push {lr}
    pop {pc}
// end of function sub_809EED8

.thumb
sub_809EEDC:
    push {lr}
    pop {pc}
// end of function sub_809EEDC

.thumb
sub_809EEE0:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldr r0, [r1,#0x4c]
    sub r0, #1
    bge loc_809EEEE
    mov r0, #0
loc_809EEEE:
    str r0, [r1,#0x4c]
    pop {pc}
    .balign 4, 0x00
dword_809EEF4:    .word 0x60FE74, 0x70000, 0xFF9AFECC, 0x10040, 0xFF9AFFAA
    .word 0x10040, 0xFF9A004C, 0x10040, 0xD800DA, 0x30000
    .word 0x188FF8E, 0x70000, 0xE6FF86, 0x70000, 0xFFE60136
    .word 0x70040, 0xFF440124, 0x70040, 0xFED8002C, 0x50040
    .word 0x260024, 0x50000, 0xFF72FF9C, 0x70000, 0x2AFF9E
    .word 0x70000, 0x56FEF6, 0x70000, 0xFFFAFFFC, 0x50040
    .word 0xFF96005C, 0x50040, 0xFF0E00BA, 0x70040, 0x50011E
    .word 0x30000, 0x1A8FF86, 0x70000, 0x9CFFF4, 0x70040
    .word 0x3C003C, 0x70040, 0xFF9C003C, 0x70040, 0xFF5C003C
    .word 0x70040, 0xFF53FF84, 0x70040, 0x1EFF46, 0x70040
    .word 0x5EFF4C, 0x70040, 0x5EFF08, 0x70040, 0x5EFF08
    .word 0x70040, 0x1CFEF8, 0x50040, 0xACFE44, 0x50000
    .word 0xD6FED4, 0x70000
dword_809EFEC:    .word 0x60FE74, 0x70000, 0xFF9AFECC, 0x30040, 0xFF9AFFAA
    .word 0x30040, 0xFF9A004C, 0x30040, 0xD800DA, 0x10000
    .word 0x188FF8E, 0x70000, 0xE6FF86, 0x50000, 0xFFE60136
    .word 0x10040, 0xFF440124, 0x50040, 0xFED8002C, 0x50040
    .word 0x260024, 0x50000, 0xFF72FF9C, 0x70000, 0x2AFF9E
    .word 0x70000, 0x56FEF6, 0x50000, 0xFFFAFFFC, 0x30040
    .word 0xFF96005C, 0x50040, 0xFF0E00BA, 0x70040, 0x50011E
    .word 0x10000, 0x1A8FF86, 0x70000, 0x9CFFF4, 0x70040
    .word 0x3C003C, 0x50040, 0xFF9C003C, 0x50040, 0xFF5C003C
    .word 0x50040, 0xFF53FF84, 0x70040, 0x1EFF46, 0x70040
    .word 0x5EFF4C, 0x70040, 0x5EFF08, 0x70040, 0x5EFF08
    .word 0x50040, 0x1CFEF8, 0x50040, 0xACFE44, 0x50000
    .word 0xD6FED4, 0x70000
dword_809F0E4:    .word 0xFE970000
dword_809F0E8:    .word 0x5A0000
dword_809F0EC:    .word 0x780000
dword_809F0F0:    .word 0x9060300
dword_809F0F4:    .word 0xF090400
dword_809F0F8:    .word 0x120B0500, 0x4640B5F0, 0x4657B401, 0x797F6C3F, 0x7F4839
    .word 0x1C005BC0, 0xFF70F785, 0xF000D109, 0x186DF8B3, 0x454446A8
    .word 0xF010D003, 0x3401FA19, 0xF000E7F9, 0xE002F847, 0x4640B5F0
    .word 0xF000B401, 0x1A62F8BD, 0xD1132F03, 0x21002011, 0xFF38F785
    .word 0x21012011, 0xFF34F785, 0xD1032A03, 0x21002011, 0xFF20F785
    .word 0xD1032A04, 0x21012011, 0xFF1AF785, 0xBC022000, 0xBDF04688
    .word 0x4657B5F0, 0x797F6C3F, 0x480F2103, 0xD1002F03, 0x1C002104
    .word 0xF7851C0A, 0x4819FF42, 0x5BC0007F, 0xF7851C00, 0xD10DFF2F
    .word 0xF872F000, 0x21031A64, 0x19004805, 0xD1002F03, 0x1B092104
    .word 0x1C0A1C00, 0xFF42F785, 0xBDF02000, 0x1128, 0x4657B5F0
    .word 0x797F6C3F, 0x7F480A, 0x1C005BC0, 0xFF12F785, 0x4654D109
    .word 0x20006C24, 0x48086360, 0x59C0007F, 0xFA5CF787, 0xF78BE001
    .word 0x2000F89E, 0xBDF0, 0x809F1F4, 0x4120411, 0x4170413
    .word 0x809F200, 0x806B78C, 0x806BAE0, 0x806BFB8, 0x806C8AC
    .word 0x4809B5F0, 0xF7656805, 0x4808F930, 0xF7656805, 0x4807F92C
    .word 0xF7656805, 0x4806F928, 0xF7656805, 0x2000F924, 0xBDF0
    .word 0x200AAB0, 0x200AAB4, 0x200AAB8, 0x200AABC, 0x4809B5F0
    .word 0x20016805, 0x48087028, 0x20016805, 0x48077028, 0x20016805
    .word 0x48067028, 0x20016805, 0x20007028, 0xBDF0, 0x200AAB0
    .word 0x200AAB4, 0x200AAB8, 0x200AABC
// end of function sub_809EEE0

.thumb
sub_809F280:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#5]
    mov r5, #3
    cmp r7, #3
    bne loc_809F290
    mov r5, #4
loc_809F290:
    ldr r2, [pc, #0x809f2ac-0x809f290-4] // =0x434
    mov r4, #0
loc_809F294:
    add r0, r2, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_809F2A4
    add r4, #1
    cmp r4, r5
    ble loc_809F294
loc_809F2A4:
    ldr r1, [pc, #0x809f2b0-0x809f2a4-4] // =dword_809F0F0
    ldrb r1, [r1,r7]
    add r4, r4, r1
    pop {pc}
dword_809F2AC:    .word 0x436
off_809F2B0:    .word dword_809F0F0
// end of function sub_809F280

.thumb
sub_809F2B4:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#5]
    lsl r0, r7, #1
    ldr r5, [pc, #0x809f32c-0x809f2be-2] // =byte_809F330
    ldrh r5, [r5,r0]
    ldr r2, [pc, #0x809f2e0-0x809f2c2-2] // =dword_809F2E4
    ldrh r2, [r2,r0]
    mov r4, #0
loc_809F2C8:
    add r0, r2, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_809F2D8
    add r4, #1
    cmp r4, r5
    bmi loc_809F2C8
loc_809F2D8:
    ldr r1, [pc, #0x809f2ec-0x809f2d8-4] // =dword_809F0F4
    ldrb r1, [r1,r7]
    add r4, r4, r1
    pop {pc}
off_809F2E0:    .word dword_809F2E4
dword_809F2E4:    .word 0x15D0159, 0x1680162
off_809F2EC:    .word dword_809F0F4
// end of function sub_809F2B4

.thumb
sub_809F2F0:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#5]
    lsl r0, r7, #1
    ldr r5, [pc, #0x809f32c-0x809f2fa-2] // =byte_809F330
    ldrh r5, [r5,r0]
    ldr r2, [pc, #0x809f31c-0x809f2fe-2] // =dword_809F320
    ldrh r2, [r2,r0]
    mov r4, #0
loc_809F304:
    add r0, r2, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_809F314
    add r4, #1
    cmp r4, r5
    blt loc_809F304
loc_809F314:
    ldr r1, [pc, #0x809f328-0x809f314-4] // =dword_809F0F8
    ldrb r1, [r1,r7]
    add r4, r4, r1
    pop {pc}
off_809F31C:    .word dword_809F320
dword_809F320:    .word 0x15D0159, 0x1680162
off_809F328:    .word dword_809F0F8
off_809F32C:    .word byte_809F330
byte_809F330:    .byte 0x4
    .word 0x6000500
    .hword 0xC00
    .byte 0
// end of function sub_809F2F0

.thumb
sub_809F338:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0x40 
    bl sub_8024FB8
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r7, [r6,#5]
    ldr r6, [r6,#0x28]
    ldrb r0, [r6]
    mov r1, #2
    bic r0, r1
    strb r0, [r6]
    bl sub_80A6EA0
    ldr r2, [pc, #0x809f380-0x809f356-2] // =dword_809F0E4
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    bl sub_80A6DF0
    bl sub_80A6E94
    bl sub_809F2B4
    bl sub_80AFDC6
    bl sub_80B038C
    bl sub_80B0748
    bl sub_80B0B38
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_809F380:    .word dword_809F0E4
    .word dword_809EEF4
// end of function sub_809F338

.thumb
sub_809F388:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r5, [r7,#4]
    cmp r5, #0x81
    bne locret_809F47A
    mov r0, r8
    push {r0}
    ldrb r7, [r7,#5]
    ldr r6, [pc, #0x809f480-0x809f39a-2] // =word_809F484
    ldrh r0, [r6,#0x6] // (word_809F48A - 0x809f484)
    mov r1, #4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    ldr r0, [pc, #0x809f4e0-0x809f3a8-4] // =0x43C
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_809F43E
    bl sub_809F2B4
    sub r4, r4, r1
    ldr r0, [pc, #0x809f4d0-0x809f3ba-2] // =off_8089EC8
    lsl r5, r7, #2
    ldr r0, [r0,r5]
    ldrb r6, [r0,r4]
    bl sub_809F280
    sub r4, r4, r1
    cmp r4, r6
    bge loc_809F3D8
    ldr r6, [pc, #0x809f480-0x809f3cc-4] // =word_809F484
    ldrh r0, [r6,#0x6] // (word_809F48A - 0x809f484)
    add r0, r0, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_809F3D8:
    ldr r0, [pc, #0x809f4e0-0x809f3d8-4] // =0x43C
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_809F43E
    ldr r6, [pc, #0x809f480-0x809f3e4-4] // =word_809F484
    ldrh r0, [r6,#0x2] // (word_809F486 - 0x809f484)
    mov r1, #0xc
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    lsl r0, r7, #2
    ldr r5, [pc, #0x809f48c-0x809f3f4-4] // =dword_809F490
    add r5, r5, r0
    ldrb r1, [r5,r4]
    ldr r5, [pc, #0x809f4a0-0x809f3fa-2] // =dword_809F4A4
    add r5, r5, r0
    ldrb r2, [r5,r4]
    ldrh r0, [r6,#0x2] // (word_809F486 - 0x809f484)
    push {r1}
    push {r0}
    add r0, r0, r2
    push {r2}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    pop {r2}
    pop {r0}
    tst r2, r2
    beq loc_809F422
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    .hword 0x1c12 // add r2, r2, #0  // <mkdata>
    bl loc_802500E
loc_809F422:
    pop {r1}
    ldr r3, [pc, #0x809f4c8-0x809f424-4] // =dword_809F4CC
    ldrb r3, [r3,r7]
    add r3, r3, r2
    sub r4, r1, #1
    mov r1, #1
loc_809F42E:
    push {r1,r3}
    add r0, r3, r4
    bl sub_802D3D8
    pop {r1,r3}
    sub r4, #1
    bge loc_809F42E
    b loc_809F44A
loc_809F43E:
    ldrh r0, [r6,#2]
    mov r1, #0xc
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_802500E
loc_809F44A:
    ldr r0, [pc, #0x809f47c-0x809f44a-2] // =0x174
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    ldr r6, [pc, #0x809f480-0x809f454-4] // =word_809F484
    mov r1, #0xc
    ldrh r0, [r6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    lsl r0, r7, #2
    ldr r6, [pc, #0x809f4b4-0x809f464-4] // =dword_809F4B8
    ldrh r2, [r6,r0]
    add r0, #2
    ldrh r1, [r6,r0]
    add r0, r2, #0
    add r2, r1, #0
    bl loc_8025038
    mov r0, #0
    pop {r1}
    mov r8, r1
locret_809F47A:
    pop {r4-r7,pc}
off_809F47C:    .word 0x174
off_809F480:    .word word_809F484
word_809F484:    .hword 0x14D
word_809F486:    .hword 0x131
    .byte 0xFF, 0x0
word_809F48A:    .hword 0x178
off_809F48C:    .word dword_809F490
dword_809F490:    .word 0xFF030202, 0xFF040302, 0xFF040404, 0x4030404
off_809F4A0:    .word dword_809F4A4
dword_809F4A4:    .word 0xFF040200, 0xFF060300, 0xFF080400, 0x8050400
off_809F4B4:    .word dword_809F4B8
dword_809F4B8:    .word 0x40159, 0x5015D, 0x60162, 0xC0168
off_809F4C8:    .word dword_809F4CC
dword_809F4CC:    .word 0x43372D26
off_809F4D0:    .word off_8089EC8
    .word dword_809F4D8
dword_809F4D8:    .word 0x4120411, 0x4170413
off_809F4E0:    .word 0x43C
// end of function sub_809F388

.thumb
sub_809F4E4:
    push {r4-r7,lr}
    bl sub_809F2F0
    lsl r4, r4, #3
    ldr r5, [pc, #0x809f53c-0x809f4ec-4] // =dword_809EFEC
    add r5, r5, r4
    mov r7, #0
    ldrsh r0, [r5,r7]
    lsl r0, r0, #0x10
    mov r7, #2
    ldrsh r1, [r5,r7]
    lsl r1, r1, #0x10
    mov r7, #4
    ldrsh r2, [r5,r7]
    lsl r2, r2, #0x10
    mov r7, #6
    ldrsh r4, [r5,r7]
    push {r0-r2}
    bl sub_80A6EA0
    pop {r0-r2}
    bl sub_80A6DF0
    add r0, r4, #0
    push {r0}
    bl sub_80A6F0E
    pop {r0}
    bl sub_80A6DB8
    bl sub_80A6E94
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldrb r0, [r7]
    mov r1, #2
    orr r0, r1
    strb r0, [r7]
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_200AA20
off_809F53C:    .word dword_809EFEC
// end of function sub_809F4E4

.thumb
dead_809F540:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809f578-0x809f542-2] // =0x434
    mov r1, #4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    ldr r0, [pc, #0x809f57c-0x809f54e-2] // =0x444
    mov r1, #4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    ldr r0, [pc, #0x809f580-0x809f55a-2] // =0x440
    mov r1, #4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    ldr r0, [pc, #0x809f584-0x809f566-2] // =0x131
    mov r1, #0xc
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_8025038
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_809F578:    .word 0x436
off_809F57C:    .word 0x444
off_809F580:    .word 0x440
off_809F584:    .word 0x131
// end of function dead_809F540

.thumb
sub_809F588:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r5, [r7,#0xc]
    cmp r5, #0x81
    bne loc_809F5A8
    mov r0, #0x26 
    mov r1, #1
    mov r2, #0x28 
loc_809F59A:
    push {r0-r2}
    add r0, r0, r2
    bl sub_802D3D8
    pop {r0-r2}
    sub r2, #1
    bge loc_809F59A
loc_809F5A8:
    mov r0, #0
    pop {r4-r7,pc}
    .word 0x809F5B0
    .word 0x4120411
    .word 0x4170413
// end of function sub_809F588

.thumb
sub_809F5B8:
    push {r4-r7,lr}
    pop {r4-r7,pc}
    .word 0x809F5C0
    .word 0x2A010B
// end of function sub_809F5B8

.thumb
sub_809F5C4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x809f654-0x809f5c6-2] // =unk_2002128
    add r0, r5, #0
    mov r1, #8
    bl f900_8000930
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809F5C4

.thumb
dead_ho_809F5D4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x809f654-0x809f5d6-2] // =unk_2002128
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r0, [r7,#0x28]
    add r0, #0x24 
    bl sub_8027646
    add r4, r0, #0
    mov r7, #0
loc_809F5E8:
    ldr r0, [pc, #0x809f5fc-0x809f5e8-4] // =jt_809F600
    ldr r0, [r0,r7]
    mov lr, pc
    bx r0
    add r7, #4
    cmp r7, #0x14
    blt loc_809F5E8
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809F5FC:    .word jt_809F600
jt_809F600:    .word sub_809F658+1
    .word sub_809F674+1
    .word sub_809F690+1
    .word sub_809F6AC+1
    .word sub_809F6B0+1
// end of function dead_ho_809F5D4

.thumb
dead_ho_809F614:
    push {r4-r7,lr}
    ldr r5, [pc, #0x809f654-0x809f616-2] // =unk_2002128
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r0, [r7,#0x28]
    add r0, #0x24 
    bl sub_8027646
    add r4, r0, #0
    mov r7, #0
loc_809F628:
    ldr r0, [pc, #0x809f63c-0x809f628-4] // =jt_809F640
    ldr r0, [r0,r7]
    mov lr, pc
    bx r0
    add r7, #4
    cmp r7, #0x14
    blt loc_809F628
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809F63C:    .word jt_809F640
jt_809F640:    .word sub_809F6B4+1
    .word sub_809F6F0+1
    .word sub_809F728+1
    .word sub_809F76C+1
    .word sub_809F7A0+1
off_809F654:    .word unk_2002128
// end of function dead_ho_809F614

.thumb
sub_809F658:
    push {r4-r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_809F668
    cmp r4, #0x20 
    bne locret_809F66E
    mov r0, #1
    strb r0, [r5,#3]
loc_809F668:
    ldr r0, [pc, #0x809f670-0x809f668-4] // =off_805D190
    bl sub_8002028
locret_809F66E:
    pop {r4-r7,pc}
off_809F670:    .word off_805D190
// end of function sub_809F658

.thumb
sub_809F674:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_809F684
    cmp r4, #0x21 
    bne locret_809F68A
    mov r0, #1
    strb r0, [r5,#4]
loc_809F684:
    ldr r0, [pc, #0x809f68c-0x809f684-4] // =off_805D28C
    bl sub_8002028
locret_809F68A:
    pop {r4-r7,pc}
off_809F68C:    .word off_805D28C
// end of function sub_809F674

.thumb
sub_809F690:
    push {r4-r7,lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    bne loc_809F6A0
    cmp r4, #0x22 
    bne locret_809F6A6
    mov r0, #1
    strb r0, [r5,#5]
loc_809F6A0:
    ldr r0, [pc, #0x809f6a8-0x809f6a0-4] // =off_805D49C
    bl sub_8002028
locret_809F6A6:
    pop {r4-r7,pc}
off_809F6A8:    .word off_805D49C
// end of function sub_809F690

.thumb
sub_809F6AC:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_809F6AC

.thumb
sub_809F6B0:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_809F6B0

.thumb
sub_809F6B4:
    push {r4-r7,lr}
    cmp r4, #0x20 
    beq loc_809F6CC
    mov r0, #0
    strb r0, [r5,#3]
    ldr r0, [pc, #0x809f6e4-0x809f6be-2] // =off_805D178
    bl sub_8002028
    mov r0, #7
    bl sub_8002078
    b locret_809F6E2
loc_809F6CC:
    ldrb r0, [r5,#3]
    tst r0, r0
    bne locret_809F6E2
    mov r0, #1
    strb r0, [r5,#3]
    ldr r0, [pc, #0x809f6e8-0x809f6d6-2] // =off_805D130
    bl sub_8002028
    ldr r0, [pc, #0x809f6ec-0x809f6dc-4] // =dword_805D4A0+24
    bl sub_8002028
locret_809F6E2:
    pop {r4-r7,pc}
off_809F6E4:    .word off_805D178
off_809F6E8:    .word off_805D130
off_809F6EC:    .word dword_805D4A0+0x18
// end of function sub_809F6B4

.thumb
sub_809F6F0:
    push {r4-r7,lr}
    cmp r4, #0x21 
    beq loc_809F702
    mov r0, #0
    strb r0, [r5,#4]
    ldr r0, [pc, #0x809f71c-0x809f6fa-2] // =off_805D274
    bl sub_8002028
    b locret_809F718
loc_809F702:
    ldrb r0, [r5,#4]
    tst r0, r0
    bne locret_809F718
    mov r0, #1
    strb r0, [r5,#4]
    ldr r0, [pc, #0x809f720-0x809f70c-4] // =off_805D1A8
    bl sub_8002028
    ldr r0, [pc, #0x809f724-0x809f712-2] // =0x141
    bl f500_8000558
locret_809F718:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809F71C:    .word off_805D274
off_809F720:    .word off_805D1A8
off_809F724:    .word 0x141
// end of function sub_809F6F0

.thumb
sub_809F728:
    push {r4-r7,lr}
    cmp r4, #0x22 
    bne loc_809F746
    ldrb r0, [r5,#5]
    tst r0, r0
    bne locret_809F75C
    mov r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x809f760-0x809f738-4] // =off_805D3F0
    bl sub_8002028
    ldr r0, [pc, #0x809f768-0x809f73e-2] // =dword_805D4D8
    bl sub_8002028
    b locret_809F75C
loc_809F746:
    ldrb r0, [r5,#5]
    tst r0, r0
    beq locret_809F75C
    mov r0, #0
    strb r0, [r5,#5]
    ldr r0, [pc, #0x809f764-0x809f750-4] // =dword_805D470+20
    bl sub_8002028
    mov r0, #8
    bl sub_8002078
locret_809F75C:
    pop {r4-r7,pc}
    .byte 0, 0
off_809F760:    .word off_805D3F0
off_809F764:    .word dword_805D470+0x14
off_809F768:    .word dword_805D4D8
// end of function sub_809F728

.thumb
sub_809F76C:
    push {r4-r7,lr}
    cmp r4, #0x23 
    bne loc_809F792
    ldrb r0, [r5,#6]
    tst r0, r0
    bne locret_809F796
    mov r0, #1
    strb r0, [r5,#6]
    mov r0, #3
    bl sub_8002090
    bne locret_809F796
    ldr r0, [pc, #0x809f798-0x809f784-4] // =off_805D2A8
    bl sub_8002028
    ldr r0, [pc, #0x809f79c-0x809f78a-2] // =0xFF
    bl f500_8000558
    b locret_809F796
loc_809F792:
    mov r0, #0
    strb r0, [r5,#6]
locret_809F796:
    pop {r4-r7,pc}
off_809F798:    .word off_805D2A8
off_809F79C:    .word 0x100
// end of function sub_809F76C

.thumb
sub_809F7A0:
    push {r4-r7,lr}
    cmp r4, #0x24 
    bne locret_809F7C0
    mov r0, #1
    mov r1, #1
    bl sub_8025FE0
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x1f
    and r0, r1
    bne locret_809F7C0
    mov r0, #0xf0
    bl f500_8000558
locret_809F7C0:
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word 0xAA56CA76, 0xAA16AA36, 0xA76CAF6, 0x2A362A56, 0xAF62A16
    .word 0x809F7F8, 0x809F808, 0x809F818, 0x809F828, 0x809F838
    .word 0x809F848, 0x809F858, 0x809F868, 0xFF3C0A00, 0xFF3C0801
    .word 0xFF3C0401, 0xFF3C0901, 0xFF3C0A00, 0xFF3C0801, 0xFF3C0401
    .word 0xFF3C0901, 0xFF3C0A00, 0xFF3C0801, 0xFF3C0401, 0xFF3C0901
    .word 0xFF3C0A00, 0xFF3C0801, 0xFF3C0401, 0xFF3C0901, 0xFF3C0A00
    .word 0xFF3C0801, 0xFF3C0401, 0xFF3C0901, 0xFF3C0A00, 0xFF3C0801
    .word 0xFF3C0401, 0xFF3C0901, 0xFF3C0A00, 0xFF3C0801, 0xFF3C0401
    .word 0xFF3C0901, 0xFF3C0A00, 0xFF3C0801, 0xFF3C0401, 0xFF3C0901
    .word 0x805, 0x0, 0x0, 0x0, 0x0
    .word 0x805
    .word 0x0, 0x0, 0x0
    .word 0x1, 0x805, 0x0, 0x0, 0x0
    .word 0x2, 0x805, 0x0, 0x0, 0x0
dword_809F8C4:    .word 0x3, 0xFF, 0x4D28B5F0, 0x215B2006, 0xFB8CF785, 0x4657D125
    .word 0x88B86C3F, 0x428889B9, 0x2006D108, 0xF785215A, 0xD01CFB81, 0xF763480F
    .word 0xE018FDE7, 0x215A2006, 0xFB5CF785, 0x21642006, 0xFB58F785, 0x215C2006
    .word 0xF7852204, 0x2006FB91, 0x22042160, 0xFB8CF785, 0x21281C28, 0xF806F761
    .word 0xF000E001, 0x2000F935, 0xBDF0, 0x809F878, 0x4D0EB5F0, 0x215B2006
    .word 0xFB58F785, 0x2006D109, 0xF785215A, 0xD004FB53, 0x78294803, 0x46FE5840
    .word 0x20004700, 0xBDF0, 0x809F960, 0x809F975, 0x809FA5D, 0x809FB61
    .word 0x809FB8D, 0x20001B0, 0xB083B5F0, 0x210C4668, 0xF7612220, 0x4F30F819
    .word 0x1C2E2403, 0x210A4668, 0xF984F761, 0x466A2100, 0x1C395411, 0x18890042
    .word 0x56CA2300, 0x23017332, 0x737256CA, 0x3C013608, 0xDAEB2C00, 0xB082B003
    .word 0x21084668, 0xF7602220, 0x4668FFFB, 0xF7612108, 0x4920F969, 0x588F0082
    .word 0x1C2E2403, 0x21044668, 0xF960F761, 0x466A2100, 0x1C395411, 0x18890082
    .word 0x7232780A, 0x7272784A, 0x72B2788A, 0xB40272F2, 0xF926F761, 0x4A15BC02
    .word 0x897809, 0x5C8A1809, 0x360873F2, 0x2C003C01, 0xB002DAE0, 0x70282004
    .word 0x70A82000, 0x7128200F, 0x215C2006, 0xF7852204, 0x2006FB07, 0x22042160
    .word 0xFB02F785, 0xF76020A0, 0x4805FD91, 0xFD44F763, 0xF80EF000, 0xBDF0
    .word 0x809F7C4, 0x809F7D8, 0x809F878, 0x809FA54, 0xFF783C1E, 0xFF3C1E0A
    .word 0x7928B5F0, 0xDA003801, 0x71282000, 0x4E392400, 0x1C301C2F, 0xFAC0F785
    .word 0x2000D011, 0x727872B8, 0x28007A38, 0x2006D00B, 0xF7852164, 0xD106FAB3
    .word 0x21642006, 0xFA84F785, 0x300178E8, 0x370870E8, 0x34013601, 0xDBE42C04
    .word 0x4E2B2400, 0x7AB81C2F, 0xDB013801, 0xE02972B8, 0x38017A78, 0x7278DD08
    .word 0xDC022803, 0xF76020E3, 0x7AF8FD49, 0xE01D72B8, 0x72782000, 0xF7851C30
    .word 0xD117FA8F, 0xF7851C30, 0x78A8FA61, 0x70A83001, 0x4E1AB440, 0x1C301936
    .word 0xFA82F785, 0xD109BC40, 0xF8FDF78C, 0x4818D106, 0x7BFA7A39, 0x43110212
    .word 0xF8ACF78C, 0x36013708, 0x2C043401, 0x2400DBCB, 0x1C2F4E10, 0x5678210C
    .word 0x62700400, 0x5678210D, 0x62B00400, 0x62F02000, 0x36D83708, 0x2C043401
    .word 0x78A8DBF0, 0xDB072804, 0x78E82408, 0xDB002814, 0x702C240C, 0x70682010
    .word 0xBDF0, 0x65C, 0x660, 0x2006140, 0x8091388, 0x7868B5F0
    .word 0x70683801, 0x2000DC0F, 0x20067028, 0xF7852164, 0x2006FA21, 0x2204215C
    .word 0xFA5AF785, 0x21602006, 0xF7852204, 0xBDF0FA55, 0xF000B5F0, 0xBDF0F801
    .word 0x2006B5F0, 0xF785215B, 0x2006F9FF, 0xF785215A, 0x2006F9FB, 0xF7852164
    .word 0x2006F9F7, 0x2204215C, 0xFA29F785, 0x21602006, 0xF7852204, 0x1C28FA24
    .word 0xF7602128, 0xBDF0FEB3, 0xE, 0x10F, 0xFFFFFFFF, 0x3C155028
    .word 0x23051414, 0xFFFF0100, 0x19601AB, 0xFF1C0000, 0xFF940000, 0x0
    .word 0xFF240000, 0xFF940000, 0x0
    .word dword_807A544+0x46C
    .word unk_2036800
    .word 0x3C155028, 0x21031414, 0xFFFF0100, 0x19601AB, 0xFFC40000
    .word 0xFF1C0000, 0x400000, 0xFFC40000, 0xFF140000, 0x400000
    .word 0x807B23C, 0x2036800, 0x3C155028, 0x23051414, 0xFFFF0100
    .word 0x19601AB, 0x1440000, 0xFEFC0000, 0x0
    .word 0x14C0000, 0xFEFC0000, 0x0
    .word dword_807AE7C+0x454
    .word unk_2036800
    .byte 0x28 
    .byte 0x50 
    .byte 0x15
    .byte 0x3C 
    .byte 0x14
    .byte 0x14
    .byte 5
    .byte 0x23 
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0xFF
    .byte 0xAB
    .byte 1
    .byte 0x96
    .byte 1
    .byte 0
    .byte 0
    .byte 0xCC
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0xF8
    .byte 0xBE
    .byte 7
    .byte 8
    .byte 0
    .byte 0x68 
    .byte 3
    .byte 2
// end of function sub_809F7A0

.thumb
sub_809FC98:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809fcec-0x809fc9a-2] // =byte_200A7F0
    mov r1, #0xc
    bl f900_8000930
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809FC98

.thumb
dead_ho_809FCA6:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r7, [pc, #0x809fce8-0x809fcaa-2] // =dword_809F8C4+788
    mov r1, #0x30 
    mul r1, r0
    add r7, r7, r1
    ldr r5, [pc, #0x809fcec-0x809fcb2-2] // =byte_200A7F0
    ldr r0, [pc, #0x809fcc0-0x809fcb4-4] // =jt_809FCC4
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_809FCC0:    .word jt_809FCC4
jt_809FCC4:    .word cb_809FCF0+1
    .word cb_809FD6C+1
    .word cb_809FDA4+1
    .word cb_809FDBE+1
    .word cb_809FEA8+1
    .word cb_809FEDA+1
    .word cb_809FF10+1
    .word cb_809FF3A+1
    .word cb_809FF62+1
off_809FCE8:    .word dword_809F8C4+0x314
off_809FCEC:    .word byte_200A7F0
// end of function dead_ho_809FCA6

.thumb
cb_809FCF0:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8025F1E
    ldr r0, [r7,#0x10]
    ldr r1, [r7,#0x14]
    ldr r2, [r7,#0x18]
    bl sub_8025F28
    ldr r0, [r7,#0x28]
    bl sub_802669C
    bl sub_80A6F96
    bl sub_80A6EA0
    ldrb r0, [r7,#6]
    bl sub_80A6DB8
    ldr r0, [r7,#0x1c]
    ldr r1, [r7,#0x20]
    ldr r2, [r7,#0x24]
    bl sub_80A6DF0
    bl sub_80540BA
    ldr r0, [pc, #0x809fd68-0x809fd24-4] // =0xFBCC0000
    bl sub_8053FFC
    mov r0, #0
    bl sub_8029700
    mov r0, #8
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x30 
    neg r0, r0
    strb r0, [r5,#6]
    mov r0, #0x1e
    strb r0, [r5,#1]
    bl sub_809FD4E
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FCF0

.thumb
sub_809FD4E:
    mov r0, #2
    strb r0, [r5,#3]
    ldrb r0, [r7,#1]
    strb r0, [r5,#2]
    mov r1, #0xa
    svc 6
    lsr r0, r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#4]
    strb r0, [r5,#5]
    mov pc, lr
dword_809FD66:    .word 0xFBCC0000
    .hword 0x809
// end of function sub_809FD4E

.thumb
cb_809FD6C:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_809FD98
    mov r2, #6
    ldrsb r0, [r5,r2]
    add r1, r0, #2
    cmp r1, #0x1e
    bgt loc_809FD84
    add r0, r1, #0
    strb r0, [r5,#6]
    b loc_809FD98
loc_809FD84:
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_809FD98
    ldr r0, [r7,#0x2c]
    ldrb r1, [r7]
    bl sub_804E2A4
    mov r0, #8
    strb r0, [r5]
loc_809FD98:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FD6C

.thumb
cb_809FDA4:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_809FDB2
    mov r0, #0xc
    strb r0, [r5]
loc_809FDB2:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FDA4

.thumb
cb_809FDBE:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r4, [r4,#2]
    mov r0, #0x30 
    lsl r0, r0, #4
    tst r4, r0
    beq loc_809FE26
    lsr r1, r4, #9
    strb r1, [r5,#8]
    ldr r0, [pc, #0x809fe9c-0x809fdd2-2] // =dword_809FEA0
    ldrb r1, [r5,#3]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    and r0, r4
    beq loc_809FE1C
    lsr r0, r0, #9
    strb r0, [r5,#3]
    ldrb r1, [r7,#7]
    add r0, r0, r1
    bl sub_80A6DB8
    ldrb r3, [r7,#8]
    mov r4, #0xc
    ldrb r0, [r5,#4]
    ldrb r1, [r7,#4]
    cmp r0, r1
    blt loc_809FE02
    ldrb r2, [r7,#5]
    add r1, r1, r2
    cmp r0, r1
    bgt loc_809FE02
    ldrb r3, [r7,#9]
    mov r4, #0xe
loc_809FE02:
    strb r3, [r5,#0xb]
    ldrh r0, [r7,r4]
    bl f500_8000558
    mov r0, #0x10
    strb r0, [r5,#7]
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#4]
    strb r0, [r5,#5]
    b loc_809FE40
loc_809FE1C:
    ldrb r0, [r7,#2]
    strb r0, [r5,#5]
    mov r0, #0
    strb r0, [r5,#4]
    b loc_809FE40
loc_809FE26:
    ldrb r0, [r5,#4]
    add r0, #1
    strb r0, [r5,#4]
    ldrb r1, [r7,#3]
    cmp r0, r1
    blt loc_809FE40
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0x1c
    strb r0, [r5]
    b loc_809FE90
loc_809FE40:
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_809FE5C
    sub r0, #1
    strb r0, [r5,#5]
    cmp r0, #1
    bne loc_809FE5C
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #1
    strb r0, [r5,#0xa]
    mov r0, #0x1c
    strb r0, [r5]
    b loc_809FE90
loc_809FE5C:
    ldrb r0, [r5,#2]
    cmp r0, #0
    bgt loc_809FE6C
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0x10
    strb r0, [r5]
    b loc_809FE90
loc_809FE6C:
    mov r1, #1
    tst r0, r1
    bne loc_809FE90
    lsr r0, r0, #1
    mov r1, #0xa
    svc 6
    tst r1, r1
    bne loc_809FE90
    ldrb r1, [r5,#9]
    cmp r0, r1
    beq loc_809FE90
    strb r0, [r5,#9]
    ldrb r1, [r7]
    add r1, r1, r0
    add r1, #3
    ldr r0, [r7,#0x2c]
    bl sub_804E2A4
loc_809FE90:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
off_809FE9C:    .word dword_809FEA0
dword_809FEA0:    .word 0x1000200
    .word 0x300
// end of function cb_809FDBE

.thumb
cb_809FEA8:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_809FECE
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_809FECE
    ldr r0, [r7,#0x2c]
    ldrb r1, [r7]
    add r1, #1
    bl sub_804E2A4
    ldrb r0, [r7,#6]
    bl sub_80A6DB8
    mov r0, #0x14
    strb r0, [r5]
loc_809FECE:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FEA8

.thumb
cb_809FEDA:
    push {r4-r7,lr}
    mov r2, #6
    ldrsb r0, [r5,r2]
    sub r1, r0, #2
    mov r2, #0x30 
    neg r2, r2
    cmp r1, r2
    blt loc_809FEF0
    add r0, r1, #0
    strb r0, [r5,#6]
    b loc_809FF04
loc_809FEF0:
    mov r0, #0x80
    bl sub_80539A0
    bne loc_809FF04
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x18
    strb r0, [r5]
loc_809FF04:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FEDA

.thumb
cb_809FF10:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_809FF2E
    mov r0, #1
    bl sub_8029700
    bl sub_80A6FA6
    bl sub_80A6E94
    bl sub_80540BA
    mov r0, #0
    pop {r4-r7,pc}
loc_809FF2E:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FF10

.thumb
cb_809FF3A:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_809FF56
    ldr r0, [r7,#0x2c]
    ldrb r1, [r7]
    add r1, #2
    ldrb r2, [r5,#0xa]
    add r1, r1, r2
    bl sub_804E2A4
    mov r0, #0x20 
    strb r0, [r5]
loc_809FF56:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FF3A

.thumb
cb_809FF62:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_809FF74
    mov r0, #0xc
    strb r0, [r5]
    bl sub_809FD4E
loc_809FF74:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_809FF62

.thumb
sub_809FF80:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0014-0x809ff82-2] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0x8] // (byte_20004D8 - 0x20004d0)
    mov r0, #0xc6
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    mov r0, #0x14
    neg r0, r0
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    mov r0, #0
    strb r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809FF80

.thumb
sub_809FF9A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0014-0x809ff9c-4] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_809FF9A

.thumb
sub_809FFA6:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0014-0x809ffa8-4] // =byte_20004D0
    ldrb r0, [r5,#0x8] // (byte_20004D8 - 0x20004d0)
    tst r0, r0
    beq loc_80A0010
    mov r0, #1
    bl sub_802D92C
    bne loc_80A0010
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_809FFD0
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    bl sub_80540BA
    mov r0, #0x24 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
loc_809FFD0:
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    tst r0, r0
    bne loc_809FFEC
    mov r1, #0xd // (byte_20004DD - 0x20004d0)
    ldrsb r0, [r5,r1]
    cmp r0, #0x14
    bge loc_809FFE8
    add r0, #2
loc_809FFE8:
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    b loc_80A0010
loc_809FFEC:
    mov r3, #0
    mov r1, #0xd // (byte_20004DD - 0x20004d0)
    ldrsb r0, [r5,r1]
    mov r1, #0x14
    neg r1, r1
    cmp r0, r1
    ble loc_809FFFE
    mov r3, #1
    sub r0, #2
loc_809FFFE:
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    tst r3, r3
    bne loc_80A0010
    mov r0, #0
    strb r0, [r5,#0x8] // (byte_20004D8 - 0x20004d0)
    bl sub_80540BA
    bl sub_8003814
loc_80A0010:
    mov r0, #0
    pop {r4-r7,pc}
off_80A0014:    .word byte_20004D0
off_80A0018:    .word 0x90
off_80A001C:    .word dword_80A004C
    .word 0x190
    .word dword_80A00AC
    .word 0x290
    .word dword_80A010C
    .word 0x91, 0x80A016C, 0x191, 0x80A01CC, 0x291, 0x80A022C
    .word 0x0
dword_80A004C:    .word 0xA800AE, 0x820000, 0x6C, 0xFFCA00A2, 0xFFE20000, 0x3A
    .word 0xFFBCFF94, 0xFF640000, 0xFF64, 0x3800B6, 0xFFA40000, 0xE2
    .word 0xA4FF72, 0xFF7C0000, 0xFEE8, 0x1140076, 0x2A0000, 0x4A
    .word 0xFF9C0006, 0xFEE00000, 0xFFAB, 0xFFD2004E, 0xFEF60000, 0xA6
dword_80A00AC:    .word 0x13A0050, 0x3C0000, 0xCC, 0x6A011E, 0x1480000, 0x98
    .word 0x1E008C, 0x2E0000, 0xFFE8, 0xFFB800B6, 0xA80000, 0xFF7C
    .word 0xFF840134, 0x1740000, 0xFF90, 0xFFC000F8, 0x1160000, 0xFF04
    .word 0xFF1800CE, 0x540000, 0xFEC4, 0xFE7C0040, 0x440000, 0xFF88
dword_80A010C:    .word 0x104FFA6, 0xFF7E0000, 0xE0, 0xDE002A, 0xE40000, 0xB6
    .word 0xA00D2, 0xF00000, 0xFF88, 0xFF4800D6, 0x16E0000, 0xFF32
    .word 0xFFCC0160, 0x1360000, 0xFF7C, 0xFF080142, 0x220000, 0xFF78
    .word 0x80FF86, 0xFED00000, 0x1A, 0xE2FE9E, 0xFF160000, 0xFF88
    .word 0x14FFFE, 0x4C0000, 0x86, 0x8800C8, 0x1180000, 0x86
    .word 0xFF940120, 0x480000, 0xFED2, 0xFEA0003A, 0xFFA40000, 0xFED2
    .word 0xFEC2FF40, 0xFF640000, 0xFF92, 0x900034, 0xFFC20000, 0xDE
    .word 0xFCFF7A, 0xFF880000, 0xBA, 0x4AFF72, 0xFFBC0000, 0xFECE
    .word 0x132FF60, 0xFFC80000, 0x1C00B0, 0xB6002C, 0x860040, 0x400038
    .word 0xFFB6012A, 0x1100040, 0x400000, 0xFFBC0026, 0xFFF00040, 0x40FF7C
    .word 0xFF3EFFBE, 0xFEE80040, 0x40FFB8, 0x12FF3C, 0xFF4E0030, 0x140046
    .word 0xA0FEB4, 0xFFB80000, 0x8C, 0x6EFE8C, 0x220000, 0x40FEFE
    .word 0x1040048, 0xE0000, 0x114, 0x14C0026, 0xFF8A0000, 0x124
    .word 0xE6FF34, 0xFF180000, 0x9A, 0x58FFE4, 0x840040, 0x40009E
    .word 0xEE001E, 0x8E0040, 0x4000D4, 0xFFA2FFD4, 0xFFCC0000, 0xFEE4
    .word 0xFE600030, 0xA00000, 0xFE62, 0xA8FFCA, 0xFF14FFC0, 0xFFC00092
// end of function sub_809FFA6

.thumb
sub_80A028C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a028e-2] // =byte_20004D0
    mov r6, r10
    ldr r6, [r6,#0x44]
    mov r4, #0x64 
    bl sub_80A0454
    beq loc_80A029E
    mov r4, #0
loc_80A029E:
    strb r4, [r6,#9]
    add r0, r5, #0
    add r0, #0x10
    mov r1, #0x20 
    mov r2, #0x20 
    bl f900_80009B4
    pop {r4-r7,pc}
// end of function sub_80A028C

.thumb
sub_80A02AE:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a02b0-4] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A02AE

.thumb
sub_80A02BA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a02bc-4] // =byte_20004D0
    mov r0, #0
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A02BA

.thumb
sub_80A02C6:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a02c8-4] // =byte_20004D0
    mov r0, #0
    strb r0, [r5,#0xf] // (word_20004DE+1 - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A02C6

.thumb
sub_80A02D2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a02d4-4] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0xf] // (word_20004DE+1 - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A02D2

.thumb
sub_80A02DE:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a0428-0x80a02e0-4] // =byte_20004D0
    bl sub_80A0438
    bne loc_80A03BE
    bl sub_80A0454
    bne loc_80A0312
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_80A0306
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    bl sub_80540BA
    mov r0, #0x26 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
loc_80A0306:
    bl sub_8054018
    bl sub_8054054
    bl sub_8109FDA
loc_80A0312:
    ldrb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    tst r0, r0
    bne loc_80A03BE
    bl sub_80A0466
    bne loc_80A039A
    mov r0, #0xa
    strb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    ldrb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    sub r0, #1
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    bgt loc_80A03BE
    mov r0, #0
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r0, [r1,#9]
    tst r0, r0
    beq loc_80A034C
    sub r0, #1
    strb r0, [r1,#9]
    cmp r0, #0
    bgt loc_80A0346
    ldr r0, [pc, #0x80a0434-0x80a0340-4] // =0x1C4
    bl f500_8000558
loc_80A0346:
    mov r0, #0x3c 
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    b loc_80A03BE
loc_80A034C:
    ldrb r4, [r5,#0xe] // (word_20004DE - 0x20004d0)
    tst r4, r4
    bne loc_80A036E
    bl sub_80A0454
    bne loc_80A036E
    bl sub_802BCF2
    bne loc_80A03BE
    push {r0-r7}
    mov r0, #1
    strb r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    ldr r0, [pc, #0x80a0424-0x80a0364-4] // =dword_8090FB4+224
    bl sub_802BC60
    pop {r0-r7}
    b loc_80A03BE
loc_80A036E:
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#0x20]
    cmp r0, #1
    beq loc_80A0394
    push {r0,r1}
    bl fA00_8000C44
    ldr r3, [pc, #0x80a042c-0x80a037e-2] // =dword_80A0430
    ldrb r3, [r3,r0]
    pop {r0,r1}
    mov r4, #0x6b 
    sub r0, r0, r3
    bgt loc_80A038C
    mov r0, #1
loc_80A038C:
    strh r0, [r1,#0x20]
    add r0, r4, #0
    bl f500_8000558
loc_80A0394:
    mov r0, #0x1e
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    b loc_80A03BE
loc_80A039A:
    bl sub_80A0454
    bne loc_80A03BE
    mov r0, #0x3c 
    strb r0, [r5,#0xc] // (byte_20004DC - 0x20004d0)
    ldrb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    sub r0, #1
    strb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    bgt loc_80A03BE
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r0, [r1,#9]
    add r0, #1
    cmp r0, #0x64 
    bgt loc_80A03BE
    strb r0, [r1,#9]
    mov r0, #0xa
    strb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
loc_80A03BE:
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x1f
    and r0, r1
    mov r1, #0x10
    tst r0, r1
    beq loc_80A0420
    bl sub_80A049A
    beq loc_80A0420
    add r7, r0, #0
    add r0, r5, #0
    add r0, #0x10
    add r1, r5, #0
    add r1, #0x20 
    mov r2, #0x10
    bl f900_8000970
    add r0, r5, #0
    add r0, #0x10
    mov r1, #0x10
    mov r2, #0x20 
    bl f900_80009B4
    add r0, r5, #0
    add r0, #0x20 
    mov r1, #0x10
    bl sub_8000C98
    add r2, r5, #0
    add r2, #0x10
    mov r1, #0
    strb r1, [r2,r0]
    mov r1, #6
    mul r1, r0
    add r7, r7, r1
    push {r5}
    mov r0, #0xe
    ldrh r1, [r7]
    ldrh r2, [r7,#2]
    ldrh r3, [r7,#4]
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_8004440
    pop {r5}
loc_80A0420:
    mov r0, #0
    pop {r4-r7,pc}
off_80A0424:    .word dword_8090FB4+0xE0
off_80A0428:    .word byte_20004D0
off_80A042C:    .word dword_80A0430
dword_80A0430:    .word 0xFF060402
dword_80A0434:    .word 0x1C7
// end of function sub_80A02DE

.thumb
sub_80A0438:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    blt loc_80A0450
    mov r0, #1
    bl sub_802D92C
    bne loc_80A0450
    mov r0, #0
    pop {r4-r7,pc}
loc_80A0450:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A0438

.thumb
sub_80A0454:
    push {r4-r7,lr}
    mov r0, #0x1c
    bl sub_802D3F8
    beq loc_80A0462
    mov r0, #0
    pop {r4-r7,pc}
loc_80A0462:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A0454

.thumb
sub_80A0466:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x80a0488-0x80a0470-4] // =dword_80A048C
loc_80A0472:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_80A0484
    cmp r0, r7
    beq loc_80A0480
    add r6, #2
    b loc_80A0472
loc_80A0480:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A0484:
    mov r0, #1
    pop {r4-r7,pc}
off_80A0488:    .word dword_80A048C
dword_80A048C:    .word 0x1900090, 0x910290, 0x2910191
    .byte 0x0, 0x0
// end of function sub_80A0466

.thumb
sub_80A049A:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    ldr r4, [pc, #0x80a04bc-0x80a04a2-2] // =off_80A0018
loc_80A04A4:
    ldr r0, [r4]
    tst r0, r0
    beq loc_80A04B8
    cmp r0, r7
    beq loc_80A04B2
    add r4, #8
    b loc_80A04A4
loc_80A04B2:
    ldr r0, [r4,#4]
    tst r0, r0
    pop {r4-r7,pc}
loc_80A04B8:
    mov r0, #0
    pop {r4-r7,pc}
off_80A04BC:    .word off_80A0018
// end of function sub_80A049A

.thumb
sub_80A04C0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a04f0-0x80a04c2-2] // =byte_20004D0
    bl sub_80A04F4
    bne loc_80A04EA
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_80A04E2
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    bl sub_80540BA
    mov r0, #0x2b 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
loc_80A04E2:
    bl sub_8054018
    bl sub_8054054
loc_80A04EA:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A04F0:    .word byte_20004D0
// end of function sub_80A04C0

.thumb
sub_80A04F4:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    blt loc_80A050C
    mov r0, #1
    bl sub_802D92C
    bne loc_80A050C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A050C:
    mov r0, #1
    pop {r4-r7,pc}
dword_80A0510:    .word 0xFF000032, 0xFF010132, 0xFF000233, 0xFF010333, 0xFFFFFFFF
    .word 0x2005B580, 0xF95EF763, 0x79004806, 0x49030040, 0xF7FE5A08
    .word 0x2000FCC5, 0xBD80, 0x80A0544, 0xE1004B0, 0x200AA20
// end of function sub_80A04F4

.thumb
sub_80A054C:
    push {lr}
    mov r0, #0
    mov r1, r10
    ldr r1, [r1,#0x44]
    add r1, #0x90
    strb r0, [r1]
    pop {pc}
    .balign 4, 0x00
// end of function sub_80A054C

.thumb
sub_80A055C:
    push {r4,lr}
    bl sub_80A6EA0
    ldr r3, [pc, #0x80a05a0-0x80a0562-2] // =dword_80A05A4
    ldrb r1, [r5,#4]
    lsl r1, r1, #4
    add r3, r3, r1
    mov r4, #0
    ldr r0, [r3,r4]
    mov r4, #4
    ldr r1, [r3,r4]
    mov r4, #8
    ldr r2, [r3,r4]
    push {r3}
    bl sub_80A6DF0
    pop {r3}
    ldr r0, [r3,#0xc]
    bl sub_80A6DB8
    bl sub_80A6E94
    mov r0, #9
    bl sub_80A8ECE
    mov r1, #0x4c 
    lsl r1, r1, #0x10
    str r1, [r0,#0x24]
    ldr r1, [pc, #0x80a05c4-0x80a0594-4] // =0xFFFFFFFE
    lsl r1, r1, #0x10
    str r1, [r0,#0x28]
    mov r0, #0
    pop {r4,pc}
    .byte 0, 0
off_80A05A0:    .word dword_80A05A4
dword_80A05A4:    .word 0xFF460000, 0xBA0000, 0x0
    .word 0x7, 0xFFEC0000, 0xFFFE0000, 0x0
    .word 0x1
dword_80A05C4:    .word 0xFFFFFFFE
// end of function sub_80A055C

.thumb
sub_80A05C8:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#4]
    cmp r2, #0x91
    bne loc_80A05E2
    ldr r0, [pc, #0x80a0640-0x80a05d4-4] // =byte_200A610
    ldrb r0, [r0,#0x10] // (byte_200A620 - 0x200a610)
    strb r0, [r5,#7]
    mov r0, #0x1d
    bl sub_80A6DB8
    b loc_80A0634
loc_80A05E2:
    ldr r0, [pc, #0x80a0640-0x80a05e2-2] // =byte_200A610
    ldrb r1, [r0,#0x10] // (byte_200A620 - 0x200a610)
    strb r1, [r5,#7]
    ldr r3, [pc, #0x80a064c-0x80a05e8-4] // =dword_200AAB0
    ldrb r7, [r3]
    lsl r7, r7, #3
    ldr r3, [pc, #0x80a0648-0x80a05ee-2] // =dword_80A0B40
    add r3, r3, r7
    ldr r1, [r3]
    mov r4, #4
    lsl r4, r4, #0x10
    add r1, r1, r4
    ldr r2, [r3,#4]
    sub r2, r2, r4
    ldr r3, [r0,#0x24] // (dword_200A634 - 0x200a610)
    sub r3, r3, r1
    add r5, r3, #0
    cmp r5, #0
    bge loc_80A060A
    neg r5, r5
loc_80A060A:
    ldr r4, [r0,#0x28] // (dword_200A638 - 0x200a610)
    sub r4, r4, r2
    add r6, r4, #0
    cmp r6, #0
    bge loc_80A0616
    neg r6, r6
loc_80A0616:
    cmp r5, r6
    bgt loc_80A0626
    cmp r4, #0
    bge loc_80A0622
    mov r0, #0x1b
    b loc_80A0630
loc_80A0622:
    mov r0, #0x1d
    b loc_80A0630
loc_80A0626:
    cmp r3, #0
    bge loc_80A062E
    mov r0, #0x1a
    b loc_80A0630
loc_80A062E:
    mov r0, #0x1c
loc_80A0630:
    bl sub_80A6DB8
loc_80A0634:
    ldr r0, [pc, #0x80a0644-0x80a0634-4] // =0x1A8
    bl f500_8000558
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A0640:    .word byte_200A610
off_80A0644:    .word 0x1A8
off_80A0648:    .word dword_80A0B40
off_80A064C:    .word dword_200AAB0
// end of function sub_80A05C8

.thumb
sub_80A0650:
    push {r7,lr}
    bl sub_809EECC
    bne locret_80A0666
    bl sub_80A6FB6
    bne locret_80A0666
    mov r0, #1
    mov r1, #0x8a
    bl sub_8024F9C
locret_80A0666:
    pop {r7,pc}
// end of function sub_80A0650

.thumb
sub_80A0668:
    push {lr}
    mov r0, #1
    mov r1, #0xa1
    bl sub_8024FF0
    bne loc_80A0698
    mov r0, #1
    mov r1, #0x84
    bl sub_8024FF0
    beq loc_80A0698
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r1, [r0,#2]
    mov r2, #8
    tst r1, r2
    beq loc_80A0698
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A0698
    mov r0, #0x81
    bl sub_804DF90
loc_80A0698:
    ldr r0, [pc, #0x80a06a8-0x80a0698-4] // =off_80A06AC
    ldrb r1, [r5,#8]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A06A8:    .word off_80A06AC
off_80A06AC:    .word sub_80A06B4+1
    .word sub_80A06D4+1
// end of function sub_80A0668

.thumb
sub_80A06B4:
    push {lr}
    bl sub_80540BA
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#4]
    cmp r1, #0x91
    beq loc_80A06CA
    ldr r0, [pc, #0x80a06d0-0x80a06c4-4] // =dword_80A0510
    bl sub_8053FFC
loc_80A06CA:
    mov r1, #1
    strb r1, [r5,#8]
    pop {pc}
off_80A06D0:    .word dword_80A0510
// end of function sub_80A06B4

.thumb
sub_80A06D4:
    push {r4-r6,lr}
    mov r0, #1
    mov r1, #0x85
    bl sub_8024FF0
    bne loc_80A06E2
    pop {r4-r6,pc}
loc_80A06E2:
    sub sp, sp, #0x10
    mov r0, #1
    bl sub_802D92C
    bne loc_80A07C4
    mov r0, #1
    mov r1, #0x84
    bl sub_8024FF0
    beq loc_80A0708
    bl sub_809EEE0
    bl sub_809EECC
    bne loc_80A0708
    mov r0, #1
    mov r1, #0x84
    bl sub_8024FB8
loc_80A0708:
    bl sub_8054018
    bl sub_8054054
    bl sub_809ECF0
    ldr r5, [pc, #0x80a07cc-0x80a0714-4] // =dword_80A07D0
    ldr r6, [pc, #0x80a07e0-0x80a0716-2] // =dword_80A07E4
    mov r4, #0xc // (dword_80A07DC - 0x80a07d0)
loc_80A071A:
    ldr r0, [r5,r4]
    ldr r1, [r6,r4]
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    sub r4, #4
    bge loc_80A071A
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldr r0, [r1,#0x4c]
    push {r0-r3,r6,r7}
    tst r0, r0
    beq loc_80A076C
    mov r7, #4
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#4]
    cmp r1, #0x91
    beq loc_80A0744
    mov r7, #0xb
loc_80A0744:
    mov r2, #0x3c 
    mul r7, r2
    cmp r0, r7
    bgt loc_80A076C
    add r6, r0, #0
    mov r1, #0x3c 
    svc 6
    tst r1, r1
    bne loc_80A076C
    mov r0, #1
    mov r1, #0x84
    bl sub_8024FF0
    beq loc_80A076C
    ldr r0, [pc, #0x80a083c-0x80a0760-4] // =0xE0
    cmp r6, #0x3c 
    bne loc_80A0768
    ldr r0, [pc, #0x80a0840-0x80a0766-2] // =0xE4
loc_80A0768:
    bl f500_8000558
loc_80A076C:
    pop {r0-r3,r6,r7}
    bl fA00_8000BB4
    lsr r0, r0, #8
    cmp r0, #0xff
    ble loc_80A0780
    mov r1, #0xff
    and r0, r1
    ldr r1, [pc, #0x80a0838-0x80a077c-4] // =0x60
    add r0, r0, r1
loc_80A0780:
    lsr r1, r0, #4
    mov r2, #0xa
    mul r1, r2
    mov r2, #0xf
    and r0, r2
    add r0, r0, r1
    eor r4, r4
    ldr r5, [pc, #0x80a082c-0x80a078e-2] // =dword_80A0830
    str r5, [sp]
loc_80A0792:
    ldr r1, [r5,r4]
    cmp r0, r1
    bge loc_80A07A0
    cmp r1, #1
    beq loc_80A07A0
    add r4, #4
    b loc_80A0792
loc_80A07A0:
    ldr r5, [pc, #0x80a07f4-0x80a07a0-4] // =dword_80A07F8
    ldr r6, [pc, #0x80a0800-0x80a07a2-2] // =dword_80A0804
loc_80A07A4:
    svc 6
    str r1, [sp,#4]
    ldr r0, [r5,r4]
    lsl r3, r3, #2
    ldr r1, [r6,r3]
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    ldr r1, [sp]
    ldr r0, [sp,#4]
    cmp r4, #4
    beq loc_80A07C4
    add r4, #4
    ldr r1, [r1,r4]
    b loc_80A07A4
loc_80A07C4:
    add sp, sp, #0x10
    mov r0, #1
    pop {r4-r6,pc}
    .balign 4, 0x00
off_80A07CC:    .word dword_80A07D0
dword_80A07D0:    .word 0x80644004, 0x40644014, 0x848004
dword_80A07DC:    .word 0x840014
off_80A07E0:    .word dword_80A07E4
dword_80A07E4:    .word 0xB754, 0xB75C, 0xB760
    .word 0xB762
off_80A07F4:    .word dword_80A07F8
dword_80A07F8:    .word 0x6E8008, 0x7A8008
off_80A0800:    .word dword_80A0804
dword_80A0804:    .word 0xB740, 0xB742, 0xB744, 0xB746, 0xB748, 0xB74A, 0xB74C
    .word 0xB74E, 0xB750, 0xB752
off_80A082C:    .word dword_80A0830
dword_80A0830:    .word 0xA, 0x1
off_80A0838:    .word 0x60
dword_80A083C:    .word 0xE3
off_80A0840:    .word 0xE4
    .word dword_80A0864
    .word dword_80A088C
    .word 0x80A08B6, 0x80A08E0, 0x807C7B2, 0x807C7BD, 0x807C7C8
    .word 0xFF
dword_80A0864:    .word 0x7112007, 0x1F081100, 0x47250E13, 0xFF42141C, 0x7C
    .word 0x1100116, 0x87A024B, 0xA928080A, 0x11200601, 0x3110006
dword_80A088C:    .word 0x7112107, 0x13081101, 0x47250E1F, 0xFF42141C, 0xFFFC
    .word 0x10F0116, 0x24B0110, 0x80A08A4, 0x601A928, 0x1061121
    .word 0x22070311, 0x11020711, 0xE1F1308, 0x141C4725, 0xFF7CFF42
    .word 0x1160000, 0x110020F, 0x8CE024B, 0xA928080A, 0x11220601
    .word 0x3110206, 0x177C1808, 0xFF461464, 0xFF30, 0x24360316
    .word 0x80A8F, 0x7968B580, 0xFAE9F008, 0x75012102, 0x7D004802
    .word 0xF0063044, 0xBD80FA57, 0x200A610, 0x80A093C, 0x80A0981
    .word 0x80A09A0, 0x80A09BF, 0x80A09DE, 0x80A09FD, 0x80A0A1C
    .word 0x80A0A3B, 0x80A0A5A, 0x80A0A79, 0xFF, 0x270E1308
    .word 0x141C4725, 0xFFD2FFFE, 0x1160000, 0xA0BF135, 0xC353508
    .word 0x110080A, 0x956024B, 0xA928080A, 0xC02A1F01, 0xF135F010
    .word 0x16080A0B, 0x35C02A00, 0x80A0C35, 0x2200116, 0x80A0956
    .word 0xA8F2436, 0xE130808, 0x1C472527, 0x2FFFE14, 0x16000000
    .word 0xBF13501, 0x3535080A, 0x2080A0C, 0x80A0956, 0x270E1308
    .word 0x141C4725, 0x32FFFE, 0x1160000, 0xA0BF135, 0xC353508
    .word 0x5602080A, 0x8080A09, 0x25270E13, 0x2E141C47, 0xFFD200
    .word 0x35011600, 0x80A0BF1, 0xA0C3535, 0x9560208, 0x1308080A
    .word 0x4725270E, 0x2E141C, 0x2, 0xF1350116, 0x35080A0B
    .word 0x80A0C35, 0xA095602, 0xE130808, 0x1C472527, 0x32002E14
    .word 0x16000000, 0xBF13501, 0x3535080A, 0x2080A0C, 0x80A0956
    .word 0x270E1308, 0x141C4725, 0xFFD2005E, 0x1160000, 0xA0BF135
    .word 0xC353508, 0x5602080A, 0x8080A09, 0x25270E13, 0x5E141C47
    .word 0x200, 0x35011600, 0x80A0BF1, 0xA0C3535, 0x9560208
    .word 0x1308080A, 0x4725270E, 0x5E141C, 0x32, 0xF1350116
    .word 0x35080A0B, 0x80A0C35, 0xA095602, 0x1F270808, 0x4C14130E
    .word 0xFFFE00, 0x16551700, 0x5011005, 0xA890184, 0x8405080A
    .word 0xA0AEA01, 0x51E1008, 0xAEA0184, 0xC16080A, 0x8405C02A
    .word 0xA0AEA01, 0xAF53508, 0x8405080A, 0xA0AEA01, 0x161E1008
    .word 0x10C02A08, 0x1840596, 0x80A0AEA, 0xC02A0916, 0xEA018405
    .word 0x35080A0A, 0x80A0B91, 0xA920A4B, 0x3828080A, 0x16781001
    .word 0xAB20205, 0x516080A, 0xA0A8902, 0x8, 0xF760B5F0
    .word 0x2109FFFE, 0x1C0FDF06, 0xF0081C08, 0x7D00F9E4, 0xD1F42801
    .word 0x7809491E, 0xD100428F, 0x4B1DE7EF, 0xFF701F, 0x19DB4B07
    .word 0x59182400, 0x409211E, 0x62681840, 0x59182404, 0x200062A8
    .word 0xF00862E8, 0xBDF0FA9D, 0x80A0B40
dword_80A0B40:    .word 0xFFFE0000, 0xFFD20000, 0xFFFE0000, 0x20000, 0xFFFE0000
    .word 0x320000, 0x2E0000, 0xFFD20000, 0x2E0000, 0x20000
    .word 0x2E0000, 0x320000, 0x5E0000, 0xFFD20000, 0x5E0000
    .word 0x20000, 0x5E0000, 0x320000, 0x200AAB0, 0x200AAB3
    .word 0x4E14B5F0, 0x1C067830, 0x19894914, 0xF7841C08, 0x1C30F9FF
    .word 0xF993F008, 0x480F1C07, 0x490A5D80, 0xF7605C0E, 0x4030FFA0
    .word 0x200AD104, 0xF0087528, 0xBDF0FA59, 0x75382002, 0x78014805
    .word 0x70013101, 0xFA50F008, 0xBDF0, 0x80A0BDC, 0xFF070F1F
    .word 0x200AAB2, 0x200AAB3, 0x200AAB4, 0x1120, 0x2100B5C0
    .word 0x6C404650, 0x78063090, 0xD0054236, 0xFF79F760, 0x5D894906
    .word 0x1C0EDF06, 0x1A284807, 0xDF0621D8, 0x540E4904, 0xF00875AE
    .word 0xBDC0FA2B, 0x80A0C24, 0xFF0302FF, 0x200AAB4, 0x2006140
    .word 0x1120, 0x4806B540, 0x21D81A28, 0x4E05DF06, 0x1C301836
    .word 0xF9BAF784, 0xFA14F008, 0xBD40, 0x2006140, 0x1120
    .word 0x2004B5F0, 0xFA46F7B3, 0xF7B32005, 0x2006FA43, 0xFA40F7B3
    .word 0xBDF02000, 0x1C02B590, 0x6C3F4657, 0x2008797F, 0xF7842103
    .word 0xD01BF9B7, 0x21052008, 0xF9B2F784, 0x4654D116, 0x42126C24
    .word 0x7920D008, 0x42887B21, 0x7960D104, 0x42887B61, 0xE009D100
    .word 0x63602000, 0x46514809, 0x794C6C09, 0x584000A1, 0xFCF0F785
    .word 0xD1072F02, 0x21022011, 0xF978F784, 0x21222011, 0xF974F784
    .word 0xBD902000, 0x80A0CD8, 0x80A0F90, 0x80A10D4, 0x80A1230
// end of function sub_80A06D4

.thumb
sub_80A0CE4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x92
    bne loc_80A0D0C
    mov r0, #8
    mov r1, #3
    bl sub_8024FF0
    beq loc_80A0D0C
    mov r0, #8
    mov r1, #5
    bl sub_8024FF0
    bne loc_80A0D0C
    mov r0, #0x11
    mov r1, #0x81
    bl sub_8024F9C
loc_80A0D0C:
    mov r0, #0
    pop {pc}
// end of function sub_80A0CE4

.thumb
sub_80A0D10:
    push {r4-r7,lr}
    mov r0, r9
    push {r0}
    mov r0, r8
    push {r0}
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    beq loc_80A0D26
    b loc_80A0E48
loc_80A0D26:
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    beq loc_80A0D32
    b loc_80A0E48
loc_80A0D32:
    ldr r6, [pc, #0x80a0e54-0x80a0d32-2] // =dword_80A0E58
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    ldrb r6, [r6,r1]
    sub r6, #1
    ldr r7, [pc, #0x80a0e5c-0x80a0d3e-2] // =byte_2006140
loc_80A0D40:
    mov r8, r6
    mov r9, r7
    ldr r3, [pc, #0x80a0e70-0x80a0d44-4] // =byte_200A610
    ldr r0, [r7,#0x2c]
    ldr r1, [r3,#0x2c] // (dword_200A63C - 0x200a610)
    mov r5, #5
    lsl r5, r5, #0x10
    sub r1, r1, r0
    cmp r1, #0
    bge loc_80A0D56
    neg r1, r1
loc_80A0D56:
    cmp r1, r5
    bgt loc_80A0E3C
    ldr r0, [r7,#0x24]
    ldr r1, [r3,#0x24] // (dword_200A634 - 0x200a610)
    sub r0, r0, r1
    cmp r0, #0
    bge loc_80A0D66
    neg r0, r0
loc_80A0D66:
    lsr r0, r0, #0x10
    add r1, r0, #0
    mul r0, r1
    ldr r1, [r7,#0x28]
    ldr r2, [r3,#0x28] // (dword_200A638 - 0x200a610)
    sub r1, r1, r2
    cmp r1, #0
    bge loc_80A0D78
    neg r1, r1
loc_80A0D78:
    lsr r1, r1, #0x10
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    mov r1, #0x50 
    mov r2, #0x50 
    mul r1, r2
    cmp r0, r1
    bgt loc_80A0E3C
    ldr r1, [r3,#0x24] // (dword_200A634 - 0x200a610)
    ldr r0, [r7,#0x24]
    sub r0, r0, r1
    ldr r2, [r3,#0x28] // (dword_200A638 - 0x200a610)
    ldr r1, [r7,#0x28]
    sub r1, r1, r2
    bl sub_8001740
    ldrb r4, [r7,#0x14]
    ldr r5, [pc, #0x80a0ec0-0x80a0d9c-4] // =dword_80A0EC4
    ldrb r4, [r5,r4]
    lsl r5, r4, #3
    ldr r1, [pc, #0x80a0e74-0x80a0da2-2] // =byte_80A0E78
    add r1, r1, r5
    ldrh r2, [r1]
    ldrh r3, [r1,#2]
    cmp r0, r3
    bgt loc_80A0DB4
    cmp r0, r2
    blt loc_80A0DB4
    b loc_80A0DC0
loc_80A0DB4:
    ldrh r2, [r1,#4]
    ldrh r3, [r1,#6]
    cmp r0, r3
    bgt loc_80A0E3C
    cmp r0, r2
    blt loc_80A0E3C
loc_80A0DC0:
    ldr r3, [pc, #0x80a0e70-0x80a0dc0-4] // =byte_200A610
    ldrb r6, [r7,#0x14]
    ldr r5, [pc, #0x80a0e60-0x80a0dc4-4] // =dword_80A0E64
    ldrb r5, [r5,r6]
    mov r6, #1
    and r6, r5
    tst r6, r6
    beq loc_80A0DF6
    ldr r4, [r3,#0x28] // (dword_200A638 - 0x200a610)
    ldr r0, [r7,#0x28]
    sub r4, r4, r0
    ldr r1, [r3,#0x24] // (dword_200A634 - 0x200a610)
    ldr r0, [r7,#0x24]
    sub r1, r1, r0
    mov r0, #0x20 
    lsl r0, r0, #0x10
    cmp r1, #0
    bmi loc_80A0DEA
    cmp r1, r0
    bmi loc_80A0E1C
    b loc_80A0E3C
loc_80A0DEA:
    mov r2, #0x20 
    neg r2, r2
    lsl r2, r2, #0x10
    cmp r1, r2
    bge loc_80A0E1C
    b loc_80A0E3C
loc_80A0DF6:
    ldr r4, [r3,#0x24] // (dword_200A634 - 0x200a610)
    ldr r0, [r7,#0x24]
    sub r4, r4, r0
    ldr r2, [r3,#0x28] // (dword_200A638 - 0x200a610)
    ldr r1, [r7,#0x28]
    sub r2, r2, r1
    mov r1, #0x20 
    lsl r1, r1, #0x10
    cmp r2, #0
    bmi loc_80A0E10
    cmp r2, r1
    bmi loc_80A0E1C
    b loc_80A0E3C
loc_80A0E10:
    mov r1, #0x20 
    neg r1, r1
    lsl r1, r1, #0x10
    cmp r2, r1
    bge loc_80A0E1C
    b loc_80A0E3C
loc_80A0E1C:
    cmp r5, #2
    bge loc_80A0E26
    cmp r4, #0
    bmi loc_80A0E3C
    b loc_80A0E2A
loc_80A0E26:
    cmp r4, #0
    bgt loc_80A0E3C
loc_80A0E2A:
    mov r0, #1
    mov r1, #0x83
    bl sub_8024F9C
    ldrb r0, [r7]
    mov r1, #1
    bic r0, r1
    strb r0, [r7]
    b loc_80A0E48
loc_80A0E3C:
    mov r7, r9
    mov r6, r8
    add r7, #0xd8
    sub r6, #1
    blt loc_80A0E48
    b loc_80A0D40
loc_80A0E48:
    mov r0, #0
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r4-r7,pc}
off_80A0E54:    .word dword_80A0E58
dword_80A0E58:    .word 0xFF070607
off_80A0E5C:    .word byte_2006140
off_80A0E60:    .word dword_80A0E64
dword_80A0E64:    .word 0x1010000, 0x3030202, 0x3020100
off_80A0E70:    .word byte_200A610
off_80A0E74:    .word byte_80A0E78
byte_80A0E78:    .byte 0x98
    .byte 0x0, 0xE8, 0x0
    .byte 0x98
    .byte 0x0, 0xE8, 0x0
    .byte 0x58
    .byte 0x0, 0xA8, 0x0
    .byte 0x58
    .byte 0x0, 0xA8, 0x0
    .byte 0x18
    .byte 0x0, 0x68, 0x0
    .byte 0x18
    .byte 0x0, 0x68, 0x0
    .byte 0xD8
    .byte 0x0, 0x0, 0x1
    .byte 0x0
    .byte 0x0, 0x28, 0x0
    .word dword_80A0E9C
dword_80A0E9C:    .word 0x3028080B, 0x64332578, 0x2A2A2A29, 0xA2A2A, 0x80A0EB0
    .word 0x2121090B, 0x21212121, 0xA212121, 0x0
off_80A0EC0:    .word dword_80A0EC4
dword_80A0EC4:    .word 0x1010000, 0x3030202, 0x3020100, 0x78100516, 0x78100116
    .word 0x3A, 0x78100116, 0x78100516, 0x3A, 0x78100716
    .word 0x78100316, 0x3A, 0x78100316, 0x78100716, 0x3A
    .word 0x390816, 0x78100116, 0x4390A16, 0x78100516, 0xA0F0002
    .word 0x8, 0x390916, 0x78100316, 0x4390B16, 0x78100716
    .word 0xA0F1802, 0x8, 0x390B16, 0x78100716, 0x4390916
    .word 0x78100316, 0xA0F3002, 0x8, 0x390A16, 0x78100516
    .word 0x4390816, 0x78100116, 0xA0F4802, 0x8, 0x390816
    .word 0x78100116, 0x3A, 0x390A16, 0x78100516, 0x3A
    .word 0x390916, 0x78100316, 0x3A, 0x390B16, 0x78100716
    .word 0x3A, 0x80A0FC0, 0x80A0FD4, 0x80A0FE8, 0x80A1007
    .word 0x80A1032, 0x80A1051, 0x80A1092, 0x80A10A6, 0x80A10B1
    .word 0x80A10BC, 0x80A10C7, 0xFF, 0x18461708, 0xFFD81401
    .word 0x132, 0x19080138, 0x80A0F00, 0x18461708, 0x521401
    .word 0xD2, 0x13080538, 0x80A0F48, 0x18461708, 0xFFFA1401
    .word 0x74, 0xA0ED036, 0x36781008, 0x80A0EE8, 0xF4027810
    .word 0x8080A0F, 0x1184617, 0xB0FEDE14, 0x38000000, 0x6C0B0805
    .word 0x36080A0F, 0x80A0EF4, 0xB080138, 0x80A0F60, 0xA0EE836
    .word 0x10130208, 0x1708080A, 0x14011846, 0x32FEBA, 0xD0360000
    .word 0x10080A0E, 0xEE83678, 0x7810080A, 0xA103E02, 0x46170808
    .word 0xFC140118, 0xFFD2FE, 0x8013800, 0xA0F600F, 0x8033808
    .word 0xA0F7808, 0x8053808, 0xA0F6C0D, 0x8013808, 0xA0F600D
    .word 0x8073808, 0xA0F8408, 0x8053808, 0xA0F6C0F, 0x105D0208
    .word 0x1708080A, 0x14011846, 0xFF38FF82, 0x1380000, 0xF001308
    .word 0x2508080A, 0x80291C08, 0xD80450D, 0x8250803, 0xD81291C
    .word 0x30D8145, 0x1C082508, 0x450D8229, 0x8030D82, 0x291C0825
    .word 0x83450D83, 0x30D, 0x80A1100, 0x80A1131, 0x80A1172
    .word 0x80A1186, 0x80A11B7, 0x80A11E2, 0x80A1201, 0x80A120C
    .word 0x80A1217, 0x80A1222, 0xFF, 0x18461708, 0x901401
    .word 0x76, 0x5080138, 0x80A0F60, 0x8080338, 0x80A0F78
    .word 0x8080738, 0x80A0F84, 0x5080538, 0x80A0F6C, 0xA110C02
    .word 0x46170808, 0xDC140118, 0x400090FE, 0x8013800, 0xA0F6009
    .word 0x8033808, 0xA0F7804, 0x8013808, 0xA0F600D, 0x8053808
    .word 0xA0F6C0D, 0x8073808, 0xA0F8404, 0x8053808, 0xA0F6C09
    .word 0x113D0208, 0x1708080A, 0x14011846, 0x52FEE0, 0x1380040
    .word 0xF000B08, 0x1708080A, 0x14011846, 0xFF74005A, 0x1380000
    .word 0xF600708, 0x338080A, 0xF780208, 0x738080A, 0xF840208
    .word 0x538080A, 0xF6C0708, 0x9202080A, 0x8080A11, 0x1184617
    .word 0x36FFC014, 0x380040FF, 0x60140801, 0x36080A0F, 0x80A0EE8
    .word 0x14080538, 0x80A0F6C, 0xA0EF436, 0x11C30208, 0x1708080A
    .word 0x14011846, 0xFEB8FFB4, 0xD0360000, 0x10080A0E, 0xEE83678
    .word 0x7810080A, 0xA11EE02, 0x8250808, 0xD88291C, 0x30D8845
    .word 0x1C082508, 0x450D8929, 0x8030D89, 0x291C0825, 0x8A450D8A
    .word 0x2508030D, 0x8B291C08, 0xD8B450D, 0x3, 0x80A1270
    .word 0x80A128F, 0x80A12A3, 0x80A12C2, 0x80A1300, 0x80A1331
    .word 0x80A1345, 0x80A1370, 0x80A138A, 0x80A13A7, 0x80A13CA
    .word 0x80A13D5, 0x80A13E0, 0x80A13EB, 0x80A13F6, 0xFF
    .word 0x18461708, 0x1401, 0x170, 0xA0ED036, 0x36781008
    .word 0x80A0EE8, 0x7C027810, 0x8080A12, 0x1184617, 0xECFF4014
    .word 0x38000000, 0x130801, 0x8080A0F, 0x1184617, 0x26FF8614
    .word 0x36000000, 0x80A0ED0, 0xE8367810, 0x10080A0E, 0x12AF0278
    .word 0x1708080A, 0x14011846, 0xFFECFFC4, 0xDC360040, 0x10080A0E
    .word 0xEF43678, 0x7810080A, 0xA12CE02, 0x46170808, 0x80140118
    .word 0x4600, 0xEDC3600, 0x7810080A, 0xA0EF436, 0x2781008
    .word 0x80A12ED, 0x18461708, 0xC41401, 0xFFFE, 0x12080338
    .word 0x80A0F78, 0xF080538, 0x80A0F6C, 0xF080138, 0x80A0F60
    .word 0x12080738, 0x80A0F84, 0xA130C02, 0x46170808, 0x28140118
    .word 0xFFE401, 0x8033800, 0xA0F1813, 0x46170808, 0x84140118
    .word 0x80FEE200, 0x8033800, 0xA0F780E, 0xEDC3608, 0x738080A
    .word 0xF840E08, 0xD036080A, 0x2080A0E, 0x80A1351, 0x89080504
    .word 0x8080A13, 0x144D170E, 0xFF0001AA, 0x516FFF6, 0xA8F2436
    .word 0x5040308, 0xA13A608, 0x1F0E0808, 0x1C2F2513, 0x801A814
    .word 0x16FFEAFF, 0x8F243600, 0x403080A, 0x13C90805, 0xE08080A
    .word 0x7110207, 0x131F1122, 0x141C2F25, 0xFF0A01A6, 0x116FFEC
    .word 0xA8F2436, 0x25080308, 0x90291C08, 0xD90450D, 0x8250803
    .word 0xD91291C, 0x30D9145, 0x1C082508, 0x450D9229, 0x8030D92
    .word 0x291C0825, 0x93450D93, 0x2508030D, 0x94291C08, 0xD94450D
    .word 0x3, 0x2001B5F0, 0xF7832183, 0xD113FDF1, 0xF816F000
    .word 0xF00524FF, 0xD106FDCE, 0xFC6EF78A, 0xF78AD108, 0xD105FC77
    .word 0x4B04E006, 0x421B6E1B, 0x78DCD000, 0xF81AF000, 0xBDF02001
    .word 0x200A610, 0x4F09B5F0, 0x46514E07, 0x79496C09, 0x3E015C76
    .word 0x21017838, 0x70384308, 0x3E0137D8, 0x2000DAF8, 0xBDF0
    .word 0x80A0E58, 0x2006140, 0x4F0AB5F0, 0x46514E08, 0x79496C09
    .word 0x22005C76, 0xD00342A2, 0x21017838, 0x70384388, 0x320137D8
    .word 0xD1F542B2, 0xBDF02000, 0x80A0E58, 0x2006140, 0x1C02B500
    .word 0x21872008, 0xFDA4F783, 0x2008D020, 0xF7832188, 0xD11BFD9F
    .word 0x6C244654, 0xD0084212, 0x7B217920, 0xD1044288, 0x7B617960
    .word 0xD1004288, 0x2000E00E, 0x48076360, 0x6C094651, 0x897949
    .word 0xF7855840, 0x4807F8DD, 0x22004907, 0xF884F761, 0xBD002000
    .word 0x80A14F4, 0x80A15C0, 0x80A175C, 0x80A1914, 0x810F78D
    .word 0x810F7D1
// end of function sub_80A0D10

.thumb
sub_80A1508:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x92
    bne loc_80A1530
    mov r0, #8
    mov r1, #0x87
    bl sub_8024FF0
    beq loc_80A1530
    mov r0, #8
    mov r1, #0x88
    bl sub_8024FF0
    bne loc_80A1530
    mov r0, #0x11
    mov r1, #0x81
    bl sub_8024F9C
loc_80A1530:
    mov r0, #0
    pop {pc}
// end of function sub_80A1508

.thumb
sub_80A1534:
    push {r4-r7,lr}
    ldr r6, [pc, #0x80a15a0-0x80a1536-2] // =dword_80A15A4
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    ldrb r6, [r6,r1]
    sub r6, #1
    ldr r7, [pc, #0x80a15a8-0x80a1542-2] // =byte_2006140
    ldr r3, [pc, #0x80a15ac-0x80a1544-4] // =byte_200A610
loc_80A1546:
    ldr r1, [r3,#0x2c] // (dword_200A63C - 0x200a610)
    ldr r0, [r7,#0x2c]
    cmp r0, r1
    bne loc_80A1594
    ldr r1, [r3,#0x24] // (dword_200A634 - 0x200a610)
    ldr r0, [r7,#0x24]
    mov r2, #2
    lsl r2, r2, #0x10
    add r0, r0, r2
    sub r0, r0, r1
    asr r0, r0, #0x10
    cmp r0, #0
    bge loc_80A1562
    neg r0, r0
loc_80A1562:
    cmp r0, #0xa
    bgt loc_80A1594
    ldr r4, [r3,#0x28] // (dword_200A638 - 0x200a610)
    ldr r5, [r7,#0x28]
    mov r2, #2
    lsl r2, r2, #0x10
    sub r5, r5, r2
    sub r5, r5, r4
    asr r5, r5, #0x10
    cmp r5, #0
    bge loc_80A157A
    neg r5, r5
loc_80A157A:
    cmp r5, #0xa
    bgt loc_80A1594
    ldr r0, [pc, #0x80a15b0-0x80a157e-2] // =0x123
    bl f500_8000558
    ldr r0, [pc, #0x80a15b4-0x80a1584-4] // =0x135
    bl f500_8000558
    mov r0, #1
    mov r1, #0x83
    bl sub_8024F9C
    b loc_80A159A
loc_80A1594:
    add r7, #0xd8
    sub r6, #1
    bge loc_80A1546
loc_80A159A:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A15A0:    .word dword_80A15A4
dword_80A15A4:    .word 0xFF070505
off_80A15A8:    .word byte_2006140
off_80A15AC:    .word byte_200A610
dword_80A15B0:    .word 0x126
dword_80A15B4:    .word 0x136
    .word 0x390016, 0x3A0016, 0x80A15EC, 0x80A1620, 0x80A1654
    .word 0x80A1688, 0x80A16BC, 0x80A16F0, 0x80A172F, 0x80A173A
    .word 0x80A1745, 0x80A1750, 0xFF, 0xE131F08, 0x102F2527
    .word 0x96002C14, 0x38000001, 0xB80C1807, 0x38080A15, 0xB80A1805
    .word 0x38080A15, 0xB80C1803, 0x38080A15, 0xB80A1801, 0x2080A15
    .word 0x80A15FB, 0xE131F08, 0x102F2527, 0xD0FFFA14, 0x38000000
    .word 0xB8081A05, 0x38080A15, 0xB8071A07, 0x38080A15, 0xB8081A01
    .word 0x38080A15, 0xB8071A03, 0x2080A15, 0x80A162F, 0xE131F08
    .word 0x102F2527, 0xD2FF7014, 0x38000000, 0xB8081807, 0x38080A15
    .word 0xB8111805, 0x38080A15, 0xB8081803, 0x38080A15, 0xB8111801
    .word 0x2080A15, 0x80A1663, 0xE131F08, 0x102F2527, 0x50FF7014
    .word 0x38000000, 0xB8081A07, 0x38080A15, 0xB8111A05, 0x38080A15
    .word 0xB8081A03, 0x38080A15, 0xB8111A01, 0x2080A15, 0x80A1697
    .word 0xE131F08, 0x102F2527, 0xCAFFC414, 0x380000FF, 0xB8121807
    .word 0x38080A15, 0xB8091805, 0x38080A15, 0xB8121803, 0x38080A15
    .word 0xB8091801, 0x2080A15, 0x80A16CB, 0x1F481708, 0x23130E27
    .word 0x6140841, 0x60FDA8FF, 0x150C1600, 0x16642003, 0x2001150C
    .word 0x150C1634, 0x16242007, 0x2005150C, 0x150C1634, 0x16242003
    .word 0x2001150C, 0x901108C, 0xF9026410, 0x8080A16, 0x291C0825
    .word 0x80450D80, 0x2508030D, 0x81291C08, 0xD81450D, 0x8250803
    .word 0xD82291C, 0x30D8245, 0x1C082508, 0x450D8329, 0x30D83
    .word 0x80A1788, 0x80A17BC, 0x80A17F1, 0x80A1825, 0x80A185A
    .word 0x80A188F, 0x80A18E6, 0x80A18F1, 0x80A18FC, 0x80A1907
    .word 0xFF, 0xE131F08, 0x102F2527, 0x78014214, 0x38000000
    .word 0xB8091807, 0x38080A15, 0xB8081805, 0x38080A15, 0xB8091803
    .word 0x38080A15, 0xB8081801, 0x2080A15, 0x80A1797, 0x131F4108
    .word 0x2F25270E, 0xFF221410, 0x4000B8, 0xC1A0738, 0x80A15B8
    .word 0xB1A0138, 0x80A15B8, 0xC1A0338, 0x80A15B8, 0xB1A0538
    .word 0x80A15B8, 0xA17CC02, 0x131F0808, 0x2F25270E, 0xBC1410
    .word 0xFFF0, 0x8180738, 0x80A15B8, 0x8180538, 0x80A15B8
    .word 0x8180338, 0x80A15B8, 0x8180138, 0x80A15B8, 0xA180002
    .word 0x1F410808, 0x25270E13, 0xE214102F, 0x40FFF4FF, 0x1A073800
    .word 0xA15B808, 0x1A053808, 0xA15B809, 0x1A033808, 0xA15B808
    .word 0x1A013808, 0xA15B809, 0x18350208, 0x4108080A, 0x270E131F
    .word 0x14102F25, 0xFF380052, 0x7380040, 0x15B8081A, 0x538080A
    .word 0x15B8121A, 0x338080A, 0x15B8081A, 0x138080A, 0x15B8121A
    .word 0x6A02080A, 0x8080A18, 0x271F4817, 0x4123130E, 0x21A1408
    .word 0x6000F0, 0x5150C16, 0xC168420, 0x1E200715, 0x1150C16
    .word 0xC163020, 0x1E200715, 0x1150C16, 0xC161820, 0x20200315
    .word 0x5150C16, 0xC161E20, 0x1E200715, 0x1150C16, 0xC161E20
    .word 0x78200315, 0x10090110, 0x18980264, 0x2508080A, 0x88291C08
    .word 0xD88450D, 0x8250803, 0xD89291C, 0x30D8945, 0x1C082508
    .word 0x450D8A29, 0x8030D8A, 0x291C0825, 0x8B450D8B, 0x30D
    .word 0x80A1950, 0x80A1984, 0x80A19B8, 0x80A19EC, 0x80A1A20
    .word 0x80A1A88, 0x80A1ABC, 0x80A1AF1, 0x80A1B11, 0x80A1B5C
    .word 0x80A1B67, 0x80A1B72, 0x80A1B7D, 0x80A1B88, 0xFF
    .word 0xE131F08, 0x102F2527, 0x82018414, 0x38000000, 0xB80A1807
    .word 0x38080A15, 0xB80C1805, 0x38080A15, 0xB80A1803, 0x38080A15
    .word 0xB80C1801, 0x2080A15, 0x80A195F, 0xE131F08, 0x102F2527
    .word 0x30012014, 0x38000000, 0xB80A1803, 0x38080A15, 0xB80C1801
    .word 0x38080A15, 0xB80A1807, 0x38080A15, 0xB80C1805, 0x2080A15
    .word 0x80A1993, 0xE131F08, 0x102F2527, 0x4A004014, 0x38000001
    .word 0xB80C1807, 0x38080A15, 0xB80C1805, 0x38080A15, 0xB80C1803
    .word 0x38080A15, 0xB80C1801, 0x2080A15, 0x80A19C7, 0xE131F08
    .word 0x102F2527, 0xE8FFD814, 0x38000000, 0xB80C1803, 0x38080A15
    .word 0xB80C1801, 0x38080A15, 0xB80C1807, 0x38080A15, 0xB80C1805
    .word 0x2080A15, 0x80A19FB, 0xE131F08, 0x102F2527, 0xE8FFD814
    .word 0x38000000, 0xB8041A07, 0x38080A15, 0xB80B1A05, 0x38080A15
    .word 0xB8041A03, 0x38080A15, 0xB80B1A01, 0x2080A15, 0x80A1A2F
    .word 0xE131F08, 0x102F2527, 0x78FF8614, 0x38000000, 0xB80E1A03
    .word 0x38080A15, 0xB80C1A01, 0x38080A15, 0xB80E1A07, 0x38080A15
    .word 0xB80C1A05, 0x2080A15, 0x80A1A63, 0xE131F08, 0x102F2527
    .word 0xB0018014, 0x380000FF, 0xB80C1A07, 0x38080A15, 0xB8081A05
    .word 0x38080A15, 0xB80C1A03, 0x38080A15, 0xB8081A01, 0x2080A15
    .word 0x80A1A97, 0x131F4108, 0x2F25270E, 0xFFE41410, 0x40FFAA
    .word 0xB1A0538, 0x80A15B8, 0x81A0738, 0x80A15B8, 0xB1A0138
    .word 0x80A15B8, 0x81A0338, 0x80A15B8, 0xA1ACC02, 0x8870508
    .word 0x80A1B10, 0x10088804, 0x8080A1B, 0xA6145417, 0xFF0C01
    .word 0x36021600, 0x80A8F24, 0x48170803, 0x130E271F, 0x14084123
    .word 0xFD2E0030, 0xC160060, 0x84200315, 0x5150C16, 0xC161E20
    .word 0x1E200715, 0x1150C16, 0xC161820, 0x1E200715, 0x1150C16
    .word 0xC161E20, 0x1E200315, 0x5150C16, 0x1109620, 0x2641009
    .word 0x80A1B1A, 0x1C082508, 0x450D9029, 0x8030D90, 0x291C0825
    .word 0x91450D91, 0x2508030D, 0x92291C08, 0xD92450D, 0x8250803
    .word 0xD93291C, 0x30D9345, 0x1C082508, 0x450D9429, 0x30D94
// end of function sub_80A1534

.thumb
sub_80A1B94:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a1bbc-0x80a1b96-2] // =byte_2006140
    ldr r6, [pc, #0x80a1bb8-0x80a1b98-4] // =dword_80A15A4
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    ldrb r6, [r6,r1]
    sub r6, #1
loc_80A1BA4:
    ldrb r0, [r7]
    mov r1, #1
    orr r0, r1
    strb r0, [r7]
    add r7, #0xd8
    sub r6, #1
    bge loc_80A1BA4
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A1BB8:    .word dword_80A15A4
off_80A1BBC:    .word byte_2006140
// end of function sub_80A1B94

.thumb
sub_80A1BC0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a1be8-0x80a1bc2-2] // =byte_2006140
    ldr r6, [pc, #0x80a1be4-0x80a1bc4-4] // =dword_80A15A4
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    ldrb r6, [r6,r1]
    sub r6, #1
loc_80A1BD0:
    ldrb r0, [r7]
    mov r1, #1
    bic r0, r1
    strb r0, [r7]
    add r7, #0xd8
    sub r6, #1
    bge loc_80A1BD0
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A1BE4:    .word dword_80A15A4
off_80A1BE8:    .word byte_2006140
// end of function sub_80A1BC0

.thumb
sub_80A1BEC:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a1c50-0x80a1bee-2] // =unk_2001E90
    mov r0, #0x3c 
    strb r0, [r7,#0x1] // (byte_2001E91 - 0x2001e90)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A1BEC

.thumb
sub_80A1BF8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a1c4c-0x80a1bfa-2] // =byte_20004D0
    ldr r7, [pc, #0x80a1c50-0x80a1bfc-4] // =unk_2001E90
    bl sub_80A1C54
    bne loc_80A1C3C
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_80A1C0A
loc_80A1C0A:
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    ldrb r0, [r7,#0x1] // (byte_2001E91 - 0x2001e90)
    sub r0, #1
    strb r0, [r7,#0x1] // (byte_2001E91 - 0x2001e90)
    bgt loc_80A1C3C
    mov r0, #0x3c 
    strb r0, [r7,#0x1] // (byte_2001E91 - 0x2001e90)
    bl fA00_8000C44
    ldr r6, [pc, #0x80a1c44-0x80a1c1e-2] // =dword_80A1C48
    ldrb r6, [r6,r0]
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrh r0, [r4,#0x20]
    cmp r0, #1
    beq loc_80A1C32
    ldr r0, [pc, #0x80a1c40-0x80a1c2c-4] // =0x1B8
    bl f500_8000558
loc_80A1C32:
    ldrh r0, [r4,#0x20]
    sub r0, r0, r6
    bgt loc_80A1C3A
    mov r0, #1
loc_80A1C3A:
    strh r0, [r4,#0x20]
loc_80A1C3C:
    mov r0, #0
    pop {r4-r7,pc}
off_80A1C40:    .word 0x1B9
off_80A1C44:    .word dword_80A1C48
dword_80A1C48:    .word 0xFF140A05
off_80A1C4C:    .word byte_20004D0
off_80A1C50:    .word unk_2001E90
// end of function sub_80A1BF8

.thumb
sub_80A1C54:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    blt loc_80A1C6C
    mov r0, #1
    bl sub_802D92C
    bne loc_80A1C6C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A1C6C:
    mov r0, #1
    pop {r4-r7,pc}
dword_80A1C70:    .word 0x80A1C7C, 0x80A1D6C, 0x80A1EA8, 0xB4FEBA, 0x0
    .word dword_80A1D24
    .word 0x94FF66, 0x20000, 0x80A1D2A, 0x54FF66, 0x20000, 0x80A1D30
    .word 0x34FEDC, 0x10000, 0x80A1D36, 0x34FEC4, 0x0
    .word dword_80A1D3C
    .word 0xFFA4FEDC, 0x10000, 0x80A1D42, 0xFFF0FF7C, 0x10000
    .word 0x80A1D48, 0xFFB8FF7C, 0x10000, 0x80A1D4E, 0xFF9CFF7C
    .word 0x10000, 0x80A1D51, 0xFF80FF7C, 0x10000, 0x80A1D54
    .word 0xFF34FF98, 0x20000, 0x80A1D57, 0xFF16FFBC, 0x10000
    .word 0x80A1D5D, 0xFEB6FFBC, 0x10000, 0x80A1D63, 0x0
    .word 0x0, 0x0
dword_80A1D24:    .word 0x60402000, 0x40000080, 0x202020, 0x202C2000, 0x20000044
    .word 0x202020
dword_80A1D3C:    .word 0x80808000, 0x20000080, 0x202020, 0x20202000, 0x181E0020
    .word 0x182C00, 0x183A, 0x20302020, 0x20DC0000, 0x2020
    .word 0x40400404, 0x0
    .word 0xB4007C, 0x20000, 0x80A1E50, 0xB4009C, 0x20000, 0x80A1E56
    .word 0xB400DC, 0x20000, 0x80A1E5C, 0xB400FC, 0x20000, 0x80A1E62
    .word 0x340040, 0x20000, 0x80A1E68, 0x340060, 0x20000, 0x80A1E6B
    .word 0x340080, 0x20000, 0x80A1E6E, 0xFF9E009C, 0x10000, 0x80A1E71
    .word 0xFF86009C, 0x10000, 0x80A1E74, 0xB4FF4E, 0x20040, 0x80A1E77
    .word 0xB4FF6E, 0x20040, 0x80A1E7D, 0x14FF20, 0x20040, 0x80A1E83
    .word 0x14FEE0, 0x20040, 0x80A1E89, 0x14FEA0, 0x20040, 0x80A1E8E
    .word 0xFF62FFBC, 0x10040, 0x80A1E93, 0xFF340014, 0x20040, 0x80A1E98
    .word 0xFEF4004A, 0x20040, 0x80A1E9D, 0xFEF4006A, 0x20040, 0x80A1EA1
    .word 0x0, 0x0, 0x0
    .byte 0x2C, 0x20, 0x20
    .byte 0x20, 0x20, 0x0
    .hword 0x201E
    .word 0x202020, 0x20202048, 0x203A0020, 0x202020, 0x3400
    .word 0x34000034, 0x200000, 0x2020, 0x4042828, 0x28280000
    .word 0x404, 0x32040404, 0x4040000, 0x4000020, 0x3204
    .word 0x40440, 0x10104000, 0x20200000, 0x20200000, 0x0
    .word 0x1680004, 0x30000, 0x80A1FEC, 0xACFF84, 0x10000, 0x80A1FF2
    .word 0x8CFF84, 0x10000, 0x80A1FF7, 0x6CFF84, 0x10000, 0x80A1FFC
    .word 0xD40044, 0x10000, 0x80A2001, 0xBC0044, 0x10000, 0x80A2004
    .word 0xA40044, 0x10000, 0x80A2007, 0xFFE20084, 0x10000, 0x80A200A
    .word 0x5A0124, 0x10000, 0x80A2012, 0xA0184, 0x10000, 0x80A2018
    .word 0xFFEA0184, 0x10000, 0x80A201B, 0xFFCA0184, 0x10000, 0x80A201E
    .word 0xFF840144, 0x10000, 0x80A2021, 0xFF6C0144, 0x10000, 0x80A2024
    .word 0xFF540144, 0x10000, 0x80A2027, 0xFF3C0144, 0x10000, 0x80A202A
    .word 0xFF240144, 0x10000, 0x80A202D, 0xFF6CFFA4, 0x20040, 0x80A2030
    .word 0xFF6CFFC4, 0x20040, 0x80A2035, 0xFFACFFBE, 0x20040, 0x80A203A
    .word 0xFFACFFDE, 0x20040, 0x80A203F, 0x54FFA4, 0x10040, 0x80A2044
    .word 0xFFE00004, 0x10040, 0x80A204A, 0x200004, 0x10040, 0x80A2051
    .word 0xFFB20084, 0x10080, 0x80A2058, 0x20084, 0x10080, 0x80A205E
    .word 0x0, 0x0, 0x0
    .word 0x1E041E00, 0x34000004, 0x404, 0x40434, 0x4043400
    .word 0x201E00, 0x3A00202C, 0x20000020, 0x4040420, 0x28000004
    .word 0x40404, 0x1C00200E, 0x202A0020, 0x5C1000, 0x30005C20
    .word 0x5C40005C, 0x5C5000, 0x20202000, 0x20200200, 0x20000020
    .word 0x2002020, 0x202020, 0x4042000, 0x4000004, 0x20040404
    .word 0x4040400, 0x200404, 0x4042000, 0x20000004, 0x40404
    .word 0x484BB5F0, 0xF75E2188, 0xF000FC61, 0x2000F802, 0xB5F0BDF0
    .word 0x21532009, 0xFFB8F782, 0x2009D127, 0xF7822152, 0xD022FFB3
    .word 0x6C3F4657, 0x28927938, 0x88B8D11D, 0x428889B9, 0x483DD003
    .word 0xF75E2188, 0x7978FC45, 0x804E0B, 0x24005836, 0x420068B0
    .word 0xB4F0D00D, 0x88312016, 0x88B38872, 0x4120409, 0xF762041B
    .word 0xBCF0F9BB, 0x3401360C, 0x2000E7EE, 0xBDF0, 0x80A1C70
// end of function sub_80A1C54

.thumb
sub_80A20DC:
    push {r4-r7,lr}
    bl sub_80A2170
    add r5, r1, #0
    ldr r6, [pc, #0x80a212c-0x80a20e4-4] // =dword_80A2130
    ldrb r1, [r5,#6]
    lsl r1, r1, #4
    add r6, r6, r1
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r0, [r6]
    ldr r1, [r6,#4]
    ldr r2, [r7,#0x24]
    ldr r3, [r7,#0x28]
    add r2, r2, r0
    add r3, r3, r1
    ldrh r0, [r5]
    ldrh r1, [r5,#2]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    sub r2, r2, r0
    blt loc_80A2128
    sub r3, r3, r1
    blt loc_80A2128
    ldr r0, [r6,#8]
    ldr r1, [r6,#0xc]
    cmp r2, r0
    bgt loc_80A2128
    cmp r3, r1
    bgt loc_80A2128
    ldr r3, [r7,#0x2c]
    ldrh r4, [r5,#4]
    lsl r4, r4, #0x10
    cmp r3, r4
    bne loc_80A2128
    mov r0, #1
    pop {r4-r7,pc}
loc_80A2128:
    mov r0, #0
    pop {r4-r7,pc}
off_80A212C:    .word dword_80A2130
dword_80A2130:    .word 0xC0000, 0xC0000, 0x180000, 0x180000, 0xC0000, 0xC0000
    .word 0x180000, 0x180000, 0xC0000, 0xC0000, 0x180000, 0x180000
    .word 0xC0000, 0xC0000, 0x180000, 0x180000
// end of function sub_80A20DC

.thumb
sub_80A2170:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r3, [r7,#5]
    lsl r3, r3, #2
    ldr r1, [pc, #0x80a2190-0x80a217a-2] // =dword_80A1C70
    ldr r1, [r1,r3]
    mov r2, #0xc
    mul r2, r0
    add r1, r1, r2
    ldr r2, [pc, #0x80a2194-0x80a2184-4] // =unk_20005E0
    add r2, #8
    lsl r0, r0, #2
    add r0, r0, r2
    pop {r4-r7,pc}
    .byte 0, 0
off_80A2190:    .word dword_80A1C70
off_80A2194:    .word unk_20005E0
    .word 0x190
    .word dword_80A21B4
    .word 0x191
    .word dword_80A226C
    .word 0x292, 0x80A234C, 0x0
dword_80A21B4:    .word 0x1705, 0x5C0000, 0x11E0000, 0x0, 0x0
    .word 0x1705, 0x3E0000, 0xC80000, 0x0, 0x0
    .word 0x1705, 0x920000, 0xFFA40000, 0x0, 0x0
    .word 0x1705, 0x13E0000, 0xFF880000, 0x0, 0x0
    .word 0x1705, 0x1060000, 0xFF0A0000, 0x0, 0x0
    .word 0x1705, 0x840000, 0xFF0C0000, 0x0, 0x0
    .word 0x1705, 0x940000, 0xFEB00000, 0x0, 0x0
    .word 0x1705, 0x4E0000, 0xFE980000, 0x0, 0x0
    .word 0x1705, 0x3E0000, 0xFF540000, 0x0, 0x0
    .word 0xFF
dword_80A226C:    .word 0x1705, 0xFF020000, 0x6C0000, 0x0
    .word 0x100
    .word 0x1705, 0xFFBE0000, 0xFFDC0000, 0x0
    .word 0x100
    .word 0x1705, 0xFFCC0000, 0xFF760000, 0x0
    .word 0x100
    .word 0x1705, 0xFFE60000, 0xFF000000, 0x0
    .word 0x100
    .word 0x1705, 0x2C0000, 0xFEF40000, 0x0
    .word 0x100
    .word 0x1705, 0x8A0000, 0xFF000000, 0x0
    .word 0x100
    .word 0x1705, 0x10C0000, 0xFF720000, 0x0
    .word 0x100
    .word 0x1705, 0xFE0000, 0x1C0000, 0x0
    .word 0x100
    .word 0x1705, 0x960000, 0x400000, 0x0
    .word 0x100
    .word 0x1705, 0x260000, 0x340000, 0x0
    .word 0x100
    .word 0x1705, 0x560000, 0x340000, 0x400000, 0x100, 0xFF
    .word 0x1705, 0xFEDC0000, 0x240000, 0x0
    .word 0x200
    .word 0x1705, 0xFECC0000, 0xFFC60000, 0x0
    .word 0x200
    .word 0x1705, 0xFFC40000, 0xFF640000, 0x400000, 0x200, 0x1705
    .word 0xFFE00000, 0xFFA40000, 0x400000, 0x200, 0x1705, 0xFFFE0000
    .word 0xFFEC0000, 0x400000, 0x200, 0x1705, 0x4C0000, 0xAA0000
    .word 0x0
    .word 0x200
    .word 0x1705, 0x1020000, 0x900000, 0x0
    .word 0x200
    .word 0x1705, 0x18C0000, 0x60000, 0x0
    .word 0x200
    .word 0x1705, 0x17E0000, 0xFFE60000, 0x0
    .word 0x200
    .word 0x1705, 0x18C0000, 0xFFC60000, 0x0
    .word 0x200
    .word 0xFF, 0x2009B5F0, 0xF7822102, 0xD012FDE7, 0x21032009
    .word 0xFDE2F782, 0x4650D10D, 0x88806C00, 0x680A4906, 0xD0064212
    .word 0xD0014290, 0xE7F83108, 0xF7616848, 0x2000F83D, 0xBDF0
    .word 0x80A2198, 0x2000B5F0, 0xBDF0
off_80A245C:    .word dword_80A246C
    .word dword_80A248C
    .word dword_80A24B4
    .word dword_80A24DC
dword_80A246C:    .word 0xFFC2002E, 0x11000547, 0x24FFEC, 0x11010548, 0x2FF2E
    .word 0x11020549, 0x0, 0x0
dword_80A248C:    .word 0x32007E, 0x1100054C, 0xB2007E, 0x1101054D, 0xFF52007E
    .word 0x1102054E, 0xFF92FFBE, 0x1103054F, 0x0, 0x0
dword_80A24B4:    .word 0x3A00A6, 0x11000551, 0xFF7AFFA6, 0x11010552, 0xDA0066
    .word 0x11020553, 0xFF7A0086, 0x11030554, 0x0, 0x0
dword_80A24DC:    .word 0xA400AC, 0x11000556, 0xFFE2FFAE, 0x11010557, 0x22002E
    .word 0x11020558, 0x122FFEE, 0x11030559, 0xFFC4008C, 0x1104055A
    .word 0x0, 0x0
off_80A250C:    .word dword_80A252C
dword_80A2510:    .word 0x20, 0x80A253E, 0x20, 0x80A2550, 0x20, 0x80A2562
    .word 0x20
dword_80A252C:    .word 0x1E006404, 0x1E002808, 0xA201408, 0x32082800, 0x64040000
    .word 0x28081E00, 0x14081E00, 0x28000A20, 0x3208, 0x1E006404
    .word 0x1E002808, 0xA201408, 0x32082800, 0x64040000, 0x28081E00
    .word 0x14081E00, 0x28000A20, 0x3208, 0x82, 0x80A2598
    .word 0x182, 0x80A2618, 0x282, 0x80A2698, 0x382
    .word 0x80A2718, 0x0
    .word 0x17A0048, 0x168000E, 0x13A0034, 0xD00026, 0x8C004C
    .word 0x7C00AA, 0xAA00C6, 0x1C0008, 0x580028, 0x200046
    .word 0x2A009C, 0x2200FE, 0x2A014E, 0xFFA200D2, 0xFF5E010C
    .word 0xFF5E0088, 0xFF660024, 0xFFAC0034, 0xFF36FFEC, 0xFEE2FFEA
    .word 0xFEE8005C, 0xFF24FFAA, 0xFF98FFB0, 0xFFE6FFA8, 0x48FFAC
    .word 0x3EFF44, 0x8EFF26, 0x7CFF84, 0x8CFFDE, 0xFFB8FF2E
    .word 0xFF60FF56, 0xFF1EFF30, 0x36FE8A, 0xFFF6FEA6, 0x1AFED6
    .word 0x40FF3C, 0x92FF54, 0x2CFF96, 0xFFF2FFB2, 0x36FFDC
    .word 0xFFB0FF40, 0xFF90FF9E, 0xFF56FF58, 0xFF08FF30, 0xFF50FFF4
    .word 0xFF980018, 0xFF58005E, 0xFF0E007C, 0xFF0C00EA, 0xFF580122
    .word 0xFF7C00D4, 0xFFB80078, 0xFFFE0046, 0x380020, 0x3200BC
    .word 0xFFA6011C, 0x52011E, 0xBA00BE, 0xF00058, 0xD6FFFE
    .word 0xBAFFA2, 0xDC00DA, 0xFFDE00E0, 0xFF16FFD8, 0x60FE9E
    .word 0x20FEA8, 0x42FF1C, 0x96FF6A, 0xA0FFCA, 0x20FF9C
    .word 0xDEFF80, 0x156FF5C, 0xE00020, 0xE000C6, 0x98007A
    .word 0x60004A, 0x1A0022, 0x3E00E0, 0xFFE2009C, 0xFFE00126
    .word 0xFF76011C, 0x600140, 0x18014C, 0xFFA00048, 0xFFB4FFEA
    .word 0xFF60FFA8, 0xFFA2FF62, 0xFF20FF60, 0xFF3A0026, 0xFF3800A2
    .word 0xFEC000BC, 0xFF8000CC, 0x18FF60, 0xFF84FFEA, 0xFF8200CA
    .word 0xFED6FF68, 0x8FE86, 0xFFC0FE6A, 0xFFDEFF02, 0x5CFF30
    .word 0xFFE8FF88, 0xFF6EFF66, 0x2CFFA6, 0xA8FF62, 0x104FF2C
    .word 0x12AFEC6, 0x122FF8A, 0xBCFFB2, 0x16CFFFC, 0x16800B8
    .word 0x1260066, 0x16A00AA, 0xE000F4, 0x68012C, 0x5E00E6
    .word 0x84006C, 0x5EFFE6, 0xFF8AFFEA, 0xFF66004C, 0xFFE4004C
    .word 0xFF6800AE, 0xFF0600C2, 0xFFE600C8, 0x20010E, 0xFFCA012A
    .word 0xFFFC0186, 0xFF9C0192, 0xFFDE01D4
// end of function sub_80A2170

.thumb
sub_80A2798:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrh r0, [r4,#4]
    ldrh r1, [r4,#0xc]
    ldrb r4, [r4,#5]
    ldr r6, [pc, #0x80a2840-0x80a27a4-4] // =0x558
    add r6, r6, r4
    cmp r0, r1
    beq loc_80A27B8
    add r0, r6, #0
    bl sub_8024FF4
    bne loc_80A27B8
    bl sub_80A294A
loc_80A27B8:
    ldr r7, [pc, #0x80a2818-0x80a27b8-4] // =off_80A245C
    lsl r4, r4, #2
    ldr r7, [r7,r4]
    mov r5, #0
    add r0, r6, #0
    bl sub_8024FF4
    beq loc_80A27CA
    mov r5, #1
loc_80A27CA:
    lsl r5, r5, #8
    mov r4, #0
loc_80A27CE:
    ldrh r0, [r7,#4]
    tst r0, r0
    beq loc_80A2810
    push {r0-r5}
    mov r3, #0
    ldrsh r1, [r7,r3]
    mov r3, #2
    ldrsh r2, [r7,r3]
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    mov r3, #0
    orr r4, r5
    mov r0, #0x1a
    bl sub_8004440
    pop {r0-r5}
    push {r0}
    add r0, r6, #0
    bl sub_8024FF4
    pop {r0}
    bne loc_80A2802
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80A280A
loc_80A2802:
    ldrh r0, [r7,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_80A280A:
    add r4, #1
    add r7, #8
    b loc_80A27CE
loc_80A2810:
    ldr r7, [pc, #0x80a298c-0x80a2810-4] // =byte_2007390
    strb r4, [r7,#0x4] // (byte_2007394 - 0x2007390)
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A2818:    .word off_80A245C
// end of function sub_80A2798

.thumb
dead_80A281C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a298c-0x80a281e-2] // =byte_2007390
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrb r4, [r4,#5]
    ldr r6, [pc, #0x80a2840-0x80a2826-2] // =0x558
    add r6, r6, r4
    add r0, r6, #0
    bl sub_8024FF4
    bne locret_80A283E
    bl sub_80A2844
    bl sub_80A28AC
    bl sub_80A2910
locret_80A283E:
    pop {r4-r7,pc}
dword_80A2840:    .word 0x55B
// end of function dead_80A281C

.thumb
sub_80A2844:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    add r0, #0x24 
    bl sub_8027646
    cmp r0, #0x30 
    beq locret_80A2866
    cmp r0, #0x20 
    bge loc_80A2868
    cmp r0, #0x2f 
    ble loc_80A2868
    mov r1, #0
    strb r1, [r7]
    strb r1, [r7,#1]
    pop {r4-r7,pc}
locret_80A2866:
    pop {r4-r7,pc}
loc_80A2868:
    ldrb r1, [r7]
    tst r1, r1
    bne loc_80A2878
    strb r0, [r7]
    mov r1, #1
    eor r0, r1
    strb r0, [r7,#1]
    pop {r4-r7,pc}
loc_80A2878:
    cmp r0, r1
    beq locret_80A288A
    ldrb r1, [r7,#1]
    cmp r0, r1
    beq loc_80A288C
    mov r1, #0
    strb r1, [r7]
    strb r1, [r7,#1]
    pop {r4-r7,pc}
locret_80A288A:
    pop {r4-r7,pc}
loc_80A288C:
    sub r0, #0x20 
    lsr r0, r0, #1
    add r1, r0, #1
    strb r1, [r7,#2]
    bl sub_80A2934
    add r4, r0, #0
    ldrh r0, [r4,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldrh r0, [r4,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    pop {r4-r7,pc}
// end of function sub_80A2844

.thumb
sub_80A28AC:
    push {r4-r7,lr}
    ldrb r0, [r7,#2]
    ldrb r1, [r7,#3]
    cmp r0, r1
    bne loc_80A28B8
    pop {r4-r7,pc}
loc_80A28B8:
    add r1, #1
    cmp r0, r1
    bne loc_80A28E0
    strb r1, [r7,#3]
    mov r0, #0x74 
    bl f500_8000558
    ldrb r0, [r7,#3]
    ldrb r1, [r7,#4]
    cmp r0, r1
    bne locret_80A28DE
    ldr r0, [pc, #0x80a28fc-0x80a28ce-2] // =pt_80A2900
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_802BC60
locret_80A28DE:
    pop {r4-r7,pc}
loc_80A28E0:
    bl sub_8029ECA
    beq locret_80A28F6
    mov r0, #0
    strb r0, [r7,#1]
    strb r0, [r7]
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    ldr r0, [pc, #0x80a28f8-0x80a28f0-4] // =dword_808D638
    bl sub_802BC60
locret_80A28F6:
    pop {r4-r7,pc}
off_80A28F8:    .word dword_808D638
off_80A28FC:    .word pt_80A2900
pt_80A2900:    .word dword_808D348
    .word dword_808D3D8+23
    .word dword_808D3D8+208
    .word dword_808D3D8+393
// end of function sub_80A28AC

.thumb
sub_80A2910:
    push {r4-r7,lr}
    ldrh r0, [r7,#6]
    sub r0, #1
    beq loc_80A291C
    strh r0, [r7,#6]
    pop {r4-r7,pc}
loc_80A291C:
    bl sub_8029ECA
    beq locret_80A292C
    mov r0, #0
    strh r0, [r7,#6]
    ldr r0, [pc, #0x80a2930-0x80a2926-2] // =0x808D11C
    bl sub_802BC60
locret_80A292C:
    pop {r4-r7,pc}
    .byte 0, 0
dword_80A2930:    .word 0x808D209
// end of function sub_80A2910

.thumb
sub_80A2934:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a2988-0x80a2936-2] // =off_80A245C
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    lsl r1, r1, #2
    ldr r7, [r7,r1]
    mov r1, #8
    mul r0, r1
    add r0, r0, r7
    pop {r4-r7,pc}
// end of function sub_80A2934

.thumb
sub_80A294A:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a2988-0x80a294c-4] // =off_80A245C
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    lsl r1, r1, #2
    ldr r7, [r7,r1]
    mov r4, #0
loc_80A295A:
    ldrh r0, [r7,#4]
    tst r0, r0
    beq loc_80A2976
    ldrh r0, [r7,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    ldrh r0, [r7,#6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    add r4, #1
    add r7, #8
    b loc_80A295A
loc_80A2976:
    ldr r1, [pc, #0x80a298c-0x80a2976-2] // =byte_2007390
    mov r0, #0
    strb r0, [r1,#0x1] // (byte_2007391 - 0x2007390)
    strb r0, [r1]
    strb r0, [r1,#0x2] // (byte_2007392 - 0x2007390)
    strb r0, [r1,#0x3] // (byte_2007393 - 0x2007390)
    bl sub_80A29C8
    pop {r4-r7,pc}
off_80A2988:    .word off_80A245C
off_80A298C:    .word byte_2007390
// end of function sub_80A294A

.thumb
sub_80A2990:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a29e4-0x80a2992-2] // =byte_2007390
    mov r1, #0
    strb r1, [r5,#0x5] // (byte_2007395 - 0x2007390)
    strh r1, [r5,#0x6] // (word_2007396 - 0x2007390)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2990

.thumb
sub_80A299E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a29e4-0x80a29a0-4] // =byte_2007390
    ldr r0, [pc, #0x80a29b0-0x80a29a2-2] // =jt_80A29B4
    ldrb r1, [r5,#0x5] // (byte_2007395 - 0x2007390)
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A29B0:    .word jt_80A29B4
jt_80A29B4:    .word sub_80A29E8+1
    .word sub_80A2A20+1
    .word sub_80A2AB8+1
    .word sub_80A2AEC+1
    .word sub_80A2B2C+1
// end of function sub_80A299E

.thumb
sub_80A29C8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a29e4-0x80a29ca-2] // =byte_2007390
    bl sub_8001AE0
    ldr r1, [pc, #0x80a29e0-0x80a29d0-4] // =0x1F
    and r1, r0
    ldr r0, [pc, #0x80a29dc-0x80a29d4-4] // =0x708
    add r0, r0, r1
    strh r0, [r5,#0x6] // (word_2007396 - 0x2007390)
    pop {r4-r7,pc}
off_80A29DC:    .word 0x708
dword_80A29E0:    .word 0x1F
off_80A29E4:    .word byte_2007390
// end of function sub_80A29C8

.thumb
sub_80A29E8:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a2a1c-0x80a29ea-2] // =off_80A250C
    mov r4, #0
    sub sp, sp, #0x10
    mov r2, sp
loc_80A29F2:
    ldr r0, [r7,#4]
    strb r0, [r2,r4]
    add r7, #8
    add r4, #1
    cmp r4, #4
    blt loc_80A29F2
    mov r0, sp
    mov r1, #4
    bl sub_8000C98
    add sp, sp, #0x10
    ldr r7, [pc, #0x80a2a1c-0x80a2a08-4] // =off_80A250C
    lsl r0, r0, #3
    ldr r0, [r7,r0]
    str r0, [r5,#8]
    mov r0, #0
    strh r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#5]
    mov r0, #1
    pop {r4-r7,pc}
off_80A2A1C:    .word off_80A250C
// end of function sub_80A29E8

.thumb
sub_80A2A20:
    push {r4-r7,lr}
    ldr r7, [r5,#8]
    ldrb r0, [r7,#1]
    ldrh r1, [r5,#6]
    cmp r0, r1
    bge loc_80A2A3A
    add r7, #2
    str r7, [r5,#8]
    ldrb r0, [r7,#1]
    tst r0, r0
    beq loc_80A2A96
    mov r1, #0
    strh r1, [r5,#6]
loc_80A2A3A:
    ldr r4, [pc, #0x80a2b28-0x80a2a3a-2] // =byte_200B1F0
    add r1, #1
    strh r1, [r5,#6]
    mov r0, #0x3a 
    bl sub_80A6DB8
    mov r0, #0
    ldrsb r0, [r7,r0]
    lsl r0, r0, #0xc
    ldr r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    add r1, r1, r0
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    ldr r1, [pc, #0x80a2ab4-0x80a2a58-4] // =0x3F0
    tst r1, r0
    beq loc_80A2A7C
    mov r0, #0x10
    lsl r0, r0, #0xc
    ldr r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    sub r1, r1, r0
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    bgt loc_80A2A70
    mov r0, #0
    str r0, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    b loc_80A2A70
loc_80A2A70:
    ldr r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    cmp r1, #0
    bgt loc_80A2A7C
    mov r0, #0x3b 
    bl sub_80A6DB8
loc_80A2A7C:
    mov r1, #0x46 
    lsl r1, r1, #0x10
    ldr r2, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    cmp r1, r2
    bge loc_80A2AAA
    mov r0, #0x3c 
    bl sub_80A6DB8
    mov r0, #0x3c 
    strh r0, [r5,#6]
    mov r0, #0xc
    strb r0, [r5,#5]
    b loc_80A2AAA
loc_80A2A96:
    ldr r1, [pc, #0x80a2b24-0x80a2a96-2] // =byte_200AAC0
    mov r0, #1
    strb r0, [r1,#0xc] // (dword_200AACC - 0x200aac0)
    mov r0, #0x3c 
    bl sub_80A6DB8
    mov r0, #0x3c 
    strh r0, [r5,#6]
    mov r0, #8
    strb r0, [r5,#5]
loc_80A2AAA:
    bl sub_80A2B40
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A2AB4:    .word 0x3F3
// end of function sub_80A2A20

.thumb
sub_80A2AB8:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80a2b28-0x80a2aba-2] // =byte_200B1F0
    mov r0, #4
    lsl r0, r0, #0x10
    ldr r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    sub r1, r1, r0
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    bge loc_80A2ACC
    mov r1, #0
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
loc_80A2ACC:
    ldr r1, [pc, #0x80a2b24-0x80a2acc-4] // =byte_200AAC0
    ldrb r0, [r1,#0xc] // (dword_200AACC - 0x200aac0)
    cmp r0, #2
    bne loc_80A2AE8
    ldrh r0, [r5,#6]
    sub r0, #1
    strh r0, [r5,#6]
    bge loc_80A2AE8
    mov r0, #0
    mov r1, r10
    ldr r1, [r1,#0x10]
    strb r0, [r1,#4]
    mov r0, #0x10
    strb r0, [r5,#5]
loc_80A2AE8:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A2AB8

.thumb
sub_80A2AEC:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80a2b28-0x80a2aee-2] // =byte_200B1F0
    mov r0, #2
    lsl r0, r0, #0x10
    ldr r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    add r1, r1, r0
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
    bge loc_80A2B02
    mov r1, #0x80
    lsl r1, r1, #0x10
    str r1, [r4,#0x10] // (dword_200B200 - 0x200b1f0)
loc_80A2B02:
    ldrh r0, [r5,#6]
    sub r0, #1
    strh r0, [r5,#6]
    bge loc_80A2B1E
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x10]
    strb r0, [r1,#4]
    mov r0, #0x10
    strb r0, [r5,#5]
loc_80A2B1E:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A2B24:    .word byte_200AAC0
off_80A2B28:    .word byte_200B1F0
// end of function sub_80A2AEC

.thumb
sub_80A2B2C:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A2B3C
    bl sub_80A29C8
    mov r0, #0
    pop {r4-r7,pc}
loc_80A2B3C:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A2B2C

.thumb
sub_80A2B40:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x1f
    and r0, r1
    mov r1, #0x10
    tst r0, r1
    beq locret_80A2B88
    bl sub_80A2B8A
    beq locret_80A2B88
    add r7, r0, #0
    sub sp, sp, #0x20
    mov r0, sp
    mov r1, #0x20 
    mov r2, #0x20 
    bl f900_80009B4
    mov r0, sp
    mov r1, #0x20 
    bl sub_8000C98
    add sp, sp, #0x20
    mov r1, #4
    mul r1, r0
    add r7, r7, r1
    mov r0, #0x30 
    ldrh r1, [r7]
    ldrh r2, [r7,#2]
    mov r3, #0
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    mov r4, #0
    bl sub_8004440
locret_80A2B88:
    pop {r4-r7,pc}
// end of function sub_80A2B40

.thumb
sub_80A2B8A:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    ldr r4, [pc, #0x80a2bac-0x80a2b92-2] // =dword_80A252C+72
loc_80A2B94:
    ldr r0, [r4]
    tst r0, r0
    beq loc_80A2BA8
    cmp r0, r7
    beq loc_80A2BA2
    add r4, #8
    b loc_80A2B94
loc_80A2BA2:
    ldr r0, [r4,#4]
    tst r0, r0
    pop {r4-r7,pc}
loc_80A2BA8:
    mov r0, #0
    pop {r4-r7,pc}
off_80A2BAC:    .word dword_80A252C+0x48
// end of function sub_80A2B8A

.thumb
sub_80A2BB0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bb2-2] // =byte_20004D0
    mov r1, r10
    ldr r1, [r1,#0x44]
    mov r0, #0x2d 
    strb r0, [r1,#0xb]
    mov r0, #0x24 
    strb r0, [r5,#0x11] // (byte_20004E1 - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BB0

.thumb
sub_80A2BC4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bc6-2] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BC4

.thumb
sub_80A2BD0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bd2-2] // =byte_20004D0
    mov r0, #0
    strb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BD0

.thumb
sub_80A2BDC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bde-2] // =byte_20004D0
    mov r0, #0
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BDC

.thumb
sub_80A2BE8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bea-2] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0xd] // (byte_20004DD - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BE8

.thumb
sub_80A2BF4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2bf6-2] // =byte_20004D0
    mov r0, #0
    strb r0, [r5,#0x9] // (byte_20004D9 - 0x20004d0)
    mov r0, #0x24 
    neg r0, r0
    strb r0, [r5,#0x11] // (byte_20004E1 - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2BF4

.thumb
sub_80A2C06:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2c08-4] // =byte_20004D0
    mov r0, #1
    strb r0, [r5,#0x9] // (byte_20004D9 - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2C06

.thumb
sub_80A2C12:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2c14-4] // =byte_20004D0
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r0, [r1,#0xb]
    sub r0, #1
    strb r0, [r1,#0xb]
    ldr r0, [pc, #0x80a2d28-0x80a2c20-4] // =0x10F
    bl f500_8000558
    ldr r0, [pc, #0x80a2d30-0x80a2c26-2] // =0x190
    strh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2C12

.thumb
sub_80A2C2E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a2d2c-0x80a2c30-4] // =byte_20004D0
    bl sub_80A2D46
    bne loc_80A2D14
    bl sub_80A2D34
    bne loc_80A2D14
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_80A2C56
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    bl sub_80540BA
    mov r0, #0x37 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
loc_80A2C56:
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#0xb] // (byte_20004DB - 0x20004d0)
    tst r0, r0
    bne loc_80A2CDC
    bl sub_80A2D9C
    bne loc_80A2CCC
    ldrh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    sub r0, #1
    strh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    bgt loc_80A2CDC
    mov r0, #0
    strh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r0, [r1,#0xb]
    ldr r2, [pc, #0x80a2d1c-0x80a2c7c-4] // =byte_80A2D20
    mov r3, #0
loc_80A2C80:
    ldrb r4, [r2]
    cmp r0, r4
    beq loc_80A2C9E
    add r2, #1
    add r3, #1
    cmp r3, #4
    blt loc_80A2C80
    sub r0, #1
    strb r0, [r1,#0xb]
    ldr r0, [pc, #0x80a2d28-0x80a2c92-2] // =0x10F
    bl f500_8000558
    ldr r0, [pc, #0x80a2d30-0x80a2c98-4] // =0x190
    strh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    b loc_80A2CDC
loc_80A2C9E:
    ldrb r4, [r2,#4]
    bl sub_80A2D64
    beq loc_80A2CDC
    push {r0-r7}
    ldr r0, [pc, #0x80a2d18-0x80a2ca8-4] // =dword_809C524
    add r1, r4, #0
    bl sub_802BC60
    pop {r0-r7}
    b loc_80A2CDC
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r0, [r1,#0xb]
    sub r0, #1
    blt loc_80A2CDC
    strb r0, [r1,#0xb]
    ldr r0, [pc, #0x80a2d28-0x80a2cc0-4] // =0x10F
    bl f500_8000558
    ldr r0, [pc, #0x80a2d30-0x80a2cc6-2] // =0x190
    strh r0, [r5,#0xe]
    b loc_80A2CDC
loc_80A2CCC:
    ldr r0, [pc, #0x80a2d30-0x80a2ccc-4] // =0x190
    strh r0, [r5,#0xe] // (word_20004DE - 0x20004d0)
    mov r1, r10
    ldr r1, [r1,#0x44]
    mov r0, #0x2d 
    strb r0, [r1,#0xb]
    bl sub_80A2DD0
loc_80A2CDC:
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_80A2CF0
    mov r1, #0x11
    ldrsb r0, [r5,r1]
    cmp r0, #0x24 
    bge loc_80A2CEC
    add r0, #2
loc_80A2CEC:
    strb r0, [r5,#0x11]
    b loc_80A2D14
loc_80A2CF0:
    mov r3, #0
    mov r1, #0x11
    ldrsb r0, [r5,r1]
    mov r1, #0x24 
    neg r1, r1
    cmp r0, r1
    ble loc_80A2D02
    mov r3, #1
    sub r0, #2
loc_80A2D02:
    strb r0, [r5,#0x11]
    tst r3, r3
    bne loc_80A2D14
    mov r0, #0
    strb r0, [r5,#8]
    bl sub_80540BA
    bl sub_8003814
loc_80A2D14:
    mov r0, #0
    pop {r4-r7,pc}
off_80A2D18:    .word dword_809C524
off_80A2D1C:    .word byte_80A2D20
byte_80A2D20:    .byte 0x1E
    .byte 0x14, 0xA, 0x0
byte_80A2D24:    .byte 0x0
    .byte 0x1, 0x2, 0x3
dword_80A2D28:    .word 0x10F
off_80A2D2C:    .word byte_20004D0
off_80A2D30:    .word 0x190
// end of function sub_80A2C2E

.thumb
sub_80A2D34:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_802D92C
    bne loc_80A2D42
    mov r0, #0
    pop {r4-r7,pc}
loc_80A2D42:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A2D34

.thumb
sub_80A2D46:
    push {r4-r7,lr}
    mov r0, #0xb
    mov r1, #0x44 
    bl sub_8024FF0
    beq loc_80A2D60
    mov r0, #0xb
    mov r1, #0x45 
    bl sub_8024FF0
    bne loc_80A2D60
    mov r0, #0
    pop {r4-r7,pc}
loc_80A2D60:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A2D46

.thumb
sub_80A2D64:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A2D98
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne loc_80A2D98
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne loc_80A2D98
    mov r0, #1
    bl sub_802D92C
    bne loc_80A2D98
    bl sub_80A6FB6
    bne loc_80A2D98
    bl sub_802BCF2
    bne loc_80A2D98
    mov r0, #1
    pop {r4-r7,pc}
loc_80A2D98:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A2D64

.thumb
sub_80A2D9C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x80a2dc0-0x80a2da6-2] // =dword_80A2DC4
loc_80A2DA8:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_80A2DBA
    cmp r0, r7
    beq loc_80A2DB6
    add r6, #2
    b loc_80A2DA8
loc_80A2DB6:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A2DBA:
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
off_80A2DC0:    .word dword_80A2DC4
dword_80A2DC4:    .word 0x48D0804, 0x68D058D, 0x78D
// end of function sub_80A2D9C

.thumb
sub_80A2DD0:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0xae
    bl sub_8024FB8
    mov r0, #1
    mov r1, #0x7e 
    mov r2, #4
    bl sub_802500A
    mov r0, #0xb
    mov r1, #0x6a 
    bl sub_8024FF0
    bne loc_80A2E0A
    mov r0, #0xb
    mov r1, #0x4c 
    mov r2, #3
    bl sub_8025034
    mov r0, #0xb
    mov r1, #0x5b 
    mov r2, #3
    bl sub_8025034
    mov r0, #1
    mov r1, #0x7e 
    bl sub_8024FB8
loc_80A2E0A:
    mov r0, #0xb
    mov r1, #0x6b 
    bl sub_8024FF0
    bne loc_80A2E30
    mov r0, #0xb
    mov r1, #0x4f 
    mov r2, #3
    bl sub_8025034
    mov r0, #0xb
    mov r1, #0x5e 
    mov r2, #3
    bl sub_8025034
    mov r0, #1
    mov r1, #0x7f
    bl sub_8024FB8
loc_80A2E30:
    mov r0, #0xb
    mov r1, #0x6c 
    bl sub_8024FF0
    bne loc_80A2E56
    mov r0, #0xb
    mov r1, #0x52 
    mov r2, #4
    bl sub_8025034
    mov r0, #0xb
    mov r1, #0x61 
    mov r2, #4
    bl sub_8025034
    mov r0, #1
    mov r1, #0x80
    bl sub_8024FB8
loc_80A2E56:
    mov r0, #0xb
    mov r1, #0x6d 
    bl sub_8024FF0
    bne loc_80A2E7C
    mov r0, #0xb
    mov r1, #0x56 
    mov r2, #5
    bl sub_8025034
    mov r0, #0xb
    mov r1, #0x65 
    mov r2, #5
    bl sub_8025034
    mov r0, #1
    mov r1, #0x81
    bl sub_8024FB8
loc_80A2E7C:
    mov r0, #0xb
    mov r1, #0x6e 
    bl sub_8024FB8
    mov r0, #0xb
    mov r1, #0x6f 
    bl sub_8024FB8
    pop {r4-r7,pc}
    .byte 0, 0
    .word 0x17E2A24, 0xFFF80000, 0xFED60000, 0x100000, 0xFED60000
    .word 0xFFF80000, 0xFED20000, 0xF000F8, 0xF00000E8, 0xFFC0FE00
    .word 0x50001, 0x17F2B25, 0xFEDA0000, 0x40000, 0xFEDA0000
    .word 0x100000, 0xFEDA0000, 0xFFF40000, 0xF000F800, 0x38E800
    .word 0xFF801F8, 0x70000, 0x1802A24, 0xFF180000, 0xF40000
    .word 0xFF300000, 0xF40000, 0xFF180000, 0xF00000, 0xF000F8
    .word 0xF00000E8, 0xFFC0FE00, 0x50001, 0x1812A24, 0xFFF80000
    .word 0x1180000, 0x100000, 0x1180000, 0xFFF80000, 0x1140000
    .word 0xF000F8, 0xF00000E8, 0xFFC0FE00, 0x50001, 0x4812B5F0
    .word 0xF75D2108, 0x2000FCF3, 0xB5F0BDF0, 0x4F0D7928, 0x4341212C
    .word 0x4D0C187F, 0x78294802, 0x46FE5840, 0xBDF04700, 0x80A2F6C
    .word 0x80A2F91, 0x80A2FE9, 0x80A3007, 0x80A301D, 0x80A30CD
    .word 0x80A30EB, 0x80A3105, 0x80A2E90, 0x2010B98, 0x2000B5F0
    .word 0xFFC3F782, 0x68B96878, 0xF7822200, 0xF003FFC3, 0x7878FF7D
    .word 0xFF06F003, 0x693968F8, 0xF0032200, 0xB420FF1D, 0x6979201E
    .word 0x230069BA, 0xF7618D3C, 0xBC20FA3D, 0x21082008, 0xFD86F762
    .word 0x7068201E, 0x80A82000, 0x1C008878, 0xFFE0F781, 0x70282004
    .word 0xBDF02001, 0xF762B5F0, 0xD008FDB7, 0x38017868, 0xDA047068
    .word 0xF000200A, 0x2008F894, 0x20017028, 0xB5F0BDF0, 0xF7B02080
    .word 0xD103FCC9, 0x70E82000, 0x7028200C, 0xBDF02001, 0x78E8B5F0
    .word 0xDB013801, 0xE04C70E8, 0x68644654, 0x20028864, 0xD00B4204
    .word 0xF75D4824, 0x2004FA8F, 0x783870E8, 0xFEC2F003, 0x300178A8
    .word 0xE00070A8, 0x78A8E039, 0xD006280A, 0xD00E281E, 0xD0162828
    .word 0xD1302832, 0x200BE027, 0xF85FF000, 0x80A88C78, 0x56FA231C
    .word 0x56FB231D, 0x200CE013, 0xF855F000, 0x80A88CB8, 0x56FA231E
    .word 0x56FB231F, 0x200DE009, 0xF84BF000, 0x80A88CF8, 0x56FA2320
    .word 0x56FB2321, 0x68F8E7FF, 0x4126939, 0x1880041B, 0x220018C9
    .word 0xFEA0F003, 0x2000E007, 0x80A843C0, 0x7068205A, 0x70282010
    .word 0x2001E7FF, 0xBDF0, 0x199, 0x7868B5F0, 0x70683801
    .word 0x200EDA07, 0xF825F000, 0xF0038D78, 0x2014FE6B, 0x20017028
    .word 0xB5F0BDF0, 0xF7B02080, 0xD105FC57, 0x2108200C, 0xFCF0F762
    .word 0x70282018, 0xBDF02001, 0xF762B5F0, 0xD00AFD29, 0xFEC2F003
    .word 0x46512001, 0x6A896C09, 0xF7823124, 0x2000FF00, 0x2001BDF0
    .word 0xB5F0BDF0, 0x48021C01, 0xF8BAF7AB, 0xBDF0, 0x87D72DC
    .word 0x96FDFA, 0xFE1A0040, 0x200076, 0x96FDFA, 0xA000050
    .word 0x81414, 0xFFEE0032, 0x320000, 0xFFEE, 0xFFEE0032
    .word 0x140A0010, 0x1E1E, 0x4817B5F0, 0xF75D210C, 0x2000FBDF
    .word 0xB5F0BDF0, 0x4F127928, 0x43412118, 0x4D11187F, 0x78294802
    .word 0x46FE5840, 0xBDF04700, 0x80A3194, 0x80A31CD, 0x80A324B
    .word 0x80A326D, 0x80A32A1, 0x80A32FF, 0x80A3325, 0x80A334D
    .word 0x80A3373, 0x80A338B, 0x80A33A7, 0x80A33BB, 0x80A33E1
    .word 0x80A3138, 0x200AD20, 0x2000B5F0, 0xFEA5F782, 0x40089B8
    .word 0x40989F9, 0x4128A3A, 0xFEA2F782, 0x2000B420, 0x40988F9
    .word 0x412893A, 0x41B897B, 0xF761243A, 0xBC20F923, 0xFE50F003
    .word 0xF0032075, 0x8838FDD9, 0x4003012, 0x4098879, 0x41288BA
    .word 0xFDFAF003, 0x46532282, 0x79D86C5B, 0xDA022808, 0x71D83001
    .word 0x706A2264, 0x21087DB8, 0xFC54F762, 0x7AA92013, 0x5C781809
    .word 0x201E70E8, 0x200470A8, 0x20017028, 0xB5F0BDF0, 0xFC86F762
    .word 0x78A8D00A, 0x70A83801, 0x7CB8D106, 0x18407AA9, 0xF8D3F000
    .word 0x70282008, 0xBDF02001, 0x2080B5F0, 0xFB96F7B0, 0x201ED112
    .word 0x200370A8, 0xF0002103, 0x71E8F923, 0x21032003, 0xF91EF000
    .word 0x20037228, 0xF0002102, 0x7268F919, 0x7028200C, 0xBDF02001
    .word 0xF000B5F0, 0xD004F8BB, 0x70A8201E, 0x70282010, 0x2000E023
    .word 0x79287168, 0xD0024200, 0x71283801, 0x4654E01B, 0x88646864
    .word 0x22012076, 0x420C2102, 0x2079D104, 0x21012200, 0xD00E420C
    .word 0xF00371AA, 0x2065FD73, 0x421279AA, 0x2064D000, 0xF75D30FF
    .word 0x2006F933, 0x20017128, 0x20017168, 0xB5F0BDF0, 0x380178A8
    .word 0xD1F870A8, 0x30017AA8, 0x280372A8, 0x2014D107, 0x42097CB9
    .word 0x2024D000, 0x20017028, 0xE787BDF0, 0x7868B5F0, 0xDB062846
    .word 0x2108200C, 0xFBD4F762, 0x70282020, 0x2003E006, 0xF865F000
    .word 0x70A8203C, 0x70282018, 0xBDF02001, 0x2080B5F0, 0xFB26F7B0
    .word 0x78A8D10B, 0x70A83801, 0x203CD107, 0x200C70A8, 0xF7622108
    .word 0x201CFBB9, 0x20017028, 0xB5F0BDF0, 0xFBF2F762, 0x78A8D005
    .word 0x70A83801, 0xF7FFD101, 0x2001FEF1, 0xB5F0BDF0, 0xFBE6F762
    .word 0x4653D0F9, 0x20006C5B, 0x200971D8, 0xF78121D7, 0x2000FDFD
    .word 0xB5F0BDF0, 0xF000200D, 0x203CF82E, 0x202870A8, 0x20017028
    .word 0xB5F0BDF0, 0xF7B02080, 0xD10BFAEF, 0x380178A8, 0xD10770A8
    .word 0x70A8203C, 0x21082004, 0xFB82F762, 0x7028202C, 0xBDF02001
    .word 0xF762B5F0, 0xD0F9FBBB, 0x380178A8, 0xD1F570A8, 0x28467868
    .word 0x4653DB07, 0x20006C5B, 0x200971D8, 0xF78121DA, 0x2000FDCB
    .word 0xB5F0BDF0, 0x48021C01, 0xFF48F7AA, 0xBDF0, 0x2036800
    .word 0x78A8B5F0, 0x70A83801, 0x78E8D14E, 0xD1014200, 0xBDF02001
    .word 0x70A82021, 0x7AA84B28, 0x40C300C0, 0xD30A085B, 0x380179E8
    .word 0xD10671E8, 0x21032003, 0xF83CF000, 0x240371E8, 0x85BE022
    .word 0x2019D30C, 0x240470A8, 0x38017A68, 0xD1197268, 0x21032003
    .word 0xF82CF000, 0xE00A7268, 0xD30A085B, 0x38017A28, 0xD1067228
    .word 0x21062003, 0xF820F000, 0x24057228, 0xF75EE006, 0x21FFFB32
    .word 0x21034008, 0x1C0CDF06, 0x2020B420, 0x40989B9, 0x41289FA
    .word 0x41B88BB, 0xFFC8F760, 0xBC201C28, 0x64C5D006, 0x380178E8
    .word 0xD10170E8, 0x70A82078, 0xBDF02000, 0xF75EB503, 0xBC06FB14
    .word 0x18804008, 0xBD00, 0x20501, 0x58FFC8, 0x300000
    .word 0x10, 0xFFE80058, 0xFFF8FFE0, 0x48, 0x3020100
    .word 0x200000, 0x20, 0x58FFC8, 0x300000, 0x10
    .word 0xFFE80058, 0xFFF8FFE0, 0x48, 0x3020100, 0x200103
    .word 0x20, 0x4822B5F0, 0xF75D2118, 0xF7B0FA01, 0x2000FDC4
    .word 0xB5F0BDF0, 0xFD6EF7B0, 0xFD8AF7B0, 0x4F1A7928, 0x43412124
    .word 0x4D19187F, 0x8A2989E8, 0x230322FE, 0x431A021B, 0xFA32F000
    .word 0x8AA98A68, 0xF00022C2, 0x4803FA2D, 0x58407829, 0x470046FE
    .word 0xBDF0, 0x80A3578, 0x80A35B5, 0x80A3645, 0x80A3721
    .word 0x80A373F, 0x80A3755, 0x80A377D, 0x80A37B3, 0x80A387F
    .word 0x80A389D, 0x80A38B3, 0x80A38E1, 0x80A3917, 0x80A394D
    .word 0x80A34DC, 0x200A780, 0x2000B5F0, 0xFCB1F782, 0x4008BF8
    .word 0x4098C39, 0x4128C7A, 0xFCAEF782, 0xF7862000, 0x4653F897
    .word 0x8C586C1B, 0x822881E8, 0x6C5B4653, 0x28027B58, 0x2002DD00
    .word 0x5C184B11, 0xF91AF76E, 0x3008800, 0x82680B00, 0x465682A8
    .word 0x7B706C76, 0xDD002802, 0x7F392002, 0x4B0A1840, 0x73285C18
    .word 0x2100204B, 0xF7B02200, 0x204BFD56, 0x22012101, 0xFD51F7B0
    .word 0x72682008, 0x70282004, 0xBDF02001, 0x80A3638, 0x80A363B
    .word 0x32CACAC9, 0x96646464, 0x96, 0x2020B5F0, 0xFF55F75F
    .word 0x69F64656, 0x70702014, 0x70302064, 0x71702014, 0x71302064
    .word 0xFC1EF003, 0xF0032000, 0x8838FBA7, 0x88790400, 0x88BA0409
    .word 0xF0030412, 0xB420FBC9, 0x89B92000, 0x89FA0409, 0x8A3B0412
    .word 0x243B041B, 0xFED8F760
    .word 0xB420BC20, 0x88392027, 0x887A0409, 0x88BB0412, 0x2404041B
    .word 0xFECCF760, 0xBC201C28, 0xF75E64C5, 0x22FFFA17, 0x21034010
    .word 0x7169DF06, 0x2024B420, 0x40988F9, 0x412893A, 0x41B897B
    .word 0xF7602400, 0x1C28FEB7, 0x64C5BC20, 0x18092134, 0xB420B402
    .word 0x8A792025, 0x8ABA0409, 0x8AFB0412, 0x7F7C041B, 0xFEA6F760
    .word 0xBC201C28, 0xBC0264C5, 0x20006581, 0x71E87128, 0x722872A8
    .word 0x21087A68, 0xF9E6F762, 0x72682008, 0x70A8201E, 0x70282008
    .word 0xBDF02001, 0xF762B5F0, 0xD008FA1B, 0x380178A8, 0xD10470A8
    .word 0xF0007E38, 0x200CF93D, 0x20017028, 0xB5F0BDF0, 0xF7B02080
    .word 0xD103F92D, 0x72282001, 0x70282010, 0xBDF02001, 0x79E8B5F0
    .word 0xD00D4200, 0x28012314, 0x8A68D007, 0x897B29, 0xD5001A40
    .word 0x82682000, 0x802B232C, 0x70A8203C, 0xBDF02001, 0x7868B5F0
    .word 0xD10B4200, 0x380178A8, 0xD11070A8, 0x2108200C, 0xF9A4F762
    .word 0x70A8203C, 0x70682004, 0xF9DEF762, 0x78A8D005, 0x70A83801
    .word 0x2018D101, 0x20018028, 0xB5F0BDF0, 0xF75F2020, 0xF003FE9E
    .word 0x2044FB71, 0xFAFAF003, 0x40088F8, 0x4098939, 0x412897A
    .word 0xFB1CF003, 0x2000B420, 0x40989B9, 0x41289FA, 0x41B8A3B
    .word 0xF760243B, 0xBC20FE2B, 0xF978F75E, 0x401022FF, 0xDF062103
    .word 0xB4207169, 0x88392024, 0x887A0409, 0x88BB0412, 0x2404041B
    .word 0xFE18F760, 0xBC201C28, 0xB42064C5, 0x88F92027, 0x893A0409
    .word 0x897B0412, 0x2400041B, 0xFE0AF760, 0xBC201C28, 0x213464C5
    .word 0xB4021809, 0x2025B420, 0x4098A79, 0x4128ABA, 0x41B8AFB
    .word 0xF7607F7C, 0x1C28FDF9, 0x64C5BC20, 0x6581BC02, 0x71282000
    .word 0x722871E8, 0x200172E8, 0x7A6872A8, 0xF7622108, 0x2008F937
    .word 0x201E7268, 0x201C70A8, 0x20017028, 0xB5F0BDF0, 0xF96CF762
    .word 0x78A8D008, 0x70A83801, 0x7E78D104, 0xF88EF000, 0x70282020
    .word 0xBDF02001, 0x2080B5F0, 0xF87EF7B0, 0x2001D103, 0x20247228
    .word 0x20017028, 0xB5F0BDF0, 0x42007868, 0x79E9D122, 0xD00D4209
    .word 0x70A8203C, 0x29012028, 0x89E8D007, 0x897B29, 0xD5001A40
    .word 0x81E82000, 0x8028202C, 0xBDF02001, 0x7868B5F0, 0xD10B4200
    .word 0x380178A8, 0xD11070A8, 0x2108200C, 0xF8F2F762, 0x70A8203C
    .word 0x70682004, 0xF92CF762, 0x78A8D005, 0x70A83801, 0x2004D101
    .word 0x20018028, 0xB5F0BDF0, 0x42007868, 0x203CD103, 0x200470A8
    .word 0x78A87068, 0x70A83801, 0x2024D10C, 0xF76221FF, 0xF00EF8D3
    .word 0x2020FCDF, 0xFDDBF75F, 0x70A8203C, 0x80282030, 0xBDF02001
    .word 0x7868B5F0, 0xD11B4200, 0x380178A8, 0xD12370A8, 0x420089E8
    .word 0x8A68D009, 0xD1084200, 0x407F78, 0x5A184B0E, 0xF7811C00
    .word 0x2000FB15, 0x7EF8BDF0, 0x42097AA9, 0x7EB8D000, 0xF814F000
    .word 0x70682004, 0xF7B02080, 0xD107F807, 0x72682020, 0x7AA92018
    .word 0xD0004209, 0x80282004, 0xBDF02001, 0x80A39AC, 0xA4E0A4B
    .word 0x1C01B5F0, 0xF7AA4801, 0xBDF0FC75, 0x2036800, 0x1C16B5F0
    .word 0xB4010436, 0x22200889, 0xDD004288, 0x48222200, 0x49221880
    .word 0x41222C2, 0xD1004296, 0x22204924, 0xFFDCF75C, 0xF75DBC01
    .word 0x1C02F821, 0x1C252400, 0x2008270C, 0x40FAB485, 0x400A210F
    .word 0x4004918, 0x42124308, 0x1C2CD106, 0xD1054224, 0xD003423F
    .word 0xE001220B, 0x1C252401, 0x521980, 0x23C24911, 0x429E041B
    .word 0x4913D100, 0x22011889, 0xF7822300, 0xBC85F8D1, 0x3F043008
    .word 0x4809DADC, 0x490A1980, 0x23002201, 0xF8C6F782, 0x19804808
    .word 0x22014906, 0xF7822300, 0xBDF0F8BF, 0x86A0364, 0x30027C0
    .word 0x8000, 0xC792, 0xC790, 0x10288000, 0x30027A0
    .word 0xB792, 0xDC003B, 0x1EFFF8, 0xE4, 0xE40044
    .word 0x320F0000, 0xFEDD0005, 0x38FF52, 0xFF5AFEC0, 0xFEE60040
    .word 0x40FF5A, 0x207320F, 0x15A000F, 0xFFF2FFF8, 0x162
    .word 0x1620018, 0x3C0F0000, 0x40B, 0x4815B5F0, 0xF75C210C
    .word 0xF7B0FF33, 0x2000FAF6, 0xB5F0BDF0, 0xFAA0F7B0, 0xFABCF7B0
    .word 0xFFBAF069, 0x4F0C7928, 0x43412116, 0x4D0B187F, 0xF8ECF000
    .word 0x78294802, 0x46FE5840, 0xBDF04700, 0x80A3B00, 0x80A3B1D
    .word 0x80A3BB3, 0x80A3BDB, 0x80A3BF1, 0x80A3C2F, 0x80A3A7C
    .word 0x200D910, 0x2000B5F0, 0xF9FDF782, 0x4008838, 0x4098879
    .word 0x41288BA, 0xF9FAF782, 0x2028B420, 0x40988F9, 0x412893A
    .word 0x41B897B, 0xF7602400, 0x1C28FC7B, 0x64C5BC20, 0xF0032066
    .word 0x88F8F931, 0x4003012, 0x4098939, 0x412897A, 0xF952F003
    .word 0x2029B420, 0x40989B9, 0x41289FA, 0x41B8A3B, 0xF7607D3C
    .word 0x1C28FC61, 0x64C5BC20, 0x21012046, 0xF7B02200, 0xF000FA9C
    .word 0x7CF8F881, 0x203B7128, 0x206472A8, 0x200871A8, 0xF7612108
    .word 0x201EFF9B, 0x200470E8, 0x20017028, 0xB5F0BDF0, 0xFFD2F761
    .word 0x78E8D00D, 0x70E83801, 0x4653D109, 0x7CFA6ADB, 0x712A64DA
    .word 0xF0007CB8, 0x2008F858, 0x20017028, 0xB5F0BDF0, 0xF7AF2080
    .word 0xD103FEDF, 0x70A82001, 0x7028200C, 0xBDF02001, 0x79A8B5F0
    .word 0xD0124200, 0x38017AA8, 0xD51472A8, 0x72A8203B, 0x38017928
    .word 0xD0057128, 0xDC0C2803, 0xF75C20E3, 0xE008FCA1, 0xF75C20E4
    .word 0x2000FC9D, 0x203C70A8, 0x201070E8, 0x20017028, 0xB5F0BDF0
    .word 0x42007868, 0x78E8D109, 0x70E83801, 0x200CD119, 0xF7612108
    .word 0x2004FF4B, 0xF7617068, 0xD010FF87, 0xF75F2020, 0x2001FC50
    .word 0xF8AEF003, 0x420079A8, 0x7D7AD105, 0x5A984B04, 0xF7811C00
    .word 0x2000F999, 0x2001BDF0, 0xBDF0, 0x80A3C7C, 0xAD20ACF
    .word 0xB5F00AD5, 0x48021C01, 0xFB0CF7AA, 0xBDF0, 0x2036800
    .word 0x4803B5F0, 0x22004908, 0xFE34F781, 0xBDF0, 0x80A3CA8
    .word 0x88701E80, 0x460, 0x887022E0, 0x20, 0x0
    .word dword_80A3CC0
dword_80A3CC0:    .word 0x6013000, 0x3002780, 0x2064B5F0, 0x22002100, 0xF82EF000
    .word 0x21102064, 0xF0002201, 0x2084F829, 0x22022100, 0xF824F000
    .word 0x21102084, 0xF0002203, 0x7928F81F, 0xDF06210A, 0xD00A4200
    .word 0x1C01B402, 0x494808, 0x43114A09, 0x23002200, 0xFF64F781
    .word 0x4805BC02, 0x4A050049, 0x22004311, 0xF7812300, 0xBDF0FF5B
    .word 0x708003
    .word 0x788003
    .word 0xA180
// end of function sub_80A2DD0

.thumb
sub_80A3D30:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80a3d40-0x80a3d32-2] // =off_80A3D44
    lsl r2, r2, #2
    ldr r2, [r4,r2]
    mov r3, #0
    bl loc_8025978
    pop {r4-r7,pc}
off_80A3D40:    .word off_80A3D44
off_80A3D44:    .word dword_80A3D54
    .word 0x80A3D5A, 0x80A3D60, 0x80A3D66
dword_80A3D54:    .word 0x1940004, 0x4040A, 0xA019C, 0x1A00001, 0x1010A, 0xA01A2
    .word 0x0
    .word unk_3002C50
    .word 0xFF0D0C0C, 0x8000001F, 0x2, 0x80000018, 0x2, 0x80000010
    .word 0x2, 0x80000008, 0x2, 0x80000000, 0x2, 0x0
off_80A3DA4:    .word off_80A3DB4
    .word byte_80A3DC4
    .word aX
    .word dword_80A3DE4
off_80A3DB4:    .word dword_80A3E14
    .word 0x20, 0x0, 0x0
byte_80A3DC4:    .byte 0x4C
    .byte 0x3E, 0xA
    .byte 0x8, 0x20
    .byte 0x0
    .hword 0x0
    .word 0x0, 0x0
aX:    .byte 0x78, 0x3E
    .byte 0xA, 0x8
    .byte 0x20, 0x0
    .hword 0x0
    .word 0x0, 0x0
dword_80A3DE4:    .word 0x80A3E86, 0x20, 0x80A3EBE, 0x20, 0x80A3EEE, 0x20
    .word 0x80A3F2E, 0x20, 0x80A3F56, 0x20, 0x0, 0x0
dword_80A3E14:    .word 0x0
    .word 0x40000, 0x100010, 0x40010, 0x1000E0, 0x40020, 0x300010
    .word 0x40008, 0x900078, 0x40030, 0x6000E0, 0x40010, 0x480078
    .word 0xC0008, 0xF00000, 0x80010, 0x40005, 0x80014, 0x30008
    .word 0x140004, 0x80008, 0x40002, 0x80014, 0x40008, 0xC0004
    .word 0xF00000, 0x80010, 0x100001, 0x10, 0xFFE0FFE0, 0x100004
    .word 0x100010, 0xE00004, 0x200010, 0xE00004, 0x100090, 0x100004
    .word 0x200090, 0x100004, 0x100020, 0x780004, 0x80048, 0x10
    .word 0x9000F0, 0x100004, 0x180090, 0x780004, 0x180010, 0xD00004
    .word 0x180080, 0x200004, 0x180080, 0x780004, 0x80048, 0x10
    .byte 0xF0
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 4
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0xC0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x10
    .byte 1
    .byte 0x20
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x10
    .byte 1
    .byte 0xC0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0xC0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0x48 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 8
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0xA0
    .byte 0
    .byte 4
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0xC0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 8
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 4
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0xC0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0xC0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0x20
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x10
    .byte 1
    .byte 0x20
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x10
    .byte 1
    .byte 0x68 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0x68 
    .byte 0
    .byte 0x10
    .byte 0
    .byte 4
    .byte 0
    .byte 0x58 
    .byte 0
    .byte 0xE0
    .byte 0xFF
    .byte 0x10
    .byte 0
    .byte 0x18
    .byte 0
    .byte 0xC
    .byte 0
    .byte 0xF0
    .byte 0xB5
    .byte 0xC3
    .byte 0x4D 
    .byte 0x28 
    .byte 0x1C
    .byte 0x20
    .byte 0x21 
    .byte 0x5C 
    .byte 0xF7
    .byte 0xC6
    .byte 0xFC
    .byte 0x5D 
    .byte 0xF7
    .byte 0x9C
    .byte 0xFD
    .byte 0xC
    .byte 0x49 
    .byte 8
    .byte 0x40 
    .byte 0xC
    .byte 0x49 
    .byte 0x40 
    .byte 0x18
    .byte 0xA8
    .byte 0x83
    .byte 0xB0
    .byte 0xF7
    .byte 0x82
    .byte 0xF8
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
// end of function sub_80A3D30

.thumb
sub_80A3FBC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a3fbe-2] // =byte_2000870
    add r0, r5, #0
    mov r1, #0x20 
    bl f900_8000930
    bl sub_8001AE0
    ldr r1, [pc, #0x80a3fdc-0x80a3fcc-4] // =0xF0
    and r0, r1
    ldr r1, [pc, #0x80a3fe0-0x80a3fd0-4] // =0x78
    add r0, r0, r1
    strh r0, [r5,#0x1c] // (word_200088C - 0x2000870)
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0
    .byte 0
off_80A3FDC:    .word 0xF0
off_80A3FE0:    .word 0x78
// end of function sub_80A3FBC

.thumb
sub_80A3FE4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a3fe6-2] // =byte_2000870
    sub sp, sp, #0x20
    mov r0, sp
    mov r1, #0x20 
    bl f900_8000930
    mov r0, #3
    strb r0, [r5,#0x8] // (byte_2000878 - 0x2000870)
    ldr r0, [pc, #0x80a4020-0x80a3ff6-2] // =off_80A3DA4
    ldrb r1, [r5,#0x8] // (byte_2000878 - 0x2000870)
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov r1, #0
    mov r2, sp
loc_80A4002:
    ldr r3, [r0]
    tst r3, r3
    beq loc_80A4012
    ldr r3, [r0,#4]
    strb r3, [r2,r1]
    add r1, #1
    add r0, #8
    b loc_80A4002
loc_80A4012:
    mov r0, sp
    bl sub_8000C98
    add sp, sp, #0x20
    strb r0, [r5,#0x9] // (byte_2000879 - 0x2000870)
    mov r0, #0
    pop {r4-r7,pc}
off_80A4020:    .word off_80A3DA4
// end of function sub_80A3FE4

.thumb
sub_80A4024:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a4026-2] // =byte_2000870
    strb r0, [r5,#0x8] // (byte_2000878 - 0x2000870)
    mov r0, #0
    strb r0, [r5,#0x9] // (byte_2000879 - 0x2000870)
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0
    .byte 0
// end of function sub_80A4024

.thumb
ho_80A4034:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a4036-2] // =byte_2000870
    ldr r4, [pc, #0x80a4060-0x80a4038-4] // =off_80A3DA4
    ldrb r0, [r5,#0x8] // (byte_2000878 - 0x2000870)
    lsl r0, r0, #2
    ldr r4, [r4,r0]
    ldrb r0, [r5,#0x9] // (byte_2000879 - 0x2000870)
    lsl r0, r0, #3
    ldr r4, [r4,r0]
    add r7, r4, #0
    ldrh r0, [r5,#0x6] // (word_2000876 - 0x2000870)
    add r4, r4, r0
loc_80A404C:
    ldr r0, [pc, #0x80a4064-0x80a404c-4] // =jt_80A4068
    ldrh r1, [r4]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    beq loc_80A404C
    sub r4, r4, r7
    strh r4, [r5,#0x6] // (word_2000876 - 0x2000870)
    pop {r4-r7,pc}
    .byte 0, 0
off_80A4060:    .word off_80A3DA4
off_80A4064:    .word jt_80A4068
jt_80A4068:    .word cb_80A4084+1
    .word cb_80A409C+1
    .word cb_80A4104+1
    .word cb_80A4178+1
    .word cb_80A4188+1
    .word cb_80A41A8+1
    .word cb_80A41D0+1
// end of function ho_80A4034

.thumb
cb_80A4084:
    push {r5-r7,lr}
    mov r0, #2
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    mov r0, #4
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    add r4, #6
    mov r0, #0
    pop {r5-r7,pc}
// end of function cb_80A4084

.thumb
cb_80A409C:
    push {r5-r7,lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80A40CC
    mov r0, #1
    strb r0, [r5,#0xa]
    ldrh r0, [r4,#6]
    strh r0, [r5,#4]
    mov r0, #2
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    ldr r1, [r5,#0xc]
    sub r0, r0, r1
    ldrh r1, [r4,#6]
    svc 6
    str r0, [r5,#0x14]
    mov r0, #4
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x10]
    sub r0, r0, r1
    ldrh r1, [r4,#6]
    svc 6
    str r0, [r5,#0x18]
loc_80A40CC:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x14]
    add r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    str r0, [r5,#0x10]
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bgt loc_80A40FE
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #2
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    mov r0, #4
    ldrsh r0, [r4,r0]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    add r4, #8
    mov r0, #0
    pop {r5-r7,pc}
loc_80A40FE:
    mov r0, #1
    pop {r5-r7,pc}
    .balign 4, 0x00
// end of function cb_80A409C

.thumb
cb_80A4104:
    push {r5-r7,lr}
    ldr r0, [pc, #0x80a4174-0x80a4106-2] // =byte_2006140
    mov r1, #0xd8
    ldrh r7, [r4,#2]
    mul r7, r1
    add r7, r7, r0
    add r7, #0xa0
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80A413E
    mov r0, #1
    strb r0, [r5,#0xa]
    ldrh r0, [r4,#4]
    strh r0, [r5,#4]
    ldrh r0, [r7,#0xc]
    lsl r0, r0, #0x10
    ldr r1, [r5,#0xc]
    sub r0, r0, r1
    ldrh r1, [r4,#4]
    svc 6
    str r0, [r5,#0x14]
    ldrb r0, [r7,#0xe]
    sub r0, #0xe
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x10]
    sub r0, r0, r1
    ldrh r1, [r4,#4]
    svc 6
    str r0, [r5,#0x18]
loc_80A413E:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x14]
    add r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    str r0, [r5,#0x10]
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bgt loc_80A416E
    mov r0, #0
    strb r0, [r5,#0xa]
    ldrh r0, [r7,#0xc]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrb r0, [r7,#0xe]
    sub r0, #0xe
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    add r4, #6
    mov r0, #0
    pop {r5-r7,pc}
loc_80A416E:
    mov r0, #1
    pop {r5-r7,pc}
    .balign 4, 0x00
off_80A4174:    .word byte_2006140
// end of function cb_80A4104

.thumb
cb_80A4178:
    push {r5-r7,lr}
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #3
    pop {r5-r7,pc}
    .balign 4, 0x00
// end of function cb_80A4178

.thumb
cb_80A4188:
    push {r5-r7,lr}
    mov r0, #1
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80A41A2
    bl sub_8001AE0
    mov r1, #1
    and r0, r1
    strb r0, [r5,#2]
    mov r0, #1
    strb r0, [r5,#0xa]
loc_80A41A2:
    mov r0, #2
    pop {r5-r7,pc}
    .balign 4, 0x00
// end of function cb_80A4188

.thumb
cb_80A41A8:
    push {r5-r7,lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_80A41B8
    mov r0, #1
    strb r0, [r5,#0xa]
    ldrh r0, [r4,#2]
    strh r0, [r5,#4]
loc_80A41B8:
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bgt loc_80A41CA
    mov r0, #0
    strb r0, [r5,#0xa]
    add r4, #4
    mov r0, #0
    pop {r5-r7,pc}
loc_80A41CA:
    mov r0, #1
    pop {r5-r7,pc}
    .byte 0, 0
// end of function cb_80A41A8

.thumb
cb_80A41D0:
    push {r5-r7,lr}
    mov r0, #2
    strb r0, [r5,#2]
    add r4, #2
    mov r0, #1
    pop {r5-r7,pc}
// end of function cb_80A41D0

.thumb
sub_80A41DC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a41de-2] // =byte_2000870
    ldr r0, [r5,#0xc] // (dword_200087C - 0x2000870)
    ldr r1, [r5,#0x10] // (dword_2000880 - 0x2000870)
    ldrb r2, [r5,#0xb] // (byte_200087B - 0x2000870)
    ldrb r3, [r5,#0x2] // (byte_2000872 - 0x2000870)
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80A41DC

.thumb
sub_80A41EC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a41ee-2] // =byte_2000870
    ldrb r0, [r5,#0x2] // (byte_2000872 - 0x2000870)
    ldrb r1, [r5,#0xb] // (byte_200087B - 0x2000870)
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80A41EC

.thumb
sub_80A41F8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a8-0x80a41fa-2] // =byte_2000870
    mov r0, #1
    strb r0, [r5,#0xb] // (byte_200087B - 0x2000870)
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80A41F8

.thumb
sub_80A4204:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a42a0-0x80a4206-2] // =byte_20004D0
    ldr r7, [pc, #0x80a42a8-0x80a4208-4] // =byte_2000870
    bl sub_80A42AC
    beq loc_80A4214
    mov r0, #0
    pop {r4-r7,pc}
loc_80A4214:
    bl sub_80A42CA
    bne loc_80A4296
    bl sub_80A434A
    bne loc_80A4292
    ldrb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    tst r0, r0
    beq loc_80A423E
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_20004D3 - 0x20004d0)
    bl sub_80540BA
    ldrh r0, [r7,#0x1e] // (word_200088E - 0x2000870)
    tst r0, r0
    beq loc_80A423E
    mov r0, #0x38 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
loc_80A423E:
    bl sub_8054018
    bl sub_8054054
    bl sub_80A42FA
    beq loc_80A427E
    ldrh r0, [r7,#0x1c] // (word_200088C - 0x2000870)
    sub r0, #1
    blt loc_80A425A
    strh r0, [r7,#0x1c] // (word_200088C - 0x2000870)
    mov r0, #0
    strh r0, [r7,#0x1e] // (word_200088E - 0x2000870)
    b loc_80A427E
loc_80A425A:
    ldrh r0, [r7,#0x1e] // (word_200088E - 0x2000870)
    tst r0, r0
    bne loc_80A4272
    bl sub_80A3FE4
    mov r0, #0x38 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
    mov r0, #1
    strh r0, [r7,#0x1e] // (word_200088E - 0x2000870)
loc_80A4272:
    bl ho_80A4034
    cmp r0, #2
    beq loc_80A4282
    cmp r0, #3
    beq loc_80A4296
loc_80A427E:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A4282:
    bl sub_80A4332
    beq loc_80A4292
    push {r0-r7}
    ldr r0, [pc, #0x80a42a4-0x80a428a-2] // =dword_809C094
    bl sub_802BC60
    pop {r0-r7}
loc_80A4292:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A4296:
    bl sub_80A3FBC
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A42A0:    .word byte_20004D0
off_80A42A4:    .word dword_809C094
off_80A42A8:    .word byte_2000870
// end of function sub_80A4204

.thumb
sub_80A42AC:
    push {r4-r7,lr}
    mov r0, #0xb
    mov r1, #0x84
    bl sub_8024FF0
    beq loc_80A42C6
    mov r0, #0xb
    mov r1, #0x85
    bl sub_8024FF0
    bne loc_80A42C6
    mov r0, #0
    pop {r4-r7,pc}
loc_80A42C6:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A42AC

.thumb
sub_80A42CA:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x80a42ec-0x80a42d4-4] // =dword_80A42F0
loc_80A42D6:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_80A42E8
    cmp r0, r7
    beq loc_80A42E4
    add r6, #2
    b loc_80A42D6
loc_80A42E4:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A42E8:
    mov r0, #1
    pop {r4-r7,pc}
off_80A42EC:    .word dword_80A42F0
dword_80A42F0:    .word 0x1940094, 0x5940294
    .byte 0x0, 0x0
// end of function sub_80A42CA

.thumb
sub_80A42FA:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A432E
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne loc_80A432E
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne loc_80A432E
    mov r0, #1
    bl sub_802D92C
    bne loc_80A432E
    bl sub_80A6FB6
    bne loc_80A432E
    bl sub_802BCF2
    bne loc_80A432E
    mov r0, #1
    pop {r4-r7,pc}
loc_80A432E:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A42FA

.thumb
sub_80A4332:
    push {r4-r7,lr}
    bl sub_80A6FB6
    bne loc_80A4346
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A4346
    mov r0, #1
    pop {r4-r7,pc}
loc_80A4346:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_80A4332

.thumb
sub_80A434A:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_802D92C
    bne loc_80A4358
    mov r0, #0
    pop {r4-r7,pc}
loc_80A4358:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A434A

.thumb
dead_ho_80A435C:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r5, [pc, #0x80a4388-0x80a4360-4] // =byte_2000870
    ldr r0, [pc, #0x80a4370-0x80a4362-2] // =jt_80A4374
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A4370:    .word jt_80A4374
jt_80A4374:    .word cb_80A438C+1
    .word cb_80A43BA+1
    .word cb_80A43DE+1
    .word cb_80A4402+1
    .word cb_80A444C+1
off_80A4388:    .word byte_2000870
// end of function dead_ho_80A435C

.thumb
cb_80A438C:
    push {r4-r7,lr}
    mov r0, #0x1e
    strb r0, [r5,#4]
    bl sub_80540BA
    mov r0, #0x38 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
    mov r0, #0
    bl sub_80A4024
    bl ho_80A4034
    mov r0, #4
    strb r0, [r5]
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A438C

.thumb
cb_80A43BA:
    push {r4-r7,lr}
    bl ho_80A4034
    cmp r0, #2
    blt loc_80A43D2
    bl sub_80A41F8
    mov r0, #3
    bl sub_80A4590
    mov r0, #8
    strb r0, [r5]
loc_80A43D2:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A43BA

.thumb
cb_80A43DE:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A43F6
    mov r0, #0x39 
    mov r1, #1
    mov r2, #0
    bl sub_80540C6
    mov r0, #0xc
    strb r0, [r5]
loc_80A43F6:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A43DE

.thumb
cb_80A4402:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r4, [r4,#2]
    mov r0, #0x10
    tst r4, r0
    beq loc_80A4436
    mov r0, #0x6d 
    bl sub_80A6DB8
    mov r0, #4
    bl sub_80A6F0E
    mov r0, #1
    bl sub_80540EC
    ldr r0, [pc, #0x80a4448-0x80a4422-2] // =0x198
    bl f500_8000558
    ldr r0, [pc, #0x80a4444-0x80a4428-4] // =dword_80A3D54+24
    bl sub_8002028
    mov r0, #0x1e
    strb r0, [r5,#4]
    mov r0, #0x10
    strb r0, [r5]
loc_80A4436:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A4444:    .word dword_80A3D54+0x18
dword_80A4448:    .word 0x19D
// end of function cb_80A4402

.thumb
cb_80A444C:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    bge loc_80A4464
    mov r0, #0xc
    bl sub_8002078
    bl sub_80540BA
    mov r0, #0
    pop {r4-r7,pc}
loc_80A4464:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A444C

.thumb
dead_ho_80A4470:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r5, [pc, #0x80a4494-0x80a4474-4] // =byte_2000870
    ldr r0, [pc, #0x80a4484-0x80a4476-2] // =jt_80A4488
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A4484:    .word jt_80A4488
jt_80A4488:    .word cb_80A4498+1
    .word cb_80A44C6+1
    .word cb_80A44EE+1
off_80A4494:    .word byte_2000870
// end of function dead_ho_80A4470

.thumb
cb_80A4498:
    push {r4-r7,lr}
    mov r0, #0x1e
    strb r0, [r5,#4]
    bl sub_80540BA
    mov r0, #0x38 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
    mov r0, #1
    bl sub_80A4024
    bl ho_80A4034
    mov r0, #4
    strb r0, [r5]
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4498

.thumb
cb_80A44C6:
    push {r4-r7,lr}
    bl ho_80A4034
    cmp r0, #2
    blt loc_80A44E2
    bl sub_80540BA
    mov r0, #7
    bl sub_80A4590
    mov r0, #8
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
loc_80A44E2:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A44C6

.thumb
cb_80A44EE:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A44FC
    mov r0, #0
    pop {r4-r7,pc}
loc_80A44FC:
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A44EE

.thumb
dead_ho_80A4500:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r5, [pc, #0x80a4524-0x80a4504-4] // =byte_2000870
    ldr r0, [pc, #0x80a4514-0x80a4506-2] // =jt_80A4518
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A4514:    .word jt_80A4518
jt_80A4518:    .word cb_80A4528+1
    .word cb_80A4556+1
    .word cb_80A457E+1
off_80A4524:    .word byte_2000870
// end of function dead_ho_80A4500

.thumb
cb_80A4528:
    push {r4-r7,lr}
    mov r0, #0x1e
    strb r0, [r5,#4]
    bl sub_80540BA
    mov r0, #0x38 
    mov r1, #0
    mov r2, #0
    bl sub_80540C6
    mov r0, #2
    bl sub_80A4024
    bl ho_80A4034
    mov r0, #4
    strb r0, [r5]
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4528

.thumb
cb_80A4556:
    push {r4-r7,lr}
    bl ho_80A4034
    cmp r0, #2
    blt loc_80A4572
    bl sub_80540BA
    mov r0, #0xa
    bl sub_80A4590
    mov r0, #8
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
loc_80A4572:
    bl sub_8054018
    bl sub_8054054
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4556

.thumb
cb_80A457E:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A458C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A458C:
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A457E

.thumb
sub_80A4590:
    push {r4-r7,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x80a459c-0x80a4594-4] // =unk_2036800
    bl sub_804E2A4
    pop {r4-r7,pc}
off_80A459C:    .word unk_2036800
    .word 0x4, 0x3002C50, 0xFF0D070C, 0x80002108, 0x4, 0x1, 0x0
    .word unk_3002C50
dword_80A45C0:    .word 0xFF0D080C, 0x80000014, 0x4, 0x80000015, 0x4, 0x80000016
    .word 0x4, 0x80000015, 0x4, 0x1, 0x71D742E, 0xFFFF0001
    .word 0x9C0000, 0xE40000, 0x40000, 0x9C0000, 0xF20000, 0x0
    .word 0x71D742E, 0xFFFF0001, 0x9C0000, 0x200000, 0x40000
    .word 0x9C0000, 0x2E0000, 0x0
    .word 0x71D742E, 0xFFFF0001, 0xFF800000, 0xFFB40000, 0x40000
    .word 0xFF800000, 0xFFC20000, 0x0
    .word 0x71D742E, 0xFFFF0001, 0xFF800000, 0xFF2C0000, 0x40000
    .word 0xFF800000, 0xFF3A0000, 0x0
    .word 0x11A732D, 0xFFFF0100, 0xFF380000, 0x1340000, 0x40000
    .word 0xFF2A0000, 0x1340000, 0x0
    .word 0x11A732D, 0xFFFF0100, 0x280000, 0xD40000, 0x40000
    .word 0x1A0000, 0xD40000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0xFF7C0000, 0x800000, 0x40000
    .word 0xFF7C0000, 0x8E0000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0xFF7C0000, 0xFFC00000, 0x40000
    .word 0xFF7C0000, 0xFFCE0000, 0x0
    .word 0x11A732D, 0xFFFF0100, 0xFFC80000, 0xFEF20000, 0x40000
    .word 0xFFBA0000, 0xFEF20000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0xFFBC0000, 0xFF880000, 0x440000
    .word 0xFFBC0000, 0xFF960000, 0x400000, 0x11A732D, 0xFFFF0100
    .word 0x280000, 0xFEF20000, 0x440000, 0x1A0000, 0xFEF20000
    .word 0x400000, 0x71D742E, 0xFFFF0101, 0xFF9E0000, 0xA00000
    .word 0x440000, 0xFF9E0000, 0xAE0000, 0x400000, 0x71D742E
    .word 0xFFFF0101, 0x15E0000, 0xFF780000, 0x40000, 0x15E0000
    .word 0xFF860000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0xFEC00000, 0x400000, 0x40000
    .word 0xFEC00000, 0x4E0000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0x1260000, 0x780000, 0x40000
    .word 0x1260000, 0x860000, 0x0
    .word 0x71D742E, 0xFFFF0101, 0x1860000, 0x180000, 0x40000
    .word 0x1860000, 0x260000, 0x0
    .word 0x11A732D, 0xFFFF0100, 0x1580000, 0xFF0C0000, 0x40000
    .word 0x14A0000, 0xFF0C0000, 0x0
dword_80A4808:    .word 0x4000400, 0x4000400, 0x6000600, 0x6000600, 0x8000800
    .word 0x8000800, 0xA000A00, 0xA000A00, 0x15A000A, 0x20000
    .word 0x1A20032, 0x20002, 0x1A3004B, 0x20003, 0x1A4005A
    .word 0x30005, 0x1A50060, 0x30006, 0x1A60064, 0x40010
    .word 0x90, 0x80A48F4, 0x98A, 0x98B, 0x9B4
    .word 0x88, 0x80A4C0C, 0x98A, 0x98B, 0x0
    .word 0x188
    .word dword_80A4C0C
    .word 0x98A, 0x98B, 0x0
    .word 0x92, 0x80A496C, 0x98C, 0x98D, 0x9B5, 0x192, 0x80A4A44
    .word 0x98C, 0x98D, 0x9B6, 0x292, 0x80A4B2C, 0x98C, 0x98D
    .word 0x9B7, 0x588, 0x80A4C0C, 0x98C, 0x98D, 0x0, 0x0
    .word 0x0, 0x0, 0x0
    .word 0xD400A6, 0x0
    .word 0xD40090, 0x1000000, 0xC4009C, 0x2000000, 0x1400A6
    .word 0x10000, 0x140090, 0x1010000, 0x4009E, 0x2010000
    .word 0xFFA6FF6E, 0x20000, 0xFFA6FF84, 0x1020000, 0xFF96FF7C
    .word 0x2020000, 0xFF1CFF84, 0x30000, 0xFF1CFF70, 0x1030000
    .word 0xFF0CFF84, 0x2030000, 0xFF0CFF70, 0x3030000, 0xFEFCFF84
    .word 0x4030000, 0x0
    .word 0xFF0000, 0x138FF42, 0x40000, 0x12EFF52, 0x1040000
    .word 0x13AFF60, 0x2040000, 0x130FF6C, 0x3040000, 0xCE0030
    .word 0x50000, 0xDC0032, 0x1050000, 0x74FF74, 0x60000
    .word 0x76FF86, 0x1060000, 0x68FF82, 0x2060000, 0x64FF6E
    .word 0x3060000, 0x58FF7A, 0x4060000, 0x58FF64, 0x5060000
    .word 0xFFB4FF74, 0x70000, 0xFFB6FF84, 0x1070000, 0xFFA0FF72
    .word 0x2070000, 0xFFA4FF84, 0x3070000, 0xFF8CFF72, 0x4070000
    .word 0xFF90FF84, 0x5070000, 0xFEE8FFD2, 0x80000, 0xFEF8FFDE
    .word 0x1080000, 0xFF04FFD4, 0x2080000, 0xFEFEFFEE, 0x3080000
    .word 0xFEECFFE6, 0x4080000, 0xFF04FFFC, 0x5080000, 0xFEE8FFFC
    .word 0x6080000, 0xFEF2000A, 0x7080000, 0x0
    .word 0xFF0000, 0xFF78FFB2, 0x90040, 0xFF74FFC4, 0x1090040
    .word 0xFF66FFB8, 0x2090040, 0xFF54FFB4, 0x3090040, 0xFF50FFC2
    .word 0x4090040, 0xFF44FFB8, 0x5090040, 0xFEFC0034, 0xA0040
    .word 0xFEEC0036, 0x10A0040, 0xFEF40040, 0x20A0040, 0xFEFC0050
    .word 0x30A0040, 0xFEEC005A, 0x40A0040, 0xFF00005E, 0x50A0040
    .word 0x96FF94, 0xB0040, 0x94FFA6, 0x10B0040, 0x88FF92
    .word 0x20B0040, 0x7AFF96, 0x30B0040, 0x7EFFA6, 0x40B0040
    .word 0x6CFF98, 0x50B0040, 0xFF6C014E, 0xC0000, 0xFF6E0168
    .word 0x10C0000, 0xFF66015A, 0x20C0000, 0xFF5C014C, 0x30C0000
    .word 0xFF5A0166, 0x40C0000, 0xFF500154, 0x50C0000, 0xFF4C0166
    .word 0x60C0000, 0xFF3E0150, 0x70C0000, 0xFF46016A, 0x80C0000
    .word 0xFF42015E, 0x90C0000, 0x0
    .word 0xFF0000, 0x34FEC8, 0xD0000, 0x34FEAE, 0x10D0000, 0x2AFEBC
    .word 0x20D0000, 0x32FEDA, 0x30D0000, 0x28FED2, 0x40D0000, 0x24FEC4
    .word 0x50D0000, 0x20FEAE, 0x60D0000, 0x18FEBE, 0x70D0000, 0x6D011E
    .word 0xE0000, 0x6A012A, 0x10E0000, 0x5A0122, 0x20E0000, 0xE017E
    .word 0xF0000, 0xC0188, 0x10F0000, 0xFFFA017E, 0x20F0000, 0xFFF0018C
    .word 0x30F0000, 0xFFE6017E, 0x40F0000, 0xFFDA0188, 0x50F0000, 0xFF040162
    .word 0x100000, 0xFF140162, 0x1100000, 0xFF0E0174, 0x2100000, 0xFF2C0196
    .word 0x3100000, 0xFEF6017A, 0x4100000, 0xFEEA0196, 0x5100000, 0xFF30017C
    .word 0x6100000, 0xFEE6017A, 0x7100000, 0xFF180186, 0x8100000, 0xFF020186
    .word 0x9100000, 0x0
    .word 0xFF0000
dword_80A4C0C:    .word 0x0
    .word 0xFF0000, 0x483BB5F0, 0xF75B2110, 0x2009FE89, 0x221021A0
    .word 0xFA06F780, 0x6C3F4657, 0x4E3088BF, 0x68302400, 0xD01A4200
    .word 0xD10C42B8, 0x68B06935, 0xF7801C00, 0xD009F9D7, 0x1C0068F0
    .word 0xF9D2F780, 0x6876D104, 0x3404E00D, 0xE7EA3614, 0x4F262400
    .word 0xF7801C38, 0x3701F99D, 0x2C103401, 0x2000DDF8, 0x2400BDF0
    .word 0x28FF79B0, 0xB401D029, 0xF7801C28, 0xBC01F9B9, 0x4F1CD107
    .word 0x491A183F, 0x1C001840, 0xF9B0F780, 0x79B0D115, 0x18404916
    .word 0xF7801C00, 0xB4F0F98D, 0x79B079F4, 0x43040200, 0x8831201F
    .word 0x88B38872, 0x4120409, 0xF75F041B, 0xBCF0FBC1, 0x1C38E002
    .word 0xF96CF780, 0x34013608, 0x422DE7D2, 0x1C28D002, 0xF972F780
    .word 0xF75D4808, 0x4808F9A5, 0xF9A2F75D, 0x6C094651, 0x7208200B
    .word 0xBDF02000, 0x80A4858, 0x98E, 0x110F, 0x80A45A0
    .word 0x80A45B8, 0x200AA10, 0x481FB5F0, 0xF75B2110, 0x2009FE0F
    .word 0x221021A0, 0xF98CF780, 0xBDF02000
// end of function sub_80A4590

.thumb
sub_80A4D20:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a4d88-0x80a4d22-2] // =byte_200AA10
    ldrb r1, [r5,#0x2] // (byte_200AA12 - 0x200aa10)
    cmp r0, r1
    pop {r4-r7,pc}
// end of function sub_80A4D20

.thumb
dead_ho_80A4D2A:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r7, [pc, #0x80a4d84-0x80a4d2e-2] // =dword_80A45C0+40
    mov r1, #0x20 
    mul r1, r0
    add r7, r7, r1
    ldr r5, [pc, #0x80a4d88-0x80a4d36-2] // =byte_200AA10
    strb r0, [r5,#0x2] // (byte_200AA12 - 0x200aa10)
    ldr r0, [pc, #0x80a4d48-0x80a4d3a-2] // =jt_80A4D4C
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A4D48:    .word jt_80A4D4C
jt_80A4D4C:    .word cb_80A4D8C+1
    .word cb_80A4DD8+1
    .word cb_80A4E12+1
    .word cb_80A4E2A+1
    .word cb_80A4E46+1
    .word cb_80A4E66+1
    .word cb_80A4EF0+1
    .word cb_80A4F68+1
    .word sub_80A4FB4+1
    .word sub_80A4FD2+1
    .word sub_80A5012+1
    .word sub_80A5054+1
    .word sub_80A50A4+1
    .word sub_80A50DC+1
off_80A4D84:    .word dword_80A45C0+0x28
off_80A4D88:    .word byte_200AA10
// end of function dead_ho_80A4D2A

.thumb
cb_80A4D8C:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8025F1E
    ldr r0, [r7,#8]
    ldr r1, [r7,#0xc]
    ldr r2, [r7,#0x10]
    bl sub_8025F28
    bl sub_80A6EA0
    ldrb r0, [r7,#1]
    bl sub_80A6DB8
    ldr r0, [r7,#0x14]
    ldr r1, [r7,#0x18]
    ldr r2, [r7,#0x1c]
    bl sub_80A6DF0
    bl sub_80540BA
    mov r0, #0x3e 
    mov r1, #0
    ldrb r2, [r7,#4]
    bl sub_80540C6
    mov r0, #8
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x1e
    strb r0, [r5,#1]
    bl sub_80A5120
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4D8C

.thumb
cb_80A4DD8:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A4E08
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A4E08
    mov r4, #6
    mov r0, #9
    mov r1, #0xb2
    bl sub_8024FF0
    bne loc_80A4DFE
    mov r0, #9
    mov r1, #0xb2
    bl sub_8024F9C
    mov r4, #1
loc_80A4DFE:
    add r0, r4, #0
    bl sub_80A51AE
    mov r0, #8
    strb r0, [r5]
loc_80A4E08:
    mov r0, #0
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4DD8

.thumb
cb_80A4E12:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A4E20
    mov r0, #0xc
    strb r0, [r5]
loc_80A4E20:
    mov r0, #0
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4E12

.thumb
cb_80A4E2A:
    push {r4-r7,lr}
    bl sub_80A5250
    bne loc_80A4E3C
    bl sub_80A5144
    beq loc_80A4E3C
    mov r0, #0x10
    strb r0, [r5]
loc_80A4E3C:
    mov r0, #0
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4E2A

.thumb
cb_80A4E46:
    push {r4-r7,lr}
    bl sub_80A5250
    bne loc_80A4E5C
    bl sub_80A516C
    beq loc_80A4E5C
    bl sub_80A5120
    mov r0, #0xc
    strb r0, [r5]
loc_80A4E5C:
    mov r0, #0
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function cb_80A4E46

.thumb
cb_80A4E66:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A4EE0
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A4EE0
    ldrb r0, [r5,#7]
    cmp r0, #4
    beq loc_80A4EA4
    ldrb r0, [r5,#6]
    cmp r0, #0
    beq loc_80A4EC4
    ldrb r0, [r7,#1]
    bl sub_80A6DC8
    ldrb r0, [r7,#4]
    lsl r0, r0, #1
    add r0, #1
    bl sub_80A528C
    ldrh r0, [r5,#4]
    bl f500_8000558
    mov r0, #0x16
    strb r0, [r5,#1]
    mov r0, #0x18
    strb r0, [r5]
    b loc_80A4EE0
loc_80A4EA4:
    ldrb r0, [r7,#1]
    bl sub_80A6DC8
    ldrb r0, [r7,#4]
    lsl r0, r0, #1
    add r0, #1
    bl sub_80A528C
    ldrh r0, [r5,#4]
    bl f500_8000558
    mov r0, #0x16
    strb r0, [r5,#1]
    mov r0, #0x1c
    strb r0, [r5]
    b loc_80A4EE0
loc_80A4EC4:
    ldrb r0, [r7,#1]
    bl sub_80A6DC8
    ldrb r0, [r7,#4]
    lsl r0, r0, #1
    bl sub_80A528C
    ldr r0, [pc, #0x80a4eec-0x80a4ed2-2] // =0x158
    bl f500_8000558
    mov r0, #0x16
    strb r0, [r5,#1]
    mov r0, #0x20 
    strb r0, [r5]
loc_80A4EE0:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A4EEC:    .word 0x15A
// end of function cb_80A4E66

.thumb
cb_80A4EF0:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    mov r8, r7
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A4F54
    ldr r6, [pc, #0x80a4f64-0x80a4f00-4] // =0x9A0
    ldrb r7, [r5,#6]
    mov r4, #0
loc_80A4F06:
    add r0, r6, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80A4F1C
    add r0, r6, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    sub r7, #1
    b loc_80A4F22
loc_80A4F1C:
    add r4, #1
    cmp r4, #0x10
    blt loc_80A4F06
loc_80A4F22:
    strb r7, [r5,#6]
    tst r7, r7
    bne loc_80A4F32
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0x24 
    strb r0, [r5]
    b loc_80A4F54
loc_80A4F32:
    mov r7, r8
    ldrb r0, [r7,#1]
    bl sub_80A6DC8
    bl sub_80A5296
    ldrb r0, [r7,#4]
    lsl r0, r0, #1
    add r0, #1
    bl sub_80A528C
    ldrh r0, [r5,#4]
    bl f500_8000558
    mov r0, #0x16
    strb r0, [r5,#1]
    b loc_80A4F54
loc_80A4F54:
    mov r0, #1
    bl sub_80A518C
    pop {r4}
    mov r8, r4
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A4F64:    .word 0x9A0
// end of function cb_80A4EF0

.thumb
cb_80A4F68:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    mov r8, r7
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A4FA2
    ldr r6, [pc, #0x80a4fb0-0x80a4f78-4] // =0x9A0
    mov r4, #0
loc_80A4F7C:
    add r0, r6, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80A4F8E
    add r0, r6, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_80A4F8E:
    add r4, #1
    cmp r4, #0x10
    blt loc_80A4F7C
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0x24 
    strb r0, [r5]
    b loc_80A4FA2
loc_80A4FA2:
    mov r0, #1
    bl sub_80A518C
    pop {r4}
    mov r8, r4
    mov r0, #1
    pop {r4-r7,pc}
off_80A4FB0:    .word 0x9A0
// end of function cb_80A4F68

.thumb
sub_80A4FB4:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A4FC8
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0x24 
    strb r0, [r5]
    b loc_80A4FC8
loc_80A4FC8:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A4FB4

.thumb
sub_80A4FD2:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A5008
    ldrb r0, [r7,#2]
    bl sub_80A6DC8
    bl sub_80A5296
    bl sub_80A51C0
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80A4FFA
    mov r0, #0x3c 
    strb r0, [r5,#1]
    mov r0, #0x28 
    strb r0, [r5]
    b loc_80A5008
loc_80A4FFA:
    mov r0, #5
    bl sub_80A51AE
    mov r0, #0
    strb r0, [r5,#1]
    mov r0, #0x2c 
    strb r0, [r5]
loc_80A5008:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A4FD2

.thumb
sub_80A5012:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    bge loc_80A5040
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    ldr r0, [pc, #0x80a504c-0x80a5024-4] // =0x988
    ldrb r1, [r5,#2]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldr r0, [pc, #0x80a5050-0x80a5030-4] // =0x110F
    ldrb r1, [r5,#2]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0x34 
    strb r0, [r5]
loc_80A5040:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A504C:    .word 0x98E
dword_80A5050:    .word 0x110F
// end of function sub_80A5012

.thumb
sub_80A5054:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80A5090
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_80A506A
    mov r0, #0xb1
    bl f500_8000558
loc_80A506A:
    bl fA00_8000C44
    ldr r3, [pc, #0x80a509c-0x80a506e-2] // =dword_80A50A0
    ldrb r3, [r3,r0]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r0, [r1,#0x20]
    sub r0, r0, r3
    bgt loc_80A507E
    mov r0, #1
loc_80A507E:
    strh r0, [r1,#0x20]
    mov r0, #0x6b 
    bl f500_8000558
    mov r0, #0x71 
    bl sub_80A6DB8
    mov r0, #0x30 
    strb r0, [r5]
loc_80A5090:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A509C:    .word dword_80A50A0
dword_80A50A0:    .word 0xFF060301
// end of function sub_80A5054

.thumb
sub_80A50A4:
    push {r4-r7,lr}
    bl sub_80A6F88
    cmp r0, #0xc0
    bne loc_80A50D2
    ldrb r0, [r5,#1]
    add r0, #1
    strb r0, [r5,#1]
    cmp r0, #5
    bge loc_80A50BE
    mov r0, #0x2c 
    strb r0, [r5]
    b loc_80A50D2
loc_80A50BE:
    ldrb r0, [r7,#1]
    bl sub_80A6DC8
    mov r0, #0
    strb r0, [r5,#1]
    bl sub_80A5120
    mov r0, #0xc
    strb r0, [r5]
    b loc_80A50D2
loc_80A50D2:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A50A4

.thumb
sub_80A50DC:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A5116
    bl sub_80A6E94
    ldrb r0, [r7,#3]
    add r0, #0
    bl sub_80A6DB8
    ldrb r0, [r7,#3]
    bl sub_80A6F0E
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r1, [r1,#0x28]
    add r1, #0x24 
    bl sub_8025F1E
    bl sub_80540BA
    mov r0, #9
    mov r1, #0xa0
    mov r2, #0x10
    bl sub_8025034
    mov r0, #0
    pop {r4-r7,pc}
loc_80A5116:
    mov r0, #1
    bl sub_80A518C
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A50DC

.thumb
sub_80A5120:
    push {r4-r7,lr}
    mov r0, #0
    strh r0, [r5,#8]
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    lsl r0, r0, #1
    ldrb r1, [r7,#5]
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x80a5140-0x80a5136-2] // =dword_80A4808
    ldrh r0, [r0,r1]
    strh r0, [r5,#0xa]
    pop {r4-r7,pc}
    .byte 0, 0
off_80A5140:    .word dword_80A4808
// end of function sub_80A5120

.thumb
sub_80A5144:
    push {r4-r7,lr}
    ldrh r0, [r5,#8]
    ldrh r1, [r5,#0xa]
    add r0, r0, r1
    mov r2, #0
    mov r1, #0x64 
    lsl r1, r1, #8
    cmp r0, r1
    blt loc_80A5164
    mov r2, #1
    add r0, r1, #0
    push {r0,r2}
    ldr r0, [pc, #0x80a5188-0x80a515c-4] // =0x123
    bl f500_8000558
    pop {r0,r2}
loc_80A5164:
    strh r0, [r5,#8]
    add r0, r2, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_80A5144

.thumb
sub_80A516C:
    push {r4-r7,lr}
    ldrh r0, [r5,#8]
    ldrh r1, [r5,#0xa]
    sub r0, r0, r1
    mov r2, #0
    cmp r0, #0
    bgt loc_80A517E
    mov r2, #1
    mov r0, #0
loc_80A517E:
    strh r0, [r5,#8]
    add r0, r2, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A5188:    .word 0x123
// end of function sub_80A516C

.thumb
sub_80A518C:
    push {r4-r7,lr}
    push {r0}
    bl sub_8054018
    bl sub_8054054
    pop {r1}
    ldrh r0, [r5,#8]
    lsr r0, r0, #8
    tst r1, r1
    beq loc_80A51A8
    cmp r0, #0x61 
    bge loc_80A51A8
    mov r1, #0
loc_80A51A8:
    bl sub_810CE50
    pop {r4-r7,pc}
// end of function sub_80A518C

.thumb
sub_80A51AE:
    push {r4-r7,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x80a51bc-0x80a51b2-2] // =unk_2036800
    bl sub_804E2A4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A51BC:    .word unk_2036800
// end of function sub_80A51AE

.thumb
sub_80A51C0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r7, [r7,#4]
    ldr r6, [pc, #0x80a5214-0x80a51c8-4] // =dword_80A4808+80
    mov r4, #0
loc_80A51CC:
    ldr r0, [r6]
    tst r0, r0
    beq loc_80A520C
    cmp r0, r7
    bne loc_80A51DA
    ldr r6, [r6,#4]
    b loc_80A51E0
loc_80A51DA:
    add r4, #4
    add r6, #0x14
    b loc_80A51CC
loc_80A51E0:
    mov r4, #0
    mov r7, #0
loc_80A51E4:
    ldrb r0, [r6,#6]
    cmp r0, #0xff
    beq loc_80A5206
    ldrb r1, [r5,#2]
    cmp r0, r1
    bne loc_80A5200
    ldrb r0, [r6,#7]
    ldr r1, [pc, #0x80a5218-0x80a51f2-2] // =0x9A0
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80A5200
    add r7, #1
loc_80A5200:
    add r6, #8
    add r4, #1
    b loc_80A51E4
loc_80A5206:
    add r0, r7, #0
    strb r0, [r5,#3]
    pop {r4-r7,pc}
loc_80A520C:
    mov r0, #0
    strb r0, [r5,#3]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A5214:    .word dword_80A4808+0x50
off_80A5218:    .word 0x9A0
// end of function sub_80A51C0

.thumb
sub_80A521C:
    push {r4-r7,lr}
    ldrh r0, [r5,#8]
    lsr r0, r0, #8
    mov r4, #0
    ldr r6, [pc, #0x80a524c-0x80a5224-4] // =dword_80A4808+32
loc_80A5226:
    ldrb r1, [r6]
    cmp r0, r1
    ble loc_80A5230
    add r6, #8
    b loc_80A5226
loc_80A5230:
    ldrh r0, [r6,#2]
    ldrh r1, [r6,#4]
    ldrh r2, [r6,#6]
    strh r0, [r5,#4]
    strb r2, [r5,#7]
    ldrb r0, [r5,#3]
    cmp r1, r0
    ble loc_80A5242
    add r1, r0, #0
loc_80A5242:
    strb r1, [r5,#6]
    sub r0, r0, r1
    strb r1, [r5,#3]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A524C:    .word dword_80A4808+0x20
// end of function sub_80A521C

.thumb
sub_80A5250:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r4, [r4,#2]
    mov r0, #2
    tst r4, r0
    beq loc_80A5284
    bl sub_80A51C0
    bl sub_80A521C
    ldrb r0, [r5,#7]
    bl sub_80A51AE
    mov r0, #0x1e
    strb r0, [r5,#1]
    mov r0, #0x14
    strb r0, [r5]
    ldrb r0, [r5,#7]
    cmp r0, #4
    bne loc_80A5280
    ldr r0, [pc, #0x80a5288-0x80a527a-2] // =0x158
    bl f500_8000558
loc_80A5280:
    mov r0, #1
    pop {r4-r7,pc}
loc_80A5284:
    mov r0, #0
    pop {r4-r7,pc}
off_80A5288:    .word 0x158
// end of function sub_80A5250

.thumb
sub_80A528C:
    push {r4-r7,lr}
    bl sub_80B1DFE
    str r0, [r5,#0xc]
    pop {r4-r7,pc}
// end of function sub_80A528C

.thumb
sub_80A5296:
    push {r4-r7,lr}
    ldr r0, [r5,#0xc]
    tst r0, r0
    beq locret_80A52A8
    add r5, r0, #0
    bl sub_800447A
    mov r0, #0
    str r0, [r5,#0xc]
locret_80A52A8:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80A5296

.thumb
sub_80A52AC:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a536c-0x80a52ae-2] // =byte_20014E0
    sub sp, sp, #0xc
    mov r0, sp
    mov r1, #0xc
    mov r2, #0x20 
    bl f900_80009B4
    mov r0, #0
    strb r0, [r5]
    bl fA00_8000C3C
    cmp r0, #2
    ble loc_80A52CA
    mov r0, #2
loc_80A52CA:
    mov r6, #0xa
    mul r6, r0
    add r6, #0xa
    mov r4, #0
loc_80A52D2:
    mov r0, sp
    mov r1, #5
    bl sub_8000C98
    mov r1, #0
    mov r2, sp
    strb r1, [r2,r0]
    add r1, r6, r0
    mov r0, #3
    add r0, r0, r4
    strb r1, [r5,r0]
    add r4, #1
    cmp r4, #5
    blt loc_80A52D2
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_80A52AC

.thumb
sub_80A52F2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a536c-0x80a52f4-4] // =byte_20014E0
    mov r0, #0xb
    mov r1, #0x2e 
    mov r2, #4
    bl sub_8025034
    mov r0, #0xb
    mov r1, #0x32 
    bl sub_8024FB8
    mov r0, #0xb
    mov r1, #0x33 
    bl sub_8024FB8
    mov r0, #0xb
    mov r1, #0x2d 
    bl sub_8024FF0
    beq locret_80A5352
    ldrb r0, [r5]
    cmp r0, #5
    bge locret_80A5352
    add r0, #3
    ldrb r0, [r5,r0]
    strb r0, [r5,#0x2] // (byte_20014E2 - 0x20014e0)
    sub sp, sp, #0x40
    mov r0, sp
    mov r1, #0x40 
    mov r2, #0x40 
    bl f900_80009B4
    mov r0, sp
    mov r1, #0x40 
    bl sub_8000C98
    cmp r0, #0
    bne loc_80A5350
    bl sub_8001AE0
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80a5354-0x80a5346-2] // =0xB14
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_80A5350:
    add sp, sp, #0x40
locret_80A5352:
    pop {r4-r7,pc}
dword_80A5354:    .word 0xB2E
// end of function sub_80A52F2

.thumb
sub_80A5358:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80a536c-0x80a535a-2] // =byte_20014E0
    ldrb r0, [r5]
    add r0, #1
    cmp r0, #5
    bge loc_80A5366
    strb r0, [r5]
loc_80A5366:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A536C:    .word byte_20014E0
dword_80A5370:    .word 0xC4003C, 0x0
    .word 0xFE4EFFB2, 0x40000, 0xC4003C, 0x80000, 0xFE4EFFB2
    .word 0xC0000, 0x4816B5F0, 0xF75B210C, 0xF000FACB, 0x4D13FA85
    .word 0x70E8201F, 0xBDF02000
// end of function sub_80A5358

.thumb
sub_80A53A8:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r7, [pc, #0x80a53e8-0x80a53ac-4] // =dword_80A5370
    mov r1, #8
    mul r1, r0
    add r7, r7, r1
    ldr r5, [pc, #0x80a53ec-0x80a53b4-4] // =unk_200AB20
    ldrb r0, [r5,#0x3] // (byte_200AB23 - 0x200ab20)
    add r0, #1
    strb r0, [r5,#0x3] // (byte_200AB23 - 0x200ab20)
    mov r1, #0x1f
    and r1, r0
    bne loc_80A53C8
    mov r0, #0xf0
    bl f500_8000558
loc_80A53C8:
    ldr r0, [pc, #0x80a53d4-0x80a53c8-4] // =off_80A53D8
    ldrb r1, [r7,#6]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_80A53D4:    .word off_80A53D8
off_80A53D8:    .word sub_80A5564+1
    .word sub_80A5488+1
    .word ho_cb_80A5616+1
    .word sub_80A53F0+1
off_80A53E8:    .word dword_80A5370
off_80A53EC:    .word unk_200AB20
// end of function sub_80A53A8

.thumb
sub_80A53F0:
    push {lr}
    ldr r0, [pc, #0x80a5400-0x80a53f2-2] // =off_80A5404
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80A5400:    .word off_80A5404
off_80A5404:    .word sub_80A5410+1
    .word sub_80A5436+1
    .word sub_80A546E+1
// end of function sub_80A53F0

.thumb
sub_80A5410:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0xff
    bl sub_8025FE0
    bl sub_80A6EDE
    bl sub_80A6E88
    bl sub_80A5706
    mov r0, #0x1f
    strb r0, [r5,#9]
    mov r0, #0xb4
    strb r0, [r5,#2]
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A5410

.thumb
sub_80A5436:
    push {r4-r7,lr}
    ldrb r0, [r5,#3]
    mov r1, #7
    and r0, r1
    bne loc_80A5450
    ldrb r0, [r5,#9]
    sub r0, #1
    bpl loc_80A5448
    mov r0, #0
loc_80A5448:
    strb r0, [r5,#9]
    lsl r0, r0, #8
    bl sub_80A5744
loc_80A5450:
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A546A
    mov r0, #0x3c 
    strb r0, [r5,#2]
    mov r0, #0x1b
    bl sub_80A6DB8
    bl sub_80A6F96
    mov r0, #8
    strb r0, [r5]
loc_80A546A:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A5436

.thumb
sub_80A546E:
    push {r4-r7,lr}
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A5484
    bl sub_80A6ED0
    bl sub_80A6E7C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A5484:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A546E

.thumb
sub_80A5488:
    push {lr}
    ldr r0, [pc, #0x80a5498-0x80a548a-2] // =off_80A549C
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A5498:    .word off_80A549C
off_80A549C:    .word sub_80A54A8+1
    .word sub_80A54E2+1
    .word sub_80A553A+1
// end of function sub_80A5488

.thumb
sub_80A54A8:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8025F1E
    mov r0, #0
    mov r1, #0xff
    bl sub_8025FE0
    bl sub_80A6EDE
    bl sub_80A6E88
    mov r0, #0x1b
    bl sub_80A6DB8
    bl sub_80A6F96
    bl sub_80A5706
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    ldrb r0, [r5,#8]
    mov r0, #0xb4
    strb r0, [r5,#2]
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A54A8

.thumb
sub_80A54E2:
    push {r4-r7,lr}
    ldrb r0, [r5,#3]
    mov r1, #7
    and r0, r1
    bne loc_80A5502
    ldrb r0, [r5,#9]
    add r0, #1
    cmp r0, #0x1f
    blt loc_80A54F6
    mov r0, #0x1f
loc_80A54F6:
    strb r0, [r5,#9]
    lsl r0, r0, #8
    mov r1, #4
    orr r0, r1
    bl sub_80A5744
loc_80A5502:
    ldrb r0, [r5,#3]
    mov r1, #3
    and r0, r1
    bne loc_80A551E
    ldrb r0, [r5,#8]
    add r0, #1
    cmp r0, #0x1f
    blt loc_80A5518
    bl sub_80A6FA6
    mov r0, #0x1f
loc_80A5518:
    strb r0, [r5,#8]
    bl sub_80A572A
loc_80A551E:
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A5536
    mov r0, #0x3c 
    strb r0, [r5,#2]
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5]
loc_80A5536:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A54E2

.thumb
sub_80A553A:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_80A5560
    mov r3, r10
    ldr r3, [r3,#0x40]
    mov r0, #0xc
    strb r0, [r3,#0x12]
    mov r0, #0xff
    strb r0, [r3,#0x13]
    bl sub_80A6ED0
    bl sub_80A6E7C
    mov r0, #0
    bl loc_80A6F56
    mov r0, #0
    pop {r4-r7,pc}
loc_80A5560:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A553A

.thumb
sub_80A5564:
    push {lr}
    ldr r0, [pc, #0x80a5574-0x80a5566-2] // =off_80A5578
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A5574:    .word off_80A5578
off_80A5578:    .word sub_80A5580+1
    .word sub_80A55B2+1
// end of function sub_80A5564

.thumb
sub_80A5580:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8025F1E
    mov r0, #0
    mov r1, #0xff
    bl sub_8025FE0
    bl sub_80A6EDE
    bl sub_80A6E88
    mov r0, #0x1b
    bl sub_80A6DB8
    bl sub_80A5706
    mov r0, #0
    strb r0, [r5,#8]
    mov r0, #0xf0
    strb r0, [r5,#2]
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A5580

.thumb
sub_80A55B2:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_80A55CE
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A55DE
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
loc_80A55CE:
    bl sub_8005B5C
    beq loc_80A55DE
    mov r0, #0
    bl loc_80A6F56
    mov r0, #0
    pop {r4-r7,pc}
loc_80A55DE:
    mov r0, #0x1b
    bl sub_80A6DB8
    mov r0, #1
    bl sub_80A575C
    bl sub_80A6E16
    asr r2, r2, #0x10
    mov r0, #0x20 
    add r2, r2, r0
    add r1, r2, #0
    bl sub_80A57EC
    ldrb r0, [r5,#3]
    mov r1, #7
    and r0, r1
    bne loc_80A5612
    ldrb r0, [r5,#8]
    add r0, #1
    cmp r0, #0x1f
    blt loc_80A560C
    mov r0, #0x1f
loc_80A560C:
    strb r0, [r5,#8]
    bl sub_80A572A
loc_80A5612:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A55B2

.thumb
ho_cb_80A5616:
    push {lr}
    ldr r0, [pc, #0x80a5624-0x80a5618-4] // =jt_80A5628
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A5624:    .word jt_80A5628
jt_80A5628:    .word sub_80A5638+1
    .word sub_80A567E+1
    .word sub_80A5694+1
    .word sub_80A56DE+1
// end of function ho_cb_80A5616

.thumb
sub_80A5638:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8025F1E
    mov r0, #0
    mov r1, #0xff
    bl sub_8025FE0
    bl sub_80A6EDE
    bl sub_80A6E88
    bl sub_80A6F96
    bl sub_80A6E16
    mov r3, #0x20 
    neg r3, r3
    lsl r3, r3, #0x10
    add r2, r2, r3
    bl loc_80A6E0C
    mov r0, #0x1c
    bl sub_80A6DB8
    bl sub_80A5706
    mov r0, #8
    mov r1, #8
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A5638

.thumb
sub_80A567E:
    push {r4-r7,lr}
    bl sub_80A57C8
    mov r0, #0xf0
    strb r0, [r5,#2]
    mov r0, #0x1f
    strb r0, [r5,#8]
    mov r0, #8
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A567E

.thumb
sub_80A5694:
    push {r4-r7,lr}
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_80A56AC
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A56AC
    mov r0, #0x1e
    strb r0, [r5,#2]
    mov r0, #0xc
    strb r0, [r5]
loc_80A56AC:
    bl sub_80A57AA
    bl sub_80A57D6
    bl sub_80A6E16
    asr r2, r2, #0x10
    mov r0, #0x20 
    add r2, r2, r0
    add r1, r2, #0
    bl sub_80A57EC
    ldrb r0, [r5,#3]
    mov r1, #7
    and r0, r1
    bne loc_80A56DA
    ldrb r0, [r5,#8]
    sub r0, #1
    bpl loc_80A56D4
    mov r0, #0
loc_80A56D4:
    strb r0, [r5,#8]
    bl sub_80A572A
loc_80A56DA:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A5694

.thumb
sub_80A56DE:
    push {r4-r7,lr}
    ldrb r0, [r5,#2]
    sub r0, #1
    strb r0, [r5,#2]
    bne loc_80A5702
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r1, [r1,#0x28]
    add r1, #0x24 
    bl sub_8025F1E
    bl sub_80A6ED0
    bl sub_80A6E7C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A5702:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_80A56DE

.thumb
sub_80A5706:
    push {r4,lr}
    push {r5}
    mov r0, #0x2b 
    ldrh r1, [r7]
    lsl r1, r1, #0x10
    ldrh r2, [r7,#2]
    lsl r2, r2, #0x10
    ldrh r3, [r7,#4]
    lsl r3, r3, #0x10
    ldrb r4, [r7,#6]
    bl sub_8004440
    add r0, r5, #0
    pop {r5}
    mov r1, #0x60 
    add r1, r1, r0
    str r1, [r5,#4]
    pop {r4,pc}
// end of function sub_80A5706

.thumb
sub_80A572A:
    push {lr}
    ldrb r0, [r5,#8]
    add r1, r0, #0
    lsl r1, r1, #5
    orr r0, r1
    lsl r1, r1, #5
    orr r0, r1
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
    bl loc_80A6F56
    pop {pc}
// end of function sub_80A572A

.thumb
sub_80A5744:
    push {r4,r5,lr}
    push {r0}
    bl sub_80A6E16
    add r3, r2, #0
    add r2, r1, #0
    add r1, r0, #0
    mov r0, #0x2c 
    pop {r4}
    bl sub_8004440
    pop {r4,r5,pc}
// end of function sub_80A5744

.thumb
sub_80A575C:
    push {r4,lr}
    ldrb r1, [r5,#3]
    mov r2, #7
    and r1, r2
    bne locret_80A57A8
    push {r0}
    bl sub_80A6E16
    mov r4, #1
    ldrh r3, [r7]
    lsr r0, r0, #0x10
    cmp r0, r3
    beq loc_80A577C
    blt loc_80A577A
    neg r4, r4
loc_80A577A:
    add r0, r0, r4
loc_80A577C:
    lsl r0, r0, #0x10
    mov r4, #1
    ldrh r3, [r7,#2]
    lsr r1, r1, #0x10
    cmp r1, r3
    beq loc_80A578E
    blt loc_80A578C
    neg r4, r4
loc_80A578C:
    add r1, r1, r4
loc_80A578E:
    lsl r1, r1, #0x10
    pop {r3}
    tst r3, r3
    beq loc_80A57A4
    asr r2, r2, #0x10
    mov r3, #0x20 
    neg r3, r3
    cmp r2, r3
    ble loc_80A57A2
    sub r2, #1
loc_80A57A2:
    lsl r2, r2, #0x10
loc_80A57A4:
    bl loc_80A6E0C
locret_80A57A8:
    pop {r4,pc}
// end of function sub_80A575C

.thumb
sub_80A57AA:
    push {r4,lr}
    ldrb r0, [r5,#3]
    mov r1, #7
    and r0, r1
    bne locret_80A57C6
    bl sub_80A6E16
    cmp r2, #0
    bpl locret_80A57C6
    asr r2, r2, #0x10
    add r2, #1
    lsl r2, r2, #0x10
    bl loc_80A6E0C
locret_80A57C6:
    pop {r4,pc}
// end of function sub_80A57AA

.thumb
sub_80A57C8:
    push {lr}
    ldr r0, [pc, #0x80a58a4-0x80a57ca-2] // =0x6010000
    ldr r1, [pc, #0x80a57e4-0x80a57cc-4] // =unk_2010580
    ldr r2, [pc, #0x80a57e8-0x80a57ce-2] // =0x240
    bl f900_80009A0
    pop {pc}
// end of function sub_80A57C8

.thumb
sub_80A57D6:
    push {lr}
    ldr r0, [pc, #0x80a57e4-0x80a57d8-4] // =unk_2010580
    ldr r1, [pc, #0x80a58a4-0x80a57da-2] // =0x6010000
    ldr r2, [pc, #0x80a57e8-0x80a57dc-4] // =0x240
    bl loc_8000870
    pop {pc}
off_80A57E4:    .word unk_2010580
off_80A57E8:    .word 0x240
// end of function sub_80A57D6

.thumb
sub_80A57EC:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r7, r1, #0
loc_80A57F4:
    cmp r4, r5
    ble locret_80A581A
    add r6, r5, #0
    lsr r6, r6, #3
    lsl r6, r6, #2
    ldr r3, [pc, #0x80a5844-0x80a57fe-2] // =off_80A5848
    ldr r6, [r3,r6]
    push {r5}
    cmp r5, r7
    beq loc_80A580C
    mov r5, #0
    b loc_80A5810
loc_80A580C:
    mov r0, #7
    and r5, r0
loc_80A5810:
    bl sub_80A581C
    pop {r5}
    add r5, #8
    b loc_80A57F4
locret_80A581A:
    pop {r4-r7,pc}
// end of function sub_80A57EC

.thumb
sub_80A581C:
    push {lr}
loc_80A581E:
    ldrh r1, [r6]
    add r0, r1, #0
    lsl r0, r0, #0x11
    bcc loc_80A5828
    pop {pc}
loc_80A5828:
    ldr r0, [pc, #0x80a5880-0x80a5828-4] // =dword_80A5884
    ldr r2, [pc, #0x80a58a4-0x80a582a-2] // =0x6010000
    lsl r1, r1, #5
    add r1, r1, r2
    add r2, r5, #0
    lsl r2, r2, #2
    add r1, r1, r2
    mov r2, #8
    sub r2, r2, r5
    lsl r2, r2, #2
    bl loc_8000870
    add r6, #2
    b loc_80A581E
off_80A5844:    .word off_80A5848
off_80A5848:    .word dword_80A5858
    .word 0x80A5862, 0x80A586C, 0x80A5876
dword_80A5858:    .word 0x40003, 0x60005, 0x78000, 0x90008, 0x8000000A, 0xC000B
    .word 0xE000D, 0xF8000, 0x110010, 0x80000012
off_80A5880:    .word dword_80A5884
dword_80A5884:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_80A58A4:    .word 0x6010000
// end of function sub_80A581C

.thumb
sub_80A58A8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a58bc-0x80a58aa-2] // =off_80A58C0
    ldr r1, [pc, #0x80a58d0-0x80a58ac-4] // =dword_80A58D4
    ldr r2, [pc, #0x80a58dc-0x80a58ae-2] // =word_200F980
    bl sub_8025908
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_200AB20
off_80A58BC:    .word off_80A58C0
off_80A58C0:    .word dword_84C45B0
    .word 0x884C4638, 0x20, 0x0
off_80A58D0:    .word dword_80A58D4
dword_80A58D4:    .word 0x6014000, 0x3002780
off_80A58DC:    .word word_200F980
dword_80A58E0:    .word 0x8, 0x10000, 0xFFFF0000, 0x9, 0x10000, 0x0
    .word 0xA, 0x8000, 0x8000, 0xB, 0x0
    .word 0x10000, 0xC, 0xFFFF0000, 0x10000, 0x10D, 0xFFFF0000
    .word 0x0
    .word 0x10E, 0xFFFF8000, 0xFFFF8000, 0xF, 0x0
dword_80A593C:    .word 0xFFFF0000, 0x8, 0x8000, 0xFFFF8000, 0x9, 0x8000, 0x0
    .word 0xA, 0x4000, 0x4000, 0xB, 0x0
    .word 0x8000, 0xB, 0xFFFF8000, 0x8000, 0x10D, 0xFFFF8000
    .word 0x0
    .word 0x10E, 0xFFFFC000, 0xFFFFC000, 0xF, 0x0
dword_80A599C:    .word 0xFFFF8000, 0x10, 0x20000, 0xFFFE0000, 0x11, 0x20000
    .word 0x0
    .word 0x12, 0x10000, 0x10000, 0x13, 0x0
    .word 0x20000, 0x14, 0xFFFE0000, 0x20000, 0x115, 0xFFFE0000
    .word 0x0
    .word 0x116, 0xFFFF0000, 0xFFFF0000, 0x17, 0x0
dword_80A59FC:    .word 0xFFFE0000, 0x10, 0x10000, 0xFFFF0000, 0x11, 0x10000
    .word 0x0
    .word 0x12, 0x8000, 0x8000, 0x13, 0x0
    .word 0x10000, 0x14, 0xFFFF0000, 0x10000, 0x115, 0xFFFF0000
    .word 0x0
    .word 0x116, 0xFFFF8000, 0xFFFF8000, 0x17, 0x0
dword_80A5A5C:    .word 0xFFFF0000, 0xC, 0x10000, 0xFFFF0000, 0xD, 0x10000
    .word 0x0
    .word 0xE, 0x8000, 0x8000, 0xF, 0x0
    .word 0x10000, 0x8, 0xFFFF0000, 0x10000, 0x109, 0xFFFF0000
    .word 0x0
    .word 0x10A, 0xFFFF8000, 0xFFFF8000, 0xB, 0x0
dword_80A5ABC:    .word 0xFFFF0000, 0xC, 0x8000, 0xFFFF8000, 0xD, 0x8000, 0x0
    .word 0xE, 0x4000, 0x4000, 0xF, 0x0
    .word 0x8000, 0x8, 0xFFFF8000, 0x8000, 0x109, 0xFFFF8000, 0x0
    .word 0x10A, 0xFFFFC000, 0xFFFFC000, 0xB, 0x0
dword_80A5B1C:    .word 0xFFFF8000, 0x14, 0x20000, 0xFFFE0000, 0x15, 0x20000
    .word 0x0
    .word 0x16, 0x10000, 0x10000, 0x17, 0x0
    .word 0x20000, 0x10, 0xFFFE0000, 0x20000, 0x111, 0xFFFE0000
    .word 0x0
    .word 0x112, 0xFFFF0000, 0xFFFF0000, 0x13, 0x0
dword_80A5B7C:    .word 0xFFFE0000, 0x14, 0x10000, 0xFFFF0000, 0x15, 0x10000
    .word 0x0
    .word 0x16, 0x8000, 0x8000, 0x17, 0x0
    .word 0x10000, 0x10, 0xFFFF0000, 0x10000, 0x111, 0xFFFF0000
    .word 0x0
    .word 0x112, 0xFFFF8000, 0xFFFF8000, 0x13, 0x0
dword_80A5BDC:    .word 0xFFFF0000, 0x8, 0x10000, 0xFFFF0000, 0x50, 0x10000
    .word 0x0
    .word 0xA, 0x8000, 0x8000, 0x51, 0x0
    .word 0x10000, 0xC, 0xFFFF0000, 0x10000, 0x152, 0xFFFF0000
    .word 0x0
    .word 0x10E, 0xFFFF8000, 0xFFFF8000, 0x53, 0x0
dword_80A5C3C:    .word 0xFFFF0000, 0x1, 0x40000, 0x0
    .word 0x3, 0x0
    .word 0x40000, 0x105, 0xFFFC0000, 0x0
    .word 0x7, 0x0
    .word 0xFFFC0000, 0x1, 0x40000, 0x0
    .word 0x3, 0x0
    .word 0x40000, 0x105, 0xFFFC0000, 0x0
    .word 0x7, 0x0
    .word 0xFFFC0000
// end of function sub_80A58A8

.thumb
sub_80A5CA0:
    push {lr}
    ldr r0, [pc, #0x80a5d04-0x80a5ca2-2] // =off_80A5D08
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    beq loc_80A5CBE
    strb r0, [r5,#0x15]
    bl sub_8002DF0
    bl sub_800281C
loc_80A5CBE:
    ldr r7, [pc, #0x80a5d14-0x80a5cbe-2] // =byte_2000890
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_80A5CFC
    bl sub_8002D60
    ldrb r0, [r7,#0x2] // (byte_2000892 - 0x2000890)
    ldrb r1, [r7]
    ldrb r2, [r7,#0x1] // (byte_2000891 - 0x2000890)
    cmp r0, #0
    bne loc_80A5CE2
    cmp r1, #0x40 
    bne loc_80A5CE2
    cmp r2, #0x40 
    bne loc_80A5CE2
    b loc_80A5CE8
loc_80A5CE2:
    bl sub_8002C70
    b loc_80A5CEC
loc_80A5CE8:
    bl sub_8002D9E
loc_80A5CEC:
    ldrh r0, [r7,#0x6] // (word_2000896 - 0x2000890)
    cmp r0, #0
    bne loc_80A5CF8
    bl sub_8002F1A
    b loc_80A5CFC
loc_80A5CF8:
    bl sub_8002F02
loc_80A5CFC:
    bl sub_800283C
    pop {pc}
    .balign 4, 0x00
off_80A5D04:    .word off_80A5D08
off_80A5D08:    .word sub_80A5D1C+1
    .word sub_80A5DA0+1
    .word sub_80A6288+1
off_80A5D14:    .word byte_2000890
    .word byte_200B1F0
// end of function sub_80A5CA0

.thumb
sub_80A5D1C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r2, #0x40 
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    mov r3, #0x80
    cmp r0, r3
    bge loc_80A5D32
    mov r2, #0
loc_80A5D32:
    mov r0, #0x80
    mov r1, #0x18
    bl sub_800285C
    mov r0, #0
    strb r0, [r5,#0x14]
    mov r0, #0xff
    strb r0, [r5,#0x15]
    bl sub_8002FC2
    mov r0, r10
    ldr r0, [r0,#0x40]
    str r5, [r0,#0x28]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x50 
    add r0, r0, r5
    mov r1, #0x20 
    bl f900_8000930
    mov r0, #1
    strb r0, [r5,#0x17]
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0x16]
    ldrb r0, [r5,#0x10]
    mov r1, #7
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0
    mov r3, #0x54 
    strh r0, [r5,r3]
    mov r3, #0x56 
    strh r0, [r5,r3]
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    str r0, [r5,#0x48]
    str r0, [r5,#0x4c]
    strb r0, [r5,#0xd]
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strh r0, [r5,#0x1c]
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x1a]
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    str r0, [r5,#0x30]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    bl sub_80A5DA0
    pop {pc}
// end of function sub_80A5D1C

.thumb
sub_80A5DA0:
    push {lr}
    mov r0, #0
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x1b]
    strb r0, [r5,#0x13]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0xe]
    strb r1, [r5,#0xf]
    ldrb r1, [r5,#0xd]
    strb r1, [r5,#0xe]
    strb r0, [r5,#0xd]
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    str r0, [r5,#0x30]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    ldr r7, [pc, #0x80a5e7c-0x80a5dc4-4] // =off_80A5E58
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_80A68F4
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq loc_80A5DE0
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_80267A6
loc_80A5DE0:
    ldrb r0, [r5,#0x17]
    tst r0, r0
    beq loc_80A5DF2
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
loc_80A5DF2:
    mov r0, #0x11
    mov r1, #0x79 
    bl sub_8024FF0
    beq loc_80A5E08
    mov r0, #0x11
    mov r1, #0x79 
    bl sub_8024FB8
    bl sub_80A6D46
loc_80A5E08:
    ldrb r0, [r5,#0x16]
    tst r0, r0
    bne loc_80A5E16
    add r0, r5, #0
    add r0, #0x24 
    bl ho_802747C
loc_80A5E16:
    bl sub_8002E60
    bl sub_80A6C44
    tst r0, r0
    beq loc_80A5E52
    bl sub_802BCF2
    tst r0, r0
    bne loc_80A5E52
    ldrb r1, [r5,#0x13]
    mov r7, r10
    ldr r7, [r7,#0x44]
    ldrh r0, [r7,#0x26]
    add r0, r0, r1
    strh r0, [r7,#0x26]
    ldr r0, [r7,#0x40]
    tst r0, r0
    beq loc_80A5E44
    sub r0, r0, r1
    bge loc_80A5E42
    mov r0, #0
loc_80A5E42:
    str r0, [r7,#0x40]
loc_80A5E44:
    ldr r0, [r7,#0x44]
    tst r0, r0
    beq loc_80A5E52
    sub r0, r0, r1
    bge loc_80A5E50
    mov r0, #0
loc_80A5E50:
    str r0, [r7,#0x44]
loc_80A5E52:
    bl sub_80A6C64
    pop {pc}
off_80A5E58:    .word sub_80A5E84+1
    .word sub_80A5F30+1
    .word sub_80A6078+1
    .word sub_80A61A6+1
    .word sub_80A6240+1
    .word sub_80A6290+1
    .word sub_80A6354+1
    .word sub_80A637C+1
    .word sub_80A6618+1
off_80A5E7C:    .word off_80A5E58
    .word 0xFFFF
// end of function sub_80A5DA0

.thumb
sub_80A5E84:
    push {r4,lr}
    bl sub_80A6708
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80A5EAA
    ldrb r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrb r4, [r4,#4]
    cmp r4, #0x80
    blt loc_80A5EA4
    ldr r4, [pc, #0x80a5f2c-0x80a5e9c-4] // =byte_2000890
    ldrb r4, [r4,#0x4] // (byte_2000894 - 0x2000890)
    tst r4, r4
    beq loc_80A5EA4
loc_80A5EA4:
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
loc_80A5EAA:
    bl sub_80A68CA
    beq loc_80A5EB8
    mov r0, #0x1c
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5EB8:
    bl sub_80A68E4
    beq loc_80A5EC6
    mov r0, #0x20 
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5EC6:
    bl sub_80A6874
    tst r0, r0
    beq loc_80A5ED6
    mov r0, #4
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5ED6:
    bl sub_80A687E
    tst r0, r0
    beq loc_80A5EE6
    mov r0, #8
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5EE6:
    bl sub_80A6888
    tst r0, r0
    beq loc_80A5EF6
    mov r0, #0x10
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5EF6:
    bl sub_80A6B78
    tst r0, r0
    beq loc_80A5F06
    mov r0, #0xc
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5F06:
    bl sub_80A6BCC
    tst r0, r0
    beq loc_80A5F1A
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x14
    bl sub_80A6CA8
    pop {r4,pc}
loc_80A5F1A:
    bl sub_80A68BE
    tst r0, r0
    beq locret_80A5F28
    mov r0, #0x18
    bl sub_80A6CA8
locret_80A5F28:
    pop {r4,pc}
    .balign 4, 0x00
off_80A5F2C:    .word byte_2000890
// end of function sub_80A5E84

.thumb
sub_80A5F30:
    push {lr}
    bl sub_80A6708
    tst r0, r0
    beq loc_80A5F50
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_80A5F46
    mov r0, #0
    strb r0, [r5,#0xa]
loc_80A5F46:
    ldr r7, [pc, #0x80a5fe0-0x80a5f46-2] // =off_80A5FD8
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_80A5F50:
    bl sub_80A68BE
    tst r0, r0
    beq loc_80A5F60
    mov r0, #0x18
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5F60:
    bl sub_80A6BCC
    tst r0, r0
    beq loc_80A5F74
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x14
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5F74:
    bl sub_80A6888
    tst r0, r0
    beq loc_80A5F84
    mov r0, #0x10
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5F84:
    bl sub_80A6B78
    tst r0, r0
    beq loc_80A5F94
    mov r0, #0xc
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5F94:
    bl sub_80A687E
    tst r0, r0
    beq loc_80A5FA4
    mov r0, #8
    bl sub_80A6CA8
    b loc_80A5FD0
loc_80A5FA4:
    bl sub_80A68CA
    beq loc_80A5FB2
    mov r0, #0x1c
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5FB2:
    bl sub_80A68E4
    beq loc_80A5FC0
    mov r0, #0x20 
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5FC0:
    bl sub_80A6874
    tst r0, r0
    bne loc_80A5FD0
    mov r0, #0
    bl sub_80A6CA8
    b locret_80A5FD4
loc_80A5FD0:
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
locret_80A5FD4:
    pop {pc}
    .balign 4, 0x00
off_80A5FD8:    .word sub_80A5FE4+1
    .word sub_80A6034+1
off_80A5FE0:    .word off_80A5FD8
// end of function sub_80A5F30

.thumb
sub_80A5FE4:
    push {lr}
    mov r1, #0
    ldr r7, [pc, #0x80a6160-0x80a5fe8-4] // =byte_2000890
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_80A5FF6
    ldrb r1, [r7,#0x3] // (byte_2000893 - 0x2000890)
loc_80A5FF6:
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x80a6020-0x80a5ff8-4] // =off_80A6024
    ldr r7, [r7,r1]
    ldr r6, [pc, #0x80a6328-0x80a5ffc-4] // =byte_200B1F0
    ldr r1, [r6,#0x18] // (dword_200B208 - 0x200b1f0)
    tst r1, r1
    beq loc_80A6006
    ldr r7, [r6,#0x20] // (dword_200B210 - 0x200b1f0)
loc_80A6006:
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x40]
    ldr r0, [r7,#8]
    str r0, [r5,#0x44]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
off_80A6020:    .word off_80A6024
off_80A6024:    .word dword_80A58E0
    .word dword_80A593C+4
    .word dword_80A5A5C+4
    .word dword_80A5ABC+4
// end of function sub_80A5FE4

.thumb
sub_80A6034:
    push {lr}
    bl sub_80A6B54
    tst r0, r0
    beq loc_80A606A
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    mov r2, #0
    mov r3, #1
    cmp r1, #1
    bne loc_80A6052
    mov r2, #1
    mov r3, #2
loc_80A6052:
    strb r3, [r5,#0x12]
    ldr r0, [r5,#0x40]
    lsl r0, r2
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    lsl r0, r2
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    pop {pc}
loc_80A606A:
    ldr r0, [r5,#0x30]
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    pop {pc}
// end of function sub_80A6034

.thumb
sub_80A6078:
    push {lr}
    bl sub_80A6708
    tst r0, r0
    beq loc_80A6098
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_80A608E
    mov r0, #0
    strb r0, [r5,#0xa]
loc_80A608E:
    ldr r7, [pc, #0x80a6128-0x80a608e-2] // =off_80A6120
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_80A6098:
    bl sub_80A68BE
    tst r0, r0
    beq loc_80A60A8
    mov r0, #0x18
    bl sub_80A6CA8
    b locret_80A611C
loc_80A60A8:
    bl sub_80A6BCC
    tst r0, r0
    beq loc_80A60BC
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x14
    bl sub_80A6CA8
    b locret_80A611C
loc_80A60BC:
    bl sub_80A6888
    tst r0, r0
    beq loc_80A60CC
    mov r0, #0x10
    bl sub_80A6CA8
    b locret_80A611C
loc_80A60CC:
    bl sub_80A6B78
    tst r0, r0
    beq loc_80A60DC
    mov r0, #0xc
    bl sub_80A6CA8
    b locret_80A611C
loc_80A60DC:
    bl sub_80A68CA
    beq loc_80A60EA
    mov r0, #0x1c
    bl sub_80A6CA8
    b loc_80A6118
loc_80A60EA:
    bl sub_80A68E4
    beq loc_80A60F8
    mov r0, #0x20 
    bl sub_80A6CA8
    b loc_80A6118
loc_80A60F8:
    bl sub_80A6874
    tst r0, r0
    beq loc_80A6108
    mov r0, #4
    bl sub_80A6CA8
    b loc_80A6118
loc_80A6108:
    bl sub_80A687E
    tst r0, r0
    bne loc_80A6118
    mov r0, #0
    bl sub_80A6CA8
    b locret_80A611C
loc_80A6118:
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
locret_80A611C:
    pop {pc}
    .byte 0, 0
off_80A6120:    .word sub_80A612C+1
    .word sub_80A6178+1
off_80A6128:    .word off_80A6120
// end of function sub_80A6078

.thumb
sub_80A612C:
    push {lr}
    mov r1, #0
    ldr r7, [pc, #0x80a6160-0x80a6130-4] // =byte_2000890
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_80A613E
    ldrb r1, [r7,#0x3] // (byte_2000893 - 0x2000890)
loc_80A613E:
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x80a6164-0x80a6140-4] // =off_80A6168
    ldr r7, [r7,r1]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x40]
    ldr r0, [r7,#8]
    str r0, [r5,#0x44]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
    .byte 0, 0
off_80A6160:    .word byte_2000890
off_80A6164:    .word off_80A6168
off_80A6168:    .word dword_80A599C+4
    .word dword_80A59FC+4
    .word dword_80A5B1C+4
    .word dword_80A5B7C+4
// end of function sub_80A612C

.thumb
sub_80A6178:
    push {lr}
    bl sub_80A6B54
    tst r0, r0
    beq loc_80A6198
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    mov r0, #2
    strb r0, [r5,#0x12]
    pop {pc}
loc_80A6198:
    ldr r0, [r5,#0x30]
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    pop {pc}
// end of function sub_80A6178

.thumb
sub_80A61A6:
    push {lr}
    ldr r7, [pc, #0x80a61ec-0x80a61a8-4] // =off_80A61E0
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    ldr r7, [pc, #0x80a6328-0x80a61b2-2] // =byte_200B1F0
    ldrb r0, [r7,#0x1c] // (byte_200B20C - 0x200b1f0)
    cmp r0, #0xff
    beq loc_80A61C0
    strb r0, [r5,#0x14]
    mov r0, #0xff
    strb r0, [r7,#0x1c] // (byte_200B20C - 0x200b1f0)
loc_80A61C0:
    bl sub_80A6BCC
    tst r0, r0
    beq locret_80A61DE
    mov r0, #2
    strb r0, [r7,#0x1] // (byte_200B1F1 - 0x200b1f0)
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    strb r0, [r7,#0x1a]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0x14
    bl sub_80A6CA8
locret_80A61DE:
    pop {pc}
off_80A61E0:    .word sub_80A61F0+1
    .word 0x80A6211, 0x80A6221
off_80A61EC:    .word off_80A61E0
// end of function sub_80A61A6

.thumb
sub_80A61F0:
    push {lr}
    bl sub_802BCF2
    tst r0, r0
    bne loc_80A622A
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x14]
    ldr r7, [r5,#0x60]
    ldrb r0, [r7,#0x17]
    tst r0, r0
    bne locret_80A620E
    mov r0, #1
    strb r0, [r7,#0x18]
    mov r0, #4
    strb r0, [r5,#0xa]
locret_80A620E:
    pop {pc}
    push {lr}
    ldr r7, [r5,#0x60]
    ldrb r0, [r7,#0xa]
    cmp r0, #4
    bne locret_80A621E
    mov r0, #8
    strb r0, [r5,#0xa]
locret_80A621E:
    pop {pc}
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80A623E
loc_80A622A:
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    strb r0, [r7,#0x1a]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
locret_80A623E:
    pop {pc}
// end of function sub_80A61F0

.thumb
sub_80A6240:
    push {lr}
    ldr r7, [pc, #0x80a6258-0x80a6242-2] // =0x80A6250
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .byte 0, 0
    .word sub_80A625C+1
    .word sub_80A6272+1
dword_80A6258:    .word 0x80A6250
// end of function sub_80A6240

.thumb
sub_80A625C:
    push {lr}
    mov r0, #4
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x11]
loc_80A626C:
    bl sub_804E294
    pop {pc}
// end of function sub_80A625C

.thumb
sub_80A6272:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80A6286
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
loc_80A6282:
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
locret_80A6286:
    pop {pc}
// end of function sub_80A6272

.thumb
sub_80A6288:
    push {lr}
    bl sub_80038EE
    pop {pc}
// end of function sub_80A6288

.thumb
sub_80A6290:
    push {lr}
    ldr r7, [pc, #0x80a6328-0x80a6292-2] // =byte_200B1F0
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    str r0, [r5,#0x30]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    ldr r0, [r7,#0x8] // (dword_200B1F8 - 0x200b1f0)
    str r0, [r5,#0x24]
    ldr r0, [r7,#0xc] // (dword_200B1FC - 0x200b1f0)
    str r0, [r5,#0x28]
    ldr r0, [r7,#0x10] // (dword_200B200 - 0x200b1f0)
    str r0, [r5,#0x2c]
    ldrb r0, [r7,#0x15] // (byte_200B205 - 0x200b1f0)
    tst r0, r0
    bne loc_80A62B8
    ldrb r0, [r7,#0x2] // (byte_200B1F2 - 0x200b1f0)
    strb r0, [r5,#0x14]
    b loc_80A62C2
loc_80A62B8:
    ldr r7, [pc, #0x80a6350-0x80a62b8-4] // =dword_80A632C
    ldrb r0, [r5,#0xb]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_80A62C2:
    bl sub_80A6BDA
    tst r0, r0
    bne loc_80A62D4
    ldr r6, [pc, #0x80a6324-0x80a62ca-2] // =dword_80A6318
    ldrb r0, [r7,#0x1] // (byte_200B1F1 - 0x200b1f0)
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    str r0, [r5,#8]
loc_80A62D4:
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq loc_80A62E2
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_80267A6
loc_80A62E2:
    ldr r7, [pc, #0x80a6328-0x80a62e2-2] // =byte_200B1F0
    ldr r0, [r5,#0x24]
    str r0, [r7,#0x8] // (dword_200B1F8 - 0x200b1f0)
    ldr r0, [r5,#0x28]
    str r0, [r7,#0xc] // (dword_200B1FC - 0x200b1f0)
    ldr r0, [r5,#0x2c]
    str r0, [r7,#0x10] // (dword_200B200 - 0x200b1f0)
    ldrb r0, [r5,#0x17]
    tst r0, r0
    beq loc_80A6302
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
loc_80A6302:
    ldrb r0, [r5,#0x16]
    tst r0, r0
    bne loc_80A6310
    add r0, r5, #0
    add r0, #0x24 
    bl ho_802747C
loc_80A6310:
    bl sub_8002E60
    pop {pc}
    .balign 4, 0x00
dword_80A6318:    .word 0x40004, 0x80C04, 0x4
off_80A6324:    .word dword_80A6318
off_80A6328:    .word byte_200B1F0
dword_80A632C:    .word 0x80A5E85, 0x80A5F31, 0x80A6079, 0x80A61A7, 0x80A6241
    .word 0x80A6291, 0x80A6355, 0x80A637D, 0x80A6619
off_80A6350:    .word dword_80A632C
// end of function sub_80A6290

.thumb
sub_80A6354:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80A6366
    mov r0, #4
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
loc_80A6366:
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80A6378
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
locret_80A6378:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80A6354

.thumb
sub_80A637C:
    push {lr}
    ldr r7, [pc, #0x80a63d4-0x80a637e-2] // =off_80A63AC
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_80A6BCC
    tst r0, r0
    beq locret_80A63AA
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x11
    mov r1, #0x77 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FB8
    mov r0, #0x14
    bl sub_80A6CA8
locret_80A63AA:
    pop {pc}
off_80A63AC:    .word sub_80A63D8+1
    .word sub_80A6444+1
    .word sub_80A649E+1
    .word sub_80A648E+1
    .word sub_80A64F0+1
    .word sub_80A65A0+1
    .word sub_80A656C+1
    .word sub_80A658C+1
    .word sub_80A65BE+1
    .word sub_80A65D4+1
off_80A63D4:    .word off_80A63AC
// end of function sub_80A637C

.thumb
sub_80A63D8:
    push {lr}
    ldr r4, [pc, #0x80a643c-0x80a63da-2] // =0x8
    mov r6, #0xa
    bl sub_80A7250
    mov r0, #0x4f 
    bl sub_802D3F8
    bne loc_80A641A
    mov r0, #0x20 
    strb r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r5,#0x1c]
    lsr r4, r4, #1
    lsl r4, r4, #1
    add r4, #5
    mov r0, #7
    and r4, r0
    mov r1, #8
    add r1, r1, r4
    mov r0, #0x68 
    str r1, [r5,r0]
    mov r0, #0xc
    mul r4, r0
    ldr r0, [pc, #0x80a6440-0x80a6408-4] // =dword_80A58E0
    add r0, r0, r4
    ldr r2, [r0,#4]
    str r2, [r5,#0x40]
    ldr r2, [r0,#8]
    str r2, [r5,#0x44]
    mov r1, #4
    strb r1, [r5,#0x14]
    b locret_80A6438
loc_80A641A:
    mov r0, #0
    strh r0, [r5,#0x1c]
    mov r1, #0x48 
    lsr r4, r4, #1
    add r1, r1, r4
    strb r1, [r5,#0x14]
    mov r0, #0xc0
    bl f500_8000558
    mov r0, #4
    strb r0, [r5,#0xa]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_8002E76
locret_80A6438:
    pop {pc}
    .balign 4, 0x00
dword_80A643C:    .word 0x8
off_80A6440:    .word dword_80A58E0
// end of function sub_80A63D8

.thumb
sub_80A6444:
    push {lr}
    bl sub_80A72AC
    ldrh r0, [r5,#0x1c]
    cmp r0, #0x10
    bne loc_80A6456
    ldrb r1, [r5,#0x14]
    add r1, #4
    strb r1, [r5,#0x14]
loc_80A6456:
    cmp r0, #0x14
    bne loc_80A646C
    mov r0, #0
    strb r0, [r5,#0x16]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0xc
    strb r0, [r5,#0xa]
    bl sub_8002FC2
    b locret_80A648C
loc_80A646C:
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    sub sp, sp, #0x10
    lsl r0, r0, #0x10
    str r0, [sp,#8]
    ldr r0, [r5,#0x24]
    str r0, [sp]
    ldr r0, [r5,#0x28]
    str r0, [sp,#4]
    mov r0, sp
    bl ho_802747C
    strb r0, [r5,#0x16]
    add sp, sp, #0x10
locret_80A648C:
    pop {pc}
// end of function sub_80A6444

.thumb
sub_80A648E:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne locret_80A649C
    mov r0, #8
    strb r0, [r5,#0xa]
locret_80A649C:
    pop {pc}
// end of function sub_80A648E

.thumb
sub_80A649E:
    push {lr}
    bl sub_80A7198
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r1, #0
    ldr r7, [pc, #0x80a64ec-0x80a64aa-2] // =byte_2000890
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x80a64e4-0x80a64ae-2] // =off_80A64E8
    ldr r7, [r7,r1]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    mov r0, #0x10
    strb r0, [r5,#0xa]
    mov r0, #0x11
    mov r1, #0x77 
    bl sub_8024FF0
    beq loc_80A64D2
    bl sub_80A64F0
    b loc_80A64D8
loc_80A64D2:
    mov r0, #0x88
    bl f500_8000558
loc_80A64D8:
    mov r0, #0x11
    mov r1, #0x77 
    bl sub_8024F9C
    pop {pc}
    .balign 4, 0x00
off_80A64E4:    .word off_80A64E8
off_80A64E8:    .word dword_80A5BDC+4
off_80A64EC:    .word byte_2000890
// end of function sub_80A649E

.thumb
sub_80A64F0:
    push {lr}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    ldrh r0, [r5,#0x1c]
    sub r0, #1
    strh r0, [r5,#0x1c]
    bne locret_80A655C
    mov r0, #0x6e 
    ldrh r0, [r5,r0]
    ldr r1, [pc, #0x80a6560-0x80a650e-2] // =0xFF
    and r1, r0
    cmp r1, #0xff
    beq loc_80A652E
    ldr r1, [pc, #0x80a6564-0x80a6516-2] // =0xFF00
    add r2, r0, #0
    and r2, r1
    tst r2, r2
    bne loc_80A6520
loc_80A6520:
    mov r1, #0xff
    and r0, r1
    mov r3, #0x6c 
    strh r0, [r5,r3]
    mov r0, #8
    strb r0, [r5,#0xa]
    b locret_80A655C
loc_80A652E:
    lsr r0, r0, #8
    mov r3, #0x6c 
    strh r0, [r5,r3]
    ldr r4, [pc, #0x80a6568-0x80a6534-4] // =0x8
    mov r6, #0xa
    bl sub_80A727E
    mov r0, #0
    strh r0, [r5,#0x1c]
    ldrb r0, [r5,#0x10]
    lsr r0, r0, #1
    mov r1, #0x54 
    add r0, r0, r1
    strb r0, [r5,#0x14]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_8002E76
    mov r0, #0xc0
    bl f500_8000558
    mov r0, #0x18
    strb r0, [r5,#0xa]
locret_80A655C:
    pop {pc}
    .byte 0, 0
dword_80A6560:    .word 0xFF
dword_80A6564:    .word 0xFF00
dword_80A6568:    .word 0x8
// end of function sub_80A64F0

.thumb
sub_80A656C:
    push {lr}
    bl sub_80A72AC
    ldrh r0, [r5,#0x1c]
    cmp r0, #0x14
    bne locret_80A658A
    ldrb r1, [r5,#0x14]
    add r1, #4
    strb r1, [r5,#0x14]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0x1c
    strb r0, [r5,#0xa]
    bl sub_8002FC2
locret_80A658A:
    pop {pc}
// end of function sub_80A656C

.thumb
sub_80A658C:
    push {lr}
    bl sub_8002E36
    cmp r0, #0x80
    bne locret_80A659E
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x14]
    mov r0, #0x14
    strb r0, [r5,#0xa]
locret_80A659E:
    pop {pc}
// end of function sub_80A658C

.thumb
sub_80A65A0:
    push {lr}
    mov r0, #0x11
    mov r1, #0x77 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FB8
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
    pop {pc}
// end of function sub_80A65A0

.thumb
sub_80A65BE:
    push {lr}
    ldr r0, [pc, #0x80a65d0-0x80a65c0-4] // =aNn
    mov r1, #2
    bl sub_804E2A4
    mov r0, #0x24 
    strb r0, [r5,#0xa]
    pop {pc}
    .byte 0, 0
off_80A65D0:    .word aNn
// end of function sub_80A65BE

.thumb
sub_80A65D4:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80A6616
    mov r0, #0x68 
    ldr r1, [r5,r0]
    ldrb r0, [r5,#0x14]
    cmp r0, r1
    beq loc_80A65EA
    strb r1, [r5,#0x14]
loc_80A65EA:
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    ldrh r0, [r5,#0x1c]
    add r0, #1
    strh r0, [r5,#0x1c]
    ldrh r0, [r5,#0x1c]
    cmp r0, #0x10
    bne locret_80A6616
    ldrb r0, [r5,#0x14]
    sub r0, #8
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strb r0, [r5,#0xa]
locret_80A6616:
    pop {pc}
// end of function sub_80A65D4

.thumb
sub_80A6618:
    push {lr}
    ldr r7, [pc, #0x80a664c-0x80a661a-2] // =off_80A6640
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_80A6BCC
    tst r0, r0
    beq locret_80A663E
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FB8
    mov r0, #0x14
    bl sub_80A6CA8
locret_80A663E:
    pop {pc}
off_80A6640:    .word sub_80A6650+1
    .word sub_80A6688+1
    .word sub_80A66C8+1
off_80A664C:    .word off_80A6640
// end of function sub_80A6618

.thumb
sub_80A6650:
    push {lr}
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    cmp r0, #3
    bgt loc_80A665C
    add r0, #4
loc_80A665C:
    mov r2, #0x6e 
    strh r0, [r5,r2]
    ldr r7, [pc, #0x80a6700-0x80a6660-4] // =off_80A6704
    ldr r7, [r7]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x40]
    ldr r0, [r7,#8]
    str r0, [r5,#0x44]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #4
    strb r0, [r5,#0xa]
    mov r0, #1
    mov r1, #0x64 
    strb r0, [r5,r1]
    pop {pc}
// end of function sub_80A6650

.thumb
sub_80A6688:
    push {lr}
    mov r0, #1
    mov r1, #0x64 
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    tst r0, r0
    bne loc_80A66A2
    mov r0, #6
    strb r0, [r5,r1]
    ldr r0, [pc, #0x80a66c4-0x80a669c-4] // =0x140
    bl f500_8000558
loc_80A66A2:
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    mov r2, #0x6e 
    ldrh r3, [r5,r2]
    cmp r0, r3
    bne loc_80A66B2
    mov r0, #8
    strb r0, [r5,#0xa]
loc_80A66B2:
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    pop {pc}
off_80A66C4:    .word 0x140
// end of function sub_80A6688

.thumb
sub_80A66C8:
    push {lr}
    add r0, r5, #0
    add r0, #0x24 
    bl sub_8027646
    cmp r0, #0x4c 
    blt loc_80A66EC
    cmp r0, #0x4f 
    bgt loc_80A66EC
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x24]
    add r1, r1, r0
    str r1, [r5,#0x24]
    ldr r0, [r5,#0x44]
    ldr r1, [r5,#0x28]
    add r1, r1, r0
    str r1, [r5,#0x28]
    b locret_80A66FE
loc_80A66EC:
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FB8
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
locret_80A66FE:
    pop {pc}
off_80A6700:    .word off_80A6704
off_80A6704:    .word dword_80A5C3C+4
// end of function sub_80A66C8

.thumb
sub_80A6708:
    push {lr}
    sub sp, sp, #0xc
    mov r8, sp
    ldr r7, [pc, #0x80a6870-0x80a670e-2] // =byte_200B1F0
    ldrb r0, [r7,#0x15] // (byte_200B205 - 0x200b1f0)
    tst r0, r0
    bne loc_80A67E2
    bl sub_8005B5C
    beq loc_80A67DE
    push {r0}
    mov r0, #0x11
    mov r1, #0x74 
    bl sub_8024FF0
    pop {r0}
    beq loc_80A67CC
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne loc_80A67DE
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne loc_80A67DE
    bl sub_802BCF2
    bne loc_80A67DE
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r1, [r7,#2]
    mov r2, #8
    tst r2, r1
    bne loc_80A67CC
    mov r2, #1
    tst r2, r1
    beq loc_80A6794
    push {r0,r1,r7}
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a6944-0x80a6762-2] // =off_80A6994
    ldr r7, [r7,r0]
    mov r6, r8
    ldr r0, [r5,#0x24]
    ldr r1, [r7]
    add r0, r0, r1
    str r0, [r6]
    ldr r0, [r5,#0x28]
    ldr r1, [r7,#4]
    add r0, r0, r1
    str r0, [r6,#4]
    ldr r0, [r5,#0x2c]
    ldr r1, [r7,#8]
    add r0, r0, r1
    str r0, [r6,#8]
    add r0, r6, #0
    bl sub_8027646
    add r2, r0, #0
    strb r2, [r5,#0xd]
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r2, #1
    strb r2, [r7,#0x1b]
    pop {r0,r1,r7}
loc_80A6794:
    ldrh r1, [r7]
    mov r2, #0xf0
    and r2, r1
    beq loc_80A67CC
    lsr r2, r2, #4
    push {r2,r4,r6}
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r2, [r6,#4]
    cmp r2, #0x80
    blt loc_80A67B4
    ldr r7, [pc, #0x80a6868-0x80a67aa-2] // =0x80A683C
    ldr r4, [pc, #0x80a686c-0x80a67ac-4] // =byte_2000890
    ldrb r3, [r4,#0x4] // (byte_2000894 - 0x2000890)
    tst r3, r3
    bne loc_80A67B6
loc_80A67B4:
    ldr r7, [pc, #0x80a6864-0x80a67b4-4] // =word_80A683A
loc_80A67B6:
    pop {r2,r4,r6}
    ldrb r2, [r7,r2]
    orr r0, r2
    mov r2, #2
    tst r2, r1
    beq loc_80A67C8
    mov r1, #0x20 
    orr r0, r1
    b loc_80A67CC
loc_80A67C8:
    mov r1, #0x10
    orr r0, r1
loc_80A67CC:
    mov r3, #0x54 
    strh r0, [r5,r3]
    mov r1, #0xf
    and r1, r0
    beq loc_80A67DA
    sub r1, #1
    strb r1, [r5,#0x10]
loc_80A67DA:
    add sp, sp, #0xc
    pop {pc}
loc_80A67DE:
    mov r0, #0
    b loc_80A67CC
loc_80A67E2:
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #0
    ldr r7, [pc, #0x80a6870-0x80a67e8-4] // =byte_200B1F0
    ldrh r1, [r7,#0x18] // (dword_200B208 - 0x200b1f0)
    ldrh r1, [r7,#0x1a] // (dword_200B208+2 - 0x200b1f0)
    mov r2, #0xf0
    and r2, r1
    beq loc_80A6824
    lsr r2, r2, #4
    push {r2,r4,r6}
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r2, [r6,#4]
    cmp r2, #0x80
    blt loc_80A680C
    ldr r7, [pc, #0x80a6868-0x80a6802-2] // =0x80A683C
    ldr r4, [pc, #0x80a686c-0x80a6804-4] // =byte_2000890
    ldrb r3, [r4,#0x4] // (byte_2000894 - 0x2000890)
    tst r3, r3
    bne loc_80A680E
loc_80A680C:
    ldr r7, [pc, #0x80a6864-0x80a680c-4] // =word_80A683A
loc_80A680E:
    pop {r2,r4,r6}
    ldrb r2, [r7,r2]
    orr r0, r2
    mov r2, #2
    tst r2, r1
    beq loc_80A6820
    mov r1, #0x20 
    orr r0, r1
    b loc_80A6824
loc_80A6820:
    mov r1, #0x10
    orr r0, r1
loc_80A6824:
    mov r3, #0x54 
    strh r0, [r5,r3]
    mov r1, #0xf
    and r1, r0
    beq loc_80A6832
    sub r1, #1
    strb r1, [r5,#0x10]
loc_80A6832:
    add sp, sp, #0xc
    pop {pc}
    .word 0xE7F42000
word_80A683A:    .hword 0x300
    .word 0x201FF07, 0x405FF08, 0xFFFFFF06, 0x700FFFF, 0x605FF03
    .word 0x801FF04, 0xFFFFFF02, 0xFFFF, 0x200, 0x100
off_80A6864:    .word word_80A683A
dword_80A6868:    .word 0x80A684A
off_80A686C:    .word byte_2000890
off_80A6870:    .word byte_200B1F0
// end of function sub_80A6708

.thumb
sub_80A6874:
    mov r3, #0x54 
    ldrh r0, [r5,r3]
    mov r1, #0x10
    and r0, r1
    mov pc, lr
// end of function sub_80A6874

.thumb
sub_80A687E:
    mov r3, #0x54 
    ldrh r0, [r5,r3]
    mov r1, #0x20 
    and r0, r1
    mov pc, lr
// end of function sub_80A687E

.thumb
sub_80A6888:
    push {lr}
    mov r6, #0
    mov r3, #0x54 
    ldrh r0, [r5,r3]
    mov r1, #1
    lsl r1, r1, #8
    and r0, r1
    beq loc_80A68BA
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x1a]
    ldrb r1, [r7,#0x1b]
    add r0, r0, r1
    bne loc_80A68BA
    mov r0, #1
    bl sub_802D92C
    bne loc_80A68BA
    bl sub_8005B5C
    beq loc_80A68BA
    bl sub_802BCF2
    bne loc_80A68BA
    mov r6, #1
loc_80A68BA:
    add r0, r6, #0
    pop {pc}
// end of function sub_80A6888

.thumb
sub_80A68BE:
    mov r3, #0x54 
    ldrh r0, [r5,r3]
    mov r1, #2
    lsl r1, r1, #8
    and r0, r1
    mov pc, lr
// end of function sub_80A68BE

.thumb
sub_80A68CA:
    push {lr}
    mov r0, #0x11
    mov r1, #0x77 
    bl sub_8024FF0
    beq loc_80A68DA
    mov r0, #0
    b locret_80A68E2
loc_80A68DA:
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
locret_80A68E2:
    pop {pc}
// end of function sub_80A68CA

.thumb
sub_80A68E4:
    push {lr}
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne locret_80A68F2
    mov r0, #0
locret_80A68F2:
    pop {pc}
// end of function sub_80A68E4

.thumb
sub_80A68F4:
    push {lr}
    ldr r0, [pc, #0x80a6978-0x80a68f6-2] // =dword_80A697C
    mov r1, #0x3c 
    add r1, r1, r5
    bl sub_80A694C
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a6948-0x80a6904-4] // =off_80A6A74
    ldr r0, [r7,r0]
    mov r1, #0x58 
    add r1, r1, r5
    bl sub_80A694C
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x1b]
    tst r0, r0
    beq loc_80A6932
    mov r0, #1
    bl sub_802D92C
    bne loc_80A6932
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a6944-0x80a6926-2] // =off_80A6994
    ldr r0, [r7,r0]
    mov r1, #0x50 
    add r1, r1, r5
    bl sub_80A694C
loc_80A6932:
    mov r0, #0
    mov r3, #0x3c 
    str r0, [r5,r3]
    mov r3, #0x50 
    str r0, [r5,r3]
    mov r3, #0x58 
    str r0, [r5,r3]
    pop {pc}
    .balign 4, 0x00
off_80A6944:    .word off_80A6994
off_80A6948:    .word off_80A6A74
// end of function sub_80A68F4

.thumb
sub_80A694C:
    push {r5,lr}
    add r7, r0, #0
    mov r2, #0
    str r2, [r1]
    push {r1}
    ldr r3, [r5,#0x24]
    ldr r0, [r7]
    add r0, r0, r3
    ldr r3, [r5,#0x28]
    ldr r1, [r7,#4]
    add r1, r1, r3
    ldr r3, [r5,#0x2c]
    ldr r2, [r7,#8]
    add r2, r2, r3
    ldr r3, [r7,#0xc]
    ldr r4, [r7,#0x10]
    ldr r5, [r7,#0x14]
    pop {r6}
    bl sub_800364C
    pop {r5,pc}
    .balign 4, 0x00
off_80A6978:    .word dword_80A697C
dword_80A697C:    .word 0x0, 0x0, 0x0
    .word 0x2004
    .word 0x1, 0xFFFF0000
off_80A6994:    .word dword_80A69B4
    .word dword_80A69CC
    .word dword_80A69E4
    .word dword_80A69FC
    .word dword_80A6A14
    .word dword_80A6A2C
    .word dword_80A6A44
    .word dword_80A6A5C
dword_80A69B4:    .word 0x5A826, 0xFFFA57DA, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A69CC:    .word 0x80000, 0x0, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A69E4:    .word 0x5A826, 0x5A826, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A69FC:    .word 0x0
    .word 0x80000, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A6A14:    .word 0xFFFA57DA, 0x5A826, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A6A2C:    .word 0xFFF80000, 0x0, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A6A44:    .word 0xFFFA57DA, 0xFFFA57DA, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
dword_80A6A5C:    .word 0x0
    .word 0xFFF80000, 0x0
    .word 0x2008
    .word 0x4, 0xFFFF0000
off_80A6A74:    .word dword_80A6A94
    .word dword_80A6AAC
    .word dword_80A6AC4
    .word dword_80A6ADC
    .word dword_80A6AF4
    .word dword_80A6B0C
    .word dword_80A6B24
    .word dword_80A6B3C
dword_80A6A94:    .word 0x2D413, 0xFFFD2BED, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6AAC:    .word 0x40000, 0x0, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6AC4:    .word 0x2D413, 0x2D413, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6ADC:    .word 0x0
    .word 0x40000, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6AF4:    .word 0xFFFD2BED, 0x2D413, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6B0C:    .word 0xFFFC0000, 0x0, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6B24:    .word 0xFFFD2BED, 0xFFFD2BED, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .word 0xFFFF0002
dword_80A6B3C:    .word 0x0
    .word 0xFFFC0000, 0x0
    .word 0x2004
    .byte 0, 0, 0, 0
    .byte 2
    .byte 0
    .byte 0xFF
    .byte 0xFF
// end of function sub_80A694C

.thumb
sub_80A6B54:
    push {lr}
    mov r0, #0
    ldrh r1, [r5,#0x1c]
    tst r1, r1
    beq loc_80A6B66
    sub r1, #1
    strh r1, [r5,#0x1c]
    mov r0, #1
    b locret_80A6B70
loc_80A6B66:
    ldr r1, [r5,#0x58]
    ldr r2, [pc, #0x80a6b74-0x80a6b68-4] // =0xFFFF0002
    tst r2, r1
    bne locret_80A6B70
    mov r0, #1
locret_80A6B70:
    pop {pc}
    .byte 0
    .byte 0
dword_80A6B74:    .word 0xFFFF0002
// end of function sub_80A6B54

.thumb
sub_80A6B78:
    push {lr}
    mov r0, #1
    bl sub_802D92C
    bne loc_80A6B88
    bl sub_802BCF2
    beq loc_80A6B8E
loc_80A6B88:
    mov r0, #0
    strb r0, [r5,#7]
    b locret_80A6B9A
loc_80A6B8E:
    ldrb r0, [r5,#7]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a6ba0-0x80a6b92-2] // =off_80A6B9C
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
locret_80A6B9A:
    pop {pc}
off_80A6B9C:    .word sub_80A6BA4+1
off_80A6BA0:    .word off_80A6B9C
// end of function sub_80A6B78

.thumb
sub_80A6BA4:
    push {lr}
    bl sub_80A6CC0
    tst r0, r0
    bne loc_80A6BBA
    mov r0, #1
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x1a]
    mov r0, #1
    pop {pc}
loc_80A6BBA:
    ldrb r0, [r5,#0xf]
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0xe]
    tst r0, r0
    beq loc_80A6BC8
    strb r0, [r7,#3]
loc_80A6BC8:
    mov r0, #0
    pop {pc}
// end of function sub_80A6BA4

.thumb
sub_80A6BCC:
    push {lr}
    ldr r7, [pc, #0x80a6be4-0x80a6bce-2] // =byte_200B1F0
    ldrb r0, [r5,#9]
    cmp r0, #0x14
    bne loc_80A6BDE
    mov r0, #0
    pop {pc}
// end of function sub_80A6BCC

.thumb
sub_80A6BDA:
    push {lr}
    ldr r7, [pc, #0x80a6be4-0x80a6bdc-4] // =byte_200B1F0
loc_80A6BDE:
    ldrb r0, [r7]
    pop {pc}
    .balign 4, 0x00
off_80A6BE4:    .word byte_200B1F0
// end of function sub_80A6BDA

.thumb
sub_80A6BE8:
    push {lr}
    ldr r7, [pc, #0x80a6c40-0x80a6bea-2] // =off_80A6C40
    lsl r0, r0, #3
    add r7, r7, r0
    ldr r3, [r7]
    mul r3, r1
    ldr r4, [r7,#4]
    mul r4, r1
    add r0, r3, #0
    add r1, r4, #0
    pop {pc}
    .byte 0, 0
    .word 0xB504, 0xFFFF4AFC, 0x10000, 0x0
    .word 0xB504, 0xB504, 0x0
    .word 0x10000, 0xFFFF4AFC, 0xB504, 0xFFFF0000, 0x0
    .word 0xFFFF4AFC, 0xFFFF4AFC, 0x0
    .word 0xFFFF0000
off_80A6C40:    .word off_80A6C40
// end of function sub_80A6BE8

.thumb
sub_80A6C44:
    push {lr}
    mov r0, #1
    ldr r1, [r5,#0x24]
    ldr r2, [r5,#0x30]
    cmp r1, r2
    bne locret_80A6C62
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x34]
    cmp r1, r2
    bne locret_80A6C62
    ldr r1, [r5,#0x2c]
    ldr r2, [r5,#0x38]
    cmp r1, r2
    bne locret_80A6C62
    mov r0, #0
locret_80A6C62:
    pop {pc}
// end of function sub_80A6C44

.thumb
sub_80A6C64:
    push {lr}
    ldrb r0, [r5,#9]
    cmp r0, #4
    beq loc_80A6C70
    cmp r0, #8
    bne loc_80A6C78
loc_80A6C70:
    bl sub_80A6C44
    tst r0, r0
    beq loc_80A6C80
loc_80A6C78:
    mov r3, #0x5e 
    mov r0, #0
    strh r0, [r5,r3]
    b locret_80A6C9A
loc_80A6C80:
    mov r3, #0x5e 
    ldrb r0, [r5,r3]
    ldrb r2, [r5,#0x10]
    ldr r7, [pc, #0x80a6c9c-0x80a6c86-2] // =dword_80A6CA0
    ldrb r1, [r7,r2]
    orr r0, r1
    strb r0, [r5,r3]
    cmp r0, #0xf
    bne locret_80A6C9A
    mov r0, #0xa
    strh r0, [r5,#0x1c]
    mov r0, #0
    strb r0, [r5,r3]
locret_80A6C9A:
    pop {pc}
off_80A6C9C:    .word dword_80A6CA0
dword_80A6CA0:    .word 0x6020301
    .word 0x9080C04
// end of function sub_80A6C64

.thumb
sub_80A6CA8:
    push {lr}
    mov r1, #0
    strb r1, [r5,#0xa]
    ldrb r1, [r5,#9]
    cmp r1, #0x14
    bne loc_80A6CB8
    strb r0, [r5,#0xb]
    pop {pc}
loc_80A6CB8:
    strb r0, [r5,#9]
    pop {pc}
    .word byte_200B1F0
// end of function sub_80A6CA8

.thumb
sub_80A6CC0:
    push {lr}
    ldr r7, [pc, #0x80a6ce8-0x80a6cc2-2] // =byte_2006140
    ldr r2, [pc, #0x80a6cec-0x80a6cc4-4] // =0xD80
    add r2, r2, r7
loc_80A6CC8:
    ldr r0, [r7,#0x54]
    mov r1, #4
    tst r0, r1
    beq loc_80A6CDE
    ldr r0, [r7,#0x60]
    mov r1, #1
    tst r0, r1
    bne locret_80A6CE6
    str r7, [r5,#0x60]
    mov r0, #0
    b locret_80A6CE6
loc_80A6CDE:
    add r7, #0xd8
    cmp r7, r2
    blt loc_80A6CC8
    mov r0, #1
locret_80A6CE6:
    pop {pc}
off_80A6CE8:    .word byte_2006140
off_80A6CEC:    .word 0xD80
// end of function sub_80A6CC0

.thumb
sub_80A6CF0:
    push {lr}
    mov r0, #0
    mov r4, #0
    bl sub_80038B4
    tst r5, r5
    beq locret_80A6D14
    mov r6, r10
    ldr r6, [r6,#0x40]
    str r5, [r6,#0x28]
    ldr r1, [r6,#0x38]
    str r1, [r5,#0x24]
    ldr r1, [r6,#0x3c]
    str r1, [r5,#0x28]
    ldr r1, [r6,#0x40]
    str r1, [r5,#0x2c]
    ldr r1, [r6,#0x44]
    strb r1, [r5,#0x10]
locret_80A6D14:
    pop {pc}
// end of function sub_80A6CF0

.thumb
sub_80A6D16:
    push {lr}
    mov r0, #0x11
    mov r1, #0x74 
    bl sub_8024F9C
    pop {pc}
// end of function sub_80A6D16

.thumb
sub_80A6D22:
    push {lr}
    mov r0, #0x11
    mov r1, #0x74 
    bl sub_8024FB8
    pop {pc}
// end of function sub_80A6D22

.thumb
sub_80A6D2E:
    ldr r3, [pc, #0x80a6db4-0x80a6d2e-2] // =byte_200B1F0
    mov r0, #1
    strb r0, [r3]
    push {lr}
    mov r0, #0x11
    mov r1, #0x79 
    bl sub_8024F9C
    bl sub_80A6D22
    pop {pc}
    mov pc, lr
// end of function sub_80A6D2E

.thumb
sub_80A6D46:
    push {lr}
    ldr r3, [pc, #0x80a6db4-0x80a6d48-4] // =byte_200B1F0
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r1, [r1,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r3,#0x8] // (dword_200B1F8 - 0x200b1f0)
    ldr r0, [r1,#0x28]
    str r0, [r3,#0xc] // (dword_200B1FC - 0x200b1f0)
    ldr r0, [r1,#0x2c]
    str r0, [r3,#0x10] // (dword_200B200 - 0x200b1f0)
    push {r3}
    mov r0, #0x11
    mov r1, #0x7a 
    bl sub_8024FF0
    pop {r3}
    bne locret_80A6D78
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r2, [r2,#0x28]
    ldrb r0, [r2,#0x10]
    mov r1, #7
    and r0, r1
    strb r0, [r3,#2]
locret_80A6D78:
    pop {pc}
// end of function sub_80A6D46

.thumb
sub_80A6D7A:
    ldr r3, [pc, #0x80a6db4-0x80a6d7a-2] // =byte_200B1F0
    mov r0, #1
    strb r0, [r3,#0x15] // (byte_200B205 - 0x200b1f0)
    mov r0, #0
    str r0, [r3,#0x18] // (dword_200B208 - 0x200b1f0)
    str r0, [r3,#0x20] // (dword_200B210 - 0x200b1f0)
    ldr r1, [pc, #0x80a6d8c-0x80a6d86-2] // =dword_80A58E0
    str r1, [r3,#0x20] // (dword_200B210 - 0x200b1f0)
    mov pc, lr
off_80A6D8C:    .word dword_80A58E0
// end of function sub_80A6D7A

.thumb
sub_80A6D90:
    ldr r3, [pc, #0x80a6db4-0x80a6d90-4] // =byte_200B1F0
    mov r0, #0
    strb r0, [r3,#0x15] // (byte_200B205 - 0x200b1f0)
    mov r0, #0
    str r0, [r3,#0x18] // (dword_200B208 - 0x200b1f0)
    str r0, [r3,#0x20] // (dword_200B210 - 0x200b1f0)
    mov pc, lr
// end of function sub_80A6D90

.thumb
sub_80A6D9E:
    push {lr}
    ldr r3, [pc, #0x80a6db4-0x80a6da0-4] // =byte_200B1F0
    mov r0, #0
    strb r0, [r3]
    bl sub_80A6D16
    mov r0, #0x11
    mov r1, #0x7a 
    bl sub_8024FB8
    pop {pc}
off_80A6DB4:    .word byte_200B1F0
// end of function sub_80A6D9E

.thumb
sub_80A6DB8:
    push {lr}
    ldr r3, [pc, #0x80a6dec-0x80a6dba-2] // =byte_200B1F0
    strb r0, [r3,#0x2] // (byte_200B1F2 - 0x200b1f0)
    mov r0, #0x11
    mov r1, #0x7a 
    bl sub_8024F9C
    pop {pc}
// end of function sub_80A6DB8

.thumb
sub_80A6DC8:
    push {lr}
    ldr r3, [pc, #0x80a6dec-0x80a6dca-2] // =byte_200B1F0
    strb r0, [r3,#0x2] // (byte_200B1F2 - 0x200b1f0)
    mvn r0, r0
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    strb r0, [r3,#0x15]
    mov r0, #0x11
    mov r1, #0x7a 
    bl sub_8024F9C
    pop {pc}
// end of function sub_80A6DC8

.thumb
sub_80A6DE2:
    push {lr}
    ldr r3, [pc, #0x80a6dec-0x80a6de4-4] // =byte_200B1F0
    strb r0, [r3,#0x1c] // (byte_200B20C - 0x200b1f0)
    pop {pc}
    .balign 4, 0x00
off_80A6DEC:    .word byte_200B1F0
// end of function sub_80A6DE2

.thumb
sub_80A6DF0:
    push {r7}
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    ldr r7, [r3,#0x24]
    str r7, [r3,#0x30]
    ldr r7, [r3,#0x28]
    str r7, [r3,#0x34]
    ldr r7, [r3,#0x2c]
    str r7, [r3,#0x38]
    str r0, [r3,#0x24]
    str r1, [r3,#0x28]
    str r2, [r3,#0x2c]
    pop {r7}
loc_80A6E0C:
    ldr r3, [pc, #0x80a6e60-0x80a6e0c-4] // =byte_200B1F0
    str r0, [r3,#0x8] // (dword_200B1F8 - 0x200b1f0)
    str r1, [r3,#0xc] // (dword_200B1FC - 0x200b1f0)
    str r2, [r3,#0x10] // (dword_200B200 - 0x200b1f0)
    mov pc, lr
// end of function sub_80A6DF0

.thumb
sub_80A6E16:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    ldr r0, [r3,#0x24]
    ldr r1, [r3,#0x28]
    ldr r2, [r3,#0x2c]
    mov pc, lr
// end of function sub_80A6E16

.thumb
sub_80A6E24:
    push {r7}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r3, [r7,#0x24]
    str r3, [r7,#0x30]
    add r3, r3, r0
    str r3, [r7,#0x24]
    ldr r3, [r7,#0x28]
    str r3, [r7,#0x34]
    add r3, r3, r1
    str r3, [r7,#0x28]
    ldr r3, [r7,#0x2c]
    str r3, [r7,#0x38]
    add r3, r3, r2
    str r3, [r7,#0x2c]
    pop {r7}
loc_80A6E46:
    push {r7,lr}
    ldr r7, [pc, #0x80a6e60-0x80a6e48-4] // =byte_200B1F0
    ldr r3, [r7,#0x8] // (dword_200B1F8 - 0x200b1f0)
    add r3, r3, r0
    str r3, [r7,#0x8] // (dword_200B1F8 - 0x200b1f0)
    ldr r3, [r7,#0xc] // (dword_200B1FC - 0x200b1f0)
    add r3, r3, r1
    str r3, [r7,#0xc] // (dword_200B1FC - 0x200b1f0)
    ldr r3, [r7,#0x10] // (dword_200B200 - 0x200b1f0)
    add r3, r3, r2
    str r3, [r7,#0x10] // (dword_200B200 - 0x200b1f0)
    pop {r7,pc}
    .byte 0, 0
off_80A6E60:    .word byte_200B1F0
// end of function sub_80A6E24

.thumb
sub_80A6E64:
    ldr r3, [pc, #0x80a6e70-0x80a6e64-4] // =byte_200B1F0
    ldrb r1, [r3,#0x15] // (byte_200B205 - 0x200b1f0)
    tst r1, r1
    beq locret_80A6E6E
    strh r0, [r3,#0x1a] // (dword_200B208+2 - 0x200b1f0)
locret_80A6E6E:
    mov pc, lr
off_80A6E70:    .word byte_200B1F0
// end of function sub_80A6E64

.thumb
sub_80A6E74:
    mov r0, #0
    mov pc, lr
    .word byte_200B1F0
// end of function sub_80A6E74

.thumb
sub_80A6E7C:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    mov r0, #1
    strb r0, [r3,#0x17]
    mov pc, lr
// end of function sub_80A6E7C

.thumb
sub_80A6E88:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    mov r0, #0
    strb r0, [r3,#0x17]
    mov pc, lr
// end of function sub_80A6E88

.thumb
sub_80A6E94:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    mov r0, #1
    strb r0, [r3,#0xc]
    mov pc, lr
// end of function sub_80A6E94

.thumb
sub_80A6EA0:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    mov r0, #0
    strb r0, [r3,#0xc]
    mov pc, lr
// end of function sub_80A6EA0

.thumb
sub_80A6EAC:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    strb r0, [r3,#0x16]
    mov pc, lr
// end of function sub_80A6EAC

.thumb
sub_80A6EB6:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    mov r0, #0
    strb r0, [r3,#0x16]
    mov pc, lr
// end of function sub_80A6EB6

.thumb
sub_80A6EC2:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002FC2
    pop {r5,pc}
// end of function sub_80A6EC2

.thumb
sub_80A6ED0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002E76
    pop {r5,pc}
// end of function sub_80A6ED0

.thumb
sub_80A6EDE:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002E8C
    pop {r5,pc}
// end of function sub_80A6EDE

.thumb
sub_80A6EEC:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002DCC
    pop {r5,pc}
// end of function sub_80A6EEC

.thumb
sub_80A6EFA:
    push {r1,r7,lr}
    mov r0, #0
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldrb r1, [r7,#9]
    cmp r1, #0x10
    bne locret_80A6F0C
    mov r0, #1
locret_80A6F0C:
    pop {r1,r7,pc}
// end of function sub_80A6EFA

.thumb
sub_80A6F0E:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    strb r0, [r3,#0x10]
    mov pc, lr
// end of function sub_80A6F0E

.thumb
sub_80A6F18:
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    ldrb r0, [r0,#0x10]
    mov pc, lr
// end of function sub_80A6F18

.thumb
sub_80A6F22:
    mov r0, #0x40 
    mov r1, #0x40 
    mov r2, #0
    ldr r3, [pc, #0x80a6f84-0x80a6f28-4] // =byte_2000890
    strb r0, [r3]
    strb r1, [r3,#0x1] // (byte_2000891 - 0x2000890)
    strb r2, [r3,#0x2] // (byte_2000892 - 0x2000890)
    mov pc, lr
// end of function sub_80A6F22

.thumb
sub_80A6F32:
    ldr r3, [pc, #0x80a6f84-0x80a6f32-2] // =byte_2000890
    ldrb r0, [r3]
    ldrb r1, [r3,#0x1] // (byte_2000891 - 0x2000890)
    ldrb r2, [r3,#0x2] // (byte_2000892 - 0x2000890)
    mov pc, lr
// end of function sub_80A6F32

.thumb
sub_80A6F3C:
    push {r4,lr}
    ldr r3, [pc, #0x80a6f84-0x80a6f3e-2] // =byte_2000890
    ldrb r4, [r3]
    add r4, r4, r0
    strb r4, [r3]
    ldrb r4, [r3,#0x1] // (byte_2000891 - 0x2000890)
    add r4, r4, r1
    strb r4, [r3,#0x1] // (byte_2000891 - 0x2000890)
    ldrb r4, [r3,#0x2] // (byte_2000892 - 0x2000890)
    add r4, r4, r2
    strb r4, [r3,#0x2] // (byte_2000892 - 0x2000890)
    pop {r4,pc}
// end of function sub_80A6F3C

.thumb
sub_80A6F54:
    mov r0, #0
loc_80A6F56:
    ldr r3, [pc, #0x80a6f84-0x80a6f56-2] // =byte_2000890
    strh r0, [r3,#0x6] // (word_2000896 - 0x2000890)
    mov pc, lr
// end of function sub_80A6F54

.thumb
sub_80A6F5C:
    mov r0, #0
    ldr r3, [pc, #0x80a6f84-0x80a6f5e-2] // =byte_2000890
    strb r0, [r3,#0x3] // (byte_2000893 - 0x2000890)
    mov pc, lr
// end of function sub_80A6F5C

.thumb
sub_80A6F64:
    ldr r3, [pc, #0x80a6f84-0x80a6f64-4] // =byte_2000890
    ldrb r0, [r3,#0x3] // (byte_2000893 - 0x2000890)
    mov pc, lr
// end of function sub_80A6F64

.thumb
sub_80A6F6A:
    mov r0, #1
    ldr r1, [pc, #0x80a6f84-0x80a6f6c-4] // =byte_2000890
    strb r0, [r1,#0x4] // (byte_2000894 - 0x2000890)
    mov r0, #8
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_80A6F6A

.thumb
sub_80A6F76:
    mov r0, #0
    ldr r1, [pc, #0x80a6f84-0x80a6f78-4] // =byte_2000890
    strb r0, [r1,#0x4] // (byte_2000894 - 0x2000890)
    mov r0, #0
    strb r0, [r3,#3]
    mov pc, lr
    .balign 4, 0x00
off_80A6F84:    .word byte_2000890
// end of function sub_80A6F76

.thumb
sub_80A6F88:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002E36
    pop {r5,pc}
// end of function sub_80A6F88

.thumb
sub_80A6F96:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    ldrb r0, [r3]
    mov r1, #2
    orr r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_80A6F96

.thumb
sub_80A6FA6:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r3, [r3,#0x28]
    ldrb r0, [r3]
    mov r1, #2
    bic r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_80A6FA6

.thumb
sub_80A6FB6:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r0, [r1,#0x1a]
    tst r0, r0
    pop {pc}
// end of function sub_80A6FB6

.thumb
sub_80A6FC2:
    push {r7,lr}
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne locret_80A6FF2
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r0, [r7,#0x28]
    add r0, #0x24 
    bl sub_8027646
    cmp r0, #0x48 
    blt locret_80A6FF2
    cmp r0, #0x4f 
    bgt locret_80A6FF2
    sub r0, #0x48 
    ldr r7, [r7,#0x28]
    mov r2, #0x6c 
    strh r0, [r7,r2]
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024F9C
locret_80A6FF2:
    pop {r7,pc}
// end of function sub_80A6FC2

.thumb
sub_80A6FF4:
    push {lr}
    mov r0, #0
    mov r2, #0xf0
    and r2, r1
    beq loc_80A700A
    lsr r2, r2, #4
    ldr r7, [pc, #0x80a702c-0x80a7000-4] // =word_80A701A
    ldrb r2, [r7,r2]
    orr r0, r2
    mov r1, #0x10
    orr r0, r1
loc_80A700A:
    mov r3, #0x54 
    strh r0, [r5,r3]
    mov r1, #0xf
    and r1, r0
    beq locret_80A7018
    sub r1, #1
    strb r1, [r5,#0x10]
locret_80A7018:
    pop {pc}
word_80A701A:    .hword 0x300
    .word 0x201FF07, 0x405FF08
    .word 0xFFFFFF06
    .word 0xFFFF
off_80A702C:    .word word_80A701A
// end of function sub_80A6FF4

.thumb
sub_80A7030:
    ldr r1, [pc, #0x80a7038-0x80a7030-4] // =byte_200B1F0
    str r0, [r1,#0x20] // (dword_200B210 - 0x200b1f0)
    mov pc, lr
    .balign 4, 0x00
off_80A7038:    .word byte_200B1F0
// end of function sub_80A7030

.thumb
sub_80A703C:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002CC6
    pop {r5,pc}
// end of function sub_80A703C

.thumb
sub_80A704A:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    bl sub_8002D1A
    pop {r5,pc}
// end of function sub_80A704A

.thumb
sub_80A7058:
    push {r7,lr}
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne locret_80A70CE
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne locret_80A70CE
    bl sub_80A6FB6
    bne locret_80A70CE
    bl sub_8005654
    bne locret_80A70CE
    mov r0, #1
    bl sub_802D92C
    bne locret_80A70CE
    bl sub_8005B5C
    beq locret_80A70CE
    bl sub_802BCF2
    bne locret_80A70CE
    mov r0, #0x80
    bl sub_80539A0
    bne locret_80A70CE
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r0, [r7,#0x28]
    add r0, #0x24 
    bl sub_8027646
    cmp r0, #0x50 
    blt locret_80A70CE
    cmp r0, #0x5f 
    bgt locret_80A70CE
    sub r0, #0x50 
    push {r0}
    bl sub_80A70D6
    bl sub_80A711A
    pop {r1}
    ldr r2, [pc, #0x80a70d0-0x80a70b8-4] // =word_80A70D4
    ldrh r2, [r2]
    cmp r0, r2
    beq locret_80A70CE
    ldr r7, [r7,#0x28]
    mov r2, #0x6c 
    strh r1, [r7,r2]
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024F9C
locret_80A70CE:
    pop {r7,pc}
off_80A70D0:    .word word_80A70D4
word_80A70D4:    .hword 0xFFFF
// end of function sub_80A7058

.thumb
sub_80A70D6:
    push {r0-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrh r0, [r0,#4]
    ldr r1, [pc, #0x80a70fc-0x80a70de-2] // =dword_80A7108
    mov r2, #0
loc_80A70E2:
    ldrh r3, [r1,r2]
    cmp r0, r3
    beq loc_80A70F2
    add r2, #2
    ldr r3, [pc, #0x80a7100-0x80a70ea-2] // =0xFFFF
    cmp r0, r3
    bne loc_80A70E2
    mov r2, #0xff
loc_80A70F2:
    add r0, r2, #0
    ldr r7, [pc, #0x80a7104-0x80a70f4-4] // =byte_200A610
    mov r1, #0x67 // (byte_200A677 - 0x200a610)
    strb r0, [r7,r1]
    pop {r0-r7,pc}
off_80A70FC:    .word dword_80A7108
dword_80A7100:    .word 0xFFFF
off_80A7104:    .word byte_200A610
dword_80A7108:    .word 0x2930292, 0x2910191, 0x930192, 0x3940393
    .byte 0xFF, 0xFF
// end of function sub_80A70D6

.thumb
sub_80A711A:
    push {r5-r7,lr}
    ldr r4, [pc, #0x80a72dc-0x80a711c-4] // =off_80A72FC
    ldr r5, [pc, #0x80a713c-0x80a711e-2] // =byte_200A610
    mov r1, #0x67 // (byte_200A677 - 0x200a610)
    ldrb r2, [r5,r1]
    lsl r2, r2, #1
    ldr r4, [r4,r2]
    lsl r1, r0, #4
    add r4, r4, r1
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r5, [r5,#0x28]
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r4]
    pop {r5-r7,pc}
off_80A713C:    .word byte_200A610
// end of function sub_80A711A

.thumb
sub_80A7140:
    push {lr}
    bl sub_80A7C64
    mov r3, #0x67 
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r4, [r4,r3]
    lsl r1, r7, #2
    ldr r4, [r4,r1]
    mov r1, #0
    ldrh r1, [r4]
    lsl r1, r1, #0x10
    ldrh r2, [r4,#2]
    lsl r2, r2, #0x10
    ldrh r3, [r4,#4]
    lsl r3, r3, #0x10
    push {r1-r3}
    mov r0, #0x24 
    add r0, r0, r5
    ldmia r0!, {r4,r6}
    sub r0, r2, r6
    sub r1, r1, r4
    bl sub_8001740
    ldr r1, [pc, #0x80a7190-0x80a7170-4] // =0x10000
    bl sub_8001788
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r1-r3}
    mov r0, #0x24 
    add r0, r0, r5
    ldr r4, [pc, #0x80a7190-0x80a7180-4] // =0x10000
    ldr r6, [pc, #0x80a7194-0x80a7182-2] // =0x10000
    bl sub_8001814
    str r0, [r5,#0x48]
    strh r1, [r5,#0x1c]
    pop {pc}
    .byte 0, 0
dword_80A7190:    .word 0x10000
dword_80A7194:    .word 0x10000
// end of function sub_80A7140

.thumb
sub_80A7198:
    push {lr}
    bl sub_80A7C64
    mov r3, #0x67 
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r4, [r4,r3]
    lsl r1, r7, #2
    ldr r4, [r4,r1]
    mov r2, #0x26 
    mov r1, #0
loc_80A71AE:
    ldrh r0, [r4,r1]
    lsl r0, r0, #0x10
    str r0, [r5,r2]
    add r1, #2
    add r2, #4
    cmp r2, #0x2e 
    ble loc_80A71AE
    add r0, r7, #0
    bl sub_80A711A
    mov r3, #0x6c 
    strh r0, [r5,r3]
    bl sub_80A78DC
    mov r1, #0x67 
    ldrb r1, [r5,r1]
    lsl r1, r1, #1
    ldr r4, [r4,r1]
    lsl r0, r0, #2
    ldr r4, [r4,r0]
    ldrh r0, [r4,#6]
    mov r1, #0x6e 
    strh r0, [r5,r1]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    ldr r2, [r5,#0x28]
    sub r0, r0, r2
    ldrh r1, [r4]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x24]
    sub r1, r1, r2
    bl sub_8001740
    push {r0}
    ldr r1, [pc, #0x80a724c-0x80a71f2-2] // =0x40000
    bl sub_8001788
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r0}
    add r0, #0x20 
    mov r1, #0xe0
    and r0, r1
    lsr r0, r0, #5
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x24]
    mov r3, #0
    ldrsh r1, [r4,r3]
    lsl r1, r1, #0x10
    sub r0, r0, r1
    bpl loc_80A721A
    ldr r2, [pc, #0x80a7248-0x80a7214-4] // =0xFFFFFFFF
    eor r0, r2
    add r0, #1
loc_80A721A:
    lsr r0, r0, #0x10
    ldr r2, [r5,#0x28]
    mov r3, #2
    ldrsh r1, [r4,r3]
    lsl r1, r1, #0x10
    sub r1, r1, r2
    bpl loc_80A722E
    ldr r2, [pc, #0x80a7248-0x80a7228-4] // =0xFFFFFFFF
    eor r1, r2
    add r1, #1
loc_80A722E:
    lsr r1, r1, #0x10
    add r2, r0, #0
    mul r0, r2
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #0x10
    ldr r1, [pc, #0x80a724c-0x80a723e-2] // =0x40000
    svc 6
    strh r0, [r5,#0x1c]
    pop {pc}
    .balign 4, 0x00
dword_80A7248:    .word 0xFFFFFFFF
dword_80A724C:    .word 0x40000
// end of function sub_80A7198

.thumb
sub_80A7250:
    push {lr}
    bl sub_80A7C6E
    mov r3, #0x67 
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r7, [r7,r3]
    ldr r7, [r7,r1]
    mov r1, #0
    mov r0, #0x24 
    add r0, r0, r5
    ldrh r1, [r7]
    lsl r1, r1, #0x10
    ldrh r2, [r7,#2]
    lsl r2, r2, #0x10
    bl sub_80018CC
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    str r2, [r5,#0x48]
    mov r2, #0x68 
    str r3, [r5,r2]
    pop {pc}
// end of function sub_80A7250

.thumb
sub_80A727E:
    push {lr}
    bl sub_80A7EFC
    mov r3, #0x67 
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r7, [r7,r3]
    ldr r7, [r7,r1]
    mov r1, #0
    mov r0, #0x24 
    add r0, r0, r5
    ldrh r1, [r7]
    lsl r1, r1, #0x10
    ldrh r2, [r7,#2]
    lsl r2, r2, #0x10
    bl sub_80018CC
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    str r2, [r5,#0x48]
    mov r2, #0x68 
    str r3, [r5,r2]
    pop {pc}
// end of function sub_80A727E

.thumb
sub_80A72AC:
    push {lr}
    mov r0, #0x40 
    add r0, r0, r5
    ldmia r0!, {r1,r2}
    mov r0, #0x24 
    add r0, r0, r5
    ldmia r0!, {r4,r6}
    add r4, r4, r1
    add r6, r6, r2
    mov r1, #0x24 
    add r1, r1, r5
    stmia r1!, {r4,r6}
    ldrh r1, [r5,#0x1c]
    add r1, #1
    strh r1, [r5,#0x1c]
    ldr r0, [r5,#0x48]
    ldr r2, [r5,#0x2c]
    add r2, r2, r0
    str r2, [r5,#0x2c]
    mov r2, #0x68 
    ldr r3, [r5,r2]
    add r0, r0, r3
    str r0, [r5,#0x48]
    pop {pc}
off_80A72DC:    .word off_80A72FC
    .word off_80A7300
    .word off_80A7304
    .word off_80A7308
    .word off_80A730C
    .word off_80A7310
    .word off_80A7314
    .word off_80A7318
off_80A72FC:    .word dword_80A785C
off_80A7300:    .word dword_80A789C
off_80A7304:    .word dword_80A781C
off_80A7308:    .word dword_80A77DC
off_80A730C:    .word dword_80A771C
off_80A7310:    .word dword_80A76BC
off_80A7314:    .word dword_80A765C
off_80A7318:    .word dword_80A731C
dword_80A731C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
    .word 0x40004, 0x40004, 0x40004, 0x40004, 0x50005, 0x50005
    .word 0x50005, 0x50005, 0x60006, 0x60006, 0x60006, 0x60006
    .word 0x70007, 0x70007, 0x70007, 0x70007, 0x80008, 0x80008
    .word 0x80008, 0x80008, 0x90009, 0x90009, 0x90009, 0x90009
    .word 0xA000A, 0xA000A, 0xA000A, 0xA000A, 0xB000B, 0xB000B
    .word 0xB000B, 0xB000B, 0xC000C, 0xC000C, 0xC000C, 0xC000C
    .word 0xD000D, 0xD000D, 0xD000D, 0xD000D, 0xE000E, 0xE000E
    .word 0xE000E, 0xE000E, 0xF000F, 0xF000F, 0xF000F, 0xF000F
    .word 0x100010, 0x100010, 0x100010, 0x100010, 0x110011, 0x110011
    .word 0x110011, 0x110011, 0x120012, 0x120012, 0x120012, 0x120012
    .word 0x130013, 0x130013, 0x130013, 0x130013, 0x140014, 0x140014
    .word 0x140014, 0x140014, 0x150015, 0x150015, 0x150015, 0x150015
    .word 0x160016, 0x160016, 0x160016, 0x160016, 0x170017, 0x170017
    .word 0x170017, 0x170017, 0x180018, 0x180018, 0x180018, 0x180018
    .word 0x190019, 0x190019, 0x190019, 0x190019, 0x1A001A, 0x1A001A
    .word 0x1A001A, 0x1A001A, 0x1B001B, 0x1B001B, 0x1B001B, 0x1B001B
    .word 0x1C001C, 0x1C001C, 0x1C001C, 0x1C001C, 0x1D001D, 0x1D001D
    .word 0x1D001D, 0x1D001D, 0x1E001E, 0x1E001E, 0x1E001E, 0x1E001E
    .word 0x1F001F, 0x1F001F, 0x1F001F, 0x1F001F, 0x200020, 0x200020
    .word 0x200020, 0x200020, 0x210021, 0x210021, 0x210021, 0x210021
    .word 0x220022, 0x220022, 0x220022, 0x220022, 0x230023, 0x230023
    .word 0x230023, 0x230023, 0x240024, 0x240024, 0x240024, 0x240024
    .word 0x250025, 0x250025, 0x250025, 0x250025, 0x260026, 0x260026
    .word 0x260026, 0x260026, 0x270027, 0x270027, 0x270027, 0x270027
    .word 0x280028, 0x280028, 0x280028, 0x280028, 0x290029, 0x290029
    .word 0x290029, 0x290029, 0x2A002A, 0x2A002A, 0x2A002A, 0x2A002A
    .word 0x2B002B, 0x2B002B, 0x2B002B, 0x2B002B, 0x2C002C, 0x2C002C
    .word 0x2C002C, 0x2C002C, 0x2D002D, 0x2D002D, 0x2D002D, 0x2D002D
    .word 0x2E002E, 0x2E002E, 0x2E002E, 0x2E002E, 0x2F002F, 0x2F002F
    .word 0x2F002F, 0x2F002F, 0x300030, 0x300030, 0x300030, 0x300030
    .word 0x310031, 0x310031, 0x310031, 0x310031, 0x320032, 0x320032
    .word 0x320032, 0x320032, 0x330033, 0x330033, 0x330033, 0x330033
dword_80A765C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
    .word 0x40004, 0x40004, 0x40004, 0x40004, 0x50005, 0x50005
    .word 0x50005, 0x50005
dword_80A76BC:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
    .word 0x40004, 0x40004, 0x40004, 0x40004, 0x50005, 0x50005
    .word 0x50005, 0x50005
dword_80A771C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
    .word 0x40004, 0x40004, 0x40004, 0x40004, 0x50005, 0x50005
    .word 0x50005, 0x50005, 0x60006, 0x60006, 0x60006, 0x60006
    .word 0x70007, 0x70007, 0x70007, 0x70007, 0x80008, 0x80008
    .word 0x80008, 0x80008, 0x90009, 0x90009, 0x90009, 0x90009
    .word 0xA000A, 0xA000A, 0xA000A, 0xA000A, 0xB000B, 0xB000B
    .word 0xB000B, 0xB000B
dword_80A77DC:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
dword_80A781C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
dword_80A785C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001, 0x10001, 0x10001, 0x10001, 0x20002, 0x20002
    .word 0x20002, 0x20002, 0x30003, 0x30003, 0x30003, 0x30003
dword_80A789C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10001
    .word 0x10001
    .word 0x10001
    .word 0x10001
    .word 0x20002
    .word 0x20002
    .word 0x20002
    .word 0x20002
    .word 0x30003
    .word 0x30003
    .word 0x30003
    .word 0x30003
// end of function sub_80A72AC

.thumb
sub_80A78DC:
    push {lr}
    ldr r4, [pc, #0x80a78e4-0x80a78de-2] // =off_80A7904
    pop {pc}
    .balign 4, 0x00
off_80A78E4:    .word off_80A7904
    .word off_80A7908
    .word off_80A790C
    .word off_80A7910
    .word off_80A7914
    .word off_80A7918
    .word off_80A791C
    .word off_80A7920
off_80A7904:    .word off_80A7924
off_80A7908:    .word off_80A7934
off_80A790C:    .word off_80A7944
off_80A7910:    .word off_80A7954
off_80A7914:    .word off_80A795C
off_80A7918:    .word off_80A798C
off_80A791C:    .word off_80A79A4
off_80A7920:    .word off_80A79BC
off_80A7924:    .word dword_80A7A94
    .word dword_80A7A9C
    .word dword_80A7E34
    .word dword_80A7E2C
off_80A7934:    .word dword_80A7A84
    .word dword_80A7A8C
    .word dword_80A7E24
    .word dword_80A7E1C
off_80A7944:    .word dword_80A7AA4
    .word dword_80A7AAC
    .word dword_80A7E44
    .word dword_80A7E3C
off_80A7954:    .word dword_80A7E54
    .word dword_80A7E4C
off_80A795C:    .word dword_80A7AB4
    .word dword_80A7AFC
    .word dword_80A7AC4
    .word dword_80A7AEC
    .word dword_80A7AD4
    .word dword_80A7ADC
    .word dword_80A7AE4
    .word dword_80A7ACC
    .word dword_80A7AF4
    .word dword_80A7ABC
    .word dword_80A7E64
    .word dword_80A7E5C
off_80A798C:    .word dword_80A7B04
    .word dword_80A7B1C
    .word dword_80A7B14
    .word dword_80A7B0C
    .word dword_80A7E74
    .word dword_80A7E6C
off_80A79A4:    .word dword_80A7B24
    .word dword_80A7B3C
    .word dword_80A7B34
    .word dword_80A7B2C
    .word dword_80A7E84
    .word dword_80A7E7C
off_80A79BC:    .word dword_80A7B44
    .word dword_80A7B5C
    .word dword_80A7B64
    .word dword_80A7B8C
    .word dword_80A7B94
    .word dword_80A7BBC
    .word dword_80A7BC4
    .word byte_80A7BDC
    .word dword_80A7BE4
    .word dword_80A7BFC
    .word dword_80A7C04
    .word dword_80A7C2C
    .word dword_80A7C34
    .word dword_80A7C5C
    .word dword_80A7B4C
    .word dword_80A7E94
    .word dword_80A7B54
    .word dword_80A7E8C
    .word dword_80A7B6C
    .word dword_80A7B74
    .word dword_80A7EA4
    .word dword_80A7B84
    .word dword_80A7B7C
    .word dword_80A7E9C
    .word dword_80A7B9C
    .word dword_80A7BA4
    .word dword_80A7EB4
    .word dword_80A7BB4
    .word dword_80A7BAC
    .word dword_80A7EAC
    .word byte_80A7BCC
    .word dword_80A7EC4
    .word dword_80A7BD4
    .word dword_80A7EBC
    .word dword_80A7BEC
    .word dword_80A7ED4
    .word dword_80A7BF4
    .word dword_80A7ECC
    .word dword_80A7C0C
    .word dword_80A7C14
    .word dword_80A7EE4
    .word dword_80A7C24
    .word dword_80A7C1C
    .word dword_80A7EDC
    .word dword_80A7C3C
    .word dword_80A7C44
    .word dword_80A7EF4
    .word dword_80A7C54
    .word dword_80A7C4C
    .word dword_80A7EEC
dword_80A7A84:    .word 0x82016E, 0xFF020020
dword_80A7A8C:    .word 0x82016E, 0xFF030020
dword_80A7A94:    .word 0x1ACFF24, 0xFF020000
dword_80A7A9C:    .word 0x1ACFF24, 0xFF030000
dword_80A7AA4:    .word 0x13CFEC4, 0xFF020000
dword_80A7AAC:    .word 0x13CFEC4, 0xFF030000
dword_80A7AB4:    .word 0xF4FEFC, 0xFF020000
dword_80A7ABC:    .word 0xF4FEFC, 0xFF0B0000
dword_80A7AC4:    .word 0x84FEFC, 0x40000
dword_80A7ACC:    .word 0x84FEFC, 0x90000
dword_80A7AD4:    .word 0x84FF2C, 0x60000
dword_80A7ADC:    .word 0x84FF2C, 0x70000
dword_80A7AE4:    .word 0xFF34FF2C, 0x80000
dword_80A7AEC:    .word 0xFF34FF2C, 0x50000
dword_80A7AF4:    .word 0xFF34FF9C, 0xFF0A0000
dword_80A7AFC:    .word 0xFF34FF9C, 0xFF030000
dword_80A7B04:    .word 0xB4FE9C, 0xFF020000
dword_80A7B0C:    .word 0xB4FE9C, 0xFF050000
dword_80A7B14:    .word 0xB4FF1C, 0xFF040000
dword_80A7B1C:    .word 0xB4FF1C, 0xFF030000
dword_80A7B24:    .word 0xFDD4005C, 0xFF02FFC0
dword_80A7B2C:    .word 0xFDD4005C, 0xFF05FFC0
dword_80A7B34:    .word 0xFDD400FC, 0xFF04FFC0
dword_80A7B3C:    .word 0xFDD400FC, 0xFF03FFC0
dword_80A7B44:    .word 0x104FEFC, 0xFF0E0040
dword_80A7B4C:    .word 0x104FE3C, 0xFF0F0040
dword_80A7B54:    .word 0x104FEFC, 0xFF110040
dword_80A7B5C:    .word 0x104FE3C, 0xFF100040
dword_80A7B64:    .word 0xFFC4FE3C, 0xFF120040
dword_80A7B6C:    .word 0xFFC4FEFC, 0x130040
dword_80A7B74:    .word 0xFF24FEFC, 0xFF140040
dword_80A7B7C:    .word 0xFFC4FE3C, 0xFF170040
dword_80A7B84:    .word 0xFFC4FEFC, 0x160040
dword_80A7B8C:    .word 0xFF24FEFC, 0xFF150040
dword_80A7B94:    .word 0x1A4003C, 0x180040
dword_80A7B9C:    .word 0x124003C, 0x190040
dword_80A7BA4:    .word 0x124007C, 0xFF1A0040
dword_80A7BAC:    .word 0x1A4003C, 0xFF1D0040
dword_80A7BB4:    .word 0x124003C, 0x1C0040
dword_80A7BBC:    .word 0x124007C, 0xFF1B0040
dword_80A7BC4:    .word 0xFFE4005C, 0xFF1E0040
byte_80A7BCC:    .byte 0x5C
    .byte 0x0, 0x64, 0x0
    .word 0xFF1F0040
dword_80A7BD4:    .word 0xFFE4005C, 0xFF210040
byte_80A7BDC:    .byte 0x5C
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x40 
    .byte 0
    .hword 0xFF20
dword_80A7BE4:    .word 0x144FFBC, 0xFF220000
dword_80A7BEC:    .word 0x144003C, 0xFF230000
dword_80A7BF4:    .word 0x144FFBC, 0xFF250000
dword_80A7BFC:    .word 0x144003C, 0xFF240000
dword_80A7C04:    .word 0x84003C, 0xFF260000
dword_80A7C0C:    .word 0x84FF9C, 0xFF270000
dword_80A7C14:    .word 0x64FF9C, 0xFF280000
dword_80A7C1C:    .word 0x84003C, 0xFF2B0000
dword_80A7C24:    .word 0x84FF9C, 0xFF2A0000
dword_80A7C2C:    .word 0x64FF9C, 0xFF290000
dword_80A7C34:    .word 0x4FF3C, 0xFF2C0000
dword_80A7C3C:    .word 0x4FF5C, 0xFF2D0000
dword_80A7C44:    .word 0xFFA4FF5C, 0xFF2E0000
dword_80A7C4C:    .word 0x4FF3C, 0xFF310000
dword_80A7C54:    .word 0x4FF5C, 0xFF300000
dword_80A7C5C:    .word 0xFFA4FF5C, 0xFF2F0000
// end of function sub_80A78DC

.thumb
sub_80A7C64:
    push {lr}
    mov r3, #0x6c 
    ldrh r7, [r5,r3]
    ldr r4, [pc, #0x80a7c7c-0x80a7c6a-2] // =off_80A7C9C
    pop {pc}
// end of function sub_80A7C64

.thumb
sub_80A7C6E:
    push {lr}
    mov r3, #0x6c 
    ldrh r7, [r5,r3]
    lsl r1, r7, #2
    ldr r7, [pc, #0x80a7c7c-0x80a7c76-2] // =off_80A7C9C
    pop {pc}
    .balign 4, 0x00
off_80A7C7C:    .word off_80A7C9C
    .word off_80A7CA0
    .word off_80A7CA4
    .word off_80A7CA8
    .word off_80A7CAC
    .word off_80A7CB0
    .word off_80A7CB4
    .word off_80A7CB8
off_80A7C9C:    .word off_80A7CBC
off_80A7CA0:    .word off_80A7CCC
off_80A7CA4:    .word off_80A7CDC
off_80A7CA8:    .word off_80A7CEC
off_80A7CAC:    .word off_80A7CF4
off_80A7CB0:    .word off_80A7D24
off_80A7CB4:    .word off_80A7D3C
off_80A7CB8:    .word off_80A7D54
off_80A7CBC:    .word dword_80A7E2C
    .word dword_80A7E34
    .word dword_80A7A94
    .word dword_80A7A9C
off_80A7CCC:    .word dword_80A7E1C
    .word dword_80A7E24
    .word dword_80A7A84
    .word dword_80A7A8C
off_80A7CDC:    .word dword_80A7E3C
    .word dword_80A7E44
    .word dword_80A7AA4
    .word dword_80A7AAC
off_80A7CEC:    .word dword_80A7E4C
    .word dword_80A7E54
off_80A7CF4:    .word dword_80A7E5C
    .word dword_80A7E64
    .word dword_80A7AB4
    .word dword_80A7AFC
    .word dword_80A7AC4
    .word dword_80A7AEC
    .word dword_80A7AD4
    .word dword_80A7ADC
    .word dword_80A7AE4
    .word dword_80A7ACC
    .word dword_80A7AF4
    .word dword_80A7ABC
off_80A7D24:    .word dword_80A7E6C
    .word dword_80A7E74
    .word dword_80A7B04
    .word dword_80A7B1C
    .word dword_80A7B14
    .word dword_80A7B0C
off_80A7D3C:    .word dword_80A7E7C
    .word dword_80A7E84
    .word dword_80A7B24
    .word dword_80A7B3C
    .word dword_80A7B34
    .word dword_80A7B2C
off_80A7D54:    .word dword_80A7E8C
    .word dword_80A7E94
    .word dword_80A7E9C
    .word dword_80A7EA4
    .word dword_80A7EAC
    .word dword_80A7EB4
    .word dword_80A7EBC
    .word dword_80A7EC4
    .word dword_80A7ECC
    .word dword_80A7ED4
    .word dword_80A7EDC
    .word dword_80A7EE4
    .word dword_80A7EEC
    .word dword_80A7EF4
    .word dword_80A7B44
    .word dword_80A7B4C
    .word dword_80A7B5C
    .word dword_80A7B54
    .word dword_80A7B64
    .word dword_80A7B6C
    .word dword_80A7B74
    .word dword_80A7B8C
    .word dword_80A7B84
    .word dword_80A7B7C
    .word dword_80A7B94
    .word dword_80A7B9C
    .word dword_80A7BA4
    .word dword_80A7BBC
    .word dword_80A7BB4
    .word dword_80A7BAC
    .word dword_80A7BC4
    .word byte_80A7BCC
    .word byte_80A7BDC
    .word dword_80A7BD4
    .word dword_80A7BE4
    .word dword_80A7BEC
    .word dword_80A7BFC
    .word dword_80A7BF4
    .word dword_80A7C04
    .word dword_80A7C0C
    .word dword_80A7C14
    .word dword_80A7C2C
    .word dword_80A7C24
    .word dword_80A7C1C
    .word dword_80A7C34
    .word dword_80A7C3C
    .word dword_80A7C44
    .word dword_80A7C5C
    .word dword_80A7C54
    .word dword_80A7C4C
dword_80A7E1C:    .word 0x820148, 0x1FF0020
dword_80A7E24:    .word 0xFFA6016E, 0xFF0020
dword_80A7E2C:    .word 0x14EFF24, 0x1FF0000
dword_80A7E34:    .word 0x1ACFF2E, 0xFF0000
dword_80A7E3C:    .word 0x13CFF24, 0x1FF0000
dword_80A7E44:    .word 0xCEFEC4, 0xFF0000
dword_80A7E4C:    .word 0xC2002C, 0x1FF0000
dword_80A7E54:    .word 0xFEC8002C, 0xFF0000
dword_80A7E5C:    .word 0xF4FEF2, 0x1FF0000
dword_80A7E64:    .word 0xFF2CFF9C, 0xFF0000
dword_80A7E6C:    .word 0xC0FE9E, 0x1FF0000
dword_80A7E74:    .word 0xC6FF1C, 0xFF0000
dword_80A7E7C:    .word 0xFE98005C, 0x1FFFFC0
dword_80A7E84:    .word 0xFDFA00FC, 0xFFFFC0
dword_80A7E8C:    .word 0x14AFEFC, 0x1FF0040
dword_80A7E94:    .word 0x7EFE3C, 0xFF0040
dword_80A7E9C:    .word 0xFFD2FE3C, 0x3FF0040
dword_80A7EA4:    .word 0xFF24006E, 0x2FF0040
dword_80A7EAC:    .word 0x1A4FF50, 0x5FF0040
dword_80A7EB4:    .word 0x116007C, 0x4FF0040
dword_80A7EBC:    .word 0xFFE40068, 0x7FF0040
dword_80A7EC4:    .word 0x64FFF0, 0x6FF0040
dword_80A7ECC:    .word 0x16EFFBC, 0x9FF0000
dword_80A7ED4:    .word 0x138003C, 0x8FF0000
dword_80A7EDC:    .word 0x94003C, 0xBFF0000
dword_80A7EE4:    .word 0x64FF8C, 0xAFF0000
dword_80A7EEC:    .word 0x10FF38, 0xDFF0000
dword_80A7EF4:    .word 0xFFA4FF8A, 0xCFF0000
// end of function sub_80A7C6E

.thumb
sub_80A7EFC:
    push {lr}
    mov r3, #0x6c 
    ldrh r7, [r5,r3]
    lsl r1, r7, #2
    ldr r7, [pc, #0x80a7f08-0x80a7f04-4] // =off_80A7F28
    pop {pc}
off_80A7F08:    .word off_80A7F28
    .word off_80A7F2C
    .word off_80A7F30
    .word off_80A7F34
    .word off_80A7F38
    .word off_80A7F3C
    .word off_80A7F40
    .word off_80A7F44
off_80A7F28:    .word off_80A7F48
off_80A7F2C:    .word off_80A7F50
off_80A7F30:    .word off_80A7F58
off_80A7F34:    .word off_80A7F60
off_80A7F38:    .word off_80A7F68
off_80A7F3C:    .word off_80A7F70
off_80A7F40:    .word off_80A7F78
off_80A7F44:    .word off_80A7F80
off_80A7F48:    .word dword_80A7FC8
    .word dword_80A7FD0
off_80A7F50:    .word dword_80A7FB8
    .word dword_80A7FC0
off_80A7F58:    .word dword_80A7FD8
    .word dword_80A7FE0
off_80A7F60:    .word dword_80A7FE8
    .word dword_80A7FF0
off_80A7F68:    .word dword_80A7FF8
    .word dword_80A8000
off_80A7F70:    .word dword_80A8008
    .word dword_80A8010
off_80A7F78:    .word dword_80A8018
    .word dword_80A8020
off_80A7F80:    .word dword_80A8028
    .word dword_80A8030
    .word dword_80A8038
    .word dword_80A8040
    .word dword_80A8048
    .word dword_80A8050
    .word dword_80A8058
    .word dword_80A8060
    .word dword_80A8068
    .word dword_80A8070
    .word dword_80A8078
    .word dword_80A8080
    .word dword_80A8088
    .word dword_80A8090
dword_80A7FB8:    .word 0xFF7E016E, 0xFFFF0020
dword_80A7FC0:    .word 0x820118, 0xFFFF0020
dword_80A7FC8:    .word 0x1ACFF4A, 0xFFFF0000
dword_80A7FD0:    .word 0x126FF24, 0xFFFF0000
dword_80A7FD8:    .word 0xA4FEC4, 0xFFFF0000
dword_80A7FE0:    .word 0x13CFF5C, 0xFFFF0000
dword_80A7FE8:    .word 0xFE9C002C, 0xFFFF0000
dword_80A7FF0:    .word 0xEA002C, 0xFFFF0000
dword_80A7FF8:    .word 0xFF0CFF9C, 0xFFFF0000
dword_80A8000:    .word 0xF4FED6, 0xFFFF0000
dword_80A8008:    .word 0xECFF1C, 0xFFFF0000
dword_80A8010:    .word 0xECFE9E, 0xFFFF0000
dword_80A8018:    .word 0xFE2A00FC, 0xFFFFFFC0
dword_80A8020:    .word 0xFECC005C, 0xFFFFFFC0
dword_80A8028:    .word 0x46FE3C, 0xFFFF0040
dword_80A8030:    .word 0x17EFEFC, 0xFFFF0040
dword_80A8038:    .word 0xFF240096, 0xFFFF0040
dword_80A8040:    .word 0xFFFAFE3C, 0xFFFF0040
dword_80A8048:    .word 0xE6007C, 0xFFFF0040
dword_80A8050:    .word 0x1A4FF24, 0xFFFF0040
dword_80A8058:    .word 0x64FFC4, 0xFFFF0040
dword_80A8060:    .word 0xFFE40096, 0xFFFF0040
dword_80A8068:    .word 0x10C003C, 0xFFFF0000
dword_80A8070:    .word 0x19EFFBC, 0xFFFF0000
dword_80A8078:    .word 0x64FF66, 0xFFFF0000
dword_80A8080:    .word 0xBE003C, 0xFFFF0000
dword_80A8088:    .word 0xFFA4FFB8, 0xFFFF0000
dword_80A8090:    .word 0x3CFF3C, 0xFFFF0000, 0x14001805, 0x30150128, 0x100902
    .word 0x2901200A, 0x10390220, 0x1C0D03, 0x12012C11, 0x38260234
    .word 0x101903, 0x2A012027, 0x1A0210, 0x1002B00, 0x2800001E
    .word 0x18490100, 0x1184A00, 0x4C02284B, 0x18640330, 0x182304
    .word 0x31011824, 0x460220, 0x4D03, 0x65000048, 0x170100
    .word 0x1003F00, 0x3E00100B, 0xFF0120
// end of function sub_80A7EFC

.thumb
ho_80A8100:
    push {lr}
    ldr r7, [pc, #0x80a811c-0x80a8102-2] // =jt_80A8110
    ldrb r0, [r5,#8]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .byte 0, 0
jt_80A8110:    .word cb_80A8120+1
    .word ho_cb_80A8168+1
    .word cb_80A84DE+1
off_80A811C:    .word jt_80A8110
// end of function ho_80A8100

.thumb
cb_80A8120:
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_80A8D98
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    mov r0, #0xff
loc_80A8130:
    strh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x17]
    strb r0, [r5,#7]
    strb r0, [r5,#0x16]
    str r0, [r5,#0x60]
    str r0, [r5,#0x64]
    str r0, [r5,#0x54]
    str r0, [r5,#0x58]
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0x20 
    strb r0, [r5,#0xd]
    bl sub_80A8EC0
    bl ho_cb_80A8168
    .byte 0
    .byte 0xBD
// end of function cb_80A8120

.thumb
ho_cb_80A8168:
    push {lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_80A8176
    bl sub_80A8E44
    b loc_80A81DE
loc_80A8176:
    bl sub_80A85B8
    ldr r7, [pc, #0x80a8244-0x80a817a-2] // =jt_80A8228
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    mov r0, #0
    ldr r2, [r5,#0x60]
    mov r1, #8
    tst r2, r1
    beq loc_80A8190
    mov r0, #1
loc_80A8190:
    bl loc_8002F8E
    ldrh r0, [r5,#0x3c]
    ldrh r1, [r5,#0x3e]
    cmp r0, r1
    beq loc_80A81CE
    add r2, r0, #0
    mov r0, #0x80
    ldr r1, [r5,#0x78]
    bl sub_800285C
    bl sub_800281C
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    tst r0, r1
    bne loc_80A81B8
    bl sub_8002FC2
    b loc_80A81CA
loc_80A81B8:
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x80a8248-0x80a81ba-2] // =0xFF
    tst r0, r1
    beq loc_80A81C6
    bl sub_8002E76
    b loc_80A81CA
loc_80A81C6:
    bl sub_8002E8C
loc_80A81CA:
    mov r0, #0xff
    strb r0, [r5,#0x15]
loc_80A81CE:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    beq loc_80A81DE
    bl sub_8002DF0
    bl sub_800281C
loc_80A81DE:
    bl sub_800283C
    ldrb r0, [r5,#0x16]
    bl sub_8002DCC
    ldr r0, [r5,#0x68]
    ldr r1, [r5,#0x6c]
    cmp r0, r1
    beq loc_80A81F4
    bl sub_8002FD8
loc_80A81F4:
    ldrb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    ldrh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    ldr r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    bl sub_80A8DB8
    ldr r0, [r5,#0x64]
    tst r0, r0
    bne loc_80A8216
    add r0, r5, #0
    add r0, #0x24 
    bl ho_802747C
loc_80A8216:
    bl sub_8002E60
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_80A8226
    bl sub_80A9094
locret_80A8226:
    pop {pc}
jt_80A8228:    .word sub_80A824C+1
    .word ho_80A8260+1
    .word sub_80A83D8+1
    .word sub_80A8440+1
    .word sub_80A8478+1
    .word sub_80A8486+1
    .word sub_80A84A4+1
off_80A8244:    .word jt_80A8228
off_80A8248:    .word 0x100
// end of function ho_cb_80A8168

.thumb
sub_80A824C:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80A825A
    bl sub_80A8DA8
loc_80A825A:
    bl sub_80A85D4
    pop {pc}
// end of function sub_80A824C

.thumb
ho_80A8260:
    push {lr}
    ldr r7, [pc, #0x80a827c-0x80a8262-2] // =jt_80A8274
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_80A85D4
    pop {pc}
    .balign 4, 0x00
jt_80A8274:    .word sub_80A8280+1
    .word sub_80A8354+1
off_80A827C:    .word jt_80A8274
// end of function ho_80A8260

.thumb
sub_80A8280:
    push {lr}
    ldr r7, [pc, #0x80a8340-0x80a8282-2] // =word_80A82FA
    ldrb r0, [r5,#0xe]
    lsl r0, r0, #2
    add r7, r7, r0
    ldr r0, [r5,#0x24]
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x70]
    ldr r0, [r5,#0x28]
    mov r3, #2
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x74]
    ldr r0, [pc, #0x80a8344-0x80a82a2-2] // =0x80000
    ldrb r1, [r5,#4]
    push {r5}
    bl loc_81116F0
    pop {r5}
    ldr r1, [pc, #0x80a8350-0x80a82ae-2] // =0xFF0
    add r0, r0, r1
    lsr r0, r0, #0xc
    strh r0, [r5,#0x20]
    ldr r7, [pc, #0x80a833c-0x80a82b6-2] // =0x80A8318
    ldrb r0, [r5,#0xe]
    add r0, r0, r0
    add r7, r7, r0
    ldrb r4, [r5,#4]
    mov r3, #0
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x40]
    mov r3, #1
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x24]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x28]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_80A8E06
    pop {pc}
word_80A82FA:    .hword 0x0
    .word 0x80000, 0x0, 0x0
    .word 0x8, 0xFFF80000, 0x0, 0x0
    .word 0xFFF8, 0x1, 0x100, 0xFF, 0x800FF00, 0xA000900, 0x1000B00
    .word 0x5000300, 0x700
dword_80A833C:    .word 0x80A831A
off_80A8340:    .word word_80A82FA
dword_80A8344:    .word 0x80000
    .word 0x80A832A, 0x80A8332
dword_80A8350:    .word 0xFFF
// end of function sub_80A8280

.thumb
sub_80A8354:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x10
    tst r0, r1
    bne loc_80A8366
    bl sub_80A8E80
    tst r0, r0
    bne loc_80A83C4
loc_80A8366:
    ldr r0, [r5,#0x30]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x28]
    ldr r0, [r5,#0x38]
    str r0, [r5,#0x2c]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_80A8396
    ldr r0, [r5,#0x70]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x74]
    str r0, [r5,#0x28]
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne loc_80A8390
    bl sub_80A8DA8
    pop {pc}
loc_80A8390:
    bl sub_80A8280
    pop {pc}
loc_80A8396:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x30]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x60]
    mov r1, #0x20 
    lsl r1, r1, #4
    tst r0, r1
    bne loc_80A83BE
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    str r0, [r5,#0x38]
loc_80A83BE:
    bl sub_80A8E06
    pop {pc}
loc_80A83C4:
    bl sub_80A8E06
    pop {pc}
    .balign 4, 0x00
    .word 0x2, 0x80A832A, 0x80A8332
// end of function sub_80A8354

.thumb
sub_80A83D8:
    push {lr}
    ldr r7, [pc, #0x80a83f4-0x80a83da-2] // =off_80A83EC
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_80A85D4
    pop {pc}
    .balign 4, 0x00
off_80A83EC:    .word sub_80A83F8+1
    .word sub_80A8412+1
off_80A83F4:    .word off_80A83EC
// end of function sub_80A83D8

.thumb
sub_80A83F8:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_80A83F8

.thumb
sub_80A8412:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl ho_802724E
    add r2, r0, #0
    lsl r2, r2, #0x10
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    cmp r0, r2
    bpl loc_80A843C
    str r2, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_80A8DA8
    pop {pc}
loc_80A843C:
    str r0, [r5,#0x2c]
    pop {pc}
// end of function sub_80A8412

.thumb
sub_80A8440:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_80A844E
    mov r0, #4
    strb r0, [r5,#0xa]
    b loc_80A8472
loc_80A844E:
    mov r7, #0x80
    ldr r7, [r5,r7]
    mov r1, #0xc0
    tst r7, r1
    beq loc_80A8466
    bl sub_8002E36
    tst r0, r7
    beq loc_80A8472
    bl sub_80A8DA8
    b loc_80A8472
loc_80A8466:
    bl sub_8002E36
    cmp r0, r7
    bne loc_80A8472
    bl sub_80A8DA8
loc_80A8472:
    bl sub_80A85D4
    pop {pc}
// end of function sub_80A8440

.thumb
sub_80A8478:
    push {lr}
    ldr r7, [r5,#0x7c]
    mov lr, pc
    bx r7
    bl sub_80A85D4
    pop {pc}
// end of function sub_80A8478

.thumb
sub_80A8486:
    push {r4,r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    mov r7, #0x80
    ldr r0, [r5,r7]
    mov r7, #0x84
    ldr r1, [r5,r7]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_80A849E
    bl sub_80A8DA8
loc_80A849E:
    bl sub_80A85D4
    pop {r4,r7,pc}
// end of function sub_80A8486

.thumb
sub_80A84A4:
    push {r4,r7,lr}
    mov r7, #0x80
    ldr r0, [r5,r7]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80A84D8
    bl sub_80A8DA8
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6d 
    bl sub_800285C
    bl sub_800281C
    bl sub_800425A
    bl sub_80A8DB0
loc_80A84D8:
    bl sub_80A85D4
    pop {r4,r7,pc}
// end of function sub_80A84A4

.thumb
cb_80A84DE:
    push {lr}
    ldr r7, [pc, #0x80a8504-0x80a84e0-4] // =off_80A8500
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_800283C
    bl sub_80A8DB8
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_80A84FE
    bl sub_80A9094
locret_80A84FE:
    pop {pc}
off_80A8500:    .word ho_cb_80A8508+1
off_80A8504:    .word off_80A8500
// end of function cb_80A84DE

.thumb
ho_cb_80A8508:
    push {lr}
    ldr r7, [pc, #0x80a8520-0x80a850a-2] // =jt_80A8518
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .balign 4, 0x00
jt_80A8518:    .word cb_80A8524+1
    .word cb_80A8598+1
off_80A8520:    .word jt_80A8518
// end of function ho_cb_80A8508

.thumb
cb_80A8524:
    push {lr}
    ldr r0, [r5,#0x60]
loc_80A8528:
    mov r1, #2
    tst r0, r1
    bne loc_80A8554
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
loc_80A8534:
    ldr r0, [r7,#0x28]
    ldr r2, [r5,#0x28]
    sub r0, r0, r2
    ldr r1, [r7,#0x24]
    ldr r2, [r5,#0x24]
    sub r1, r1, r2
    bl sub_8001740
    add r0, #0x20 
    mov r1, #0xc0
    and r0, r1
    lsr r0, r0, #5
    bl sub_8002DF0
    bl sub_800281C
loc_80A8554:
    ldr r2, [r5,#0x60]
    ldr r1, [pc, #0x80a8590-0x80a8556-2] // =0x400
    tst r2, r1
    beq loc_80A8580
    ldr r1, [pc, #0x80a8594-0x80a855c-4] // =0x800
    tst r2, r1
    beq loc_80A8574
    mov r7, r10
    ldr r7, [r7,#0x2c]
    mov r1, #0x90
    ldr r0, [r5,r1]
    str r0, [r7,#0x4c]
    bl sub_80AE02C
    str r0, [r7,#0x54]
    str r1, [r7,#0x58]
loc_80A8574:
    mov r2, #0x94
    ldr r0, [r5,r2]
    ldrb r1, [r5,#0x1c]
    bl sub_804E2A4
    b loc_80A8586
loc_80A8580:
    ldrb r0, [r5,#0x1c]
    bl sub_804DF90
loc_80A8586:
    mov r0, #4
    strb r0, [r5,#0xa]
    bl cb_80A8598
    pop {pc}
off_80A8590:    .word 0x400
off_80A8594:    .word 0x800
// end of function cb_80A8524

.thumb
cb_80A8598:
    push {lr}
    mov r0, #0x11
    mov r1, #0x75 
    bl sub_8024FF0
    bne locret_80A85B6
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x1a]
    tst r0, r0
    bne locret_80A85B6
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_80A8E5A
locret_80A85B6:
    pop {pc}
// end of function cb_80A8598

.thumb
sub_80A85B8:
    push {lr}
loc_80A85BA:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne locret_80A85D2
    ldr r6, [r5,#0x50]
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a8608-0x80a85c6-2] // =jt_big_80A860C
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x50]
    b loc_80A85BA
locret_80A85D2:
    pop {pc}
// end of function sub_80A85B8

.thumb
sub_80A85D4:
    push {lr}
loc_80A85D6:
    ldrb r0, [r5,#0x1f]
    tst r0, r0
    bne loc_80A85F2
    ldr r6, [r5,#0x5c]
    tst r6, r6
    beq locret_80A85F6
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, [pc, #0x80a8608-0x80a85e6-2] // =jt_big_80A860C
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x5c]
    b loc_80A85D6
loc_80A85F2:
    bl sub_80A85F8
locret_80A85F6:
    pop {pc}
// end of function sub_80A85D4

.thumb
sub_80A85F8:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_80A8606
    mov r0, #0
    strb r0, [r5,#0x1f]
locret_80A8606:
    pop {pc}
off_80A8608:    .word jt_big_80A860C
jt_big_80A860C:    .word sub_80A873C+1
    .word 0x0
    .word cb_80A8744+1
    .word cb_80A8750+1
    .word cb_80A876E+1
    .word sub_80A878C+1
    .word sub_80A87AA+1
    .word sub_80A87BC+1
    .word cb_80A87CE+1
    .word cb_80A87D6+1
    .word cb_80A87DE+1
    .word cb_80A87E6+1
    .word cb_80A87EE+1
    .word cb_80A8804+1
    .word cb_80A8812+1
    .word sub_80A881E+1
    .word sub_80A8828+1
    .word sub_80A883E+1
    .word sub_80A8858+1
    .word sub_80A8866+1
    .word sub_80A8872+1
    .word sub_80A8896+1
    .word sub_80A88B4+1
    .word sub_80A88BC+1
    .word sub_80A88FC+1
    .word sub_80A8904+1
    .word sub_80A890C+1
    .word sub_80A8914+1
    .word sub_80A891C+1
    .word sub_80A892A+1
    .word sub_80A893E+1
    .word sub_80A8956+1
    .word sub_80A8962+1
    .word sub_80A8970+1
    .word sub_80A8982+1
    .word sub_80A8994+1
    .word sub_80A89B8+1
    .word sub_80A89BC+1
    .word sub_80A89D0+1
    .word sub_80A89DC+1
    .word sub_80A89E8+1
    .word sub_80A89F8+1
    .word sub_80A8A92+1
    .word sub_80A8AAA+1
    .word 0x0
    .word sub_80A8ABA+1
    .word sub_80A8AD2+1
    .word sub_80A8ADE+1
    .word sub_80A8AF6+1
    .word sub_80A8B00+1
    .word sub_80A8B14+1
    .word sub_80A8B22+1
    .word sub_80A8B34+1
    .word sub_80A8B3E+1
    .word sub_80A8B6C+1
    .word sub_80A8B7E+1
    .word sub_80A8BBE+1
    .word sub_80A8BE4+1
    .word sub_80A8C10+1
    .word sub_80A8C16+1
    .word sub_80A8C38+1
    .word sub_80A8C48+1
    .word sub_80A8C66+1
    .word sub_80A8C84+1
    .word sub_80A8C9C+1
    .word sub_80A8CAC+1
    .word sub_80A8CBC+1
    .word sub_80A8CD8+1
    .word sub_80A8CF4+1
    .word sub_80A8D10+1
    .word sub_80A8D2C+1
    .word sub_80A8D46+1
    .word sub_80A8D56+1
    .word sub_80A8D60+1
    .word sub_80A8D6A+1
    .word sub_80A8D7E+1
// end of function sub_80A85F8

.thumb
sub_80A873C:
    push {lr}
    bl sub_80A8DB0
    pop {pc}
// end of function sub_80A873C

.thumb
cb_80A8744:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
// end of function cb_80A8744

.thumb
cb_80A8750:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6d 
    bl sub_800285C
    bl sub_800281C
    bl sub_800425A
    bl sub_80A8DB0
    pop {pc}
// end of function cb_80A8750

.thumb
cb_80A876E:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80A8788
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
loc_80A8788:
    add r6, #7
    pop {pc}
// end of function cb_80A876E

.thumb
sub_80A878C:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80A87A6
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
loc_80A87A6:
    add r6, #7
    pop {pc}
// end of function sub_80A878C

.thumb
sub_80A87AA:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    add r6, #3
    pop {pc}
// end of function sub_80A87AA

.thumb
sub_80A87BC:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    add r6, #3
    pop {pc}
// end of function sub_80A87BC

.thumb
cb_80A87CE:
    mov r0, #3
    strb r0, [r5]
    add r6, #1
    mov pc, lr
// end of function cb_80A87CE

.thumb
cb_80A87D6:
    mov r0, #1
    strb r0, [r5]
    add r6, #1
    mov pc, lr
// end of function cb_80A87D6

.thumb
cb_80A87DE:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xc]
    add r6, #2
    mov pc, lr
// end of function cb_80A87DE

.thumb
cb_80A87E6:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xd]
    add r6, #2
    mov pc, lr
// end of function cb_80A87E6

.thumb
cb_80A87EE:
    mov r1, #1
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x11]
    mov r1, #2
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x12]
    mov r1, #3
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x13]
    add r6, #4
    mov pc, lr
// end of function cb_80A87EE

.thumb
cb_80A8804:
    mov r0, #1
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function cb_80A8804

.thumb
cb_80A8812:
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function cb_80A8812

.thumb
sub_80A881E:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x16]
    add r6, #2
    pop {pc}
// end of function sub_80A881E

.thumb
sub_80A8828:
    push {lr}
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x20]
    bl sub_80A8DB0
    add r6, #2
    pop {pc}
// end of function sub_80A8828

.thumb
sub_80A883E:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80A8DB0
    add r6, #3
    pop {pc}
// end of function sub_80A883E

.thumb
sub_80A8858:
    mov r0, #2
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A8858

.thumb
sub_80A8866:
    mov r0, #2
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A8866

.thumb
sub_80A8872:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    add r0, r6, #3
    bl sub_80A8EA0
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    add r0, r6, #5
    bl sub_80A8EA0
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    add r6, #7
    pop {pc}
// end of function sub_80A8872

.thumb
sub_80A8896:
    push {lr}
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80A8DB0
    add r6, #4
    pop {pc}
// end of function sub_80A8896

.thumb
sub_80A88B4:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    add r6, #2
    mov pc, lr
// end of function sub_80A88B4

.thumb
sub_80A88BC:
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    mov r1, #0
    strb r1, [r5,#0x16]
    str r1, [r5,#0x68]
    ldr r1, [pc, #0x80a88f8-0x80a88c6-2] // =dword_80A8090+8
    mov r3, #0
loc_80A88CA:
    ldrb r2, [r1,r3]
    cmp r2, r0
    beq loc_80A88D8
    cmp r2, #0xff
    beq loc_80A88E6
    add r3, #3
    b loc_80A88CA
loc_80A88D8:
    add r3, #1
    ldrb r0, [r1,r3]
    lsl r0, r0, #0x18
    str r0, [r5,#0x68]
    add r3, #1
    ldrb r0, [r1,r3]
    strb r0, [r5,#0x16]
loc_80A88E6:
    mov r0, #0x18
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #2
    mov pc, lr
    .balign 4, 0x00
off_80A88F8:    .word dword_80A8090+8
// end of function sub_80A88BC

.thumb
sub_80A88FC:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    add r6, #2
    mov pc, lr
// end of function sub_80A88FC

.thumb
sub_80A8904:
    mov r0, #0
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
// end of function sub_80A8904

.thumb
sub_80A890C:
    mov r0, #2
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
// end of function sub_80A890C

.thumb
sub_80A8914:
    mov r0, #3
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
// end of function sub_80A8914

.thumb
sub_80A891C:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EAA
    str r0, [r5,#0x68]
    add r6, #5
    pop {pc}
// end of function sub_80A891C

.thumb
sub_80A892A:
    push {lr}
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r5,#0x68]
    orr r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
// end of function sub_80A892A

.thumb
sub_80A893E:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    mvn r1, r1
    ldr r0, [r5,#0x68]
    and r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
// end of function sub_80A893E

.thumb
sub_80A8956:
    mov r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A8956

.thumb
sub_80A8962:
    mov r0, #4
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A8962

.thumb
sub_80A8970:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002FC2
    add r6, #1
    pop {pc}
// end of function sub_80A8970

.thumb
sub_80A8982:
    push {lr}
    ldr r0, [pc, #0x80a89b0-0x80a8984-4] // =0x180
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    bl sub_8002E76
    add r6, #1
    pop {pc}
// end of function sub_80A8982

.thumb
sub_80A8994:
    push {lr}
    mov r0, #0x80
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x80a89b4-0x80a89a0-4] // =0xFF
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002E8C
    add r6, #1
    pop {pc}
    .byte 0, 0
off_80A89B0:    .word 0x180
off_80A89B4:    .word 0x100
// end of function sub_80A8994

.thumb
sub_80A89B8:
    push {lr}
    pop {pc}
// end of function sub_80A89B8

.thumb
sub_80A89BC:
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    ldrb r0, [r6,#2]
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #3
    mov pc, lr
// end of function sub_80A89BC

.thumb
sub_80A89D0:
    mov r0, #8
    ldr r1, [r5,#0x60]
    eor r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A89D0

.thumb
sub_80A89DC:
    mov r0, #0x10
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
// end of function sub_80A89DC

.thumb
sub_80A89E8:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    bl f500_8000558
    add r6, #3
    pop {pc}
// end of function sub_80A89E8

.thumb
sub_80A89F8:
    push {lr}
    mov r0, #0xc0
    lsl r0, r0, #4
    mov r1, #2
    orr r0, r1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #1
    bl sub_80A8EA0
    mov r1, #0x90
    str r0, [r5,r1]
    bl sub_80ADFBC
    tst r0, r0
    beq loc_80A8A66
    ldr r4, [pc, #0x80a8a88-0x80a8a1a-2] // =dword_80A8A8C
    ldrb r4, [r4,r0]
    strb r4, [r5,#0x16]
    mov r4, #0x40 
    mul r4, r1
    ldr r1, [r5,#0x60]
    orr r1, r4
    str r1, [r5,#0x60]
    sub r3, #1
    mov r1, #0xa
    mul r3, r1
    add r3, r3, r0
    sub r3, #1
    strb r3, [r5,#0x1c]
    ldr r4, [pc, #0x80a8a84-0x80a8a36-2] // =unk_8755B7C
    mov r1, #0x94
    str r4, [r5,r1]
    mov r1, #0
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    mov r1, #2
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    mov r1, #4
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #2
    strb r0, [r5,#0x11]
    mov r0, #2
    neg r0, r0
    strb r0, [r5,#0x12]
    add r6, #3
    pop {pc}
loc_80A8A66:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6d 
    bl sub_800285C
    bl sub_800281C
    bl sub_800425A
    bl sub_80A8DB0
    pop {pc}
    .balign 4, 0x00
off_80A8A84:    .word unk_8755B7C
off_80A8A88:    .word dword_80A8A8C
dword_80A8A8C:    .word 0x20000FF
    .hword 0x102
// end of function sub_80A89F8

.thumb
sub_80A8A92:
    push {lr}
    ldrb r0, [r6,#1]
    mov r7, #0x80
    str r0, [r5,r7]
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80A8DB0
    add r6, #2
    pop {pc}
// end of function sub_80A8A92

.thumb
sub_80A8AAA:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    bl sub_8002F02
    add r6, #3
    pop {pc}
// end of function sub_80A8AAA

.thumb
sub_80A8ABA:
    push {lr}
    bl sub_8002F5E
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    add r2, r0, r1
    tst r2, r2
    beq loc_80A8ACE
    bl sub_8002F28
loc_80A8ACE:
    add r6, #3
    pop {pc}
// end of function sub_80A8ABA

.thumb
sub_80A8AD2:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    mvn r0, r0
    strb r0, [r5,#0x15]
    add r6, #2
    mov pc, lr
// end of function sub_80A8AD2

.thumb
sub_80A8ADE:
    push {lr}
    bl sub_8002D9E
    bl sub_8002D60
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r2, [r6,#3]
    bl sub_8002C70
    add r6, #4
    pop {pc}
// end of function sub_80A8ADE

.thumb
sub_80A8AF6:
    push {lr}
    bl sub_8002D9E
    add r6, #1
    pop {pc}
// end of function sub_80A8AF6

.thumb
sub_80A8B00:
    push {lr}
    bl sub_8002D1A
    ldrb r0, [r6,#1]
    tst r0, r0
    beq loc_80A8B10
    bl sub_8002CC6
loc_80A8B10:
    add r6, #2
    pop {pc}
// end of function sub_80A8B00

.thumb
sub_80A8B14:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EAA
    str r0, [r5,#0x5c]
    add r6, #5
    pop {pc}
// end of function sub_80A8B14

.thumb
sub_80A8B22:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xb]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x22]
    mov r0, #1
    strb r0, [r5,#0x1f]
    add r6, #2
    pop {pc}
// end of function sub_80A8B22

.thumb
sub_80A8B34:
    mov r0, #0
    str r0, [r5,#0x5c]
    strh r0, [r5,#0x22]
    mov r6, #0
    mov pc, lr
// end of function sub_80A8B34

.thumb
sub_80A8B3E:
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_80A8EAA
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_80A8B5C:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_80A8B5C
    bl sub_80A8DB0
    add r6, #5
    pop {pc}
// end of function sub_80A8B3E

.thumb
sub_80A8B6C:
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
// end of function sub_80A8B6C

.thumb
sub_80A8B7E:
    push {lr}
    mov r4, #0x8c
    mov r1, #9
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    ldrb r2, [r6,#4]
    strh r2, [r5,#0x20]
    add r0, r6, #5
    bl sub_80A8EAA
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_80A8BAE:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_80A8BAE
    bl sub_80A8DB0
    add r6, #9
    pop {pc}
// end of function sub_80A8B7E

.thumb
sub_80A8BBE:
    push {lr}
    mov r4, #0x8c
    mov r1, #8
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    mov r4, #0x81
    strb r2, [r5,r4]
    ldrb r2, [r6,#2]
    mov r4, #0x82
    strb r2, [r5,r4]
    ldrb r2, [r6,#3]
    mov r4, #0x83
    strb r2, [r5,r4]
    add r0, r6, #4
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
// end of function sub_80A8BBE

.thumb
sub_80A8BE4:
    push {lr}
    ldrb r0, [r6,#1]
    mov r4, #0x81
    ldrb r2, [r5,r4]
    add r2, r2, r0
    mov r0, #7
    and r2, r0
    strb r2, [r5,#0xe]
    mov r4, #0x82
    ldrb r2, [r5,r4]
    strb r2, [r5,#4]
    mov r4, #0x83
    ldrb r2, [r5,r4]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_80A8DB0
    add r6, #2
    pop {pc}
// end of function sub_80A8BE4

.thumb
sub_80A8C10:
    mov r4, #0x8c
    ldr r6, [r5,r4]
    mov pc, lr
// end of function sub_80A8C10

.thumb
sub_80A8C16:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#6]
    ldrb r1, [r6,#1]
    cmp r0, r1
    blt loc_80A8C34
    ldrb r2, [r6,#2]
    cmp r0, r2
    bgt loc_80A8C34
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    b locret_80A8C36
loc_80A8C34:
    add r6, #7
locret_80A8C36:
    pop {pc}
// end of function sub_80A8C16

.thumb
sub_80A8C38:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    strb r1, [r4,r0]
    add r6, #3
    pop {pc}
// end of function sub_80A8C38

.thumb
sub_80A8C48:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_80A8C62
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
loc_80A8C62:
    add r6, #7
    pop {pc}
// end of function sub_80A8C48

.thumb
sub_80A8C66:
    push {r7,lr}
    mov r0, #0x14
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    mov r7, #0x80
    str r0, [r5,r7]
    ldrb r0, [r6,#2]
    mov r7, #0x84
    str r0, [r5,r7]
    bl sub_80A8DB0
    add r6, #3
    pop {r7,pc}
// end of function sub_80A8C66

.thumb
sub_80A8C84:
    push {lr}
    add r6, #1
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#0xc]
    lsl r1, r1, #2
    add r6, r6, r1
    add r0, r6, #0
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
// end of function sub_80A8C84

.thumb
sub_80A8C9C:
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    bic r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
// end of function sub_80A8C9C

.thumb
sub_80A8CAC:
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
// end of function sub_80A8CAC

.thumb
sub_80A8CBC:
    push {lr}
    ldrb r0, [r6,#1]
    bl sub_8043E48
    ldrb r1, [r6,#2]
    cmp r0, r1
    bne loc_80A8CD4
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
loc_80A8CD4:
    add r6, #7
    pop {pc}
// end of function sub_80A8CBC

.thumb
sub_80A8CD8:
    push {lr}
    ldrb r0, [r6,#1]
    bl sub_8043E48
    ldrb r1, [r6,#2]
    cmp r0, r1
    beq loc_80A8CF0
    add r0, r6, #3
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
loc_80A8CF0:
    add r6, #7
    pop {pc}
// end of function sub_80A8CD8

.thumb
sub_80A8CF4:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    ldr r0, [pc, #0x80a8f0c-0x80a8cfa-2] // =0x400
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #2
    bl sub_80A8EAA
    mov r1, #0x80
    str r0, [r5,r1]
    add r6, #6
    pop {pc}
// end of function sub_80A8CF4

.thumb
sub_80A8D10:
    push {r7,lr}
    mov r0, #0x18
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    add r0, r6, #1
    bl sub_80A8EA0
    mov r7, #0x80
    str r0, [r5,r7]
    bl sub_80A8DB0
    add r6, #3
    pop {r7,pc}
// end of function sub_80A8D10

.thumb
sub_80A8D2C:
    push {lr}
    mov r7, r10
    ldr r4, [r7,#0x1c]
    ldr r7, [pc, #0x80a8f04-0x80a8d32-2] // =byte_2006140
    bl sub_8002CB4
    ldrb r0, [r6,#1]
    tst r0, r0
    bne loc_80A8D42
    bl sub_8002C9E
loc_80A8D42:
    add r6, #2
    pop {pc}
// end of function sub_80A8D2C

.thumb
sub_80A8D46:
    push {lr}
    add r0, r6, #1
    bl sub_80A8EA0
    bl f500_8000560
    add r6, #3
    pop {pc}
// end of function sub_80A8D46

.thumb
sub_80A8D56:
    push {lr}
    bl sub_8003038
    add r6, #1
    pop {pc}
// end of function sub_80A8D56

.thumb
sub_80A8D60:
    push {lr}
    bl sub_8002E8C
    add r6, #1
    pop {pc}
// end of function sub_80A8D60

.thumb
sub_80A8D6A:
    push {lr}
    add r0, r6, #2
    bl sub_80A8EA0
    add r1, r0, #0
    ldrb r0, [r6,#1]
    bl sub_8025FE0
    add r6, #4
    pop {pc}
// end of function sub_80A8D6A

.thumb
sub_80A8D7E:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r1, [r5,#0x14]
    cmp r1, r0
    bne loc_80A8D8C
    add r6, #6
    pop {pc}
loc_80A8D8C:
    add r6, #2
    add r0, r6, #0
    bl sub_80A8EAA
    add r6, r0, #0
    pop {pc}
// end of function sub_80A8D7E

.thumb
sub_80A8D98:
    push {lr}
    str r0, [r5,#0x50]
    mov r0, #0
    strb r0, [r5,#0x19]
    strb r0, [r5,#0x18]
    strb r0, [r5,#0x1f]
    str r0, [r5,#0x5c]
    pop {pc}
// end of function sub_80A8D98

.thumb
sub_80A8DA8:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x19]
    pop {pc}
// end of function sub_80A8DA8

.thumb
sub_80A8DB0:
    push {lr}
    mov r0, #1
    strb r0, [r5,#0x19]
    pop {pc}
// end of function sub_80A8DB0

.thumb
sub_80A8DB8:
    push {lr}
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq loc_80A8E00
    push {r5}
    ldr r4, [r5,#0x4c]
    mvn r0, r4
    mov r8, r0
    ldr r0, [r5,#0x60]
    mov r1, #4
    tst r0, r1
    beq loc_80A8DD4
    mov r4, #0
loc_80A8DD4:
    ldr r0, [r5,#0x24]
    mov r6, #0x11
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r0, r0, r6
    ldr r1, [r5,#0x28]
    mov r6, #0x12
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r1, r1, r6
    ldr r2, [r5,#0x2c]
    mov r6, #0x13
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r2, r2, r6
    mov r6, #0x54 
    add r6, r6, r5
    ldrh r3, [r5,#0xc]
    mov r5, r8
    bl sub_800364C
    pop {r5}
loc_80A8E00:
    mov r0, #0
    str r0, [r5,#0x54]
    pop {pc}
// end of function sub_80A8DB8

.thumb
sub_80A8E06:
    push {lr}
    push {r5}
    ldr r0, [r5,#0x30]
    mov r6, #0x11
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r0, r0, r6
    ldr r1, [r5,#0x34]
    mov r6, #0x12
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r1, r1, r6
    ldr r2, [r5,#0x38]
    mov r6, #0x13
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r2, r2, r6
    mov r6, #0x58 
    add r6, r6, r5
    ldr r3, [pc, #0x80a8e40-0x80a8e2c-4] // =0x2004
    mov r4, #0
    ldr r5, [r5,#0x4c]
    mvn r5, r5
    bl sub_800364C
    pop {r5}
    mov r0, #0
    str r0, [r5,#0x58]
    pop {pc}
off_80A8E40:    .word 0x2004
// end of function sub_80A8E06

.thumb
sub_80A8E44:
    push {lr}
    ldrb r0, [r5,#9]
    strb r0, [r5,#0x1d]
    ldrb r0, [r5,#0xa]
    strb r0, [r5,#0x1e]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80A8E44

.thumb
sub_80A8E5A:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#0x1d]
    strb r0, [r5,#9]
    ldrb r0, [r5,#0x1e]
    strb r0, [r5,#0xa]
    ldr r0, [r5,#0x60]
    mov r1, #2
    tst r0, r1
    bne loc_80A8E7A
    ldrb r0, [r5,#0x14]
    bl sub_8002DF0
    bl sub_800281C
loc_80A8E7A:
    mov r0, #0
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_80A8E5A

.thumb
sub_80A8E80:
    push {lr}
    mov r0, #0
    ldr r1, [r5,#0x4c]
    mvn r1, r1
    lsr r1, r1, #0x10
    lsl r1, r1, #0x10
    ldr r2, [pc, #0x80a8e9c-0x80a8e8c-4] // =0x0
    orr r2, r1
    ldr r1, [r5,#0x58]
    tst r1, r2
    beq locret_80A8E98
    mov r0, #1
locret_80A8E98:
    pop {pc}
    .balign 4, 0x00
dword_80A8E9C:    .word 0x1
// end of function sub_80A8E80

.thumb
sub_80A8EA0:
    ldrb r1, [r0]
    ldrb r0, [r0,#1]
    lsl r0, r0, #8
    orr r0, r1
    mov pc, lr
// end of function sub_80A8EA0

.thumb
sub_80A8EAA:
    ldrb r1, [r0]
    ldrb r2, [r0,#1]
    lsl r2, r2, #8
    ldrb r3, [r0,#2]
    lsl r3, r3, #0x10
    ldrb r0, [r0,#3]
    lsl r0, r0, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    mov pc, lr
// end of function sub_80A8EAA

.thumb
sub_80A8EC0:
    push {lr}
    ldrb r0, [r5,#0x10]
    add r0, #0x10
    mov r1, #1
    lsl r1, r0
    str r1, [r5,#0x4c]
    pop {pc}
// end of function sub_80A8EC0

.thumb
sub_80A8ECE:
    push {r7}
    mov r3, #0x10
    ldr r7, [pc, #0x80a8ee8-0x80a8ed2-2] // =byte_2006140
loc_80A8ED4:
    ldrb r1, [r7,#0x10]
    cmp r1, r0
    beq loc_80A8EE2
    add r7, #0xd8
    sub r3, #1
    bne loc_80A8ED4
    mov r7, #0
loc_80A8EE2:
    add r0, r7, #0
    pop {r7}
    mov pc, lr
off_80A8EE8:    .word byte_2006140
// end of function sub_80A8ECE

.thumb
sub_80A8EEC:
    push {lr}
    ldr r3, [pc, #0x80a8f04-0x80a8eee-2] // =byte_2006140
    ldr r2, [pc, #0x80a8f08-0x80a8ef0-4] // =0xD80
    add r2, r2, r3
loc_80A8EF4:
    ldr r0, [r3,#0x54]
    mov r1, #4
    bic r0, r1
    str r0, [r3,#0x54]
    add r3, #0xd8
    cmp r3, r2
    blt loc_80A8EF4
    pop {pc}
off_80A8F04:    .word byte_2006140
off_80A8F08:    .word 0xD80
off_80A8F0C:    .word 0x400
    .word 0xDC9E1122, 0x220F1021, 0x21DC9E11, 0x10027810, 0x80A8F
dword_80A8F24:    .word 0x24020110, 0x80A8F, 0x390816, 0x3C100116, 0x4390A16
    .word 0x3C100516, 0xA8F2C02, 0x8, 0x390916, 0x3C100316
    .word 0x4390B16, 0x3C100716, 0xA8F4402, 0x8, 0x390B16
    .word 0x3C100716, 0x4390916, 0x3C100316, 0xA8F5C02, 0x8
dword_80A8F74:    .word 0x390A16, 0x3C100516, 0x4390816, 0x3C100116, 0xA8F7402
    .word 0x8, 0x390816, 0x6390B16, 0x4390A16, 0x2390916
    .word 0xA8F8C02, 0x8, 0x390916, 0x2390A16, 0x4390B16
    .word 0x6390816, 0xA8FA402, 0x8, 0x390816, 0x3C100116
    .word 0x3A, 0x390A16, 0x3C100516, 0x3A, 0x390916
    .word 0x3C100316, 0x3A, 0x390B16, 0x3C100716, 0x3A
    .word 0x3C100516, 0x3C100316, 0xA8FEC02, 0x8, 0x3C100716
    .word 0x3C100116, 0xA8FFC02, 0x8, 0x390B16, 0x3C100116
    .word 0x4390916, 0x3C100116, 0xA900C02, 0x8, 0x390A16
    .word 0x3C100716, 0x4390816, 0x3C100716, 0xA902402, 0x8
    .word 0x390816, 0x3A, 0x390A16, 0x3A, 0x390916
    .word 0x3A, 0x390B16, 0x3A, 0x390816, 0x4390A16
    .word 0x3A, 0x390B16, 0x4390916, 0x3A
// end of function sub_80A8EEC

.thumb
sub_80A9074:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x19]
    pop {pc}
// end of function sub_80A9074

.thumb
sub_80A907C:
    push {lr}
    mov r0, #0x11
    mov r1, #0x6a 
    bl sub_8024FF0
    bne locret_80A9090
    ldr r0, [pc, #0x80a9138-0x80a9088-4] // =byte_20093F0
    mov r1, #0
    strb r1, [r0]
    str r1, [r0,#0x4] // (dword_20093F4 - 0x20093f0)
locret_80A9090:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80A907C

.thumb
sub_80A9094:
    push {r4,r6,r7,lr}
    mov r0, #0x11
    mov r1, #0x6a 
    bl sub_8024FF0
    bne locret_80A90B2
    ldr r7, [pc, #0x80a913c-0x80a90a0-4] // =byte_20093F0
    ldrb r6, [r7]
    cmp r6, #0x10
    bge locret_80A90B2
    add r4, r6, #1
    strb r4, [r7]
    lsl r6, r6, #2
    add r6, #8
    str r5, [r7,r6]
locret_80A90B2:
    pop {r4,r6,r7,pc}
// end of function sub_80A9094

.thumb
sub_80A90B4:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x6a 
    bl sub_8024FF0
    bne locret_80A912E
    ldr r7, [pc, #0x80a9140-0x80a90c0-4] // =byte_20093F0
    ldrb r6, [r7]
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldr r4, [r4,#0x28]
    add r7, #8
loc_80A90CC:
    sub r6, #1
    blt loc_80A9118
    ldr r5, [r7]
    ldr r2, [r4,#0x2c]
    ldr r0, [r5,#0x2c]
    cmp r0, r2
    bne loc_80A9114
    ldr r2, [r4,#0x24]
    ldr r3, [r4,#0x28]
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    sub r0, r0, r2
    sub r1, r1, r3
    mov r3, #0x24 
    lsl r3, r3, #0x10
    sub r2, r0, r1
    cmp r2, r3
    bgt loc_80A9114
    mov r3, #0x38 
    lsl r3, r3, #0x10
    neg r3, r3
    sub r2, r0, r1
    cmp r2, r3
    blt loc_80A9114
    mov r3, #0x1c
    lsl r3, r3, #0x10
    add r2, r0, r1
    cmp r2, r3
    bgt loc_80A9114
    mov r3, #0x1c
    lsl r3, r3, #0x10
    neg r3, r3
    add r2, r0, r1
    cmp r2, r3
    blt loc_80A9114
    b loc_80A9120
loc_80A9114:
    add r7, #4
    b loc_80A90CC
loc_80A9118:
    bl sub_80A907C
    mov r0, #0
    pop {r4-r7,pc}
loc_80A9120:
    push {r5}
    bl sub_80A907C
    pop {r0}
    ldr r7, [pc, #0x80a9144-0x80a9128-4] // =byte_20093F0
    str r0, [r7,#0x4] // (dword_20093F4 - 0x20093f0)
    pop {r4-r7,pc}
locret_80A912E:
    pop {r4-r7,pc}
// end of function sub_80A90B4

.thumb
sub_80A9130:
    ldr r7, [pc, #0x80a9148-0x80a9130-4] // =byte_20093F0
    ldr r7, [r7,#0x4] // (dword_20093F4 - 0x20093f0)
    mov pc, lr  // <endpool>
// end of function sub_80A9130

    .balign 4, 0x00
off_80A9138:    .word byte_20093F0
off_80A913C:    .word byte_20093F0
off_80A9140:    .word byte_20093F0
off_80A9144:    .word byte_20093F0
off_80A9148:    .word byte_20093F0
off_80A914C:    .word dword_80A9158
    .word dword_80A9210  // <endfilepool>
/*For debugging purposes, connect comment at any range!*/
