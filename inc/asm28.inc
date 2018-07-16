.ifndef INC_ASM28
.equ INC_ASM28, 0

/* Public Interface */
.extern sub_80ADDC8
.extern sub_80ADDDC
.extern sub_80ADE98
.extern sub_80ADFBC
.extern sub_80AE02C
.extern locret_80AE962
.extern sub_80AFDC6
.extern sub_80B038C
.extern sub_80B0748
.extern sub_80B0B38
.extern sub_80B1DFE
.extern sub_80B656C
.extern loc_80C0F9C
.extern loc_80C1008
.extern off_80C11F4
.extern sub_80C3CCC
.extern sub_80C5F3C
.extern sub_80C789C
.extern sub_80C91BC
.extern sub_80C93D8
.extern sub_80C93EE
.extern sub_80CC4E8
.extern sub_80CC508
.extern sub_80CC50E
.extern sub_80CCE28
.extern sub_80CCE48
.extern sub_80CD16A
.extern sub_80CD34E
.extern sub_80CD712
.extern sub_80CF924
.extern sub_80CF946
.extern off_80CFF24
.extern loc_80D21F4
.extern sub_80D8A8E
.extern sub_80DB14E
.extern sub_80DBEF6
.extern locret_80DCA76
.extern sub_80DD62C
.extern sub_80E069A
.extern sub_80E148C
.extern sub_80E17DE
.extern sub_80E1E22
.extern sub_80E2030
.extern sub_80E217E
.extern sub_80E22A2
.extern sub_80E2512
.extern sub_80E32BA
.extern sub_80E34EC
.extern sub_80E3762
.extern sub_80E3B3C
.extern sub_80E4C78
.extern sub_80E5316
.extern sub_80E649A
.extern sub_80E64B2
.extern loc_80E6664
.extern sub_80E67D0
.extern sub_80E680A
.extern sub_80E6894
.extern sub_80E68D0
.extern sub_80E6D24
.extern sub_80E9860
.extern sub_80EA2AE
.extern loc_80EB0B0
.extern loc_80EC58E
.extern loc_80F0804
.extern sub_80F2F6C
.extern sub_80F3EA4
.extern sub_80F42BC
.extern sub_80F522C
.extern sub_80F5304
.extern sub_80F5628
.extern sub_80F5698
.extern sub_80F5944
.extern sub_80F5C94
.extern sub_80F5CB0


/* External Symbols */
.include "start.inc"
// .extern start_
// .extern dword_8000004

.include "asm18.inc"
// .extern sub_808547C

.include "asm02.inc"
// .extern sub_801DB04
// .extern ho_801E02C
// .extern off_8022034
// .extern sub_8022182
// .extern sub_80221CC
// .extern sub_8022208
// .extern sub_8022802
// .extern sub_8022830
// .extern sub_8022AFA
// .extern loc_8022B1C
// .extern ho_8022B58
// .extern sub_8022C26
// .extern sub_8022CBC
// .extern sub_8022CDE
// .extern sub_8022D10
// .extern sub_8022D3C
// .extern sub_8022D90
// .extern sub_8022F20
// .extern sub_8022F32
// .extern sub_8022F4E
// .extern sub_8024F9C
// .extern sub_8024FA0
// .extern sub_8024FB8
// .extern sub_8024FBC
// .extern sub_8024FF0
// .extern sub_8024FF4
// .extern sub_8025BD8
// .extern sub_8025FE0
// .extern ho_802724E
// .extern ho_802747C
// .extern sub_8029ECA
// .extern sub_802BC60
// .extern sub_802BCF2
// .extern sub_8034F14
// .extern sub_80405D8
// .extern sub_8042F1C
// .extern sub_80449E8

.include "asm27.inc"
// .extern sub_809F280
// .extern sub_809F2B4
// .extern sub_80A20DC
// .extern sub_80A2170
// .extern sub_80A2934
// .extern sub_80A4D20
// .extern sub_80A6DB8
// .extern loc_80A6E0C
// .extern sub_80A6E88
// .extern sub_80A6ED0
// .extern sub_80A6FB6
// .extern sub_80A8ECE
// .extern sub_80A9074
// .extern off_80A914C

