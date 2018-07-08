/*
This file specifies how all of the asm files link together into the ROM.
This is the only compiled file that is overlaid over the binary
*/

// to prevent duplicate symbols, expose file external symbols
// range .r__start
.include "externs/start.inc"
.include "externs/main.inc"
.include "externs/f500.inc"
.include "externs/f800.inc"
.include "externs/f900.inc"
.include "externs/fA00.inc"

/* Range [0x08000000, 0x08000550) */
.section .r__start, "ax"
// [0x08000000, 0x0800029C)
.section .start, "ax"
.include "asm/start.s"
// [0x0800029C, 0x08000550)
.section .main, "ax"
.include "asm/main.s"
// [0x08000550, 0x08000788)
.section .f500, "ax"
.include "asm/f500.s"
// [0x08000788, 0x08000904)
.section .f800, "ax"
.include "asm/f800.s"
// [0x08000904, 0x08000A1C)
.section .f900, "ax"
.include "asm/f900.s"
// [0x08000A1C, 0x08000C98)
.section .fA00, "ax"
.include "asm/fA00.s"
