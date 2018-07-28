.ifndef INC_MAIN
.equ INC_MAIN, 0

/* Public Symbols */
.extern main_
.extern sub_8000538


/* External Symbols */
.include "asm03.inc"
// .extern sub_804819C
// .extern sub_80489EC
// .extern sub_804903C
// .extern sub_8049CE8
// .extern sub_804BDFC
// .extern sub_804DF48
// .extern sub_804DFC4

.include "start.inc"
// .extern start_800025C
// .extern start_8000284

.include "asm30.inc"
// .extern sub_8110000
// .extern sub_8110BF4
// .extern sub_8112630
// .extern sub_81126A8
// .extern sub_8112BCC

.include "asm02.inc"
// .extern sub_802525C
// .extern ho_cb_8025268
// .extern sub_8025B60
// .extern sub_8025BBC
// .extern sub_8025CDC
// .extern sub_80297F0
// .extern sub_802BCA4
// .extern sub_802BCE0
// .extern sub_802CFF2
// .extern sub_802D6B8
// .extern sub_802D6D2
// .extern sub_802DECC
// .extern sub_80405E4
// .extern sub_8043238
// .extern sub_8043864
// .extern sub_8044FA8

.include "asm00.inc"
// .extern f500_80006FA
// .extern f500_8000706
// .extern f800_80007F8
// .extern f800_8000800
// .extern f900_8000930
// .extern fA00_8000C24
// .extern sub_8001AD8
// .extern sub_8001B78
// .extern sub_8001B94
// .extern sub_8001CB8
// .extern sub_8001D44
// .extern sub_8001D60
// .extern sub_8001D6E
// .extern sub_8001E74
// .extern sub_8001E94
// .extern sub_8001EA0
// .extern sub_8002008
// .extern sub_80020A0
// .extern sub_80024F4
// .extern sub_800256C
// .extern sub_800262E
// .extern sub_8002798
// .extern sub_80027DC
// .extern sub_80029C0
// .extern sub_8003836
// .extern sub_8004908
// .extern sub_8004988
// .extern ho_8004B70
// .extern sub_8005B50
// .extern sub_8005B5C
// .extern sub_8005B6E
// .extern sub_800609C
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
