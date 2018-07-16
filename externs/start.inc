.ifndef EXT_START
.equ EXT_START, 0

.include "asm03.inc"
// .extern loc_804903C
// .extern loc_804BDFC

.include "asm30.inc"
// .extern loc_8110000
// .extern sub_811104C

.include "main.inc"
// .extern main_static_800036C
// .extern main_static_80003B0
// .extern main_static_8000456

.include "asm02.inc"
// .extern ho_cb_8025268
// .extern loc_80297F0
// .extern sub_802D6B8
// .extern loc_802DECC
// .extern loc_8043238
// .extern loc_8044FA8

.include "asm00.inc"
// .extern f800_8000800
// .extern sub_8001AD8
// .extern sub_8001CB8
// .extern sub_8001E94
// .extern sub_80020A0
// .extern sub_80027DC
// .extern ho_8004B70
// .extern ho_8006AF4


.equ dword_2008920, 0x2008920
.equ dword_200A338, 0x200A338
.equ dword_200ACB0, 0x200ACB0
.equ dword_3002000, 0x3002000
.equ loc_30063F8, 0x30063F8
.equ loc_3007FFC, 0x3007FFC
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyInterruptControl, 0x4000132
.equ InterruptEnableRegister, 0x4000200
.equ GamePakWaitstateControl, 0x4000204
.equ InterruptMasterEnableRegister, 0x4000208
.equ main_static_800039C, 0x800039C
.equ main_static_8000418, 0x8000418
.equ f500_8000706, 0x8000706
.equ fA00_8000C24, 0x8000C24
.equ sub_8001B94, 0x8001B94
.equ sub_8001D6E, 0x8001D6E
.equ sub_8001EA0, 0x8001EA0
.equ sub_800256C, 0x800256C
.equ sub_80029C0, 0x80029C0
.equ sub_8005B6E, 0x8005B6E
.equ sub_8007BD0, 0x8007BD0
.equ sub_8025BBC, 0x8025BBC
.equ sub_802CFF2, 0x802CFF2
.equ loc_802D6D2, 0x802D6D2
.equ loc_80405E4, 0x80405E4
.equ sub_8043864, 0x8043864
.equ loc_80489EC, 0x80489EC
.equ loc_8049CE8, 0x8049CE8
.equ loc_804DFC4, 0x804DFC4
.equ sub_811103C, 0x811103C
.equ function_chunks_loc_8212700, 0x8212700

.endif // EXT_START
