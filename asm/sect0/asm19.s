.include "sect0/asm19.inc"

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
    pop {r4-r7,pc}
    .word 0x66000, 0x8000005, 0x80016004, 0xFF, 0x2B0C00
    .word 0x12004, 0xFF8000, 0x800, 0x3A06003B, 0x887A34F8
    .word 0x64A80050, 0xFF020808, 0xFF003D01, 0x4006C001, 0x3C000004
    .word 0x4305FF04, 0x3B05FF00, 0xDC02461C, 0x11080556, 0x8656320
    .word 0x1083208, 0x64B00050, 0x24110808, 0x808656D, 0x8004240A
    .word 0x43040832, 0x903FF00, 0x430508, 0xFF021AFF, 0x43800501
    .word 0x21BFF00, 0xFF361EFF, 0x280040A, 0x133CFF, 0x24000000
    .word 0x7080CFF, 0x43C0C3B, 0x4304FF, 0x3D04FF, 0xFCC001FF
    .word 0xFB50, 0x1460346, 0x50044620, 0xFF023701, 0x8FF241E
    .word 0x183B0708, 0x700043B, 0x1300FF36, 0x808658F, 0x40083B10
    .word 0x8086594, 0x3A0FF3F, 0x3F0140FF, 0xFF0200FF, 0x60FF3F50
    .word 0x120FF03, 0x430C3B, 0x141005FF, 0x808652E, 0x8
    .word 0x8000, 0xFFFF8000, 0x9, 0x8000, 0x0
    .word 0xA, 0x4000, 0x4000, 0xB, 0x0
    .word 0x8000, 0xB, 0xFFFF8000, 0x8000, 0x10D
    .word 0xFFFF8000, 0x0, 0x10E, 0xFFFFC000, 0xFFFFC000
    .word 0xF, 0x0, 0xFFFF8000, 0x2304, 0x8000
    .word 0x800, 0x206003B, 0xFF2414FF, 0x3A07080C, 0x887A3788
    .word 0x1FF003D, 0xFB60FCC0, 0x430000, 0x24604FF, 0x8055750
    .word 0x241EFF02, 0x70808FF, 0x866C713, 0x1EFF0208, 0x1AFF0043
    .word 0x501FF02, 0xFF004380, 0x1EFF021B, 0x400FF36, 0x1EFF0280
    .word 0x3FF0043, 0x501EFF02, 0x865F400, 0x8320808, 0x2080901
    .word 0x403FF36, 0x1EFF0280, 0x669B2011, 0x1C3B0808, 0x11030832
    .word 0x866AC24, 0x2240A08, 0x135AFF, 0x24000000, 0x7080CFF
    .word 0x485AFF02, 0x66D00000, 0x2F370808, 0x183B0206, 0x200043B
    .word 0x272C58FF, 0x100200AA, 0x8648947, 0x10343B08, 0x7FF043C
    .word 0xFFF0043, 0x83CFF3E, 0xFF043C00, 0xFF004301, 0x28FF3E09
    .word 0x38100008, 0x7E144000, 0x80866, 0x3000001, 0x920000
    .word 0xDC0000, 0x0, 0x40FEC000, 0x80C8007, 0x19004
    .word 0x80000000, 0xE00008FF
    .byte 0xFE
    .byte 0x40 
    .word 0x8000007
    .word 0x80001404, 0x0, 0x3B0800, 0x38443A06, 0xFF02887A
    .word 0xFF003D01, 0x40FE4001, 0x43000007, 0x3B07FF00, 0xE000501C
    .word 0x46080866, 0x57E7802, 0x1EFF0208, 0x808FF24, 0x68331307
    .word 0x500808, 0x80866E8, 0x1EFF0208, 0x400FF36, 0x2083280
    .word 0x67E12011, 0xFF020808, 0x1CFF245A, 0xFF020708, 0x36200A3C
    .word 0x800403FF, 0x2030809, 0x8321EFF, 0xEF201104, 0x50080867
    .word 0x866F200, 0x18FF2408, 0xFF360708, 0x32800404, 0x200A0508
    .word 0x681C2011, 0x8090808, 0x1EFF0206, 0x66FA0050, 0x2080808
    .word 0x20111EFF, 0x8086825, 0xFF02200A, 0x9FF361E, 0xFF028004
    .word 0x131E, 0xFF240000, 0x4607080C, 0x37015003, 0x24122012
    .word 0x43C183B, 0x4304FF, 0x3D04FF, 0xFF8001FF, 0x740
    .word 0x241EFF02, 0x70808FF, 0x3C00043B, 0x4307FF04, 0x3E0FFF00
    .word 0x8B4FF, 0xFF003D10, 0xFE4001, 0x3C000005, 0x4303FF04
    .word 0x3E0BFF00, 0x848FF, 0x1FF043C, 0x9FF0043, 0x828FF3E
    .word 0xFF043C00, 0xFF004305, 0x43C1005, 0x4306FF, 0x431006FF
    .word 0x21AFF00, 0x800501FF, 0x1BFF0043, 0x40003810, 0x867AF14
    .word 0xA0000008, 0x3A0F6, 0x2C040800, 0xC0FFC000, 0x80000FF
    .word 0x3B0000, 0x2800406, 0xFF2414FF, 0x3A07080C, 0x887A39A4
    .word 0x683C0050, 0x2460808, 0x8057EDC, 0x1C3B343B, 0x241EFF02
    .word 0x70808FF, 0x868FB13, 0x1EFF0208, 0x400FF36, 0x1083280
    .word 0x2020809, 0xFF361EFF, 0x2800401, 0x8321EFF, 0x4080903
    .word 0x361EFF02, 0x80040EFF, 0x321EFF02, 0x8090508, 0x1EFF0206
    .word 0x68440050, 0x2080808, 0xFF361EFF, 0x2800412, 0x1314FF
    .word 0x24000000, 0x7080CFF, 0x1175FF27, 0x3C370150, 0x4303FF04
    .word 0x3D03FF00, 0x4001FF00, 0x2E0F6, 0x2F303B00, 0x3460306
    .word 0x241EFF02, 0x70808FF, 0x43B183B, 0x40003800, 0x868C414
    .word 0x80000008, 0x640FB, 0x40040800, 0x40004000, 0x8000000
    .word 0xC0004004, 0xFFC0FF, 0x62040800, 0xC0FFC000, 0x80000FF
    .word 0x3B0000, 0x2800406, 0xFF2414FF, 0x3A07080C, 0x887A3D08
    .word 0x69040050, 0x2460808, 0x80585B0, 0xFF02343B, 0x8FF241E
    .word 0x4130708, 0x208086A, 0xFF361EFF, 0x2800400, 0x8321EFF
    .word 0x2080901, 0x361EFF02, 0x800401FF, 0x321EFF02, 0x8090308
    .word 0x1EFF0204, 0x402FF36, 0x8080980, 0x50090832, 0x8690C00
    .word 0xA080908, 0x361EFF02, 0x80040FFF, 0x321EFF02, 0x8090B08
    .word 0x1600500C, 0x8080869, 0x20D0832, 0xFF361EFF, 0x2800410
    .word 0x8320AFF, 0x50FF0212, 0x69200050, 0x2080808, 0x8321EFF
    .word 0x1EFF0213, 0x414FF36, 0x1EFF0280, 0x13, 0xCFF2400
    .word 0x3460708, 0x3C370150, 0x4304FF04, 0x3D04FF00, 0x8001FF00
    .word 0x520F9, 0x2303B00, 0xFF241EFF, 0x3B070808, 0x380004
    .word 0x69D61440, 0xE0000808, 0x12004, 0x3B0800, 0x2800406
    .word 0xFF2414FF, 0x4A07080C, 0x243A00FF, 0x50887A42, 0x86A0C00
    .word 0x2C024608, 0x3B080725, 0x32FF0234, 0x2400014A, 0x70808FF
    .word 0x86AA113, 0x1EFF0208, 0x400FF36, 0x1EFF0280, 0x9010832
    .word 0xFF020208, 0x2FF361E, 0x8328004, 0x4080903, 0x321EFF02
    .word 0xFF020508, 0xBFF361E, 0xFF028004, 0x76490A, 0x2060832
    .word 0x131EFF, 0x24000000, 0x71004FF, 0x481EFF02, 0x6AAC0101
    .word 0xFF260808, 0x62F0100, 0x1072F04, 0x3800043B, 0x80144000
    .word 0x8086A, 0x0, 0x400, 0x0, 0x0
    .word 0x60000000, 0xF5200C, 0x32040800, 0x80000000, 0x8000000
    .word 0x1E04
    .word 0xFF0000, 0x3B0800, 0x1FF0206, 0x1DFF0043, 0xFF021C3B
    .word 0xCFF2414, 0x743A0708, 0x50887A44, 0x86ABC00, 0xE8024608
    .word 0x3B08078F, 0x1EFF0234, 0x24001B4A, 0x70808FF, 0x86B9D13
    .word 0x1EFF0208, 0x400FF36, 0x1EFF0280, 0x9020832, 0xFF360308
    .word 0x2800405, 0x501EFF, 0x8086AC4, 0x321EFF02, 0x8090408
    .word 0x3CFF0205, 0x407FF36, 0x14FF0280, 0x6ACE0050, 0x8320808
    .word 0x7080906, 0x361EFF02, 0x80040CFF, 0x321EFF02, 0x8090808
    .word 0x28FF0209, 0x13, 0xCFF2400, 0x1500708, 0xFF043C37
    .word 0xFF004307, 0xFF003D07, 0x600D4001, 0x3B0000F5, 0x5062F30
    .word 0x1460346, 0x2044620, 0xFF4A1EFF, 0x8FF24FF, 0x183B0708
    .word 0x3800043B, 0x62144000, 0x8086B, 0x40000000, 0x200EE
    .word 0x3C040800, 0x80008000, 0x8000000, 0x3B0000, 0x1FF0206
    .word 0x1DFF0043, 0xFF021C3B, 0xCFF2414, 0xC83A0708, 0x50887A46
    .word 0x86BA800, 0xA0024608, 0x3B080699, 0x1EFF0234, 0x808FF24
    .word 0x6C461307, 0xFF020808, 0xFF361E, 0xFF028004, 0xB000501E
    .byte 0x6B 
    .byte 8
    .word dword_83207E8+0x20