.include "asm10.inc"
// .extern dword_8070598

.include "asm29.inc"
// .extern sub_80F8944

.include "asm01.inc"
// .extern sub_8019010
// .extern sub_80190BA
// .extern sub_8019122

.include "asm04.inc"
// .extern sub_80539A0
// .extern sub_80540C6

.include "asm25.inc"
// .extern dword_8097370

.include "asm00.inc"
// .extern f500_8000558
// .extern loc_8000870
// .extern loc_8000874
// .extern f800_80008EC
// .extern f900_8000910
// .extern f900_8000930
// .extern f900_8000950
// .extern f900_800097A
// .extern f900_800098C
// .extern f900_80009DC
// .extern fA00_8000A30
// .extern fA00_8000AA2
// .extern fA00_8000C3C
// .extern fA00_8000C44
// .extern fA00_8000C62
// .extern sub_8000C98
// .extern sub_8001740
// .extern sub_8001788
// .extern sub_8001814
// .extern sub_800188E
// .extern sub_8001936
// .extern sub_8001988
// .extern sub_8001994
// .extern sub_80019A0
// .extern sub_80019B0
// .extern sub_8001AE0
// .extern sub_8001AF6
// .extern sub_8002504
// .extern sub_8002526
// .extern sub_800281C
// .extern sub_800283C
// .extern sub_800285C
// .extern sub_8002B86
// .extern sub_8002CC6
// .extern loc_8002CCA
// .extern sub_8002D1A
// .extern sub_8002D2C
// .extern sub_8002DCC
// .extern sub_8002DD8
// .extern sub_8002DF0
// .extern sub_8002DFC
// .extern loc_8002E00
// .extern sub_8002E14
// .extern sub_8002E24
// .extern sub_8002E36
// .extern sub_8002E50
// .extern sub_8002E60
// .extern sub_8002E76
// .extern sub_8002E8C
// .extern sub_8002EDE
// .extern sub_8002F02
// .extern sub_8002F0E
// .extern sub_8002F28
// .extern loc_8002F34
// .extern sub_8002F70
// .extern loc_8002F8E
// .extern sub_8002FB0
// .extern sub_8002FC2
// .extern sub_8002FD8
// .extern sub_8002FF0
// .extern sub_8003006
// .extern sub_8003038
// .extern sub_800305C
// .extern sub_8003298
// .extern sub_80032D0
// .extern sub_80032EC
// .extern sub_8003324
// .extern sub_80033B4
// .extern sub_8003558
// .extern sub_80035C0
// .extern sub_8004440
// .extern sub_800447A
// .extern sub_8005ADC
// .extern sub_8005B5C
// .extern word_8005D78
// .extern word_8005DF8
// .extern sub_8006084
// .extern sub_800609C
// .extern sub_8007880
// .extern sub_80078C4
// .extern sub_8007920
// .extern sub_80079AE
// .extern sub_80079EA
// .extern sub_8007A4C
// .extern sub_8007A58
// .extern sub_8007A64
// .extern sub_8007BB4
// .extern sub_8007BF0
// .extern sub_8007C0E
// .extern sub_8007D90
// .extern sub_8007E16
// .extern sub_8007E1E
// .extern sub_8007EBC
// .extern sub_8007ECA
// .extern sub_8007ED4
// .extern sub_8007EEC
// .extern sub_8007F16
// .extern sub_8007F6A
// .extern sub_8007F84
// .extern sub_8007FFA
// .extern sub_8008004
// .extern sub_800812C
// .extern sub_8008378
// .extern sub_80083B8
// .extern sub_80083F4
// .extern sub_8008BA4
// .extern sub_8008BC4
// .extern sub_8008BF6
// .extern sub_8008CC2
// .extern sub_8008DAC
// .extern sub_8008E84
// .extern sub_8008EBA
// .extern sub_8008F2C
// .extern sub_8009084
// .extern sub_80090CA
// .extern sub_8009A52
// .extern sub_8009A88
// .extern sub_8009AB8
// .extern sub_8009B1C
// .extern sub_8009B78
// .extern sub_8009BBC
// .extern sub_8009C18
// .extern sub_8009C78
// .extern sub_8009CD0
// .extern sub_8009D34
// .extern sub_8009D6C
// .extern sub_8009D90
// .extern sub_8009DCC
// .extern sub_8009DEE
// .extern sub_8009E04
// .extern sub_8009E28
// .extern sub_8009E40
// .extern sub_8009E58
// .extern sub_8009E64
// .extern sub_8009E78
// .extern sub_8009E98
// .extern sub_8009EA4
// .extern sub_8009EB0
// .extern sub_8009EC2
// .extern sub_8009F0C
// .extern sub_8009F90
// .extern sub_8009FCC
// .extern sub_8009FFC
// .extern sub_800A06E
// .extern sub_800A0A4
// .extern sub_800A0DA
// .extern sub_800A146
// .extern sub_800A15E
// .extern sub_800A17A
// .extern sub_800A1B0
// .extern sub_800A210
// .extern sub_800A28C
// .extern sub_800A2B0
// .extern sub_800AAE0
// .extern sub_800AAEC
// .extern sub_800AB0A
// .extern sub_800AB30
// .extern sub_800AB40
// .extern sub_800AB54
// .extern loc_800AB56
// .extern sub_800AB5E
// .extern sub_800AB86
// .extern sub_800AB96
// .extern sub_800ABEC
// .extern sub_800AC72
// .extern sub_800ACF6
// .extern sub_800AD20
// .extern sub_800AD4A
// .extern sub_800ADDC
// .extern sub_800ADFC
// .extern sub_800AF7C
// .extern sub_800AF88
// .extern sub_800AFA6
// .extern sub_800AFC2
// .extern sub_800AFE4
// .extern sub_800AFF2
// .extern sub_800B096
// .extern sub_800B0C2
// .extern sub_800B1FC
// .extern sub_800B23E
// .extern sub_800B25A
// .extern sub_800B28E
// .extern sub_800B2A8
// .extern sub_800B3B4
// .extern sub_800B418
// .extern sub_800B47C
// .extern sub_800B520
// .extern sub_800B55C
// .extern sub_800B5A6
// .extern sub_800B6A8
// .extern sub_800B6F8
// .extern sub_800B778
// .extern sub_800B7B4
// .extern ho_800B7DE
// .extern sub_800B8AE
// .extern sub_800B8D6
// .extern sub_800B908
// .extern sub_800B91C
// .extern sub_800B95C
// .extern sub_800BA32
// .extern sub_800BD0C
// .extern sub_800BD6E
// .extern sub_800BF84
// .extern sub_800BF94
// .extern sub_800BFAE
// .extern sub_800BFB8
// .extern sub_800BFC2
// .extern sub_800C052
// .extern sub_800C05E
// .extern sub_800C0EA
// .extern sub_800C100
// .extern sub_800C19A
// .extern sub_800C1AC
// .extern sub_800C1B6
// .extern sub_800C1CC
// .extern sub_800C3C0
// .extern sub_800C41A
// .extern sub_800C5AA
// .extern sub_800C67C
// .extern sub_800C740
// .extern sub_800C794
// .extern sub_800C7F4
// .extern sub_800C874
// .extern sub_800C960
// .extern sub_800C96E
// .extern ho_800C986
// .extern ho_800C99C
// .extern sub_800C9B0
// .extern sub_800C9DC
// .extern sub_800C9FE
// .extern sub_800CA14
// .extern sub_800D3E2
// .extern sub_800D436
// .extern sub_800D6F2
// .extern sub_800D706
// .extern sub_800D722
// .extern sub_800D742
// .extern sub_800D75A
// .extern sub_800D77A
// .extern sub_800D7CE
// .extern sub_800D93A
// .extern sub_800D9D6
// .extern ho_800DF7C
// .extern ho_800E00C
// .extern sub_800E21E
// .extern sub_800E2D8
// .extern sub_800E4A8
// .extern sub_800E806
// .extern sub_800E98A
// .extern sub_800EA70
// .extern sub_800EB30
// .extern sub_800EB38
// .extern sub_800EB54
// .extern sub_800ECF2
// .extern sub_800EDDA
// .extern ho_800F340
// .extern sub_800F42C
// .extern sub_800F448
// .extern sub_800F48A
// .extern sub_800F4CA
// .extern sub_800F552
// .extern sub_800F6E0
// .extern sub_800F7E8
// .extern sub_800F858
// .extern sub_800F8AE
// .extern sub_800FA7C
// .extern sub_800FAA2
// .extern sub_800FAE8
// .extern sub_800FBF4
// .extern sub_800FC58
// .extern sub_80100E6
// .extern sub_80100F8
// .extern ho_cb_801018A
// .extern nullsub_59
// .extern sub_8010458
// .extern sub_80104D8
// .extern sub_801050C
// .extern sub_801051A
// .extern sub_8010568
// .extern sub_80106E2
// .extern sub_8010748
// .extern sub_80107F4
// .extern ho_cb_80107FC
// .extern sub_8010904
// .extern sub_801090C
// .extern sub_80109A6
// .extern sub_8010A34
// .extern sub_8010A48
// .extern sub_8010CDC
// .extern sub_8010CF8
// .extern sub_8010DA4
// .extern sub_8010E34
// .extern sub_8010EB4
// .extern sub_8010F0C
// .extern sub_8010F52
// .extern ho_8010F5A
// .extern sub_8011270
// .extern sub_80113E8
// .extern sub_8011824
// .extern sub_8012442
// .extern sub_8012474
// .extern off_801255C
// .extern dword_8012568
// .extern sub_8012832
// .extern sub_8012838
// .extern sub_8012958
// .extern sub_80129A8
// .extern sub_8012D16
// .extern sub_8012D4E
// .extern sub_8012D66
// .extern sub_8012D74
// .extern sub_8012D7C
// .extern sub_8012D82
// .extern sub_8012E84
// .extern sub_8012EF8
// .extern sub_8012F28
// .extern sub_8012F2E
// .extern sub_8012F36
// .extern sub_8012F40
// .extern sub_8012F4A
// .extern sub_8012F50
// .extern sub_8013052
// .extern sub_80131BA
// .extern sub_80131C0
// .extern sub_80131DC
// .extern sub_80133E4
// .extern sub_8013508
// .extern sub_8013548
// .extern sub_8013604
// .extern sub_80136EA
// .extern sub_801375C
// .extern sub_80137F8
// .extern sub_80138DE
// .extern sub_8013940
// .extern sub_8013978
// .extern sub_80139E8
// .extern sub_8013BE8
// .extern sub_8013D54
// .extern sub_8013EDE
// .extern sub_8013FF8
// .extern sub_801410C
// .extern sub_801421A
// .extern sub_8014348
// .extern sub_801436A
// .extern sub_801439C
// .extern sub_80143E6
// .extern sub_801441A
// .extern sub_801445C
// .extern sub_801449E
// .extern sub_80144C8
// .extern sub_801451E
// .extern sub_80145C0
// .extern sub_80145E6
// .extern sub_801460A
// .extern sub_8015A18
// .extern sub_8015A50
// .extern sub_8015AFA
// .extern sub_8015DCC
// .extern sub_8016394
// .extern sub_80163A8
// .extern sub_80163F8
// .extern sub_8016408
// .extern sub_8016714
// .extern sub_801680C

