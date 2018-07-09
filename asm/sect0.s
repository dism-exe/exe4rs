// forward references
.equ start_, 0x08000000
.equ dword_8000004, 0x08000004
.equ start_init, 0x080000C0
.equ start_static_80001B0, 0x080001B0
.equ loc_80001B4, 0x080001B4
.equ start_static80001C4, 0x080001C4
.equ dword_80001D8, 0x080001D8
.equ off_80001DC, 0x080001DC
.equ dword_80001E0, 0x080001E0
.equ dword_80001E4, 0x080001E4
.equ off_80001E8, 0x080001E8
.equ dword_80001EC, 0x080001EC
.equ off_80001F0, 0x080001F0
.equ dword_80001F4, 0x080001F4
.equ off_80001F8, 0x080001F8
.equ off_80001FC, 0x080001FC
.equ dword_8000200, 0x08000200
.equ off_8000204, 0x08000204
.equ off_8000208, 0x08000208
.equ off_800020C, 0x0800020C
.equ off_8000210, 0x08000210
.equ off_8000214, 0x08000214
.equ off_8000218, 0x08000218
.equ dword_800021C, 0x0800021C
.equ off_8000220, 0x08000220
.equ off_8000224, 0x08000224
.equ start_800025C, 0x0800025C
.equ loc_800026A, 0x0800026A
.equ off_8000280, 0x08000280
.equ start_8000284, 0x08000284
.equ off_8000294, 0x08000294
.equ off_8000298, 0x08000298
.equ main_, 0x0800029C
.equ game_routine, 0x080002B0
.equ loc_800030C, 0x0800030C
.equ off_8000324, 0x08000324
.equ off_8000328, 0x08000328
.equ off_800032C, 0x0800032C
.equ main_static_800036C, 0x0800036C
.equ loc_800036E, 0x0800036E
.equ loc_8000372, 0x08000372
.equ off_8000390, 0x08000390
.equ off_8000394, 0x08000394
.equ off_8000398, 0x08000398
.equ main_static_800039C, 0x0800039C
.equ loc_80003A2, 0x080003A2
.equ off_80003AC, 0x080003AC
.equ main_static_80003B0, 0x080003B0
.equ loc_80003BE, 0x080003BE
.equ loc_80003D4, 0x080003D4
.equ loc_80003EA, 0x080003EA
.equ loc_80003F4, 0x080003F4
.equ loc_80003FA, 0x080003FA
.equ loc_8000402, 0x08000402
.equ off_8000414, 0x08000414
.equ main_static_8000418, 0x08000418
.equ loc_8000452, 0x08000452
.equ locret_8000454, 0x08000454
.equ main_static_8000456, 0x08000456
.equ loc_800045C, 0x0800045C
.equ loc_8000472, 0x08000472
.equ off_80004F0, 0x080004F0
.equ off_80004F4, 0x080004F4
.equ off_80004F8, 0x080004F8
.equ main_static_80004FC, 0x080004FC
.equ dword_8000528, 0x08000528
.equ off_800052C, 0x0800052C
.equ dword_8000534, 0x08000534
.equ dword_8000548, 0x08000548
.equ f500_8000550, 0x08000550
.equ f500_8000558, 0x08000558
.equ f500_8000560, 0x08000560
.equ loc_8000578, 0x08000578
.equ locret_800057C, 0x0800057C
.equ f500_800057E, 0x0800057E
.equ loc_8000590, 0x08000590
.equ locret_8000594, 0x08000594
.equ f500_static_8000596, 0x08000596
.equ f500_static_80005A8, 0x080005A8
.equ f500_80005BA, 0x080005BA
.equ f500_80005D2, 0x080005D2
.equ f500_80005EA, 0x080005EA
.equ loc_80005F8, 0x080005F8
.equ off_8000648, 0x08000648
.equ off_800064C, 0x0800064C
.equ f500_80006CC, 0x080006CC
.equ f500_80006E8, 0x080006E8
.equ f500_80006FA, 0x080006FA
.equ f500_8000706, 0x08000706
.equ loc_8000714, 0x08000714
.equ loc_8000720, 0x08000720
.equ loc_8000728, 0x08000728
.equ off_8000730, 0x08000730
.equ f500_static_8000734, 0x08000734
.equ loc_8000740, 0x08000740
.equ locret_800074C, 0x0800074C
.equ off_8000750, 0x08000750
.equ off_8000758, 0x08000758
.equ off_800075C, 0x0800075C
.equ off_8000760, 0x08000760
.equ off_8000764, 0x08000764
.equ off_8000768, 0x08000768
.equ off_800076C, 0x0800076C
.equ off_8000770, 0x08000770
.equ off_8000774, 0x08000774
.equ off_8000778, 0x08000778
.equ off_800077C, 0x0800077C
.equ off_8000780, 0x08000780
.equ off_8000784, 0x08000784
.equ f800_static_8000788, 0x08000788
.equ loc_8000794, 0x08000794
.equ off_80007A4, 0x080007A4
.equ off_80007A8, 0x080007A8
.equ file800_static_80007B8, 0x080007B8
.equ loc_80007BC, 0x080007BC
.equ loc_80007C8, 0x080007C8
.equ loc_80007D2, 0x080007D2
.equ loc_80007DC, 0x080007DC
.equ loc_80007E6, 0x080007E6
.equ off_80007F0, 0x080007F0
.equ dword_80007F4, 0x080007F4
.equ f800_80007F8, 0x080007F8
.equ f800_8000800, 0x08000800
.equ loc_800080E, 0x0800080E
.equ loc_800083C, 0x0800083C
.equ loc_800084C, 0x0800084C
.equ loc_800085A, 0x0800085A
.equ loc_800085E, 0x0800085E
.equ f800_static_800086C, 0x0800086C
.equ loc_8000870, 0x08000870
.equ loc_8000874, 0x08000874
.equ loc_8000876, 0x08000876
.equ loc_80008A0, 0x080008A0
.equ off_80008A4, 0x080008A4
.equ dword_80008A8, 0x080008A8
.equ off_80008B4, 0x080008B4
.equ off_80008B8, 0x080008B8
.equ f800_dead_80008BC, 0x080008BC
.equ loc_80008C0, 0x080008C0
.equ locret_80008D2, 0x080008D2
.equ f800_dead_80008D4, 0x080008D4
.equ loc_80008D8, 0x080008D8
.equ locret_80008EA, 0x080008EA
.equ f800_80008EC, 0x080008EC
.equ loc_80008F0, 0x080008F0
.equ locret_8000902, 0x08000902
.equ f900_8000904, 0x08000904
.equ loc_8000908, 0x08000908
.equ f900_8000910, 0x08000910
.equ dword_800092C, 0x0800092C
.equ f900_8000930, 0x08000930
.equ dword_800094C, 0x0800094C
.equ f900_8000950, 0x08000950
.equ dword_800096C, 0x0800096C
.equ f900_8000970, 0x08000970
.equ f900_800097A, 0x0800097A
.equ dword_8000988, 0x08000988
.equ f900_800098C, 0x0800098C
.equ off_800099C, 0x0800099C
.equ f900_80009A0, 0x080009A0
.equ dword_80009B0, 0x080009B0
.equ f900_80009B4, 0x080009B4
.equ f900_80009BC, 0x080009BC
.equ dword_80009D8, 0x080009D8
.equ f900_80009DC, 0x080009DC
.equ dword_80009F8, 0x080009F8
.equ f900_80009FC, 0x080009FC
.equ dword_8000A18, 0x08000A18
.equ fA00_dead_8000A1C, 0x08000A1C
.equ off_8000A28, 0x08000A28
.equ off_8000A2C, 0x08000A2C
.equ fA00_8000A30, 0x08000A30
.equ loc_8000A3C, 0x08000A3C
.equ loc_8000A42, 0x08000A42
.equ loc_8000A48, 0x08000A48
.equ loc_8000A52, 0x08000A52
.equ locret_8000A5C, 0x08000A5C
.equ off_8000A60, 0x08000A60
.equ dword_8000A64, 0x08000A64
.equ dword_8000A84, 0x08000A84
.equ dword_8000A88, 0x08000A88
.equ fA00_8000A8C, 0x08000A8C
.equ loc_8000A94, 0x08000A94
.equ loc_8000A9E, 0x08000A9E
.equ fA00_8000AA2, 0x08000AA2
.equ loc_8000AA4, 0x08000AA4
.equ fA00_dead_8000AD6, 0x08000AD6
.equ loc_8000AD8, 0x08000AD8
.equ fA00_8000B0A, 0x08000B0A
.equ loc_8000B0C, 0x08000B0C
.equ fA00_8000B42, 0x08000B42
.equ loc_8000B44, 0x08000B44
.equ fA00_dead_8000B7A, 0x08000B7A
.equ fA00_dead_8000B8E, 0x08000B8E
.equ loc_8000B96, 0x08000B96
.equ loc_8000B9A, 0x08000B9A
.equ loc_8000BA4, 0x08000BA4
.equ locret_8000BB2, 0x08000BB2
.equ fA00_8000BB4, 0x08000BB4
.equ loc_8000BC0, 0x08000BC0
.equ loc_8000BC6, 0x08000BC6
.equ loc_8000BCC, 0x08000BCC
.equ loc_8000BD6, 0x08000BD6
.equ off_8000BF4, 0x08000BF4
.equ dword_8000BF8, 0x08000BF8
.equ dword_8000C18, 0x08000C18
.equ dword_8000C1C, 0x08000C1C
.equ dword_8000C20, 0x08000C20
.equ fA00_8000C24, 0x08000C24
.equ loc_8000C34, 0x08000C34
.equ dword_8000C38, 0x08000C38
.equ fA00_8000C3C, 0x08000C3C
.equ fA00_8000C44, 0x08000C44
.equ locret_8000C50, 0x08000C50
.equ fA00_8000C52, 0x08000C52
.equ locret_8000C60, 0x08000C60
.equ fA00_8000C62, 0x08000C62
.equ dword_8000C8C, 0x08000C8C
.equ off_8000C90, 0x08000C90
.equ off_8000C94, 0x08000C94
.equ sub_8000C98, 0x08000C98
.equ loc_8000CAC, 0x08000CAC
.equ loc_8000CBE, 0x08000CBE
.equ loc_8000CCA, 0x08000CCA
.equ dead_8000CCE, 0x08000CCE
.equ loc_8000CD6, 0x08000CD6
.equ loc_8000CE0, 0x08000CE0
.equ loc_8000CE8, 0x08000CE8
.equ locret_8000CF2, 0x08000CF2
.equ sub_8000CF4, 0x08000CF4
.equ loc_8000D00, 0x08000D00
.equ loc_8000D0A, 0x08000D0A
.equ loc_8000D10, 0x08000D10
.equ locret_8000D1A, 0x08000D1A
.equ dword_8000D1C, 0x08000D1C
.equ sub_8000D20, 0x08000D20
.equ loc_8000D36, 0x08000D36
.equ loc_8000D3A, 0x08000D3A
.equ loc_8000D4A, 0x08000D4A
.equ loc_8000D4E, 0x08000D4E
.equ loc_8000D58, 0x08000D58
.equ loc_8000D66, 0x08000D66
.equ loc_8000D74, 0x08000D74
.equ loc_8000D82, 0x08000D82
.equ loc_8000D90, 0x08000D90
.equ loc_8000DA0, 0x08000DA0
.equ off_8000DA8, 0x08000DA8
.equ word_8000DAC, 0x08000DAC
.equ sub_8000DBA, 0x08000DBA
.equ sub_8000DE0, 0x08000DE0
.equ off_8000EAC, 0x08000EAC
.equ dword_8000EB0, 0x08000EB0
.equ sub_8000EB4, 0x08000EB4
.equ dword_8000F00, 0x08000F00
.equ off_8000F4C, 0x08000F4C
.equ off_8000F50, 0x08000F50
.equ off_8000F54, 0x08000F54
.equ off_8000F58, 0x08000F58
.equ sub_8000F5C, 0x08000F5C
.equ loc_8000F62, 0x08000F62
.equ loc_8000F6E, 0x08000F6E
.equ loc_8000F88, 0x08000F88
.equ loc_8000F9A, 0x08000F9A
.equ off_8000FA0, 0x08000FA0
.equ sub_8000FA4, 0x08000FA4
.equ loc_8000FAA, 0x08000FAA
.equ loc_8000FB6, 0x08000FB6
.equ loc_8000FD0, 0x08000FD0
.equ locret_8000FE0, 0x08000FE0
.equ sub_8000FE2, 0x08000FE2
.equ sub_800101C, 0x0800101C
.equ off_8001058, 0x08001058
.equ off_800105C, 0x0800105C
.equ off_8001060, 0x08001060
.equ off_8001064, 0x08001064
.equ off_8001068, 0x08001068
.equ off_800106C, 0x0800106C
.equ sub_8001070, 0x08001070
.equ sub_8001086, 0x08001086
.equ off_800109C, 0x0800109C
.equ dword_80010A0, 0x080010A0
.equ sub_80010A4, 0x080010A4
.equ sub_800110E, 0x0800110E
.equ off_8001178, 0x08001178
.equ off_800117C, 0x0800117C
.equ off_8001180, 0x08001180
.equ off_8001184, 0x08001184
.equ off_8001188, 0x08001188
.equ off_800118C, 0x0800118C
.equ off_8001190, 0x08001190
.equ off_8001194, 0x08001194
.equ off_8001198, 0x08001198
.equ off_800119C, 0x0800119C
.equ off_80011A0, 0x080011A0
.equ off_80011A4, 0x080011A4
.equ off_80011A8, 0x080011A8
.equ off_80011AC, 0x080011AC
.equ sub_80011B0, 0x080011B0
.equ sub_80011D8, 0x080011D8
.equ off_8001200, 0x08001200
.equ off_8001204, 0x08001204
.equ off_8001208, 0x08001208
.equ off_800120C, 0x0800120C
.equ off_8001210, 0x08001210
.equ dword_8001214, 0x08001214
.equ sub_8001218, 0x08001218
.equ sub_800127C, 0x0800127C
.equ dword_80012E0, 0x080012E0
.equ off_80012E4, 0x080012E4
.equ dword_80012E8, 0x080012E8
.equ dword_80012EC, 0x080012EC
.equ dword_80012F0, 0x080012F0
.equ dword_80012F4, 0x080012F4
.equ off_80012F8, 0x080012F8
.equ sub_80012FC, 0x080012FC
.equ sub_8001318, 0x08001318
.equ off_8001334, 0x08001334
.equ off_8001338, 0x08001338
.equ dword_800133C, 0x0800133C
.equ dword_8001340, 0x08001340
.equ sub_8001344, 0x08001344
.equ sub_8001354, 0x08001354
.equ off_8001364, 0x08001364
.equ off_8001368, 0x08001368
.equ sub_800136C, 0x0800136C
.equ sub_800137E, 0x0800137E
.equ off_8001390, 0x08001390
.equ sub_8001394, 0x08001394
.equ sub_80013CC, 0x080013CC
.equ off_8001404, 0x08001404
.equ off_8001408, 0x08001408
.equ off_800140C, 0x0800140C
.equ off_8001410, 0x08001410
.equ dword_8001414, 0x08001414
.equ dword_8001418, 0x08001418
.equ sub_800141C, 0x0800141C
.equ sub_8001440, 0x08001440
.equ off_8001464, 0x08001464
.equ off_8001468, 0x08001468
.equ off_800146C, 0x0800146C
.equ sub_8001470, 0x08001470
.equ sub_8001486, 0x08001486
.equ dword_800149C, 0x0800149C
.equ dword_80014A0, 0x080014A0
.equ sub_80014A4, 0x080014A4
.equ sub_800156C, 0x0800156C
.equ off_8001634, 0x08001634
.equ off_8001638, 0x08001638
.equ off_800163C, 0x0800163C
.equ off_8001640, 0x08001640
.equ off_8001644, 0x08001644
.equ off_8001648, 0x08001648
.equ off_800164C, 0x0800164C
.equ off_8001650, 0x08001650
.equ off_8001654, 0x08001654
.equ off_8001658, 0x08001658
.equ off_800165C, 0x0800165C
.equ sub_8001660, 0x08001660
.equ sub_80016D0, 0x080016D0
.equ sub_8001740, 0x08001740
.equ locret_8001762, 0x08001762
.equ sub_8001788, 0x08001788
.equ off_80017A0, 0x080017A0
.equ off_80017A4, 0x080017A4
.equ loc_80017B8, 0x080017B8
.equ loc_80017D4, 0x080017D4
.equ sub_80017D8, 0x080017D8
.equ loc_80017F2, 0x080017F2
.equ sub_8001814, 0x08001814
.equ loc_800181A, 0x0800181A
.equ loc_8001826, 0x08001826
.equ loc_800183A, 0x0800183A
.equ loc_8001842, 0x08001842
.equ loc_8001870, 0x08001870
.equ sub_800188E, 0x0800188E
.equ loc_80018AA, 0x080018AA
.equ sub_80018CC, 0x080018CC
.equ sub_8001936, 0x08001936
.equ sub_8001988, 0x08001988
.equ sub_8001994, 0x08001994
.equ sub_80019A0, 0x080019A0
.equ sub_80019A8, 0x080019A8
.equ sub_80019B0, 0x080019B0
.equ loc_8001A1E, 0x08001A1E
.equ loc_8001AAE, 0x08001AAE
.equ off_8001AB8, 0x08001AB8
.equ off_8001ABC, 0x08001ABC
.equ loc_8001AC0, 0x08001AC0
.equ sub_8001AD8, 0x08001AD8
.equ sub_8001AE0, 0x08001AE0
.equ sub_8001AF6, 0x08001AF6
.equ sub_8001B10, 0x08001B10
.equ sub_8001B26, 0x08001B26
.equ sub_8001B40, 0x08001B40
.equ dword_8001B58, 0x08001B58
.equ off_8001B5C, 0x08001B5C
.equ off_8001B60, 0x08001B60
.equ dword_8001B64, 0x08001B64
.equ off_8001B68, 0x08001B68
.equ off_8001B6C, 0x08001B6C
.equ off_8001B70, 0x08001B70
.equ off_8001B74, 0x08001B74
.equ sub_8001B78, 0x08001B78
.equ dword_8001B8C, 0x08001B8C
.equ off_8001B90, 0x08001B90
.equ sub_8001B94, 0x08001B94
.equ dword_8001BB8, 0x08001BB8
.equ off_8001BBC, 0x08001BBC
.equ off_8001BC0, 0x08001BC0
.equ dword_8001BC4, 0x08001BC4
.equ sub_8001BC8, 0x08001BC8
.equ off_8001BE0, 0x08001BE0
.equ dword_8001BE4, 0x08001BE4
.equ sub_8001C94, 0x08001C94
.equ loc_8001C9E, 0x08001C9E
.equ loc_8001CA2, 0x08001CA2
.equ off_8001CB0, 0x08001CB0
.equ off_8001CB4, 0x08001CB4
.equ sub_8001CB8, 0x08001CB8
.equ off_8001CF0, 0x08001CF0
.equ off_8001CF4, 0x08001CF4
.equ off_8001CF8, 0x08001CF8
.equ off_8001CFC, 0x08001CFC
.equ off_8001D00, 0x08001D00
.equ sub_8001D04, 0x08001D04
.equ dword_8001D28, 0x08001D28
.equ dword_8001D2C, 0x08001D2C
.equ dword_8001D30, 0x08001D30
.equ dword_8001D34, 0x08001D34
.equ sub_8001D38, 0x08001D38
.equ sub_8001D44, 0x08001D44
.equ off_8001D58, 0x08001D58
.equ dword_8001D5C, 0x08001D5C
.equ sub_8001D60, 0x08001D60
.equ sub_8001D6E, 0x08001D6E
.equ off_8001D80, 0x08001D80
.equ dword_8001D84, 0x08001D84
.equ sub_8001D88, 0x08001D88
.equ off_8001D98, 0x08001D98
.equ sub_8001D9C, 0x08001D9C
.equ off_8001DB4, 0x08001DB4
.equ dword_8001DB8, 0x08001DB8
.equ off_8001DBC, 0x08001DBC
.equ off_8001DC0, 0x08001DC0
.equ off_8001DC4, 0x08001DC4
.equ sub_8001DC8, 0x08001DC8
.equ sub_8001DDC, 0x08001DDC
.equ sub_8001DE6, 0x08001DE6
.equ off_8001DF0, 0x08001DF0
.equ off_8001DF4, 0x08001DF4
.equ sub_8001DF8, 0x08001DF8
.equ off_8001E0C, 0x08001E0C
.equ sub_8001E14, 0x08001E14
.equ loc_8001E22, 0x08001E22
.equ loc_8001E46, 0x08001E46
.equ sub_8001E5C, 0x08001E5C
.equ locret_8001E72, 0x08001E72
.equ sub_8001E74, 0x08001E74
.equ off_8001E8C, 0x08001E8C
.equ dword_8001E90, 0x08001E90
.equ loc_8001E94, 0x08001E94
.equ loc_8001EA0, 0x08001EA0
.equ off_8001EAC, 0x08001EAC
.equ locret_8001EB0, 0x08001EB0
.equ loc_8001EB2, 0x08001EB2
.equ loc_8001ECE, 0x08001ECE
.equ loc_8001EFC, 0x08001EFC
.equ loc_8001F0E, 0x08001F0E
.equ loc_8001F44, 0x08001F44
.equ loc_8001F68, 0x08001F68
.equ loc_8001F7E, 0x08001F7E
.equ off_8001F90, 0x08001F90
.equ locret_8001F94, 0x08001F94
.equ off_8001F98, 0x08001F98
.equ sub_8002008, 0x08002008
.equ off_8002014, 0x08002014
.equ sub_8002018, 0x08002018
.equ off_8002024, 0x08002024
.equ loc_8002028, 0x08002028
.equ loc_8002054, 0x08002054
.equ off_8002074, 0x08002074
.equ sub_8002078, 0x08002078
.equ sub_8002090, 0x08002090
.equ loc_80020A0, 0x080020A0
.equ loc_80020AE, 0x080020AE
.equ loc_80020B4, 0x080020B4
.equ loc_80020BE, 0x080020BE
.equ loc_80020E4, 0x080020E4
.equ loc_80020E8, 0x080020E8
.equ loc_80020FA, 0x080020FA
.equ loc_8002100, 0x08002100
.equ off_800210C, 0x0800210C
.equ off_8002110, 0x08002110
.equ dword_8002114, 0x08002114
.equ off_800212C, 0x0800212C
.equ off_8002144, 0x08002144
.equ sub_8002148, 0x08002148
.equ sub_8002156, 0x08002156
.equ loc_800216E, 0x0800216E
.equ off_8002194, 0x08002194
.equ loc_8002198, 0x08002198
.equ off_80021E8, 0x080021E8
.equ off_80021EC, 0x080021EC
.equ dword_80021F0, 0x080021F0
.equ sub_800249C, 0x0800249C
.equ sub_80024B6, 0x080024B6
.equ locret_80024C2, 0x080024C2
.equ sub_80024C4, 0x080024C4
.equ loc_80024D4, 0x080024D4
.equ locret_80024DE, 0x080024DE
.equ sub_80024E0, 0x080024E0
.equ loc_80024E4, 0x080024E4
.equ locret_80024F2, 0x080024F2
.equ sub_80024F4, 0x080024F4