dword_8086C04:    .word 0x5080904, 0x361EFF02, 0x800409FF, 0x131EFF02, 0x0
    .word 0x80CFF24, 0x37015007, 0x4FF043C, 0x4FF0043, 0x1FF003D
    .word 0x3C0EFC0, 0x303B0000, 0x4605062F, 0x1EFF0203, 0x808FF24
    .word 0x3B183B07, 0x380004, 0x6C131440, 0x808, 0x60020000
    .word 0x405000F, 0x80, 0xFF80, 0x710408, 0xFF000000
    .word 0x4080000, 0xFF00003C, 0x0, 0x8, 0x3A06003B
    .word 0x887A48F8, 0x3B01FF02, 0x5000501C, 0x4608086C, 0x587C402
    .word 0x2343B08, 0xFF241EFF, 0x13070808, 0x8086D49, 0x2010809
    .word 0xFF3628FF, 0x32800400, 0xFF020208, 0x6100501F, 0x208086C
    .word 0x83264FF, 0x1FF3603, 0x8328004, 0x5080904, 0x501EFF02
    .word 0x86C6B00, 0xFF020808, 0x5FF361E, 0xFF028004, 0x1220111E
    .word 0x1108086D, 0x86D3E24, 0x78FF0208, 0x408FF36, 0x7083280
    .word 0x2080809, 0x1378FF, 0x24000000, 0x7080CFF, 0x481EFF02
    .word 0x6D540000, 0x3B370808, 0x1580004, 0x6D560006, 0x210810EA
    .word 0x20810EC, 0xB000000, 0x5801FF02, 0x56000601
    .word 0x810EA6D, 0x810EC21, 0x2, 0x6D12140B, 0x86490808
    .word 0x1BFF0200, 0x86D3E14, 0x40003808, 0x86CFA14, 0x8
    .word 0x3000101, 0xFF6C0000, 0xFF9C0000, 0x700000
    .word 0xFFBE0000, 0x2E0000, 0x640000, 0x60020000, 0x405000F
    .word 0x80, 0xFF80, 0x8, 0x3A06003B, 0x887A4B10
    .word 0x3B01FF02, 0x7000501C, 0x4608086D, 0x5882802, 0x2343B08
    .word 0xFF241EFF, 0x13070808, 0x8086E01, 0x2010809, 0xFF3628FF
    .word 0x2800400, 0x8321EFF, 0x3080902, 0x361EFF02, 0x800401FF
    .word 0x131EFF02, 0x0
    .word off_80CFF24
    .word 0x37015007, 0x4FF043C, 0x4FF0043, 0x1FF003D, 0xB600240
    .word 0x303B0500, 0x4606062F, 0x1EFF0203, 0x24FFFF4A, 0x70808FF
    .word 0x43B183B, 0x40003800, 0x86DCB14, 0x8, 0x3A06003B
    .word 0x887A4B7C, 0x1114FF02, 0x86E5724, 0x6E5C1308, 0xFF020808
    .word 0xFF361E, 0xFF028004, 0x131E, 0xFF240000, 0x3707080C
    .word 0x4FF043C, 0x4FF0043, 0x1FF003D, 0xFDC0ED80, 0x303B0000
    .word 0x241EFF02, 0x70808FF, 0x4300043B, 0x1004FF00, 0x14400038
    .word 0x8086E2D, 0xE01D0000, 0x80000F8, 0x80002004, 0xFF
    .word 0x800, 0x206003B, 0x4301FF, 0x1C3B1DFF, 0x2414FF02
    .word 0x7080CFF, 0x7A4BB03A, 0x64005088, 0x4608086E, 0x69C5002
    .word 0x2343B08, 0x1B4A1EFF, 0x8FF2400, 0x6B130708, 0x208086F
    .word 0xFF361EFF, 0x2800400, 0x8321EFF, 0x2080901, 0x361EFF02
    .word 0x800402FF, 0x501EFF02, 0x86E6C00, 0x8320808, 0x4080903
    .word 0x361EFF02, 0x800407FF, 0x21F084C, 0x8323CFF, 0x7080906
    .word 0x361EFF02, 0x8090BFF, 0x34201108, 0x1108086F, 0x86F6024
    .word 0x92983308, 0x80040806, 0x361EFF02, 0x80040FFF, 0x131EFF02
    .word 0x0
    .word 0x804FF24, 0x7100025, 0x1500346, 0x1EFF0237, 0x74010048
    .word 0x3B08086F, 0x43B18, 0x60158, 0x10EA6D56, 0x10EC2108
    .word 0x308, 0xFF020B00, 0x6015801, 0xEA6D5600, 0xEC210810
    .word 0x40810, 0x140B0000, 0x8086F34, 0x2008649, 0x60141BFF
    .word 0x3808086F, 0x13144000, 0x8086F, 0x4000000, 0x0
    .word 0x0, 0x0
