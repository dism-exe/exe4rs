.include "asm20.inc"

.thumb
dead_80886F8:
    push {lr}
    mov r0, #8
    bl sub_802A6B4
    str r0, [r5,#0x34]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word 0x3A06003B, 0x87A8A4C, 0x1114FF02, 0x8875324, 0x87581308
    .word 0xFF020808, 0xFF361E, 0xFF028004, 0x131E, 0xFF240000
    .word 0x3707080C, 0x4FF043C, 0x4FF0043, 0x1FF003D, 0x880E740
    .word 0x303B0000, 0x241EFF02, 0x70808FF, 0x4300043B, 0x1004FF00
    .word 0x14400038, 0x8088729, 0x80104000, 0x800000D, 0x3A06003B
    .word 0x887A8A8C, 0x87600050, 0x2460808, 0x806BA90, 0x3B01FF02
    .word 0x21C3B34, 0xFF241EFF, 0x13070808, 0x80887C8, 0x361EFF02
    .word 0x800400FF, 0x321EFF02, 0xFF020108, 0x708320A, 0x2007649
    .word 0x131EFF, 0x24000000, 0x71004FF, 0x9F54147, 0x1EFF0208
    .word 0xD0010148, 0x3B080887, 0x43B18, 0x14400038, 0x80887AA
    .word 0x4000000, 0x0, 0x0, 0x0, 0x60FAE000
    .word 0x80000FF, 0x3A06003B, 0x887A8B30, 0x87E00050, 0x2460808
    .word 0x806BF78, 0x3B01FF02, 0x21C3B34, 0xFF241EFF, 0x13070808
    .word 0x8088848, 0x361EFF02, 0x800400FF, 0x321EFF02, 0xFF020108
    .word 0x708320A, 0x2007649, 0x131EFF, 0x24000000, 0x71004FF
    .word 0x9F54147, 0x1EFF0208, 0x50010148, 0x3B080888, 0x43B18
    .word 0x14400038, 0x808882A, 0x4000000, 0x0, 0x0
    .word 0x0, 0x14A000, 0x8000005, 0x3A06003B, 0x887A8BB0
    .word 0x88600050, 0x2460808, 0x806C5DC, 0x3B01FF02, 0x21C3B34
    .word 0xFF241EFF, 0x13070808, 0x80888DA, 0x361EFF02, 0x80900FF
    .word 0x3FF4F01, 0x4F3EFF02, 0x83201FF, 0x2800402, 0x8321EFF
    .word 0xAFF0203, 0x49070832, 0xFF020076, 0x131E, 0xFF240000
    .word 0x2F071004, 0x41471406, 0x20809F5, 0x1481EFF, 0x888E401
    .word 0x3B183B08, 0x380004, 0x88B91440, 0x808, 0x4000000
    .word 0x0, 0x0, 0x0, 0x3A06003B, 0x87A8CDC
    .word 0x1314FF02, 0x8088939, 0x361EFF02, 0x800400FF, 0x131EFF02
    .word 0x0, 0x80CFF24, 0x43C3707, 0x4301FF, 0x3D01FF
    .word 0xF72001FF, 0xF640, 0xFF02303B, 0x8FF241E, 0x43B0708
    .word 0x40003800, 0x8890F14, 0x8, 0x3A06003B, 0x87A8D68
    .word 0x1114FF02, 0x8898F24, 0x89941308, 0xFF020808, 0xFF361E
    .word 0xFF028004, 0x131E, 0xFF240000, 0x3707080C, 0x4FF043C
    .word 0x4FF0043, 0x1FF003D, 0x1E60F860, 0x303B0000, 0x241EFF02
    .word 0x70808FF, 0x4300043B, 0x1004FF00, 0x14400038, 0x8088965
    .word 0xED4000, 0x800000B, 0x616440, 0x38040802, 0x80000000
    .word 0x8000000, 0x2004, 0xFF0000, 0x18040800, 0x80FF8000
    .word 0x80000FF, 0x406003B, 0x14FF0280, 0x80CFF24, 0x8EC03A07
    .word 0x50887A, 0x808899C, 0xD0AC0246, 0x343B0806, 0x501EFF02
    .word 0x889A400, 0x1083208, 0x808FF24, 0x2080907, 0x88B3513
    .word 0x1EFF0208, 0x400FF36, 0x1EFF0280, 0x9030832, 0x500408
    .word 0x80889AA, 0x1EFF0208, 0x402FF36, 0x1EFF0280, 0x9050832
    .word 0xFF020608, 0x3FF361E, 0xFF028004, 0x708321E, 0x2080809
    .word 0xFF361EFF, 0x2800405, 0xFF241EFF, 0x3507084C, 0x33053504
    .word 0x806A834, 0x48FF245D, 0x8320708, 0x41FF0209, 0x10F06556
    .word 0x10F09908, 0x8, 0x1C201100, 0x908088B, 0xFF020A08
    .word 0x7FF361E, 0xFF028004, 0xB08321E, 0x89B40050, 0x9080808
    .word 0xFF020C08, 0xAFF361E, 0xFF028004, 0xD08321E, 0x2100809
    .word 0xFF361EFF, 0x280040D, 0x8321EFF, 0x12080911, 0x361EFF02
    .word 0x800410FF, 0x4A1EFF02, 0x83200FF, 0x22FF0213, 0xA3382C
    .word 0x500802, 0x80889BE, 0x14080908, 0x2C14FF02, 0x200A338
    .word 0x1EFF0201, 0x361EFF02, 0x800412FF, 0x131EFF02, 0x0
    .word 0x7FF043C, 0x7FF0043, 0x1FF003D, 0x900ED40, 0x14E0000
    .word 0xFF260104, 0xFF020074, 0x39516014, 0xA3382C01, 0x3B010200
    .word 0x43B18, 0x200FB49, 0x91B20FF, 0x88B3101, 0xFB4908
    .word 0x88B1F14, 0xFC4908, 0x40003810, 0x88AEB14, 0x8
    .word 0xE0ECA000, 0x8000007, 0x40003804, 0x4000, 0x800
    .word 0x3A06003B, 0x887A9318, 0x8B400050, 0x2460808, 0x806D47C
    .word 0x3B01FF02, 0x351C3B34, 0x33053504, 0x806A834, 0x241EFF02
    .word 0x70808FF, 0x88C7413, 0x1EFF0208, 0x400FF36, 0x1EFF0280
    .word 0x45010832, 0x100, 0x0, 0x1010800, 0x455AFF02
    .word 0x1004530, 0x0, 0x6000000, 0x130101, 0x11000000
    .word 0x88C6820, 0xAD565D08, 0xD90810F2, 0x810F2, 0x2000000
    .word 0x87495AFF, 0x4FF2401, 0xFF020704, 0x2012571E, 0x451EFF02
    .word 0x8CAD4730, 0x34330808, 0x320806A8, 0xFF020208, 0xFF245A
    .word 0x74130704, 0x4908088C, 0x83200FF, 0x8C8D4703, 0x8090808
    .word 0x1304, 0xFF240000, 0xFF02FF4C, 0xA7443301, 0xE4330806
    .word 0x240806A7, 0x70848FF, 0x88C7413, 0x48005008, 0x808088B
    .word 0x361EFF02, 0x800405FF, 0x321EFF02, 0xFF020508, 0x608320A
    .word 0x2007649, 0x131EFF, 0x24000000, 0x250404FF, 0x57070400
    .word 0x4D1EFF02, 0x7C000148, 0x3B08088C, 0x43B18, 0x60158
    .word 0x1406FF02, 0x8088C68, 0x14400038, 0x8088C4A, 0x7000103
    .word 0xFFD00000, 0xFF960000, 0x0
// end of function dead_80886F8

.thumb
sub_8088C8C:
    push {r4-r7,lr}
    mov r4, r10
    ldr r1, [r4,#8]
    ldrh r0, [r1]
    ldr r2, [pc, #0x8088ca8-0x8088c94-4] // =0x8000
    orr r0, r2
    strh r0, [r1]
    ldr r1, [r4,#0x1c]
    mov r0, #0x2f 
    strb r0, [r1,#0xb]
    mov r0, #0x3f 
    strb r0, [r1,#0xa]
    mov r0, #0
    pop {r4-r7,pc}
dword_8088CA8:    .word 0x8000
// end of function sub_8088C8C

.thumb
sub_8088CAC:
    push {r4-r7,lr}
    bl sub_8001D60
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8001C94
    bl sub_806A9C4
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word 0x60FD2000, 0x8000005, 0x80001804, 0xFF, 0x14040800
    .word 0x40004000, 0x8000000, 0x3A06003B, 0x887A950C, 0x8CC80050
    .word 0x2460808, 0x805F71C, 0x3B01FF02, 0x21C3B34, 0xFF241EFF
    .word 0x13070800, 0x8088D99, 0x361EFF02, 0x800400FF, 0x321EFF02
    .word 0xFF020108, 0xD000501E, 0x808088C, 0x321EFF02, 0x8090208
    .word 0x1EFF0203, 0x403FF36, 0x1EFF0280, 0x50040832, 0x88CDA00
    .word 0x8090808, 0x1EFF0206, 0x40BFF36, 0x1EFF0280, 0x13
    .word 0x1F084C00, 0x20CFF24, 0xFF4F07, 0x8817834, 0x8FF2408
    .word 0x78FF02FF, 0x88D9913, 0xDFF3608, 0xFF028004, 0x1378
    .word 0xFF240000, 0x207080C, 0x481EFF, 0x88DA400, 0x62F3708
    .word 0x14072F15, 0x43B183B, 0x40003800, 0x88D7914, 0x8
    .word 0x1000100, 0x480000, 0x400000, 0x0
    .word 0x48000, 0x8000004, 0x616440, 0x50040802, 0xC0FFC000
    .word 0x80000FF, 0x40002804, 0x4000, 0x48040800, 0x80000000
    .word 0x80000FF, 0x3A06003B, 0x887A996C, 0x8DB40050, 0x2460808
    .word 0x8055D80, 0x3B01FF02, 0x21C3B34, 0xFF241EFF, 0x13070808
    .word 0x8088EE7, 0x361EFF02, 0x800400FF, 0x9010832, 0xFF020208
    .word 0x3FF361E, 0x508004, 0x8088DBC, 0x9030832, 0xFF020408
    .word 0x4FF361E, 0x8328004, 0x6080905, 0x361EFF02, 0x800407FF
    .word 0x8DC20050, 0x8320808, 0x8090807, 0x1EFF0209, 0x908FF36
    .word 0x9320A08, 0x8EF14701, 0x15E0808, 0x9FF8147, 0x50800408
    .word 0x88DCC00, 0xC083208, 0xD080908, 0x8DD60050, 0x32080808
    .word 0x8090E08, 0x1EFF020F, 0x410FF36, 0x1EFF0280, 0x13
    .word 0xCFF2400, 0xFF260708, 0xCA650142, 0x3460412, 0x2370150
    .word 0x3D01FF, 0xFAC001FF, 0x340, 0x3C01FF02, 0x4304FF04
    .word 0x3D04FF00, 0x8001FF00, 0x480F9, 0x1B303B00, 0x8EDA0109
    .word 0xF1470808, 0x5E08088E, 0xFF814701, 0xFF020809, 0x8FF241E
    .word 0x183B0708, 0x3800043B, 0x8C144000, 0x8088E, 0x2001B5F0
    .word 0xFBB4F7A4, 0xBDF02000, 0x4001E000, 0x8000004, 0x406003B
    .word 0x14FF0280, 0x80CFF24, 0x9CF03A07, 0x50887A, 0x8088EFC
    .word 0xF8400246, 0x343B0805, 0x241EFF02, 0x70808FF, 0x88F8E13
    .word 0x1EFF0208, 0x400FF36, 0x1093280, 0x9FF9B47, 0x3CFF0208
    .word 0x13, 0xCFF2400, 0x1500708, 0xFF043C37, 0xFF004301
    .word 0xFF003D01, 0x40016001, 0x3B000004, 0x42FF2730, 0x8F994701
    .word 0x62F0808, 0x1B034616, 0x8F7F0109, 0x9B470808, 0x270809FF
    .word 0x21175FF, 0xFF241EFF, 0x3B070808, 0x380004, 0x8F441440
    .word 0x808, 0xF777B5F0, 0x4200FE4F, 0x2011D102, 0xF806F7BA
    .word 0xBDF02000, 0x40F64000, 0x8000002, 0x616440, 0x40000802
    .word 0x240F8, 0xB8040800, 0x80008000, 0x80000FF, 0x3A06003B
    .word 0x887A9EE0, 0x8FAC0050, 0x2460808, 0x805FF24, 0x3B01FF02
    .word 0x21C3B34, 0x8321EFF, 0xB4005001, 0x2408088F, 0x70808FF
    .word 0x8907813, 0x2080908, 0x361EFF02, 0x800400FF, 0x8FBA0050
    .word 0xFF020808, 0x308321E, 0x2040809, 0xFF361EFF, 0x2800402
    .word 0x8321EFF, 0x1EFF0205, 0x8FC20050, 0x9080808, 0xFF020608
    .word 0x7FF361E, 0xFF028004, 0x131E, 0xFF240000, 0x5007080C
    .word 0x43C3701, 0x4307FF, 0x3D07FF, 0xFE4001FF, 0xFD40
    .word 0xFF27303B, 0xFF021175, 0x5401521E, 0x2F010001, 0x551706
    .word 0x3BFFFF25, 0x43B18, 0x14400038, 0x808903D, 0xC0F74000
    .word 0x80000FD, 0x206003B, 0xFF2414FF, 0x3A07080C, 0x887A9FEC
    .word 0x5000FF4F, 0x8908000, 0xBC024608, 0x3B080606, 0x261C3B34
    .word 0x260143FF, 0x240144FF, 0x7FF1CFF, 0x8912413, 0x78FF0208
    .word 0x400FF36, 0x1EFF0280, 0x13, 0x8FF2400, 0x24130708
    .word 0x2080891, 0xFF363CFF, 0x2800401, 0x131EFF, 0x24000000
    .word 0x7080CFF, 0x3C370150, 0x4304FF04, 0x3D04FF00, 0x8001FF00
    .word 0xFDC006, 0x27303B04, 0x21175FF, 0x1541EFF, 0x1530101
    .word 0x2701FF4F, 0x2F0147FF, 0x551806, 0x3BFFFF25, 0x43B18
    .word 0x14400038, 0x80890E2, 0xC0F74000, 0x80000FD, 0x206003B
    .word 0xFF2414FF, 0x3A07080C, 0x887AA098, 0x5000FF4F, 0x8912C00
    .word 0xBC024608, 0x3B080606, 0x261C3B34, 0x260143FF, 0x240144FF
    .word 0x7FF1CFF, 0x891D013, 0x78FF0208, 0x400FF36, 0x1EFF0280
    .word 0x13, 0x8FF2400, 0xD0130708, 0x2080891, 0xFF363CFF
    .word 0x2800401, 0x131EFF, 0x24000000, 0x7080CFF, 0x3C370150
    .word 0x4304FF04, 0x3D04FF00, 0x8001FF00, 0xFDC006, 0x27303B04
    .word 0x21175FF, 0x1541EFF, 0x1530101, 0x2701FF4F, 0x2F0147FF
    .word 0x551906, 0x3BFFFF25, 0x43B18, 0x14400038, 0x808918E
    .word 0xC0F74000, 0x80A00FD, 0x14004, 0x80000000, 0x1F0C08FF
    .word 0x800400, 0x80, 0x40000, 0x8001, 0x4004000
    .word 0x800040, 0x0
    .word 0x8, 0x206003B, 0x84C14FF, 0xCFF241F, 0xDC3A0708, 0x50887AA1
    .word 0x891D800, 0xDC024608, 0x3B080606, 0x261C3B34, 0x260143FF, 0x240144FF
    .word 0x7FF1CFF, 0x892FB13, 0xB4FF0208, 0x400FF36, 0x1EFF0280, 0x13
    .word 0x1F4A00, 0x808FF24, 0x92FB1307, 0x500808, 0x80891E0, 0x3CFF0208
    .word 0x403FF36, 0x1EFF0280, 0x9010832, 0xFF020208, 0x4FF361E, 0xFF028004
    .word 0x308321E, 0x2050809, 0xFF361EFF, 0x2800406, 0xFF021EFF, 0x8FF361E
    .word 0xFF028004, 0x808321E, 0x50090809, 0x891EA00, 0xA080908, 0x361EFF02
    .word 0x80040AFF, 0x131EFF02, 0x0
    .word off_80CFF24
    .word 0x37015007, 0x5FF043C, 0x5FF0043, 0x1FF003D, 0xFDC00540
    .word 0x303B0400, 0x143FF27, 0x144FF26, 0x4615072F, 0x1F004E03
    .word 0x2015301, 0xFF4A1EFF, 0x8FF24FF, 0x183B0708, 0x3800043B
    .word 0xB7144000, 0x80892, 0xC0FA4000, 0x80000FF, 0x616440
    .word 0x32040802, 0x40004000, 0x8000000, 0x3A06003B, 0x887AA640
    .word 0x93040050, 0x2460808, 0x8072E30, 0x3B01FF02, 0x21C3B34
    .word 0xFF241EFF, 0x13070800, 0x808944A, 0x930C0050, 0x8320808
    .word 0x2080901, 0x361EFF02, 0x800400FF, 0x501EFF02, 0x8931200
    .word 0xFF020808, 0x1124331E, 0xFF020807, 0x308321E, 0x2050809
    .word 0xFF361EFF, 0x2800405, 0x8321EFF, 0x8080906, 0x361EFF02
    .word 0x800410FF, 0x321EFF02, 0x8090908, 0x1EFF020A, 0x412FF36
    .word 0x1EFF0280, 0x90B0832, 0xFF020C08, 0x3F20111E, 0x2080894
    .word 0xFF361EFF, 0x2800413, 0x8321EFF, 0x920120D, 0xFF021108
    .word 0x16FF361E, 0xFF028004, 0x1208321E, 0x2130809, 0xFF361EFF
    .word 0x2800418, 0x8321EFF, 0x16080914, 0x943F2011, 0xFF020808
    .word 0x1AFF361E, 0xFF028004, 0x1708321E, 0x2180809, 0xFF361EFF
    .word 0x280041B, 0x8321EFF, 0x9201219, 0xFF021A08, 0x1CFF361E
    .word 0xFF028004, 0x131E, 0x43C0000, 0x4303FF, 0x3D03FF
    .word 0x24001FF, 0x40, 0x6014FF02, 0x51020264, 0x183B013A
    .word 0x4900043B, 0xFF0200FB, 0x943F1420, 0x380808, 0x94191440
    .word 0x808, 0x40000, 0x8000001, 0x4001F0C, 0x400008
    .word 0x40, 0x1F0C08, 0x80000804, 0x80FF, 0x18040800
    .word 0x80000000, 0x80000FF, 0x3A06003B, 0x887AAB60, 0x94540050
    .word 0x2460808, 0x8073070, 0x3B01FF02, 0x331C3B34, 0x80711C4
    .word 0x241EFF02, 0x70808FF, 0x895D213, 0x1EFF0208, 0x400FF36
    .word 0x1EFF0280, 0x50010832, 0x8945C00, 0x8090808, 0x1EFF0202
    .word 0x401FF36, 0x1EFF0280, 0x9030832, 0xFF020408, 0x3FF361E
    .word 0xFF028004, 0x508321E, 0x2060809, 0xFF361EFF, 0x2800405
    .word 0x8321EFF, 0x1307, 0xFF240000, 0x2407FF04, 0x70800FF
    .word 0x895D213, 0x8080908, 0x361EFF02, 0x800406FF, 0x321EFF02
    .word 0x8090908, 0xB08320A, 0x13, 0x4FF2400, 0xFF2407FF
    .word 0x13070800, 0x80895D2, 0x361EFF02, 0x800407FF, 0x321EFF02
    .word 0x8090C08, 0x1EFF020D, 0x408FF36, 0x1EFF0280, 0x90E0832
    .word 0xE0330F08, 0x4C080711, 0xFF021F08, 0xCFF361E, 0xFF028004
    .word 0x1008321E, 0x94690050, 0x9080808, 0xFF021108, 0xDFF361E
    .word 0xFF028004, 0x1208321E, 0x2130809, 0x501EFF, 0x8089476
    .word 0x1EFF0208, 0x40FFF36, 0x1EFF0280, 0x9140832, 0xFF021508
    .word 0x10FF361E, 0xFF028004, 0x131E, 0xFF240000, 0x2070104
    .word 0x62F1EFF, 0x20072F20, 0x400FF26, 0x48FFFF25, 0x95DC0001
    .word 0x3B370808, 0x380004, 0x95AD1440, 0x808, 0x7000105
    .word 0x0, 0x0, 0x0
    .word 0x1175FF26, 0x2706003B, 0x261175FF, 0x470140FF, 0x80896D9
    .word 0x4701FF02, 0x809F339, 0x4701FF02, 0x8089665, 0x2601FF02
    .word 0x2013EFF, 0x554701FF, 0x47080897, 0x8089761, 0x8967D47
    .word 0x97854708, 0x3E0E0808, 0x97054701, 0x81B0808, 0x8966101
    .word 0xCFF2408, 0xFF020708, 0x40FF261E, 0xF4E54701, 0xBD470809
    .word 0x500809F1, 0x24043B01, 0x70808FF, 0x8966114, 0x8
    .word 0x4904B500, 0x31346809, 0xF79C2001, 0x2000FC56, 0xBD00
    .word 0x200AA8C, 0x4813B5F0, 0x6C094651, 0x497949, 0x79295A40
    .word 0x1C001840, 0xFC86F79B, 0xFE0EF015, 0x2F031A62, 0x2011D113
    .word 0xF79B2100, 0x2011FC89, 0xF79B2101, 0x2A03FC85, 0x2011D103
    .word 0xF79B2100, 0x2A04FC71, 0x2011D103, 0xF79B2101, 0x2000FC6B
    .word 0xBDF0, 0x80896D0, 0x15D0159, 0x1680162, 0x4805B500
    .word 0x6C094651, 0x897949, 0xF79C5840, 0x2000FFD9, 0xBD00
    .word 0x80896F4, 0x806B7E4, 0x806BB44, 0x806BFFC, 0x806C95C
    .word 0xB420B5D7, 0xFDD4F015, 0x24011A65, 0xBA490F, 0x2F03588E
    .word 0x2D05D107, 0x2004D105, 0xF79B2158, 0xD000FC65, 0x5D752509
    .word 0xD0092D00, 0xD0072DFF, 0x19404805, 0x1C003801, 0xFC5AF79B
    .word 0x2400D000, 0x60ACBC20, 0xBDD72000, 0x178, 0x8089EC8
    .word 0x88E8B500, 0x200081A8, 0xBD00, 0x2001B500, 0xF79B213D
    .word 0xD009FC43, 0x380189A8, 0x420081A8, 0x2001D104, 0xF79B213E
    .word 0x2000FC1D, 0xBD00, 0x4657B580, 0x797F6C3F, 0x2F00792A
    .word 0x2000D101, 0x2F01BD80, 0x2A03D10C, 0x2004D108, 0xF79B213B
    .word 0xD003FC25, 0x21612001, 0xFBF6F79B, 0xBD802000, 0xD1172F02
    .word 0xD1082A00, 0x214D2004, 0xFC16F79B, 0x2001D00E, 0xF79B2163
    .word 0x2A03FBE7, 0x2004D108, 0xF79B214F, 0xD003FC0B, 0x21662001
    .word 0xFBDCF79B, 0xBD802000, 0xD1082A00, 0x21502004, 0xFBFEF79B
    .word 0x2001D01B, 0xF79B2169, 0x2A04FBCF, 0x2004D10A, 0xF79B2158
    .word 0xD010FBF3, 0x21064809, 0x1C0A1C00, 0xFBFBF79B, 0xD1082A0A
    .word 0x21562004, 0xFBE6F79B, 0x2001D003, 0xF79B2173, 0x2000FBB7
    .word 0xBD80, 0x16C, 0x60E4E000, 0x8FEE00A, 0x80CFF24
    .word 0xF2114707, 0x81470809, 0x50080898, 0x8983800, 0x14FF0208
    .word 0x808FF24, 0x1EFF0207, 0x7AAECC3A, 0xFF3608, 0xC258004
    .word 0x56FF26FF, 0x3DFF2704, 0x3EFF2601, 0x13D5101, 0x0
// end of function sub_8088CAC

.thumb
sub_8089880:
    push {lr}
    ldr r0, [pc, #0x8089894-0x8089882-2] // off_8089898
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_802669C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8089894:    .word off_8089898
off_8089898:    .word dword_806C888+0x1DC
    .word 0x20004000, 0x802E009, 0x80CFF24, 0xF2114707, 0xE9470809
    .word 0x50080898, 0x8989C00, 0x3CFF0208, 0x808FF24, 0x3CFF0207
    .word 0x2010832, 0x283A1EFF, 0x36087AAF, 0x800400FF, 0x450FF26
    .word 0x14EFF26, 0x13DFF27, 0x13EFF26, 0x0
// end of function sub_8089880

.thumb
sub_80898E8:
    push {lr}
    ldr r0, [pc, #0x80898fc-0x80898ea-2] // off_8089900
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_802669C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_80898FC:    .word off_8089900
off_8089900:    .word dword_806C888+0x118
// end of function sub_80898E8

.thumb
sub_8089904:
    push {lr}
    mov r0, #0x14
    strb r0, [r5,#6]
    mov r0, #0
    pop {pc}
    .byte 0, 0
// end of function sub_8089904

.thumb
sub_8089910:
    push {lr}
    ldrb r0, [r5,#6]
    sub r0, #1
    strb r0, [r5,#6]
    tst r0, r0
    bne loc_8089920
    mov r0, #1
    strb r0, [r5,#8]
loc_8089920:
    mov r0, #0
    pop {pc}
    .word 0x680000, 0xFF840000, 0x2E0000, 0xFF900000, 0xFF4D0000
    .word 0x2E0000, 0xFF500000, 0xC0000, 0x2E0000, 0xFF520000
    .word 0x500000, 0x2E0000, 0xFF0E0000, 0x500000, 0x2E0000
    .word 0xFF500000, 0xC0000, 0x2E0000, 0x89A8547, 0x81B08
    .word 0x808997D, 0x9F24947, 0x99B14708, 0x41470808, 0x208089A
    .word 0x603A1EFF, 0x47087AAF, 0x8089A25, 0x80040736, 0xA400081B
    .word 0x47080899, 0x809F211, 0x899E147, 0x3EFF2608, 0x1
    .word 0x4804B500, 0x897929, 0xF79C5840, 0x2000FE6F, 0xBD00
    .word 0x80899C8, 0x806C050, 0x806C9E4, 0x806C9E4, 0x806C9E4
    .word 0x806C9E4, 0x806CA24, 0x4808B503, 0x52792A, 0x1C005A80
    .word 0xFAD8F79B, 0x5A804808, 0x4288490A, 0x1C00D002, 0xFAD0F79B
    .word 0xBD032000, 0x8089A08, 0x451044F, 0x4530452, 0x4550454
    .word 0x8089A18, 0x152FFFF, 0x153, 0xFFFF, 0x7928B500
    .word 0x5C084902, 0x200071E8, 0xBD00, 0x8089A38, 0x8060200
    .word 0xB09, 0x7928B500, 0xD0104200, 0x6800480C, 0x490C3034
    .word 0xF776220C, 0x688AFF9B, 0x4002010, 0x608A1A12, 0xF79C2001
    .word 0x2000FA5C, 0x4903BD00, 0xF79C2001, 0x2000FA56, 0xBD00
    .word 0x8089924, 0x200AAB8, 0x200AABC, 0x2101B500, 0x420088A8
    .word 0x2100D100, 0x20007229, 0xBD00, 0x40068000, 0x802E0F8
    .word 0x80CFF24, 0xF2114707, 0xE5470809, 0x5008089A
    .byte 0
    .byte 0x98
    .byte 0x9A
    .byte 8
    .byte 8
    .byte 2
    .byte 0xFF
    .byte 0x14
    .byte 0x24 
    .byte 0xFF
    .byte 8
    .byte 8
    .byte 7
    .byte 2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x32 
    .byte 8
    .byte 1
    .byte 0x3A 
    .byte 0x1C
    .byte 0xB2
    .byte 0x7A 
    .byte 8
    .byte 0x36 
    .byte 0xFF
    .byte 0
    .byte 4
    .byte 0x80
    .byte 0x32 
    .byte 8
    .byte 2
    .byte 2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x36 
    .byte 0xFF
    .byte 1
    .byte 4
    .byte 0x80
    .byte 0x26 
    .byte 0xFF
    .byte 0x4E 
    .byte 4
    .byte 0x27 
    .byte 0xFF
    .byte 0x3D 
    .byte 1
    .byte 0x51 
    .byte 0x3C 
    .byte 1
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 4
    .byte 0x48 
    .byte 0x29 
    .byte 0x79 
    .byte 0x89
    .byte 0
    .byte 0x40 
    .byte 0x58 
    .byte 0x9C
    .byte 0xF7
    .byte 0xD5
    .byte 0xFD
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xBD
    .balign 4, 0x00
    .word off_8089AFC
off_8089AFC:    .word dword_806C038+0x18
    .word 0x616440, 0xE0000802, 0x560F9, 0x800, 0x80CFF24, 0xF2114707
    .word 0x71470809, 0x5008089B, 0x89B0000, 0x14FF0208, 0x808FF24, 0xF04907
    .word 0x2010809, 0x643A1EFF, 0x47087AB2, 0x8089B8D, 0x80040736, 0x323CFF02
    .word 0xFF02010A, 0x9B99473C, 0x7360808, 0xFF268004, 0xFF26044D, 0xFF27014E
    .word 0xFF26013D, 0x50013E, 0x8089B06, 0x0
// end of function sub_8089910

.thumb
sub_8089B70:
    push {lr}
    ldr r0, [pc, #0x8089b84-0x8089b72-2] // off_8089B88
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_802669C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8089B84:    .word off_8089B88
off_8089B88:    .word dword_806C038+0x30
// end of function sub_8089B70

.thumb
sub_8089B8C:
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    strb r1, [r5,#7]
    mov r0, #0
    mov pc, lr
    .balign 4, 0x00
// end of function sub_8089B8C

.thumb
sub_8089B98:
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    add r1, #1
    strb r1, [r5,#7]
    mov r0, #0
    mov pc, lr
    .word 0x616440, 0x802, 0x80CFF24, 0xF2114707, 0x2460809
    .word 0x806BB7C, 0x9BA40050, 0xFF020808, 0x8FF2414, 0xFF020708
    .word 0x108093C, 0x3A1EFF02, 0x87AB2CC, 0x400FF36, 0x3CFF0280
    .word 0x2010932, 0xFF3678FF, 0x24800401, 0x7080CFF, 0x43BFF26
    .word 0x151FF26, 0x13EFF26, 0x0
// end of function sub_8089B98

.thumb
sub_8089C00:
    push {lr}
    ldr r1, [pc, #0x8089c10-0x8089c02-2] // dword_200AA90
    mov r0, #1
    bl sub_8025F1E
    mov r0, #0
    pop {pc}
    .byte 0, 0
off_8089C10:    .word dword_200AA90
    .word 0x7AB3603A, 0x14FF0208, 0x89C8947, 0x4073608, 0x1EFF0280
    .word 0x89C5D47, 0x41FF1608, 0x89C5801, 0x41FF2708, 0xCFF2401
    .word 0xFF260708, 0xFF020140, 0xF4E5471E, 0xBD470809, 0x500809F1
    .word 0x8FF2401, 0x43B0708, 0x0
// end of function sub_8089C00

.thumb
dead_8089C5C:
    push {r4,lr}
    ldr r4, [pc, #0x8089c80-0x8089c5e-2] // word_8089C84
    ldrh r0, [r4]
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#5]
    add r0, r0, r2
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldr r4, [pc, #0x8089c80-0x8089c70-4] // word_8089C84
    ldrh r0, [r4,#0x2] // (word_8089C86 - 0x8089c84)
    add r0, r0, r2
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    mov r0, #0
    pop {r4,pc}
off_8089C80:    .word word_8089C84
word_8089C84:    .hword 0x174
word_8089C86:    .hword 0x43C
// end of function dead_8089C5C

.thumb
sub_8089C88:
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    strb r1, [r5,#7]
    mov r0, #0
    mov pc, lr
    .word 0x3A06003B  // weird code with invalid insts here
    .word 0x87AB468
    .word 0x89CF147
    .word 0x4073608
    .word 0x9D4D4780
    .word 0x81B0808
    .word 0x89CE701
    .word 0x9D114708
    .word 0x81B0808
    .word 0x89CDA01
    .word 0x3FFF2608
    .word 0x78FF0201
    .word 0x7AC5CC3A
    .word 0x9D294708
    .word 0x7360808
    .word 0x89D7547
    .word 0x9CE51408
    .word 0xFF020808
    .byte 0x3C 
    .byte 0x3A 
    .word 0x87AC65C
    .word 0x400FF36
    .byte 0x80
    .byte 0x47 
    .byte 0xBD
    .byte 0xF1
    .byte 9
    .byte 8
    .byte 0x3B 
    .byte 4
    .byte 0
    .byte 0
    .byte 0x51 
    .byte 0x46 
    .byte 9
    .byte 0x6C 
    .byte 0x49 
    .byte 0x79 
    .byte 4
    .byte 0x48 
    .byte 0x40 
    .byte 0x5C 
    .byte 0x29 
    .byte 0x79 
    .byte 0x49 
    .byte 0
    .byte 0x40 
    .byte 0x18
    .byte 0xE8
    .byte 0x71 
    .byte 0
    .byte 0x20
    .byte 0xF7
    .byte 0x46 
    .byte 0
    .byte 0
    .word unk_8089D0C
unk_8089D0C:    .byte 1
    .word 0x4130D07
    .word 0x416D0348
    .word 0x8B22016D
    .word 0xD10042
    .word 0x722A22
    .word 0x46F720
    .word 0x40200A5
    .word 0x9465122
    .word 0x979496C
    .word 0x28D10442
    .word 0x1280379
    .word 0xA4902DA
    .word 0x71EA5C
    .word 0x4846F720
    .word 0x8089D
    .word 0xFF0302
    .word 0x15B4B0B5
    .word 0x64FA96F0
    .word 0x522011A
    .word 0xB0190048
    .word 0x9B1C00BC
    .word 0xF948F7
    .word 0x2A2200D0
    .word 0x200072
    .word 0x400000BD
    .word 0xC0000004
    .word 0x15B430B5
    .word 0x8FA82F0
    .word 0xBF00A74E
    .word 0x38BC3019
    .word 0x16787A78
    .word 0x13A011C
    .word 0x80B40721
    .word 0x21F7A318
    .word 0x1BC07FB
    .word 0xDAF83A
    .word 0xA4BDC020
    .word 0x2608089D
    .word 0x28013102
    .word 0x2A013302
    .word 0x2D013503
    .word 0x30013103
    .word 0x33013403
    .word 0x37013704
    .word 0x3B013104
    .word 0x3F013504
    .word 0x43013904
    .word 0x47013104
    .word 0x48013504
    .byte 3
    .byte 0x36 
    .byte 1
    .byte 0x4B 
    .byte 4
    .byte 0x39 
    .byte 1
    .byte 0x47 
    .byte 0x81
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 2
    .byte 0xFF
    .byte 0x14
    .byte 0x1B
    .byte 9
    .byte 1
    .byte 0x11
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x47 
    .byte 1
    .byte 0x9F
    .byte 8
    .byte 8
    .byte 0x1B
    .byte 8
    .byte 1
    .byte 0
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x3A 
    .byte 0xC0
    .byte 0xC6
    .byte 0x7A 
    .byte 8
    .byte 0x36 
    .byte 0xFF
    .byte 0
    .byte 0x14
    .byte 0x1D
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x3A 
    .byte 0xDC
    .byte 0xC8
    .byte 0x7A 
    .byte 8
    .byte 0x47 
    .byte 0x25 
    .byte 0x9F
    .byte 8
    .byte 8
    .byte 0x36 
    .byte 7
    .byte 0x14
    .byte 0x1D
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x3A 
    .byte 0xF0
    .byte 0xD6
    .byte 0x7A 
    .byte 8
    .byte 0x47 
    .byte 0x39 
    .byte 0x9F
    .byte 8
    .byte 8
    .byte 0x36 
    .byte 7
    .byte 4
    .byte 0x80
    .byte 2
    .byte 0xFF
    .byte 0x1E
    .byte 0x47 
    .byte 0x59 
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x16
    .byte 0xFF
    .byte 0x41 
    .byte 1
    .byte 0x51 
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 0x24 
    .byte 0xFF
    .byte 0xC
    .byte 8
    .byte 7
    .byte 0x26 
    .byte 0xFF
    .byte 0x40 
    .byte 1
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x47 
    .byte 0xE5
    .byte 0xF4
    .byte 9
    .byte 8
    .byte 0x47 
    .byte 0xBD
    .byte 0xF1
    .byte 9
    .byte 8
    .byte 0x50 
    .byte 1
    .byte 2
    .byte 0xFF
    .byte 0x1E
    .byte 0x24 
    .byte 0xFF
    .byte 8
    .byte 8
    .byte 7
    .byte 0x3B 
    .byte 4
    .byte 0x27 
    .byte 0xFF
    .byte 0x41 
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF3
    .byte 0xB5
    .byte 0x15
    .byte 0xF0
    .byte 0x2B 
    .byte 0xFA
    .byte 0x66 
    .byte 0x1A
    .byte 6
    .byte 0x48 
    .byte 0xBF
    .byte 0
    .byte 0xC0
    .byte 0x59 
    .byte 0x86
    .byte 0x5D 
    .byte 3
    .byte 0x48 
    .byte 0x80
    .byte 0x19
    .byte 1
    .byte 0x38 
    .byte 0
    .byte 0x1C
    .byte 0x9B
    .byte 0xF7
    .byte 0x96
    .byte 0xF8
    .byte 0
    .byte 0x20
    .byte 0xF3
    .byte 0xBD
    .byte 0x78 
    .byte 1
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0x9E
    .byte 8
    .byte 8
    .byte 3
    .byte 0xB5
    .byte 0xF0
    .byte 0xB4
    .byte 0x40 
    .byte 0x46 
    .byte 1
    .byte 0xB4
    .byte 0x15
    .byte 0xF0
    .byte 0x14
    .byte 0xFA
    .byte 0x19
    .byte 0x48 
    .byte 0x7F 
    .byte 0
    .byte 0xC0
    .byte 0x5B 
    .byte 1
    .byte 0x22 
    .byte 0x88
    .byte 0x46 
    .byte 0
    .byte 0x1C
    .byte 0x9B
    .byte 0xF7
    .byte 0xAC
    .byte 0xF8
    .byte 0xC
    .byte 0xD1
    .byte 0x41 
    .byte 0x46 
    .byte 0x66 
    .byte 0x1A
    .byte 8
    .byte 0x48 
    .byte 0x7F 
    .byte 0
    .byte 0xC0
    .byte 0x59 
    .byte 0x86
    .byte 0x5D 
    .byte 0x15
    .byte 0xF0
    .byte 0xE9
    .byte 0xF9
    .byte 0x67 
    .byte 0x1A
    .byte 1
    .byte 0x22 
    .byte 0xB7
    .byte 0x42 
    .byte 0
    .byte 0xDA
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0xBC
    .byte 0x88
    .byte 0x46 
    .byte 0xF0
    .byte 0xBC
    .byte 0x6A 
    .byte 0x72 
    .byte 0
    .byte 0x20
    .byte 3
    .byte 0xBD
    .byte 0xC8
    .byte 0x9E
    .byte 8
    .byte 8
off_8089EC8:    .word dword_8089ED8
    .word dword_8089EDC
    .word off_8089EE0
    .word off_8089EE8
dword_8089ED8:    .word 0x3020100
dword_8089EDC:    .word 0x3020100
off_8089EE0:    .word unk_201FF00
    .word 0x3FF
off_8089EE8:    .word unk_201FF00
    .word 0xFFFFFF03, 0xFF04FFFF, 0x8089EF8, 0x4120411, 0x4170413
    .word 0x4807B506, 0x46512201, 0x79496C09, 0xD1034209, 0x42097901
    .word 0x2200D100, 0x20007202, 0xBD06, 0x200AA20, 0xB4B0B500
    .word 0xF9AAF015, 0xBCB01C21, 0x71E93901, 0xBD002000, 0x4651B500
    .word 0x79496C09, 0x5C404802, 0x200071E8, 0xBD00, 0x8089F50
    .word 0x5040300, 0x1175FF26, 0x206003B, 0xFF2414FF, 0x4607080C
    .word 0x75FF2705, 0x40FF2611, 0xA0554701, 0xFF020808, 0xF3394701
    .word 0xFF020809, 0x9FDD4701, 0xFF020808, 0x8FF241E, 0xFF260708
    .word 0xFF02013E, 0xA10D4701, 0x19470808, 0x470808A1, 0x8089FF9
    .word 0x8A14147, 0x13E0E08, 0x8A0BD47, 0x1081B08, 0x8089FD8
    .word 0x80CFF24, 0x1EFF0207, 0x140FF26, 0x9F4E547, 0xF1BD4708
    .word 0x1500809, 0xFF24043B, 0x14070808, 0x8089FD8, 0x0
// end of function sub_8089C88

.thumb
sub_8089FDC:
    push {lr}
    ldr r2, [pc, #0x8089ff0-0x8089fde-2] // dword_200AAB8
    ldr r2, [r2]
    ldr r1, [pc, #0x8089ff4-0x8089fe2-2] // dword_200AA90
    mov r0, #1
    bl sub_8025F1E
    mov r0, #0
    pop {pc}
    .byte 0, 0
off_8089FF0:    .word dword_200AAB8
off_8089FF4:    .word dword_200AA90
// end of function sub_8089FDC

.thumb
sub_8089FF8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x808a048-0x8089ffa-2] // dword_808A04C
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#5]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    ldrb r1, [r5,#4]
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    bl sub_809F2B4
    sub r2, r4, r1
    cmp r7, #3
    bne loc_808A042
    mov r0, #0x11
    mov r1, #0
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #1
    bl sub_8024FB8
    cmp r2, #3
    bne loc_808A036
    mov r0, #0x11
    mov r1, #0
    bl sub_8024F9C
loc_808A036:
    cmp r2, #4
    bne loc_808A042
    mov r0, #0x11
    mov r1, #1
    bl sub_8024F9C
loc_808A042:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_808A048:    .word dword_808A04C
dword_808A04C:    .word 0x15D0159
    .word 0x1680162
// end of function sub_8089FF8

.thumb
sub_808A054:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#5]
    ldr r0, [pc, #0x808a0b0-0x808a05c-4] // byte_808A0B4
    lsl r2, r2, #1
    ldrh r0, [r0,r2]
    add r0, r0, r2
    lsl r2, r2, #1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_808A07A
    ldr r0, [pc, #0x808a09c-0x808a06e-2] // off_808A0A0
    ldr r0, [r0,r2]
    bl sub_802669C
    mov r0, #0
    pop {pc}
loc_808A07A:
    ldr r0, [pc, #0x808a088-0x808a07a-2] // off_808A08C
    ldr r0, [r0,r2]
    bl sub_802669C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_808A088:    .word off_808A08C
off_808A08C:    .word dword_806B7C0+0x24
    .word dword_806BB20+0x24
    .word dword_806BFB0+0x4C
    .word dword_806C888+0xD4
off_808A09C:    .word off_808A0A0
off_808A0A0:    .word off_806B77C
    .word off_806BAD0
    .word off_806BFAC
    .word dword_806C888+8
off_808A0B0:    .word byte_808A0B4
byte_808A0B4:    .byte 0x11
    .word 0x13041204
    .hword 0x1704
    .byte 0x4
// end of function sub_808A054

.thumb
dead_808A0BC:
    push {r0-r2,r4,r6,r7,lr}
    push {r5}
    bl sub_809F2B4
    sub r5, r4, r1
    mov r4, #1
    ldr r1, [pc, #0x808a108-0x808a0c8-4] // off_8089EC8
    lsl r2, r7, #2
    ldr r6, [r1,r2]
    cmp r7, #3
    bne loc_808A0E2
    cmp r5, #5
    bne loc_808A0E2
    mov r0, #4
    mov r1, #0x58 
    bl sub_8024FF0
    beq loc_808A0E2
    mov r5, #9
loc_808A0E2:
    ldrb r5, [r6,r5]
    cmp r5, #0
    beq loc_808A0FC
    cmp r5, #0xff
    beq loc_808A0FC
    ldr r0, [pc, #0x808a104-0x808a0ec-4] // =0x178
    add r0, r0, r5
    sub r0, #1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_808A0FC
    mov r4, #0
loc_808A0FC:
    pop {r5}
    str r4, [r5,#8]
    mov r0, #0
    pop {r0-r2,r4,r6,r7,pc}
off_808A104:    .word 0x178
off_808A108:    .word off_8089EC8
// end of function dead_808A0BC

.thumb
sub_808A10C:
    push {lr}
    ldrh r0, [r5,#6]
    strh r0, [r5,#0xc]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_808A10C

.thumb
sub_808A118:
    push {lr}
    mov r0, #1
    mov r1, #0x3d 
    bl sub_8024FF0
    beq loc_808A136
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    tst r0, r0
    bne loc_808A13A
    mov r0, #1
    mov r1, #0x3e 
    bl sub_8024FB8
loc_808A136:
    mov r0, #0
    pop {pc}
loc_808A13A:
    mov r0, #1
    pop {pc}
    .byte 0, 0
// end of function sub_808A118

.thumb
sub_808A140:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#5]
    ldrb r2, [r5,#4]
    cmp r7, #0
    bne loc_808A152
    mov r0, #0
    pop {r7,pc}
loc_808A152:
    cmp r7, #1
    bne sub_808A170
    cmp r2, #3
    bne loc_808A16C
    mov r0, #4
    mov r1, #0x3b 
    bl sub_8024FF0
    beq loc_808A16C
    mov r0, #1
    mov r1, #0x61 
    bl sub_8024F9C
loc_808A16C:
    mov r0, #0
    pop {r7,pc}
// end of function sub_808A140

.thumb
sub_808A170:
    cmp r7, #2
    bne sub_808A1A4
    cmp r2, #0
    bne loc_808A18A
    mov r0, #4
    mov r1, #0x4d 
    bl sub_8024FF0
    beq loc_808A1A0
    mov r0, #1
    mov r1, #0x63 
    bl sub_8024F9C
loc_808A18A:
    cmp r2, #3
    bne loc_808A1A0
    mov r0, #4
    mov r1, #0x4f 
    bl sub_8024FF0
    beq loc_808A1A0
    mov r0, #1
    mov r1, #0x66 
    bl sub_8024F9C
loc_808A1A0:
    mov r0, #0
    pop {r7,pc}
// end of function sub_808A170

.thumb
sub_808A1A4:
    cmp r2, #0
    bne loc_808A1BA
    mov r0, #4
    mov r1, #0x50 
    bl sub_8024FF0
    beq loc_808A1EA
    mov r0, #1
    mov r1, #0x69 
    bl sub_8024F9C
loc_808A1BA:
    cmp r2, #4
    bne loc_808A1D4
    mov r0, #4
    mov r1, #0x58 
    bl sub_8024FF0
    beq loc_808A1EA
    ldr r0, [pc, #0x808a1f0-0x808a1c8-4] // =0x16C
    mov r1, #6
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    add r2, r1, #0
    bl loc_802500E
loc_808A1D4:
    cmp r2, #0xa
    bne loc_808A1EA
    mov r0, #4
    mov r1, #0x56 
    bl sub_8024FF0
    beq loc_808A1EA
    mov r0, #1
    mov r1, #0x73 
    bl sub_8024F9C
loc_808A1EA:
    mov r0, #0
    pop {r7,pc}
    .byte 0, 0
off_808A1F0:    .word 0x16C  // <endpool>
// end of function sub_808A1A4

/*For debugging purposes, connect comment at any range!*/
