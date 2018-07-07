/*
This file specifies how all of the asm files link together into the ROM.
This is the only compiled file that is overlaid over the binary
*/

// to prevent duplicate symbols, expose file external symbols
// range .r__start
.include "externs/start.inc"
.include "externs/main.inc"

/* Range [0x08000000, 0x08000550) */
.section .r__start, "ax"
// [0x08000000, 0x0800029C)
.section .start, "ax"
.include "asm/start.s"
// [0x0800029C, 0x08000550)
.section .main, "ax"
.include "asm/main.s"
