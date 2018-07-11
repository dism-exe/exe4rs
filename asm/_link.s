/*
This file specifies how all of the asm files link together into the ROM.
This is the only compiled file that is overlaid over the binary
*/

// to prevent duplicate symbols, expose file external symbols
// range .r__start
.include "externs/sect0/sect0.inc"

/* Range [0x08000000, ???) */
.section .r__start, "ax"
.include "asm/sect0/sect0.s"
