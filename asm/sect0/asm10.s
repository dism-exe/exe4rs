.include "sect0/asm10.inc"

.thumb
ho_806FE20:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x806fe34-0x806fe2a-2] // jt_806FE38
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806FE34:    .word jt_806FE38
jt_806FE38:    .word sub_806FE58+1
    .word sub_806FE74+1
    .word sub_806FE90+1
    .word sub_806FEAC+1
    .word sub_806FEC8+1
    .word sub_806FEE4+1
    .word sub_806FF00+1
    .word sub_806FF1C+1
// end of function ho_806FE20

.thumb
sub_806FE58:
    push {lr}
    cmp r0, #0
    bne loc_806FE64
    cmp r1, #2
    bne loc_806FE64
    pop {pc}
loc_806FE64:
    ldr r0, [pc, #0x806ff38-0x806fe64-4] // dword_806E9C0+244
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FE58

.thumb
sub_806FE74:
    push {lr}
    cmp r0, #0
    bne loc_806FE80
    cmp r1, #3
    bne loc_806FE80
    pop {pc}
loc_806FE80:
    ldr r0, [pc, #0x806ff3c-0x806fe80-4] // dword_806E9C0+972
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FE74

.thumb
sub_806FE90:
    push {lr}
    cmp r0, #0
    bne loc_806FE9C
    cmp r1, #4
    bne loc_806FE9C
    pop {pc}
loc_806FE9C:
    ldr r0, [pc, #0x806ff40-0x806fe9c-4] // dword_806E9C0+1532
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FE90

.thumb
sub_806FEAC:
    push {lr}
    cmp r0, #0
    bne loc_806FEB8
    cmp r1, #5
    bne loc_806FEB8
    pop {pc}
loc_806FEB8:
    ldr r0, [pc, #0x806ff44-0x806feb8-4] // dword_806F1C0+32
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FEAC

.thumb
sub_806FEC8:
    push {lr}
    cmp r0, #4
    bne loc_806FED4
    cmp r1, #2
    bne loc_806FED4
    pop {pc}
loc_806FED4:
    ldr r0, [pc, #0x806ff48-0x806fed4-4] // dword_806F340+248
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FEC8

.thumb
sub_806FEE4:
    push {lr}
    cmp r0, #3
    bne loc_806FEF0
    cmp r1, #1
    bne loc_806FEF0
    pop {pc}
loc_806FEF0:
    ldr r0, [pc, #0x806ff4c-0x806fef0-4] // dword_806F340+576
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FEE4

.thumb
sub_806FF00:
    push {lr}
    cmp r0, #1
    bne loc_806FF0C
    cmp r1, #1
    bne loc_806FF0C
    pop {pc}
loc_806FF0C:
    ldr r0, [pc, #0x806ff50-0x806ff0c-4] // dword_806F340+1112
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
// end of function sub_806FF00

.thumb
sub_806FF1C:
    push {lr}
    cmp r0, #4
    bne loc_806FF28
    cmp r1, #9
    bne loc_806FF28
    pop {pc}
loc_806FF28:
    ldr r0, [pc, #0x806ff54-0x806ff28-4] // dword_806F340+1736
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x52 
    bl sub_8024F9C
    pop {pc}
off_806FF38:    .word dword_806E9C0+0xF4
off_806FF3C:    .word dword_806E9C0+0x3CC
off_806FF40:    .word dword_806E9C0+0x5FC
off_806FF44:    .word dword_806F1C0+0x20
off_806FF48:    .word dword_806F340+0xF8
off_806FF4C:    .word dword_806F340+0x240
off_806FF50:    .word dword_806F340+0x458
off_806FF54:    .word dword_806F340+0x6C8
// end of function sub_806FF1C

.thumb
sub_806FF58:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x806ff6c-0x806ff62-2] // pt_806FF70
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_806FF6C:    .word pt_806FF70
pt_806FF70:    .word dword_806FF90  // <endpool>
// end of function sub_806FF58

    .word dword_8070020  // <filepool>
    .word dword_8070038
    .word dword_8070064
    .word dword_8070090
    .word dword_80700BC
    .word dword_80700E8
    .word dword_8070114
dword_806FF90:    .word 0x605, 0x100000, 0xFF8E0000, 0xFFE00000, 0x35, 0x605
    .word 0x400000, 0xFF8E0000, 0xFFE00000, 0x36, 0x605, 0x700000
    .word 0xFF8E0000, 0xFFE00000, 0x37, 0x605, 0xFFF80000, 0xFFE60000
    .word 0xFFE00000, 0x1038, 0x605, 0x280000, 0xFFE60000, 0xFFE00000
    .word 0x1039, 0x605, 0x580000, 0xFFE60000, 0xFFE00000, 0x103A
    .word 0x605, 0x880000, 0xFFE60000, 0xFFE00000, 0x103B, 0xFF
dword_8070020:    .word 0x605, 0x520000, 0xFF2E0000, 0xFFE00000, 0x3C, 0xFF
dword_8070038:    .word 0x605, 0x820000, 0xFF5C0000, 0xFFE00000, 0x3D, 0x5, 0xFFB20000
    .word 0xFF5C0000, 0xFFFC0000, 0x27, 0xFF
dword_8070064:    .word 0x605, 0xFFFA0000, 0x760000, 0xFFE00000, 0x3E, 0x5, 0xAC0000
    .word 0x440000, 0xFFFC0000, 0x1C, 0xFF
dword_8070090:    .word 0x605, 0x5A0000, 0x760000, 0xFFE00000, 0x3F, 0x5, 0xEA0000
    .word 0xFFC40000, 0xFFFC0000, 0x27, 0xFF
dword_80700BC:    .word 0x605, 0xFF8A0000, 0xA60000, 0xFFE00000, 0x40, 0x5, 0xB40000
    .word 0xFF380000, 0xFFE00000, 0x27, 0xFF
dword_80700E8:    .word 0x605, 0x1420000, 0xFF6E0000, 0xFFE00000, 0x41, 0x5
    .word 0xFF940000, 0x3C0000, 0xFFFC0000, 0x1C, 0xFF
dword_8070114:    .word 0x605, 0xFEF20000, 0xFFBE0000, 0xFFE00000, 0x42, 0xFF
    .word 0x8070234, 0x8070358, 0x80703B8, 0x807040C, 0x8070460, 0x80704A0
    .word 0x8070530, 0x8070584, 0x807023E, 0x8070362, 0x80703B9, 0x807040D
    .word 0x807049D, 0x80704AA, 0x8070531, 0x8070585
pt_807016C:    .word dword_8070588
    .word off_807058C
    .word off_8070648
    .word off_807080C
    .word off_80709A0
    .word off_8070A60
    .word off_8070C18
    .word off_8070DA0
    .word dword_80701AC
    .word dword_80701BC
    .word dword_80701CC
    .word dword_80701DC
    .word dword_80701EC
    .word dword_80701FC
    .word dword_807020C
    .word dword_807021C
dword_80701AC:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80701BC:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80701CC:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80701DC:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80701EC:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80701FC:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_807020C:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_807021C:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x12121212
    .word 0x12121212, 0xA4C1522, 0x8, 0xFF1D0000, 0xFF051153
    .word 0x24E01CF, 0xFF1C0807, 0xFF1D1153, 0xFF051154, 0x25E01D0
    .word 0xFF1C0807, 0xFF1D1154, 0xFF051155, 0x26E01D1, 0xFF1C0807
    .word 0xFF1D1155, 0xFF051157, 0x27E01D3, 0xFF1C0807, 0xFF1D1157
    .word 0xFF051158, 0x28E01D4, 0xFF1C0807, 0x50021158, 0x7029A5F
    .word 0x3560108, 0x56020807, 0x702A65A, 0x3560108, 0x69080807
    .word 0x3560000, 0xFF030807, 0x3560985, 0xFF030807, 0x2CB01CF
    .word 0xDC260807, 0x10200B6, 0x1C180382, 0x31153FF, 0xE001D0FF
    .word 0x26080702, 0x200B6E0, 0x18038201, 0x1154FF1C, 0x1D1FF03
    .word 0x80702F5, 0xB6E426, 0x3820102, 0x55FF1C18, 0xD3FF0311
    .word 0x7030A01, 0xB6EC2608, 0x82010200, 0xFF1C1807, 0xFF031157
    .word 0x31F01D4, 0xF0260807, 0x10200B6, 0x1C180782, 0x261158FF
    .word 0x200B6D8, 0x0
    .word 0x1152FF1D, 0x9B8FF03, 0x8070356, 0x98AFF05, 0x8070356
    .word 0x98BFF03, 0x8070356, 0xB6D826, 0x1840102, 0x52FF1C18
    .word 0x3560111, 0x807, 0xA4C1522, 0x8, 0xFF1D0000
    .word 0xFF051153, 0x37201CF, 0xFF1C0807, 0x50021153, 0x7037E5F
    .word 0x3B40108, 0x56020807, 0x7038A5A, 0x3B40108, 0x69080807
    .word 0x3B40000, 0xFF030807, 0x3B40985, 0xFF030807, 0x3B401CF
    .word 0xDC260807, 0x10200B6, 0x1C180382, 0x11153FF, 0x80703B4
    .word 0x0
    .word 0x53FF1D00, 0xD0FF0511, 0x703C901, 0x53FF1C08, 0x5F500211
    .word 0x80703D5, 0x7040B01, 0x5A560208, 0x80703E1, 0x7040B01
    .word 0x690808, 0x7040B00, 0x85FF0308, 0x7040B09, 0xD0FF0308
    .word 0x7040B01, 0xB6DC2608, 0x82010200, 0xFF1C1803, 0xB011153
    .word 0x80704, 0x53FF1D00, 0xD1FF0511, 0x7041D01, 0x53FF1C08
    .word 0x5F500211, 0x8070429, 0x7045F01, 0x5A560208, 0x8070435
    .word 0x7045F01, 0x690808, 0x7045F00, 0x85FF0308, 0x7045F09
    .word 0xD1FF0308, 0x7045F01, 0xB6DC2608, 0x82010200, 0xFF1C1800
    .word 0x5F011153, 0x80704, 0x6C7F7002, 0x1080704, 0x807049C
    .word 0x787B7B02, 0x1080704, 0x807049C, 0xBC2FF05, 0x807049C
    .word 0xBC3FF03, 0x807049C, 0x28FF041B, 0xC823FF05, 0x809B2
    .word 0x1000000, 0x807049C, 0x0
    .word 0xA4C1522, 0x8, 0xFF1D0000, 0xFF051153, 0x4BA01D3, 0xFF1C0807
    .word 0x50021153, 0x704C65F, 0x52E0108, 0x56020807, 0x704D25A, 0x52E0108
    .word 0x69080807, 0x52E0000, 0xFF030807, 0x52E0985, 0xFF030807, 0x4F701D3
    .word 0xDC260807, 0x10200B6, 0x1C180082, 0x261153FF, 0x200B6D8, 0x0
    .word 0x1152FF1D, 0x9B9FF03, 0x807052E, 0x98CFF05, 0x807052E
    .word 0x98DFF03, 0x807052E, 0xB6D826, 0x5840102, 0x52FF1C18
    .word 0x52E0111, 0x807, 0x53FF1D00, 0xD4FF0511, 0x7054101
    .word 0x53FF1C08, 0x5F500211, 0x807054D, 0x7058301, 0x5A560208
    .word 0x8070559, 0x7058301, 0x690808, 0x7058300, 0x85FF0308
    .word 0x7058309, 0xD4FF0308, 0x7058301, 0xB6DC2608, 0x82010200
    .word 0xFF1C1803, 0x83011153, 0x80705, 0x0
dword_8070588:    .word 0xFF
off_807058C:    .word dword_8070598
    .word 0x80705BB, 0xFF
dword_8070598:    .word 0x3B481708, 0x5BA5757, 0x83040807, 0x705AA04, 0x180308
    .word 0x30003414, 0x160000FF, 0x8F243603, 0x803080A, 0x263B4817
    .word 0x706342A, 0x2024208, 0x8070634, 0x34010242, 0x42080706
    .word 0x6340002, 0x203B0807, 0x7063422, 0x57573B08, 0x8070647
    .word 0x34020142, 0x42080706, 0x6340101, 0x1420807, 0x7063400
    .word 0x16103B08, 0x8070634, 0x21020042, 0x42080706, 0x6210100
    .word 0x420807, 0x7062100, 0xA003B08
    .word dword_8070620+1
dword_8070620:    .word 0x14001803, 0xFFEE0036, 0x5160000, 0x14060538, 0x80A8F74
    .word 0x36140A18, 0xFFEE00, 0x38051600, 0x74140605, 0x3080A8F
off_8070648:    .word dword_807065C
    .word 0x8070677, 0x80706FE, 0x8070785, 0xFF
dword_807065C:    .word 0x4481708, 0x6670419, 0x18030807, 0x7A1400, 0xFF96
    .word 0x24360516, 0x8080A8F, 0x263B4917, 0x706ED26, 0x2024208
    .word 0x80706ED, 0xED010242, 0x42080706, 0x6ED0002, 0x223B0807
    .word 0x706ED22, 0x20203B08, 0x80706ED, 0xED020142, 0x42080706
    .word 0x6ED0101, 0x1420807, 0x706ED00, 0x16103B08, 0x80706ED
    .word 0xED020042, 0x42080706, 0x6ED0100, 0x420807, 0x706ED00
    .word 0xA043B08
    .word dword_80706DC+1
dword_80706DC:    .word 0x140A1803, 0xFF8CFF8E, 0x7160000, 0xA8F2436, 0xA181308
    .word 0x8CFF8E14, 0x160000FF, 0x8F243601, 0x1708080A, 0x26263B4B
    .word 0x8070774, 0x74020242, 0x42080707, 0x7740102, 0x2420807
    .word 0x7077400, 0x22223B08, 0x8070774, 0x7420203B, 0x42080707
    .word 0x7740201, 0x1420807, 0x7077401, 0x14208, 0x8070774
    .word 0x7416103B, 0x42080707, 0x7740200, 0x420807, 0x7077401
    .word 0x4208, 0x8070774, 0x640A043B, 0x3080707, 0xA6140B18
    .word 0xFF76FF, 0x36071600, 0x80A8F24, 0x140B1813, 0xFF76FFA6
    .word 0x3160000, 0xA8F2436, 0x4A170808, 0xFB26263B, 0x42080707
    .word 0x7FB0202, 0x2420807, 0x707FB01, 0x24208, 0x80707FB
    .word 0xFB22223B, 0x3B080707, 0x7FB2020, 0x1420807, 0x707FB02
    .word 0x1014208, 0x80707FB, 0xFB000142, 0x3B080707, 0x7FB1610
    .word 0x420807, 0x707FB02, 0x1004208, 0x80707FB, 0xFB000042
    .word 0x3B080707, 0x7EB0A04, 0x18030807, 0xFFB4140C, 0xFF84
    .word 0x24360716, 0x13080A8F, 0xB4140C18, 0xFF84FF, 0x36051600
    .word 0x80A8F24
off_807080C:    .word dword_8070820
    .word 0x807083A, 0x80708B0, 0x8070929, 0xFF
dword_8070820:    .word 0x4481708, 0x82A0316, 0x180807, 0x94000814, 0x16000000
    .word 0x8F243605, 0x1708080A, 0x28263B4E, 0x80708A0, 0xA0020242
    .word 0x42080708, 0x8A00102, 0x2420807, 0x708A000, 0x22223B08
    .word 0x80708A0, 0xA020203B, 0x42080708, 0x8A00201, 0x1420807
    .word 0x708A001, 0x14208, 0x80708A0, 0xA016103B, 0x42080708
    .word 0x8A00200, 0x420807, 0x708A001, 0x4208, 0x80708A0
    .word 0xA00A043B, 0x3080708, 0x3C140A18, 0x3200, 0x36051600
    .word 0x80A8F24, 0x3B491708, 0x9162626, 0x2420807, 0x7091602
    .word 0x1024208, 0x8070916, 0x16000242, 0x3B080709, 0x9162222
    .word 0x203B0807, 0x7091620, 0x2014208, 0x8070916, 0x16010142
    .word 0x42080709, 0x9160001, 0x103B0807, 0x7091616, 0x2004208
    .word 0x8070916, 0x16010042, 0x42080709, 0x9160000, 0x43B0807
    .word 0x709160A, 0xB180308, 0x18FFFE14, 0x16000000, 0x6033803
    .word 0xA8F4406, 0x4B170808, 0x8F26263B, 0x42080709, 0x98F0202
    .word 0x2420807, 0x7098F01, 0x24208, 0x807098F, 0x8F22223B
    .word 0x3B080709, 0x98F2020, 0x1420807, 0x7098F02, 0x1014208
    .word 0x807098F, 0x8F000142, 0x3B080709, 0x98F1610, 0x420807
    .word 0x7098F02, 0x1004208, 0x807098F, 0x8F000042, 0x3B080709
    .word 0x98F0A04, 0x18030807, 0x5A140C, 0x92, 0x24360516
    .word 0x80A8F
off_80709A0:    .word dword_80709B4
    .word 0x80709C7, 0x80709FA, 0x8070A2D, 0xFF
dword_80709B4:    .word 0x17001808, 0xEE1448, 0xFF72, 0x24360316, 0x8080A8F
    .word 0x263B6417, 0x709E728, 0x2024208, 0x80709E7, 0xE7010242
    .word 0x42080709, 0x9E70002, 0x18030807, 0xFEDC140A, 0xFFE6
    .word 0x3380316, 0x8F440806, 0x1708080A, 0x28263B4A, 0x8070A1A
    .word 0x1A020242, 0x4208070A, 0xA1A0102, 0x2420807, 0x70A1A00
    .word 0xB180308, 0x94FFE014, 0x160000FF, 0x6033803, 0xA8F4410
    .word 0x4B170808, 0x4D2A263B, 0x4208070A, 0xA4D0202, 0x2420807
    .word 0x70A4D01, 0x24208, 0x8070A4D, 0xC181303, 0xD200E214
    .word 0x160000FF, 0x8F243607, 0x80A
off_8070A60:    .word dword_8070A7C
    .word 0x8070A97, 0x8070AB2, 0x8070AD5, 0x8070B41, 0x8070BAA
    .word 0xFF
dword_8070A7C:    .word 0x9659593B, 0x808070A, 0x48170018, 0x44FF7C14, 0x160000FF
    .word 0x8F243603, 0x3B03080A, 0xAB15959, 0x17080807, 0x14DC184C
    .word 0x9400D8, 0x5160000, 0xA8F2436, 0x593B0308, 0x70AD459
    .word 0x48170808, 0xC4041904, 0x308070A, 0x6E140418, 0x9AFF
    .word 0x36031600, 0x80A8F24, 0x4B170803, 0x4059593B, 0x3B08070B
    .word 0xB2D2826
    .word 0x2420807
    .word 0x70B2D02, 0x1024208, 0x8070B2D, 0x2D000242, 0x3B08070B
    .word 0xB2D2222, 0x203B0807, 0x70B2D20, 0x2014208, 0x8070B2D
    .word 0x2D010142, 0x4208070B, 0xB2D0001, 0x153B0807, 0x70B2D16
    .word 0x13123B08, 0x8070B2D, 0x140A1803, 0x1E002E, 0x3160000
    .word 0x8060338, 0x80A8F44, 0x4E170803, 0xA959593B, 0x3B08070B
    .word 0xB992826, 0x2420807, 0x70B9902, 0x1024208, 0x8070B99
    .word 0x99000242, 0x3B08070B, 0xB992222, 0x203B0807, 0x70B9920
    .word 0x2014208, 0x8070B99, 0x99010142, 0x4208070B, 0xB990001
    .word 0x153B0807, 0x70B9916, 0x13123B08, 0x8070B99, 0x140B1803
    .word 0xFF840084, 0x7160000, 0xA8F2436, 0x17080308, 0x59593B49
    .word 0x8070C15, 0x228263B, 0x4208070C, 0xC020202, 0x2420807
    .word 0x70C0201, 0x24208, 0x8070C02, 0x222223B, 0x3B08070C
    .word 0xC022020, 0x1420807, 0x70C0202, 0x1014208, 0x8070C02
    .word 0x2000142, 0x3B08070C, 0xC021615, 0x123B0807, 0x70C0213
    .word 0xC180308, 0x44002A14, 0x160000FF, 0x6053805, 0xA8F7406
    .word 0x308
off_8070C18:    .word dword_8070C28
    .word 0x8070C9F, 0x8070D16, 0xFF
dword_8070C28:    .word 0x3B641708, 0xC8E2A26, 0x2420807, 0x70C8E02, 0x1024208
    .word 0x8070C8E, 0x8E000242, 0x3B08070C, 0xC8E2222, 0x203B0807
    .word 0x70C8E20, 0x2014208, 0x8070C8E, 0x8E010142, 0x4208070C
    .word 0xC8E0001, 0x103B0807, 0x70C8E16, 0x2004208, 0x8070C8E
    .word 0x8E010042, 0x4208070C, 0xC8E0000, 0x83B0807, 0x70C8E0A
    .word 0x18130308, 0xFFDA1400, 0xFF7E, 0x24360516, 0x8080A8F
    .word 0x263B4917, 0x70D052A, 0x2024208, 0x8070D05, 0x5010242
    .word 0x4208070D, 0xD050002, 0x223B0807, 0x70D0522, 0x20203B08
    .word 0x8070D05, 0x5020142, 0x4208070D, 0xD050101, 0x1420807
    .word 0x70D0500, 0x16103B08, 0x8070D05, 0x5020042, 0x4208070D
    .word 0xD050100, 0x420807, 0x70D0500, 0xA083B08, 0x8070D05
    .word 0x1181303, 0x7EFFC014, 0x160000FF, 0x8F243601, 0x1708080A
    .word 0x29263B4C, 0x8070D7C, 0x7C020242, 0x4208070D, 0xD7C0102
    .word 0x2420807, 0x70D7C00, 0x22223B08, 0x8070D7C, 0x7C20203B
    .word 0x4208070D, 0xD7C0201, 0x1420807, 0x70D7C01, 0x14208
    .word 0x8070D7C, 0x7C16103B, 0x4208070D, 0xD7C0200, 0x420807
    .word 0x70D7C01, 0x4208, 0x8070D7C, 0x8C0A083B, 0x308070D
    .word 0x86140218, 0x58FF, 0x36011600, 0x80A8F24, 0x18140218
    .word 0xFFC801, 0x38031600, 0x44080603, 0x80A8F
off_8070DA0:    .word dword_8070DB0
    .word 0x8070DCB, 0x8070DEE, 0xFF
dword_8070DB0:    .word 0x3B4C1708, 0xDBB2A26, 0x18030807, 0x161400, 0xFFCE
    .word 0x24360316, 0x8080A8F, 0x263B4817, 0x70DD62A, 0xE6050308
    .word 0x70DED01, 0x14031808, 0xFFB6FED8, 0x3160000, 0xA8F2436
    .word 0x17080308, 0x2A263B48, 0x8070E0E, 0xE020242, 0x4208070E
    .word 0xE0E0102, 0x2420807, 0x70E0E00, 0xA180308, 0x6A00BA14
    .word 0x160000FF, 0x6033803, 0xA8F4420, 0x8, 0x8070E64
    .word 0x8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E74
    .word dword_8070E94
    .word dword_8070EB4
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
    .word dword_8070E64
dword_8070E64:    .word 0x4100000, 0x0, 0x0, 0x0
dword_8070E74:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x5080093, 0x17C0000, 0xFEC40000, 0x0
dword_8070E94:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x3080293, 0xFF9C0000, 0xFF440000, 0x0
dword_8070EB4:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x1080393, 0xFEFC0000, 0xFF440000, 0x0
    .word unk_3002BB0
dword_8070ED8:    .word 0x20, 0xFFFF0000, 0x85B839C, 0xE, 0x860CAE8, 0xE, 0x860CB08
    .word 0xE, 0x860CB28, 0xE, 0x860CB48, 0xE, 0x860CB28, 0xE
    .word 0x860CB08, 0xE, 0x860CAE8, 0xE, 0x1, 0x3002BB0, 0x20
    .word 0xFFFF0000, 0x860CB68, 0xE, 0x860CB88, 0xE, 0x860CBA8, 0xE
    .word 0x860CBC8, 0xE, 0x860CBE8, 0xE, 0x860CBC8, 0xE, 0x860CBA8
    .word 0xE, 0x860CB88, 0xE, 0x860CB68, 0xE, 0x1, 0x8619DA8
    .word 0x600CCA0, 0x3100104, 0x8071044, 0x18, 0x8071064, 0xC, 0x8071084
    .word 0xC, 0x80710A4, 0xC, 0x80710C4, 0xC, 0x8071064, 0xC
    .word 0x8071084, 0xC, 0x80710A4, 0xC, 0x80710C4, 0xC, 0x8071064
    .word 0xC, 0x8071084, 0xC, 0x80710E4, 0xC, 0x8071104, 0x3C
    .word 0x80710E4, 0xC, 0x8071084, 0xC, 0x1, 0x3002A50, 0x20
    .word 0xFFFF0200, 0x85B823C, 0x18, 0x8619FCC, 0xC, 0x8619FEC, 0xC
    .word 0x861A00C, 0xA8, 0x8619FEC, 0xC, 0x8619FCC, 0xC, 0x1
    .word 0x20001, 0x4010402, 0x40003, 0x4030404, 0x8040803, 0xC030C04, 0x8020801
    .word 0xC010C02, 0x50001, 0x4010405, 0x60003, 0x4030406, 0x8060803, 0xC030C06
    .word 0x8050801, 0xC010C05, 0x20001, 0x80007, 0x40003, 0xA0009, 0xC090C0A
    .word 0xC030C04, 0xC070C08, 0xC010C02, 0x20001, 0x4010402, 0xC000B, 0x40B040C
    .word 0x80C080B, 0xC0B0C0C, 0x8020801, 0xC010C02, 0x4070408, 0x4010402, 0x409040A
    .word 0x4030404, 0x8040803, 0x80A0809, 0x8020801, 0x8080807, 0x20001, 0x80007
    .word 0x40003, 0xA000D, 0xC0D0C0A, 0xC030C04, 0xC070C08, 0xC010C02, 0x20001
    .word 0x80007, 0xE0003, 0xA000F, 0xC0F0C0A, 0xC030010, 0xC070C08, 0xC010C02
    .word 0x4, 0x3002C50, 0xFF0D030C, 0x80000441, 0x8, 0x80000882, 0x8
    .word 0x80000CC3, 0x8, 0x80001104, 0x8, 0x80001545, 0x8, 0x80001986
    .word 0x8, 0x80001DC7, 0x8, 0x80002228, 0x8, 0x80002669, 0x8
    .word 0x80002A6A, 0x8, 0x80002E6B, 0x8, 0x80002A6A, 0x8, 0x80002669
    .word 0x8, 0x80002268, 0x3C, 0x2, 0x8071170, 0x4, 0x3002C50
    .word 0xFF01030C, 0x80002228, 0x8, 0x2, 0x8071170, 0x4, 0x3002C50
    .word 0xFF0D030C, 0x80002228, 0x8, 0x2, 0x8071170, 0x4, 0x3002C50
    .word 0xFF0D030C, 0x80002228, 0x8, 0x80001DC7, 0x8, 0x80001986, 0x8
    .word 0x80001545, 0x8, 0x80001104, 0x8, 0x80000CC3, 0x8, 0x80000882
    .word 0x8, 0x80000441, 0x8, 0x0
.thumb
sub_8071230:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x8071288-0x8071234-4] // dword_8070DB0+116
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8026098
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_80266E0
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x3c]
    ldr r2, [r5,#0x40]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_8025CFC
    bl sub_802610E
    bl sub_8071364
    ldr r0, [pc, #0x807128c-0x8071268-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8071290-0x8071272-2] // off_8071294
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_80715C0
    bl sub_802A28C
    pop {r4-r7,pc}
off_8071288:    .word dword_8070DB0+0x74
off_807128C:    .word unk_2038800
off_8071290:    .word off_8071294
off_8071294:    .word dword_80712D4
    .word 0x80712D6, 0x80712D8, 0x80712DC, 0x80712E2, 0x80712E6
    .word 0x80712E8, 0x80712EC, 0x80712EE, 0x80712F0, 0x80712F2
    .word 0x80712F6, 0x80712F8, 0x80712FC, 0x80712FE, 0x8071300
dword_80712D4:    .word 0xFFFFFFFF, 0xFFFF6318, 0xF1C0E1C, 0x6318FFFF, 0xFFFFFFFF
    .word 0xFFFF1D1C, 0xFFFFFFFF, 0x2A1CFFFF, 0xFFFFFFFF, 0xFFFF571C
    .word 0xFFFFFFFF, 0xB500FFFF, 0x48020089, 0xF7915840, 0xBD00F8E9
    .word 0x8071314, 0x8071354, 0x8071354, 0x8071354, 0x8071354
    .word 0x8071354, 0x8071354, 0x8071354, 0x8071354, 0x8071354
    .word 0x8071354, 0x8071354, 0x8071354, 0x8071354, 0x8071354
    .word 0x8071354, 0x8071354, 0x8070ED4, 0x8070F7C, 0x8071004
    .word 0xFFFFFFFF
// end of function sub_8071230

.thumb
sub_8071364:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x80713a0-0x807136e-2] // off_80713A4
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_8001E5C
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r2, [r1]
    ldr r0, [r7,#0xc]
    orr r2, r0
    strh r2, [r1]
    ldr r0, [pc, #0x80714a4-0x8071388-4] // off_80714A8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .byte 0, 0
off_80713A0:    .word off_80713A4
off_80713A4:    .word nullsub_88+1
    .word sub_8001ECE+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800
off_80714A4:    .word off_80714A8
off_80714A8:    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
    .word off_80714E8
off_80714E8:    .word off_8619ABC
    .word unk_2012800
    .word 0x600CC80, 0x8619B60, 0x2012C00, 0x3001800, 0x8619D84
    .word 0x3002A50, 0x20
// end of function sub_8071364

loc_807150C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x8071520-0x8071516-2] // off_8071524
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8071520:    .word off_8071524
off_8071524:    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word sub_8071566+1
    .word sub_8071582+1
    .word sub_807159E+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
    .word locret_8071564+1
locret_8071564:
    mov pc, lr
.thumb
sub_8071566:
    push {lr}
    cmp r0, #4
    bne loc_8071572
    cmp r1, #6
    bne loc_8071572
    pop {pc}
loc_8071572:
    ldr r0, [pc, #0x80715bc-0x8071572-2] // dword_8070ED8+76
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x51 
    bl sub_8024F9C
    pop {pc}
// end of function sub_8071566

.thumb
sub_8071582:
    push {lr}
    cmp r0, #4
    bne loc_807158E
    cmp r1, #7
    bne loc_807158E
    pop {pc}
loc_807158E:
    ldr r0, [pc, #0x80715bc-0x807158e-2] // dword_8070ED8+76
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x51 
    bl sub_8024F9C
    pop {pc}
// end of function sub_8071582

.thumb
sub_807159E:
    push {lr}
    cmp r0, #4
    bne loc_80715AA
    cmp r1, #9
    bne loc_80715AA
    pop {pc}
loc_80715AA:
    ldr r0, [pc, #0x80715bc-0x80715aa-2] // dword_8070ED8+76
    bl sub_8002028
    mov r0, #0x11
    mov r1, #0x51 
    bl sub_8024F9C
    pop {pc}
    .balign 4, 0x00
off_80715BC:    .word dword_8070ED8+0x4C
// end of function sub_807159E

.thumb
sub_80715C0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80715d4-0x80715ca-2] // off_80715D8
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_80715D4:    .word off_80715D8
off_80715D8:    .word dword_8071618  // <endpool>
// end of function sub_80715C0

    .word dword_807161C  // <filepool>
    .word dword_8071620
    .word dword_8071624
    .word dword_8071718
    .word dword_807171C
    .word dword_8071720
    .word dword_8071724
    .word dword_8071728
    .word dword_807172C
    .word dword_8071730
    .word dword_8071734
    .word dword_8071738
    .word dword_807178C
    .word dword_8071790
    .word dword_8071794
/*For debugging purposes, connect comment at any range!*/
