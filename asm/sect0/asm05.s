.include "sect0/asm05.inc"

.thumb
dead_8059284:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x80592e0-0x8059288-4] // dword_8058CC8+1196
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
    ldr r0, [pc, #0x80592e4-0x80592b8-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x80592ec-0x80592c2-2] // off_80592F0
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_8059354
    ldr r0, [pc, #0x80592e8-0x80592d2-2] // off_8059484
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x7c]
    pop {r4-r7,pc}
    .byte 0, 0
off_80592E0:    .word dword_8058CC8+0x4AC
off_80592E4:    .word unk_2038800
off_80592E8:    .word off_8059484
off_80592EC:    .word off_80592F0
off_80592F0:    .word dword_8059300
    .word 0x805930A, 0x805930C, 0x8059310
dword_8059300:    .word 0x111C101C, 0x241C131C, 0xFFFFFFFF, 0xFFFF131C, 0xC1C011C
    .word 0x2A1C0D1C, 0xFFFF0818, 0x89B500, 0x58404802, 0xF8DCF7A9
    .word 0xBD00, 0x8059330, 0x8059340, 0x8059344, 0x8059348
    .word 0x805934C, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x8059254
    .word 0xFFFFFFFF
// end of function dead_8059284

.thumb
sub_8059354:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8059368-0x805935e-2] // off_805936C
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_8059368:    .word off_805936C
off_805936C:    .word dword_805937C  // <endpool>
// end of function sub_8059354

    .word dword_80593BC  // <filepool>
    .word dword_80593C0
    .word dword_80593D8
/*For debugging purposes, connect comment at any range!*/
