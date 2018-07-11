// forward references
.equ sub_8073910, 0x08073910
.equ off_8073968, 0x08073968
.equ off_807396C, 0x0807396C
.equ off_8073970, 0x08073970
.equ off_8073974, 0x08073974
.equ dword_80739A4, 0x080739A4
.equ sub_8073A30, 0x08073A30
.equ off_8073A6C, 0x08073A6C
.equ off_8073A70, 0x08073A70
.equ off_8073B30, 0x08073B30
.equ off_8073B34, 0x08073B34
.equ off_8073B64, 0x08073B64
.equ sub_8073B88, 0x08073B88
.equ off_8073B9C, 0x08073B9C
.equ jt_nullsub_8073BA0, 0x08073BA0
.equ nullsub_78, 0x08073BD0
.equ sub_8073BD2, 0x08073BD2
.equ off_8073BE8, 0x08073BE8
.equ off_8073BEC, 0x08073BEC

.thumb
sub_8073910:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x8073968-0x8073914-4] // off_80738D0
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8026098
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_80266E0
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x3c]
    ldr r2, [r5,#0x40]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_8025CFC
    bl sub_802610E
    bl sub_8073A30
    ldr r0, [pc, #0x807396c-0x8073948-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8073970-0x8073952-2] // off_8073974
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_8073BD2
    bl sub_802A28C
    pop {r4-r7,pc}
off_8073968:    .word off_80738D0
off_807396C:    .word unk_2038800
off_8073970:    .word off_8073974
off_8073974:    .word dword_80739A4
    .word 0x80739A6, 0x80739A8, 0x80739AA, 0x80739B0, 0x80739B8
    .word 0x80739C0, 0x80739C8, 0x80739D0, 0x80739D2, 0x80739D2
    .word 0x80739D8
dword_80739A4:    .word 0xFFFFFFFF, 0x471CFFFF, 0xFFFF581C, 0x401C5A1C, 0xFFFF591C
    .word 0x401C5A1C, 0xFFFF591C, 0x401C5A1C, 0xFFFF591C, 0x401C5A1C
    .word 0xFFFF591C, 0x501CFFFF, 0xFFFF411C, 0x621C611C, 0xB500FFFF
    .word 0x48020089, 0xF78E5840, 0xBD00FD7B, 0x80739F0, 0x8073A20
    .word 0x8073A20, 0x8073A20, 0x8073A20, 0x8073A20, 0x8073A20
    .word 0x8073A20, 0x8073A20, 0x8073A20, 0x8073A20, 0x8073A20
    .word 0x8073A20, 0x8070ED4, 0x8070F7C, 0x8071004, 0xFFFFFFFF
// end of function sub_8073910

.thumb
sub_8073A30:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x8073a6c-0x8073a3a-2] // off_8073A70
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_8001E5C
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r2, [r1]
    ldr r0, [r7,#0xc]
    orr r2, r0
    strh r2, [r1]
    ldr r0, [pc, #0x8073b30-0x8073a54-4] // off_8073B34
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8073A6C:    .word off_8073A70
off_8073A70:    .word locret_8001F94+1
    .word loc_8001ECE+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800
off_8073B30:    .word off_8073B34
off_8073B34:    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
    .word off_8073B64
off_8073B64:    .word off_8619ABC
    .word unk_2012800
    .word 0x600CC80, 0x8619B60, 0x2012C00, 0x3001800, 0x8619D84
    .word 0x3002A50, 0x20
// end of function sub_8073A30

.thumb
sub_8073B88:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x8073b9c-0x8073b92-2] // jt_nullsub_8073BA0
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8073B9C:    .word jt_nullsub_8073BA0
jt_nullsub_8073BA0:    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
    .word nullsub_78+1
// end of function sub_8073B88

.thumb
nullsub_78:
    mov pc, lr
// end of function nullsub_78

.thumb
sub_8073BD2:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8073be8-0x8073bdc-4] // off_8073BEC
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}  // <endpool>
// end of function sub_8073BD2

    .balign 4, 0x00
off_8073BE8:    .word off_8073BEC  // <filepool>
off_8073BEC:    .word dword_8073C1C
    .word dword_8073C20
    .word dword_8073C24
    .word dword_8073C28
    .word dword_8073CE0
    .word dword_8073E50
    .word dword_8073F08
    .word dword_8073FC0
    .word dword_8074078
    .word dword_807407C
    .word dword_8074080
    .word dword_8074084
/*For debugging purposes, connect comment at any range!*/