dword_8086F84:    .word 0x1DC0000, 0xFFC60000, 0x100000, 0x1DC0000, 0xFF460000
    .word 0x100000, 0xE01C0000, 0x80000F8, 0x3A06003B, 0x887A4EB4
    .word 0x6F9C0050, 0x2460808, 0x8069D1C, 0x3B01FF02, 0x21C3B34
    .word 0x20111EFF, 0x808702B, 0x70E52411, 0x98330808, 0x24080692
    .word 0x70800FF, 0x870F013, 0x1EFF0208, 0x400FF36, 0x12201280
    .word 0x5F201124, 0xA080870, 0x1EFF0220, 0x9010832, 0xFF020208
    .word 0x3FF361E, 0x4A040809, 0x8004001B, 0x13, 0xFF043C00
    .word 0xFF004301, 0xFF003D01, 0xC01AA001, 0x20000F8, 0x516014FF
    .word 0x183B0106, 0x2600043B, 0x58033EFF, 0x56000601, 0x810EA6D
    .word 0x810EC21, 0x3, 0x1FF020B, 0x33EFF27, 0x60158
    .word 0x10EA6D56, 0x10EC2108, 0x408, 0x2B140B00, 0x16080870
    .word 0x7C033EFF, 0x2080870, 0x1580FFF, 0x6D560006, 0x210810EA
    .word 0x30810EC, 0xB000000, 0x330CFF02, 0x80692D8, 0x4912FF02
    .word 0x1580086, 0x6D560006, 0x210810EA, 0x40810EC, 0xB000000
    .word 0x492DFF02, 0x1580086, 0x6D560006, 0x210810EA, 0x30810EC
    .word 0xB000000, 0x493CFF02, 0x1580086, 0x6D560006, 0x210810EA
    .word 0x40810EC, 0xB000000, 0x494BFF02, 0x1580086, 0x6D560006
    .word 0x210810EA, 0x30810EC, 0xB000000, 0x864910, 0x141BFF02
    .word 0x80870E5, 0x14400038, 0x8087008, 0xF77EB5F0, 0x2000FAD1
    .word 0xBDF0, 0xE01C0000, 0x80000F8, 0x1004, 0x10000
    .word 0x8040800, 0x0
    .word 0x80080FF, 0x4001F0C, 0x800020, 0x0
    .word 0x8, 0x3A06003B, 0x887A50BC, 0x71040050, 0x2460808, 0x8069DD0
    .word 0x3B01FF02, 0x21C3B34, 0xFF241EFF, 0x13070808, 0x80871F8, 0x361EFF02
    .word 0x800400FF, 0x501EFF02, 0x8710C00, 0x8320808, 0x2080901, 0x361EFF02
    .word 0x800407FF, 0x321EFF02, 0x500308, 0x8087116, 0x2040809, 0xFF363CFF
    .word 0x3280040D, 0x8090508, 0x1EFF0206, 0x40FFF36, 0x1EFF0280, 0x9070832
    .word 0x84C0808, 0x2000501F, 0x8080871, 0x4A64FF02, 0xFF02000F, 0x11FF361E
    .word 0xFF028004, 0xB08321E, 0x20C0809, 0xFF361EFF, 0x2800416, 0x131EFF
    .word 0x24000000, 0x250404FF, 0x4E070400, 0x2010400, 0x1481EFF, 0x8720000
    .word 0x7062F08, 0x3B02072F, 0x43B18, 0x14400038, 0x80871D2, 0x5000000
    .word 0xFFD00000, 0xFF960000, 0x0
    .word 0xA0FC0000, 0x8000000, 0x2406003B, 0x7080CFF, 0x7A559C3A
    .word 0x10005088, 0x27080872, 0x461175FF, 0x568AC02, 0x72201108
    .word 0xA080872, 0x1EFF0220, 0x808FF24, 0x72851307, 0xFF020808
    .word 0xFF361E, 0xFF028004, 0x131E, 0xFF240000, 0x4607080C
    .word 0x37015003, 0x4A1EFF02, 0xFF24FFFF, 0x3B070808, 0x3D0004
    .word 0xFC0001FF, 0x140, 0x7FF043C, 0x7FF0043, 0x40003810
    .word 0x8725514, 0x8, 0xA0FC0000, 0x8000008, 0xC0006004
    .word 0xFFC0FF, 0x50040800, 0x40004000, 0xCFFC000, 0x32040096
    .word 0x0
    .word dword_8003F5C+0xA4
    .word 0xFE4000, 0x80200FE, 0x3A06003B, 0x887A5A88, 0x3B01FF02
    .word 0x18024634, 0x50080683, 0x8729000, 0xFF4F08, 0x241EFF02
    .word 0x70208FF, 0x873D013, 0x3CFF0208, 0x400FF36, 0x1083280
    .word 0x501EFF02, 0x8729800, 0x8320808, 0x3080902, 0x361EFF02
    .word 0x800407FF, 0x363CFF02, 0xFF0209FF, 0x408323C, 0x5001FF02
    .word 0x872A200, 0x9800408, 0xFF020608, 0x708320A, 0x361EFF02
    .word 0x80040AFF, 0x321EFF02, 0x8090808, 0x1EFF0209, 0x40BFF36
    .word 0x1EFF0280, 0x13, 0x1CFF2400, 0xFF020704, 0x73D0131E
    .word 0xFF360808, 0x280040C, 0x131EFF, 0x24000000, 0x7040CFF
    .word 0x500A0832, 0x872B800, 0xFF240808, 0x13070418, 0x80873D0
    .word 0x361EFF02, 0x80040DFF, 0x321EFF02, 0x8090B08, 0x1EFF020C
    .word 0x40EFF36, 0xD083280, 0x20E0809, 0xFF361EFF, 0x280040F
    .word 0x131EFF, 0x4C000000, 0xFF241F08, 0x207020C, 0x303B78FF
    .word 0x2F08062F, 0xFF250307, 0x48FF, 0x80873D8, 0x43B37
    .word 0x14400038, 0x80873AA, 0x4000200, 0xFFF00000, 0xFFFE0000
    .word 0x0
    .word 0x40FDE000, 0x8000001, 0x3A06003B, 0x887A5FB0, 0x874C313
    .word 0x78FF0208, 0x1C3B343B, 0x1FF003D, 0xFFE0FF00, 0x43C0000
    .word 0x4304FF, 0xFF4F04FF, 0x84024600, 0x46080561, 0x502001
    .word 0x80873E8, 0x400FF36, 0x3CFF0280, 0x74CB2011, 0x130808
    .word 0x24000000, 0x70208FF, 0x874C313, 0x78FF0208, 0x401FF36
    .word 0x1EFF0280, 0x13, 0xCFF2400, 0x20120708, 0x3B030832
    .word 0x43183B30, 0x461BFF00, 0x20014603, 0x1500446, 0x201FF4F
    .word 0xFF243CFF, 0x13070808, 0x80874C3, 0x361EFF02, 0x800405FF
    .word 0x131EFF02, 0x0
    .word off_80CFF24
    .word 0x3B303B07, 0xFF003D18, 0xE0FF0001, 0x3C0000FF, 0x4304FF04
    .word 0x4604FF00, 0x20014603, 0xFF4F0446, 0x37015001, 0x241EFF02
    .word 0x70808FF, 0x3800043B, 0x8B144000, 0x49080874, 0xFF02011C
    .word 0x74CB141A, 0x808, 0xFC8000, 0x8000006, 0x40002804
    .word 0x4000, 0x800, 0x406003B, 0x14FF0280, 0x80CFF24
    .word 0x61843A07, 0x50887A, 0x80874D8, 0x886C0246, 0x343B0805
    .word 0x241EFF02, 0x70808FF, 0x8758513, 0x1EFF0208, 0x400FF36
    .word 0x1EFF0280, 0x2010832, 0x501EFF, 0x80874E0, 0x3080908
    .word 0x361EFF02, 0x800403FF, 0x3214FF02, 0x8090408, 0x3CFF0205
    .word 0x404FF36, 0x1EFF0280, 0x13, 0xCFF2400, 0x1500708
    .word 0xFF043C37, 0xFF004307, 0xFF003D07, 0xC0FC8001, 0x3B000006
    .word 0x9062F30, 0xFF270346, 0xFF021175, 0x8FF241E, 0x43B0708
    .word 0x40003800, 0x8755014, 0x8, 0xA0FD2000, 0x8000006
    .word 0x406003B, 0x14FF0280, 0x80CFF24, 0x634C3A07, 0x50887A
    .word 0x8087590, 0x89380246, 0x343B0805, 0x241EFF02, 0x70808FF
    .word 0x8762B13, 0x1EFF0208, 0x400FF36, 0x1EFF0280, 0x9010832
    .word 0xFF020208, 0x2FF361E, 0xFF028004, 0x308321E, 0x2040809
    .word 0xFF361EFF, 0x2800403, 0x131EFF, 0x24000000, 0x7080CFF
    .word 0x3C370150, 0x4304FF04, 0x3D04FF00, 0x8001FF00, 0x6C0FC
    .word 0x26303B00, 0x2F0101FF, 0x3460A06, 0x1175FF27, 0x241EFF02
    .word 0x70808FF, 0x3800043B, 0xF2144000, 0x80875, 0x40FCA000
    .word 0x80000FC, 0x400460C, 0x1000030, 0x0
    .word 0x8, 0x406003B, 0x14FF0280, 0x80CFF24, 0x64703A07, 0x50887A
    .word 0x8087634, 0xB5D40246, 0x343B0805, 0xFF021C3B, 0x8FF241E, 0xDF130708
    .word 0x2080876, 0xFF361EFF, 0x2800400, 0x501EFF, 0x808763C, 0x9010832
    .word 0x2080208, 0xFF361EFF, 0x32800403, 0x8090308, 0x1EFF0204, 0x13
    .word 0xCFF2400, 0x1500708, 0xFF043C37, 0xFF004307, 0xFF003D07, 0xE0FFA001
    .word 0x3B0000FC, 0x75FF2730, 0x1EFF0211, 0x540052, 0x62F0000, 0x2500550B
    .word 0x183BFFFF, 0x3800043B, 0xA4144000, 0x80876, 0xA0006000, 0x8020000
    .word 0x406003B, 0x14FF0280, 0x80CFF24, 0x65B83A07, 0xFF4F887A, 0xE8005000
    .word 0x46080876, 0x5BB2002, 0x3B343B08, 0x1CFF241C, 0x861307FF, 0x2080877
    .word 0xFF3678FF, 0x2800400, 0x131EFF, 0x24000000, 0x70808FF, 0x8778613
    .word 0x3CFF0208, 0x401FF36, 0x1EFF0280, 0x13, 0xCFF2400, 0x1500708
    .word 0xFF043C37, 0xFF004304, 0xFF003D04, 0xA0006001, 0x3B020000, 0x75FF2730
    .word 0x1EFF0211, 0x10054, 0xFF4F0053, 0x46FF2701, 0xC062F01, 0xFF250055
    .word 0x3B183BFF, 0x380004, 0x77441440, 0x808, 0xA0006000, 0x8020000
    .word 0x406003B, 0x14FF0280, 0x80CFF24, 0x66383A07, 0xFF4F887A, 0x90005000
    .word 0x46080877, 0x5BB2002, 0x3B343B08, 0x1CFF241C, 0x2E1307FF, 0x2080878
    .word 0xFF3678FF, 0x2800400, 0x131EFF, 0x24000000, 0x70808FF, 0x8782E13
    .word 0x3CFF0208, 0x401FF36, 0x1EFF0280, 0x13, 0xCFF2400, 0x1500708
    .word 0xFF043C37, 0xFF004304, 0xFF003D04, 0xA0006001, 0x3B020000, 0x75FF2730
    .word 0x1EFF0211, 0x10054, 0xFF4F0053, 0x46FF2701, 0xD062F01, 0xFF250055
    .word 0x3B183BFF, 0x380004, 0x77EC1440, 0x808, 0x0
    .word 0x80200FC, 0x206003B, 0xFF241EFF, 0x3A07080C, 0x887A66B8
    .word 0x78380050, 0x2460808, 0x805BB40, 0x3B200146, 0x21C3B34
    .word 0x1F4A1EFF, 0x8FF2400, 0x29130708, 0x2080879, 0xFF36D2FF
    .word 0x2800400, 0x8321EFF, 0xF44901, 0x98CFF02
    .word 0xFF020208
    .word 0x1FF361E, 0xFF028004, 0x308321E, 0x2040809, 0xFF021EFF
    .word 0x4FF361E, 0xFF028004, 0x508321E, 0x200F449, 0x8098CFF
    .word 0x1EFF0206, 0x408FF36, 0x1EFF0280, 0x49070832, 0xFF0200F4
    .word 0x808098C, 0x361EFF02, 0x800409FF, 0x321EFF02, 0x8090908
    .word 0x1EFF020A
    .word 0x40AFF36
    .word 0x3CFF0280, 0x40CFF36, 0xF44980, 0x138CFF02, 0x0
    .word 0x241F084C, 0x7020CFF, 0x2FB4FF02, 0x72F1006, 0x73FF2610
    .word 0xFF2600, 0x57FF2603, 0x7004E03, 0x25005301, 0x48FFFF
    .word 0x8793400, 0x43B3708, 0x40003800, 0x878F314, 0x8
    .word 0x7000005, 0x40000, 0x1000000, 0x0
    .word 0x2706003B, 0x3A014CFF, 0x87A69C4, 0x360AFF02, 0x800400FF
    .word 0x14AFF27, 0x43B0346, 0x0
    .word 0x2706003B, 0x49014BFF, 0xFF260066
    .word 0x1947014A
    .word 0x20809EC, 0x95473CFF, 0x20809EC, 0xFF2602FF, 0x89470149
    .word 0x460809EE, 0x43B03, 0xC0FD8000, 0x80200F9, 0x4004
    .word 0x8000, 0x800, 0x3A06003B, 0x887A6A8C, 0x3B01FF02
    .word 0x8C024634, 0x50080684, 0x8799000, 0xFF4F08, 0x208FF24
    .word 0x7A291307, 0xFF020808, 0xFF363C, 0xFF028004, 0x108321E
    .word 0x501EFF02, 0x8799800, 0x3CFF0208, 0x36020832, 0x800402FF
    .word 0x81EFF02, 0x2030809, 0xFF361EFF, 0x2800403, 0x8321EFF
    .word 0x5080904, 0x133CFF02, 0x0
    .word 0x10CFF24, 0x12466507, 0x13086506, 0x25303B04, 0x48FFFF
    .word 0x87A3400, 0x43B3708, 0x40003800, 0x87A0714, 0x8
    .word 0x4000000, 0xFF540000, 0xFFF20000, 0x0
    .word 0x20F54000, 0x80000FF, 0x4001E0C, 0x40, 0x80, 0x400960C
    .word 0x28, 0xFF80, 0x640408, 0x800000, 0x4080000, 0x7C
    .word 0xFF80, 0x8, 0x3A06003B, 0x887A6B50, 0x7A440050, 0x2460808
    .word 0x80557B8, 0x3B01FF02, 0x131C3B34, 0x8087B4F, 0x363CFF02, 0x800400FF
    .word 0x13, 0x18FF2400, 0x4F130702, 0x208087B, 0xFF363CFF, 0x2800401
    .word 0x8321EFF, 0x2080901, 0x361EFF02, 0x800403FF, 0x365AFF02, 0x80040AFF
    .word 0x321EFF02, 0x500308, 0x8087A4C, 0x4080908, 0x361EFF02, 0x80040BFF
    .word 0x321EFF02
    .word 0x500508
    .word 0x8087A65, 0x6080908, 0x361EFF02, 0x800413FF, 0x321EFF02
    .word 0x8090708, 0x6F005008, 0x808087A, 0x361EFF02, 0x800414FF
    .word 0x131EFF02, 0x0
    .word off_80CFF24
    .word 0x50034607, 0x43C3701, 0x4303FF, 0x3D03FF, 0xF54001FF
    .word 0xFF20, 0xFF02303B, 0x8FF241E, 0x183B0708, 0x3800043B
    .word 0x1F144000, 0x8087B, 0xC0024000, 0x8000012, 0x206003B
    .word 0xFF2414FF, 0x3A07080C, 0x87A6FB0, 0x7B580050, 0x2460808
    .word 0x807BB18, 0xFF02343B, 0x8FF241E, 0x1C130708, 0x208087C
    .word 0xFF361EFF, 0x2800400, 0x8321EFF, 0x2080901
    .word 0x361EFF02, 0x800406FF, 0x321EFF02, 0xFF020308, 0x7FF363C
    .word 0xFF028004, 0x408321E, 0x2050809, 0xFF361EFF, 0x280040B
    .word 0x8321EFF, 0x7080906, 0x361EFF02, 0x80040CFF, 0x321EFF02
    .word 0x8090808, 0x1EFF0209, 0x410FF36, 0x1EFF0280, 0x13
    .word 0xCFF2400, 0x3460708, 0x3C370150, 0x4307FF04, 0x3D07FF00
    .word 0x2001FF00, 0x132003, 0x27303B00, 0x21175FF, 0xFF241EFF
    .word 0x3B070808, 0x43B18, 0x14400038, 0x8087BE8, 0xC0024000
    .word 0x8000012, 0x2004, 0xFF8000, 0x800, 0x3A06003B
    .word 0x887A7304, 0x7C240050, 0x2460808, 0x807BC10, 0x3B01FF02
    .word 0x21C3B34, 0xFF241EFF, 0x13070808, 0x8087CBA, 0x361EFF02
    .word 0x800400FF, 0x321EFF02, 0x8090308, 0x1EFF0204, 0x405FF36
    .word 0x1EFF0280, 0x2050832, 0x8320AFF, 0x764907, 0x505AFF02
    .word 0x87C2C00, 0xFF020808, 0x9FF361E, 0xFF028004, 0x131E
    .word 0xFF240000, 0x4E071004, 0x2011A00, 0x1481EFF, 0x87CC400
    .word 0x3B183B08, 0x380004, 0x7C9D1440, 0x808, 0x7000300
    .word 0xFFB20000, 0x180000, 0x0
    .word 0x20FCC000, 0x8000002, 0x3A06003B, 0x887A74B4, 0x7CD40050
    .word 0x2460808, 0x8056308, 0x3B01FF02, 0x1EFF0234, 0x1000FF24
    .word 0x7D741307, 0xFF020808, 0x108323C, 0x2020809, 0xFF361EFF
    .word 0x2800400, 0x8321EFF, 0x4080903, 0x361EFF02, 0x800401FF
    .word 0x2000B4A, 0x8321EFF, 0x6080905, 0x361EFF02, 0x800408FF
    .word 0x321EFF02, 0x8090708, 0x1EFF0208, 0x40BFF36
    .word 0x1EFF0280
    .word 0x9090832, 0xFF020A08, 0x131E, 0xFF240000, 0x4E07080C
    .word 0x2F011A01, 0xFF021107
    .word 0x481E
    .word off_8087D7C
    .word 0x43B37, 0x14400038, 0x8087D55
