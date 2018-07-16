.ifndef INC_ASM00
.equ INC_ASM00, 0

/* Public Interface */
.extern f500_8000550
.extern f500_8000558
.extern f500_8000560
.extern f500_800057E
.extern f500_80005BA
.extern f500_80005D2
.extern f500_80005EA
.extern f500_80006CC
.extern f500_8000706
.extern f800_8000800
.extern loc_8000870
.extern loc_8000874
.extern loc_8000876
.extern f800_80008EC
.extern f900_8000904
.extern f900_8000910
.extern f900_8000930
.extern f900_8000950
.extern f900_8000970
.extern f900_800097A
.extern f900_800098C
.extern f900_80009A0
.extern f900_80009B4
.extern f900_80009BC
.extern f900_80009DC
.extern f900_80009FC
.extern fA00_8000A30
.extern fA00_8000A8C
.extern fA00_8000AA2
.extern fA00_8000B42
.extern fA00_8000BB4
.extern fA00_8000C24
.extern fA00_8000C3C
.extern fA00_8000C44
.extern fA00_8000C62
.extern sub_8000C98
.extern sub_8000D20
.extern sub_8000DBA
.extern sub_8000DE0
.extern sub_8001740
.extern sub_8001788
.extern sub_8001814
.extern sub_800188E
.extern sub_80018CC
.extern sub_8001936
.extern sub_8001988
.extern sub_8001994
.extern sub_80019A0
.extern sub_80019B0
.extern sub_8001AD8
.extern sub_8001AE0
.extern sub_8001AF6
.extern sub_8001B10
.extern sub_8001B40
.extern sub_8001B94
.extern sub_8001BC8
.extern sub_8001C94
.extern sub_8001CB8
.extern sub_8001D04
.extern sub_8001D38
.extern sub_8001D60
.extern sub_8001D6E
.extern sub_8001D88
.extern sub_8001D9C
.extern sub_8001DC8
.extern sub_8001DDC
.extern sub_8001DE6
.extern sub_8001DF8
.extern sub_8001E14
.extern sub_8001E5C
.extern sub_8001E74
.extern sub_8001E94
.extern sub_8001EA0
.extern sub_8001EB2
.extern sub_8002008
.extern sub_8002018
.extern sub_8002028
.extern sub_8002078
.extern sub_8002090
.extern sub_80020A0
.extern sub_80024E0
.extern sub_8002504
.extern sub_8002526
.extern sub_8002534
.extern sub_800256C
.extern sub_8002610
.extern sub_800262E
.extern sub_800264C
.extern sub_8002664
.extern sub_8002798
.extern sub_80027DC
.extern sub_80027F4
.extern sub_800280C
.extern sub_800281C
.extern sub_800282E
.extern sub_800283C
.extern sub_800284E
.extern sub_800285C
.extern sub_80028D2
.extern sub_80028E8
.extern loc_80028EC
.extern sub_8002914
.extern sub_800293C
.extern sub_8002998
.extern sub_80029C0
.extern sub_80029F8
.extern sub_8002A2A
.extern sub_8002B86
.extern sub_8002C70
.extern sub_8002C9E
.extern sub_8002CB4
.extern sub_8002CC6
.extern loc_8002CCA
.extern sub_8002D1A
.extern sub_8002D2C
.extern sub_8002D60
.extern sub_8002D9E
.extern sub_8002DCC
.extern sub_8002DD8
.extern sub_8002DF0
.extern sub_8002DFC
.extern loc_8002E00
.extern sub_8002E14
.extern sub_8002E24
.extern sub_8002E36
.extern sub_8002E50
.extern sub_8002E60
.extern sub_8002E76
.extern sub_8002E8C
.extern sub_8002EDE
.extern sub_8002F02
.extern sub_8002F0E
.extern sub_8002F1A
.extern sub_8002F28
.extern loc_8002F34
.extern sub_8002F5E
.extern sub_8002F70
.extern loc_8002F8E
.extern sub_8002FB0
.extern sub_8002FC2
.extern sub_8002FD8
.extern sub_8002FE4
.extern sub_8002FF0
.extern sub_8003006
.extern loc_800301E
.extern loc_800302C
.extern sub_8003038
.extern sub_800305C
.extern sub_8003298
.extern sub_80032D0
.extern sub_80032EC
.extern sub_8003324
.extern sub_80033B4
.extern sub_80034C4
.extern sub_80034F6
.extern sub_8003558
.extern sub_80035C0
.extern sub_800364C
.extern sub_8003814
.extern sub_8003836
.extern sub_800386E
.extern sub_80038A0
.extern sub_80038B4
.extern sub_80038EE
.extern sub_8004204
.extern sub_800425A
.extern sub_8004440
.extern sub_800447A
.extern sub_8004908
.extern sub_8004988
.extern sub_8004F14
.extern sub_8005020
.extern sub_8005500
.extern sub_8005524
.extern sub_800552E
.extern sub_800553C
.extern sub_8005544
.extern sub_8005552
.extern sub_8005644
.extern sub_8005654
.extern sub_8005754
.extern sub_8005772
.extern sub_80057A8
.extern sub_800580C
.extern sub_8005838
.extern sub_8005864
.extern sub_8005ADC
.extern loc_8005AE0
.extern sub_8005B34
.extern sub_8005B3A
.extern sub_8005B5C
.extern loc_8005B60
.extern sub_8005B6E
.extern word_8005D78
.extern word_8005DF8
.extern sub_8006078
.extern sub_8006084
.extern sub_800609C
.extern sub_80060AC
.extern sub_8006108
.extern sub_800614A
.extern sub_8006318
.extern sub_8006330
.extern sub_8006348
.extern sub_8006360
.extern sub_8006374
.extern sub_8006394
.extern sub_80063A8
.extern sub_80063C8
.extern sub_800640C
.extern sub_8006442
.extern sub_8006478
.extern sub_8006490
.extern sub_80064B4
.extern sub_80064CC
.extern sub_80064F0
.extern sub_8006504
.extern sub_800651A
.extern sub_8006574
.extern sub_800659E
.extern sub_80065C2
.extern sub_8006644
.extern sub_8007880
.extern sub_80078C4
.extern sub_8007920
.extern sub_8007958
.extern sub_80079AE
.extern sub_80079EA
.extern sub_8007A4C
.extern sub_8007A58
.extern sub_8007A64
.extern sub_8007BB4
.extern sub_8007BC6
.extern sub_8007BD0
.extern sub_8007BF0
.extern sub_8007C0E
.extern sub_8007C44
.extern sub_8007C60
.extern sub_8007C80
.extern sub_8007D90
.extern sub_8007E16
.extern sub_8007E1E
.extern sub_8007E3E
.extern sub_8007E9A
.extern sub_8007EA6
.extern sub_8007EB2
.extern sub_8007EBC
.extern sub_8007ECA
.extern sub_8007ED4
.extern sub_8007EEC
.extern sub_8007F16
.extern sub_8007F6A
.extern sub_8007F84
.extern sub_8007FCA
.extern sub_8007FFA
.extern sub_8008004
.extern sub_800812C
.extern sub_8008378
.extern sub_80083B8
.extern sub_80083F4
.extern sub_800855E
.extern sub_80085C0
.extern sub_80088B6
.extern sub_80088E2
.extern sub_800898A
.extern sub_80089A0
.extern sub_80089CC
.extern sub_80089D8
.extern sub_8009084
.extern sub_80090CA
.extern sub_8009A52
.extern sub_8009A88
.extern sub_8009AB8
.extern sub_8009B78
.extern sub_8009BBC
.extern sub_8009C18
.extern sub_8009CD0
.extern sub_8009D6C
.extern sub_8009D90
.extern sub_8009DCC
.extern sub_8009DEE
.extern sub_8009E04
.extern sub_8009E40
.extern sub_8009E58
.extern sub_8009E64
.extern sub_8009E78
.extern sub_8009E98
.extern sub_8009EA4
.extern sub_8009EB0
.extern sub_8009EC2
.extern sub_8009F0C
.extern sub_8009F90
.extern sub_8009FCC
.extern sub_8009FFC
.extern sub_800A06E
.extern sub_800A0A4
.extern sub_800A0DA
.extern sub_800A146
.extern sub_800A15E
.extern sub_800A17A
.extern sub_800A1B0
.extern sub_800A210
.extern sub_800A28C
.extern sub_800A2B0
.extern sub_800AAE0
.extern sub_800AAEC
.extern sub_800AB0A
.extern sub_800AB30
.extern sub_800AB40
.extern sub_800AB54
.extern loc_800AB56
.extern sub_800AB5E
.extern sub_800AB86
.extern sub_800AB96
.extern sub_800ABEC
.extern sub_800AC72
.extern sub_800ACF6
.extern sub_800AD20
.extern sub_800AD4A
.extern sub_800ADDC
.extern sub_800ADFC
.extern sub_800AF7C
.extern sub_800AF88
.extern sub_800AFA6
.extern sub_800AFC2
.extern sub_800AFE4
.extern sub_800AFF2
.extern sub_800B096
.extern sub_800B0C2
.extern sub_800B1FC
.extern sub_800B23E
.extern sub_800B25A
.extern sub_800B28E
.extern sub_800B2A8
.extern sub_800B3B4
.extern sub_800B418
.extern sub_800B47C
.extern sub_800B520
.extern sub_800B55C
.extern sub_800B5A6
.extern sub_800B6A8
.extern sub_800B6F8
.extern sub_800B778
.extern sub_800B7B4
.extern ho_800B7DE
.extern sub_800B8AE
.extern sub_800B8D6
.extern sub_800B908
.extern sub_800B91C
.extern sub_800B95C
.extern sub_800B98C
.extern sub_800BA32
.extern sub_800BD0C
.extern sub_800BD6E
.extern sub_800BF7A
.extern sub_800BF84
.extern sub_800BF94
.extern sub_800BFAE
.extern sub_800BFB8
.extern sub_800BFC2
.extern sub_800C016
.extern sub_800C052
.extern sub_800C05E
.extern sub_800C0EA
.extern sub_800C100
.extern sub_800C19A
.extern sub_800C1AC
.extern sub_800C1B6
.extern sub_800C1CC
.extern sub_800C3C0
.extern sub_800C41A
.extern sub_800C5AA
.extern sub_800C67C
.extern sub_800C740
.extern sub_800C794
.extern sub_800C7F4
.extern sub_800C874
.extern sub_800C960
.extern sub_800C96E
.extern ho_800C986
.extern ho_800C99C
.extern sub_800C9B0
.extern sub_800C9DC
.extern sub_800C9FE
.extern sub_800CA14
.extern sub_800D3E2
.extern sub_800D436
.extern sub_800D618
.extern sub_800D62E
.extern sub_800D6F2
.extern sub_800D706
.extern sub_800D722
.extern sub_800D73A
.extern sub_800D742
.extern sub_800D74A
.extern sub_800D752
.extern sub_800D75A
.extern sub_800D77A
.extern sub_800D7CE
.extern sub_800D93A
.extern sub_800D9D6
.extern ho_800DF7C
.extern ho_800E00C
.extern sub_800E21E
.extern sub_800E2D8
.extern sub_800E4A8
.extern sub_800E806
.extern sub_800E860
.extern sub_800E896
.extern sub_800E98A
.extern sub_800EA70
.extern sub_800EB30
.extern sub_800EB38
.extern sub_800EB42
.extern sub_800EB54
.extern sub_800ECF2
.extern sub_800EDDA
.extern ho_800F340
.extern sub_800F42C
.extern sub_800F448
.extern sub_800F48A
.extern sub_800F4CA
.extern sub_800F548
.extern sub_800F552
.extern sub_800F6E0
.extern sub_800F72C
.extern sub_800F7E8
.extern sub_800F858
.extern sub_800F8AE
.extern sub_800F8BC
.extern sub_800F93C
.extern sub_800FA7C
.extern sub_800FAA2
.extern sub_800FAE8
.extern sub_800FBF4
.extern sub_80100E6
.extern sub_80100F8
.extern nullsub_59
.extern sub_8010224
.extern sub_8010458
.extern sub_801050C
.extern loc_801051C
.extern sub_8010568
.extern sub_80106E2
.extern sub_8010CDC
.extern sub_8010CF8
.extern sub_8010E34
.extern sub_8010EB4
.extern sub_8010F52
.extern ho_8010F5A
.extern sub_8011824
.extern sub_8012442
.extern sub_8012474
.extern off_801255C
.extern sub_8012832
.extern sub_8012838
.extern sub_8012958
.extern sub_80129A8
.extern sub_8012D16
.extern sub_8012D4E
.extern sub_8012D66
.extern sub_8012D74
.extern sub_8012D7C
.extern sub_8012D82
.extern sub_8012E84
.extern sub_8012EF8
.extern sub_8012F28
.extern sub_8012F2E
.extern sub_8012F36
.extern sub_8012F40
.extern sub_8012F4A
.extern sub_8012F50
.extern sub_8013052
.extern sub_80131BA
.extern sub_80131C0
.extern sub_80131DC
.extern sub_80133E4
.extern sub_8013464
.extern sub_8013508
.extern sub_8013548
.extern sub_8013604
.extern sub_80136EA
.extern sub_801375C
.extern sub_80137F8
.extern sub_80138DE
.extern sub_8013940
.extern sub_8013978
.extern sub_80139E8
.extern sub_8013BE8
.extern sub_8013D54
.extern sub_8013EDE
.extern sub_8013FF8
.extern sub_801410C
.extern sub_801421A
.extern sub_8014348
.extern sub_801436A
.extern sub_801439C
.extern sub_80143E6
.extern sub_801441A
.extern sub_801445C
.extern sub_801449E
.extern sub_80144C8
.extern sub_801451E
.extern sub_80145C0
.extern sub_80145E6
.extern sub_801460A
.extern sub_80158F8
.extern sub_8015902
.extern sub_801590C
.extern sub_8015A18
.extern sub_8015A50
.extern sub_8015A80
.extern sub_8015AB0
.extern sub_8015ACA
.extern sub_8015AFA
.extern sub_8015DCC
.extern sub_801609C
.extern sub_80160C0
.extern sub_80160D2
.extern sub_8016262
.extern sub_801630A
.extern sub_801631C
.extern sub_801635C
.extern sub_8016394
.extern sub_80163A8
.extern sub_80163F8
.extern sub_8016408
.extern sub_8016644
.extern function_chunk_8016688
.extern sub_8016714
.extern sub_8016764
.extern sub_8016778
.extern sub_80167CC
.extern sub_801680C
.extern sub_8016812
.extern sub_80169B6
.extern sub_80169EC
.extern sub_8016A28


