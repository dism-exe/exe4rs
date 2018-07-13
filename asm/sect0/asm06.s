.include "sect0/asm06.inc"

.thumb
dead_805D4F8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x805d554-0x805d4fc-4] // dword_805C800+1960
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
    ldr r0, [pc, #0x805d558-0x805d52c-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x805d560-0x805d536-2] // off_805D564
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_805D60C
    ldr r0, [pc, #0x805d55c-0x805d546-2] // off_805D868
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x7c]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_805D554:    .word dword_805C800+0x7A8
off_805D558:    .word unk_2038800
off_805D55C:    .word off_805D868
off_805D560:    .word off_805D564
off_805D564:    .word dword_805D57C
    .word 0x805D582, 0x805D592, 0x805D596, 0x805D5A2, 0x805D5B4
dword_805D57C:    .word 0x6C1C051C, 0x1A1CFFFF, 0x1C1C1B1C, 0x2E182D18, 0x30182F18
    .word 0x2818FFFF, 0xC1CFFFF, 0x231C0D1C, 0x28182C18, 0x1E1CFFFF
    .word 0x471C1F1C, 0x2D18641C, 0x30182F18, 0xFFFF2C18, 0x181C171C
    .word 0x37183018, 0xB500FFFF, 0x48020089, 0xF7A45840, 0xBD00FF8B
    .word 0x805D5D0, 0x805D5E8, 0x805D5EC, 0x805D5F0, 0x805D5F4
    .word 0x805D5FC, 0x805D600, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x805D0D0, 0xFFFFFFFF, 0xFFFFFFFF, 0x805D318, 0x805D3A8
    .word 0xFFFFFFFF
// end of function dead_805D4F8

.thumb
sub_805D60C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x805d620-0x805d616-2] // off_805D624
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_805D620:    .word off_805D624
off_805D624:    .word dword_805D63C  // <endpool>
// end of function sub_805D60C

    .word dword_805D640  // <filepool>
    .word dword_805D680
    .word dword_805D684
    .word dword_805D6B0
    .word dword_805D718
/*For debugging purposes, connect comment at any range!*/