off_8087D7C:    .word unk_3000000
    .word 0x60000, 0x400000, 0x0
    .word 0xE0FE2000, 0x8000001, 0x406003B, 0x14FF0280, 0x80CFF24
    .word 0x76483A07, 0x50887A, 0x8087D8C, 0x61C80246, 0x343B0805
    .word 0x241EFF02, 0x70808FF, 0x87E3913, 0x1EFF0208, 0x400FF36
    .word 0x1EFF0280, 0x9010832, 0xFF020208, 0x3FF361E, 0xFF028004
    .word 0x1F084C1E, 0x40CFF24, 0x3083207, 0x2040809, 0xFF24D2FF
    .word 0x2070408, 0xFF361EFF, 0x2800405, 0x131EFF, 0x24000000
    .word 0x7080CFF, 0x3C370150, 0x4304FF04, 0x3D04FF00, 0x2001FF00
    .word 0x1E0FE, 0x2F303B00, 0x72F1106, 0x27034612, 0x21175FF
    .word 0xFF4A1EFF, 0x8FF24FF, 0x43B0708, 0x40003800, 0x87DFE14
    .word 0x8, 0x600AC000, 0x80000E3, 0x4000200C, 0x2006164
    .word 0x1C0408, 0x0
    .word 0x8FF80, 0x2406003B, 0x7080CFF, 0x7A783C3A, 0x44005088
    .word 0x4608087E, 0x7BCDC02, 0x2343B08, 0xFF241EFF, 0x13070808
    .word 0x8087F1A, 0x361EFF02, 0x800400FF, 0x321EFF02, 0x8090108
    .word 0x1EFF0202, 0x403FF36, 0x1EFF0280, 0x9030832, 0xFF020408
    .word 0x5FF361E, 0xFF028004, 0x508321E, 0x7E4C0050, 0x8090808
    .word 0x1EFF0206, 0x408FF36, 0x1EFF0280, 0x9070832, 0xFF020808
    .word 0x9FF361E, 0xFF028004, 0x908321E, 0x7E550050, 0x9080808
    .word 0xFF020A08, 0xCFF361E, 0xFF028004, 0xB08321E, 0x13
    .word 0xFF043C00, 0xFF004307, 0xFF003D07, 0xE00AC001, 0x20000E3
    .word 0x335114FF, 0x3B183B01, 0x380004, 0x7EF81440, 0x808
    .word 0xE00AC000, 0x80000E3, 0x3A06003B, 0x887A7A9C, 0x7F240050
    .word 0x2460808, 0x807BE58, 0x3B01FF02, 0x21C3B34, 0xFF241EFF
    .word 0x13070808, 0x8087F8F, 0x361EFF02, 0x800400FF, 0x131EFF02
    .word 0x0
    .word off_80CFF24
    .word 0x50034607, 0x43C3701, 0x4303FF, 0x3D03FF, 0xAC001FF
    .word 0xE3E0, 0xFF02303B, 0x8FF241E, 0x183B0708, 0x3800043B
    .word 0x5F144000, 0x8087F, 0xA0068000, 0x80400F3, 0x3A06003B
    .word 0x887A7B98, 0x7F980050, 0x2460808, 0x807E4C0, 0x3B01FF02
    .word 0x21C3B34, 0xFF241EFF, 0x13070808, 0x8088012, 0x361EFF02
    .word 0x800400FF, 0x4A0AFF02, 0x83200FF, 0x2080901, 0x407FF36
    .word 0x1EFF0280, 0x9030832, 0xFF020408, 0x8FF361E, 0xFF028004
    .word 0x131E, 0xFF240000, 0x27071004, 0x21175FF, 0x1481EFF
    .word 0x8801C00, 0x3B183B08, 0x380004, 0x7FF51440, 0x808
    .word 0x7000100, 0xFF920000, 0x700000, 0x0
    .word 0xC0FBA000, 0x80000FF, 0x616440, 0xA0000802, 0xFDC002
    .word 0x800, 0x3A06003B, 0x887A7DC8, 0x802C0050, 0x2460808
    .word 0x8055E98, 0x3B01FF02, 0x4F1C3B34, 0x783400FF, 0x2080881
    .word 0xFF243CFF, 0x2070400, 0x6E133CFF, 0x36080881, 0x800400FF
    .word 0x13, 0x350E3500, 0x1CFF240F, 0x1EFF02FF, 0x1300034A
    .word 0x0
    .word 0x2401FF4F, 0x70218FF, 0x8816E13, 0x3CFF0208, 0x908FF36
    .word 0xFF4F0108, 0x3EFF0203, 0x3201FF4F, 0x80040208, 0x321EFF02
    .word 0x8090308, 0x1EFF0204, 0x40FFF36, 0x34005080, 0x2080880
    .word 0x8321EFF, 0x6080905, 0x80340050, 0x500808, 0x808803A
    .word 0x361EFF02, 0x800410FF, 0x321EFF02, 0x8090708, 0x1EFF0208
    .word 0x412FF36, 0x1EFF0280, 0x9090832, 0xFF020A08, 0x16FF361E
    .word 0xFF028004, 0x131E, 0x84C0000, 0x1CFF241F, 0x6E130704
    .word 0x2080881, 0xFF3678FF, 0x2800418, 0xFF4F78FF, 0x81783400
    .word 0xFF240808, 0x207FF08, 0xFF361EFF, 0x2800419, 0xFF241EFF
    .word 0x1307080C, 0x0
    .word 0x2612062F, 0x650102FF, 0x4F09120C, 0xFF0201FF, 0x483C
    .word 0x80881B4, 0x3B183B37, 0x380004, 0x81461440, 0x808
    .word 0x8088184, 0x808819C
    .word 0xFFFFFFFF
    .word 0x4, 0x3002C50, 0xFF0D0F0C, 0x80007FFF, 0x1, 0x0
    .word 0x4, 0x3002840, 0xFF0C0E0C, 0x80007FFF, 0x1, 0x0
    .word 0x3000200, 0xFFF00000, 0xFFFE0000, 0x0
    .word 0x8004A000, 0x800000A, 0x616440, 0x802, 0x406003B
    .word 0x14FF0280, 0x80CFF24, 0x82383A07, 0x50887A, 0x80881C4
    .word 0xE9A40246, 0x343B0805, 0x241EFF02, 0x70808FF, 0x8823513
    .word 0x1EFF0208, 0x400FF36, 0x1EFF0280, 0x81CC0050, 0x8320808
    .word 0x2CFF0301, 0x1301, 0xFF240000, 0x2707080C, 0x21175FF
    .word 0x481EFF, 0x8824000, 0x43B3708, 0x40003800, 0x8821914
    .word 0x8, 0x1000103, 0xFF1A0000, 0x440000, 0x0
    .word 0xC01BC000, 0x80000F0, 0x3A06003B, 0x887A82B0, 0x82500050
    .word 0x2460808, 0x807EA48, 0x3B01FF02, 0x21C3B34, 0xFF241EFF
    .word 0x13070808, 0x80882BE, 0x361EFF02, 0x800400FF, 0x131EFF02
    .word 0x0
    .word off_80CFF24
    .word 0x50034607, 0x43C3701, 0x4304FF, 0x3D04FF, 0x1BC001FF
    .word 0xF0C0, 0xFF02303B, 0xFFFF4A1E, 0x808FF24, 0x3B183B07
    .word 0x380004, 0x828B1440, 0x808, 0xC0F42000, 0x8000006
    .word 0xC0F7E000, 0x80000FB, 0xA0030000, 0x80000F8, 0xA0086000
    .word 0x80000FA, 0x40044000, 0x8000004, 0x5004, 0x80000000
    .word 0x500400, 0x100, 0x5A0C0000, 0x500400, 0xFF00
    .word 0x50040000, 0x0
    .word 0x8FF8000, 0x406003B, 0x14FF0280, 0x80CFF24, 0x83C03A07
    .word 0x50887A, 0x80882C8, 0xF3B40246, 0x343B0805, 0x111EFF02
    .word 0x8851E20, 0x8FF2408, 0x2F130708, 0x2080885, 0xFF361EFF
    .word 0x2800400, 0x8321EFF, 0x2080901, 0x361EFF02, 0x800403FF
    .word 0x321EFF02, 0x8090308, 0x1304, 0xFF020000, 0xCFF243C
    .word 0x500708, 0x80882D0, 0x2050832, 0xFF243CFF, 0x13070808
    .word 0x808852F, 0x361EFF02, 0x800405FF, 0x321EFF02, 0x8090608
    .word 0x1EFF0207, 0x406FF36, 0x1380, 0xFF020000, 0xCFF243C
    .word 0x500708, 0x80882D8, 0x2080832, 0xFF243CFF, 0x13070808
    .word 0x808852F, 0x361EFF02, 0x800408FF, 0x321EFF02, 0x8090908
    .word 0x1EFF020A, 0x40AFF36, 0x1EFF0280, 0x90B0832, 0xFF020C08
    .word 0xBFF361E, 0xFF028004, 0xD08321E, 0x130E0809, 0x0
    .word 0x243CFF02, 0x7080CFF, 0x200FF4F, 0x78343CFF, 0x24080881
    .word 0x13FF08FF, 0x808852F, 0x40CFF36, 0x1380, 0x500000
    .word 0x80882E0, 0x350F0832, 0x240F350E, 0x4FFF0CFF, 0xFF0201FF
    .word 0x8FF245A, 0x2F130708, 0x2080885, 0xFF361EFF, 0x280040F
    .word 0x8321EFF, 0x11080910, 0x412FF36, 0x1EFF0280, 0x9120832
    .word 0x131308, 0x2000000, 0xFF243CFF, 0x4F07080C, 0xFF0200FF
    .word 0x8178343C, 0xFF240808, 0x2F13FF08, 0x36080885, 0x800413FF
    .word 0x13, 0xE8005000, 0x32080882, 0xE351408, 0xFF240F35
    .word 0xFF4FFF0C, 0x5AFF0201, 0x808FF24, 0x852F1307, 0xFF020808
    .word 0x17FF361E, 0xFF028004, 0xF000501E, 0x8080882, 0x361EFF02
    .word 0x800418FF, 0x321EFF02, 0x8091508, 0x1EFF0216, 0x41CFF36
    .word 0x1EFF0280, 0x13, 0xCFF2400, 0x14E0708, 0xE35011B
    .word 0x1500F35, 0xFF043C37, 0xFF004305, 0xFF003D05, 0xC0044001
    .word 0x3B000004, 0x27034630, 0x21175FF, 0xFF241EFF, 0x3B070808
    .word 0x9090004, 0xEC4901, 0x1B20FF02, 0x85210109, 0x38100808
    .word 0xE4144000, 0x80884, 0x4000203, 0x0, 0x0
    .word 0x0
    .word 0x20F0C000, 0x8000002, 0x616440, 0x802, 0x406003B
    .word 0x14FF0280, 0x241F084C, 0x7080CFF, 0x7A87803A, 0x48005088
    .word 0x46080885, 0x6234002, 0x2343B08, 0x503CFF, 0x8088550
    .word 0x24010832, 0x70808FF, 0x885E213, 0x2080908, 0x361EFF02
    .word 0x800400FF, 0x91EFF02, 0xFF020408, 0x2FF361E, 0xFF028004
    .word 0x131E, 0xFF240000, 0x5007080C, 0x43C3701, 0x4303FF
    .word 0x3D03FF, 0xF14001FF, 0x420, 0x346303B, 0x1175FF27
    .word 0x4A1EFF02, 0xFF24FFFF, 0x3B070808, 0x380004, 0x85AD1440
    .word 0x808, 0x2007E000, 0x8000008, 0x8000D004, 0xFF80FF
    .word 0x500C00, 0x6804, 0x10001, 0x64400800, 0x8020061
    .word 0x1804, 0x80000000, 0x8FF, 0x3A06003B, 0x887A887C
    .word 0x85EC0050, 0x2460808, 0x80618F8, 0x3B01FF02, 0x21C3B34
    .word 0xFF241EFF, 0x13070808, 0x80886F0, 0x361EFF02, 0x800400FF
    .word 0x321EFF02, 0x8090108, 0x1EFF0202, 0x401FF36, 0x1EFF0280
    .word 0x85F40050, 0x2080808, 0xFF361EFF, 0x50800405, 0x8860A00
    .word 0x1EFF0208, 0x9030832, 0x500408, 0x8088610, 0x1EFF0208
    .word 0x408FF36, 0x1EFF0280, 0x9CE1433, 0xCE4C3308, 0x8320809
    .word 0x6080905, 0x2045, 0x0, 0x30000, 0x8090000
    .word 0xCFF0207, 0x13, 0x4FF2400, 0x43C0710, 0x4304FF
    .word 0x3D04FF, 0xE001FF, 0x220, 0xFF27303B, 0xF9471164
    .word 0x2080886, 0x81480FFF, 0x0, 0x13062F00, 0x3B13072F
    .word 0x43B18, 0x14400038, 0x80886B4
// end of function sub_8086488

/*For debugging purposes, connect comment at any range!*/
