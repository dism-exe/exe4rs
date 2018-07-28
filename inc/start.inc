.ifndef INC_START
.equ INC_START, 0

/* Public Symbols */
.extern start_
.extern start_800025C
.extern start_8000284


/* External Symbols */
.include "asm30.inc"
// .extern sub_811103C
// .extern sub_811104C

.include "main.inc"
// .extern main_


/* Undeclared Symbols */
.equ dword_2008920, 0x2008920
.equ dword_200A338, 0x200A338
.equ dword_200ACB0, 0x200ACB0
.equ dword_3002000, 0x3002000
.equ loc_3007FFC, 0x3007FFC
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyInterruptControl, 0x4000132
.equ InterruptEnableRegister, 0x4000200
.equ GamePakWaitstateControl, 0x4000204
.equ InterruptMasterEnableRegister, 0x4000208
.equ function_chunks_loc_8212700, 0x8212700

.endif // INC_START