/* External Symbols */
.include "asm03.inc"
// .extern sub_804720C
// .extern sub_804722C
// .extern sub_8047608
// .extern sub_80476D8
// .extern sub_80480B4
// .extern sub_8048104
// .extern sub_8048120
// .extern sub_8048164
// .extern sub_80481C8
// .extern sub_80481EC
// .extern sub_8048660
// .extern sub_80486EC
// .extern sub_8048714
// .extern sub_80487E8
// .extern sub_80489E0
// .extern sub_8049010
// .extern sub_8049CB0
// .extern sub_804BA5C
// .extern sub_804BDD4
// .extern sub_804E2A4
// .extern sub_804E448
// .extern sub_8050D7C

.include "start.inc"
// .extern start_
// .extern dword_8000004
// .extern dword_8000004
// .extern start_8000284

.include "asm18.inc"
// .extern sub_8085444

.include "asm02.inc"
// .extern off_801DA10
// .extern sub_801DB68
// .extern ho_801E02C
// .extern sub_801FCC0
// .extern sub_8020E70
// .extern ho_8020EA4
// .extern sub_8021288
// .extern sub_802180A
// .extern sub_8021D86
// .extern sub_8021E4C
// .extern sub_8021EA8
// .extern ho_8021EE8
// .extern off_8022034
// .extern sub_802216C
// .extern sub_802219A
// .extern sub_80221AC
// .extern sub_80221F0
// .extern sub_8022C62
// .extern sub_8022C92
// .extern sub_8022CBC
// .extern sub_8022CDE
// .extern sub_8022D04
// .extern sub_8022D74
// .extern sub_8022E02
// .extern sub_8022E80
// .extern sub_8022EFC
// .extern sub_8022F08
// .extern sub_8022F20
// .extern sub_8022F4E
// .extern sub_8022F70
// .extern sub_8022F9C
// .extern sub_80230A0
// .extern sub_8023148
// .extern sub_802319C
// .extern sub_8023218
// .extern sub_8023280
// .extern sub_8023300
// .extern sub_802330C
// .extern sub_8023344
// .extern sub_8023370
// .extern sub_8023430
// .extern sub_802351C
// .extern sub_80235E4
// .extern sub_80236C8
// .extern sub_8023850
// .extern sub_80238B0
// .extern sub_80239C8
// .extern sub_8023A48
// .extern sub_8023B08
// .extern ho_8023B80
// .extern sub_8023BF8
// .extern sub_8023CC4
// .extern sub_8023D98
// .extern sub_8023DF4
// .extern sub_8023E50
// .extern sub_8023EB0
// .extern sub_8023EE0
// .extern sub_8023F10
// .extern sub_8023F3C
// .extern sub_8023F8C
// .extern sub_802404C
// .extern sub_802408C
// .extern sub_8024138
// .extern sub_8024194
// .extern sub_8024264
// .extern sub_8024384
// .extern sub_80243FC
// .extern sub_8024474
// .extern sub_802450C
// .extern sub_8024538
// .extern sub_80245AC
// .extern sub_8024684
// .extern sub_80247C4
// .extern sub_8024870
// .extern sub_8024914
// .extern sub_8024A04
// .extern sub_8024AB4
// .extern sub_8024F50
// .extern sub_8024F64
// .extern sub_8024F80
// .extern sub_8024F9C
// .extern sub_8024FA0
// .extern sub_8024FB8
// .extern sub_8024FBC
// .extern sub_8024FF0
// .extern sub_8024FF4
// .extern sub_802500A
// .extern sub_802512A
// .extern sub_8025148
// .extern sub_8025B60
// .extern loc_8025B64
// .extern sub_8025BD8
// .extern sub_8025BF8
// .extern sub_8025C1A
// .extern sub_8025C2A
// .extern sub_8025CDC
// .extern sub_8025CFC
// .extern ho_8025D94
// .extern sub_8025F1E
// .extern sub_8026104
// .extern sub_8026208
// .extern loc_8026460
// .extern sub_8027646
// .extern unk_8027890
// .extern dword_8027CEC
// .extern dword_8027CEC
// .extern off_8029184
// .extern dword_802919C
// .extern ho_8029308
// .extern sub_80297E0
// .extern sub_8029E74
// .extern sub_802BC60
// .extern sub_802BCA4
// .extern sub_802BCE0
// .extern sub_802BCF2
// .extern sub_802CFE4
// .extern sub_802D360
// .extern sub_802D3F8
// .extern sub_802D414
// .extern sub_802D424
// .extern sub_802D684
// .extern loc_802D6BC
// .extern sub_802D92C
// .extern sub_802D938
// .extern sub_802D944
// .extern sub_802D970
// .extern ho_802D9A0
// .extern sub_802DEA4
// .extern sub_802F604
// .extern sub_8034EC0
// .extern sub_8034ED4
// .extern sub_8035044
// .extern sub_80372BC
// .extern sub_8037304
// .extern sub_8037364
// .extern sub_8037404
// .extern sub_803A974
// .extern byte_803A9C4
// .extern sub_803AA54
// .extern sub_803C48E
// .extern dword_80404B0
// .extern sub_8040560
// .extern sub_80405D8
// .extern sub_8042ECC
// .extern sub_8042FA0
// .extern sub_8043104
// .extern sub_8043120
// .extern sub_80431E4
// .extern sub_80437CC
// .extern sub_8043800
// .extern sub_8043E30
// .extern sub_80444FC
// .extern sub_8044798
// .extern sub_80449B8
// .extern sub_80449E8