.include "asm30.inc"
// .extern loc_81116F4


/* Undeclared Symbols */
.equ unk_2000000, 0x2000000
.equ unk_20001B0, 0x20001B0
.equ unk_20005E0, 0x20005E0
.equ byte_2006140, 0x2006140
.equ dword_2009440, 0x2009440
.equ word_200A220, 0x200A220
.equ byte_200A224, 0x200A224
.equ unk_200AA20, 0x200AA20
.equ byte_200AA28, 0x200AA28
.equ byte_200AA2A, 0x200AA2A
.equ byte_200AA2B, 0x200AA2B
.equ dword_200AA84, 0x200AA84
.equ dword_200AA88, 0x200AA88
.equ dword_200AA8C, 0x200AA8C
.equ dword_200AA90, 0x200AA90
.equ dword_200AA94, 0x200AA94
.equ dword_200AA98, 0x200AA98
.equ dword_200AAB0, 0x200AAB0
.equ dword_200AAB4, 0x200AAB4
.equ dword_200AAB8, 0x200AAB8
.equ dword_200AABC, 0x200AABC
.equ byte_200AAC0, 0x200AAC0
.equ dword_200AACC, 0x200AACC
.equ dword_200AB24, 0x200AB24
.equ word_200F980, 0x200F980
.equ byte_200F982, 0x200F982
.equ dword_200F984, 0x200F984
.equ dword_200F988, 0x200F988
.equ dword_200F98C, 0x200F98C
.equ unk_2010000, 0x2010000
.equ unk_2010008, 0x2010008
.equ unk_2010100, 0x2010100
.equ unk_2010B98, 0x2010B98
.equ word_2010B9C, 0x2010B9C
.equ byte_2010BA8, 0x2010BA8
.equ byte_2010BA9, 0x2010BA9
.equ word_2010BAA, 0x2010BAA
.equ word_2010BAC, 0x2010BAC
.equ word_2010BAE, 0x2010BAE
.equ dword_2010BC0, 0x2010BC0
.equ dword_2010BC0, 0x2010BC0
.equ dword_2010BC0, 0x2010BC0
.equ dword_2010BC0, 0x2010BC0
.equ byte_2010BC4, 0x2010BC4
.equ byte_2010BC5, 0x2010BC5
.equ byte_2010BC6, 0x2010BC6
.equ byte_2010BC7, 0x2010BC7
.equ byte_2010BC8, 0x2010BC8
.equ byte_2010BC9, 0x2010BC9
.equ byte_2010BCA, 0x2010BCA
.equ byte_2010C40, 0x2010C40
.equ unk_2020014, 0x2020014
.equ unk_2020100, 0x2020100
.equ unk_2030000, 0x2030000
.equ dword_2033000, 0x2033000
.equ dword_2037810, 0x2037810
.equ dword_2037814, 0x2037814
.equ byte_2037AB0, 0x2037AB0
.equ unk_2037B90, 0x2037B90
.equ dword_203C050, 0x203C050
.equ dword_203C054, 0x203C054
.equ dword_203C058, 0x203C058
.equ dword_203C05C, 0x203C05C
.equ dword_203C060, 0x203C060
.equ dword_203C064, 0x203C064
.equ dword_203E7D0, 0x203E7D0
.equ dword_203E7DC, 0x203E7DC
.equ dword_203F664, 0x203F664
.equ dword_203F670, 0x203F670
.equ unk_3002840, 0x3002840
.equ unk_3002C50, 0x3002C50
.equ unk_3003D0C, 0x3003D0C
.equ loc_3006D04, 0x3006D04
.equ loc_3006D74, 0x3006D74
.equ loc_3006E40, 0x3006E40
.equ LCDControl, 0x4000000
.equ LCDControl, 0x4000000
.equ Window0HorizontalDimensions, 0x4000040
.equ off_8017EF8, 0x8017EF8
.equ off_8017EFC, 0x8017EFC
.equ off_8017F00, 0x8017F00
.equ off_8017F54, 0x8017F54
.equ dword_8017FA8, 0x8017FA8
.equ dword_8018820, 0x8018820
.equ dword_80188A0, 0x80188A0
.equ dword_8018928, 0x8018928
.equ dword_80972F0, 0x80972F0
.equ dword_80ADD54, 0x80ADD54
.equ off_80ADD70, 0x80ADD70
.equ dword_80F5E24, 0x80F5E24
.equ dword_8800000, 0x8800000

.endif // INC_ASM28
