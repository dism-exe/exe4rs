.ifndef EXT_ASM22
.equ EXT_ASM22, 0

.include "asm03.inc"
// .extern sub_80511C0

.include "asm13.inc"
// .extern sub_807731C

.include "asm28.inc"
// .extern off_80CFF24

.include "asm00.inc"
// .extern f900_80009B4
// .extern sub_8001C94


.equ LCDControl, 0x4000000
.equ sub_8000C98, 0x8000C98
.equ sub_8001D60, 0x8001D60
.equ sub_80772DA, 0x80772DA
.equ sub_80A02AE, 0x80A02AE

.endif // EXT_ASM22
