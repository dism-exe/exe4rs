.include "asm29.inc"

.thumb
sub_80F8944:
    mov r1, #0x20 
    mul r0, r1
    ldr r1, [pc, #0x80f8950-0x80f8948-4] // dword_80F8954
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_80F8950:    .word dword_80F8954  // <endpool> <endfile>
// end of function sub_80F8944

/*For debugging purposes, connect comment at any range!*/
