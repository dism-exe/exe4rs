/*
This file specifies how all of the asm files link together into the ROM.
This is the only compiled file.
*/

// to prevent redefinition of symbols, expose all external symbols first
.include "externs/sect0/sect0.inc"

// assign section to be set to 0x08000000
.section .r__start, "ax"
sect0:
.include "asm/sect0/sect0.s"

// include parts of the ROM not disassembled yet
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
.incbin "bin/tail.bin"
