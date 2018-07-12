// forward references
.equ sub_806A87C, 0x0806A87C
.equ off_806A8D4, 0x0806A8D4
.equ off_806A8D8, 0x0806A8D8
.equ off_806A8DC, 0x0806A8DC
.equ off_806A8E0, 0x0806A8E0
.equ dword_806A8F0, 0x0806A8F0
.equ sub_806A91E, 0x0806A91E
.equ off_806A92C, 0x0806A92C
.equ off_806A930, 0x0806A930
.equ off_806A940, 0x0806A940
.equ off_806A964, 0x0806A964
.equ off_806A988, 0x0806A988
.equ off_806A9AC, 0x0806A9AC
.equ sub_806A9C4, 0x0806A9C4
.equ off_806AA00, 0x0806AA00
.equ off_806AA04, 0x0806AA04
.equ off_806AA44, 0x0806AA44
.equ off_806AA48, 0x0806AA48
.equ off_806AA58, 0x0806AA58
.equ off_806AA7C, 0x0806AA7C
.equ loc_806AAA0, 0x0806AAA0
.equ off_806AAB4, 0x0806AAB4
.equ off_806AAB8, 0x0806AAB8
.equ locret_806AAC8, 0x0806AAC8
.equ locret_806AACA, 0x0806AACA
.equ locret_806AACC, 0x0806AACC
.equ locret_806AACE, 0x0806AACE
.equ sub_806AAD0, 0x0806AAD0
.equ off_806AAE4, 0x0806AAE4
.equ off_806AAE8, 0x0806AAE8
.equ dword_806AAF8, 0x0806AAF8
.equ dword_806AAFC, 0x0806AAFC
.equ dword_806AB00, 0x0806AB00
.equ dword_806AB04, 0x0806AB04
.equ off_806AB28, 0x0806AB28

.thumb
sub_806A87C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x806a8d4-0x806a880-4] // dword_8069A24+1732
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
    bl sub_806A9C4
    ldr r0, [pc, #0x806a8d8-0x806a8b4-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x806a8dc-0x806a8be-2] // off_806A8E0
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_806AAD0
    bl sub_802A28C
    pop {r4-r7,pc}
off_806A8D4:    .word dword_8069A24+0x6C4
off_806A8D8:    .word unk_2038800
off_806A8DC:    .word off_806A8E0
off_806A8E0:    .word dword_806A8F0
    .word 0x806A8FA, 0x806A904, 0x806A90E
dword_806A8F0:    .word 0x151C141C, 0x271C161C, 0x141CFFFF, 0x161C151C, 0xFFFF271C
    .word 0x151C141C, 0x271C161C, 0x141CFFFF, 0x161C151C, 0x221C0A1C
    .word 0x211C271C
    .byte 0xFF, 0xFF
// end of function sub_806A87C

.thumb
sub_806A91E:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x806a92c-0x806a922-2] // off_806A930
    ldr r0, [r0,r1]
    bl sub_80024E0
    pop {pc}
off_806A92C:    .word off_806A930
off_806A930:    .word off_806A940
    .word off_806A964
    .word off_806A988
    .word off_806A9AC
off_806A940:    .word dword_806A208+0x10
    .word dword_806A208+0x40
    .word dword_806A208+0x78
    .word dword_806A208+0xB0
    .word off_806A310
    .word dword_806A314+0x4C
    .word dword_806A314+0x9C
    .word dword_806A314+0xD4
    .word 0xFFFFFFFF
off_806A964:    .word dword_806A208+0x10
    .word dword_806A208+0x40
    .word dword_806A208+0x78
    .word dword_806A208+0xB0
    .word off_806A310
    .word dword_806A314+0x4C
    .word dword_806A314+0x9C
    .word dword_806A314+0xD4
    .word 0xFFFFFFFF
off_806A988:    .word dword_806A208+0x10
    .word dword_806A208+0x40
    .word dword_806A208+0x78
    .word dword_806A208+0xB0
    .word off_806A310
    .word dword_806A314+0x4C
    .word dword_806A314+0x9C
    .word dword_806A314+0xD4
    .word 0xFFFFFFFF
off_806A9AC:    .word dword_806A6A0+4
    .word dword_806A6A0+0x34
    .word dword_806A6A0+0x6C
    .word dword_806A6A0+0xA4
    .word dword_806A6A0+0x144
    .word 0xFFFFFFFF
// end of function sub_806A91E

.thumb
sub_806A9C4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x806aa00-0x806a9ce-2] // off_806AA04
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
    ldr r0, [pc, #0x806aa44-0x806a9e8-4] // off_806AA48
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .byte 0, 0
off_806AA00:    .word off_806AA04
off_806AA04:    .word nullsub_88+1
    .word sub_8001F20+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001F21, 0x300593D
    .word 0x800, 0x8001F95, 0x8001F21, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800
off_806AA44:    .word off_806AA48
off_806AA48:    .word off_806AA58
    .word off_806AA58
    .word off_806AA58
    .word off_806AA7C
off_806AA58:    .word dword_860F4E4+0xF8
    .word unk_2012800
    .word 0x600C020, 0x860F7C4, 0x2013000, 0x3001800, 0x860FAF4
    .word 0x3002A50, 0x20
off_806AA7C:    .word dword_860F4E4+0xF8
    .word unk_2012800
    .word 0x600C020, 0x8610AA8, 0x2013000, 0x3001800, 0x8610CFC
    .word 0x3002A50, 0x20
// end of function sub_806A9C4

loc_806AAA0:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x806aab4-0x806aaaa-2] // off_806AAB8
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806AAB4:    .word off_806AAB8
off_806AAB8:    .word locret_806AAC8+1
    .word locret_806AACA+1
    .word locret_806AACC+1
    .word locret_806AACE+1
locret_806AAC8:
    mov pc, lr
locret_806AACA:
    mov pc, lr
locret_806AACC:
    mov pc, lr
locret_806AACE:
    mov pc, lr
.thumb
sub_806AAD0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x806aae4-0x806aada-2] // off_806AAE8
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
off_806AAE4:    .word off_806AAE8
off_806AAE8:    .word dword_806AAF8  // <endpool>
// end of function sub_806AAD0

    .word dword_806AAFC  // <filepool>
    .word dword_806AB00
    .word dword_806AB04
dword_806AAF8:    .word 0xFF
dword_806AAFC:    .word 0xFF
dword_806AB00:    .word 0xFF
dword_806AB04:    .word 0xFF, 0x806AB8C, 0x806AD98, 0x806AFC4, 0x806B244, 0x806ABE6
    .word 0x806ADF2, 0x806B01E, 0x806B358
off_806AB28:    .word off_806B774
    .word off_806BAC8
    .word off_806BFA4
    .word dword_806C888
    .word dword_806AB48
    .word dword_806AB58
    .word dword_806AB68
    .word dword_806AB78
/*For debugging purposes, connect comment at any range!*/