.arm
start_:
    b start_init
dword_8000004:    .word 0x51AEFF24, 0x21A29A69, 0xA82843D, 0xAD09E484, 0x988B2411
    .word 0x217F81C0, 0x19BE52A3, 0x20CE0993, 0x4A4A4610, 0xEC3127F8
    .word 0x33E8C758, 0xBFCEE382, 0x94DFF485, 0xC1094BCE, 0xC08A5694
    .word 0xFCA77213, 0x734D849F, 0x619ACAA3, 0x27A39758, 0x769803FC
    .word 0x61C71D23, 0x56AE0403, 0x8438BF, 0xFD0EA740, 0x3FE52FF
    .word 0xF130956F, 0x85C0FB97, 0x2580D660, 0x3BE63A9, 0xE2384E01
    .word 0xFF34A2F9, 0x44033EBB, 0xCB900078, 0x943A1188, 0x637CC065
    .word 0xAF3CF087, 0x8BE425D6, 0x72AC0A38, 0x7F8D421, 0x4B434F52
    .word 0x4558455F, 0x53525F34, 0x4A573442, 0x963830, 0x0
    .word 0x0
    .word 0x2901
start_init:
    mov r0, #0x12
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001d8-0x80000c8-8] // =0x3007BA0
    mov r0, #0x11
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000d4-8] // loc_3007FFC
    mov r0, #0x1b
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000e0-8] // loc_3007FFC
    mov r0, #0x17
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001dc-0x80000ec-8] // loc_3007FFC
    mov r0, #0x13
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001e0-0x80000f8-8] // =0x3007FE0
    mov r0, #0x1f
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001e4-0x8000104-8] // =0x3007700
    ldr r0, [pc, #0x80001e8-0x8000108-8] // GamePakWaitstateControl
    ldr r1, [pc, #0x80001ec-0x800010c-8] // =0x45B4
    str r1, [r0]
    mov r0, #0x3000000
    mov r1, #0x7e00
    bl start_static_80001B0
    mov r0, #0x2000000
    mov r1, #0x40000
    bl start_static_80001B0
    ldr r0, [pc, #0x80001f0-0x800012c-8] // sub_8212700
    ldr r1, [pc, #0x80001f4-0x8000130-8] // =0x3005800
    ldr r2, [pc, #0x80001f8-0x8000134-8] // =0x17C8
    bl start_static80001C4
    ldr r0, [pc, #0x80001fc-0x800013c-8] // start_800025c+1
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x80001dc-0x8000148-8] // loc_3007FFC
    ldr r1, [pc, #0x8000200-0x800014c-8] // =0x3005800
    str r1, [r0]
    ldr r0, [pc, #0x8000204-0x8000154-8] // InterruptEnableRegister
    mov r1, #1
    orr r1, r1, #4
    orr r1, r1, #0x2000
    strh r1, [r0]
    ldr r0, [pc, #0x8000208-0x8000168-8] // dword_2008920
    mov r1, #0
    strb r1, [r0]
    ldr r0, [pc, #0x800020c-0x8000174-8] // dword_200A338
    mov r1, #1
    str r1, [r0]
    ldr r0, [pc, #0x8000210-0x8000180-8] // dword_200ACB0
    mov r1, #0
    str r1, [r0]
    ldr r0, [pc, #0x8000214-0x800018c-8] // GeneralLCDStatus_STAT_LYC_
    mov r1, #8
    strh r1, [r0]
    ldr r0, [pc, #0x8000218-0x8000198-8] // KeyInterruptControl
    ldr r1, [pc, #0x800021c-0x800019c-8] // =0x83FF
    strh r1, [r0]
    ldr r0, [pc, #0x8000220-0x80001a4-8] // main_+1
    bx r0
    b start_
// end of function start_

.arm
start_static_80001B0:
    mov r2, #0
loc_80001B4:
    subs r1, r1, #4
    str r2, [r0,r1]
    bne loc_80001B4
    bx lr
// end of function start_static_80001B0

.arm
start_static80001C4:
    subs r2, r2, #4
    ldr r3, [r0,r2]
    str r3, [r1,r2]
    bne start_static80001C4
    bx lr
dword_80001D8:    .word 0x3007BA0
off_80001DC:    .word loc_3007FFC
dword_80001E0:    .word 0x3007FE0
dword_80001E4:    .word 0x3007700
off_80001E8:    .word GamePakWaitstateControl
dword_80001EC:    .word 0x45B4
off_80001F0:    .word sub_8212700
dword_80001F4:    .word 0x3005800
off_80001F8:    .word 0x17CC
off_80001FC:    .word start_800025C+1
dword_8000200:    .word 0x3005800
off_8000204:    .word InterruptEnableRegister
off_8000208:    .word dword_2008920
off_800020C:    .word dword_200A338
off_8000210:    .word dword_200ACB0
off_8000214:    .word GeneralLCDStatus_STAT_LYC_
off_8000218:    .word KeyInterruptControl
dword_800021C:    .word 0x83FF
off_8000220:    .word main_+1
off_8000224:    .word sub_811104C+1
    .word sub_811103C+1
    .word 0x300593F, 0x300593D, 0x300593D, 0x300593D, 0x300593D
    .word 0x300593D, 0x300593D, 0x300593D, 0x300593D, 0x300593D
    .word 0x300593D, 0x300593D
// end of function start_static80001C4

.thumb
start_800025C:
    push {r4}
    ldr r4, [pc, #0x8000298-0x800025e-2] // InterruptMasterEnableRegister
    mov r0, #0
    strh r0, [r4]
    mov r0, #0
    ldr r1, [pc, #0x8000280-0x8000266-2] // off_8000224
    ldr r2, [pc, #0x8000294-0x8000268-4] // dword_3002000
loc_800026A:
    ldr r3, [r1]
    str r3, [r2]
    add r0, #1
    add r1, #4
    add r2, #4
    cmp r0, #0xe
    blt loc_800026A
    mov r0, #1
    strh r0, [r4]
    pop {r4}
    bx lr
off_8000280:    .word off_8000224
// end of function start_800025C

.thumb
start_8000284:
    ldr r3, [pc, #0x8000298-0x8000284-4] // InterruptMasterEnableRegister
    mov r2, #0
    strh r2, [r3]
    ldr r2, [pc, #0x8000294-0x800028a-2] // dword_3002000
    str r1, [r2,r0]
    mov r2, #1
    strh r2, [r3]
    bx lr
off_8000294:    .word dword_3002000
off_8000298:    .word InterruptMasterEnableRegister
// end of function start_8000284

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
    bl fA00_8000C24
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
    ldr r0, [pc, #0x8000398-0x800036e-2] // GeneralLCDStatus_STAT_LYC_
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
    ldr r0, [pc, #0x80003ac-0x800039e-2] // GeneralLCDStatus_STAT_LYC_
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
    ldr r1, [pc, #0x80004f0-0x800046a-2] // =0x40
    tst r0, r0
    beq loc_8000472
    ldr r1, [pc, #0x80004f4-0x8000470-4] // =0xC0
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
off_80004F0:    .word 0x40
off_80004F4:    .word 0xC0
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
    ldr r0, [pc, #0x800052c-0x8000510-4] // GeneralLCDStatus_STAT_LYC_
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
    ldr r3, [pc, #0x8000758-0x800059c-4] // sub_81126B4+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_8000596

.thumb
f500_static_80005A8:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800075c-0x80005ae-2] // sub_81127E8+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function f500_static_80005A8

.thumb
f500_80005BA:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000648-0x80005be-2] // off_800064C
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x8000760-0x80005c6-2] // sub_811365C+1
    bl f500_static_8000734
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function f500_80005BA

.thumb
f500_80005D2:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000648-0x80005d4-4] // off_800064C
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r2, r10
    push {r2}
    ldr r3, [pc, #0x8000764-0x80005de-2] // sub_8112610+1
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
    ldr r7, [pc, #0x8000648-0x8000602-2] // off_800064C
    lsl r2, r2, #2
    ldr r7, [r7,r2]
    add r4, r0, #0
    add r5, r1, #0
    ldr r3, [pc, #0x8000768-0x800060c-4] // sub_81126B4+1
    bl f500_static_8000734
    add r0, r7, #0
    ldr r3, [pc, #0x800076c-0x8000614-4] // sub_81128A4+1
    bl f500_static_8000734
    add r0, r7, #0
    mov r1, #0xff
    mov r2, #0
    ldr r3, [pc, #0x8000770-0x8000620-4] // sub_811365C+1
    bl f500_static_8000734
    add r0, r4, #0
    ldr r3, [pc, #0x8000774-0x8000628-4] // sub_8112780+1
    bl f500_static_8000734
    add r0, r7, #0
    add r1, r5, #0
    ldr r3, [pc, #0x8000778-0x8000632-2] // loc_811287C+1
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
    ldr r3, [pc, #0x800077c-0x80006d2-2] // sub_81127E8+1
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
    ldr r3, [pc, #0x8000780-0x80006ee-2] // sub_8112780+1
    bl f500_static_8000734
    pop {r1}
    mov r10, r1
    pop {r1-r7,pc}
// end of function f500_80006E8

.thumb
f500_80006FA:
    push {lr}
    ldr r0, [pc, #0x8000750-0x80006fc-4] // dword_200A800
    ldr r1, [pc, #0x8000784-0x80006fe-2] // =0x204
    bl f900_8000930
    pop {pc}
// end of function f500_80006FA

.thumb
f500_8000706:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8000750-0x8000708-4] // dword_200A800
    ldr r7, [r5]
    cmp r7, #0
    beq loc_8000728
    mov r6, #4
    add r6, r6, r5
loc_8000714:
    ldmia r6!, {r0-r3}
    mov r4, r10
    push {r4}
    ldr r4, [pc, #0x8000730-0x800071a-2] // loc_8000720+1
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
    ldr r5, [pc, #0x8000750-0x8000736-2] // dword_200A800
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
off_8000784:    .word 0x204
// end of function f500_static_8000734

.thumb
f800_static_8000788:
    push {r4-r7,lr}
    lsl r3, r3, #2
    ldr r5, [pc, #0x80007a4-0x800078c-4] // off_80007A8
    ldr r5, [r5,r3]
    mov r3, #8
    ldr r7, [pc, #0x80007f4-0x8000792-2] // =0x80000000
loc_8000794:
    ldr r6, [r5,r3]
    and r6, r7
    bne loc_8000794
    str r0, [r5]
    str r1, [r5,#4]
    orr r4, r2
    str r4, [r5,#8]
    pop {r4-r7,pc}
off_80007A4:    .word off_80007A8
off_80007A8:    .word DMA0SourceAddress
    .word DMA1SourceAddress
    .word DMA2SourceAddress
    .word DMA3SourceAddress
// end of function f800_static_8000788

.thumb
file800_static_80007B8:
    push {r4,lr}
    ldr r3, [pc, #0x80007f0-0x80007ba-2] // DMA0SourceAddress
loc_80007BC:
    mov r1, #0
    mov r4, #1
    tst r0, r4
    beq loc_80007C8
    ldr r2, [r3,#(DMA0WordCount - 0x40000b0)]
    orr r1, r2
loc_80007C8:
    mov r4, #2
    tst r0, r4
    beq loc_80007D2
    ldr r2, [r3,#(DMA1WordCount - 0x40000b0)]
    orr r1, r2
loc_80007D2:
    mov r4, #4
    tst r0, r4
    beq loc_80007DC
    ldr r2, [r3,#(DMA2WordCount - 0x40000b0)]
    orr r1, r2
loc_80007DC:
    mov r4, #8
    tst r0, r4
    beq loc_80007E6
    ldr r2, [r3,#(DMA3WordCount - 0x40000b0)]
    orr r1, r2
loc_80007E6:
    ldr r2, [pc, #0x80007f4-0x80007e6-2] // =0x80000000
    and r1, r2
    bne loc_80007BC
    pop {r4,pc}
    .byte 0, 0
off_80007F0:    .word DMA0SourceAddress
dword_80007F4:    .word 0x80000000
// end of function file800_static_80007B8

.thumb
f800_80007F8:
    ldr r0, [pc, #0x80008b4-0x80007f8-4] // dword_200B134
    mov r1, #0
    str r1, [r0]
    mov pc, lr
// end of function f800_80007F8

.thumb
f800_8000800:
    push {lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1,r4-r7}
    ldr r0, [pc, #0x80008b4-0x8000808-4] // dword_200B134
    ldr r1, [r0]
    ldr r2, [pc, #0x80008b8-0x800080c-4] // dword_200D120
loc_800080E:
    sub r1, #1
    blt loc_800085E
    mov r8, r1
    mov r9, r2
    ldr r4, [r2,#0x10]
    cmp r4, #1
    beq loc_800083C
    cmp r4, #2
    beq loc_800084C
    ldr r4, [r2,#0xc]
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    lsr r2, r2, #2
    mov r3, #3
    bl f800_static_8000788
    mov r0, #8
    bl file800_static_80007B8
    mov r1, r8
    mov r2, r9
    b loc_800085A
loc_800083C:
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    bl f900_800098C
    mov r1, r8
    mov r2, r9
    b loc_800085A
loc_800084C:
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    bl f900_80009A0
    mov r1, r8
    mov r2, r9
loc_800085A:
    add r2, #0x14
    b loc_800080E
loc_800085E:
    bl f800_80007F8
    pop {r0,r1,r4-r7}
    mov r8, r0
    mov r9, r1
    pop {pc}
    .balign 4, 0x00
// end of function f800_8000800

.thumb
f800_static_800086C:
    mov r3, #0
    b loc_8000876
loc_8000870:
    mov r3, #1
    b loc_8000876
loc_8000874:
    mov r3, #2
loc_8000876:
    push {r4-r7}
    add r7, r3, #0
    ldr r3, [pc, #0x80008b4-0x800087a-2] // dword_200B134
    ldr r4, [r3]
    cmp r4, #0x60 
    bge loc_80008A0
    add r5, r4, #0
    add r4, #1
    str r4, [r3]
    ldr r4, [pc, #0x80008b8-0x8000888-4] // dword_200D120
    mov r6, #0x14
    mul r5, r6
    add r4, r4, r5
    str r0, [r4]
    str r1, [r4,#4]
    str r2, [r4,#8]
    str r7, [r4,#0x10]
    ldr r3, [pc, #0x80008a4-0x8000898-4] // dword_80008A8
    lsl r7, r7, #2
    ldr r3, [r3,r7]
    str r3, [r4,#0xc]
loc_80008A0:
    pop {r4-r7}
    mov pc, lr
off_80008A4:    .word dword_80008A8
dword_80008A8:    .word 0x84000000, 0xFFFFFFFF, 0xFFFFFFFF
off_80008B4:    .word dword_200B134
off_80008B8:    .word dword_200D120
// end of function f800_static_800086C

.thumb
f800_dead_80008BC:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008C0:
    ldr r0, [r7]
    tst r0, r0
    beq locret_80008D2
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl f800_static_800086C
    add r7, #0xc
    b loc_80008C0
locret_80008D2:
    pop {r4-r7,pc}
// end of function f800_dead_80008BC

.thumb
f800_dead_80008D4:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008D8:
    ldr r0, [r7]
    tst r0, r0
    beq locret_80008EA
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000870
    add r7, #0xc
    b loc_80008D8
locret_80008EA:
    pop {r4-r7,pc}
// end of function f800_dead_80008D4

.thumb
f800_80008EC:
    push {r4-r7,lr}
    add r7, r0, #0
loc_80008F0:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8000902
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000874
    add r7, #0xc
    b loc_80008F0
locret_8000902:
    pop {r4-r7,pc}
// end of function f800_80008EC

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

.thumb
fA00_dead_8000A1C:
    ldr r0, [pc, #0x8000a28-0x8000a1c-4] // VerticalCounter_LY_
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

.thumb
sub_8000C98:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_8001AE0
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    pop {r6,r7}
    sub r7, #1
    push {r6,r7}
    mov r1, #0
loc_8000CAC:
    ldrb r3, [r6,r7]
    add r1, r1, r3
    sub r7, #1
    bge loc_8000CAC
    svc 6
    add r1, #1
    mov r2, #0
    pop {r6,r7}
    mov r0, #0
loc_8000CBE:
    ldrb r3, [r6,r2]
    add r0, r0, r3
    cmp r0, r1
    bge loc_8000CCA
    add r2, #1
    b loc_8000CBE
loc_8000CCA:
    add r0, r2, #0
    pop {r4-r7,pc}
// end of function sub_8000C98

.thumb
dead_8000CCE:
    push {r5,r6,lr}
    add r5, r0, r1
    add r6, r0, #0
    add r7, r0, #0
loc_8000CD6:
    ldrb r2, [r6]
    cmp r2, #0xff
    beq loc_8000CE0
    strb r2, [r7]
    add r7, #1
loc_8000CE0:
    add r6, #1
    sub r1, #1
    bne loc_8000CD6
    mov r1, #0xff
loc_8000CE8:
    cmp r7, r5
    beq locret_8000CF2
    strb r1, [r7]
    add r7, #1
    b loc_8000CE8
locret_8000CF2:
    pop {r5,r6,pc}
// end of function dead_8000CCE

.thumb
sub_8000CF4:
    push {r5-r7,lr}
    add r2, r1, r1
    add r5, r0, r2
    add r6, r0, #0
    add r7, r0, #0
    ldr r3, [pc, #0x8000d1c-0x8000cfe-2] // =0xFFFF
loc_8000D00:
    ldrh r2, [r6]
    cmp r2, r3
    beq loc_8000D0A
    strh r2, [r7]
    add r7, #2
loc_8000D0A:
    add r6, #2
    sub r1, #1
    bne loc_8000D00
loc_8000D10:
    cmp r7, r5
    beq locret_8000D1A
    strh r3, [r7]
    add r7, #2
    b loc_8000D10
locret_8000D1A:
    pop {r5-r7,pc}
dword_8000D1C:    .word 0xFFFF
// end of function sub_8000CF4

.thumb
sub_8000D20:
    push {r4-r7,lr}
    mov r4, #0
    mov r7, #0
    mov r0, #5
    mov r1, #0
    bl sub_8024FF0
    beq loc_8000D36
    add r4, #1
    mov r0, #0x80
    orr r7, r0
loc_8000D36:
    ldr r6, [pc, #0x8000da8-0x8000d36-2] // word_8000DAC
    mov r5, #0
loc_8000D3A:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_8000D4E
    add r0, r0, #0
    bl sub_8024FF4
    beq loc_8000D4A
    add r5, #1
loc_8000D4A:
    add r6, #2
    b loc_8000D3A
loc_8000D4E:
    cmp r5, #6
    bne loc_8000D58
    add r4, #1
    mov r0, #0x40 
    orr r7, r0
loc_8000D58:
    bl sub_80372BC
    cmp r0, #0x96
    bne loc_8000D66
    add r4, #1
    mov r0, #0x20 
    orr r7, r0
loc_8000D66:
    bl sub_8037304
    cmp r0, #0x3c 
    bne loc_8000D74
    add r4, #1
    mov r0, #0x10
    orr r7, r0
loc_8000D74:
    bl sub_8037364
    cmp r0, #5
    bne loc_8000D82
    add r4, #1
    mov r0, #8
    orr r7, r0
loc_8000D82:
    bl sub_8037404
    cmp r0, #0x1e
    bne loc_8000D90
    add r4, #1
    mov r0, #4
    orr r7, r0
loc_8000D90:
    mov r0, #0
    mov r1, #0x6f 
    bl sub_8024FF0
    beq loc_8000DA0
    add r4, #1
    mov r0, #2
    orr r7, r0
loc_8000DA0:
    add r0, r4, #0
    add r1, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8000DA8:    .word word_8000DAC
word_8000DAC:    .hword 0x17
    .hword 0x18
    .byte 0x19
    .byte 0
    .byte 0x1A
    .byte 0
    .byte 0x1B
    .byte 0
    .byte 0x1C
    .byte 0
    .byte 0
    .byte 0
// end of function sub_8000D20

.thumb
sub_8000DBA:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_80487E8
    .byte 0xC
    .byte 0xD1
    .byte 5
    .byte 0x20
    .byte 0
    .byte 0x21 
    .byte 0x24 
    .byte 0xF0
    .byte 0xE8
    .byte 0xF8
    .byte 0
    .byte 0x20
    .byte 0x6E 
    .byte 0x21 
    .byte 0x24 
    .byte 0xF0
    .byte 0xE4
    .byte 0xF8
    .byte 0x50 
    .byte 0x46 
    .byte 0x40 
    .byte 0x6C 
    .byte 0xC4
    .byte 0x62 
    .byte 0x47 
    .byte 0xF0
    .byte 0xBD
    .byte 0xFC
    .byte 0xF0
    .byte 0xBD
// end of function sub_8000DBA

.thumb
sub_8000DE0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000eac-0x8000de2-2] // word_202A000
    add r0, r7, #0
    ldr r1, [pc, #0x8000eb0-0x8000de6-2] // =0x16000
    bl f900_8000950
    bl sub_8000EB4
    bl sub_8000FE2
    bl sub_8001070
    bl sub_80010A4
    bl sub_80011B0
    bl sub_8001218
    bl sub_80012FC
    bl sub_8001344
    bl sub_800136C
    bl sub_8001394
    bl sub_800141C
    bl sub_8001470
    bl sub_8000F5C
    bl sub_80014A4
    mov r0, #3
    mvn r0, r0
    add r7, #3
    and r7, r0
    bl sub_8001660
    bl sub_8004988
    bl sub_8004908
    ldr r7, [pc, #0x8000eac-0x8000e38-4] // word_202A000
    bl dword_8000F00
    bl sub_800101C
    bl sub_8001086
    bl sub_800110E
    bl sub_80011D8
    bl sub_800127C
    bl sub_8001318
    bl sub_8001354
    bl sub_800137E
    bl sub_80013CC
    bl sub_8001440
    bl sub_8001486
    bl sub_8000FA4
    bl sub_800156C
    mov r0, #3
    mvn r0, r0
    add r7, #3
    and r7, r0
    bl sub_80016D0
    bl fA00_8000C52
    bl sub_802F604
    bl sub_8035044
    bl sub_802D414
    bl sub_80ADE98
    mov r0, #5
    mov r1, #0
    bl sub_8024F9C
    mov r0, #0
    mov r1, #0x6e 
    bl sub_8024FB8
    mov r0, #0
    pop {r4-r7,pc}
    .byte 1
    .byte 0x20
    .byte 0x70 
    .byte 0xBD
    .byte 0
    .byte 0
off_8000EAC:    .word word_202A000
dword_8000EB0:    .word 0x16000
// end of function sub_8000DE0

.thumb
sub_8000EB4:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8000f4c-0x8000eb6-2] // =0xA0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f50-0x8000ec8-4] // =0xB0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f54-0x8000eda-2] // =0x80
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #6
    bl f900_8000970
    add r7, #6
    ldr r0, [pc, #0x8000f58-0x8000eec-4] // =0xC0
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    add r1, r7, #0
    mov r2, #0xbd
    bl f900_8000970
    add r7, #0xbd
    pop {r4-r6,pc}
dword_8000F00:    .word 0x1C38B570
// end of function sub_8000EB4

    ldr r1, [pc, #0x8000f4c-0x8000f04-4] // =0xA0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f50-0x8000f16-2] // =0xB0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f54-0x8000f28-4] // =0x80
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #6
    bl f900_8000970
    add r7, #6
    add r0, r7, #0
    ldr r1, [pc, #0x8000f58-0x8000f3a-2] // =0xC0
    mov r2, r10
    ldr r2, [r2,#0x54]
    add r1, r1, r2
    mov r2, #0xbd
    bl f900_8000970
    add r7, #0xbd
    pop {r4-r6,pc}
off_8000F4C:    .word 0xA0
off_8000F50:    .word 0xB0
off_8000F54:    .word 0x80
off_8000F58:    .word 0xC0
.thumb
sub_8000F5C:
    push {r4-r6,lr}
    mov r4, #0
    ldr r5, [pc, #0x8000fa0-0x8000f60-4] // =0x15D0
loc_8000F62:
    mov r6, #0
    add r0, r5, #0
    bl sub_8024FF4
    beq loc_8000F6E
    mov r6, #1
loc_8000F6E:
    strb r6, [r7]
    add r4, #1
    add r5, #1
    add r7, #1
    cmp r4, #0xb
    ble loc_8000F62
    mov r6, #0
    mov r0, #0x15
    mov r1, #0xc0
    bl sub_8024FF0
    beq loc_8000F88
    mov r6, #1
loc_8000F88:
    strb r6, [r7]
    add r7, #1
    mov r6, #0
    mov r0, #0x15
    mov r1, #0xcc
    bl sub_8024FF0
    beq loc_8000F9A
    mov r6, #1
loc_8000F9A:
    strb r6, [r7]
    add r7, #1
    pop {r4-r6,pc}
off_8000FA0:    .word 0x15D0
// end of function sub_8000F5C

.thumb
sub_8000FA4:
    push {r4-r6,lr}
    mov r4, #0
    mov r6, #0x75 
loc_8000FAA:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8000FB6
    add r0, r6, #0
    bl sub_8024FA0
loc_8000FB6:
    add r4, #1
    add r6, #1
    add r7, #1
    cmp r4, #0xb
    ble loc_8000FAA
    ldrb r0, [r7]
    add r7, #1
    tst r0, r0
    beq loc_8000FD0
    mov r0, #0
    mov r1, #0x81
    bl sub_8024F9C
loc_8000FD0:
    ldrb r0, [r7]
    add r7, #1
    tst r0, r0
    beq locret_8000FE0
    mov r0, #0
    mov r1, #0x82
    bl sub_8024F9C
locret_8000FE0:
    pop {r4-r6,pc}
// end of function sub_8000FA4

.thumb
sub_8000FE2:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001058-0x8000fe4-4] // =0x2D8
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x800105c-0x8000fee-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001060-0x8000ff6-2] // =0x318
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x8001064-0x8001000-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001068-0x8001008-4] // =0x358
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x800106c-0x8001012-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8000FE2

.thumb
sub_800101C:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001058-0x8001020-4] // =0x2D8
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x800105c-0x8001028-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001060-0x8001032-2] // =0x318
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x8001064-0x800103a-2] // =0x40
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001068-0x8001044-4] // =0x358
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x800106c-0x800104c-4] // =0x40
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8001058:    .word 0x2D8
off_800105C:    .word 0x40
off_8001060:    .word 0x318
off_8001064:    .word 0x40
off_8001068:    .word 0x358
off_800106C:    .word 0x40
// end of function sub_800101C

.thumb
sub_8001070:
    push {r4-r6,lr}
    ldr r0, [pc, #0x800109c-0x8001072-2] // =0x3D8
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x80010a0-0x800107c-4] // =0x8
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001070

.thumb
sub_8001086:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x800109c-0x800108a-2] // =0x3D8
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x80010a0-0x8001092-2] // =0x8
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_800109C:    .word 0x3D8
dword_80010A0:    .word 0x8
// end of function sub_8001086

.thumb
sub_80010A4:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x78]
    add r1, r7, #0
    ldr r2, [pc, #0x8001190-0x80010ac-4] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x7c 
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001194-0x80010bc-4] // =0x700
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001178-0x80010c4-4] // unk_2001610
    add r1, r7, #0
    ldr r2, [pc, #0x8001198-0x80010c8-4] // =0x160
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800117c-0x80010d0-4] // unk_2007230
    add r1, r7, #0
    ldr r2, [pc, #0x800119c-0x80010d4-4] // =0x160
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001180-0x80010dc-4] // unk_20001E0
    add r1, r7, #0
    ldr r2, [pc, #0x80011a0-0x80010e0-4] // =0x58
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001184-0x80010e8-4] // word_2006F50
    add r1, r7, #0
    ldr r2, [pc, #0x80011a4-0x80010ec-4] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001188-0x80010f4-4] // word_2001BB0
    add r1, r7, #0
    ldr r2, [pc, #0x80011a8-0x80010f8-4] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800118c-0x8001100-4] // unk_2000000
    add r1, r7, #0
    ldr r2, [pc, #0x80011ac-0x8001104-4] // =0x180
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80010A4

.thumb
sub_800110E:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x78]
    ldr r2, [pc, #0x8001190-0x8001116-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x7c 
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001194-0x8001126-2] // =0x700
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001178-0x8001130-4] // unk_2001610
    ldr r2, [pc, #0x8001198-0x8001132-2] // =0x160
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800117c-0x800113c-4] // unk_2007230
    ldr r2, [pc, #0x800119c-0x800113e-2] // =0x160
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001180-0x8001148-4] // unk_20001E0
    ldr r2, [pc, #0x80011a0-0x800114a-2] // =0x58
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001184-0x8001154-4] // word_2006F50
    ldr r2, [pc, #0x80011a4-0x8001156-2] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001188-0x8001160-4] // word_2001BB0
    ldr r2, [pc, #0x80011a8-0x8001162-2] // =0x2E0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800118c-0x800116c-4] // unk_2000000
    ldr r2, [pc, #0x80011ac-0x800116e-2] // =0x180
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001178:    .word unk_2001610
off_800117C:    .word unk_2007230
off_8001180:    .word unk_20001E0
off_8001184:    .word word_2006F50
off_8001188:    .word word_2001BB0
off_800118C:    .word unk_2000000
off_8001190:    .word 0x200
off_8001194:    .word 0x700
off_8001198:    .word 0x160
off_800119C:    .word 0x160
off_80011A0:    .word 0x58
off_80011A4:    .word 0x2E0
off_80011A8:    .word 0x2E0
off_80011AC:    .word 0x180
// end of function sub_800110E

.thumb
sub_80011B0:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001200-0x80011b2-2] // unk_20008A0
    add r1, r7, #0
    ldr r2, [pc, #0x800120c-0x80011b6-2] // =0xBC0
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001204-0x80011be-2] // unk_2000520
    add r1, r7, #0
    ldr r2, [pc, #0x8001210-0x80011c2-2] // =0xB8
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001208-0x80011ca-2] // unk_2001770
    add r1, r7, #0
    ldr r2, [pc, #0x8001214-0x80011ce-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80011B0

.thumb
sub_80011D8:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001200-0x80011dc-4] // unk_20008A0
    ldr r2, [pc, #0x800120c-0x80011de-2] // =0xBC0
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001204-0x80011e8-4] // unk_2000520
    ldr r2, [pc, #0x8001210-0x80011ea-2] // =0xB8
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001208-0x80011f4-4] // unk_2001770
    ldr r2, [pc, #0x8001214-0x80011f6-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001200:    .word unk_20008A0
off_8001204:    .word unk_2000520
off_8001208:    .word unk_2001770
off_800120C:    .word 0xBC0
off_8001210:    .word 0xB8
dword_8001214:    .word 0x20
// end of function sub_80011D8

.thumb
sub_8001218:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x5c]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e0-0x8001220-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x60]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e4-0x800122e-2] // =0xC8
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x64]
    add r1, r7, #0
    ldr r2, [pc, #0x80012e8-0x800123c-4] // =0x10
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x68]
    add r1, r7, #0
    ldr r2, [pc, #0x80012ec-0x800124a-2] // =0x1
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x6c]
    add r1, r7, #0
    ldr r2, [pc, #0x80012f0-0x8001258-4] // =0x2
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x70]
    add r1, r7, #0
    ldr r2, [pc, #0x80012f4-0x8001266-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x80012f8-0x800126e-2] // unk_2000190
    add r1, r7, #0
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001218

.thumb
sub_800127C:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x5c]
    ldr r2, [pc, #0x80012e0-0x8001284-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x60]
    ldr r2, [pc, #0x80012e4-0x8001292-2] // =0xC8
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x64]
    ldr r2, [pc, #0x80012e8-0x80012a0-4] // =0x10
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x68]
    ldr r2, [pc, #0x80012ec-0x80012ae-2] // =0x1
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x6c]
    ldr r2, [pc, #0x80012f0-0x80012bc-4] // =0x2
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x70]
    ldr r2, [pc, #0x80012f4-0x80012ca-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x80012f8-0x80012d4-4] // unk_2000190
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
dword_80012E0:    .word 0x20
off_80012E4:    .word 0xC8
dword_80012E8:    .word 0x10
dword_80012EC:    .word 0x1
dword_80012F0:    .word 0x2
dword_80012F4:    .word 0xE
off_80012F8:    .word unk_2000190
// end of function sub_800127C

.thumb
sub_80012FC:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001334-0x80012fe-2] // unk_2006F40
    add r1, r7, #0
    ldr r2, [pc, #0x800133c-0x8001302-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001338-0x800130a-2] // unk_20014F0
    add r1, r7, #0
    ldr r2, [pc, #0x8001340-0x800130e-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80012FC

.thumb
sub_8001318:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001334-0x800131c-4] // unk_2006F40
    ldr r2, [pc, #0x800133c-0x800131e-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001338-0x8001328-4] // unk_20014F0
    ldr r2, [pc, #0x8001340-0x800132a-2] // =0xC
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001334:    .word unk_2006F40
off_8001338:    .word unk_20014F0
dword_800133C:    .word 0xE
dword_8001340:    .word 0xE
// end of function sub_8001318

.thumb
sub_8001344:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001364-0x8001346-2] // unk_20073A0
    add r1, r7, #0
    ldr r2, [pc, #0x8001368-0x800134a-2] // =0x30
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001344

.thumb
sub_8001354:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001364-0x8001358-4] // unk_20073A0
    ldr r2, [pc, #0x8001368-0x800135a-2] // =0x30
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001364:    .word unk_20073A0
off_8001368:    .word 0x30
// end of function sub_8001354

.thumb
sub_800136C:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x58]
    add r1, r7, #0
    ldr r2, [pc, #0x8001390-0x8001374-4] // =0xDC0
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_800136C

.thumb
sub_800137E:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x58]
    ldr r2, [pc, #0x8001390-0x8001386-2] // =0xDC0
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001390:    .word 0xDC0
// end of function sub_800137E

.thumb
sub_8001394:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x4c]
    add r1, r7, #0
    ldr r2, [pc, #0x800140c-0x800139c-4] // =0xB4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x50]
    add r1, r7, #0
    ldr r2, [pc, #0x8001410-0x80013aa-2] // =0xF00
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001404-0x80013b2-2] // word_20073D0
    add r1, r7, #0
    ldr r2, [pc, #0x8001414-0x80013b6-2] // =0x2
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001408-0x80013be-2] // unk_2001E9C
    add r1, r7, #0
    ldr r2, [pc, #0x8001418-0x80013c2-2] // =0x4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001394

.thumb
sub_80013CC:
    push {r4-r6,lr}
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x4c]
    ldr r2, [pc, #0x800140c-0x80013d4-4] // =0xB4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x50]
    ldr r2, [pc, #0x8001410-0x80013e2-2] // =0xF00
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001404-0x80013ec-4] // word_20073D0
    ldr r2, [pc, #0x8001414-0x80013ee-2] // =0x2
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001408-0x80013f8-4] // unk_2001E9C
    ldr r2, [pc, #0x8001418-0x80013fa-2] // =0x4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001404:    .word word_20073D0
off_8001408:    .word unk_2001E9C
off_800140C:    .word 0xB4
off_8001410:    .word 0xF00
dword_8001414:    .word 0x2
dword_8001418:    .word 0x4
// end of function sub_80013CC

.thumb
sub_800141C:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001464-0x800141e-2] // =0x1A0
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x8001468-0x8001428-4] // =0x80
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    ldr r0, [r0,#0x74]
    add r1, r7, #0
    ldr r2, [pc, #0x800146c-0x8001436-2] // =0x800
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_800141C

.thumb
sub_8001440:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001464-0x8001444-4] // =0x1A0
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x8001468-0x800144c-4] // =0x80
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    ldr r1, [r1,#0x74]
    ldr r2, [pc, #0x800146c-0x800145a-2] // =0x800
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001464:    .word 0x1A0
off_8001468:    .word 0x80
off_800146C:    .word 0x800
// end of function sub_8001440

.thumb
sub_8001470:
    push {r4-r6,lr}
    ldr r0, [pc, #0x800149c-0x8001472-2] // =0x0
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    add r1, r7, #0
    ldr r2, [pc, #0x80014a0-0x800147c-4] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001470

.thumb
sub_8001486:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x800149c-0x800148a-2] // =0x0
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    ldr r2, [pc, #0x80014a0-0x8001492-2] // =0x20
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
dword_800149C:    .word 0x0
dword_80014A0:    .word 0x20
// end of function sub_8001486

.thumb
sub_80014A4:
    push {r4-r6,lr}
    ldr r0, [pc, #0x8001634-0x80014a6-2] // unk_2000240
    add r1, r7, #0
    ldr r2, [pc, #0x8001638-0x80014aa-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x80
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001638-0x80014ba-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800163c-0x80014c2-2] // unk_2000670
    add r1, r7, #0
    ldr r2, [pc, #0x8001640-0x80014c6-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x84
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001640-0x80014d6-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001644-0x80014de-2] // dword_2000180
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x8c
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001648-0x80014fa-2] // dword_2001E94
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x90
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800164c-0x8001516-2] // unk_20019A0
    add r1, r7, #0
    ldr r2, [pc, #0x8001650-0x800151a-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x88
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001650-0x800152a-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x8001654-0x8001532-2] // unk_20003D0
    add r1, r7, #0
    ldr r2, [pc, #0x8001658-0x8001536-2] // =0x100
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x94
    ldr r0, [r0,r1]
    add r1, r7, #0
    ldr r2, [pc, #0x8001658-0x8001546-2] // =0x100
    add r7, r7, r2
    bl f900_8000970
    ldr r0, [pc, #0x800165c-0x800154e-2] // dword_2001BA0
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    mov r0, r10
    mov r1, #0x98
    ldr r0, [r0,r1]
    add r1, r7, #0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80014A4

.thumb
sub_800156C:
    push {r4-r6,lr}
    add r0, r7, #0
    ldr r1, [pc, #0x8001634-0x8001570-4] // unk_2000240
    ldr r2, [pc, #0x8001638-0x8001572-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x80
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001638-0x8001582-2] // =0x190
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800163c-0x800158c-4] // unk_2000670
    ldr r2, [pc, #0x8001640-0x800158e-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x84
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001640-0x800159e-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001644-0x80015a8-4] // dword_2000180
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x8c
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001648-0x80015c4-4] // dword_2001E94
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x90
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800164c-0x80015e0-4] // unk_20019A0
    ldr r2, [pc, #0x8001650-0x80015e2-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x88
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001650-0x80015f2-2] // =0x200
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x8001654-0x80015fc-4] // unk_20003D0
    ldr r2, [pc, #0x8001658-0x80015fe-2] // =0x100
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x94
    ldr r1, [r1,r2]
    ldr r2, [pc, #0x8001658-0x800160e-2] // =0x100
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    ldr r1, [pc, #0x800165c-0x8001618-4] // dword_2001BA0
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    add r0, r7, #0
    mov r1, r10
    mov r2, #0x98
    ldr r1, [r1,r2]
    mov r2, #4
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
off_8001634:    .word unk_2000240
off_8001638:    .word 0x190
off_800163C:    .word unk_2000670
off_8001640:    .word 0x200
off_8001644:    .word dword_2000180
off_8001648:    .word dword_2001E94
off_800164C:    .word unk_20019A0
off_8001650:    .word 0x200
off_8001654:    .word unk_20003D0
off_8001658:    .word 0x100
off_800165C:    .word dword_2001BA0
// end of function sub_800156C

.thumb
sub_8001660:
    push {r4-r6,lr}
    mov r4, r10
    ldr r3, [r4,#0x40]
    ldr r0, [r3,#0x74]
    str r0, [r7]
    ldr r0, [r3,#0x78]
    str r0, [r7,#4]
    ldrh r0, [r3,#0x22]
    str r0, [r7,#8]
    ldrh r0, [r3,#0x20]
    str r0, [r7,#0xc]
    ldrb r0, [r3,#2]
    str r0, [r7,#0x10]
    ldrb r0, [r3,#0x1c]
    strb r0, [r7,#0x14]
    ldrb r0, [r3,#0x1d]
    strb r0, [r7,#0x15]
    ldrb r0, [r3,#0x1e]
    strb r0, [r7,#0x16]
    ldrb r0, [r3,#0x1f]
    strb r0, [r7,#0x17]
    ldrb r0, [r3,#0x18]
    str r0, [r7,#0x18]
    ldrb r0, [r3,#0x14]
    str r0, [r7,#0x1c]
    add r7, #0x20 
    ldr r3, [r4,#0x44]
    ldr r0, [r3,#0x2c]
    str r0, [r7]
    ldrh r0, [r3,#0x1c]
    str r0, [r7,#4]
    ldrh r0, [r3,#0x1e]
    str r0, [r7,#8]
    ldrh r0, [r3,#0x20]
    str r0, [r7,#0xc]
    ldrh r0, [r3,#0x22]
    str r0, [r7,#0x10]
    ldrh r0, [r3,#0x24]
    str r0, [r7,#0x14]
    ldrb r0, [r3,#0xd]
    str r0, [r7,#0x18]
    ldrh r0, [r3,#0x16]
    str r0, [r7,#0x1c]
    ldrh r0, [r3,#0x14]
    str r0, [r7,#0x20]
    ldrb r0, [r3,#6]
    str r0, [r7,#0x24]
    add r7, #0x28 
    add r0, r3, #0
    add r0, #0x70 
    add r1, r7, #0
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_8001660

.thumb
sub_80016D0:
    push {r4-r6,lr}
    mov r4, r10
    ldr r3, [r4,#0x40]
    ldr r0, [r7]
    str r0, [r3,#0x74]
    ldr r0, [r7,#4]
    str r0, [r3,#0x78]
    ldr r0, [r7,#8]
    strh r0, [r3,#0x22]
    ldr r0, [r7,#0xc]
    strh r0, [r3,#0x20]
    ldr r0, [r7,#0x10]
    strb r0, [r3,#2]
    ldrb r0, [r7,#0x14]
    strb r0, [r3,#0x1c]
    ldrb r0, [r7,#0x15]
    strb r0, [r3,#0x1d]
    ldrb r0, [r7,#0x16]
    strb r0, [r3,#0x1e]
    ldrb r0, [r7,#0x17]
    strb r0, [r3,#0x1f]
    ldr r0, [r7,#0x18]
    strb r0, [r3,#0x18]
    ldr r0, [r7,#0x1c]
    strb r0, [r3,#0x14]
    add r7, #0x20 
    ldr r3, [r4,#0x44]
    ldr r0, [r7]
    str r0, [r3,#0x2c]
    ldr r0, [r7,#4]
    strh r0, [r3,#0x1c]
    ldr r0, [r7,#8]
    strh r0, [r3,#0x1e]
    ldr r0, [r7,#0xc]
    strh r0, [r3,#0x20]
    ldr r0, [r7,#0x10]
    strh r0, [r3,#0x22]
    ldr r0, [r7,#0x14]
    strh r0, [r3,#0x24]
    ldr r0, [r7,#0x18]
    strb r0, [r3,#0xd]
    ldr r0, [r7,#0x1c]
    strh r0, [r3,#0x16]
    ldr r0, [r7,#0x20]
    strh r0, [r3,#0x14]
    ldr r0, [r7,#0x24]
    strb r0, [r3,#6]
    add r7, #0x28 
    add r0, r7, #0
    add r1, r3, #0
    add r1, #0x70 
    mov r2, #0x20 
    add r7, r7, r2
    bl f900_8000970
    pop {r4-r6,pc}
// end of function sub_80016D0

.thumb
sub_8001740:
    push {lr}
    asr r2, r0, #0x10
    asr r0, r1, #0x10
    add r1, r2, #0
    svc 0xa
    lsr r0, r0, #8
    pop {pc}
// end of function sub_8001740

    push {lr}
    add r2, r0, #0
    orr r2, r1
    beq locret_8001762
    bl sub_8001740
    add r0, #0x20 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x1e
    add r0, #1
locret_8001762:
    pop {pc}
    push {r5,lr}
    push {r0}
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x34]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r2, [r7,#0x28]
    ldr r3, [r7,#0x24]
    sub r0, r2, r0
    sub r1, r3, r1
    bl sub_8001740
    pop {r1}
    sub r0, r0, r1
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    pop {r5,pc}
.thumb
sub_8001788:
    lsl r0, r0, #1
    ldr r2, [pc, #0x80017a0-0x800178a-2] // word_8005DF8
    ldrsh r3, [r2,r0]
    ldr r2, [pc, #0x80017a4-0x800178e-2] // unk_8005E78
    ldrsh r2, [r2,r0]
    neg r2, r2
    mul r3, r1
    asr r0, r3, #8
    mul r2, r1
    asr r1, r2, #8
    mov pc, lr
    .byte 0, 0
off_80017A0:    .word word_8005DF8
off_80017A4:    .word unk_8005E78
// end of function sub_8001788

    push {lr}
    tst r0, r0
    beq loc_80017B8
    sub r0, #1
    lsl r0, r0, #6
    bl sub_8001788
    pop {pc}
loc_80017B8:
    mov r0, #0
    mov r1, #0
    pop {pc}
    sub r0, r0, r2
    add r0, r0, r4
    lsl r2, r4, #1
    cmp r0, r2
    bcs loc_80017D4
    sub r1, r1, r3
    add r1, r1, r4
    cmp r1, r2
    bcs loc_80017D4
    mov r0, #1
    mov pc, lr
loc_80017D4:
    mov r0, #0
    mov pc, lr
.thumb
sub_80017D8:
    sub r0, r0, r2
    sub r1, r1, r3
    add r2, r4, #0
    mul r4, r2
    add r2, r0, #0
    mul r0, r2
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    cmp r4, r0
    bmi loc_80017F2
    mov r0, #1
    mov pc, lr
loc_80017F2:
    mov r0, #0
    mov pc, lr
// end of function sub_80017D8

    push {lr}
    ldr r0, [r5,#0x34]
    asr r0, r0, #0xc
    ldr r1, [r5,#0x38]
    asr r1, r1, #0xc
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r2, [r7,#0x24]
    asr r2, r2, #0xc
    ldr r3, [r7,#0x28]
    asr r3, r3, #0xc
    bl sub_80017D8
    pop {pc}
.thumb
sub_8001814:
    push {r5,lr}
    tst r4, r4
    bne loc_8001842
loc_800181A:
    ldr r0, [r0,#8]
    sub r0, r3, r0
    bmi loc_8001826
    add r0, r4, #0
    mov r1, #0
    pop {r5,pc}
loc_8001826:
    lsr r1, r6, #8
    bl sub_81116F0
    bl sub_8111704
    mov r2, #0
    mov r1, #0xff
    tst r0, r1
    beq loc_800183A
    mov r2, #1
loc_800183A:
    lsr r0, r0, #8
    add r1, r0, r2
    mov r0, #0
    pop {r5,pc}
loc_8001842:
    ldmia r0!, {r5,r7}
    push {r0,r3}
    sub r1, r1, r5
    asr r1, r1, #8
    add r5, r1, #0
    mul r1, r5
    sub r2, r2, r7
    asr r2, r2, #8
    add r5, r2, #0
    mul r2, r5
    add r0, r1, r2
    bl sub_8111704
    lsl r0, r0, #8
    push {r4}
    add r1, r4, #0
    bl sub_81116F0
    pop {r4}
    lsr r4, r4, #1
    cmp r1, r4
    bmi loc_8001870
    add r0, #1
loc_8001870:
    add r1, r0, #0
    pop {r0,r3}
    tst r1, r1
    beq loc_800181A
    ldr r0, [r0]
    sub r0, r3, r0
    push {r1}
    bl sub_81116F0
    pop {r1}
    neg r2, r6
    mul r2, r1
    lsr r2, r2, #1
    add r0, r0, r2
    pop {r5,pc}
// end of function sub_8001814

.thumb
sub_800188E:
    push {lr}
    ldr r7, [r0]
    sub r1, r1, r7
    ldr r7, [r0,#4]
    sub r2, r2, r7
    push {r1,r2}
    lsl r0, r3, #1
    neg r1, r4
    bl sub_81116F0
    lsr r3, r3, #1
    cmp r1, r3
    bmi loc_80018AA
    add r0, #1
loc_80018AA:
    pop {r1,r2}
    push {r0,r1}
    add r1, r0, #0
    add r0, r2, #0
    bl sub_81116F0
    add r2, r0, #0
    pop {r0,r1}
    push {r0,r2}
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
    bl sub_81116F0
    add r1, r0, #0
    pop {r0,r2}
    pop {pc}
// end of function sub_800188E

.thumb
.equ var_10, -0x8
sub_80018CC:
    push {lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #8
    str r5, [sp,#0x10+var_10]
    push {r4,r6}
    ldmia r0!, {r3-r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl sub_8001740
    mov r8, r0
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    lsl r1, r1, #1
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_8001788
    pop {r4,r6}
    push {r0,r1}
    lsl r0, r4, #1
    add r1, r6, #0
    mul r1, r6
    lsl r0, r0, #0x10
    bl sub_81116F0
    neg r3, r0
    mul r0, r6
    add r2, r0, #0
    pop {r0,r1}
    ldr r5, [sp,#0x10+var_10]
    add sp, sp, #8
    mov r4, r8
    add r4, #0x20 
    mov r6, #0xe0
    and r4, r6
    lsr r4, r4, #5
    pop {r7}
    mov r8, r7
    pop {pc}
// end of function sub_80018CC

.thumb
sub_8001936:
    push {r4-r6,lr}
    push {r3,r4,r6}
    add r6, r4, #0
    ldmia r0!, {r3-r5}
    push {r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl sub_8001740
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_8001788
    pop {r5}
    pop {r3,r4,r6}
    push {r0,r1}
    add r0, r4, #0
    mul r0, r4
    mul r0, r6
    asr r0, r0, #1
    sub r3, r3, r5
    sub r0, r3, r0
    add r1, r4, #0
    svc 6
    add r2, r0, #0
    pop {r0,r1}
    pop {r4-r6,pc}
// end of function sub_8001936

.thumb
sub_8001988:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x64]
    orr r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8001988

.thumb
sub_8001994:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x64]
    bic r2, r0
    str r2, [r1,#0x64]
    mov pc, lr
// end of function sub_8001994

.thumb
sub_80019A0:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x64]
    mov pc, lr
// end of function sub_80019A0

.thumb
sub_80019A8:
    mov r1, r10
    ldr r1, [r1,#0x18]
    str r0, [r1,#0x64]
    mov pc, lr
// end of function sub_80019A8

.thumb
.equ var_54, -0x54
.equ var_50, -0x50
.equ var_4C, -0x4C
.equ var_48, -0x48
.equ var_44, -0x44
.equ var_40, -0x40
.equ var_3C, -0x3C
.equ var_38, -0x38
.equ var_34, -0x34
.equ var_30, -0x30
.equ var_2C, -0x2C
.equ var_28, -0x28
.equ var_24, -0x24
.equ var_20, -0x20
.equ var_1C, -0x1C
.equ var_18, -0x18
sub_80019B0:
    push {r4-r7,lr}
    sub sp, sp, #0x40
    str r6, [sp,#0x54+var_50]
    str r7, [sp,#0x54+var_44]
    ldr r7, [pc, #0x8001abc-0x80019b8-4] // byte_200A3C8
    ldrb r7, [r7]
    str r3, [sp,#0x54+var_30]
    str r4, [sp,#0x54+var_2C]
    str r2, [sp,#0x54+var_54]
    mov r2, #0xff
    and r2, r1
    str r2, [sp,#0x54+var_34]
    add r2, r1, #0
    lsl r2, r2, #0x17
    lsr r2, r2, #0x1f
    eor r2, r7
    str r2, [sp,#0x54+var_1C]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x54+var_3C]
    add r2, r1, #0
    lsl r2, r2, #0x16
    lsr r2, r2, #0x1f
    str r2, [sp,#0x54+var_18]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x54+var_38]
    lsl r5, r5, #0xc
    str r5, [sp,#0x54+var_28]
    ldr r1, [sp,#0x54+var_34]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    add r1, r1, r0
    ldr r2, [r1,#4]
    add r2, r2, r0
    str r2, [sp,#0x54+var_48]
    ldr r2, [r1]
    add r2, r2, r0
    str r2, [sp,#0x54+var_4C]
    ldr r2, [r1,#8]
    ldr r3, [r2,r0]
    add r2, r2, r3
    add r2, r2, r0
    ldrb r2, [r2]
    lsl r2, r2, #2
    ldr r3, [r1,#0xc]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r3, r3, r2
    ldr r2, [sp,#0x54+var_54]
    ldr r4, [sp,#0x54+var_50]
    mov r1, #0
    str r1, [sp,#0x54+var_40]
loc_8001A1E:
    ldrb r0, [r3]
    cmp r0, #0xff
    beq loc_8001AAE
    ldr r1, [sp,#0x54+var_44]
    sub r1, #8
    str r1, [sp,#0x54+var_44]
    blt loc_8001AAE
    ldr r1, [sp,#0x54+var_28]
    add r0, r0, r1
    ldr r1, [sp,#0x54+var_50]
    add r0, r0, r1
    str r0, [r2,#4]
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    lsl r4, r0, #2
    add r4, r4, r1
    add r4, r4, r4
    ldr r5, [pc, #0x8001ab8-0x8001a44-4] // loc_8001AC0
    add r4, r4, r5
    ldrb r5, [r4]
    ldr r6, [sp,#0x54+var_1C]
    mul r5, r6
    str r5, [sp,#0x54+var_24]
    ldrb r5, [r4,#1]
    ldr r6, [sp,#0x54+var_18]
    mul r5, r6
    str r5, [sp,#0x54+var_20]
    lsl r0, r0, #0xe
    lsl r1, r1, #0x1e
    add r0, r0, r1
    mov r1, #2
    ldrsb r4, [r3,r1]
    ldr r1, [sp,#0x54+var_38]
    mul r1, r4
    ldr r4, [sp,#0x54+var_2C]
    add r1, r1, r4
    ldr r4, [sp,#0x54+var_20]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r3,r1]
    ldr r4, [sp,#0x54+var_3C]
    mul r1, r4
    ldr r4, [sp,#0x54+var_30]
    add r1, r1, r4
    ldr r4, [sp,#0x54+var_24]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #7
    add r0, r0, r1
    ldr r1, [sp,#0x54+var_1C]
    lsl r1, r1, #0x1c
    ldrb r4, [r3,#3]
    mov r5, #0xf0
    and r5, r4
    lsl r5, r5, #0x16
    eor r1, r5
    add r0, r0, r1
    ldr r1, [sp,#0x54+var_18]
    lsl r1, r1, #0x1d
    add r0, r0, r1
    str r0, [r2]
    ldr r1, [sp,#0x54+var_40]
    add r1, #1
    str r1, [sp,#0x54+var_40]
    add r2, #8
    add r3, #5
    b loc_8001A1E
loc_8001AAE:
    ldr r0, [sp,#0x54+var_4C]
    ldr r1, [sp,#0x54+var_48]
    ldr r2, [sp,#0x54+var_40]
    add sp, sp, #0x40
    pop {r4-r7,pc}
off_8001AB8:    .word loc_8001AC0
off_8001ABC:    .word byte_200A3C8
// end of function sub_80019B0

loc_8001AC0:
    lsr r0, r1, #0x20
    asr r0, r2, #0x20
    mov r0, #0x20 
    eor r0, r0
    lsr r0, r2, #0x20
    lsr r0, r4, #0x20
    asr r0, r4, #0x20
    mov r0, #0x40 
    asr r0, r1, #0x20
    mov r0, #8
    mov r0, #0x10
    and r0, r4
.thumb
sub_8001AD8:
    ldr r0, [pc, #0x8001b58-0x8001ad8-4] // =0xA338244F
    ldr r1, [pc, #0x8001b5c-0x8001ada-2] // dword_2001790
    str r0, [r1]
    mov pc, lr
// end of function sub_8001AD8

.thumb
sub_8001AE0:
    push {r7,lr}
    ldr r7, [pc, #0x8001b60-0x8001ae2-2] // dword_2001790
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001ae6-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_8001AE0

.thumb
sub_8001AF6:
    push {r7,lr}
    ldr r7, [pc, #0x8001b68-0x8001af8-4] // dword_2001790
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001afc-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001AF6

.thumb
sub_8001B10:
    push {r7,lr}
    ldr r7, [pc, #0x8001b6c-0x8001b12-2] // dword_20015D4
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b16-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_8001B10

.thumb
sub_8001B26:
    push {r7,lr}
    ldr r7, [pc, #0x8001b70-0x8001b28-4] // dword_20015D4
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b2c-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001B26

.thumb
sub_8001B40:
    push {r7,lr}
    ldr r7, [pc, #0x8001b74-0x8001b42-2] // dword_2001E98
    ldr r0, [r7]
    ldr r1, [pc, #0x8001b64-0x8001b46-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
    .balign 4, 0x00
dword_8001B58:    .word 0xA338244F
off_8001B5C:    .word dword_2001790
off_8001B60:    .word dword_2001790
dword_8001B64:    .word 0x873CA9E5
off_8001B68:    .word dword_2001790
off_8001B6C:    .word dword_20015D4
off_8001B70:    .word dword_20015D4
off_8001B74:    .word dword_2001E98
// end of function sub_8001B40

.thumb
sub_8001B78:
    push {lr}
    ldr r0, [pc, #0x8001b8c-0x8001b7a-2] // =0x600E000
    ldr r1, [pc, #0x8001b90-0x8001b7c-4] // =0x2000
    bl f900_8000950
    bl sub_8001D88
    bl sub_8001D9C
    pop {pc}
dword_8001B8C:    .word 0x600E000
off_8001B90:    .word 0x2000
// end of function sub_8001B78

.thumb
sub_8001B94:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001bb8-0x8001b9a-2] // =0x600E000
    ldr r2, [pc, #0x8001bbc-0x8001b9c-4] // =0x2000
    bl f900_80009A0
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001bc0-0x8001ba6-2] // =0x800
    ldr r2, [pc, #0x8001bc4-0x8001ba8-4] // =0x2FF02FF
    bl f900_80009FC
    ldr r0, [pc, #0x8001bc0-0x8001bae-2] // =0x800
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
dword_8001BB8:    .word 0x600E000
off_8001BBC:    .word 0x2000
off_8001BC0:    .word 0x800
dword_8001BC4:    .word 0x2FF02FF
// end of function sub_8001B94

.thumb
sub_8001BC8:
    ldr r1, [pc, #0x8001be0-0x8001bc8-4] // dword_8001BE4
    lsl r0, r0, #3
    add r1, r1, r0
    mov r3, r10
    ldr r2, [r3,#8]
    add r2, #4
    ldr r0, [r1]
    str r0, [r2]
    ldr r0, [r1,#4]
    str r0, [r2,#4]
    mov pc, lr
    .byte 0, 0
off_8001BE0:    .word dword_8001BE4
dword_8001BE4:    .word 0x0, 0x0
    .word 0x3C08
    .word 0x0
    .word 0x3D013C08, 0x0
    .word 0x3C08
    .word 0x0
    .word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E06, 0x3D833C08
    .word 0x3F8D3E82, 0x3D0B3C08, 0x3F8D3E82, 0x3D833C08, 0x3F0A3E83
    .word 0x3D833C08, 0x3F0B3E82, 0x3D033C08, 0x3F093E02, 0x3D033C08
    .word 0x3E06, 0x3D833C08, 0x3F813E02, 0x3D033C08, 0x3F815E02
    .word 0x3D033C08, 0x3F853E02, 0x3D033C08, 0x3F8B3E87, 0x3D033C08
    .word 0x3F053E02, 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E02
    .word 0x3D0B3C08, 0x3F093E0A, 0x3D833C08, 0x3F8D3E82, 0x0
// end of function sub_8001BC8

    ldrb r1, [r0,r6]
    ldrb r0, [r0,r6]
.thumb
sub_8001C94:
    push {lr}
    cmp r0, #0x80
    bge loc_8001C9E
    ldr r3, [pc, #0x8001cb0-0x8001c9a-2] // off_8029184
    b loc_8001CA2
loc_8001C9E:
    ldr r3, [pc, #0x8001cb4-0x8001c9e-2] // dword_802919C
    sub r0, #0x80
loc_8001CA2:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    add r3, r3, r1
    ldrb r0, [r3]
    bl sub_8001BC8
    pop {pc}
off_8001CB0:    .word off_8029184
off_8001CB4:    .word dword_802919C
// end of function sub_8001C94

.thumb
sub_8001CB8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001cf4-0x8001cbe-2] // MosaicSize
    ldrh r2, [r5,#2]
    strh r2, [r1]
    add r0, r5, #0
    add r0, #4
    ldr r1, [pc, #0x8001cf8-0x8001cc8-4] // BG0Control
    mov r2, #0x38 
    bl f900_800098C
    ldr r0, [r7,#0x1c]
    ldr r1, [pc, #0x8001cfc-0x8001cd2-2] // Window0HorizontalDimensions
    mov r2, #0xc
    bl f900_800097A
    ldr r5, [r7,#0x20]
    ldr r1, [pc, #0x8001d00-0x8001cdc-4] // ColorSpecialEffectsSelection
    ldr r2, [r5]
    str r2, [r1]
    ldrh r2, [r5,#4]
    strh r2, [r1,#(Brightness_Fade_In_Out_Coefficient - 0x4000050)]
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001cf0-0x8001ce8-4] // LCDControl
    ldrh r2, [r5]
    strh r2, [r1]
    pop {r4-r7,pc}
off_8001CF0:    .word LCDControl
off_8001CF4:    .word MosaicSize
off_8001CF8:    .word BG0Control
off_8001CFC:    .word Window0HorizontalDimensions
off_8001D00:    .word ColorSpecialEffectsSelection
// end of function sub_8001CB8

.thumb
sub_8001D04:
    push {lr}
    ldr r0, [pc, #0x8001d28-0x8001d06-2] // =0x6000000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d2c-0x8001d0e-2] // =0x6004000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d30-0x8001d16-2] // =0x6008000
    mov r1, #0x40 
    bl f900_8000950
    ldr r0, [pc, #0x8001d34-0x8001d1e-2] // =0x600C000
    mov r1, #0x20 
    bl f900_8000950
    pop {pc}
dword_8001D28:    .word 0x6000000
dword_8001D2C:    .word 0x6004000
dword_8001D30:    .word 0x6008000
dword_8001D34:    .word 0x600C000
// end of function sub_8001D04

.thumb
sub_8001D38:
    push {lr}
    ldr r0, [pc, #0x8001d58-0x8001d3a-2] // word_3002A50
    mov r1, #2
    bl f900_8000910
    pop {pc}
// end of function sub_8001D38

.thumb
sub_8001D44:
    push {lr}
    ldr r0, [pc, #0x8001d58-0x8001d46-2] // word_3002A50
    mov r1, #2
    bl f900_8000910
    ldr r0, [pc, #0x8001d5c-0x8001d4e-2] // =0x5000000
    mov r1, #2
    bl f900_8000910
    pop {pc}
off_8001D58:    .word word_3002A50
dword_8001D5C:    .word 0x5000000
// end of function sub_8001D44

.thumb
sub_8001D60:
    push {lr}
    mov r2, r10
    ldr r0, [r2,#0x20]
    mov r1, #8
    bl f900_8000930
    pop {pc}
// end of function sub_8001D60

.thumb
sub_8001D6E:
    push {lr}
    ldr r0, [pc, #0x8001d80-0x8001d70-4] // unk_3002C50
    ldr r1, [pc, #0x8001d84-0x8001d72-2] // =0x5000000
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009A0
    pop {pc}
    .byte 0, 0
off_8001D80:    .word unk_3002C50
dword_8001D84:    .word 0x5000000
// end of function sub_8001D6E

.thumb
sub_8001D88:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x8001d98-0x8001d8e-2] // =0x2000
    bl f900_8000950
    pop {pc}
    .balign 4, 0x00
off_8001D98:    .word 0x2000
// end of function sub_8001D88

.thumb
sub_8001D9C:
    push {lr}
    ldr r0, [pc, #0x8001db4-0x8001d9e-2] // dword_8694A24
    ldr r1, [pc, #0x8001db8-0x8001da0-4] // =0x600D800
    ldr r2, [pc, #0x8001dbc-0x8001da2-2] // =0x800
    bl f900_80009A0
    ldr r0, [pc, #0x8001dc0-0x8001da8-4] // dword_8753B14
    ldr r1, [pc, #0x8001dc4-0x8001daa-2] // unk_3002C30
    mov r2, #0x20 
    bl f900_80009A0
    pop {pc}
off_8001DB4:    .word dword_8694A24
dword_8001DB8:    .word 0x600D800
off_8001DBC:    .word 0x800
off_8001DC0:    .word dword_8753B14
off_8001DC4:    .word unk_3002C30
// end of function sub_8001D9C

.thumb
sub_8001DC8:
    lsl r0, r0, #1
    lsl r1, r1, #6
    lsl r2, r2, #0xb
    add r0, r0, r1
    add r0, r0, r2
    mov r1, r10
    ldr r1, [r1,#0x28]
    add r1, r1, r0
    strh r3, [r1]
    mov pc, lr
// end of function sub_8001DC8

.thumb
sub_8001DDC:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001df0-0x8001dde-2] // sub_30059E8+1
    mov lr, pc
    bx r7
    .byte 0xC0
    .byte 0xBD
// end of function sub_8001DDC

.thumb
sub_8001DE6:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001df4-0x8001de8-4] // loc_3005A22+1
    mov lr, pc
    bx r7
    .hword 0xBDC0
off_8001DF0:    .word sub_30059E8+1
off_8001DF4:    .word loc_3005A22+1
// end of function sub_8001DE6

.thumb
sub_8001DF8:
    push {r6,r7,lr}
    ldr r7, [pc, #0x8001e0c-0x8001dfa-2] // loc_3005A5C+1
    mov lr, pc
    bx r7
    .word 0xB5C0BDC0, 0x46FE4F02, 0xBDC04738
off_8001E0C:    .word loc_3005A5C+1
    .word 0x3005A93
// end of function sub_8001DF8

.thumb
sub_8001E14:
    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r1, r1, #6
    add r6, r6, r1
loc_8001E22:
    ldrh r7, [r3]
    lsl r1, r0, #1
    strh r7, [r6,r1]
    add r0, #1
    mov r1, #0x1f
    and r0, r1
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_8001E22
    pop {r6,r7,pc}
// end of function sub_8001E14

    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r0, r0, #1
    add r6, r6, r0
loc_8001E46:
    ldrh r7, [r3]
    lsl r0, r1, #6
    strh r7, [r6,r0]
    add r1, #1
    mov r0, #0x1f
    and r1, r0
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_8001E46
    pop {r6,r7,pc}
.thumb
sub_8001E5C:
    push {lr}
    tst r0, r0
    beq locret_8001E72
    ldr r3, [pc, #0x8001eac-0x8001e62-2] // dword_200ACF0
    str r0, [r3]
    str r1, [r3,#(dword_200ACF8 - 0x200acf0)]
    str r2, [r3,#(dword_200ACF4 - 0x200acf0)]
    mov r0, #0xc
    add r1, r2, #0
    bl start_8000284
locret_8001E72:
    pop {pc}
// end of function sub_8001E5C

.thumb
sub_8001E74:
    push {lr}
    ldr r2, [pc, #0x8001eac-0x8001e76-2] // dword_200ACF0
    ldr r0, [pc, #0x8001e8c-0x8001e78-4] // locret_8001F94+1
    str r0, [r2]
    str r0, [r2,#(dword_200ACF8 - 0x200acf0)]
    ldr r1, [pc, #0x8001e90-0x8001e7e-2] // =0x300593C
    str r1, [r2,#(dword_200ACF4 - 0x200acf0)]
    mov r0, #0xc
    bl start_8000284
    pop {pc}
    .balign 4, 0x00
off_8001E8C:    .word locret_8001F94+1
dword_8001E90:    .word 0x300593D
// end of function sub_8001E74

loc_8001E94:
    push {lr}
    ldr r1, [pc, #0x8001eac-0x8001e96-2] // dword_200ACF0
    ldr r0, [r1]
    mov lr, pc
    bx r0
    .hword 0xBD00
loc_8001EA0:
    push {lr}
    ldr r1, [pc, #0x8001eac-0x8001ea2-2] // dword_200ACF0
    ldr r0, [r1,#(dword_200ACF8 - 0x200acf0)]
    mov lr, pc
    bx r0
    .hword 0xBD00
off_8001EAC:    .word dword_200ACF0
locret_8001EB0:
    mov pc, lr
loc_8001EB2:
    ldr r1, [pc, #0x8001f90-0x8001eb2-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#(dword_200A154 - 0x200a150)]
    sub r3, #4
    str r3, [r1,#(dword_200A154 - 0x200a150)]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    strh r3, [r1,#0x12]
    mov pc, lr
loc_8001ECE:
    ldr r1, [pc, #0x8001f90-0x8001ece-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#(dword_200A154 - 0x200a150)]
    sub r3, #4
    str r3, [r1,#(dword_200A154 - 0x200a150)]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    strh r3, [r1,#0x1a]
    mov pc, lr
    ldr r1, [pc, #0x8001f90-0x8001eea-2] // dword_200A150
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x1a]
    mov pc, lr
loc_8001EFC:
    ldr r1, [pc, #0x8001f90-0x8001efc-4] // dword_200A150
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x12]
    mov pc, lr
loc_8001F0E:
    ldr r1, [pc, #0x8001f90-0x8001f0e-2] // dword_200A150
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x12]
    mov pc, lr
    ldr r1, [pc, #0x8001f90-0x8001f20-4] // dword_200A150
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x1a]
    mov pc, lr
    ldr r1, [pc, #0x8001f90-0x8001f32-2] // dword_200A150
    ldr r2, [r1]
    add r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
loc_8001F44:
    ldr r1, [pc, #0x8001f90-0x8001f44-4] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
    ldr r1, [pc, #0x8001f90-0x8001f56-2] // dword_200A150
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    mov pc, lr
loc_8001F68:
    ldr r1, [pc, #0x8001f90-0x8001f68-4] // dword_200A150
    ldr r2, [r1]
    mov r3, #1
    lsl r3, r3, #0xc
    sub r2, r2, r3
    mov r3, #4
    lsl r3, r3, #0x10
    neg r3, r3
    cmp r2, r3
    bge loc_8001F7E
    add r2, r3, #0
loc_8001F7E:
    str r2, [r1]
    asr r2, r2, #0x10
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r3, [r1,#0x10]
    add r3, r3, r2
    strh r3, [r1,#0x10]
    mov pc, lr
    .byte 0, 0
off_8001F90:    .word dword_200A150
locret_8001F94:
    mov pc, lr
    .balign 4, 0x00
off_8001F98:    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_2010780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word word_200F980
    .word unk_200FB80
    .word unk_200FC00
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
    .word unk_200F780
.thumb
sub_8002008:
    push {lr}
    ldr r0, [pc, #0x8002144-0x800200a-2] // byte_2009F50
    ldr r1, [pc, #0x8002014-0x800200c-4] // =0x1B0
    bl f900_8000930
    pop {pc}
off_8002014:    .word 0x1B0
// end of function sub_8002008

.thumb
sub_8002018:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8002024-0x800201a-2] // off_8001F98
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8002024:    .word off_8001F98
// end of function sub_8002018

loc_8002028:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8002144-0x8002032-2] // byte_2009F50
    ldrb r1, [r0,#9]
    mov r2, #0x18
    mul r2, r1
    add r7, r7, r2
    strb r1, [r7,#1]
    ldr r1, [r0]
    str r1, [r7,#0xc]
    ldr r2, [r0,#4]
    str r2, [r7,#0x10]
    ldr r3, [r0,#8]
    str r3, [r7,#0x14]
    add r0, #0xc
    mov r6, #1
    cmp r3, #8
    beq loc_8002054
    ldr r6, [r0,#4]
loc_8002054:
    strh r6, [r7,#2]
    mov r6, #1
    strb r6, [r7]
    str r0, [r7,#4]
    str r0, [r7,#8]
    ldr r6, [pc, #0x8002074-0x800205e-2] // off_800212C
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8002074:    .word off_800212C
.thumb
sub_8002078:
    push {r4-r7,lr}
    push {r0}
    ldr r7, [pc, #0x8002144-0x800207c-4] // byte_2009F50
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    mov r0, #0
    strb r0, [r7]
    pop {r0}
    bl sub_8002526
    pop {r4-r7,pc}
// end of function sub_8002078

.thumb
sub_8002090:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8002144-0x8002092-2] // byte_2009F50
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    ldrb r0, [r7]
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8002090

loc_80020A0:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8002144-0x80020aa-2] // byte_2009F50
    mov r4, #0
loc_80020AE:
    ldrb r1, [r7]
    tst r1, r1
    bne loc_80020BE
loc_80020B4:
    add r7, #0x18
    add r4, #1
    cmp r4, #0x12
    bge loc_8002100
    b loc_80020AE
loc_80020BE:
    ldrh r1, [r7,#2]
    sub r1, #1
    strh r1, [r7,#2]
    cmp r1, #0
    bgt loc_80020B4
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x800210c-0x80020ca-2] // dword_8002114
    ldrb r2, [r7,#0x14]
    ldr r1, [r1,r2]
    add r0, r0, r1
    ldr r1, [r0]
    cmp r1, #0
    beq loc_80020FA
    cmp r1, #2
    beq loc_80020E4
    cmp r1, #1
    bne loc_80020E8
    ldr r0, [r7,#4]
    b loc_80020E8
loc_80020E4:
    ldr r0, [r0,#4]
    str r0, [r7,#4]
loc_80020E8:
    str r0, [r7,#8]
    ldr r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r6, [pc, #0x8002110-0x80020ee-2] // off_800212C
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    .byte 0xDC, 0xE7
loc_80020FA:
    mov r1, #0
    strb r1, [r7]
    b loc_80020B4
loc_8002100:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800210C:    .word dword_8002114
off_8002110:    .word off_800212C
dword_8002114:    .word 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
off_800212C:    .word sub_8002148+1
    .word loc_8002198+1
    .word sub_8002156+1
    .word sub_800249C+1
    .word sub_80024B6+1
    .word sub_80024C4+1
off_8002144:    .word byte_2009F50
.thumb
sub_8002148:
    push {lr}
    ldr r0, [r0]
    ldr r1, [r7,#0xc]
    ldr r2, [r7,#0x10]
    bl loc_8000874
    pop {pc}
// end of function sub_8002148

.thumb
sub_8002156:
    push {lr}
    ldr r5, [pc, #0x8002194-0x8002158-4] // byte_200D8E0
    ldr r5, [r5,#(dword_200D8EC - 0x200d8e0)]
    ldrb r2, [r7,#0x17]
    lsl r2, r2, #2
    add r2, #4
    ldr r2, [r5,r2]
    add r5, r5, r2
    mov r6, #0xf0
    lsl r6, r6, #8
    ldrb r2, [r7,#0x16]
    mov r8, r7
loc_800216E:
    ldr r1, [r0]
    ldr r7, [r0,#4]
    ldrh r3, [r5,r1]
    and r3, r6
    orr r3, r7
    strh r3, [r5,r1]
    add r0, #8
    sub r2, #1
    bgt loc_800216E
    mov r7, r8
    push {r4,r7}
    ldr r5, [pc, #0x8002194-0x8002184-4] // byte_200D8E0
    bl loc_8026460
    pop {r4,r7}
    mov r0, #0
    strb r0, [r7]
    pop {pc}
    .balign 4, 0x00
off_8002194:    .word byte_200D8E0
// end of function sub_8002156

loc_8002198:
    push {r4,r7,lr}
    ldr r6, [r0]
    ldr r5, [pc, #0x80021e8-0x800219c-4] // off_8001F98
    ldrb r4, [r7,#0x17]
    lsl r4, r4, #2
    ldr r5, [r5,r4]
    ldr r4, [r7,#0xc]
    mov r1, #0
    push {r0}
    ldrh r2, [r6,r1]
    lsl r3, r2, #0x16
    lsr r3, r3, #0x16
    lsl r3, r3, #5
    push {r4,r6}
    add r4, r4, r3
    ldr r0, [pc, #0x80021ec-0x80021b6-2] // dword_80021F0
    lsr r2, r2, #0xa
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
    .hword 0xBC50
    .word 0x31023520, 0x527DBA, 0xDBEC4291, 0x4805BC01, 0x897DF9
    .word 0x69395840, 0x1527DBA, 0xFB48F7FE, 0xBD90
off_80021E8:    .word off_8001F98
off_80021EC:    .word dword_80021F0
dword_80021F0:    .word 0x8002201, 0x8002223, 0x800234B, 0x800236D, 0x60286820
    .word 0x60686860, 0x60A868A0, 0x60E868E0, 0x61286920, 0x61686960
    .word 0x61A869A0, 0x61E869E0, 0x4A9D46F7, 0x4A9B4691, 0x68204690
    .word 0x40020A13, 0xA104003, 0x4318021B, 0x41D02210, 0x913464A
    .word 0x40034002, 0x11B0910, 0x60284318, 0x46426860, 0x40020A13
    .word 0xA104003, 0x4318021B, 0x41D02210, 0x913464A, 0x40034002
    .word 0x11B0910, 0x60684318, 0x464268A0, 0x40020A13, 0xA104003
    .word 0x4318021B, 0x41D02210, 0x913464A, 0x40034002, 0x11B0910
    .word 0x60A84318, 0x464268E0, 0x40020A13, 0xA104003, 0x4318021B
    .word 0x41D02210, 0x913464A, 0x40034002, 0x11B0910, 0x60E84318
    .word 0x46426920, 0x40020A13, 0xA104003, 0x4318021B, 0x41D02210
    .word 0x913464A, 0x40034002, 0x11B0910, 0x61284318, 0x46426960
    .word 0x40020A13, 0xA104003, 0x4318021B, 0x41D02210, 0x913464A
    .word 0x40034002, 0x11B0910, 0x61684318, 0x464269A0, 0x40020A13
    .word 0xA104003, 0x4318021B, 0x41D02210, 0x913464A, 0x40034002
    .word 0x11B0910, 0x61A84318, 0x464269E0, 0x40020A13, 0xA104003
    .word 0x4318021B, 0x41D02210, 0x913464A, 0x40034002, 0x11B0910
    .word 0x61E84318, 0x682046F7, 0x686061E8, 0x68A061A8, 0x68E06168
    .word 0x69206128, 0x696060E8, 0x69A060A8, 0x69E06068, 0x46F76028
    .word 0x46914A4A, 0x46904A48, 0xA136820, 0x40034002, 0x21B0A10
    .word 0x22104318, 0x464A41D0, 0x40020913, 0x9104003, 0x4318011B
    .word 0x686061E8, 0xA134642, 0x40034002, 0x21B0A10, 0x22104318
    .word 0x464A41D0, 0x40020913, 0x9104003, 0x4318011B, 0x68A061A8
    .word 0xA134642, 0x40034002, 0x21B0A10, 0x22104318, 0x464A41D0
    .word 0x40020913, 0x9104003, 0x4318011B, 0x68E06168, 0xA134642
    .word 0x40034002, 0x21B0A10, 0x22104318, 0x464A41D0, 0x40020913
    .word 0x9104003, 0x4318011B, 0x69206128, 0xA134642, 0x40034002
    .word 0x21B0A10, 0x22104318, 0x464A41D0, 0x40020913, 0x9104003
    .word 0x4318011B, 0x696060E8, 0xA134642, 0x40034002, 0x21B0A10
    .word 0x22104318, 0x464A41D0, 0x40020913, 0x9104003, 0x4318011B
    .word 0x69A060A8, 0xA134642, 0x40034002, 0x21B0A10, 0x22104318
    .word 0x464A41D0, 0x40020913, 0x9104003, 0x4318011B, 0x69E06068
    .word 0xA134642, 0x40034002, 0x21B0A10, 0x22104318, 0x464A41D0
    .word 0x40020913, 0x9104003, 0x4318011B, 0x46F76028, 0xFF00FF00
    .word 0xF0F0F0F0
.thumb
sub_800249C:
    push {lr}
    push {r4,r7}
    ldr r1, [r0]
    lsl r1, r1, #1
    lsr r1, r1, #1
    ldrb r0, [r7,#0xc]
    ldrb r2, [r7,#0x16]
    ldrb r3, [r7,#1]
    ldr r4, [r7,#0x10]
    bl sub_8002504
    pop {r4,r7}
    pop {pc}
// end of function sub_800249C

.thumb
sub_80024B6:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt locret_80024C2
    bl f500_8000558
locret_80024C2:
    pop {pc}
// end of function sub_80024B6

.thumb
sub_80024C4:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt loc_80024D4
    add r0, r0, #0
    bl sub_8024FA0
    b locret_80024DE
loc_80024D4:
    lsl r0, r0, #1
    lsr r0, r0, #1
    add r0, r0, #0
    bl sub_8024FBC
locret_80024DE:
    pop {pc}
// end of function sub_80024C4

.thumb
sub_80024E0:
    push {r5,lr}
    add r5, r0, #0
loc_80024E4:
    ldr r0, [r5]
    cmp r0, #0
    blt locret_80024F2
    bl loc_8002028
    add r5, #4
    b loc_80024E4
locret_80024F2:
    pop {r5,pc}
// end of function sub_80024E0

.thumb
sub_80024F4:
    push {lr}
    ldr r0, [pc, #0x80025f0-0x80024f6-2] // byte_200A230
    ldr r1, [pc, #0x8002500-0x80024f8-4] // =0x108
    bl f900_8000930
    pop {pc}
off_8002500:    .word 0x108
// end of function sub_80024F4

/*For debugging purposes, connect comment at any range!*/
