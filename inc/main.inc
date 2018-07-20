.ifndef INC_MAIN
.equ INC_MAIN, 0

/* Public Interface */
.extern main_
.extern sub_8000538


/* External Symbols */
.include "asm03.inc"
// .extern loc_80489EC
// .extern loc_804903C
// .extern loc_8049CE8
// .extern loc_804BDFC
// .extern loc_804DFC4

.include "start.inc"
// .extern start_800025C
// .extern start_8000284

.include "asm30.inc"
// .extern loc_8110000
// .extern sub_8112630
// .extern sub_81126A8
// .extern sub_8112BCC

.include "asm02.inc"
// .extern ho_cb_8025268
// .extern sub_8025BBC
// .extern loc_80297F0
// .extern sub_802CFF2
// .extern sub_802D6B8
// .extern loc_802D6D2
// .extern loc_802DECC
// .extern loc_80405E4
// .extern loc_8043238
// .extern sub_8043864
// .extern loc_8044FA8

.include "asm00.inc"
// .extern f500_8000706
// .extern f800_8000800
// .extern fA00_8000C24
// .extern sub_8001AD8
// .extern sub_8001B94
// .extern sub_8001CB8
// .extern sub_8001D6E
// .extern sub_8001E94
// .extern sub_8001EA0
// .extern sub_80020A0
// .extern sub_800256C
// .extern sub_80027DC
// .extern sub_80029C0
// .extern ho_8004B70
// .extern sub_8005B5C
// .extern sub_8005B6E
// .extern sub_80060AC
// .extern sub_8006108
// .extern ho_8006AF4
// .extern sub_8007BD0


/* Undeclared Symbols */
.equ unk_2007400, 0x2007400
.equ dword_200A338, 0x200A338
.equ dword_200A4D0, 0x200A4D0
.equ dword_200ACB0, 0x200ACB0
.equ dword_3002000, 0x3002000
.equ loc_30063F8, 0x30063F8
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyStatus, 0x4000130

.endif // INC_MAIN