.include "asm27.inc"
// .extern unk_809D414
// .extern unk_809D474
// .extern sub_809ED84
// .extern sub_809F5C4
// .extern sub_809FFA6
// .extern sub_80A054C
// .extern sub_80A0CE4
// .extern sub_80A1508
// .extern sub_80A2C2E
// .extern sub_80A52AC
// .extern sub_80A5CA0
// .extern sub_80A6D16
// .extern sub_80A6F22
// .extern sub_80A6F54
// .extern sub_80A6F5C
// .extern sub_80A6F76
// .extern sub_80A6FB6
// .extern sub_80A6FC2
// .extern sub_80A7058
// .extern ho_80A8100
// .extern sub_80A907C
// .extern sub_80A90B4

.include "asm01.inc"
// .extern sub_8019010
// .extern sub_8019020
// .extern sub_801904C
// .extern sub_80191E8
// .extern sub_80191FC
// .extern ho_8019288
// .extern sub_8019648

.include "asm04.inc"
// .extern sub_80539A0
// .extern sub_8053A04

.include "asm28.inc"
// .extern sub_80ADDC8
// .extern sub_80ADDDC
// .extern sub_80ADE98
// .extern sub_80AE404
// .extern ho_80AE4C8
// .extern ho_80AE5E8
// .extern loc_80AE6C0
// .extern ho_80AE874
// .extern sub_80AE94C
// .extern ho_cb_80AEEDC
// .extern sub_80AEFA0
// .extern sub_80AF068
// .extern sub_80AF250
// .extern ho_cb_80AF3F2
// .extern sub_80B021A
// .extern sub_80B05E0
// .extern sub_80B0798
// .extern loc_80B0814
// .extern sub_80B0B5C
// .extern sub_80B0CA8
// .extern sub_80B0D5C
// .extern sub_80B0E04
// .extern sub_80B0EE8
// .extern sub_80B0FF0
// .extern sub_80B10CC
// .extern sub_80B1248
// .extern sub_80B132C
// .extern sub_80B1460
// .extern sub_80B1558
// .extern sub_80B1660
// .extern sub_80B16D8
// .extern sub_80B1794
// .extern sub_80B1824
// .extern sub_80B18BC
// .extern sub_80B19C8
// .extern sub_80B1BDC
// .extern sub_80B1CE4
// .extern sub_80B1D84
// .extern loc_80B1E18
// .extern sub_80B20A4
// .extern ho_cb_80B2328
// .extern sub_80B23D8
// .extern sub_80B2640
// .extern sub_80B2934
// .extern sub_80B2B6C
// .extern loc_80B2BF8
// .extern sub_80B3090
// .extern loc_80B321C
// .extern loc_80B335A
// .extern sub_80B3438
// .extern sub_80B34A4
// .extern sub_80B3514
// .extern sub_80B351C
// .extern sub_80B35D0
// .extern sub_80B3C80
// .extern sub_80B4104
// .extern sub_80B5018
// .extern nullsub_67
// .extern sub_80B5C98
// .extern loc_80B621C
// .extern sub_80B656C
// .extern loc_80B68B4
// .extern loc_80B73CC
// .extern loc_80B7738
// .extern loc_80B7DB8
// .extern loc_80B8210
// .extern loc_80B8524
// .extern loc_80B87B0
// .extern loc_80B89C4
// .extern loc_80B8BBC
// .extern loc_80B928E
// .extern loc_80B94D0
// .extern loc_80B9978
// .extern loc_80B9B20
// .extern loc_80BA078
// .extern loc_80BA3D0
// .extern loc_80BA7C0
// .extern loc_80BAD34
// .extern loc_80BAF4C
// .extern loc_80BB11C
// .extern loc_80BB5D0
// .extern sub_80BC080
// .extern loc_80BC398
// .extern loc_80BC9BC
// .extern sub_80BD030
// .extern loc_80BD44C
// .extern loc_80BD95C
// .extern loc_80BE104
// .extern loc_80BE2E8
// .extern loc_80BE804
// .extern loc_80BEAD4
// .extern loc_80BF04C
// .extern loc_80BF5C4
// .extern loc_80BFA58
// .extern loc_80C0360
// .extern loc_80C0F9C
// .extern loc_80C1158
// .extern off_80C11F4
// .extern loc_80C147C
// .extern loc_80C1AA0
// .extern loc_80C26D8
// .extern sub_80C29E4
// .extern loc_80C317C
// .extern loc_80C34A4
// .extern loc_80C373C
// .extern loc_80C3A38
// .extern sub_80C3CCC
// .extern loc_80C3CF0
// .extern loc_80C3EFC
// .extern loc_80C45D4
// .extern loc_80C5860
// .extern loc_80C5AC4
// .extern sub_80C5F3C
// .extern loc_80C5FA4
// .extern loc_80C61B8
// .extern loc_80C6790
// .extern loc_80C6E14
// .extern loc_80C7178
// .extern loc_80C762C
// .extern loc_80C77A8
// .extern sub_80C789C
// .extern loc_80C7C84
// .extern loc_80C8060
// .extern loc_80C8338
// .extern loc_80C8528
// .extern loc_80C8968
// .extern loc_80C8C04
// .extern loc_80C8E00
// .extern loc_80C90E8
// .extern sub_80C91BC
// .extern sub_80C93D8
// .extern sub_80C93EE
// .extern dword_80C9518
// .extern dword_80C9518
// .extern loc_80C9A2C
// .extern loc_80CA404
// .extern loc_80CA6AC
// .extern loc_80CA8F4
// .extern loc_80CAB24
// .extern loc_80CAD00
// .extern loc_80CB03C
// .extern loc_80CB260
// .extern loc_80CB64C
// .extern loc_80CBA80
// .extern loc_80CBBF0
// .extern loc_80CBD80
// .extern loc_80CBF40
// .extern loc_80CC2CC
// .extern sub_80CC4E8
// .extern sub_80CC508
// .extern sub_80CC50E
// .extern loc_80CC518
// .extern loc_80CC620
// .extern loc_80CC830
// .extern loc_80CC9C0
// .extern loc_80CCB90
// .extern sub_80CCE28
// .extern sub_80CCE48
// .extern loc_80CCE50
// .extern loc_80CD074
// .extern sub_80CD16A
// .extern loc_80CD224
// .extern sub_80CD34E
// .extern loc_80CD370
// .extern loc_80CD4EC
// .extern loc_80CD61C
// .extern sub_80CD712
// .extern loc_80CD72C
// .extern loc_80CD8DC
// .extern sub_80CDC54
// .extern loc_80CDDA8
// .extern loc_80CDF94
// .extern loc_80CE1C8
// .extern loc_80CE3C0
// .extern loc_80CE5D0
// .extern loc_80CE730
// .extern loc_80CE964
// .extern loc_80CEDA8
// .extern loc_80CEEC4
// .extern loc_80CF024
// .extern loc_80CF1F0
// .extern sub_80CF310
// .extern loc_80CF4A8
// .extern loc_80CF65C
// .extern sub_80CF924
// .extern sub_80CF946
// .extern loc_80CF968
// .extern sub_80CFAA0
// .extern loc_80CFC38
// .extern loc_80CFD4C
// .extern loc_80CFE70
// .extern loc_80D003E
// .extern loc_80D01E8
// .extern loc_80D044C
// .extern loc_80D07AC
// .extern loc_80D0964
// .extern loc_80D21F4
// .extern sub_80D5640
// .extern loc_80D57DE
// .extern sub_80D5A74
// .extern loc_80D5B40
// .extern loc_80D5CE4
// .extern loc_80D5EE8
// .extern loc_80D6010
// .extern loc_80D6378
// .extern loc_80D6614
// .extern loc_80D67BC
// .extern loc_80D6AE8
// .extern loc_80D6DC4
// .extern loc_80D6FF0
// .extern loc_80D717C
// .extern loc_80D72B8
// .extern loc_80D745C
// .extern loc_80D78A8
// .extern loc_80D7A54
// .extern loc_80D7C84
// .extern loc_80D7FD4
// .extern loc_80D81E8
// .extern loc_80D849A
// .extern loc_80D86A0
// .extern loc_80D8768
// .extern loc_80D88C8
// .extern sub_80D8A8E
// .extern loc_80D8AB8
// .extern loc_80D8BA4
// .extern loc_80D8DEC
// .extern loc_80D8FB8
// .extern loc_80D91C4
// .extern sub_80D9370
// .extern loc_80D94BC
// .extern loc_80D9718
// .extern loc_80D99B8
// .extern loc_80D9B48
// .extern loc_80D9CCC
// .extern loc_80D9E90
// .extern loc_80DA110
// .extern loc_80DA320
// .extern loc_80DA5A4
// .extern loc_80DA754
// .extern loc_80DA980
// .extern loc_80DAB44
// .extern sub_80DAE44
// .extern loc_80DAEAC
// .extern loc_80DAFDC
// .extern sub_80DB14E
// .extern loc_80DB174
// .extern sub_80DB2E8
// .extern sub_80DB430
// .extern sub_80DB5EC
// .extern loc_80DB6D8
// .extern loc_80DBADC
// .extern loc_80DBB90
// .extern loc_80DBC84
// .extern sub_80DBEF6
// .extern loc_80DBF38
// .extern loc_80DC22C
// .extern loc_80DC568
// .extern sub_80DC69C
// .extern loc_80DC994
// .extern loc_80DCB4C
// .extern loc_80DCC98
// .extern loc_80DCF9C
// .extern loc_80DD144
// .extern loc_80DD28C
// .extern loc_80DD428
// .extern sub_80DD62C
// .extern loc_80DD688
// .extern loc_80DD8DC
// .extern loc_80DDA24
// .extern sub_80DDCDE
// .extern loc_80DDEDC
// .extern loc_80DE050
// .extern sub_80DE1C0
// .extern loc_80DE504
// .extern loc_80DE778
// .extern sub_80DE884
// .extern loc_80DEA60
// .extern loc_80DEC50
// .extern loc_80DEEDC
// .extern loc_80DF018
// .extern loc_80DF25C
// .extern loc_80DF3D4
// .extern sub_80DF57C
// .extern loc_80DF6E8
// .extern loc_80DF8A0
// .extern loc_80DF968
// .extern loc_80DFC44
// .extern loc_80DFE7C
// .extern loc_80E007C
// .extern loc_80E0208
// .extern loc_80E0394
// .extern loc_80E04E8
// .extern loc_80E059C
// .extern sub_80E069A
// .extern loc_80E074C
// .extern loc_80E0A36
// .extern loc_80E0BC4
// .extern loc_80E0CFC
// .extern loc_80E0F18
// .extern loc_80E117C
// .extern loc_80E12EC
// .extern sub_80E148C
// .extern loc_80E14B8
// .extern loc_80E1744
// .extern sub_80E17DE
// .extern sub_80E1E22
// .extern sub_80E2030
// .extern sub_80E217E
// .extern sub_80E22A2
// .extern sub_80E2512
// .extern sub_80E32BA
// .extern sub_80E34EC
// .extern sub_80E3762
// .extern sub_80E5316
// .extern sub_80E649A
// .extern sub_80E64B2
// .extern sub_80E67D0
// .extern sub_80E680A
// .extern sub_80E6894
// .extern sub_80E68D0
// .extern sub_80E6D24
// .extern loc_80E711C
// .extern loc_80E71E8
// .extern loc_80E72B4
// .extern loc_80E73B8
// .extern loc_80E75F4
// .extern loc_80E76C0
// .extern loc_80E7890
// .extern loc_80E7AC8
// .extern loc_80E7BB8
// .extern loc_80E7DA8
// .extern loc_80E7E5C
// .extern loc_80E7EEC
// .extern loc_80E7FC4
// .extern loc_80E809C
// .extern loc_80E815C
// .extern loc_80E82D0
// .extern loc_80E836C
// .extern loc_80E840C
// .extern loc_80E8534
// .extern loc_80E865C
// .extern loc_80E8940
// .extern loc_80E89D4
// .extern loc_80E8A80
// .extern loc_80E8B50
// .extern loc_80E8BEC
// .extern loc_80E8D54
// .extern loc_80E8E78
// .extern sub_80E8FA4
// .extern loc_80E90D8
// .extern loc_80E92D4
// .extern loc_80E93A4
// .extern loc_80E94B8
// .extern loc_80E95E4
// .extern loc_80E9710
// .extern loc_80E97B8
// .extern sub_80E9860
// .extern loc_80E9874
// .extern loc_80E9928
// .extern loc_80E99B8
// .extern loc_80E9B08
// .extern loc_80E9CB4
// .extern loc_80E9D84
// .extern loc_80E9F34
// .extern loc_80EA014
// .extern loc_80EA194
// .extern sub_80EA2AE
// .extern loc_80EA2D0
// .extern loc_80EA3A0
// .extern loc_80EA470
// .extern loc_80EA540
// .extern loc_80EA6B0
// .extern loc_80EA7D8
// .extern loc_80EA960
// .extern loc_80EAA30
// .extern nullsub_68
// .extern loc_80EAAD4
// .extern loc_80EAB70
// .extern loc_80EAC2C
// .extern loc_80EACCC
// .extern loc_80EB0B0
// .extern sub_80F2F6C
// .extern sub_80F3EA4
// .extern sub_80F42BC
// .extern sub_80F522C
// .extern sub_80F5628
// .extern sub_80F5C94

.include "asm30.inc"
// .extern sub_810FFF4
// .extern sub_8110A48
// .extern sub_8110A8C
// .extern sub_8111698
// .extern sub_81116AC
// .extern sub_81116B8
// .extern loc_81116E8
// .extern loc_81116EC
// .extern loc_81116F0
// .extern dword_81116FC
// .extern dword_8111700
// .extern dword_8111704
// .extern sub_8111FD4
// .extern sub_8112610
// .extern sub_81126B4
// .extern sub_8112780
// .extern sub_81127E8
// .extern loc_811287C
// .extern sub_81128A4
// .extern sub_811365C

.include "asm22.inc"
// .extern sub_808F45C


/* Undeclared Symbols */
.equ unk_2000000, 0x2000000
.equ dword_200000C, 0x200000C
.equ unk_2000100, 0x2000100
.equ dword_2000180, 0x2000180
.equ unk_2000190, 0x2000190
.equ unk_20001E0, 0x20001E0
.equ unk_2000240, 0x2000240
.equ unk_20003D0, 0x20003D0
.equ byte_20004D0, 0x20004D0
.equ byte_20004D1, 0x20004D1
.equ byte_20004D2, 0x20004D2
.equ byte_20004D3, 0x20004D3
.equ dword_20004D4, 0x20004D4
.equ unk_2000520, 0x2000520
.equ unk_2000670, 0x2000670
.equ unk_20008A0, 0x20008A0
.equ unk_2001460, 0x2001460
.equ unk_20014F0, 0x20014F0
.equ dword_2001550, 0x2001550
.equ dword_2001554, 0x2001554
.equ dword_20015D0, 0x20015D0
.equ dword_20015D4, 0x20015D4
.equ unk_2001610, 0x2001610
.equ unk_2001770, 0x2001770
.equ dword_2001790, 0x2001790
.equ unk_20019A0, 0x20019A0
.equ dword_2001BA0, 0x2001BA0
.equ word_2001BB0, 0x2001BB0
.equ dword_2001E94, 0x2001E94
.equ dword_2001E98, 0x2001E98
.equ unk_2001E9C, 0x2001E9C
.equ unk_2002130, 0x2002130
.equ unk_2006130, 0x2006130
.equ byte_2006140, 0x2006140
.equ byte_2006141, 0x2006141
.equ dword_2006144, 0x2006144
.equ dword_2006148, 0x2006148
.equ byte_200615F, 0x200615F
.equ dword_2006164, 0x2006164
.equ dword_2006168, 0x2006168
.equ dword_200616C, 0x200616C
.equ dword_2006194, 0x2006194
.equ dword_200619C, 0x200619C
.equ dword_20061C0, 0x20061C0
.equ dword_20061CC, 0x20061CC
.equ byte_2006EC0, 0x2006EC0
.equ unk_2006F40, 0x2006F40
.equ word_2006F50, 0x2006F50
.equ unk_2007230, 0x2007230
.equ unk_20073A0, 0x20073A0
.equ word_20073D0, 0x20073D0
.equ byte_2007408, 0x2007408
.equ byte_2007409, 0x2007409
.equ dword_2007808, 0x2007808
.equ dword_2008920, 0x2008920
.equ dword_2008920, 0x2008920
.equ dword_2008920, 0x2008920
.equ dword_2008924, 0x2008924
.equ dword_2008928, 0x2008928
.equ unk_2008930, 0x2008930
.equ dword_2009E40, 0x2009E40
.equ dword_2009E44, 0x2009E44
.equ dword_2009E64, 0x2009E64
.equ s_toolkit, 0x2009E70
.equ byte_2009F50, 0x2009F50
.equ word_2009F52, 0x2009F52
.equ dword_2009F54, 0x2009F54
.equ dword_2009F58, 0x2009F58
.equ byte_2009F64, 0x2009F64
.equ dword_200A120, 0x200A120
.equ dword_200A124, 0x200A124
.equ dword_200A140, 0x200A140
.equ dword_200A140, 0x200A140
.equ dword_200A148, 0x200A148
.equ dword_200A150, 0x200A150
.equ dword_200A154, 0x200A154
.equ dword_200A190, 0x200A190
.equ word_200A220, 0x200A220
.equ byte_200A230, 0x200A230
.equ byte_200A231, 0x200A231
.equ byte_200A232, 0x200A232
.equ dword_200A234, 0x200A234
.equ dword_200A238, 0x200A238
.equ unk_200A380, 0x200A380
.equ byte_200A3C8, 0x200A3C8
.equ unk_200A430, 0x200A430
.equ unk_200A450, 0x200A450
.equ dword_200A4C0, 0x200A4C0
.equ dword_200A4C4, 0x200A4C4
.equ dword_200A4D0, 0x200A4D0
.equ unk_200A500, 0x200A500
.equ dword_200A5FC, 0x200A5FC
.equ byte_200A610, 0x200A610
.equ byte_200A611, 0x200A611
.equ dword_200A614, 0x200A614
.equ dword_200A618, 0x200A618
.equ dword_200A634, 0x200A634
.equ dword_200A638, 0x200A638
.equ dword_200A63C, 0x200A63C
.equ unk_200A6B8, 0x200A6B8
.equ byte_200A6C0, 0x200A6C0
.equ unk_200A700, 0x200A700
.equ byte_200A7A0, 0x200A7A0
.equ byte_200A7A1, 0x200A7A1
.equ byte_200A7A2, 0x200A7A2
.equ byte_200A7A3, 0x200A7A3
.equ word_200A7A4, 0x200A7A4
.equ word_200A7A8, 0x200A7A8
.equ word_200A7AA, 0x200A7AA
.equ dword_200A7B0, 0x200A7B0
.equ dword_200A7B4, 0x200A7B4
.equ word_200A7B8, 0x200A7B8
.equ word_200A7BC, 0x200A7BC
.equ byte_200A7C0, 0x200A7C0
.equ byte_200A7C1, 0x200A7C1
.equ byte_200A7C2, 0x200A7C2
.equ byte_200A7C3, 0x200A7C3
.equ word_200A7C4, 0x200A7C4
.equ word_200A7C8, 0x200A7C8
.equ word_200A7CA, 0x200A7CA
.equ dword_200A7D0, 0x200A7D0
.equ dword_200A7D4, 0x200A7D4
.equ word_200A7D8, 0x200A7D8
.equ word_200A7DC, 0x200A7DC
.equ byte_200A7E0, 0x200A7E0
.equ dword_200A800, 0x200A800
.equ unk_200AA20, 0x200AA20
.equ byte_200AAC0, 0x200AAC0
.equ dword_200AAC4, 0x200AAC4
.equ dword_200AAC8, 0x200AAC8
.equ dword_200AACC, 0x200AACC
.equ byte_200AB10, 0x200AB10
.equ byte_200AB11, 0x200AB11
.equ byte_200AB14, 0x200AB14
.equ byte_200AB15, 0x200AB15
.equ byte_200ACC0, 0x200ACC0
.equ byte_200ACC5, 0x200ACC5
.equ byte_200ACC6, 0x200ACC6
.equ byte_200ACC7, 0x200ACC7
.equ dword_200ACF0, 0x200ACF0
.equ dword_200ACF4, 0x200ACF4
.equ dword_200ACF8, 0x200ACF8
.equ dword_200AE50, 0x200AE50
.equ dword_200B130, 0x200B130
.equ dword_200B134, 0x200B134
.equ dword_200B140, 0x200B140
.equ unk_200B150, 0x200B150
.equ byte_200B1F0, 0x200B1F0
.equ dword_200B208, 0x200B208
.equ byte_200B20C, 0x200B20C
.equ dword_200B210, 0x200B210
.equ byte_200B480, 0x200B480
.equ byte_200B481, 0x200B481
.equ byte_200B482, 0x200B482
.equ byte_200B483, 0x200B483
.equ byte_200B484, 0x200B484
.equ byte_200B485, 0x200B485
.equ byte_200B486, 0x200B486
.equ byte_200B487, 0x200B487
.equ dword_200B488, 0x200B488
.equ dword_200B48C, 0x200B48C
.equ byte_200B820, 0x200B820
.equ byte_200B821, 0x200B821
.equ dword_200B824, 0x200B824
.equ dword_200B828, 0x200B828
.equ dword_200B854, 0x200B854
.equ dword_200B858, 0x200B858
.equ dword_200B85C, 0x200B85C
.equ unk_200CF20, 0x200CF20
.equ dword_200D120, 0x200D120
.equ dword_200D124, 0x200D124
.equ dword_200D128, 0x200D128
.equ dword_200D12C, 0x200D12C
.equ dword_200D130, 0x200D130
.equ byte_200D8E0, 0x200D8E0
.equ dword_200D8EC, 0x200D8EC
.equ byte_200F720, 0x200F720
.equ dword_200F754, 0x200F754
.equ byte_200F770, 0x200F770
.equ byte_200F771, 0x200F771
.equ unk_200F780, 0x200F780
.equ word_200F980, 0x200F980
.equ unk_200FB80, 0x200FB80
.equ unk_200FC00, 0x200FC00
.equ unk_2010780, 0x2010780
.equ dword_2010B80, 0x2010B80
.equ dword_2010B90, 0x2010B90
.equ unk_2010BA0, 0x2010BA0
.equ unk_2010BB0, 0x2010BB0
.equ dword_2010BC0, 0x2010BC0
.equ byte_2010C30, 0x2010C30
.equ unk_20116A0, 0x20116A0
.equ unk_20116E0, 0x20116E0
.equ unk_2011720, 0x2011720
.equ unk_2011760, 0x2011760
.equ unk_20117A0, 0x20117A0
.equ unk_20117E0, 0x20117E0
.equ unk_2011820, 0x2011820
.equ unk_2011860, 0x2011860
.equ unk_20118A0, 0x20118A0
.equ unk_20118E0, 0x20118E0
.equ unk_2011920, 0x2011920
.equ unk_2011960, 0x2011960
.equ unk_20119A0, 0x20119A0
.equ unk_20119E0, 0x20119E0
.equ unk_2011A20, 0x2011A20
.equ unk_2011A60, 0x2011A60
.equ unk_2011AA0, 0x2011AA0
.equ unk_2011AE0, 0x2011AE0
.equ unk_2011B20, 0x2011B20
.equ unk_2011B60, 0x2011B60
.equ unk_2011BA0, 0x2011BA0
.equ unk_2011BE0, 0x2011BE0
.equ unk_2011C20, 0x2011C20
.equ unk_2011C60, 0x2011C60
.equ unk_2011CA0, 0x2011CA0
.equ unk_2011CE0, 0x2011CE0
.equ unk_2011D20, 0x2011D20
.equ unk_2011D60, 0x2011D60
.equ unk_2011DB0, 0x2011DB0
.equ unk_2011DF0, 0x2011DF0
.equ unk_2011E30, 0x2011E30
.equ unk_2011E70, 0x2011E70
.equ word_2014000, 0x2014000
.equ unk_2020404, 0x2020404
.equ word_202A000, 0x202A000
.equ dword_2033000, 0x2033000
.equ dword_2033400, 0x2033400
.equ dword_2033800, 0x2033800
.equ dword_2033C00, 0x2033C00
.equ dword_2034000, 0x2034000
.equ dword_2034400, 0x2034400
.equ dword_2034800, 0x2034800
.equ dword_2034C00, 0x2034C00
.equ dword_2035000, 0x2035000
.equ dword_2035400, 0x2035400
.equ unk_2035800, 0x2035800
.equ unk_2035810, 0x2035810
.equ unk_20358B0, 0x20358B0
.equ unk_2035990, 0x2035990
.equ unk_2035A70, 0x2035A70
.equ unk_2035AB0, 0x2035AB0
.equ unk_2035B20, 0x2035B20
.equ byte_2035B38, 0x2035B38
.equ dword_2035B70, 0x2035B70
.equ unk_2035BE0, 0x2035BE0
.equ byte_2035BF8, 0x2035BF8
.equ dword_2035C30, 0x2035C30
.equ byte_2035CA0, 0x2035CA0
.equ byte_2035CA1, 0x2035CA1
.equ byte_2035CB0, 0x2035CB0
.equ byte_2035D00, 0x2035D00
.equ unk_20360B0, 0x20360B0
.equ unk_20360C0, 0x20360C0
.equ unk_20363D0, 0x20363D0
.equ unk_20363DC, 0x20363DC
.equ unk_20363F0, 0x20363F0
.equ byte_20363F3, 0x20363F3
.equ byte_20363F7, 0x20363F7
.equ byte_20363F8, 0x20363F8
.equ byte_20363FC, 0x20363FC
.equ byte_20363FD, 0x20363FD
.equ byte_20363FE, 0x20363FE
.equ byte_20363FF, 0x20363FF
.equ byte_2036405, 0x2036405
.equ byte_2036406, 0x2036406
.equ byte_2036407, 0x2036407
.equ byte_2036408, 0x2036408
.equ byte_203640A, 0x203640A
.equ byte_203640B, 0x203640B
.equ byte_203640C, 0x203640C
.equ byte_203640D, 0x203640D
.equ byte_203640E, 0x203640E
.equ word_2036412, 0x2036412
.equ word_2036414, 0x2036414
.equ word_2036416, 0x2036416
.equ word_2036418, 0x2036418
.equ word_203641A, 0x203641A
.equ dword_203641C, 0x203641C
.equ dword_2036430, 0x2036430
.equ dword_2036438, 0x2036438
.equ dword_203643C, 0x203643C
.equ byte_20364A8, 0x20364A8
.equ dword_20364AC, 0x20364AC
.equ unk_20374B0, 0x20374B0
.equ word_20374DC, 0x20374DC
.equ unk_2037660, 0x2037660
.equ word_203768C, 0x203768C
.equ dword_2037810, 0x2037810
.equ dword_2037814, 0x2037814
.equ byte_2037A10, 0x2037A10
.equ unk_2037A60, 0x2037A60
.equ unk_2037A90, 0x2037A90
.equ byte_2037AB0, 0x2037AB0
.equ byte_2037AB2, 0x2037AB2
.equ byte_2037AB3, 0x2037AB3
.equ byte_2037AB4, 0x2037AB4
.equ byte_2037AB5, 0x2037AB5
.equ byte_2037AB6, 0x2037AB6
.equ byte_2037AB7, 0x2037AB7
.equ byte_2037AB8, 0x2037AB8
.equ byte_2037AB9, 0x2037AB9
.equ byte_2037ABA, 0x2037ABA
.equ byte_2037ABB, 0x2037ABB
.equ byte_2037ABC, 0x2037ABC
.equ byte_2037ABD, 0x2037ABD
.equ unk_2037B90, 0x2037B90
.equ word_2037BC0, 0x2037BC0
.equ byte_2037BC2, 0x2037BC2
.equ dword_2037BC4, 0x2037BC4
.equ byte_2037BC8, 0x2037BC8
.equ word_2037BCA, 0x2037BCA
.equ word_2037BCC, 0x2037BCC
.equ word_2037BCE, 0x2037BCE
.equ byte_2037BD0, 0x2037BD0
.equ byte_2037BD1, 0x2037BD1
.equ word_2037BD2, 0x2037BD2
.equ word_2037BD4, 0x2037BD4
.equ dword_2037BD8, 0x2037BD8
.equ unk_2037BE0, 0x2037BE0
.equ unk_2037C0C, 0x2037C0C
.equ dword_2037C40, 0x2037C40
.equ dword_2037C44, 0x2037C44
.equ dword_2037C48, 0x2037C48
.equ dword_2037C4C, 0x2037C4C
.equ byte_2037C50, 0x2037C50
.equ unk_2037C60, 0x2037C60
.equ unk_2037C70, 0x2037C70
.equ unk_2037C80, 0x2037C80
.equ unk_2037CAC, 0x2037CAC
.equ dword_2037CE0, 0x2037CE0
.equ dword_2037CE0, 0x2037CE0
.equ dword_2037CE0, 0x2037CE0
.equ dword_2037CE0, 0x2037CE0
.equ dword_2037CE4, 0x2037CE4
.equ dword_2037CE4, 0x2037CE4
.equ dword_2037CE4, 0x2037CE4
.equ byte_2037CE8, 0x2037CE8
.equ byte_2037CE9, 0x2037CE9
.equ byte_2037CF0, 0x2037CF0
.equ byte_2037CF6, 0x2037CF6
.equ byte_2037CF7, 0x2037CF7
.equ byte_2037D10, 0x2037D10
.equ dword_2037DB4, 0x2037DB4
.equ byte_2039600, 0x2039600
.equ byte_2039780, 0x2039780
.equ byte_2039900, 0x2039900
.equ dword_2039910, 0x2039910
.equ unk_2039A10, 0x2039A10
.equ word_203AC10, 0x203AC10
.equ byte_203AC12, 0x203AC12
.equ dword_203AC14, 0x203AC14
.equ byte_203AC18, 0x203AC18
.equ word_203AC1A, 0x203AC1A
.equ word_203AC20, 0x203AC20
.equ byte_203AC22, 0x203AC22
.equ dword_203AC24, 0x203AC24
.equ byte_203AC28, 0x203AC28
.equ word_203AC2A, 0x203AC2A
.equ byte_203AC70, 0x203AC70
.equ byte_203AC71, 0x203AC71
.equ word_203AC7C, 0x203AC7C
.equ word_203AC7E, 0x203AC7E
.equ word_203AC82, 0x203AC82
.equ byte_203AD90, 0x203AD90
.equ unk_203B170, 0x203B170
.equ byte_203B180, 0x203B180
.equ byte_203B830, 0x203B830
.equ unk_203B850, 0x203B850
.equ byte_203BCB0, 0x203BCB0
.equ byte_203BCB4, 0x203BCB4
.equ word_203BCBA, 0x203BCBA
.equ unk_203BCC0, 0x203BCC0
.equ unk_203BD00, 0x203BD00
.equ dword_203BD40, 0x203BD40
.equ dword_203BD44, 0x203BD44
.equ dword_203BD48, 0x203BD48
.equ unk_203BD50, 0x203BD50
.equ byte_203BD76, 0x203BD76
.equ unk_203BD94, 0x203BD94
.equ dword_203BDF4, 0x203BDF4
.equ dword_203BDF8, 0x203BDF8
.equ dword_203BE40, 0x203BE40
.equ dword_203BE44, 0x203BE44
.equ dword_203BE48, 0x203BE48
.equ dword_203BE4C, 0x203BE4C
.equ dword_203BE70, 0x203BE70
.equ dword_203BE74, 0x203BE74
.equ dword_203BE78, 0x203BE78
.equ dword_203BE7C, 0x203BE7C
.equ word_203BE80, 0x203BE80
.equ unk_203BEC0, 0x203BEC0
.equ unk_203BF00, 0x203BF00
.equ unk_203BF40, 0x203BF40
.equ unk_203BF44, 0x203BF44
.equ unk_203BF58, 0x203BF58
.equ unk_203BF60, 0x203BF60
.equ dword_203BF88, 0x203BF88
.equ unk_203BF90, 0x203BF90
.equ unk_203C030, 0x203C030
.equ unk_203C070, 0x203C070
.equ byte_203C080, 0x203C080
.equ word_203DB70, 0x203DB70
.equ unk_203DC80, 0x203DC80
.equ byte_203DC90, 0x203DC90
.equ byte_203DC91, 0x203DC91
.equ word_203DC92, 0x203DC92
.equ dword_203DC94, 0x203DC94
.equ dword_203DC98, 0x203DC98
.equ dword_203DC9C, 0x203DC9C
.equ dword_203DCA0, 0x203DCA0
.equ unk_203DCCC, 0x203DCCC
.equ unk_203DCD0, 0x203DCD0
.equ unk_203DF10, 0x203DF10
.equ dword_203E390, 0x203E390
.equ dword_203E394, 0x203E394
.equ dword_203E394, 0x203E394
.equ unk_203E39C, 0x203E39C
.equ unk_203E3A0, 0x203E3A0
.equ unk_203E3DC, 0x203E3DC
.equ unk_203E3E4, 0x203E3E4
.equ unk_203E408, 0x203E408
.equ unk_203E434, 0x203E434
.equ dword_203E444, 0x203E444
.equ dword_203E448, 0x203E448
.equ dword_203E490, 0x203E490
.equ byte_203E494, 0x203E494
.equ byte_203E495, 0x203E495
.equ unk_203E49C, 0x203E49C
.equ unk_203E4A0, 0x203E4A0
.equ unk_203E4DC, 0x203E4DC
.equ unk_203E4E4, 0x203E4E4
.equ unk_203E508, 0x203E508
.equ unk_203E534, 0x203E534
.equ dword_203E544, 0x203E544
.equ dword_203E548, 0x203E548
.equ unk_203E590, 0x203E590
.equ byte_203F6D0, 0x203F6D0
.equ dword_203F6D4, 0x203F6D4
.equ dword_203F6D4, 0x203F6D4
.equ dword_203F6D4, 0x203F6D4
.equ dword_203F6D4, 0x203F6D4
.equ unk_203F6E0, 0x203F6E0
.equ unk_203F6F0, 0x203F6F0
.equ unk_3000000, 0x3000000
.equ dword_3002038, 0x3002038
.equ unk_3002640, 0x3002640
.equ word_3002780, 0x3002780
.equ unk_30027A0, 0x30027A0
.equ unk_30027C0, 0x30027C0
.equ unk_30027E0, 0x30027E0
.equ unk_3002800, 0x3002800
.equ unk_3002820, 0x3002820
.equ unk_3002840, 0x3002840
.equ word_3002A50, 0x3002A50
.equ unk_3002A70, 0x3002A70
.equ unk_3002AB0, 0x3002AB0
.equ unk_3002AD0, 0x3002AD0
.equ unk_3002AF0, 0x3002AF0
.equ unk_3002B30, 0x3002B30
.equ unk_3002B50, 0x3002B50
.equ unk_3002B70, 0x3002B70
.equ unk_3002BF0, 0x3002BF0
.equ unk_3002C30, 0x3002C30
.equ unk_3002C50, 0x3002C50
.equ dword_3003260, 0x3003260
.equ dword_3003264, 0x3003264
.equ dword_3003268, 0x3003268
.equ dword_300326C, 0x300326C
.equ sub_30059E8, 0x30059E8
.equ loc_3005A22, 0x3005A22
.equ loc_3005A5C, 0x3005A5C
.equ loc_3005A92, 0x3005A92
.equ loc_3005AC8, 0x3005AC8
.equ loc_3005C00, 0x3005C00
.equ loc_3005DC0, 0x3005DC0
.equ loc_300602C, 0x300602C
.equ loc_300632C, 0x300632C
.equ loc_3006376, 0x3006376
.equ sub_3006FA4, 0x3006FA4
.equ LCDControl, 0x4000000
.equ VerticalCounter_LY_, 0x4000006
.equ BG0Control, 0x4000008
.equ Window0HorizontalDimensions, 0x4000040
.equ MosaicSize, 0x400004C
.equ ColorSpecialEffectsSelection, 0x4000050
.equ Brightness_Fade_In_Out_Coefficient, 0x4000054
.equ DMA0SourceAddress, 0x40000B0
.equ DMA0WordCount, 0x40000B8
.equ DMA1SourceAddress, 0x40000BC
.equ DMA1WordCount, 0x40000C4
.equ DMA2SourceAddress, 0x40000C8
.equ DMA2WordCount, 0x40000D0
.equ DMA3SourceAddress, 0x40000D4
.equ DMA3WordCount, 0x40000DC
.equ dword_8017C08, 0x8017C08
.equ dword_8017ED8, 0x8017ED8
.equ dword_8017FA8, 0x8017FA8
.equ dword_8017FC8, 0x8017FC8
.equ dword_8017FE8, 0x8017FE8
.equ dword_8017FF8, 0x8017FF8
.equ dword_8018430, 0x8018430
.equ dword_8018470, 0x8018470
.equ off_8018490, 0x8018490
.equ dword_8018520, 0x8018520
.equ dword_8018550, 0x8018550
.equ dword_801867C, 0x801867C
.equ dword_80FA7D4, 0x80FA7D4
.equ dword_80FC00C, 0x80FC00C
.equ dword_82212BC, 0x82212BC
.equ off_82A07D0, 0x82A07D0
.equ unk_82B04B0, 0x82B04B0
.equ unk_82B05DC, 0x82B05DC
.equ off_82B0708, 0x82B0708
.equ dword_83A012C, 0x83A012C
.equ dword_83B0190, 0x83B0190
.equ dword_8410000, 0x8410000
.equ dword_84B5478, 0x84B5478
.equ dword_868E224, 0x868E224
.equ dword_86900A4, 0x86900A4
.equ dword_8694A24, 0x8694A24
.equ dword_8702300, 0x8702300
.equ byte_87042E0, 0x87042E0
.equ dword_8704BE0, 0x8704BE0
.equ dword_8704C00, 0x8704C00
.equ dword_8704C40, 0x8704C40
.equ dword_8704C60, 0x8704C60
.equ dword_8704C80, 0x8704C80
.equ dword_8704CA0, 0x8704CA0
.equ dword_8704CC0, 0x8704CC0
.equ dword_8704CE0, 0x8704CE0
.equ dword_8704D00, 0x8704D00
.equ dword_8704D20, 0x8704D20
.equ dword_8704D40, 0x8704D40
.equ dword_8704D60, 0x8704D60
.equ dword_8704D80, 0x8704D80
.equ dword_8704DA0, 0x8704DA0
.equ dword_8704DC0, 0x8704DC0
.equ dword_8704DE0, 0x8704DE0
.equ dword_8704E00, 0x8704E00
.equ dword_8704E40, 0x8704E40
.equ dword_8704E60, 0x8704E60
.equ dword_8704E80, 0x8704E80
.equ dword_8704EA0, 0x8704EA0
.equ dword_8704EC0, 0x8704EC0
.equ dword_8704EE0, 0x8704EE0
.equ dword_8704F00, 0x8704F00
.equ dword_8704F20, 0x8704F20
.equ dword_8704F40, 0x8704F40
.equ dword_8704F60, 0x8704F60
.equ dword_8704F80, 0x8704F80
.equ dword_8704FA0, 0x8704FA0
.equ dword_8704FC0, 0x8704FC0
.equ dword_8704FE0, 0x8704FE0
.equ dword_8705000, 0x8705000
.equ dword_8705060, 0x8705060
.equ dword_87050A0, 0x87050A0
.equ dword_87050C0, 0x87050C0
.equ dword_87050E0, 0x87050E0
.equ dword_8705120, 0x8705120
.equ dword_8705140, 0x8705140
.equ dword_8705160, 0x8705160
.equ dword_8705220, 0x8705220
.equ dword_8705260, 0x8705260
.equ dword_87052A0, 0x87052A0
.equ dword_87052E0, 0x87052E0
.equ dword_8705320, 0x8705320
.equ dword_8705360, 0x8705360
.equ dword_87053A0, 0x87053A0
.equ dword_87053E0, 0x87053E0
.equ dword_8705420, 0x8705420
.equ dword_8705460, 0x8705460
.equ dword_87054A0, 0x87054A0
.equ dword_8705BC0, 0x8705BC0
.equ dword_8705C00, 0x8705C00
.equ dword_8705C40, 0x8705C40
.equ dword_8705C80, 0x8705C80
.equ dword_8705CC0, 0x8705CC0
.equ dword_8705D00, 0x8705D00
.equ dword_8705D40, 0x8705D40
.equ dword_8705D80, 0x8705D80
.equ dword_8705DC0, 0x8705DC0
.equ dword_8705E00, 0x8705E00
.equ dword_8705E80, 0x8705E80
.equ dword_8705F00, 0x8705F00
.equ dword_8705F60, 0x8705F60
.equ dword_8707F20, 0x8707F20
.equ dword_87082A0, 0x87082A0
.equ dword_8708360, 0x8708360
.equ dword_8708460, 0x8708460
.equ dword_87085E0, 0x87085E0
.equ dword_8708760, 0x8708760
.equ dword_87088E0, 0x87088E0
.equ dword_8708A60, 0x8708A60
.equ dword_8708AA0, 0x8708AA0
.equ dword_8708AC0, 0x8708AC0
.equ dword_8708E20, 0x8708E20
.equ dword_87095A0, 0x87095A0
.equ dword_8709BA0, 0x8709BA0
.equ dword_8709EA0, 0x8709EA0
.equ dword_870A800, 0x870A800
.equ loc_8745CF8, 0x8745CF8
.equ byte_8746D90, 0x8746D90
.equ a1CluGpy, 0x8746E04
.equ unk_8748110, 0x8748110
.equ unk_87496AC, 0x87496AC
.equ unk_8749B60, 0x8749B60
.equ dword_874D3C8, 0x874D3C8
.equ dword_874D408, 0x874D408
.equ dword_874D4C8, 0x874D4C8
.equ dword_874D688, 0x874D688
.equ dword_874D808, 0x874D808
.equ dword_874D848, 0x874D848
.equ unk_874D888, 0x874D888
.equ dword_874DA48, 0x874DA48
.equ dword_874DA88, 0x874DA88
.equ dword_874DAC8, 0x874DAC8
.equ dword_874DB08, 0x874DB08
.equ dword_874DE08, 0x874DE08
.equ dword_874DE48, 0x874DE48
.equ dword_874DE88, 0x874DE88
.equ dword_874DEC8, 0x874DEC8
.equ dword_874DF08, 0x874DF08
.equ dword_874DF48, 0x874DF48
.equ dword_874DF88, 0x874DF88
.equ dword_874DFC8, 0x874DFC8
.equ dword_874E008, 0x874E008
.equ dword_874E048, 0x874E048
.equ dword_874E088, 0x874E088
.equ dword_874E248, 0x874E248
.equ dword_874E688, 0x874E688
.equ dword_874E6C8, 0x874E6C8
.equ dword_8753658, 0x8753658
.equ dword_8753B14, 0x8753B14

.endif // INC_ASM00
