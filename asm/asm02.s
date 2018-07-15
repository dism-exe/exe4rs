.include "asm02.inc"

.thumb
sub_801DA08:
    ldr r1, [pc, #0x801db00-0x801da08-4] // =0xFF020001
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov pc, lr
off_801DA10:    .word dword_801DA5C
    .word 0x801DA65, 0x801DA68, 0x801DA6F, 0x801DA76, 0x801DA79
    .word 0x801DA7C, 0x801DA87, 0x801DA8A, 0x801DA91, 0x801DA96
    .word 0x801DA9D, 0x801DAAA, 0x801DABD, 0x801DAC6, 0x801DAD3
    .word 0x801DAE4, 0x801DAEF, 0x801DAFA
dword_801DA5C:    .word 0xFF020001, 0x1020002, 0x7F00027F, 0x2FF02, 0x17F0102
    .word 0x3000200, 0x27F00, 0x7F00037F, 0xFF020001, 0x1020002
    .word 0x17F0003, 0xFF017F00, 0x1010001, 0x200017F, 0xFF037F00
    .word 0x1030003, 0x1FF017F, 0x2010100, 0x20002FF, 0xFF027F01
    .word 0x1020002, 0x3FF03, 0xFF040103, 0x1040004, 0x1FF017F
    .word 0x2010100, 0xFF027F00, 0x1020002, 0x3FF03, 0x17F0103
    .word 0x10001FF, 0x2FF0201, 0x3FF0301, 0x7F010300, 0x100FF00
    .word 0xFF020001, 0x17F0102, 0x3000200, 0x5000400, 0x27F00
    .word 0x7F0003, 0x801DA10
// end of function sub_801DA08

.thumb
sub_801DB04:
    push {r4-r7,lr}
    add r4, r0, #0
    add r7, r1, #0
    ldr r0, [pc, #0x801dd84-0x801db0a-2] // byte_2036440
    mov r1, #0x68 
    bl f900_8000930
    ldr r5, [pc, #0x801dd84-0x801db12-2] // byte_2036440
    mov r1, #1
    strb r1, [r5,#(byte_2036456 - 0x2036440)]
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    mov r0, #0
    cmp r7, r1
    bne loc_801DB26
    mov r0, #1
loc_801DB26:
    str r0, [r5,#(dword_2036490 - 0x2036440)]
    ldr r0, [r4]
    strh r0, [r5,#(word_203647E - 0x2036440)]
    ldr r0, [r4,#4]
    strb r0, [r5,#(byte_203645B - 0x2036440)]
    ldr r1, [r4,#8]
    strb r1, [r5,#(byte_203645C - 0x2036440)]
    ldr r0, [pc, #0x801db64-0x801db34-4] // =0x3800
    mov r2, #0x34 
    add r2, r2, r5
    add r4, #0xc
    mov r6, #0
    sub r6, #1
    mov r3, #0
loc_801DB42:
    ldrsh r1, [r4,r3]
    cmp r1, r6
    beq loc_801DB50
    orr r1, r0
    strh r1, [r2,r3]
    add r3, #2
    b loc_801DB42
loc_801DB50:
    lsr r3, r3, #1
    strb r3, [r5,#(byte_2036452 - 0x2036440)]
    mov r0, #4
    strb r0, [r5]
    mov r0, #0x10
    strb r0, [r5,#(byte_2036441 - 0x2036440)]
    mov r0, #0
    strh r0, [r5,#(word_2036442 - 0x2036440)]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_801DB64:    .word 0x3800
// end of function sub_801DB04

.thumb
sub_801DB68:
    push {r4-r7,lr}
    ldr r0, [pc, #0x801dd80-0x801db6a-2] // =0x845A
    bl sub_8015AFA
    mov r0, #0x40 
    bl sub_8015902
    ldr r0, [pc, #0x801dd78-0x801db76-2] // dword_870A000
    ldr r1, [pc, #0x801dd7c-0x801db78-4] // unk_3002B70
    mov r2, #0x20 
    bl loc_8000874
    bl sub_801DD98
    ldr r0, [pc, #0x801dd84-0x801db84-4] // byte_2036440
    mov r1, #0x68 
    bl f900_8000930
    ldr r5, [pc, #0x801dd84-0x801db8c-4] // byte_2036440
    mov r1, #1
    strb r1, [r5,#(byte_2036456 - 0x2036440)]
    mov r0, #0x10
    str r0, [r5,#(dword_2036490 - 0x2036440)]
    mov r0, #1
    str r0, [r5,#(dword_2036494 - 0x2036440)]
    str r0, [r5,#(dword_2036498 - 0x2036440)]
    ldr r2, [pc, #0x801dd94-0x801db9c-4] // word_203BE80
    ldr r1, [pc, #0x801dd70-0x801db9e-2] // =0xFFFF
    mov r3, #0x1e
loc_801DBA2:
    ldrh r4, [r2]
    cmp r4, r1
    beq loc_801DBAE
    add r2, #2
    sub r3, #1
    bne loc_801DBA2
loc_801DBAE:
    mov r1, #0x1e
    sub r1, r1, r3
    strb r1, [r5,#(byte_2036455 - 0x2036440)]
    bl sub_8007E16
    strb r0, [r5,#(byte_203645D - 0x2036440)]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800F448
    strb r0, [r5,#(byte_2036450 - 0x2036440)]
    strb r1, [r5,#(byte_203644F - 0x2036440)]
    bl sub_801DFF4
    mov r0, #0xa
    ldrb r2, [r5,#(byte_203644F - 0x2036440)]
    cmp r2, #8
    beq loc_801DBF2
    ldrb r0, [r5,#(byte_203645D - 0x2036440)]
    cmp r0, #0x40 
    blt loc_801DBE4
    cmp r0, #0x43 
    bgt loc_801DBE4
    mov r0, #5
    b loc_801DBF2
loc_801DBE4:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    mov r1, #0x12
    bl sub_800D722
loc_801DBF2:
    strb r0, [r5,#(byte_2036451 - 0x2036440)]
    ldr r0, [pc, #0x801dd8c-0x801dbf4-4] // dword_870A940
    ldr r1, [pc, #0x801dd88-0x801dbf6-2] // unk_2036170
    ldr r2, [pc, #0x801dd90-0x801dbf8-4] // =0x258
    bl f900_80009A0
    mov r2, #0x9c
    ldr r6, [pc, #0x801dccc-0x801dc00-4] // byte_801DCD0
loc_801DC02:
    ldr r0, [pc, #0x801dd68-0x801dc02-2] // =0xFF0
    and r0, r2
    ldrb r2, [r6,#4]
    lsl r2, r2, #0xc
    orr r2, r0
    ldrb r0, [r6]
    ldrb r1, [r6,#1]
    ldrb r3, [r6,#2]
    ldrb r4, [r6,#3]
    ldrb r5, [r6,#5]
    bl sub_801EC70
    add r6, #6
    ldrb r0, [r6]
    cmp r0, #0xff
    bne loc_801DC02
    ldr r5, [pc, #0x801dd84-0x801dc22-2] // byte_2036440
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#8]
    add r0, #1
    strb r0, [r2,#8]
    ldrb r0, [r5,#(byte_203645D - 0x2036440)]
    cmp r0, #0x46 
    bge loc_801DC42
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#8]
    cmp r0, #1
    bne loc_801DC42
    bl function_chunk_8016688
loc_801DC42:
    bl sub_801DDD0
    cmp r0, #1
    beq loc_801DC86
    ldr r5, [pc, #0x801dd84-0x801dc4a-2] // byte_2036440
    ldrb r0, [r5,#(byte_203644F - 0x2036440)]
    cmp r0, #0xa
    bne loc_801DC58
    bl sub_801DEFC
    b loc_801DC86
loc_801DC58:
    ldr r5, [pc, #0x801dd84-0x801dc58-4] // byte_2036440
    ldrb r0, [r5,#(byte_203644F - 0x2036440)]
    cmp r0, #4
    bne loc_801DC86
    mov r0, #9
    mov r1, #(byte_2036471 - 0x2036440)
    strb r0, [r5,r1]
    add r1, #2
    strb r0, [r5,r1]
    mov r0, #3
    strb r0, [r5,#(byte_203645A - 0x2036440)]
    mov r0, #0
    strb r0, [r5,#(byte_2036453 - 0x2036440)]
    push {r4,r5}
    mov r0, #7
    mov r1, #0x10
    ldr r2, [pc, #0x801dd6c-0x801dc78-4] // =0x910E
    mov r3, #4
    mov r4, #3
    mov r5, #0
    bl sub_801EC70
    pop {r4,r5}
loc_801DC86:
    bl sub_801F52C
    bl sub_801F5B4
    bl sub_801FA38
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x17]
    ldr r5, [pc, #0x801dd84-0x801dc98-4] // byte_2036440
    mov r1, #4
loc_801DC9C:
    ldr r0, [pc, #0x801dcc8-0x801dc9c-4] // =0x1FC
    bl sub_801F668
    sub r1, #1
    bpl loc_801DC9C
    bl sub_801FE54
    mov r4, #4
loc_801DCAC:
    add r0, r4, #0
    mov r1, #0
    mov r2, #1
    bl sub_801FAAE
    sub r4, #1
    bpl loc_801DCAC
    mov r0, #0
    mov r1, #1
    bl sub_801FF68
    bl sub_801E014
    pop {r4-r7,pc}
dword_801DCC8:    .word 0x1FF
off_801DCCC:    .word byte_801DCD0
byte_801DCD0:    .byte 0x1
byte_801DCD1:    .byte 0x1
byte_801DCD2:    .byte 0x8
byte_801DCD3:    .byte 0x2
byte_801DCD4:    .byte 0x9
byte_801DCD5:    .byte 0x1
    .hword 0x402
    .word 0xA0607, 0x2010A02, 0xA06000E, 0x10E0203, 0x2020D01
    .word 0xF010009, 0x90102, 0x2020D03, 0xF030009, 0x90102
    .word 0x2020D05, 0xF050009, 0x90102, 0x2020D07, 0xF070009
    .word 0x90102, 0x2020D09, 0xF090009, 0x90102, 0x2021001
    .word 0x12010009, 0x90102, 0x2021003, 0x12030009, 0x90102
    .word 0x2021005, 0x12050009, 0x90102, 0x2021007, 0x12070009
    .word 0x90102, 0x2021009, 0x12090009, 0x90102, 0xA02030C
    .word 0xFF000B
dword_801DD68:    .word 0xFFF
dword_801DD6C:    .word 0x910E
dword_801DD70:    .word 0xFFFF
    .word dword_203BF88
off_801DD78:    .word dword_870A000
off_801DD7C:    .word unk_3002B70
dword_801DD80:    .word 0x845A
off_801DD84:    .word byte_2036440
off_801DD88:    .word unk_2036170
off_801DD8C:    .word dword_870A940
off_801DD90:    .word 0x258
off_801DD94:    .word word_203BE80
// end of function sub_801DB68

.thumb
sub_801DD98:
    push {lr}
    ldr r0, [pc, #0x801dda4-0x801dd9a-2] // off_801DDA8
    bl f800_80008EC
    pop {pc}
    .balign 4, 0x00
off_801DDA4:    .word off_801DDA8
off_801DDA8:    .word dword_8708CE0
    .word 0x6016C00, 0x40, 0x8708D20, 0x6017040, 0x100, 0x870A020
    .word 0x30027E0, 0x20, 0x0
// end of function sub_801DD98

.thumb
sub_801DDD0:
    push {lr}
    mov r0, #0
    mov r1, #0x74 
    bl sub_8024FF0
    beq loc_801DE70
    mov r4, #2
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x46 
    bge loc_801DE28
    mov r4, #0
    bl sub_8007EBC
    mov r1, #8
    tst r0, r1
    beq loc_801DE28
    push {r0}
    mov r0, sp
    bl sub_8007E3E
    pop {r0}
    mov r1, #0xff
    and r0, r1
    cmp r0, #0xf0
    bge loc_801DE28
    cmp r0, #0xe0
    blt loc_801DE0A
    cmp r0, #0xe3
    ble loc_801DE70
loc_801DE0A:
    cmp r0, #0xb4
    blt loc_801DE20
    cmp r0, #0xb6
    bgt loc_801DE20
    mov r0, #4
    mov r1, #0x16
    bl sub_8024FF0
    beq loc_801DE70
    mov r4, #3
    b loc_801DE28
loc_801DE20:
    mov r2, #3
    and r0, r2
    cmp r0, #3
    bne loc_801DE28
loc_801DE28:
    ldrb r0, [r5,#0x10]
    cmp r0, #5
    beq loc_801DE66
    cmp r4, #2
    beq loc_801DE70
    cmp r4, #1
    beq loc_801DE54
    cmp r0, #1
    beq loc_801DE66
    cmp r4, #0
    beq loc_801DE70
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    cmp r0, #3
    blt loc_801DE70
    ldrb r0, [r5,#0xf]
    cmp r0, #8
    bne loc_801DE66
    mov r0, #8
    strb r0, [r5,#0x11]
    b loc_801DE66
loc_801DE54:
    cmp r0, #2
    beq loc_801DE70
    cmp r0, #4
    beq loc_801DE70
    ldr r2, [pc, #0x801de74-0x801de5c-4] // =0x528
    bl sub_8007BB4
    cmp r0, r2
    blt loc_801DE70
loc_801DE66:
    lsl r0, r4, #1
    bl sub_801DE78
    mov r0, #1
    pop {pc}
loc_801DE70:
    mov r0, #0
    pop {pc}
off_801DE74:    .word 0x528
// end of function sub_801DDD0

.thumb
sub_801DE78:
    push {r4,r6,lr}
    cmp r4, #3
    bne loc_801DE86
    mov r0, #0xbc
    mov r6, #0xbc
    mov r3, #0
    b loc_801DEBE
loc_801DE86:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldr r3, [r3,#0x44]
    ldrh r2, [r3,#0x24]
    ldrh r1, [r3,#0x26]
    lsl r2, r2, #1
    cmp r2, r1
    bgt loc_801DE98
    add r0, #1
loc_801DE98:
    ldr r1, [pc, #0x801ded8-0x801de98-4] // off_801DEDC
    lsl r0, r0, #2
    ldr r4, [r1,r0]
    bl sub_8001B10
    mov r1, #0x3f 
    and r1, r0
    ldrb r6, [r4,r1]
loc_801DEA8:
    bl sub_8001B10
    mov r1, #0x3f 
    and r1, r0
    ldrb r0, [r4,r1]
    cmp r0, r6
    beq loc_801DEA8
    ldr r3, [pc, #0x801def8-0x801deb6-2] // byte_203F6D0
    ldrb r3, [r3]
    cmp r3, #0xa
    bge locret_801DED6
loc_801DEBE:
    mov r1, #0x1b
    lsl r1, r1, #9
    orr r6, r1
    strh r6, [r5,#6]
    orr r0, r1
    strh r0, [r5,#8]
    ldr r0, [pc, #0x801def4-0x801deca-2] // =0x21082106
    cmp r3, #9
    beq loc_801DED4
    str r0, [r5,#0x30]
    b locret_801DED6
loc_801DED4:
    strh r0, [r5,#0x30]
locret_801DED6:
    pop {r4,r6,pc}
off_801DED8:    .word off_801DEDC
off_801DEDC:    .word loc_801EAF0
    .word dword_801EB30
    .word loc_801EB70
    .word dword_801EBB0
    .word loc_801EBF0
    .word dword_801EC30
dword_801DEF4:    .word 0x21082106
off_801DEF8:    .word byte_203F6D0
// end of function sub_801DE78

.thumb
sub_801DEFC:
    push {r4,r6,r7,lr}
    mov r0, #0
    push {r0}
    ldr r1, [pc, #0x801dfd4-0x801df02-2] // byte_20364A8
    ldrb r1, [r1]
    cmp r1, #0
    beq loc_801DF7C
    push {r1}
    ldr r0, [pc, #0x801dfd0-0x801df0c-4] // word_203DB70
    mov r2, #0x40 
    bl fA00_8000B42
    pop {r3}
    ldr r4, [pc, #0x801dfd0-0x801df16-2] // word_203DB70
    mov r6, sp
loc_801DF1A:
    ldrh r0, [r4]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r1, [r0,#8]
    ldrb r0, [r6,r1]
    add r0, #1
    strb r0, [r6,r1]
    add r4, #2
    sub r3, #1
    bne loc_801DF1A
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldr r2, [r2,#0x44]
    ldrh r0, [r2,#0x24]
    ldrh r1, [r2,#0x26]
    mov r2, #0
    lsl r0, r0, #1
    cmp r0, r1
    bgt loc_801DF46
    mov r2, #4
loc_801DF46:
    strb r2, [r6,#3]
    bl sub_801DF80
    ldrb r0, [r6,r7]
    sub r0, #1
    strb r0, [r6,r7]
    push {r6}
    mov r6, #0
    sub r6, #1
    bl sub_801DFA4
    pop {r6}
    strh r0, [r5,#0x30]
    ldr r1, [pc, #0x801dfd4-0x801df60-4] // byte_20364A8
    ldrb r1, [r1]
    cmp r1, #1
    beq loc_801DF7C
    bl sub_801DF80
    push {r6}
    ldrh r6, [r5,#0x30]
    mov r0, #0xff
    and r6, r0
    bl sub_801DFA4
    pop {r6}
    strh r0, [r5,#0x32]
loc_801DF7C:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_801DEFC

.thumb
sub_801DF80:
    push {lr}
    bl sub_8001B10
    mov r1, #7
    and r0, r1
    ldrb r7, [r6,#3]
    ldr r1, [pc, #0x801dfd8-0x801df8c-4] // off_801DFDC
    ldr r7, [r1,r7]
    ldrb r7, [r7,r0]
loc_801DF92:
    ldrb r0, [r6,r7]
    cmp r0, #0
    bne locret_801DFA2
    cmp r7, #0
    bne loc_801DF9E
    mov r7, #3
loc_801DF9E:
    sub r7, #1
    b loc_801DF92
locret_801DFA2:
    pop {pc}
// end of function sub_801DF80

.thumb
sub_801DFA4:
    push {r5,lr}
    mov r5, #0
    ldr r4, [pc, #0x801dfd0-0x801dfa8-4] // word_203DB70
loc_801DFAA:
    cmp r5, r6
    beq loc_801DFC2
    ldrh r0, [r4,r5]
    cmp r0, #0
    beq loc_801DFC2
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r1, [r0,#8]
    cmp r1, r7
    beq loc_801DFC6
loc_801DFC2:
    add r5, #2
    b loc_801DFAA
loc_801DFC6:
    add r0, r5, #0
    mov r1, #0x11
    lsl r1, r1, #8
    orr r0, r1
    pop {r5,pc}
off_801DFD0:    .word word_203DB70
off_801DFD4:    .word byte_20364A8
off_801DFD8:    .word off_801DFDC
off_801DFDC:    .word dword_801DFE4
    .word dword_801DFEC
dword_801DFE4:    .word 0x0
    .word 0x2010101
dword_801DFEC:    .word 0x1000000, 0x2020101
// end of function sub_801DFA4

.thumb
sub_801DFF4:
    push {r4,lr}
    ldr r4, [pc, #0x801e024-0x801dff6-2] // dword_8707A80
    ldrb r0, [r5,#0x10]
    cmp r0, #1
    beq locret_801E010
    cmp r0, #5
    beq locret_801E010
    mov r0, #0
    mov r1, #0x14
    bl sub_8024FF0
    beq locret_801E010
    mov r0, #1
    strb r0, [r5,#0xc]
locret_801E010:
    pop {r4,pc}
    .balign 4, 0x00
// end of function sub_801DFF4

.thumb
sub_801E014:
    push {lr}
    ldr r0, [pc, #0x801e024-0x801e016-2] // dword_8707A80
    ldr r1, [pc, #0x801e028-0x801e018-4] // unk_30027A0
    mov r2, #0x20 
    bl loc_8000874
    pop {pc}
    .balign 4, 0x00
off_801E024:    .word dword_8707A80
off_801E028:    .word unk_30027A0
// end of function sub_801E014

.thumb
ho_801E02C:
    push {r5,lr}
    ldr r5, [pc, #0x801e25c-0x801e02e-2] // byte_2036440
    ldr r1, [pc, #0x801e03c-0x801e030-4] // jt_801E040
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
off_801E03C:    .word jt_801E040
jt_801E040:    .word sub_801E050+1
    .word ho_cb_801E150+1
    .word sub_801E0C0+1
    .word 0x100
// end of function ho_801E02C

.thumb
sub_801E050:
    push {lr}
    ldrh r0, [r5,#6]
    cmp r0, #0
    beq loc_801E066
    mov r0, #4
    mov r0, #1
    lsl r0, r0, #8
    add r0, #3
    strh r0, [r5,#0xa]
    mov r0, #4
    b loc_801E098
loc_801E066:
    ldr r3, [pc, #0x801e0b4-0x801e066-2] // dword_801E0B8
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    bne loc_801E078
    mov r0, #8
    b loc_801E098
loc_801E078:
    strh r0, [r5,#0xa]
    lsr r1, r0, #8
    mov r2, #5
    mul r1, r2
    mov r2, #0xff
    and r0, r2
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x21 
    ldrb r0, [r5,r0]
    mov r1, #8
    tst r0, r1
    beq loc_801E096
    mov r0, #1
    strb r0, [r5,#0x14]
loc_801E096:
    mov r0, #4
loc_801E098:
    strb r0, [r5,#0x18]
    strb r0, [r5,#2]
    mov r0, #4
    strb r0, [r5]
    ldr r5, [pc, #0x801e25c-0x801e0a0-4] // byte_2036440
    ldr r1, [pc, #0x801e0bc-0x801e0a2-2] // word_203BE80
    mov r0, #(byte_2036460 - 0x2036440)
    ldrb r0, [r5,r0]
    ldrh r0, [r1,r0]
    bl sub_801FB40
    mov r0, #0
    strb r0, [r5,#(word_2036442 - 0x2036440)]
    pop {pc}
off_801E0B4:    .word dword_801E0B8
dword_801E0B8:    .word 0xF090800
off_801E0BC:    .word word_203BE80
// end of function sub_801E050

.thumb
sub_801E0C0:
    push {lr}
    ldr r0, [r5,#0x50]
    cmp r0, #0x10
    bne loc_801E0CC
    bl sub_801E0F4
loc_801E0CC:
    bl sub_8005B34
    bl sub_8005B3A
    mov r0, #9
    ldr r1, [pc, #0x801e0f0-0x801e0d6-2] // =0xFFFF
    mov r2, #0xff
    add r2, #1
    bl f500_80005BA
    mov r0, #0x1f
    ldr r1, [pc, #0x801e0f0-0x801e0e2-2] // =0xFFFF
    mov r2, #0xff
    add r2, #1
    bl f500_80005BA
    ldrb r0, [r5,#0x16]
    pop {pc}
dword_801E0F0:    .word 0xFFFF
// end of function sub_801E0C0

.thumb
sub_801E0F4:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0
    strh r0, [r1,#0x18]
    bl sub_80169B6
    mov r0, #1
    bl sub_8015AFA
    mov r0, #0
    mov r1, #0
    bl sub_8015ACA
    ldr r0, [pc, #0x801e148-0x801e110-4] // =0x800
    bl sub_8015AFA
    ldr r0, [pc, #0x801e14c-0x801e116-2] // =0x400
    bl sub_80158F8
    ldr r0, [pc, #0x801e14c-0x801e11c-4] // =0x400
    bl sub_8015DCC
    bl sub_8007E1E
    tst r0, r0
    bne locret_801E146
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_801E13A
    bl sub_8016778
    b locret_801E146
loc_801E13A:
    bl sub_801590C
    mov r0, #2
    bl sub_8015DCC
    b locret_801E146
locret_801E146:
    pop {pc}
off_801E148:    .word 0x800
off_801E14C:    .word 0x400
// end of function sub_801E0F4

.thumb
ho_cb_801E150:
    push {r5,lr}
    ldr r5, [pc, #0x801e25c-0x801e152-2] // byte_2036440
    ldr r1, [pc, #0x801e164-0x801e154-4] // jt_801E168
    ldrb r0, [r5,#(byte_2036441 - 0x2036440)]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    mov r0, #0
    pop {r5,pc}
    .balign 4, 0x00
off_801E164:    .word jt_801E168
jt_801E168:    .word sub_801E184+1
    .word ho_cb_801E318+1
    .word sub_801E264+1
    .word sub_801E4DC+1
    .word ho_cb_801E548+1
    .word sub_801E7FC+1
    .word sub_801E8AC+1
// end of function ho_cb_801E150

.thumb
sub_801E184:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_801E1B8
    mov r0, #0x7a 
    bl f500_8000558
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0x78 
    strh r0, [r1,#0x18]
    mov r0, #0
    bl sub_80169B6
    mov r0, #1
    bl sub_8015AFA
    mov r0, #0xf
    mov r1, #0
    bl sub_8015ACA
    mov r0, #0xf
    str r0, [r5,#0x44]
    mov r0, #0x78 
    str r0, [r5,#0x40]
    strb r0, [r5,#2]
loc_801E1B8:
    ldr r0, [r5,#0x40]
    sub r0, #0xc
    push {r0,r4,r6,r7}
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    add r6, #1
loc_801E1C6:
    ldr r0, [r5,#0x44]
    sub r0, #1
    str r0, [r5,#0x44]
    ldr r4, [pc, #0x801e260-0x801e1cc-4] // unk_2036170
    lsl r0, r0, #1
    add r4, r4, r0
    lsr r0, r0, #1
    mov r1, #0
    mov r2, #3
    mov r7, #0x14
loc_801E1DA:
    push {r0,r1}
    ldrh r3, [r4]
    mov r2, #3
    bl sub_8001DC8
    pop {r0,r1}
    add r1, #1
    add r4, #0x1e
    sub r7, #1
    bne loc_801E1DA
    sub r6, #1
    bne loc_801E1C6
    pop {r0,r4,r6,r7}
    mov r2, r10
    ldr r2, [r2,#0xc]
    ldr r1, [r2,#0x30]
    ldr r3, [pc, #0x801e314-0x801e1fa-2] // =0x18000
    sub r1, r1, r3
    str r1, [r2,#0x30]
    str r0, [r5,#0x40]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    push {r0}
    add r1, r0, #0
    mov r0, #0x78 
    sub r0, r0, r1
    bl sub_80169B6
    pop {r0}
    cmp r0, #0
    bne loc_801E246
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_801E23E
    cmp r0, #0x43 
    bgt loc_801E23E
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_801E23E
    add r1, r5, #0
    add r1, #0x60 
    mov r0, #0x20 
    strb r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r1,#4]
    mov r0, #4
    strb r0, [r1,#5]
loc_801E23E:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
loc_801E246:
    ldr r0, [pc, #0x801e25c-0x801e246-2] // byte_2036440
    ldrb r0, [r0,#(byte_2036455 - 0x2036440)]
    cmp r0, #0
    beq locret_801E258
    ldrb r0, [r5,#0x11]
    cmp r0, #0
    beq locret_801E258
    bl sub_801EE0C
locret_801E258:
    pop {pc}
    .balign 4, 0x00
off_801E25C:    .word byte_2036440
off_801E260:    .word unk_2036170
// end of function sub_801E184

.thumb
sub_801E264:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_801E274
    str r0, [r5,#0x44]
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#2]
loc_801E274:
    ldr r0, [r5,#0x40]
    add r0, #0xc
    push {r0,r4-r7}
    add r7, r5, #0
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    mov r0, #1
    eor r6, r0
    add r6, #1
loc_801E288:
    ldr r0, [r7,#0x44]
    add r0, #1
    str r0, [r7,#0x44]
    sub r0, #1
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x801e2d4-0x801e294-4] // dword_801E2D8
    mov r4, #1
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_801E264

    sub r6, #1
    bne loc_801E288
    pop {r0,r4-r7}
    mov r2, r10
    ldr r2, [r2,#0xc]
    ldr r1, [r2,#0x30]
    ldr r3, [pc, #0x801e314-0x801e2aa-2] // =0x18000
    add r1, r1, r3
    str r1, [r2,#0x30]
    str r0, [r5,#0x40]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    push {r0}
    add r1, r0, #0
    mov r0, #0x78 
    sub r0, r0, r1
    bl sub_80169B6
    pop {r0}
    cmp r0, #0x78 
    bne locret_801E2D2
    ldrb r0, [r5,#0x17]
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_801E2D2:
    pop {pc}
off_801E2D4:    .word dword_801E2D8
dword_801E2D8:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_801E314:    .word 0x18000
.thumb
ho_cb_801E318:
    push {r7,lr}
    bl sub_801EDAC
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    mov r7, r10
    ldr r7, [r7,#4]
    ldr r1, [pc, #0x801e36c-0x801e328-4] // jt_801E370
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x17]
    cmp r0, #0
    beq loc_801E340
    bl sub_801EE40
loc_801E340:
    ldrb r0, [r5,#0x1f]
    cmp r0, #0
    beq loc_801E34E
    mov r1, #0
    bl sub_801FF68
    strb r0, [r5,#0x1f]
loc_801E34E:
    bl sub_801E3B8
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_801E35E
    bl sub_801EDF8
    b locret_801E368
loc_801E35E:
    ldr r1, [pc, #0x801e394-0x801e35e-2] // jt_801E394
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_801E368:
    pop {r7,pc}
    .balign 4, 0x00
off_801E36C:    .word jt_801E370
jt_801E370:    .word sub_8020280+1
    .word sub_8020290+1
    .word sub_8020560+1
    .word sub_8020668+1
    .word sub_8020754+1
    .word sub_80208D8+1
    .word sub_8020938+1
    .word sub_8020968+1
    .word sub_80209B8+1
jt_801E394:    .word jt_801E394
    .word sub_8020CCC+1
    .word sub_8020CFC+1
    .word sub_8020D10+1
    .word sub_8020D22+1
    .word sub_8020D48+1
    .word sub_8020D50+1
    .word sub_8020D50+1
    .word sub_8020D64+1
// end of function ho_cb_801E318

.thumb
sub_801E3B8:
    push {r4,r6,r7,lr}
    ldr r0, [r5,#0x54]
    ldr r1, [r5,#0x58]
    cmp r0, r1
    beq loc_801E3D8
    bl sub_8005B5C
    bl loc_8005B60
    bl sub_801E468
    cmp r0, #0
    bne locret_801E458
    ldr r0, [r5,#0x54]
    str r0, [r5,#0x58]
    b locret_801E458
loc_801E3D8:
    cmp r0, #0
    bne loc_801E3F0
    mov r0, #0x5c 
    ldrb r0, [r5,r0]
    sub r0, #1
    bne loc_801E3EC
    ldr r0, [pc, #0x801e464-0x801e3e4-4] // =0xFF
    bl f500_8000558
    mov r0, #0x3d 
loc_801E3EC:
    mov r1, #0x5c 
    strb r0, [r5,r1]
loc_801E3F0:
    ldrb r0, [r5,#1]
    cmp r0, #0x14
    beq loc_801E426
    ldrb r0, [r5,#1]
    cmp r0, #4
    bne locret_801E458
    mov r0, #1
    ldrb r1, [r5,#2]
    cmp r1, #8
    beq loc_801E426
    cmp r1, #0x1c
    beq loc_801E426
    cmp r1, #0xc
    beq loc_801E426
    ldrb r1, [r5,#0xb]
    mov r2, #5
    mul r1, r2
    ldrb r2, [r5,#0xa]
    add r2, r2, r1
    lsl r2, r2, #1
    add r2, #0x20 
    ldrh r2, [r5,r2]
    lsr r2, r2, #8
    mov r1, #0x20 
    tst r2, r1
    beq loc_801E426
    mov r0, #0
loc_801E426:
    ldr r1, [r5,#0x54]
    cmp r0, r1
    beq locret_801E458
    str r1, [r5,#0x58]
    str r0, [r5,#0x54]
    mov r1, #0x5c 
    mov r0, #1
    strb r0, [r5,r1]
    ldr r0, [r5,#0x54]
    ldr r1, [pc, #0x801e45c-0x801e438-4] // dword_801E460
    ldrb r0, [r1,r0]
    mov r1, #0xa
    bl sub_8005ADC
    ldr r0, [r5,#0x54]
    add r0, #2
    ldr r1, [pc, #0x801e45c-0x801e446-2] // dword_801E460
    ldrb r0, [r1,r0]
    mov r1, #0xa
    bl loc_8005AE0
    mov r1, #0x5d 
    add r1, r1, r5
    mov r0, #0xb
    strb r0, [r1]
locret_801E458:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_801E45C:    .word dword_801E460
dword_801E460:    .word 0x585C5054
off_801E464:    .word 0x100
// end of function sub_801E3B8

.thumb
sub_801E468:
    push {lr}
    mov r1, #0x5d 
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    mov r1, #1
    tst r0, r1
    beq loc_801E4B4
    ldr r0, [r5,#0x54]
    mov r1, #6
    mul r0, r1
    mov r1, #0x5d 
    ldrb r1, [r5,r1]
    add r0, r0, r1
    lsr r0, r0, #1
    lsl r0, r0, #1
    ldr r1, [pc, #0x801e4c0-0x801e488-4] // loc_801E4C4
    ldrh r2, [r1,r0]
    ldr r1, [pc, #0x801e4bc-0x801e48c-4] // =0xFFFF
    mov r0, #0x1f
    bl f500_80005BA
    ldr r0, [r5,#0x54]
    mov r1, #1
    eor r0, r1
    mov r1, #6
    mul r0, r1
    mov r1, #0x5d 
    ldrb r1, [r5,r1]
    add r0, r0, r1
    lsr r0, r0, #1
    lsl r0, r0, #1
    ldr r1, [pc, #0x801e4c0-0x801e4a8-4] // loc_801E4C4
    ldrh r2, [r1,r0]
    ldr r1, [pc, #0x801e4bc-0x801e4ac-4] // =0xFFFF
    mov r0, #9
    bl f500_80005BA
loc_801E4B4:
    mov r1, #0x5d 
    ldrb r0, [r5,r1]
    pop {pc}
    .balign 4, 0x00
dword_801E4BC:    .word 0xFFFF
off_801E4C0:    .word loc_801E4C4
// end of function sub_801E468

loc_801E4C4:
    lsl r0, r4, #1
    lsl r0, r0, #2
    lsl r0, r4, #2
    lsl r0, r0, #3
    lsl r0, r4, #3
    lsl r0, r0, #4
    lsl r0, r0, #4
    lsl r0, r4, #3
    lsl r0, r0, #3
    lsl r0, r4, #2
    lsl r0, r0, #2
    lsl r0, r4, #1
.thumb
sub_801E4DC:
    push {r4,r5,lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrb r0, [r5,#2]
    cmp r0, #2
    beq loc_801E536
    cmp r0, #0
    bne loc_801E50C
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #0x78 
    strh r0, [r3,#0x18]
    mov r0, #0
    bl sub_80169B6
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0xf
    mov r5, #0x14
    bl sub_8001DF8
    b locret_801E53E
loc_801E50C:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    cmp r0, #0
    beq locret_801E53E
    mov r0, #2
    strb r0, [r5,#2]
    mov r0, #0
    strh r0, [r3,#0x18]
    mov r0, #0x78 
    bl sub_80169B6
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x801e544-0x801e52a-2] // unk_2036170
    mov r4, #0xf
    mov r5, #0x14
    bl sub_8001DDC
    b locret_801E53E
loc_801E536:
    mov r0, #4
    strb r0, [r5,#1]
    ldrb r0, [r5,#0x18]
    strb r0, [r5,#2]
locret_801E53E:
    pop {r4,r5,pc}
    .word loc_801EAB4
off_801E544:    .word unk_2036170
// end of function sub_801E4DC

.thumb
ho_cb_801E548:
    push {lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    ldr r1, [pc, #0x801e55c-0x801e550-4] // jt_801E560
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_801E55C:    .word jt_801E560
jt_801E560:    .word sub_801E580+1
    .word sub_801E5CC+1
    .word sub_801E5EE+1
    .word sub_801E612+1
    .word sub_801E6F2+1
    .word sub_801E72C+1
    .word sub_801E7C4+1
    .word sub_801E7DC+1
// end of function ho_cb_801E548

.thumb
sub_801E580:
    push {lr}
    mov r0, #0
    bl sub_801E5B0
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #0x14
    mov r1, #8
    bl sub_8005ADC
    pop {pc}
// end of function sub_801E580

.thumb
sub_801E596:
    push {r0,r1,lr}
    ldr r0, [r5,#0x40]
    mov r1, #3
    tst r0, r1
    bne locret_801E5AE
    lsr r0, r0, #4
    and r0, r1
    cmp r0, #3
    bne loc_801E5AA
    mov r0, #1
loc_801E5AA:
    bl sub_801E5B0
locret_801E5AE:
    pop {r0,r1,pc}
// end of function sub_801E596

.thumb
sub_801E5B0:
    push {r1-r3,lr}
    lsl r0, r0, #3
    ldr r1, [pc, #0x801e5c4-0x801e5b4-4] // dword_801EA98
    add r0, r0, r1
    ldr r1, [pc, #0x801e5c8-0x801e5b8-4] // unk_3002B90
    mov r2, #8
    bl loc_8000874
    pop {r1-r3,pc}
    .balign 4, 0x00
off_801E5C4:    .word dword_801EA98
off_801E5C8:    .word unk_3002B90
// end of function sub_801E5B0

.thumb
sub_801E5CC:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_801E5EC
    mov r0, #0x24 
    ldr r1, [r5,#0x50]
    cmp r1, #0
    bne loc_801E5E0
    mov r0, #0x34 
loc_801E5E0:
    bl sub_80160D2
    mov r0, #8
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x44]
locret_801E5EC:
    pop {pc}
// end of function sub_801E5CC

.thumb
sub_801E5EE:
    push {lr}
    ldr r0, [r5,#0x44]
    cmp r0, #0
    bne loc_801E5FE
    bl sub_801609C
    cmp r0, #2
    bne locret_801E610
loc_801E5FE:
    ldr r0, [r5,#0x44]
    add r0, #1
    cmp r0, #0x14
    blt loc_801E60E
    mov r0, #0xc
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x40]
loc_801E60E:
    str r0, [r5,#0x44]
locret_801E610:
    pop {pc}
// end of function sub_801E5EE

.thumb
sub_801E612:
    push {lr}
    bl sub_801E596
    ldr r0, [r5,#0x44]
    add r1, r0, #1
    str r1, [r5,#0x44]
    mov r1, #7
    tst r0, r1
    bne locret_801E6BC
    add r3, r0, #0
    lsr r0, r0, #2
    add r0, #0x34 
    ldrh r0, [r5,r0]
    push {r0-r7}
    bl sub_801FCC0
    ldr r2, [pc, #0x801e79c-0x801e632-2] // =0x45
    mul r2, r3
    ldr r3, [pc, #0x801e7b0-0x801e636-2] // =0x6009580
    add r3, r3, r2
    ldr r2, [pc, #0x801e7ac-0x801e63a-2] // unk_203E590
    mov r4, #9
    mov r5, #1
    ldr r6, [pc, #0x801e7b4-0x801e640-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xFF
    .byte 0xBC
    .byte 0xF8
    .byte 0xB4
    .byte 0xC2
    .byte 5
    .byte 0xD2
    .byte 0xD
    .byte 0x55 
    .byte 0x49 
    .byte 0x8A
    .byte 0x42 
    .byte 0xC
    .byte 0xDA
    .byte 0x41 
    .byte 0xA
    .byte 0x57 
    .byte 0x48 
    .byte 0x50 
    .byte 0x4A 
    .byte 0x5A 
    .byte 0x43 
    .byte 0x58 
    .byte 0x4B 
    .byte 0x9B
    .byte 0x18
    .byte 0x56 
    .byte 0x4A 
    .byte 1
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0x52 
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x35 
    .byte 0xF0
    .byte 0xCA
    .byte 0xF9
    .byte 0xF8
    .byte 0xBC
    .byte 0x68 
    .byte 0x6C 
    .byte 0xC0
    .byte 8
    .byte 0xE9
    .byte 0x7E 
    .byte 0x88
    .byte 0x42 
    .byte 0xC
    .byte 0xDB
    .byte 0x40 
    .byte 0x1A
    .byte 0x29 
    .byte 0x7F 
    .byte 0x88
    .byte 0x42 
    .byte 8
    .byte 0xDA
    .byte 0x47 
    .byte 0x48 
    .byte 0x29 
    .byte 0x6D 
    .byte 0
    .byte 0x29 
    .byte 5
    .byte 0xD0
    .byte 0x79 
    .byte 0x20
    .byte 0xE1
    .byte 0xF7
    .byte 0x63 
    .byte 0xFF
    .byte 0x44 
    .byte 0x48 
    .byte 0
    .byte 0xE0
    .byte 0x42 
    .byte 0x48 
    .byte 0x12
    .byte 0x22 
    .byte 0xDB
    .byte 8
    .byte 0x5A 
    .byte 0x43 
    .byte 0x80
    .byte 0x18
    .byte 0x69 
    .byte 0x6C 
    .byte 0xC9
    .byte 8
    .byte 0
    .byte 0xF0
    .byte 0xB
    .byte 0xF8
    .byte 0x68 
    .byte 0x6C 
    .byte 0xC0
    .byte 8
    .byte 1
    .byte 0x30 
    .byte 0xA9
    .byte 0x7C 
    .byte 0x88
    .byte 0x42 
    .byte 3
    .byte 0xDB
    .byte 0x10
    .byte 0x20
    .byte 0xA8
    .byte 0x70 
    .byte 0
    .byte 0x20
    .byte 0x68 
    .byte 0x64 
locret_801E6BC:
    pop {pc}
// end of function sub_801E612

.thumb
sub_801E6BE:
    push {r4,r5,lr}
    ldr r2, [r5,#0x50]
    cmp r2, #0
    beq locret_801E6F0
    sub sp, sp, #0x24
    mov r2, sp
    mov r3, #9
loc_801E6CC:
    strh r0, [r2]
    add r0, #1
    strh r0, [r2,#0x12]
    add r0, #1
    add r2, #2
    sub r3, #1
    bne loc_801E6CC
    mov r3, sp
    mov r0, #3
    mul r1, r0
    add r1, #5
    ldr r0, [r5,#0x50]
    mov r2, #3
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    add sp, sp, #0x24
locret_801E6F0:
    pop {r4,r5,pc}
// end of function sub_801E6BE

.thumb
sub_801E6F2:
    push {lr}
    bl sub_801E596
    ldr r0, [r5,#0x44]
    add r0, #1
    str r0, [r5,#0x44]
    cmp r0, #0x18
    blt locret_801E72A
    push {r4-r7}
    ldrb r1, [r5,#0x1b]
    mov r0, #3
    mul r1, r0
    add r1, #5
    ldrb r5, [r5,#0x1c]
    mul r5, r0
    sub r5, #1
    ldr r0, [pc, #0x801ea80-0x801e712-2] // byte_2036440
    ldr r0, [r0,#(dword_2036490 - 0x2036440)]
    mov r2, #3
    mov r3, #0
    mov r4, #9
    bl sub_8001DF8
    pop {r4-r7}
    mov r0, #0x14
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x44]
locret_801E72A:
    pop {pc}
// end of function sub_801E6F2

.thumb
sub_801E72C:
    push {lr}
    bl sub_801E596
    ldr r0, [r5,#0x44]
    add r0, #1
    str r0, [r5,#0x44]
    cmp r0, #0x60 
    bge loc_801E780
    cmp r0, #0x10
    bne locret_801E798
    ldr r0, [pc, #0x801e7a4-0x801e740-4] // =0xA0AC
    mov r2, #0x12
    ldrb r1, [r5,#0x1b]
    mul r2, r1
    add r0, r0, r2
    bl sub_801E6BE
    push {r4-r7}
    ldrh r0, [r5,#0x3e]
    bl sub_801FCC0
    ldr r2, [pc, #0x801e79c-0x801e756-2] // =0x45
    ldrb r3, [r5,#0x1b]
    lsl r3, r3, #3
    mul r2, r3
    ldr r3, [pc, #0x801e7b0-0x801e75e-2] // =0x6009580
    add r3, r3, r2
    ldr r2, [pc, #0x801e7ac-0x801e762-2] // unk_203E590
    mov r4, #9
    mov r5, #1
    ldr r6, [pc, #0x801e7b4-0x801e768-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBC
    .byte 0x28 
    .byte 0x6D 
    .byte 0
    .byte 0x28 
    .byte 0xF
    .byte 0xD0
    .byte 0x97
    .byte 0x20
    .byte 0xE1
    .byte 0xF7
    .byte 0xED
    .byte 0xFE
    .byte 0xB
    .byte 0xE0
loc_801E780:
    mov r0, #0x18
    strb r0, [r5,#2]
    bl sub_80160C0
    ldr r0, [r5,#0x50]
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #9
    mov r5, #0xe
    bl sub_8001DF8
locret_801E798:
    pop {pc}
    .balign 4, 0x00
off_801E79C:    .word 0x48
    .word 0xD0AC
dword_801E7A4:    .word 0xA0AC
    .word 0x160
off_801E7AC:    .word unk_203E590
dword_801E7B0:    .word 0x6009580
off_801E7B4:    .word dword_868E224
    .word byte_8746D90
    .word unk_203E790
    .word 0x6009780
// end of function sub_801E72C

.thumb
sub_801E7C4:
    push {lr}
    bl sub_801609C
    cmp r0, #0
    bne locret_801E7DA
    mov r0, #0x1c
    strb r0, [r5,#2]
    mov r0, #0x10
    mov r1, #8
    bl sub_8005ADC
locret_801E7DA:
    pop {pc}
// end of function sub_801E7C4

.thumb
sub_801E7DC:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_801E7FA
    ldr r0, [r5,#0x50]
    cmp r0, #0x10
    bne loc_801E7F6
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    b locret_801E7FA
loc_801E7F6:
    mov r0, #8
    str r0, [r5]
locret_801E7FA:
    pop {pc}
// end of function sub_801E7DC

.thumb
sub_801E7FC:
    push {r4,r5,lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_801E860
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    bl sub_8007D90
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrh r0, [r0,#0x16]
    add r0, #4
    mov r1, #5
    svc 6
    cmp r0, r4
    bgt loc_801E852
    mov r3, #8
    lsr r2, r0, #1
    add r0, r0, r2
    cmp r4, r0
    blt loc_801E838
    sub r3, #4
    add r0, r0, r2
    cmp r4, r0
    blt loc_801E838
    sub r3, #4
loc_801E838:
    ldr r2, [pc, #0x801e890-0x801e838-4] // off_801E894
    ldr r3, [r2,r3]
    ldr r0, [pc, #0x801e88c-0x801e83c-4] // byte_2037C50
    ldrb r0, [r0]
    sub r0, #1
    ldrb r4, [r3,r0]
    bl sub_8001B10
    mov r1, #1
    mov r2, #0xf
    and r0, r2
    cmp r0, r4
    bge loc_801E858
loc_801E852:
    mov r1, #0
    mov r0, #2
    strb r0, [r5,#0x16]
loc_801E858:
    add r1, #1
    ldr r0, [pc, #0x801e880-0x801e85a-2] // loc_8746ECC
    bl sub_804E2A4
loc_801E860:
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_801E87C
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    ldr r0, [pc, #0x801e884-0x801e872-2] // dword_870A020
    ldr r1, [pc, #0x801e888-0x801e874-4] // unk_30027E0
    mov r2, #0x20 
    bl loc_8000874
locret_801E87C:
    pop {r4,r5,pc}
    .byte 0, 0
off_801E880:    .word loc_8746ECC
off_801E884:    .word dword_870A020
off_801E888:    .word unk_30027E0
off_801E88C:    .word byte_2037C50
off_801E890:    .word off_801E894
off_801E894:    .word off_801E8A0
    .word 0x801E8A3, 0x801E8A6
off_801E8A0:    .word loc_80F0804
    .word 0xE0C0F0C, 0xF
// end of function sub_801E7FC

.thumb
sub_801E8AC:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_801E8D4
    bl sub_801E0F4
    mov r0, #1
    strb r0, [r5,#2]
    bl sub_801EA46
    bl sub_80088B6
    mov r0, #4
    bl sub_8007EA6
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x46 
    blt loc_801E8D4
    bl sub_8016644
loc_801E8D4:
    ldr r0, [pc, #0x801e950-0x801e8d4-4] // =0x56789123
    bl sub_80089D8
    tst r0, r0
    beq locret_801E934
    bl sub_80089CC
    bl sub_80088E2
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_801E95E
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x46 
    blt loc_801E910
    ldr r0, [pc, #0x801e954-0x801e8f6-2] // =0x2000
    bl sub_8015902
    ldr r0, [pc, #0x801e954-0x801e8fc-4] // =0x2000
    bl sub_8015AFA
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #1
    eor r0, r1
    bl sub_801E95E
loc_801E910:
    bl sub_800B98C
    bl sub_8015A80
    bl sub_8015AB0
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_801E930
    cmp r0, #0x41 
    bgt loc_801E930
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#8]
    cmp r1, #1
    beq loc_801E936
loc_801E930:
    mov r0, #8
    strb r0, [r5]
locret_801E934:
    pop {pc}
loc_801E936:
    sub r0, #0x40 
    ldr r1, [pc, #0x801e958-0x801e938-4] // loc_801E95C
    ldrb r0, [r1,r0]
    add r1, r5, #0
    add r1, #0x60 
    strb r0, [r1,#1]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0x20 
    strh r0, [r5,#2]
    mov r0, #0xff
    strb r0, [r1,#4]
    pop {pc}
dword_801E950:    .word 0x56789123
off_801E954:    .word 0x2000
off_801E958:    .word loc_801E95C
// end of function sub_801E8AC

loc_801E95C:
    sub r2, r4, #0
.thumb
sub_801E95E:
    push {r4,r6,r7,lr}
    push {r0}
    bl sub_800BFAE
    add r4, r0, #2
    mov r7, #0x44 
    add r7, r7, r0
    ldr r6, [pc, #0x801ea28-0x801e96c-4] // =0xFFFF
loc_801E96E:
    ldrh r0, [r4]
    cmp r0, r6
    beq loc_801E9D6
    ldrb r1, [r7]
    mov r2, #4
    tst r1, r2
    bne loc_801E9D0
    orr r1, r2
    strb r1, [r7]
    cmp r0, #0xbb
    blt loc_801E9D0
    cmp r0, #0xc2
    bgt loc_801E9D0
    sub r0, #0xbb
    lsl r0, r0, #1
    ldr r2, [pc, #0x801ea2c-0x801e98c-4] // dword_801EA34
    ldrb r1, [r2,r0]
    cmp r1, #0x40 
    bne loc_801E9AC
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r2, [r0,#0xd]
    ldr r1, [sp]
    eor r1, r2
    lsl r1, r1, #2
    add r1, #0x44 
    ldr r0, [r0,r1]
    mov r1, #0x21 
    bl sub_8013464
    b loc_801E9D0
loc_801E9AC:
    add r0, #1
    ldrb r2, [r2,r0]
    ldr r0, [sp]
    bl sub_801E9DA
    bl sub_800D706
    ldrh r1, [r4]
    cmp r1, #0xc2
    bne loc_801E9D0
    ldr r2, [pc, #0x801ea30-0x801e9c0-4] // byte_801EA44
    ldrb r1, [r2]
    ldrb r2, [r2,#(byte_801EA45 - 0x801ea44)]
    ldr r0, [sp]
    bl sub_801E9DA
    bl sub_800D706
loc_801E9D0:
    add r7, #1
    add r4, #2
    b loc_801E96E
loc_801E9D6:
    pop {r0}
    pop {r4,r6,r7,pc}
// end of function sub_801E95E

.thumb
sub_801E9DA:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    add r6, r1, #0
    add r7, r2, #0
    cmp r1, #0x12
    beq loc_801EA12
    cmp r1, #0xe
    beq loc_801EA00
    cmp r1, #0xf
    bne locret_801EA24
    bl sub_800D722
    cmp r0, #0
    beq loc_801EA1E
    mov r7, #4
    cmp r0, #6
    ble loc_801EA1E
    mov r7, #3
    b loc_801EA1E
loc_801EA00:
    bl sub_800D722
    cmp r0, #0
    beq loc_801EA1E
    mov r7, #6
    cmp r0, #0xa
    ble loc_801EA1E
    mov r7, #3
    b loc_801EA1E
loc_801EA12:
    bl sub_800D722
    add r7, r0, #0
    cmp r7, #2
    ble loc_801EA1E
    sub r7, #1
loc_801EA1E:
    add r0, r4, #0
    add r1, r6, #0
    add r2, r7, #0
locret_801EA24:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_801EA28:    .word 0xFFFF
off_801EA2C:    .word dword_801EA34
off_801EA30:    .word byte_801EA44
dword_801EA34:    .word 0x100D210A, 0x4040200D, 0x41B060F, 0x60F0112
byte_801EA44:    .byte 0xE
byte_801EA45:    .byte 0xA
// end of function sub_801E9DA

.thumb
sub_801EA46:
    push {r4,r6,r7,lr}
    ldr r4, [pc, #0x801ea78-0x801ea48-4] // word_2037A42
    mov r6, #0xff
    lsl r6, r6, #8
    add r6, #0xff
    ldr r7, [pc, #0x801ea7c-0x801ea50-4] // dword_2037BD8
loc_801EA52:
    ldrh r0, [r4]
    cmp r0, r6
    beq locret_801EA76
    lsr r1, r0, #9
    cmp r1, #0x1b
    beq loc_801EA72
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #2
    bgt loc_801EA72
    ldrb r1, [r7,r0]
    add r1, #1
    strb r1, [r7,r0]
loc_801EA72:
    add r4, #2
    b loc_801EA52
locret_801EA76:
    pop {r4,r6,r7,pc}
off_801EA78:    .word word_2037A42
off_801EA7C:    .word dword_2037BD8
off_801EA80:    .word byte_2036440
    .word unk_2036170
    .word dword_870A940
    .word 0x258
    .word word_203BE80
    .word 0x18000
dword_801EA98:    .word 0x7FFF0000, 0x14A5, 0x43F00000, 0x14A5, 0x421F0000
    .word 0x14A5, 0x801EAB4
// end of function sub_801EA46

loc_801EAB4:
    str r0, [sp,#0x11c]
    str r0, [sp,#0x120]
    str r0, [sp,#0x124]
    str r4, [sp,#0x120]
    str r0, [sp,#0x128]
    str r0, [sp,#0x12c]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x134]
    str r0, [sp,#0x12c]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x134]
    str r0, [sp,#0x12c]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x134]
    str r0, [sp,#0x12c]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x130]
    str r0, [sp,#0x134]
    str r0, [sp,#0x138]
    str r0, [sp,#0x13c]
    str r0, [sp,#0x140]
    str r4, [sp,#0x13c]
    str r0, [sp,#0x144]
loc_801EAF0:
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    .word 0xBEBEBEBE, 0xBEBEBEBE, 0xBEBEBEBE, 0xBFBFBFBF, 0xBFBFBFBF
    .word 0xBFBFBFBF, 0xC0C0C0C0, 0xC0C0C0C0, 0xC1C1C1C1, 0xC1C1C1C1
dword_801EB30:    .word 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB
    .word 0xBBBBBBBB, 0xBDBCBCBC, 0xBEBEBDBD, 0xBFBFBFBE, 0xC1C1C0C0
    .word 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2
    .word 0xC2C2C2C2
loc_801EB70:
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    .word 0xBEBEBEBE, 0xBEBEBEBE, 0xBEBEBEBE, 0xBFBFBFBF, 0xBFBFBFBF
    .word 0xBFBFBFBF, 0xC0C0C0C0, 0xC0C0C0C0, 0xC1C1C1C1, 0xC1C1C1C1
dword_801EBB0:    .word 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB
    .word 0xBBBBBBBB, 0xBDBCBCBC, 0xBEBEBDBD, 0xBFBFBFBE, 0xC1C1C0C0
    .word 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2
    .word 0xC2C2C2C2
loc_801EBF0:
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r2-r5,r7}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    pop {r0,r2-r5,r7,pc}
    .word 0xBEBEBEBE, 0xBEBEBEBE, 0xBEBEBEBE, 0xBFBFBFBF, 0xBFBFBFBF
    .word 0xBFBFBFBF, 0xC0C0C0C0, 0xC0C0C0C0, 0xC1C1C1C1, 0xC1C1C1C1
dword_801EC30:    .word 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB, 0xBBBBBBBB
    .word 0xBBBBBBBB, 0xBDBCBCBC, 0xBEBEBDBD, 0xBFBFBFBE, 0xC1C1C0C0
    .word 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2, 0xC2C2C2C2
    .word 0xC2C2C2C2
.thumb
sub_801EC70:
    push {r0,r1,r3-r7,lr}
    mov r6, #1
    cmp r5, #1
    bne loc_801EC7A
    mul r6, r4
loc_801EC7A:
    mov r5, #0x1e
    mul r1, r5
    lsl r0, r0, #1
    add r1, r1, r0
    ldr r0, [pc, #0x801ecb0-0x801ec82-2] // unk_2036170
    add r1, r1, r0
    add r5, r3, #0
    add r7, r2, #0
loc_801EC8A:
    add r0, r1, #0
    add r3, r5, #0
    add r2, r7, #0
loc_801EC90:
    strh r2, [r0]
    add r0, #2
    add r2, r2, r6
    sub r3, #1
    bne loc_801EC90
    add r1, #0x1e
    cmp r6, #1
    beq loc_801ECA8
    add r7, #1
    sub r2, r2, r6
    add r2, #1
    b loc_801ECAA
loc_801ECA8:
    add r7, r2, #0
loc_801ECAA:
    sub r4, #1
    bne loc_801EC8A
    pop {r0,r1,r3-r7,pc}
off_801ECB0:    .word unk_2036170
// end of function sub_801EC70

.thumb
sub_801ECB4:
    push {r6,lr}
    ldr r6, [pc, #0x801ecc0-0x801ecb6-2] // dword_801ECC4
    bl sub_801ED78
    pop {r6,pc}
    .byte 0, 0
off_801ECC0:    .word dword_801ECC4
dword_801ECC4:    .word 0x0
    .word 0x100E0000, 0x300E000E, 0x2000000E, 0x10001, 0x100C0001
    .word 0x300C000C, 0x2001000C
// end of function sub_801ECB4

.thumb
sub_801ECE4:
    push {r6,lr}
    ldr r6, [pc, #0x801ecf0-0x801ece6-2] // dword_801ECF4
    bl sub_801ED78
    pop {r6,pc}
    .byte 0, 0
off_801ECF0:    .word dword_801ECF4
dword_801ECF4:    .word 0x20002
    .word 0x10160002
    .word 0x30160014
    .word 0x20020014
    .word 0x40004
    .word 0x10140004
    .word 0x30140012
    .word 0x20040012
// end of function sub_801ECE4

.thumb
sub_801ED14:
    push {r6,lr}
    mov r0, #0x38 
    mov r1, #0x80
    ldr r6, [pc, #0x801ed24-0x801ed1a-2] // unk_801ED28
    bl sub_801ED78
    pop {r6,pc}
    .balign 4, 0x00
off_801ED24:    .word unk_801ED28
unk_801ED28:    .byte 2
    .word 0x2000200
    .word 0x14101C00
    .word 0x14301C00
    .word 0x4200200
    .word 0x4000400
    .word 0x12101A00
    .word 0x12301A00
    .hword 0x400
    .byte 0x20
// end of function sub_801ED14

.thumb
sub_801ED48:
    push {r6,lr}
    ldr r6, [pc, #0x801ed54-0x801ed4a-2] // unk_801ED58
    bl sub_801ED78
    pop {r6,pc}
    .balign 4, 0x00
off_801ED54:    .word unk_801ED58
unk_801ED58:    .byte 3
    .word 0x3000200
    .word 0xE101600
    .word 0xE301600
    .word 0x4200200
    .word 0x4000400
    .word 0xD101400
    .word 0xD301400
    .hword 0x400
    .byte 0x20
// end of function sub_801ED48

.thumb
sub_801ED78:
    push {r4,r5,lr}
    ldr r5, [r5,#0x40]
    mov r4, #1
    lsr r5, r5, #3
    and r5, r4
    sub r0, #3
    sub r1, #3
    lsl r0, r0, #0x10
    add r0, r0, r1
    add r4, r0, #0
    mov r2, #0
    mov r3, #0
    ldr r1, [pc, #0x801eda8-0x801ed90-4] // =0xD360
    add r1, r1, r5
    lsl r5, r5, #4
    add r5, r5, r6
    mov r6, #0xc
loc_801ED9A:
    ldr r0, [r5,r6]
    add r0, r0, r4
    bl sub_8007880
    sub r6, #4
    bpl loc_801ED9A
    pop {r4,r5,pc}
dword_801EDA8:    .word 0xD360
// end of function sub_801ED78

.thumb
sub_801EDAC:
    push {r4,r5,lr}
    bl sub_8007E1E
    cmp r0, #0
    beq locret_801EDD6
    ldr r0, [r5,#0x40]
    mov r1, #0x1f
    and r0, r1
    cmp r0, #0x1c
    blt loc_801EDC6
    bl sub_801EDF8
    b locret_801EDD6
loc_801EDC6:
    mov r0, #0xf
    mov r1, #4
    mov r2, #3
    ldr r3, [pc, #0x801edd8-0x801edcc-4] // loc_801EDDC
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
locret_801EDD6:
    pop {r4,r5,pc}
off_801EDD8:    .word loc_801EDDC
// end of function sub_801EDAC

loc_801EDDC:
    b loc_801EEC0
    b loc_801EEC4
    b loc_801EEC8
    b loc_801EECC
    b loc_801EED0
    b loc_801EED4
    b loc_801EED8
    b loc_801EEDC
    b loc_801EEE0
    b loc_801EEE4
    b loc_801EEE8
    b loc_801EEEC
    b loc_801EEF0
    b loc_801EEF4
.thumb
sub_801EDF8:
    push {r4,r5,lr}
    mov r0, #0xf
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #7
    mov r5, #2
    bl sub_8001DF8
// end of function sub_801EDF8

    pop {r4,r5,pc}
.thumb
sub_801EE0C:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r1, [r1,#0x18]
    cmp r1, #0x28 
    bgt locret_801EE30
    mov r0, #0x18
    sub r0, r0, r1
    ldr r1, [pc, #0x801ee3c-0x801ee1c-4] // =0x1FC
    and r0, r1
    lsl r0, r0, #0x10
    ldr r1, [pc, #0x801ee34-0x801ee22-2] // =0x40000050
    add r0, r0, r1
    ldr r1, [pc, #0x801ee38-0x801ee26-2] // =0xB372
    mov r2, #0
    mov r3, #0
    bl sub_8007880
locret_801EE30:
    pop {pc}
    .balign 4, 0x00
dword_801EE34:    .word 0x40000050
dword_801EE38:    .word 0xB372
dword_801EE3C:    .word 0x1FF
// end of function sub_801EE0C

.thumb
sub_801EE40:
    push {r4-r6,lr}
    ldrb r0, [r5,#2]
    cmp r0, #0x18
    beq locret_801EE74
    cmp r0, #0x1c
    beq locret_801EE74
    ldr r5, [r5,#0x40]
    mov r4, #7
    and r4, r5
    cmp r4, #1
    bne loc_801EE68
    mov r3, #8
    and r3, r5
    lsl r3, r3, #6
    ldr r0, [pc, #0x801ee80-0x801ee5c-4] // dword_87054C0
    ldr r1, [pc, #0x801ee84-0x801ee5e-2] // =0x6016C40
    ldr r2, [pc, #0x801ee88-0x801ee60-4] // =0x200
    add r0, r0, r3
    bl loc_8000874
loc_801EE68:
    ldr r0, [pc, #0x801ee78-0x801ee68-4] // =0x80010064
    ldr r1, [pc, #0x801ee7c-0x801ee6a-2] // =0xD362
    mov r2, #0
    mov r3, #0
    bl sub_8007880
locret_801EE74:
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_801EE78:    .word 0x80010064
dword_801EE7C:    .word 0xD362
off_801EE80:    .word dword_87054C0
dword_801EE84:    .word 0x6016C40
off_801EE88:    .word 0x200
// end of function sub_801EE40

.thumb
sub_801EE8C:
    push {r1,r2,r5,lr}
    ldrb r1, [r5,r0]
    add r0, #1
    ldrb r0, [r5,r0]
    mov r2, #0x10
    tst r0, r2
    bne loc_801EEA8
    mov r2, #0x20 
    tst r0, r2
    bne loc_801EEB0
    ldr r2, [pc, #0x801ef24-0x801eea0-4] // word_203BE80
    ldrh r0, [r2,r1]
    cmp r2, r2
locret_801EEA6:
    pop {r1,r2,r5,pc}
loc_801EEA8:
    ldr r5, [pc, #0x801ef6c-0x801eea8-4] // word_203DB70
    ldrh r0, [r5,r1]
    cmp r5, #0
    b locret_801EEA6
loc_801EEB0:
    ldr r5, [pc, #0x801eeb8-0x801eeb0-4] // byte_2036440
    ldrh r0, [r5,r1]
    cmp r5, r5
    b locret_801EEA6
off_801EEB8:    .word byte_2036440
// end of function sub_801EE8C

.thumb
sub_801EEBC:
    push {r1-r4,r6,r7,lr}
    add r7, r0, #2
loc_801EEC0:
    ldrb r1, [r5,r0]
    add r0, #1
loc_801EEC4:
    ldrb r0, [r5,r0]
    mov r2, #0x10
loc_801EEC8:
    tst r0, r2
    bne loc_801EEFA
loc_801EECC:
    mov r2, #0x20 
    and r0, r2
loc_801EED0:
    beq loc_801EEDC
    ldr r1, [pc, #0x801ef20-0x801eed2-2] // byte_203F6D0
loc_801EED4:
    ldrb r2, [r1]
    add r2, #1
loc_801EED8:
    strb r2, [r1]
    b locret_801EEF8
loc_801EEDC:
    ldr r3, [pc, #0x801ef24-0x801eedc-4] // word_203BE80
    mov r6, #0x3c 
loc_801EEE0:
    bl sub_801EF02
loc_801EEE4:
    ldrb r1, [r5,#0x11]
    lsl r1, r1, #1
loc_801EEE8:
    add r1, #0x20 
loc_801EEEA:
    cmp r7, r1
loc_801EEEC:
    beq locret_801EEF8
    ldrb r0, [r5,r7]
loc_801EEF0:
    sub r0, #2
    strb r0, [r5,r7]
loc_801EEF4:
    add r7, #2
    b loc_801EEEA
locret_801EEF8:
    pop {r1-r4,r6,r7,pc}
loc_801EEFA:
    ldr r3, [pc, #0x801ef6c-0x801eefa-2] // word_203DB70
    mov r0, #0
    strh r0, [r3,r1]
    b locret_801EEF8
// end of function sub_801EEBC

.thumb
sub_801EF02:
    add r2, r1, #2
    mov r4, #0
    sub r4, #1
    lsr r4, r4, #0x10
loc_801EF0A:
    ldrh r0, [r3,r2]
    strh r0, [r3,r1]
    add r1, #2
    add r2, #2
    cmp r2, r6
    beq loc_801EF1C
    cmp r0, r4
    bne loc_801EF0A
    mov pc, lr
loc_801EF1C:
    strh r4, [r3,r1]
    mov pc, lr
off_801EF20:    .word byte_203F6D0
off_801EF24:    .word word_203BE80
// end of function sub_801EF02

.thumb
sub_801EF28:
    push {r4,r6,r7,lr}
    mov r6, #0
    sub r6, #1
    mov r7, #0
    ldr r4, [pc, #0x801ef6c-0x801ef30-4] // word_203DB70
    mov r2, #0
    mov r3, #0
loc_801EF36:
    ldrsh r0, [r4,r3]
    cmp r0, #0
    bne loc_801EF42
    add r3, #2
    add r7, #1
    b loc_801EF36
loc_801EF42:
    cmp r2, r3
    beq loc_801EF48
    strh r0, [r4,r2]
loc_801EF48:
    cmp r0, r6
    beq loc_801EF52
    add r2, #2
    add r3, #2
    b loc_801EF36
loc_801EF52:
    sub r3, r3, r2
    cmp r3, #4
    bne loc_801EF5C
    add r2, #2
    strh r0, [r4,r2]
loc_801EF5C:
    cmp r7, #0
    beq locret_801EF68
    ldr r1, [pc, #0x801ef70-0x801ef60-4] // byte_20364A8
    ldrb r0, [r1]
    sub r0, r0, r7
    strb r0, [r1]
locret_801EF68:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_801EF6C:    .word word_203DB70
off_801EF70:    .word byte_20364A8
// end of function sub_801EF28

__801EF74:
    push {r4,r6,r7,lr}  // fix function chunks
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_801EF8C
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_801EF8C
    cmp r0, #0x43 
    bgt loc_801EF8C
    b loc_801F222
loc_801EF8C:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    ldr r0, [pc, #0x801f2b8-0x801ef90-4] // dword_2033000
    mov r1, #0x48 
    bl f900_8000930
    ldr r4, [pc, #0x801f2b8-0x801ef98-4] // dword_2033000
    ldr r6, [pc, #0x801f2b4-0x801ef9a-2] // byte_2037A10
    mov r3, #6
    mov r0, #0
    sub r0, #1
loc_801EFA2:
    strh r0, [r4]
    strh r0, [r6,#0x32]
    add r4, #2
    add r6, #2
    sub r3, #1
    bne loc_801EFA2
    ldrb r3, [r5,#0xc]
    cmp r3, #2
    bne loc_801EFCE
    ldrb r0, [r5,#0xe]
    bl sub_801EEBC
    ldrb r0, [r5,#0xe]
    cmp r0, #0x20 
    bne loc_801EFCE
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r0, [r3,#0x17]
    cmp r0, #0
    beq loc_801EFCE
    mov r0, #0
    strb r0, [r3,#0x17]
loc_801EFCE:
    ldr r4, [pc, #0x801f2b8-0x801efce-2] // dword_2033000
    ldrb r3, [r5,#0x12]
    cmp r3, #0
    beq loc_801F046
    mov r1, #0x48 
loc_801EFD8:
    ldrb r7, [r5,r1]
    cmp r7, #0x20 
    beq loc_801EFEC
    bge loc_801EFF0
    bl sub_801F13E
    add r0, r7, #0
    add r0, #0x61 
    add r0, #0xff
    b loc_801F000
loc_801EFEC:
    bl sub_801F150
loc_801EFF0:
    add r0, r7, #0
    bl sub_801EE8C
    beq loc_801F000
    ldrh r6, [r4,#0x3c]
    add r6, #2
    strh r6, [r4,#0x3c]
    b loc_801F012
loc_801F000:
    bl sub_8020246
    ldr r2, [pc, #0x801f2c0-0x801f004-4] // =0x3784
    cmp r0, r2
    bne loc_801F012
    mov r0, #0
    strh r0, [r4,#0x3c]
    sub r4, #2
    b loc_801F03E
loc_801F012:
    strh r0, [r4]
    push {r1}
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    push {r0,r3}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    bl ho_8019288
    strh r0, [r4,#0xc]
    pop {r0,r3}
    bl sub_8019010
    ldrb r1, [r0,#7]
    strh r1, [r4,#0x24]
    pop {r1}
    cmp r7, #0x20 
    blt loc_801F03E
    add r0, r7, #0
    bl sub_801EEBC
loc_801F03E:
    add r1, #1
    add r4, #2
    sub r3, #1
    bne loc_801EFD8
loc_801F046:
    bl sub_801EF28
    ldr r2, [pc, #0x801f41c-0x801f04a-2] // =0xFFFF
    ldr r4, [pc, #0x801f2b8-0x801f04c-4] // dword_2033000
    ldr r6, [pc, #0x801f2b4-0x801f04e-2] // byte_2037A10
loc_801F050:
    ldrh r0, [r4]
    cmp r0, r2
    beq loc_801F06A
    ldrh r1, [r4,#0x3c]
    cmp r1, #2
    bge loc_801F066
    ldrh r1, [r4,#0x24]
    cmp r1, #0xf
    beq loc_801F066
    strh r0, [r6,#0x32]
    add r6, #2
loc_801F066:
    add r4, #2
    b loc_801F050
loc_801F06A:
    bl sub_801F2D0
    cmp r0, #0
    beq loc_801F076
    mov r0, #0x10
    strb r0, [r5,#0xa]
loc_801F076:
    ldr r2, [pc, #0x801f41c-0x801f076-2] // =0xFFFF
    ldr r4, [pc, #0x801f2b8-0x801f078-4] // dword_2033000
loc_801F07A:
    ldrh r0, [r4]
    cmp r0, r2
    beq loc_801F0F0
    cmp r0, #0x95
    beq loc_801F08C
    cmp r0, #0x96
    beq loc_801F08C
    cmp r0, #0xcd
    bne loc_801F0EC
loc_801F08C:
    mov r0, #0xf
    and r0, r4
    cmp r0, #0
    beq loc_801F0EC
    sub r0, r4, #2
    ldrh r0, [r0]
    push {r2}
    bl sub_8019010
    pop {r2}
    ldrb r0, [r0,#9]
    ldrh r1, [r4]
    cmp r1, #0x96
    beq loc_801F0B0
    mov r1, #2
    tst r0, r1
    beq loc_801F0EC
    b loc_801F0B6
loc_801F0B0:
    mov r1, #4
    tst r0, r1
    beq loc_801F0EC
loc_801F0B6:
    ldrh r0, [r4,#0xc]
    ldrh r1, [r4,#0x16]
    add r0, r0, r1
    strh r0, [r4,#0x16]
    ldrh r0, [r4,#0x3c]
    mov r1, #1
    and r1, r0
    ldrh r0, [r4,#0x3a]
    orr r0, r1
    strh r0, [r4,#0x3a]
    add r6, r4, #0
    add r3, r4, #0
    add r3, #2
loc_801F0D0:
    ldrh r0, [r3,#0x3c]
    strh r0, [r4,#0x3c]
    ldrh r0, [r3,#0xc]
    strh r0, [r4,#0xc]
    ldrh r0, [r3,#0x24]
    strh r0, [r4,#0x24]
    ldrh r0, [r3]
    strh r0, [r4]
    add r3, #2
    add r4, #2
    cmp r0, r2
    bne loc_801F0D0
    add r4, r6, #0
    sub r4, #2
loc_801F0EC:
    add r4, #2
    b loc_801F07A
loc_801F0F0:
    ldrb r0, [r5,#0xf]
    cmp r0, #0xc
    bne loc_801F0FA
    bl sub_801F166
loc_801F0FA:
    ldr r2, [pc, #0x801f2b8-0x801f0fa-2] // dword_2033000
    ldr r6, [pc, #0x801f2b4-0x801f0fc-4] // byte_2037A10
    ldr r4, [pc, #0x801f2bc-0x801f0fe-2] // byte_2037A4E
    mov r0, #0
    ldrb r3, [r5,#0x12]
    cmp r3, #0
    bne loc_801F10A
    mov r0, #0xff
loc_801F10A:
    strb r0, [r6]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    sub r0, #1
    mov r3, #6
loc_801F116:
    ldrh r7, [r2]
    strh r7, [r6,#2]
    ldrh r7, [r2,#0xc]
    strh r7, [r6,#0xe]
    ldrh r7, [r2,#0x18]
    strh r7, [r6,#0x1a]
    bl sub_801F1DA
    strh r1, [r6,#0x26]
    strb r0, [r4]
    ldrh r7, [r2,#0x3c]
    strb r7, [r4,#6]
    add r6, #2
    add r4, #1
    add r2, #2
    sub r3, #1
    bne loc_801F116
    mov r0, #0
    ldrb r1, [r5,#0xa]
    pop {r4,r6,r7,pc}
.thumb
sub_801F13E:
    push {r0-r2,lr}
    ldr r1, [pc, #0x801f2c4-0x801f140-4] // dword_203BF88
    mov r2, #1
    lsl r2, r7
    lsr r2, r2, #1
    ldr r0, [r1]
    orr r0, r2
    str r0, [r1]
    pop {r0-r2,pc}
// end of function sub_801F13E

.thumb
sub_801F150:
    push {r0-r3,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r0, [r3,#0x17]
    cmp r0, #0
    beq locret_801F164
    mov r0, #0
    strb r0, [r3,#0x17]
    mov r0, #1
    strh r0, [r4,#0x3c]
locret_801F164:
    pop {r0-r3,pc}
// end of function sub_801F150

.thumb
sub_801F166:
    push {r4,lr}
    ldr r4, [pc, #0x801f2b8-0x801f168-4] // dword_2033000
    ldr r2, [pc, #0x801f41c-0x801f16a-2] // =0xFFFF
loc_801F16C:
    ldrh r0, [r4]
    cmp r0, r2
    beq locret_801F180
    ldrh r0, [r4,#0x24]
    cmp r0, #3
    bne loc_801F17C
    bl sub_801F182
loc_801F17C:
    add r4, #2
    b loc_801F16C
locret_801F180:
    pop {r4,pc}
// end of function sub_801F166

.thumb
sub_801F182:
    push {r2,lr}
    add r3, r4, #2
    ldrh r0, [r3]
    ldr r2, [pc, #0x801f41c-0x801f188-4] // =0xFFFF
    cmp r0, r2
    beq locret_801F1D8
    ldrh r1, [r3,#0x24]
    cmp r1, #0xe
    beq locret_801F1D8
    cmp r1, #0xf
    beq locret_801F1D8
    cmp r1, #0xc
    bne locret_801F1D8
    push {r2,r3}
    bl sub_8019010
    pop {r2,r3}
    ldrb r0, [r0,#9]
    mov r1, #2
    tst r0, r1
    beq locret_801F1D8
    ldrh r0, [r3,#0xc]
    ldrh r1, [r4,#0xc]
    add r1, r1, r0
    strh r1, [r4,#0xc]
    ldrh r0, [r3,#0x18]
    ldrh r1, [r4,#0x18]
    add r1, r1, r0
    strh r1, [r4,#0x18]
    add r2, r3, #2
    ldr r1, [pc, #0x801f41c-0x801f1be-2] // =0xFFFF
loc_801F1C0:
    ldrh r0, [r2,#0xc]
    strh r0, [r3,#0xc]
    ldrh r0, [r2,#0x24]
    strh r0, [r3,#0x24]
    ldrh r0, [r2,#0x30]
    strh r0, [r3,#0x30]
    ldrh r0, [r2]
    strh r0, [r3]
    add r2, #2
    add r3, #2
    cmp r0, r1
    bne loc_801F1C0
locret_801F1D8:
    pop {r2,pc}
// end of function sub_801F182

.thumb
sub_801F1DA:
    push {r0,r2,r3,lr}
    mov r1, #0
    ldrb r0, [r5,#0xf]
    cmp r0, #8
    bne loc_801F1EE
    ldrh r0, [r2,#0x24]
    cmp r0, #0xc
    bne locret_801F220
    mov r1, #0xa
    b loc_801F20C
loc_801F1EE:
    cmp r0, #2
    bne loc_801F200
    ldrh r0, [r2,#0x24]
    cmp r0, #0xc
    beq loc_801F1FC
    cmp r0, #8
    bne locret_801F220
loc_801F1FC:
    mov r1, #0x1e
    b loc_801F20C
loc_801F200:
    cmp r0, #3
    bne locret_801F220
    ldrh r0, [r2,#0x24]
    cmp r0, #0xa
    bne locret_801F220
    mov r1, #0xa
loc_801F20C:
    push {r1}
    ldrh r0, [r2]
    bl sub_8019010
    ldrb r0, [r0,#9]
    mov r1, #2
    tst r0, r1
    pop {r1}
    bne locret_801F220
    mov r1, #0
locret_801F220:
    pop {r0,r2,r3,pc}
// end of function sub_801F1DA

loc_801F222:
    add r3, r5, #0
    add r3, #0x60 
    cmp r0, #0x40 
    beq loc_801F234
    cmp r0, #0x41 
    beq loc_801F274
    cmp r0, #0x43 
    beq loc_801F2A4
    b loc_801EF8C
loc_801F234:
    ldrb r0, [r3]
    cmp r0, #3
    beq loc_801F25E
    sub r0, #1
    lsl r0, r0, #1
    add r0, #0x1a
    cmp r0, #0x1a
    bne loc_801F24C
    ldrb r1, [r5,#0x12]
    cmp r1, #0
    beq loc_801F24C
    mov r0, #0x1e
loc_801F24C:
    strb r0, [r3,#1]
    ldrb r0, [r5,#1]
    strb r0, [r3,#4]
    ldrb r0, [r5,#2]
    strb r0, [r3,#5]
    mov r0, #0x20 
    strh r0, [r5,#2]
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_801F25E:
    mov r0, #0x20 
    strb r0, [r3,#1]
loc_801F262:
    mov r0, #8
    strb r0, [r3,#4]
    mov r0, #0
    strb r0, [r3,#5]
    mov r0, #0xff
    strb r0, [r5,#0x17]
    mov r0, #0x20 
    strh r0, [r5,#2]
    b loc_801EF8C
loc_801F274:
    ldrb r0, [r3]
    cmp r0, #3
    beq loc_801F29E
    sub r0, #1
    lsl r0, r0, #1
    add r0, #0x16
    cmp r0, #0x16
    bne loc_801F24C
    ldrb r1, [r5,#0x12]
    cmp r1, #2
    bne loc_801F24C
    mov r2, #0x48 
    ldrb r1, [r5,r2]
    cmp r1, #0x22 
    bne loc_801F24C
    add r2, #1
    ldrb r1, [r5,r2]
    cmp r1, #0x20 
    bne loc_801F24C
    mov r0, #0x1a
    b loc_801F24C
loc_801F29E:
    mov r0, #0x1c
    strb r0, [r3,#1]
    b loc_801F262
loc_801F2A4:
    ldrb r0, [r3]
    cmp r0, #3
    bne loc_801F2AC
    b loc_801EF8C
loc_801F2AC:
    sub r0, #1
    lsl r0, r0, #1
    add r0, #0xa
    b loc_801F24C
off_801F2B4:    .word byte_2037A10
off_801F2B8:    .word dword_2033000
off_801F2BC:    .word byte_2037A4E
off_801F2C0:    .word 0x3784
off_801F2C4:    .word dword_203BF88
    lsr r4, r3, #0x19
    lsr r2, r0, #0x20
    lsr r4, r5, #0x19
    lsr r2, r0, #0x20
.thumb
sub_801F2D0:
    push {r4,r6,r7,lr}
    ldr r4, [pc, #0x801f418-0x801f2d2-2] // dword_2033000
    mov r6, #0x30 
    add r6, r6, r4
    add r7, r5, #0
    add r7, #0x34 
    ldr r2, [pc, #0x801f41c-0x801f2dc-4] // =0xFFFF
    mov r3, #0
loc_801F2E0:
    ldrh r0, [r4,r3]
    strh r0, [r7,r3]
    cmp r0, r2
    beq loc_801F2F8
    add r1, r0, #0
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    lsr r1, r1, #9
    strh r0, [r4,r3]
    strh r1, [r6,r3]
    add r3, #2
    b loc_801F2E0
loc_801F2F8:
    ldrb r7, [r5,#0x12]
    cmp r7, #3
    blt loc_801F3A6
loc_801F2FE:
    ldr r6, [pc, #0x801f420-0x801f2fe-2] // off_80211F0
    ldr r3, [r6]
loc_801F302:
    ldrb r2, [r3]
    cmp r7, r2
    blt loc_801F396
    ldrb r0, [r3,#1]
    cmp r0, #0
    bne loc_801F314
    bl sub_801F3AA
    b loc_801F318
loc_801F314:
    bl sub_801F3F2
loc_801F318:
    cmp r0, #0
    beq loc_801F396
    ldrb r0, [r5,#0x12]
    sub r0, r0, r7
    strb r0, [r5,#0x1b]
    ldrb r0, [r3]
    strb r0, [r5,#0x1c]
    ldrh r0, [r3,#2]
    strh r0, [r4]
    strh r0, [r5,#0x3e]
    push {r0,r3}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    bl ho_8019288
    strh r0, [r4,#0xc]
    pop {r0,r3}
    bl sub_8019010
    ldrb r1, [r0,#7]
    strh r1, [r4,#0x24]
    mov r1, #0
    strh r1, [r4,#0x3c]
    add r2, r7, #0
    ldrb r1, [r3]
    ldrb r0, [r5,#0x1b]
    sub r7, r7, r0
    sub r7, r7, r1
    lsl r0, r1, #1
    add r3, r4, #0
    add r3, r3, r0
    add r4, #2
    mov r1, #0
    sub r1, #1
loc_801F35E:
    cmp r7, #0
    bmi loc_801F378
    ldrh r0, [r3,#0xc]
    strh r0, [r4,#0xc]
    ldrh r0, [r3,#0x24]
    strh r0, [r4,#0x24]
    ldrh r0, [r3,#0x30]
    strh r0, [r4,#0x30]
    ldrh r0, [r3,#0x3c]
    strh r0, [r4,#0x3c]
    ldrh r0, [r3]
    strh r0, [r4]
    b loc_801F384
loc_801F378:
    mov r0, #0
    strh r0, [r4,#0xc]
    strh r0, [r4,#0x24]
    strh r0, [r4,#0x30]
    strh r0, [r4,#0x3c]
    strh r1, [r4]
loc_801F384:
    sub r7, #1
    add r3, #2
    add r4, #2
    sub r2, #1
    bne loc_801F35E
    bl sub_801F424
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_801F396:
    add r6, #4
    ldr r3, [r6]
    cmp r3, #0
    bne loc_801F302
    add r4, #2
    sub r7, #1
    cmp r7, #3
    bge loc_801F2FE
loc_801F3A6:
    mov r0, #0
    pop {r4,r6,r7,pc}
// end of function sub_801F2D0

.thumb
sub_801F3AA:
    push {r6,r7,lr}
    mov r2, #0
    mov r7, #0
loc_801F3B0:
    ldrh r1, [r4,r2]
    ldrh r0, [r3,#4]
    cmp r0, r1
    bne loc_801F3EE
    add r0, r2, #0
    add r0, #0x30 
    ldrh r1, [r4,r0]
    add r6, r1, #0
    ldrh r0, [r4,#0x30]
    cmp r0, #0x1a
    bne loc_801F3CE
    ldrh r0, [r4,#0x32]
    sub r0, #1
    bpl loc_801F3CE
    mov r0, #0
loc_801F3CE:
    sub r1, r1, r0
    lsl r1, r1, #1
    cmp r1, r2
    beq loc_801F3E0
    cmp r6, #0x1a
    bne loc_801F3EE
    cmp r7, #0
    bne loc_801F3EE
    add r7, r6, #0
loc_801F3E0:
    add r2, #2
    ldrb r0, [r3]
    lsl r0, r0, #1
    cmp r0, r2
    bne loc_801F3B0
    mov r0, #1
    pop {r6,r7,pc}
loc_801F3EE:
    mov r0, #0
    pop {r6,r7,pc}
// end of function sub_801F3AA

.thumb
sub_801F3F2:
    push {r3,r6,lr}
    ldrb r6, [r3]
    lsl r6, r6, #1
    add r3, #4
    mov r2, #0
loc_801F3FC:
    ldrh r1, [r4,r2]
    ldrh r0, [r3,r2]
    cmp r0, r1
    bne loc_801F40E
    add r2, #2
    cmp r6, r2
    bne loc_801F3FC
    mov r0, #1
    pop {r3,r6,pc}
loc_801F40E:
    mov r0, #0
    pop {r3,r6,pc}
    .balign 4, 0x00
    .word byte_2037A10
off_801F418:    .word dword_2033000
dword_801F41C:    .word 0xFFFF
off_801F420:    .word off_80211F0
// end of function sub_801F3F2

.thumb
sub_801F424:
    push {lr}
    ldrh r0, [r5,#0x3e]
    bl sub_8006394
    ldrh r0, [r5,#0x3e]
    ldr r1, [pc, #0x801f440-0x801f42e-2] // =0x140
    sub r0, r0, r1
    lsl r0, r0, #1
    ldr r1, [pc, #0x801f444-0x801f434-4] // unk_801F448
    ldrh r0, [r1,r0]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    pop {pc}
off_801F440:    .word 0x140
off_801F444:    .word unk_801F448
unk_801F448:    .byte 0
    .word 0x2180118
    .word 0x4180318
    .word 0x6180518
    .word 0x8180718
    .word 0xA180918
    .word 0xC180B18
    .word 0xE180D18
    .word 0x10180F18
    .word 0x12181118
    .word 0x14181318
    .word 0x16181518
    .word 0x18181718
    .word 0x1A181918
    .word 0x1C181B18
    .word 0x1E181D18
    .hword 0x1F18
    .byte 0x18
// end of function sub_801F424

.thumb
sub_801F488:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r2, [pc, #0x801f4b8-0x801f48c-4] // dword_2033000
    mov r6, #0
    sub r6, #1
    mov r3, #0
loc_801F494:
    ldrsh r1, [r0,r3]
    strh r1, [r2,r3]
    add r3, #2
    cmp r1, r6
    bne loc_801F494
    lsr r3, r3, #1
    sub r3, #1
    ldr r5, [pc, #0x801f4bc-0x801f4a2-2] // unk_2033060
    strb r3, [r5,#(byte_2033072 - 0x2033060)]
    bl sub_801F2D0
    cmp r0, #0
    beq locret_801F4B6
    ldrh r0, [r5,#(word_203309E - 0x2033060)]
    ldrb r1, [r5,#(byte_203307B - 0x2033060)]
    ldrb r2, [r5,#(byte_203307C - 0x2033060)]
    add r3, r7, #0
locret_801F4B6:
    pop {r4-r7,pc}
off_801F4B8:    .word dword_2033000
off_801F4BC:    .word unk_2033060
// end of function sub_801F488

.thumb
sub_801F4C0:
    push {r2,r3,lr}
    bl sub_8020216
    bl sub_801F4CC
    pop {r2,r3,pc}
// end of function sub_801F4C0

.thumb
sub_801F4CC:
    push {r2,r3,lr}
    bl sub_801F4DC
    mov r2, #0x80
    bl loc_8000874
    add r1, #0x80
    pop {r2,r3,pc}
// end of function sub_801F4CC

.thumb
sub_801F4DC:
    push {r1,r2,lr}
    ldr r2, [pc, #0x801f4f8-0x801f4de-2] // =0x1FC
    and r0, r2
    cmp r0, r2
    bne loc_801F4EA
    ldr r0, [pc, #0x801f4f4-0x801f4e6-2] // dword_870A780
    pop {r1,r2,pc}
loc_801F4EA:
    bl sub_8019010
    ldr r0, [r0,#0x20]
    pop {r1,r2,pc}
    .balign 4, 0x00
off_801F4F4:    .word dword_870A780
dword_801F4F8:    .word 0x1FF
// end of function sub_801F4DC

.thumb
sub_801F4FC:
    push {r2,r3,lr}
    bl sub_801F50C
    mov r2, #0x40 
    bl loc_8000874
    add r1, #0x40 
    pop {r2,r3,pc}
// end of function sub_801F4FC

.thumb
sub_801F50C:
    push {r2,lr}
    cmp r0, #0x1b
    beq loc_801F51E
    blt loc_801F516
    mov r0, #0x1b
loc_801F516:
    lsl r0, r0, #6
    ldr r2, [pc, #0x801f524-0x801f518-4] // dword_870A080
    add r0, r0, r2
    pop {r2,pc}
loc_801F51E:
    ldr r0, [pc, #0x801f528-0x801f51e-2] // dword_8020E1C
    pop {r2,pc}
    .balign 4, 0x00
off_801F524:    .word dword_870A080
off_801F528:    .word dword_8020E1C
// end of function sub_801F50C

.thumb
sub_801F52C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x801f5a4-0x801f52e-2] // byte_2036440
    ldrb r3, [r5,#(byte_2036451 - 0x2036440)]
    cmp r3, #0
    beq locret_801F57A
    lsl r3, r3, #1
    add r5, #0x20 
    ldr r4, [pc, #0x801f5a8-0x801f53a-2] // word_203BE80
    ldr r6, [pc, #0x801f5ac-0x801f53c-4] // =0xFFFF
    ldr r7, [pc, #0x801f5b0-0x801f53e-2] // =0x200
    mov r1, #0
    mov r2, #0
    push {r0}
loc_801F546:
    mov r0, #0
    str r0, [sp]
    ldrh r0, [r5,r2]
    tst r0, r7
    bne loc_801F56A
    mov r0, #2
    str r0, [sp]
    ldrh r0, [r4,r1]
    cmp r0, r6
    beq loc_801F578
    bl sub_801F57C
    cmp r0, #1
    beq loc_801F570
    mov r0, #1
    lsl r0, r0, #8
    add r0, r0, r1
    strh r0, [r5,r2]
loc_801F56A:
    add r2, #2
    cmp r2, r3
    beq loc_801F578
loc_801F570:
    ldr r0, [sp]
    add r1, r1, r0
    cmp r1, #0x3c 
    bne loc_801F546
loc_801F578:
    pop {r0}
locret_801F57A:
    pop {r4-r7,pc}
// end of function sub_801F52C

.thumb
sub_801F57C:
    push {r2,r3,r5,lr}
    ldr r5, [pc, #0x801f5a4-0x801f57e-2] // byte_2036440
    ldrb r3, [r5,#(byte_2036451 - 0x2036440)]
    lsl r3, r3, #1
    sub r3, #2
    add r5, #0x20 
loc_801F588:
    ldrh r0, [r5,r3]
    tst r0, r7
    beq loc_801F596
    mov r2, #0xff
    and r0, r2
    cmp r1, r0
    beq loc_801F59E
loc_801F596:
    sub r3, #2
    bpl loc_801F588
    mov r0, #0
locret_801F59C:
    pop {r2,r3,r5,pc}
loc_801F59E:
    mov r0, #1
    b locret_801F59C
    .balign 4, 0x00
off_801F5A4:    .word byte_2036440
off_801F5A8:    .word word_203BE80
dword_801F5AC:    .word 0xFFFF
off_801F5B0:    .word 0x200
// end of function sub_801F57C

.thumb
sub_801F5B4:
    push {r4-r6,lr}
    ldr r5, [pc, #0x801f660-0x801f5b6-2] // byte_2036440
    add r5, #0x20 
    ldr r4, [pc, #0x801f7d4-0x801f5ba-2] // word_203BE80
    mov r3, #0
    ldr r2, [pc, #0x801f91c-0x801f5be-2] // =0x1FC
    ldr r1, [pc, #0x801f664-0x801f5c0-4] // =0x6009BC0
loc_801F5C2:
    ldrh r6, [r5,r3]
    mov r0, #8
    lsl r0, r0, #8
    tst r0, r6
    bne loc_801F602
    mov r0, #2
    lsl r0, r0, #8
    tst r0, r6
    beq loc_801F5D8
    add r0, r2, #0
    b loc_801F636
loc_801F5D8:
    mov r0, #1
    lsl r0, r0, #8
    tst r0, r6
    bne loc_801F616
    cmp r3, #0x10
    blt loc_801F5F4
    push {r3}
    mov r3, #3
    ldr r0, [pc, #0x801f654-0x801f5e8-4] // dword_8020E1C
    bl sub_801FD2C
    pop {r3}
    add r1, #0xc0
    b loc_801F64C
loc_801F5F4:
    add r0, r2, #0
    bl sub_801F4C0
    add r0, r2, #0
    bl sub_801F4FC
    b loc_801F64C
loc_801F602:
    ldr r5, [pc, #0x801f660-0x801f602-2] // byte_2036440
    ldrb r2, [r5,#(byte_2036453 - 0x2036440)]
    ldr r0, [pc, #0x801f65c-0x801f606-2] // =0x180
    mul r2, r0
    ldr r0, [pc, #0x801f658-0x801f60a-2] // dword_8707AA0
    add r0, r0, r2
    ldr r2, [pc, #0x801f65c-0x801f60e-2] // =0x180
    bl loc_8000874
    b locret_801F652
loc_801F616:
    add r0, r3, #0
    bl sub_801EE8C
    beq loc_801F636
    push {r1}
    ldr r1, [pc, #0x801f660-0x801f620-4] // byte_2036440
    ldrb r1, [r1,#(byte_203645D - 0x2036440)]
    cmp r1, #0x46 
    pop {r1}
    blt loc_801F636
    and r0, r2
    push {r0}
    bl sub_801F4CC
    pop {r0}
    b loc_801F640
loc_801F636:
    and r0, r2
    push {r0}
    bl sub_801F4C0
    pop {r0}
loc_801F640:
    add r0, r3, #0
    bl sub_801EE8C
    lsr r0, r0, #9
    bl sub_801F4FC
loc_801F64C:
    add r3, #2
    cmp r3, #0x14
    bne loc_801F5C2
locret_801F652:
    pop {r4-r6,pc}
off_801F654:    .word dword_8020E1C
off_801F658:    .word dword_8707AA0
off_801F65C:    .word 0x180
off_801F660:    .word byte_2036440
dword_801F664:    .word 0x6009BC0
// end of function sub_801F5B4

.thumb
sub_801F668:
    push {r1,r2,lr}
    mov r2, #0x80
    mul r2, r1
    ldr r1, [pc, #0x801f678-0x801f66e-2] // =0x600A340
    add r1, r1, r2
    bl sub_801F4C0
    pop {r1,r2,pc}
dword_801F678:    .word 0x600A340
// end of function sub_801F668

.thumb
sub_801F67C:
    push {lr}
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x43 
    bne loc_801F6C0
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#8]
    cmp r1, #1
    bne loc_801F6C0
    add r3, r5, #0
    add r3, #0x60 
    ldrb r0, [r3]
    cmp r0, #2
    bne loc_801F69C
    mov r0, #0xc
    b loc_801F782
loc_801F69C:
    cmp r0, #1
    bne loc_801F6C0
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r1, r0
    ldrb r0, [r5,#0xa]
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x20 
    ldrb r0, [r5,r0]
    ldr r1, [pc, #0x801f7d4-0x801f6b0-4] // word_203BE80
    ldrh r0, [r1,r0]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x5b 
    beq loc_801F6C0
    mov r0, #8
    b loc_801F782
loc_801F6C0:
    ldrb r0, [r5,#0x12]
    cmp r0, #5
    bge loc_801F740
    ldrb r1, [r5,#0xb]
    mov r3, #5
    mul r1, r3
    ldrb r3, [r5,#0xa]
    add r3, r3, r1
    lsl r3, r3, #1
    add r3, #0x20 
    push {r2,r3}
    add r0, r3, #0
    bl sub_801EE8C
    bl sub_8020246
    pop {r2,r3}
    ldr r1, [pc, #0x801f7d0-0x801f6e2-2] // =0x3784
    cmp r0, r1
    beq loc_801F740
    ldrh r0, [r5,r3]
    mov r1, #4
    lsl r1, r1, #8
    tst r0, r1
    bne loc_801F740
    mov r1, #2
    lsl r1, r1, #8
    tst r0, r1
    bne loc_801F740
    orr r0, r1
    strh r0, [r5,r3]
    ldrb r1, [r5,#0x12]
    add r1, #1
    strb r1, [r5,#0x12]
    add r0, r1, #0
    add r0, #0x47 
    strb r3, [r5,r0]
    add r0, r3, #0
    bl sub_801EE8C
    sub r1, #1
    bl sub_801F668
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r1, r0
    ldrb r0, [r5,#0xa]
    add r0, r0, r1
    mov r1, #0xc0
    mul r0, r1
    ldr r1, [pc, #0x801fa1c-0x801f724-4] // =0x6009BC0
    add r1, r1, r0
    ldr r0, [pc, #0x801f91c-0x801f728-4] // =0x1FC
    bl sub_801F4C0
    bl sub_801F7D8
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_801F73C
    cmp r0, #0x43 
    ble loc_801F744
loc_801F73C:
    mov r0, #0
    pop {pc}
loc_801F740:
    mov r0, #1
    pop {pc}
loc_801F744:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#8]
    cmp r1, #1
    bne loc_801F73C
    add r3, r5, #0
    add r3, #0x60 
    cmp r0, #0x40 
    beq loc_801F760
    cmp r0, #0x41 
    beq loc_801F794
    cmp r0, #0x43 
    beq loc_801F7C4
    b loc_801F73C
loc_801F760:
    ldrb r0, [r3]
    cmp r0, #1
    bne loc_801F780
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r1, r0
    ldrb r0, [r5,#0xa]
    add r0, r0, r1
    cmp r0, #0
    beq loc_801F77C
    cmp r0, #2
    beq loc_801F77C
    mov r0, #0x14
    b loc_801F782
loc_801F77C:
    mov r0, #0x10
    b loc_801F782
loc_801F780:
    mov r0, #0x12
loc_801F782:
    strb r0, [r3,#1]
    ldrb r0, [r5,#1]
    strb r0, [r3,#4]
    ldrb r0, [r5,#2]
    strb r0, [r3,#5]
    mov r0, #0x20 
    strh r0, [r5,#2]
    mov r0, #2
    pop {pc}
loc_801F794:
    ldrb r0, [r3]
    cmp r0, #1
    bne loc_801F7C0
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r1, r0
    ldrb r0, [r5,#0xa]
    add r0, r0, r1
    cmp r0, #0
    beq loc_801F7B0
    cmp r0, #1
    beq loc_801F7BC
    mov r0, #0xe
    b loc_801F782
loc_801F7B0:
    ldrb r0, [r5,#0x12]
    cmp r0, #1
    beq loc_801F7B8
    b loc_801F73C
loc_801F7B8:
    mov r0, #0xa
    b loc_801F782
loc_801F7BC:
    mov r0, #0xc
    b loc_801F782
loc_801F7C0:
    mov r0, #0x10
    b loc_801F782
loc_801F7C4:
    ldrb r0, [r3]
    cmp r0, #1
    bne loc_801F73C
    mov r0, #2
    strb r0, [r3]
    b loc_801F73C
off_801F7D0:    .word 0x3784
off_801F7D4:    .word word_203BE80
// end of function sub_801F67C

.thumb
sub_801F7D8:
    push {lr}
    bl sub_801F920
    bl sub_801FEC4
    bl sub_801FE54
    bl sub_801FA20
// end of function sub_801F7D8

    ldrb r0, [r5,#0x12]
    sub r0, #1
    mov r1, #1
    mov r2, #0
    bl sub_801FAAE
    mov r0, #1
    strb r0, [r5,#0x1f]
    pop {pc}
.thumb
sub_801F7FC:
    push {lr}
    ldrb r0, [r5,#0xd]
    cmp r0, #0
    beq loc_801F812
    ldrb r1, [r5,#0xc]
    cmp r1, #2
    beq loc_801F812
    mov r1, #2
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_801F812:
    mov r0, #1
    pop {pc}
// end of function sub_801F7FC

.thumb
sub_801F816:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_801F82C
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_801F82C
    cmp r0, #0x43 
    ble loc_801F8B0
loc_801F82C:
    ldrb r0, [r5,#0x12]
    cmp r0, #0
    beq loc_801F8AC
    add r1, r0, #0
    add r0, #0x47 
    ldrb r0, [r5,r0]
    cmp r0, #0x20 
    bge loc_801F858
    mov r1, #1
    strb r1, [r5,#0xc]
    ldrb r1, [r5,#0xe]
    ldrb r0, [r5,#0x12]
    add r0, #0x47 
    strb r1, [r5,r0]
    add r0, r1, #0
    bl sub_801EE8C
    ldrb r1, [r5,#0x12]
    sub r1, #1
    bl sub_801F668
    b loc_801F88A
loc_801F858:
    ldrh r2, [r5,r0]
    mov r1, #2
    lsl r1, r1, #8
    eor r2, r1
    strh r2, [r5,r0]
    add r3, r0, #0
    sub r3, #0x20 
    mov r1, #0x60 
    mul r3, r1
    ldr r1, [pc, #0x801fa1c-0x801f86a-2] // =0x6009BC0
    add r1, r1, r3
    bl sub_801EE8C
    bne loc_801F87A
    bl sub_801F4C0
    b loc_801F87E
loc_801F87A:
    bl sub_801F4CC
loc_801F87E:
    ldr r0, [pc, #0x801f91c-0x801f87e-2] // =0x1FC
    ldrb r1, [r5,#0x12]
    sub r1, #1
    strb r1, [r5,#0x12]
    bl sub_801F668
loc_801F88A:
    bl sub_801F920
    bl sub_801FEC4
    bl sub_801FE54
    bl sub_801FA20
    ldrb r0, [r5,#0x12]
    cmp r0, #5
    beq loc_801F8A8
    mov r1, #0
    mov r2, #0
    bl sub_801FAAE
loc_801F8A8:
    mov r0, #0
    pop {pc}
loc_801F8AC:
    mov r0, #1
    pop {pc}
loc_801F8B0:
    add r3, r5, #0
    add r3, #0x60 
    cmp r0, #0x40 
    beq loc_801F8C2
    cmp r0, #0x41 
    beq loc_801F8E0
    cmp r0, #0x43 
    beq loc_801F8EE
    b loc_801F82C
loc_801F8C2:
    ldrb r0, [r3]
    cmp r0, #1
    beq loc_801F82C
    sub r0, #2
    lsl r0, r0, #1
    add r0, #0x16
loc_801F8CE:
    strb r0, [r3,#1]
    ldrb r0, [r5,#1]
    strb r0, [r3,#4]
    ldrb r0, [r5,#2]
    strb r0, [r3,#5]
    mov r0, #0x20 
    strh r0, [r5,#2]
    mov r0, #1
    pop {pc}
loc_801F8E0:
    ldrb r0, [r3]
    cmp r0, #1
    beq loc_801F82C
    sub r0, #2
    lsl r0, r0, #1
    add r0, #0x12
    b loc_801F8CE
loc_801F8EE:
    ldrb r2, [r3]
    cmp r2, #1
    beq loc_801F82C
    ldrb r1, [r5,#0x12]
    sub r1, #1
    mov r0, #0x48 
    add r0, r0, r1
    ldrb r0, [r5,r0]
    cmp r2, #2
    beq loc_801F90A
    cmp r0, #0x20 
    bge loc_801F82C
    mov r0, #0x10
    b loc_801F8CE
loc_801F90A:
    bl sub_801EE8C
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x5b 
    bne loc_801F82C
    mov r0, #0xe
    b loc_801F8CE
    .balign 4, 0x00
dword_801F91C:    .word 0x1FF
// end of function sub_801F816

.thumb
sub_801F920:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    mov r0, #4
    str r0, [sp,#8]
    ldrb r3, [r5,#0x12]
    cmp r3, #5
    beq loc_801F99E
    mov r0, #2
    str r0, [sp,#8]
    ldr r4, [pc, #0x801fb7c-0x801f932-2] // word_203BE80
    cmp r3, #0
    beq loc_801F99E
    mov r0, #0
    str r0, [sp,#8]
    str r0, [sp,#0xc]
    mov r2, #0x47 
    add r2, r2, r3
loc_801F942:
    bl sub_801F9F8
    ldr r1, [pc, #0x801fcbc-0x801f946-2] // =0x1FC
    and r1, r0
    bl sub_801FA0C
    bne loc_801F95C
    sub r2, #1
    sub r3, #1
    bne loc_801F942
    mov r0, #2
    str r0, [sp,#8]
    b loc_801F99E
loc_801F95C:
    str r1, [sp]
    lsr r0, r0, #9
    str r0, [sp,#4]
loc_801F962:
    sub r3, #1
    beq loc_801F99E
    sub r2, #1
    bl sub_801F9F8
    add r6, r0, #0
    ldr r1, [pc, #0x801fcbc-0x801f96e-2] // =0x1FC
    and r1, r0
    bl sub_801FA0C
    beq loc_801F962
    ldr r0, [sp]
    cmp r0, r1
    beq loc_801F982
    mov r0, #1
    str r0, [sp,#8]
loc_801F982:
    add r1, r6, #0
    lsr r1, r1, #9
    ldr r0, [sp,#4]
    cmp r0, #0x1a
    bne loc_801F990
    add r0, r1, #0
    str r0, [sp,#4]
loc_801F990:
    cmp r1, #0x1a
    beq loc_801F962
    cmp r0, r1
    beq loc_801F962
    mov r0, #1
    str r0, [sp,#0xc]
    b loc_801F962
loc_801F99E:
    ldr r2, [pc, #0x801fcbc-0x801f99e-2] // =0x1FC
    mov r3, #0x20 
loc_801F9A2:
    add r0, r3, #0
    bl sub_801EE8C
    add r6, r0, #0
    add r3, #1
    ldrb r7, [r5,r3]
    mov r1, #8
    tst r7, r1
    bne loc_801F9EC
    mov r1, #0xfb
    and r7, r1
    ldr r1, [sp,#8]
    cmp r1, #2
    beq loc_801F9EC
    cmp r1, #0
    bne loc_801F9CA
    and r0, r2
    ldr r1, [sp]
    cmp r0, r1
    beq loc_801F9EC
loc_801F9CA:
    ldr r1, [sp,#0xc]
    cmp r1, #0
    bne loc_801F9EA
    add r0, r6, #0
    lsr r0, r0, #9
    ldr r1, [sp,#4]
    cmp r0, #0x1b
    beq loc_801F9E6
    cmp r1, #0x1b
    beq loc_801F9E6
    cmp r0, #0x1a
    beq loc_801F9EC
    cmp r1, #0x1a
    beq loc_801F9EC
loc_801F9E6:
    cmp r0, r1
    beq loc_801F9EC
loc_801F9EA:
    add r7, #4
loc_801F9EC:
    strb r7, [r5,r3]
    add r3, #1
    cmp r3, #0x34 
    bne loc_801F9A2
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
// end of function sub_801F920

.thumb
sub_801F9F8:
    push {lr}
    ldrb r0, [r5,r2]
    cmp r0, #0x20 
    blt loc_801FA06
    bl sub_801EE8C
    pop {pc}
loc_801FA06:
    add r0, #0x61 
    add r0, #0xff
    pop {pc}
// end of function sub_801F9F8

.thumb
sub_801FA0C:
    push {r0-r2,lr}
    add r0, r1, #0
    bl sub_8019010
    ldrb r1, [r0,#7]
    cmp r1, #0xf
    pop {r0-r2,pc}
    .balign 4, 0x00
dword_801FA1C:    .word 0x6009BC0
// end of function sub_801FA0C

.thumb
sub_801FA20:
    push {r4,r5,lr}
    bl sub_801FA38
    mov r0, #0
    mov r1, #0xd
    mov r2, #3
    ldr r3, [pc, #0x801faa0-0x801fa2c-4] // =0x20362F6
    mov r4, #0xf
    mov r5, #6
    bl sub_8001DDC
// end of function sub_801FA20

    pop {r4,r5,pc}
.thumb
sub_801FA38:
    push {r4,r5,lr}
    ldr r4, [pc, #0x801fa98-0x801fa3a-2] // word_20362F8
    add r5, #0x21 
    mov r3, #0
loc_801FA40:
    mov r2, #0
    ldrb r0, [r5,r3]
    mov r1, #1
    tst r0, r1
    beq loc_801FA86
    mov r1, #8
    tst r0, r1
    bne locret_801FA94
    mov r1, #4
    tst r0, r1
    beq loc_801FA58
    mov r2, #2
loc_801FA58:
    mov r1, #2
    tst r0, r1
    beq loc_801FA60
    mov r2, #4
loc_801FA60:
    ldr r1, [pc, #0x801faa4-0x801fa60-4] // dword_801FAA8
    ldrh r2, [r1,r2]
    ldr r1, [pc, #0x801fa9c-0x801fa64-4] // =0x3F8
    ldrh r0, [r4]
    and r0, r1
    orr r0, r2
    strh r0, [r4]
    ldrh r0, [r4,#2]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#2]
    ldrh r0, [r4,#0x1e]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#0x1e]
    ldrh r0, [r4,#0x20]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#0x20]
loc_801FA86:
    add r4, #4
    cmp r3, #8
    bne loc_801FA8E
    add r4, #0x46 
loc_801FA8E:
    add r3, #2
    cmp r3, #0x14
    bne loc_801FA40
locret_801FA94:
    pop {r4,r5,pc}
    .balign 4, 0x00
off_801FA98:    .word word_20362F8
dword_801FA9C:    .word 0x3FF
dword_801FAA0:    .word 0x20362F6
off_801FAA4:    .word dword_801FAA8
dword_801FAA8:    .word 0xC000B000
// end of function sub_801FA38

    str r0, [sp]
.thumb
sub_801FAAE:
    push {r4-r6,lr}
    mov r4, #0x43 
    lsl r1, r1, #1
    add r4, r4, r1
    mov r1, #0x1e
    lsl r0, r0, #1
    add r0, #3
    mul r0, r1
    add r0, #0x16
    ldr r1, [pc, #0x801fb3c-0x801fac0-4] // unk_2036170
    add r1, r1, r0
    ldr r3, [pc, #0x801fb18-0x801fac4-4] // dword_801FB1C
    mov r5, #0
loc_801FAC8:
    ldrh r6, [r3,r5]
    add r5, #2
    ldrh r0, [r3,r5]
    add r5, #2
    add r0, r0, r4
    strh r0, [r1,r6]
    cmp r5, #0x10
    bne loc_801FAC8
    sub r4, #0x43 
    ldr r3, [pc, #0x801fb30-0x801fada-2] // dword_801FB34
    ldrh r4, [r3,r4]
    ldr r3, [pc, #0x801fb38-0x801fade-2] // =0x3F8
    ldrh r0, [r1,#2]
    and r0, r3
    orr r0, r4
    strh r0, [r1,#2]
    ldrh r0, [r1,#4]
    and r0, r3
    orr r0, r4
    strh r0, [r1,#4]
    ldrh r0, [r1,#0x20]
    and r0, r3
    orr r0, r4
    strh r0, [r1,#0x20]
    ldrh r0, [r1,#0x22]
    and r0, r3
    orr r0, r4
    strh r0, [r1,#0x22]
    cmp r2, #0
    bne locret_801FB14
    mov r0, #0
    mov r1, #3
    mov r2, #3
    ldr r3, [pc, #0x801fb2c-0x801fb0a-2] // =0x20361CA
    mov r4, #0xf
    mov r5, #0xa
    bl sub_8001DDC
locret_801FB14:
    pop {r4-r6,pc}
    .balign 4, 0x00
off_801FB18:    .word dword_801FB1C
dword_801FB1C:    .word 0x90000000, 0x9001001E, 0x94000006, 0x94010024
dword_801FB2C:    .word 0x20361CA
off_801FB30:    .word dword_801FB34
dword_801FB34:    .word 0xB0009000
dword_801FB38:    .word 0x3FF
off_801FB3C:    .word unk_2036170
// end of function sub_801FAAE

.thumb
sub_801FB40:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #4
    beq loc_801FB52
    cmp r0, #8
    beq loc_801FB76
    bl sub_801FD84
    b locret_801FB7A
loc_801FB52:
    ldrb r0, [r5,#0x14]
    cmp r0, #0
    beq loc_801FB5E
    bl sub_801FDB8
    b locret_801FB7A
loc_801FB5E:
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x20 
    bl sub_801EE8C
    bl sub_801FB80
    b locret_801FB7A
loc_801FB76:
    bl sub_801FD3E
locret_801FB7A:
    pop {pc}
off_801FB7C:    .word word_203BE80
// end of function sub_801FB40

.thumb
sub_801FB80:
    push {r4,lr}
    sub sp, sp, #0x10
    bl sub_8020246
    ldr r1, [pc, #0x801fcb8-0x801fb88-4] // =0x3784
    cmp r0, r1
    bne loc_801FB96
    push {r0,r5}
    bl sub_801F5B4
    pop {r0,r5}
loc_801FB96:
    str r0, [sp]
    push {r0-r7}
    bl sub_801FCC0
    ldr r2, [pc, #0x801fcac-0x801fb9e-2] // unk_203E590
    ldr r3, [pc, #0x801fcb0-0x801fba0-4] // =0x6009380
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x801fcb4-0x801fba6-2] // dword_868E224
    mov r7, #8
    bl sub_8053A04
    .byte 0xFF
    .byte 0xBC
    .byte 0
    .byte 0x98
    .byte 0x42 
    .byte 0x49 
    .byte 8
    .byte 0x40 
    .byte 1
    .byte 0xB4
    .byte 0x51 
    .byte 0x46 
    .byte 0x89
    .byte 0x69 
    .byte 0x49 
    .byte 0x7B 
    .byte 0xF9
    .byte 0xF7
    .byte 0x63 
    .byte 0xFB
    .byte 4
    .byte 0x90
    .byte 1
    .byte 0xBC
    .byte 0xF9
    .byte 0xF7
    .byte 0x23 
    .byte 0xFA
    .byte 1
    .byte 0x90
    .byte 0x40 
    .byte 0x6A 
    .byte 0
    .byte 0x28 
    .byte 9
    .byte 0xD0
    .byte 0x31 
    .byte 0x49 
    .byte 0x31 
    .byte 0x4A 
    .byte 0xE0
    .byte 0xF7
    .byte 0x4D 
    .byte 0xFE
    .byte 1
    .byte 0x98
    .byte 0x80
    .byte 0x6A 
    .byte 0x30 
    .byte 0x49 
    .byte 0x20
    .byte 0x22 
    .byte 0xE0
    .byte 0xF7
    .byte 0x47 
    .byte 0xFE
    .byte 0
    .byte 0x98
    .byte 0x40 
    .byte 0xA
    .byte 0x40 
    .byte 0x21 
    .byte 0x48 
    .byte 0x43 
    .byte 0x23 
    .byte 0x49 
    .byte 0x40 
    .byte 0x18
    .byte 0x23 
    .byte 0x49 
    .byte 0x40 
    .byte 0x22 
    .byte 0xE0
    .byte 0xF7
    .byte 0x3D 
    .byte 0xFE
    .byte 1
    .byte 0x98
    .byte 0x41 
    .byte 0x7A 
    .byte 0x12
    .byte 0x22 
    .byte 0x11
    .byte 0x40 
    .byte 2
    .byte 0x91
    .byte 0xC0
    .byte 0x79 
    .byte 0xD
    .byte 0x28 
    .byte 0
    .byte 0xDB
    .byte 0xC
    .byte 0x20
    .byte 0x80
    .byte 0x21 
    .byte 0x48 
    .byte 0x43 
    .byte 0x1C
    .byte 0x49 
    .byte 0x40 
    .byte 0x18
    .byte 0x1C
    .byte 0x49 
    .byte 0x80
    .byte 0x22 
    .byte 0xE0
    .byte 0xF7
    .byte 0x2C 
    .byte 0xFE
    .byte 2
    .byte 0x98
    .byte 0
    .byte 0x28 
    .byte 0xF
    .byte 0xD0
    .byte 0x10
    .byte 0x21 
    .byte 8
    .byte 0x42 
    .byte 5
    .byte 0xD0
    .byte 0xAA
    .byte 0x24 
    .byte 0x24 
    .byte 1
    .byte 0xA
    .byte 0x34 
    .byte 3
    .byte 0x20
    .byte 2
    .byte 0x90
    .byte 0xD
    .byte 0xE0
    .byte 3
    .byte 0x98
    .byte 0xE0
    .byte 0xF7
    .byte 0xFB
    .byte 0xFE
    .byte 4
    .byte 0x1C
    .byte 0xE0
    .byte 0xF7
    .byte 0x26 
    .byte 0xFF
    .byte 2
    .byte 0x90
    .byte 3
    .byte 0x23 
    .byte 0x1B
    .byte 0x1A
    .byte 3
    .byte 0xD0
    .byte 0x16
    .byte 0x48 
    .byte 0x11
    .byte 0x49 
    .byte 0
    .byte 0xF0
    .byte 0x6E 
    .byte 0xF8
    .byte 2
    .byte 0x9B
    .byte 0
    .byte 0x2B 
    .byte 0xF
    .byte 0xD0
    .byte 0xF
    .byte 0x49 
// end of function sub_801FB80

loc_801FC58:
    mov r0, #0xf
    and r0, r4
    lsr r4, r4, #4
    mov r2, #0x40 
    mul r0, r2
    ldr r2, [pc, #0x801fc8c-0x801fc62-2] // unk_8707580
    add r0, r0, r2
    mov r2, #0x40 
    push {r3}
    bl loc_8000874
    pop {r3}
    sub r1, #0x40 
    sub r3, #1
    bne loc_801FC58
    add sp, sp, #0x10
    pop {r4,pc}
    .balign 4, 0x00
    .word dword_8706800
    .word 0x6009AC0
    .word unk_8706F00
    .word 0x6016E40
off_801FC8C:    .word unk_8707580
    .word 0x6009B00
    .word 0x6009B80
    .word 0x6009580
    .word 0x540
    .word unk_3002B90
    .word dword_8020D9C
    .word unk_203E590
off_801FCAC:    .word unk_203E590
dword_801FCB0:    .word 0x6009380
off_801FCB4:    .word dword_868E224
off_801FCB8:    .word 0x3784
dword_801FCBC:    .word 0x1FF
.thumb
sub_801FCC0:
    add r1, r0, #0
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r0, [pc, #0x801fcd8-0x801fcc6-2] // off_801FCDC
    cmp r1, #0xff
    ble loc_801FCD2
    add r0, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_801FCD2:
    ldr r0, [r0]
    mov pc, lr
    .balign 4, 0x00
off_801FCD8:    .word off_801FCDC
off_801FCDC:    .word off_8745E98
off_801FCE0:    .word loc_8746830
// end of function sub_801FCC0

.thumb
sub_801FCE4:
    push {lr}
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x20 
    bl sub_801EE8C
    bl sub_8020246
    ldr r1, [pc, #0x801fd28-0x801fcfc-4] // =0x3784
    cmp r0, r1
    bne loc_801FD04
    sub r0, #0x14
loc_801FD04:
    add r1, r0, #0
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r0, [pc, #0x801fd1c-0x801fd0a-2] // off_801FD20
    cmp r1, #0xff
    ble loc_801FD16
    add r0, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_801FD16:
    ldr r0, [r0]
    pop {pc}
    .balign 4, 0x00
off_801FD1C:    .word off_801FD20
off_801FD20:    .word dword_8749F30
off_801FD24:    .word dword_874C670
off_801FD28:    .word 0x3784
// end of function sub_801FCE4

.thumb
sub_801FD2C:
    push {r0-r4,lr}
    add r4, r3, #0
    mov r2, #0x40 
loc_801FD32:
    bl loc_8000874
    add r1, r1, r2
    sub r4, #1
    bne loc_801FD32
    pop {r0-r4,pc}
// end of function sub_801FD2C

.thumb
sub_801FD3E:
    push {lr}
    ldr r1, [pc, #0x801fe14-0x801fd40-4] // =0x6009380
    ldr r0, [pc, #0x801fe18-0x801fd42-2] // dword_8020DDC
    mov r3, #8
    bl sub_801FD2C
    ldr r0, [pc, #0x801fd74-0x801fd4a-2] // off_801FD78
    ldrb r1, [r5,#0x12]
    cmp r1, #0
    beq loc_801FD54
    mov r1, #4
loc_801FD54:
    ldr r0, [r0,r1]
    ldr r1, [pc, #0x801fdfc-0x801fd56-2] // =0x6009580
    ldr r2, [pc, #0x801fe00-0x801fd58-4] // =0x540
    bl loc_8000874
    ldr r0, [pc, #0x801fd80-0x801fd5e-2] // dword_873DD78
    ldr r1, [pc, #0x801fe08-0x801fd60-4] // unk_3002B90
    mov r2, #0x20 
    bl loc_8000874
    ldr r1, [pc, #0x801fe0c-0x801fd68-4] // =0x6009AC0
    ldr r0, [pc, #0x801fe10-0x801fd6a-2] // dword_8020D9C
    mov r3, #4
    bl sub_801FD2C
    pop {pc}
off_801FD74:    .word off_801FD78
off_801FD78:    .word dword_873AA38
    .word dword_873A4F8
off_801FD80:    .word dword_873DD78
// end of function sub_801FD3E

.thumb
sub_801FD84:
    push {lr}
    ldr r1, [pc, #0x801fe14-0x801fd86-2] // =0x6009380
    ldr r0, [pc, #0x801fe18-0x801fd88-4] // dword_8020DDC
    mov r3, #8
    bl sub_801FD2C
    ldr r0, [pc, #0x801fdb0-0x801fd90-4] // unk_873AF78
    ldr r1, [pc, #0x801fdfc-0x801fd92-2] // =0x6009580
    ldr r2, [pc, #0x801fe00-0x801fd94-4] // =0x540
    bl loc_8000874
    ldr r0, [pc, #0x801fdb4-0x801fd9a-2] // dword_873DD98
    ldr r1, [pc, #0x801fe08-0x801fd9c-4] // unk_3002B90
    mov r2, #0x20 
    bl loc_8000874
    ldr r1, [pc, #0x801fe0c-0x801fda4-4] // =0x6009AC0
    ldr r0, [pc, #0x801fe10-0x801fda6-2] // dword_8020D9C
    mov r3, #4
    bl sub_801FD2C
    pop {pc}
off_801FDB0:    .word unk_873AF78
off_801FDB4:    .word dword_873DD98
// end of function sub_801FD84

.thumb
sub_801FDB8:
    push {lr}
    ldr r1, [pc, #0x801fe14-0x801fdba-2] // =0x6009380
    ldr r0, [pc, #0x801fe18-0x801fdbc-4] // dword_8020DDC
    mov r3, #8
    bl sub_801FD2C
    ldr r0, [pc, #0x801fdf8-0x801fdc4-4] // dword_873B4B8
    ldr r1, [pc, #0x801fdfc-0x801fdc6-2] // =0x6009580
    ldr r2, [pc, #0x801fe00-0x801fdc8-4] // =0x540
    bl loc_8000874
    ldr r0, [pc, #0x801fe04-0x801fdce-2] // dword_873DD78
    ldr r1, [pc, #0x801fe08-0x801fdd0-4] // unk_3002B90
    mov r2, #0x20 
    bl loc_8000874
    ldr r1, [pc, #0x801fe0c-0x801fdd8-4] // =0x6009AC0
    ldr r0, [pc, #0x801fe10-0x801fdda-2] // dword_8020D9C
    mov r3, #3
    bl sub_801FD2C
    ldrb r0, [r5,#0x1a]
    mov r2, #0x40 
    mul r0, r2
    ldr r2, [pc, #0x801fe1c-0x801fde8-4] // unk_8707580
    add r0, r0, r2
    mov r2, #0x40 
    ldr r1, [pc, #0x801fe20-0x801fdee-2] // =0x6009B80
    bl loc_8000874
    pop {pc}
    .balign 4, 0x00
off_801FDF8:    .word dword_873B4B8
dword_801FDFC:    .word 0x6009580
off_801FE00:    .word 0x540
off_801FE04:    .word dword_873DD78
off_801FE08:    .word unk_3002B90
dword_801FE0C:    .word 0x6009AC0
off_801FE10:    .word dword_8020D9C
dword_801FE14:    .word 0x6009380
off_801FE18:    .word dword_8020DDC
off_801FE1C:    .word unk_8707580
dword_801FE20:    .word 0x6009B80
// end of function sub_801FDB8

.thumb
sub_801FE24:
    mov r1, #1
loc_801FE26:
    ldrb r0, [r3]
    cmp r0, #0xf
    beq loc_801FE3C
    lsl r0, r0, #1
    add r0, #0x21 
    ldrb r0, [r5,r0]
    tst r0, r1
    bne loc_801FE42
    add r3, #1
    b loc_801FE26
    mov pc, lr
loc_801FE3C:
    mov r0, #0
    sub r0, #1
    mov pc, lr
loc_801FE42:
    mov r1, #0
    ldrb r0, [r3]
    cmp r0, #5
    blt loc_801FE4E
    mov r1, #1
    sub r0, #5
loc_801FE4E:
    lsl r1, r1, #8
    orr r0, r1
    mov pc, lr
// end of function sub_801FE24

.thumb
sub_801FE54:
    mov r2, #2
    ldrb r0, [r5,#0xc]
    cmp r0, #0
    beq loc_801FE6A
    sub r2, #1
    cmp r0, #2
    beq loc_801FE68
    ldrb r0, [r5,#0xd]
    cmp r0, #0
    bne loc_801FE6A
loc_801FE68:
    sub r2, #1
loc_801FE6A:
    lsl r2, r2, #2
    ldr r3, [pc, #0x801fe90-0x801fe6c-4] // off_801FE94
    ldr r2, [r3,r2]
    ldr r1, [pc, #0x801fe8c-0x801fe70-4] // word_2036384
    ldrh r0, [r2]
    strh r0, [r1]
    ldrh r0, [r2,#2]
    strh r0, [r1,#(word_2036386 - 0x2036384)]
    ldrh r0, [r2,#4]
    strh r0, [r1,#(word_2036388 - 0x2036384)]
    ldrh r0, [r2,#6]
    strh r0, [r1,#(word_20363A2 - 0x2036384)]
    ldrh r0, [r2,#8]
    strh r0, [r1,#(word_20363A4 - 0x2036384)]
    ldrh r0, [r2,#0xa]
    strh r0, [r1,#(word_20363A6 - 0x2036384)]
    mov pc, lr
off_801FE8C:    .word word_2036384
off_801FE90:    .word off_801FE94
off_801FE94:    .word word_801FEA0
    .word word_801FEAC
    .word word_801FEB8
word_801FEA0:    .hword 0x9058
word_801FEA2:    .hword 0x9059
word_801FEA4:    .hword 0x905A
word_801FEA6:    .hword 0x905B
word_801FEA8:    .hword 0x905C
word_801FEAA:    .hword 0x905D
word_801FEAC:    .hword 0x9052
word_801FEAE:    .hword 0x9053
word_801FEB0:    .hword 0x9054
word_801FEB2:    .hword 0x9055
word_801FEB4:    .hword 0x9056
word_801FEB6:    .hword 0x9057
word_801FEB8:    .hword 0x902A
word_801FEBA:    .hword 0x902A
word_801FEBC:    .hword 0x902A
word_801FEBE:    .hword 0x902A
word_801FEC0:    .hword 0x902A
word_801FEC2:    .hword 0x902A
// end of function sub_801FE54

.thumb
sub_801FEC4:
    push {r4,lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #1
    bne locret_801FF3C
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800BFB8
    ldrb r0, [r0,#0x18]
    cmp r0, #0xff
    beq locret_801FF3C
    ldrb r0, [r5,#0x12]
    cmp r0, #0
    beq loc_801FF3E
    add r0, #0x47 
    ldrb r0, [r5,r0]
    cmp r0, #0x20 
    bne loc_801FEF6
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0x17]
    cmp r1, #0
    bne loc_801FF3E
loc_801FEF6:
    bl sub_801EE8C
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8019010
    ldrb r2, [r0,#7]
    ldr r1, [pc, #0x801ff44-0x801ff04-4] // dword_801FF48
    mov r3, #0xb
loc_801FF08:
    ldrb r0, [r1,r3]
    cmp r0, r2
    beq loc_801FF14
    sub r3, #1
    bpl loc_801FF08
    b loc_801FF38
loc_801FF14:
    ldr r1, [pc, #0x801ff54-0x801ff14-4] // dword_801FF58
    ldrb r0, [r1,r3]
    cmp r0, #0xff
    beq loc_801FF34
    push {r3}
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r3}
    beq loc_801FF34
    mov r0, #1
    lsl r0, r3
    ldr r1, [pc, #0x801ff64-0x801ff2c-4] // dword_203BF88
    ldr r1, [r1]
    tst r0, r1
    beq loc_801FF38
loc_801FF34:
    mov r3, #0
    sub r3, #1
loc_801FF38:
    add r3, #1
    strb r3, [r5,#0xd]
locret_801FF3C:
    pop {r4,pc}
loc_801FF3E:
    mov r0, #0
    strb r0, [r5,#0xd]
    b locret_801FF3C
off_801FF44:    .word dword_801FF48
dword_801FF48:    .word 0x70A0804, 0x5060200, 0x301090B
off_801FF54:    .word dword_801FF58
dword_801FF58:    .word 0x1A191817, 0xFFFF1C1B, 0xFFFFFFFF
off_801FF64:    .word dword_203BF88
// end of function sub_801FEC4

.thumb
sub_801FF68:
    push {r4-r6,lr}
    add r6, r0, #0
    ldr r2, [pc, #0x801ffb4-0x801ff6c-4] // off_801FFB8
    lsl r0, r0, #2
    ldr r0, [r2,r0]
    cmp r0, #1
    beq loc_801FFA8
    cmp r0, #0
    beq locret_801FFAA
    ldr r3, [pc, #0x801ffac-0x801ff7a-2] // word_2036188
    ldrh r2, [r0]
    strh r2, [r3]
    ldrh r2, [r0,#2]
    strh r2, [r3,#(word_203618A - 0x2036188)]
    ldrh r2, [r0,#4]
    strh r2, [r3,#(word_20361A6 - 0x2036188)]
    ldrh r2, [r0,#6]
    strh r2, [r3,#(word_20361A8 - 0x2036188)]
    ldrh r2, [r0,#8]
    strh r2, [r3,#(word_20361C4 - 0x2036188)]
    ldrh r2, [r0,#0xa]
    strh r2, [r3,#(word_20361C6 - 0x2036188)]
    cmp r1, #0
    bne locret_801FFAA
    mov r0, #0
    mov r1, #0
    mov r2, #3
    ldr r3, [pc, #0x801ffb0-0x801ff9e-2] // unk_2036170
    mov r4, #0xf
    mov r5, #3
    bl sub_8001DDC
loc_801FFA8:
    add r0, r6, #1
locret_801FFAA:
    pop {r4-r6,pc}
off_801FFAC:    .word word_2036188
off_801FFB0:    .word unk_2036170
off_801FFB4:    .word off_801FFB8
off_801FFB8:    .word loc_8020004
    .word loc_8020010
    .word loc_8020028
    .word loc_802001C
    .word 0x1, 0x8020004, 0x1, 0x8020010, 0x1, 0x1, 0x8020028, 0x1, 0x1
    .word 0x802001C, 0x1, 0x1, 0x1, 0x8020004, 0x0
// end of function sub_801FF68

loc_8020004:
    str r0, [sp,#0x178]
    str r0, [sp,#0x17c]
    str r0, [sp,#0x180]
    str r0, [sp,#0x184]
    str r0, [sp,#0x188]
    str r0, [sp,#0x18c]
loc_8020010:
    str r0, [sp,#0x190]
    str r0, [sp,#0x194]
    str r0, [sp,#0x198]
    str r0, [sp,#0x19c]
    str r0, [sp,#0x1a0]
    str r0, [sp,#0x1a4]
loc_802001C:
    str r0, [sp,#0x1a8]
    str r0, [sp,#0x1ac]
    str r0, [sp,#0x1b0]
    str r0, [sp,#0x1b4]
    str r0, [sp,#0x1b8]
    str r0, [sp,#0x1bc]
loc_8020028:
    str r4, [sp,#0x17c]
    str r4, [sp,#0x178]
    str r4, [sp,#0x184]
    str r4, [sp,#0x180]
    str r4, [sp,#0x18c]
    str r4, [sp,#0x188]
.thumb
sub_8020034:
    push {r4,r6,r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r3, [r3,#0x17]
    push {r3}
    cmp r3, #0
    beq loc_8020058
    ldrh r0, [r5,#0x20]
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
    strh r0, [r5,#0x20]
    mov r1, #2
    lsl r1, r1, #8
    tst r0, r1
    beq loc_8020058
    mov r3, #0
    str r3, [sp]
loc_8020058:
    ldrb r2, [r5,#0x12]
    add r3, r3, r2
    cmp r3, #0
    beq loc_8020086
    ldr r7, [pc, #0x80201e0-0x8020060-4] // word_203BE80
    mov r2, #0x20 
    mov r6, #0
loc_8020066:
    ldrh r0, [r5,r2]
    mov r4, #0x82
    lsl r4, r4, #8
    tst r0, r4
    beq loc_8020080
    mov r4, #0xff
    and r4, r0
    ldrh r0, [r7,r4]
    ldrh r1, [r7,r6]
    strh r1, [r7,r4]
    strh r0, [r7,r6]
    add r6, #2
    sub r3, #1
loc_8020080:
    add r2, #2
    cmp r3, #0
    bne loc_8020066
loc_8020086:
    ldr r0, [pc, #0x80201e0-0x8020086-2] // word_203BE80
    ldrb r1, [r5,#0x15]
    mov r2, #0x1e
    ldrb r3, [r5,#0x12]
    ldr r4, [sp]
    add r3, r3, r4
    sub r1, r1, r3
    beq loc_802009E
    lsl r3, r3, #1
    add r0, r0, r3
    bl fA00_8000B42
loc_802009E:
    ldrb r3, [r5,#0x12]
    ldr r4, [sp]
    add r3, r3, r4
    cmp r3, #0
    beq loc_80200D0
    ldr r7, [pc, #0x80201e0-0x80200a8-4] // word_203BE80
    mov r2, #0x32 
    sub r6, r3, #1
    lsl r6, r6, #1
loc_80200B0:
    ldrh r0, [r5,r2]
    mov r4, #0x82
    lsl r4, r4, #8
    tst r0, r4
    beq loc_80200CA
    mov r4, #0xff
    and r4, r0
    ldrh r0, [r7,r4]
    ldrh r1, [r7,r6]
    strh r1, [r7,r4]
    strh r0, [r7,r6]
    sub r6, #2
    sub r3, #1
loc_80200CA:
    sub r2, #2
    cmp r3, #0
    bne loc_80200B0
loc_80200D0:
    ldrh r0, [r5,#0x20]
    mov r1, #0x80
    lsl r1, r1, #8
    bic r0, r1
    strh r0, [r5,#0x20]
    pop {r0}
    pop {r4,r6,r7,pc}
// end of function sub_8020034

.thumb
sub_80200DE:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    ldr r0, [pc, #0x80201cc-0x80200e2-2] // word_203AC30
    mov r1, #0x3c 
    bl f900_8000930
    bl sub_80201E4
    cmp r0, #0
    beq loc_802016E
    str r0, [sp,#4]
    ldr r1, [pc, #0x80201d0-0x80200f4-4] // dword_80201D4
    ldrb r0, [r1,r0]
    str r0, [sp]
    ldr r7, [pc, #0x80201cc-0x80200fa-2] // word_203AC30
    ldr r6, [pc, #0x80201e0-0x80200fc-4] // word_203BE80
    ldr r4, [sp,#4]
    mov r3, #0x20 
    add r3, r3, r5
loc_8020104:
    ldrh r0, [r3]
    mov r1, #0x82
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8020118
    ldrh r0, [r6]
    strh r0, [r7]
    add r7, #2
    sub r4, #1
    beq loc_802011E
loc_8020118:
    add r3, #2
    add r6, #2
    b loc_8020104
loc_802011E:
    ldrb r0, [r5,#0x11]
    ldrb r2, [r5,#0x15]
    cmp r2, r0
    ble loc_802015A
    sub r2, r2, r0
    lsl r2, r2, #1
    lsl r0, r0, #1
    ldr r1, [pc, #0x80201e0-0x802012c-4] // word_203BE80
    add r0, r0, r1
    add r1, r7, #0
    bl f900_800097A
    ldr r0, [pc, #0x80201cc-0x8020136-2] // word_203AC30
    ldr r1, [sp,#4]
    add r2, r1, #0
    bl fA00_8000B42
    ldr r0, [pc, #0x80201cc-0x8020140-4] // word_203AC30
    ldrb r1, [r5,#0x15]
    ldrb r2, [r5,#0x11]
    ldr r3, [sp,#4]
    sub r2, r2, r3
    sub r1, r1, r2
    ldr r2, [sp]
    sub r1, r1, r2
    lsl r2, r2, #1
    add r0, r0, r2
    add r2, r1, #0
    bl fA00_8000B42
loc_802015A:
    ldr r0, [pc, #0x80201cc-0x802015a-2] // word_203AC30
    ldr r1, [sp,#4]
    add r2, r1, #0
    bl fA00_8000B42
    ldrh r0, [r5,#0x20]
    mov r1, #0x80
    lsl r1, r1, #8
    bic r0, r1
    strh r0, [r5,#0x20]
loc_802016E:
    add sp, sp, #8
    pop {r4,r6,r7,pc}
// end of function sub_80200DE

.thumb
sub_8020172:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    bl sub_80201E4
    cmp r0, #0
    beq loc_80201C6
    str r0, [sp]
    ldr r7, [pc, #0x80201cc-0x8020180-4] // word_203AC30
    ldr r6, [pc, #0x80201e0-0x8020182-2] // word_203BE80
    ldr r4, [sp]
    mov r3, #0x20 
    add r3, r3, r5
loc_802018A:
    ldrh r0, [r3]
    mov r1, #0x82
    lsl r1, r1, #8
    tst r0, r1
    bne loc_802019E
    ldrh r0, [r7]
    strh r0, [r6]
    add r7, #2
    sub r4, #1
    beq loc_80201A4
loc_802019E:
    add r3, #2
    add r6, #2
    b loc_802018A
loc_80201A4:
    ldrb r0, [r5,#0x11]
    ldrb r2, [r5,#0x15]
    cmp r2, r0
    ble loc_80201BC
    sub r2, r2, r0
    lsl r2, r2, #1
    lsl r0, r0, #1
    ldr r1, [pc, #0x80201e0-0x80201b2-2] // word_203BE80
    add r1, r1, r0
    add r0, r7, #0
    bl f900_800097A
loc_80201BC:
    ldrh r0, [r5,#0x20]
    mov r1, #0x80
    lsl r1, r1, #8
    bic r0, r1
    strh r0, [r5,#0x20]
loc_80201C6:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80201CC:    .word word_203AC30
off_80201D0:    .word dword_80201D4
dword_80201D4:    .word 0x1000000, 0x3020201, 0x3
off_80201E0:    .word word_203BE80
// end of function sub_8020172

.thumb
sub_80201E4:
    push {lr}
    ldrb r0, [r5,#0x11]
    ldrb r1, [r5,#0x15]
    cmp r1, r0
    bge loc_80201F0
    add r0, r1, #0
loc_80201F0:
    ldrb r1, [r5,#0x12]
    sub r0, r0, r1
    beq locret_8020214
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r3, [r3,#0x17]
    cmp r3, #0
    beq locret_8020214
    ldrh r1, [r5,#0x20]
    mov r2, #2
    lsl r2, r2, #8
    tst r1, r2
    bne locret_8020214
    mov r2, #0x80
    lsl r2, r2, #8
    orr r1, r2
    strh r1, [r5,#0x20]
    sub r0, #1
locret_8020214:
    pop {pc}
// end of function sub_80201E4

.thumb
sub_8020216:
    push {r1-r7,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x802027c-0x802021a-2] // =0x1FC
    cmp r0, r1
    beq loc_802023E
    bl sub_800855E
    beq loc_802023E
    cmp r0, #0
    beq loc_8020242
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x20 
    bl sub_801EE8C
    beq loc_8020242
loc_802023E:
    add r0, r4, #0
    pop {r1-r7,pc}
loc_8020242:
    ldr r0, [pc, #0x8020278-0x8020242-2] // =0x3784
    pop {r1-r7,pc}
// end of function sub_8020216

.thumb
sub_8020246:
    push {r1-r7,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x802027c-0x802024a-2] // =0x1FC
    cmp r0, r1
    beq loc_802026E
    bl sub_80085C0
    beq loc_802026E
    cmp r0, #0
    beq loc_8020272
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x20 
    bl sub_801EE8C
    beq loc_8020272
loc_802026E:
    add r0, r4, #0
    pop {r1-r7,pc}
loc_8020272:
    ldr r0, [pc, #0x8020278-0x8020272-2] // =0x3784
    pop {r1-r7,pc}
    .balign 4, 0x00
off_8020278:    .word 0x3784
dword_802027C:    .word 0x1FF
// end of function sub_8020246

.thumb
sub_8020280:
    push {lr}
    ldrb r0, [r5,#0x18]
    strb r0, [r5,#2]
    mov r0, #1
    bl sub_8007E9A
    pop {pc}
    .byte 0, 0
// end of function sub_8020280

.thumb
sub_8020290:
    push {lr}
    ldrh r0, [r5,#0xa]
    push {r0}
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r0, r1
    beq loc_80202CC
    ldrb r3, [r5,#0x14]
    cmp r3, #0
    bne loc_80202B0
    bl sub_801F67C
    cmp r0, #2
    bne loc_80202DC
    mov r0, #0
    b loc_80202DC
loc_80202B0:
    ldrb r0, [r5,#0x1a]
    cmp r0, #0
    beq loc_80202C4
    sub r0, #1
    strb r0, [r5,#0x1a]
    mov r0, #0x14
    strh r0, [r5,#2]
    bl sub_80200DE
    b loc_80203E4
loc_80202C4:
    mov r0, #0x69 
    bl f500_8000558
    b loc_80203E4
loc_80202CC:
    mov r1, #2
    tst r0, r1
    beq loc_80202E6
    bl sub_801F816
    mov r1, #2
    sub r1, r1, r0
    add r0, r1, #0
loc_80202DC:
    ldr r1, [pc, #0x80203f4-0x80202dc-4] // dword_80203F8
    ldrb r0, [r1,r0]
    bl f500_8000558
    b loc_80203E4
loc_80202E6:
    ldr r1, [pc, #0x8020660-0x80202e6-2] // =0xFF
    tst r0, r1
    beq loc_8020306
    ldrb r3, [r5,#0x14]
    cmp r3, #0
    bne loc_80203E4
    bl sub_801FCE4
    bl sub_804E2A4
    mov r0, #0x18
    strb r0, [r5,#2]
    mov r0, #0x66 
    bl f500_8000558
    b loc_80203E4
loc_8020306:
    ldr r1, [pc, #0x8020664-0x8020306-2] // =0x200
    tst r0, r1
    beq loc_8020312
    bl sub_8020506
    b loc_80203E4
loc_8020312:
    mov r1, #8
    tst r0, r1
    bne loc_80203E8
    mov r1, #4
    tst r0, r1
    beq loc_8020324
    bl sub_80204F8
    b loc_80203E4
loc_8020324:
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_8020330
    mov r2, #0
    b loc_8020338
loc_8020330:
    mov r1, #0x80
    tst r0, r1
    beq loc_8020356
    mov r2, #1
loc_8020338:
    mov r0, #5
    mul r0, r2
    ldrb r1, [r5,#0xa]
    add r1, r1, r0
    lsl r1, r1, #2
    ldr r3, [pc, #0x80203fc-0x8020342-2] // off_8020400
    ldr r3, [r3,r1]
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq loc_80203E4
    strh r0, [r5,#0xa]
    b loc_80203B0
loc_8020356:
    mov r1, #0x10
    tst r0, r1
    beq loc_8020382
    ldrb r3, [r5,#0x14]
    cmp r3, #0
    bne loc_80203E8
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r1, r1, r0
    lsl r1, r1, #2
    ldr r3, [pc, #0x8020454-0x802036e-2] // off_8020458
    ldr r3, [r3,r1]
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq loc_80203E8
    strh r0, [r5,#0xa]
    b loc_80203B0
loc_8020382:
    mov r1, #0x20 
    tst r0, r1
    beq loc_80203E4
    ldrb r3, [r5,#0x14]
    cmp r3, #0
    beq loc_8020392
    mov r1, #0x20 
    b loc_802039E
loc_8020392:
    ldrb r1, [r5,#0xb]
    mov r0, #5
    mul r0, r1
    ldrb r1, [r5,#0xa]
    add r1, r1, r0
    lsl r1, r1, #2
loc_802039E:
    ldr r3, [pc, #0x80204a4-0x802039e-2] // off_80204A8
    ldr r3, [r3,r1]
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq loc_80203E8
    strh r0, [r5,#0xa]
loc_80203B0:
    mov r1, #0
    ldrb r2, [r5,#0xb]
    mov r0, #5
    mul r0, r2
    ldrb r2, [r5,#0xa]
    add r0, r0, r2
    lsl r0, r0, #1
    add r0, #0x21 
    ldrb r0, [r5,r0]
    mov r2, #8
    tst r0, r2
    beq loc_80203CA
    mov r1, #1
loc_80203CA:
    strb r1, [r5,#0x14]
loc_80203CC:
    ldrb r0, [r5,#2]
    cmp r0, #4
    bne loc_80203DA
    ldrh r0, [r5,#0xa]
    ldr r1, [sp]
    cmp r0, r1
    beq loc_80203E4
loc_80203DA:
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_801FB40
loc_80203E4:
    pop {r0}
    pop {pc}
loc_80203E8:
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #8
    strb r0, [r5,#2]
    b loc_80203CC
    .balign 4, 0x00
off_80203F4:    .word dword_80203F8
dword_80203F8:    .word 0x7F697E
off_80203FC:    .word off_8020400
off_8020400:    .word dword_8020428
    .word 0x802042A, 0x802042D, 0x8020431, 0x8020436, 0x802043C
    .word 0x802043F, 0x8020443, 0x8020448, 0x802044D
dword_8020428:    .word 0x10F00, 0x1020F, 0x102030F, 0x3040F00, 0xF000102
    .word 0x60F0805, 0x70F0805, 0xF050806, 0x5060708, 0x708090F
    .word 0xF0506
off_8020454:    .word off_8020458
off_8020458:    .word dword_8020480
    .word 0x8020486, 0x802048B, 0x802048F, 0x8020491, 0x8020492
    .word 0x8020497, 0x802049B, 0x802049E, 0x80204A0
dword_8020480:    .word 0x4030201, 0x3020F08, 0x30F0804, 0x40F0804, 0x7060F0F
    .word 0x70F0908, 0x80F0908, 0xF090F09, 0xF
off_80204A4:    .word off_80204A8
off_80204A8:    .word dword_80204D0
    .word 0x80204D1, 0x80204D3, 0x80204D6, 0x80204DA, 0x80204DF
    .word 0x80204E0, 0x80204E2, 0x80204E5, 0x80204EC
dword_80204D0:    .word 0x10F000F, 0x1020F00, 0x2030F00, 0xF0F0001, 0x5060F05
    .word 0x506070F, 0xF000102, 0x5060708, 0x10203, 0xF
// end of function sub_8020290

.thumb
sub_80204F8:
    ldrb r0, [r5,#2]
    strb r0, [r5,#0x18]
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov pc, lr
// end of function sub_80204F8

.thumb
sub_8020506:
    push {lr}
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x40 
    blt loc_8020512
    cmp r0, #0x43 
    ble loc_802053A
loc_8020512:
    ldrb r1, [r5,#2]
    strb r1, [r5,#0x18]
    mov r1, #0x1c
    strb r1, [r5,#2]
    bl sub_8007EBC
    mov r1, #0x20 
    tst r0, r1
    beq loc_802052C
    mov r0, #0
    strb r0, [r5,#3]
    mov r1, #3
    b loc_8020532
loc_802052C:
    mov r0, #1
    strb r0, [r5,#3]
    mov r1, #0
loc_8020532:
    ldr r0, [pc, #0x8020554-0x8020532-2] // loc_8746ECC
    bl sub_804E2A4
    pop {pc}
loc_802053A:
    sub r0, #0x40 
    ldr r1, [pc, #0x8020558-0x802053c-4] // loc_802055C
    ldrb r0, [r1,r0]
    add r1, r5, #0
    add r1, #0x60 
    strb r0, [r1,#1]
    ldrb r0, [r5,#1]
    strb r0, [r1,#4]
    ldrb r0, [r5,#2]
    strb r0, [r1,#5]
    mov r0, #0x20 
    strh r0, [r5,#2]
    pop {pc}
off_8020554:    .word loc_8746ECC
off_8020558:    .word loc_802055C
// end of function sub_8020506

loc_802055C:
    lsr r6, r1, #0x20
    lsl r2, r1, #0x18
.thumb
sub_8020560:
    push {lr}
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r0, r1
    beq loc_80205A0
    bl __801EF74
    cmp r0, #0
    beq loc_802057A
    mov r0, #0x69 
    bl f500_8000558
    b locret_802063E
loc_802057A:
    strb r1, [r5,#0x17]
    mov r0, #0x80
    bl f500_8000558
    ldrb r0, [r5,#2]
    cmp r0, #0x20 
    beq locret_802063E
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #1
    bl sub_8007EA6
    bl sub_8005B34
    bl sub_8005B3A
    b locret_802063E
loc_80205A0:
    mov r1, #2
    tst r0, r1
    beq loc_80205BE
    bl sub_801F816
    ldr r1, [pc, #0x8020640-0x80205aa-2] // dword_8020644
    ldrb r0, [r1,r0]
    bl f500_8000558
    ldrh r0, [r5,#2]
    cmp r0, #0x20 
    beq locret_802063E
    bl sub_801FB40
    b locret_802063E
loc_80205BE:
    ldr r1, [pc, #0x8020664-0x80205be-2] // =0x200
    tst r0, r1
    beq loc_80205CA
    bl sub_8020506
    b locret_802063E
loc_80205CA:
    mov r1, #4
    tst r0, r1
    beq loc_80205D6
    bl sub_80204F8
    b locret_802063E
loc_80205D6:
    ldrh r0, [r7,#4]
    mov r1, #0x80
    tst r0, r1
    beq loc_80205EE
    ldrb r0, [r5,#0xc]
    cmp r0, #0
    beq locret_802063E
    mov r0, #0xc
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#0xb]
    b loc_8020634
loc_80205EE:
    mov r1, #0x10
    tst r0, r1
    beq loc_80205F8
    mov r2, #0
    b loc_8020600
loc_80205F8:
    mov r1, #0x20 
    tst r0, r1
    beq locret_802063E
    mov r2, #4
loc_8020600:
    ldr r3, [pc, #0x8020648-0x8020600-4] // off_802064C
    ldr r3, [r3,r2]
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq locret_802063E
    strh r0, [r5,#0xa]
    mov r2, #0
    mov r1, #0xff
    and r1, r0
    lsr r0, r0, #8
    mov r3, #5
    mul r0, r3
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x21 
    ldrb r0, [r5,r0]
    mov r1, #8
    tst r0, r1
    beq loc_802062E
    mov r2, #1
loc_802062E:
    strb r2, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#2]
loc_8020634:
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_801FB40
locret_802063E:
    pop {pc}
off_8020640:    .word dword_8020644
dword_8020644:    .word 0x697F
off_8020648:    .word off_802064C
off_802064C:    .word dword_8020654
    .word 0x8020657
dword_8020654:    .word 0x40F0900, 0x10203, 0xF09
off_8020660:    .word 0x100
off_8020664:    .word 0x200
// end of function sub_8020560

.thumb
sub_8020668:
    push {lr}
    ldrh r0, [r7,#2]
    mov r1, #8
    tst r0, r1
    bne loc_80206CE
    mov r1, #2
    tst r0, r1
    beq loc_802068C
    bl sub_801F816
    mov r1, #2
    sub r1, r1, r0
    add r0, r1, #0
    ldr r1, [pc, #0x8020728-0x8020682-2] // dword_802072C
    ldrb r0, [r1,r0]
    bl f500_8000558
    b locret_8020724
loc_802068C:
    mov r1, #4
    tst r0, r1
    beq loc_8020698
    bl sub_80204F8
    b locret_8020724
loc_8020698:
    ldr r1, [pc, #0x8020750-0x8020698-4] // =0x200
    tst r0, r1
    beq loc_80206A4
    bl sub_8020506
    b locret_8020724
loc_80206A4:
    mov r1, #1
    tst r0, r1
    beq loc_80206C6
    bl sub_801F7FC
    add r2, r0, #0
    ldr r1, [pc, #0x8020728-0x80206b0-4] // dword_802072C
    ldrb r0, [r1,r0]
    bl f500_8000558
    cmp r2, #0
    bne locret_8020724
    mov r0, #0x10
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#3]
    b locret_8020724
loc_80206C6:
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_80206D4
loc_80206CE:
    mov r0, #8
    strb r0, [r5,#2]
    b loc_802071A
loc_80206D4:
    mov r1, #0x10
    tst r0, r1
    beq loc_80206DE
    mov r3, #0
    b loc_80206E6
loc_80206DE:
    mov r1, #0x20 
    tst r0, r1
    beq locret_8020724
    mov r3, #4
loc_80206E6:
    ldr r0, [pc, #0x8020730-0x80206e6-2] // off_8020734
    ldr r3, [r0,r3]
    bl sub_801FE24
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq locret_8020724
    strh r0, [r5,#0xa]
    mov r2, #0
    mov r1, #0xff
    and r1, r0
    lsr r0, r0, #8
    mov r3, #5
    mul r0, r3
    add r0, r0, r1
    lsl r0, r0, #1
    add r0, #0x21 
    ldrb r0, [r5,r0]
    mov r1, #8
    tst r0, r1
    beq loc_8020714
    mov r2, #1
loc_8020714:
    strb r2, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#2]
loc_802071A:
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_801FB40
locret_8020724:
    pop {pc}
    .balign 4, 0x00
off_8020728:    .word dword_802072C
dword_802072C:    .word 0x7F6980
off_8020730:    .word off_8020734
off_8020734:    .word dword_802073C
    .word 0x802073F
dword_802073C:    .word 0x90F0005, 0x5060708, 0x1020304, 0xF00, 0x100
off_8020750:    .word 0x200
// end of function sub_8020668

.thumb
sub_8020754:
    push {lr}
    ldr r1, [pc, #0x8020764-0x8020756-2] // off_8020768
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8020764:    .word off_8020768
off_8020768:    .word sub_8020784+1
    .word sub_80207C4+1
    .word sub_80207DA+1
    .word sub_8020804+1
    .word sub_802081C+1
    .word sub_8020834+1
    .word sub_802089E+1
// end of function sub_8020754

.thumb
sub_8020784:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #4
    strb r0, [r5,#3]
    ldrb r0, [r5,#0xd]
    add r0, #0x61 
    add r0, #0xff
    bl sub_8019010
    ldr r0, [r0,#0x20]
    ldr r1, [pc, #0x80207b8-0x802079a-2] // =0x6017140
    mov r2, #0x80
    bl loc_8000874
    ldrb r0, [r5,#0x12]
    mov r1, #0x10
    mul r0, r1
    add r0, #0x18
    strb r0, [r5,#0x1b]
    ldr r0, [pc, #0x80207bc-0x80207ac-4] // loc_8745CB8
    ldr r1, [pc, #0x80207c0-0x80207ae-2] // unk_30027A0
    mov r2, #0x20 
    bl loc_8000874
    pop {pc}
dword_80207B8:    .word 0x6017140
off_80207BC:    .word loc_8745CB8
off_80207C0:    .word unk_30027A0
// end of function sub_8020784

.thumb
sub_80207C4:
    push {lr}
    ldr r0, [r5,#0x44]
    add r0, #1
    str r0, [r5,#0x44]
    cmp r0, #0x10
    blt locret_80207D8
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #8
    strb r0, [r5,#3]
locret_80207D8:
    pop {pc}
// end of function sub_80207C4

.thumb
sub_80207DA:
    push {lr}
    ldrb r0, [r5,#0x1b]
    sub r0, #2
    strb r0, [r5,#0x1b]
    ldr r0, [r5,#0x44]
    add r0, #1
    str r0, [r5,#0x44]
    cmp r0, #8
    blt locret_8020802
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #0xc
    strb r0, [r5,#3]
    mov r0, #0x34 
    mov r1, #0x20 
    bl sub_8005ADC
    mov r0, #0x79 
    bl f500_8000558
locret_8020802:
    pop {pc}
// end of function sub_80207DA

.thumb
sub_8020804:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_802081A
    mov r0, #0x10
    strb r0, [r5,#3]
    mov r0, #0x30 
    mov r1, #0x20 
    bl sub_8005ADC
locret_802081A:
    pop {pc}
// end of function sub_8020804

.thumb
sub_802081C:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_8020832
    mov r0, #0x14
    strb r0, [r5,#3]
    mov r0, #4
    mov r1, #0x20 
    bl sub_8005ADC
locret_8020832:
    pop {pc}
// end of function sub_802081C

.thumb
sub_8020834:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_802089C
    ldrb r3, [r5,#0x12]
    add r1, r3, #0
    add r1, #0x46 
    add r2, r3, #0
    add r2, #0x47 
    ldrb r0, [r5,r2]
    strb r0, [r5,#0xe]
loc_802084C:
    sub r3, #1
    beq loc_802086A
    ldrb r0, [r5,r1]
    strb r0, [r5,r2]
    push {r1-r3}
    push {r3}
    bl sub_801EE8C
    pop {r1}
    bl sub_801F668
    pop {r1-r3}
    sub r1, #1
    sub r2, #1
    b loc_802084C
loc_802086A:
    ldrb r0, [r5,#0xd]
    mov r1, #0x48 
    strb r0, [r5,r1]
    add r0, #0x61 
    add r0, #0xff
    mov r1, #0
    bl sub_801F668
    bl sub_801F920
    bl sub_801FEC4
    bl sub_801FE54
    bl sub_801FA20
    mov r0, #0
    mov r1, #0x20 
    bl sub_8005ADC
    mov r0, #0x97
    bl f500_8000558
    mov r0, #0x18
    strb r0, [r5,#3]
locret_802089C:
    pop {pc}
// end of function sub_8020834

.thumb
sub_802089E:
    push {lr}
    bl sub_8005B5C
    cmp r0, #0
    bne locret_80208C0
    bl sub_801E014
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#8]
    cmp r1, #1
    bne loc_80208BC
    ldrb r0, [r5,#0x1d]
    cmp r0, #0x43 
    beq loc_80208C2
loc_80208BC:
    mov r0, #0xc
    strh r0, [r5,#2]
locret_80208C0:
    pop {pc}
loc_80208C2:
    add r3, r5, #0
    add r3, #0x60 
    mov r0, #0x12
    strb r0, [r3,#1]
    ldrb r0, [r5,#1]
    strb r0, [r3,#4]
    mov r0, #0xc
    strb r0, [r3,#5]
    mov r0, #0x20 
    strh r0, [r5,#2]
    pop {pc}
// end of function sub_802089E

.thumb
sub_80208D8:
    push {lr}
    ldrb r0, [r5,#3]
    add r1, r0, #1
    strb r1, [r5,#3]
    mov r1, #3
    and r0, r1
    bne loc_8020924
    mov r0, #1
    ldrb r1, [r5,#3]
    lsr r1, r1, #4
    sub r0, r0, r1
    cmp r0, #0
    bne loc_80208FA
    ldrb r1, [r5,#0x1a]
    cmp r1, #0
    bne loc_80208FA
    mov r0, #2
loc_80208FA:
    strb r0, [r5,#0x13]
    ldrb r0, [r5,#3]
    cmp r0, #0x11
    bne loc_8020908
    bl sub_8020172
    b loc_802090C
loc_8020908:
    bl sub_8020034
loc_802090C:
    bl sub_801F52C
    bl sub_801F5B4
    bl sub_801F920
    bl sub_801FA20
    mov r0, #0x24 
    add r0, #0xff
    bl f500_8000558
loc_8020924:
    ldrb r0, [r5,#3]
    cmp r0, #0x11
    blt locret_8020936
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #1
    strb r0, [r5,#3]
    bl sub_801FB40
locret_8020936:
    pop {pc}
// end of function sub_80208D8

.thumb
sub_8020938:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_8020948
    bl sub_802094A
locret_8020948:
    pop {pc}
// end of function sub_8020938

.thumb
sub_802094A:
    push {lr}
    ldrb r0, [r5,#0x18]
    strb r0, [r5,#2]
    ldr r0, [pc, #0x802095c-0x8020950-4] // dword_870A020
    ldr r1, [pc, #0x8020960-0x8020952-2] // unk_30027E0
    mov r2, #0x20 
    bl loc_8000874
    pop {pc}
off_802095C:    .word dword_870A020
off_8020960:    .word unk_30027E0
    .word 0x1FF
// end of function sub_802094A

.thumb
sub_8020968:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_80209AC
    ldrb r0, [r5,#3]
    cmp r0, #1
    bne loc_80209A8
    bl sub_80539B0
    cmp r0, #1
    beq loc_80209A8
    mov r1, #0x14
    strb r1, [r5,#0x17]
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0xff
    ldr r1, [pc, #0x80209b0-0x8020990-4] // byte_2037A10
    strb r0, [r1]
    mov r0, #1
    bl sub_8007EA6
    ldr r1, [pc, #0x80209b4-0x802099a-2] // byte_2037C50
    ldrb r0, [r1]
    add r0, #1
    cmp r0, #4
    beq locret_80209AC
    strb r0, [r1]
    b locret_80209AC
loc_80209A8:
    bl sub_802094A
locret_80209AC:
    pop {pc}
    .byte 0, 0
off_80209B0:    .word byte_2037A10
off_80209B4:    .word byte_2037C50
// end of function sub_8020968

.thumb
sub_80209B8:
    push {r6,lr}
    add r6, r5, #0
    add r6, #0x60 
    ldr r1, [pc, #0x80209cc-0x80209be-2] // off_80209D0
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,pc}
    .balign 4, 0x00
off_80209CC:    .word off_80209D0
off_80209D0:    .word sub_80209E4+1
    .word sub_80209EC+1
    .word sub_8020B6C+1
    .word sub_8020B84+1
    .word sub_8020CAC+1
// end of function sub_80209B8

.thumb
sub_80209E4:
    push {lr}
    mov r0, #4
    strb r0, [r5,#3]
    pop {pc}
// end of function sub_80209E4

.thumb
sub_80209EC:
    push {lr}
    ldrb r2, [r5,#0x1d]
    sub r2, #0x40 
    lsl r2, r2, #2
    ldr r1, [pc, #0x8020a6c-0x80209f4-4] // off_8020A70
    ldr r1, [r1,r2]
    ldrb r2, [r6,#1]
    lsl r2, r2, #1
    ldrb r0, [r1,r2]
    add r2, #1
    ldrb r1, [r1,r2]
    strb r1, [r6,#2]
    cmp r0, #0
    beq loc_8020A16
    cmp r0, #1
    beq loc_8020A2A
    cmp r0, #2
    beq loc_8020A3E
    mov r0, #0x10
    strb r0, [r5,#3]
    pop {pc}
loc_8020A16:
    ldrb r2, [r5,#0x1d]
    sub r2, #0x40 
    lsl r2, r2, #2
    ldr r0, [pc, #0x8020b58-0x8020a1c-4] // off_8020B5C
    ldr r0, [r0,r2]
    bl sub_804E2A4
    mov r0, #8
    strb r0, [r5,#3]
    pop {pc}
loc_8020A2A:
    mov r0, #0
    strb r0, [r6,#3]
    mov r0, #0xc
    strb r0, [r5,#3]
    ldr r0, [pc, #0x8020a64-0x8020a32-2] // dword_870A060
    ldr r1, [pc, #0x8020a68-0x8020a34-4] // unk_30027E0
    mov r2, #0x20 
    bl loc_8000874
    pop {pc}
loc_8020A3E:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800F48A
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0x16]
    bl sub_800F448
    strb r0, [r5,#0x10]
    strb r1, [r5,#0xf]
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    pop {pc}
    .balign 4, 0x00
off_8020A64:    .word dword_870A060
off_8020A68:    .word unk_30027E0
off_8020A6C:    .word off_8020A70
off_8020A70:    .word dword_8020A80
    .word dword_8020AD4
    .word dword_8020B18
    .word dword_8020B30
dword_8020A80:    .word 0x10000, 0x1010200, 0x2010300, 0x3010400, 0x4010500
    .word 0x5010600, 0x1030800, 0x30D00, 0x1030900, 0x1030E00
    .word 0x31600, 0x30A00, 0x30F00, 0x30C00, 0x30B00
    .word 0x31700, 0x1031000, 0x6011100, 0x7011200, 0x8011300
    .word 0xFF031500
dword_8020AD4:    .word 0x10000, 0x1010100, 0x2010200, 0x1030400, 0x30E00
    .word 0x1030500, 0x30600, 0x30700, 0x1030A00, 0x30B00
    .word 0x30C00, 0x30800, 0x30D00, 0x30900, 0x1030F00
    .word 0x3011000, 0xFF031100
dword_8020B18:    .word 0x10000, 0x3C020300, 0x4000001, 0x1FF02, 0x1030500
    .word 0x30D00
dword_8020B30:    .word 0x10000, 0x1010300, 0x1030400, 0x30900, 0x30500, 0x30600
    .word 0x30700, 0x30800, 0x30C00, 0x1030A00
off_8020B58:    .word off_8020B5C
off_8020B5C:    .word unk_8748A14
    .word unk_874914C
    .word unk_87496AC
    .word unk_8749B60
// end of function sub_80209EC

.thumb
sub_8020B6C:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_8020B82
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    mov r0, #4
    strb r0, [r5,#3]
locret_8020B82:
    pop {pc}
// end of function sub_8020B6C

.thumb
sub_8020B84:
    push {r4,r7,lr}
    ldrb r0, [r6,#3]
    add r0, #1
    strb r0, [r6,#3]
    cmp r0, #8
    blt loc_8020B98
    ldrh r2, [r7,#2]
    mov r1, #3
    tst r1, r2
    bne loc_8020BAE
loc_8020B98:
    ldrb r2, [r5,#0x1d]
    sub r2, #0x40 
    lsl r2, r2, #2
    ldr r1, [pc, #0x8020c00-0x8020b9e-2] // off_8020C04
    ldr r1, [r1,r2]
    ldrb r2, [r6,#2]
    lsl r2, r2, #2
    ldr r7, [r1,r2]
    ldrb r1, [r7]
    cmp r0, r1
    blt loc_8020BBA
loc_8020BAE:
    ldrb r0, [r6,#1]
    add r0, #1
    strb r0, [r6,#1]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8020BFC
loc_8020BBA:
    add r7, #1
    mov r1, #0xf
    and r0, r1
    sub r0, #1
    bne loc_8020BCA
    mov r0, #0x79 
    bl f500_8000558
loc_8020BCA:
    ldrb r0, [r6,#3]
    ldr r1, [pc, #0x8020c1c-0x8020bcc-4] // =0xD382
    mov r2, #8
    and r0, r2
    lsr r0, r0, #1
    add r1, r1, r0
    mov r2, #0
    mov r3, #0
loc_8020BDA:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq locret_8020BFC
    lsl r0, r0, #0x10
    ldrb r4, [r7,#1]
    orr r4, r0
    mov r0, #1
    and r0, r4
    beq loc_8020BF0
    ldr r0, [pc, #0x8020c18-0x8020bec-4] // =0x60000000
    b loc_8020BF2
loc_8020BF0:
    ldr r0, [pc, #0x8020c14-0x8020bf0-4] // =0x40000000
loc_8020BF2:
    add r0, r0, r4
    bl sub_8007880
    add r7, #2
    b loc_8020BDA
locret_8020BFC:
    pop {r4,r7,pc}
    .byte 0, 0
off_8020C00:    .word off_8020C04
off_8020C04:    .word off_8020C20
    .word off_8020C6C
    .word off_8020C94
    .word off_8020C9C
dword_8020C14:    .word 0x40000000
dword_8020C18:    .word 0x60000000
dword_8020C1C:    .word 0xD382
off_8020C20:    .word dword_8020C44
    .word dword_8020C48
    .word dword_8020C4C
    .word dword_8020C50
    .word dword_8020C54
    .word 0x8020C5A, 0x8020C60, 0x8020C64, 0x8020C68
dword_8020C44:    .word 0xFF4E7850
dword_8020C48:    .word 0xFF804050
dword_8020C4C:    .word 0xFF384A50
dword_8020C50:    .word 0xFF5E4250
dword_8020C54:    .word 0xB6578E50, 0x1250FF87, 0xFF723272, 0xFF0E2E50, 0xFF404850
    .word 0xFF107850
off_8020C6C:    .word dword_8020C7C
    .word dword_8020C80
    .word dword_8020C84
    .word 0x8020C8A
dword_8020C7C:    .word 0xFF721250
dword_8020C80:    .word 0xFF722250
dword_8020C84:    .word 0x207E1050, 0x8C50FF7E, 0x8C6A8C52, 0xFF82
off_8020C94:    .word dword_8020C98
dword_8020C98:    .word 0xFF20A250
off_8020C9C:    .word dword_8020CA4
    .word dword_8020CA8
dword_8020CA4:    .word 0xFF724250
dword_8020CA8:    .word 0xFF7D6A50
// end of function sub_8020B84

.thumb
sub_8020CAC:
    push {lr}
    ldrb r0, [r6]
    ldrb r1, [r6,#2]
    add r0, r0, r1
    strb r0, [r6]
    cmp r1, #0xff
    bne loc_8020CBE
    mov r0, #8
    strb r0, [r5]
loc_8020CBE:
    ldrb r0, [r6,#5]
    strb r0, [r5,#0x18]
    bl sub_802094A
    ldrb r0, [r6,#4]
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_8020CAC

.thumb
sub_8020CCC:
    push {lr}
    ldrb r0, [r5,#0x14]
    cmp r0, #0
    beq loc_8020CDA
    bl sub_801ED14
    pop {pc}
loc_8020CDA:
    ldrb r0, [r5,#0xa]
    ldrb r1, [r5,#0xb]
    mov r2, #2
    mul r0, r2
    mov r2, #3
    mul r1, r2
    add r0, #1
    add r1, #0xd
    mov r2, #8
    mul r0, r2
    mul r1, r2
    bl sub_801ECB4
    bl sub_801EE0C
    pop {pc}
    .balign 4, 0x00
// end of function sub_8020CCC

.thumb
sub_8020CFC:
    push {lr}
    mov r0, #0xb
    mov r1, #0xe
    mov r2, #8
    mul r0, r2
    mul r1, r2
    bl sub_801ECE4
    pop {pc}
    .byte 0, 0
// end of function sub_8020CFC

.thumb
sub_8020D10:
    push {lr}
    mov r0, #0xb
    mov r1, #0x11
    mov r2, #8
    mul r0, r2
    mul r1, r2
    bl sub_801ED48
    pop {pc}
// end of function sub_8020D10

.thumb
sub_8020D22:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #4
    blt locret_8020D3E
    cmp r0, #0x14
    bgt locret_8020D3E
    ldr r0, [pc, #0x8020d40-0x8020d2e-2] // =0x40600000
    ldrb r1, [r5,#0x1b]
    add r0, r0, r1
    ldr r1, [pc, #0x8020d44-0x8020d34-4] // =0xB38A
    mov r2, #0
    mov r3, #0
    bl sub_8007880
locret_8020D3E:
    pop {pc}
dword_8020D40:    .word 0x40600000
dword_8020D44:    .word 0xB38A
// end of function sub_8020D22

.thumb
sub_8020D48:
    push {lr}
    bl sub_801ED14
    pop {pc}
// end of function sub_8020D48

.thumb
sub_8020D50:
    push {lr}
    ldrb r0, [r5,#0x18]
    cmp r0, #4
    bne locret_8020D62
    ldrb r0, [r5,#0x14]
    cmp r0, #0
    bne locret_8020D62
    bl sub_801EE0C
locret_8020D62:
    pop {pc}
// end of function sub_8020D50

.thumb
sub_8020D64:
    push {r6,lr}
    add r6, r5, #0
    add r6, #0x60 
    ldrb r0, [r6,#4]
    cmp r0, #0xff
    beq locret_8020D80
    ldrb r0, [r6,#4]
    cmp r0, #4
    bne locret_8020D80
    ldrb r0, [r6,#5]
    cmp r0, #4
    bne locret_8020D80
    bl sub_801EE0C
locret_8020D80:
    pop {r6,pc}
    .balign 4, 0x00
    .word byte_2036440
    .word unk_2036170
    .word word_203BE80
    .word 0x1FF
    .word 0x6009BC0, 0x103
dword_8020D9C:    .word 0x77777777, 0x77777777, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777, 0x77777777, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777, 0x77777777, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777
dword_8020DDC:    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x88888888
    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x88888888
    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x88888888
    .word 0x88888888
dword_8020E1C:    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
    .word 0x11111111, 0x100D0A0E, 0x210A200D, 0x4040060F, 0x60F041B
    .word 0xA0E
// end of function sub_8020D64

.thumb
sub_8020E70:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r0, [pc, #0x80210e8-0x8020e74-4] // byte_203BC90
    mov r1, #0x10
    bl f900_8000930
    ldr r0, [pc, #0x80210e8-0x8020e7c-4] // byte_203BC90
    strb r4, [r0,#(byte_203BC94 - 0x203bc90)]
    pop {r4-r7,pc}
// end of function sub_8020E70

.thumb
sub_8020E82:
    push {lr}
    push {r0}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_800D6F2
    mov r1, #0x23 
    ldrb r0, [r0,r1]
    mov r1, #4
    mul r0, r1
    pop {r1}
    add r1, r1, r0
    ldr r0, [pc, #0x80210ec-0x8020e9c-4] // loc_8746ECC
    bl sub_804E2A4
    pop {pc}
// end of function sub_8020E82

.thumb
ho_8020EA4:
    push {r5,lr}
    ldr r5, [pc, #0x80210e8-0x8020ea6-2] // byte_203BC90
    ldr r1, [pc, #0x8020eb4-0x8020ea8-4] // jt_8020EB8
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
off_8020EB4:    .word jt_8020EB8
jt_8020EB8:    .word sub_8020EC4+1
    .word ho_cb_8020F24+1
    .word sub_8020F18+1
// end of function ho_8020EA4

.thumb
sub_8020EC4:
    push {lr}
    ldr r0, [pc, #0x8020f14-0x8020ec6-2] // =0x420000
    bl sub_8015AFA
    mov r0, #4
    str r0, [r5]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8022CDE
    ldrb r1, [r0,#6]
    strb r1, [r5,#6]
    ldrb r1, [r0,#7]
    strb r1, [r5,#7]
    mov r2, #0
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    lsl r1, r1, #1
    mov r0, #3
    lsl r0, r1
    ldrb r1, [r5,#4]
    tst r0, r1
    beq loc_8020EF8
    mov r2, #4
loc_8020EF8:
    strb r2, [r5,#1]
    mov r0, #0x66 
    bl f500_8000558
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#8]
    add r1, #1
    cmp r1, #3
    bge loc_8020F0E
    strb r1, [r0,#8]
loc_8020F0E:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_8020F14:    .word 0x420000
// end of function sub_8020EC4

.thumb
sub_8020F18:
    push {lr}
    bl sub_80169EC
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
// end of function sub_8020F18

.thumb
ho_cb_8020F24:
    push {r5,lr}
    ldr r5, [pc, #0x80210e8-0x8020f26-2] // byte_203BC90
    ldr r1, [pc, #0x8020f3c-0x8020f28-4] // jt_8020F40
    ldrb r0, [r5,#(byte_203BC91 - 0x203bc90)]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80210AC
    mov r0, #0
    pop {r5,pc}
    .balign 4, 0x00
off_8020F3C:    .word jt_8020F40
jt_8020F40:    .word sub_8020F50+1
    .word sub_8020F96+1
    .word sub_8020FDC+1
    .word sub_8021048+1
// end of function ho_cb_8020F24

.thumb
sub_8020F50:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8020F62
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #4
    bl sub_8020E82
loc_8020F62:
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_8020F8C
    bl sub_80539B0
    ldr r1, [pc, #0x8020f90-0x8020f70-4] // loc_8020F94
    ldrb r0, [r1,r0]
    strb r0, [r5,#1]
    mov r1, #0
    strh r1, [r5,#2]
    cmp r0, #4
    bne locret_8020F8C
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    lsl r1, r1, #1
    mov r0, #3
    lsl r0, r1
    strb r0, [r5,#4]
locret_8020F8C:
    pop {pc}
    .byte 0, 0
off_8020F90:    .word loc_8020F94
// end of function sub_8020F50

loc_8020F94:
    lsr r4, r0, #0x10
.thumb
sub_8020F96:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8020FC0
    mov r0, #4
    bl sub_8007E9A
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    lsl r1, r1, #1
    mov r0, #1
    lsl r0, r1
    ldrb r1, [r5,#4]
    tst r0, r1
    beq loc_8020FD2
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #5
    bl sub_8020E82
loc_8020FC0:
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_8020FDA
    bl sub_80539B0
    add r0, #1
    strb r0, [r5,#6]
loc_8020FD2:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8020FDA:
    pop {pc}
// end of function sub_8020F96

.thumb
sub_8020FDC:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_802100C
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r2, [r2,#0xd]
    lsl r2, r2, #1
    mov r0, #2
    lsl r0, r2
    ldrb r1, [r5,#4]
    tst r0, r1
    beq loc_802102E
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #7
    mov r3, #3
    lsl r3, r2
    and r1, r3
    cmp r3, r1
    bne loc_8021008
    mov r0, #6
loc_8021008:
    bl sub_8020E82
loc_802100C:
    mov r0, #0x80
    bl sub_80539A0
    cmp r0, #0
    bne locret_802103C
    bl sub_80539B0
    cmp r0, #3
    bne loc_8021028
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_802103C
loc_8021028:
    ldr r1, [pc, #0x8021040-0x8021028-4] // dword_8021044
    ldrb r0, [r1,r0]
    strb r0, [r5,#7]
loc_802102E:
    mov r0, #4
    bl sub_8007EA6
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802103C:
    pop {pc}
    .byte 0, 0
off_8021040:    .word dword_8021044
dword_8021044:    .word 0x201
// end of function sub_8020FDC

.thumb
sub_8021048:
    push {lr}
    ldr r1, [pc, #0x8021058-0x802104a-2] // off_802105C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8021058:    .word off_802105C
off_802105C:    .word sub_8021064+1
    .word sub_802107E+1
// end of function sub_8021048

.thumb
sub_8021064:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#6]
    bl sub_800898A
    bl sub_8007E16
    cmp r0, #0x46 
    blt loc_8021078
    bl sub_8016A28
loc_8021078:
    mov r0, #4
    strh r0, [r5,#2]
    pop {r4,r6,r7,pc}
// end of function sub_8021064

.thumb
sub_802107E:
    push {r4,r6,r7,lr}
    ldr r0, [pc, #0x80210a4-0x8021080-4] // =0x1A2B3C4D
    bl sub_80089D8
    tst r0, r0
    beq locret_80210A2
    bl sub_80089CC
    bl sub_80089A0
    ldr r0, [pc, #0x80210a8-0x8021092-2] // =0x800000
    bl sub_8015902
    ldr r0, [pc, #0x80210a8-0x8021098-4] // =0x800000
    bl sub_8015AFA
    mov r0, #8
    str r0, [r5]
locret_80210A2:
    pop {r4,r6,r7,pc}
dword_80210A4:    .word 0x1A2B3C4D
dword_80210A8:    .word 0x800000
// end of function sub_802107E

.thumb
sub_80210AC:
    push {lr}
    mov r0, #0
    bl sub_80210BC
    mov r0, #1
    bl sub_80210BC
    pop {pc}
// end of function sub_80210AC

.thumb
sub_80210BC:
    push {r4,lr}
    add r4, r0, #0
    bl sub_8007EB2
    mov r1, #4
    tst r0, r1
    beq locret_80210E6
    mov r0, #8
    add r0, r0, r4
    ldrb r1, [r5,r0]
    add r1, #1
    cmp r1, #1
    blt loc_80210E4
    mov r1, #0
    push {r0,r1}
    add r0, r4, #0
    mov r1, #0xa
    bl sub_8022CBC
    pop {r0,r1}
loc_80210E4:
    strb r1, [r5,r0]
locret_80210E6:
    pop {r4,pc}
off_80210E8:    .word byte_203BC90
off_80210EC:    .word loc_8746ECC
byte_80210F0:    .byte 0x3
byte_80210F1:    .byte 0x1
    .hword 0x158
    .byte 0x30
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x32 
    .byte 0
word_80210FA:    .hword 0x103
dword_80210FC:    .word 0x300158, 0x340033, 0x1400103, 0xD300D8, 0x103012D
    .word 0xD80140, 0x13200D3, 0x1410103, 0x140013, 0x1030015
    .word 0x200159, 0x220021, 0x15B0103, 0xD80052, 0x10300CC
    .word 0x91015C, 0xCA0090, 0x1410003, 0x30013, 0x160142
    .word 0x1410003, 0x30014, 0x170142, 0x1410003, 0x30015
    .word 0x180142, 0x1430003, 0x30001, 0x20144, 0x1450003
    .word 0x30003, 0x90146, 0x1470003, 0x3000A, 0xB0148
    .word 0x1490003, 0x3000C, 0xD014A, 0x14B0003, 0x3000E
    .word 0x4B014C, 0x14D0003, 0x3004C, 0x4D014E, 0x14F0003
    .word 0x30045, 0x460150, 0x1510003, 0x30047, 0x3F0152
    .word 0x1530003, 0x30040, 0x410154, 0x1550003, 0x30023
    .word 0x240156, 0x1570003, 0x30025, 0x61015A, 0x15D0003
    .word 0x12
off_80211F0:    .word byte_80210F0
    .word word_80210FA
    .word dword_80210FC+8
    .word 0x802110E, 0x8021118, 0x8021122, 0x802112C, 0x8021136
    .word 0x8021140, 0x8021146, 0x802114C, 0x8021152, 0x8021158
    .word 0x802115E, 0x8021164, 0x802116A, 0x8021170, 0x8021176
    .word 0x802117C, 0x8021182, 0x8021188, 0x802118E, 0x8021194
    .word 0x802119A, 0x80211A0, 0x80211A6, 0x80211AC, 0x80211B2
    .word 0x80211B8, 0x80211BE, 0x80211C4, 0x80211CA, 0x80211D0
    .word 0x80211D6, 0x80211DC, 0x80211E2, 0x80211E8, 0x0
// end of function sub_80210BC

.thumb
sub_8021288:
    push {r5,lr}
    ldr r5, [pc, #0x80212d4-0x802128a-2] // byte_203B830
    mov r0, #1
    strb r0, [r5,#(byte_203B835 - 0x203b830)]
    bl sub_8021D76
    str r0, [r5,#(dword_203B848 - 0x203b830)]
    ldrb r0, [r5,#(byte_203B836 - 0x203b830)]
    strb r0, [r5,#(byte_203B837 - 0x203b830)]
    ldr r1, [pc, #0x80212c4-0x802129a-2] // off_80212C8
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    push {r5}
    mov r1, #(byte_203B836 - 0x203b830)
    ldrsb r0, [r5,r1]
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x80212d8-0x80212ae-2] // unk_2035D50
    mov r4, #0x18
    mov r5, #0x11
    bl sub_8001DDC
// end of function sub_8021288

    pop {r5}
    bl sub_80218EC
    ldrb r0, [r5,#5]
    pop {r5,pc}
    .balign 4, 0x00
off_80212C4:    .word off_80212C8
off_80212C8:    .word sub_80212DC+1
    .word sub_80212E8+1
    .word sub_8021804+1
off_80212D4:    .word byte_203B830
off_80212D8:    .word unk_2035D50
.thumb
sub_80212DC:
    push {lr}
    bl sub_8021DF8
    mov r0, #4
    str r0, [r5]
    pop {pc}
// end of function sub_80212DC

.thumb
sub_80212E8:
    push {lr}
    ldr r1, [pc, #0x80212fc-0x80212ea-2] // off_8021300
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8021CE8
    pop {pc}
    .balign 4, 0x00
off_80212FC:    .word off_8021300
off_8021300:    .word sub_8021310+1
    .word sub_80213B0+1
    .word sub_80217A8+1
    .word sub_80217DC+1
// end of function sub_80212E8

.thumb
sub_8021310:
    push {lr}
    ldr r1, [pc, #0x8021320-0x8021312-2] // off_8021324
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8021320:    .word off_8021324
off_8021324:    .word sub_802132C+1
    .word sub_8021356+1
// end of function sub_8021310

.thumb
sub_802132C:
    push {r4,r5,lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #6
    mov r5, #2
    bl sub_8001DF8
// end of function sub_802132C

    pop {r5}
    mov r3, r10
    ldr r3, [r3,#8]
    mov r0, #0
    strh r0, [r3,#0x18]
    mov r1, #0
    bl sub_8015ACA
    mov r0, #4
    strh r0, [r5,#2]
    pop {r4,r5,pc}
.thumb
sub_8021356:
    push {lr}
    mov r1, #6
    ldrsb r0, [r5,r1]
    add r0, #2
    strb r0, [r5,#6]
    cmp r0, #3
    blt loc_8021370
    mov r0, #3
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8021370:
    ldrb r0, [r5,#4]
    cmp r0, #2
    beq locret_8021386
    mov r1, #0
    ldr r0, [r5,#0x1c]
    ldrb r1, [r5,#0xe]
    bl sub_8021974
    ldrb r0, [r5,#8]
    bl sub_8021B78
locret_8021386:
    pop {pc}
    .word 0x802138C, 0x500, 0x1200, 0x3600, 0x3000, 0x4000, 0x5000
    .word 0x3000, 0x4500, 0x10000
// end of function sub_8021356

.thumb
sub_80213B0:
    push {lr}
    ldr r1, [pc, #0x80213c0-0x80213b2-2] // off_80213C4
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80213C0:    .word off_80213C4
off_80213C4:    .word sub_80213D4+1
    .word sub_802146C+1
    .word sub_80216A0+1
    .word loc_80216FC+1
// end of function sub_80213B0

.thumb
sub_80213D4:
    push {lr}
    ldr r1, [pc, #0x80213e4-0x80213d6-2] // off_80213E8
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80213E4:    .word off_80213E8
off_80213E8:    .word sub_80213F4+1
    .word sub_802141C+1
    .word sub_802142C+1
// end of function sub_80213D4

.thumb
sub_80213F4:
    push {lr}
    bl sub_8021D60
    tst r0, r0
    bne loc_8021408
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_802141A
loc_8021408:
    strh r0, [r5,#0x10]
    mov r0, #1
    ldrb r1, [r5,#0xc]
    tst r1, r1
    bne loc_8021414
    mov r0, #0x1e
loc_8021414:
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
locret_802141A:
    pop {pc}
// end of function sub_80213F4

.thumb
sub_802141C:
    push {lr}
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_802142A
    mov r0, #8
    strb r0, [r5,#3]
locret_802142A:
    pop {pc}
// end of function sub_802141C

.thumb
sub_802142C:
    push {lr}
    ldr r7, [pc, #0x8021468-0x802142e-2] // dword_2037C40
    ldrh r0, [r7,#(dword_2037C44 - 0x2037c40)]
    add r7, #8
    ldrh r1, [r7,#(dword_2037C4C - 0x2037c48)]
    orr r0, r1
    mov r1, #1
    tst r0, r1
    beq loc_8021454
    ldrb r0, [r5,#0xc]
    cmp r0, #1
    ble loc_8021448
    mov r0, #0xc
    b loc_802144A
loc_8021448:
    mov r0, #4
loc_802144A:
    strh r0, [r5,#2]
    mov r0, #0
    bl sub_8021C9C
    b locret_8021464
loc_8021454:
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r0, [r7]
    mov r1, #8
    and r0, r1
    lsr r0, r0, #3
    bl sub_8021C9C
locret_8021464:
    pop {pc}
    .balign 4, 0x00
off_8021468:    .word dword_2037C40
// end of function sub_802142C

.thumb
sub_802146C:
    push {lr}
    ldr r1, [pc, #0x802147c-0x802146e-2] // off_8021480
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802147C:    .word off_8021480
off_8021480:    .word sub_802148C+1
    .word sub_8021564+1
    .word sub_80215C4+1
// end of function sub_802146C

.thumb
sub_802148C:
    push {lr}
    mov r0, #0
    ldr r7, [pc, #0x802153c-0x8021490-4] // unk_20364B0
loc_8021492:
    strb r0, [r7,r0]
    add r0, #1
    cmp r0, #0x2a 
    bmi loc_8021492
    add r0, r7, #0
    mov r1, #0x2a 
    mov r2, #0x2a 
    bl fA00_8000AA2
    ldrh r0, [r5,#0x10]
    ldr r1, [pc, #0x8021560-0x80214a6-2] // =0xFFFF
    cmp r0, r1
    beq loc_80214E0
    bl sub_80219D8
    tst r0, r0
    bne loc_80214C2
    add r0, r1, #0
    bl sub_8019010
    add r7, r0, #0
    ldr r0, [r7,#0x24]
    ldr r1, [r7,#0x28]
    b loc_8021504
loc_80214C2:
    cmp r0, #1
    bne loc_80214CC
    ldr r0, [pc, #0x8021534-0x80214c6-2] // unk_8751B18
    ldr r1, [pc, #0x8021538-0x80214c8-4] // dword_8752058
    b loc_8021504
loc_80214CC:
    cmp r0, #2
    bne loc_80214E0
    tst r1, r1
    beq loc_80214DA
    ldr r0, [pc, #0x8021540-0x80214d4-4] // unk_8752078
    ldr r1, [pc, #0x8021544-0x80214d6-2] // dword_87525B8
    b loc_8021504
loc_80214DA:
    ldr r0, [pc, #0x8021548-0x80214da-2] // dword_87525D8
    ldr r1, [pc, #0x802154c-0x80214dc-4] // dword_8752B18
    b loc_8021504
loc_80214E0:
    cmp r0, #3
    bne loc_8021500
    mov r2, #0
    cmp r1, #1
    ble loc_80214F8
    mov r2, #0x20 
    cmp r1, #2
    ble loc_80214F8
    mov r2, #0x40 
    cmp r1, #3
    ble loc_80214F8
    mov r2, #0x60 
loc_80214F8:
    ldr r0, [pc, #0x802155c-0x80214f8-4] // unk_8753098
    ldr r1, [pc, #0x8021558-0x80214fa-2] // dword_87535D8
    add r1, r1, r2
    b loc_8021504
loc_8021500:
    ldr r0, [pc, #0x8021550-0x8021500-4] // dword_8752B38
    ldr r1, [pc, #0x8021554-0x8021502-2] // dword_8753078
loc_8021504:
    push {r5}
    push {r1}
    ldr r1, [pc, #0x802152c-0x8021508-4] // =0x600B900
    mov r2, #0x2a 
    lsl r2, r2, #6
    bl loc_8000874
    pop {r1}
    add r0, r1, #0
    ldr r1, [pc, #0x8021530-0x8021516-2] // unk_3002BD0
    mov r2, #0x20 
    bl loc_8000874
    pop {r5}
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    pop {pc}
    .balign 4, 0x00
dword_802152C:    .word 0x600B900
off_8021530:    .word unk_3002BD0
off_8021534:    .word unk_8751B18
off_8021538:    .word dword_8752058
off_802153C:    .word unk_20364B0
off_8021540:    .word unk_8752078
off_8021544:    .word dword_87525B8
off_8021548:    .word dword_87525D8
off_802154C:    .word dword_8752B18
off_8021550:    .word dword_8752B38
off_8021554:    .word dword_8753078
off_8021558:    .word dword_87535D8
off_802155C:    .word unk_8753098
dword_8021560:    .word 0xFFFF
// end of function sub_802148C

.thumb
sub_8021564:
    push {lr}
    sub sp, sp, #0x74
    mov r6, sp
    add r0, r6, #4
    bl sub_8021A14
    ldrb r0, [r5,#0xb]
    cmp r0, #0x2a 
    bmi loc_8021580
    mov r0, #8
    strb r0, [r5,#3]
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    b loc_80215BA
loc_8021580:
    push {r0,r5}
    ldr r7, [pc, #0x80215c0-0x8021582-2] // unk_20364B0
    ldrb r0, [r7,r0]
    lsl r1, r0, #1
    add r1, #4
    ldrh r1, [r6,r1]
    strh r1, [r6]
    mov r1, #7
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    add r0, #0xe
    add r1, #9
    add r2, r6, #0
    mov r3, #1
    mov r4, #1
    bl sub_8021942
    pop {r0,r5}
    add r0, #1
    strb r0, [r5,#0xb]
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_80215BA
    mov r0, #0x7c 
    bl f500_8000558
loc_80215BA:
    add sp, sp, #0x74
    pop {pc}
    .byte 0, 0
off_80215C0:    .word unk_20364B0
// end of function sub_8021564

.thumb
sub_80215C4:
    push {lr}
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_8021690
    ldrh r0, [r5,#0x10]
    ldr r1, [pc, #0x8021694-0x80215d0-4] // =0xFFFF
    cmp r0, r1
    beq loc_802168C
    bl sub_80219D8
    tst r0, r0
    bne loc_802163C
    add r0, r1, #0
    add r1, r2, #0
    mov r2, #1
    push {r0,r1}
    ldrb r3, [r5,#4]
    cmp r3, #2
    beq loc_802162A
    push {r0-r2,r4,r6,r7}
    add r4, r1, #0
    ldr r1, [pc, #0x802169c-0x80215f0-4] // =0x135
    cmp r0, r1
    bgt loc_8021602
    bl sub_8019010
    ldr r1, [r0]
    ldr r2, [pc, #0x8021698-0x80215fc-4] // =0xFFFFFFFF
    cmp r1, r2
    bne loc_8021606
loc_8021602:
    pop {r0-r2,r4,r6,r7}
    b loc_802162E
loc_8021606:
    ldrb r1, [r0]
    cmp r1, r4
    beq loc_802161E
    ldrb r1, [r0,#1]
    cmp r1, r4
    beq loc_802161E
    ldrb r1, [r0,#2]
    cmp r1, r4
    beq loc_802161E
    ldrb r1, [r0,#3]
    cmp r1, r4
    bne loc_8021602
loc_802161E:
    pop {r0-r2,r4,r6,r7}
    push {r0}
    bl dword_801907C+2
    pop {r0}
    b loc_802162E
loc_802162A:
    bl sub_8019122
loc_802162E:
    pop {r0,r1}
    bl sub_8021BE8
    mov r0, #0x99
    bl f500_8000558
    b loc_802168C
loc_802163C:
    cmp r0, #1
    bne loc_8021656
    add r0, r1, #0
    push {r0}
    bl sub_802D4EA
    pop {r0}
    bl sub_8021A3C
    mov r0, #0x98
    bl f500_8000558
    b loc_802168C
loc_8021656:
    cmp r0, #2
    bne loc_8021674
    add r0, r1, #0
    bl sub_8021AD2
    mov r0, #0x98
    bl f500_8000558
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    mov r0, #8
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#3]
    b locret_8021690
loc_8021674:
    cmp r0, #3
    bne loc_802168C
    add r0, r1, #0
    push {r0}
    bl sub_802D574
    pop {r0}
    bl sub_8021A72
    mov r0, #0x98
    bl f500_8000558
loc_802168C:
    mov r0, #0
    strh r0, [r5,#2]
locret_8021690:
    pop {pc}
    .balign 4, 0x00
dword_8021694:    .word 0xFFFF
dword_8021698:    .word 0xFFFFFFFF
dword_802169C:    .word 0x136
// end of function sub_80215C4

.thumb
sub_80216A0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80216E0
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_80216F4
    ldrh r0, [r5,#0x10]
    bl sub_80219D8
    add r0, r1, #0
    push {r0,r5}
    mov r7, r10
    ldr r7, [r7,#0x18]
    ldr r5, [r7,#0x44]
    tst r0, r0
    bne loc_80216CA
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x24]
    b loc_80216CE
loc_80216CA:
    bl sub_800AB86
loc_80216CE:
    mov r0, #0x9a
    bl f500_8000558
    ldrh r0, [r5,#0x24]
    strh r0, [r7,#0x34]
    pop {r0,r5}
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80216F4
loc_80216E0:
    ldr r7, [r5,#0x18]
    ldrh r0, [r7,#4]
    add r7, #8
    ldrh r1, [r7,#4]
    orr r0, r1
    mov r1, #9
    tst r0, r1
    beq loc_80216F0
loc_80216F0:
    mov r0, #0
    strh r0, [r5,#2]
locret_80216F4:
    pop {pc}
    .balign 4, 0x00
    .word unk_20363F0
// end of function sub_80216A0

loc_80216FC:
    push {lr}
    ldr r1, [pc, #0x802170c-0x80216fe-2] // off_8021710
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802170C:    .word off_8021710
off_8021710:    .word sub_8021718+1
    .word sub_8021740+1
.thumb
sub_8021718:
    push {lr}
    mov r0, #0
    ldr r7, [pc, #0x802173c-0x802171c-4] // unk_20364B0
loc_802171E:
    strb r0, [r7,r0]
    add r0, #1
    cmp r0, #0x2a 
    bmi loc_802171E
    add r0, r7, #0
    mov r1, #0x2a 
    mov r2, #0x2a 
    bl fA00_8000AA2
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    pop {pc}
    .balign 4, 0x00
off_802173C:    .word unk_20364B0
// end of function sub_8021718

.thumb
sub_8021740:
    push {lr}
    sub sp, sp, #0x74
    mov r6, sp
    add r0, r6, #4
    bl sub_8021A28
    b loc_8021754
    ldrb r0, [r5,#0xb]
    cmp r0, #0x2a 
    bmi loc_802176C
loc_8021754:
    mov r0, #0xe
    mov r1, #9
    add r2, r6, #4
    mov r3, #7
    mov r4, #6
    bl sub_8021942
    mov r0, #4
    strh r0, [r5,#2]
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    b loc_80217A0
loc_802176C:
    push {r0,r5}
    ldr r7, [pc, #0x80217a4-0x802176e-2] // unk_20364B0
    ldrb r0, [r7,r0]
    lsl r1, r0, #1
    add r1, #4
    ldrh r1, [r6,r1]
    strh r1, [r6]
    mov r1, #7
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    add r0, #0xe
    add r1, #9
    add r2, r6, #0
    mov r3, #1
    mov r4, #1
    bl sub_8021942
    pop {r0,r5}
    add r0, #1
    strb r0, [r5,#0xb]
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_80217A0
loc_80217A0:
    add sp, sp, #0x74
    pop {pc}
off_80217A4:    .word unk_20364B0
// end of function sub_8021740

.thumb
sub_80217A8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80217CA
    ldr r7, [pc, #0x80217d8-0x80217b0-4] // dword_2037C40
    ldrh r0, [r7,#(dword_2037C44 - 0x2037c40)]
    add r7, #8
    ldrh r1, [r7,#(dword_2037C4C - 0x2037c48)]
    orr r0, r1
    mov r1, #9
    tst r0, r1
    beq locret_80217D6
    mov r0, #0x14
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80217D6
loc_80217CA:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_80217D6
    mov r0, #8
    str r0, [r5]
locret_80217D6:
    pop {pc}
off_80217D8:    .word dword_2037C40
// end of function sub_80217A8

.thumb
sub_80217DC:
    push {lr}
    mov r1, #6
    ldrsb r0, [r5,r1]
    add r0, #1
    strb r0, [r5,#6]
    cmp r0, #0x1e
    blt locret_8021802
    push {r5}
    mov r0, #0x1d
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #1
    mov r5, #0x12
    bl sub_8001DF8
    pop {r5}
    mov r0, #8
    str r0, [r5]
locret_8021802:
    pop {pc}
// end of function sub_80217DC

.thumb
sub_8021804:
    mov r0, #0
    strb r0, [r5,#5]
    mov pc, lr
// end of function sub_8021804

.thumb
sub_802180A:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    mov r2, #0xc
    mul r1, r2
    add r0, r0, r1
    add r4, r0, #0
    ldr r0, [pc, #0x8021888-0x802181a-2] // byte_203B830
    add r7, r0, #0
    mov r1, #0x20 
    bl f900_8000904
    ldrb r0, [r4]
    strb r0, [r7,#(byte_203B834 - 0x203b830)]
    ldrb r0, [r4,#1]
    strb r0, [r7,#(byte_203B838 - 0x203b830)]
    ldrb r0, [r4,#3]
    strb r0, [r7,#(byte_203B83D - 0x203b830)]
    ldr r0, [r4,#4]
    str r0, [r7,#(dword_203B84C - 0x203b830)]
    ldr r0, [r4,#8]
    str r0, [r7,#(dword_203B844 - 0x203b830)]
    mov r1, #0xe2
    strb r1, [r7,#(byte_203B836 - 0x203b830)]
    ldrb r0, [r7,#(byte_203B834 - 0x203b830)]
    ldr r6, [pc, #0x80218c4-0x802183e-2] // off_80218C8
    lsl r1, r0, #2
    ldr r0, [r6,r1]
    ldr r1, [pc, #0x80218d4-0x8021844-4] // unk_2035D50
    mov r2, #0x36 
    lsl r2, r2, #4
    bl f900_80009A0
    ldrb r0, [r7,#(byte_203B834 - 0x203b830)]
    ldr r7, [pc, #0x802188c-0x8021850-4] // off_8021890
    mov r1, #0xc
    mul r1, r0
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000874
    bl sub_80350D0
    mov r1, #0x60 
    mul r0, r1
    ldr r7, [pc, #0x80218b4-0x802186a-2] // off_80218B8
    ldr r1, [r7]
    add r0, r0, r1
    ldr r1, [r7,#(off_80218BC - 0x80218b8)]
    ldr r2, [r7,#(off_80218C0 - 0x80218b8)]
    bl loc_8000874
    ldr r7, [pc, #0x80218d8-0x8021878-4] // off_80218DC
    ldr r0, [r7]
    ldr r1, [r7,#(dword_80218E0 - 0x80218dc)]
    ldr r2, [r7,#(off_80218E4 - 0x80218dc)]
    bl loc_8000874
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8021888:    .word byte_203B830
off_802188C:    .word off_8021890
off_8021890:    .word dword_874E6E8
    .word 0x6008020, 0xAC0, 0x874F1A8, 0x6008020, 0xC80, 0x874FE28
    .word 0x6008020, 0xBA0
off_80218B4:    .word off_80218B8
off_80218B8:    .word dword_8751028+0x330
off_80218BC:    .word unk_3002B70
off_80218C0:    .word 0x60
off_80218C4:    .word off_80218C8
off_80218C8:    .word dword_87509C8
    .word dword_8750CF8
    .word dword_8751028
off_80218D4:    .word unk_2035D50
off_80218D8:    .word off_80218DC
off_80218DC:    .word dword_8751028+0x510
dword_80218E0:    .word 0x6009400
off_80218E4:    .word 0x5E0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 0
// end of function sub_802180A

.thumb
sub_80218EC:
    push {r4,r5,lr}
    mov r0, #6
    ldrsb r0, [r5,r0]
    mov r1, #7
    ldrsb r1, [r5,r1]
    cmp r0, r1
    beq locret_802191A
    bgt loc_8021902
    sub r4, r1, r0
    add r0, #0x18
    b loc_8021906
loc_8021902:
    sub r4, r0, r1
    add r0, r1, #0
loc_8021906:
    mov r1, #2
    mov r5, #0x12
    bl sub_802191C
    tst r2, r2
    beq locret_802191A
    mov r2, #3
    mov r3, #0
    bl sub_8001DF8
locret_802191A:
    pop {r4,r5,pc}
// end of function sub_80218EC

.thumb
sub_802191C:
    push {r6,lr}
    mov r6, #0
    add r2, r0, r4
    cmp r0, #0x1d
    bgt loc_802193E
    cmp r0, #0
    bge loc_802192C
    mov r0, #0
loc_802192C:
    cmp r2, #0
    blt loc_802193E
    cmp r2, #0x1d
    ble loc_8021936
    mov r2, #0x1d
loc_8021936:
    sub r4, r2, r0
    tst r4, r4
    beq loc_802193E
    mov r6, #1
loc_802193E:
    add r2, r6, #0
    pop {r6,pc}
// end of function sub_802191C

.thumb
sub_8021942:
    push {r5-r7,lr}
    ldr r7, [pc, #0x8021970-0x8021944-4] // unk_2035D50
    mov r5, #0x18
    mul r1, r5
    add r0, r0, r1
    add r0, r0, r0
    add r7, r7, r0
    add r5, r7, #0
    mov r1, #0
loc_8021954:
    mov r0, #0
loc_8021956:
    ldrh r6, [r2]
    strh r6, [r7]
    add r7, #2
    add r2, #2
    add r0, #1
    cmp r0, r3
    bne loc_8021956
    add r5, #0x30 
    add r7, r5, #0
    add r1, #1
    cmp r1, r4
    bne loc_8021954
    pop {r5-r7,pc}
off_8021970:    .word unk_2035D50
// end of function sub_8021942

.thumb
sub_8021974:
    push {r5,lr}
    sub sp, sp, #4
    mov r6, sp
    push {r1}
    bl fA00_8000BB4
    ldr r1, [pc, #0x80219d4-0x8021980-4] // =0x95999
    cmp r0, r1
    ble loc_8021988
    add r0, r1, #0
loc_8021988:
    pop {r1}
    add r1, #9
    lsl r1, r1, #0xc
    ldr r4, [pc, #0x80219d0-0x802198e-2] // =0xA0
    orr r4, r1
    mov r3, #0
    ldr r7, [pc, #0x80219cc-0x8021994-4] // dword_80219C4
loc_8021996:
    mov r1, #0xf
    and r1, r0
    add r1, r1, r1
    add r2, r4, #0
    add r2, r2, r1
    strh r2, [r6]
    add r2, #1
    strh r2, [r6,#2]
    push {r0,r3,r4,r6,r7}
    ldrb r0, [r7,r3]
    mov r1, #3
    add r2, r6, #0
    mov r3, #1
    mov r4, #2
    bl sub_8021942
    pop {r0,r3,r4,r6,r7}
    lsr r0, r0, #4
    add r3, #1
    cmp r3, #5
    bmi loc_8021996
    add sp, sp, #4
    pop {r5,pc}
dword_80219C4:    .word 0x10111314, 0xE
off_80219CC:    .word dword_80219C4
off_80219D0:    .word 0xA0
dword_80219D4:    .word 0x95999
// end of function sub_8021974

.thumb
sub_80219D8:
    ldr r1, [pc, #0x8021a10-0x80219d8-4] // =0xFFFF
    cmp r0, r1
    beq loc_8021A0C
    lsr r1, r0, #0xe
    bne loc_80219EC
    lsr r2, r0, #9
    lsl r1, r0, #0x17
    lsr r1, r1, #0x17
    mov r0, #0
    b locret_8021A0E
loc_80219EC:
    cmp r1, #1
    bne loc_80219F8
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #1
    b locret_8021A0E
loc_80219F8:
    cmp r1, #2
    bne loc_8021A04
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #2
    b locret_8021A0E
loc_8021A04:
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #3
    b locret_8021A0E
loc_8021A0C:
    mov r0, #0xff
locret_8021A0E:
    mov pc, lr
dword_8021A10:    .word 0xFFFF
// end of function sub_80219D8

.thumb
sub_8021A14:
    ldr r1, [pc, #0x8021a24-0x8021a14-4] // =0xC1C8
    mov r2, #0x2a 
loc_8021A18:
    strh r1, [r0]
    add r1, #1
    add r0, #2
    sub r2, #1
    bne loc_8021A18
    mov pc, lr
dword_8021A24:    .word 0xC1C8
// end of function sub_8021A14

.thumb
sub_8021A28:
    ldr r1, [pc, #0x8021a38-0x8021a28-4] // =0x90C6
    mov r2, #0x2a 
loc_8021A2C:
    strh r1, [r0]
    add r0, #2
    sub r2, #1
    bne loc_8021A2C
    mov pc, lr
    .balign 4, 0x00
dword_8021A38:    .word 0x90C6
// end of function sub_8021A28

.thumb
sub_8021A3C:
    push {r4-r7,lr}
    sub sp, sp, #0x70
    mov r6, sp
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#4]
    push {r6}
    ldr r0, [pc, #0x8021b38-0x8021a4a-2] // dword_8753658
    mov r1, #5
    ldr r2, [pc, #0x8021b34-0x8021a4e-2] // unk_20364B0
    ldr r3, [pc, #0x8021b40-0x8021a50-4] // =0x600B680
    mov r4, #0xa
    mov r5, #1
    ldr r6, [pc, #0x8021b3c-0x8021a56-2] // dword_868E224
    mov r7, #8
    bl sub_8053A04
    .byte 3
    .byte 0x20
    .byte 0xC
    .byte 0x21 
    .byte 0x3A 
    .byte 0x4A 
    .byte 0xA
    .byte 0x23 
    .byte 2
    .byte 0x24 
    .byte 0xFF
    .byte 0xF7
    .byte 0x6B 
    .byte 0xFF
    .byte 0x40 
    .byte 0xBC
    .byte 0x1C
    .byte 0xB0
    .byte 0xF0
    .byte 0xBD
// end of function sub_8021A3C

.thumb
sub_8021A72:
    push {r5,lr}
    sub sp, sp, #8
    tst r0, r0
    bne loc_8021A80
    mov r0, #4
    str r0, [sp,#4]
    b loc_8021AA8
loc_8021A80:
    str r0, [sp]
    bl fA00_8000A30
    bl fA00_8000A8C
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#4]
    ldr r0, [pc, #0x8021b38-0x8021a94-4] // dword_8753658
    mov r1, #6
    ldr r2, [pc, #0x8021b48-0x8021a98-4] // unk_2036670
    ldr r3, [pc, #0x8021b44-0x8021a9a-2] // =0x600B840
    mov r4, #3
    mov r5, #1
    ldr r6, [pc, #0x8021b3c-0x8021aa0-4] // dword_868E224
    mov r7, #8
    bl sub_8053A04
loc_8021AA8:
    ldr r0, [sp,#4]
    mov r1, #0x2f 
    ldr r2, [pc, #0x8021b34-0x8021aac-4] // unk_20364B0
    ldr r3, [pc, #0x8021b40-0x8021aae-2] // =0x600B680
    mov r4, #0xa
    sub r4, r4, r0
    mov r5, #1
    ldr r6, [pc, #0x8021b3c-0x8021ab6-2] // dword_868E224
    mov r7, #8
    ldr r0, [pc, #0x8021b38-0x8021aba-2] // dword_8753658
    bl sub_8053A04
    .byte 3
    .byte 0x20
    .byte 0xC
    .byte 0x21 
    .byte 0x21 
    .byte 0x4A 
    .byte 0xA
    .byte 0x23 
    .byte 2
    .byte 0x24 
    .byte 0xFF
    .byte 0xF7
    .byte 0x3A 
    .byte 0xFF
    .byte 2
    .byte 0xB0
    .byte 0x20
    .byte 0xBD
// end of function sub_8021A72

.thumb
sub_8021AD2:
    push {r5,lr}
    sub sp, sp, #8
    tst r0, r0
    bne loc_8021AE0
    mov r0, #4
    str r0, [sp,#4]
    b loc_8021B08
loc_8021AE0:
    str r0, [sp]
    bl fA00_8000A30
    bl fA00_8000A8C
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#4]
    ldr r0, [pc, #0x8021b38-0x8021af4-4] // dword_8753658
    mov r1, #6
    ldr r2, [pc, #0x8021b48-0x8021af8-4] // unk_2036670
    ldr r3, [pc, #0x8021b44-0x8021afa-2] // =0x600B840
    mov r4, #3
    mov r5, #1
    ldr r6, [pc, #0x8021b3c-0x8021b00-4] // dword_868E224
    mov r7, #8
    bl sub_8053A04
loc_8021B08:
    ldr r0, [sp,#4]
    add r1, r0, #6
    ldr r2, [pc, #0x8021b34-0x8021b0c-4] // unk_20364B0
    ldr r3, [pc, #0x8021b40-0x8021b0e-2] // =0x600B680
    mov r4, #0xa
    sub r4, r4, r0
    mov r5, #1
    ldr r6, [pc, #0x8021b3c-0x8021b16-2] // dword_868E224
    mov r7, #8
    ldr r0, [pc, #0x8021b38-0x8021b1a-2] // dword_8753658
    bl sub_8053A04
    .byte 3
    .byte 0x20
    .byte 0xC
    .byte 0x21 
    .byte 9
    .byte 0x4A 
    .byte 0xA
    .byte 0x23 
    .byte 2
    .byte 0x24 
    .byte 0xFF
    .byte 0xF7
    .byte 0xA
    .byte 0xFF
    .byte 2
    .byte 0xB0
    .byte 0x20
    .byte 0xBD
    .balign 4, 0x00
off_8021B34:    .word unk_20364B0
off_8021B38:    .word dword_8753658
off_8021B3C:    .word dword_868E224
dword_8021B40:    .word 0x600B680
dword_8021B44:    .word 0x600B840
off_8021B48:    .word unk_2036670
    .word loc_8021B50
// end of function sub_8021AD2

loc_8021B50:
    str r1, [sp,#0x2d0]
    str r1, [sp,#0x2d8]
    str r1, [sp,#0x2e0]
    str r1, [sp,#0x2e8]
    str r1, [sp,#0x2f0]
    str r1, [sp,#0x2f8]
    str r1, [sp,#0x300]
    str r1, [sp,#0x308]
    str r1, [sp,#0x310]
    str r1, [sp,#0x318]
    str r1, [sp,#0x2d4]
    str r1, [sp,#0x2dc]
    str r1, [sp,#0x2e4]
    str r1, [sp,#0x2ec]
    str r1, [sp,#0x2f4]
    str r1, [sp,#0x2fc]
    str r1, [sp,#0x304]
    str r1, [sp,#0x30c]
    str r1, [sp,#0x314]
    str r1, [sp,#0x31c]
.thumb
sub_8021B78:
    push {r4-r6,lr}
    sub sp, sp, #0x1c
    cmp r0, #0xb
    ble loc_8021B82
    mov r0, #0xb
loc_8021B82:
    str r0, [sp,#0x14]
    ldr r0, [pc, #0x8021be4-0x8021b84-4] // =0x90A0
    add r0, #0x14
    mov r3, #5
    add r2, sp, #0
loc_8021B8C:
    strh r0, [r2]
    add r1, r0, #1
    strh r1, [r2,#0xa]
    add r2, #2
    sub r3, #1
    bgt loc_8021B8C
    mov r4, #8
    add r4, sp
    ldr r6, [pc, #0x8021be4-0x8021b9c-4] // =0x90A0
    ldr r0, [sp,#0x14]
    cmp r0, #0xb
    blt loc_8021BB0
    mov r1, #1
    lsl r1, r1, #0xc
    add r6, r6, r1
    mov r5, #0xb
    mov r0, #1
    b loc_8021BBA
loc_8021BB0:
    bl fA00_8000A30
    add r5, r0, #0
    bl fA00_8000A8C
loc_8021BBA:
    mov r1, #0xf
    and r1, r5
    add r1, r1, r1
    add r1, r1, r6
    strh r1, [r4]
    add r2, r1, #1
    strh r2, [r4,#0xa]
    lsr r5, r5, #4
    sub r4, #2
    sub r0, #1
    bgt loc_8021BBA
    mov r0, #0x10
    mov r1, #6
    add r2, sp, #0
    mov r3, #5
    mov r4, #2
    bl sub_8021942
    add sp, sp, #0x1c
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_8021BE4:    .word 0x90A0
// end of function sub_8021B78

.thumb
sub_8021BE8:
    push {r5,lr}
    sub sp, sp, #0x70
    mov r6, sp
    push {r0,r1,r6}
    mov r1, #0xff
    and r1, r0
    lsr r0, r0, #8
    lsl r0, r0, #2
    ldr r2, [pc, #0x8021c4c-0x8021bf8-4] // off_8021C50
    ldr r0, [r2,r0]
    ldr r2, [pc, #0x8021c58-0x8021bfc-4] // unk_20364B0
    ldr r3, [pc, #0x8021c5c-0x8021bfe-2] // =0x600B680
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8021c60-0x8021c04-4] // dword_868E224
    mov r7, #8
    bl sub_8053A04
    .byte 3
    .byte 0x20
    .byte 0xC
    .byte 0x21 
    .byte 0x18
    .byte 0x4A 
    .byte 9
    .byte 0x23 
    .byte 2
    .byte 0x24 
    .byte 0xFF
    .byte 0xF7
    .byte 0x94
    .byte 0xFE
    .byte 0x43 
    .byte 0xBC
    .byte 0x43 
    .byte 0xB4
    .byte 0x13
    .byte 0x4A 
    .byte 0x32 
    .byte 0x80
    .byte 1
    .byte 0x32 
    .byte 0x72 
    .byte 0x80
    .byte 0xC
    .byte 0x20
    .byte 0xC
    .byte 0x21 
    .byte 0x32 
    .byte 0x1C
    .byte 1
    .byte 0x23 
    .byte 2
    .byte 0x24 
    .byte 0xFF
    .byte 0xF7
    .byte 0x87
    .byte 0xFE
    .byte 0x43 
    .byte 0xBC
    .byte 0xB
    .byte 0x48 
    .byte 0xD
    .byte 0x4A 
    .byte 0xB
    .byte 0x4B 
    .byte 1
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 7
    .byte 0x4E 
    .byte 8
    .byte 0x27 
    .byte 0x31 
    .byte 0xF0
    .byte 0xDE
    .byte 0xFE
    .byte 0x1C
    .byte 0xB0
    .byte 0x20
    .byte 0xBD
off_8021C4C:    .word off_8021C50
off_8021C50:    .word off_8745E98
    .word loc_8746830
off_8021C58:    .word unk_20364B0
dword_8021C5C:    .word 0x600B680
off_8021C60:    .word dword_868E224
    .word a8Bdfhjlnprtvxz
    .word 0x600B880
    .word 0x91C4
    .word unk_20366B0
    .word loc_8021C78
// end of function sub_8021BE8

loc_8021C78:
    str r1, [sp,#0x2d0]
    str r1, [sp,#0x2d8]
    str r1, [sp,#0x2e0]
    str r1, [sp,#0x2e8]
    str r1, [sp,#0x2f0]
    str r1, [sp,#0x2f8]
    str r1, [sp,#0x300]
    str r1, [sp,#0x308]
    str r0, [sp,#0x314]
    str r1, [sp,#0x2d4]
    str r1, [sp,#0x2dc]
    str r1, [sp,#0x2e4]
    str r1, [sp,#0x2ec]
    str r1, [sp,#0x2f4]
    str r1, [sp,#0x2fc]
    str r1, [sp,#0x304]
    str r1, [sp,#0x30c]
    str r0, [sp,#0x314]
.thumb
sub_8021C9C:
    push {r5,lr}
    ldr r2, [pc, #0x8021cb4-0x8021c9e-2] // off_8021CB8
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov r0, #3
    mov r1, #0xe
    mov r3, #0xa
    mov r4, #1
    bl sub_8021942
    pop {r5,pc}
    .balign 4, 0x00
off_8021CB4:    .word off_8021CB8
off_8021CB8:    .word loc_8021CC0
    .word loc_8021CD4
// end of function sub_8021C9C

loc_8021CC0:
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
    str r0, [sp,#0x310]
loc_8021CD4:
    str r0, [sp,#0x2e8]
    str r0, [sp,#0x2ec]
    str r0, [sp,#0x2f0]
    str r0, [sp,#0x2f4]
    str r0, [sp,#0x2f8]
    str r0, [sp,#0x2fc]
    str r0, [sp,#0x300]
    str r0, [sp,#0x304]
    str r0, [sp,#0x308]
    str r0, [sp,#0x30c]
.thumb
sub_8021CE8:
    push {lr}
    ldrb r0, [r5,#0xf]
    tst r0, r0
    beq locret_8021D0E
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r0, [r7]
    mov r1, #0x10
    and r0, r1
    lsr r0, r0, #4
    lsl r0, r0, #2
    ldr r2, [pc, #0x8021d10-0x8021cfe-2] // off_8021D14
    ldr r2, [r2,r0]
    mov r0, #0xa
    mov r1, #3
    mov r3, #4
    mov r4, #2
    bl sub_8021942
locret_8021D0E:
    pop {pc}
off_8021D10:    .word off_8021D14
off_8021D14:    .word loc_8021D1C
    .word loc_8021D2C
// end of function sub_8021CE8

loc_8021D1C:
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
loc_8021D2C:
    str r0, [sp,#0x31c]
    str r0, [sp,#0x320]
    str r0, [sp,#0x324]
    str r0, [sp,#0x328]
    str r0, [sp,#0x32c]
    str r0, [sp,#0x330]
    str r0, [sp,#0x334]
    str r0, [sp,#0x338]
    push {lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#8]
    bl sub_8001AF6
    lsr r0, r0, #8
    ldr r1, [sp,#8]
    svc 6
    mov r0, #0
    ldr r7, [sp]
loc_8021D52:
    ldrb r2, [r7,r0]
    sub r1, r1, r2
    blt loc_8021D5C
    add r0, #1
    b loc_8021D52
loc_8021D5C:
    add sp, sp, #0xc
    pop {pc}
.thumb
sub_8021D60:
    mov r0, #0
    ldrb r1, [r5,#0xc]
    ldrb r2, [r5,#0xd]
    cmp r1, r2
    bge locret_8021D74
    add r2, r1, r1
    add r2, #0x14
    ldrh r0, [r5,r2]
    add r1, #1
    strb r1, [r5,#0xc]
locret_8021D74:
    mov pc, lr
// end of function sub_8021D60

.thumb
sub_8021D76:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,#0xd]
    mov r1, #8
    mul r2, r1
    ldr r0, [pc, #0x8021e80-0x8021d80-4] // dword_2037C40
    add r0, r0, r2
    mov pc, lr
// end of function sub_8021D76

.thumb
sub_8021D86:
    push {r5-r7,lr}
    add r7, r0, #0
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8021D96
    mov r0, #0
    b loc_8021DA4
loc_8021D96:
    mov r0, #1
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r2, [r2,#0x10]
    cmp r2, #1
    beq loc_8021DA4
    mov r0, #2
loc_8021DA4:
    strb r0, [r7]
    bl sub_8007BB4
    str r0, [r7,#4]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x1e]
    strb r0, [r7,#1]
    bl sub_8007E16
    cmp r0, #0x46 
    bge loc_8021DDA
    mov r6, r10
    ldr r6, [r6,#0x18]
    mov r0, #0x60 
    add r0, r0, r6
    ldrb r1, [r6,#7]
    ldrb r2, [r7,#1]
    ldr r5, [r6,#0x44]
    ldrh r3, [r5,#0x24]
    ldrh r4, [r5,#0x26]
    ldrb r5, [r5,#0x16]
    bl sub_80F5698
    strh r0, [r7,#8]
    strh r1, [r7,#0xa]
    b loc_8021DE6
loc_8021DDA:
    ldrb r0, [r7,#1]
    bl sub_80F5944
    strh r0, [r7,#8]
    mov r1, #0
    strh r1, [r7,#0xa]
loc_8021DE6:
    mov r2, #0
    tst r0, r0
    beq loc_8021DEE
    add r2, #1
loc_8021DEE:
    tst r1, r1
    beq loc_8021DF4
    add r2, #1
loc_8021DF4:
    strb r2, [r7,#3]
    pop {r5-r7,pc}
// end of function sub_8021D86

.thumb
sub_8021DF8:
    push {r4,lr}
    mov r4, #0
    ldrb r0, [r5,#8]
    cmp r0, #0xa
    ble loc_8021E46
    bl sub_8034F14
    beq loc_8021E46
    bl sub_80083B8
    cmp r0, #0xff
    beq loc_8021E46
    mov r4, #2
    ldr r1, [pc, #0x8021e84-0x8021e12-2] // unk_2001610
    add r0, r0, r0
    ldrh r2, [r1,r0]
    ldr r3, [r5,#0x1c]
    cmp r3, r2
    bge loc_8021E32
    strh r3, [r1,r0]
    ldr r1, [pc, #0x8021e88-0x8021e20-4] // unk_2007230
    strh r3, [r1,r0]
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldr r1, [r1,#0x70]
    ldr r2, [pc, #0x8021e8c-0x8021e2a-2] // unk_20001E0
    add r0, r0, r0
    str r1, [r2,r0]
    b loc_8021E42
loc_8021E32:
    mov r4, #1
    ldr r1, [pc, #0x8021e90-0x8021e34-4] // unk_2007230
    ldrh r2, [r1,r0]
    ldr r3, [r5,#0x1c]
    cmp r3, r2
    blt loc_8021E42
    mov r4, #0
    b loc_8021E46
loc_8021E42:
    mov r0, #1
    strb r0, [r5,#0xf]
loc_8021E46:
    add r0, r4, #0
    strb r0, [r5,#0xe]
    pop {r4,pc}
// end of function sub_8021DF8

.thumb
sub_8021E4C:
    push {lr}
    bl sub_8007E16
    cmp r0, #0x46 
    blt locret_8021E7C
    ldr r6, [pc, #0x8021e94-0x8021e56-2] // unk_20363DC
    ldr r7, [pc, #0x8021e98-0x8021e58-4] // unk_20363D0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x10]
    tst r0, r0
    beq loc_8021E68
    ldr r6, [pc, #0x8021e9c-0x8021e64-4] // unk_20363D0
    ldr r7, [pc, #0x8021ea0-0x8021e66-2] // unk_20363DC
loc_8021E68:
    ldr r0, [r6,#8]
    str r0, [r7,#8]
    ldrh r0, [r6,#8]
    ldr r1, [pc, #0x8021ea4-0x8021e6e-2] // =0xFFFF
    cmp r0, r1
    bne locret_8021E7C
    ldrb r0, [r6,#1]
    bl sub_80F5CB0
    strh r0, [r6,#8]
locret_8021E7C:
    pop {pc}
    .byte 0, 0
off_8021E80:    .word dword_2037C40
off_8021E84:    .word unk_2001610
off_8021E88:    .word unk_2007230
off_8021E8C:    .word unk_20001E0
off_8021E90:    .word unk_2007230
off_8021E94:    .word unk_20363DC
off_8021E98:    .word unk_20363D0
off_8021E9C:    .word unk_20363D0
off_8021EA0:    .word unk_20363DC
dword_8021EA4:    .word 0xFFFF
// end of function sub_8021E4C

.thumb
sub_8021EA8:
    push {r4,r6,r7,lr}
    ldr r7, [pc, #0x8021ee4-0x8021eaa-2] // dword_203DC70
    strh r0, [r7,#(word_203DC78 - 0x203dc70)]
    strh r1, [r7,#(word_203DC7A - 0x203dc70)]
    mov r2, #0xff
    cmp r0, r1
    beq loc_8021EBE
    mov r2, #0
    cmp r0, r1
    blt loc_8021EBE
    mov r2, #1
loc_8021EBE:
    strb r2, [r5,#0x10]
    mov r4, #3
    cmp r2, #0xff
    beq loc_8021ED6
    add r6, r2, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r4, #2
    eor r0, r6
    beq loc_8021ED6
    mov r4, #1
loc_8021ED6:
    strb r4, [r7,#(byte_203DC77 - 0x203dc70)]
    mov r0, #0
    str r0, [r7]
    strh r0, [r7,#(word_203DC7C - 0x203dc70)]
    strh r0, [r7,#(word_203DC7E - 0x203dc70)]
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8021EE4:    .word dword_203DC70
// end of function sub_8021EA8

.thumb
ho_8021EE8:
    push {r5,lr}
    ldr r5, [pc, #0x8021f10-0x8021eea-2] // dword_203DC70
    mov r0, #1
    strb r0, [r5,#(byte_203DC74 - 0x203dc70)]
    ldr r1, [pc, #0x8021f00-0x8021ef0-4] // jt_8021F04
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#(byte_203DC74 - 0x203dc70)]
    ldrb r1, [r5,#(byte_203DC77 - 0x203dc70)]
    pop {r5,pc}
off_8021F00:    .word jt_8021F04
jt_8021F04:    .word sub_8021F14+1
    .word sub_8021F2C+1
    .word sub_802202E+1
off_8021F10:    .word dword_203DC70
// end of function ho_8021EE8

.thumb
sub_8021F14:
    push {lr}
    mov r0, #4
    str r0, [r5]
    pop {pc}
    .word dword_8753658
    .word unk_2035D50
// end of function sub_8021F14

    .hword 0xa600 // adr r6, 0x8021f28
    lsl r0, r0, #0x18
    ldr r0, [r4,#0x64]
    lsr r4, r5, #1
.thumb
sub_8021F2C:
    push {lr}
    ldr r1, [pc, #0x8021f3c-0x8021f2e-2] // off_8021F40
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8021F3C:    .word off_8021F40
off_8021F40:    .word sub_8021F4C+1
    .word sub_8021F70+1
    .word sub_802200C+1
// end of function sub_8021F2C

.thumb
sub_8021F4C:
    push {lr}
    ldrh r0, [r5,#8]
    ldrh r1, [r5,#0xa]
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r2, [r2,#0xd]
    tst r2, r2
    beq loc_8021F62
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
loc_8021F62:
    bl sub_801631C
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    pop {pc}
// end of function sub_8021F4C

.thumb
sub_8021F70:
    push {lr}
    ldr r1, [pc, #0x8021f80-0x8021f72-2] // loc_8021F84
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8021F80:    .word loc_8021F84
// end of function sub_8021F70

loc_8021F84:
    sub r1, r2, #6
    lsr r2, r0, #0x20
    .hword 0x1f9b // sub r3, r3, #6  // <mkdata>
    lsr r2, r0, #0x20
    sub r1, r2, #7
    lsr r2, r0, #0x20
    mov r0, #0x3c 
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#2]
    mov pc, lr
    push {lr}
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    beq loc_8021FBE
    bl sub_8001AF6
    add r4, r0, #0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    ldr r1, [pc, #0x8021fcc-0x8021fae-2] // =0x26C0
    svc 6
    strh r1, [r5,#0xc]
    lsr r0, r4, #0x10
    ldr r1, [pc, #0x8021fcc-0x8021fb6-2] // =0x26C0
    svc 6
    strh r1, [r5,#0xe]
    b loc_8021FC2
loc_8021FBE:
    mov r0, #8
    strh r0, [r5,#2]
loc_8021FC2:
    ldrh r0, [r5,#0xc]
    ldrh r1, [r5,#0xe]
    bl sub_801635C
    pop {pc}
dword_8021FCC:    .word 0x270E
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8021FE0
    mov r0, #0x78 
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#3]
loc_8021FE0:
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    beq loc_8022002
    ldrh r0, [r5,#8]
    ldrh r1, [r5,#0xa]
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r2, [r2,#0xd]
    tst r2, r2
    beq loc_8021FFC
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
loc_8021FFC:
    bl sub_801635C
    b locret_802200A
loc_8022002:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802200A:
    pop {pc}
.thumb
sub_802200C:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8022020
    bl sub_801630A
    mov r0, #0x1e
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#2]
loc_8022020:
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne locret_802202C
    mov r0, #8
    str r0, [r5]
locret_802202C:
    pop {pc}
// end of function sub_802200C

.thumb
sub_802202E:
    mov r0, #0
    strb r0, [r5,#4]
    mov pc, lr
off_8022034:    .word sub_80E1F5C+1
    .word sub_80E2AF2+1
    .word sub_80E2EB8+1
    .word sub_80E2F8A+1
    .word sub_80E30B4+1
    .word sub_80E31F4+1
    .word sub_80E381E+1
    .word sub_80E395C+1
    .word sub_80E3A7E+1
    .word sub_80E3ECC+1
    .word sub_80E3F62+1
    .word sub_80E44DE+1
    .word sub_80E4610+1
    .word sub_80E46F8+1
    .word sub_80E48C0+1
    .word sub_80E4A44+1
    .word sub_80E4AFA+1
    .word sub_80E4B8A+1
    .word sub_80E4F92+1
    .word sub_80E5032+1
    .word sub_80E53F6+1
    .word sub_80E56B0+1
    .word sub_80E5750+1
    .word sub_80E5AAA+1
    .word sub_80E5B44+1
    .word sub_80E5C50+1
    .word sub_80E5E92+1
    .word sub_80E6004+1
    .word sub_80E6174+1
    .word sub_80E62D4+1
    .word sub_80E63B2+1
    .word sub_80E6544+1
    .word sub_80E69FA+1
    .word sub_80E6E48+1
    .word sub_80E71C4+1
    .word sub_80E69FA+1
    .word sub_80E7290+1
    .word sub_80E769C+1
    .word sub_80E7930+1
    .word sub_80E7B30+1
    .word sub_80E7E36+1
    .word sub_80E7FA2+1
    .word sub_80E8136+1
    .word sub_80E834A+1
    .word sub_80E83E8+1
    .word sub_80E8512+1
    .word sub_80E8638+1
    .word sub_80E69FA+1
    .word sub_80E8870+1
    .word sub_80E89B2+1
    .word sub_80E69FA+1
    .word sub_80E8A5C+1
    .word sub_80E8B2E+1
    .word sub_80E8F82+1
    .word sub_80E90B4+1
    .word sub_80E9382+1
    .word sub_80E9422+1
    .word sub_80E95C2+1
    .word sub_80E96EE+1
    .word sub_80E9794+1
    .word sub_80E69FA+1
    .word sub_80E9994+1
    .word sub_80E9BAC+1
    .word sub_80E9D62+1
    .word sub_80E69FA+1
    .word sub_80E9FF0+1
    .word sub_80EA2AE+1
    .word sub_80EA37E+1
    .word sub_80EA44E+1
    .word sub_80EA51E+1
    .word sub_80EA5FA+1
    .word sub_80EA74E+1
    .word sub_80EA93C+1
    .word sub_80EAA0E+1
    .word sub_80EAAAE+1
    .word sub_80EAB4E+1
    .word sub_80EAC06+1
    .word sub_80EACAA+1
// end of function sub_802202E

.thumb
sub_802216C:
    ldr r0, [pc, #0x80221ec-0x802216c-4] // dword_203C050
    ldrb r1, [r5,#0x16]
    tst r1, r1
    beq loc_8022176
    add r0, #0xc
loc_8022176:
    ldr r1, [r0,#8]
    cmp r1, r5
    bne locret_8022180
    mov r1, #0
    str r1, [r0,#8]
locret_8022180:
    mov pc, lr
// end of function sub_802216C

.thumb
sub_8022182:
    ldr r0, [pc, #0x80221ec-0x8022182-2] // dword_203C050
    ldrb r1, [r5,#0x16]
    tst r1, r1
    bne loc_802218C
    add r0, #0xc
loc_802218C:
    ldr r1, [r0,#4]
    cmp r1, r5
    bne locret_8022198
    mov r1, #0
    str r1, [r0,#4]
    str r1, [r0,#8]
locret_8022198:
    mov pc, lr
// end of function sub_8022182

.thumb
sub_802219A:
    ldr r0, [pc, #0x80221ec-0x802219a-2] // dword_203C050
    ldr r1, [r0]
    lsl r1, r1, #0x10
    str r1, [r0]
    add r0, #0xc
    ldr r1, [r0]
    lsl r1, r1, #0x10
    str r1, [r0]
    mov pc, lr
// end of function sub_802219A

.thumb
sub_80221AC:
    ldr r1, [pc, #0x80221ec-0x80221ac-4] // dword_203C050
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_80221B6
    add r1, #0xc
loc_80221B6:
    ldr r2, [r1,#8]
    cmp r5, r2
    bne loc_80221C2
    ldrh r3, [r1,#2]
    add r0, r0, r3
    mov pc, lr
loc_80221C2:
    ldrh r3, [r1]
    cmp r0, r3
    bls locret_80221CA
    strh r0, [r1]
locret_80221CA:
    mov pc, lr
// end of function sub_80221AC

.thumb
sub_80221CC:
    ldr r0, [pc, #0x80221ec-0x80221cc-4] // dword_203C050
    ldrb r1, [r5,#0x16]
    tst r1, r1
    bne loc_80221D6
    add r0, #0xc
loc_80221D6:
    ldr r1, [r0,#4]
    cmp r1, r5
    bne loc_80221E6
    ldr r1, [r0,#8]
    tst r1, r1
    beq loc_80221E6
    mov r0, #1
    mov pc, lr
loc_80221E6:
    mov r0, #0
    mov pc, lr
    .balign 4, 0x00
off_80221EC:    .word dword_203C050
// end of function sub_80221CC

.thumb
sub_80221F0:
    push {lr}
    bl sub_8022D04
    beq locret_8022204
    mov r0, #0
    bl sub_8022840
    mov r0, #1
    bl sub_8022840
locret_8022204:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80221F0

.thumb
sub_8022208:
    push {r4,r6,r7,lr}
    add r7, r0, #0
    mov r1, #0x23 
    bl sub_800D77A
    add r4, r0, #0
    ldr r6, [r5,#0x58]
    add r6, #0x70 
    ldr r1, [pc, #0x8022274-0x8022218-4] // off_8022278
    lsl r0, r7, #2
    ldr r1, [r1,r0]
    lsl r0, r4, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    push {r0}
    push {r0}
    mov r1, #0x2b 
    bl sub_800D77A
    ldr r2, [pc, #0x8022284-0x8022230-4] // off_8022288
    lsl r1, r7, #2
    ldr r2, [r1,r2]
    add r1, r4, r4
    ldrh r1, [r2,r1]
    pop {r2}
    cmp r2, #2
    bne loc_8022248
    tst r0, r0
    beq loc_802224A
    mov r1, #0xa
    b loc_802224A
loc_8022248:
    lsl r1, r0
loc_802224A:
    strh r1, [r6,#8]
    ldr r2, [pc, #0x8022294-0x802224c-4] // dword_8022298
    lsl r1, r7, #2
    ldr r2, [r1,r2]
    ldrb r1, [r2,r4]
    mov r0, #0x80
    tst r1, r0
    bne loc_8022264
    lsl r1, r1, #8
    ldrb r0, [r5,#0x16]
    bl sub_8022CA0
    b loc_8022270
loc_8022264:
    mov r0, #0x7f
    and r1, r0
    lsl r1, r1, #8
    ldrb r0, [r5,#0x16]
    bl sub_8022CBC
loc_8022270:
    pop {r0}
    pop {r4,r6,r7,pc}
off_8022274:    .word off_8022278
off_8022278:    .word off_80222A4
    .word off_80222D8
    .word off_802230C
off_8022284:    .word off_8022288
off_8022288:    .word dword_8022340
    .word 0x802235A, 0x8022374
off_8022294:    .word dword_8022298
dword_8022298:    .word 0x802238E, 0x802239B, 0x80223A8
off_80222A4:    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word sub_802248C+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
    .word loc_80223B8+1
off_80222D8:    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_8022424+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
    .word sub_80223BC+1
off_802230C:    .word sub_80223FC+1
    .word sub_80223DC+1
    .word sub_802244C+1
    .word sub_802246E+1
    .word sub_802252E+1
    .word sub_80224AA+1
    .word sub_80224CC+1
    .word sub_80224EE+1
    .word sub_80223FC+1
    .word sub_802254C+1
    .word sub_802256A+1
    .word sub_802250E+1
    .word sub_8022588+1
dword_8022340:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x10000, 0x30001, 0x10002, 0x20002, 0x10000, 0x20003
    .word 0x30001, 0x50000, 0x1E, 0xA0002, 0xA000A, 0xA0000
    .word 0x5000A, 0xA, 0x0, 0x0
    .word unk_2000000
    .word 0x2020202, 0x2850202, 0x2020202, 0xA0A85, 0x50A0A0A
    .word 0xA0A0A85, 0xA
// end of function sub_8022208

loc_80223B8:
    mov r0, #0
    mov pc, lr
.thumb
sub_80223BC:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    mov r0, #0
    str r0, [r6,#0xc]
    mov r0, #8
    bl sub_800C960
    mov r0, #2
    pop {pc}
// end of function sub_80223BC

.thumb
sub_80223DC:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    mov r0, #6
    str r0, [r6,#0xc]
    mov r0, #0x2d 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_80223DC

.thumb
sub_80223FC:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #3
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    ldr r0, [pc, #0x8022420-0x8022412-2] // =0x23C
    str r0, [r6,#0xc]
    mov r0, #0x25 
    bl sub_800C960
    mov r0, #1
    pop {pc}
off_8022420:    .word 0x23C
// end of function sub_80223FC

.thumb
sub_8022424:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #3
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    ldr r0, [pc, #0x8022448-0x802243a-2] // =0x13B
    str r0, [r6,#0xc]
    mov r0, #0x25 
    bl sub_800C960
    mov r0, #1
    pop {pc}
off_8022448:    .word 0x13C
// end of function sub_8022424

.thumb
sub_802244C:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    strb r0, [r6,#0xc]
    mov r0, #1
    strb r0, [r6,#0xd]
    mov r0, #0x44 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_802244C

.thumb
sub_802246E:
    push {r4,lr}
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_8022480
    ldrb r1, [r0,#4]
    cmp r1, #0
    beq loc_8022488
    bl sub_80E6894
loc_8022480:
    mov r4, #0
    bl sub_80E67D0
    str r0, [r5,#0x60]
loc_8022488:
    mov r0, #1
    pop {r4,pc}
// end of function sub_802246E

.thumb
sub_802248C:
    push {r4,lr}
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq loc_802249E
    ldrb r1, [r0,#4]
    cmp r1, #1
    beq loc_80224A6
    bl sub_80E6894
loc_802249E:
    mov r4, #1
    bl sub_80E67D0
    str r0, [r5,#0x60]
loc_80224A6:
    mov r0, #1
    pop {r4,pc}
// end of function sub_802248C

.thumb
sub_80224AA:
    push {lr}
    mov r0, #1
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0xa
    strh r0, [r6,#0x10]
    mov r0, #0x4b 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_80224AA

.thumb
sub_80224CC:
    push {lr}
    mov r0, #3
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0xa
    strh r0, [r6,#0x10]
    mov r0, #0x57 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_80224CC

.thumb
sub_80224EE:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #2
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0xa
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_80224EE

.thumb
sub_802250E:
    push {lr}
    mov r0, #2
    strb r0, [r6,#2]
    mov r0, #2
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    str r0, [r6,#0xc]
    mov r0, #0x52 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_802250E

.thumb
sub_802252E:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0x3c 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_802252E

.thumb
sub_802254C:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0x66 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_802254C

.thumb
sub_802256A:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    str r0, [r6,#0xc]
    mov r0, #0x6f 
    bl sub_800C960
    mov r0, #1
    pop {pc}
// end of function sub_802256A

.thumb
sub_8022588:
    push {lr}
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#3]
    mov r0, #3
    str r0, [r6,#0xc]
    mov r0, #0xa
    strh r0, [r6,#0x18]
    ldr r0, [pc, #0x80225b0-0x802259e-2] // sub_80F0638+1
    str r0, [r6,#0x1c]
    mov r0, #4
    strb r0, [r6,#2]
    mov r0, #0x6b 
    bl sub_800C960
    mov r0, #1
    pop {pc}
off_80225B0:    .word sub_80F0638+1
dword_80225B4:    .word 0x10000, 0x30002, 0x50004, 0x70006, 0x90008, 0xB000A
    .word 0xD000C, 0xF000E, 0x110010, 0x130012, 0x150014, 0x170016
    .word 0x190018, 0x1B001A, 0x1D001C, 0x1F001E, 0x210020, 0x230022
    .word 0x250024, 0x270026, 0x290028, 0x2B002A, 0x2D002C, 0x2F002E
    .word 0x310030, 0x330032, 0x350034, 0x370036, 0x390038, 0x3B003A
    .word 0x3D003C, 0x3F003E, 0x410040, 0x430042, 0x450044, 0x470046
    .word 0x490048, 0x4B004A, 0x4D004C, 0x4F004E, 0x510050, 0x550052
    .word 0x570056, 0x590058, 0x5E005A, 0x60005F, 0x620061, 0x640063
    .word 0x660065, 0x680067, 0x6A0069, 0x770076, 0x7C007B, 0x7E007D
    .word 0x80007F, 0x830082, 0x8A0084, 0x8D008C, 0x8F008E, 0x910090
    .word 0x930092, 0x950094, 0x970096, 0x990098, 0x9B009A, 0x9D009C
    .word 0x9F009E, 0xA100A0, 0xA300A2, 0xA500A4, 0xA700A6, 0xA900A8
    .word 0xAB00AA, 0xAD00AC, 0xAF00AE, 0xB100B0, 0xB300B2, 0xB500B4
    .word 0xB700B6, 0xB900B8, 0xCA00BA, 0xCC00CB, 0xD100CF, 0xD300D2
    .word 0xD500D4, 0xD700D6, 0xD900D8, 0xDB00DA, 0xDD00DC, 0xDF00DE
    .word 0xE100E0, 0xE300E2, 0xE500E4, 0xE700E6, 0xE900E8, 0xEB00EA
    .word 0xED00EC, 0xEF00EE, 0xF100F0, 0xF300F2, 0xF500F4, 0xF700F6
    .word 0xF900F8, 0xFB00FA, 0xFD00FC, 0xFF00FE, 0x1010100, 0x1030102
    .word 0x1050104, 0x1070106, 0x1090108, 0x10B010A, 0x10D010C, 0x10F010E
    .word 0x1110110, 0x1130112, 0x1150114, 0x1170116, 0x1190118, 0x11B011A
    .word 0x11D011C, 0x11F011E, 0x1210120, 0x1230122, 0x1250124, 0x1270126
    .word 0x12E012D, 0x130012F, 0x1330132, 0x1360135, 0x0
aStKlmnopqrstux:    .hword 0x53
    .byte 0x54 
    .byte 0
    .byte 0x5B 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x5D 
    .byte 0
    .byte 0x6B 
    .byte 0
    .byte 0x6C 
    .byte 0
    .byte 0x6D 
    .byte 0
    .byte 0x6E 
    .byte 0
    .byte 0x6F 
    .byte 0
    .byte 0x70 
    .byte 0
    .byte 0x71 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x73 
    .byte 0
    .byte 0x74 
    .byte 0
    .byte 0x75 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x79 
    .byte 0
    .byte 0x7A 
    .byte 0
    .hword 0x81
    .byte 0x86
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x88
    .byte 0
    .byte 0x89
    .byte 0
    .byte 0x8B
    .byte 0
    .byte 0
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xCD
    .byte 0
    .byte 0xCE
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x31 
    .byte 1
    .byte 0x34 
    .byte 1
// end of function sub_8022588

.thumb
sub_8022802:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    add r7, r0, #0
    ldrb r0, [r7,#1]
    tst r0, r0
    beq locret_802282E
    sub r0, #1
    strb r0, [r7,#1]
    add r2, r7, #2
    mov r3, #0
loc_802281A:
    ldrh r0, [r2,#2]
    strh r0, [r2]
    ldrh r0, [r2,#0xe]
    strh r0, [r2,#0xc]
    ldrh r0, [r2,#0x1a]
    strh r0, [r2,#0x18]
    add r2, #2
    add r3, #1
    cmp r3, #5
    blt loc_802281A
locret_802282E:
    pop {r7,pc}
// end of function sub_8022802

.thumb
sub_8022830:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    mov r1, #0
    mov r2, #0x4a 
    strh r1, [r0,r2]
    pop {pc}
// end of function sub_8022830

.thumb
sub_8022840:
    push {r4-r7,lr}
    add r6, r0, #0
    bl sub_8022CDE
    add r7, r0, #0
    ldrb r0, [r7]
    tst r0, r0
    bne loc_8022852
    b locret_80229D4
loc_8022852:
    ldrh r0, [r7,#0x2c]
    bl sub_8022E60
    strh r0, [r7,#0x24]
    bl sub_80078C4
    tst r0, r0
    beq loc_8022864
    b loc_80229D0
loc_8022864:
    bl sub_8007920
    beq loc_802286C
    b loc_80229D0
loc_802286C:
    add r0, r6, #0
    bl sub_8022A00
    add r1, r0, #0
    add r0, r6, #0
    bl sub_8022CA0
    bl sub_80079EA
    tst r0, r0
    beq loc_8022884
    b loc_80229D0
loc_8022884:
    mov r4, #1
    add r0, r6, #0
    bl sub_8007958
    ldrh r0, [r0,#2]
    mov r1, #2
    lsl r1, r1, #8
    tst r0, r1
    bne loc_8022898
    mov r4, #0
loc_8022898:
    ldrb r0, [r7,#2]
    tst r0, r0
    beq loc_80228B4
    sub r0, #1
    strb r0, [r7,#2]
    bne loc_80228B4
    ldrb r1, [r7,#3]
    tst r1, r1
    beq loc_80228AE
    mov r0, #0
    strh r0, [r7,#0x28]
loc_80228AE:
    add r0, r6, #0
    bl sub_8022CEA
loc_80228B4:
    bl sub_80019A0
    ldr r1, [pc, #0x80229e8-0x80228b8-4] // =0x4
    tst r6, r6
    beq loc_80228C0
    ldr r1, [pc, #0x80229ec-0x80228be-2] // =0x8
loc_80228C0:
    tst r0, r1
    beq loc_8022942
    ldrh r0, [r7,#0x24]
    tst r0, r0
    bne loc_80228CC
    b loc_80229D0
loc_80228CC:
    ldrh r1, [r7,#0x26]
    cmp r0, r1
    beq loc_80229D0
    ldrh r0, [r7,#0x24]
    bl sub_8019010
    add r5, r0, #0
    tst r4, r4
    bne loc_8022962
    ldrb r0, [r5,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x80229d8-0x80228e2-2] // dword_80229F0
    ldrh r2, [r1,r0]
    ldrh r1, [r7,#0x28]
    cmp r1, r2
    blt loc_8022946
    ldrh r1, [r7,#0x24]
    add r1, #0x40 
    ldrb r2, [r7,r1]
    ldrb r0, [r5,#0x1e]
    cmp r2, r0
    bge loc_80229D0
    add r2, #1
    strb r2, [r7,r1]
    sub r0, r0, r2
    push {r0}
    add r0, r6, #0
    bl sub_8007ECA
    tst r0, r0
    pop {r0}
    bne loc_8022910
    bl sub_8016262
loc_8022910:
    ldrh r1, [r7,#0x24]
    add r0, r6, #0
    bl sub_8022A50
    tst r0, r0
    beq loc_8022946
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    cmp r0, r6
    bne loc_802292E
    mov r0, #0xc3
    add r0, #0xff
    bl f500_8000558
loc_802292E:
    ldrb r0, [r5,#8]
    add r0, r0, r0
    ldr r1, [pc, #0x80229d8-0x8022932-2] // dword_80229F0
    ldrh r0, [r1,r0]
    ldrh r1, [r7,#0x28]
    sub r1, r1, r0
    bge loc_802293E
    mov r1, #0
loc_802293E:
    strh r1, [r7,#0x28]
    b loc_80229D0
loc_8022942:
    mov r1, #0
    b loc_8022948
loc_8022946:
    mov r1, #1
loc_8022948:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    cmp r0, r6
    bne loc_80229D0
    tst r1, r1
    beq loc_802295C
    mov r0, #0x69 
    bl f500_8000558
loc_802295C:
    bl sub_80167CC
    b loc_80229D0
loc_8022962:
    ldrh r0, [r7,#0x28]
    ldr r1, [pc, #0x80229dc-0x8022964-4] // =0x1500
    cmp r0, r1
    blt loc_8022946
    ldrh r1, [r7,#0x24]
    add r1, #0x40 
    ldrb r2, [r7,r1]
    ldrb r0, [r5,#0x1e]
    cmp r2, r0
    bge loc_80229D0
    add r2, #1
    strb r2, [r7,r1]
    sub r0, r0, r2
    push {r0}
    add r0, r6, #0
    bl sub_8007ECA
    tst r0, r0
    pop {r0}
    bne loc_802298E
    bl sub_8016262
loc_802298E:
    ldrh r1, [r7,#0x24]
    add r0, r6, #0
    bl sub_8022AD6
    mov r0, #0x18
    add r0, r0, r7
    bl sub_801F488
    strh r0, [r7,#0x2a]
    strb r1, [r7,#4]
    strb r2, [r7,#5]
    tst r0, r0
    beq loc_80229CC
    push {r0-r3}
    add r0, r6, #0
    bl sub_800C41A
    add r5, r0, #0
    pop {r0-r3}
    bl sub_80E3B3C
    add r0, r6, #0
    ldrh r1, [r7,#0x2a]
    bl sub_8022A50
    add r0, r6, #0
    bl sub_8022CEA
    mov r0, #0
    strh r0, [r7,#0x28]
    b loc_80229D0
loc_80229CC:
    mov r0, #0xb4
    strb r0, [r7,#2]
loc_80229D0:
    ldrh r0, [r7,#0x24]
    strh r0, [r7,#0x26]
locret_80229D4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80229D8:    .word dword_80229F0
off_80229DC:    .word 0x1500
    .word 0x8022E28, 0x80229FA
dword_80229E8:    .word 0x4
dword_80229EC:    .word 0x8
dword_80229F0:    .word 0x2A001500, 0xFFFF4000, 0x101FFFF, 0x1
// end of function sub_8022840

.thumb
sub_8022A00:
    push {lr}
    bl sub_8007958
    ldrh r2, [r0,#2]
    mov r0, #0
    mov r1, #2
    lsl r1, r1, #8
    tst r2, r1
    bne locret_8022A3A
    ldrh r0, [r7,#0x28]
    ldr r1, [pc, #0x8022a3c-0x8022a14-4] // word_8022A40
    mov r3, #0
loc_8022A18:
    ldrh r2, [r1]
    cmp r0, r2
    blt loc_8022A26
    add r1, #4
    add r3, #1
    cmp r3, #3
    blt loc_8022A18
loc_8022A26:
    ldrh r0, [r1,#2]
    ldrh r1, [r7,#0x3a]
    tst r1, r1
    beq loc_8022A30
    add r0, r0, r0
loc_8022A30:
    ldrh r1, [r7,#0x3c]
    tst r1, r1
    beq locret_8022A3A
    add r0, #1
    lsr r0, r0, #1
locret_8022A3A:
    pop {pc}
off_8022A3C:    .word word_8022A40
word_8022A40:    .hword 0x1500
dword_8022A42:    .word 0x29000019
    .word 0x4000000C
    .word 0x4000000C
    .byte 0xC
    .byte 0
// end of function sub_8022A00

.thumb
sub_8022A50:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    bl sub_800BFAE
    add r7, r0, #0
    ldr r0, [sp]
    bl sub_8022CDE
    add r6, r0, #0
    ldr r0, [sp,#4]
    bl sub_8019010
    add r4, r0, #0
    ldrb r0, [r4,#9]
    mov r1, #1
    tst r0, r1
    bne loc_8022AC6
    ldrb r0, [r4,#0x16]
    mov r1, #0x20 
    tst r0, r1
    bne loc_8022AC6
    ldrb r0, [r7,#1]
    cmp r0, #5
    bge loc_8022AD0
    add r0, r0, r0
    add r0, #2
    add r5, r7, r0
    ldr r0, [sp,#4]
    strh r0, [r5]
    ldrh r1, [r4,#0x1a]
    strh r1, [r5,#0xc]
    mov r0, #0
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x24]
    ldrb r3, [r4,#9]
    mov r2, #2
    tst r3, r2
    beq loc_8022AB6
    ldrh r0, [r6,#0x36]
    ldrh r1, [r5,#0x18]
    add r1, r1, r0
    strh r1, [r5,#0x18]
    mov r2, #4
    tst r3, r2
    beq loc_8022AB6
    ldrh r0, [r6,#0x38]
    ldrh r1, [r5,#0x18]
    add r1, r1, r0
    strh r1, [r5,#0x18]
loc_8022AB6:
    mov r0, #0
    strh r0, [r6,#0x36]
    strh r0, [r6,#0x38]
    ldrb r0, [r7,#1]
    add r0, #1
    strb r0, [r7,#1]
    mov r0, #1
    b loc_8022AD2
loc_8022AC6:
    mov r0, #0x4a 
    ldr r1, [sp,#4]
    strh r1, [r7,r0]
    mov r0, #1
    b loc_8022AD2
loc_8022AD0:
    mov r0, #0
loc_8022AD2:
    add sp, sp, #8
    pop {r4-r7,pc}
// end of function sub_8022A50

.thumb
sub_8022AD6:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r1, #0
    bl sub_8022CDE
    ldrb r1, [r0,#3]
    cmp r1, #5
    bge loc_8022AF6
    add r1, r1, r1
    add r1, #0x18
    strh r5, [r0,r1]
    ldrb r1, [r0,#3]
    add r1, #1
    strb r1, [r0,#3]
    mov r0, #1
    b locret_8022AF8
loc_8022AF6:
    mov r0, #0
locret_8022AF8:
    pop {r4,r5,pc}
// end of function sub_8022AD6

.thumb
sub_8022AFA:
    push {r4,lr}
    ldr r4, [pc, #0x8022ecc-0x8022afc-4] // =0xFFFF
    ldr r1, [r5,#0x58]
    ldrh r1, [r1,#0x3a]
    tst r1, r1
    bne loc_8022B18
    bl sub_8012F4A
    ldr r1, [pc, #0x8022ed0-0x8022b0a-2] // =0x1000
    tst r0, r1
    bne loc_8022B18
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    ldrh r4, [r0,#2]
loc_8022B18:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_8022AFA

loc_8022B1C:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    ldrh r2, [r0,#0x1a]
    ldrh r1, [r0,#0xe]
    ldrh r0, [r0,#2]
    ldr r3, [pc, #0x8022ecc-0x8022b2a-2] // =0xFFFF
    cmp r0, r3
    beq locret_8022B56
    push {r0,r2}
    ldrb r1, [r5,#0x16]
    bl ho_8019288
    add r1, r0, #0
    pop {r0,r2}
    push {r0-r2}
    bl sub_8019010
    add r3, r0, #0
    pop {r0-r2}
    push {r0}
    ldrb r3, [r3,#4]
    lsl r3, r3, #2
    ldr r0, [pc, #0x8022bdc-0x8022b4c-4] // jt_8022BE0
    ldr r0, [r0,r3]
    mov lr, pc
    bx r0
    pop {r0}
locret_8022B56:
    pop {r4,r6,r7,pc}
.thumb
ho_8022B58:
    push {r4,r6,r7,lr}
    bl sub_8012F4A
    add r1, r0, #0
    mov r0, #0
    ldr r2, [pc, #0x8022ed0-0x8022b62-2] // =0x1000
    tst r1, r2
    bne locret_8022BD8
    ldr r1, [r5,#0x58]
    ldrh r1, [r1,#0x3a]
    tst r1, r1
    bne locret_8022BD8
    ldrb r0, [r5,#0x16]
    bl sub_800BFAE
    mov r1, #0x4a 
    ldrh r0, [r0,r1]
    tst r0, r0
    beq locret_8022BD8
    ldr r6, [r5,#0x58]
    mov r7, #0x70 
    add r7, r7, r6
    ldr r3, [pc, #0x8022ecc-0x8022b84-4] // =0xFFFF
    cmp r0, r3
    beq locret_8022BD8
    push {r0}
    ldrb r1, [r5,#0x16]
    bl ho_8019288
    add r1, r0, #0
    pop {r0}
    push {r0,r1}
    bl sub_8019010
    add r4, r0, #0
    pop {r0,r1}
    push {r0,r1}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    add r3, r0, #0
    mov r2, #0
    ldrb r0, [r4,#9]
    mov r1, #2
    tst r0, r1
    beq loc_8022BC0
    ldrh r2, [r3,#0x36]
    mov r1, #4
    tst r0, r1
    beq loc_8022BC0
    ldrh r1, [r3,#0x38]
    add r2, r2, r1
loc_8022BC0:
    mov r1, #0
    strh r1, [r3,#0x36]
    strh r1, [r3,#0x38]
    pop {r0,r1}
    push {r0}
    ldrb r3, [r4,#4]
    lsl r3, r3, #2
    ldr r0, [pc, #0x8022bdc-0x8022bce-2] // jt_8022BE0
    ldr r0, [r0,r3]
    mov lr, pc
    bx r0
    pop {r0}
locret_8022BD8:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8022BDC:    .word jt_8022BE0
jt_8022BE0:    .word locret_8022BF4+1
// end of function ho_8022B58

    cmp r3, #0xf7
    lsr r2, r0, #0x20
    cmp r4, #1
    lsr r2, r0, #0x20
    cmp r4, #0xd
    lsr r2, r0, #0x20
    cmp r4, #0x19
    lsr r2, r0, #0x20
locret_8022BF4:
    mov pc, lr
    ldrh r0, [r6,#0x3c]
    tst r0, r0
    beq locret_8022BFE
    add r2, #0x28 
locret_8022BFE:
    mov pc, lr
    ldrh r0, [r6,#0x3e]
    tst r0, r0
    beq locret_8022C0A
    ldr r0, [pc, #0x8022ed4-0x8022c06-2] // =0x8000
    add r1, r1, r0
locret_8022C0A:
    mov pc, lr
    mov r0, #0x40 
    ldrh r0, [r6,r0]
    tst r0, r0
    beq locret_8022C16
    add r2, #0x28 
locret_8022C16:
    mov pc, lr
    mov r0, #0x42 
    ldrh r0, [r6,r0]
    tst r0, r0
    beq locret_8022C24
    ldr r0, [pc, #0x8022ed4-0x8022c20-4] // =0x8000
    add r1, r1, r0
locret_8022C24:
    mov pc, lr
.thumb
sub_8022C26:
    push {r7,lr}
    push {r1,r2}
    ldr r7, [r5,#0x58]
    add r7, #0x70 
    strh r0, [r7,#0x14]
    bl sub_8019010
    pop {r1,r2}
    strh r1, [r7,#8]
    strh r2, [r7,#6]
    ldrb r1, [r0,#0xa]
    strh r1, [r7,#0xa]
    ldrh r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r1, [r0,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r0,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r0,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7]
    strb r1, [r7,#4]
    ldrb r0, [r0,#0xb]
    bl sub_800C960
    mov r0, #0x10
    bl sub_8015AFA
    pop {r7,pc}
// end of function sub_8022C26

.thumb
sub_8022C62:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    add r4, r0, #0
    mov r1, #0xd8
    add r1, r1, r1
    bl f900_8000930
    bl sub_80405D8
    beq locret_8022C90
    mov r0, #1
    strb r0, [r4]
    mov r0, #0xff
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0x10]
    ldrb r0, [r5,#0x12]
    strb r0, [r4,#0x11]
    ldrb r0, [r5,#0x16]
    bl sub_8022CEA
locret_8022C90:
    pop {r4,pc}
// end of function sub_8022C62

.thumb
sub_8022C92:
    push {r4,lr}
    ldr r0, [pc, #0x8022ed8-0x8022c94-4] // unk_20374B0
    mov r1, #0xd8
    lsl r1, r1, #2
    bl f900_8000930
    pop {r4,pc}
// end of function sub_8022C92

.thumb
sub_8022CA0:
    push {lr}
    push {r1}
    bl sub_8022CDE
    pop {r1}
    add r2, r0, #0
    ldrh r0, [r2,#0x28]
    add r0, r0, r1
    ldr r1, [pc, #0x8022edc-0x8022cb0-4] // =0x4000
    cmp r0, r1
    ble loc_8022CB8
    add r0, r1, #0
loc_8022CB8:
    strh r0, [r2,#0x28]
    pop {pc}
// end of function sub_8022CA0

.thumb
sub_8022CBC:
    push {lr}
    push {r1}
    bl sub_8022CDE
    pop {r1}
    add r2, r0, #0
    ldrh r0, [r2,#0x28]
    sub r0, r0, r1
    bge loc_8022CD0
    mov r0, #0
loc_8022CD0:
    strh r0, [r2,#0x28]
    pop {pc}
// end of function sub_8022CBC

    push {lr}
    bl sub_8022CDE
    ldrh r0, [r0,#0x28]
    pop {pc}
.thumb
sub_8022CDE:
    mov r1, #0xd8
    add r1, r1, r1
    mul r0, r1
    ldr r1, [pc, #0x8022ee0-0x8022ce4-4] // unk_20374B0
    add r0, r0, r1
    mov pc, lr
// end of function sub_8022CDE

.thumb
sub_8022CEA:
    push {lr}
    bl sub_8022CDE
    mov r1, #0
    strb r1, [r0,#3]
    strh r1, [r0,#0x2a]
    mvn r1, r1
    str r1, [r0,#0x18]
    str r1, [r0,#0x1c]
    str r1, [r0,#0x20]
    mov r1, #0xb4
    strb r1, [r0,#2]
    pop {pc}
// end of function sub_8022CEA

.thumb
sub_8022D04:
    push {lr}
    bl sub_8007A64
    mov r1, #0x10
    and r0, r1
    pop {pc}
// end of function sub_8022D04

.thumb
sub_8022D10:
    push {lr}
    bl sub_8001AF6
    mov r4, #7
    and r4, r0
    mov r1, #0x23 
    bl sub_800D77A
    ldr r1, [pc, #0x8022d28-0x8022d20-4] // unk_8022D2C
    ldrb r0, [r1,r0]
    add r0, r0, r4
    pop {pc}
off_8022D28:    .word unk_8022D2C
unk_8022D2C:    .byte 0xC
    .byte 5
    .byte 0x1E
    .byte 0xA
    .byte 5
    .byte 0xF
    .byte 0x14
    .byte 3
    .byte 0x14
    .byte 0x1E
    .byte 0x1E
    .byte 0xA
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
// end of function sub_8022D10

.thumb
sub_8022D3C:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    add r4, #0x70 
    push {r0-r2}
    mov r1, #0x23 
    bl sub_800D77A
    cmp r0, #0xc
    pop {r0-r2}
    beq loc_8022D62
    strb r0, [r4,#0x16]
    strb r1, [r4,#0x17]
    strh r2, [r4,#0x18]
    mov r0, #7
    bl sub_800C960
    bl loc_80EB0B0
    pop {r4,pc}
loc_8022D62:
    strb r0, [r4,#0x16]
    strb r1, [r4,#0x17]
    strh r2, [r4,#0x18]
    ldr r0, [pc, #0x8022ee4-0x8022d68-4] // loc_80EF498+1
    str r0, [r4,#0x1c]
    mov r0, #0x6a 
    bl sub_800C960
    pop {r4,pc}
// end of function sub_8022D3C

.thumb
sub_8022D74:
    push {lr}
    ldr r0, [pc, #0x8022ee8-0x8022d76-2] // unk_20374B0
    ldr r1, [pc, #0x8022eec-0x8022d78-4] // =0x360
    bl f900_8000930
    mov r0, #0x26 
    bl sub_800D742
    cmp r0, #2
    bne locret_8022D8E
    mov r0, #0x10
    bl sub_8007A4C
locret_8022D8E:
    pop {pc}
// end of function sub_8022D74

.thumb
sub_8022D90:
    push {r4,lr}
    bl sub_8007920
    bne locret_8022E00
    ldr r3, [r5,#0x58]
    add r3, #0x3c 
    add r2, r3, #6
loc_8022D9E:
    ldrh r0, [r3]
    tst r0, r0
    beq loc_8022DA8
    sub r0, #1
    strh r0, [r3]
loc_8022DA8:
    add r3, #2
    cmp r3, r2
    ble loc_8022D9E
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    add r4, r0, #0
    ldrb r0, [r4]
    tst r0, r0
    beq loc_8022DEA
    ldrh r1, [r4,#0x2e]
    tst r1, r1
    beq loc_8022DC6
    sub r1, #1
    strh r1, [r4,#0x2e]
loc_8022DC6:
    ldrh r1, [r4,#0x3a]
    tst r1, r1
    beq loc_8022DD0
    sub r1, #1
    strh r1, [r4,#0x3a]
loc_8022DD0:
    ldrh r1, [r4,#0x3c]
    tst r1, r1
    beq loc_8022DDA
    sub r1, #1
    strh r1, [r4,#0x3c]
loc_8022DDA:
    ldrh r1, [r4,#0x16]
    tst r1, r1
    beq loc_8022DEA
    sub r1, #1
    strh r1, [r4,#0x16]
    mov r0, #2
    bl sub_800AFE4
loc_8022DEA:
    ldr r4, [r5,#0x58]
    ldrh r0, [r4,#0x3a]
    tst r0, r0
    beq loc_8022DF6
    sub r0, #1
    strh r0, [r4,#0x3a]
loc_8022DF6:
    ldrb r0, [r4,#0x1a]
    tst r0, r0
    beq locret_8022E00
    sub r0, #1
    strb r0, [r4,#0x1a]
locret_8022E00:
    pop {r4,pc}
// end of function sub_8022D90

.thumb
sub_8022E02:
    push {r4,lr}
    bl sub_8022D04
    beq locret_8022E1C
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8022CDE
    add r4, r0, #0
    ldrh r0, [r0,#0x28]
    bl sub_8016764
locret_8022E1C:
    pop {r4,pc}
    .byte 0, 0
    .word unk_8022E2C
    .word 0x8022E33, 0x8022E4E
unk_8022E2C:    .byte 0xD
    .byte 0x2, 0x25, 0x30
    .byte 0x34 
    .byte 0x78, 0x0, 0x19
    .byte 2
    .byte 0x25
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0xA
    .byte 0x25 
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0xA
    .byte 0x25 
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0xA
    .byte 0x25 
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0xA
    .byte 0x25 
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0
    .hword 0x814
a02x02x04x:    .hword 0x3025
    .byte 0x32 
    .byte 0x78 
    .byte 0x2C 
    .byte 0x25 
    .byte 0x30 
    .byte 0x32 
    .byte 0x78 
    .byte 0x2C 
    .byte 0x25 
    .byte 0x30 
    .byte 0x34 
    .byte 0x78 
    .byte 0
    .byte 0x0
// end of function sub_8022E02

.thumb
sub_8022E60:
    ldr r1, [pc, #0x8022ef0-0x8022e60-4] // dword_80225B4
    add r0, r0, r0
    ldrh r0, [r1,r0]
    ldr r2, [pc, #0x8022ef4-0x8022e66-2] // =0x170
    cmp r0, r2
    blt locret_8022E6E
    mov r0, #0
locret_8022E6E:
    mov pc, lr
// end of function sub_8022E60

    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    strb r4, [r0,#0xb]
    ldr r1, [pc, #0x8022ef8-0x8022e7a-2] // =0x1E0
    strh r1, [r0,#0x2e]
    pop {pc}
.thumb
sub_8022E80:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    mov r1, #0xff
    strb r1, [r0,#0xb]
    mov r1, #0
    strh r1, [r0,#0x2e]
    strb r1, [r0,#0xf]
    pop {pc}
// end of function sub_8022E80

    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    ldrb r1, [r0,#0xb]
    cmp r1, #3
    bne locret_8022EAC
    mov r1, #0
    strb r1, [r0,#0xf]
    strh r1, [r0,#0x2e]
    mov r1, #0xff
    strb r1, [r0,#0xb]
locret_8022EAC:
    pop {pc}
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    mov r1, #0x96
    lsl r1, r1, #2
    strh r1, [r0,#0x16]
    pop {pc}
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    mov r1, #1
    strb r1, [r0,#0xf]
    pop {pc}
dword_8022ECC:    .word 0xFFFF
off_8022ED0:    .word 0x1000
dword_8022ED4:    .word 0x8000
off_8022ED8:    .word unk_20374B0
dword_8022EDC:    .word 0x4000
off_8022EE0:    .word unk_20374B0
off_8022EE4:    .word loc_80EF498+1
off_8022EE8:    .word unk_20374B0
off_8022EEC:    .word 0x360
off_8022EF0:    .word dword_80225B4
off_8022EF4:    .word 0x170
off_8022EF8:    .word 0x1E0
.thumb
sub_8022EFC:
    push {lr}
    ldr r0, [pc, #0x802301c-0x8022efe-2] // unk_2037A70
    mov r1, #0x20 
    bl f900_8000930
    pop {pc}
// end of function sub_8022EFC

.thumb
sub_8022F08:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    eor r0, r1
    mov r1, #0x10
    mul r0, r1
    ldr r1, [pc, #0x8023020-0x8022f14-4] // unk_2037A70
    add r0, r0, r1
    ldr r1, [r0,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    mov pc, lr
// end of function sub_8022F08

.thumb
sub_8022F20:
    mov r1, #0x10
    mul r0, r1
    ldr r1, [pc, #0x8023024-0x8022f24-4] // unk_2037A70
    add r0, r0, r1
    ldr r3, [r0,#8]
    ldr r1, [r0,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    mov pc, lr
// end of function sub_8022F20

.thumb
sub_8022F32:
    push {r4-r6,lr}
    add r6, r2, #0
    add r5, r3, #0
    ldrb r2, [r0,#0x16]
    mov r3, #0x10
    mul r2, r3
    ldr r3, [pc, #0x8023028-0x8022f3e-2] // unk_2037A70
    add r3, r3, r2
    strh r1, [r3]
    str r6, [r3,#4]
    strh r5, [r3,#2]
    str r0, [r3,#8]
    str r4, [r3,#0xc]
    pop {r4-r6,pc}
// end of function sub_8022F32

.thumb
sub_8022F4E:
    mov r1, #0x10
    mul r1, r0
    ldr r0, [pc, #0x802302c-0x8022f52-2] // unk_2037A70
    add r0, r0, r1
    mov r1, #0
    strh r1, [r0]
    strh r1, [r0,#4]
    strh r1, [r0,#2]
    str r1, [r0,#8]
    ldr r1, [r0,#0xc]
    tst r1, r1
    beq locret_8022F6E
    mov r2, #1
    strb r2, [r1,#5]
    mov r1, #0
    str r1, [r0,#0xc]
locret_8022F6E:
    mov pc, lr
// end of function sub_8022F4E

.thumb
sub_8022F70:
    push {lr}
    ldr r4, [pc, #0x8023030-0x8022f72-2] // unk_2037A70
    ldr r0, [r4,#(dword_2037A78 - 0x2037a70)]
    tst r0, r0
    beq loc_8022F86
    ldrh r1, [r0,#0x24]
    tst r1, r1
    bne loc_8022F86
    ldrb r0, [r0,#0x16]
    bl sub_8022F4E
loc_8022F86:
    add r4, #0x10
    ldr r0, [r4,#(dword_2037A88 - 0x2037a80)]
    tst r0, r0
    beq locret_8022F9A
    ldrh r1, [r0,#0x24]
    tst r1, r1
    bne locret_8022F9A
    ldrb r0, [r0,#0x16]
    bl sub_8022F4E
locret_8022F9A:
    pop {pc}
// end of function sub_8022F70

.thumb
sub_8022F9C:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r5,#0x16]
    bl sub_8022F20
    cmp r0, #0x91
    bne loc_8022FDA
    bl sub_800BF94
    ldr r1, [pc, #0x8023034-0x8022fae-2] // =0x200
    tst r0, r1
    bne loc_8022FF6
    ldr r0, [r4,#0x54]
    ldr r1, [pc, #0x8023038-0x8022fb6-2] // =0xFF800000
    tst r0, r1
    beq locret_802301A
    ldrh r0, [r4,#0x2a]
    ldrh r1, [r4,#0x2c]
    add r0, r0, r1
    ldrh r1, [r4,#0x2e]
    add r0, r0, r1
    ldrh r1, [r4,#0x30]
    add r0, r0, r1
    ldrh r1, [r4,#0x32]
    add r0, r0, r1
    tst r0, r0
    beq locret_802301A
    ldr r0, [pc, #0x8023034-0x8022fd2-2] // =0x200
    bl sub_800BF7A
    b loc_8022FF6
loc_8022FDA:
    cmp r0, #0x92
    bne locret_802301A
    bl sub_800BF94
    ldr r1, [pc, #0x802303c-0x8022fe2-2] // =0x400
    tst r0, r1
    bne loc_8022FF6
    ldr r0, [r4,#0x54]
    ldr r1, [pc, #0x8023040-0x8022fea-2] // =0x2000
    tst r0, r1
    beq locret_802301A
    ldr r0, [pc, #0x802303c-0x8022ff0-4] // =0x400
    bl sub_800BF7A
loc_8022FF6:
    mov r0, #0
    strh r0, [r4,#0x2a]
    strh r0, [r4,#0x2c]
    strh r0, [r4,#0x2e]
    strh r0, [r4,#0x30]
    strh r0, [r4,#0x32]
    strb r0, [r4,#0xd]
    strb r0, [r4,#0xf]
    strh r0, [r4,#0x36]
    strh r0, [r4,#0x38]
    mov r0, #0
    mov r1, #0x48 
    strh r0, [r4,r1]
    strh r0, [r4,#0x3a]
    ldr r0, [r4,#0x54]
    mov r1, #0x40 
    bic r0, r1
    str r0, [r4,#0x54]
locret_802301A:
    pop {r4,pc}
off_802301C:    .word unk_2037A70
off_8023020:    .word unk_2037A70
off_8023024:    .word unk_2037A70
off_8023028:    .word unk_2037A70
off_802302C:    .word unk_2037A70
off_8023030:    .word unk_2037A70
off_8023034:    .word 0x200
dword_8023038:    .word 0xFF800000
off_802303C:    .word 0x400
off_8023040:    .word 0x2000
// end of function sub_8022F9C

.thumb
sub_8023044:
    push {r5,lr}
    add r5, r0, #0
    bl sub_8012F4A
    ldr r1, [pc, #0x802309c-0x802304c-4] // =0x204
    tst r0, r1
    bne loc_8023056
    mov r0, #1
    pop {r5,pc}
loc_8023056:
    mov r0, #0
    pop {r5,pc}
// end of function sub_8023044

.thumb
sub_802305A:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r0, r2, #0
    bl sub_801DA08
    add r4, r0, #0
loc_8023068:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_8023096
    push {r0}
    bl sub_800AB54
    pop {r1}
    mul r0, r1
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#0x12]
    add r0, r0, r2
    ldrb r2, [r5,#0x13]
    add r1, r1, r2
    cmp r0, r6
    bne loc_802308E
    cmp r1, r7
    beq loc_8023092
loc_802308E:
    add r4, #2
    b loc_8023068
loc_8023092:
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_8023096:
    mov r0, #0
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_802309C:    .word 0x20A
// end of function sub_802305A

.thumb
sub_80230A0:
    push {lr}
    ldr r1, [pc, #0x80230b0-0x80230a2-2] // jt_80230B4
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80230B0:    .word jt_80230B4
jt_80230B4:    .word sub_80230BC+1
    .word sub_8023120+1
// end of function sub_80230A0

.thumb
sub_80230BC:
    push {r4,lr}
    ldrh r0, [r7,#4]
    bl sub_8019010
    ldrb r4, [r0,#0x17]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    add r2, r4, #0
    bl sub_802305A
    tst r0, r0
    beq loc_80230E8
    ldr r0, [r7,#8]
    bl sub_8023044
    beq loc_8023100
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    pop {r4,pc}
loc_80230E8:
    bl sub_800C3C0
    ldr r6, [r7,#8]
    ldrb r0, [r6,#0x12]
    ldrb r1, [r6,#0x13]
    ldrb r6, [r5,#0x16]
    bl sub_800F8BC
    tst r0, r0
    bne loc_802310C
    bl sub_800E860
loc_8023100:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8023110
loc_802310C:
    mov r2, #4
    strh r2, [r7]
loc_8023110:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_80230BC

.thumb
sub_8023120:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldr r0, [r7,#8]
    bl sub_8023044
    beq loc_8023134
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_8023134:
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8023120

.thumb
sub_8023148:
    push {lr}
    ldr r1, [pc, #0x8023158-0x802314a-2] // jt_802315C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023158:    .word jt_802315C
jt_802315C:    .word sub_8023164+1
    .word sub_8023120+1
// end of function sub_8023148

.thumb
sub_8023164:
    push {r4,lr}
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #0
    bl sub_800F72C
    bne loc_8023188
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_802318C
loc_8023188:
    mov r2, #4
    strh r2, [r7]
loc_802318C:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_8023164

.thumb
sub_802319C:
    push {lr}
    ldr r1, [pc, #0x80231ac-0x802319e-2] // jt_80231B0
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80231AC:    .word jt_80231B0
jt_80231B0:    .word sub_80231B8+1
    .word sub_8023120+1
// end of function sub_802319C

.thumb
sub_80231B8:
    push {r4,lr}
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #0
    bl sub_800F72C
    bne loc_8023202
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #1
    bl sub_800F72C
    beq loc_80231F2
    push {r0-r2}
    bl sub_800AB54
    add r3, r0, #0
    pop {r0-r2}
    add r2, r2, r3
    ldr r3, [r7,#8]
    ldrb r3, [r3,#0x12]
    cmp r3, r2
    beq loc_8023202
loc_80231F2:
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8023206
loc_8023202:
    mov r2, #4
    strh r2, [r7]
loc_8023206:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
    .balign 4, 0x00
// end of function sub_80231B8

.thumb
sub_8023218:
    push {lr}
    ldr r1, [pc, #0x8023228-0x802321a-2] // jt_802322C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023228:    .word jt_802322C
jt_802322C:    .word sub_8023234+1
    .word sub_8023120+1
// end of function sub_8023218

.thumb
sub_8023234:
    push {r4,lr}
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #1
    bl sub_800F72C
    bne loc_802326A
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #0
    bl sub_800F72C
    bne loc_802326A
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_802326E
loc_802326A:
    mov r2, #4
    strh r2, [r7]
loc_802326E:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
    .byte 0, 0
// end of function sub_8023234

.thumb
sub_8023280:
    push {lr}
    ldr r1, [pc, #0x8023290-0x8023282-2] // jt_8023294
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8023290:    .word jt_8023294
jt_8023294:    .word sub_802329C+1
    .word sub_8023120+1
// end of function sub_8023280

.thumb
sub_802329C:
    push {r4,lr}
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    push {r0,r1}
    bl sub_8009E64
    pop {r0,r1}
    beq loc_80232D0
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldrb r2, [r5,#0x16]
    eor r1, r2
    beq loc_80232D0
    ldr r0, [r7,#8]
    bl sub_8023044
    beq loc_80232E0
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    b locret_80232FE
loc_80232D0:
    bl sub_800C3C0
    ldrb r0, [r5,#0x16]
    bl sub_800F93C
    bne loc_80232EC
    bl sub_800E860
loc_80232E0:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_80232F0
loc_80232EC:
    mov r2, #4
    strh r2, [r7]
loc_80232F0:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_80232FE:
    pop {r4,pc}
// end of function sub_802329C

.thumb
sub_8023300:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
// end of function sub_8023300

.thumb
sub_802330C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldr r3, [r7,#8]
    ldr r3, [r3,#0x54]
    ldrb r0, [r3,#0xb]
    tst r0, r0
    beq loc_802332A
    ldr r0, [r7,#8]
    bl sub_8023044
    beq locret_8023340
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_802332A:
    bl sub_800E860
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023340:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802330C

.thumb
sub_8023344:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrh r0, [r5,#0x26]
    mov r1, #0xa
    svc 6
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    bgt loc_802335C
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_802335C:
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8023344

.thumb
sub_8023370:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    ldrb r2, [r3,#0x16]
    bl sub_80233BC
    tst r0, r0
    bne loc_80233A4
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    ldrb r2, [r3,#0x16]
    bl sub_80233EE
    tst r0, r0
    bne loc_80233A4
    ldr r0, [r7,#8]
    bl sub_8023044
    beq locret_80233BA
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_80233A4:
    bl sub_800E860
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_80233BA:
    pop {pc}
// end of function sub_8023370

.thumb
sub_80233BC:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r0, r2, #0
    bl loc_800AB56
    add r4, r0, #0
    mov r5, #1
loc_80233CC:
    add r6, r6, r4
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E64
    beq loc_80233E8
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    mov r1, #0x10
    tst r0, r1
    beq loc_80233EA
    b loc_80233CC
loc_80233E8:
    mov r5, #0
loc_80233EA:
    add r0, r5, #0
    pop {r4-r7,pc}
// end of function sub_80233BC

.thumb
sub_80233EE:
    push {r4-r7,lr}
    lsl r3, r2, #2
    ldr r5, [pc, #0x8023424-0x80233f2-2] // dword_8023428
    ldr r5, [r5,r3]
    add r6, r0, #0
    add r7, r1, #0
    add r0, r2, #0
    bl loc_800AB56
    add r4, r0, #0
loc_8023402:
    add r6, r6, r4
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E64
    beq loc_802341C
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    tst r0, r5
    bne loc_8023420
    b loc_8023402
loc_802341C:
    mov r0, #0
    pop {r4-r7,pc}
loc_8023420:
    mov r0, #1
    pop {r4-r7,pc}
off_8023424:    .word dword_8023428
dword_8023428:    .word 0x1800000, 0x2800000
// end of function sub_80233EE

.thumb
sub_8023430:
    push {lr}
    ldr r1, [pc, #0x8023440-0x8023432-2] // jt_8023444
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8023440:    .word jt_8023444
jt_8023444:    .word sub_802344C+1
    .word sub_802349A+1
// end of function sub_8023430

.thumb
sub_802344C:
    push {lr}
    bl sub_800AB54
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_8009A88
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8023474
    ldrb r1, [r0]
    cmp r1, #8
    beq loc_8023474
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023498
loc_8023474:
    bl sub_800C3C0
    bl sub_80234A4
    tst r0, r0
    beq loc_8023486
    mov r2, #4
    strh r2, [r7]
    b loc_802348A
loc_8023486:
    bl sub_800F6E0
loc_802348A:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023498:
    pop {pc}
// end of function sub_802344C

.thumb
sub_802349A:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov pc, lr
// end of function sub_802349A

.thumb
sub_80234A4:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_8023518
    bl sub_800AB54
    str r0, [sp,#0x30]
    mov r4, #0
    mov r6, #0
loc_80234BC:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x3c]
    str r1, [sp,#0x40]
    ldr r2, [sp,#0x30]
    add r0, r0, r2
    str r0, [sp,#0x34]
    str r1, [sp,#0x38]
    bl sub_8009E64
    beq loc_80234FC
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    bl sub_8009A88
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_80234FC
    ldrb r1, [r0]
    cmp r1, #8
    beq loc_80234FC
    ldr r0, [sp,#0x3c]
    ldr r1, [sp,#0x40]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_80234FC:
    add r6, #1
    cmp r6, r7
    blt loc_80234BC
    add r0, r4, #0
    beq loc_8023518
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8023518:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
// end of function sub_80234A4

.thumb
sub_802351C:
    push {lr}
    ldrh r0, [r7,#4]
    bl sub_8019010
    ldrb r2, [r0,#0x17]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    bl ho_8023552
    tst r0, r0
    beq loc_8023546
    ldr r0, [r7,#8]
    bl sub_8023044
    beq loc_802354A
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_8023546:
    bl sub_800E860
loc_802354A:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    pop {pc}
// end of function sub_802351C

.thumb
ho_8023552:
    push {r4,r7,lr}
    sub r2, #0x20 
    blt loc_8023572
    lsl r2, r2, #2
    ldr r7, [pc, #0x8023574-0x802355a-2] // jt_8023578
    ldr r7, [r7,r2]
    push {r0,r1}
    bl sub_800AB54
    add r4, r0, #0
    pop {r0,r1}
    ldrb r2, [r5,#0x12]
    ldrb r3, [r5,#0x13]
    mov lr, pc
    bx r7
    pop {r4,r7,pc}
loc_8023572:
    b loc_8023572
off_8023574:    .word jt_8023578
jt_8023578:    .word sub_8023584+1
    .word sub_80235A0+1
    .word sub_80235BC+1
// end of function ho_8023552

.thumb
sub_8023584:
    push {lr}
    sub r0, r0, r2
    mul r0, r4
    ble loc_802359C
    sub r1, r1, r3
    cmp r1, #0
    bge loc_8023594
    neg r1, r1
loc_8023594:
    cmp r1, #1
    bgt loc_802359C
    mov r0, #1
    pop {pc}
loc_802359C:
    mov r0, #0
    pop {pc}
// end of function sub_8023584

.thumb
sub_80235A0:
    push {lr}
    sub r0, r0, r2
    mul r0, r4
    blt loc_80235B8
    sub r1, r1, r3
    cmp r1, #0
    bge loc_80235B0
    neg r1, r1
loc_80235B0:
    cmp r1, #1
    bne loc_80235B8
    mov r0, #1
    pop {pc}
loc_80235B8:
    mov r0, #0
    pop {pc}
// end of function sub_80235A0

.thumb
sub_80235BC:
    push {r4,lr}
    cmp r1, #1
    beq loc_80235DC
    cmp r1, #3
    beq loc_80235DC
    mov r1, #5
    ldrb r4, [r5,#0x16]
    mul r1, r4
    neg r1, r1
    add r1, #6
    cmp r0, r1
    beq loc_80235DC
    neg r4, r4
    add r4, #4
    cmp r0, r4
    bne loc_80235E0
loc_80235DC:
    mov r0, #1
    pop {r4,pc}
loc_80235E0:
    mov r0, #0
    pop {r4,pc}
// end of function sub_80235BC

.thumb
sub_80235E4:
    push {lr}
    ldr r1, [pc, #0x80235f4-0x80235e6-2] // jt_80235F8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80235F4:    .word jt_80235F8
jt_80235F8:    .word sub_8023600+1
    .word sub_8023120+1
// end of function sub_80235E4

.thumb
sub_8023600:
    push {r4,lr}
    bl sub_800C3C0
    bl sub_802362E
    tst r0, r0
    bne loc_802361A
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_802361E
loc_802361A:
    mov r2, #4
    strh r2, [r7]
loc_802361E:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_8023600

.thumb
sub_802362E:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    beq loc_80236B8
    str r0, [sp,#0x3c]
    bl sub_800AB54
    mov r1, #3
    mul r0, r1
    str r0, [sp,#0x38]
    mov r7, #0
    str r7, [sp,#0x40]
loc_802364C:
    add r0, sp, #0
    ldrb r0, [r0,r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r2, [sp,#0x38]
    add r0, r0, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    bl sub_8009E64
    beq loc_8023698
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    bl sub_8009A52
    mov r1, #0x10
    tst r0, r1
    bne loc_8023698
    ldrb r6, [r5,#0x16]
    lsl r0, r6, #2
    ldr r1, [pc, #0x80236bc-0x8023676-2] // off_80236C0
    ldr r2, [r1,r0]
    mov r3, #0
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    mov r4, #0x10
    bl sub_800F8AE
    tst r2, r2
    beq loc_8023698
    add r0, sp, #0
    ldrb r0, [r0,r7]
    add r1, sp, #0x18
    ldr r2, [sp,#0x40]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x40]
loc_8023698:
    add r7, #1
    ldr r0, [sp,#0x3c]
    cmp r7, r0
    blt loc_802364C
    ldr r7, [sp,#0x40]
    add r0, r7, #0
    beq loc_80236B8
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80236B8:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
off_80236BC:    .word off_80236C0
off_80236C0:    .word LCDControl
    .word start_
// end of function sub_802362E

.thumb
sub_80236C8:
    push {lr}
    ldr r1, [pc, #0x80236d8-0x80236ca-2] // jt_80236DC
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80236D8:    .word jt_80236DC
jt_80236DC:    .word sub_80236E4+1
    .word sub_8023120+1
// end of function sub_80236C8

.thumb
sub_80236E4:
    push {r4,lr}
    bl sub_800C3C0
    bl sub_802372E
    tst r0, r0
    bne loc_802371A
    bl sub_800C3C0
    mov r0, #1
    bl sub_80237B0
    tst r0, r0
    bne loc_802371A
    bl sub_800C3C0
    mov r0, #0xff
    bl sub_80237B0
    tst r0, r0
    bne loc_802371A
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_802371E
loc_802371A:
    mov r2, #4
    strh r2, [r7]
loc_802371E:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_80236E4

.thumb
sub_802372E:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    beq loc_80237A0
    str r0, [sp,#0x3c]
    bl sub_800AB54
    mov r1, #3
    mul r0, r1
    str r0, [sp,#0x38]
    mov r7, #0
    str r7, [sp,#0x40]
loc_802374C:
    add r0, sp, #0
    ldrb r0, [r0,r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r2, [sp,#0x38]
    add r0, r0, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    bl sub_8009E64
    beq loc_8023780
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #8
    bne loc_8023780
    add r0, sp, #0
    ldrb r0, [r0,r7]
    add r1, sp, #0x18
    ldr r2, [sp,#0x40]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x40]
loc_8023780:
    add r7, #1
    ldr r0, [sp,#0x3c]
    cmp r7, r0
    blt loc_802374C
    ldr r7, [sp,#0x40]
    add r0, r7, #0
    beq loc_80237A0
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80237A0:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
    .word 0x80237A8, 0x4000000, 0x8000000
// end of function sub_802372E

.thumb
sub_80237B0:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x24
    str r0, [sp,#0x20]
    str r2, [sp,#4]
    str r3, [sp,#8]
    bl sub_800AB54
    neg r0, r0
    mov r1, #3
    mul r0, r1
    str r0, [sp,#0x10]
    ldrb r0, [r5,#0x16]
    bl sub_8023834
    add r6, r0, #0
    add r7, r1, #0
    mov r4, #0
    str r4, [sp,#0x1c]
loc_80237D4:
    ldr r3, [r6]
    tst r3, r3
    beq loc_8023810
    ldr r1, [sp,#0x20]
    cmp r1, #0xff
    beq loc_80237E6
    ldrb r0, [r3,#0x17]
    cmp r0, r1
    bne loc_8023810
loc_80237E6:
    ldrb r0, [r3,#0x12]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    ldrb r1, [r3,#0x13]
    str r0, [sp,#0x14]
    str r1, [sp,#0x18]
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_8009E78
    tst r0, r0
    beq loc_8023810
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0x18]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    ldr r2, [sp,#0x1c]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x1c]
loc_8023810:
    add r6, #4
    add r4, #1
    cmp r4, r7
    blt loc_80237D4
    ldr r0, [sp,#0x1c]
    add r7, r0, #0
    beq loc_8023830
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r1,r0]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8023830:
    add sp, sp, #0x24
    pop {r4,r6,r7,pc}
// end of function sub_80237B0

.thumb
sub_8023834:
    mov r1, #1
    eor r1, r0
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r3, [r2,#0xd]
    eor r3, r1
    lsl r0, r3, #2
    add r0, #0x44 
    add r0, r0, r2
    mov r1, #3
    tst r3, r3
    beq locret_802384E
    mov r1, #1
locret_802384E:
    mov pc, lr
// end of function sub_8023834

.thumb
sub_8023850:
    push {lr}
    ldr r1, [pc, #0x8023860-0x8023852-2] // jt_8023864
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8023860:    .word jt_8023864
jt_8023864:    .word sub_802386C+1
    .word sub_8023120+1
// end of function sub_8023850

.thumb
sub_802386C:
    push {r4,r6,lr}
    mov r0, #0x36 
    ldrb r1, [r5,#0x16]
    bl sub_801949A
    cmp r0, #0x64 
    blt loc_8023890
    bl sub_800C3C0
    ldr r6, [r7,#8]
    ldrb r0, [r6,#0x12]
    ldrb r1, [r6,#0x13]
    ldrb r6, [r5,#0x16]
    mov r4, #0xb
    bl sub_800F8BC
    tst r0, r0
    bne loc_802389C
loc_8023890:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_80238A0
loc_802389C:
    mov r2, #4
    strh r2, [r7]
loc_80238A0:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,r6,pc}
// end of function sub_802386C

.thumb
sub_80238B0:
    push {lr}
    ldr r1, [pc, #0x80238c0-0x80238b2-2] // jt_80238C4
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80238C0:    .word jt_80238C4
jt_80238C4:    .word sub_80238D4+1
    .word sub_8023906+1
    .word sub_8023976+1
    .word sub_8023120+1
// end of function sub_80238B0

.thumb
sub_80238D4:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    add r4, r0, #0
    bl sub_8001AF6
    mov r1, #6
    ldrh r2, [r7,#4]
    cmp r2, #0xd9
    bne loc_80238EC
    mov r1, #4
loc_80238EC:
    svc 6
    strb r1, [r4,#0x12]
    mov r2, #4
    ldrh r3, [r7,#4]
    cmp r3, #0xd9
    bne loc_80238FA
    mov r2, #1
loc_80238FA:
    mov r0, #4
    cmp r1, r2
    bne loc_8023902
    mov r0, #8
loc_8023902:
    strh r0, [r7]
    pop {r4,pc}
// end of function sub_80238D4

.thumb
sub_8023906:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    ldrb r0, [r0,#0x12]
    ldr r4, [pc, #0x80239b8-0x8023910-4] // dword_80239BC
    ldrh r1, [r7,#4]
    cmp r1, #0xd9
    bne loc_802391A
    add r4, #6
loc_802391A:
    ldrb r4, [r4,r0]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    add r2, r4, #0
    bl sub_802305A
    tst r0, r0
    beq loc_802393E
    ldr r0, [r7,#8]
    bl sub_8023044
    beq loc_8023956
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    pop {r4,pc}
loc_802393E:
    bl sub_800C3C0
    ldr r6, [r7,#8]
    ldrb r0, [r6,#0x12]
    ldrb r1, [r6,#0x13]
    ldrb r6, [r5,#0x16]
    bl sub_800F8BC
    tst r0, r0
    bne loc_8023962
    bl sub_800E860
loc_8023956:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8023966
loc_8023962:
    mov r2, #0xc
    strh r2, [r7]
loc_8023966:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_8023906

.thumb
sub_8023976:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8022CDE
    ldrb r0, [r0,#0x12]
    ldr r2, [pc, #0x80239b8-0x8023980-4] // dword_80239BC
    ldrh r1, [r7,#4]
    cmp r1, #0xd9
    bne loc_802398A
    add r2, #6
loc_802398A:
    ldrb r2, [r2,r0]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    bl ho_8023552
    tst r0, r0
    beq loc_80239AC
    ldr r0, [r7,#8]
    bl sub_8023044
    beq locret_80239B6
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    pop {pc}
loc_80239AC:
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
locret_80239B6:
    pop {pc}
off_80239B8:    .word dword_80239BC
dword_80239BC:    .word 0xB080309, 0x20100720, 0x70B
// end of function sub_8023976

.thumb
sub_80239C8:
    push {lr}
    ldr r1, [pc, #0x80239d8-0x80239ca-2] // jt_80239DC
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80239D8:    .word jt_80239DC
jt_80239DC:    .word sub_80239E4+1
    .word sub_8023120+1
// end of function sub_80239C8

.thumb
sub_80239E4:
    push {r4,r6,lr}
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_8023A18
    beq loc_80239F8
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023A16
loc_80239F8:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8023A08
    mov r2, #4
    strh r2, [r7]
loc_8023A08:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023A16:
    pop {r4,r6,pc}
// end of function sub_80239E4

.thumb
sub_8023A18:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8023a34-0x8023a20-4] // off_8023A38
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r7, sp
    bl sub_8009FCC
    tst r0, r0
    add sp, sp, #0x18
    pop {r7,pc}
off_8023A34:    .word off_8023A38
off_8023A38:    .word LCDControl
    .word 0x20, 0x8000020, 0x0
// end of function sub_8023A18

.thumb
sub_8023A48:
    push {lr}
    ldr r1, [pc, #0x8023a58-0x8023a4a-2] // jt_8023A5C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023A58:    .word jt_8023A5C
jt_8023A5C:    .word sub_8023A64+1
    .word sub_8023A8C+1
// end of function sub_8023A48

.thumb
sub_8023A64:
    push {lr}
    bl sub_800C3C0
    bl sub_8023A96
    tst r0, r0
    beq loc_8023A78
    mov r2, #4
    strh r2, [r7]
    b loc_8023A7C
loc_8023A78:
    bl sub_800F6E0
loc_8023A7C:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8023A64

.thumb
sub_8023A8C:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov pc, lr
// end of function sub_8023A8C

.thumb
sub_8023A96:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_8023B02
    bl sub_800AB54
    str r0, [sp,#0x30]
    mov r4, #0
    mov r6, #0
loc_8023AAE:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x3c]
    str r1, [sp,#0x40]
    ldr r2, [sp,#0x30]
    add r0, r0, r2
    str r0, [sp,#0x34]
    str r1, [sp,#0x38]
    bl sub_8009E64
    beq loc_8023AE6
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    bl sub_8009A88
    ldrb r1, [r0]
    cmp r1, #0xb
    beq loc_8023AE6
    ldr r0, [sp,#0x3c]
    ldr r1, [sp,#0x40]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_8023AE6:
    add r6, #1
    cmp r6, r7
    blt loc_8023AAE
    add r0, r4, #0
    beq loc_8023B02
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8023B02:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_8023A96

.thumb
sub_8023B08:
    push {lr}
    ldr r1, [pc, #0x8023b18-0x8023b0a-2] // jt_8023B1C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023B18:    .word jt_8023B1C
jt_8023B1C:    .word sub_8023B24+1
    .word sub_8023120+1
// end of function sub_8023B08

.thumb
sub_8023B24:
    push {r4,r6,lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8023B4E
    beq loc_8023B36
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023B4C
loc_8023B36:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023B4C:
    pop {r4,r6,pc}
// end of function sub_8023B24

.thumb
sub_8023B4E:
    push {r7,lr}
    sub sp, sp, #4
    ldrb r0, [r5,#0x16]
    lsl r2, r0, #3
    ldr r1, [pc, #0x8023b6c-0x8023b56-2] // dword_8023B70
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_800A210
    tst r0, r0
    add sp, sp, #4
    pop {r7,pc}
    .balign 4, 0x00
off_8023B6C:    .word dword_8023B70
dword_8023B70:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
// end of function sub_8023B4E

.thumb
ho_8023B80:
    push {lr}
    ldr r1, [pc, #0x8023b90-0x8023b82-2] // jt_8023B94
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8023B90:    .word jt_8023B94
jt_8023B94:    .word sub_8023B9C+1
    .word sub_8023120+1
// end of function ho_8023B80

.thumb
sub_8023B9C:
    push {r4,r6,lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8023BC6
    beq loc_8023BAE
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023BC4
loc_8023BAE:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023BC4:
    pop {r4,r6,pc}
// end of function sub_8023B9C

.thumb
sub_8023BC6:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8023be4-0x8023bce-2] // dword_8023BE8
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_8023BE4:    .word dword_8023BE8
dword_8023BE8:    .word 0x0
    .word 0x30
    .word 0x20, 0x10
// end of function sub_8023BC6

.thumb
sub_8023BF8:
    push {lr}
    ldr r1, [pc, #0x8023c08-0x8023bfa-2] // off_8023C0C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023C08:    .word off_8023C0C
off_8023C0C:    .word sub_8023C14+1
    .word sub_8023120+1
// end of function sub_8023BF8

.thumb
sub_8023C14:
    push {r4,r6,lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8023C42
    tst r0, r0
    beq loc_8023C2A
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023C40
loc_8023C2A:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023C40:
    pop {r4,r6,pc}
// end of function sub_8023C14

.thumb
sub_8023C42:
    push {r4-r7,lr}
    lsl r3, r0, #2
    push {r3}
    ldr r7, [pc, #0x8023c94-0x8023c48-4] // off_8023CA4
    ldr r1, [r7,r3]
    ldr r7, [pc, #0x8023c98-0x8023c4c-4] // dword_8023CAC
    ldr r2, [r7,r3]
    bl sub_80E4C78
    pop {r5}
    tst r0, r0
    bne loc_8023C5C
    pop {r4-r7,pc}
loc_8023C5C:
    sub sp, sp, #4
    mov r7, sp
    mov r1, #3
    mov r2, #0
    ldr r6, [pc, #0x8023c9c-0x8023c64-4] // off_8023CB4
    ldr r4, [r6,r5]
    ldr r6, [pc, #0x8023ca0-0x8023c68-4] // loc_8023CBC
    ldr r3, [r6,r5]
loc_8023C6C:
    push {r0-r4,r7}
    bl sub_8009A52
    add r6, r0, #0
    pop {r0-r4,r7}
    tst r6, r3
    bne loc_8023C88
    and r6, r4
    cmp r6, r4
    bne loc_8023C88
    lsl r6, r1, #4
    orr r6, r0
    strb r6, [r7,r2]
    add r2, #1
loc_8023C88:
    sub r1, #1
    bne loc_8023C6C
    add r0, r2, #0
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8023C94:    .word off_8023CA4
off_8023C98:    .word dword_8023CAC
off_8023C9C:    .word off_8023CB4
off_8023CA0:    .word loc_8023CBC
off_8023CA4:    .word 0x30
    .word 0x10
dword_8023CAC:    .word 0x0
    .word 0x20
off_8023CB4:    .word 0x30
    .word 0x10
// end of function sub_8023C42

loc_8023CBC:
    lsl r0, r0, #2
    lsr r0, r1, #0x1e
    lsl r0, r4, #2
    lsr r0, r1, #0x1e
.thumb
sub_8023CC4:
    push {lr}
    ldr r1, [pc, #0x8023cd4-0x8023cc6-2] // off_8023CD8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023CD4:    .word off_8023CD8
off_8023CD8:    .word sub_8023CE0+1
    .word sub_8023D0E+1
// end of function sub_8023CC4

.thumb
sub_8023CE0:
    push {lr}
    bl sub_800C3C0
    bl sub_8023D18
    tst r0, r0
    beq loc_8023CF4
    mov r2, #4
    strh r2, [r7]
    b loc_8023CFE
loc_8023CF4:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
loc_8023CFE:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8023CE0

.thumb
sub_8023D0E:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov pc, lr
// end of function sub_8023D0E

.thumb
sub_8023D18:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    beq loc_8023D90
    str r0, [sp,#0x3c]
    bl sub_800AB54
    mov r1, #3
    mul r0, r1
    str r0, [sp,#0x38]
    mov r7, #0
    str r7, [sp,#0x40]
loc_8023D36:
    add r0, sp, #0
    ldrb r0, [r0,r7]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r2, [sp,#0x38]
    add r0, r0, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    bl sub_8009E64
    beq loc_8023D70
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    bl sub_8009A52
    mov r1, #0x10
    tst r0, r1
    beq loc_8023D70
    ldr r1, [pc, #0x8023d94-0x8023d5c-4] // =0xF880080
    tst r0, r1
    bne loc_8023D70
    add r0, sp, #0
    ldrb r0, [r0,r7]
    add r1, sp, #0x18
    ldr r2, [sp,#0x40]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x40]
loc_8023D70:
    add r7, #1
    ldr r0, [sp,#0x3c]
    cmp r7, r0
    blt loc_8023D36
    ldr r7, [sp,#0x40]
    add r0, r7, #0
    beq loc_8023D90
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8023D90:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
dword_8023D94:    .word 0xF880080
// end of function sub_8023D18

.thumb
sub_8023D98:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8023DC4
    tst r0, r0
    beq loc_8023DAC
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023DC2
loc_8023DAC:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023DC2:
    pop {pc}
// end of function sub_8023D98

.thumb
sub_8023DC4:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    add r3, #0x68 
    ldrb r0, [r5,#0x16]
    mov r1, #0xc
    mul r0, r1
    add r3, r3, r0
    mov r4, #0
loc_8023DD6:
    ldr r2, [r3]
    tst r2, r2
    beq loc_8023DE4
    ldrh r0, [r2,#0x24]
    ldrh r1, [r2,#0x26]
    cmp r0, r1
    blt loc_8023DF0
loc_8023DE4:
    add r3, #4
    add r4, #1
    cmp r4, #3
    blt loc_8023DD6
    mov r0, #0
    pop {r4,pc}
loc_8023DF0:
    mov r0, #1
    pop {r4,pc}
// end of function sub_8023DC4

.thumb
sub_8023DF4:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8023E22
    cmp r0, #8
    bgt loc_8023E0A
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023E20
loc_8023E0A:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023E20:
    pop {pc}
// end of function sub_8023DF4

.thumb
sub_8023E22:
    push {r7,lr}
    sub sp, sp, #0x18
    lsl r0, r0, #3
    ldr r1, [pc, #0x8023e3c-0x8023e28-4] // dword_8023E40
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    add sp, sp, #0x18
    pop {r7,pc}
    .balign 4, 0x00
off_8023E3C:    .word dword_8023E40
dword_8023E40:    .word 0x0
    .word 0x20, 0x20, 0x0
// end of function sub_8023E22

.thumb
sub_8023E50:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8023E7C
    beq loc_8023E64
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023E7A
loc_8023E64:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023E7A:
    pop {pc}
// end of function sub_8023E50

.thumb
sub_8023E7C:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    mov r7, #1
loc_8023E82:
    mov r6, #1
loc_8023E84:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A88
    ldrb r1, [r0,#1]
    cmp r1, r4
    bne loc_8023E9C
    ldrb r1, [r0]
    cmp r1, #9
    beq loc_8023E9C
    cmp r1, #2
    bne loc_8023EAC
loc_8023E9C:
    add r6, #1
    cmp r6, #6
    ble loc_8023E84
    add r7, #1
    cmp r7, #3
    ble loc_8023E82
    mov r0, #0
    pop {r4,r6,r7,pc}
loc_8023EAC:
    mov r0, #1
    pop {r4,r6,r7,pc}
// end of function sub_8023E7C

.thumb
sub_8023EB0:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8023E22
    cmp r0, #9
    blt loc_8023EC6
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023EDC
loc_8023EC6:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023EDC:
    pop {pc}
    .byte 0, 0
// end of function sub_8023EB0

.thumb
sub_8023EE0:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8012F4A
    mov r1, #6
    tst r0, r1
    bne loc_8023EF6
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023F0C
loc_8023EF6:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023F0C:
    pop {pc}
    .byte 0, 0
// end of function sub_8023EE0

.thumb
sub_8023F10:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#4]
    cmp r0, #0
    bne loc_8023F24
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023F3A
loc_8023F24:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023F3A:
    pop {pc}
// end of function sub_8023F10

.thumb
sub_8023F3C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8023F68
    tst r0, r0
    beq loc_8023F50
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8023F66
loc_8023F50:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8023F66:
    pop {pc}
// end of function sub_8023F3C

.thumb
sub_8023F68:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8023834
loc_8023F70:
    ldr r2, [r0]
    tst r2, r2
    beq loc_8023F7E
    ldr r2, [r2,#0x54]
    ldrb r2, [r2,#4]
    cmp r2, #0
    bne loc_8023F88
loc_8023F7E:
    add r2, #4
    sub r1, #1
    bgt loc_8023F70
    mov r0, #0
    pop {pc}
loc_8023F88:
    mov r0, #1
    pop {pc}
// end of function sub_8023F68

.thumb
sub_8023F8C:
    push {lr}
    ldr r1, [pc, #0x8023f9c-0x8023f8e-2] // off_8023FA0
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8023F9C:    .word off_8023FA0
off_8023FA0:    .word sub_8023FA8+1
    .word sub_8023120+1
// end of function sub_8023F8C

.thumb
sub_8023FA8:
    push {lr}
    bl sub_800C3C0
    bl sub_8023FD4
    bne loc_8023FC0
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8023FC4
loc_8023FC0:
    mov r2, #4
    strh r2, [r7]
loc_8023FC4:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8023FA8

.thumb
sub_8023FD4:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_8024048
    bl sub_800AB54
    str r0, [sp,#0x30]
    mov r4, #0
    mov r6, #0
loc_8023FEC:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x3c]
    str r1, [sp,#0x40]
    ldr r2, [sp,#0x30]
    add r0, r0, r2
    str r0, [sp,#0x34]
    str r1, [sp,#0x38]
    bl sub_8009E64
    beq loc_802402C
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldrb r2, [r5,#0x16]
    eor r1, r2
    bne loc_802402C
    ldrb r1, [r0]
    cmp r1, #9
    beq loc_802402C
    ldr r0, [sp,#0x3c]
    ldr r1, [sp,#0x40]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_802402C:
    add r6, #1
    cmp r6, r7
    blt loc_8023FEC
    add r0, r4, #0
    beq loc_8024048
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024048:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
// end of function sub_8023FD4

.thumb
sub_802404C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    ldrb r0, [r5,#0x16]
    bl sub_8022F20
    tst r0, r0
    beq loc_802406C
    cmp r0, #0x8c
    beq loc_802406C
    cmp r0, #0x8d
    beq loc_802406C
    cmp r0, #0x8e
    beq loc_802406C
    cmp r0, #0x8f
    bne loc_8024072
loc_802406C:
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8024088
loc_8024072:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8024088:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802404C

.thumb
sub_802408C:
    push {lr}
    ldr r1, [pc, #0x802409c-0x802408e-2] // off_80240A0
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802409C:    .word off_80240A0
off_80240A0:    .word sub_80240A8+1
    .word sub_8023120+1
// end of function sub_802408C

.thumb
sub_80240A8:
    push {r4,lr}
    bl sub_800C3C0
    bl sub_80240D6
    tst r0, r0
    bne loc_80240C2
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_80240C6
loc_80240C2:
    mov r2, #4
    strh r2, [r7]
loc_80240C6:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_80240A8

.thumb
sub_80240D6:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x24
    str r2, [sp,#0x1c]
    str r3, [sp,#0x20]
    mov r0, #0
    str r0, [sp,#0x18]
    mov r4, #1
loc_80240E4:
    mov r6, #1
loc_80240E6:
    add r0, r6, #0
    add r1, r4, #0
    bl sub_8009A52
    ldr r1, [pc, #0x8024134-0x80240ee-2] // =0xF880080
    tst r0, r1
    bne loc_8024110
    add r6, #1
    cmp r6, #6
    ble loc_80240E6
    add r0, r4, #0
    ldr r2, [sp,#0x1c]
    ldr r3, [sp,#0x20]
    add r7, sp, #0
    ldr r1, [sp,#0x18]
    add r7, r7, r1
    bl sub_800A0DA
    ldr r1, [sp,#0x18]
    add r1, r1, r0
    str r1, [sp,#0x18]
loc_8024110:
    add r4, #1
    cmp r4, #3
    ble loc_80240E4
    ldr r0, [sp,#0x18]
    add r7, r0, #0
    beq loc_802412E
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_802412E:
    add sp, sp, #0x24
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_8024134:    .word 0xF880080
// end of function sub_80240D6

.thumb
sub_8024138:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8024164
    tst r0, r0
    beq loc_802414C
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8024162
loc_802414C:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8024162:
    pop {pc}
// end of function sub_8024138

.thumb
sub_8024164:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    mov r7, #1
loc_802416A:
    mov r6, #1
loc_802416C:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    ldr r1, [pc, #0x8024190-0x8024174-4] // =0x3800000
    tst r0, r1
    bne loc_802418A
    add r6, #1
    cmp r6, #6
    ble loc_802416C
    add r7, #1
    cmp r7, #3
    ble loc_802416A
    mov r0, #0
    b loc_802418C
loc_802418A:
    mov r0, #1
loc_802418C:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
dword_8024190:    .word 0x3800000
// end of function sub_8024164

.thumb
sub_8024194:
    push {lr}
    ldr r1, [pc, #0x80241a4-0x8024196-2] // off_80241A8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80241A4:    .word off_80241A8
off_80241A8:    .word sub_80241B0+1
    .word sub_8023120+1
// end of function sub_8024194

.thumb
sub_80241B0:
    push {r4,lr}
    bl sub_800C3C0
    bl sub_80241DE
    tst r0, r0
    bne loc_80241CA
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_80241CE
loc_80241CA:
    mov r2, #4
    strh r2, [r7]
loc_80241CE:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_80241B0

.thumb
sub_80241DE:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x24
    str r2, [sp,#0x1c]
    str r3, [sp,#0x20]
    mov r0, #0
    str r0, [sp,#0x18]
    mov r4, #1
loc_80241EC:
    ldrb r0, [r5,#0x16]
    lsl r1, r0, #3
    ldr r2, [pc, #0x802424c-0x80241f0-4] // dword_8024250
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r1, #1
    eor r0, r1
    add r1, r4, #0
    bl sub_800A17A
    tst r0, r0
    beq loc_8024228
    mov r2, #0x10
    ldr r3, [pc, #0x8024260-0x8024208-4] // =0xF800000
    bl sub_8009E78
    tst r0, r0
    beq loc_8024228
    add r0, r4, #0
    ldr r2, [sp,#0x1c]
    ldr r3, [sp,#0x20]
    add r7, sp, #0
    ldr r1, [sp,#0x18]
    add r7, r7, r1
    bl sub_800A0DA
    ldr r1, [sp,#0x18]
    add r1, r1, r0
    str r1, [sp,#0x18]
loc_8024228:
    add r4, #1
    cmp r4, #3
    ble loc_80241EC
    ldr r0, [sp,#0x18]
    add r7, r0, #0
    beq loc_8024246
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024246:
    add sp, sp, #0x24
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_802424C:    .word dword_8024250
dword_8024250:    .word 0x20, 0x0, 0x0
    .word 0x20
dword_8024260:    .word 0xF800000
// end of function sub_80241DE

.thumb
sub_8024264:
    push {lr}
    ldr r1, [pc, #0x8024274-0x8024266-2] // off_8024278
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024274:    .word off_8024278
off_8024278:    .word sub_8024280+1
    .word sub_8023120+1
// end of function sub_8024264

.thumb
sub_8024280:
    push {r4,lr}
    bl sub_800C3C0
    bl sub_80242AE
    tst r0, r0
    bne loc_802429A
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_802429E
loc_802429A:
    mov r2, #4
    strh r2, [r7]
loc_802429E:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_8024280

.thumb
sub_80242AE:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_8024338
    bl sub_800AB54
    str r0, [sp,#0x30]
    mov r4, #0
    mov r6, #0
loc_80242C6:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x3c]
    str r1, [sp,#0x40]
    ldr r2, [sp,#0x30]
    add r0, r0, r2
    str r0, [sp,#0x34]
    str r1, [sp,#0x38]
    bl sub_8009E64
    beq loc_802431C
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    bl sub_8009A88
    ldrb r1, [r0,#1]
    ldrb r2, [r5,#0x16]
    eor r1, r2
    bne loc_802431C
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_802431C
    ldr r2, [pc, #0x8024380-0x80242fa-2] // =0xF800000
    tst r1, r2
    bne loc_802431C
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    ldrb r2, [r5,#0x16]
    bl sub_802433C
    tst r0, r0
    beq loc_802431C
    ldr r0, [sp,#0x3c]
    ldr r1, [sp,#0x40]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_802431C:
    add r6, #1
    cmp r6, r7
    blt loc_80242C6
    add r0, r4, #0
    beq loc_8024338
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024338:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
// end of function sub_80242AE

.thumb
sub_802433C:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r5, r2, #0
    add r0, r2, #0
    bl loc_800AB56
    add r4, r0, #0
loc_802434C:
    add r6, r6, r4
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009E64
    beq loc_802436C
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8009A52
    lsl r1, r5, #2
    ldr r2, [pc, #0x8024374-0x8024362-2] // off_8024378
    ldr r1, [r2,r1]
    tst r0, r1
    bne loc_8024370
    b loc_802434C
loc_802436C:
    mov r0, #0
    pop {r4-r7,pc}
loc_8024370:
    mov r0, #1
    pop {r4-r7,pc}
off_8024374:    .word off_8024378
off_8024378:    .word LCDControl
    .word start_
dword_8024380:    .word 0xF800000
// end of function sub_802433C

.thumb
sub_8024384:
    push {lr}
    ldr r1, [pc, #0x8024394-0x8024386-2] // off_8024398
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024394:    .word off_8024398
off_8024398:    .word sub_80243A0+1
    .word sub_8023120+1
// end of function sub_8024384

.thumb
sub_80243A0:
    push {r4,lr}
    bl sub_80243CC
    tst r0, r0
    bne loc_80243B6
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_80243BC
loc_80243B6:
    mov r2, #4
    strh r2, [r7]
    b locret_80243CA
loc_80243BC:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_80243CA:
    pop {r4,pc}
// end of function sub_80243A0

.thumb
sub_80243CC:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x80243e8-0x80243d4-4] // off_80243EC
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
off_80243E8:    .word off_80243EC
off_80243EC:    .word Channel1Sweepregister_NR10_
    .word 0x0
    .word dword_8000004+0x3C
    .word 0x20
// end of function sub_80243CC

.thumb
sub_80243FC:
    push {lr}
    ldr r1, [pc, #0x802440c-0x80243fe-2] // off_8024410
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802440C:    .word off_8024410
off_8024410:    .word sub_8024418+1
    .word sub_8023120+1
// end of function sub_80243FC

.thumb
sub_8024418:
    push {r4,lr}
    bl sub_8024444
    tst r0, r0
    bne loc_802442E
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8024434
loc_802442E:
    mov r2, #4
    strh r2, [r7]
    b locret_8024442
loc_8024434:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8024442:
    pop {r4,pc}
// end of function sub_8024418

.thumb
sub_8024444:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8024460-0x802444c-4] // dword_8024464
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    tst r0, r0
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
off_8024460:    .word dword_8024464
dword_8024464:    .word 0x4000420, 0x0
    .word 0x8000400, 0x20
// end of function sub_8024444

.thumb
sub_8024474:
    push {lr}
    ldr r1, [pc, #0x8024484-0x8024476-2] // off_8024488
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024484:    .word off_8024488
off_8024488:    .word sub_8024490+1
    .word sub_8023120+1
// end of function sub_8024474

.thumb
sub_8024490:
    push {r4,r6,r7,lr}
    mov r1, #0x26 
    bl sub_800D77A
    cmp r0, #2
    beq loc_80244B0
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    sub r1, r1, r0
    ldr r0, [pc, #0x8024508-0x80244a2-2] // =0x12C
    cmp r1, r0
    bge loc_80244B0
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    pop {r4,r6,r7,pc}
loc_80244B0:
    ldrh r0, [r7,#4]
    bl sub_8019010
    ldrb r4, [r0,#0x17]
    ldr r3, [r7,#8]
    ldrb r0, [r3,#0x12]
    ldrb r1, [r3,#0x13]
    add r2, r4, #0
    bl sub_802305A
    tst r0, r0
    beq loc_80244CE
    mov r2, #4
    strh r2, [r7]
    b locret_8024504
loc_80244CE:
    bl sub_800C3C0
    ldr r6, [r7,#8]
    ldrb r0, [r6,#0x12]
    ldrb r1, [r6,#0x13]
    ldrb r6, [r5,#0x16]
    bl sub_800F8BC
    tst r0, r0
    beq loc_80244E8
    mov r2, #4
    strh r2, [r7]
    b loc_80244F6
loc_80244E8:
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
loc_80244F6:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8024504:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8024508:    .word 0x12C
// end of function sub_8024490

.thumb
sub_802450C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    bl sub_8042F1C
    tst r0, r0
    beq loc_8024520
    mov r0, #1
    strb r0, [r7,#3]
    b locret_8024536
loc_8024520:
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_8024536:
    pop {pc}
// end of function sub_802450C

.thumb
sub_8024538:
    push {lr}
    ldr r1, [pc, #0x8024548-0x802453a-2] // off_802454C
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024548:    .word off_802454C
off_802454C:    .word sub_8024554+1
    .word sub_8023120+1
// end of function sub_8024538

.thumb
sub_8024554:
    push {lr}
    bl sub_802457E
    tst r0, r0
    beq loc_8024564
    mov r2, #4
    strh r2, [r7]
    b locret_802457C
loc_8024564:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_802457C:
    pop {pc}
// end of function sub_8024554

.thumb
sub_802457E:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8024598-0x8024586-2] // off_802459C
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_8009FCC
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
off_8024598:    .word off_802459C
off_802459C:    .word BG2Rotation_ScalingParameterA_dx_
    .word 0x0
    .word start_
    .word 0x20
// end of function sub_802457E

.thumb
sub_80245AC:
    push {lr}
    ldr r1, [pc, #0x80245bc-0x80245ae-2] // off_80245C0
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80245BC:    .word off_80245C0
off_80245C0:    .word sub_80245C8+1
    .word sub_8023120+1
// end of function sub_80245AC

.thumb
sub_80245C8:
    push {lr}
    bl sub_800C3C0
    bl sub_80245F6
    tst r0, r0
    beq loc_80245DC
    mov r2, #4
    strh r2, [r7]
    b loc_80245E6
loc_80245DC:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
loc_80245E6:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_80245C8

.thumb
sub_80245F6:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x44
    add r7, sp, #0
    bl sub_8009FCC
    add r7, r0, #0
    beq loc_802467A
    bl sub_800AB54
    str r0, [sp,#0x30]
    mov r4, #0
    mov r6, #0
loc_802460E:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x3c]
    str r1, [sp,#0x40]
    ldr r2, [sp,#0x30]
    add r0, r0, r2
    str r0, [sp,#0x34]
    str r1, [sp,#0x38]
    bl sub_8009E64
    beq loc_802465E
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x38]
    mov r2, #0x10
    ldr r3, [pc, #0x8024680-0x8024630-4] // =0xF800000
    bl sub_8009E78
    beq loc_802465E
    ldr r0, [sp,#0x34]
    ldr r1, [sp,#0x30]
    add r0, r0, r1
    ldr r1, [sp,#0x38]
    bl sub_8009A88
    tst r0, r0
    beq loc_802465E
    ldr r1, [r0,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_802465E
    ldr r0, [sp,#0x3c]
    ldr r1, [sp,#0x40]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_802465E:
    add r6, #1
    cmp r6, r7
    blt loc_802460E
    add r0, r4, #0
    beq loc_802467A
    bl sub_8001AF6
    add r1, r4, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_802467A:
    add sp, sp, #0x44
    pop {r4,r6,r7,pc}
    .byte 0, 0
dword_8024680:    .word 0xF800000
// end of function sub_80245F6

.thumb
sub_8024684:
    push {lr}
    ldr r1, [pc, #0x8024694-0x8024686-2] // off_8024698
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024694:    .word off_8024698
off_8024698:    .word sub_80246A0+1
    .word sub_80246DA+1
// end of function sub_8024684

.thumb
sub_80246A0:
    push {lr}
    bl sub_800C3C0
    bl sub_80246E4
    tst r0, r0
    beq loc_80246B4
loc_80246AE:
    mov r2, #4
    strh r2, [r7]
    b loc_80246CA
loc_80246B4:
    bl sub_800C3C0
    bl sub_8024734
    tst r0, r0
    bne loc_80246AE
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
loc_80246CA:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_80246A0

.thumb
sub_80246DA:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov pc, lr
// end of function sub_80246DA

.thumb
sub_80246E4:
    push {r6,r7,lr}
    sub sp, sp, #0x24
    str r2, [sp,#0x18]
    str r3, [sp,#0x1c]
    mov r0, #0
    str r0, [sp,#0x20]
    mov r6, #1
loc_80246F2:
    add r1, r6, #0
    bl sub_8024784
    bne loc_8024712
    ldr r2, [sp,#0x18]
    ldr r3, [sp,#0x1c]
    add r7, sp, #0
    ldr r0, [sp,#0x20]
    add r7, sp, #0
    add r7, r7, r0
    add r0, r6, #0
    bl sub_800A0DA
    ldr r1, [sp,#0x20]
    add r1, r1, r0
    str r1, [sp,#0x20]
loc_8024712:
    add r6, #1
    cmp r6, #3
    ble loc_80246F2
    ldr r0, [sp,#0x20]
    add r7, r0, #0
    beq loc_8024730
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024730:
    add sp, sp, #0x24
    pop {r6,r7,pc}
// end of function sub_80246E4

.thumb
sub_8024734:
    push {r6,r7,lr}
    sub sp, sp, #0x24
    str r2, [sp,#0x18]
    str r3, [sp,#0x1c]
    mov r0, #0
    str r0, [sp,#0x20]
    mov r6, #1
loc_8024742:
    add r1, r6, #0
    bl sub_80247A4
    beq loc_8024762
    ldr r2, [sp,#0x18]
    ldr r3, [sp,#0x1c]
    add r7, sp, #0
    ldr r0, [sp,#0x20]
    add r7, sp, #0
    add r7, r7, r0
    add r0, r6, #0
    bl sub_800A0DA
    ldr r1, [sp,#0x20]
    add r1, r1, r0
    str r1, [sp,#0x20]
loc_8024762:
    add r6, #1
    cmp r6, #3
    ble loc_8024742
    ldr r0, [sp,#0x20]
    add r7, r0, #0
    beq loc_8024780
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024780:
    add sp, sp, #0x24
    pop {r6,r7,pc}
// end of function sub_8024734

.thumb
sub_8024784:
    push {lr}
    mov r0, #1
loc_8024788:
    push {r0,r1}
    bl sub_8009A88
    ldrb r2, [r0]
    pop {r0,r1}
    cmp r2, #0xb
    beq loc_80247A0
    add r0, #1
    cmp r0, #6
    ble loc_8024788
    mov r0, #0
    pop {pc}
loc_80247A0:
    mov r0, #1
    pop {pc}
// end of function sub_8024784

.thumb
sub_80247A4:
    push {lr}
    mov r0, #1
loc_80247A8:
    push {r0,r1}
    bl sub_8009A88
    ldrb r2, [r0]
    pop {r0,r1}
    cmp r2, #0xb
    bne loc_80247C0
    add r0, #1
    cmp r0, #6
    ble loc_80247A8
    mov r0, #0
    pop {pc}
loc_80247C0:
    mov r0, #1
    pop {pc}
// end of function sub_80247A4

.thumb
sub_80247C4:
    push {lr}
    ldr r1, [pc, #0x80247d4-0x80247c6-2] // off_80247D8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80247D4:    .word off_80247D8
off_80247D8:    .word sub_80247E0+1
    .word sub_8023120+1
// end of function sub_80247C4

.thumb
sub_80247E0:
    push {lr}
    bl sub_800C3C0
    bl sub_8024812
    tst r0, r0
    beq loc_80247F4
    mov r2, #4
    strh r2, [r7]
    b loc_8024802
loc_80247F4:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800E860
    bl sub_800F6E0
loc_8024802:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_80247E0

.thumb
sub_8024812:
    push {r6,r7,lr}
    sub sp, sp, #0x3c
    ldrb r0, [r5,#0x16]
    str r2, [sp,#0x30]
    str r3, [sp,#0x34]
    add r7, sp, #0
    bl sub_800A210
    str r0, [sp,#0x38]
    tst r0, r0
    beq loc_802486C
    bl sub_800AB54
    add r6, r0, #0
    mov r4, #0
    mov r7, #0
loc_8024832:
    add r2, sp, #0
    ldrb r0, [r2,r4]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r0, r0, r6
    bl sub_8009EA4
    beq loc_802484E
    add r2, sp, #0
    ldrb r0, [r2,r4]
    add r2, sp, #0x18
    strb r0, [r2,r7]
    add r7, #1
loc_802484E:
    add r4, #1
    ldr r0, [sp,#0x38]
    cmp r4, r0
    blt loc_8024832
    add r0, r7, #0
    beq loc_802486C
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0x18
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_802486C:
    add sp, sp, #0x3c
    pop {r6,r7,pc}
// end of function sub_8024812

.thumb
sub_8024870:
    push {lr}
    ldr r1, [pc, #0x8024880-0x8024872-2] // off_8024884
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8024880:    .word off_8024884
off_8024884:    .word sub_802488C+1
    .word sub_8023120+1
// end of function sub_8024870

.thumb
sub_802488C:
    push {lr}
    bl sub_80248B6
    tst r0, r0
    beq loc_802489C
    mov r2, #4
    strh r2, [r7]
    b locret_80248B4
loc_802489C:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
locret_80248B4:
    pop {pc}
// end of function sub_802488C

.thumb
sub_80248B6:
    push {r6,r7,lr}
    sub sp, sp, #0x3c
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r2, [pc, #0x8024904-0x80248be-2] // off_8024908
    ldr r2, [r2,r0]
    mov r3, #0
    add r7, sp, #0
    bl sub_8009FCC
    str r0, [sp,#0x38]
    tst r0, r0
    beq loc_80248FE
    bl sub_800AB54
    neg r6, r0
    mov r4, #0
    mov r7, #0
loc_80248DA:
    add r2, sp, #0
    ldrb r0, [r2,r4]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r0, r0, r6
    mov r2, #0x10
    ldr r3, [pc, #0x8024910-0x80248e8-4] // =0xF800000
    bl sub_8009E78
    bne loc_80248FC
    add r4, #1
    ldr r0, [sp,#0x38]
    cmp r4, r0
    blt loc_80248DA
    mov r0, #0
    b loc_80248FE
loc_80248FC:
    mov r0, #1
loc_80248FE:
    add sp, sp, #0x3c
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8024904:    .word off_8024908
off_8024908:    .word LCDControl
    .word start_
dword_8024910:    .word 0xF800000
// end of function sub_80248B6

.thumb
sub_8024914:
    push {lr}
    ldr r1, [pc, #0x8024924-0x8024916-2] // off_8024928
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024924:    .word off_8024928
off_8024928:    .word sub_8024930+1
    .word sub_8023120+1
// end of function sub_8024914

.thumb
sub_8024930:
    push {lr}
    bl sub_800C3C0
    ldr r0, [r7,#8]
    tst r0, r0
    beq loc_802494E
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    bl sub_802496C
    tst r0, r0
    beq loc_802494E
    mov r2, #4
    strh r2, [r7]
    b loc_802495C
loc_802494E:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800E860
    bl sub_800F6E0
loc_802495C:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8024930

.thumb
sub_802496C:
    push {r6,r7,lr}
    sub sp, sp, #0x30
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    str r2, [sp,#0x28]
    str r3, [sp,#0x2c]
    mov r7, #0
    ldr r6, [pc, #0x80249e8-0x802497a-2] // byte_80249EC
loc_802497C:
    mov r0, #0
    ldrsb r0, [r6,r0]
    cmp r0, #0x7f
    beq loc_80249CC
    mov r1, #1
    ldrsb r1, [r6,r1]
    ldr r2, [sp,#0x20]
    add r0, r0, r2
    ldr r2, [sp,#0x24]
    add r1, r1, r2
    str r0, [sp,#0x18]
    str r1, [sp,#0x1c]
    mov r2, #0x10
    ldr r3, [pc, #0x8024a00-0x8024996-2] // =0xF800000
    bl sub_8009E78
    beq loc_80249C8
    bl sub_800AB54
    neg r0, r0
    mov r1, #3
    mul r0, r1
    ldr r1, [sp,#0x18]
    add r0, r0, r1
    str r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    ldr r2, [sp,#0x28]
    ldr r3, [sp,#0x2c]
    bl sub_8009E78
    beq loc_80249C8
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    strb r0, [r1,r7]
    add r7, #1
loc_80249C8:
    add r6, #2
    b loc_802497C
loc_80249CC:
    add r0, r7, #0
    beq loc_80249E2
    bl sub_8001AF6
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_80249E2:
    add sp, sp, #0x30
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80249E8:    .word byte_80249EC
byte_80249EC:    .byte 0x1
byte_80249ED:    .byte 0xFF
    .hword 0x1
    .word 0x1000101, 0xFF01FF, 0xFF00FFFF, 0x7F
dword_8024A00:    .word 0xF800000
// end of function sub_802496C

.thumb
sub_8024A04:
    push {lr}
    ldr r1, [pc, #0x8024a14-0x8024a06-2] // off_8024A18
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024A14:    .word off_8024A18
off_8024A18:    .word sub_8024A20+1
    .word sub_8023120+1
// end of function sub_8024A04

.thumb
sub_8024A20:
    push {lr}
    bl sub_800C3C0
    ldr r0, [r7,#8]
    tst r0, r0
    beq loc_8024A3E
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    bl sub_8024A5C
    tst r0, r0
    beq loc_8024A3E
    mov r2, #4
    strh r2, [r7]
    b loc_8024A4C
loc_8024A3E:
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800E860
    bl sub_800F6E0
loc_8024A4C:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {pc}
// end of function sub_8024A20

.thumb
sub_8024A5C:
    push {r4,lr}
    sub sp, sp, #0x30
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    str r2, [sp,#0x28]
    str r3, [sp,#0x2c]
    bl sub_800AB54
    neg r4, r0
    mov r1, #3
    mul r1, r4
    ldr r0, [sp,#0x20]
    add r0, r0, r1
    ldr r1, [sp,#0x24]
    str r0, [sp,#0x18]
    str r1, [sp,#0x1c]
    ldr r2, [sp,#0x28]
    ldr r3, [sp,#0x2c]
    bl sub_8009E78
    beq loc_8024AAA
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    mov r2, #0x10
    ldr r3, [pc, #0x8024ab0-0x8024a8c-4] // =0xF800000
    bl sub_8009E78
    beq loc_8024AAA
    add r4, r4, r4
    ldr r0, [sp,#0x20]
    add r0, r0, r4
    ldr r1, [sp,#0x24]
    ldr r2, [sp,#0x28]
    ldr r3, [sp,#0x2c]
    bl sub_8009E78
    beq loc_8024AAA
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
loc_8024AAA:
    add sp, sp, #0x30
    pop {r4,pc}
    .byte 0, 0
dword_8024AB0:    .word 0xF800000
// end of function sub_8024A5C

.thumb
sub_8024AB4:
    push {lr}
    ldr r1, [pc, #0x8024ac4-0x8024ab6-2] // off_8024AC8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8024AC4:    .word off_8024AC8
off_8024AC8:    .word sub_8024AD0+1
    .word sub_8023120+1
// end of function sub_8024AB4

.thumb
sub_8024AD0:
    push {r4,lr}
    bl sub_800C3C0
    ldr r4, [r7,#8]
    ldrb r0, [r4,#0x12]
    ldrb r1, [r4,#0x13]
    mov r4, #0
    bl sub_8024B08
    bne loc_8024AF4
    bl sub_800E860
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#3]
    bl sub_800F6E0
    b loc_8024AF8
loc_8024AF4:
    mov r2, #4
    strh r2, [r7]
loc_8024AF8:
    push {r0,r1}
    bl sub_800C1CC
    add r2, r0, #0
    pop {r0,r1}
    bl sub_800C96E
    pop {r4,pc}
// end of function sub_8024AD0

.thumb
sub_8024B08:
    push {lr}
    sub sp, sp, #0x34
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    str r2, [sp,#0x18]
    str r3, [sp,#0x1c]
    str r4, [sp,#0x28]
    mov r0, #0
    str r0, [sp,#0x20]
    str r0, [sp,#0x24]
    str r0, [sp,#0x2c]
    str r0, [sp,#0x30]
    ldrb r0, [r5,#0x16]
    bl loc_800AB56
    neg r0, r0
    str r0, [sp,#0x10]
    ldr r1, [sp,#8]
    add r1, r1, r0
    str r1, [sp,#8]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8024bc4-0x8024b34-4] // dword_8024BC8
    ldr r0, [r1,r0]
    str r0, [sp,#0x14]
loc_8024B3A:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_8009A52
    ldr r1, [sp,#0x14]
    tst r0, r1
    beq loc_8024B5C
    ldr r2, [sp,#8]
    str r2, [sp,#0x2c]
    ldr r2, [sp,#0xc]
    str r2, [sp,#0x30]
    ldr r0, [sp,#0x24]
    add r0, #1
    str r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bgt loc_8024BA2
loc_8024B5C:
    ldr r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bne loc_8024B90
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_8009EA4
    beq loc_8024BA2
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x18]
    ldr r3, [sp,#0x1c]
    bl sub_8009E78
    tst r0, r0
    beq loc_8024B90
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    ldr r2, [sp,#0x20]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x20]
loc_8024B90:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl sub_8009E64
    tst r0, r0
    bne loc_8024B3A
loc_8024BA2:
    ldr r0, [sp,#0x20]
    tst r0, r0
    beq loc_8024BBA
    bl sub_8001AF6
    ldr r1, [sp,#0x20]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8024BBA:
    ldr r2, [sp,#0x2c]
    ldr r3, [sp,#0x30]
    add sp, sp, #0x34
    pop {pc}
    .balign 4, 0x00
off_8024BC4:    .word dword_8024BC8
dword_8024BC8:    .word 0x5800000, 0xA800000, 0xF7FDB500, 0x4910FF92, 0xD00C4288
    .word 0x31FF211B, 0xD0084288, 0x72B82004, 0x81B82000, 0x72F820FF
    .word 0xF8BDF7E7, 0x8DF8E00C, 0xD1044200, 0x72F820FF, 0x85F82000
    .word 0x4903BD00, 0x58097B38, 0x470846FE, 0xBD00, 0x8024C1C
    .word 0xFFFF, 0x8024C25, 0x8024C79, 0x7DA8B550, 0x40482101
    .word 0xFBF5F7E7, 0x42002100, 0x7CC1D01F, 0x1A897CEA, 0x2001D105
    .word 0xFBB5F7E8, 0xFE8CF7E7, 0x7CC0E015, 0xF7E7B401, 0xBC01FBB7
    .word 0xF819F000, 0xD1034200, 0xFD40F7EA, 0xD0EC4200, 0xF7FEB403
    .word 0x1C02F853, 0xF7FEBC03, 0x2004F865, 0xBD5081B8, 0x2001B550
    .word 0xFB97F7E8, 0xFE6EF7E7, 0x81B82000, 0xB580BD50, 0xAF00B082
    .word 0xFA23F7E5, 0xD0081C07, 0xFF2DF7DC, 0xDF061C39, 0x5C40A800
    .word 0x7400901, 0xB0020F40, 0xBD80, 0xF7FDB500, 0x4910FF22
    .word 0xD00C4288, 0x31FF211C, 0xD0084288, 0x72B82004, 0x81B82000
    .word 0x72F820FF, 0xF84DF7E7, 0x8DF8E00C, 0xD1044200, 0x72F820FF
    .word 0x85F82000, 0x4903BD00, 0x58097B38, 0x470846FE, 0xBD00
    .word 0x8024CFC, 0xFFFF, 0x8024D05, 0x8024D7D, 0x7DA8B550
    .word 0x40482101, 0xFB85F7E7, 0x1C042100, 0xF7E5D031, 0x2103FF1D
    .word 0x42464348, 0x18407CA9, 0x42887CA1, 0x7CE0D10F, 0x42887CE9
    .word 0x202CD10B, 0xFB3BF7E8, 0xFE12F7E7, 0x33706DAB, 0x81182064
    .word 0x8158201E, 0xF7E7E017, 0x7CA0FB39, 0x7CE11980, 0xF7E5B403
    .word 0x4200F88F, 0xD105BC03, 0x81B82004, 0xFCBCF7EA, 0xD0064200
    .word 0xF7FDB403, 0x1C02FFCF, 0xF7FDBC03, 0xBD50FFE1, 0x202CB500
    .word 0xFB15F7E8, 0xFDECF7E7, 0x33706DAB, 0x81182064, 0x8158201E
    .word 0x81B82000, 0xBD00, 0xF7FDB500, 0x4910FEAC, 0xD00C4288
    .word 0x31FF211D, 0xD0084288, 0x72B82004, 0x81B82000, 0x72F820FF
    .word 0xFFD7F7E6, 0x8DF8E00C, 0xD1044200, 0x72F820FF, 0x85F82000
    .word 0x4903BD00, 0x58097B38, 0x470846FE, 0xBD00, 0x8024DE8
    .word 0xFFFF, 0x8024DF1, 0x8024E61, 0x7DA8B550, 0x40482101
    .word 0xFB0FF7E7, 0x1C042100, 0x7CE9D02D, 0x42917CE2, 0xF7E5D114
    .word 0x7CA9FEA3, 0x7CE91840, 0xFE38F7E4, 0x7DA97840, 0xD0094048
    .word 0xF7E82032, 0xF7E7FAC4, 0x6DABFD9B, 0x20143370, 0xE0148158
    .word 0xFAC4F7E7, 0x7CE17DA8, 0xF99DF7E5, 0xD1034200, 0xFC4CF7EA
    .word 0xD0E94200, 0x81BA2204, 0xF7FDB403, 0x1C02FF5D, 0xF7FDBC03
    .word 0xBD50FF6F, 0x2032B500, 0xFAA3F7E8, 0xFD7AF7E7, 0x33706DAB
    .word 0x8158201E, 0x81B82000, 0xBD00, 0xF7FDB500, 0x4915FE3C
    .word 0xD00C4288, 0x31FF2123, 0xD0084288, 0x72B82004, 0x81B82000
    .word 0x72F820FF, 0xFF67F7E6, 0x2080E019, 0xF869F7E7, 0xF7E72010
    .word 0x2002F97F, 0x20787270, 0x7AF086F0, 0xD10A2803, 0x73E82000
    .word 0x72F820FF, 0x30FF2083, 0x22002132, 0xFEABF7FD, 0xF000E001
    .word 0xBD00F803, 0xFFFF, 0xB085B510, 0xFA6EF7E7, 0x93039202
    .word 0xFF12F7FD, 0xF7E59004, 0x4240FE31, 0x18407CA9, 0x9A027CE9
    .word 0x90009B03, 0xF7E49101, 0x4200FFB9, 0x7DA8D10F, 0x490B0080
    .word 0x9B035808, 0x9A024303, 0x7CE97CA8, 0xF7EA4C06, 0x9000FC63
    .word 0x42009101, 0x9800D004, 0x9A049901, 0xFF04F7FD, 0xBD10B005
    .word 0x8024F48, 0x8024F40, 0x50000000, 0xA0000000, 0x100FF00
    .word 0x7F
// end of function sub_8024B08

.thumb
sub_8024F50:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x48]
    ldr r1, [pc, #0x8024f60-0x8024f56-2] // =0x3E0
    bl f900_8000910
    pop {pc}
    .byte 0, 0
off_8024F60:    .word 0x3E0
// end of function sub_8024F50

.thumb
sub_8024F64:
    push {lr}
    ldr r0, [pc, #0x8024f78-0x8024f66-2] // =0x220
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    ldr r1, [pc, #0x8024f7c-0x8024f6e-2] // =0x0
    bl f900_8000910
    pop {pc}
    .balign 4, 0x00
dword_8024F78:    .word 0x22A
dword_8024F7C:    .word 0x2
// end of function sub_8024F64

.thumb
sub_8024F80:
    push {lr}
    ldr r0, [pc, #0x8024f94-0x8024f82-2] // =0x220
    mov r1, r10
    ldr r1, [r1,#0x48]
    add r0, r0, r1
    ldr r1, [pc, #0x8024f98-0x8024f8a-2] // =0xA
    bl f900_8000910
    pop {pc}
    .balign 4, 0x00
off_8024F94:    .word 0x220
dword_8024F98:    .word 0xA
// end of function sub_8024F80

.thumb
sub_8024F9C:
    lsl r0, r0, #8
    orr r0, r1
// end of function sub_8024F9C

.thumb
sub_8024FA0:
    mov r3, r10
    ldr r3, [r3,#0x48]
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    orr r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_8024FA0

.thumb
sub_8024FB8:
    lsl r0, r0, #8
    orr r0, r1
// end of function sub_8024FB8

.thumb
sub_8024FBC:
    mov r3, r10
    ldr r3, [r3,#0x48]
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    bic r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_8024FBC

    lsl r0, r0, #8
    orr r0, r1
.thumb
sub_8024FD8:
    mov r3, r10
    ldr r3, [r3,#0x48]
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    eor r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_8024FD8

.thumb
sub_8024FF0:
    lsl r0, r0, #8
    orr r0, r1
// end of function sub_8024FF0

.thumb
sub_8024FF4:
    mov r3, r10
    ldr r3, [r3,#0x48]
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    tst r0, r1
    mov pc, lr
// end of function sub_8024FF4

.thumb
sub_802500A:
    lsl r0, r0, #8
    orr r0, r1
loc_802500E:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x48]
    add r5, r0, #0
loc_8025016:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    orr r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_8025016
    pop {r4,r5,pc}
// end of function sub_802500A

.thumb
sub_8025034:
    lsl r0, r0, #8
    orr r0, r1
loc_8025038:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x48]
    add r5, r0, #0
loc_8025040:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    bic r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_8025040
    pop {r4,r5,pc}
// end of function sub_8025034

    lsl r0, r0, #8
    orr r0, r1
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x48]
    add r5, r0, #0
loc_802506A:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    eor r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_802506A
    pop {r4,r5,pc}
    lsl r0, r0, #8
    orr r0, r1
.thumb
sub_802508C:
    push {r4-r7,lr}
    add r7, r2, #0
    mov r4, r10
    ldr r4, [r4,#0x48]
    add r5, r0, #0
    mov r6, #0
loc_8025098:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    tst r0, r1
    beq loc_80250B0
    add r6, #1
loc_80250B0:
    add r5, #1
    sub r2, #1
    bgt loc_8025098
    mov r0, #0
    cmp r6, r7
    bne loc_80250BE
    mov r0, #1
loc_80250BE:
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_802508C

.thumb
sub_80250C2:
    push {r7,lr}
    add r7, r0, #0
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    add r0, r7, #0
    add r0, #0x80
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldr r1, [pc, #0x80250ec-0x80250d6-2] // =0x15C0
    sub r7, r7, r1
    ldr r2, [pc, #0x8025140-0x80250da-2] // byte_2006EC0
    ldr r1, [pc, #0x8025144-0x80250dc-4] // dword_2001600
    ldr r0, [r1]
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1]
    pop {r7,pc}
    .word 0x1640
off_80250EC:    .word 0x15C0
// end of function sub_80250C2

.thumb
sub_80250F0:
    push {r3,r7,lr}
    add r7, r0, #0
    mov r1, #2
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    add r0, r7, #0
    ldr r3, [pc, #0x8025194-0x80250fe-2] // =0x1200
    sub r0, r0, r3
    ldr r3, [pc, #0x8025198-0x8025102-2] // =0x1400
    add r0, r0, r3
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    ldr r1, [pc, #0x8025194-0x802510c-4] // =0x1200
    sub r7, r7, r1
    lsr r3, r7, #6
    lsl r3, r3, #6
    ldr r2, [pc, #0x802519c-0x8025114-4] // unk_20017A0
    add r2, r2, r3
    lsr r3, r3, #4
    ldr r1, [pc, #0x80251a0-0x802511a-2] // unk_2001500
    ldr r0, [r1,r3]
    lsl r7, r7, #0x1a
    lsr r7, r7, #0x1a
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1,r3]
    pop {r3,r7,pc}
// end of function sub_80250F0

.thumb
sub_802512A:
    push {lr}
    ldr r0, [pc, #0x8025140-0x802512c-4] // byte_2006EC0
    mov r1, #0x80
    mov r2, #0x80
    bl f900_80009B4
    ldr r0, [pc, #0x8025144-0x8025136-2] // dword_2001600
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .byte 0, 0
off_8025140:    .word byte_2006EC0
off_8025144:    .word dword_2001600
// end of function sub_802512A

.thumb
sub_8025148:
    push {lr}
    ldr r0, [pc, #0x80251a4-0x802514a-2] // unk_20017A0
    ldr r1, [pc, #0x80251a8-0x802514c-4] // =0x200
    mov r2, #0x40 
    bl f900_80009B4
    ldr r0, [pc, #0x80251ac-0x8025154-4] // unk_2001500
    mov r1, #0x20 
    bl f900_8000930
    ldr r0, [pc, #0x80251b0-0x802515c-4] // unk_2001520
    mov r1, #0x20 
    bl f900_8000930
    pop {pc}
// end of function sub_8025148

    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #6
    ldr r1, [pc, #0x80251b4-0x802516c-4] // unk_20017A0
    add r0, r0, r1
    mov r1, #0x40 
    mov r2, #0x40 
    bl f900_80009B4
    lsl r0, r4, #2
    ldr r1, [pc, #0x80251b8-0x802517a-2] // unk_2001500
    add r0, r0, r1
    mov r1, #4
    bl f900_8000930
    lsl r0, r4, #2
    ldr r1, [pc, #0x80251bc-0x8025186-2] // unk_2001520
    add r0, r0, r1
    mov r1, #4
    bl f900_8000930
    pop {r4,pc}
    .balign 4, 0x00
off_8025194:    .word 0x1200
off_8025198:    .word 0x1400
off_802519C:    .word unk_20017A0
off_80251A0:    .word unk_2001500
off_80251A4:    .word unk_20017A0
off_80251A8:    .word 0x200
off_80251AC:    .word unk_2001500
off_80251B0:    .word unk_2001520
off_80251B4:    .word unk_20017A0
off_80251B8:    .word unk_2001500
off_80251BC:    .word unk_2001520
dword_80251C0:    .word 0x4, 0x3002C50, 0xFF0E000C, 0x80000842, 0x1, 0x80001084
    .word 0x1, 0x800018C6, 0x1, 0x80002108, 0x1, 0x8000294A
    .word 0x1, 0x8000318C, 0x1, 0x800039CE, 0x1, 0x80004210
    .word 0x1, 0x0
dword_8025210:    .word 0x4, 0x3002840, 0xFF01010C, 0x80000842, 0x1, 0x2, 0x80251D4
    .word 0x3002A50, 0x1C0, 0xFFFF0200, 0x87D9C0C, 0x4, 0x87D9DCC, 0x4
    .word 0x87D9FCC, 0x4, 0x87D9DCC, 0x4, 0x1
.thumb
sub_802525C:
    push {lr}
    ldr r0, [pc, #0x802529c-0x802525e-2] // byte_200B220
    mov r1, #0x28 
    bl f900_8000930
    pop {pc}
// end of function sub_802525C

.thumb
ho_cb_8025268:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802529c-0x802526a-2] // byte_200B220
    ldr r0, [pc, #0x8025284-0x802526c-4] // jt_8025288
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#(byte_200B226 - 0x200b220)]
    add r0, #1
    strb r0, [r5,#(byte_200B226 - 0x200b220)]
    bl sub_8001AE0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8025284:    .word jt_8025288
jt_8025288:    .word ho_cb_80252A0+1
    .word ho_cb_802530C+1
    .word ho_cb_802533C+1
    .word ho_80254B2+1
    .word sub_8025580+1
off_802529C:    .word byte_200B220
// end of function ho_cb_8025268

.thumb
ho_cb_80252A0:
    push {lr}
    mov r0, #0xd
    bl sub_8001BC8
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8025600-0x80252ac-4] // =0x1140
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0xc]
    strh r1, [r0,#0xe]
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x1a]
    strh r1, [r0,#0x18]
    bl sub_8025864
// end of function ho_cb_80252A0

    mov r0, #0xc
    mov r1, #0xff
    bl sub_8005ADC
    bl f500_80006CC
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0xf]
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x19]
    bl sub_803B20C
    bl sub_80487E8
    bne loc_80252F6
    bl sub_8000D20
    strb r0, [r5,#0xb]
    strb r1, [r5,#0xa]
    mov r0, #1
    strb r0, [r5,#0xf]
loc_80252F6:
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#8]
    add r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#0x16]
    strb r0, [r5,#0x18]
    mov r0, #0x10
    strh r0, [r5,#0x14]
    pop {pc}
.thumb
ho_cb_802530C:
    push {lr}
    ldr r0, [pc, #0x802531c-0x802530e-2] // jt_8025320
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_802531C:    .word jt_8025320
jt_8025320:    .word sub_8025324+1
// end of function ho_cb_802530C

.thumb
sub_8025324:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8025338-0x802532a-2] // =0x1740
    strh r1, [r0]
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    pop {pc}
off_8025338:    .word 0x1741
// end of function sub_8025324

.thumb
ho_cb_802533C:
    push {lr}
    ldr r0, [pc, #0x8025350-0x802533e-2] // jt_8025354
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8025854
    pop {pc}
    .byte 0, 0
off_8025350:    .word jt_8025354
jt_8025354:    .word cb_8025368+1
    .word cb_80253B0+1
    .word cb_802540C+1
    .word cb_8025420+1
    .word cb_8025480+1
// end of function ho_cb_802533C

.thumb
cb_8025368:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    ldr r0, [pc, #0x80253a4-0x8025370-4] // =0xA24
    strh r0, [r5,#4]
    mov r0, #0
    bl f500_800057E
    mov r0, #0xc
    bl sub_8001BC8
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x80253a8-0x8025384-4] // =0x1340
    strh r1, [r0]
    mov r0, #0
    strb r0, [r5,#6]
    bl sub_802594E
// end of function cb_8025368

    mov r0, #8
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    ldr r0, [pc, #0x80253ac-0x802539c-4] // dword_8025210+28
    bl sub_8002028
    pop {pc}
dword_80253A4:    .word 0xA46
off_80253A8:    .word 0x1340
off_80253AC:    .word dword_8025210+0x1C
.thumb
cb_80253B0:
    push {lr}
    bl sub_8025604
    ldrh r0, [r5,#4]
    cmp r0, #0
    bgt loc_80253CA
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    b locret_8025402
loc_80253CA:
    sub r0, #1
    strh r0, [r5,#4]
    ldr r1, [pc, #0x8025404-0x80253ce-2] // =0x12C
    cmp r0, r1
    bne loc_80253E2
    push {r0,r5}
    mov r0, #0x1f
    mov r1, #0x10
    bl f500_80005D2
    pop {r0,r5}
    b locret_8025402
loc_80253E2:
    ldrh r0, [r5,#4]
    ldr r1, [pc, #0x8025408-0x80253e4-4] // =0xA08
    cmp r0, r1
    bge locret_8025402
    bl sub_802572C
    ldrb r0, [r5,#6]
    mov r1, #0x1f
    and r0, r1
    cmp r0, #0xf
    bge locret_8025402
    mov r0, #0x4c 
    mov r1, #0x78 
    mov r2, #0
    bl sub_802596C
locret_8025402:
    pop {pc}
off_8025404:    .word 0x12C
dword_8025408:    .word 0xA0A
// end of function cb_80253B0

.thumb
cb_802540C:
    push {lr}
    bl sub_8025604
    bl sub_8025760
    bl _function_chunks_loc_802563C
    .byte 0
    .byte 0xF0
    .byte 0xDF
    .byte 0xF9
    .byte 0
    .byte 0xBD
// end of function cb_802540C

.thumb
cb_8025420:
    push {lr}
    bl sub_8025604
    ldrh r0, [r5,#4]
    cmp r0, #0
    ble loc_8025430
    bl _function_chunks_loc_802563C
loc_8025430:
    bl sub_8005B5C
    beq locret_802547E
    ldrh r0, [r5,#4]
    cmp r0, #0
    ble loc_8025466
    ldrb r0, [r5,#0x10]
    tst r0, r0
    beq loc_802544C
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    b locret_802547E
loc_802544C:
    ldrb r1, [r5,#8]
    tst r1, r1
    beq loc_8025460
    mov r0, #0
    mov r1, #0x6e 
    bl sub_8024FF0
    beq loc_8025460
    mov r0, #0xc
    b loc_8025462
loc_8025460:
    mov r0, #0x10
loc_8025462:
    strh r0, [r5]
    b loc_802547A
loc_8025466:
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x14
    strb r1, [r0]
    bl sub_8002008
    bl sub_8002534
    bl loc_802D6BC
loc_802547A:
    bl sub_8110A8C
locret_802547E:
    pop {pc}
// end of function cb_8025420

.thumb
cb_8025480:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8025490
    mov r0, #0x28 
    strb r0, [r5,#0x1a]
    mov r0, #4
    strb r0, [r5,#2]
loc_8025490:
    ldrb r0, [r5,#0x1a]
    sub r0, #1
    strb r0, [r5,#0x1a]
    bne locret_80254B0
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x3c 
    strb r1, [r0]
    bl sub_8002008
    bl sub_8002534
    bl sub_8110A8C
    bl sub_80404FC
locret_80254B0:
    pop {pc}
// end of function cb_8025480

.thumb
ho_80254B2:
    push {lr}
    ldr r0, [pc, #0x80254c0-0x80254b4-4] // jt_80254C4
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80254C0:    .word jt_80254C4
jt_80254C4:    .word cb_80254D4+1
    .word cb_80254EC+1
    .word cb_8025518+1
    .word cb_8025546+1
// end of function ho_80254B2

.thumb
cb_80254D4:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8025600-0x80254da-2] // =0x1140
    strh r1, [r0]
    mov r0, #8
    mov r1, #0xff
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function cb_80254D4

.thumb
cb_80254EC:
    push {lr}
    bl sub_8005B5C
    beq locret_8025512
    mov r3, r10
    ldr r2, [r3,#0x44]
    ldrb r2, [r2,#0xd]
    ldr r3, [r3,#0x2c]
    add r2, #2
    cmp r2, #0x63 
    ble loc_8025504
    mov r2, #0x63 
loc_8025504:
    str r2, [r3,#0x4c]
    ldr r0, [pc, #0x8025514-0x8025506-2] // aNn
    mov r1, #0x16
    bl sub_804E2A4
    mov r0, #8
    strb r0, [r5,#1]
locret_8025512:
    pop {pc}
off_8025514:    .word aNn
// end of function cb_80254EC

.thumb
cb_8025518:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8025544
    mov r0, #0xc
    mov r1, #0xff
    bl sub_8005ADC
    bl sub_80539B0
    cmp r0, #2
    beq loc_8025540
    cmp r0, #1
    bne loc_802553A
    mov r0, #2
    strb r0, [r5,#8]
loc_802553A:
    mov r0, #0x10
    strh r0, [r5]
    pop {pc}
loc_8025540:
    mov r0, #0xc
    strb r0, [r5,#1]
locret_8025544:
    pop {pc}
// end of function cb_8025518

.thumb
cb_8025546:
    push {lr}
    bl sub_8025604
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8025566
    mov r3, r10
    ldr r0, [r3,#8]
    ldr r1, [pc, #0x8025578-0x8025556-2] // =0x1340
    strh r1, [r0]
    mov r0, #8
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#2]
loc_8025566:
    bl sub_8005B5C
    beq locret_8025574
    mov r0, #0
    strb r0, [r5,#0xe]
    ldr r0, [pc, #0x802557c-0x8025570-4] // =0x808
    str r0, [r5]
locret_8025574:
    pop {pc}
    .balign 4, 0x00
off_8025578:    .word 0x1340
off_802557C:    .word 0x808
// end of function cb_8025546

.thumb
sub_8025580:
    push {lr}
    mov r0, #0x11
    mov r1, #0x8b
    bl sub_8024FB8
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_8025598
    mov r0, #0x28 
    strb r0, [r5,#0x1a]
    mov r0, #4
    strb r0, [r5,#1]
loc_8025598:
    ldrb r0, [r5,#0x1a]
    sub r0, #1
    strb r0, [r5,#0x1a]
    bne locret_80255FC
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    bl sub_80481A8
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8025600-0x80255b0-4] // =0x1140
    strh r1, [r0]
    ldrb r0, [r5,#8]
    tst r0, r0
    bne loc_80255D6
    bl sub_8002798
    bl sub_8004988
    bl sub_8004908
    ldrb r0, [r5,#0xf]
    tst r0, r0
    beq locret_80255FC
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024F9C
    b locret_80255FC
loc_80255D6:
    ldrb r0, [r5,#8]
    cmp r0, #1
    bne loc_80255EA
    bl sub_8004908
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024F9C
    b locret_80255FC
loc_80255EA:
    bl sub_8002798
    bl sub_8000DE0
    mov r0, #0x11
    mov r1, #0x66 
    bl sub_8024F9C
    b locret_80255FC
locret_80255FC:
    pop {pc}
    .byte 0, 0
off_8025600:    .word 0x1140
// end of function sub_8025580

.thumb
sub_8025604:
    push {lr}
    ldrb r0, [r5,#0x10]
    tst r0, r0
    beq loc_8025612
    bl sub_80412A8
    b locret_802563A
loc_8025612:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8025622
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_802563A
    bl sub_803B20C
loc_8025622:
    bl sub_80412A8
    beq loc_802562E
    cmp r0, #0x80
    beq locret_802563A
    b loc_8025632
loc_802562E:
    mov r0, #1
    strb r0, [r5,#0x10]
loc_8025632:
    mov r0, #0xf0
    strb r0, [r5,#0x19]
    bl sub_8110A8C
locret_802563A:
    pop {pc}
// end of function sub_8025604

_function_chunks_loc_802563C:
    push {r4,lr}
    ldrb r0, [r5,#0x10]
    tst r0, r0
    beq loc_8025654
    mov r0, #0x4c 
    mov r1, #0x76 
    mov r2, #0x19
    bl sub_802596C
    mov r0, #0x3a 
    mov r1, #0x77 
    b loc_8025700
loc_8025654:
    ldrb r0, [r5,#0xf]
    tst r0, r0
    bne loc_802566A
    mov r0, #0x64 
    mov r1, #0x76 
    mov r2, #3
    bl sub_802596C
    mov r0, #0x52 
    mov r1, #0x77 
    b loc_8025700
loc_802566A:
    mov r0, #0x64 
    mov r1, #0x6e 
    mov r2, #3
    ldrb r3, [r5,#8]
    bl sub_8025962
    ldrb r3, [r5,#8]
    mov r4, #1
    eor r4, r3
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrb r2, [r3,#0xd]
    tst r2, r2
    beq loc_80256DC
    add r2, #1
    cmp r2, #9
    bgt loc_802569E
    mov r0, #0x64 
    mov r1, #0x7f
    mov r3, #0xe
    add r2, r2, r3
    add r3, r4, #0
    bl sub_8025962
    mov r0, #0x6c 
    b loc_80256C8
loc_802569E:
    add r0, r2, #0
    mov r1, #0xa
    svc 6
    push {r0,r1}
    mov r0, #0x64 
    mov r1, #0x7f
    pop {r2}
    mov r3, #0xe
    add r2, r2, r3
    add r3, r4, #0
    bl sub_8025962
    mov r0, #0x6c 
    mov r1, #0x7f
    pop {r2}
    mov r3, #0xe
    add r2, r2, r3
    add r3, r4, #0
    bl sub_8025962
    mov r0, #0x74 
loc_80256C8:
    push {r0}
    mov r1, #0x7f
    mov r2, #0x18
    add r3, r4, #0
    bl sub_8025962
    pop {r0}
    mov r1, #0x40 
    add r0, r0, r1
    b loc_80256EA
loc_80256DC:
    mov r0, #0x64 
    mov r1, #0x7f
    mov r2, #4
    add r3, r4, #0
    bl sub_8025962
    mov r0, #0x84
loc_80256EA:
    mov r1, #0x7f
    mov r2, #5
    add r3, r4, #0
    bl sub_8025962
    mov r1, #0x6f 
    ldrb r0, [r5,#8]
    tst r0, r0
    beq loc_80256FE
    mov r1, #0x80
loc_80256FE:
    mov r0, #0x52 
loc_8025700:
    ldrb r3, [r5,#0x16]
    add r3, #1
    cmp r3, #6
    blt loc_8025716
    ldrb r3, [r5,#0x18]
    add r3, #1
    cmp r3, #2
    ble loc_8025712
    mov r3, #0
loc_8025712:
    strb r3, [r5,#0x18]
    mov r3, #0
loc_8025716:
    strb r3, [r5,#0x16]
    ldr r3, [pc, #0x8025724-0x8025718-4] // unk_8025728
    ldrb r2, [r5,#0x18]
    ldrb r2, [r3,r2]
    bl sub_802596C
    pop {r4,pc}
off_8025724:    .word unk_8025728
unk_8025728:    .byte 6
    .hword 0x1B1A
    .byte 0
.thumb
sub_802572C:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#4]
    ldrh r0, [r0,#2]
    mov r1, #8
    tst r1, r0
    beq locret_8025754
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#0xe]
    mov r0, #0x67 
    bl f500_8000558
    ldr r0, [pc, #0x8025758-0x8025748-4] // dword_80251C0
    bl sub_8002028
    ldr r0, [pc, #0x802575c-0x802574e-2] // dword_8025210
    bl sub_8002028
locret_8025754:
    pop {pc}
    .balign 4, 0x00
off_8025758:    .word dword_80251C0
off_802575C:    .word dword_8025210
// end of function sub_802572C

.thumb
sub_8025760:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #9
    tst r1, r0
    beq loc_802578C
    bl sub_8005B5C
    beq locret_80257D6
    bl f500_80006CC
    mov r0, #0x64 
    bl f500_8000558
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    b locret_80257D6
loc_802578C:
    ldrb r0, [r5,#0x10]
    tst r0, r0
    bne locret_80257D6
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r1, r0
    beq loc_80257B4
    ldrb r0, [r5,#8]
    add r1, r0, #0
    sub r0, #1
    bge loc_80257A6
    ldrb r0, [r5,#9]
    sub r0, #1
loc_80257A6:
    strb r0, [r5,#8]
    cmp r0, r1
    beq locret_80257D6
    mov r0, #0x66 
    bl f500_8000558
    b locret_80257D6
loc_80257B4:
    ldrh r0, [r7,#4]
    mov r1, #0x80
    tst r1, r0
    beq locret_80257D6
    ldrb r0, [r5,#8]
    add r1, r0, #0
    add r0, #1
    ldrb r2, [r5,#9]
    cmp r0, r2
    blt loc_80257CA
    mov r0, #0
loc_80257CA:
    strb r0, [r5,#8]
    cmp r0, r1
    beq locret_80257D6
    mov r0, #0x66 
    bl f500_8000558
locret_80257D6:
    pop {pc}
    .word dword_8025210+0x1C
// end of function sub_8025760

.thumb
sub_80257DC:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x14]
    sub r0, #1
    bpl loc_80257EE
    bl sub_8001AE0
    mov r1, #0xff
    and r0, r1
    add r0, #0xff
loc_80257EE:
    strh r0, [r5,#0x14]
    ldrb r0, [r5,#0xe]
    cmp r0, #8
    bge loc_80257F8
    add r0, #1
loc_80257F8:
    strb r0, [r5,#0xe]
    ldrb r4, [r5,#0xa]
    lsl r4, r4, #0x18
    mov r6, #0
loc_8025800:
    lsl r4, r4, #1
    bcc loc_8025834
    ldr r0, [pc, #0x802583c-0x8025804-4] // unk_8025844
    ldrb r0, [r0,r6]
    lsl r0, r0, #0x10
    mov r1, #8
    svc 6
    ldrb r1, [r5,#0xe]
    mul r0, r1
    lsr r0, r0, #0x10
    add r0, #6
    mov r1, #8
    mov r2, #7
    add r2, r2, r6
    ldrh r3, [r5,#0x14]
    sub r3, #0x10
    add r3, r3, r6
    bmi loc_802582E
    sub r3, #3
    bpl loc_802582E
    ldr r3, [pc, #0x8025840-0x8025828-4] // =0x802584B
    ldrb r3, [r3,r6]
    b loc_8025830
loc_802582E:
    mov r3, #0
loc_8025830:
    bl sub_8025962
loc_8025834:
    add r6, #1
    cmp r6, #7
    blt loc_8025800
    pop {r4,r6,pc}
off_802583C:    .word unk_8025844
dword_8025840:    .word 0x802584B
unk_8025844:    .byte 0
    .byte 0x16
    .byte 0x3C 
    .byte 0x62 
    .byte 0x88
    .byte 0xAE
    .byte 0xD2
    .byte 0xE
    .byte 0xD
    .byte 0xD
    .byte 0xD
    .byte 0xD
    .byte 0xD
    .byte 0xD
    .byte 0
    .byte 0
// end of function sub_80257DC

.thumb
sub_8025854:
    push {r4-r7,lr}
    mov r0, #8
    mov r1, #0x8c
    mov r2, #1
    bl sub_802596C
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
// end of function sub_8025854

.thumb
sub_8025864:
    push {r5,lr}
    bl sub_8001D04
    ldr r0, [pc, #0x80258a4-0x802586a-2] // off_80258A8
    ldr r1, [pc, #0x80258e0-0x802586c-4] // dword_80258E4
    ldr r2, [pc, #0x8025890-0x802586e-2] // word_2014000
    bl sub_8025908
    ldr r0, [pc, #0x8025894-0x8025874-4] // aNn
    mov r1, #0x15
    ldr r2, [pc, #0x8025898-0x8025878-4] // word_2014000
    ldr r3, [pc, #0x802589c-0x802587a-2] // =0x6010000
    mov r4, #9
    mov r5, #1
    ldr r6, [pc, #0x80258a0-0x8025880-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xDC
    .byte 0xF7
    .byte 0x7E 
    .byte 0xFA
    .byte 0x20
    .byte 0xBD
    .byte 0, 0
off_8025890:    .word word_2014000
off_8025894:    .word aNn
off_8025898:    .word word_2014000
dword_802589C:    .word 0x6010000
off_80258A0:    .word dword_868E224
off_80258A4:    .word off_80258A8
off_80258A8:    .word unk_87D948C
    .word unk_87D918C
    .word unk_87D97E0
    .word 0x887D9B6C, 0xA0, 0x87DA1CC, 0x887D9C0C, 0x1C0, 0x8868DD24
    .word 0x180, 0x8869F784, 0x20, 0x87D9564, 0x0
off_80258E0:    .word dword_80258E4
dword_80258E4:    .word 0x6010400, 0x6010800, 0x6011000, 0x3002640, 0x6000000
    .word 0x3002A50, 0x6012000, 0x30026E0, 0x6011800
// end of function sub_8025864

.thumb
sub_8025908:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r5, r2, #0
    mov r4, #0
loc_8025912:
    ldr r0, [r6,r4]
    tst r0, r0
    beq locret_802594C
    add r1, r0, #0
    lsl r1, r1, #1
    bcc loc_802592E
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, [r7,r4]
    tst r1, r1
    beq loc_8025948
    add r6, #4
    ldr r2, [r6,r4]
    b loc_8025944
loc_802592E:
    add r1, r5, #0
    bl dword_8111700
    add r0, r5, #0
    ldr r2, [r0]
    add r0, #4
    ldr r1, [r7,r4]
    tst r1, r1
    beq loc_8025948
    lsr r2, r2, #0xc
    lsl r2, r2, #4
loc_8025944:
    bl f900_80009A0
loc_8025948:
    add r4, #4
    b loc_8025912
locret_802594C:
    pop {r4-r7,pc}
// end of function sub_8025908

.thumb
sub_802594E:
    push {r5,lr}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8025b1c-0x8025956-2] // dword_87DDE08
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_802594E

    pop {r5,pc}
.thumb
sub_8025962:
    push {r4-r7,lr}
    ldr r4, [pc, #0x8025a04-0x8025964-4] // off_8025A08
    lsl r2, r2, #2
    ldr r2, [r4,r2]
    b loc_802597A
// end of function sub_8025962

.thumb
sub_802596C:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8025a04-0x802596e-2] // off_8025A08
    lsl r2, r2, #2
    ldr r2, [r3,r2]
    mov r3, #0
    b loc_802597A
loc_8025978:
    push {r4-r7,lr}
loc_802597A:
    sub sp, sp, #8
    add r4, r2, #0
    mov r5, #0
    add r6, r0, #0
    mov r7, sp
    strb r0, [r7]
    strb r1, [r7,#1]
    strb r3, [r7,#4]
    mov r0, #0
    strb r0, [r7,#5]
    ldrh r0, [r4,#2]
    strh r0, [r7,#2]
loc_8025992:
    add r0, r6, #0
    ldrb r1, [r7,#1]
    lsl r0, r0, #0x10
    orr r0, r1
    ldrh r1, [r7,#2]
    ldrb r2, [r4,#1]
    tst r2, r2
    beq loc_80259AC
    mov r2, #0x80
    lsl r2, r2, #8
    orr r0, r2
    add r1, r1, r5
    b loc_80259C0
loc_80259AC:
    ldrb r2, [r4]
    sub r2, r2, r5
    cmp r2, #2
    blt loc_80259C0
    mov r2, #0x40 
    lsl r2, r2, #8
    orr r0, r2
    add r5, #1
    sub r1, #1
    add r6, #8
loc_80259C0:
    add r1, r1, r5
    ldrb r2, [r4,#4]
    ldrb r3, [r7,#4]
    add r2, r2, r3
    lsl r2, r2, #0xc
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_802596C

    add r6, #8
    add r5, #1
    ldrb r1, [r4]
    cmp r5, r1
    blt loc_8025992
    ldrb r0, [r4,#5]
    tst r0, r0
    beq loc_8025A00
    ldrb r1, [r7,#5]
    tst r1, r1
    bne loc_8025A00
    add r1, #1
    strb r1, [r7,#5]
    ldrh r1, [r7,#2]
    add r1, r1, r0
    strh r1, [r7,#2]
    mov r5, #0
    ldrb r6, [r7]
    ldrb r0, [r7,#1]
    add r0, #8
    strb r0, [r7,#1]
    b loc_8025992
loc_8025A00:
    add sp, sp, #8
    pop {r4-r7,pc}
off_8025A04:    .word off_8025A08
off_8025A08:    .word dword_8025A78
    .word 0x8025A7E, 0x8025A84, 0x8025A84, 0x8025A8A, 0x8025A90
    .word 0x8025A96, 0x8025A9C, 0x8025AA2, 0x8025AA8, 0x8025AAE
    .word 0x8025AB4, 0x8025ABA, 0x8025AC0, 0x8025AC6, 0x8025ACC
    .word 0x8025AD2, 0x8025AD8, 0x8025ADE, 0x8025AE4, 0x8025AEA
    .word 0x8025AF0, 0x8025AF6, 0x8025AFC, 0x8025B02, 0x8025B08
    .word 0x8025B0E, 0x8025B14
dword_8025A78:    .word 0x10B, 0x1C0003, 0x1C0000C0, 0x400006, 0x41903, 0x1903004A
    .word 0x440002, 0x21903, 0x2050100, 0x800002, 0x41801, 0x18020082
    .word 0x860004, 0x41802, 0x1802008A, 0x8E0004, 0x41802, 0x18020092
    .word 0x960002, 0x11802, 0xA030020, 0x210001, 0x10A03, 0xA030022
    .word 0x230001, 0x10A03, 0xA030024, 0x250001, 0x10A03, 0xA030026
    .word 0x270001, 0x10A03, 0xA030028, 0x290001, 0x80A03, 0x19030046
    .word 0x4E000B, 0x21903, 0x2050104, 0x1080002, 0x205
off_8025B1C:    .word dword_87DDE08
off_8025B20:    .word unk_3003690
dword_8025B24:    .word 0x8
    .word unk_3003660
dword_8025B2C:    .word 0x4, 0x3002040, 0x200, 0x3003250, 0x4, 0x3003690, 0x8, 0x3003660
    .word 0x4, 0x3002040, 0xE0, 0x3003250, 0x4
.thumb
sub_8025B60:
    mov r0, #0
    b loc_8025B66
loc_8025B64:
    mov r0, #4
loc_8025B66:
    ldr r1, [pc, #0x8025ba0-0x8025b66-2] // off_8025BA4
    ldr r0, [r1,r0]
    push {r4,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x8025bb8-0x8025b6e-2] // dword_3003670
    mov r2, #0x20 
    bl f900_800098C
    mov r2, #0
    mvn r2, r2
    add r3, r4, #0
    mov r4, #4
loc_8025B7E:
    ldr r0, [r3]
    ldr r1, [r3,#4]
    bl f900_80009DC
    add r3, #8
    sub r4, #1
    cmp r4, #0
    bgt loc_8025B7E
    ldr r0, [pc, #0x8025bb4-0x8025b8e-2] // unk_3002240
    ldr r1, [pc, #0x8025bac-0x8025b90-4] // =0x400
    bl f900_8000950
    ldr r0, [pc, #0x8025bb0-0x8025b96-2] // dword_3002A40
    mov r1, #0
    str r1, [r0]
    pop {r4,pc}
    .byte 0, 0
off_8025BA0:    .word off_8025BA4
off_8025BA4:    .word off_8025B20
    .word dword_8025B2C+0x14
off_8025BAC:    .word 0x400
off_8025BB0:    .word dword_3002A40
off_8025BB4:    .word unk_3002240
off_8025BB8:    .word dword_3003670
// end of function sub_8025B60

.thumb
sub_8025BBC:
    push {lr}
    ldr r0, [pc, #0x8025bcc-0x8025bbe-2] // dword_3002E50
    ldr r1, [pc, #0x8025bd0-0x8025bc0-4] // =0x7000000
    ldr r2, [pc, #0x8025bd4-0x8025bc2-2] // =0x400
    bl f900_80009A0
    pop {pc}
    .balign 4, 0x00
off_8025BCC:    .word dword_3002E50
dword_8025BD0:    .word 0x7000000
off_8025BD4:    .word 0x400
// end of function sub_8025BBC

.thumb
sub_8025BD8:
    push {r4,lr}
    ldr r4, [pc, #0x8025be4-0x8025bda-2] // loc_30064CC+1
    mov lr, pc
    bx r4
    pop {r4,pc}
    .balign 4, 0x00
off_8025BE4:    .word loc_30064CC+1
// end of function sub_8025BD8

.thumb
sub_8025BE8:
    push {r4,lr}
    ldr r4, [pc, #0x8025bf4-0x8025bea-2] // loc_3006504+1
    mov lr, pc
    bx r4
    pop {r4,pc}
    .balign 4, 0x00
off_8025BF4:    .word loc_3006504+1
// end of function sub_8025BE8

.thumb
sub_8025BF8:
    ldr r3, [pc, #0x8025cf4-0x8025bf8-4] // dword_200A42C
    ldr r1, [r3]
    mov r2, #0x80
    lsl r2, r2, #0x18
    mov r0, #0
loc_8025C02:
    tst r1, r2
    beq loc_8025C10
    lsr r2, r2, #1
    add r0, #1
    cmp r0, #0x10
    bge loc_8025C16
    b loc_8025C02
loc_8025C10:
    orr r1, r2
    str r1, [r3]
    mov pc, lr
loc_8025C16:
    mov r0, #0xff
    mov pc, lr
// end of function sub_8025BF8

.thumb
sub_8025C1A:
    ldr r3, [pc, #0x8025cf4-0x8025c1a-2] // dword_200A42C
    ldr r1, [r3]
    mov r2, #0x80
    lsl r2, r2, #0x18
    lsr r2, r0
    bic r1, r2
    str r1, [r3]
    mov pc, lr
// end of function sub_8025C1A

.thumb
sub_8025C2A:
    push {r4-r7,lr}
    lsr r1, r1, #2
    lsr r2, r2, #2
    push {r0-r2}
    ldr r0, [pc, #0x8025cf8-0x8025c32-2] // word_200AB30
    add r6, r0, #0
    mov r1, #0xc
    mul r1, r3
    add r0, r0, r1
    add r3, #0x10
    mov r1, #0xc
    mul r1, r3
    add r6, r6, r1
    mov r5, #0
    mov r2, #0
    strb r2, [r6,#8]
    pop {r2}
    strb r2, [r0,#8]
    lsl r2, r2, #1
    pop {r3}
    add r7, r3, #0
    bl sub_8025CC0
    strb r3, [r0,#9]
    add r3, r7, #0
    ldr r1, [pc, #0x8025cbc-0x8025c5c-4] // word_8005DF8
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0]
    ldr r1, [pc, #0x8025cb8-0x8025c6e-2] // word_8005D78
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#2]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#2]
    pop {r3}
    add r7, r3, #0
    bl sub_8025CC0
    strb r3, [r0,#0xa]
    add r3, r7, #0
    ldr r1, [pc, #0x8025cbc-0x8025c8c-4] // word_8005DF8
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#6]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#6]
    ldr r1, [pc, #0x8025cb8-0x8025c9e-2] // word_8005D78
    ldrsh r4, [r1,r5]
    neg r4, r4
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#4]
    ldrsh r4, [r1,r2]
    neg r4, r4
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8025CB8:    .word word_8005D78
off_8025CBC:    .word word_8005DF8
// end of function sub_8025C2A

.thumb
sub_8025CC0:
    push {r1,r2}
    mov r1, #0x10
    lsl r1, r1, #4
    mov r2, #0
    cmp r3, #0
    beq loc_8025CD6
loc_8025CCC:
    cmp r1, r3
    blt loc_8025CD6
    sub r1, r1, r3
    add r2, #1
    b loc_8025CCC
loc_8025CD6:
    add r3, r2, #0
    pop {r1,r2}
    mov pc, lr
// end of function sub_8025CC0

.thumb
sub_8025CDC:
    push {lr}
    ldr r0, [pc, #0x8025cf4-0x8025cde-2] // dword_200A42C
    mov r1, #0
    str r1, [r0]
    ldr r0, [pc, #0x8025cf8-0x8025ce4-4] // word_200AB30
    ldr r1, [pc, #0x8025cf0-0x8025ce6-2] // =0x180
    bl f900_8000950
    pop {pc}
    .byte 0, 0
off_8025CF0:    .word 0x180
off_8025CF4:    .word dword_200A42C
off_8025CF8:    .word word_200AB30
// end of function sub_8025CDC

.thumb
sub_8025CFC:
    push {r5-r7,lr}
    mov r5, r8
    mov r6, r9
    mov r7, r12
    push {r5-r7}
    push {r3,r4}
    push {r0-r2}
    mov r5, r10
    ldr r5, [r5,#0xc]
    ldrb r0, [r5,#3]
    ldr r1, [r5,#0x10]
    push {r0,r1,r5}
    mov r0, r10
    ldr r0, [r0,#0xc]
    mov r1, #0x48 
    bl f900_8000930
    pop {r0,r1,r5}
    strb r0, [r5,#3]
    str r1, [r5,#0x10]
    ldr r0, [pc, #0x8025d90-0x8025d24-4] // byte_200D8E0
    ldrb r3, [r0]
    sub r3, #0x1e
    lsl r3, r3, #0x12
    str r3, [r5,#0x18]
    neg r3, r3
    str r3, [r5,#0x14]
    ldrb r3, [r0,#(byte_200D8E1 - 0x200d8e0)]
    sub r3, #0x14
    lsl r3, r3, #0x12
    str r3, [r5,#0x1c]
    neg r3, r3
    str r3, [r5,#0x20]
    pop {r1-r3}
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    str r3, [r5,#0x34]
    mov r1, #0
    strh r1, [r5,#4]
    strh r1, [r5,#6]
    pop {r0,r1}
    cmp r0, #0xf0
    bge loc_8025D60
    cmp r0, #0x80
    bge loc_8025D5A
    ldr r3, [pc, #0x8025d88-0x8025d56-2] // off_80290A0
    b loc_8025D64
loc_8025D5A:
    ldr r3, [pc, #0x8025d8c-0x8025d5a-2] // dword_80290B8
    sub r0, #0x80
    b loc_8025D64
loc_8025D60:
    mov r0, #0xc
    b loc_8025D6A
loc_8025D64:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldr r0, [r3,r1]
loc_8025D6A:
    strb r0, [r5,#2]
    bl sub_8025F34
    bl sub_8025DF4
    bl sub_8025FEA
    bl sub_8025EA4
    pop {r5-r7}
    mov r8, r5
    mov r9, r6
    mov r12, r7
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8025D88:    .word off_80290A0
off_8025D8C:    .word dword_80290B8
off_8025D90:    .word byte_200D8E0
// end of function sub_8025CFC

.thumb
ho_8025D94:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    mov r5, r10
    ldr r5, [r5,#0xc]
    ldr r0, [pc, #0x8025dd0-0x8025da2-2] // off_8025DD4
    ldrb r1, [r5,#3]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8025F34
    bl sub_8025DF4
    ldr r0, [pc, #0x8025ddc-0x8025db6-2] // jt_8025DE0
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8025EA4
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r4-r7,pc}
    .byte 0, 0
off_8025DD0:    .word off_8025DD4
off_8025DD4:    .word nullsub_54+1
    .word sub_8025EB0+1
off_8025DDC:    .word jt_8025DE0
jt_8025DE0:    .word sub_8025EC0+1
    .word sub_8025EE2+1
    .word sub_8025EC0+1
    .word sub_8025EE2+1
    .word sub_8025F00+1
// end of function ho_8025D94

.thumb
sub_8025DF4:
    push {lr}
    ldr r0, [pc, #0x8025e04-0x8025df6-2] // loc_8025E08
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8025E04:    .word loc_8025E08
// end of function sub_8025DF4

loc_8025E08:
    ldrsh r5, [r3,r0]
    lsr r2, r0, #0x20
    ldrsh r5, [r3,r0]
    lsr r2, r0, #0x20
    ldrsh r5, [r3,r0]
    lsr r2, r0, #0x20
    ldrsh r5, [r1,r1]
    lsr r2, r0, #0x20
    ldrsh r5, [r3,r0]
    lsr r2, r0, #0x20
    mov r1, #0
    ldr r4, [r5,#0x38]
    sub r1, r1, r4
    mov r6, #0
    ldr r4, [r5,#0x3c]
    sub r6, r6, r4
    add r7, r6, #0
    mov r8, r1
    add r1, r1, r6
    asr r1, r1, #0x10
    neg r1, r1
    strh r1, [r5,#4]
    add r6, r7, #0
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    mov r4, #0
    sub r6, r6, r4
    ldr r2, [r5,#0x40]
    add r6, r6, r2
    asr r6, r6, #0x10
    neg r6, r6
    strh r6, [r5,#6]
    mov pc, lr
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x14]
    cmp r1, r2
    bge loc_8025E56
    add r1, r2, #0
loc_8025E56:
    ldr r2, [r5,#0x18]
    cmp r1, r2
    ble loc_8025E5E
    add r1, r2, #0
loc_8025E5E:
    str r1, [r5,#0x38]
    asr r1, r1, #0x10
    strh r1, [r5,#4]
    ldr r6, [r5,#0x40]
    ldr r4, [r5,#0x3c]
    ldr r2, [r5,#0x20]
    add r2, r2, r6
    cmp r4, r2
    bge loc_8025E72
    add r4, r2, #0
loc_8025E72:
    ldr r2, [r5,#0x1c]
    add r2, r2, r6
    cmp r4, r2
    ble loc_8025E7C
    add r4, r2, #0
loc_8025E7C:
    str r4, [r5,#0x3c]
    add r6, r4, #0
    ldr r4, [r5,#0x40]
    ldr r2, [r5,#0x20]
    add r2, r2, r6
    str r2, [r5,#0x28]
    cmp r4, r2
    bge loc_8025E8E
    add r4, r2, #0
loc_8025E8E:
    ldr r2, [r5,#0x1c]
    add r2, r2, r6
    str r2, [r5,#0x24]
    cmp r4, r2
    ble loc_8025E9A
    add r4, r2, #0
loc_8025E9A:
    str r4, [r5,#0x40]
    sub r6, r6, r4
    asr r6, r6, #0x10
    strh r6, [r5,#6]
    mov pc, lr
.thumb
sub_8025EA4:
    ldrh r1, [r5,#4]
    strh r1, [r5,#8]
    ldrh r1, [r5,#6]
    strh r1, [r5,#0xa]
    mov pc, lr
// end of function sub_8025EA4

.thumb
nullsub_54:
    mov pc, lr
// end of function nullsub_54

.thumb
sub_8025EB0:
    ldr r7, [r5,#0x10]
    ldr r2, [r7]
    str r2, [r5,#0x2c]
    ldr r2, [r7,#4]
    str r2, [r5,#0x30]
    ldr r2, [r7,#8]
    str r2, [r5,#0x34]
    mov pc, lr
// end of function sub_8025EB0

.thumb
sub_8025EC0:
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x10]
    add r6, r6, r1
    ldrh r7, [r0,#0x12]
    add r7, r7, r4
    strh r6, [r0,#0x10]
    strh r7, [r0,#0x12]
    strh r6, [r0,#0x14]
    strh r7, [r0,#0x16]
    mov pc, lr
// end of function sub_8025EC0

.thumb
sub_8025EE2:
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x14]
    add r6, r6, r1
    ldrh r7, [r0,#0x16]
    add r7, r7, r4
    strh r6, [r0,#0x14]
    strh r7, [r0,#0x16]
    mov pc, lr
// end of function sub_8025EE2

.thumb
sub_8025F00:
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x10]
    add r6, r6, r1
    ldrh r7, [r0,#0x12]
    add r7, r7, r4
    strh r6, [r0,#0x10]
    strh r7, [r0,#0x12]
    mov pc, lr
// end of function sub_8025F00

.thumb
sub_8025F1E:
    mov r2, r10
    ldr r2, [r2,#0xc]
    strb r0, [r2,#3]
    str r1, [r2,#0x10]
    mov pc, lr
// end of function sub_8025F1E

.thumb
sub_8025F28:
    mov r3, r10
    ldr r3, [r3,#0xc]
    str r0, [r3,#0x2c]
    str r1, [r3,#0x30]
    str r2, [r3,#0x34]
    mov pc, lr
// end of function sub_8025F28

.thumb
sub_8025F34:
    push {lr}
    mov r0, r10
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #8
    bne loc_8025F4E
    bl sub_8007920
    bne loc_8025F4E
    bl sub_80078C4
    tst r0, r0
    bne loc_8025FA0
loc_8025F4E:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq loc_8025FA0
    ldrh r6, [r5,#0xe]
    lsl r6, r6, #3
    ldr r7, [pc, #0x8025fb8-0x8025f58-4] // unk_8025FBC
    add r7, r7, r6
    sub r1, r0, #1
    strh r1, [r5,#0xc]
    bl sub_8001AE0
    ldr r2, [r7]
    and r0, r2
    lsl r0, r0, #0x10
    ldr r2, [r7,#4]
    sub r0, r0, r2
    ldr r2, [r5,#0x2c]
    add r2, r2, r0
    str r2, [r5,#0x38]
    mov r4, #0
    str r4, [r5,#0x44]
    ldr r4, [pc, #0x8025fb4-0x8025f78-4] // byte_200A3C8
    ldrb r4, [r4]
    tst r4, r4
    beq loc_8025F86
    neg r0, r0
    lsl r0, r0, #1
    str r0, [r5,#0x44]
loc_8025F86:
    bl sub_8001AE0
    ldr r2, [r7]
    and r0, r2
    lsl r0, r0, #0x10
    ldr r2, [r7,#4]
    sub r0, r0, r2
    ldr r2, [r5,#0x30]
    add r2, r2, r0
    str r2, [r5,#0x3c]
    ldr r2, [r5,#0x34]
    str r2, [r5,#0x40]
    pop {pc}
loc_8025FA0:
    ldr r2, [r5,#0x2c]
    str r2, [r5,#0x38]
    ldr r2, [r5,#0x30]
    str r2, [r5,#0x3c]
    ldr r2, [r5,#0x34]
    str r2, [r5,#0x40]
    mov r2, #0
    str r2, [r5,#0x44]
    pop {pc}
    .balign 4, 0x00
off_8025FB4:    .word byte_200A3C8
off_8025FB8:    .word unk_8025FBC
unk_8025FBC:    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0
    .byte 0xF
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 8
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x21 
// end of function sub_8025F34

.thumb
sub_8025FE0:
    mov r2, r10
    ldr r2, [r2,#0xc]
    strh r0, [r2,#0xe]
    strh r1, [r2,#0xc]
    mov pc, lr
// end of function sub_8025FE0

.thumb
sub_8025FEA:
    push {lr}
    ldr r0, [pc, #0x8025ff8-0x8025fec-4] // loc_8025FFC
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8025FF8:    .word loc_8025FFC
// end of function sub_8025FEA

loc_8025FFC:
    str r1, [r2]
    lsr r2, r0, #0x20
    str r1, [r2]
    lsr r2, r0, #0x20
    str r7, [r5]
    lsr r2, r0, #0x20
    str r7, [r1,#4]
    lsr r2, r0, #0x20
    str r7, [r6,#4]
    lsr r2, r0, #0x20
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x14]
    strh r1, [r3,#0x18]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    strh r2, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x14]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    mov r1, #0
    strh r1, [r3,#0x18]
    strh r1, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x14]
    strh r1, [r3,#0x18]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    strh r2, [r3,#0x1a]
    mov r1, #0
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x12]
    strh r1, [r3,#0x18]
    strh r1, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    and r2, r4
    strh r2, [r3,#0x12]
    mov r1, #0
    strh r1, [r3,#0x14]
    strh r1, [r3,#0x16]
    strh r1, [r3,#0x18]
    strh r1, [r3,#0x1a]
    mov pc, lr
    .balign 4, 0x00
.thumb
sub_8026098:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    ldr r5, [pc, #0x8026268-0x80260a2-2] // byte_200D8E0
    cmp r0, #0x80
    bge loc_80260AE
    ldr r3, [pc, #0x80260f4-0x80260a8-4] // dword_8027CEC+1388
    ldr r4, [pc, #0x80260f8-0x80260aa-2] // off_8028858
    b loc_80260B4
loc_80260AE:
    ldr r3, [pc, #0x80260fc-0x80260ae-2] // dword_8027CEC+1412
    ldr r4, [pc, #0x8026100-0x80260b0-4] // off_8028870
    sub r0, #0x80
loc_80260B4:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    mov r2, #0xc
    mul r2, r1
    add r3, r3, r2
    str r3, [r5,#(dword_200D8E8 - 0x200d8e0)]
    ldr r4, [r4,r0]
    mov r2, #0xc
    mul r2, r1
    add r4, r4, r2
    ldr r2, [r4]
    str r2, [r5,#(dword_200D8F8 - 0x200d8e0)]
    ldr r2, [r4,#4]
    str r2, [r5,#(dword_200D8FC - 0x200d8e0)]
    ldr r2, [r4,#8]
    str r2, [r5,#(dword_200D900 - 0x200d8e0)]
    ldr r0, [r3,#8]
    ldr r1, [pc, #0x8026184-0x80260d6-2] // word_2014000
    ldrb r2, [r0]
    strb r2, [r5]
    ldrb r2, [r0,#1]
    strb r2, [r5,#(byte_200D8E1 - 0x200d8e0)]
    ldr r2, [r3,#4]
    str r2, [r5,#(dword_200D8F0 - 0x200d8e0)]
    ldr r2, [r3]
    str r2, [r5,#(dword_200D8F4 - 0x200d8e0)]
    str r1, [r5,#(dword_200D8EC - 0x200d8e0)]
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_80260F4:    .word dword_8027CEC+0x56C
off_80260F8:    .word off_8028858
off_80260FC:    .word dword_8027CEC+0x584
off_8026100:    .word off_8028870
// end of function sub_8026098

.thumb
sub_8026104:
    ldr r1, [pc, #0x8026268-0x8026104-4] // byte_200D8E0
    mov r0, #0x20 
    strb r0, [r1]
    strb r0, [r1,#(byte_200D8E1 - 0x200d8e0)]
    mov pc, lr
// end of function sub_8026104

.thumb
sub_802610E:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8026268-0x8026118-4] // byte_200D8E0
    ldr r0, [r5,#(dword_200D8F0 - 0x200d8e0)]
    mov r2, #0xd
    lsl r2, r2, #5
    add r0, #4
    ldr r1, [pc, #0x802617c-0x8026122-2] // word_3002A50
    bl f900_80009A0
    mov r0, #0
    ldr r7, [r5,#(dword_200D8F4 - 0x200d8e0)]
    add r6, r7, #0
loc_802612E:
    push {r0,r6}
    ldr r0, [r7,#4]
    add r0, r0, r6
    ldr r1, [pc, #0x8026184-0x8026134-4] // word_2014000
    bl dword_8111700
    ldr r0, [pc, #0x8026184-0x802613a-2] // word_2014000
    ldr r1, [r7,#8]
    ldr r2, [pc, #0x8026180-0x802613e-2] // =0x6000000
    add r1, r1, r2
    ldr r2, [r7]
    lsl r2, r2, #2
    bl f900_80009A0
    add r7, #0xc
    pop {r0,r6}
    add r0, #1
    cmp r0, #2
    blt loc_802612E
    ldr r3, [r5,#(dword_200D8E8 - 0x200d8e0)]
    ldr r0, [r3,#8]
    ldr r1, [pc, #0x8026184-0x8026158-4] // word_2014000
    mov r2, #0xc
    push {r0,r1}
    bl f900_800098C
    pop {r0,r1}
    add r0, #0xc
    add r1, #0xc
    bl dword_8111700
    ldr r0, [r5,#(dword_200D8FC - 0x200d8e0)]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_802617C:    .word word_3002A50
dword_8026180:    .word 0x6000000
off_8026184:    .word word_2014000
// end of function sub_802610E

.thumb
sub_8026188:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    add r5, r0, #0
    ldr r0, [r5]
    tst r0, r0
    beq loc_80261B0
    ldr r7, [r5]
    ldr r0, [r7,#4]
    add r0, r0, r7
    ldr r1, [r5,#4]
    bl dword_8111700
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    add r0, #0xc
    bl dword_8111700
loc_80261B0:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
// end of function sub_8026188

.thumb
sub_80261BA:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    add r5, r0, #0
    ldr r0, [r5]
    tst r0, r0
    beq loc_80261F8
    ldr r0, [r5,#0x18]
    add r0, #4
    ldr r1, [r5,#0x1c]
    ldr r2, [r5,#0x20]
    bl f900_80009A0
    ldr r7, [r5]
    ldr r0, [r5,#4]
    ldr r1, [r5,#8]
    ldr r2, [r7]
    lsl r2, r2, #2
    bl f900_80009A0
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x14]
    ldr r3, [r5,#0xc]
    ldrb r2, [r3]
    ldrb r3, [r3,#1]
    mul r2, r3
    lsl r2, r2, #1
    bl f900_80009A0
loc_80261F8:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_2012800
// end of function sub_80261BA

.thumb
sub_8026208:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r5, [pc, #0x8026268-0x8026216-2] // byte_200D8E0
    mov r4, #4
    ldrsh r0, [r3,r4]
    mov r4, #6
    ldrsh r1, [r3,r4]
    asr r0, r0, #3
    asr r1, r1, #3
    mov r4, #(word_200D8E4 - 0x200d8e0)
    ldrsh r2, [r5,r4]
    cmp r0, r2
    beq loc_8026244
    bgt loc_802623A
    sub r2, r2, r0
    push {r0,r1}
    bl sub_80262F6
    pop {r0,r1}
    b loc_8026244
loc_802623A:
    sub r2, r0, r2
    push {r0,r1}
    bl sub_8026350
    pop {r0,r1}
loc_8026244:
    mov r4, #(word_200D8E6 - 0x200d8e0)
    ldrsh r2, [r5,r4]
    cmp r1, r2
    beq loc_802625C
    bgt loc_8026256
    sub r2, r2, r1
    bl sub_80263AA
    b loc_802625C
loc_8026256:
    sub r2, r1, r2
    bl loc_8026404
loc_802625C:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8026268:    .word byte_200D8E0
// end of function sub_8026208

.thumb
sub_802626C:
    cmp r0, #0
    bge loc_8026272
    b loc_80262AA
loc_8026272:
    ldrb r6, [r5]
    cmp r0, r6
    blt loc_802627A
    b loc_80262AA
loc_802627A:
    cmp r1, #0
    bge loc_8026280
    b loc_80262AA
loc_8026280:
    ldrb r6, [r5,#1]
    cmp r1, r6
    blt loc_8026288
    b loc_80262AA
loc_8026288:
    ldr r3, [r5,#0xc]
    mov r4, #8
    ldrb r7, [r5]
    lsl r7, r7, #1
loc_8026290:
    ldr r2, [r3,r4]
    add r2, r2, r3
    lsl r6, r0, #1
    add r2, r2, r6
    add r6, r1, #0
    mul r6, r7
    ldrh r2, [r2,r6]
    push {r2}
    sub r4, #4
    cmp r4, #0
    bgt loc_8026290
    pop {r0,r1}
    mov pc, lr
loc_80262AA:
    mov r0, #0
    mov r1, #0
    b loc_8026288
// end of function sub_802626C

.thumb
sub_80262B0:
    push {r0,r1}
    mov r2, #1
loc_80262B4:
    pop {r0}
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r0, [r7,r6]
    add r2, #1
    cmp r2, #2
    ble loc_80262B4
    mov pc, lr
// end of function sub_80262B0

.thumb
sub_80262CE:
    mov r2, #2
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r1, [r7,r6]
    mov pc, lr
// end of function sub_80262CE

.thumb
sub_80262E2:
    mov r2, #1
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r1, [r7,r6]
    mov pc, lr
// end of function sub_80262E2

.thumb
sub_80262F6:
    push {lr}
    strh r0, [r5,#4]
    cmp r2, #5
    blt loc_8026306
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_802634E
loc_8026306:
    push {r1}
    mov r7, #0
loc_802630A:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_802626C
    mov r4, r9
    mov r3, r8
    sub r3, #0x20 
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r1, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_802630A
    pop {r1}
    add r0, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_8026306
locret_802634E:
    pop {pc}
// end of function sub_80262F6

.thumb
sub_8026350:
    push {lr}
    strh r0, [r5,#4]
    cmp r2, #5
    blt loc_8026360
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_80263A8
loc_8026360:
    push {r1}
    mov r7, #0
loc_8026364:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    add r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_802626C
    mov r4, r9
    mov r3, r8
    add r3, #0x1e
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r1, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_8026364
    pop {r1}
    sub r0, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_8026360
locret_80263A8:
    pop {pc}
// end of function sub_8026350

.thumb
sub_80263AA:
    push {lr}
    strh r1, [r5,#6]
    cmp r2, #5
    blt loc_80263BA
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_8026402
loc_80263BA:
    push {r0}
    mov r7, #0
loc_80263BE:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_802626C
    mov r4, r9
    mov r3, r8
    sub r4, #0x20 
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r0, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_80263BE
    pop {r0}
    add r1, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_80263BA
locret_8026402:
    pop {pc}
// end of function sub_80263AA

loc_8026404:
    push {lr}
    strh r1, [r5,#6]
    cmp r2, #5
    blt loc_8026414
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b dword_802645C
loc_8026414:
    push {r0}
    mov r7, #0
loc_8026418:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    add r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_802626C
    mov r4, r9
    mov r3, r8
    add r4, #0x14
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r0, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_8026418
    pop {r0}
    sub r1, #1
    sub r2, #1
    .word 0xDCDB2A00
dword_802645C:    .word 0xBD00
loc_8026460:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0xc]
    mov r1, #4
    ldrsh r3, [r0,r1]
    mov r1, #6
    ldrsh r4, [r0,r1]
    asr r3, r3, #3
    asr r4, r4, #3
    strh r3, [r5,#4]
    strh r4, [r5,#6]
    mov r1, #0
loc_8026478:
    push {r3}
    mov r0, #0
loc_802647C:
    push {r0,r1}
    add r0, r3, #0
    add r1, r4, #0
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    mov r8, r3
    mov r9, r4
    bl sub_802626C
    mov r3, r8
    mov r4, r9
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    mov r3, r8
    mov r4, r9
    add r3, #1
    pop {r0,r1}
    add r0, #1
    cmp r0, #0x20 
    blt loc_802647C
    pop {r3}
    add r4, #1
    add r1, #1
    cmp r1, #0x20 
    blt loc_8026478
    pop {pc}
    mov r2, #0
    mov r3, #8
    ldr r6, [pc, #0x8026544-0x80264c8-4] // dword_8026550
    b loc_80264DA
    mov r2, #4
    mov r3, #8
    ldr r6, [pc, #0x8026548-0x80264d0-4] // dword_8026550
    b loc_80264DA
    mov r2, #4
    mov r3, #8
    ldr r6, [pc, #0x802654c-0x80264d8-4] // dword_8026554
loc_80264DA:
    push {r5,lr}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    push {r3,r6}
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    ldrb r7, [r5]
    lsl r7, r7, #1
    lsl r0, r0, #1
    mul r1, r7
    add r0, r0, r1
    pop {r4,r6}
    ldr r2, [r5,#0xc]
    ldrb r7, [r5]
    lsl r7, r7, #1
loc_8026506:
    ldr r3, [r2,r4]
    add r3, r3, r2
    add r3, r3, r0
    mov r1, #0
    push {r0,r2}
loc_8026510:
    push {r1,r3,r4,r7}
    mov r0, r8
    mov r1, r9
    mov r7, #0x1f
    and r0, r7
    and r1, r7
    lsr r2, r4, #2
    sub r2, #1
    ldrb r2, [r6,r2]
    mov r4, #0x20 
    bl sub_8001E14
    mov r1, #1
    add r9, r1
    pop {r1,r3,r4,r7}
    add r0, #1
    add r3, r3, r7
    add r1, #1
    cmp r1, #0x20 
    blt loc_8026510
    pop {r0,r2}
    sub r4, #4
    mov r3, r12
    cmp r4, r3
    bgt loc_8026506
    pop {r5,pc}
off_8026544:    .word dword_8026550
dword_8026548:    .word 0x8026552
off_802654C:    .word dword_8026554
dword_8026550:    .word 0x2010201
dword_8026554:    .word 0x102
dword_8026558:    .word 0x80542F5, 0x8056E79, 0x8059285, 0x805D4F9, 0x8062771
    .word 0x8067B89
dword_8026570:    .word 0x8054397, 0x8056F01, 0x805931D, 0x805D5BF, 0x806283F
    .word 0x8067C15
off_8026588:    .word sub_8069450+1
    .word sub_806A87C+1
    .byte 0x35 
    .byte 0xD7
    .byte 6
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x99
    .byte 0xFA
    .byte 6
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x31 
    .byte 0x12
    .byte 7
    .byte 8
    .byte 0x11
    .byte 0x39 
    .byte 7
    .byte 8
    .byte 0xA5
    .byte 0x58 
    .byte 7
    .byte 8
    .byte 0x39 
    .byte 0x66 
    .byte 2
    .byte 8
    .byte 0x59 
    .byte 0x72 
    .byte 7
    .byte 8
    .byte 0x61 
    .byte 0x97
    .byte 7
    .byte 8
    .byte 0x11
    .byte 0xCB
    .byte 7
    .byte 8
    .byte 0xDD
    .byte 0xFA
    .byte 7
    .byte 8
    .byte 0x9D
    .byte 0x24 
    .byte 8
    .byte 8
off_80265DC:    .word sub_80694CA+1
    .word sub_806A91E+1
    .word 0x806D7E9, 0x802663B, 0x802663B, 0x802663B, 0x802663B
    .word 0x802663B, 0x806FB3D, 0x802663B, 0x802663B, 0x802663B
    .word 0x8071303, 0x80739DF, 0x80759A9, 0x802663B, 0x80772DB
    .word 0x80797EF, 0x807CB93, 0x807FB77, 0x808254B
off_8026630:    .word locret_8026638+1
off_8026634:    .word locret_802663A+1
locret_8026638:
    mov pc, lr
locret_802663A:
    mov pc, lr
.thumb
sub_802663C:
    push {lr}
    cmp r0, #0xf0
    bge loc_8026650
    cmp r0, #0x80
    bge loc_802664A
    ldr r1, [pc, #0x8026660-0x8026646-2] // dword_8026558
    b loc_8026654
loc_802664A:
    ldr r1, [pc, #0x8026664-0x802664a-2] // off_8026588
    sub r0, #0x80
    b loc_8026654
loc_8026650:
    ldr r1, [pc, #0x8026668-0x8026650-4] // off_8026630
    sub r0, #0xf0
loc_8026654:
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8026660:    .word dword_8026558
off_8026664:    .word off_8026588
off_8026668:    .word off_8026630
// end of function sub_802663C

.thumb
sub_802666C:
    push {lr}
    cmp r0, #0xf0
    bge loc_8026680
    cmp r0, #0x80
    bge loc_802667A
    ldr r2, [pc, #0x8026690-0x8026676-2] // dword_8026570
    b loc_8026684
loc_802667A:
    ldr r2, [pc, #0x8026694-0x802667a-2] // off_80265DC
    sub r0, #0x80
    b loc_8026684
loc_8026680:
    ldr r2, [pc, #0x8026698-0x8026680-4] // off_8026634
    sub r0, #0xf0
loc_8026684:
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov lr, pc
    bx r2
    pop {pc}
    .byte 0, 0
off_8026690:    .word dword_8026570
off_8026694:    .word off_80265DC
off_8026698:    .word off_8026634
// end of function sub_802666C

.thumb
sub_802669C:
    push {r4-r6,lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldr r1, [r4,#0x34]
    cmp r0, r1
    beq locret_80266C6
    str r0, [r4,#0x34]
    push {r0}
    mov r0, #4
    bl sub_80034F6
    pop {r0}
    mov r1, #0
loc_80266B6:
    ldr r2, [r0]
    cmp r2, #0xff
    beq locret_80266C6
    bl sub_80266C8
    add r1, #1
    add r0, #4
    b loc_80266B6
locret_80266C6:
    pop {r4-r6,pc}
// end of function sub_802669C

.thumb
sub_80266C8:
    push {lr}
    push {r0-r2}
    mov r0, #0
    bl sub_8004204
    pop {r0-r2}
    tst r5, r5
    beq locret_80266DC
    strb r1, [r5,#0x10]
    str r2, [r5,#0x60]
locret_80266DC:
    pop {pc}
    .byte 0, 0
// end of function sub_80266C8

.thumb
sub_80266E0:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    cmp r0, #0x80
    bge loc_80266F2
    ldr r3, [pc, #0x802673c-0x80266ee-2] // off_8028E58
    b loc_80266F6
loc_80266F2:
    ldr r3, [pc, #0x8026740-0x80266f2-2] // off_8028E70
    sub r0, #0x80
loc_80266F6:
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r0, [r3]
    push {r0}
    add r0, #0x10
    ldr r1, [pc, #0x8026744-0x8026706-2] // word_202A000
    bl dword_8111700
    pop {r6}
    ldr r7, [pc, #0x8026744-0x802670e-2] // word_202A000
    ldr r0, [r6]
    add r0, r0, r7
    bl sub_8026748
    ldr r0, [r6,#4]
    add r0, r0, r7
    bl sub_802723C
    ldr r0, [r6,#8]
    add r0, r0, r7
    bl sub_8027468
    ldr r0, [r6,#0xc]
    add r0, r0, r7
    bl sub_8027634
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802673C:    .word off_8028E58
off_8026740:    .word off_8028E70
off_8026744:    .word word_202A000
// end of function sub_80266E0

.thumb
sub_8026748:
    ldr r5, [pc, #0x8026a4c-0x8026748-4] // dword_200AD30
    ldr r1, [r0]
    strh r1, [r5,#(word_200AD34 - 0x200ad30)]
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#(byte_200AD38 - 0x200ad30)]
    strb r0, [r5,#(byte_200AD39 - 0x200ad30)]
    mov pc, lr
// end of function sub_8026748

.thumb
sub_802675A:
    push {lr}
    ldrh r2, [r5,#4]
    cmp r2, #0
    beq loc_80267A2
    mov r2, #0
    ldrh r3, [r5,#4]
    ldr r6, [r5]
    mov r8, r6
loc_802676A:
    add r4, r2, r3
    lsr r4, r4, #1
    lsl r7, r4, #2
    mov r6, r8
    add r6, r6, r7
    ldrh r7, [r6]
    cmp r1, r7
    beq loc_8026788
    bgt loc_8026780
    add r3, r4, #0
    b loc_8026784
loc_8026780:
    add r2, r4, #0
    add r2, #1
loc_8026784:
    cmp r2, r3
    blt loc_802676A
loc_8026788:
    cmp r1, r7
    bne loc_80267A2
    ldr r2, [r5]
loc_802678E:
    sub r6, #4
    cmp r6, r2
    blt loc_802679C
    ldrh r7, [r6]
    cmp r1, r7
    bne loc_802679C
    b loc_802678E
loc_802679C:
    add r6, #4
    add r2, r6, #0
    pop {pc}
loc_80267A2:
    mov r2, #0
    pop {pc}
// end of function sub_802675A

.thumb
sub_80267A6:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    ldr r5, [pc, #0x8026a4c-0x80267b0-4] // dword_200AD30
    ldr r2, [pc, #0x8026874-0x80267b2-2] // dword_2010BF0
    str r0, [r2]
    mov r4, #0
    mov r12, r4
    strb r4, [r5,#(byte_200AD3B - 0x200ad30)]
loc_80267BC:
    add r1, r5, #0
    add r1, #0x18
    str r1, [r5,#(dword_200AD44 - 0x200ad30)]
    mov r1, #0
    strb r1, [r5,#(byte_200AD3A - 0x200ad30)]
    neg r1, r1
    strh r1, [r5,#(word_200AD36 - 0x200ad30)]
    bl sub_80268E8
    mov r2, #0x18
    add r2, r2, r5
    str r2, [r5,#(dword_200AD40 - 0x200ad30)]
loc_80267D4:
    ldr r1, [r5,#(dword_200AD44 - 0x200ad30)]
    cmp r2, r1
    beq loc_802684A
    ldrh r1, [r2]
    bl sub_802675A
    cmp r2, #0
    bne loc_80267EC
loc_80267E4:
    ldr r2, [r5,#(dword_200AD40 - 0x200ad30)]
    add r2, #0x10
    str r2, [r5,#(dword_200AD40 - 0x200ad30)]
    b loc_80267D4
loc_80267EC:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_80267E4
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r3, [r0,r6]
    cmp r3, r4
    blt loc_8026846
    ldrb r6, [r7,#2]
    add r4, r4, r6
    cmp r3, r4
    bgt loc_8026846
    ldrb r6, [r7,#1]
    strb r6, [r5,#(byte_200AD3C - 0x200ad30)]
    mov r4, #0x80
    tst r6, r4
    beq loc_802682A
    push {r0-r2}
    mov r4, #0x7f
    and r6, r4
    ldr r0, [pc, #0x80268e4-0x802681c-4] // =0x1100
    add r0, r0, r6
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0-r2}
    bne loc_8026846
loc_802682A:
    ldrb r6, [r7,#3]
    lsl r6, r6, #2
    ldr r4, [pc, #0x8026878-0x802682e-2] // dword_802687C
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    ldrb r4, [r5,#(byte_200AD3B - 0x200ad30)]
    add r4, r4, r3
    strb r4, [r5,#(byte_200AD3B - 0x200ad30)]
    cmp r4, #4
    bge loc_8026856
    cmp r3, #0
    bne loc_80267BC
loc_8026846:
    add r2, #4
    b loc_80267EC
loc_802684A:
    mov r0, r12
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
loc_8026856:
    ldr r0, [pc, #0x8026874-0x8026856-2] // dword_2010BF0
    ldr r0, [r0]
    ldr r6, [r0,#0xc]
    str r6, [r0]
    ldr r6, [r0,#0x10]
    str r6, [r0,#4]
    ldr r6, [r0,#0x14]
    str r6, [r0,#8]
    mov r0, #0
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8026874:    .word dword_2010BF0
off_8026878:    .word dword_802687C
dword_802687C:    .word 0x0
    .word sub_8026FC4+1
    .word sub_8026FEC+1
    .word sub_8027010+1
    .word sub_8027038+1
    .word sub_802705C+1
    .word sub_80270B4+1
    .word sub_8027108+1
    .word sub_802715C+1
    .word sub_8026E30+1
    .word sub_8026E7A+1
    .word sub_8026EA0+1
    .word sub_8026ECA+1
    .word sub_8026F0C+1
    .word sub_8026F3E+1
    .word sub_8026F6C+1
    .word sub_8026F9A+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80268E4:    .word 0x1100
// end of function sub_80267A6

.thumb
sub_80268E8:
    push {lr}
    push {r0,r5}
    mov r2, #0xe
    ldrsh r4, [r0,r2]
    mov r2, #0x12
    ldrsh r7, [r0,r2]
    bl sub_80269DE
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #0xe
    ldrsh r2, [r0,r2]
    sub r1, r1, r2
    add r6, r1, #0
    cmp r6, #0
    bge loc_802690A
    neg r6, r6
loc_802690A:
    mov r3, #6
    ldrsh r2, [r0,r3]
    mov r3, #0x12
    ldrsh r3, [r0,r3]
    sub r2, r2, r3
    add r7, r2, #0
    cmp r7, #0
    bge loc_802691C
    neg r7, r7
loc_802691C:
    cmp r6, r7
    bgt loc_8026928
    blt loc_8026964
    cmp r1, #0
    bne loc_80269A0
    b loc_80269CE
loc_8026928:
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #2
    ldrsh r6, [r0,r3]
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_8026940
    neg r3, r3
    neg r1, r1
loc_8026940:
    cmp r2, #0
    bge loc_8026948
    neg r0, r0
    neg r2, r2
loc_8026948:
    mvn r5, r1
loc_802694A:
    add r4, r4, r3
    cmp r4, r6
    beq loc_80269CE
    add r5, r5, r2
    add r5, r5, r2
    cmp r5, r1
    blt loc_802695E
    add r7, r7, r0
    sub r5, r5, r1
    sub r5, r5, r1
loc_802695E:
    bl sub_80269DE
    b loc_802694A
loc_8026964:
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #6
    ldrsh r6, [r0,r3]
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_802697C
    neg r3, r3
    neg r1, r1
loc_802697C:
    cmp r2, #0
    bge loc_8026984
    neg r0, r0
    neg r2, r2
loc_8026984:
    mvn r5, r2
loc_8026986:
    add r7, r7, r0
    cmp r7, r6
    beq loc_80269CE
    add r5, r5, r1
    add r5, r5, r1
    cmp r5, r2
    blt loc_802699A
    add r4, r4, r3
    sub r5, r5, r2
    sub r5, r5, r2
loc_802699A:
    bl sub_80269DE
    b loc_8026986
loc_80269A0:
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #6
    ldrsh r6, [r0,r3]
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_80269B8
    neg r3, r3
    neg r1, r1
loc_80269B8:
    cmp r2, #0
    bge loc_80269C0
    neg r0, r0
    neg r2, r2
loc_80269C0:
    add r7, r7, r0
    cmp r7, r6
    beq loc_80269CE
    add r4, r4, r3
    bl sub_80269DE
    b loc_80269C0
loc_80269CE:
    pop {r0,r5}
    mov r2, #2
    ldrsh r4, [r0,r2]
    mov r2, #6
    ldrsh r7, [r0,r2]
    bl sub_80269DE
    pop {pc}
// end of function sub_80268E8

.thumb
sub_80269DE:
    sub sp, sp, #0x10
    str r0, [sp]
    str r5, [sp,#4]
    str r4, [sp,#8]
    str r7, [sp,#0xc]
    asr r4, r4, #3
    asr r7, r7, #3
    ldr r5, [pc, #0x8026a4c-0x80269ec-4] // dword_200AD30
    ldrb r0, [r5,#(byte_200AD39 - 0x200ad30)]
    lsr r0, r0, #1
    add r7, r7, r0
    ldrb r0, [r5,#(byte_200AD38 - 0x200ad30)]
    lsr r0, r0, #1
    add r4, r4, r0
    lsl r0, r0, #1
    mul r7, r0
    add r7, r7, r4
    ldrh r0, [r5,#(word_200AD36 - 0x200ad30)]
    cmp r0, r7
    beq loc_8026A3E
    ldrb r0, [r5,#(byte_200AD3A - 0x200ad30)]
    add r4, r0, #1
    cmp r4, #0x10
    bge loc_8026A3E
    strh r7, [r5,#(word_200AD36 - 0x200ad30)]
    strb r4, [r5,#(byte_200AD3A - 0x200ad30)]
    ldr r4, [r5,#(dword_200AD44 - 0x200ad30)]
    add r4, #0x10
    str r4, [r5,#(dword_200AD44 - 0x200ad30)]
    mov r4, #0x10
    mul r4, r0
    add r4, #0x18
    add r5, r5, r4
    strh r7, [r5]
    ldr r4, [sp,#8]
    ldr r7, [sp,#0xc]
    mov r0, #7
    mov r8, r4
    bic r4, r0
    str r4, [r5,#4]
    add r4, r7, #0
    bic r4, r0
    str r4, [r5,#8]
    mov r4, r8
    ldr r0, [sp]
    ldr r5, [sp,#4]
    add sp, sp, #0x10
    mov pc, lr
loc_8026A3E:
    ldr r0, [sp]
    ldr r5, [sp,#4]
    ldr r4, [sp,#8]
    ldr r7, [sp,#0xc]
    add sp, sp, #0x10
    mov pc, lr
    .balign 4, 0x00
off_8026A4C:    .word dword_200AD30
// end of function sub_80269DE

.thumb
sub_8026A50:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_8026AC2
    mov r3, r8
    cmp r3, #1
    beq loc_8026A88
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    blt loc_8026AC2
loc_8026A88:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8026AC2:
    mov r0, #0
    mov r1, #0
    pop {pc}
// end of function sub_8026A50

.thumb
sub_8026AC8:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_8026B3A
    mov r3, r8
    cmp r3, #1
    beq loc_8026B00
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    blt loc_8026B3A
loc_8026B00:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8026B3A:
    mov r0, #0
    mov r1, #0
    pop {pc}
// end of function sub_8026AC8

.thumb
sub_8026B40:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8026BB2
    mov r3, r8
    cmp r3, #1
    beq loc_8026B78
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bgt loc_8026BB2
loc_8026B78:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8026BB2:
    mov r0, #0
    mov r1, #0
    pop {pc}
// end of function sub_8026B40

.thumb
sub_8026BB8:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8026C2A
    mov r3, r8
    cmp r3, #1
    beq loc_8026BF0
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bgt loc_8026C2A
loc_8026BF0:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8026C84
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8026C2A:
    mov r0, #0
    mov r1, #0
    pop {pc}
    .word 0x8026C40, 0x8026C51, 0x8026C62, 0x8026C73, 0x30300D00
    .word 0x253A5820, 0x59205838, 0x5838253A, 0x300E0000, 0x3A582031
    .word 0x20583825, 0x38253A59, 0xF000058, 0x58203230, 0x5838253A
    .word 0x253A5920, 0x5838, 0x20333010, 0x38253A58, 0x3A592058
    .word 0x583825
// end of function sub_8026BB8

.thumb
sub_8026C84:
    push {r2,r3,lr}
    mov r2, #0
    mov r3, #0
    cmp r7, #0
    beq loc_8026CA8
    cmp r6, #0
    bge loc_8026C96
    neg r6, r6
    mvn r3, r3
loc_8026C96:
    cmp r7, #0
    bge loc_8026C9E
    neg r7, r7
    mvn r3, r3
loc_8026C9E:
    cmp r6, r7
    blt loc_8026CA8
    sub r6, r6, r7
    add r2, #1
    b loc_8026C9E
loc_8026CA8:
    add r7, r2, #0
    cmp r3, #0
    beq locret_8026CB2
    neg r7, r7
    neg r6, r6
locret_8026CB2:
    pop {r2,r3,pc}
// end of function sub_8026C84

    push {r2,r3,lr}
    mov r2, #0
    mov r3, #0
    cmp r7, #0
    beq loc_8026CD8
    cmp r6, #0
    bge loc_8026CC6
    neg r6, r6
    mvn r3, r3
loc_8026CC6:
    cmp r7, #0
    bge loc_8026CCE
    neg r7, r7
    mvn r3, r3
loc_8026CCE:
    cmp r6, r7
    blt loc_8026CD8
    sub r6, r6, r7
    add r2, #1
    b loc_8026CCE
loc_8026CD8:
    lsr r7, r7, #1
    cmp r6, r7
    blt loc_8026CE0
    add r2, #1
loc_8026CE0:
    add r7, r2, #0
    cmp r3, #0
    beq locret_8026CEA
    neg r7, r7
    neg r6, r6
locret_8026CEA:
    pop {r2,r3,pc}
.thumb
sub_8026CEC:
    push {lr}
    lsl r0, r0, #0xe
    lsl r1, r1, #0xe
    mov r3, #1
    cmp r0, #0
    beq loc_8026CFA
    b loc_8026D02
loc_8026CFA:
    cmp r1, #0
    beq loc_8026D00
    b loc_8026D02
loc_8026D00:
    mov r3, #0
loc_8026D02:
    cmp r3, #0
    beq locret_8026D20
    ldr r5, [pc, #0x8026d24-0x8026d06-2] // dword_2010BF0
    ldr r5, [r5]
    ldr r4, [pc, #0x8026e2c-0x8026d0a-2] // dword_2010C00
    ldr r6, [r5]
    add r6, r6, r0
    ldr r2, [r4,#(dword_2010C18 - 0x2010c00)]
    add r6, r6, r2
    str r6, [r5]
    ldr r6, [r5,#4]
    add r6, r6, r1
    ldr r2, [r4,#(dword_2010C1C - 0x2010c00)]
    add r6, r6, r2
    str r6, [r5,#4]
locret_8026D20:
    pop {pc}
    .balign 4, 0x00
off_8026D24:    .word dword_2010BF0
// end of function sub_8026CEC

.thumb
sub_8026D28:
    push {lr}
    ldr r4, [r5,#0x10]
    ldr r2, [r4,#4]
    lsl r2, r2, #2
    ldr r5, [r4,#8]
    lsl r5, r5, #2
    ldr r7, [r6]
    ldr r3, [r0,#0x18]
    add r7, r7, r3
    asr r7, r7, #0xe
    sub r7, r7, r2
    str r7, [r0]
    ldr r7, [r6,#4]
    ldr r3, [r0,#0x1c]
    add r7, r7, r3
    asr r7, r7, #0xe
    sub r7, r7, r5
    str r7, [r0,#4]
    ldr r7, [r6,#0xc]
    asr r7, r7, #0xe
    sub r7, r7, r2
    str r7, [r0,#0xc]
    ldr r7, [r6,#0x10]
    asr r7, r7, #0xe
    sub r7, r7, r5
    str r7, [r0,#0x10]
    pop {pc}
// end of function sub_8026D28

.thumb
sub_8026D5E:
    push {lr}
    add r6, r0, #0
    ldr r0, [pc, #0x8026e2c-0x8026d62-2] // dword_2010C00
    mov r2, #0
    mov r3, #0
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
    bl sub_8026D28
    pop {pc}
// end of function sub_8026D5E

.thumb
sub_8026D72:
    push {lr}
    add r6, r0, #0
    ldr r0, [pc, #0x8026e2c-0x8026d76-2] // dword_2010C00
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C1C - 0x2010c00)]
    ldr r2, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r3, [r0,#(dword_2010C1C - 0x2010c00)]
    cmp r2, #0
    bgt loc_8026D94
    blt loc_8026DA4
    b loc_8026DA4
loc_8026D94:
    cmp r3, #0
    bgt loc_8026D9A
    b loc_8026DA4
loc_8026D9A:
    cmp r2, r3
    bne loc_8026DA4
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
    b loc_8026DAC
loc_8026DA4:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
loc_8026DAC:
    bl sub_8026D28
    pop {pc}
// end of function sub_8026D72

.thumb
sub_8026DB2:
    push {lr}
    add r6, r0, #0
    ldr r0, [pc, #0x8026e2c-0x8026db6-2] // dword_2010C00
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C1C - 0x2010c00)]
    ldr r2, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r3, [r0,#(dword_2010C1C - 0x2010c00)]
    cmp r2, #0
    bgt loc_8026DE4
    blt loc_8026DD4
    b loc_8026DE4
loc_8026DD4:
    cmp r3, #0
    blt loc_8026DDA
    b loc_8026DE4
loc_8026DDA:
    cmp r2, r3
    bne loc_8026DE4
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
    b loc_8026DEC
loc_8026DE4:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
loc_8026DEC:
    bl sub_8026D28
    pop {pc}
// end of function sub_8026DB2

.thumb
sub_8026DF2:
    push {lr}
    add r6, r0, #0
    ldr r0, [pc, #0x8026e2c-0x8026df6-2] // dword_2010C00
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C1C - 0x2010c00)]
    ldr r2, [r0,#(dword_2010C18 - 0x2010c00)]
    ldr r3, [r0,#(dword_2010C1C - 0x2010c00)]
    cmp r2, #0
    beq loc_8026E16
    cmp r3, #0
    beq loc_8026E16
    b loc_8026E1C
loc_8026E16:
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
    b loc_8026E24
loc_8026E1C:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#(dword_2010C18 - 0x2010c00)]
    str r3, [r0,#(dword_2010C1C - 0x2010c00)]
loc_8026E24:
    bl sub_8026D28
    pop {pc}
    .balign 4, 0x00
off_8026E2C:    .word dword_2010C00
// end of function sub_8026DF2

.thumb
sub_8026E30:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    bl sub_80271AC
    mov r3, #0
    cmp r0, #0
    beq loc_8026E70
    pop {r0-r2,r5}
    push {r0-r2,r5}
    bl sub_8026DF2
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    mov r6, #1
    bl sub_8026A50
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_8026CEC
loc_8026E70:
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026E30

.thumb
sub_8026E7A:
    push {r0-r2,r5,lr}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8026AC8
    lsr r0, r0, #1
    asr r1, r1, #1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026E7A

.thumb
sub_8026EA0:
    push {r0-r2,r5,lr}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8026B40
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    lsr r1, r1, #1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026EA0

.thumb
sub_8026ECA:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    bl sub_8027218
    mov r3, #0
    cmp r0, #0
    beq loc_8026F02
    pop {r0-r2,r5}
    push {r0-r2,r5}
    bl sub_8026DF2
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    mov r6, #1
    bl sub_8026BB8
    lsr r0, r0, #1
    lsr r1, r1, #1
    bl sub_8026CEC
loc_8026F02:
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026ECA

.thumb
sub_8026F0C:
    push {r0-r2,r5,lr}
    bl sub_8026DF2
    mov r2, #0
    mov r4, #0x20 
    sub r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    sub r5, #0x20 
    mov r6, #1
    bl sub_8026A50
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026F0C

.thumb
sub_8026F3E:
    push {r0-r2,r5,lr}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0
    sub r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    sub r5, #0x20 
    mov r6, #1
    bl sub_8026AC8
    lsr r0, r0, #1
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026F3E

.thumb
sub_8026F6C:
    push {r0-r2,r5,lr}
    bl sub_8026D5E
    mov r2, #0
    mov r4, #0
    add r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    add r5, #0x20 
    mov r6, #1
    bl sub_8026B40
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    lsr r1, r1, #1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026F6C

.thumb
sub_8026F9A:
    push {r0-r2,r5,lr}
    bl sub_8026DF2
    mov r2, #0
    mov r4, #0x20 
    add r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    add r5, #0x20 
    mov r6, #1
    bl sub_8026BB8
    lsr r0, r0, #1
    lsr r1, r1, #1
    bl sub_8026CEC
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026F9A

.thumb
sub_8026FC4:
    push {r0-r2,r5,lr}
    bl sub_8026D72
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #1
    bl sub_8026A50
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    mov r1, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026FC4

.thumb
sub_8026FEC:
    push {r0-r2,r5,lr}
    bl sub_8026DB2
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8026AC8
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    mov r1, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8026FEC

.thumb
sub_8027010:
    push {r0-r2,r5,lr}
    bl sub_8026D72
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #1
    bl sub_8026B40
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    mov r1, #2
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8027010

.thumb
sub_8027038:
    push {r0-r2,r5,lr}
    bl sub_8026DB2
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8026BB8
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    mov r1, #2
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
// end of function sub_8027038

.thumb
sub_802705C:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026D72
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #0
    bl sub_8026A50
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    .hword 0x19 // mov r1, r3  // <mkdata>
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_80270B2
    push {r0-r2,r5}
    bl sub_8026D72
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #0
    bl sub_8026B40
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_80270B2:
    pop {pc}
// end of function sub_802705C

.thumb
sub_80270B4:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026DB2
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8026AC8
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    .hword 0x19 // mov r1, r3  // <mkdata>
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_8027106
    push {r0-r2,r5}
    bl sub_8026D72
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #0
    bl sub_8026B40
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_8027106:
    pop {pc}
// end of function sub_80270B4

.thumb
sub_8027108:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026D72
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #0
    bl sub_8026A50
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    .hword 0x19 // mov r1, r3  // <mkdata>
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_802715A
    push {r0-r2,r5}
    bl sub_8026DB2
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8026BB8
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_802715A:
    pop {pc}
// end of function sub_8027108

.thumb
sub_802715C:
    push {lr}
    push {r0-r2,r5}
    bl sub_8026DB2
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8026AC8
    mov r1, #0
    bl sub_8026CEC
    mov r0, r12
    .hword 0x19 // mov r1, r3  // <mkdata>
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_80271AA
    push {r0-r2,r5}
    bl sub_8026DB2
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8026BB8
    mov r0, #0
    bl sub_8026CEC
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_80271AA:
    pop {pc}
// end of function sub_802715C

.thumb
sub_80271AC:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_80271CC
    mov r0, #1
    mov pc, lr
loc_80271CC:
    mov r0, #0
    mov pc, lr
// end of function sub_80271AC

.thumb
sub_80271D0:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_80271F0
    mov r0, #1
    mov pc, lr
loc_80271F0:
    mov r0, #0
    mov pc, lr
// end of function sub_80271D0

.thumb
sub_80271F4:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8027214
    mov r0, #1
    mov pc, lr
loc_8027214:
    mov r0, #0
    mov pc, lr
// end of function sub_80271F4

.thumb
sub_8027218:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8027238
    mov r0, #1
    mov pc, lr
loc_8027238:
    mov r0, #0
    mov pc, lr
// end of function sub_8027218

.thumb
sub_802723C:
    ldr r5, [pc, #0x80273bc-0x802723c-4] // dword_200A100
    ldr r1, [r0]
    strh r1, [r5,#(word_200A104 - 0x200a100)]
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#(byte_200A106 - 0x200a100)]
    strb r0, [r5,#(byte_200A107 - 0x200a100)]
    mov pc, lr
// end of function sub_802723C

.thumb
ho_802724E:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, [pc, #0x80273bc-0x8027258-4] // dword_200A100
    ldr r2, [pc, #0x80272c4-0x802725a-2] // dword_2010BF0
    str r0, [r2]
    bl sub_8027334
    bl sub_802675A
    cmp r2, #0
    beq loc_80272B4
    mov r3, #0
loc_802726C:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_8027294
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_802729A
    cmp r3, #0
    beq loc_8027290
    mov r6, #0
    ldrsb r6, [r3,r6]
    cmp r6, r4
    bgt loc_802729A
loc_8027290:
    add r3, r7, #0
    b loc_802729A
loc_8027294:
    cmp r3, #0
    beq loc_80272B4
    b loc_802729E
loc_802729A:
    add r2, #4
    b loc_802726C
loc_802729E:
    str r3, [r5,#(dword_200A114 - 0x200a100)]
    ldrb r6, [r3,#3]
    cmp r6, #0xff
    beq loc_80272B4
    lsl r6, r6, #2
    ldr r4, [pc, #0x80272c8-0x80272a8-4] // jt_80272CC
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    b loc_80272B8
loc_80272B4:
    mov r0, #0
    mov r1, #0
loc_80272B8:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80272C4:    .word dword_2010BF0
off_80272C8:    .word jt_80272CC
jt_80272CC:    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word sub_80273C6+1
    .word sub_80273D4+1
    .word sub_80273F6+1
    .word sub_802741E+1
    .word sub_8027440+1
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
// end of function ho_802724E

.thumb
sub_8027334:
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #6
    ldrsh r2, [r0,r2]
    asr r1, r1, #3
    asr r2, r2, #3
    ldrb r3, [r5,#7]
    lsr r3, r3, #1
    add r2, r2, r3
    ldrb r3, [r5,#6]
    lsr r3, r3, #1
    add r1, r1, r3
    lsl r3, r3, #1
    mul r2, r3
    add r2, r2, r1
    strh r2, [r5,#8]
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #6
    ldrsh r2, [r0,r2]
    mov r3, #7
    bic r1, r3
    str r1, [r5,#0xc]
    bic r2, r3
    str r2, [r5,#0x10]
    ldrh r1, [r5,#8]
    mov pc, lr
// end of function sub_8027334

.thumb
sub_802736A:
    add r6, r0, #0
    ldr r0, [pc, #0x8027398-0x802736c-4] // dword_2010C00
    ldr r2, [r5,#0xc]
    lsl r2, r2, #1
    ldr r5, [r5,#0x10]
    lsl r5, r5, #1
    ldr r7, [r6]
    asr r7, r7, #0xf
    sub r7, r7, r2
    str r7, [r0]
    ldr r7, [r6,#4]
    asr r7, r7, #0xf
    sub r7, r7, r5
    str r7, [r0,#(dword_2010C04 - 0x2010c00)]
    ldr r7, [r6,#0xc]
    asr r7, r7, #0xf
    sub r7, r7, r2
    str r7, [r0,#(dword_2010C0C - 0x2010c00)]
    ldr r7, [r6,#0x10]
    asr r7, r7, #0xf
    sub r7, r7, r5
    str r7, [r0,#(dword_2010C10 - 0x2010c00)]
    mov pc, lr
off_8027398:    .word dword_2010C00
// end of function sub_802736A

.thumb
sub_802739C:
    ldr r5, [pc, #0x80273bc-0x802739c-4] // dword_200A100
    cmp r0, #1
    beq loc_80273A4
    b loc_80273B0
loc_80273A4:
    ldr r2, [r5,#(dword_200A114 - 0x200a100)]
    mov r0, #0
    ldrsb r0, [r2,r0]
    ldrb r1, [r2,#2]
    ldrb r3, [r2,#1]
    mov pc, lr
loc_80273B0:
    ldr r2, [r5,#(dword_200A114 - 0x200a100)]
    mov r0, #0
    ldrsb r0, [r2,r0]
    ldrb r3, [r2,#1]
    mov pc, lr
    .balign 4, 0x00
off_80273BC:    .word dword_200A100
// end of function sub_802739C

    push {lr}
    mov r0, #0
    pop {pc}
.thumb
sub_80273C6:
    push {lr}
    mov r0, #1
    bl sub_802739C
    add r0, r0, r1
    mov r1, #0
    pop {pc}
// end of function sub_80273C6

.thumb
sub_80273D4:
    push {lr}
    bl sub_802736A
    push {r0}
    mov r0, #1
    bl sub_802739C
    add r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1]
    asr r2, r3
    sub r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
// end of function sub_80273D4

.thumb
sub_80273F6:
    push {lr}
    bl sub_802736A
    push {r0}
    mov r0, #1
    bl sub_802739C
    add r0, r0, r1
    mov r1, #8
    asr r1, r3
    sub r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1]
    asr r2, r3
    add r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
// end of function sub_80273F6

.thumb
sub_802741E:
    push {lr}
    bl sub_802736A
    push {r0}
    mov r0, #1
    bl sub_802739C
    add r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1,#4]
    asr r2, r3
    sub r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
// end of function sub_802741E

.thumb
sub_8027440:
    push {lr}
    bl sub_802736A
    push {r0}
    mov r0, #1
    bl sub_802739C
    add r0, r0, r1
    mov r1, #8
    asr r1, r3
    sub r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1,#4]
    asr r2, r3
    add r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
// end of function sub_8027440

.thumb
sub_8027468:
    ldr r5, [pc, #0x8027560-0x8027468-4] // dword_200D8C0
    ldr r1, [r0]
    strh r1, [r5,#(word_200D8C4 - 0x200d8c0)]
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#(byte_200D8C6 - 0x200d8c0)]
    strb r0, [r5,#(byte_200D8C7 - 0x200d8c0)]
    mov pc, lr
    .balign 4, 0x00
// end of function sub_8027468

.thumb
ho_802747C:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8027560-0x8027486-2] // dword_200D8C0
    ldr r2, [pc, #0x80274dc-0x8027488-4] // dword_2010BF0
    str r0, [r2]
    bl sub_8027334
    bl sub_802675A
    cmp r2, #0
    beq loc_80274D0
loc_8027498:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_80274D0
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_80274BA
    ldrb r3, [r7,#2]
    add r4, r4, r3
    cmp r6, r4
    bgt loc_80274BA
    b loc_80274BE
loc_80274BA:
    add r2, #4
    b loc_8027498
loc_80274BE:
    str r7, [r5,#(dword_200D8D4 - 0x200d8c0)]
    ldrb r6, [r7,#3]
    lsl r6, r6, #2
    ldr r4, [pc, #0x80274e0-0x80274c4-4] // jt_80274E4
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    b loc_80274D2
loc_80274D0:
    mov r0, #2
loc_80274D2:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_80274DC:    .word dword_2010BF0
off_80274E0:    .word jt_80274E4
jt_80274E4:    .word 0x0
    .word sub_802756A+1
    .word sub_8027582+1
    .word sub_802759A+1
    .word sub_80275B2+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_80275CA+1
    .word sub_80275E2+1
    .word sub_80275FA+1
    .word sub_8027612+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_802762A+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
// end of function ho_802747C

.thumb
sub_802754C:
    push {lr}
    ldr r5, [pc, #0x8027560-0x802754e-2] // dword_200D8C0
    cmp r0, #1
    beq loc_8027556
    b loc_802755A
loc_8027556:
    mov r0, #3
    pop {pc}
loc_802755A:
    mov r0, #2
    pop {pc}
    .byte 0, 0
off_8027560:    .word dword_200D8C0
// end of function sub_802754C

    push {lr}
    mov r0, #0
    pop {pc}
.thumb
sub_802756A:
    push {lr}
    bl sub_802736A
    mov r2, #4
    mov r4, #0
    mov r3, #4
    mov r5, #0x10
    bl sub_80271D0
    bl sub_802754C
    pop {pc}
// end of function sub_802756A

.thumb
sub_8027582:
    push {lr}
    bl sub_802736A
    mov r2, #8
    mov r4, #0
    mov r3, #8
    mov r5, #0x10
    bl sub_80271F4
    bl sub_802754C
    pop {pc}
// end of function sub_8027582

.thumb
sub_802759A:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #8
    mov r3, #0x10
    mov r5, #8
    bl sub_80271F4
    bl sub_802754C
    pop {pc}
// end of function sub_802759A

.thumb
sub_80275B2:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0xc
    mov r3, #0x10
    mov r5, #0xc
    bl sub_80271D0
    bl sub_802754C
    pop {pc}
// end of function sub_80275B2

.thumb
sub_80275CA:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_80271AC
    bl sub_802754C
    pop {pc}
// end of function sub_80275CA

.thumb
sub_80275E2:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80271D0
    bl sub_802754C
    pop {pc}
// end of function sub_80275E2

.thumb
sub_80275FA:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80271F4
    bl sub_802754C
    pop {pc}
// end of function sub_80275FA

.thumb
sub_8027612:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_8027218
    bl sub_802754C
    pop {pc}
// end of function sub_8027612

.thumb
sub_802762A:
    push {lr}
    mov r0, #1
    bl sub_802754C
    pop {pc}
// end of function sub_802762A

.thumb
sub_8027634:
    ldr r5, [pc, #0x802775c-0x8027634-4] // dword_200D8A0
    ldr r1, [r0]
    strh r1, [r5,#(word_200D8A4 - 0x200d8a0)]
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#(byte_200D8A6 - 0x200d8a0)]
    strb r0, [r5,#(byte_200D8A7 - 0x200d8a0)]
    mov pc, lr
// end of function sub_8027634

.thumb
sub_8027646:
    push {r4-r7,lr}
    mov r3, r8
    mov r4, r9
    mov r5, r12
    push {r3-r5}
    ldr r5, [pc, #0x802775c-0x8027650-4] // dword_200D8A0
    ldr r2, [pc, #0x80276d4-0x8027652-2] // dword_2010BF0
    str r0, [r2]
    bl sub_8027334
    bl sub_802675A
    cmp r2, #0
    beq loc_80276C2
loc_8027662:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_80276C2
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_8027684
    ldrb r3, [r7,#2]
    add r4, r4, r3
    cmp r6, r4
    bgt loc_8027684
    b loc_8027688
loc_8027684:
    add r2, #4
    b loc_8027662
loc_8027688:
    str r7, [r5,#(dword_200D8B4 - 0x200d8a0)]
    ldrb r6, [r7,#3]
    mov r12, r6
    lsl r6, r6, #2
    ldr r4, [pc, #0x80276d8-0x8027690-4] // jt_80276DC
    add r4, r4, r6
    ldr r4, [r4]
    push {r0-r2}
    mov lr, pc
    bx r4
    add r3, r0, #0
    tst r0, r0
    pop {r0-r2}
    beq loc_8027684
    add r0, r3, #0
    add r1, r3, #0
    mov r2, r12
    cmp r0, #0xe
    bgt loc_80276C8
    push {r0-r2}
    ldr r1, [pc, #0x8027744-0x80276b0-4] // =0x1140
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    pop {r0-r2}
    bne loc_80276C8
    mov r0, #0
    b loc_80276C8
loc_80276C2:
    mov r0, #0
    mov r1, #0
    mov r2, #0
loc_80276C8:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r12, r5
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80276D4:    .word dword_2010BF0
off_80276D8:    .word jt_80276DC
jt_80276DC:    .word 0x0
    .word sub_8027766+1
    .word sub_802777E+1
    .word sub_8027796+1
    .word sub_80277AE+1
    .word 0, 0, 0
    .byte 0, 0, 0, 0
    .word sub_80277C6+1
    .word sub_80277DE+1
    .word sub_80277F6+1
    .word sub_802780E+1
    .word 0, 0, 0
    .byte 0, 0, 0, 0
    .word sub_8027826+1
    .word sub_8027826+1
    .word sub_8027826+1
    .word sub_8027826+1
    .word sub_8027826+1
    .word sub_8027830+1
    .word sub_8027848+1
    .word sub_8027860+1
    .word sub_8027878+1
dword_8027744:    .word 0x114F
// end of function sub_8027646

.thumb
sub_8027748:
    ldr r5, [pc, #0x802775c-0x8027748-4] // dword_200D8A0
    cmp r0, #1
    beq loc_8027750
    b loc_8027756
loc_8027750:
    ldr r2, [r5,#(dword_200D8B4 - 0x200d8a0)]
    ldrb r0, [r2,#1]
    mov pc, lr
loc_8027756:
    mov r0, #0
    mov pc, lr
    .balign 4, 0x00
off_802775C:    .word dword_200D8A0
// end of function sub_8027748

.thumb
sub_8027760:
    push {lr}
    mov r0, #0
    pop {pc}
// end of function sub_8027760

.thumb
sub_8027766:
    push {lr}
    bl sub_802736A
    mov r2, #4
    mov r4, #0
    mov r3, #4
    mov r5, #0x10
    bl sub_80271D0
    bl sub_8027748
    pop {pc}
// end of function sub_8027766

.thumb
sub_802777E:
    push {lr}
    bl sub_802736A
    mov r2, #8
    mov r4, #0
    mov r3, #8
    mov r5, #0x10
    bl sub_80271F4
    bl sub_8027748
    pop {pc}
// end of function sub_802777E

.thumb
sub_8027796:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #8
    mov r3, #0x10
    mov r5, #8
    bl sub_80271F4
    bl sub_8027748
    pop {pc}
// end of function sub_8027796

.thumb
sub_80277AE:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0xc
    mov r3, #0x10
    mov r5, #0xc
    bl sub_80271D0
    bl sub_8027748
    pop {pc}
// end of function sub_80277AE

.thumb
sub_80277C6:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_80271AC
    bl sub_8027748
    pop {pc}
// end of function sub_80277C6

.thumb
sub_80277DE:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80271D0
    bl sub_8027748
    pop {pc}
// end of function sub_80277DE

.thumb
sub_80277F6:
    push {lr}
    bl sub_802736A
    mov r2, #1
    mov r4, #1
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80271F4
    bl sub_8027748
    pop {pc}
// end of function sub_80277F6

.thumb
sub_802780E:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0xe
    mov r3, #0xe
    mov r5, #0
    bl sub_8027218
    bl sub_8027748
    pop {pc}
// end of function sub_802780E

.thumb
sub_8027826:
    push {lr}
    mov r0, #1
    bl sub_8027748
    pop {pc}
// end of function sub_8027826

.thumb
sub_8027830:
    push {lr}
    bl sub_802736A
    mov r2, #2
    mov r4, #0
    mov r3, #2
    mov r5, #0x10
    bl sub_80271D0
    bl sub_8027748
    pop {pc}
// end of function sub_8027830

.thumb
sub_8027848:
    push {lr}
    bl sub_802736A
    mov r2, #0xe
    mov r4, #0
    mov r3, #0xe
    mov r5, #0x10
    bl sub_80271F4
    bl sub_8027748
    pop {pc}
// end of function sub_8027848

.thumb
sub_8027860:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #2
    mov r3, #0x10
    mov r5, #2
    bl sub_80271F4
    bl sub_8027748
    pop {pc}
// end of function sub_8027860

.thumb
sub_8027878:
    push {lr}
    bl sub_802736A
    mov r2, #0
    mov r4, #0xe
    mov r3, #0x10
    mov r5, #0xe
    bl sub_80271D0
    bl sub_8027748
    pop {pc}
unk_8027890:    .byte 0xB8
    .byte 0x78 
    .byte 2
    .byte 8
    .byte 0xEC
    .byte 0x78 
    .byte 2
    .byte 8
    .byte 0x40 
    .byte 0x79 
    .byte 2
    .byte 8
    .byte 0xA8
    .byte 0x79 
    .byte 2
    .byte 8
    .byte 0xE4
    .byte 0x7A 
    .byte 2
    .byte 8
    .byte 0xE0
    .byte 0x7B 
    .byte 2
    .byte 8
    .byte 0x3C 
    .byte 0x7C 
    .byte 2
    .byte 8
    .byte 0xD4
    .byte 0x7D 
    .byte 2
    .byte 8
    .byte 0x8C
    .byte 0x7F 
    .byte 2
    .byte 8
    .byte 0x24 
    .byte 0x81
    .byte 2
    .byte 8
    .byte 0
    .byte 0x40 
    .byte 0x21 
    .byte 8
    .byte 0x68 
    .byte 0xCB
    .byte 0x21 
    .byte 8
    .byte 0xC0
    .byte 0x70 
    .byte 0x22 
    .byte 8
    .byte 0xBC
    .byte 7
    .byte 0x23 
    .byte 8
    .byte 0x18
    .byte 0x89
    .byte 0x23 
    .byte 8
    .byte 0xA4
    .byte 0x22 
    .byte 0x24 
    .byte 8
    .byte 0xE8
    .byte 0xAE
    .byte 0x24 
    .byte 8
    .byte 0xF0
    .byte 0x3A 
    .byte 0x25 
    .byte 8
    .byte 0x88
    .byte 0xC6
    .byte 0x25 
    .byte 8
    .byte 0x1C
    .byte 0x4D 
    .byte 0x26 
    .byte 8
    .byte 0xB0
    .byte 0xE7
    .byte 0x26 
    .byte 8
    .byte 0x40 
    .byte 0x71 
    .byte 0x27 
    .byte 8
    .byte 0x70 
    .byte 0xF7
    .byte 0x27 
    .byte 8
    .byte 0x78 
    .byte 0x54 
    .byte 0x4B 
    .byte 8
    .byte 0x94
    .byte 0x7C 
    .byte 0x28 
    .byte 8
    .byte 0x84
    .byte 0xA7
    .byte 0x28 
    .byte 8
    .byte 0x3C 
    .byte 0xD1
    .byte 0x28 
    .byte 8
    .byte 0xD0
    .byte 0xF1
    .byte 0x28 
    .byte 8
    .byte 0x20
    .byte 0x19
    .byte 0x29 
    .byte 0x88
    .byte 0x40 
    .byte 0x2A 
    .byte 0x29 
    .byte 0x88
    .byte 0xB0
    .byte 0x32 
    .byte 0x29 
    .byte 8
    .byte 0xA4
    .byte 0x46 
    .byte 0x29 
    .byte 8
    .byte 0x1C
    .byte 0x6F 
    .byte 0x29 
    .byte 0x88
    .byte 0xC
    .byte 0x7D 
    .byte 0x29 
    .byte 8
    .byte 0x70 
    .byte 0x8D
    .byte 0x29 
    .byte 0x88
    .byte 0xD8
    .byte 0x9A
    .byte 0x29 
    .byte 8
    .byte 0x90
    .byte 0xCD
    .byte 0x29 
    .byte 0x88
    .byte 0xC
    .byte 0xDA
    .byte 0x29 
    .byte 0x88
    .byte 0x70 
    .byte 0xE8
    .byte 0x29 
    .byte 0x88
    .byte 0x88
    .byte 0xF9
    .byte 0x29 
    .byte 0x88
    .byte 0
    .byte 4
    .byte 0x2A 
    .byte 8
    .byte 0xF8
    .byte 0x3C 
    .byte 0x2A 
    .byte 0x88
    .byte 0x2C 
    .byte 0x48 
    .byte 0x2A 
    .byte 0x88
    .byte 0xD4
    .byte 0x4F 
    .byte 0x2A 
    .byte 0x88
    .byte 0x78 
    .byte 0x54 
    .byte 0x4B 
    .byte 8
    .byte 0x10
    .byte 0x5A 
    .byte 0x2A 
    .byte 8
    .byte 0x68 
    .byte 6
    .byte 0x2B 
    .byte 8
    .byte 0xA8
    .byte 0xF4
    .byte 0x2B 
    .byte 8
    .word dword_82C8AEC
    .word dword_82D3A24
    .word unk_82DE68C
    .word dword_82E74B4
    .word dword_82F3D5C
    .word dword_82FF574
    .word dword_83091D4
    .word dword_83124B8
    .word dword_831A888
    .word 0x883249D0, 0x88326EAC, 0x84B5478, 0x883296B4, 0x8832D4CC
    .word 0x8832FA18, 0x88331984, 0x88333F34, 0x883367A0, 0x88339B6C
    .word 0x8833D4C8, 0x8833FC3C, 0x88345470, 0x834A1CC, 0x834CC4C
    .word 0x8352380, 0x84B5478, 0x8353274, 0x8354080, 0x83545EC
    .word 0x83555DC, 0x84B5478, 0x835683C, 0x8357528, 0x8358970
    .word 0x835A0E4, 0x835AE5C, 0x835D230, 0x835DA6C, 0x835E5C0
    .word 0x835E720, 0x835F3A4, 0x8360684, 0x83616EC, 0x8363B50
    .word 0x8364C4C, 0x83666FC, 0x8366FCC, 0x83698E4, 0x836CEDC
    .word 0x836DF38, 0x836ECB0, 0x8371384, 0x837379C, 0x837507C
    .word 0x837548C, 0x8375964, 0x8376008, 0x8376168, 0x8376C78
    .word 0x8376EE4, 0x8378740, 0x837994C, 0x837AD20, 0x837B768
    .word 0x837D7FC, 0x837F1CC, 0x837F398, 0x837F760, 0x837FBC4
    .word 0x837FDE8, 0x8380370, 0x8380A44, 0x8380CA4, 0x8381C30
    .word 0x83822C4, 0x8382728, 0x83839C4, 0x8383BF8, 0x8384820
    .word 0x8384BEC, 0x83866E0, 0x8386B14, 0x8388184, 0x8388984
    .word 0x83895E4, 0x8389C9C, 0x838AD38, 0x838CBA8, 0x838E87C
    .word 0x838F130, 0x8390C5C, 0x8391A6C, 0x8392F4C, 0x839370C
    .word 0x8394084, 0x839646C, 0x8396FAC, 0x8397D84, 0x8399020
    .word 0x839B020, 0x839BA54, 0x839C958, 0x839EDA4, 0x839F5B8
    .word 0x83A0800, 0x83A2334, 0x83A3934, 0x83A4904, 0x83A4C90
    .word 0x83A5B64, 0x83A7094, 0x83A744C, 0x83A9320, 0x83AA0B8
    .word 0x83AA514, 0x83AAA34, 0x83AAF9C, 0x83AB4D4, 0x83AE560
    .word 0x83AEF80, 0x83AF204, 0x83AF854, 0x83B06B4, 0x83B0E8C
    .word 0x83B1184, 0x83B1968, 0x83B29A4, 0x83B3940, 0x83B43F8
    .word 0x83B5CFC, 0x83B62BC, 0x83B7008, 0x83B86C4, 0x83B9A08
    .word 0x83BA360, 0x83BAB80, 0x83BB118, 0x83BB578, 0x83BBAB4
    .word 0x83BBE7C, 0x83BBFE0, 0x83BC2A4, 0x83BC8D4, 0x83BCE14
    .word 0x83BD03C, 0x83BD71C, 0x83BDC68, 0x83BFA74, 0x83C020C
    .word 0x84B5478, 0x83C0B28, 0x83C0F14, 0x83C1178, 0x83C19F4
    .word 0x83C2590, 0x83C36E4, 0x83C3F38, 0x83C5FE0, 0x83C75A8
    .word 0x83C7944, 0x83C86FC, 0x83C8EE8, 0x83C969C, 0x83C97C0
    .word 0x83C9FB4, 0x83CBBB4, 0x83CD2C4, 0x83CE550, 0x83D1BB8
    .word 0x83D2954, 0x83D7D6C, 0x83D84F8, 0x83D8EF4, 0x83DBF0C
    .word 0x83DC154, 0x83DCD5C, 0x83DD644, 0x83DE048, 0x83E02F0
    .word 0x83E1208, 0x83E1BA0, 0x83E262C, 0x83E5520, 0x83E6C60
    .word 0x83E7800, 0x83E7EB8, 0x83E8EA0, 0x83E99EC, 0x83F8D30
    .word 0x83FA620, 0x83FC69C, 0x83FDEEC, 0x8400284, 0x8403668
    .word 0x8405734, 0x884070FC, 0x8407DD0, 0x8407DD0, 0x840A540
    .word 0x840CDE8, 0x840E700, 0x8412038, 0x8413E78, 0x8415CF0
    .word 0x840E700, 0x840E700, 0x8417CCC, 0x8400284, 0x8400284
    .word 0x8419AF4, 0x841BD24, 0x841D5D4, 0x841DC88, 0x84210D8
    .word 0x88422CC8, 0x8422FF8, 0x84259B0, 0x8427930
    .word dword_84294DC+0x4C4
    .word dword_842B888
    .word dword_842D820
    .word dword_842EE30
    .word dword_8435954
    .word dword_8435954
    .word dword_843642C
    .word dword_840E700
    .word dword_841DC88
    .word dword_8427930
    .word dword_8407DD0
    .word dword_841DC88
    .word dword_84210D8
dword_8027CEC:    .word 0x884382CC, 0x884385D0, 0x88438D80, 0x884394B8, 0x88439BC4
    .word 0x8435954, 0x843A310, 0x843C668, 0x843F9C0, 0x844221C
    .word 0x8444F1C, 0x8844656C, 0x84468E4, 0x8407DD0, 0x844935C
    .word 0x844C9EC, 0x843F9C0, 0x844EE50, 0x840A540, 0x841BD24
    .word 0x8450E50, 0x8465D48, 0x84680D0, 0x846A210, 0x846AEE0
    .word 0x846E174, 0x8475304, 0x846E4E4, 0x846EC60, 0x846F9F4
    .word 0x846F9F4, 0x846F9F4, 0x846F9F4, 0x8475304, 0x847884C
    .word 0x847A1BC, 0x847BD28, 0x847C6D4, 0x847E7F4, 0x847EFE4
    .word 0x847F67C, 0x8480AA0, 0x8483350, 0x8484324, 0x8484DD0
    .word 0x8486508, 0x8486FC8, 0x84B5478, 0x84876AC, 0x84B5478
    .word 0x848C6DC, 0x848EF18, 0x848F9D8, 0x8849040C, 0x88490978
    .word 0x884911EC, 0x846F9F4, 0x846EC60, 0x884919FC, 0x884924A0
    .word 0x884926F4, 0x88493990, 0x88493B6C, 0x88494598, 0x849473C
    .word 0x8494C54, 0x8495D48, 0x8496AB0, 0x88498DD0, 0x8849917C
    .word 0x88499414, 0x88499804, 0x8849A14C, 0x8849A53C, 0x8849A968
    .word 0x8849AAC4, 0x84B5478, 0x8849ADC0, 0x8849B378, 0x8849B5D4
    .word 0x8849B8D0, 0x8849BA9C, 0x8849BC28, 0x8849C108, 0x8849C2BC
    .word 0x8849C5DC, 0x8849C7B0, 0x8849C968, 0x8849CE9C, 0x8849D148
    .word 0x849D378, 0x8849E690, 0x8849E858, 0x8849E998, 0x8849ED18
    .word 0x8849F520, 0x8849FB3C, 0x884A0230, 0x884A0B30, 0x884A0CC8
    .word 0x884A0E30, 0x884A119C, 0x884A1D0C, 0x884A21D8, 0x884A2864
    .word 0x884A2C58, 0x884A2FFC, 0x884A32EC, 0x884A3490, 0x884A36B0
    .word 0x884A3A7C, 0x884A3DC0, 0x884A45B4, 0x884A4F94, 0x884A5B0C
    .word 0x884A5CEC, 0x884A5E40, 0x884A68F0, 0x884A6FD8, 0x884A79A0
    .word 0x884A7BE8, 0x884A7FE8, 0x884A85D0, 0x884A89B0, 0x884A8B74
    .word 0x884A8D3C, 0x884A8E44, 0x84A96FC, 0x884A9ADC, 0x884AA1A0
    .word 0x884AA8A8, 0x884AAF24, 0x84AB1FC, 0x884AB46C, 0x884AB5EC
    .word 0x884AB708, 0x884AB810, 0x884ABB34, 0x884ABE90, 0x884AC228
    .word 0x884AC6FC, 0x84ACDA0, 0x884ADAF8, 0x884ADD80, 0x884AE050
    .word 0x884AE480, 0x884AE6EC, 0x884AE828, 0x884AED98, 0x884AEF84
    .word 0x84B5478, 0x84AF384, 0x884AF930, 0x884B0014, 0x884B1070
    .word 0x884B1654, 0x884B1A78, 0x884B1C3C, 0x884B1D24, 0x884B1F60
    .word 0x884B220C, 0x84B2DB8, 0x884B3204, 0x884B405C, 0x884B4CC0
    .word 0x84B5478, 0x884B524C, 0x84B5478, 0x84C4658, 0x84C4D58
    .word 0x84C5438, 0x84C5BA4, 0x84C61C4, 0x84C685C, 0x84C6EF4
    .word 0x84C7554, 0x84C7C34, 0x84C8334, 0x84C8994, 0x84C8FF4
    .word 0x84C96F4, 0x84C9DE8, 0x84CA5D4, 0x84CADCC, 0x84CB5E0
    .word 0x84CBD60, 0x84CC460, 0x84CCC14, 0x84CD314, 0x84CD914
    .word 0x84CDF5C, 0x84CE51C, 0x84CEBFC, 0x84CF3F8, 0x84CFA04
    .word 0x84D0130, 0x84D0878, 0x84D0DE4, 0x84D15E4, 0x84D1DD0
    .word 0x84D2590, 0x84D2C10, 0x84D3428, 0x84D3A60, 0x84D3A60
    .word 0x84D4214, 0x84D4914, 0x84D5154, 0x84D15E4, 0x84C8994
    .word 0x84CF3F8, 0x84CFA04, 0x84D57AC, 0x84E6684, 0x84E6684
    .word 0x84E6684, 0x84E6684, 0x84D5EEC, 0x84D6578, 0x84D6BE0
    .word 0x84D72E0, 0x84D79E0, 0x84D7FE0, 0x84D85CC, 0x84D8BCC
    .word 0x84C8334, 0x84D928C, 0x84D9904, 0x84D9EBC, 0x84DA4A8
    .word 0x84DABA8, 0x84CE51C, 0x84DB210, 0x84DB860, 0x84DBF2C
    .word 0x84DC724, 0x84DCC50, 0x84E6684, 0x84DEE1C, 0x84DD17C
    .word 0x84DD8FC, 0x84DDE88, 0x84DDE88, 0x84DE3AC, 0x84DE918
    .word 0x84DEE1C, 0x84DFAA4, 0x84DF320, 0x84DFFD0, 0x84E07F0
    .word 0x84E0E64, 0x84E1664, 0x84E1EB0, 0x84E2528, 0x84E2A94
    .word 0x84E304C, 0x84E3608, 0x84E3AEC, 0x84E4058, 0x84E6684
    .word 0x84E4578, 0x84E6684, 0x84E4C70, 0x84E5144, 0x84E56B0
    .word 0x84E5B94, 0x84E61A0, 0x84E6684, 0x84DDE88, 0x84DD8FC
    .word 0x84B5B70, 0x83E99EC, 0x84B7E50, 0x84BA168, 0x84BB768
    .word 0x84BDB30, 0x84DB210, 0x886D156C, 0x886CEAE0, 0x86CF03C
    .word 0x86D02A4, 0x886D1794, 0x84BEADC, 0x8214000, 0x86EAF60
    .word 0x86EE920, 0x86EF170, 0x86EFE2C, 0x886EE2B8, 0x86EFAB8
    .word 0x86EF7C0, 0x86F18B8, 0x886F1D0C, 0x886F2104, 0x84BF72C
    .word 0x84C01D0, 0x86F8D20, 0x84C0738, 0x8202E000, 0x886F26F0
    .word 0x886F2884, 0x84C0D64, 0x84C1468, 0x886F2CA4, 0x84C1BBC
    .word 0x84C21A8, 0x84C2AE8, 0x84C3398, 0x84C3C70, 0x83BB118
    .word 0x8214000, 0x82A5A10, 0x82B0668, 0x82BF4A8, 0x82C8AEC
    .word 0x82D3A24, 0x82DE68C, 0x82E74B4, 0x82F3D5C, 0x82FF574
    .word 0x83091D4, 0x83124B8, 0x831A888, 0x834A1CC, 0x83A5B64
    .word 0x886F3F70, 0x884C3FA4, 0x886F3D5C, 0x83A4904, 0x83AA0B8
    .word 0x83BC2A4, 0x83C75A8, 0x83E8EA0, 0x821CB68, 0x82270C0
    .word 0x82307BC, 0x8238918, 0x82422A4, 0x824AEE8, 0x8253AF0
    .word 0x825C688, 0x8264D1C, 0x826E7B0, 0x8277140, 0x827F770
    .word 0x839C958, 0x839EDA4, 0x80282C4, 0x8028318, 0x802833C
    .word 0x802836C, 0x80283B4, 0x802842C, 0x802845C, 0x8028474
    .word 0x80284A4, 0x0, 0x0, 0x0, 0x0
    .word 0x0
    .word off_80284E0
    .word 0, 0
    .byte 0, 0, 0, 0
    .word off_8028540
    .word off_8028600
    .word off_8028690
    .byte 0, 0, 0, 0
    .word off_8028750
    .word off_8028774
    .word off_80287A4
    .word off_80287C8
    .word off_80287F8
    .word off_84E6AC8
    .word off_84EADE8
    .word dword_84EAFEC
    .word off_84ECA08
    .word off_84F05A8
    .word dword_84F07AC
    .word off_84F1230
    .word off_84F3598
    .word dword_84F379C
    .word off_84F3D30
    .word off_84F5F88
    .word dword_84F618C
    .word off_84F6794
    .word off_84F9508
    .word dword_84F970C
    .word off_84F9D90
    .word off_84FD424
    .word dword_84FD628
    .word off_84FDF6C
    .word off_85011B0
    .word dword_85013B4
    .word off_8501C04
    .word off_8505728
    .word dword_850592C
    .word off_8506F88
    .word off_850A26C
    .word dword_850A470
    .word off_850B904
    .word off_850E838
    .word dword_850EA3C
    .word off_850FB9C
    .word off_8513798
    .word dword_851399C
    .word off_85168B8
    .word off_8515480
    .word dword_8515684
    .word off_85168B8
    .word off_851A010
    .word dword_851A214
    .word off_851ABB8
    .word off_851DC84
    .word dword_851DE88
    .word off_851F190
    .word off_85237C8
    .word dword_85239CC
    .word off_8525120
    .word off_85296AC
    .word dword_85298B0
    .word off_852AE54
    .word off_852E234
    .word dword_852E438
    .word off_852EE68
    .word off_8531E68
    .word dword_853206C
    .word off_8533754
    .word off_8538548
    .word dword_853874C
    .word off_8539C60
    .word off_853DE64
    .word dword_853E068
    .word off_853F4C4
    .word off_8543158
    .word dword_854335C
    .word off_8544F9C
    .word off_8548928
    .word dword_8548B2C
    .word off_854AB58
    .word off_854D374
    .word dword_854D578
    .word off_854DCEC
    .word off_854FE28
    .word dword_855002C
    .word off_8550CA4
    .word off_855566C
    .word dword_8555870
    .word off_8556E40
    .word off_855BFF8
    .word dword_855C1FC
    .word off_855D604
    .word off_8560A54
    .word dword_8560C58
    .word off_8561B00
    .word off_85663D4
    .word dword_85665D8
    .word off_856811C
    .word off_856BAA8
    .word dword_856BCAC
    .word off_856E9F8
    .word off_8572118
    .word dword_857231C
    .word off_8573758
    .word off_8576660
    .word dword_8576864
    .word off_8577920
    .word off_857B21C
// end of function sub_8027878

    push {r5}
    lsr r7, r2, #1
    ldmia r7, {r7}
    lsr r7, r2, #1
    lsl r4, r3, #0x1e
    lsr r0, r3, #1
    lsr r0, r4, #6
    lsr r0, r3, #1
    mov r1, #0x18
    lsr r0, r3, #1
    strh r0, [r2,r7]
    lsr r0, r3, #1
    strb r4, [r2,r7]
    lsr r0, r3, #1
    ldr r0, [r0,#0x60]
    lsr r0, r3, #1
    add r4, sp, #0xa0
    lsr r0, r3, #1
    add r6, sp, #0xb0
    lsr r0, r3, #1
    ldr r0, [r0,#0x60]
    lsr r0, r3, #1
    add r4, sp, #0xa0
    lsr r0, r3, #1
    ldmia r4!, {r2,r3,r5-r7}
    lsr r0, r3, #1
    .word off_858F634
    .word off_8592C44
    .word dword_8592E48
    .word off_858F634
    .word off_8592C44
    .word dword_8595BB0
    .word off_858F634
    .word off_8592C44
    .word dword_8598714
    .word off_858F634
    push {r2,r5-r7}
    lsr r1, r3, #1
    .word dword_859B6E8
    .word dword_859E314
    .word off_85A0D5C
    .word dword_85A0F60
    .word dword_859E314
    .word off_85A0D5C
    .word dword_85A2AA8
    .word dword_859E314
    .word off_85A0D5C
    .word dword_85A4690
    .word dword_859E314
    .word off_85A0D5C
    .word dword_85A63CC
    .word dword_859E314
    .word off_85A86E0
    .word dword_85A88E4
off_80284E0:    .word off_85AA458
    .word off_85ACC0C
    .word dword_85ACE10
    .word off_85AA458
    .word off_85ADE2C
    .word dword_85AE030
    .word off_85AA458
    .word off_85AEF94
    .word dword_85AF198
    .word off_85AA458
    .word off_85B0248
    .word dword_85B044C
    .word off_85AA458
    .word off_85B1320
    .word dword_85B1524
    .word off_85AA458
    .word off_85B2FD4
    .word dword_85B31D8
    .word off_85AA458
    .word off_85B44E8
    .word dword_85B46EC
    .word off_85AA458
    .word off_85B5ACC
    .word dword_85B5CD0
off_8028540:    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B90D8
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B90D8
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B90D8
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
off_8028600:    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
off_8028690:    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
    .word off_85B72E8
    .word off_85B8238
    .word dword_85B843C
off_8028750:    .word off_85BA528
    .word off_85BE5EC
    .word dword_85BE7F0
    .word off_85BA528
    .word off_85BE5EC
    .word dword_85C0964
    .word off_85BA528
    .word off_85BE5EC
    .word dword_85C31C4
off_8028774:    .word off_85BA528
    .word off_85C78B8
    .word dword_85C55EC
    .word off_85BA528
    .word off_85C78B8
    .word dword_85C7ABC
    .word off_85BA528
    .word off_85C78B8
    .word dword_85C9DE8
    .word off_85CE18C
    .word off_85CDF88
    .word dword_85CC524
off_80287A4:    .word off_85CE18C
    .word off_85D4C9C
    .word dword_85D2348
    .word off_85CE18C
    .word off_85D4C9C
    .word dword_85D4EA0
    .word off_85CE18C
    .word off_85D4C9C
    .word dword_85D787C
off_80287C8:    .word off_85DA0B4
    .word off_85E087C
    .word dword_85DDC10
    .word off_85DA0B4
    .word off_85E3724
    .word dword_85E0A80
    .word off_85DA0B4
    .word off_85E6390
    .word dword_85E3928
    .word off_85DA0B4
    .word off_85E9068
    .word dword_85E6594
off_80287F8:    .word off_85E926C
    .word off_85F13D0
    .word dword_85EEB4C
    .word off_85E926C
    .word off_85F13D0
    .word dword_85F15D4
    .word off_85E926C
    .word off_85F13D0
    .word dword_85F3DB8
    .word off_85F672C
    .word off_85FC6E0
    .word dword_85F9714
    .word off_85E926C
    .word off_85F13D0
    .word dword_85FC8E4
    .word off_85E926C
    .word off_85F13D0
    .word dword_85FF3CC
    .word off_85E926C
    .word off_8604378
    .word dword_8602034
    .word off_85E926C
    .word off_8604378
    .word dword_860457C
off_8028858:    .word off_80288C4
    .word off_8028918
    .word off_802893C
    .word off_802896C
    .word off_80289B4
    .word off_8028A2C
off_8028870:    .word off_8028A5C
    .word off_8028A74
    .word off_8028AA4
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word off_8028AE0
    .word 0, 0
    .byte 0, 0, 0, 0
    .word off_8028B40
    .word off_8028C00
    .word off_8028C90
    .byte 0, 0, 0, 0
    .word off_8028D50
    .word off_8028D74
    .word off_8028DA4
    .word off_8028DC8
    .word off_8028DF8
off_80288C4:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028918:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5
off_802893C:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_802896C:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5
off_80289B4:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5
off_8028A2C:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028A5C:    .word sub_80262CE+1
    .word loc_8026460+1
    .word 0x80264CD, 0x80262CF, 0x8026461, 0x80264CD
off_8028A74:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028AA4:    .word sub_80262E2+1
    .word loc_8026460+1
    .word 0x80264D5, 0x80262E3, 0x8026461, 0x80264D5, 0x80262E3
    .word 0x8026461, 0x80264D5, 0x80262E3, 0x8026461, 0x80264D5
    .word 0x80262E3, 0x8026461, 0x80264D5
off_8028AE0:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5
off_8028B40:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5
off_8028C00:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028C90:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5
off_8028D50:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5
off_8028D74:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028DA4:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5
off_8028DC8:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
off_8028DF8:    .word sub_80262B0+1
    .word loc_8026460+1
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5
    .word 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1, 0x8026461
    .word 0x80264C5, 0x80262B1, 0x8026461, 0x80264C5, 0x80262B1
    .word 0x8026461, 0x80264C5
off_8028E58:    .word off_8028EC4
    .word off_8028EE0
    .word byte_8028EEC
    .word off_8028EFC
    .word off_8028F14
    .word off_8028F3C
off_8028E70:    .word off_8028F4C
    .word off_8028F54
    .word off_8028F64
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word off_8028F78
    .word 0, 0
    .byte 0, 0, 0, 0
    .word off_8028F98
    .word off_8028FD8
    .word off_8029008
    .byte 0, 0, 0, 0
    .word off_8029048
    .word off_8029054
    .word off_8029064
    .word off_8029070
    .word off_8029080
off_8028EC4:    .word dword_861BD44
    .word dword_861CF14
    .word dword_861D428
    .word dword_861D6F4
    .word dword_861D974
    .word dword_861DC00
    .word dword_861E104
off_8028EE0:    .word dword_861E460
    .word dword_861EFBC
    .word dword_861FE0C
byte_8028EEC:    .byte 0x34
    .byte 9
    .byte 0x62 
    .byte 8
    .byte 0
    .byte 0x25, 0x62, 0x8
    .word dword_8623370
    .word dword_8623C4C
off_8028EFC:    .word dword_8624844
    .word dword_86255D0
    .word dword_86265A0
    .word dword_86269D8
    .word dword_8627164
    .word dword_8629094
off_8028F14:    .word dword_8629E04
    .word dword_862AB60
    .word dword_862C3D8
    .word dword_862CA00
    .word dword_862DA7C
    .word dword_862E18C
    .word dword_862F228
    .word dword_862FDB0
    .word dword_863183C
    .word dword_8632E34
off_8028F3C:    .word dword_86341B0
    .word dword_8634D54
    .word dword_86358E4
    .word dword_863675C
off_8028F4C:    .word dword_86378BC
    .word dword_8638714
off_8028F54:    .word dword_86397C8
    .word dword_863B980
    .word dword_863DC9C
    .word dword_8640314
off_8028F64:    .word dword_8642CD8
    .word dword_8643B90
    .word dword_8644CB0
    .word dword_8645FA8
    .word dword_86475D0
off_8028F78:    .word dword_8647C80
    .word dword_8648220
    .word dword_8648914
    .word dword_86491C8
    .word dword_8649710
    .word dword_864A12C
    .word dword_864A85C
    .word dword_864B290
off_8028F98:    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864C330
    .word dword_864C330
    .word dword_864C330
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864CB2C
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
off_8028FD8:    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864CF78
    .word dword_864D6D0
    .word dword_864D6D0
    .word dword_864D6D0
    .word dword_864D6D0
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
    .word dword_864BD54
off_8029008:    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
    .word dword_864DCC0
off_8029048:    .word dword_864E380
    .word dword_864F4C4
    .word dword_8650C8C
off_8029054:    .word dword_8652258
    .word dword_8653F04
    .word dword_86573D4
    .word dword_865C518
off_8029064:    .word dword_865D820
    .word dword_8660AF0
    .word dword_8664684
off_8029070:    .word dword_86678B4
    .word dword_8669EAC
    .word dword_866C5AC
    .word dword_866EEEC
off_8029080:    .word dword_8671CF0
    .word dword_867462C
    .word dword_8677C48
    .word dword_867A0E8
    .word dword_867E180
    .word dword_8680720
    .word dword_8683D4C
    .word dword_86859C8
off_80290A0:    .word dword_802910C
    .word 0x8029113, 0x8029116, 0x802911A, 0x8029120, 0x802912A
dword_80290B8:    .word 0x802912E, 0x8029130, 0x8029134, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x8029139, 0x0, 0x0, 0x0
    .word 0x8029141, 0x8029151, 0x802915D, 0x0
    .word 0x802916D, 0x8029170, 0x8029174, 0x8029177, 0x802917B
dword_802910C:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x4040000, 0x8080808, 0x10101010, 0x8080810, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x80808
off_8029184:    .word dword_80291F0
    .word 0x80291F7, 0x80291FA, 0x80291FE, 0x8029204, 0x802920E
dword_802919C:    .word 0x8029212, 0x8029214, 0x8029218, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x802921D, 0x0, 0x0, 0x0
    .word 0x8029225, 0x8029235, 0x8029241, 0x0
    .word 0x8029251
    .word 0x8029254
    .word 0x8029258
    .word 0x802925B
    .word 0x802925F
dword_80291F0:    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x7070606
    .word 0x9090909
    .word 0x8080808
    .word 0x9090908
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x9090909
    .word 0x90909
.thumb
sub_8029268:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802938c-0x802926a-2] // unk_200B120
    add r0, r5, #0
    mov r1, #0x10
    bl f900_8000930
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_8029284
    mov r7, #1
    strb r7, [r5,#(byte_200B124 - 0x200b120)]
    b loc_8029290
loc_8029284:
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r0, [r7,#0x20]
    strh r0, [r5,#(word_200B128 - 0x200b120)]
    mov r0, #1
    strb r0, [r5,#(byte_200B124 - 0x200b120)]
loc_8029290:
    bl sub_8029296
    pop {r4-r7,pc}
// end of function sub_8029268

.thumb
sub_8029296:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802938c-0x8029298-4] // unk_200B120
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_80292C4
    ldr r0, [pc, #0x80292dc-0x80292a4-4] // dword_869F8E4
    ldr r1, [pc, #0x80292e0-0x80292a6-2] // =0x6017200
    ldr r2, [pc, #0x80292e4-0x80292a8-4] // =0x200
    bl loc_8000874
    ldr r0, [pc, #0x80292e8-0x80292ae-2] // dword_86A00E4
    ldr r1, [pc, #0x80292ec-0x80292b0-4] // =0x6017400
    ldr r2, [pc, #0x80292f0-0x80292b2-2] // =0x80
    bl loc_8000874
    ldr r0, [pc, #0x80292f4-0x80292b8-4] // dword_869F8A4
    ldr r1, [pc, #0x80292f8-0x80292ba-2] // unk_30027C0
    mov r2, #0x20 
    bl loc_8000874
    pop {r4-r7,pc}
loc_80292C4:
    ldr r0, [pc, #0x80292fc-0x80292c4-4] // dword_86A03C4
    ldr r1, [pc, #0x80292e0-0x80292c6-2] // =0x6017200
    ldr r2, [pc, #0x8029300-0x80292c8-4] // =0x340
    bl loc_8000874
    ldr r0, [pc, #0x8029304-0x80292ce-2] // dword_86A0364
    ldr r1, [pc, #0x80292f8-0x80292d0-4] // unk_30027C0
    mov r2, #0x20 
    bl loc_8000874
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80292DC:    .word dword_869F8E4
dword_80292E0:    .word 0x6017200
off_80292E4:    .word 0x200
off_80292E8:    .word dword_86A00E4
dword_80292EC:    .word 0x6017400
off_80292F0:    .word 0x80
off_80292F4:    .word dword_869F8A4
off_80292F8:    .word unk_30027C0
off_80292FC:    .word dword_86A03C4
off_8029300:    .word 0x340
off_8029304:    .word dword_86A0364
// end of function sub_8029296

.thumb
ho_8029308:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_802D92C
    bne locret_8029348
    ldr r5, [pc, #0x802938c-0x8029312-2] // unk_200B120
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r1, [r0,#4]
    cmp r1, #0x80
    bge loc_802933C
    ldrb r4, [r5,#(byte_200B124 - 0x200b120)]
    cmp r4, #0
    beq loc_8029332
    lsl r4, r4, #3
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_8029332
    sub r4, #4
loc_8029332:
    ldr r0, [pc, #0x802934c-0x8029332-2] // jt_8029350
    ldr r0, [r0,r4]
    mov lr, pc
    bx r0
    b locret_8029348
loc_802933C:
    ldr r0, [pc, #0x802936c-0x802933c-4] // jt_8029370
    ldrb r1, [r5,#(byte_200B124 - 0x200b120)]
    lsl r1, r1, #3
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_8029348:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802934C:    .word jt_8029350
jt_8029350:    .word sub_8029390+1
    .word sub_8029394+1
    .word sub_80293A2+1
    .word sub_80293B4+1
    .word sub_80293C2+1
    .word sub_80293D4+1
    .word sub_80293E2+1
off_802936C:    .word jt_8029370
jt_8029370:    .word sub_80293F4+1
    .word sub_80293F8+1
    .word sub_8029400+1
    .word sub_8029408+1
    .word sub_8029414+1
    .word sub_8029420+1
    .word sub_8029428+1
off_802938C:    .word unk_200B120
// end of function ho_8029308

.thumb
sub_8029390:
    push {lr}
    pop {pc}
// end of function sub_8029390

.thumb
sub_8029394:
    push {lr}
    mov r0, #0
    bl sub_8029430
// end of function sub_8029394

    bl sub_802961C
    pop {pc}
.thumb
sub_80293A2:
    push {lr}
    mov r0, #0
    bl sub_8029430
// end of function sub_80293A2

    bl sub_8029498
    bl sub_802961C
    pop {pc}
.thumb
sub_80293B4:
    push {lr}
    mov r0, #0
    bl sub_8029430
// end of function sub_80293B4

    bl sub_80294B0
    pop {pc}
.thumb
sub_80293C2:
    push {lr}
    mov r0, #0
    bl sub_8029430
// end of function sub_80293C2

    bl sub_80294B0
    bl sub_8029498
    pop {pc}
.thumb
sub_80293D4:
    push {lr}
    mov r0, #1
    bl sub_8029430
// end of function sub_80293D4

    bl sub_802956C
    pop {pc}
.thumb
sub_80293E2:
    push {lr}
    mov r0, #1
    bl sub_8029430
// end of function sub_80293E2

    bl sub_802956C
    bl sub_8029498
    pop {pc}
.thumb
sub_80293F4:
    push {lr}
    pop {pc}
// end of function sub_80293F4

.thumb
sub_80293F8:
    push {lr}
    bl sub_8029634
// end of function sub_80293F8

    pop {pc}
.thumb
sub_8029400:
    push {lr}
    bl sub_8029634
// end of function sub_8029400

    pop {pc}
.thumb
sub_8029408:
    push {lr}
    bl sub_8029634
// end of function sub_8029408

    bl sub_8029604
    pop {pc}
.thumb
sub_8029414:
    push {lr}
    bl sub_8029634
// end of function sub_8029414

    bl sub_8029604
    pop {pc}
.thumb
sub_8029420:
    push {lr}
    bl sub_8029634
// end of function sub_8029420

    pop {pc}
.thumb
sub_8029428:
    push {lr}
    bl sub_8029634
// end of function sub_8029428

    pop {pc}
.thumb
sub_8029430:
    push {lr}
    mov r2, #0x18
    mul r2, r0
    ldrb r0, [r5,#5]
    add r0, r0, r2
    ldr r1, [pc, #0x8029464-0x802943a-2] // dword_8029468
    ldrb r1, [r1,r0]
    ldr r0, [pc, #0x802945c-0x802943e-2] // =0x80000003
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8029460-0x8029444-4] // =0xC790
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8029430

    ldrb r0, [r5,#5]
    add r0, #1
    cmp r0, #0x18
    blt loc_8029458
    mov r0, #0
loc_8029458:
    strb r0, [r5,#5]
    pop {pc}
dword_802945C:    .word 0x80000003
dword_8029460:    .word 0xC790
off_8029464:    .word dword_8029468
dword_8029468:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r2, r0, #4
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r2, r0, #4
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r2, r0, #4
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r2, r0, #4
.thumb
sub_8029498:
    push {lr}
    ldr r0, [pc, #0x80294a8-0x802949a-2] // =0x40120006
    ldr r1, [pc, #0x80294ac-0x802949c-4] // =0xC7A0
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8029498

    pop {pc}
dword_80294A8:    .word 0x40120006
dword_80294AC:    .word 0xC7A0
.thumb
sub_80294B0:
    push {lr}
    ldrb r0, [r5,#6]
    ldr r1, [pc, #0x80295a4-0x80294b4-4] // off_80295A8
    ldr r0, [r1,r0]
    ldr r1, [pc, #0x8029554-0x80294b8-4] // =0x6017600
    ldr r2, [pc, #0x8029558-0x80294ba-2] // =0xFF
    bl loc_8000870
    ldrb r0, [r5,#6]
    ldr r1, [pc, #0x8029508-0x80294c2-2] // off_802950C
    ldr r0, [r1,r0]
    ldr r1, [pc, #0x802955c-0x80294c6-2] // unk_30027C0
    mov r2, #0x20 
    bl f900_80009A0
    ldrb r0, [r5,#6]
    add r0, #4
    cmp r0, #0x48 
    blt loc_80294D8
    mov r0, #0
loc_80294D8:
    strb r0, [r5,#6]
    ldr r0, [pc, #0x8029560-0x80294da-2] // =0x801440FC
    ldr r1, [pc, #0x8029564-0x80294dc-4] // =0xC7B0
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_80294B0

    ldr r0, [pc, #0x8029568-0x80294e6-2] // =0xA014400C
    ldr r1, [pc, #0x8029564-0x80294e8-4] // =0xC7B0
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    ldrb r0, [r5,#7]
    sub r0, #1
    bgt loc_8029504
    mov r0, #0x9b
    bl f500_8000558
    mov r0, #0x60 
    strb r0, [r5,#7]
    b locret_8029506
loc_8029504:
    strb r0, [r5,#7]
locret_8029506:
    pop {pc}
off_8029508:    .word off_802950C
off_802950C:    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8C4
    .word dword_869F8C4
    .word dword_869F8C4
    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8C4
    .word dword_869F8C4
    .word dword_869F8C4
    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8A4
    .word dword_869F8C4
    .word dword_869F8C4
    .word dword_869F8C4
dword_8029554:    .word 0x6017600
off_8029558:    .word 0x100
off_802955C:    .word unk_30027C0
dword_8029560:    .word 0x801440FC
dword_8029564:    .word 0xC7B0
dword_8029568:    .word 0xA014400C
.thumb
sub_802956C:
    push {lr}
    ldrb r0, [r5,#6]
    ldr r1, [pc, #0x80295a4-0x8029570-4] // off_80295A8
    ldr r0, [r1,r0]
    ldr r1, [pc, #0x80295f0-0x8029574-4] // =0x6017600
    ldr r2, [pc, #0x80295f4-0x8029576-2] // =0xFF
    bl loc_8000874
    ldrb r0, [r5,#6]
    add r0, #4
    cmp r0, #0x48 
    blt loc_8029586
    mov r0, #0
loc_8029586:
    strb r0, [r5,#6]
    ldr r0, [pc, #0x80295f8-0x8029588-4] // =0x801440FC
    ldr r1, [pc, #0x80295fc-0x802958a-2] // =0xC7B0
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_802956C

    ldr r0, [pc, #0x8029600-0x8029594-4] // =0xA014400C
    ldr r1, [pc, #0x80295fc-0x8029596-2] // =0xC7B0
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    pop {pc}
    .balign 4, 0x00
off_80295A4:    .word off_80295A8
off_80295A8:    .word dword_869FAE4
    .word dword_869FAE4
    .word dword_869FAE4
    .word dword_869FBE4
    .word dword_869FBE4
    .word dword_869FBE4
    .word dword_869FCE4
    .word dword_869FCE4
    .word dword_869FCE4
    .word dword_869FDE4
    .word dword_869FDE4
    .word dword_869FDE4
    .word dword_869FEE4
    .word dword_869FEE4
    .word dword_869FEE4
    .word dword_869FFE4
    .word dword_869FFE4
    .word dword_869FFE4
dword_80295F0:    .word 0x6017600
off_80295F4:    .word 0x100
dword_80295F8:    .word 0x801440FC
dword_80295FC:    .word 0xC7B0
dword_8029600:    .word 0xA014400C
.thumb
sub_8029604:
    push {lr}
    ldrb r0, [r5,#7]
    sub r0, #1
    bgt loc_8029618
    mov r0, #0x9b
    bl f500_8000558
    mov r0, #0x60 
    strb r0, [r5,#7]
    b locret_802961A
loc_8029618:
    strb r0, [r5,#7]
locret_802961A:
    pop {pc}
// end of function sub_8029604

.thumb
sub_802961C:
    push {lr}
    ldr r0, [pc, #0x802962c-0x802961e-2] // dword_869F8A4
    ldr r1, [pc, #0x8029630-0x8029620-4] // unk_30027C0
    mov r2, #0x20 
    bl f900_80009A0
    pop {pc}
    .balign 4, 0x00
off_802962C:    .word dword_869F8A4
off_8029630:    .word unk_30027C0
// end of function sub_802961C

.thumb
sub_8029634:
    push {r5,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r1, [r7,#0x20]
    ldrh r0, [r5,#8]
    mov r6, #0
    cmp r1, r0
    beq loc_802965C
    bgt loc_8029652
    mov r6, #1
    sub r0, #4
    cmp r0, r1
    bge loc_802965C
    add r0, r1, #0
    b loc_802965C
loc_8029652:
    mov r6, #2
    add r0, #4
    cmp r0, r1
    blt loc_802965C
    add r0, r1, #0
loc_802965C:
    strh r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r0, [r7,#0x20]
    ldrh r1, [r7,#0x22]
    lsr r1, r1, #2
    tst r6, r6
    bne loc_8029676
    mov r2, #0x20 
    cmp r0, r1
    ble loc_8029678
    mov r2, #0
    b loc_8029678
loc_8029676:
    lsl r2, r6, #5
loc_8029678:
    ldr r0, [pc, #0x80296e8-0x8029678-4] // dword_86A0364
    add r0, r0, r2
    ldr r1, [pc, #0x80296ec-0x802967c-4] // unk_30027C0
    mov r2, #0x20 
    bl f900_80009A0
    ldrh r0, [r5,#8]
    bl fA00_8000A30
    add r2, r0, #0
    mov r4, #0
    mov r8, r4
    mov r7, #0xc
    mov r0, #8
loc_8029694:
    push {r0,r2,r7}
    lsr r2, r7
    mov r1, #0xf
    and r2, r1
    ldr r1, [pc, #0x80296f0-0x802969c-4] // =0x8000
    lsl r0, r0, #0x10
    orr r0, r1
    tst r2, r2
    bne loc_80296B4
    mov r4, r8
    tst r4, r4
    bne loc_80296B8
    tst r7, r7
    beq loc_80296B8
    mov r2, #0xb
    b loc_80296B8
loc_80296B4:
    mov r4, #1
    mov r8, r4
loc_80296B8:
    lsl r2, r2, #1
    ldr r1, [pc, #0x80296f4-0x80296ba-2] // =0xC792
    add r1, r1, r2
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
// end of function sub_8029634

    pop {r0,r2,r7}
    add r0, #8
    sub r7, #4
    bge loc_8029694
    ldr r0, [pc, #0x80296f0-0x80296ce-2] // =0x8000
    ldr r1, [pc, #0x80296f8-0x80296d0-4] // =0xC790
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    ldr r0, [pc, #0x80296fc-0x80296da-2] // =0x10288000
    ldr r1, [pc, #0x80296f8-0x80296dc-4] // =0xC790
    mov r2, #1
    mov r3, #0
    bl sub_8025BD8
    pop {r5,pc}
off_80296E8:    .word dword_86A0364
off_80296EC:    .word unk_30027C0
dword_80296F0:    .word 0x8000
dword_80296F4:    .word 0xC792
dword_80296F8:    .word 0xC790
dword_80296FC:    .word 0x10288000
.thumb
sub_8029700:
    push {r5,lr}
    ldr r5, [pc, #0x8029718-0x8029702-2] // unk_200B120
    mov r1, #0
    strb r1, [r5,#(byte_200B127 - 0x200b120)]
    strb r0, [r5,#(byte_200B124 - 0x200b120)]
    cmp r0, #3
    blt locret_8029714
    mov r0, #0x9c
    bl f500_8000558
locret_8029714:
    pop {r5,pc}
    .balign 4, 0x00
off_8029718:    .word unk_200B120
// end of function sub_8029700

.thumb
sub_802971C:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    bl sub_80ADDDC
    bl sub_802D414
    bl sub_80A028C
    bl sub_809F388
    mov r0, #0x11
    mov r1, #0x82
    bl sub_8024F9C
    bl sub_80A1BEC
    bl sub_80A52F2
    pop {r4-r7,pc}
// end of function sub_802971C

.thumb
sub_8029750:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024F9C
    bl sub_802D414
    mov r2, #0
    str r2, [r0,#0x40]
    str r2, [r0,#0x44]
    mov r0, #0x11
    mov r1, #0x6c 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x6d 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x6b 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x82
    bl sub_8024F9C
    bl sub_809F588
    bl sub_802A3A0
    mov r0, #0xc
    mov r1, #0x1a
    bl sub_8024FB8
    mov r0, #0xc
    mov r1, #0x1b
    bl sub_8024FB8
    mov r0, #9
    mov r1, #0xb4
    bl sub_8024F9C
    mov r0, #9
    mov r1, #0xb5
    bl sub_8024F9C
    mov r0, #9
    mov r1, #0xb6
    bl sub_8024F9C
    mov r0, #9
    mov r1, #0xb7
    bl sub_8024F9C
    mov r0, #9
    mov r1, #0xb8
    bl sub_8024FB8
    mov r0, #9
    mov r1, #0xb9
    bl sub_8024FB8
    mov r0, #0
    mov r1, #0x6c 
    bl sub_8024FF0
    beq locret_80297DE
    mov r0, #0xc
    mov r1, #0x21 
    bl sub_8024F9C
locret_80297DE:
    pop {r4-r7,pc}
// end of function sub_8029750

.thumb
sub_80297E0:
    push {lr}
    ldr r2, [pc, #0x8029830-0x80297e2-2] // dword_200A140
    ldrb r1, [r2,#(dword_200A140+3 - 0x200a140)]
    mov r0, #0
    str r0, [r2]
    str r0, [r2,#(dword_200A144 - 0x200a140)]
    strb r1, [r2,#(dword_200A140+3 - 0x200a140)]
    pop {pc}
// end of function sub_80297E0

loc_80297F0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8029830-0x80297f2-2] // dword_200A140
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldrb r0, [r2,#4]
    cmp r0, #0x80
    bge loc_8029802
    ldr r0, [pc, #0x8029810-0x80297fe-2] // off_8029818
    b loc_8029804
loc_8029802:
    ldr r0, [pc, #0x8029814-0x8029802-2] // off_8029824
loc_8029804:
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_8029810:    .word off_8029818
off_8029814:    .word off_8029824
off_8029818:    .word sub_8029834+1
    .word sub_8029868+1
    .word sub_8029888+1
off_8029824:    .word sub_8029B62+1
    .word sub_8029B6A+1
    .word sub_8029B72+1
off_8029830:    .word dword_200A140
.thumb
sub_8029834:
    push {lr}
    mov r0, #4
    strb r0, [r5]
    ldr r0, [pc, #0x8029864-0x802983a-2] // dword_200A338
    mov r1, #4
    strh r1, [r0]
    bl sub_8029B18
    bl sub_8029B1C
    mov r7, r10
    ldr r0, [r7,#8]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #0xe
    bl f500_8000560
    pop {pc}
    .balign 4, 0x00
off_8029864:    .word dword_200A338
// end of function sub_8029834

.thumb
sub_8029868:
    push {lr}
    ldr r0, [pc, #0x8029878-0x802986a-2] // off_802987C
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8029878:    .word off_802987C
off_802987C:    .word sub_80298C0+1
    .word sub_80298D6+1
    .word sub_8029940+1
// end of function sub_8029868

.thumb
sub_8029888:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [pc, #0x80298bc-0x8029892-2] // dword_200A338
    mov r1, #1
    strh r1, [r0]
    bl sub_8001D04
    mov r7, r10
    ldr r0, [r7,#0x40]
    mov r1, #0
    strb r1, [r0,#0x12]
    ldr r0, [r5,#8]
    mov r1, #0
    bl sub_8005644
    ldrb r0, [r5,#3]
    bl sub_8005552
    bl sub_802971C
    bl f500_80006CC
    pop {pc}
off_80298BC:    .word dword_200A338
// end of function sub_8029888

.thumb
sub_80298C0:
    push {lr}
    mov r0, #0xb
    bl sub_8001BC8
    mov r0, #0
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_80298C0

.thumb
sub_80298D6:
    push {lr}
    ldrb r0, [r5,#2]
    lsl r3, r0, #3
    mov r1, #1
    and r0, r1
    ldr r1, [pc, #0x80299c8-0x80298e0-4] // off_80299CC
    add r1, r1, r3
    ldr r2, [r1]
    ldr r3, [r1,#4]
    cmp r2, #0
    blt loc_802992A
    lsl r0, r0, #2
    ldr r4, [pc, #0x80299b8-0x80298ee-2] // off_80299BC
    ldrh r1, [r4,r0]
    mov r7, r10
    ldr r4, [r7,#8]
    strh r1, [r4]
    ldr r1, [pc, #0x80299a0-0x80298f8-4] // dword_80299A4
    ldr r1, [r1,r0]
    push {r0,r1,r3,r5}
    add r0, r2, #0
    ldr r1, [pc, #0x80299c4-0x8029900-4] // word_2014000
    bl dword_8111700
    pop {r0,r1,r3,r5}
    push {r0,r3,r5}
    ldr r0, [pc, #0x80299c4-0x802990a-2] // word_2014000
    mov r2, #0x4b 
    lsl r2, r2, #8
    bl f900_80009A0
    pop {r0,r3,r5}
    ldr r1, [pc, #0x80299ac-0x8029916-2] // off_80299B0
    ldr r1, [r1,r0]
    add r0, r3, #0
    mov r2, #0x20 
    bl f900_80009A0
    ldrb r0, [r5,#2]
    add r0, #1
    strb r0, [r5,#2]
    b locret_802993E
loc_802992A:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #4
    mov r1, #0x40 
    bl sub_8005ADC
    bl sub_8029940
locret_802993E:
    pop {pc}
// end of function sub_80298D6

.thumb
sub_8029940:
    push {lr}
    ldrb r0, [r5,#2]
    lsl r3, r0, #3
    mov r1, #1
    and r0, r1
    ldr r1, [pc, #0x8029ad0-0x802994a-2] // off_8029AD4
    add r1, r1, r3
    ldr r2, [r1]
    ldr r3, [r1,#4]
    cmp r2, #0
    blt loc_8029994
    lsl r0, r0, #2
    ldr r4, [pc, #0x80299b8-0x8029958-4] // off_80299BC
    ldrh r1, [r4,r0]
    mov r7, r10
    ldr r4, [r7,#8]
    strh r1, [r4]
    ldr r1, [pc, #0x80299a0-0x8029962-2] // dword_80299A4
    ldr r1, [r1,r0]
    push {r0,r1,r3,r5}
    add r0, r2, #0
    ldr r1, [pc, #0x80299c4-0x802996a-2] // word_2014000
    bl dword_8111700
    pop {r0,r1,r3,r5}
    push {r0,r3,r5}
    ldr r0, [pc, #0x80299c4-0x8029974-4] // word_2014000
    mov r2, #0x4b 
    lsl r2, r2, #8
    bl f900_80009A0
    pop {r0,r3,r5}
    ldr r1, [pc, #0x80299ac-0x8029980-4] // off_80299B0
    ldr r1, [r1,r0]
    add r0, r3, #0
    mov r2, #0x20 
    bl f900_80009A0
    ldrb r0, [r5,#2]
    add r0, #1
    strb r0, [r5,#2]
    b locret_802999E
loc_8029994:
    mov r0, #0
    strb r0, [r5,#1]
    strb r0, [r5,#2]
    mov r0, #8
    strb r0, [r5]
locret_802999E:
    pop {pc}
off_80299A0:    .word dword_80299A4
dword_80299A4:    .word 0x6000000, 0x6006000
off_80299AC:    .word off_80299B0
off_80299B0:    .word word_3002A50
    .word unk_3002A70
off_80299B8:    .word off_80299BC
off_80299BC:    .word 0x340
    .word 0x540
off_80299C4:    .word word_2014000
off_80299C8:    .word off_80299CC
off_80299CC:    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word 0xFFFFFFFF
off_8029AD0:    .word off_8029AD4
off_8029AD4:    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word dword_86A0784
    .word dword_86A0704
    .word dword_86A3CA8
    .word dword_86A0724
    .word dword_86A7420
    .word dword_86A0744
    .word dword_86AA8F8
    .word dword_86A0764
    .word 0xFFFFFFFF
// end of function sub_8029940

.thumb
sub_8029B18:
    push {r5,lr}
    pop {r5,pc}
// end of function sub_8029B18

.thumb
sub_8029B1C:
    push {r5,lr}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    mov r3, #0
loc_8029B26:
    push {r0-r3}
    bl sub_8001DC8
    pop {r0-r3}
    add r3, #1
    add r0, #1
    cmp r0, #0x1e
    bne loc_8029B26
    add r1, #1
    mov r0, #0
    cmp r1, #0x14
    bne loc_8029B26
    mov r0, #0
    mov r1, #0
    mov r2, #2
    mov r3, #0x11
    lsl r3, r3, #8
loc_8029B48:
    push {r0-r3}
    bl sub_8001DC8
    pop {r0-r3}
    add r3, #1
    add r0, #1
    cmp r0, #0x1e
    bne loc_8029B48
    add r1, #1
    mov r0, #0
    cmp r1, #0x14
    bne loc_8029B48
    pop {r5,pc}
// end of function sub_8029B1C

.thumb
sub_8029B62:
    push {lr}
    mov r0, #4
    strb r0, [r5]
    pop {pc}
// end of function sub_8029B62

.thumb
sub_8029B6A:
    push {lr}
    mov r0, #8
    strb r0, [r5]
    pop {pc}
// end of function sub_8029B6A

.thumb
sub_8029B72:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    bl sub_8001D04
    mov r7, r10
    ldr r0, [r7,#0x40]
    mov r1, #0
    strb r1, [r0,#0x12]
    mov r1, #0x10
    strb r1, [r0,#0x13]
    ldr r0, [r5,#8]
    mov r1, #0
    bl sub_8005644
    ldrb r0, [r5,#3]
    bl sub_8005552
    bl sub_8029750
    pop {pc}
unk_8029BA0:    .byte 0x6C 
    .byte 0x44 
    .byte 5
    .byte 8
    .byte 0x88
    .byte 0x44 
    .byte 5
    .byte 8
    .byte 0x84
    .byte 0x6F 
    .byte 5
    .byte 8
    .byte 0x90
    .byte 0x6F 
    .byte 5
    .byte 8
    .byte 4
    .byte 0x94
    .byte 5
    .byte 8
    .byte 0x14
    .byte 0x94
    .byte 5
    .byte 8
    .byte 0xA8
    .byte 0xD7
    .byte 5
    .byte 8
    .byte 0xC0
    .byte 0xD7
    .byte 5
    .byte 8
    .byte 0x34 
    .byte 0x2B 
    .byte 6
    .byte 8
    .byte 0x5C 
    .byte 0x2B 
    .byte 6
    .byte 8
    .byte 0xBC
    .byte 0x7C 
    .byte 6
    .byte 8
    .byte 0xCC
    .byte 0x7C 
    .byte 6
    .byte 8
dword_8029BD0:    .word 0x80544C0, 0x8056FA8, 0x8059434, 0x805D7F0, 0x8062BAC
    .word 0x8067CEC
dword_8029BE8:    .word 0x80544A4, 0x8056F9C, 0x8059424, 0x805D7D8, 0x8062B84
    .word 0x8067CDC, 0x80543E1, 0x8056F2D, 0x8059355, 0x805D60D
    .word 0x80628C5, 0x8067C85
dword_8029C18:    .word 0x8069628, 0x8069630, 0x806AB08, 0x806AB18, 0x806DA40
    .word 0x806DA54, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
    .word 0x807012C, 0x807014C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x8071798, 0x80717D8, 0x8074088, 0x80740B8, 0x8075EC4
    .word 0x8075F04, 0x0, 0x0
    .word 0x80774BC, 0x80774C8, 0x8079BF4, 0x8079C04, 0x807CD3C
    .word 0x807CD48, 0x807FF84, 0x807FF94, 0x8082A0C, 0x8082A2C
dword_8029CC0:    .word 0x8069640, 0x806AB38, 0x806DA7C, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x807018C, 0x0, 0x0, 0x0
    .word 0x8071858, 0x8074118, 0x8075F84, 0x0
    .word 0x80774E0, 0x8079C24, 0x807CD60, 0x807FFB4, 0x8082A6C
off_8029D14:    .word sub_806958C+1
    .word loc_806AAA0+1
    .word ho_806D928+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word ho_806FE20+1
    .word 0x0, 0x0, 0x0
    .word loc_807150C+1
    .word sub_8073B88+1
    .word loc_8075BB4+1
    .word 0x0
    .word loc_80773C0+1
    .word ho_null_807990C+1
    .word loc_807CC90+1
    .word sub_807FD00+1
    .word ho_null_8082728+1
off_8029D68:    .word off_8069638
    .word off_806AB28
    .word off_806DA68
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word pt_807016C
    .word 0x0, 0x0, 0x0
    .word off_8071818
    .word dword_80740E8
    .word off_8075F44
    .byte 0, 0, 0, 0
    .word off_80774D4
    .word off_8079C14
    .word off_807CD54
    .word off_807FFA4
    .word off_8082A4C
off_8029DBC:    .word sub_80695B0+1
    .word sub_806AAD0+1
    .word sub_806D95E+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word sub_806FF58+1
    .word 0x0, 0x0, 0x0
    .word sub_80715C0+1
    .word sub_8073BD2+1
    .word sub_8075C0E+1
    .word 0x0
    .word sub_80773EA+1
    .word sub_807993C+1
    .word sub_807CCBA+1
    .word sub_807FD30+1
    .word sub_8082770+1
// end of function sub_8029B72

.thumb
sub_8029E10:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    push {r0,r1}
    ldr r0, [pc, #0x8029e70-0x8029e1c-4] // unk_200B6D0
    mov r1, #0x40 
    bl f900_8000930
    bl sub_802BC1C
    bl sub_802A2E8
    bl sub_802A314
    bl sub_802A326
    pop {r0,r1}
    cmp r0, #0x80
    bge loc_8029E3E
    ldr r4, [pc, #0x8029e68-0x8029e3a-2] // unk_8029BA0
    b loc_8029E42
loc_8029E3E:
    ldr r4, [pc, #0x8029e6c-0x8029e3e-2] // dword_8029C18
    sub r0, #0x80
loc_8029E42:
    lsl r0, r0, #3
    lsl r3, r1, #2
    add r4, r4, r0
    ldr r0, [r4]
    ldr r1, [r4,#4]
    ldr r2, [r4,#8]
    ldr r0, [r0,r3]
    ldr r1, [r1,r3]
    ldr r2, [r2,r3]
    bl sub_802AE46
    bl sub_802BC50
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8029E68:    .word unk_8029BA0
off_8029E6C:    .word dword_8029C18
off_8029E70:    .word unk_200B6D0
// end of function sub_8029E10

.thumb
sub_8029E74:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    bl sub_802BCF2
    bne loc_8029EB2
    bl sub_802AE7A
    bl sub_8029ECA
    beq loc_8029EB2
    bl sub_802A1E0
    bl sub_802A23C
    bl sub_8029F04
    bl sub_8029F90
    bl sub_802A04C
    bl sub_802A080
    bl sub_802A1A4
    bl sub_802A494
    bl sub_802A61C
loc_8029EB2:
    bl sub_802AE9E
    bl sub_802BCF2
    beq loc_8029EC0
    bl sub_802CF42
loc_8029EC0:
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
// end of function sub_8029E74

.thumb
sub_8029ECA:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_8029EFE
    mov r0, #0x11
    mov r1, #0x76 
    bl sub_8024FF0
    bne loc_8029EFE
    mov r0, #0x11
    mov r1, #0x78 
    bl sub_8024FF0
    bne loc_8029EFE
    bl sub_80A6FB6
    bne loc_8029EFE
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8029EFE
    bl sub_802BCF2
    bne loc_8029EFE
    mov r0, #1
    pop {r4-r7,pc}
loc_8029EFE:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8029ECA

.thumb
sub_8029F04:
    push {r5,r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    blt loc_8029F82
    bl sub_8005B5C
    beq loc_8029F82
    bl sub_80A6FB6
    bne loc_8029F82
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8029F82
    bl sub_802BCF2
    bne loc_8029F82
    mov r0, #0x11
    mov r1, #0x6a 
    bl sub_8024FF0
    beq loc_8029F3E
    ldr r0, [pc, #0x8029f8c-0x8029f34-4] // dword_809DAAC
    bl sub_802BC60
    mov r0, #0
    pop {r5,r7,pc}
loc_8029F3E:
    mov r7, r10
    ldr r7, [r7,#0x44]
    mov r0, #0x11
    mov r1, #0x6c 
    bl sub_8024FF0
    beq loc_8029F5E
    ldr r0, [r7,#0x40]
    tst r0, r0
    bne loc_8029F5E
    mov r0, #0x11
    mov r1, #0x6c 
    bl sub_8024FB8
    mov r1, #1
    b loc_8029F78
loc_8029F5E:
    mov r0, #0x11
    mov r1, #0x6d 
    bl sub_8024FF0
    beq loc_8029F82
    ldr r0, [r7,#0x44]
    tst r0, r0
    bne loc_8029F82
    mov r0, #0x11
    mov r1, #0x6d 
    bl sub_8024FB8
    mov r1, #0
loc_8029F78:
    ldr r0, [pc, #0x8029f88-0x8029f78-4] // dword_809DA9C
    bl sub_802BC60
    mov r0, #0
    pop {r5,r7,pc}
loc_8029F82:
    mov r0, #1
    pop {r5,r7,pc}
    .balign 4, 0x00
off_8029F88:    .word dword_809DA9C
off_8029F8C:    .word dword_809DAAC
// end of function sub_8029F04

.thumb
sub_8029F90:
    push {r4-r7,lr}
    bl sub_802BCF2
    bne loc_802A022
    mov r7, r10
    ldr r2, [r7,#4]
    ldrh r2, [r2,#2]
    ldr r3, [pc, #0x802a02c-0x8029f9e-2] // =0xFF
    tst r3, r2
    beq loc_802A022
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r4, [r7,#4]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    bge loc_802A01C
    ldr r3, [pc, #0x802a038-0x8029fb0-4] // off_802A03C
loc_8029FB2:
    ldr r0, [r3]
    mov r6, #0
    cmp r0, #0xff
    beq loc_8029FC6
    cmp r0, r4
    bne loc_8029FC2
    ldr r6, [r3,#4]
    b loc_8029FC6
loc_8029FC2:
    add r3, #8
    b loc_8029FB2
loc_8029FC6:
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    sub sp, sp, #0xc
    ldr r0, [r7,#0x24]
    ldr r1, [r7,#0x28]
    ldr r2, [r7,#0x2c]
    str r0, [sp]
    str r1, [sp,#4]
    add r2, r2, r6
    str r2, [sp,#8]
    mov r0, sp
    bl sub_8027646
    add sp, sp, #0xc
    sub r0, #0x40 
    blt loc_802A014
    cmp r0, #8
    bge loc_802A014
    add r4, r0, #0
    ldr r2, [pc, #0x802a028-0x8029fee-2] // =0x1130
    add r0, r0, r2
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_802A014
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x7c]
    ldrb r1, [r7,r4]
    cmp r1, #0xff
    beq loc_802A014
    lsl r4, r4, #8
    orr r1, r4
    ldr r0, [pc, #0x802a030-0x802a00a-2] // dword_809D24C
    bl sub_802BC60
    mov r0, #0
    pop {r4-r7,pc}
loc_802A014:
    mov r0, #0x69 
    bl f500_8000558
    b loc_802A022
loc_802A01C:
    ldr r0, [pc, #0x802a034-0x802a01c-4] // dword_809D2FC
    bl sub_802BC60
loc_802A022:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A028:    .word 0x1130
off_802A02C:    .word 0x100
off_802A030:    .word dword_809D24C
off_802A034:    .word dword_809D2FC
off_802A038:    .word off_802A03C
off_802A03C:    .word 0x704
dword_802A040:    .word 0x200000
    .word 0xFF, 0xFF
// end of function sub_8029F90

.thumb
sub_802A04C:
    push {r4-r7,lr}
    bl sub_802BCF2
    bne loc_802A074
    mov r7, r10
    ldr r2, [r7,#4]
    ldrh r2, [r2,#2]
    ldr r3, [pc, #0x802a078-0x802a05a-2] // =0x200
    tst r3, r2
    beq loc_802A074
    mov r0, #3
    mov r1, #0x1d
    bl sub_8024FF0
    beq loc_802A074
    ldr r0, [pc, #0x802a07c-0x802a06a-2] // dword_809D6D0
    bl sub_802BC60
    mov r0, #0
    pop {r4-r7,pc}
loc_802A074:
    mov r0, #1
    pop {r4-r7,pc}
off_802A078:    .word 0x200
off_802A07C:    .word dword_809D6D0
// end of function sub_802A04C

.thumb
sub_802A080:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq loc_802A0F6
    bl sub_80A6FB6
    bne loc_802A0F6
    mov r0, #0x80
    bl sub_80539A0
    bne loc_802A0F6
    bl sub_802BCF2
    bne loc_802A0F6
    ldr r7, [pc, #0x802a0fc-0x802a09c-4] // byte_200B190
    ldrh r0, [r7,#(word_200B194 - 0x200b190)]
    cmp r0, #0
    beq loc_802A0AE
    ldr r0, [pc, #0x802a104-0x802a0a4-4] // dword_809DF10
    bl sub_802BC60
    mov r0, #0
    pop {r4-r7,pc}
loc_802A0AE:
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r4, [r7,#0xe]
    tst r4, r4
    beq loc_802A0F6
    mov r1, #0
    bl sub_802A10C
    bne loc_802A0DC
    mov r1, #0
    bl sub_802A150
    bne loc_802A0DC
    mov r0, #0x11
    mov r1, #0x2f 
    bl sub_8024FF0
    bne loc_802A0F6
    ldr r0, [pc, #0x802a100-0x802a0d2-2] // dword_809DB98
    bl sub_802BC60
    mov r0, #0
    pop {r4-r7,pc}
loc_802A0DC:
    mov r1, #1
    bl sub_802A10C
    bne loc_802A0F6
    mov r1, #1
    bl sub_802A150
    bne loc_802A0F6
    ldr r0, [pc, #0x802a108-0x802a0ec-4] // dword_809E018
    bl sub_802BC60
    mov r0, #0
    pop {r4-r7,pc}
loc_802A0F6:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A0FC:    .word byte_200B190
off_802A100:    .word dword_809DB98
off_802A104:    .word dword_809DF10
off_802A108:    .word dword_809E018
// end of function sub_802A080

.thumb
sub_802A10C:
    push {r4,r6,lr}
    mov r4, #0
    ldr r0, [pc, #0x802a134-0x802a110-4] // dword_802A140
    tst r1, r1
    beq loc_802A118
    ldr r0, [pc, #0x802a138-0x802a116-2] // dword_802A140
loc_802A118:
    mov r2, #0
    ldrh r6, [r7,#4]
    ldr r1, [pc, #0x802a13c-0x802a11c-4] // =0xFFFF
loc_802A11E:
    ldrh r3, [r0,r2]
    cmp r3, r6
    beq loc_802A12C
    add r2, #2
    cmp r3, r1
    bne loc_802A11E
    mov r4, #1
loc_802A12C:
    add r0, r2, #0
    tst r4, r4
    pop {r4,r6,pc}
    .balign 4, 0x00
off_802A134:    .word dword_802A140
dword_802A138:    .word 0x802A14A
dword_802A13C:    .word 0xFFFF
dword_802A140:    .word 0x1040600, 0x7940101, 0x600FFFF, 0xFFFF
// end of function sub_802A10C

.thumb
sub_802A150:
    push {r6,r7,lr}
    add r7, r1, #0
    add r6, r0, #0
    ldr r2, [pc, #0x802a194-0x802a156-2] // dword_802A19C
    tst r1, r1
    beq loc_802A16E
    mov r0, #0
    mov r1, #0x70 
    bl sub_8024FF0
    bne loc_802A16C
    mov r1, #1
    tst r1, r1
    b locret_802A190
loc_802A16C:
    ldr r2, [pc, #0x802a198-0x802a16c-4] // dword_802A1A0
loc_802A16E:
    tst r7, r7
    bne loc_802A188
    add r0, r6, #0
    cmp r0, #4
    bne loc_802A188
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#0xd]
    tst r1, r1
    bne loc_802A188
    mov r1, #1
    tst r1, r1
    b locret_802A190
loc_802A188:
    add r0, r6, #0
    lsr r0, r0, #1
    ldrb r1, [r2,r0]
    cmp r1, r4
locret_802A190:
    pop {r6,r7,pc}
    .balign 4, 0x00
off_802A194:    .word dword_802A19C
off_802A198:    .word dword_802A1A0
dword_802A19C:    .word 0xF0F9F5F7
dword_802A1A0:    .word 0xF6
// end of function sub_802A150

.thumb
sub_802A1A4:
    push {r4-r7,lr}
    bl sub_8005B5C
    beq locret_802A1D4
    bl sub_80A6FB6
    bne locret_802A1D4
    mov r0, #0x80
    bl sub_80539A0
    bne locret_802A1D4
    bl sub_802BCF2
    bne locret_802A1D4
    ldr r7, [pc, #0x802a1d8-0x802a1c0-4] // byte_20015E0
    ldrh r0, [r7,#(word_20015F2 - 0x20015e0)]
    cmp r0, #0
    bne loc_802A1CC
    mov r0, #1
    pop {r4-r7,pc}
loc_802A1CC:
    ldr r0, [pc, #0x802a1dc-0x802a1cc-4] // dword_809E318
    bl sub_802BC60
    mov r0, #0
locret_802A1D4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A1D8:    .word byte_20015E0
off_802A1DC:    .word dword_809E318
// end of function sub_802A1A4

.thumb
sub_802A1E0:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrb r4, [r4,#0xe]
    tst r4, r4
    beq locret_802A228
    sub r4, #0xf0
    blt locret_802A228
    cmp r4, #0x10
    bge locret_802A228
    ldr r0, [pc, #0x802a22c-0x802a1f4-4] // =0x1120
    add r0, r0, r4
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne locret_802A228
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r6, [r7,#4]
    ldrb r7, [r7,#5]
    cmp r6, #0x80
    bge loc_802A210
    ldr r1, [pc, #0x802a230-0x802a20c-4] // dword_8029BD0
    b loc_802A214
loc_802A210:
    ldr r1, [pc, #0x802a234-0x802a210-4] // dword_8029CC0
    sub r6, #0x80
loc_802A214:
    lsl r6, r6, #2
    lsl r7, r7, #2
    ldr r1, [r1,r6]
    ldr r1, [r1,r7]
    ldrb r1, [r1,r4]
    cmp r1, #0xff
    beq locret_802A228
    ldr r0, [pc, #0x802a238-0x802a222-2] // dword_809CDC0
    bl sub_802BC60
locret_802A228:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A22C:    .word 0x1120
off_802A230:    .word dword_8029BD0
off_802A234:    .word dword_8029CC0
off_802A238:    .word dword_809CDC0
// end of function sub_802A1E0

.thumb
sub_802A23C:
    push {r4-r7,lr}
    bl sub_802BCF2
    bne locret_802A27C
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r0, [r5,#0x28]
    add r0, #0x24 
    bl sub_8027646
    add r4, r1, #0
    cmp r4, #1
    blt locret_802A27C
    cmp r4, #0xf
    bgt locret_802A27C
    ldr r1, [pc, #0x802a280-0x802a25a-2] // =0x1150
    add r1, r1, r4
    add r0, r1, #0
    bl sub_8024FF4
    beq locret_802A27C
    mov r0, #4
    mul r0, r4
    ldr r3, [pc, #0x802a288-0x802a26a-2] // unk_200B6D0
    add r3, r3, r0
    ldrb r0, [r3]
    tst r0, r0
    beq locret_802A27C
    ldr r0, [pc, #0x802a284-0x802a274-4] // dword_809CDE4
    ldr r1, [r3]
    bl sub_802BC60
locret_802A27C:
    pop {r4-r7,pc}
    .byte 0, 0
off_802A280:    .word 0x1150
off_802A284:    .word dword_809CDE4
off_802A288:    .word unk_200B6D0
// end of function sub_802A23C

.thumb
sub_802A28C:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrb r1, [r4,#5]
    ldrb r2, [r4,#0xd]
    cmp r1, r2
    bne loc_802A2A2
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#0xc]
    cmp r1, r2
    beq loc_802A2CC
loc_802A2A2:
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FF0
    bne loc_802A2CC
    bl sub_802BCF2
    bne loc_802A2CC
    mov r0, #0x11
    mov r1, #0x86
    bl sub_8024FF0
    bne loc_802A2C0
    ldr r0, [pc, #0x802a2e0-0x802a2bc-4] // unk_809D364
    b loc_802A2C8
loc_802A2C0:
    ldr r0, [pc, #0x802a2e4-0x802a2c0-4] // unk_809D394
    ldrb r1, [r4,#5]
    sub r1, #5
    add r1, #2
loc_802A2C8:
    bl sub_802BC60
loc_802A2CC:
    mov r0, #0x11
    mov r1, #0x64 
    bl sub_8024FB8
    mov r0, #0x11
    mov r1, #0x86
    bl sub_8024FB8
    pop {r4-r7,pc}
    .byte 0, 0
off_802A2E0:    .word unk_809D364
off_802A2E4:    .word unk_809D394
// end of function sub_802A28C

.thumb
sub_802A2E8:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldr r0, [r5,#0x58]
    lsr r1, r0, #8
    mov r2, #0xff
    and r0, r2
    ldrb r7, [r5,#4]
    cmp r7, #0x80
    blt locret_802A30C
    sub r7, #0x80
    lsl r7, r7, #2
    ldr r6, [pc, #0x802a310-0x802a300-4] // off_8029D14
    ldr r6, [r6,r7]
    tst r6, r6
    beq locret_802A30C
    mov lr, pc
    bx r6
locret_802A30C:
    pop {r4-r7,pc}
    .byte 0, 0
off_802A310:    .word off_8029D14
// end of function sub_802A2E8

.thumb
sub_802A314:
    push {r5,lr}
    bl sub_80A6CF0
    mov r0, #1
    add r1, r5, #0
    add r1, #0x24 
    bl sub_8025F1E
    pop {r5,pc}
// end of function sub_802A314

.thumb
sub_802A326:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x81
    bl sub_8024FF0
    bne loc_802A352
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#5]
    cmp r0, #0x80
    bge loc_802A342
    ldr r2, [pc, #0x802a35c-0x802a33e-2] // dword_8029BE8
    b loc_802A346
loc_802A342:
    ldr r2, [pc, #0x802a360-0x802a342-2] // off_8029D68
    sub r0, #0x80
loc_802A346:
    lsl r0, r0, #2
    lsl r1, r1, #2
    ldr r2, [r2,r0]
    ldr r0, [r2,r1]
    bl sub_802669C
loc_802A352:
    mov r0, #0x11
    mov r1, #0x81
    bl sub_8024FB8
    pop {r4-r7,pc}
off_802A35C:    .word dword_8029BE8
off_802A360:    .word off_8029D68
// end of function sub_802A326

    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrb r0, [r3,#4]
    cmp r0, #0x80
    bge loc_802A374
    ldr r2, [pc, #0x802a384-0x802a370-4] // dword_8029BE8+24
    b loc_802A378
loc_802A374:
    ldr r2, [pc, #0x802a388-0x802a374-4] // off_8029DBC
    sub r0, #0x80
loc_802A378:
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov lr, pc
    bx r2
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A384:    .word dword_8029BE8+0x18
off_802A388:    .word off_8029DBC
    push {r4-r7,lr}
    ldr r0, [pc, #0x802a398-0x802a38e-2] // dword_802A39C
    bl sub_802669C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A398:    .word dword_802A39C
dword_802A39C:    .word 0xFF
.thumb
sub_802A3A0:
    push {r4-r7,lr}
    ldr r4, [pc, #0x802a3c0-0x802a3a2-2] // aXcydzeFGHIJKal
loc_802A3A4:
    ldrh r0, [r4]
    tst r0, r0
    beq locret_802A3BE
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_802A3BA
    ldrh r0, [r4,#2]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
loc_802A3BA:
    add r4, #4
    b loc_802A3A4
locret_802A3BE:
    pop {r4-r7,pc}
off_802A3C0:    .word aXcydzeFGHIJKal
aXcydzeFGHIJKal:    .hword 0x58
word_802A3C6:    .hword 0x43
    .byte 0x59 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x5A 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x5B 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x5D 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x49 
    .byte 0
    .byte 0x5F 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x60 
    .byte 0
    .byte 0x4B 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x62 
    .byte 0
    .byte 0x4D 
    .byte 0
    .byte 0x63 
    .byte 0
    .byte 0x4E 
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x4F 
    .byte 0
    .byte 0x65 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x51 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x52 
    .byte 0
    .byte 0x68 
    .byte 0
    .byte 0x53 
    .byte 0
    .byte 0x69 
    .byte 0
    .byte 0x54 
    .byte 0
    .byte 0x6A 
    .byte 0
    .byte 0x55 
    .byte 0
    .byte 0x6B 
    .byte 0
    .byte 0x56 
    .byte 0
    .byte 0x6C 
    .byte 0
    .byte 0x57 
    .byte 0
    .byte 0
    .byte 0
    .balign 4, 0x00
// end of function sub_802A3A0

    push {r4-r7,lr}
    ldr r4, [pc, #0x802a43c-0x802a41e-2] // word_802A440
    add r7, r0, #0
loc_802A422:
    ldrh r1, [r4]
    cmp r1, #0xff
    beq locret_802A438
    cmp r7, r1
    bne loc_802A434
    ldrh r1, [r4,#2]
    add r0, r1, #0
    bl sub_8024FA0
loc_802A434:
    add r4, #4
    b loc_802A422
locret_802A438:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A43C:    .word word_802A440
word_802A440:    .hword 0xD
word_802A442:    .hword 0x30
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x16
    .byte 0
    .byte 0x33 
    .byte 0
    .byte 0x2F 
    .byte 0
    .byte 0x36 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x1F
    .byte 0
    .byte 0x39 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x3A 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0x3B 
    .byte 0
    .byte 0xE
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x68 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x39 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x5B 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x2F 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x37 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x3D 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0xA8
    .byte 0
    .byte 0x35 
    .byte 0
    .byte 0x89
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
.thumb
sub_802A494:
    push {r4-r7,lr}
    bl sub_802BCF2
    bne locret_802A4FA
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    blt locret_802A4FA
    ldr r0, [r7,#0x28]
    add r0, #0x24 
    bl sub_8027646
    add r6, r0, #0
    cmp r6, #0xd0
    blt locret_802A4FA
    cmp r6, #0xef
    bgt locret_802A4FA
    ldr r5, [pc, #0x802a578-0x802a4b8-4] // dword_802A57C
    bl fA00_8000C3C
    tst r0, r0
    beq loc_802A4C4
    ldr r5, [pc, #0x802a5c8-0x802a4c2-2] // dword_802A5CC
loc_802A4C4:
    ldr r4, [pc, #0x802a4fc-0x802a4c4-4] // word_802A500
loc_802A4C6:
    ldrh r0, [r4]
    tst r0, r0
    beq locret_802A4FA
    cmp r0, r6
    bne loc_802A4F4
    ldrh r7, [r4,#4]
    add r0, r7, #0
    bl sub_8024FF4
    beq locret_802A4FA
    ldrh r7, [r4,#2]
    add r0, r7, #0
    bl sub_8024FF4
    bne locret_802A4FA
    add r0, r7, #0
    bl sub_8024FA0
    ldr r0, [pc, #0x802a618-0x802a4ea-2] // dword_809D654
    ldr r1, [r5]
    bl sub_802BC60
    b locret_802A4FA
loc_802A4F4:
    add r4, #6
    add r5, #4
    b loc_802A4C6
locret_802A4FA:
    pop {r4-r7,pc}
off_802A4FC:    .word word_802A500
word_802A500:    .hword 0xD0
word_802A502:    .hword 0x62
word_802A504:    .hword 0x39
    .hword 0xD1
    .word 0x300059, 0x6500D2, 0xD3003C, 0x3B0064, 0x5C00D4, 0xD50033
    .word 0x2F0058, 0x5F00D6, 0xD70036, 0x3A0063, 0x6600D8, 0xD9003D
    .word 0x3E0067, 0x5A00DA, 0xDB0031, 0x34005D, 0x6900DC, 0xDD0040
    .word 0x3F0068, 0x5B00DE, 0xDF0032, 0x380061, 0x6000E0, 0xE10037
    .word 0x42006B, 0x5E00E2, 0x35, 0x0
off_802A578:    .word dword_802A57C
dword_802A57C:    .word 0xFF01D9
    .word 0xFF01D1, 0xFF01DB, 0xFF01D5, 0xFF01D7, 0xFF01CF, 0xFF01D3
    .word 0xFF01DD, 0xFF01DF, 0xFF01E1, 0xFF01E3, 0xFF01E5, 0xFF01E7
    .word 0xFF01E9, 0xFF01EB, 0xFF01ED, 0xFF01EF, 0xFF01F1, 0xFF01F3
off_802A5C8:    .word dword_802A5CC
dword_802A5CC:    .word 0xFF01DA
    .word 0xFF01D2, 0xFF01DC, 0xFF01D6, 0xFF01D8, 0xFF01D0, 0xFF01D4
    .word 0xFF01DE, 0xFF01E0, 0xFF01E2, 0xFF01E4, 0xFF01E6, 0xFF01E8
    .word 0xFF01EA, 0xFF01EC, 0xFF01EE, 0xFF01F0, 0xFF01F2, 0xFF01F4
off_802A618:    .word dword_809D654
// end of function sub_802A494

.thumb
sub_802A61C:
    push {r4-r7,lr}
    bl sub_802BCF2
    bne locret_802A660
    mov r0, #0
    mov r1, #0x84
    bl sub_8024FF0
    beq locret_802A660
    ldr r4, [pc, #0x802a664-0x802a62e-2] // dword_802A668
    mov r7, #0
loc_802A632:
    ldr r0, [r4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_802A658
    ldr r0, [r4,#4]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_802A658
    ldr r0, [pc, #0x802a6b0-0x802a646-2] // dword_809D4BC
    ldr r1, [r4,#8]
    bl sub_802BC60
    mov r0, #0
    mov r1, #0x84
    bl sub_8024FB8
    b locret_802A660
loc_802A658:
    add r4, #0xc
    add r7, #1
    cmp r7, #6
    blt loc_802A632
locret_802A660:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802A664:    .word dword_802A668
dword_802A668:    .word 0x18
off_802A66C:    .word 0x15D0
dword_802A670:    .word 0x10020A
    .word 0x1B, 0x15D1, 0x11020A, 0x17, 0x15D2, 0x12020A, 0x19
    .word 0x15D3, 0x13020A, 0x1C, 0x15D4, 0x14020A, 0x1A, 0x15D5
    .word 0x15020A
off_802A6B0:    .word dword_809D4BC
// end of function sub_802A61C

.thumb
sub_802A6B4:
    ldr r1, [pc, #0x802a6c0-0x802a6b4-4] // dword_809CF04
    mov r2, #0x14
    mul r2, r0
    add r0, r1, r2
    mov pc, lr
    .byte 0, 0
off_802A6C0:    .word dword_809CF04
// end of function sub_802A6B4

.thumb
sub_802A6C4:
    ldr r3, [pc, #0x802a6fc-0x802a6c4-4] // word_802A700
    push {r4-r7,lr}
    ldr r4, [pc, #0x802a6fc-0x802a6c8-4] // word_802A700
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    ldrh r1, [r7,#4]
    cmp r0, #0x80
    blt loc_802A6D8
    ldr r1, [r7,#0x58]
loc_802A6D8:
    ldrb r3, [r4]
    cmp r3, #0xff
    beq loc_802A6F2
    ldrh r3, [r4]
    cmp r3, r1
    beq loc_802A6E8
    add r4, #2
    b loc_802A6D8
loc_802A6E8:
    mov r0, #0x29 
    mov r1, #1
    bl sub_800D73A
    pop {r4-r7,pc}
loc_802A6F2:
    mov r0, #0x29 
    mov r1, #0
    bl sub_800D73A
    pop {r4-r7,pc}
off_802A6FC:    .word word_802A700
word_802A700:    .hword 0x0
    .hword 0x101
    .word 0x20201, 0x1030003, 0x4030303, 0x1040004, 0x5040404
    .word 0x7040604, 0x1050804, 0xFFFF
off_802A724:    .word loc_802A820+1
    .word sub_802A824+1
    .word sub_802A832+1
    .word sub_802A862+1
    .word sub_802A892+1
    .word sub_802A8BE+1
    .word sub_802A8EE+1
    .word sub_802A91A+1
    .word sub_802A974+1
    .word sub_802A9AA+1
    .word sub_802C562+1
    .word sub_802C586+1
    .word sub_802A9FA+1
    .word sub_802AA2A+1
    .word sub_802AA5A+1
    .word sub_802AA7E+1
    .word sub_802C5AA+1
    .word sub_802C5CE+1
    .word sub_802AAA2+1
    .word sub_802AACA+1
    .word sub_802AAF2+1
    .word sub_802AB16+1
    .word sub_802AB3A+1
    .word sub_802AB6A+1
    .word sub_802AB84+1
    .word sub_802AB9E+1
    .word sub_802ABBA+1
    .word sub_802ABE8+1
    .word sub_802AC04+1
    .word sub_802AC26+1
    .word sub_802AC48+1
    .word sub_802AC66+1
    .word sub_802AC84+1
    .word sub_802ACA4+1
    .word sub_802ACC4+1
// end of function sub_802A6C4

    add r4, sp, #0x37c
    lsr r2, r0, #0x20
    add r4, sp, #0x3ec
    lsr r2, r0, #0x20
    add r5, sp, #0x4c
    lsr r2, r0, #0x20
    add r5, sp, #0xac
    lsr r2, r0, #0x20
    add r5, sp, #0x10c
    lsr r2, r0, #0x20
    add r5, sp, #0x17c
    lsr r2, r0, #0x20
    add r5, sp, #0x1ec
    lsr r2, r0, #0x20
    add r5, sp, #0x23c
    lsr r2, r0, #0x20
    add r5, sp, #0x28c
    lsr r2, r0, #0x20
    ldmia r4, {r0,r1,r4,r6}
    lsr r2, r0, #0x20
    ldmia r4!, {r0-r2,r5,r6}
    lsr r2, r0, #0x20
    ldmia r4!, {r0,r3,r7}
    lsr r2, r0, #0x20
    ldmia r4!, {r0,r2,r3,r5,r7}
    lsr r2, r0, #0x20
    ldmia r4, {r0,r4,r6,r7}
    lsr r2, r0, #0x20
    ldmia r4, {r0,r2-r4,r6,r7}
    lsr r2, r0, #0x20
    add r5, sp, #0x344
    lsr r2, r0, #0x20
    ldmia r5, {r0-r5,r7}
    lsr r2, r0, #0x20
    ldmia r6!, {r0}
    lsr r2, r0, #0x20
    ldmia r6!, {r0,r2,r5}
    lsr r2, r0, #0x20
    add r5, sp, #0x3cc
    lsr r2, r0, #0x20
    ldmia r6!, {r0,r4,r7}
    lsr r2, r0, #0x20
    ldmia r6!, {r0,r2,r5,r7}
    lsr r2, r0, #0x20
    ldmia r6!, {r0,r4,r5,r7}
    lsr r2, r0, #0x20
    ldmia r6!, {r0,r2-r5,r7}
    lsr r2, r0, #0x20
    ldmia r6, {r0,r2,r3,r6,r7}
    lsr r2, r0, #0x20
    ldmia r6, {r0,r1,r3,r4,r6,r7}
    lsr r2, r0, #0x20
    add r6, sp, #0x5c
    lsr r2, r0, #0x20
    ldmia r7!, {r0,r1,r3}
    lsr r2, r0, #0x20
loc_802A820:
    mov r0, #0
    mov pc, lr
.thumb
sub_802A824:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
// end of function sub_802A824

.thumb
sub_802A832:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#6]
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AED0
    cmp r0, r1
    blt loc_802A85C
    cmp r0, r4
    bgt loc_802A85C
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A85C:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802A832

.thumb
sub_802A862:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802A872
    ldrh r4, [r5,r4]
    b loc_802A878
loc_802A872:
    mov r6, #2
    bl sub_802AEE4
loc_802A878:
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_802A88C
    mov r6, #4
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A88C:
    add r7, #8
    mov r0, #1
    pop {pc}
// end of function sub_802A862

.thumb
sub_802A892:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AEE4
    add r0, r4, #0
    add r2, r1, #0
    bl sub_802508C
    beq loc_802A8B8
    mov r6, #4
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A8B8:
    add r7, #8
    mov r0, #1
    pop {pc}
// end of function sub_802A892

.thumb
sub_802A8BE:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802A8CE
    ldrh r4, [r5,r4]
    b loc_802A8D4
loc_802A8CE:
    mov r6, #2
    bl sub_802AEE4
loc_802A8D4:
    add r0, r4, #0
    bl sub_8024FF4
    bne loc_802A8E8
    mov r6, #4
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A8E8:
    add r7, #8
    mov r0, #1
    pop {pc}
// end of function sub_802A8BE

.thumb
sub_802A8EE:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AEE4
    add r0, r4, #0
    add r2, r1, #0
    bl sub_802508C
    bne loc_802A914
    mov r6, #4
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A914:
    add r7, #8
    mov r0, #1
    pop {pc}
// end of function sub_802A8EE

.thumb
sub_802A91A:
    push {lr}
    mov r6, #2
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #6
    bl sub_802AF04
    add r1, r4, #0
    mov r6, #1
    bl sub_802AED0
    cmp r4, #1
    beq loc_802A94A
    cmp r4, #2
    beq loc_802A95A
    mov r6, #0xa
    bl sub_802AED0
    ldrb r0, [r0]
    cmp r0, r4
    beq loc_802A96E
    mov r4, #0xb
    b loc_802A968
loc_802A94A:
    mov r6, #0xa
    bl sub_802AEE4
    ldrh r0, [r0]
    cmp r0, r4
    beq loc_802A96E
    mov r4, #0xc
    b loc_802A968
loc_802A95A:
    mov r6, #0xa
    bl sub_802AF04
    ldr r0, [r0]
    cmp r0, r4
    beq loc_802A96E
    mov r4, #0xe
loc_802A968:
    add r7, r7, r4
    mov r0, #1
    pop {pc}
loc_802A96E:
    add r7, r1, #0
    mov r0, #1
    pop {pc}
// end of function sub_802A91A

.thumb
sub_802A974:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r0, r4, #0
    bl sub_802D3F8
    mov r6, #2
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #3
    bl sub_802AED0
    cmp r0, r1
    blt loc_802A9A4
    cmp r0, r4
    bgt loc_802A9A4
    mov r6, #4
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A9A4:
    add r7, #8
    mov r0, #1
    pop {pc}
// end of function sub_802A974

.thumb
sub_802A9AA:
    push {lr}
    mov r6, #3
    bl sub_802AED0
    cmp r4, #0xff
    bne loc_802A9C4
    mov r6, #1
    bl sub_802AEE4
    add r0, r4, #0
    bl sub_801916C
    b loc_802A9D2
loc_802A9C4:
    add r1, r4, #0
    mov r6, #1
    bl sub_802AEE4
    add r0, r4, #0
    bl sub_8019154
loc_802A9D2:
    mov r6, #4
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #5
    bl sub_802AED0
    cmp r0, r1
    blt loc_802A9F4
    cmp r0, r4
    bgt loc_802A9F4
    mov r6, #6
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802A9F4:
    add r7, #0xa
    mov r0, #1
    pop {pc}
// end of function sub_802A9AA

.thumb
sub_802A9FA:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    add r0, #0x24 
    bl sub_8027646
    tst r0, r0
    bne loc_802AA0E
    add r0, r1, #0
loc_802AA0E:
    mov r6, #1
    bl sub_802AED0
    cmp r0, r4
    bne loc_802AA24
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AA24:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802A9FA

.thumb
sub_802AA2A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    add r0, #0x24 
    bl sub_8027646
    tst r0, r0
    bne loc_802AA3E
    add r0, r1, #0
loc_802AA3E:
    mov r6, #1
    bl sub_802AED0
    cmp r0, r4
    beq loc_802AA54
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AA54:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802AA2A

.thumb
sub_802AA5A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0xe]
    mov r6, #1
    bl sub_802AED0
    cmp r0, r4
    bne loc_802AA78
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AA78:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802AA5A

.thumb
sub_802AA7E:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0xe]
    mov r6, #1
    bl sub_802AED0
    cmp r0, r4
    beq loc_802AA9C
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AA9C:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802AA7E

.thumb
sub_802AAA2:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    ldr r0, [r0,#0x2c]
    asr r0, r0, #0x10
    mov r6, #1
    bl sub_802AEF2
    cmp r0, r4
    bne loc_802AAC4
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AAC4:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802AAA2

.thumb
sub_802AACA:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x28]
    ldr r0, [r0,#0x2c]
    asr r0, r0, #0x10
    mov r6, #1
    bl sub_802AEF2
    cmp r0, r4
    beq loc_802AAEC
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AAEC:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802AACA

.thumb
sub_802AAF2:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x58]
    mov r6, #1
    bl sub_802AEE4
    cmp r0, r4
    bne loc_802AB10
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AB10:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802AAF2

.thumb
sub_802AB16:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldr r0, [r0,#0x58]
    mov r6, #1
    bl sub_802AEE4
    cmp r0, r4
    beq loc_802AB34
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AB34:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802AB16

.thumb
sub_802AB3A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0xd]
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AED0
    cmp r0, r1
    blt loc_802AB64
    cmp r0, r4
    bgt loc_802AB64
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802AB64:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802AB3A

.thumb
sub_802AB6A:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    bl sub_8005B5C
    beq loc_802AB7E
    add r7, #5
    mov r0, #1
    pop {pc}
loc_802AB7E:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
// end of function sub_802AB6A

.thumb
sub_802AB84:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    bl sub_800264C
    bne loc_802AB98
    add r7, #5
    mov r0, #1
    pop {pc}
loc_802AB98:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
// end of function sub_802AB84

.thumb
sub_802AB9E:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    mov r0, #1
    bl sub_802D92C
    bne loc_802ABB4
    add r7, #5
    mov r0, #1
    pop {pc}
loc_802ABB4:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
// end of function sub_802AB9E

.thumb
sub_802ABBA:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802ABCE
    ldrb r0, [r5,r4]
    add r4, #1
    ldrb r1, [r5,r4]
    b loc_802ABDE
loc_802ABCE:
    mov r6, #2
    bl sub_802AED0
    add r0, r4, #0
    mov r6, #3
    bl sub_802AED0
    add r1, r4, #0
loc_802ABDE:
    bl sub_8005ADC
    add r7, #4
    mov r0, #1
    pop {pc}
// end of function sub_802ABBA

.thumb
sub_802ABE8:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r6, #1
    bl sub_802AED0
    strb r4, [r1,#0x12]
    mov r6, #2
    bl sub_802AED0
    strb r4, [r1,#0x13]
    add r7, #3
    mov r0, #1
    pop {pc}
// end of function sub_802ABE8

.thumb
sub_802AC04:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802AC14
    ldrh r4, [r5,r4]
    b loc_802AC1A
loc_802AC14:
    mov r6, #2
    bl sub_802AEE4
loc_802AC1A:
    add r0, r4, #0
    bl sub_8024FA0
    add r7, #4
    mov r0, #1
    pop {pc}
// end of function sub_802AC04

.thumb
sub_802AC26:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802AC36
    ldrh r4, [r5,r4]
    b loc_802AC3C
loc_802AC36:
    mov r6, #2
    bl sub_802AEE4
loc_802AC3C:
    add r0, r4, #0
    bl sub_8024FBC
    add r7, #4
    mov r0, #1
    pop {pc}
// end of function sub_802AC26

.thumb
sub_802AC48:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AEE4
    add r0, r4, #0
    add r2, r1, #0
    bl loc_802500E
    add r7, #4
    mov r0, #1
    pop {pc}
// end of function sub_802AC48

.thumb
sub_802AC66:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r1, r4, #0
    mov r6, #2
    bl sub_802AEE4
    add r0, r4, #0
    add r2, r1, #0
    bl loc_8025038
    add r7, #4
    mov r0, #1
    pop {pc}
// end of function sub_802AC66

.thumb
sub_802AC84:
    push {lr}
    mov r6, #1
    bl sub_802AF04
loc_802AC8C:
    mov r1, #0
    ldrsh r0, [r4,r1]
    cmp r0, #0
    blt loc_802AC9E
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    add r4, #2
    b loc_802AC8C
loc_802AC9E:
    add r7, #5
    mov r0, #1
    pop {pc}
// end of function sub_802AC84

.thumb
sub_802ACA4:
    push {lr}
    mov r6, #1
    bl sub_802AF04
loc_802ACAC:
    mov r1, #0
    ldrsh r0, [r4,r1]
    cmp r0, #0
    blt loc_802ACBE
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    add r4, #2
    b loc_802ACAC
loc_802ACBE:
    add r7, #5
    mov r0, #1
    pop {pc}
// end of function sub_802ACA4

.thumb
sub_802ACC4:
    push {lr}
    mov r6, #5
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #1
    bl sub_802AF04
    mov lr, pc
    bx r4
    add r7, #9
    mov r0, #1
    pop {pc}
// end of function sub_802ACC4

.thumb
dead_802ACDE:
    push {lr}
    mov r6, #5
    bl sub_802AF04
    add r1, r4, #0
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    bl sub_802BC60
    add r7, #9
    mov r0, #1
    pop {pc}
// end of function dead_802ACDE

.thumb
dead_802ACFA:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #5
    bl sub_802AED0
    strb r4, [r0]
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function dead_802ACFA

.thumb
dead_802AD12:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #5
    bl sub_802AEE4
    strh r4, [r0]
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function dead_802AD12

.thumb
dead_802AD2A:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #5
    bl sub_802AF04
    str r4, [r0]
    add r7, #9
    mov r0, #1
    pop {pc}
// end of function dead_802AD2A

.thumb
dead_802AD42:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    mov r6, #1
    bl sub_802AED0
    add r0, r0, r4
    mov r6, #2
    bl sub_802AED0
    strb r4, [r0]
    add r7, #3
    mov r0, #1
    pop {pc}
// end of function dead_802AD42

.thumb
dead_802AD5E:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    mov r6, #1
    bl sub_802AED0
    add r0, r0, r4
    mov r6, #2
    bl sub_802AED0
    strb r4, [r0]
    add r7, #3
    mov r0, #1
    pop {pc}
// end of function dead_802AD5E

    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    bl sub_8002028
    add r7, #5
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AF04
    add r0, r4, #0
    bl sub_80024E0
    add r7, #5
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r0, r4, #0
    cmp r0, #0xff
    beq loc_802ADB2
    b loc_802ADC6
loc_802ADB2:
    mov r4, #0
loc_802ADB4:
    add r0, r4, #0
    bl sub_8002078
    add r4, #1
    cmp r4, #0x12
    blt loc_802ADB4
    add r7, #2
    mov r0, #1
    pop {pc}
loc_802ADC6:
    bl sub_8002078
    add r7, #2
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802ADE0
    ldrb r0, [r5,r4]
    b loc_802ADE8
loc_802ADE0:
    mov r6, #2
    bl sub_802AED0
    add r0, r4, #0
loc_802ADE8:
    bl sub_8029700
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #1
    beq loc_802AE0C
    mov r6, #2
    bl sub_802AF04
    str r4, [r5,#0x10]
    add r7, #6
    mov r0, #1
    pop {pc}
loc_802AE0C:
    mov r0, #0
    str r0, [r5,#0x10]
    add r7, #2
    mov r0, #1
    pop {pc}
.thumb
sub_802AE16:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #1
    beq loc_802AE34
    mov r6, #2
    bl sub_802AF04
    add r0, r4, #0
    bl sub_80034C4
    add r7, #6
    mov r0, #1
    pop {pc}
loc_802AE34:
    mov r6, #2
    bl sub_802AED0
    add r0, r4, #0
    bl sub_80034F6
    add r7, #3
    mov r0, #1
    pop {pc}
// end of function sub_802AE16

.thumb
sub_802AE46:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    add r4, r0, #0
    add r6, r1, #0
    add r7, r2, #0
    ldr r5, [pc, #0x802aecc-0x802ae52-2] // unk_200B490
    add r0, r5, #0
    mov r1, #0x34 
    bl f900_8000930
    str r4, [r5,#(dword_200B498 - 0x200b490)]
    str r6, [r5,#(dword_200B49C - 0x200b490)]
    ldr r6, [pc, #0x802aec8-0x802ae60-4] // off_802A724
    mov r12, r6
    add r7, r4, #0
loc_802AE66:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_802AE66
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
// end of function sub_802AE46

.thumb
sub_802AE7A:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    ldr r5, [pc, #0x802aecc-0x802ae80-4] // unk_200B490
    ldr r0, [r5,#(dword_200B49C - 0x200b490)]
    ldr r6, [pc, #0x802aec8-0x802ae84-4] // off_802A724
    mov r12, r6
    add r7, r0, #0
loc_802AE8A:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_802AE8A
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
// end of function sub_802AE7A

.thumb
sub_802AE9E:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    ldr r5, [pc, #0x802aecc-0x802aea4-4] // unk_200B490
    ldr r0, [r5,#(dword_200B4A0 - 0x200b490)]
    tst r0, r0
    beq loc_802AEC0
    ldr r6, [pc, #0x802aec8-0x802aeac-4] // off_802A724
    mov r12, r6
    add r7, r0, #0
loc_802AEB2:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_802AEB2
loc_802AEC0:
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802AEC8:    .word off_802A724
off_802AECC:    .word unk_200B490
// end of function sub_802AE9E

.thumb
sub_802AED0:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7]
    pop {r7,pc}
// end of function sub_802AED0

    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7]
    lsl r4, r4, #0x18
    asr r4, r4, #0x18
    pop {r7,pc}
.thumb
sub_802AEE4:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#1]
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    pop {r7,pc}
// end of function sub_802AEE4

.thumb
sub_802AEF2:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#1]
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    lsl r4, r4, #0x10
    asr r4, r4, #0x10
    pop {r7,pc}
// end of function sub_802AEF2

.thumb
sub_802AF04:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#3]
    ldrb r6, [r7,#2]
    lsl r4, r4, #8
    orr r4, r6
    ldrb r6, [r7,#1]
    lsl r4, r4, #8
    orr r4, r6
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    pop {r7,pc}
    .byte 0, 0
jt_802AF20:    .word dword_802B10C
    .word dword_802B17C
    .word dword_802B1E4
    .word dword_802B254
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_802B2C4
    .word dword_802B334
    .word dword_802B3A4
    .word 0x802B41C
    .word 0x802B484
    .word 0x802B41C
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x802B504
    .word 0x802B594
    .word 0x802B504
    .word 0x802B5CC
    .word 0x802B5FC
    .word 0x802B68C, 0x802B724, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_802B734
    .word dword_802B7A4
    .word dword_802B734
    .word dword_802B734
    .word dword_802B7A4
    .word dword_802B734
    .word dword_802B734
    .word dword_802B734
    .word dword_802B734
    .word dword_802B7A4
    .word dword_802B734
    .word dword_802B734
    .word 0, 0, 0
    .byte 0, 0, 0, 0
    .word dword_802B734
    .word dword_802B734
    .word 0x0, 0x0, 0x0
    .word dword_802B814
    .word dword_802B814
    .word dword_802B814
    .word dword_802B814
    .word dword_802B814
    .word dword_802B814
    .word dword_802B814
    .word dword_802B894
    .word dword_802B814
    .word dword_802B814
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802BA84
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802BB0C
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802B9FC
    .word dword_802BA84
    .word dword_802B9FC
    .word dword_802BB94
    .word dword_802B9FC
    .word dword_802B914
    .word dword_802B814
    .word dword_802B994
    .word dword_802B814
    .word dword_802B914
    .word dword_802B814
dword_802B10C:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF05
    .word 0x8067D6C, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B17C:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF90
    .word 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C
    .word 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80
    .word 0x8069668, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8
    .word 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF
    .word 0xFFFFFFFF
dword_802B1E4:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF05
    .word 0x8067D6C, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B254:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B2C4:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B334:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF02
    .word 0x80594B8, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B3A4:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF90, 0x807751C
    .word 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93
    .word 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668
    .word 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D
    .word 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFF03, 0x805D8B6, 0xFFFFFF90, 0x807751C, 0xFFFFFF91
    .word 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004
    .word 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF81
    .word 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8
    .word 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008
    .word 0xFFFFFF02, 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF90
    .word 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C
    .word 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80
    .word 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFF00, 0x80545A0
    .word 0xFFFFFF01, 0x8057008, 0xFFFFFF02, 0x80594B4, 0xFFFFFF03
    .word 0x805D8B0, 0xFFFFFF04, 0x8062CEC, 0xFFFFFF05, 0x8067D6C
    .word 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92
    .word 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C
    .word 0xFFFFFF80, 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFF04
    .word 0x8062CF6, 0xFFFFFF93, 0x8080004, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFF05, 0x8067D6C
    .word 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D
    .word 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF02
    .word 0x80594B8, 0xFFFFFF03, 0x805D8B6, 0xFFFFFF04, 0x8062CF6
    .word 0xFFFFFF05, 0x8067D70, 0xFFFFFF90, 0x807751C, 0xFFFFFF91
    .word 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004
    .word 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF81
    .word 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8
    .word 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B
    .word 0xFFFFFF02, 0x80594B8, 0xFFFFFF03, 0x805D8B6, 0xFFFFFF04
    .word 0x8062CF6, 0xFFFFFF05, 0x8067D70, 0xFFFFFF90, 0x807751C
    .word 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93
    .word 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668
    .word 0xFFFFFF81, 0x806AB88, 0xFFFFFF82, 0x806DAE0, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFF04
    .word 0x8062CEC, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B734:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B7A4:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF02
    .word 0x80594B8, 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74
    .word 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94
    .word 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF88, 0x807022C
    .word 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E
    .word 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802B814:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF90, 0x807751C
    .word 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93
    .word 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668
    .word 0xFFFFFF81, 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C
    .word 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_802B894:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF90, 0x807751C
    .word 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93
    .word 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668
    .word 0xFFFFFF81, 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C
    .word 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_802B914:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF02
    .word 0x80594B8, 0xFFFFFF03, 0x805D8B6, 0xFFFFFF90, 0x807751C
    .word 0xFFFFFF91, 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93
    .word 0x8080004, 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668
    .word 0xFFFFFF81, 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C
    .word 0x80718C8, 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_802B994:    .word 0xFFFFFF03, 0x805D8B6, 0xFFFFFF90, 0x807751C, 0xFFFFFF91
    .word 0x8079C74, 0xFFFFFF92, 0x807CD9C, 0xFFFFFF93, 0x8080004
    .word 0xFFFFFF94, 0x8082B0C, 0xFFFFFF80, 0x8069668, 0xFFFFFF81
    .word 0x806AB88, 0xFFFFFF88, 0x807022C, 0xFFFFFF8C, 0x80718C8
    .word 0xFFFFFF8D, 0x8074178, 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF
    .word 0xFFFFFFFF
dword_802B9FC:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF04, 0x8062CEC
    .word 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92
    .word 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C
    .word 0xFFFFFF80, 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802BA84:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF04, 0x8062D0A
    .word 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92
    .word 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C
    .word 0xFFFFFF80, 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802BB0C:    .word 0xFFFFFF00, 0x80545A0, 0xFFFFFF01, 0x8057008, 0xFFFFFF02
    .word 0x80594B4, 0xFFFFFF03, 0x805D8B0, 0xFFFFFF04, 0x8062D00
    .word 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92
    .word 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C
    .word 0xFFFFFF80, 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
dword_802BB94:    .word 0xFFFFFF00, 0x80545A7, 0xFFFFFF01, 0x805700B, 0xFFFFFF02
    .word 0x80594B8, 0xFFFFFF03, 0x805D8B6, 0xFFFFFF04, 0x8062CF6
    .word 0xFFFFFF90, 0x807751C, 0xFFFFFF91, 0x8079C74, 0xFFFFFF92
    .word 0x807CD9C, 0xFFFFFF93, 0x8080004, 0xFFFFFF94, 0x8082B0C
    .word 0xFFFFFF80, 0x8069668, 0xFFFFFF81, 0x806AB88, 0xFFFFFF88
    .word 0x807022C, 0xFFFFFF8C, 0x80718C8, 0xFFFFFF8D, 0x8074178
    .word 0xFFFFFF8E, 0x8075FE4, 0xFFFFFFFF, 0xFFFFFFFF
// end of function sub_802AF04

.thumb
sub_802BC1C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x802bc4c-0x802bc1e-2] // jt_802AF20
    mov r0, r10
    ldr r6, [r0,#0x40]
    ldr r4, [r0,#0x44]
    ldrb r1, [r6,#4]
    ldrb r2, [r6,#5]
    ldrb r0, [r6,#7]
    lsl r0, r0, #2
    ldr r7, [r7,r0]
loc_802BC30:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_802BC46
    cmp r0, r1
    bne loc_802BC42
    ldr r7, [r7,#4]
    ldrb r0, [r7,r2]
    strb r0, [r4,#5]
    b locret_802BC4A
loc_802BC42:
    add r7, #8
    b loc_802BC30
loc_802BC46:
    mov r0, #0xff
    strb r0, [r4,#5]
locret_802BC4A:
    pop {r4-r7,pc}
off_802BC4C:    .word jt_802AF20
// end of function sub_802BC1C

.thumb
sub_802BC50:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#5]
    bl f500_8000560
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_802BC50

.thumb
sub_802BC60:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x10]
    push {r0,r1}
    add r0, r5, #0
    mov r1, #0x84
    bl f900_8000930
    pop {r0,r1}
    str r0, [r5,#0x1c]
    str r0, [r5,#0x40]
    str r1, [r5,#4]
    ldr r0, [pc, #0x802bcdc-0x802bc78-4] // unk_802C22C
    str r0, [r5,#0x20]
    str r0, [r5,#0x24]
    str r0, [r5,#0x28]
    ldr r0, [pc, #0x802bc8c-0x802bc80-4] // unk_2030000
    str r0, [r5,#0x30]
    ldr r0, [pc, #0x802bc90-0x802bc84-4] // off_802BC94
    str r0, [r5,#0x34]
    pop {r5,pc}
    .balign 4, 0x00
off_802BC8C:    .word unk_2030000
off_802BC90:    .word off_802BC94
off_802BC94:    .word LCDControl
    .word 0x0, 0x0, 0x0
// end of function sub_802BC60

.thumb
sub_802BCA4:
    mov r1, r10
    ldr r1, [r1,#0x10]
    mov r0, #1
    str r0, [r1,#0x1c]
    ldr r0, [pc, #0x802bcdc-0x802bcac-4] // unk_802C22C
    str r0, [r1,#0x20]
    str r0, [r1,#0x24]
    str r0, [r1,#0x28]
    mov r0, #0
    str r0, [r1,#0x38]
    mov r1, r10
    ldr r1, [r1,#0x44]
    mov r0, #0
    strh r0, [r1,#0x26]
    strh r0, [r1,#0x28]
    mov pc, lr
// end of function sub_802BCA4

.thumb
sub_802BCC4:
    mov r1, r10
    ldr r1, [r1,#0x10]
    mov r0, #1
    str r0, [r1,#0x1c]
    ldr r0, [pc, #0x802bcdc-0x802bccc-4] // unk_802C22C
    str r0, [r1,#0x20]
    str r0, [r1,#0x24]
    str r0, [r1,#0x28]
    mov r0, #0
    str r0, [r1,#0x38]
    mov pc, lr
    .balign 4, 0x00
off_802BCDC:    .word unk_802C22C
// end of function sub_802BCC4

.thumb
sub_802BCE0:
    mov r1, r10
    ldr r1, [r1,#0x10]
    ldr r0, [r1,#0x1c]
    cmp r0, #1
    bne locret_802BCF0
    mov r0, #0
    str r0, [r1,#0x1c]
    str r0, [r1,#0x40]
locret_802BCF0:
    mov pc, lr
// end of function sub_802BCE0

.thumb
sub_802BCF2:
    mov r0, r10
    ldr r0, [r0,#0x10]
    ldr r0, [r0,#0x1c]
    tst r0, r0
    mov pc, lr
// end of function sub_802BCF2

.thumb
sub_802BCFC:
    mov r0, r10
    ldr r0, [r0,#0x10]
    mov r2, #1
    ldr r0, [r0,#0x40]
    ldr r1, [pc, #0x802bd10-0x802bd04-4] // dword_809D6D0
    cmp r0, r1
    beq loc_802BD0C
    mov r2, #0
loc_802BD0C:
    tst r2, r2
    mov pc, lr
off_802BD10:    .word dword_809D6D0
// end of function sub_802BCFC

.thumb
sub_802BD14:
    mov r0, r10
    ldr r0, [r0,#0x10]
    mov r2, #1
    ldr r0, [r0,#0x40]
    ldr r1, [pc, #0x802bd28-0x802bd1c-4] // dword_809D2FC
    cmp r0, r1
    beq loc_802BD24
    mov r2, #0
loc_802BD24:
    tst r2, r2
    mov pc, lr
off_802BD28:    .word dword_809D2FC
// end of function sub_802BD14

.thumb
sub_802BD2C:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #4
    tst r0, r1
    mov pc, lr
// end of function sub_802BD2C

    push {lr}
    ldr r1, [pc, #0x802bd74-0x802bd3a-2] // dword_200A4E0
    str r0, [r1]
    mov r0, #0
    str r0, [r1,#(dword_200A4E4 - 0x200a4e0)]
    mov r0, #0
    bl sub_8025F1E
    pop {pc}
    push {lr}
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r1, [r1,#0x28]
    add r1, #0x24 
    bl sub_8025F1E
    pop {pc}
.thumb
ho_802BD5C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802bd74-0x802bd5e-2] // dword_200A4E0
    ldr r1, [r5]
    ldrb r2, [r1]
    ldr r0, [pc, #0x802bd78-0x802bd64-4] // jt_802BD7C
    add r0, r0, r2
    ldr r0, [r0]
    mov lr, pc
    bx r0
    str r1, [r5]
    tst r0, r0
    pop {r4-r7,pc}
off_802BD74:    .word dword_200A4E0
off_802BD78:    .word jt_802BD7C
jt_802BD7C:    .word sub_802BDC0+1
    .word sub_802BDEA+1
    .word sub_802BE44+1
    .word sub_802BE48+1
    .word sub_802BE74+1
    .word sub_802BE94+1
    .word sub_802BF26+1
    .word sub_802BF46+1
    .word sub_802BF5E+1
    .word sub_802BF74+1
    .word sub_802BF8A+1
    .word sub_802BFAA+1
    .word sub_802BFC0+1
    .word sub_802BFD8+1
    .word sub_802BFF0+1
    .word sub_802C010+1
    .word sub_802C026+1
// end of function ho_802BD5C

.thumb
sub_802BDC0:
    push {lr}
    mov r0, #1
    bl sub_802C062
    lsl r2, r0, #0xc
    mov r0, #3
    bl sub_802C062
    lsl r3, r0, #0xc
    mov r0, #5
    bl sub_802C062
    lsl r4, r0, #0xc
    mov r6, r10
    ldr r6, [r6,#0xc]
    str r2, [r6,#0x2c]
    str r3, [r6,#0x30]
    str r4, [r6,#0x34]
    mov r0, #1
    add r1, #7
    pop {pc}
// end of function sub_802BDC0

.thumb
sub_802BDEA:
    push {lr}
    ldrb r0, [r5,#6]
    cmp r0, #0
    bne loc_802BDFE
    mov r0, #1
    strb r0, [r5,#6]
    mov r0, #1
    bl sub_802C054
    strh r0, [r5,#4]
loc_802BDFE:
    mov r6, r10
    ldr r6, [r6,#0xc]
    mov r0, #3
    bl sub_802C062
    lsl r0, r0, #8
    ldr r3, [r6,#0x2c]
    add r0, r0, r3
    str r0, [r6,#0x2c]
    mov r0, #5
    bl sub_802C062
    lsl r0, r0, #8
    ldr r3, [r6,#0x30]
    add r0, r0, r3
    str r0, [r6,#0x30]
    mov r0, #7
    bl sub_802C062
    lsl r0, r0, #8
    ldr r3, [r6,#0x34]
    add r0, r0, r3
    str r0, [r6,#0x34]
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    cmp r0, #0
    bgt loc_802BE40
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #1
    add r1, #9
    pop {pc}
loc_802BE40:
    mov r0, #1
    pop {pc}
// end of function sub_802BDEA

.thumb
sub_802BE44:
    mov r0, #0
    mov pc, lr
// end of function sub_802BE44

.thumb
sub_802BE48:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_802BE5C
    mov r2, #1
    strb r2, [r5,#6]
    mov r0, #1
    bl sub_802C054
    strh r0, [r5,#4]
loc_802BE5C:
    ldrh r2, [r5,#4]
    sub r2, #1
    strh r2, [r5,#4]
    cmp r2, #0
    bge loc_802BE70
    mov r2, #0
    strb r2, [r5,#6]
    mov r0, #1
    add r1, #3
    pop {pc}
loc_802BE70:
    mov r0, #1
    pop {pc}
// end of function sub_802BE48

.thumb
sub_802BE74:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_802C040
    add r4, r0, #0
    mov r0, #1
    bl sub_802C040
    add r1, r4, #0
    bl sub_8025FE0
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802BE74

.thumb
sub_802BE94:
    push {lr}
    mov r7, r10
    ldr r6, [r7,#0xc]
    ldr r7, [r7,#0x40]
    ldr r7, [r7,#0x28]
    ldr r2, [r6,#0x2c]
    ldr r3, [r7,#0x24]
    sub r3, r3, r2
    bl sub_802BEF2
    add r3, r3, r2
    str r3, [r6,#0x2c]
    ldr r2, [r6,#0x30]
    ldr r3, [r7,#0x28]
    sub r3, r3, r2
    bl sub_802BEF2
    add r3, r3, r2
    str r3, [r6,#0x30]
    ldr r2, [r6,#0x34]
    ldr r3, [r7,#0x2c]
    sub r3, r3, r2
    bl sub_802BEF2
    add r3, r3, r2
    str r3, [r6,#0x34]
    ldr r0, [r6,#0x2c]
    ldr r2, [r7,#0x24]
    cmp r0, r2
    bne loc_802BEE2
    ldr r0, [r6,#0x30]
    ldr r2, [r7,#0x28]
    cmp r0, r2
    bne loc_802BEE2
    ldr r0, [r6,#0x34]
    ldr r2, [r7,#0x2c]
    cmp r0, r2
    bne loc_802BEE2
    b loc_802BEE6
loc_802BEE2:
    mov r0, #1
    pop {pc}
loc_802BEE6:
    mov r2, #0
    strb r2, [r5,#6]
    strh r2, [r5,#4]
    mov r0, #1
    add r1, #1
    pop {pc}
// end of function sub_802BE94

.thumb
sub_802BEF2:
    mov r4, #0x10
    lsl r4, r4, #0x10
    cmp r3, #0
    bge loc_802BF12
    neg r3, r3
    add r0, r3, #0
    lsr r3, r3, #4
    cmp r3, r4
    ble loc_802BF06
    add r3, r4, #0
loc_802BF06:
    lsr r4, r4, #9
    cmp r3, r4
    bge loc_802BF0E
    add r3, r0, #0
loc_802BF0E:
    neg r3, r3
    mov pc, lr
loc_802BF12:
    add r0, r3, #0
    lsr r3, r3, #4
    cmp r3, r4
    ble loc_802BF1C
    add r3, r4, #0
loc_802BF1C:
    lsr r4, r4, #9
    cmp r3, r4
    bge locret_802BF24
    add r3, r0, #0
locret_802BF24:
    mov pc, lr
// end of function sub_802BEF2

.thumb
sub_802BF26:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C040
    add r4, r0, #0
    mov r0, #2
    bl sub_802C074
    add r1, r4, #0
    bl sub_804E2A4
    pop {r1}
    mov r0, #1
    add r1, #6
    pop {pc}
// end of function sub_802BF26

.thumb
sub_802BF46:
    push {lr}
    push {r1}
    mov r0, #0x80
    bl sub_80539A0
    pop {r1}
    bne loc_802BF5A
    mov r0, #1
    add r1, #1
    pop {pc}
loc_802BF5A:
    mov r0, #1
    pop {pc}
// end of function sub_802BF46

.thumb
sub_802BF5E:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C074
    bl sub_8002028
    pop {r1}
    mov r0, #1
    add r1, #5
    pop {pc}
// end of function sub_802BF5E

.thumb
sub_802BF74:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C040
    bl sub_8002078
    pop {r1}
    mov r0, #1
    add r1, #2
    pop {pc}
// end of function sub_802BF74

.thumb
sub_802BF8A:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_802C040
    add r4, r0, #0
    mov r0, #1
    bl sub_802C040
    add r1, r4, #0
    bl sub_8005ADC
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802BF8A

.thumb
sub_802BFAA:
    push {lr}
    push {r1}
    bl sub_8005B5C
    pop {r1}
    beq loc_802BFBC
    mov r0, #1
    add r1, #1
    pop {pc}
loc_802BFBC:
    mov r0, #1
    pop {pc}
// end of function sub_802BFAA

.thumb
sub_802BFC0:
    push {lr}
    push {r1,r5}
    mov r0, #1
    bl sub_802C054
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FA0
    pop {r1,r5}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802BFC0

.thumb
sub_802BFD8:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C054
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FBC
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802BFD8

.thumb
sub_802BFF0:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_802C040
    add r4, r0, #0
    mov r0, #1
    bl sub_802C040
    add r1, r4, #0
    bl f500_80005D2
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802BFF0

.thumb
sub_802C010:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C054
    bl f500_8000560
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
// end of function sub_802C010

.thumb
sub_802C026:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_802C074
    add r1, r0, #0
    mov r0, #1
    bl sub_8025F1E
    pop {r1}
    mov r0, #1
    add r1, #5
    pop {pc}
// end of function sub_802C026

.thumb
sub_802C040:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3]
    pop {r1-r3,pc}
// end of function sub_802C040

    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3]
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    pop {r1-r3,pc}
.thumb
sub_802C054:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#1]
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    pop {r1-r3,pc}
// end of function sub_802C054

.thumb
sub_802C062:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#1]
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    pop {r1-r3,pc}
// end of function sub_802C062

.thumb
sub_802C074:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#3]
    ldrb r2, [r3,#2]
    lsl r0, r0, #8
    orr r0, r2
    ldrb r2, [r3,#1]
    lsl r0, r0, #8
    orr r0, r2
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    pop {r1-r3,pc}
    .byte 0, 0
off_802C090:    .word sub_802C318+1
    .word sub_802C322+1
    .word sub_802C32C+1
    .word sub_802C378+1
    .word sub_802C3C8+1
    .word sub_802C3EE+1
    .word sub_802C408+1
    .word sub_802C41C+1
    .word sub_802C42E+1
    .word sub_802C440+1
    .word sub_802C45E+1
    .word sub_802C478+1
    .word sub_802C48A+1
    .word sub_802C49E+1
    .word sub_802C4B8+1
    .word sub_802C4D2+1
    .word sub_802C4E4+1
    .word sub_802C4E8+1
    .word sub_802C514+1
    .word sub_802C52C+1
    .word sub_802A824+1
    .word sub_802A832+1
    .word sub_802A862+1
    .word sub_802A892+1
    .word sub_802A8BE+1
    .word sub_802A8EE+1
    .word sub_802A91A+1
    .word sub_802C53C+1
    .word sub_802A974+1
    .word sub_802A9AA+1
    .word sub_802C562+1
    .word sub_802C586+1
    .word sub_802A9FA+1
    .word sub_802AA2A+1
    .word sub_802C5AA+1
    .word sub_802C5CE+1
    .word sub_802ABBA+1
    .word sub_802ABE8+1
    .word sub_802AC04+1
    .word sub_802AC26+1
    .word sub_802AC48+1
    .word sub_802AC66+1
    .word sub_802AC84+1
    .word sub_802ACA4+1
    .word 0x802ACFB, 0x802AD13, 0x802AD2B, 0x802AD43, 0x802AD5F
    .word 0x802C5F3, 0x802C617, 0x802AD7B, 0x802AD8F, 0x802ADA3
    .word 0x802C62F, 0x802C65D, 0x802C669, 0x802C68D, 0x802C6A3
    .word 0x802C6C9, 0x802C721, 0x802C761, 0x802C7F1, 0x802C871
    .word 0x802C891, 0x802C8A5, 0x802C92D, 0x802C959, 0x802C98D
    .word 0x802C9C5, 0x802CB65, 0x802CBD5, 0x802CBED, 0x802CC53
    .word 0x802CC67, 0x802CC89, 0x802CCAD, 0x802CCD1, 0x802CCDD
    .word 0x802ADD1, 0x802CD09, 0x802CD3F, 0x802CD6F, 0x802CD83
    .word 0x802CD9B, 0x802CDBF, 0x802CE01, 0x802CE25, 0x802CE31
    .word 0x802CE4D, 0x802CE61, 0x802CE6D, 0x802CE79, 0x802CE85
    .word 0x802CE91, 0x802CEA5, 0x802CEB1, 0x802CEBD, 0x802CECD
    .word 0x802CEDB, 0x802CEEB, 0x802CF0B, 0x802CF2F
unk_802C22C:    .byte 0x10
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
a00000000333333:    .hword 0x3030
    .byte 0x30 
    .byte 0x30 
    .byte 0x30 
    .byte 0x30 
    .byte 0x30 
    .byte 0x30 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0x42 
    .byte 0x41 
    .byte 0x42 
    .byte 0x41 
    .byte 0x42 
    .byte 0x41 
    .byte 0x42 
    .byte 0x41 
    .byte 0x3A 
    .byte 0x38 
    .byte 0x3A 
    .byte 0x38 
    .byte 0x3A 
    .byte 0x38 
    .byte 0x3A 
    .byte 0x38 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x36 
    .byte 0x38 
    .byte 0x37 
    .byte 0x38 
    .byte 0x37 
    .byte 0x38 
    .byte 0x37 
    .byte 0x38 
    .byte 0x37 
    .byte 0x4B 
    .byte 0x46 
    .byte 0x4B 
    .byte 0x46 
    .byte 0x4B 
    .byte 0x46 
    .byte 0x4B 
    .byte 0x46 
    .byte 0x4D 
    .byte 0x4E 
    .byte 0x4D 
    .byte 0x4E 
    .byte 0x4D 
    .byte 0x4E 
    .byte 0x4D 
    .byte 0x4E 
    .byte 0x4F 
    .byte 0x48 
    .byte 0x4F 
    .byte 0x48 
    .byte 0x4F 
    .byte 0x48 
    .byte 0x4F 
    .byte 0x48 
    .byte 0x54 
    .byte 0x4A 
    .byte 0x54 
    .byte 0x4A 
    .byte 0x54 
    .byte 0x4A 
    .byte 0x54 
    .byte 0x4A 
    .byte 0x56 
    .byte 0x4B 
    .byte 0x56 
    .byte 0x4B 
    .byte 0x56 
    .byte 0x4B 
    .byte 0x56 
    .byte 0x4B 
    .byte 0x52 
    .byte 0x49 
    .byte 0x52 
    .byte 0x49 
    .byte 0x52 
    .byte 0x49 
    .byte 0x52 
    .byte 0x49 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x65 
    .byte 0x75 
    .byte 0x6C 
    .byte 0x75 
    .byte 0x6C 
    .byte 0x75 
    .byte 0x6C 
    .byte 0x75 
    .byte 0x6C 
    .byte 0x78 
    .byte 0x6F 
    .byte 0x78 
    .byte 0x6F 
    .byte 0x78 
    .byte 0x6F 
    .byte 0x78 
    .byte 0x6F 
    .byte 0x7B 
    .byte 0x70 
    .byte 0x7B 
    .byte 0x70 
    .byte 0x7B 
    .byte 0x70 
    .byte 0x7B 
    .byte 0x70 
    .byte 0x6B 
    .byte 0x67 
    .byte 0x6B 
    .byte 0x67 
    .byte 0x6B 
    .byte 0x67 
    .byte 0x6B 
    .byte 0x67 
    .byte 0x6E 
    .byte 0x68 
    .byte 0x6E 
    .byte 0x68 
    .byte 0x6E 
    .byte 0x68 
    .byte 0x6E 
    .byte 0x68 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x3D 
    .byte 0x3B 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x40 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x48 
    .byte 0x45 
    .byte 0x48 
    .byte 0x45 
    .byte 0x48 
    .byte 0x45 
    .byte 0x48 
    .byte 0x45 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x5B 
    .byte 0x4E 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x68 
    .byte 0x66 
    .byte 0x68 
    .byte 0x66 
    .byte 0x68 
    .byte 0x66 
    .byte 0x68 
    .byte 0x66 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x72 
    .byte 0x6B 
    .byte 0
    .balign 4, 0x00
// end of function sub_802C074

.thumb
sub_802C318:
    push {lr}
    bl sub_802BCC4
    mov r0, #0
    pop {pc}
// end of function sub_802C318

.thumb
sub_802C322:
    push {lr}
    bl sub_802BCA4
    mov r0, #0
    pop {pc}
// end of function sub_802C322

.thumb
sub_802C32C:
    push {lr}
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_802CFD4
    bne loc_802C35A
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_802CFB4
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C34E
    ldrb r4, [r5,r4]
    b loc_802C354
loc_802C34E:
    mov r6, #2
    bl sub_802AED0
loc_802C354:
    ldrb r1, [r5,#0x12]
    add r1, #0xc
    strb r4, [r5,r1]
loc_802C35A:
    ldrb r1, [r5,#0x12]
    add r1, #0xc
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    bge loc_802C374
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_802CFC4
    add r7, #3
    mov r0, #1
    pop {pc}
loc_802C374:
    mov r0, #0
    pop {pc}
// end of function sub_802C32C

.thumb
sub_802C378:
    push {lr}
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_802CFD4
    bne loc_802C3A8
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_802CFB4
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C39A
    ldrh r4, [r5,r4]
    b loc_802C3A0
loc_802C39A:
    mov r6, #2
    bl sub_802AEE4
loc_802C3A0:
    ldrb r1, [r5,#0x12]
    lsl r1, r1, #1
    add r1, #0x14
    strh r4, [r5,r1]
loc_802C3A8:
    ldrb r1, [r5,#0x12]
    lsl r1, r1, #1
    add r1, #0x14
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    bge loc_802C3C4
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_802CFC4
    add r7, #4
    mov r0, #1
    pop {pc}
loc_802C3C4:
    mov r0, #0
    pop {pc}
// end of function sub_802C378

.thumb
sub_802C3C8:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    mov r0, #0x80
    and r0, r4
    bl sub_80539A0
    beq loc_802C3E4
    mov r0, #0x38 
    and r0, r4
    bl sub_80539A0
    beq loc_802C3EA
loc_802C3E4:
    add r7, #2
    mov r0, #1
    pop {pc}
loc_802C3EA:
    mov r0, #0
    pop {pc}
// end of function sub_802C3C8

.thumb
sub_802C3EE:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    bl sub_80A6F88
    cmp r0, r4
    bne loc_802C404
    add r7, #2
    mov r0, #1
    pop {pc}
loc_802C404:
    mov r0, #0
    pop {pc}
// end of function sub_802C3EE

.thumb
sub_802C408:
    push {lr}
    bl sub_80A6E74
    cmp r0, #0
    bne loc_802C418
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C418:
    mov r0, #0
    pop {pc}
// end of function sub_802C408

.thumb
sub_802C41C:
    push {lr}
    bl sub_8005B5C
    beq loc_802C42A
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C42A:
    mov r0, #0
    pop {pc}
// end of function sub_802C41C

.thumb
sub_802C42E:
    push {lr}
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_802C43C
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C43C:
    mov r0, #0
    pop {pc}
// end of function sub_802C42E

.thumb
sub_802C440:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    ldrb r0, [r5,r4]
    mov r6, #2
    bl sub_802AED0
    cmp r0, r4
    bne loc_802C45A
    add r7, #3
    mov r0, #1
    pop {pc}
loc_802C45A:
    mov r0, #0
    pop {pc}
// end of function sub_802C440

.thumb
sub_802C45E:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    ldr r0, [r5,r4]
    ldrb r0, [r0]
    cmp r0, #0x10
    bne loc_802C474
    add r7, #2
    mov r0, #1
    pop {pc}
loc_802C474:
    mov r0, #0
    pop {pc}
// end of function sub_802C45E

.thumb
sub_802C478:
    push {lr}
    bl sub_800264C
    bne loc_802C486
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C486:
    mov r0, #0
    pop {pc}
// end of function sub_802C478

.thumb
sub_802C48A:
    push {lr}
    mov r0, #1
    bl sub_802D92C
    bne loc_802C49A
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C49A:
    mov r0, #0
    pop {pc}
// end of function sub_802C48A

.thumb
sub_802C49E:
    push {lr}
    mov r6, #1
    bl sub_802AEE4
    add r0, r4, #0
    bl sub_8024FF4
    beq loc_802C4B4
    add r7, #3
    mov r0, #1
    pop {pc}
loc_802C4B4:
    mov r0, #0
    pop {pc}
// end of function sub_802C49E

.thumb
sub_802C4B8:
    push {lr}
    mov r6, #1
    bl sub_802AEE4
    add r0, r4, #0
    bl sub_8024FF4
    bne loc_802C4CE
    add r7, #3
    mov r0, #1
    pop {pc}
loc_802C4CE:
    mov r0, #0
    pop {pc}
// end of function sub_802C4B8

.thumb
sub_802C4D2:
    push {lr}
    bl sub_80038A0
    bne loc_802C4E0
    add r7, #1
    mov r0, #1
    pop {pc}
loc_802C4E0:
    mov r0, #0
    pop {pc}
// end of function sub_802C4D2

.thumb
sub_802C4E4:
    mov r0, #0
    mov pc, lr
// end of function sub_802C4E4

.thumb
sub_802C4E8:
    push {lr}
    mov r6, #2
    bl sub_802AF04
    add r0, r4, #0
    mov r6, #1
    bl sub_802AED0
    str r0, [r5,r4]
    sub r4, #0x1c
    lsr r4, r4, #2
    add r0, r4, #0
    add r0, #0
    bl sub_802CFC4
    add r0, r4, #0
    add r0, #4
    bl sub_802CFC4
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802C4E8

.thumb
sub_802C514:
    push {lr}
    ldr r0, [pc, #0x802c528-0x802c516-2] // unk_802C22C
    mov r6, #1
    bl sub_802AED0
    str r0, [r5,r4]
    add r7, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_802C528:    .word unk_802C22C
// end of function sub_802C514

.thumb
sub_802C52C:
    push {lr}
    mov r6, #1
    bl sub_802AF04
    str r4, [r5,#0x38]
    add r7, #5
    mov r0, #1
    pop {pc}
// end of function sub_802C52C

.thumb
sub_802C53C:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    ldrb r0, [r5,r4]
    mov r6, #2
    bl sub_802AED0
    cmp r0, r4
    bne loc_802C55C
    mov r6, #3
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802C55C:
    add r7, #7
    mov r0, #1
    pop {pc}
// end of function sub_802C53C

.thumb
sub_802C562:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x10]
    cmp r0, r4
    bne loc_802C580
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802C580:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802C562

.thumb
sub_802C586:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x10]
    cmp r0, r4
    beq loc_802C5A4
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802C5A4:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802C586

.thumb
sub_802C5AA:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0xa]
    cmp r0, r4
    bne loc_802C5C8
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802C5C8:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802C5AA

.thumb
sub_802C5CE:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#0xa]
    cmp r0, r4
    beq loc_802C5EC
    mov r6, #2
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_802C5EC:
    add r7, #6
    mov r0, #1
    pop {pc}
// end of function sub_802C5CE

    push {lr}
    mov r6, #1
    bl sub_802AED0
    lsl r0, r4, #2
    add r0, #0x44 
    mov r6, #2
    bl sub_802AED0
    ldr r0, [r5,r0]
    add r0, r0, r4
    mov r6, #3
    bl sub_802AED0
    strb r4, [r0]
    add r7, #4
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #2
    bl sub_802AED0
    add r0, r4, #0
    mov r6, #1
    bl sub_802AED0
    strb r0, [r5,r4]
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C648
    ldr r0, [r5,#0x30]
    ldrb r1, [r5,r4]
    bl sub_804E2A4
    add r7, #2
    mov r0, #1
    pop {pc}
loc_802C648:
    mov r6, #2
    bl sub_802AED0
    add r1, r4, #0
    ldr r0, [r5,#0x30]
    bl sub_804E2A4
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    bl sub_804E448
    add r7, #1
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #2
    bl sub_802AED0
    add r0, r4, #0
    mov r6, #1
    bl sub_802AED0
    cmp r4, #1
    beq loc_802C682
    bl sub_8053980
    b loc_802C686
loc_802C682:
    bl sub_8053990
loc_802C686:
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    bl sub_80539B0
    lsl r0, r0, #2
    add r0, #1
    add r6, r0, #0
    bl sub_802AF04
    add r7, r4, #0
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_802AF04
    cmp r4, #0
    bge loc_802C6BC
    lsl r4, r4, #1
    lsr r4, r4, #1
    add r0, r4, #0
    ldr r1, [pc, #0x802c6c4-0x802c6b4-4] // unk_2036800
    bl dword_8111700
    ldr r4, [pc, #0x802c6c4-0x802c6ba-2] // unk_2036800
loc_802C6BC:
    str r4, [r5,#0x30]
    add r7, #5
    mov r0, #1
    pop {pc}
off_802C6C4:    .word unk_2036800
.thumb
dead_ho_802C6C8:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    ldr r0, [pc, #0x802c6e0-0x802c6d0-4] // jt_802C6E4
    ldr r0, [r0,r4]
    mov lr, pc
    bx r0
    add r7, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_802C6E0:    .word jt_802C6E4
jt_802C6E4:    .word sub_80A6D2E+1
    .word sub_80A6D9E+1
    .word sub_80A6D7A+1
    .word sub_80A6D90+1
    .word sub_80A6E7C+1
    .word sub_80A6E88+1
    .word sub_80A6E94+1
    .word sub_80A6EA0+1
    .word sub_80A6EB6+1
    .word sub_80A6EC2+1
    .word sub_80A6ED0+1
    .word sub_80A6EDE+1
    .word sub_80A6F96+1
    .word sub_80A6FA6+1
    .word sub_80A704A+1
// end of function dead_ho_802C6C8

.thumb
dead_ho_802C720:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    ldr r3, [pc, #0x802c74c-0x802c728-4] // jt_802C750
    ldr r3, [r3,r4]
    mov r6, #2
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C73A
    ldrb r4, [r5,r4]
    b loc_802C740
loc_802C73A:
    mov r6, #3
    bl sub_802AED0
loc_802C740:
    add r0, r4, #0
    mov lr, pc
    bx r3
    add r7, #4
    mov r0, #1
    pop {pc}
off_802C74C:    .word jt_802C750
jt_802C750:    .word sub_80A6EAC+1
    .word sub_80A6F0E+1
    .word sub_80A6EEC+1
    .word sub_80A703C+1
// end of function dead_ho_802C720

.thumb
sub_802C760:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    cmp r4, #8
    blt loc_802C772
    ldrb r0, [r5,#0x12]
    tst r0, r0
    beq loc_802C7D6
loc_802C772:
    mov r0, #8
    bl sub_802CFD4
    bne loc_802C796
    mov r0, #8
    bl sub_802CFB4
    mov r6, #2
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C78E
    ldrb r4, [r5,r4]
    b loc_802C794
loc_802C78E:
    mov r6, #3
    bl sub_802AED0
loc_802C794:
    strb r4, [r5,#0x10]
loc_802C796:
    mov r6, #4
    bl sub_802AEF2
    add r0, r4, #0
    mov r6, #6
    bl sub_802AEF2
    add r1, r4, #0
    mov r6, #8
    bl sub_802AEF2
    add r2, r4, #0
    lsl r0, r0, #0xc
    lsl r1, r1, #0xc
    lsl r2, r2, #0xc
    mov r6, #1
    bl sub_802AED0
    ldr r3, [pc, #0x802c7dc-0x802c7ba-2] // sub_802C7E0
    ldr r3, [r3,r4]
    mov lr, pc
    bx r3
    ldrb r0, [r5,#0x10]
    sub r0, #1
    strb r0, [r5,#0x10]
    bgt loc_802C7D6
    mov r0, #8
    bl sub_802CFC4
    add r7, #0xa
    mov r0, #1
    pop {pc}
loc_802C7D6:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_802C7DC:    .word sub_802C7E0
// end of function sub_802C760

.thumb
sub_802C7E0:
    ldr r5, [r1,#0x60]
    lsr r2, r1, #0x20
    ldr r1, [r6,#0x5c]
    lsr r2, r1, #0x20
    ldr r7, [r0,#0x64]
    lsr r2, r1, #0x20
    ldr r5, [r4,#0x60]
    lsr r2, r1, #0x20
    push {lr}
    ldrb r0, [r5,#0x12]
    tst r0, r0
    beq loc_802C856
    bl sub_80A6F18
    add r3, r0, #0
    mov r0, #8
    bl sub_802CFD4
    bne loc_802C822
    mov r0, #8
    bl sub_802CFB4
    mov r6, #1
    bl sub_802AED0
    cmp r4, #0xff
    beq loc_802C81A
    ldrb r4, [r5,r4]
    b loc_802C820
loc_802C81A:
    mov r6, #2
    bl sub_802AED0
loc_802C820:
    strb r4, [r5,#0x10]
loc_802C822:
    mov r6, #3
    bl sub_802AEE4
    add r0, r4, #0
    lsl r0, r0, #8
    add r1, r0, #0
    ldr r4, [pc, #0x802c85c-0x802c82e-2] // dword_802C860
    lsl r3, r3, #1
    ldrsb r2, [r4,r3]
    mul r0, r2
    add r3, #1
    ldrsb r2, [r4,r3]
    mul r1, r2
    mov r2, #0
    bl loc_80A6E46
    ldrb r0, [r5,#0x10]
    sub r0, #1
    strb r0, [r5,#0x10]
    bgt loc_802C856
    mov r0, #8
    bl sub_802CFC4
    add r7, #5
    mov r0, #1
    pop {pc}
loc_802C856:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_802C85C:    .word dword_802C860
dword_802C860:    .word 0x10F010
    .word 0x10000808, 0xF010F0, 0xF000F8F8, 0x2602B500, 0xFB2CF7FE
    .word 0x26011C20, 0xFB28F7FE, 0xD0002CFF, 0xF07A5D28, 0x3703FAED
    .word 0xBD002001, 0x2601B500, 0xFB36F7FE, 0xF07A1C20, 0x3705FBC9
    .word 0xBD002001, 0x2601B500, 0xFB12F7FE, 0xD0022C00, 0xD0112C01
    .word 0x2602E015, 0xFB0AF7FE, 0x26031C20, 0xFB06F7FE, 0x26041C21
    .word 0xFB02F7FE, 0xF07A1C22, 0x3705FB2B, 0xBD002001, 0xFB23F07A
    .word 0x20013702, 0x2009BD00, 0xFB76F000, 0x2009D106, 0xFB62F000
    .word 0xF7FE2602, 0x746CFAED, 0xF7FE2603, 0x1C20FAED, 0xF7FE2604
    .word 0x1C21FAE9, 0xF7FE2605, 0x1C22FAE5, 0xFB14F07A, 0x38017C68
    .word 0xDC057468, 0xF0002009, 0x3706FB51, 0xBD002001, 0xBD002000
    .word 0x2601B500, 0xFACEF7FE, 0xD0012C00, 0xD0082C01, 0xF7FE2602
    .word 0x1C20FAD1, 0xFB07F07A, 0x20013704, 0xF07ABD00, 0x3702FB01
    .word 0xBD002001, 0x2602B500, 0xFAB8F7FE, 0xD0012CFF, 0xE0025D2C
    .word 0xF7FE2603, 0x1C20FAB1, 0xF7FE2601, 0x2C00FAAD, 0x1C04D003
    .word 0xFACCF07A, 0xF07A1900, 0x3704FA19, 0xBD002001, 0x2601B500
    .word 0xFA9EF7FE, 0x434420D8, 0x18244809, 0x6AA16A60, 0xF07A6AE2
    .word 0x7D20FA33, 0xFA06F07A, 0xF7FE2602, 0x1C20FA8F, 0xFAABF07A
    .word 0x20013703, 0xBD00, 0x2006140, 0x2601B500, 0xFA82F7FE
    .word 0x21F01C20, 0x88A4021, 0x589B4B02, 0x471846FE, 0xBD00
    .word 0x802C9E4, 0x802C9F9, 0x802CA43, 0x802CAA7, 0x802CB1B
    .word 0x802CB3D, 0x210FB500, 0xA4400C, 0xB4203444, 0x2602192D
    .word 0xFA62F7FE, 0x26031C20, 0xFA68F7FE, 0x26051C21, 0xFA64F7FE
    .word 0x26071C22, 0xFA60F7FE, 0x26091C23, 0xFA6CF7FE, 0x4120409
    .word 0x1C2E041B, 0xFD04F7D7, 0xBC206035, 0x2001370D, 0xB500BD00
    .word 0x400C210F, 0x344400A4, 0x192DB420, 0xF9E1F07A, 0x9000B083
    .word 0x92029101, 0xF7FE2603, 0x1C21FA41, 0xF7FE2605, 0x1C22FA3D
    .word 0xF7FE2607, 0x1C23FA39, 0x4120409, 0x9C00041B, 0x9C011909
    .word 0x9C021912, 0xB003191B, 0xF7FE2602, 0x1C20FA21, 0xF7FE2609
    .word 0x1C2EFA37, 0xFCD2F7D7, 0xBC206035, 0x2001370D, 0xB500BD00
    .word 0x400C210F, 0x344400A4, 0x192DB420, 0xF7FE2602, 0x21D8FA0B
    .word 0x4C284361, 0x6A601864, 0x6AE26AA1, 0x9000B083, 0x92029101
    .word 0xF7FE2604, 0x1C21FA07, 0xF7FE2606, 0x1C22FA03, 0xF7FE2608
    .word 0x1C23F9FF, 0x4120409, 0x9C00041B, 0x9C011909, 0x9C021912
    .word 0xB003191B, 0xF7FE2603, 0x1C20F9E7, 0xF7FE260A, 0x1C2EF9FD
    .word 0xFC98F7D7, 0xBC206035, 0x2001370E, 0xB500BD00, 0x400C210F
    .word 0x344400A4, 0x592DB420, 0xD003422D, 0x51282000, 0xFCA3F7D7
    .word 0x3702BC20, 0xBD002001, 0x2444B500, 0x42005928, 0x2100D006
    .word 0xB4205129, 0xF7D71C05, 0xBC20FC94, 0x2C603404, 0x3702DDF2
    .word 0xBD002001, 0x2006140, 0x2601B500, 0xF9B2F7FE, 0xD0102C01
    .word 0xD0172C02, 0xD01E2C03, 0xD0212C04, 0xD0242C05, 0xF7FE2602
    .word 0x1C20F9BF, 0xFC9CF7D6, 0x20013706, 0x2602BD00, 0xF99CF7FE
    .word 0xF7D61C20, 0x3703FCAC, 0xBD002001, 0xF7FE2602, 0x1C20F9AD
    .word 0xFD76F7F9, 0x20013706, 0xF7FDBD00, 0x3702FBB6, 0xBD002001
    .word 0xFBD0F7FD, 0x20013702, 0xF7FDBD00, 0x3702FBDF, 0xBD002001
    .word 0x2601B500, 0xF994F7FE, 0x472046FE, 0x3705D102, 0xBD002001
    .word 0xBD002000, 0x2601B500, 0xF96EF7FE, 0x20401C23, 0xD1244203
    .word 0xF7FE2603, 0x1C22F981, 0x42032080, 0x6B6AD000, 0x42032001
    .word 0x1C10D10C, 0xF7D82100, 0x2602FD15, 0xF958F7FE, 0xF7D81C20
    .word 0x3707FC96, 0xBD002001, 0x21001C10, 0xFD08F7D8, 0xF7FE2602
    .word 0x1C21F94B, 0xFD80F7D8, 0x20013707, 0x2000BD00, 0xFC83F7D8
    .word 0x20013702, 0xB500BD00, 0xF7FE2601, 0x1C20F945, 0xFC7CF7D3
    .word 0x20013703, 0xB500BD00, 0xF7FE2601, 0x2C00F942, 0xF7FEDA04
    .word 0xF7FEFFD3, 0xE002FFEB, 0xF7D31C20, 0x3703FC6F, 0xBD002001
    .word 0x2601B500, 0xF92AF7FE, 0x26031C20, 0xF91CF7FE, 0x26041C21
    .word 0xF918F7FE, 0xF7D31C22, 0x3705FCA2, 0xBD002001, 0x2601B500
    .word 0xF90EF7FE, 0x26021C21, 0xF90AF7FE, 0xF7D31C20, 0x4651FC88
    .word 0x20FF6C09, 0x37037648, 0xBD002001, 0xF7D3B500, 0x3701FCFB
    .word 0xBD002001, 0x2602B500, 0xF8F6F7FE, 0x26031C20, 0xF8F2F7FE
    .word 0x26011C21, 0xF8EEF7FE, 0xD0022C01, 0xFB40F000, 0xF000E001
    .word 0x3704FB6B, 0xBD002001, 0x2601B500, 0xF8E0F7FE, 0xD10B2C00
    .word 0xF7FE2602, 0x63ECF8F5, 0xF7FF1C20, 0x2001F80B, 0x370674E8
    .word 0xBD002001, 0x63E82000, 0xF80BF7FF, 0x74E82000, 0x20013702
    .word 0xB500BD00, 0xF7FE2601, 0x1C20F8C5, 0xFF38F7DA, 0xF7FE2602
    .word 0x1C21F8BF, 0x230022FF, 0xFBE4F7D8, 0xF7FE2601, 0x1C20F8B7
    .word 0xFB5AF7FD, 0x20013703, 0xB500BD00, 0xF7FE2601, 0x1C20F8AD
    .word 0xF890F017, 0x20013702, 0xB500BD00, 0xF7FE2601, 0x1C20F8A3
    .word 0xFBD6F017, 0xFC56F017, 0x20013702, 0xB500BD00, 0xF7FE2601
    .word 0x1C20F897, 0xF7FE2602, 0x1C21F893, 0xF7FE2603, 0x1C22F88F
    .word 0xFCDDF7D8, 0x20013704, 0xB500BD00, 0x6C1A4653, 0x26016C5B
    .word 0xF882F7FE, 0xD0002C00, 0x7990E00C, 0x79D07398, 0x490873D8
    .word 0x407A98, 0x78081809, 0x78487190, 0xE00371D0, 0x71907B98
    .word 0x71D07BD8, 0x20013702, 0xBD00, 0x802C22D, 0x2601B500
    .word 0xF87EF7FE, 0x26051C20, 0xF87AF7FE, 0x26091C21, 0xF876F7FE
    .word 0xF7D51C22, 0x370DFBEB, 0xBD002001, 0xF7D5B500, 0x3701FBF3
    .word 0xBD002001, 0x2601B500, 0xF84CF7FE, 0x26021C20, 0xF848F7FE
    .word 0xF7F91C21, 0x3704F8CD, 0xBD002001, 0x2601B500, 0xF83EF7FE
    .word 0xF0161C20, 0x3702F8AD, 0xBD002001, 0xF016B500, 0x3701F92B
    .word 0xBD002001, 0xF016B500, 0x3701F913, 0xBD002001, 0xF016B500
    .word 0x3701F919, 0xBD002001, 0xF7D4B500, 0x3701FFF5, 0xBD002001
    .word 0x2601B500, 0xF81CF7FE, 0xF7D61C20, 0x3702FCA5, 0xBD002001
// end of function sub_802C7E0

.thumb
dead_802CEA4:
    push {lr}
    bl sub_8003814
    add r7, #1
    mov r0, #1
    pop {pc}
// end of function dead_802CEA4

.thumb
dead_802CEB0:
    push {lr}
    bl sub_800F548
    add r7, #1
    mov r0, #1
    pop {pc}
// end of function dead_802CEB0

.thumb
dead_802CEBC:
    push {lr}
    bl sub_8035044
    bl sub_802D414
    add r7, #1
    mov r0, #1
    pop {pc}
// end of function dead_802CEBC

.thumb
dead_802CECC:
    push {lr}
    mov r0, #0
    bl sub_800D62E
    add r7, #1
    mov r0, #1
    pop {pc}
// end of function dead_802CECC

.thumb
dead_802CEDA:
    push {lr}
    bl sub_8036BD4
    bl sub_800F548
    add r7, #1
    mov r0, #1
    pop {pc}
// end of function dead_802CEDA

.thumb
dead_802CEEA:
    push {lr}
    mov r6, #1
    bl sub_802AED0
    add r2, r4, #0
    mov r6, #2
    bl sub_802AED0
    add r3, r4, #0
    mov r0, #1
    mov r1, #0
    bl sub_800EB42
    add r7, #3
    mov r0, #1
    pop {pc}
// end of function dead_802CEEA

.thumb
dead_802CF0A:
    push {lr}
    mov r6, #1
    bl sub_802AEE4
    add r0, r4, #0
    mov r6, #3
    bl sub_802AED0
    add r6, r0, #0
loc_802CF1C:
    add r0, r6, #0
    bl sub_80250F0
    add r6, #1
    sub r4, #1
    bgt loc_802CF1C
    add r7, #4
    mov r0, #1
    pop {pc}
    .byte 0
    .byte 0xB5
    .byte 1
    .byte 0x26 
    .byte 0xFD
    .byte 0xF7
    .byte 0xD7
    .byte 0xFF
    .byte 0x20
    .byte 0x1C
    .byte 0xD9
    .byte 0xF7
    .byte 0x2C 
    .byte 0xFA
    .byte 3
    .byte 0x37 
    .byte 1
    .byte 0x20
// end of function dead_802CF0A

    pop {pc}
.thumb
sub_802CF42:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r12
    push {r4,r5}
    mov r5, r10
    ldr r5, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0x12]
    mov r0, #0x1c
    mov r8, r0
loc_802CF56:
    ldr r6, [pc, #0x802cfac-0x802cf56-2] // off_802C090
    mov r12, r6
    mov r7, r8
    ldr r7, [r5,r7]
loc_802CF5E:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_802CF5E
    ldrb r0, [r5,#0x12]
    add r0, #1
    strb r0, [r5,#0x12]
    mov r0, r8
    ldr r1, [r5,r0]
    cmp r1, #1
    beq loc_802CF7C
    str r7, [r5,r0]
loc_802CF7C:
    add r0, #4
    mov r8, r0
    cmp r0, #0x28 
    ble loc_802CF56
    ldr r0, [r5,#0x3c]
    tst r0, r0
    beq loc_802CF90
    bl ho_802BD5C
    strb r0, [r5,#0x13]
loc_802CF90:
    bl sub_802BD2C
    beq loc_802CFA4
    ldr r0, [r5,#0x38]
    tst r0, r0
    beq loc_802CFA4
    str r0, [r5,#0x1c]
    ldr r0, [pc, #0x802cfb0-0x802cf9e-2] // unk_802C22C
    mov r0, #0
    str r0, [r5,#0x38]
loc_802CFA4:
    pop {r4,r5}
    mov r8, r4
    mov r12, r5
    pop {r4-r7,pc}
off_802CFAC:    .word off_802C090
off_802CFB0:    .word unk_802C22C
// end of function sub_802CF42

.thumb
sub_802CFB4:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    orr r0, r1
    str r0, [r5,#0x2c]
    pop {r1}
    mov pc, lr
// end of function sub_802CFB4

.thumb
sub_802CFC4:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    bic r0, r1
    str r0, [r5,#0x2c]
    pop {r1}
    mov pc, lr
// end of function sub_802CFC4

.thumb
sub_802CFD4:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    tst r0, r1
    pop {r1}
    mov pc, lr
    .balign 4, 0x00
// end of function sub_802CFD4

.thumb
sub_802CFE4:
    push {r5,lr}
    ldr r5, [pc, #0x802d014-0x802cfe6-2] // byte_200B138
    add r0, r5, #0
    mov r1, #8
    bl f900_8000930
    pop {r5,pc}
// end of function sub_802CFE4

.thumb
sub_802CFF2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802d014-0x802cff4-4] // byte_200B138
    ldr r0, [pc, #0x802d004-0x802cff6-2] // jt_802D008
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802D004:    .word jt_802D008
jt_802D008:    .word sub_802D018+1
    .word loc_802D080+1
    .word sub_802D1E6+1
off_802D014:    .word byte_200B138
// end of function sub_802CFF2

.thumb
sub_802D018:
    push {lr}
    bl sub_804E448
    mov r0, #0xf
    bl sub_8001BC8
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802d07c-0x802d028-4] // =0x1140
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001E74
    bl sub_8002008
    bl sub_8002534
    bl sub_800262E
    bl sub_8001D60
    bl sub_80540BA
    mov r7, r10
    ldr r3, [r7,#0x20]
    mov r0, #0xe0
    strb r0, [r3]
    mov r0, #0
    strb r0, [r3,#4]
    bl sub_802D220
    bl sub_802D208
    bl sub_802D244
// end of function sub_802D018

    mov r0, #8
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0
    strh r0, [r5,#4]
    mov r0, #4
    strb r0, [r5]
    pop {pc}
off_802D07C:    .word 0x1140
loc_802D080:
    push {lr}
    ldr r0, [pc, #0x802d098-0x802d082-2] // jt_802D09C
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    pop {pc}
    .balign 4, 0x00
off_802D098:    .word jt_802D09C
jt_802D09C:    .word sub_802D0B4+1
    .word sub_802D0EC+1
    .word sub_802D158+1
    .word sub_802D18C+1
    .word sub_802D1B4+1
    .word sub_802D1D8+1
.thumb
sub_802D0B4:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802D0C4
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #4
    strb r0, [r5,#2]
loc_802D0C4:
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    add r1, r0, #0
    lsl r1, r1, #0xa
    ldr r3, [pc, #0x802d0e8-0x802d0ce-2] // word_3002A50
    strh r1, [r3]
    cmp r0, #0x17
    blt locret_802D0E4
    mov r0, #0
    strb r0, [r5,#3]
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_802D0E4:
    pop {pc}
    .balign 4, 0x00
off_802D0E8:    .word word_3002A50
// end of function sub_802D0B4

.thumb
sub_802D0EC:
    push {lr}
    ldrb r0, [r5,#6]
    tst r0, r0
    bne locret_802D13E
    mov r0, #0x40 
    ldrb r1, [r5,#3]
    ldr r3, [pc, #0x802d140-0x802d0f8-4] // dword_802D144
    ldrb r2, [r5,#3]
    ldrb r2, [r3,r2]
    lsl r2, r2, #8
    orr r2, r1
    ldrh r3, [r5,#4]
    lsl r3, r3, #0x10
    orr r2, r3
    bl sub_80540C6
    mov r1, #6
    add r1, r1, r5
    str r1, [r0,#0xc]
    mov r0, #1
    strb r0, [r5,#6]
    ldr r3, [pc, #0x802d154-0x802d116-2] // dword_810CF58
    ldr r2, [pc, #0x802d140-0x802d118-4] // dword_802D144
    ldrb r1, [r5,#3]
    ldrb r1, [r1,r2]
    mov r0, #0x16
    mul r0, r1
    add r3, r3, r0
    ldrb r0, [r3,#2]
    ldrh r1, [r5,#4]
    add r0, r0, r1
    strh r0, [r5,#4]
    ldrb r0, [r5,#3]
    add r0, #1
    strb r0, [r5,#3]
    cmp r0, #0xc
    ble locret_802D13E
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_802D13E:
    pop {pc}
off_802D140:    .word dword_802D144
dword_802D144:    .word 0x60B0904, 0x80A0C05, 0x7010203, 0x0
off_802D154:    .word dword_810CF58
// end of function sub_802D0EC

.thumb
sub_802D158:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802D170
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #4
    mov r1, #0x80
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#2]
loc_802D170:
    bl sub_8005B5C
    beq locret_802D186
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802d188-0x802d17a-2] // =0x1340
    strh r1, [r0]
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_802D186:
    pop {pc}
off_802D188:    .word 0x1340
// end of function sub_802D158

.thumb
sub_802D18C:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802D1A4
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0
    mov r1, #0x80
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#2]
loc_802D1A4:
    bl sub_8005B5C
    beq locret_802D1B2
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_802D1B2:
    pop {pc}
// end of function sub_802D18C

.thumb
sub_802D1B4:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#4]
    ldrh r0, [r2,#2]
    ldr r1, [pc, #0x802d1d4-0x802d1bc-4] // =0x3F8
    tst r0, r1
    beq locret_802D1D2
    mov r0, #0xc
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
locret_802D1D2:
    pop {pc}
dword_802D1D4:    .word 0x3FF
// end of function sub_802D1B4

.thumb
sub_802D1D8:
    push {lr}
    bl sub_8005B5C
    beq locret_802D1E4
    mov r0, #8
    str r0, [r5]
locret_802D1E4:
    pop {pc}
// end of function sub_802D1D8

.thumb
sub_802D1E6:
    push {lr}
    bl sub_800609C
    bl sub_802525C
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x14
    strb r1, [r0]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802d204-0x802d1fc-4] // =0x40
    strh r1, [r0]
    pop {pc}
    .balign 4, 0x00
off_802D204:    .word 0x40
// end of function sub_802D1E6

.thumb
sub_802D208:
    push {lr}
    ldr r0, [pc, #0x802d240-0x802d20a-2] // word_2014000
    ldr r1, [pc, #0x802d218-0x802d20c-4] // Brightness_Fade_In_Out_Coefficient
    mov r2, #1
    ldr r3, [pc, #0x802d21c-0x802d210-4] // =0xA2400000
    bl sub_8006084
    pop {pc}
off_802D218:    .word Brightness_Fade_In_Out_Coefficient
dword_802D21C:    .word 0xA2400000
// end of function sub_802D208

.thumb
sub_802D220:
    ldr r3, [pc, #0x802d240-0x802d220-4] // word_2014000
    mov r2, #0x9f
    mov r1, #8
    mov r0, #0
loc_802D228:
    strh r0, [r3]
    add r3, #2
    sub r1, #1
    bne loc_802D238
    mov r1, #8
    cmp r0, #0xf
    bge loc_802D238
    add r0, #1
loc_802D238:
    sub r2, #1
    bpl loc_802D228
    mov pc, lr
    .byte 0, 0
off_802D240:    .word word_2014000
// end of function sub_802D220

.thumb
sub_802D244:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802d29c-0x802d246-2] // aNn
    mov r1, #0x14
    ldr r2, [pc, #0x802d298-0x802d24a-2] // unk_2015000
    ldr r3, [pc, #0x802d2a0-0x802d24c-4] // =0x6000000
    mov r4, #9
    mov r5, #1
    ldr r6, [pc, #0x802d2a4-0x802d252-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x21 
    .byte 1
    .byte 0x22 
    .byte 0xA
    .byte 0x23 
    .byte 0x20
    .byte 0x24 
    .byte 0x20
    .byte 0x25 
    .byte 0xD4
    .byte 0xF7
    .byte 0xC7
    .byte 0xFD
// end of function sub_802D244

    mov r0, #7
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x802d2a8-0x802d270-4] // dword_802D2AC
    mov r4, #0x16
    mov r5, #2
    bl sub_8001DDC
    mov r0, #9
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x802d304-0x802d280-4] // byte_802D308
    mov r4, #0x14
    mov r5, #2
    bl sub_8001DDC
    ldr r0, [pc, #0x802d358-0x802d28a-2] // dword_868E204
    ldr r1, [pc, #0x802d35c-0x802d28c-4] // =0x3002A52
    mov r2, #0x1e
    bl f900_800097A
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802D298:    .word unk_2015000
off_802D29C:    .word aNn
dword_802D2A0:    .word 0x6000000
off_802D2A4:    .word dword_868E224
off_802D2A8:    .word dword_802D2AC
dword_802D2AC:    .word 0x20000, 0x60004, 0xA0008, 0xE000C, 0x120010, 0x160014
    .word 0x1A0018, 0x1E001C, 0x220020, 0x260024, 0x2A0028, 0x30001
    .word 0x70005, 0xB0009, 0xF000D, 0x130011, 0x170015, 0x1B0019
    .word 0x1F001D, 0x230021, 0x270025, 0x2B0029
off_802D304:    .word byte_802D308
byte_802D308:    .byte 0x2C
    .byte 0
    .byte 0x2E 
    .byte 0
    .byte 0x30 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x34 
    .byte 0
    .byte 0x36 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x3A 
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x48 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x4C 
    .byte 0
    .byte 0x4E 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x52 
    .byte 0
    .byte 0x2D 
    .byte 0
    .byte 0x2F 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x33 
    .byte 0
    .byte 0x35 
    .byte 0
    .byte 0x37 
    .byte 0
    .byte 0x39 
    .byte 0
    .byte 0x3B 
    .byte 0
    .byte 0x3D 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x49 
    .byte 0
    .byte 0x4B 
    .byte 0
    .byte 0x4D 
    .byte 0
    .byte 0x4F 
    .byte 0
    .byte 0x51 
    .byte 0
    .byte 0x53 
    .byte 0
dword_802D358:    .word 0x868E206
dword_802D35C:    .word 0x3002A52
.thumb
sub_802D360:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x54]
    ldr r1, [pc, #0x802d378-0x802d366-2] // =0x190
    bl f900_8000930
    mov r0, #0xa5
    mov r1, #4
    bl sub_802D3C8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802D378:    .word 0x190
// end of function sub_802D360

.thumb
sub_802D37C:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_8006360
    pop {r0,r1}
    mov r2, r10
    ldr r2, [r2,#0x54]
    mov r6, #0xff
    cmp r0, #0xb0
    blt loc_802D39A
    cmp r0, #0xb5
    bgt loc_802D39A
    mov r4, #0xa5
    ldrb r6, [r2,r4]
    b loc_802D3A0
loc_802D39A:
    cmp r0, #0xc0
    blt loc_802D3A0
    mov r6, #9
loc_802D3A0:
    ldrb r4, [r2,r0]
    mov r3, #1
    cmp r4, r6
    beq loc_802D3B4
    mov r3, #0
    add r4, r4, r1
    cmp r4, r6
    ble loc_802D3B4
    mov r3, #2
    add r4, r6, #0
loc_802D3B4:
    strb r4, [r2,r0]
    add r4, r0, #0
    add r0, r3, #0
    push {r0}
    bl sub_802D458
    bl sub_802D4C0
    pop {r0}
    pop {r4-r7,pc}
// end of function sub_802D37C

.thumb
sub_802D3C8:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x54]
    mov r3, #0
    strb r3, [r2,r0]
    bl sub_802D37C
    pop {pc}
// end of function sub_802D3C8

.thumb
sub_802D3D8:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x54]
    ldrb r4, [r2,r0]
    mov r3, #1
    tst r4, r4
    beq loc_802D3F0
    mov r3, #0
    sub r4, r4, r1
    bge loc_802D3F0
    mov r3, #2
    add r4, r4, r1
loc_802D3F0:
    strb r4, [r2,r0]
    add r0, r3, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802D3D8

.thumb
sub_802D3F8:
    push {lr}
    push {r0}
    bl sub_8006374
    pop {r0}
    bne loc_802D40E
    mov r1, r10
    ldr r1, [r1,#0x54]
    ldrb r0, [r1,r0]
    tst r0, r0
    pop {pc}
loc_802D40E:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_802D3F8

.thumb
sub_802D414:
    push {lr}
    mov r2, r10
    ldr r0, [r2,#0x44]
    ldr r1, [r2,#0x40]
    ldrh r2, [r1,#0x22]
    strh r2, [r0,#0x14]
    strh r2, [r1,#0x20]
    pop {pc}
// end of function sub_802D414

.thumb
sub_802D424:
    push {r4,r6,r7,lr}
    mov r2, r10
    ldr r4, [r2,#0x44]
    ldr r6, [r2,#0x40]
    ldrh r7, [r4,#0x16]
    mov r0, #0xa
    bl sub_8047590
    tst r0, r0
    beq loc_802D440
    lsr r7, r7, #1
    tst r7, r7
    bne loc_802D440
    add r7, #1
loc_802D440:
    mov r3, r10
    ldr r3, [r3,#0x6c]
    ldrh r3, [r3]
    add r7, r7, r3
    strh r7, [r6,#0x22]
    ldrh r3, [r6,#0x20]
    cmp r7, r3
    bge locret_802D454
    strh r7, [r6,#0x20]
    strh r7, [r4,#0x14]
locret_802D454:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
// end of function sub_802D424

.thumb
sub_802D458:
    push {r4-r7,lr}
    cmp r4, #0xa0
    bne locret_802D4BA
    mov r7, #0x14
    lsr r7, r0
    mul r7, r1
    ldr r2, [pc, #0x802d4bc-0x802d464-4] // =0x26C0
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrh r4, [r3,#0x16]
    add r4, r4, r7
    cmp r4, r2
    ble loc_802D474
    add r4, r2, #0
loc_802D474:
    strh r4, [r3,#0x16]
    mov r0, #0
    push {r0,r1}
    mov r0, #0xc
    mov r1, #0x49 
    bl sub_8024FF0
    pop {r0,r1}
    beq loc_802D488
    mov r0, #1
loc_802D488:
    mov r7, #0x14
    lsr r7, r0
    ldr r2, [pc, #0x802d4bc-0x802d48c-4] // =0x26C0
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldrh r4, [r3,#0x20]
    add r4, r4, r7
    cmp r4, r2
    ble loc_802D49C
    add r4, r2, #0
loc_802D49C:
    strh r4, [r3,#0x20]
    ldrh r4, [r3,#0x22]
    add r4, r4, r7
    cmp r4, r2
    ble loc_802D4A8
    add r4, r2, #0
loc_802D4A8:
    strh r4, [r3,#0x22]
    mov r3, r10
    ldr r3, [r3,#0x44]
    ldrh r4, [r3,#0x14]
    add r4, r4, r7
    cmp r4, r2
    ble loc_802D4B8
    add r4, r2, #0
loc_802D4B8:
    strh r4, [r3,#0x14]
locret_802D4BA:
    pop {r4-r7,pc}
dword_802D4BC:    .word 0x270F
// end of function sub_802D458

.thumb
sub_802D4C0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x54]
    mov r6, #0xa2
    add r6, r6, r7
    ldrb r0, [r6]
    mov r6, #0xa3
    add r6, r6, r7
    ldrb r1, [r6]
    lsl r1, r1, #1
    mov r6, #0xa4
    add r6, r6, r7
    ldrb r2, [r6]
    lsl r3, r2, #1
    add r2, r2, r3
    add r0, r0, r1
    add r0, r0, r2
    mov r7, r10
    ldr r7, [r7,#0x40]
    strb r0, [r7,#0x18]
    pop {r4-r7,pc}
// end of function sub_802D4C0

.thumb
sub_802D4EA:
    push {r4-r7,lr}
    bl sub_8006490
    bne loc_802D516
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r1, [r2,#0x74]
    ldr r4, [pc, #0x802d51c-0x802d4f8-4] // =0xF423F
    mov r3, #1
    cmp r1, r4
    beq loc_802D50C
    mov r3, #0
    add r1, r1, r0
    cmp r1, r4
    ble loc_802D50C
    mov r3, #2
    add r1, r4, #0
loc_802D50C:
    str r1, [r2,#0x74]
    add r0, r3, #0
    bl sub_8006478
    pop {r4-r7,pc}
loc_802D516:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_802D51C:    .word 0xF423F
// end of function sub_802D4EA

.thumb
sub_802D520:
    push {lr}
    bl sub_8006490
    bne locret_802D532
    mov r1, r10
    ldr r1, [r1,#0x40]
    str r0, [r1,#0x74]
    bl sub_8006478
locret_802D532:
    pop {pc}
// end of function sub_802D520

.thumb
sub_802D534:
    push {lr}
    bl sub_8006490
    bne loc_802D55C
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r1, [r2,#0x74]
    mov r3, #1
    tst r1, r1
    beq loc_802D552
    mov r3, #0
    sub r1, r1, r0
    bge loc_802D552
    mov r3, #2
    add r1, r1, r0
loc_802D552:
    str r1, [r2,#0x74]
    add r0, r3, #0
    bl sub_8006478
    pop {pc}
loc_802D55C:
    mov r0, #2
    pop {pc}
// end of function sub_802D534

.thumb
sub_802D560:
    push {lr}
    bl sub_8006490
    bne loc_802D570
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r0, [r1,#0x74]
    pop {pc}
loc_802D570:
    mov r0, #0
    pop {pc}
// end of function sub_802D560

.thumb
sub_802D574:
    push {r4-r7,lr}
    bl sub_80064CC
    bne loc_802D5A0
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r1, [r2,#0x78]
    ldr r4, [pc, #0x802d5a4-0x802d582-2] // =0x26C0
    mov r3, #1
    cmp r1, r4
    beq loc_802D596
    mov r3, #0
    add r1, r1, r0
    cmp r1, r4
    ble loc_802D596
    mov r3, #2
    add r1, r4, #0
loc_802D596:
    str r1, [r2,#0x78]
    add r0, r3, #0
    bl sub_80064B4
    pop {r4-r7,pc}
loc_802D5A0:
    mov r0, #1
    pop {r4-r7,pc}
dword_802D5A4:    .word 0x270F
// end of function sub_802D574

.thumb
sub_802D5A8:
    push {lr}
    bl sub_80064CC
    bne locret_802D5BA
    mov r1, r10
    ldr r1, [r1,#0x40]
    str r0, [r1,#0x78]
    bl sub_80064B4
locret_802D5BA:
    pop {pc}
// end of function sub_802D5A8

.thumb
sub_802D5BC:
    push {lr}
    bl sub_80064CC
    bne loc_802D5E4
    mov r2, r10
    ldr r2, [r2,#0x40]
    ldr r1, [r2,#0x78]
    mov r3, #1
    tst r1, r1
    beq loc_802D5DA
    mov r3, #0
    sub r1, r1, r0
    bge loc_802D5DA
    mov r3, #2
    add r1, r1, r0
loc_802D5DA:
    str r1, [r2,#0x78]
    add r0, r3, #0
    bl sub_80064B4
    pop {pc}
loc_802D5E4:
    mov r0, #2
    pop {pc}
// end of function sub_802D5BC

.thumb
sub_802D5E8:
    push {lr}
    bl sub_80064CC
    bne loc_802D5F8
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r0, [r1,#0x78]
    pop {pc}
loc_802D5F8:
    mov r0, #0
    pop {pc}
// end of function sub_802D5E8

.thumb
sub_802D5FC:
    push {r4-r7,lr}
    bl sub_802D638
    add r1, r2, #0
    bl sub_802D37C
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802D5FC

.thumb
sub_802D60C:
    push {r4-r7,lr}
    bl sub_802D638
    add r1, r2, #0
    bl sub_802D3C8
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802D60C

.thumb
sub_802D61C:
    push {r4-r7,lr}
    bl sub_802D638
    add r1, r2, #0
    bl sub_802D3D8
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802D61C

.thumb
sub_802D62C:
    push {r4-r7,lr}
    bl sub_802D638
    bl sub_802D3F8
    pop {r4-r7,pc}
// end of function sub_802D62C

.thumb
sub_802D638:
    push {r2,r6,r7,lr}
    sub r0, #0xc0
    mov r6, #0
    add r4, r0, #0
    add r5, r1, #0
loc_802D642:
    add r0, r4, r6
    bl sub_8046C98
    ldrb r0, [r7,#3]
    cmp r0, r5
    beq loc_802D658
    add r6, #1
    cmp r6, #4
    blt loc_802D642
    mov r0, #0
    b locret_802D65C
loc_802D658:
    add r0, r4, r6
    add r0, #0xc0
locret_802D65C:
    pop {r2,r6,r7,pc}
    .byte 0, 0
// end of function sub_802D638

.thumb
sub_802D660:
    push {r6,lr}
    mov r2, r10
    ldr r2, [r2,#0x44]
    ldrb r1, [r2,#8]
    mov r6, #0x63 
    mov r3, #1
    cmp r1, r6
    beq loc_802D67C
    mov r3, #0
    add r1, r1, r0
    cmp r1, r6
    ble loc_802D67C
    mov r3, #2
    add r1, r6, #0
loc_802D67C:
    strb r1, [r2,#8]
    add r0, r3, #0
    pop {r6,pc}
    .balign 4, 0x00
// end of function sub_802D660

.thumb
sub_802D684:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x44]
    str r0, [r2,#8]
    pop {pc}
    .byte 0, 0
// end of function sub_802D684

.thumb
sub_802D690:
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#8]
    mov pc, lr
// end of function sub_802D690

.thumb
sub_802D698:
    push {r4,r5,lr}
    mov r2, r10
    ldr r2, [r2,#0x44]
    ldrb r1, [r2,#8]
    mov r3, #1
    tst r4, r4
    beq loc_802D6B0
    mov r3, #0
    sub r4, r4, r1
    bge loc_802D6B0
    mov r3, #2
    add r4, r4, r1
loc_802D6B0:
    strb r4, [r2,#8]
    add r0, r3, #0
    pop {r4,r5,pc}
    .balign 4, 0x00
// end of function sub_802D698

.thumb
sub_802D6B8:
    mov r0, #1
    b loc_802D6BE
loc_802D6BC:
    mov r0, #0
loc_802D6BE:
    push {lr}
    push {r0}
    ldr r0, [pc, #0x802d6fc-0x802d6c2-2] // byte_200B220
    mov r1, #0x28 
    bl f900_8000930
    pop {r0}
    ldr r2, [pc, #0x802d6fc-0x802d6cc-4] // byte_200B220
    strb r0, [r2,#(byte_200B228 - 0x200b220)]
    pop {pc}
// end of function sub_802D6B8

loc_802D6D2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802d6fc-0x802d6d4-4] // byte_200B220
    ldr r0, [pc, #0x802d6e4-0x802d6d6-2] // off_802D6E8
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802D6E4:    .word off_802D6E8
off_802D6E8:    .word sub_802D700+1
    .word sub_802D7A0+1
    .word sub_802D7C8+1
    .word sub_802D7F8+1
    .word sub_802D806+1
off_802D6FC:    .word byte_200B220
.thumb
sub_802D700:
    push {lr}
    mov r0, #0x10
    bl sub_8001BC8
    mov r0, #0xc
    ldr r1, [pc, #0x802d778-0x802d70a-2] // =0x40
    ldrb r7, [r5,#8]
    tst r7, r7
    beq loc_802D716
    mov r0, #4
    ldr r1, [pc, #0x802d77c-0x802d714-4] // =0xC0
loc_802D716:
    mov r7, r10
    ldr r7, [r7,#8]
    strh r1, [r7]
    mov r1, #0
    strh r1, [r7,#0xc]
    strh r1, [r7,#0xe]
    strh r1, [r7,#0x10]
    strh r1, [r7,#0x12]
    strh r1, [r7,#0x14]
    strh r1, [r7,#0x16]
    strh r1, [r7,#0x18]
    strh r1, [r7,#0x1a]
    mov r1, #0xff
    bl sub_8005ADC
    bl sub_8001D04
    ldr r0, [pc, #0x802d780-0x802d738-4] // dword_86ADA44
    ldr r1, [pc, #0x802d784-0x802d73a-2] // word_2014000
    bl dword_8111700
    ldr r0, [pc, #0x802d784-0x802d740-4] // word_2014000
    ldr r1, [pc, #0x802d788-0x802d742-2] // =0x6000020
    ldr r2, [pc, #0x802d78c-0x802d744-4] // dword_86ADA44
    ldr r2, [r2]
    lsr r2, r2, #8
    bl loc_8000874
    ldr r0, [pc, #0x802d790-0x802d74e-2] // dword_86AE3A4
    ldr r1, [pc, #0x802d794-0x802d750-4] // word_3002A50
    mov r2, #0x1e
    lsl r2, r2, #4
    bl loc_8000874
    bl sub_8001D88
    ldr r0, [pc, #0x802d798-0x802d75e-2] // dword_86AE3C4
    mov r1, r10
    ldr r1, [r1,#0x28]
    mov r2, #0x80
    lsl r2, r2, #4
    add r1, r1, r2
    ldr r2, [pc, #0x802d79c-0x802d76a-2] // =0x500
    bl loc_8000874
    mov r0, #4
    strb r0, [r5]
    pop {pc}
    .balign 4, 0x00
off_802D778:    .word 0x40
off_802D77C:    .word 0xC0
off_802D780:    .word dword_86ADA44
off_802D784:    .word word_2014000
dword_802D788:    .word 0x6000020
off_802D78C:    .word dword_86ADA44
off_802D790:    .word dword_86AE3A4
off_802D794:    .word word_3002A50
off_802D798:    .word dword_86AE3C4
off_802D79C:    .word 0x500
// end of function sub_802D700

.thumb
sub_802D7A0:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802d7c4-0x802d7a6-2] // =0x1F40
    strh r1, [r0]
    mov r0, #8
    ldrb r7, [r5,#8]
    tst r7, r7
    beq loc_802D7B4
    mov r0, #0
loc_802D7B4:
    mov r1, #8
    bl sub_8005ADC
    mov r0, #0x78 
    strb r0, [r5,#4]
    mov r0, #8
    strb r0, [r5]
    pop {pc}
off_802D7C4:    .word 0x1F40
// end of function sub_802D7A0

.thumb
sub_802D7C8:
    push {lr}
    bl sub_8005B5C
    beq locret_802D7F2
    mov r7, r10
    ldr r0, [r7,#4]
    ldrh r0, [r0]
    ldr r1, [pc, #0x802d7f4-0x802d7d6-2] // =0x3F8
    and r1, r0
    bne loc_802D7E6
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    cmp r0, #0
    bgt locret_802D7F2
loc_802D7E6:
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    mov r0, #0xc
    strb r0, [r5]
locret_802D7F2:
    pop {pc}
dword_802D7F4:    .word 0x3FF
// end of function sub_802D7C8

.thumb
sub_802D7F8:
    push {lr}
    bl sub_8005B5C
    beq locret_802D804
    mov r0, #0x10
    strb r0, [r5]
locret_802D804:
    pop {pc}
// end of function sub_802D7F8

.thumb
sub_802D806:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0
    strb r1, [r0]
    bl sub_802525C
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802d820-0x802d818-4] // =0x40
    strh r1, [r0]
    pop {pc}
    .byte 0, 0
off_802D820:    .word 0x40
dword_802D824:    .word 0x15, 0x10115, 0x20215, 0x30315, 0x40415, 0x50515
    .word 0x60615, 0x70715, 0x916, 0x10816, 0x20A16, 0x30B16
    .word 0x40C16, 0xFFFFFFFF
dword_802D85C:    .word 0xFFFF0015, 0x100, 0xFFFF0115, 0x101, 0xFFFF0215, 0x102
    .word 0xFFFF0315, 0x103, 0xFFFF0415, 0x104, 0xFFFF0515, 0x105
    .word 0xFFFF0615, 0x106, 0xFFFF0715, 0x107, 0xFFFF0916, 0x10000
    .word 0xFFFF0816, 0x10001, 0xFFFF0A16, 0x10002, 0xFFFF0B16, 0x10003
    .word 0xFFFF0C16, 0x10004, 0xFFFFFFFF, 0xFFFFFFFF, 0x3002C10, 0x20
    .word 0xFFFF1100, 0x200A1A0, 0x1, 0x0
off_802D8E4:    .word unk_3002C10
    .word 0x20, 0xFFFF1100, 0x200A1C0, 0x6, 0x200A1E0, 0x6, 0x200A200
    .word 0x6, 0x200A1E0, 0x6, 0x1
// end of function sub_802D806

.thumb
sub_802D914:
    push {lr}
    ldr r1, [pc, #0x802d9e4-0x802d916-2] // byte_200F770
    ldr r2, [r1,#(dword_200F778 - 0x200f770)]
    orr r2, r0
    str r2, [r1,#(dword_200F778 - 0x200f770)]
    pop {pc}
// end of function sub_802D914

.thumb
sub_802D920:
    push {lr}
    ldr r1, [pc, #0x802d9e4-0x802d922-2] // byte_200F770
    ldr r2, [r1,#(dword_200F778 - 0x200f770)]
    bic r2, r0
    str r2, [r1,#(dword_200F778 - 0x200f770)]
    pop {pc}
// end of function sub_802D920

.thumb
sub_802D92C:
    push {lr}
    ldr r1, [pc, #0x802d9e4-0x802d92e-2] // byte_200F770
    ldr r2, [r1,#(dword_200F778 - 0x200f770)]
    tst r2, r0
    pop {pc}
    .balign 4, 0x00
// end of function sub_802D92C

.thumb
sub_802D938:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_802D920
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802D938

.thumb
sub_802D944:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    ldr r0, [pc, #0x802d9e4-0x802d950-4] // byte_200F770
    mov r1, #0xc
    bl f900_8000930
    ldr r2, [pc, #0x802d9e4-0x802d958-4] // byte_200F770
    ldr r0, [pc, #0x802d96c-0x802d95a-2] // =0xFFFFFFE0
    strh r0, [r2,#(word_200F776 - 0x200f770)]
    mov r0, #1
    bl sub_802D914
    bl sub_804819C
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_802D96C:    .word 0xFFFFFFE0
// end of function sub_802D944

.thumb
sub_802D970:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802d9e4-0x802d972-2] // byte_200F770
    mov r1, #4
    strb r1, [r0]
    mov r1, #0
    strb r1, [r0,#(byte_200F771 - 0x200f770)]
    strb r1, [r0,#(byte_200F772 - 0x200f770)]
    strb r1, [r0,#(byte_200F773 - 0x200f770)]
    mov r1, #0
    strh r1, [r0,#(word_200F776 - 0x200f770)]
    bl sub_802DB54
// end of function sub_802D970

    bl sub_802DBFC
    bl sub_802DC34
    ldr r0, [pc, #0x802d99c-0x802d990-4] // dword_802D85C
    bl sub_8031624
    bl sub_804819C
    pop {r4-r7,pc}
off_802D99C:    .word dword_802D85C
.thumb
ho_802D9A0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x802d9e4-0x802d9a2-2] // byte_200F770
    ldr r0, [pc, #0x802d9c8-0x802d9a4-4] // jt_802D9CC
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    bl sub_802DBE0
    bl sub_802DBFC
    bl sub_802DC34
    ldrb r0, [r5,#(byte_200F771 - 0x200f770)]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802D9C8:    .word jt_802D9CC
jt_802D9CC:    .word sub_802D9E8+1
    .word sub_802DA20+1
    .word sub_802DB08+1
    .word sub_802DB28+1
    .word sub_802DB50+1
    .word sub_802DAB4+1
off_802D9E4:    .word byte_200F770
// end of function ho_802D9A0

.thumb
sub_802D9E8:
    push {r4-r7,lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802DA00
    bl sub_802DB54
    bl sub_802DBFC
    bl sub_802DC34
    mov r0, #4
    strb r0, [r5,#2]
loc_802DA00:
    mov r1, #6
    ldrsh r0, [r5,r1]
    add r0, #4
    strh r0, [r5,#6]
    blt locret_802DA18
    mov r0, #0
    strh r0, [r5,#6]
    ldr r0, [pc, #0x802da1c-0x802da0e-2] // dword_802D824
    bl sub_8053FFC
    mov r0, #4
    strb r0, [r5]
locret_802DA18:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802DA1C:    .word dword_802D824
// end of function sub_802D9E8

.thumb
sub_802DA20:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_802D92C
    bne loc_802DA3C
    bl sub_8005B5C
    beq locret_802DAB2
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_802DA42
loc_802DA3C:
    mov r0, #8
    strb r0, [r5]
    b locret_802DAB2
loc_802DA42:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r1, r0
    beq loc_802DA76
    mov r0, #0x11
    mov r1, #0x6e 
    bl sub_8024FF0
    beq loc_802DA6A
    ldrb r2, [r5,#4]
    cmp r2, #6
    beq loc_802DA62
    cmp r2, #7
    bne loc_802DA6A
loc_802DA62:
    mov r0, #0x69 
    bl f500_8000558
    b loc_802DA76
loc_802DA6A:
    mov r0, #1
    strb r0, [r5,#1]
    mov r0, #0x7e 
    bl f500_8000558
    b locret_802DAB2
loc_802DA76:
    ldrb r2, [r5,#4]
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r1, r0
    beq loc_802DA88
    sub r2, #1
    bge loc_802DAAA
    mov r2, #7
    b loc_802DAAA
loc_802DA88:
    mov r1, #0x80
    tst r1, r0
    beq loc_802DA98
    add r2, #1
    cmp r2, #7
    ble loc_802DAAA
    mov r2, #0
    b loc_802DAAA
loc_802DA98:
    mov r1, #0x20 
    tst r1, r0
    beq locret_802DAB2
    mov r0, #0x14
    strb r0, [r5]
    strb r2, [r5,#5]
    bl sub_802DCFC
    mov r2, #8
loc_802DAAA:
    strb r2, [r5,#4]
    mov r0, #0x7d 
    bl f500_8000558
locret_802DAB2:
    pop {r4-r7,pc}
// end of function sub_802DA20

.thumb
sub_802DAB4:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_802D92C
    bne loc_802DAD0
    bl sub_8005B5C
    beq locret_802DB04
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_802DAD6
loc_802DAD0:
    mov r0, #8
    strb r0, [r5]
    b locret_802DB04
loc_802DAD6:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r1, r0
    beq loc_802DAE8
    mov r0, #8
    strb r0, [r5]
    b locret_802DB04
loc_802DAE8:
    ldrb r2, [r5,#4]
    ldrh r0, [r7,#4]
    mov r1, #0xd0
    tst r1, r0
    beq locret_802DB04
    mov r0, #0x7d 
    bl f500_8000558
    mov r0, #4
    strb r0, [r5]
    ldrb r0, [r5,#5]
    strb r0, [r5,#4]
    bl sub_802DCFC
locret_802DB04:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_802DAB4

.thumb
sub_802DB08:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_802D92C
    bne loc_802DB22
    mov r1, #6
    ldrsh r0, [r5,r1]
    sub r0, #4
    strh r0, [r5,#6]
    ldr r1, [pc, #0x802de28-0x802db1a-2] // =0xFFFFFFEC
    cmp r0, r1
    bgt locret_802DB26
    strh r1, [r5,#6]
loc_802DB22:
    mov r0, #0xc
    strb r0, [r5]
locret_802DB26:
    pop {r4-r7,pc}
// end of function sub_802DB08

.thumb
sub_802DB28:
    push {r4-r7,lr}
    bl sub_8001D9C
    bl sub_8029296
    mov r0, #3
    bl sub_802D920
    mov r0, #0x7b 
    bl f500_8000558
    mov r0, #2
    strb r0, [r5,#1]
    bl sub_80481A8
    pop {r4-r7,pc}
    .word byte_2006140
    .word 0xD80
// end of function sub_802DB28

.thumb
sub_802DB50:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_802DB50

.thumb
sub_802DB54:
    push {r4-r7,lr}
    bl sub_80540BA
    ldr r0, [pc, #0x802dbb0-0x802db5a-2] // loc_86E9E00
    ldr r1, [pc, #0x802dbb4-0x802db5c-4] // =0x600D000
    ldr r2, [pc, #0x802dbb8-0x802db5e-2] // =0xFA0
    bl f900_80009A0
    mov r0, #3
    bl sub_802F628
    ldr r0, [pc, #0x802dbdc-0x802db6a-2] // unk_200A1A0
    ldr r1, [pc, #0x802dbc0-0x802db6c-4] // unk_3002C10
    mov r2, #0x20 
    bl f900_800098C
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x802dbc8-0x802db7a-2] // unk_3002800
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x802dbcc-0x802db82-2] // dword_86EADA0
    ldr r1, [pc, #0x802dbd0-0x802db84-4] // =0x6016A00
    ldr r2, [pc, #0x802dbd4-0x802db86-2] // =0x1C0
    bl f900_80009A0
    mov r0, #0xb
    bl sub_802F628
    ldr r1, [pc, #0x802dbd8-0x802db92-2] // unk_30027C0
    mov r2, #0x20 
    bl f900_800098C
    bl sub_802DD44
// end of function sub_802DB54

    bl sub_802DD18
    bl sub_802DD74
    bl sub_802DDA0
    bl sub_802DDC0
    pop {r4-r7,pc}
off_802DBB0:    .word loc_86E9E00
dword_802DBB4:    .word 0x600D000
off_802DBB8:    .word 0xFA0
    .word byte_86F6100
off_802DBC0:    .word unk_3002C10
    .word dword_869F7C4
off_802DBC8:    .word unk_3002800
off_802DBCC:    .word dword_86EADA0
dword_802DBD0:    .word 0x6016A00
off_802DBD4:    .word 0x1C0
off_802DBD8:    .word unk_30027C0
off_802DBDC:    .word unk_200A1A0
.thumb
sub_802DBE0:
    push {r4-r7,lr}
    mov r0, #6
    ldrsh r1, [r5,r0]
    mov r0, #0
    mov r2, #0
    ldr r3, [pc, #0x802dbf8-0x802dbea-2] // loc_86E9900
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_802DBE0

    pop {r4-r7,pc}
    .balign 4, 0x00
off_802DBF8:    .word loc_86E9900
.thumb
sub_802DBFC:
    push {r4-r7,lr}
    mov r4, #0
    ldr r7, [pc, #0x802dc30-0x802dc00-4] // word_3002C20
loc_802DC02:
    bl sub_802DCA8
    mov r0, #0x11
    mov r1, #0x6e 
    bl sub_8024FF0
    beq loc_802DC12
    add r6, #4
loc_802DC12:
    ldrb r0, [r5]
    cmp r0, #0x14
    beq loc_802DC20
    ldrb r0, [r5,#4]
    cmp r4, r0
    bne loc_802DC20
    add r6, #2
loc_802DC20:
    ldrh r0, [r6]
    strh r0, [r7]
    add r7, #2
    add r4, #1
    cmp r4, #8
    blt loc_802DC02
    pop {r4-r7,pc}
    .byte 0, 0
off_802DC30:    .word word_3002C20
// end of function sub_802DBFC

.thumb
sub_802DC34:
    push {r4-r7,lr}
    ldr r3, [pc, #0x802dc70-0x802dc36-2] // dword_200A448
    ldr r6, [r3]
    mov r4, #0
    ldr r7, [pc, #0x802dc74-0x802dc3c-4] // word_3002C20
    mov r0, #0x11
    mov r1, #0x6e 
    bl sub_8024FF0
    beq locret_802DC6E
    ldr r1, [pc, #0x802dc74-0x802dc48-4] // word_3002C20
    sub r1, #0x10
    mov r3, #0
    mov r4, #0x20 
    mul r4, r3
    mov r0, #0xc
    add r0, r0, r4
    ldr r2, [pc, #0x802dc78-0x802dc56-2] // dword_802DC7C
    lsl r6, r6, #2
    ldr r2, [r2,r6]
    strh r2, [r1,r0]
    ldr r2, [pc, #0x802dc90-0x802dc5e-2] // off_802DC94
    ldr r2, [r2,r6]
    mov r0, #0x1c
    add r0, r0, r4
    strh r2, [r1,r0]
    mov r0, #0x1e
    add r0, r0, r4
    strh r2, [r1,r0]
locret_802DC6E:
    pop {r4-r7,pc}
off_802DC70:    .word dword_200A448
off_802DC74:    .word word_3002C20
off_802DC78:    .word dword_802DC7C
dword_802DC7C:    .word 0x5159, 0x2205, 0x2908, 0x5548, 0x1CD7
off_802DC90:    .word off_802DC94
off_802DC94:    .word 0x3CD4
    .word 0x1960
    .word 0x1CC5, 0x3D05, 0x18AF
// end of function sub_802DC34

.thumb
sub_802DCA8:
    push {lr}
    ldr r3, [pc, #0x802dcb8-0x802dcaa-2] // dword_200A448
    ldr r6, [r3]
    lsl r6, r6, #2
    ldr r3, [pc, #0x802dcbc-0x802dcb0-4] // off_802DCC0
    ldr r6, [r3,r6]
    pop {pc}
    .balign 4, 0x00
off_802DCB8:    .word dword_200A448
off_802DCBC:    .word off_802DCC0
off_802DCC0:    .word loc_802DCD4
    .word loc_802DCDC
    .word loc_802DCE4
    .word loc_802DCEC
    .word loc_802DCF4
// end of function sub_802DCA8

loc_802DCD4:
    str r2, [r3,#0x28]
    ldrb r7, [r7,#0x1f]
    str r2, [r3,#0x28]
    ldrb r7, [r7,#0x1f]
loc_802DCDC:
    ldr r6, [pc, #0x802e02c-0x802dcdc-4] // =0xF7FFB500
    ldrb r7, [r7,#0x1f]
    ldr r6, [pc, #0x802e030-0x802dce0-4] // =0x200CFF05
    ldrb r7, [r7,#0x1f]
loc_802DCE4:
    strh r4, [r2,r2]
    ldrb r7, [r7,#0x1f]
    strh r4, [r2,r2]
    ldrb r7, [r7,#0x1f]
loc_802DCEC:
    strh r4, [r2,r2]
    ldrb r7, [r7,#0x1f]
    strh r4, [r2,r2]
    ldrb r7, [r7,#0x1f]
loc_802DCF4:
    ldr r6, [pc, #0x802dee4-0x802dcf4-4] // off_802DEE8
    ldrb r7, [r7,#0x1f]
    ldr r6, [pc, #0x802dee8-0x802dcf8-4] // sub_802E9AC+1
    ldrb r7, [r7,#0x1f]
.thumb
sub_802DCFC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802dd10-0x802dcfe-2] // dword_802D85C+112
    ldrb r1, [r5]
    cmp r1, #0x14
    bne loc_802DD08
    ldr r0, [pc, #0x802dd14-0x802dd06-2] // off_802D8E4
loc_802DD08:
    bl sub_8002028
    pop {r4-r7,pc}
    .byte 0, 0
off_802DD10:    .word dword_802D85C+0x70
off_802DD14:    .word off_802D8E4
// end of function sub_802DCFC

.thumb
sub_802DD18:
    push {r5,lr}
    bl sub_802D560
    mov r6, r10
    ldr r6, [r6,#0x38]
    str r0, [r6,#4]
    ldr r0, [pc, #0x802ddf0-0x802dd24-4] // dword_86E6F00
    mov r1, #0xf1
    ldr r2, [pc, #0x802dd3c-0x802dd28-4] // unk_200D920
    ldr r3, [pc, #0x802dd40-0x802dd2a-2] // =0x6015E60
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802ddfc-0x802dd30-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
    .balign 4, 0x00
off_802DD3C:    .word unk_200D920
dword_802DD40:    .word 0x6015E60
// end of function sub_802DD18

.thumb
sub_802DD44:
    push {r5,lr}
    mov r6, r10
    ldr r0, [r6,#0x38]
    ldr r1, [r6,#0x40]
    ldrh r2, [r1,#0x20]
    str r2, [r0,#4]
    ldrh r2, [r1,#0x22]
    str r2, [r0,#8]
    ldr r0, [pc, #0x802ddf0-0x802dd54-4] // dword_86E6F00
    mov r1, #0xf0
    ldr r2, [pc, #0x802dd6c-0x802dd58-4] // unk_200DAE0
    ldr r3, [pc, #0x802dd70-0x802dd5a-2] // =0x6016020
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802ddfc-0x802dd60-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
    .balign 4, 0x00
off_802DD6C:    .word unk_200DAE0
dword_802DD70:    .word 0x6016020
// end of function sub_802DD44

.thumb
sub_802DD74:
    push {r5,lr}
    bl sub_802D5E8
    mov r6, r10
    ldr r6, [r6,#0x38]
    str r0, [r6,#4]
    ldr r0, [pc, #0x802ddf0-0x802dd80-4] // dword_86E6F00
    mov r1, #0xf2
    ldr r2, [pc, #0x802dd98-0x802dd84-4] // unk_200DD20
    ldr r3, [pc, #0x802dd9c-0x802dd86-2] // =0x6016260
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802ddfc-0x802dd8c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
    .balign 4, 0x00
off_802DD98:    .word unk_200DD20
dword_802DD9C:    .word 0x6016260
// end of function sub_802DD74

.thumb
sub_802DDA0:
    push {r5,lr}
    ldr r0, [pc, #0x802ddf0-0x802dda2-2] // dword_86E6F00
    mov r1, #0xf3
    ldr r2, [pc, #0x802ddb8-0x802dda6-2] // unk_200DEA0
    ldr r3, [pc, #0x802ddbc-0x802dda8-4] // =0x60163E0
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802ddfc-0x802ddae-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
off_802DDB8:    .word unk_200DEA0
dword_802DDBC:    .word 0x60163E0
// end of function sub_802DDA0

.thumb
sub_802DDC0:
    push {r5,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r1, [r0,#4]
    cmp r1, #0x80
    blt loc_802DDD4
    sub r1, #0x80
    ldr r2, [pc, #0x802de0c-0x802ddce-2] // dword_802DE10
    ldrb r1, [r2,r1]
    b loc_802DDD8
loc_802DDD4:
    ldr r2, [pc, #0x802de00-0x802ddd4-4] // dword_802DE04
    ldrb r1, [r2,r1]
loc_802DDD8:
    ldrb r0, [r0,#5]
    add r1, r1, r0
    ldr r0, [pc, #0x802ddf0-0x802dddc-4] // dword_86E6F00
    ldr r2, [pc, #0x802ddf4-0x802ddde-2] // unk_200E0A0
    ldr r3, [pc, #0x802ddf8-0x802dde0-4] // =0x60165E0
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802ddfc-0x802dde6-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
off_802DDF0:    .word dword_86E6F00
off_802DDF4:    .word unk_200E0A0
dword_802DDF8:    .word 0x60165E0
off_802DDFC:    .word dword_86C6E60
off_802DE00:    .word dword_802DE04
dword_802DE04:    .word 0x18120A01, 0x3224
off_802DE0C:    .word dword_802DE10
dword_802DE10:    .word 0x41413A37, 0x41414141, 0x4B4B4B4B, 0x84746453, 0x938E8984
    .word 0x98
dword_802DE28:    .word 0xFFFFFFEC
// end of function sub_802DDC0

    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_802DE3C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [r7,#0x40]
    mov r1, #0
    strb r1, [r0]
    mov r1, #8
    strb r1, [r0,#0x12]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802dea0-0x802de54-4] // =0x40
    strh r1, [r0]
    mov r0, #6
    bl sub_8001BC8
    bl sub_80A8EEC
    bl sub_804E448
    mov r0, #0x40 
    bl sub_8053990
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_802DE3C

.thumb
sub_802DE70:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [r7,#0x40]
    mov r1, #0
    strb r1, [r0]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802dea0-0x802de84-4] // =0x40
    strh r1, [r0]
    mov r0, #6
    bl sub_8001BC8
    bl sub_80A8EEC
    bl sub_804E448
    mov r0, #0x40 
    bl sub_8053990
    pop {r4-r7,pc}
    .byte 0, 0
off_802DEA0:    .word 0x40
// end of function sub_802DE70

.thumb
sub_802DEA4:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    push {r0}
    bl f900_8000930
    pop {r0}
    ldr r6, [pc, #0x802dec8-0x802deb4-4] // byte_200F770
    ldrb r1, [r6,#(byte_200F774 - 0x200f770)]
    lsl r1, r1, #2
    strb r1, [r0]
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrh r1, [r0,#4]
    strh r1, [r0,#0xc]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802DEC8:    .word byte_200F770
// end of function sub_802DEA4

loc_802DECC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34]
    ldr r0, [pc, #0x802dee4-0x802ded2-2] // off_802DEE8
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8001AE0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802DEE4:    .word off_802DEE8
off_802DEE8:    .word sub_802E9AC+1
    .word ho_8031CA4+1
    .word loc_8036E90+1
    .word ho_80331A4+1
    .word sub_8031724+1
    .word loc_8032840+1
    .word loc_8039340+1
    .word sub_802E1EC+1
    .word sub_802FA54+1
    .word ho_8035214+1
    .word sub_8047768+1
    .word loc_803B9F4+1
    .word 0x803C541, 0x803EDC5, 0x803FB5D, 0x80414A1, 0x803D8D5
    .word 0x486AB500, 0xF8DEF7F7, 0xF7F74869, 0x4869F8DB, 0xF8D8F7F7
    .word 0xF7F74868, 0x4868F8D5
    .word 0xF8D2F7F7
    ldr r0, [pc, #0x802e0ec-0x802df4c-4] // =0x1204
    bl sub_80250F0
    ldr r0, [pc, #0x802e0f0-0x802df52-2] // =0x1204
    bl sub_80250F0
    ldr r0, [pc, #0x802e0f4-0x802df58-4] // =0x1204
    bl sub_80250F0
    ldr r0, [pc, #0x802e0f8-0x802df5e-2] // =0x1204
    bl sub_80250F0
    ldr r0, [pc, #0x802e0fc-0x802df64-4] // =0x1204
    bl sub_80250F0
    ldr r0, [pc, #0x802e100-0x802df6a-2] // =0x1204
    bl sub_80250F0
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    bl sub_802DE3C
    pop {pc}
    push {lr}
    mov r0, #1
    mov r1, #0
    bl sub_8019196
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_80359F0
    bl sub_802DE3C
    pop {pc}
    push {lr}
    mov r0, #0x22 
    bl sub_8042FB4
    bl sub_8043098
    bl sub_802DE3C
    pop {pc}
    .byte 0, 0
    push {lr}
    bl sub_80430B0
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_8044640
    bl sub_802DE3C
    pop {pc}
    push {lr}
    mov r0, #0x23 
    bl sub_8042FB4
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    bl sub_8043098
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_8031BD0
    bl sub_802DE3C
    pop {pc}
    .word 0x15C0
    push {lr}
    ldr r0, [pc, #0x802e004-0x802dff6-2] // =0x15C0
    bl sub_80250C2
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
off_802E004:    .word 0x15C1
    push {lr}
    bl sub_8030668
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_802DE3C
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0
    mov r1, #0
    bl sub_8005772
    pop {pc}
dword_802E02C:    .word 0xF7FFB500
dword_802E030:    .word 0x200CFF05
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0
    mov r1, #1
    bl sub_8005772
    pop {pc}
    push {lr}
    bl sub_802DE3C
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    bl sub_8005754
    pop {pc}
    push {lr}
    mov r0, #0
    bl sub_8043E9C
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    mov r0, #0
    bl sub_804453C
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    mov r0, #0
    bl sub_8043E48
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
    push {lr}
    bl sub_80447BC
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_8044888
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_80448DC
    bl sub_802DE3C
    pop {pc}
    push {lr}
    bl sub_8044988
    ldrb r1, [r5]
    add r1, #4
    strb r1, [r5]
    pop {pc}
    .balign 4, 0x00
    push {lr}
    pop {pc}
    push {lr}
    bl sub_802DE3C
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #3
    mov r1, #0
    bl sub_80057A8
    pop {pc}
    .word 0x1200
    .word 0x1202, 0x1203, 0x1204, 0x1205
dword_802E0EC:    .word 0x1206
dword_802E0F0:    .word 0x1207
off_802E0F4:    .word 0x1208
dword_802E0F8:    .word 0x1209
dword_802E0FC:    .word 0x120A
dword_802E100:    .word 0x120B
dword_802E104:    .word 0xC202C200
    .word 0xC206C204
    .word 0xC20AC208
    .word 0xC20EC20C
    .word 0xC203C201
    .word 0xC207C205
    .word 0xC20BC209
    .word 0xC20FC20D
    .word 0xC212C210
    .word 0xC216C214
    .word 0xC21AC218
    .word 0xC21EC21C
    .word 0xC213C211
    .word 0xC217C215
    .word 0xC21BC219
    .word 0xC21FC21D
    .word 0xC222C220
    .word 0xC226C224
    .word 0xC22AC228
    .word 0xC22EC22C
    .word 0xC223C221
    .word 0xC227C225
    .word 0xC22BC229
    .word 0xC22FC22D
    .word 0xC232C230
    .word 0xC236C234
    .word 0xC23AC238
    .word 0xC23EC23C
    .word 0xC233C231
    .word 0xC237C235
    .word 0xC23BC239
    .word 0xC23FC23D
    .word 0xC242C240
    .word 0xC246C244
    .word 0xC24AC248
    .word 0xC241C24C
    .word 0xC245C243
    .word 0xC249C247
    .word 0xC24DC24B
    .word 0xC261C260
    .word 0xC264C262
    .word 0xC265C263
    .word 0xC268C266
    .word 0xC269C267
    .word 0xC2A2C2A0
    .word 0xC2A6C2A4
    .word 0xC2AAC2A8
    .word 0xC2A1C2AC
    .word 0xC2A5C2A3
    .word 0xC2A9C2A7
    .word 0xC2ADC2AB
    .word 0xC2C2C2C0
    .word 0xC2C6C2C4
    .word 0xC2CAC2C8
    .word 0xC2C1C2CC
    .word 0xC2C5C2C3
    .word 0xC2C9C2C7
    .word 0xC2CDC2CB
.thumb
sub_802E1EC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802e1fc-0x802e1ee-2] // unk_802E200
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0
    .byte 0
off_802E1FC:    .word unk_802E200
unk_802E200:    .byte 0xD
    .byte 0xE2
    .byte 2
    .byte 8
    .byte 0x19
    .byte 0xE3
    .byte 2
    .byte 8
    .byte 0xAD
    .byte 0xE3
    .byte 2
    .byte 8
    .byte 0
    .byte 0xB5
    .byte 0xD3
    .byte 0xF7
    .byte 0x79 
    .byte 0xFD
    .byte 0xD3
    .byte 0xF7
    .byte 0x91
    .byte 0xFD
    .byte 0xD3
    .byte 0xF7
    .byte 0xB7
    .byte 0xFD
    .byte 0
    .byte 0xF0
    .byte 0xD3
    .byte 0xF8
    .byte 0
    .byte 0x20
    .byte 1
    .byte 0xF0
    .byte 2
    .byte 0xFA
    .byte 0x29 
    .byte 0x49 
    .byte 0x2A 
    .byte 0x4A 
    .byte 0xD2
    .byte 0xF7
    .byte 0xB0
    .byte 0xFB
    .byte 0x29 
    .byte 0x48 
    .byte 0x2A 
    .byte 0x49 
    .byte 0x2A 
    .byte 0x4A 
    .byte 0xD2
    .byte 0xF7
    .byte 0x1D
    .byte 0xFB
    .byte 4
    .byte 0x20
    .byte 1
    .byte 0xF0
    .byte 0xF6
    .byte 0xF9
    .byte 0x2E 
    .byte 0x49 
    .byte 0x2F 
    .byte 0x4A 
    .byte 0xD2
    .byte 0xF7
    .byte 0xA4
    .byte 0xFB
// end of function sub_802E1EC

    ldr r0, [pc, #0x802e300-0x802e244-4] // dword_86DABEC
    ldr r1, [pc, #0x802e304-0x802e246-2] // =0x6008820
    ldr r2, [pc, #0x802e308-0x802e248-4] // =0x280
    bl loc_8000874
    mov r0, #0xc
    bl sub_802F628
    ldr r1, [pc, #0x802e2ec-0x802e254-4] // unk_3002BD0
    ldr r2, [pc, #0x802e2f0-0x802e256-2] // =0x20
    bl f900_800098C
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x802e2e0-0x802e264-4] // dword_86D3E40
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #3
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x802e2e4-0x802e278-4] // dword_86D42F0
    mov r4, #0x18
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    bl sub_802E52C
    mov r0, #0x12
    bl sub_8001BC8
    bl sub_80540BA
    ldr r0, [pc, #0x802e2c4-0x802e292-2] // dword_802E30C
    bl sub_8053FFC
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802e314-0x802e29c-4] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x40 
    bl sub_8053980
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .balign 4, 0x00
off_802E2C4:    .word dword_802E30C
    .word 0x86F5DC0
    .word word_3002A50
    .word 0x60
    .word loc_86DAE6C
    .word 0x6000020
    .word 0x2B40
off_802E2E0:    .word dword_86D3E40
off_802E2E4:    .word dword_86D42F0
    .word dword_868E1A4
off_802E2EC:    .word unk_3002BD0
dword_802E2F0:    .word 0x20
    .word 0x86F6400
    .word unk_3002B50
    .word 0x20
off_802E300:    .word dword_86DABEC
dword_802E304:    .word 0x6008820
off_802E308:    .word 0x280
dword_802E30C:    .word 0x902, 0xFFFFFFFF
off_802E314:    .word 0x1F40
.thumb
sub_802E318:
    push {lr}
    ldr r0, [pc, #0x802e35c-0x802e31a-2] // off_802E360
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#2]
// end of function sub_802E318

    cmp r0, #8
    bge locret_802E35A
    bl sub_8005B5C
    beq locret_802E35A
    mov r0, #0x20 
    bl sub_80539A0
    beq locret_802E35A
    ldr r0, [pc, #0x802e36c-0x802e340-4] // =0xFF
    bl sub_80539A0
    beq locret_802E35A
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x40 
    bl sub_8053980
    mov r0, #8
    strb r0, [r5,#2]
locret_802E35A:
    pop {pc}
off_802E35C:    .word off_802E360
off_802E360:    .word sub_802E370+1
    .word sub_802E370+1
    .word sub_802E39C+1
off_802E36C:    .word 0x100
.thumb
sub_802E370:
    push {lr}
    bl sub_8005B5C
    beq loc_802E37E
    mov r0, #0x40 
    bl sub_8053990
loc_802E37E:
    bl sub_802E4C4
// end of function sub_802E370

    bl sub_802E52C
    ldrb r0, [r5,#2]
    cmp r0, #4
    bne locret_802E398
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5,#2]
locret_802E398:
    pop {pc}
    .balign 4, 0x00
.thumb
sub_802E39C:
    push {lr}
    bl sub_8005B5C
    beq locret_802E3A8
    mov r1, #8
    strb r1, [r5,#1]
locret_802E3A8:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802E39C

.thumb
sub_802E3AC:
    push {lr}
    bl sub_8005B5C
    beq locret_802E3C2
    mov r0, #0x40 
    bl sub_8053990
    bl sub_80540BA
    bl sub_802DE3C
locret_802E3C2:
    pop {pc}
// end of function sub_802E3AC

.thumb
sub_802E3C4:
    push {lr}
    mov r0, #4
    mov r1, #6
    ldr r2, [pc, #0x802e4e8-0x802e3ca-2] // word_2014000
    ldr r3, [pc, #0x802e4ec-0x802e3cc-4] // =0x6004000
    push {r0-r3,r5}
    ldr r0, [pc, #0x802e4e4-0x802e3d0-4] // unk_86DE644
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x802e4f0-0x802e3d6-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x2F 
    .byte 0xBC
    .byte 1
    .byte 0x31 
    .byte 2
    .byte 0x24 
    .byte 0x24 
    .byte 2
    .byte 0x12
    .byte 0x19
    .byte 0x1B
    .byte 0x19
    .byte 1
    .byte 0x38 
    .byte 0xEF
    .byte 0xD1
    .byte 0
    .byte 0xF0
    .byte 0x69 
    .byte 0xF8
// end of function sub_802E3C4

    bl sub_80372BC
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#4]
    bl sub_8037304
    str r0, [r7,#8]
    bl sub_8037364
    str r0, [r7,#0xc]
    push {r5}
    ldr r0, [pc, #0x802e4e4-0x802e40a-2] // unk_86DE644
    mov r1, #0xb
    ldr r2, [pc, #0x802e4fc-0x802e40e-2] // unk_2014C00
    ldr r3, [pc, #0x802e500-0x802e410-4] // =0x6004C00
    mov r4, #5
    mov r5, #2
    ldr r6, [pc, #0x802e4f0-0x802e416-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0x30 
    .byte 0x48 
    .byte 0xE
    .byte 0x21 
    .byte 0x23 
    .byte 0xB4
    .byte 0x37 
    .byte 0x4A 
    .byte 0x37 
    .byte 0x4B 
    .byte 3
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0x30 
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x25 
    .byte 0xF0
    .byte 0xE7
    .byte 0xFA
    .byte 2
    .byte 0x1C
    .byte 0x23 
    .byte 0xBC
    .byte 0x2A 
    .byte 0x73 
    .byte 0x57 
    .byte 0x46 
    .byte 0xBF
    .byte 0x6B 
    .byte 0xBA
    .byte 0x68 
    .byte 0x7A 
    .byte 0x60 
    .byte 0x23 
    .byte 0xB4
    .byte 0x31 
    .byte 0x4A 
    .byte 0x31 
    .byte 0x4B 
    .byte 3
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0x28 
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x25 
    .byte 0xF0
    .byte 0xD7
    .byte 0xFA
    .byte 2
    .byte 0x1C
    .byte 0x23 
    .byte 0xBC
    .byte 0x6A 
    .byte 0x73 
    .byte 0x57 
    .byte 0x46 
    .byte 0xBF
    .byte 0x6B 
    .byte 0xFA
    .byte 0x68 
    .byte 0x7A 
    .byte 0x60 
    .byte 0x23 
    .byte 0xB4
    .byte 0x2B 
    .byte 0x4A 
    .byte 0x2B 
    .byte 0x4B 
    .byte 2
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0x20
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x25 
    .byte 0xF0
    .byte 0xC7
    .byte 0xFA
    .byte 2
    .byte 0x1C
    .byte 0x23 
    .byte 0xBC
    .byte 0xAA
    .byte 0x73 
    .byte 0xEA
    .byte 0xF7
    .byte 0xD4
    .byte 0xFE
    .byte 0x57 
    .byte 0x46 
    .byte 0xBF
    .byte 0x6B 
    .byte 0x78 
    .byte 0x60 
    .byte 0xA8
    .byte 0x60 
    .byte 0x20
    .byte 0xB4
    .byte 0x16
    .byte 0x48 
    .byte 0xC
    .byte 0x21 
    .byte 0x23 
    .byte 0x4A 
    .byte 0x23 
    .byte 0x4B 
    .byte 7
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0x16
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x25 
    .byte 0xF0
    .byte 0xB3
    .byte 0xFA
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0x55 
    .byte 0x46 
    .byte 0xAD
    .byte 0x6B 
    .byte 0xFF
    .byte 0xF7
    .byte 0x5B 
    .byte 0xF8
    .byte 0x68 
    .byte 0x60 
    .byte 0xD
    .byte 0x48 
    .byte 0xD
    .byte 0x21 
    .byte 0x1C
    .byte 0x4A 
    .byte 0x1D
    .byte 0x4B 
    .byte 7
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0xD
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x25 
    .byte 0xF0
    .byte 0xA2
    .byte 0xFA
    .byte 0x20
    .byte 0xBC
    .byte 0
    .byte 0xBD
.thumb
sub_802E4C4:
    push {lr}
    push {r5}
    bl sub_802E584
    ldr r0, [pc, #0x802e4e4-0x802e4cc-4] // unk_86DE644
    mov r1, #0xa
    ldr r2, [pc, #0x802e4f4-0x802e4d0-4] // unk_2014800
    ldr r3, [pc, #0x802e4f8-0x802e4d2-2] // =0x6004800
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x802e4f0-0x802e4d8-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBC
    .byte 0
    .byte 0xBD
off_802E4E4:    .word unk_86DE644
off_802E4E8:    .word word_2014000
dword_802E4EC:    .word 0x6004000
off_802E4F0:    .word dword_868E224
off_802E4F4:    .word unk_2014800
dword_802E4F8:    .word 0x6004800
off_802E4FC:    .word unk_2014C00
dword_802E500:    .word 0x6004C00
    .word unk_2014E00
    .word 0x6004E00
    .word unk_2014EC0
    .word 0x6004EC0
    .word unk_2015000
    .word 0x6005000
    .word unk_2015400
    .word 0x6005400
    .word unk_2015800
    .word 0x6005800
// end of function sub_802E4C4

.thumb
sub_802E52C:
    push {r5,lr}
    mov r0, #4
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x802e574-0x802e534-4] // dword_802E104
    mov r4, #8
    mov r5, #8
    bl sub_8001DDC
// end of function sub_802E52C

    mov r0, #0x12
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x802e578-0x802e544-4] // dword_802E104+128
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
    bl sub_802E618
    mov r0, #0x12
loc_802E554:
    mov r1, #7
    mov r2, #2
    ldr r3, [pc, #0x802e57c-0x802e558-4] // dword_802E104+176
    mov r4, #7
loc_802E55C:
    mov r5, #2
    bl sub_8001DDC
    mov r0, #0x12
    mov r1, #9
    mov r2, #2
    ldr r3, [pc, #0x802e580-0x802e568-4] // dword_802E104+204
    mov r4, #7
    mov r5, #2
    bl sub_8001DDC
    pop {r5,pc}
off_802E574:    .word dword_802E104
off_802E578:    .word dword_802E104+0x80
off_802E57C:    .word dword_802E104+0xB0
off_802E580:    .word dword_802E104+0xCC
.thumb
sub_802E584:
    push {lr}
    mov r7, r10
    ldr r6, [r7,#0x44]
    ldr r5, [r7,#0x38]
    ldr r0, [r6,#0x2c]
    bl fA00_8000BB4
    lsr r0, r0, #0x10
    mov r1, #0xf
    and r1, r0
    lsr r0, r0, #4
    mov r2, #0xf
    and r2, r0
    lsl r3, r2, #3
    lsl r2, r2, #1
    add r2, r2, r3
    add r2, r2, r1
    str r2, [r5,#8]
    lsr r0, r0, #4
    mov r1, #0xf
    and r1, r0
    lsr r0, r0, #4
    mov r2, #0xf
    and r2, r0
    lsl r3, r2, #3
    lsl r2, r2, #1
    add r2, r2, r3
    add r2, r2, r1
    str r2, [r5,#4]
    pop {pc}
// end of function sub_802E584

    push {r6,r7,lr}
    sub sp, sp, #8
    mov r7, #0
    mov r6, #0
    str r6, [sp]
    str r6, [sp,#4]
loc_802E5CC:
    ldr r1, [pc, #0x802e608-0x802e5cc-4] // =0x16C0
    add r1, r1, r7
    add r0, r1, #0
    bl sub_8024FF4
    beq loc_802E5F6
    ldr r1, [pc, #0x802e614-0x802e5d8-4] // =0x12D
    cmp r7, r1
    blt loc_802E5E6
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    b loc_802E5F6
loc_802E5E6:
    ldr r1, [pc, #0x802e610-0x802e5e6-2] // =0xC8
    cmp r7, r1
    blt loc_802E5F4
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    b loc_802E5F6
loc_802E5F4:
    add r6, #1
loc_802E5F6:
    ldr r1, [pc, #0x802e60c-0x802e5f6-2] // =0x140
    add r7, #1
    cmp r7, r1
    blt loc_802E5CC
    add r1, r6, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    add sp, sp, #8
    pop {r6,r7,pc}
off_802E608:    .word 0x16C0
off_802E60C:    .word 0x140
off_802E610:    .word 0xC9
off_802E614:    .word 0x12D
.thumb
sub_802E618:
    push {r5,lr}
    ldr r6, [pc, #0x802e6e8-0x802e61a-2] // off_802E6EC
    mov r5, #0
    mov r0, #0xc
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#0x34]
loc_802E626:
    ldr r2, [pc, #0x802e710-0x802e626-2] // dword_802E71C
    lsl r3, r5, #1
    ldrh r2, [r2,r3]
    lsl r3, r3, #1
    ldr r3, [r6,r3]
    mov r1, r8
    ldrb r1, [r7,r1]
    lsl r0, r1, #1
    add r4, r3, r0
loc_802E638:
    strh r2, [r3]
    add r2, #1
    strh r2, [r4]
    add r2, #1
    add r3, #2
    add r4, #2
    sub r1, #1
    bgt loc_802E638
    mov r1, r8
    add r1, #1
    mov r8, r1
    add r5, #1
    cmp r5, #3
    blt loc_802E626
    mov r0, #5
    ldrb r1, [r7,#0xc]
    add r0, r0, r1
    ldrb r1, [r7,#0xd]
    add r0, r0, r1
    ldrb r1, [r7,#0xe]
    add r0, r0, r1
    mov r1, #0xc
    sub r1, r1, r0
    mov r0, #0xd
    add r0, r0, r1
    push {r0}
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e704-0x802e670-4] // dword_802E104+156
    mov r4, #1
    mov r5, #2
    bl sub_8001DDC
// end of function sub_802E618

    pop {r0}
    add r0, #1
    push {r0}
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e6f8-0x802e684-4] // unk_2015C00
    ldrb r4, [r7,#0xc]
    mov r5, #2
    bl sub_8001DDC
    pop {r0}
    ldrb r1, [r7,#0xc]
    add r0, r0, r1
    push {r0}
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e708-0x802e69a-2] // dword_802E104+160
    mov r4, #2
    mov r5, #2
    bl sub_8001DDC
    pop {r0}
    mov r1, #2
    add r0, r0, r1
    push {r0}
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e6fc-0x802e6b0-4] // unk_2015CC0
    ldrb r4, [r7,#0xd]
    mov r5, #2
    bl sub_8001DDC
    pop {r0}
    ldrb r1, [r7,#0xd]
    add r0, r0, r1
    push {r0}
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e70c-0x802e6c6-2] // dword_802E104+168
    mov r4, #2
    mov r5, #2
    bl sub_8001DDC
    pop {r0}
    mov r1, #2
    add r0, r0, r1
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x802e700-0x802e6da-2] // unk_2015D80
    ldrb r4, [r7,#0xe]
    mov r5, #2
    bl sub_8001DDC
    pop {r5,pc}
    .balign 4, 0x00
off_802E6E8:    .word off_802E6EC
off_802E6EC:    .word unk_2015C00
    .word unk_2015CC0
    .word unk_2015D80
off_802E6F8:    .word unk_2015C00
off_802E6FC:    .word unk_2015CC0
off_802E700:    .word unk_2015D80
off_802E704:    .word dword_802E104+0x9C
off_802E708:    .word dword_802E104+0xA0
off_802E70C:    .word dword_802E104+0xA8
off_802E710:    .word dword_802E71C
    b loc_802E554
    lsr r2, r0, #0x20
    b loc_802E55C
    .hword 0x802
dword_802E71C:    .word 0xC276C270, 0xC280, 0x120010, 0x160014, 0x1A0018, 0x1E001C
    .word 0x130011, 0x170015, 0x1B0019, 0x1F001D
aCacbcccdcecfcg:    .hword 0x4340
    .byte 0x41 
    .byte 0x43 
    .byte 0x42 
    .byte 0x43 
    .byte 0x43 
    .byte 0x43 
    .byte 0x44 
    .byte 0x43 
    .byte 0x45 
    .byte 0x43 
    .byte 0x46 
    .byte 0x43 
    .byte 0x47 
    .byte 0x43 
    .byte 0x48 
    .byte 0x43 
    .byte 0x49 
    .byte 0x43 
    .byte 0x4A 
    .byte 0x43 
    .byte 0x4B 
    .byte 0x43 
    .byte 0x4C 
    .byte 0x43 
    .byte 0x4D 
    .byte 0x43 
    .byte 0x4E 
    .byte 0x43 
    .byte 0x4F 
    .byte 0x43 
    .byte 0x50 
    .byte 0x43 
    .byte 0x51 
    .byte 0x43 
    .byte 0x52 
    .byte 0x43 
    .byte 0x53 
    .byte 0x43 
    .byte 0x54 
    .byte 0x43 
    .byte 0x55 
    .byte 0x43 
    .byte 0x56 
    .byte 0x43 
    .byte 0x57 
    .byte 0x43 
    .byte 0x58 
    .byte 0x43 
    .byte 0x59 
    .byte 0x43 
    .byte 0x5A 
    .byte 0x43 
    .byte 0x5B 
    .byte 0x43 
    .byte 0
    .byte 0x42
    .byte 0
aB_0:    .hword 0x42
    .byte 0x42
    .byte 0
aB_2:    .hword 0x42
    .byte 0x42
    .byte 0
aB_4:    .hword 0x42
    .byte 0x42
    .byte 0
aB_6:    .hword 0x42
    .byte 0x42
    .byte 0
aB_8:    .hword 0x42
    .byte 0x42
    .byte 0
aB_10:    .hword 0x42
    .byte 0x42
    .byte 0
aB_12:    .hword 0x42
    .byte 0x42
    .byte 0
aB_14:    .hword 0x42
    .byte 0x42
    .byte 0
aB_16:    .hword 0x42
    .byte 0x42
    .byte 0
aB_18:    .hword 0x42
    .byte 0x42
    .byte 0
aB_20:    .hword 0x42
    .byte 0x42
    .byte 0
aB_22:    .hword 0x42
    .byte 0x42
    .byte 0
aB_24:    .hword 0x42
    .byte 0x42
    .byte 0
aBCacbcccdcecfc:    .hword 0x6042
    .byte 0x43 
    .byte 0x61 
    .byte 0x43 
    .byte 0x62 
    .byte 0x43 
    .byte 0x63 
    .byte 0x43 
    .byte 0x64 
    .byte 0x43 
    .byte 0x65 
    .byte 0x43 
    .byte 0x66 
    .byte 0x43 
    .byte 0x67 
    .byte 0x43 
    .byte 0x68 
    .byte 0x43 
    .byte 0x69 
    .byte 0x43 
    .byte 0x6A 
    .byte 0x43 
    .byte 0x6B 
    .byte 0x43 
    .byte 0x6C 
    .byte 0x43 
    .byte 0x6D 
    .byte 0x43 
    .byte 0x6E 
    .byte 0x43 
    .byte 0x6F 
    .byte 0x43 
    .byte 0x70 
    .byte 0x43 
    .byte 0x71 
    .byte 0x43 
    .byte 0x72 
    .byte 0x43 
    .byte 0x73 
    .byte 0x43 
    .byte 0x74 
    .byte 0x43 
    .byte 0x75 
    .byte 0x43 
    .byte 0x76 
    .byte 0x43 
    .byte 0x77 
    .byte 0x43 
    .byte 0x78 
    .byte 0x43 
    .byte 0x79 
    .byte 0x43 
    .byte 0x7A 
    .byte 0x43 
    .byte 0x7B 
    .byte 0x43 
    .byte 0
    .byte 0x42
    .byte 0
aB_27:    .hword 0x42
    .byte 0x42
    .byte 0
aB_29:    .hword 0x42
    .byte 0x42
    .byte 0
aB_31:    .hword 0x42
    .byte 0x42
    .byte 0
aB_33:    .hword 0x42
    .byte 0x42
    .byte 0
aB_35:    .hword 0x42
    .byte 0x42
    .byte 0
aB_37:    .hword 0x42
    .hword 0x42
aB_39:    .hword 0x42
    .byte 0x42
    .byte 0
    .word 0x420042
aB_43:    .byte 0x42, 0x0
    .byte 0x42
    .byte 0
aB_45:    .byte 0x42, 0x0
    .byte 0x42
    .byte 0
aB_47:    .byte 0x42, 0x0
    .byte 0x42
    .byte 0
aB_49:    .byte 0x42, 0x0
    .byte 0x42
    .byte 0
aB_51:    .byte 0x42, 0x0
    .byte 0x42
    .byte 0
    .byte 0x42
    .byte 0xC0
    .byte 0x73
    .byte 0xC1
    .byte 0x73
    .byte 0xC2
    .byte 0x73
    .byte 0xC3
    .byte 0x73
    .byte 0xC4
    .byte 0x73
    .byte 0xC5
    .byte 0x73
    .byte 0xC6
    .byte 0x73
    .byte 0xC7
    .byte 0x73
    .byte 0xC8
    .byte 0x73
    .byte 0xC9
    .byte 0x73
    .byte 0xCA
    .byte 0x73
    .byte 0xCB
    .byte 0x73
    .byte 0xCC
    .byte 0x73
    .byte 0xCD
    .byte 0x73
    .word 0x73CF73CE
    .byte 0xD0
    .byte 0x73 
    .byte 0xD1
    .byte 0x73 
    .byte 0xD2
    .byte 0x73 
    .byte 0xD3
    .byte 0x73 
    .byte 0xD4
    .byte 0x73 
    .byte 0xD5
    .byte 0x73 
    .byte 0xD6
    .byte 0x73 
    .byte 0xD7
    .byte 0x73 
    .byte 0xD8
    .byte 0x73 
    .byte 0xD9
    .byte 0x73 
    .byte 0xDA
    .byte 0x73 
    .byte 0xDB
    .byte 0x73 
    .byte 0xDC
    .byte 0x73 
    .byte 0xDD
    .byte 0x73 
    .byte 0xDE
    .byte 0x73 
    .byte 0xDF
    .byte 0x73 
    .byte 0xE0
    .byte 0x73 
    .byte 0xE1
    .byte 0x73 
    .byte 0xE2
    .byte 0x73 
    .byte 0xE3
    .byte 0x73 
    .byte 0xE4
    .byte 0x73 
    .byte 0xE5
    .byte 0x73 
    .byte 0xE6
    .byte 0x73 
    .byte 0xE7
    .byte 0x73 
    .byte 0xE8
    .byte 0x73 
    .byte 0xE9
    .byte 0x73 
    .byte 0xEA
    .byte 0x73 
    .byte 0xEB
    .byte 0x73 
    .byte 0xEC
    .byte 0x73 
    .byte 0xED
    .byte 0x73 
    .byte 0xEE
    .byte 0x73 
    .byte 0xEF
    .byte 0x73 
    .byte 0xF0
    .byte 0x73 
    .byte 0xF1
    .byte 0x73 
    .byte 0xF2
    .byte 0x73 
    .byte 0xF3
    .byte 0x73 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0
    .byte 0x72 
dword_802E8F4:    .word 0x39A0399
off_802E8F8:    .word unk_2000200
    .byte 0x3E 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x48 
    .byte 0x10
    .byte 0x49 
    .byte 0x10
    .byte 0x4A 
    .byte 0x10
    .byte 0x4B 
    .byte 0x10
    .byte 0x4C 
    .byte 0x10
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x4D 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x3F 
    .byte 0
    .byte 0x40 
    .byte 0
    .byte 0x41 
    .byte 0
    .byte 0x42 
    .byte 0
    .byte 0x43 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x45 
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x47 
    .byte 0
unk_802E974:    .byte 4
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 3
    .byte 1
    .byte 0xFF
    .byte 0xFF
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 2
    .byte 0xFF
    .byte 0xFF
    .byte 2
    .byte 1
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 8
    .byte 6
    .byte 9
    .byte 4
    .byte 7
    .byte 0xA
    .byte 0
    .byte 0
    .byte 0x13
    .byte 0x11
    .byte 0x14
    .byte 0xF
    .byte 0x12
    .byte 0x15
    .byte 0
    .byte 0
unk_802E9A4:    .byte 9
    .byte 7
    .byte 0xA
    .byte 5
    .byte 8
    .byte 0xB
    .byte 0
    .byte 0
.thumb
sub_802E9AC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802e9bc-0x802e9ae-2] // off_802E9C0
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802E9BC:    .word off_802E9C0
off_802E9C0:    .word ho_cb_802E9CC+1
    .word sub_802EC90+1
    .word sub_802EE1C+1
// end of function sub_802E9AC

.thumb
ho_cb_802E9CC:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    ldr r0, [pc, #0x802eacc-0x802e9da-2] // dword_868E1A4
    ldr r1, [pc, #0x802ead0-0x802e9dc-4] // unk_3002AB0
    ldr r2, [pc, #0x802ead4-0x802e9de-2] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x802ead8-0x802e9e4-4] // dword_868E224
    ldr r1, [pc, #0x802eadc-0x802e9e6-2] // =0x6004000
    ldr r2, [pc, #0x802eae0-0x802e9e8-4] // =0x2800
    bl loc_8000870
    mov r0, #0x10
    bl sub_802F628
    ldr r1, [pc, #0x802eae8-0x802e9f4-4] // unk_3002AD0
    ldr r2, [pc, #0x802eaec-0x802e9f6-2] // =0x40
    bl f900_800098C
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x802eaf4-0x802ea02-2] // word_3002A50
    ldr r2, [pc, #0x802eaf8-0x802ea04-4] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x802eafc-0x802ea0a-2] // dword_86CDFA0
    ldr r1, [pc, #0x802eb00-0x802ea0c-4] // =0x6007000
    ldr r2, [pc, #0x802eb04-0x802ea0e-2] // =0x360
    bl loc_8000870
    ldr r0, [pc, #0x802eb14-0x802ea14-4] // dword_8707A80
    ldr r1, [pc, #0x802eb18-0x802ea16-2] // unk_3002B30
    ldr r2, [pc, #0x802eb1c-0x802ea18-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x802eb08-0x802ea1e-2] // unk_8706F00
    ldr r1, [pc, #0x802eb0c-0x802ea20-4] // =0x6007800
    ldr r2, [pc, #0x802eb10-0x802ea22-2] // =0x680
    bl loc_8000870
    ldr r0, [pc, #0x802eb38-0x802ea28-4] // loc_86DAE6C
    ldr r1, [pc, #0x802eb3c-0x802ea2a-2] // =0x6000020
    ldr r2, [pc, #0x802eb40-0x802ea2c-4] // =0x2B40
    bl loc_8000870
    mov r0, #4
    bl sub_802F628
    ldr r1, [pc, #0x802eb64-0x802ea38-4] // unk_3002B50
    ldr r2, [pc, #0x802eb68-0x802ea3a-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x802eb6c-0x802ea40-4] // dword_86DABEC
    ldr r1, [pc, #0x802eb70-0x802ea42-2] // =0x6008820
    ldr r2, [pc, #0x802eb74-0x802ea44-4] // =0x280
    bl loc_8000870
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x802eb44-0x802ea52-2] // dword_86D1794+560
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
    pop {r5}
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x802eb4c-0x802ea64-4] // unk_30027A0
    ldr r2, [pc, #0x802eb50-0x802ea66-2] // =0x80
    bl f900_800098C
    mov r0, #7
    bl sub_802F628
    ldr r1, [pc, #0x802eb78-0x802ea72-2] // unk_3002760
    ldr r2, [pc, #0x802eb7c-0x802ea74-4] // =0x20
    bl loc_8000870
    ldr r0, [pc, #0x802eb54-0x802ea7a-2] // dword_86CE300
    ldr r1, [pc, #0x802eb58-0x802ea7c-4] // =0x6010020
    ldr r2, [pc, #0x802eb5c-0x802ea7e-2] // =0x420
    bl loc_8000870
    ldr r0, [pc, #0x802eb20-0x802ea84-4] // dword_86DDA2C
    ldr r1, [pc, #0x802eb24-0x802ea86-2] // unk_3002BB0
    ldr r2, [pc, #0x802eb28-0x802ea88-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x802eb2c-0x802ea8e-2] // dword_86DD9AC
    ldr r1, [pc, #0x802eb30-0x802ea90-4] // =0x6008620
    ldr r2, [pc, #0x802eb34-0x802ea92-2] // =0x80
    bl f900_80009A0
    mov r0, #0x12
    bl sub_8001BC8
    ldr r0, [pc, #0x802eabc-0x802ea9e-2] // jt_802EAC0
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80540BA
    mov r0, #0
    strb r0, [r5,#0x12]
    ldr r0, [pc, #0x802eac8-0x802eab0-4] // unk_802E974
    bl sub_8031624
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
off_802EABC:    .word jt_802EAC0
jt_802EAC0:    .word sub_802EB80+1
    .word sub_802EC14+1
off_802EAC8:    .word unk_802E974
off_802EACC:    .word dword_868E1A4
off_802EAD0:    .word unk_3002AB0
off_802EAD4:    .word 0x80
off_802EAD8:    .word dword_868E224
dword_802EADC:    .word 0x6004000
off_802EAE0:    .word 0x2800
    .word loc_8745CB8
off_802EAE8:    .word unk_3002AD0
off_802EAEC:    .word 0x40
    .word dword_86F5D60+0x60
off_802EAF4:    .word word_3002A50
off_802EAF8:    .word 0x60
off_802EAFC:    .word dword_86CDFA0
dword_802EB00:    .word 0x6007000
off_802EB04:    .word 0x360
off_802EB08:    .word unk_8706F00
dword_802EB0C:    .word 0x6007800
off_802EB10:    .word 0x680
off_802EB14:    .word dword_8707A80
off_802EB18:    .word unk_3002B30
dword_802EB1C:    .word 0x20
off_802EB20:    .word dword_86DDA2C
off_802EB24:    .word unk_3002BB0
dword_802EB28:    .word 0x20
off_802EB2C:    .word dword_86DD9AC
dword_802EB30:    .word 0x6008620
off_802EB34:    .word 0x80
dword_802EB38:    .word 0x86DAE6C
dword_802EB3C:    .word 0x6000020
off_802EB40:    .word 0x2B40
off_802EB44:    .word dword_86D1794+0x230
    .word dword_86F87B4+0x26C
off_802EB4C:    .word unk_30027A0
off_802EB50:    .word 0x80
off_802EB54:    .word dword_86CE300
dword_802EB58:    .word 0x6010020
off_802EB5C:    .word 0x420
    .word dword_86F63F0+0x10
off_802EB64:    .word unk_3002B50
dword_802EB68:    .word 0x20
off_802EB6C:    .word dword_86DABEC
dword_802EB70:    .word 0x6008820
off_802EB74:    .word 0x280
off_802EB78:    .word unk_3002760
dword_802EB7C:    .word 0x20
// end of function ho_cb_802E9CC

.thumb
sub_802EB80:
    push {r7,lr}
    mov r7, r10
    ldr r2, [r7,#0x40]
    ldrb r0, [r2,#2]
    ldr r1, [r7,#0x44]
    ldrb r1, [r1,#6]
    sub r1, #1
    cmp r0, r1
    ble loc_802EB96
    add r0, r1, #0
    strb r0, [r2,#2]
loc_802EB96:
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    strb r0, [r5,#0x17]
    mov r0, #0
    strh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x15]
    str r0, [r5,#0x50]
    bl sub_802EEF4
    mov r0, r10
    ldr r0, [r0,#0x50]
    ldr r1, [pc, #0x802ec0c-0x802ebb2-2] // unk_2026400
    ldr r2, [pc, #0x802ec10-0x802ebb4-4] // =0xF00
    bl f900_80009A0
    bl sub_802F5C8
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    bne loc_802EBCC
    mov r0, #8
    strb r0, [r5,#0x11]
loc_802EBCC:
    bl sub_802F348
// end of function sub_802EB80

    bl sub_802F3D4
    ldr r2, [pc, #0x802ec74-0x802ebd4-4] // off_802EC80
    str r2, [r5,#0x40]
    bl sub_802F528
    mov r0, #0
    bl sub_802F1D8
    bl sub_802F348
    bl sub_802F3D4
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802ec8c-0x802ebee-2] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    pop {r7,pc}
    .balign 4, 0x00
off_802EC0C:    .word unk_2026400
off_802EC10:    .word 0xF00
.thumb
sub_802EC14:
    push {lr}
    mov r0, #0
    strh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    strb r0, [r5,#0x11]
    str r0, [r5,#0x50]
    ldrb r0, [r5,#0x15]
    mov r1, #0xfd
    bic r0, r1
    strb r0, [r5,#0x15]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    bne loc_802EC36
    mov r0, #8
    strb r0, [r5,#0x11]
loc_802EC36:
    bl sub_802F348
// end of function sub_802EC14

    bl sub_802F3D4
    ldr r2, [pc, #0x802ec74-0x802ec3e-2] // off_802EC80
    str r2, [r5,#0x40]
    bl sub_802F528
    mov r0, #0
    bl sub_802F1D8
    bl sub_802F348
    bl sub_802F3D4
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802ec8c-0x802ec58-4] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    pop {pc}
off_802EC74:    .word off_802EC80
    .word dword_802EC84
    .word dword_802EC88
off_802EC80:    .word unk_802E9A4
dword_802EC84:    .word 0x802E9A5
dword_802EC88:    .word 0x802E9A7
off_802EC8C:    .word 0x1F40
.thumb
sub_802EC90:
    push {lr}
    bl sub_802F5A8
    ldr r0, [pc, #0x802ecf0-0x802ec96-2] // off_802ECF4
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    ldrb r0, [r5,#2]
    cmp r0, #8
    bge locret_802ECEC
    ldr r0, [r5,#0x50]
    tst r0, r0
    bne locret_802ECEC
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #0xa
    tst r0, r1
    beq locret_802ECEC
    bl sub_8005B5C
    beq locret_802ECEC
    mov r1, #4
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne locret_802ECEC
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #1
    strb r0, [r5,#0x11]
    mov r0, #8
    strb r0, [r5,#2]
locret_802ECEC:
    pop {pc}
    .byte 0, 0
off_802ECF0:    .word off_802ECF4
off_802ECF4:    .word sub_802ED00+1
    .word sub_802EDB8+1
    .word sub_802EE0C+1
// end of function sub_802EC90

.thumb
sub_802ED00:
    push {lr}
    bl sub_8005B5C
    beq locret_802ED8E
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x28]
    cmp r0, r1
    bne loc_802ED18
    ldrb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq loc_802ED2C
loc_802ED18:
    push {r0}
    bl sub_802F528
    pop {r0}
    bl sub_802F1D8
    bl sub_802F348
    bl sub_802F3D4
loc_802ED2C:
    mov r4, r10
    ldr r0, [r4,#4]
    ldrh r0, [r0,#2]
    mov r1, #1
    tst r0, r1
    beq locret_802ED8E
    mov r0, #0x7e 
    bl f500_8000558
    ldr r0, [r4,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    blt loc_802ED7E
    mov r1, #4
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne locret_802ED8E
    orr r0, r1
    strb r0, [r5,#0x11]
    ldrb r0, [r5,#0xc]
    ldr r1, [pc, #0x802ed90-0x802ed54-4] // unk_2001E9C
    ldrb r0, [r1,r0]
    mov r1, #0x20 
    and r0, r1
    beq loc_802ED66
    ldr r0, [pc, #0x802eda0-0x802ed5e-2] // dword_802EDA4
    bl sub_8053FFC
    b loc_802ED78
loc_802ED66:
    ldr r0, [pc, #0x802edac-0x802ed66-2] // dword_802EDB0
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#6]
    cmp r1, #1
    beq loc_802ED74
    ldr r0, [pc, #0x802ed94-0x802ed72-2] // dword_802ED98
loc_802ED74:
    bl sub_8053FFC
loc_802ED78:
    mov r0, #4
    strb r0, [r5,#2]
    b locret_802ED8E
loc_802ED7E:
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #2
    strb r1, [r5,#0x11]
    mov r0, #8
    strb r0, [r5,#2]
locret_802ED8E:
    pop {pc}
off_802ED90:    .word unk_2001E9C
off_802ED94:    .word dword_802ED98
dword_802ED98:    .word 0x1000902, 0xFFFFFFFF
off_802EDA0:    .word dword_802EDA4
dword_802EDA4:    .word 0x2000902, 0xFFFFFFFF
off_802EDAC:    .word dword_802EDB0
dword_802EDB0:    .word 0x3000902, 0xFFFFFFFF
// end of function sub_802ED00

.thumb
sub_802EDB8:
    push {lr}
    mov r1, #4
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne loc_802EDE4
    ldrb r0, [r5,#0x11]
    mov r1, #2
    tst r0, r1
    beq loc_802EDD8
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5,#2]
    b loc_802EDDC
loc_802EDD8:
    mov r0, #0
    strb r0, [r5,#2]
loc_802EDDC:
    mov r0, #0xff
    strb r0, [r5,#0xd]
    ldrh r0, [r5,#0x26]
    b loc_802EDF4
loc_802EDE4:
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x28]
    cmp r0, r1
    bne loc_802EDF4
    ldrb r2, [r5,#0xc]
    ldrb r3, [r5,#0xd]
    cmp r2, r3
    beq locret_802EE08
loc_802EDF4:
    push {r0}
    bl sub_802F528
    pop {r0}
    bl sub_802F1D8
    bl sub_802F348
    bl sub_802F3D4
locret_802EE08:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802EDB8

.thumb
sub_802EE0C:
    push {lr}
    bl sub_8005B5C
    beq locret_802EE18
    mov r1, #8
    strb r1, [r5,#1]
locret_802EE18:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802EE0C

.thumb
sub_802EE1C:
    push {r7,lr}
    mov r0, r8
    push {r0}
    bl sub_80540BA
    ldrb r0, [r5,#0x11]
    mov r1, #1
    tst r0, r1
    bne loc_802EE5C
    ldrb r6, [r5,#0xc]
    ldrb r7, [r5,#0x15]
    ldrb r0, [r5,#0x17]
    mov r8, r0
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    strb r6, [r5,#0xc]
    strb r7, [r5,#0x15]
    mov r0, r8
    strb r0, [r5,#0x17]
    mov r1, #2
    tst r7, r1
    beq loc_802EE54
    tst r6, r6
    beq loc_802EE54
    add r6, #1
loc_802EE54:
    strb r6, [r5,#0x16]
    mov r0, #0x20 
    strb r0, [r5]
    b loc_802EE96
loc_802EE5C:
    ldrb r7, [r5,#0x15]
    mov r1, #2
    tst r7, r1
    beq loc_802EE80
    ldrb r0, [r5,#0x17]
    cmp r0, #1
    bne loc_802EE6C
    add r0, #1
loc_802EE6C:
    strb r0, [r5,#0x17]
    mov r0, r10
    ldr r0, [r0,#0x4c]
    add r0, #0x3c 
    mov r1, r10
    ldr r1, [r1,#0x4c]
    add r1, #0x78 
    mov r2, #0x3c 
    bl f900_800097A
loc_802EE80:
    bl sub_802EE9C
    ldrb r0, [r5,#0x17]
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#2]
    add r2, r1, r0
    ldrb r0, [r2,#0x1d]
    strb r0, [r1,#0x1c]
    bl sub_802DE3C
loc_802EE96:
    pop {r0}
    mov r8, r0
    pop {r7,pc}
// end of function sub_802EE1C

.thumb
sub_802EE9C:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x1d]
    cmp r0, #0xff
    beq loc_802EEAE
    mov r1, #0
    bl sub_802EEC8
loc_802EEAE:
    ldrb r0, [r7,#0x1e]
    cmp r0, #0xff
    beq loc_802EEBA
    mov r1, #1
    bl sub_802EEC8
loc_802EEBA:
    ldrb r0, [r7,#0x1f]
    cmp r0, #0xff
    beq locret_802EEC6
    mov r1, #2
    bl sub_802EEC8
locret_802EEC6:
    pop {r7,pc}
// end of function sub_802EE9C

.thumb
sub_802EEC8:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r2, #0x3c 
    mul r2, r1
    add r7, r7, r2
    lsl r2, r0, #1
    add r6, r7, r2
    ldrh r4, [r6]
loc_802EEDA:
    add r1, r6, #0
    mov r0, #2
    sub r6, r6, r0
    add r0, r6, #0
    mov r2, #2
    push {r4}
    bl f900_800097A
    pop {r4}
    cmp r6, r7
    bgt loc_802EEDA
    strh r4, [r7]
    pop {r7,pc}
// end of function sub_802EEC8

.thumb
sub_802EEF4:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#0x1d]
    cmp r0, #0xff
    beq loc_802EF06
    mov r1, #0
    bl sub_802EF20
loc_802EF06:
    ldrb r0, [r7,#0x1e]
    cmp r0, #0xff
    beq loc_802EF12
    mov r1, #1
    bl sub_802EF20
loc_802EF12:
    ldrb r0, [r7,#0x1f]
    cmp r0, #0xff
    beq locret_802EF1E
    mov r1, #2
    bl sub_802EF20
locret_802EF1E:
    pop {r7,pc}
// end of function sub_802EEF4

.thumb
sub_802EF20:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r2, #0x3c 
    mul r2, r1
    add r7, r7, r2
    ldrh r4, [r7]
    lsl r2, r0, #1
    add r6, r7, r2
loc_802EF32:
    add r1, r7, #0
    mov r0, #2
    add r7, r7, r0
    add r0, r7, #0
    mov r2, #2
    push {r4}
    bl f900_800097A
    pop {r4}
    cmp r6, r7
    bgt loc_802EF32
    strh r4, [r6]
    pop {r7,pc}
// end of function sub_802EF20

.thumb
sub_802EF4C:
    push {r0-r2,r4,r6,r7,lr}
    mov r4, r8
    push {r4}
    tst r1, r1
    bne loc_802EF5E
    ldr r4, [pc, #0x802f1c8-0x802ef56-2] // =0x200
    mov r8, r4
    mov r3, #0
    b loc_802EF62
loc_802EF5E:
    ldr r4, [pc, #0x802efa8-0x802ef5e-2] // =0x201
    mov r8, r4
loc_802EF62:
    add r6, r0, #0
    add r0, r3, #0
    bl fA00_8000A30
    lsr r1, r0, #4
    mov r2, #0xf
    and r0, r2
    add r4, r7, #0
    lsl r4, r4, #3
    mov r7, #0
loc_802EF76:
    tst r7, r7
    bne loc_802EF82
    tst r1, r1
    bne loc_802EF82
    ldr r2, [pc, #0x802efa4-0x802ef7e-2] // =0x200
    b loc_802EF88
loc_802EF82:
    lsl r1, r1, #1
    mov r2, r8
    add r2, r2, r1
loc_802EF88:
    add r3, r6, r4
    strh r2, [r3]
    add r2, #1
    add r3, #4
    strh r2, [r3]
    add r4, #2
    add r1, r0, #0
    add r7, #1
    cmp r7, #2
    blt loc_802EF76
    pop {r4}
    mov r8, r4
    pop {r0-r2,r4,r6,r7,pc}
    .byte 0
    .byte 0
off_802EFA4:    .word 0x200
dword_802EFA8:    .word 0x202
// end of function sub_802EF4C

.thumb
sub_802EFAC:
    push {r0,r1,r4,r6,r7,lr}
    tst r1, r1
    bne loc_802EFD6
    add r4, r2, #0
    add r6, r0, #0
    ldr r3, [r5,#0x3c]
    mov r2, #0x80
    add r3, r3, r2
    str r3, [r5,#0x3c]
    add r3, r7, #0
    mov r2, #8
    mul r3, r2
    add r1, r6, r3
    ldr r0, [pc, #0x802f318-0x802efc6-2] // unk_802F31C
    add r4, #0x10
    ldr r0, [r0,r4]
    add r0, r0, r3
    mov r2, #8
    bl f900_800098C
    b locret_802F00A
loc_802EFD6:
    add r4, r2, #0
    add r6, r0, #0
    add r0, r1, #0
    bl sub_8019010
    ldr r0, [r0,#0x20]
    ldr r1, [pc, #0x802f314-0x802efe2-2] // =0x6006800
    ldr r3, [r5,#0x3c]
    add r1, r1, r3
    mov r2, #0x80
    add r3, r3, r2
    str r3, [r5,#0x3c]
    push {r4}
    bl loc_8000870
    pop {r4}
    add r3, r7, #0
    mov r2, #8
    mul r3, r2
    add r1, r6, r3
    ldr r0, [pc, #0x802f318-0x802effe-2] // unk_802F31C
    ldr r0, [r0,r4]
    add r0, r0, r3
    mov r2, #8
    bl f900_800098C
locret_802F00A:
    pop {r0,r1,r4,r6,r7,pc}
// end of function sub_802EFAC

.thumb
sub_802F00C:
    push {r0,r1,r4,r6,r7,lr}
    tst r1, r1
    bne loc_802F02E
    add r4, r2, #0
    add r6, r0, #0
    add r3, r7, #0
    mov r2, #8
    mul r3, r2
    add r1, r6, r3
    ldr r0, [pc, #0x802f318-0x802f01e-2] // unk_802F31C
    add r4, #0x10
    ldr r0, [r0,r4]
    add r0, r0, r3
    mov r2, #8
    bl f900_800098C
    b locret_802F064
loc_802F02E:
    add r4, r2, #0
    add r6, r0, #0
    add r0, r1, #0
    bl sub_8019010
    ldr r0, [r0,#0x20]
    mov r3, #0
    mov r1, #0x80
    mul r1, r7
    add r3, r3, r1
    ldr r1, [pc, #0x802f314-0x802f042-2] // =0x6006800
    add r1, r1, r3
    mov r2, #0x80
    push {r4}
    bl loc_8000870
    pop {r4}
    add r3, r7, #0
    mov r2, #8
    mul r3, r2
    add r1, r6, r3
    ldr r0, [pc, #0x802f318-0x802f058-4] // unk_802F31C
    ldr r0, [r0,r4]
    add r0, r0, r3
    mov r2, #8
    bl f900_800098C
locret_802F064:
    pop {r0,r1,r4,r6,r7,pc}
    .byte 0
    .byte 0
// end of function sub_802F00C

.thumb
sub_802F068:
    push {r0,r1,r4-r7,lr}
    tst r1, r1
    bne loc_802F092
    add r5, r0, #0
    mov r4, #0x20 
    mul r4, r7
    add r2, r5, r4
    mov r4, #0x10
    add r3, r2, r4
    ldr r0, [pc, #0x802f1c8-0x802f07a-2] // =0x200
    mov r4, #0
loc_802F07E:
    strh r0, [r2,r4]
    add r4, #2
    cmp r4, #0x10
    blt loc_802F07E
    mov r4, #0
loc_802F088:
    strh r0, [r3,r4]
    add r4, #2
    cmp r4, #0x10
    blt loc_802F088
    b locret_802F0C4
loc_802F092:
    add r5, r0, #0
    ldr r0, [pc, #0x802f0c8-0x802f094-4] // off_8745E98
    cmp r1, #0xff
    ble loc_802F0B2
    ldr r0, [pc, #0x802f0cc-0x802f09a-2] // loc_8746830
    ldr r2, [pc, #0x802f0d0-0x802f09c-4] // =0x135
    cmp r1, r2
    blt loc_802F0AE
    sub r1, r1, r2
    lsl r1, r1, #2
    ldr r0, [pc, #0x802f0d4-0x802f0a6-2] // unk_802F0D8
    ldr r0, [r0,r1]
    mov r1, #0
    b loc_802F0B2
loc_802F0AE:
    ldr r2, [pc, #0x802f0e0-0x802f0ae-2] // =0xFF
    sub r1, r1, r2
loc_802F0B2:
    mov r4, #0x20 
    mul r4, r7
    add r2, r5, r4
    mov r4, #0x10
    add r3, r2, r4
    mov r6, #0x20 
    lsl r6, r6, #4
    bl sub_802F4E4
locret_802F0C4:
    pop {r0,r1,r4-r7,pc}
    .byte 0
    .byte 0
off_802F0C8:    .word off_8745E98
off_802F0CC:    .word loc_8746830
dword_802F0D0:    .word 0x137
off_802F0D4:    .word unk_802F0D8
unk_802F0D8:    .byte 0x70 
    .byte 0x17
    .byte 0
    .byte 2
    .byte 0x80
    .byte 0x17
    .byte 0
    .byte 2
off_802F0E0:    .word 0x100
    .byte 0xF3
    .byte 0xB5
    .byte 5
    .byte 0x1C
    .byte 5
    .byte 0x48 
    .byte 0xB1
    .byte 0x21 
    .byte 0x20
    .byte 0x24 
    .byte 0x7C 
    .byte 0x43 
    .byte 0x2A 
    .byte 0x19
    .byte 0x10
    .byte 0x24 
    .byte 0x13
    .byte 0x19
    .byte 0x20
    .byte 0x26 
    .byte 0x36 
    .byte 1
    .byte 0
    .byte 0xF0
    .byte 0xF3
    .byte 0xF9
    .byte 0xF3
    .byte 0xBD
    .byte 0x44 
    .byte 0xE6
    .byte 0x6D 
    .byte 8
// end of function sub_802F068

.thumb
sub_802F104:
    push {r0,r1,r3,r4,r6,r7,lr}
    mov r3, #4
    tst r1, r1
    bne loc_802F10E
    mov r3, #0x14
loc_802F10E:
    add r6, r0, #0
    add r0, r1, #0
    push {r3}
    bl sub_8019010
    pop {r3}
    ldrb r1, [r0,#7]
    cmp r1, #0xd
    bne loc_802F122
    mov r1, #0xc
loc_802F122:
    lsl r1, r1, #3
    ldr r0, [pc, #0x802f318-0x802f124-4] // unk_802F31C
    ldr r0, [r0,r3]
    add r0, r0, r1
    add r3, r7, #0
    ldr r1, [pc, #0x802f304-0x802f12c-4] // unk_2016140
    mov r2, #8
    mul r3, r2
    add r1, r6, r3
    mov r2, #8
    bl f900_800098C
    pop {r0,r1,r3,r4,r6,r7,pc}
// end of function sub_802F104

.thumb
sub_802F13C:
    push {r0-r2,r4,r6,r7,lr}
    tst r1, r1
    bne loc_802F14A
    mov r2, #0
    add r6, r0, #0
    ldr r0, [pc, #0x802f1c8-0x802f146-2] // =0x200
    b loc_802F150
loc_802F14A:
    add r6, r0, #0
    lsl r2, r2, #1
    ldr r0, [pc, #0x802f164-0x802f14e-2] // =0x2BC
loc_802F150:
    add r0, r0, r2
    add r1, r0, #1
    lsl r1, r1, #0x10
    orr r0, r1
    add r3, r7, #0
    mov r2, #4
    mul r3, r2
    add r6, r6, r3
    str r0, [r6]
    pop {r0-r2,r4,r6,r7,pc}
off_802F164:    .word 0x2BC
// end of function sub_802F13C

.thumb
sub_802F168:
    push {r0,r1,r4,r6,r7,lr}
    mov r3, r8
    push {r3}
    add r6, r0, #0
    add r0, r1, #0
    mov r8, r1
    bl sub_8019010
    ldrb r0, [r0,#6]
    mov r1, #0xa
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    mov r2, r8
    tst r2, r2
    bne loc_802F190
    ldr r2, [pc, #0x802f1c8-0x802f18a-2] // =0x200
    mov r0, #0
    b loc_802F1A0
loc_802F190:
    ldr r2, [pc, #0x802f1cc-0x802f190-4] // =0x384
    add r0, r0, r2
    lsl r0, r0, #0x10
    tst r1, r1
    bne loc_802F19C
    ldr r2, [pc, #0x802f1c8-0x802f19a-2] // =0x200
loc_802F19C:
    add r1, r1, r2
    orr r0, r1
loc_802F1A0:
    add r3, r7, #0
    mov r2, #8
    mul r3, r2
    add r6, r6, r3
    str r0, [r6]
    mov r2, r8
    tst r2, r2
    bne loc_802F1B4
    mov r1, #0x18
    b loc_802F1B6
loc_802F1B4:
    mov r1, #8
loc_802F1B6:
    ldr r0, [pc, #0x802f318-0x802f1b6-2] // unk_802F31C
    ldr r0, [r0,r1]
    ldr r0, [r0]
    add r6, #4
    str r0, [r6]
    pop {r3}
    mov r8, r3
    pop {r0,r1,r4,r6,r7,pc}
    .byte 0
    .byte 0
off_802F1C8:    .word 0x200
dword_802F1CC:    .word 0x38F
    .byte 0xC1
    .byte 0xB5
    .byte 0x4F 
    .byte 0x48 
    .byte 0x40 
    .byte 0xBC
    .byte 7
    .byte 0xE0
// end of function sub_802F168

.thumb
sub_802F1D8:
    push {r0,r6,r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x4c]
    ldrb r1, [r5,#0xc]
    mov r2, #0x3c 
    mul r1, r2
    add r0, r0, r1
    pop {r6}
    mov r7, #0
    str r7, [r5,#0x3c]
loc_802F1EC:
    mov r1, #2
    mul r1, r6
    ldrh r3, [r0,r1]
    lsr r2, r3, #9
    ldr r1, [pc, #0x802f344-0x802f1f4-4] // =0x1FC
    and r1, r3
    bl sub_802F954
    bne loc_802F22E
    push {r0}
    ldr r0, [pc, #0x802f308-0x802f200-4] // unk_2016180
    bl sub_802F13C
    push {r2}
    ldr r0, [pc, #0x802f300-0x802f208-4] // unk_2016100
    mov r2, #0
    bl sub_802EFAC
    pop {r2}
    ldr r0, [pc, #0x802f2fc-0x802f212-2] // unk_2016000
    bl sub_802F068
    ldr r0, [pc, #0x802f304-0x802f218-4] // unk_2016140
    bl sub_802F104
    ldr r0, [pc, #0x802f30c-0x802f21e-2] // unk_20161A0
    bl sub_802F168
    add r6, #1
    add r7, #1
    cmp r7, #7
    pop {r0}
    blt loc_802F1EC
loc_802F22E:
    ldrb r7, [r5,#0xc]
    ldr r0, [pc, #0x802f340-0x802f230-4] // unk_2001E9C
    ldrb r7, [r0,r7]
    mov r1, #0xf
    and r7, r1
    mov r0, #0
    bl sub_802F4A4
    .byte 0x28 
    .byte 0x6D 
    .byte 0
    .byte 0x42 
    .byte 1
    .byte 0xD0
    .byte 0
    .byte 0xF0
    .byte 0x92
    .byte 0xFB
    .byte 0x28 
    .byte 0x7B 
    .byte 0x69 
    .byte 0x6C 
    .byte 0xF
    .byte 0x56 
    .byte 0x20
    .byte 0xB4
    .byte 0xA8
    .byte 0x7C 
    .byte 0xC0
    .byte 0x19
    .byte 4
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x29 
    .byte 0x4B 
    .byte 2
    .byte 0x24 
    .byte 0xE
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0xBD
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0xA8
    .byte 0x7C 
    .byte 2
    .byte 0x30 
    .byte 0xC0
    .byte 0x19
    .byte 4
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x22 
    .byte 0x4B 
    .byte 8
    .byte 0x24 
    .byte 0xE
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0xB1
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0xA8
    .byte 0x7C 
    .byte 0xA
    .byte 0x30 
    .byte 0xC0
    .byte 0x19
    .byte 4
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x1E
    .byte 0x4B 
    .byte 2
    .byte 0x24 
    .byte 0xE
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0xA5
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0xA8
    .byte 0x7C 
    .byte 0xC
    .byte 0x30 
    .byte 0xC0
    .byte 0x19
    .byte 4
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x19
    .byte 0x4B 
    .byte 1
    .byte 0x24 
    .byte 0xE
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0x99
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0xA8
    .byte 0x7C 
    .byte 0xD
    .byte 0x30 
    .byte 0xC0
    .byte 0x19
    .byte 4
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x14
    .byte 0x4B 
    .byte 2
    .byte 0x24 
    .byte 0xE
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0x8D
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0x50 
    .byte 0x46 
    .byte 0x40 
    .byte 0x6C 
    .byte 0x81
    .byte 0x79 
    .byte 1
    .byte 0x39 
    .byte 0x89
    .byte 0
    .byte 0x2A 
    .byte 0x6C 
    .byte 0x52 
    .byte 0x58 
    .byte 0x2E 
    .byte 0x7B 
    .byte 0x90
    .byte 0x57 
    .byte 0xA9
    .byte 0x7C 
    .byte 0x40 
    .byte 0x18
    .byte 2
    .byte 0x21 
    .byte 3
    .byte 0x22 
    .byte 0x16
    .byte 0x4B 
    .byte 8
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0x79 
    .byte 0xFD
    .byte 0x20
    .byte 0xBC
    .byte 0
    .byte 0xF0
    .byte 0xEC
    .byte 0xFA
    .byte 0xC0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x98
    .byte 0x5E 
    .byte 0x74 
    .byte 8
    .byte 0x30 
    .byte 0x68 
    .byte 0x74 
    .byte 8
off_802F2FC:    .word unk_2016000
off_802F300:    .word unk_2016100
off_802F304:    .word unk_2016140
off_802F308:    .word unk_2016180
off_802F30C:    .word unk_20161A0
    .byte 0
    .byte 0xA0
    .byte 1
    .byte 2
dword_802F314:    .word 0x6006800
off_802F318:    .word unk_802F31C
unk_802F31C:    .byte 0x44 
    .byte 0xE7
    .byte 2
    .byte 8
    .byte 0x24 
    .byte 0xE8
    .byte 2
    .byte 8
    .word dword_802E8F4
    .byte 0xB4
    .byte 0xE7
    .byte 2
    .byte 8
    .byte 0x7C 
    .byte 0xE7
    .byte 2
    .byte 8
    .byte 0x8C
    .byte 0xE8
    .byte 2
    .byte 8
    .word off_802E8F8
    .byte 0xEC
    .byte 0xE7
    .byte 2
    .byte 8
    .byte 0x24 
    .byte 0xE7
    .byte 2
    .byte 8
off_802F340:    .word unk_2001E9C
dword_802F344:    .word 0x1FF
// end of function sub_802F1D8

.thumb
sub_802F348:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r1, [r0,#6]
    sub r1, #1
    ldr r4, [pc, #0x802f3c4-0x802f352-2] // unk_802F3CC
    ldrb r4, [r4,r1]
    ldr r0, [pc, #0x802f3c8-0x802f356-2] // =0x802F3CF
    ldrb r0, [r0,r1]
    lsl r1, r1, #2
    ldr r2, [pc, #0x802f37c-0x802f35c-4] // unk_802F388
    ldr r2, [r2,r1]
    str r2, [r5,#0x44]
    ldr r2, [pc, #0x802f394-0x802f362-2] // unk_802F398
    ldr r2, [r2,r1]
    ldrb r1, [r5,#0xc]
    lsl r1, r1, #2
    ldr r3, [r2,r1]
    push {r5}
    mov r1, #2
    mov r2, #1
    mov r5, #0x11
    bl sub_8001DDC
    .byte 0x20
    .byte 0xBC
    .byte 0
    .byte 0xBD
off_802F37C:    .word unk_802F388
    .byte 0x8C
    .byte 0xF3
    .byte 2
    .byte 8
    .byte 0x90
    .byte 0xF3
    .byte 2
    .byte 8
unk_802F388:    .byte 0x94
    .byte 0xE9
    .byte 2
    .byte 8
    .byte 0x95
    .byte 0xE9
    .byte 2
    .byte 8
    .byte 0x97
    .byte 0xE9
    .byte 2
    .byte 8
off_802F394:    .word unk_802F398
unk_802F398:    .byte 0xA4
    .byte 0xF3
    .byte 2
    .byte 8
    .byte 0xA8
    .byte 0xF3
    .byte 2
    .byte 8
    .byte 0xB0
    .byte 0xF3
    .byte 2
    .byte 8
    .byte 0x74 
    .byte 0x1E
    .byte 0x6D 
    .byte 8
    .byte 0xFC
    .byte 0x20
    .byte 0x6D 
    .byte 8
    .byte 0xE8
    .byte 0x23 
    .byte 0x6D 
    .byte 8
    .byte 0xD4
    .byte 0x26 
    .byte 0x6D 
    .byte 8
    .byte 0x28 
    .byte 0x2A 
    .byte 0x6D 
    .byte 8
    .byte 0x7C 
    .byte 0x2D 
    .byte 0x6D 
    .byte 8
    .byte 0xC0
    .byte 0xF3
    .byte 2
    .byte 8
    .byte 0x74 
    .byte 0x1E
    .byte 0x6D 
    .byte 8
off_802F3C4:    .word unk_802F3CC
dword_802F3C8:    .word 0x802F3CF
unk_802F3CC:    .byte 0x13
    .byte 0x16
    .byte 0x19
    .byte 6
    .byte 4
    .byte 2
    .byte 0
    .byte 0
// end of function sub_802F348

.thumb
sub_802F3D4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    ldr r1, [pc, #0x802f42c-0x802f3de-2] // unk_802F430
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#2]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    ldr r1, [pc, #0x802f428-0x802f3f4-4] // unk_2016400
    mov r2, #0x14
    bl f900_800098C
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    sub r0, #1
    ldr r1, [pc, #0x802f48c-0x802f404-4] // unk_802F498
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#2]
    ldrb r0, [r1,r0]
    push {r5}
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x802f428-0x802f418-4] // unk_2016400
    mov r4, #5
    mov r5, #2
    bl sub_8001DDC
    .byte 0x20
    .byte 0xBC
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0
off_802F428:    .word unk_2016400
off_802F42C:    .word unk_802F430
unk_802F430:    .byte 0x3C 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x44 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x5C 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x40 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0xD0
    .byte 0x30 
    .byte 0x6D 
    .byte 8
    .byte 0x4C 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x54 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0xE4
    .byte 0x30 
    .byte 0x6D 
    .byte 8
    .byte 0xF8
    .byte 0x30 
    .byte 0x6D 
    .byte 8
    .byte 0xC
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0xD0
    .byte 0x30 
    .byte 0x6D 
    .byte 8
    .byte 0x68 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x74 
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x80
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0x20
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0x34 
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0x48 
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0x5C 
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0x70 
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0xF8
    .byte 0x30 
    .byte 0x6D 
    .byte 8
    .byte 0x84
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0xC
    .byte 0x31 
    .byte 0x6D 
    .byte 8
    .byte 0xD0
    .byte 0x30 
    .byte 0x6D 
    .byte 8
off_802F48C:    .word unk_802F498
    .byte 0x9C
    .byte 0xF4
    .byte 2
    .byte 8
    .byte 0xA0
    .byte 0xF4
    .byte 2
    .byte 8
unk_802F498:    .byte 0x9C
    .byte 0xE9
    .byte 2
    .byte 8
    .byte 0x9D
    .byte 0xE9
    .byte 2
    .byte 8
    .byte 0x9F
    .byte 0xE9
    .byte 2
    .byte 8
// end of function sub_802F3D4

.thumb
sub_802F4A4:
    push {r5,lr}
    ldr r3, [pc, #0x802f4d4-0x802f4a6-2] // unk_802F4D8
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldr r2, [pc, #0x802f4c8-0x802f4ac-4] // unk_802F4CC
    ldr r2, [r2,r0]
    ldr r0, [pc, #0x802f4c4-0x802f4b0-4] // dword_86E31DC
    add r1, r7, #0
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x802f4e0-0x802f4b8-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x20
    .byte 0xBD
    .byte 0
    .byte 0
off_802F4C4:    .word dword_86E31DC
off_802F4C8:    .word unk_802F4CC
unk_802F4CC:    .byte 0
    .byte 0x68 
    .byte 1
    .byte 2
    .byte 0
    .byte 0x6A 
    .byte 1
    .byte 2
off_802F4D4:    .word unk_802F4D8
unk_802F4D8:    .byte 0
    .byte 0x82
    .byte 0
    .byte 6
    .byte 0
    .byte 0x84
    .byte 0
    .byte 6
off_802F4E0:    .word dword_868E224
// end of function sub_802F4A4

.thumb
sub_802F4E4:
    push {r7,lr}
    push {r2,r3}
    sub r3, r3, r2
    lsl r3, r3, #1
    add r3, r3, r2
loc_802F4EE:
    strh r6, [r2]
    add r2, #2
    cmp r2, r3
    blt loc_802F4EE
    pop {r2,r3}
    lsl r1, r1, #1
    ldrh r4, [r0,r1]
    add r0, r0, r4
loc_802F4FE:
    ldrb r1, [r0]
    cmp r1, #0xe5
    bge locret_802F518
    lsl r1, r1, #1
    add r4, r6, #0
    add r4, r4, r1
    strh r4, [r2]
    add r4, #1
    strh r4, [r3]
    add r2, #2
    add r3, #2
    add r0, #1
    b loc_802F4FE
locret_802F518:
    pop {r7,pc}
    .byte 0
    .byte 0
// end of function sub_802F4E4

.thumb
sub_802F51C:
    push {r0-r2,r5-r7,lr}
    mov r2, #0x20 
    lsl r2, r2, #4
    bl f900_80009DC
    pop {r0-r2,r5-r7,pc}
// end of function sub_802F51C

.thumb
sub_802F528:
    push {r5,lr}
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_802F552
    mov r0, #0
    mov r1, #4
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_8001DF8
    .byte 0
    .byte 0x20
    .byte 2
    .byte 0x21 
    .byte 3
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x20
    .byte 0x24 
    .byte 0x14
    .byte 0x25 
    .byte 0xD2
    .byte 0xF7
    .byte 0x53 
    .byte 0xFC
locret_802F552:
    pop {r5,pc}
// end of function sub_802F528

.thumb
sub_802F554:
    push {r6,r7,lr}
    mov r7, r10
    ldr r0, [r7,#0x44]
    ldrb r1, [r0,#6]
    sub r1, #1
    beq locret_802F5A2
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    mov r0, #0xc
    ldrsb r4, [r5,r0]
    add r3, r4, #0
    mov r0, #0x20 
    and r0, r6
    beq loc_802F57C
    tst r4, r4
    bne loc_802F578
    add r4, r1, #0
    b loc_802F58C
loc_802F578:
    sub r4, #1
    b loc_802F58C
loc_802F57C:
    mov r0, #0x10
    and r0, r6
    beq loc_802F58C
    cmp r4, r1
    blt loc_802F58A
    mov r4, #0
    b loc_802F58C
loc_802F58A:
    add r4, #1
loc_802F58C:
    ldrb r0, [r5,#0xc]
    cmp r0, r4
    beq loc_802F598
    ldr r0, [pc, #0x802f5a4-0x802f592-2] // =0x118
    bl f500_8000558
loc_802F598:
    strb r4, [r5,#0xc]
    cmp r3, r4
    beq locret_802F5A2
    mov r0, #0
    strh r0, [r5,#0x26]
locret_802F5A2:
    pop {r6,r7,pc}
dword_802F5A4:    .word 0x11B
// end of function sub_802F554

.thumb
sub_802F5A8:
    push {r6,r7,lr}
    bl sub_8005B5C
    beq locret_802F5C6
    mov r1, #4
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne locret_802F5C6
    ldrb r0, [r5,#2]
    tst r0, r0
    bne locret_802F5C6
    bl sub_80301D4
    bl sub_802F554
locret_802F5C6:
    pop {r6,r7,pc}
// end of function sub_802F5A8

.thumb
sub_802F5C8:
    push {lr}
    ldr r0, [pc, #0x802f600-0x802f5ca-2] // unk_2001E9C
    mov r2, #(byte_2001E9D - 0x2001e9c)
    ldrb r1, [r0,r2]
    cmp r1, #0xff
    beq locret_802F5FC
    cmp r1, #0x11
    beq locret_802F5FC
    ldrb r0, [r5,#0x15]
    mov r1, #2
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, r10
    ldr r0, [r0,#0x4c]
    mov r4, #0x3c 
    mov r2, #2
    mul r2, r4
    add r0, r0, r2
    mov r1, r10
    ldr r1, [r1,#0x4c]
    mov r2, #1
    mul r2, r4
    add r1, r1, r2
    mov r2, #0x3c 
    bl f900_800097A
locret_802F5FC:
    pop {pc}
    .byte 0
    .byte 0
off_802F600:    .word unk_2001E9C
// end of function sub_802F5C8

.thumb
sub_802F604:
    push {r4-r7,lr}
    add r5, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x70]
    mov r4, #5
    ldrb r3, [r7,r4]
    ldr r0, [pc, #0x802f8b4-0x802f610-4] // loc_802F8B8
    mov r6, #0
loc_802F614:
    ldrb r4, [r0,r6]
    cmp r3, r4
    bne loc_802F61C
    b loc_802F622
loc_802F61C:
    add r6, #1
    cmp r6, #4
    blt loc_802F614
loc_802F622:
    ldr r3, [pc, #0x802f680-0x802f622-2] // dword_200A448
    str r6, [r3]
    pop {r4-r7,pc}
// end of function sub_802F604

.thumb
sub_802F628:
    push {r4-r7,lr}
    add r5, r0, #0
    ldr r3, [pc, #0x802f680-0x802f62c-4] // dword_200A448
    ldr r6, [r3]
    lsl r6, r6, #2
    ldr r3, [pc, #0x802f684-0x802f632-2] // off_802F688
    lsl r5, r5, #2
    ldr r3, [r3,r5]
    ldr r7, [r3,r6]
    cmp r5, #0xc
    bne loc_802F67A
    add r0, r7, #0
    ldr r1, [pc, #0x802f880-0x802f640-4] // unk_200A1A0
    mov r2, #0x80
    bl f900_800098C
    mov r0, #0x11
    mov r1, #0x6e 
    bl sub_8024FF0
    beq loc_802F67A
    ldr r1, [pc, #0x802f880-0x802f652-2] // unk_200A1A0
    mov r3, #0
loc_802F656:
    mov r4, #0x20 
    mul r4, r3
    mov r0, #0xc
    add r0, r0, r4
    ldr r2, [pc, #0x802f89c-0x802f65e-2] // dword_802F8A0
    ldr r2, [r2,r6]
    strh r2, [r1,r0]
    mov r0, #0x1c
    add r0, r0, r4
    ldr r2, [pc, #0x802f884-0x802f668-4] // off_802F888
    ldr r2, [r2,r6]
    strh r2, [r1,r0]
    mov r0, #0x1e
    add r0, r0, r4
    strh r2, [r1,r0]
    add r3, #1
    cmp r3, #4
    blt loc_802F656
loc_802F67A:
    add r0, r7, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_802F680:    .word dword_200A448
off_802F684:    .word off_802F688
off_802F688:    .word off_802F688+84
    .word off_802F688+104
    .word off_802F688+124
    .word off_802F688+144
    .word off_802F688+164
    .word off_802F688+184
    .word off_802F688+204
    .word off_802F688+224
    .word off_802F688+244
    .word off_802F688+264
    .word off_802F688+284
    .word off_802F688+304
    .word off_802F688+324
    .word dword_802F7E0
    .word dword_802F7F4
    .word dword_802F808
    .word dword_802F81C
    .word dword_802F830
    .word dword_802F844
    .word dword_802F858
    .word dword_802F86C
    .word dword_86F5D60+544
    .word dword_86F5D60+448
    .word dword_86F5D60+640
    .word dword_86F5D60+96
    .word dword_86F5D60+192
    .word dword_86F6284+124
    .word aSbsbsbsbsbsbsb_1+16
    .word dword_86F6380
    .word byte_86F6100
    .word byte_86F6180
    .word dword_86F5D60+864
    .word dword_86F5D60+832
    .word dword_86F5D60+896
    .word dword_86F5D60+736
    .word dword_86F5D60+768
    .word dword_86F6284+124
    .word aSbsbsbsbsbsbsb_1+16
    .word dword_86F6380
    .word byte_86F6100
    .word byte_86F6180
    .word dword_86F63F0+144
    .word dword_86F63F0+112
    .word dword_86F63F0+176
    .word dword_86F63F0+16
    .word dword_86F63F0+48
    .word byte_86F6CC0
    .word byte_86F6AC0
    .word byte_86F6EC0
    .word dword_86F63F0+208
    .word byte_86F66C0
    .word dword_86F70A4+156
    .word dword_86F70A4+124
    .word dword_86F70A4+188
    .word dword_86F70A4+28
    .word dword_86F70A4+60
    .word dword_86F70A4+476
    .word dword_86F70A4+412
    .word dword_86F70A4+540
    .word dword_86F70A4+220
    .word dword_86F70A4+284
    .word dword_86F70A4+732
    .word dword_86F70A4+700
    .word dword_86F70A4+764
    .word dword_86F70A4+604
    .word dword_86F70A4+636
    .word dword_86F8244+28
    .word dword_86F8164+28
    .word byte_86F8340
    .word dword_869F7C4
    .word dword_86F7FA4+28
    .word dword_86F70A4+924
    .word dword_86F70A4+892
    .word dword_86F70A4+956
    .word dword_86F70A4+796
    .word dword_86F70A4+828
    .word dword_86F70A4+1372
    .word dword_86F70A4+1276
    .word dword_86F70A4+1468
    .word dword_86F70A4+988
    .word dword_86F70A4+1084
    .word dword_86F7BE4+668
    .word dword_86F7BE4+540
    .word dword_86F7BE4+796
    .word dword_868E1A4
    .word dword_86F7BE4+284
dword_802F7E0:    .word 0x86F7A80, 0x86F7940, 0x86F7BC0, 0x86CDE60, 0x86F76C0
dword_802F7F4:    .word 0x86F8460, 0x86F8440, 0x86F8480, 0x86F83E0, 0x86F8400
dword_802F808:    .word 0x86F85E0, 0x86F85A0, 0x86F8620, 0x86F84E0, 0x86F8520
dword_802F81C:    .word 0x86F8780, 0x86F8720, 0x86F87E0, 0x8745CB8, 0x86F8660
dword_802F830:    .word 0x86F7140, 0x86F7120, 0x86F7160, 0x86F70C0, 0x86F70E0
dword_802F844:    .word 0x86F8460, 0x86F8440, 0x86F8480, 0x86F83E0, 0x86F8400
dword_802F858:    .word 0x86F8940, 0x86F8900, 0x86F8980, 0x86F8840, 0x86F8880
dword_802F86C:    .word 0x86F8C20, 0x86F8BA0, 0x86F8CA0, 0x86F8A20, 0x86F8AA0
off_802F880:    .word unk_200A1A0
off_802F884:    .word off_802F888
off_802F888:    .word 0x3CD4
    .word 0x1960
    .word 0x1CC5, 0x3D05, 0x18AF
off_802F89C:    .word dword_802F8A0
dword_802F8A0:    .word 0x5159, 0x2205, 0x2908, 0x5548, 0x1CD7
off_802F8B4:    .word loc_802F8B8
// end of function sub_802F628

loc_802F8B8:
    sub r5, r3, #0
    add r0, r3, #1
    push {r4,r6,r7,lr}
    ldr r7, [pc, #0x802f984-0x802f8be-2] // dword_200A448
    ldr r0, [r7,r0]
    bl f900_800098C
    pop {r4,r6,r7,pc}
    push {r4-r7,lr}
    push {r4,r5}
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#6]
    sub r1, #1
    lsl r1, r1, #2
    ldr r0, [pc, #0x802f93c-0x802f8d6-2] // off_802F940
    ldr r0, [r0,r1]
    ldrb r1, [r5,#0xc]
    ldrb r0, [r0,r1]
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #0x10
    mov r5, #0xe
    bl sub_8001DF8
    pop {r4,r5}
    ldrb r0, [r5,#0xc]
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r1, #0x1d
    add r1, r1, r0
    add r1, r1, r7
    ldrb r0, [r1]
    cmp r0, #0xff
    beq locret_802F936
    ldrh r1, [r5,#0x26]
    add r2, r1, #7
    cmp r0, r2
    bge locret_802F936
    sub r0, r0, r1
    blt locret_802F936
    mov r1, #4
    lsl r0, r0, #1
    add r7, r1, r0
    mov r1, r10
    ldr r1, [r1,#0x44]
    ldrb r1, [r1,#6]
    sub r1, #1
    lsl r1, r1, #2
    ldr r0, [pc, #0x802f93c-0x802f91c-4] // off_802F940
    ldr r0, [r0,r1]
    ldrb r1, [r5,#0xc]
    ldrb r0, [r0,r1]
    add r1, r7, #0
    push {r5}
    mov r2, #3
    ldr r3, [pc, #0x802f938-0x802f92a-2] // dword_86DDA4C
    mov r4, #0x10
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
locret_802F936:
    pop {r4-r7,pc}
off_802F938:    .word dword_86DDA4C
off_802F93C:    .word off_802F940
off_802F940:    .word unk_802F94C
    .word 0x802F94D, 0x802F94F
unk_802F94C:    .byte 8
    .byte 6
    .byte 9
    .byte 4
    .byte 7
    .byte 0xA
    .byte 0
    .byte 0
.thumb
sub_802F954:
    push {r0-r4,lr}
    add r0, r1, #0
    add r1, r2, #0
    bl sub_800640C
    beq locret_802F968
    bl sub_802F96C
    mov r0, #1
    str r0, [r5,#0x50]
locret_802F968:
    pop {r0-r4,pc}
    .byte 0
    .byte 0
// end of function sub_802F954

.thumb
sub_802F96C:
    push {r0-r4,lr}
    ldr r0, [pc, #0x802f97c-0x802f96e-2] // unk_2016000
    ldr r1, [pc, #0x802f980-0x802f970-4] // =0x400
    mov r2, #0
    bl f900_80009DC
    pop {r0-r4,pc}
    .byte 0
    .byte 0
off_802F97C:    .word unk_2016000
off_802F980:    .word 0x400
off_802F984:    .word dword_200A448
dword_802F988:    .word 0xEDEDED, 0xEEEEEEEE, 0xEEEE, 0x120010, 0x160014, 0x1A0018
    .word 0x1E001C, 0x130011, 0x170015, 0x1B0019, 0x1F001D, 0x220020
    .word 0x260024, 0x2A0028, 0x2E002C, 0x230021, 0x270025, 0x2B0029
    .word 0x2F001D, 0xFFFF0004, 0x0
    .word 0xFFFF0104, 0x100, 0xFFFF0203, 0x201, 0xFFFF0303, 0x302
    .word 0xFFFF0405, 0x0
    .word 0xFFFF0505, 0x1, 0xFFFF0605, 0x10002, 0xFFFF0708, 0x1
    .word 0xFFFF0808, 0x0
    .word 0xFFFF130A, 0x0
    .word 0xFFFF0C0C, 0x0
    .word 0xFFFF0D0C, 0x1, 0xFFFF0E0C, 0x2, 0xFFFF0F0C, 0x3, 0xFFFF100C
    .word 0x104, 0xFFFFFFFF, 0xFFFFFFFF
// end of function sub_802F96C

.thumb
sub_802FA54:
    push {r4-r7,lr}
    ldr r0, [pc, #0x802fa64-0x802fa56-2] // off_802FA68
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802FA64:    .word off_802FA68
off_802FA68:    .word sub_802FA74+1
    .word loc_802FC70+1
    .word sub_802FE4C+1
// end of function sub_802FA54

.thumb
sub_802FA74:
    push {lr}
    bl sub_8043120
    bl sub_8001D04
    bl sub_8001D38
    ldr r0, [pc, #0x802fc34-0x802fa82-2] // =0x3000
    ldr r1, [pc, #0x802fc38-0x802fa84-4] // =0x800
    bl sub_8031640
    bl sub_8001D88
    ldr r0, [pc, #0x802fbf4-0x802fa8e-2] // dword_86DDA2C
    ldr r1, [pc, #0x802fbf8-0x802fa90-4] // unk_3002BB0
    ldr r2, [pc, #0x802fbfc-0x802fa92-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x802fc00-0x802fa98-4] // dword_86DD9AC
    ldr r1, [pc, #0x802fc04-0x802fa9a-2] // =0x6008620
    ldr r2, [pc, #0x802fc08-0x802fa9c-4] // =0x80
    bl f900_80009A0
    ldr r0, [pc, #0x802fc0c-0x802faa2-2] // dword_86DE22C
    ldr r1, [pc, #0x802fc10-0x802faa4-4] // unk_3002B10
    ldr r2, [pc, #0x802fc14-0x802faa6-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x802fc18-0x802faac-4] // dword_86DDA8C
    ldr r1, [pc, #0x802fc1c-0x802faae-2] // =0x600A000
    ldr r2, [pc, #0x802fc20-0x802fab0-4] // =0x7A0
    bl f900_80009A0
    ldr r0, [pc, #0x802fc3c-0x802fab6-2] // dword_86D156C
    ldr r1, [pc, #0x802fc40-0x802fab8-4] // dword_202E000
    bl dword_8111700
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x802fbe0-0x802fac6-2] // dword_86D3198
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_802FA74

    pop {r5}
    ldr r0, [pc, #0x802fc24-0x802fad2-2] // dword_201A000
    ldr r1, [pc, #0x802fc28-0x802fad4-4] // =0xC400
    bl f900_8000950
    ldr r0, [pc, #0x802fc2c-0x802fada-2] // dword_2027400
    ldr r1, [pc, #0x802fc30-0x802fadc-4] // =0x400
    bl f900_8000950
    ldr r0, [pc, #0x802fbf0-0x802fae2-2] // unk_2016400
    ldr r1, [pc, #0x802fc6c-0x802fae4-4] // =0x220
    bl sub_802F51C
    mov r0, #0x11
    bl sub_800D742
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#0x18]
    add r0, r0, r1
    strb r0, [r5,#0x1b]
    mov r0, #0x13
    bl sub_800D742
    strb r0, [r5,#0x1c]
    mov r0, #0x14
    bl sub_800D742
    strb r0, [r5,#0x1d]
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    strh r0, [r5,#0x38]
    bl sub_80305AC
    bl sub_80303D0
    bl sub_8030104
    lsr r4, r4, #5
    strh r4, [r5,#0x24]
    ldr r0, [pc, #0x802fbe4-0x802fb26-2] // dword_201C000
    ldrh r1, [r5,#0x24]
    mov r2, #7
    ldr r3, [pc, #0x802fbe8-0x802fb2c-4] // dword_802FBEC
    ldr r3, [r3]
    mov lr, pc
    bx r3
    mov r0, #0x20 
    strb r0, [r5,#0x12]
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x1e
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#0x15]
    mov r1, #0xfd
    bic r0, r1
    strb r0, [r5,#0x15]
    mov r7, r10
    ldrb r0, [r5,#0x16]
    ldr r4, [r7,#0x40]
    add r4, r4, r0
    ldrb r0, [r4,#0x1d]
    strb r0, [r5,#0x1e]
    cmp r0, #0xff
    beq loc_802FB66
    mov r1, #0x80
    ldrb r3, [r5,#0x11]
    orr r3, r1
    strb r3, [r5,#0x11]
    ldrh r2, [r5,#0x26]
    sub r0, r0, r2
    b loc_802FB68
loc_802FB66:
    mov r0, #0
loc_802FB68:
    strb r0, [r5,#0x14]
    mov r0, #0xff
    lsl r1, r0, #8
    orr r0, r1
    strh r0, [r5,#0x30]
    strh r0, [r5,#0x32]
    bl sub_802FF18
    ldrb r7, [r5,#0xc]
    ldr r0, [pc, #0x802fc64-0x802fb7a-2] // unk_2001E9C
    ldrb r7, [r0,r7]
    mov r1, #0xf
    and r7, r1
    mov r0, #0
    bl sub_802F4A4
    mov r7, #0xa
    mov r0, #1
    bl sub_802F4A4
    ldr r0, [pc, #0x802fc44-0x802fb90-4] // dword_802F988
    str r0, [r5,#0x44]
    ldr r0, [pc, #0x802fc48-0x802fb94-4] // off_802FC54
    str r0, [r5,#0x40]
    mov r0, #0
    strh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    strh r0, [r5,#0x2c]
    strh r0, [r5,#0x2e]
    bl sub_8030620
    bl sub_8030280
    mov r0, #0x12
    bl sub_8001BC8
    bl sub_80540BA
    ldr r0, [pc, #0x802fc60-0x802fbb4-4] // dword_802F988+76
    bl sub_8031624
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x802fc68-0x802fbbe-2] // =0x1F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .byte 0, 0
off_802FBE0:    .word dword_86D3198
off_802FBE4:    .word dword_201C000
off_802FBE8:    .word dword_802FBEC
dword_802FBEC:    .word 0x300658D
off_802FBF0:    .word unk_2016400
off_802FBF4:    .word dword_86DDA2C
off_802FBF8:    .word unk_3002BB0
dword_802FBFC:    .word 0x20
off_802FC00:    .word dword_86DD9AC
dword_802FC04:    .word 0x6008620
off_802FC08:    .word 0x80
off_802FC0C:    .word dword_86DE22C
off_802FC10:    .word unk_3002B10
dword_802FC14:    .word 0x20
off_802FC18:    .word dword_86DDA8C
dword_802FC1C:    .word 0x600A000
off_802FC20:    .word 0x7A0
off_802FC24:    .word dword_201A000
dword_802FC28:    .word 0xC400
off_802FC2C:    .word dword_2027400
off_802FC30:    .word 0x400
off_802FC34:    .word 0x3000
off_802FC38:    .word 0x800
off_802FC3C:    .word dword_86D156C
off_802FC40:    .word dword_202E000
off_802FC44:    .word dword_802F988
off_802FC48:    .word off_802FC54
    .word dword_802FC58
    .word dword_802FC5C
off_802FC54:    .word dword_802F988+4
dword_802FC58:    .word 0x802F98D
dword_802FC5C:    .word 0x802F98F
off_802FC60:    .word dword_802F988+0x4C
off_802FC64:    .word unk_2001E9C
off_802FC68:    .word 0x1F40
off_802FC6C:    .word 0x220
loc_802FC70:
    push {lr}
    bl loc_80306B0
    ldrh r0, [r5,#0x24]
    str r0, [r5,#0x4c]
    ldr r0, [pc, #0x802fcc0-0x802fc7a-2] // off_802FCC4
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrh r0, [r5,#0x38]
    mov r1, #1
    tst r0, r1
    bne loc_802FC9A
    bl sub_8031284
    bne loc_802FCBA
loc_802FC9A:
    bl sub_8005B5C
    beq loc_802FCBA
    ldrh r0, [r5,#0x38]
    mov r1, #1
    tst r0, r1
    bne loc_802FCAE
    mov r0, #0x7f
    bl f500_8000558
loc_802FCAE:
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5,#2]
loc_802FCBA:
    bl sub_8031218
    pop {pc}
off_802FCC0:    .word off_802FCC4
off_802FCC4:    .word sub_802FCD8+1
    .word sub_802FD88+1
    .word sub_802FDC4+1
    .word sub_802FDD8+1
    .word sub_802FE28+1
.thumb
sub_802FCD8:
    push {lr}
    ldrb r0, [r5,#0x12]
    cmp r0, #2
    bne loc_802FCE6
    mov r0, #1
    strb r0, [r5,#0x13]
    b loc_802FCF4
loc_802FCE6:
    cmp r0, #0x20 
    bne loc_802FCF0
    mov r0, #0
    strb r0, [r5,#0x13]
    b loc_802FCF4
loc_802FCF0:
    mov r0, #0xff
    strb r0, [r5,#0x13]
loc_802FCF4:
    mov r0, #8
    ldrb r1, [r5,#0x15]
    tst r0, r1
    bne loc_802FD30
    mov r0, #0x40 
    ldrb r1, [r5,#0x15]
    tst r0, r1
    bne loc_802FD20
    mov r0, #0x20 
    ldrb r1, [r5,#0x15]
    tst r0, r1
    bne loc_802FD2C
    mov r0, #4
    ldrb r1, [r5,#0x11]
    tst r0, r1
    bne loc_802FD30
    mov r6, r10
    ldr r6, [r6,#4]
    ldrh r0, [r6]
    mov r1, #0x10
    and r1, r0
    beq loc_802FD26
loc_802FD20:
    bl sub_802FEA8
    b loc_802FD30
loc_802FD26:
    mov r1, #0x20 
    and r1, r0
    beq loc_802FD30
loc_802FD2C:
    bl sub_802FEE0
loc_802FD30:
    ldrb r0, [r5,#0x13]
    tst r0, r0
    beq loc_802FD4C
    ldrh r0, [r5,#0x20]
    ldrh r1, [r5,#0x22]
    cmp r0, r1
    beq loc_802FD70
    bl sub_8030620
    bl sub_802FFC8
    ldrh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    b loc_802FD70
loc_802FD4C:
    ldrb r0, [r5,#0x15]
    mov r1, #1
    tst r0, r1
    bne loc_802FD5C
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x28]
    cmp r0, r1
    beq loc_802FD70
loc_802FD5C:
    ldrb r0, [r5,#0x15]
    mov r1, #1
    bic r0, r1
    strb r0, [r5,#0x15]
    bl sub_8030620
    bl sub_8030280
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
loc_802FD70:
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    bne loc_802FD80
    ldrb r0, [r5,#0x11]
    mov r1, #4
    tst r0, r1
    beq locret_802FD84
loc_802FD80:
    mov r0, #4
    strb r0, [r5,#2]
locret_802FD84:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802FCD8

.thumb
sub_802FD88:
    push {lr}
    bl sub_8030A28
    ldrb r0, [r5,#0x15]
    mov r1, #1
    tst r0, r1
    beq loc_802FD9C
    bic r0, r1
    strb r0, [r5,#0x15]
    b loc_802FDAC
loc_802FD9C:
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    bne locret_802FDC0
    ldrb r0, [r5,#0x11]
    mov r1, #4
    tst r0, r1
    bne locret_802FDC0
loc_802FDAC:
    bl sub_8030620
    bl sub_8030280
    bl sub_802FFC8
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    mov r0, #0
    strb r0, [r5,#2]
locret_802FDC0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802FD88

.thumb
sub_802FDC4:
    push {lr}
    bl sub_8005B5C
    beq locret_802FDD4
    bl sub_804E448
    mov r1, #8
    strb r1, [r5,#1]
locret_802FDD4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_802FDC4

.thumb
sub_802FDD8:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    beq locret_802FE26
    mov r0, #0x28 
    bl sub_80539A0
    beq locret_802FE26
    bl sub_80539B0
    tst r0, r0
    beq loc_802FE0C
    bl sub_8030620
    bl sub_8030280
    bl sub_802FFC8
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x28]
    bl sub_804E448
    mov r0, #0x10
    strb r0, [r5,#2]
    b locret_802FE26
loc_802FE0C:
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #8
    strb r0, [r5,#2]
    mov r0, #1
    ldrh r1, [r5,#0x38]
    orr r1, r0
    strh r1, [r5,#0x38]
locret_802FE26:
    pop {pc}
// end of function sub_802FDD8

.thumb
sub_802FE28:
    push {lr}
    ldrb r0, [r5,#0x11]
    mov r1, #4
    bic r0, r1
    strb r0, [r5,#0x11]
    mov r1, #1
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    bl sub_8030620
// end of function sub_802FE28

    bl sub_8030280
    bl sub_802FFC8
    mov r0, #0
    strb r0, [r5,#2]
    pop {pc}
.thumb
sub_802FE4C:
    push {r7,lr}
    mov r0, r8
    push {r0}
    bl sub_80540BA
    mov r0, #1
    ldrh r1, [r5,#0x38]
    tst r1, r0
    beq loc_802FE70
    bl sub_8030714
    mov r7, r10
    ldrb r0, [r5,#0x16]
    ldr r4, [r7,#0x40]
    add r4, r4, r0
    ldrb r0, [r5,#0x1e]
    strb r0, [r4,#0x1d]
    b loc_802FE78
loc_802FE70:
    bl sub_80306E8
    bl sub_8030714
loc_802FE78:
    ldrb r6, [r5,#0xc]
    ldrb r7, [r5,#0x15]
    ldrb r0, [r5,#0x17]
    mov r8, r0
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    strb r6, [r5,#0xc]
    strb r7, [r5,#0x15]
    mov r0, r8
    strb r0, [r5,#0x17]
    mov r0, #0
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#2]
    pop {r0}
    mov r8, r0
    pop {r7,pc}
    .word unk_2026400
    .word 0xF00
// end of function sub_802FE4C

.thumb
sub_802FEA8:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #2
    ble loc_802FED4
    strb r0, [r5,#0x12]
    mov r0, #0x40 
    ldrb r1, [r5,#0x15]
    tst r0, r1
    bne loc_802FEC2
    orr r0, r1
    strb r0, [r5,#0x15]
    bl sub_8031650
loc_802FEC2:
    bl sub_802FF18
    bl sub_8030620
    bl sub_8030280
    bl sub_802FFC8
    pop {pc}
loc_802FED4:
    mov r1, #0x40 
    ldrb r0, [r5,#0x15]
    bic r0, r1
    strb r0, [r5,#0x15]
    pop {pc}
    .byte 0, 0
// end of function sub_802FEA8

.thumb
sub_802FEE0:
    push {lr}
    ldrb r0, [r5,#0x12]
    cmp r0, #0x20 
    bge loc_802FF0E
    add r0, #2
    strb r0, [r5,#0x12]
    mov r0, #0x20 
    ldrb r1, [r5,#0x15]
    tst r0, r1
    bne loc_802FEFC
    orr r0, r1
    strb r0, [r5,#0x15]
    bl sub_8031650
loc_802FEFC:
    bl sub_802FF18
    bl sub_8030620
    bl sub_8030280
    bl sub_802FFC8
    pop {pc}
loc_802FF0E:
    mov r1, #0x20 
    ldrb r0, [r5,#0x15]
    bic r0, r1
    strb r0, [r5,#0x15]
    pop {pc}
// end of function sub_802FEE0

.thumb
sub_802FF18:
    push {lr}
    push {r5}
    ldrb r0, [r5,#0x12]
    sub r0, #0x20 
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x802ff34-0x802ff24-4] // byte_86D3648
    mov r4, #0x3c 
    mov r5, #0x11
    bl sub_8001DDC
// end of function sub_802FF18

    pop {r5}
    pop {pc}
    .balign 4, 0x00
off_802FF34:    .word byte_86D3648
    push {lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    ldrh r1, [r7,#2]
    mov r0, #1
    and r0, r1
    beq loc_802FF62
    mov r0, #0xff
    lsl r0, r0, #8
    strh r0, [r5,#0x22]
    mov r0, #0x7e 
    bl f500_8000558
    ldr r0, [pc, #0x80301c0-0x802ff54-4] // dword_201C000
    ldrh r1, [r5,#0x24]
    mov r2, #0
    ldr r3, [pc, #0x8030278-0x802ff5a-2] // off_803027C
    ldr r3, [r3]
    mov lr, pc
    bx r3
loc_802FF62:
    mov r0, #0x20 
    ldrsh r4, [r5,r0]
    ldrh r3, [r5,#0x24]
    sub r3, #7
    ble loc_802FFA6
    mov r0, #0x40 
    and r0, r6
    beq loc_802FF7A
    tst r4, r4
    beq loc_802FF7A
    sub r4, #1
    b loc_802FFA6
loc_802FF7A:
    mov r0, #0x80
    and r0, r6
    beq loc_802FF88
    cmp r4, r3
    bge loc_802FF88
    add r4, #1
    b loc_802FFA6
loc_802FF88:
    mov r0, #0x80
    lsl r0, r0, #1
    and r0, r6
    beq loc_802FF98
    add r4, #7
    cmp r4, r3
    ble loc_802FFA6
    add r4, r3, #0
loc_802FF98:
    mov r0, #0x80
    lsl r0, r0, #2
    and r0, r6
    beq locret_802FFAE
    sub r4, #7
    bge loc_802FFA6
    mov r4, #0
loc_802FFA6:
    strh r4, [r5,#0x20]
    mov r0, #0x7d 
    bl f500_8000558
locret_802FFAE:
    pop {pc}
.thumb
sub_802FFB0:
    push {lr}
    mov r0, #1
    bl sub_80308B8
    mov r0, #0x2e 
    mov r1, #0x20 
    ldrh r2, [r5,#0x24]
    bl sub_8030764
    bl sub_8030A28
    pop {pc}
// end of function sub_802FFB0

.thumb
sub_802FFC8:
    push {lr}
    ldr r0, [pc, #0x8030100-0x802ffca-2] // =0x400
    str r0, [r5,#0x3c]
    ldrh r4, [r5,#0x20]
    ldr r6, [pc, #0x80301c0-0x802ffd0-4] // dword_201C000
    mov r7, #0
loc_802FFD4:
    mov r0, #0x20 
    mul r0, r4
    add r0, r0, r6
    ldrh r1, [r0]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r3, [r0,#0x14]
    lsr r3, r3, #0x10
    ldr r2, [r0,#8]
    lsr r2, r2, #0x10
    tst r1, r1
    beq loc_802FFF0
    tst r3, r3
    beq loc_803001A
loc_802FFF0:
    ldr r0, [pc, #0x80300f0-0x802fff0-4] // unk_20165E0
    bl sub_802EF4C
    ldr r0, [pc, #0x80300e8-0x802fff6-2] // unk_2016580
    bl sub_802F13C
    push {r2}
    ldr r0, [pc, #0x80300e0-0x802fffe-2] // unk_2016500
    mov r2, #0xc
    bl sub_802EFAC
    pop {r2}
    ldr r0, [pc, #0x80300dc-0x8030008-4] // unk_2016400
    bl sub_802F068
    ldr r0, [pc, #0x80300e4-0x803000e-2] // unk_2016540
    bl sub_802F104
    ldr r0, [pc, #0x80300ec-0x8030014-4] // unk_20165A0
    bl sub_802F168
loc_803001A:
    add r4, #1
    add r7, #1
    cmp r7, #7
    blt loc_802FFD4
    ldr r7, [pc, #0x80300f8-0x8030022-2] // =0xFFFFFFFF
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300e0-0x8030030-4] // unk_2016500
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
// end of function sub_802FFC8

    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #2
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300dc-0x803004a-2] // unk_2016400
    mov r4, #8
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xa
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300e4-0x8030064-4] // unk_2016540
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xc
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300e8-0x803007e-2] // unk_2016580
    mov r4, #1
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xd
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300ec-0x8030098-4] // unk_20165A0
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xf
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80300f0-0x80300b2-2] // unk_20165E0
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xc
    add r0, r0, r7
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x80300fc-0x80300cc-4] // dword_802F988+44
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
    pop {pc}
    .balign 4, 0x00
off_80300DC:    .word unk_2016400
off_80300E0:    .word unk_2016500
off_80300E4:    .word unk_2016540
off_80300E8:    .word unk_2016580
off_80300EC:    .word unk_20165A0
off_80300F0:    .word unk_20165E0
    .word 0xFFFF
dword_80300F8:    .word 0xFFFFFFFF
off_80300FC:    .word dword_802F988+0x2C
off_8030100:    .word 0x400
.thumb
sub_8030104:
    push {r5,lr}
    mov r0, r8
    push {r0}
    mov r0, #1
    ldr r4, [pc, #0x80301c0-0x803010c-4] // dword_201C000
loc_803010E:
    add r7, r0, #0
    push {r4}
    bl sub_8019010
    pop {r4}
    add r5, r0, #0
    mov r6, #0
loc_803011C:
    add r0, r7, #0
    ldrb r1, [r5,r6]
    cmp r1, #0xff
    beq loc_8030192
    push {r0,r1,r4}
    bl sub_80191FC
    add r2, r0, #0
    mov r8, r3
    pop {r0,r1,r4}
    ldrb r3, [r2]
    tst r3, r3
    beq loc_8030192
    push {r0-r4}
    add r0, r2, #0
    mov r1, r8
    bl sub_80430E8
    mov r8, r0
    pop {r0-r4}
    lsl r2, r1, #9
    orr r2, r0
    push {r6}
    push {r0-r4,r7}
    bl sub_8031660
    add r6, r0, #0
    pop {r0-r4,r7}
    lsl r6, r6, #0x10
    orr r6, r2
    str r6, [r4,#0xc]
    pop {r6}
    ldrh r0, [r5,#0x1c]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4]
    mov r0, r8
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#0x1c]
    ldrh r0, [r5,#0x18]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#4]
    ldrb r0, [r5,#7]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#0x10]
    ldrb r0, [r5,#6]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#0x18]
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r4,#0x14]
    lsl r1, r1, #0x10
    orr r1, r2
    str r1, [r4,#8]
    add r4, #0x20 
loc_8030192:
    add r6, #1
    cmp r6, #4
    blt loc_803011C
    add r0, r7, #0
loc_803019A:
    add r0, #1
    cmp r0, #0xba
    ble loc_803010E
    cmp r0, #0xc8
    ble loc_803019A
    ldr r1, [pc, #0x80301cc-0x80301a4-4] // =0x118
    cmp r0, r1
    ble loc_803010E
    ldr r1, [pc, #0x80301d0-0x80301aa-2] // =0x12C
    cmp r0, r1
    ble loc_803019A
    ldr r1, [pc, #0x80301c8-0x80301b0-4] // =0x135
    cmp r0, r1
    ble loc_803010E
    ldr r0, [pc, #0x80301c0-0x80301b6-2] // dword_201C000
    sub r4, r4, r0
    pop {r0}
    mov r8, r0
    pop {r5,pc}
off_80301C0:    .word dword_201C000
    .word 0xF00
off_80301C8:    .word 0x138
off_80301CC:    .word 0x118
off_80301D0:    .word 0x12C
// end of function sub_8030104

.thumb
sub_80301D4:
    push {r6,r7,lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    ldrh r1, [r7,#2]
    mov r0, #1
    and r0, r1
    beq loc_80301FE
    mov r0, #0xff
    lsl r0, r0, #8
    strh r0, [r5,#0x28]
    mov r0, #0x7e 
    bl f500_8000558
    ldr r0, [pc, #0x803059c-0x80301f0-4] // dword_201A000
    mov r1, #0x1e
    mov r2, #5
    ldr r3, [pc, #0x8030278-0x80301f6-2] // off_803027C
    ldr r3, [r3]
    mov lr, pc
    bx r3
loc_80301FE:
    mov r0, #0x26 
    ldrsh r4, [r5,r0]
    mov r0, #0x40 
    and r0, r6
    beq loc_8030210
    tst r4, r4
    beq loc_8030210
    sub r4, #1
    b loc_803024E
loc_8030210:
    mov r0, #0x80
    and r0, r6
    beq loc_803021E
    cmp r4, #0x17
    bge loc_803021E
    add r4, #1
    b loc_803024E
loc_803021E:
    mov r0, #0x80
    lsl r0, r0, #1
    and r0, r6
    beq loc_8030238
    add r4, #7
    cmp r4, #0x17
    ble loc_803024E
    mov r0, #0x26 
    ldrsh r4, [r5,r0]
    cmp r4, #0x17
    beq loc_8030258
    mov r4, #0x17
    b loc_803024E
loc_8030238:
    mov r0, #0x80
    lsl r0, r0, #2
    and r0, r6
    beq locret_8030256
    sub r4, #7
    bge loc_803024E
    mov r0, #0x26 
    ldrsh r4, [r5,r0]
    tst r4, r4
    beq loc_8030258
    mov r4, #0
loc_803024E:
    strh r4, [r5,#0x26]
    mov r0, #0x7d 
    bl f500_8000558
locret_8030256:
    pop {r6,r7,pc}
loc_8030258:
    strh r4, [r5,#0x26]
    pop {r6,r7,pc}
// end of function sub_80301D4

.thumb
sub_803025C:
    push {r6,r7,lr}
    mov r0, #0
    bl sub_80308B8
    mov r0, #0x2c 
    mov r1, #0x26 
    mov r2, #0x1e
    bl sub_8030764
    bl sub_8030964
    bl sub_8030A28
    pop {r6,r7,pc}
off_8030278:    .word off_803027C
off_803027C:    .word loc_300658C+1
// end of function sub_803025C

.thumb
sub_8030280:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x3c]
    ldrh r4, [r5,#0x26]
    ldr r6, [pc, #0x803059c-0x8030288-4] // dword_201A000
    mov r7, #0
loc_803028C:
    mov r0, #0x20 
    mul r0, r4
    add r0, r0, r6
    ldrh r1, [r0]
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r3, [r0,#0x14]
    lsr r3, r3, #0x10
    ldr r2, [r0,#8]
    lsr r2, r2, #0x10
    ldr r0, [pc, #0x80303bc-0x80302a0-4] // unk_20161E0
    bl sub_802EF4C
    ldr r0, [pc, #0x80303b4-0x80302a6-2] // unk_2016180
    bl sub_802F13C
    push {r2}
    ldr r0, [pc, #0x80303ac-0x80302ae-2] // unk_2016100
    mov r2, #0
    bl sub_802EFAC
    pop {r2}
    ldr r0, [pc, #0x80303a8-0x80302b8-4] // unk_2016000
    bl sub_802F068
    ldr r0, [pc, #0x80303b0-0x80302be-2] // unk_2016140
    bl sub_802F104
    ldr r0, [pc, #0x80303b8-0x80302c4-4] // unk_20161A0
    bl sub_802F168
    add r4, #1
    add r7, #1
    cmp r7, #7
    blt loc_803028C
    ldr r7, [pc, #0x80303c8-0x80302d2-2] // =0xFFFFFFED
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80303ac-0x80302e0-4] // unk_2016100
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
// end of function sub_8030280

    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #2
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80303a8-0x80302fa-2] // unk_2016000
    mov r4, #8
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xa
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80303b0-0x8030314-4] // unk_2016140
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xc
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80303b4-0x803032e-2] // unk_2016180
    mov r4, #1
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #0xd
    add r0, r0, r7
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x80303b8-0x8030348-4] // unk_20161A0
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r1, #0x12
    ldrsb r0, [r5,r1]
    add r0, #1
    add r0, r0, r7
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x80303cc-0x8030362-2] // dword_802F988+12
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
    ldrb r1, [r5,#0x11]
    mov r0, #0x80
    tst r0, r1
    beq locret_80303A6
    ldrh r0, [r5,#0x26]
    ldrh r1, [r5,#0x28]
    sub r1, r1, r0
    mov r2, #0x14
    ldrsb r0, [r5,r2]
    add r0, r0, r1
    strb r0, [r5,#0x14]
    blt locret_80303A6
    cmp r0, #7
    bge locret_80303A6
    lsl r0, r0, #1
    mov r1, #4
    add r1, r1, r0
    push {r5}
    mov r2, #0x12
    ldrsb r0, [r5,r2]
    add r0, r0, r7
    mov r2, #3
    ldr r3, [pc, #0x80303c4-0x803039a-2] // dword_86DDA4C
    mov r4, #0x10
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
locret_80303A6:
    pop {pc}
off_80303A8:    .word unk_2016000
off_80303AC:    .word unk_2016100
off_80303B0:    .word unk_2016140
off_80303B4:    .word unk_2016180
off_80303B8:    .word unk_20161A0
off_80303BC:    .word unk_20161E0
    .word dword_2016C00
off_80303C4:    .word dword_86DDA4C
dword_80303C8:    .word 0xFFFFFFED
off_80303CC:    .word dword_802F988+0xC
.thumb
sub_80303D0:
    push {r5,lr}
    ldr r0, [pc, #0x80305a0-0x80303d2-2] // dword_2027520
    ldr r1, [pc, #0x80304a4-0x80303d4-4] // =0xFFFF
    str r1, [r0]
    ldr r0, [pc, #0x8030598-0x80303d8-4] // dword_2027400
    str r1, [r0]
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    ldrb r0, [r5,#0xc]
    mov r12, r0
    mov r0, #0
    ldr r4, [pc, #0x803059c-0x80303ea-2] // dword_201A000
loc_80303EC:
    mov r5, r10
    ldr r5, [r5,#0x4c]
    mov r1, r12
    mov r2, #0x3c 
    mul r1, r2
    add r5, r5, r1
    add r7, r0, #0
    lsl r1, r0, #1
    add r5, r5, r1
    ldrh r3, [r5]
    lsr r2, r3, #9
    mov r0, #1
    lsl r0, r0, #8
    mov r1, #0xff
    orr r0, r1
    and r0, r3
    mov r8, r0
    mov r9, r2
    push {r2,r4}
    bl sub_8019010
    pop {r2,r4}
    add r5, r0, #0
    mov r6, #0
loc_803041C:
    ldrb r1, [r5,r6]
    cmp r1, r2
    beq loc_803043C
    add r6, #1
    cmp r6, #4
    blt loc_803041C
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r5}
    mov r0, #0x10
    ldrb r1, [r5,#0x11]
    orr r1, r0
    strb r1, [r5,#0x11]
    pop {pc}
loc_803043C:
    mov r0, r8
    mov r1, r9
    lsl r2, r1, #9
    orr r2, r0
    push {r0-r4,r7}
    bl sub_8031660
    add r6, r0, #0
    pop {r0-r4,r7}
    lsl r6, r6, #0x10
    orr r6, r2
    str r6, [r4,#0xc]
    ldrh r0, [r5,#0x1c]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4]
    ldrh r0, [r5,#0x18]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#4]
    ldrb r0, [r5,#7]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#0x10]
    ldrb r0, [r5,#6]
    lsl r0, r0, #0x10
    orr r0, r2
    str r0, [r4,#0x18]
    lsl r1, r1, #0x10
    orr r1, r2
    str r1, [r4,#8]
    lsl r1, r1, #0x10
    mov r0, #1
    orr r0, r2
    str r0, [r4,#0x14]
    bl sub_80304A8
    bl sub_8030500
    add r4, #0x20 
    add r0, r7, #0
    add r0, #1
    cmp r0, #0x1e
    blt loc_80303EC
    bl sub_8030560
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r5,pc}
    .balign 4, 0x00
dword_80304A4:    .word 0xFFFF
// end of function sub_80303D0

.thumb
sub_80304A8:
    push {r2,r4,r5,lr}
    mov r0, r8
    push {r0}
    mov r5, r10
    ldr r5, [r5,#0x34]
    mov r6, #0
    ldr r4, [pc, #0x8030598-0x80304b4-4] // dword_2027400
    mov r8, r4
    tst r7, r7
    bne loc_80304D6
loc_80304BC:
    mov r3, #1
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r4,r6]
    ldrb r0, [r5,#0xe]
    add r0, #1
    strb r0, [r5,#0xe]
    ldr r3, [pc, #0x80305a4-0x80304ca-2] // =0xFFFF
    add r6, #4
    str r3, [r4,r6]
    pop {r0}
    mov r8, r0
    pop {r2,r4,r5,pc}
loc_80304D6:
    mov r4, r8
    ldr r0, [r4,r6]
    lsl r1, r0, #0x10
    lsr r1, r1, #0x10
    ldr r3, [pc, #0x80305a4-0x80304de-2] // =0xFFFF
    cmp r3, r1
    beq loc_80304BC
    cmp r1, r2
    bne loc_80304F4
    lsr r3, r0, #0x10
    add r3, #1
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r4,r6]
    b loc_80304F8
loc_80304F4:
    add r6, #4
    b loc_80304D6
loc_80304F8:
    pop {r0}
    mov r8, r0
    pop {r2,r4,r5,pc}
    .byte 0, 0
// end of function sub_80304A8

.thumb
sub_8030500:
    push {r2,r4,r5,lr}
    mov r0, r8
    push {r0}
    ldr r0, [pc, #0x803055c-0x8030506-2] // =0x1FC
    and r2, r0
    mov r5, r10
    ldr r5, [r5,#0x34]
    mov r6, #0
    ldr r4, [pc, #0x80305a0-0x8030510-4] // dword_2027520
    mov r8, r4
    tst r7, r7
    bne loc_8030532
loc_8030518:
    mov r3, #1
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r4,r6]
    ldrb r0, [r5,#0xf]
    add r0, #1
    strb r0, [r5,#0xf]
    ldr r3, [pc, #0x80305a4-0x8030526-2] // =0xFFFF
    add r6, #4
    str r3, [r4,r6]
    pop {r0}
    mov r8, r0
    pop {r2,r4,r5,pc}
loc_8030532:
    mov r4, r8
    ldr r0, [r4,r6]
    lsl r1, r0, #0x10
    lsr r1, r1, #0x10
    ldr r3, [pc, #0x80305a4-0x803053a-2] // =0xFFFF
    cmp r3, r1
    beq loc_8030518
    cmp r1, r2
    bne loc_8030550
    lsr r3, r0, #0x10
    add r3, #1
    lsl r3, r3, #0x10
    orr r3, r2
    str r3, [r4,r6]
    b loc_8030554
loc_8030550:
    add r6, #4
    b loc_8030532
loc_8030554:
    pop {r0}
    mov r8, r0
    pop {r2,r4,r5,pc}
    .balign 4, 0x00
dword_803055C:    .word 0x1FF
// end of function sub_8030500

.thumb
sub_8030560:
    push {r5-r7,lr}
    ldr r4, [pc, #0x803059c-0x8030562-2] // dword_201A000
    ldr r3, [pc, #0x8030598-0x8030564-4] // dword_2027400
    mov r2, #0
loc_8030568:
    mov r6, #0
    ldr r7, [r3,r2]
    ldr r1, [pc, #0x80305a4-0x803056c-4] // =0xFFFF
    cmp r7, r1
    beq locret_8030594
    lsl r0, r7, #0x10
    lsr r0, r0, #0x10
loc_8030576:
    ldr r1, [r4,r6]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    cmp r0, r1
    bne loc_8030588
    mov r1, #0x14
    add r1, r1, r6
    add r5, r4, r1
    str r7, [r5]
loc_8030588:
    add r6, #0x20 
    ldr r1, [pc, #0x80305a8-0x803058a-2] // =0x3C0
    cmp r6, r1
    blt loc_8030576
    add r2, #4
    b loc_8030568
locret_8030594:
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8030598:    .word dword_2027400
off_803059C:    .word dword_201A000
off_80305A0:    .word dword_2027520
dword_80305A4:    .word 0xFFFF
off_80305A8:    .word 0x3C0
// end of function sub_8030560

.thumb
sub_80305AC:
    push {r5-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x50]
    ldr r1, [pc, #0x8030614-0x80305b2-2] // unk_2026400
    ldr r2, [pc, #0x8030618-0x80305b4-4] // =0xF00
    bl f900_80009A0
    mov r6, #0
loc_80305BC:
    mov r0, r10
    ldr r0, [r0,#0x4c]
    mov r1, #2
    mul r1, r6
    ldrh r3, [r0,r1]
    lsr r2, r3, #9
    ldr r1, [pc, #0x803061c-0x80305c8-4] // =0x1FC
    and r1, r3
    push {r1}
    push {r2}
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8019010
    add r7, r0, #0
    pop {r2}
    mov r4, #0
loc_80305DE:
    ldrb r3, [r7,r4]
    cmp r3, r2
    beq loc_80305EE
    add r4, #1
    cmp r4, #3
    ble loc_80305DE
    pop {r1}
    b loc_8030602
loc_80305EE:
    pop {r1}
    mov r0, #0xc
    mul r0, r1
    add r0, r0, r4
    mov r1, r10
    ldr r1, [r1,#0x50]
    add r0, r0, r1
    ldrb r4, [r0]
    sub r4, #1
    strb r4, [r0]
loc_8030602:
    mov r4, r10
    ldr r4, [r4,#0x44]
    ldrb r4, [r4,#6]
    mov r1, #0x1e
    mul r1, r4
    add r6, #1
    cmp r6, r1
    blt loc_80305BC
    pop {r5-r7,pc}
off_8030614:    .word unk_2026400
off_8030618:    .word 0xF00
dword_803061C:    .word 0x1FF
// end of function sub_80305AC

.thumb
sub_8030620:
    push {r5,lr}
    ldrb r0, [r5,#0x11]
    mov r1, #0x80
    tst r0, r1
    beq loc_8030646
    mov r0, #0x14
    ldrsb r1, [r5,r0]
    cmp r1, #7
    bge loc_8030646
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
loc_8030646:
    mov r0, #0
    mov r1, #4
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0xe
    bl sub_8001DF8
// end of function sub_8030620

    mov r0, #0
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r5,pc}
.thumb
sub_8030668:
    push {r5-r7,lr}
    ldr r0, [pc, #0x80306ac-0x803066a-2] // =0x135
loc_803066C:
    add r7, r0, #0
    bl sub_8019010
    add r5, r0, #0
    ldrb r0, [r5,#9]
    mov r1, #0x40 
    tst r0, r1
    beq loc_80306A0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    tst r0, r1
    bne loc_803068A
    mov r1, #8
    tst r0, r1
    bne loc_80306A0
loc_803068A:
    mov r6, #3
loc_803068C:
    add r0, r7, #0
    ldrb r1, [r5,r6]
    cmp r1, #0xff
    beq loc_803069A
    mov r2, #0x1e
    bl dword_801907C+2
loc_803069A:
    sub r6, #1
    cmp r6, #0
    bge loc_803068C
loc_80306A0:
    add r0, r7, #0
    sub r0, #1
    cmp r0, #1
    bge loc_803066C
    pop {r5-r7,pc}
    .balign 4, 0x00
off_80306AC:    .word 0x138
// end of function sub_8030668

loc_80306B0:
    push {lr}
    bl sub_8005B5C
    beq locret_80306D8
    ldrb r0, [r5,#0x11]
    mov r1, #4
    tst r0, r1
    bne locret_80306D8
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    bne locret_80306D8
    ldr r0, [pc, #0x80306dc-0x80306c8-4] // off_80306E0
    ldrb r1, [r5,#0x13]
    cmp r1, #0xff
    beq locret_80306D8
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_80306D8:
    pop {pc}
    .balign 4, 0x00
off_80306DC:    .word off_80306E0
off_80306E0:    .word sub_803025C+1
    .word sub_802FFB0+1
.thumb
sub_80306E8:
    push {lr}
    ldrb r0, [r5,#0xc]
    mov r1, #0x3c 
    mul r1, r0
    mov r6, r10
    ldr r6, [r6,#0x4c]
    add r6, r6, r1
    ldr r4, [pc, #0x803070c-0x80306f6-2] // dword_201A000
    mov r3, #0
    mov r2, #0
loc_80306FC:
    ldrh r0, [r4,r3]
    strh r0, [r6,r2]
    add r2, #2
    add r3, #0x20 
    ldr r1, [pc, #0x8030710-0x8030704-4] // =0x3C0
    cmp r3, r1
    blt loc_80306FC
    pop {pc}
off_803070C:    .word dword_201A000
off_8030710:    .word 0x3C0
// end of function sub_80306E8

.thumb
sub_8030714:
    push {r6,lr}
    ldr r0, [pc, #0x8030754-0x8030716-2] // unk_2026400
    mov r1, r10
    ldr r1, [r1,#0x50]
    ldr r2, [pc, #0x8030758-0x803071c-4] // =0xF00
    bl f900_80009A0
    ldr r6, [pc, #0x803075c-0x8030722-2] // dword_201C000
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_8030752
    sub r0, #1
    mov r1, #0x20 
    mul r0, r1
    add r6, r6, r0
loc_8030732:
    ldr r1, [r6]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r2, [pc, #0x8030760-0x8030738-4] // =0x1FC
    add r0, r1, #0
    and r0, r2
    lsr r1, r1, #9
    bl sub_80191FC
    add r1, r3, #0
    bl sub_80430D4
    sub r6, #0x20 
    ldr r1, [pc, #0x803075c-0x803074c-4] // dword_201C000
    cmp r6, r1
    bge loc_8030732
locret_8030752:
    pop {r6,pc}
off_8030754:    .word unk_2026400
off_8030758:    .word 0xF00
off_803075C:    .word dword_201C000
dword_8030760:    .word 0x1FF
// end of function sub_8030714

.thumb
sub_8030764:
    push {r6,r7,lr}
    mov r3, r8
    push {r3}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    add r7, r0, #0
    add r4, r1, #0
    mov r8, r2
    ldrsh r1, [r5,r7]
    mov r0, #0x40 
    and r0, r6
    beq loc_80307A0
    sub r1, #1
    blt loc_8030856
    strh r1, [r5,r7]
    push {r1}
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_803085C
    pop {r1}
    ldrh r0, [r5,r4]
    cmp r0, r1
    ble loc_8030856
    sub r0, #1
    blt loc_8030856
    strh r0, [r5,r4]
    b loc_8030856
loc_80307A0:
    mov r0, #0x80
    and r0, r6
    beq loc_80307D4
    add r1, #1
    mov r0, r8
    cmp r1, r0
    bge loc_8030856
    strh r1, [r5,r7]
    push {r1}
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_803085C
    pop {r1}
    ldrh r0, [r5,r4]
    sub r1, r1, r0
    cmp r1, #7
    blt loc_8030856
    add r0, #1
    mov r1, r8
    sub r1, #7
    cmp r0, r1
    bgt loc_8030856
    strh r0, [r5,r4]
    b loc_8030856
loc_80307D4:
    mov r0, #0x80
    lsl r0, r0, #1
    and r0, r6
    beq loc_8030820
    ldrsh r1, [r5,r4]
    ldrh r0, [r5,r7]
    sub r2, r0, r1
    mov r0, r8
    cmp r0, #7
    blt loc_8030856
    sub r0, #1
    cmp r1, r0
    bge loc_8030856
    add r1, #7
    mov r0, r8
    sub r0, #8
    cmp r1, r0
    blt loc_80307FC
    mov r1, r8
    sub r1, #7
loc_80307FC:
    push {r1}
    ldrh r0, [r5,r4]
    cmp r0, r1
    bne loc_803080C
    ldrh r0, [r5,r7]
    add r1, r1, r2
    cmp r0, r1
    beq loc_8030816
loc_803080C:
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_803085C
loc_8030816:
    pop {r1}
    strh r1, [r5,r4]
    add r1, r1, r2
    strh r1, [r5,r7]
    b loc_8030856
loc_8030820:
    mov r0, #0x80
    lsl r0, r0, #2
    and r0, r6
    beq loc_8030856
    ldrsh r1, [r5,r4]
    ldrh r0, [r5,r7]
    sub r2, r0, r1
    sub r1, #7
    bge loc_8030834
    mov r1, #0
loc_8030834:
    push {r1}
    ldrh r0, [r5,r4]
    cmp r0, r1
    bne loc_8030844
    ldrh r0, [r5,r7]
    add r1, r1, r2
    cmp r0, r1
    beq loc_803084E
loc_8030844:
    mov r0, #0x7d 
    bl f500_8000558
    bl sub_803085C
loc_803084E:
    pop {r1}
    strh r1, [r5,r4]
    add r1, r1, r2
    strh r1, [r5,r7]
loc_8030856:
    pop {r3}
    mov r8, r3
    pop {r6,r7,pc}
// end of function sub_8030764

.thumb
sub_803085C:
    push {r0-r3,lr}
    mov r0, #0xd
    bl sub_805411A
    beq loc_803086A
    mov r0, #4
    strb r0, [r1,#9]
loc_803086A:
    mov r0, #0xe
    bl sub_805411A
    beq loc_8030876
    mov r0, #4
    strb r0, [r1,#9]
loc_8030876:
    mov r0, #0xf
    bl sub_805411A
    beq locret_8030882
    mov r0, #4
    strb r0, [r1,#9]
locret_8030882:
    pop {r0-r3,pc}
// end of function sub_803085C

    push {r6,r7,lr}
    add r7, r0, #0
    add r6, r3, #0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r3, [r0,#4]
    mov r0, #1
    and r0, r3
    beq locret_80308A8
    mov r0, #0xff
    lsl r0, r0, #8
    strh r0, [r5,r7]
    add r0, r6, #0
    ldr r3, [pc, #0x80308ac-0x803089e-2] // loc_80308B0
    lsl r4, r4, #2
    ldr r3, [r3,r4]
    mov lr, pc
    bx r3
locret_80308A8:
    pop {r6,r7,pc}
    .balign 4, 0x00
off_80308AC:    .word loc_80308B0
loc_80308B0:
    str r5, [r1,#0x58]
    lsl r0, r0, #0xc
    str r5, [r0,#0x64]
    lsl r0, r0, #0xc
.thumb
sub_80308B8:
    push {r7,lr}
    add r7, r0, #0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r3, [r0,#2]
    mov r0, #2
    and r0, r3
    beq loc_80308F4
    mov r0, #0x60 
    ldrb r1, [r5,#0x11]
    tst r0, r1
    beq loc_80308F4
    ldrb r0, [r5,#0x15]
    mov r1, #0x80
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, #6
    bl sub_805411A
    beq locret_8030958
    mov r0, #0
    strb r0, [r1,#5]
    mov r0, #0x60 
    ldrb r1, [r5,#0x11]
    bic r1, r0
    strb r1, [r5,#0x11]
    mov r0, #0x7f
    bl f500_8000558
    b locret_8030958
loc_80308F4:
    mov r0, #1
    and r0, r3
    beq locret_8030958
    mov r0, #6
    bl sub_805411A
    beq locret_8030958
    ldrb r0, [r1,#5]
    tst r0, r0
    beq loc_803092C
    mov r0, #0
    strb r0, [r1,#5]
    mov r0, #0x60 
    ldrb r1, [r5,#0x11]
    bic r1, r0
    strb r1, [r5,#0x11]
    tst r7, r7
    bne loc_803091C
    ldrh r0, [r5,#0x2c]
    b loc_8030924
loc_803091C:
    ldrh r0, [r5,#0x2e]
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
loc_8030924:
    strh r0, [r5,#0x32]
    bl sub_8030A94
    b locret_8030958
loc_803092C:
    push {r1}
    mov r0, #0x7e 
    bl f500_8000558
    pop {r1}
    mov r0, #1
    strb r0, [r1,#5]
    strb r7, [r1,#6]
    ldr r0, [pc, #0x803095c-0x803093c-4] // dword_8030960
    ldrb r0, [r0,r7]
    ldrb r1, [r5,#0x11]
    orr r1, r0
    strb r1, [r5,#0x11]
    tst r7, r7
    bne loc_803094E
    ldrh r0, [r5,#0x2c]
    b loc_8030956
loc_803094E:
    ldrh r0, [r5,#0x2e]
    mov r1, #0x80
    lsl r1, r1, #8
    orr r0, r1
loc_8030956:
    strh r0, [r5,#0x30]
locret_8030958:
    pop {r7,pc}
    .balign 4, 0x00
off_803095C:    .word dword_8030960
dword_8030960:    .word 0x4020
// end of function sub_80308B8

.thumb
sub_8030964:
    push {lr}
    mov r1, #0x64 
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne locret_8030A26
    mov r1, #0x60 
    ldrb r0, [r5,#0x15]
    tst r0, r1
    bne locret_8030A26
    mov r7, r10
    ldr r4, [r7,#4]
    ldrh r6, [r4,#2]
    mov r0, #4
    and r0, r6
    beq locret_8030A26
    ldrb r0, [r5,#0x16]
    ldr r4, [r7,#0x40]
    add r4, r4, r0
    ldrb r0, [r4,#0x1d]
    ldrh r1, [r5,#0x2c]
    cmp r0, r1
    beq loc_80309FA
    ldrb r0, [r5,#0x16]
    ldr r4, [r7,#0x40]
    add r4, r4, r0
    ldr r7, [pc, #0x8030b84-0x8030996-2] // dword_201A000
    ldrh r0, [r5,#0x2c]
    mov r1, #0x20 
    mul r1, r0
    add r7, r7, r1
    ldrh r0, [r7]
    tst r0, r0
    beq locret_8030A26
    ldr r0, [r7,#0x18]
    lsr r0, r0, #0x10
    ldrb r2, [r5,#0x1b]
    cmp r0, r2
    ble loc_80309B8
    mov r0, #0x1c
    bl sub_80312F4
    b locret_8030A26
loc_80309B8:
    mov r1, #1
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    ldrb r0, [r4,#0x1d]
    cmp r0, #0xff
    beq loc_80309E0
    push {r4,r5}
    ldrb r1, [r5,#0x14]
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r4,r5}
loc_80309E0:
    ldrh r0, [r5,#0x2c]
    strb r0, [r4,#0x1d]
    ldrh r2, [r5,#0x26]
    sub r0, r0, r2
    strb r0, [r5,#0x14]
    ldrb r0, [r5,#0x11]
    mov r1, #0x80
    orr r0, r1
    strb r0, [r5,#0x11]
    mov r0, #0x7e 
    bl f500_8000558
    b locret_8030A26
loc_80309FA:
    mov r0, #0xff
    strb r0, [r4,#0x1d]
    push {r5}
    ldrb r1, [r5,#0x14]
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r5}
    ldrb r0, [r5,#0x11]
    mov r1, #0x80
    bic r0, r1
    strb r0, [r5,#0x11]
    mov r0, #0x7f
    bl f500_8000558
locret_8030A26:
    pop {pc}
// end of function sub_8030964

.thumb
sub_8030A28:
    push {lr}
    mov r1, #0x64 
    ldrb r0, [r5,#0x11]
    tst r0, r1
    bne locret_8030A90
    mov r1, #0x60 
    ldrb r0, [r5,#0x15]
    tst r0, r1
    bne locret_8030A90
    mov r7, r10
    ldr r4, [r7,#4]
    ldrh r6, [r4,#2]
    mov r0, #8
    and r0, r6
    bne loc_8030A5A
    mov r0, #2
    and r0, r6
    beq locret_8030A90
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    beq locret_8030A90
    mov r1, #0x80
    orr r0, r1
    strb r0, [r5,#0x15]
loc_8030A5A:
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    beq loc_8030A6E
    bic r0, r1
    strb r0, [r5,#0x15]
    mov r0, #0x7f
    bl f500_8000558
    b locret_8030A90
loc_8030A6E:
    mov r0, #0
    strb r0, [r5,#0x1a]
    mov r1, #9
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, #0x13
    bl sub_805411A
    push {r5}
    add r5, r1, #0
    bl sub_8105A04
    pop {r5}
    mov r0, #0x7e 
    bl f500_8000558
locret_8030A90:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8030A28

.thumb
sub_8030A94:
    push {r6,r7,lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1}
    ldrh r0, [r5,#0x30]
    mov r8, r0
    mov r2, r8
    ldrh r0, [r5,#0x32]
    mov r9, r0
    mov r3, r9
    cmp r2, r3
    bne loc_8030ABC
    bl sub_8030E44
    lsr r0, r2, #0xf
    tst r0, r0
    bne loc_8030B70
    bl sub_8030D6C
    b loc_8030AE6
loc_8030ABC:
    lsr r0, r2, #0xf
    lsr r1, r3, #0xf
    eor r0, r1
    tst r0, r0
    beq loc_8030B00
    bl sub_8030B8C
    bl sub_8031614
    beq loc_8030AD8
    mov r0, #0x69 
    bl f500_8000558
    b loc_8030B70
loc_8030AD8:
    mov r0, #0x7e 
    bl f500_8000558
    bl sub_8030CB0
    bl sub_803110C
loc_8030AE6:
    lsr r0, r2, #0xf
    tst r0, r0
    beq loc_8030AEE
    add r2, r3, #0
loc_8030AEE:
    ldr r0, [pc, #0x8030b88-0x8030aee-2] // unk_2027500
    ldr r1, [pc, #0x8030b84-0x8030af0-4] // dword_201A000
    mov r4, #0x20 
    mul r4, r2
    add r1, r1, r4
    mov r2, #0x20 
    bl f900_80009A0
    b loc_8030B70
loc_8030B00:
    push {r1}
    mov r0, #0x7e 
    bl f500_8000558
    pop {r1}
    mov r0, r8
    lsr r1, r0, #0xf
    tst r1, r1
    beq loc_8030B20
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, [pc, #0x8030b80-0x8030b16-2] // dword_201C000
    mov r2, #0x20 
    mul r0, r2
    add r6, r0, r1
    b loc_8030B2C
loc_8030B20:
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, [pc, #0x8030b84-0x8030b24-4] // dword_201A000
    mov r2, #0x20 
    mul r0, r2
    add r6, r0, r1
loc_8030B2C:
    mov r0, r9
    lsr r1, r0, #0xf
    tst r1, r1
    beq loc_8030B42
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, [pc, #0x8030b80-0x8030b38-4] // dword_201C000
    mov r2, #0x20 
    mul r0, r2
    add r7, r0, r1
    b loc_8030B52
loc_8030B42:
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, [pc, #0x8030b84-0x8030b46-2] // dword_201A000
    mov r2, #0x20 
    mul r0, r2
    add r7, r0, r1
    bl sub_8031588
loc_8030B52:
    add r0, r6, #0
    ldr r1, [pc, #0x8030b88-0x8030b54-4] // unk_2027500
    mov r2, #0x20 
    bl f900_80009A0
    add r0, r7, #0
    add r1, r6, #0
    mov r2, #0x20 
    bl f900_80009A0
    ldr r0, [pc, #0x8030b88-0x8030b66-2] // unk_2027500
    add r1, r7, #0
    mov r2, #0x20 
    bl f900_80009A0
loc_8030B70:
    bl sub_8030280
// end of function sub_8030A94

    bl sub_802FFC8
    pop {r0,r1}
    mov r8, r0
    mov r9, r1
    pop {r6,r7,pc}
off_8030B80:    .word dword_201C000
off_8030B84:    .word dword_201A000
off_8030B88:    .word unk_2027500
.thumb
sub_8030B8C:
    push {r2,r3,r7,lr}
    push {r0-r7}
    ldr r0, [pc, #0x8030c3c-0x8030b90-4] // unk_2027500
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
    pop {r0-r7}
    mov r0, r8
    mov r1, r9
    mov r4, r12
    push {r0,r1,r4}
    mov r8, r2
    mov r9, r3
    bl sub_803131C
    bne loc_8030C2A
    mov r7, #1
loc_8030BB0:
    lsr r0, r2, #0xf
    tst r0, r0
    bne loc_8030BD2
    lsl r2, r2, #1
    lsr r2, r2, #1
    ldr r0, [pc, #0x8030c38-0x8030bba-2] // dword_201A000
    mov r1, #0x20 
    mul r1, r2
    add r6, r0, r1
    mov r4, #0xff
    lsl r1, r4, #8
    orr r4, r1
    bl sub_8030EC4
    bl sub_8030F24
    b loc_8030C24
loc_8030BD2:
    lsl r2, r2, #0x11
    lsr r2, r2, #0x11
    mov r12, r2
    ldr r0, [pc, #0x8030c40-0x8030bd8-4] // dword_201C000
    mov r1, #0x20 
    mul r1, r2
    add r6, r0, r1
    ldrh r0, [r6]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq loc_8030C24
    ldr r0, [r6,#0x14]
    lsr r1, r0, #0x10
    sub r1, #1
    lsl r1, r1, #0x10
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    orr r0, r1
    str r0, [r6,#0x14]
    bl sub_8030FC4
    bl sub_8031014
    push {r0-r7}
    add r0, r6, #0
    ldr r1, [pc, #0x8030c3c-0x8030c06-2] // unk_2027500
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0-r7}
    tst r1, r1
    bne loc_8030C24
    ldrh r0, [r5,#0x24]
    sub r0, #1
    strh r0, [r5,#0x24]
    add r0, r6, #0
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
loc_8030C24:
    mov r2, r9
    sub r7, #1
    bge loc_8030BB0
loc_8030C2A:
    pop {r0,r1,r4}
    mov r8, r0
    mov r9, r1
    mov r12, r4
    pop {r2,r3,r7,pc}
    .word dword_2027400
off_8030C38:    .word dword_201A000
off_8030C3C:    .word unk_2027500
off_8030C40:    .word dword_201C000
// end of function sub_8030B8C

.thumb
sub_8030C44:
    push {r0,r2,r3,r7,lr}
    push {r0-r7}
    ldr r0, [pc, #0x8030ca8-0x8030c48-4] // unk_2027500
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
    pop {r0-r7}
    mov r0, r8
    mov r1, r9
    mov r4, r12
    push {r0,r1,r4}
    mov r8, r2
    mov r9, r3
    lsl r2, r2, #0x11
    lsr r2, r2, #0x11
    mov r12, r2
    ldr r0, [pc, #0x8030cac-0x8030c66-2] // dword_201C000
    mov r1, #0x20 
    mul r1, r2
    add r6, r0, r1
    ldrh r0, [r6]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq loc_8030C94
    bl sub_803131C
    bne loc_8030C94
    bl sub_8030FC4
    bl sub_8031014
    push {r0-r7}
    add r0, r6, #0
    ldr r1, [pc, #0x8030ca8-0x8030c8a-2] // unk_2027500
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0-r7}
loc_8030C94:
    pop {r0,r1,r4}
    mov r8, r0
    mov r9, r1
    mov r12, r4
    pop {r0,r2,r3,r7,pc}
    .byte 0, 0
    .word dword_2027400
    .word dword_201A000
off_8030CA8:    .word unk_2027500
off_8030CAC:    .word dword_201C000
// end of function sub_8030C44

.thumb
sub_8030CB0:
    push {r2,r3,r5,r7,lr}
    mov r0, r8
    mov r1, r9
    mov r4, r12
    push {r0,r1,r4}
    mov r7, #1
    lsr r0, r2, #0xf
    tst r0, r0
    beq loc_8030CC8
    add r0, r2, #0
    add r2, r3, #0
    add r3, r0, #0
loc_8030CC8:
    lsl r2, r2, #0x11
    lsr r2, r2, #0x11
    ldr r1, [pc, #0x8030d5c-0x8030ccc-4] // dword_201A000
    mov r0, #0x20 
    mul r0, r2
    add r1, r1, r0
    ldrh r0, [r1]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq loc_8030D4C
    mov r8, r0
    ldr r0, [r1,#8]
    lsr r1, r0, #0x10
    mov r9, r1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    mov r2, #0
    ldr r6, [pc, #0x8030d64-0x8030cec-4] // dword_201C000
loc_8030CEE:
    mov r1, #0x20 
    mul r1, r2
    add r1, r1, r6
    ldr r4, [r1]
    lsl r4, r4, #0x10
    lsr r4, r4, #0x10
    cmp r4, r0
    bne loc_8030D10
    ldr r0, [r1,#0x14]
    lsr r2, r0, #0x10
    add r2, #1
    lsl r2, r2, #0x10
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    orr r0, r2
    str r0, [r1,#0x14]
    b loc_8030D4C
loc_8030D10:
    add r2, #1
    ldrh r4, [r5,#0x24]
    cmp r2, r4
    ble loc_8030CEE
    ldrh r4, [r5,#0x24]
    add r4, #1
    strh r4, [r5,#0x24]
    lsl r4, r3, #0x11
    lsr r4, r4, #0x11
    mov r6, #0x20 
    mul r6, r4
    ldr r2, [pc, #0x8030d64-0x8030d26-2] // dword_201C000
    add r6, r6, r2
    push {r6}
    ldr r6, [r6,#0x14]
    lsr r6, r6, #0x10
    tst r6, r6
    pop {r6}
    beq loc_8030D48
    ldrh r4, [r5,#0x24]
    sub r4, #1
    add r3, r4, #0
    lsl r4, r3, #0x11
    lsr r4, r4, #0x11
    mov r6, #0x20 
    mul r6, r4
    ldr r2, [pc, #0x8030d64-0x8030d44-4] // dword_201C000
    add r6, r6, r2
loc_8030D48:
    bl sub_8030DF8
loc_8030D4C:
    pop {r0,r1,r4}
    mov r2, r12
    mov r8, r0
    mov r9, r1
    mov r12, r4
    pop {r2,r3,r5,r7,pc}
    .word dword_2027400
off_8030D5C:    .word dword_201A000
    .word unk_2027500
off_8030D64:    .word dword_201C000
    .word dword_2027520
// end of function sub_8030CB0

.thumb
sub_8030D6C:
    push {r2,r3,r5,r7,lr}
    mov r0, r8
    mov r1, r9
    mov r4, r12
    push {r0,r1,r4}
    lsl r2, r2, #0x11
    lsr r2, r2, #0x11
    ldr r1, [pc, #0x8031064-0x8030d7a-2] // dword_201A000
    mov r0, #0x20 
    mul r0, r2
    add r1, r1, r0
    ldrh r0, [r1]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq loc_8030DEA
    push {r0}
    add r0, r2, #0
    bl sub_8031544
    pop {r0}
    mov r8, r0
    ldr r0, [r1,#0x14]
    lsr r0, r0, #0x10
    mov r12, r0
    ldr r0, [r1,#8]
    lsr r1, r0, #0x10
    mov r9, r1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    mov r2, #0
    ldr r6, [pc, #0x803106c-0x8030daa-2] // dword_201C000
loc_8030DAC:
    mov r1, #0x20 
    mul r1, r2
    add r1, r1, r6
    ldr r4, [r1]
    lsl r4, r4, #0x10
    lsr r4, r4, #0x10
    cmp r4, r0
    bne loc_8030DCE
    ldr r0, [r1,#0x14]
    lsr r2, r0, #0x10
    add r2, #1
    lsl r2, r2, #0x10
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    orr r0, r2
    str r0, [r1,#0x14]
    b loc_8030DEA
loc_8030DCE:
    add r2, #1
    ldrh r4, [r5,#0x24]
    cmp r2, r4
    blt loc_8030DAC
    ldrh r4, [r5,#0x24]
    add r4, #1
    strh r4, [r5,#0x24]
    sub r4, #1
    mov r6, #0x20 
    mul r6, r4
    ldr r2, [pc, #0x803106c-0x8030de2-2] // dword_201C000
    add r6, r6, r2
    bl sub_8030DF8
loc_8030DEA:
    pop {r0,r1,r4}
    mov r2, r12
    mov r8, r0
    mov r9, r1
    mov r12, r4
    pop {r2,r3,r5,r7,pc}
    .balign 4, 0x00
// end of function sub_8030D6C

.thumb
sub_8030DF8:
    push {lr}
    push {r0,r4}
    mov r0, r8
    mov r1, r9
    bl sub_8019010
    add r5, r0, #0
    pop {r0,r4}
    ldrh r2, [r5,#0x1c]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6]
    mov r2, r9
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#8]
    ldrh r2, [r5,#0x18]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#4]
    ldrh r2, [r5,#0x1a]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0xc]
    ldrb r2, [r5,#7]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x10]
    ldrb r2, [r5,#6]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x18]
    mov r2, #1
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x14]
    pop {pc}
    .balign 4, 0x00
// end of function sub_8030DF8

.thumb
sub_8030E44:
    push {r2,r3,r7,lr}
    push {r0-r7}
    ldr r0, [pc, #0x8031068-0x8030e48-4] // unk_2027500
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
    pop {r0-r7}
    lsr r0, r2, #0xf
    tst r0, r0
    beq loc_8030E8C
    bl sub_80310D4
    tst r0, r0
    beq loc_8030EBC
    bl sub_8030C44
    bl sub_8031614
    bne loc_8030EBC
    bl sub_80310F0
    lsl r2, r2, #0x11
    lsr r2, r2, #0x11
    ldr r0, [pc, #0x803106c-0x8030e74-4] // dword_201C000
    mov r1, #0x20 
    mul r1, r2
    add r6, r0, r1
    mov r4, #0xff
    lsl r1, r4, #8
    orr r4, r1
    bl sub_8030F80
    bl sub_8031188
    b loc_8030EB4
loc_8030E8C:
    lsl r2, r2, #1
    lsr r2, r2, #1
    ldr r0, [pc, #0x8031064-0x8030e90-4] // dword_201A000
    mov r1, #0x20 
    mul r1, r2
    add r6, r0, r1
    mov r4, #0xff
    lsl r1, r4, #8
    orr r4, r1
    ldrb r7, [r5,#0x10]
    bl sub_8030EC4
    bl sub_8030F24
    add r0, r7, #0
    ldrb r1, [r5,#0x10]
    cmp r0, r1
    bne loc_8030EB4
    mov r0, #0x69 
    b loc_8030EB6
loc_8030EB4:
    mov r0, #0x7e 
loc_8030EB6:
    bl f500_8000558
    pop {r2,r3,r7,pc}
loc_8030EBC:
    mov r0, #0x69 
    bl f500_8000558
    pop {r2,r3,r7,pc}
// end of function sub_8030E44

.thumb
sub_8030EC4:
    push {r0-r7,lr}
    ldr r1, [pc, #0x8031060-0x8030ec6-2] // dword_2027400
    mov r2, #0
    ldrh r0, [r6]
    tst r0, r0
    beq locret_8030F20
    ldrb r3, [r5,#0x10]
    sub r3, #1
    strb r3, [r5,#0x10]
loc_8030ED6:
    ldr r3, [r1,r2]
    mov r8, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    cmp r0, r3
    bne loc_8030F10
    mov r3, r8
    lsr r3, r3, #0x10
    sub r3, #1
    tst r3, r3
    bne loc_8030F08
    add r0, r1, #0
    add r1, r1, r2
    add r2, #4
    add r0, r0, r2
    sub r3, r2, #4
    ldrb r2, [r5,#0xe]
    lsl r2, r2, #2
    sub r2, r2, r3
    bl f900_800097A
    ldrb r2, [r5,#0xe]
    sub r2, #1
    strb r2, [r5,#0xe]
    b locret_8030F20
loc_8030F08:
    lsl r3, r3, #0x10
    orr r0, r3
    str r0, [r1,r2]
    b locret_8030F20
loc_8030F10:
    cmp r3, r4
    beq loc_8030F18
    add r2, #4
    b loc_8030ED6
loc_8030F18:
    strh r0, [r1,r2]
    add r2, #2
    strh r4, [r1,r2]
    b locret_8030F20
locret_8030F20:
    pop {r0-r7,pc}
    .balign 4, 0x00
// end of function sub_8030EC4

.thumb
sub_8030F24:
    push {r0-r7,lr}
    ldr r1, [pc, #0x8031070-0x8030f26-2] // dword_2027520
    mov r2, #0
    ldrh r0, [r6]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq locret_8030F7E
loc_8030F34:
    ldr r3, [r1,r2]
    mov r8, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    cmp r0, r3
    bne loc_8030F6E
    mov r3, r8
    lsr r3, r3, #0x10
    sub r3, #1
    tst r3, r3
    bne loc_8030F66
    add r0, r1, #0
    add r1, r1, r2
    add r2, #4
    add r0, r0, r2
    sub r3, r2, #4
    ldrb r2, [r5,#0xf]
    lsl r2, r2, #2
    sub r2, r2, r3
    bl f900_800097A
    ldrb r2, [r5,#0xf]
    sub r2, #1
    strb r2, [r5,#0xf]
    b locret_8030F7E
loc_8030F66:
    lsl r3, r3, #0x10
    orr r0, r3
    str r0, [r1,r2]
    b locret_8030F7E
loc_8030F6E:
    cmp r3, r4
    beq loc_8030F76
    add r2, #4
    b loc_8030F34
loc_8030F76:
    strh r0, [r1,r2]
    add r2, #2
    strh r4, [r1,r2]
    b locret_8030F7E
locret_8030F7E:
    pop {r0-r7,pc}
// end of function sub_8030F24

.thumb
sub_8030F80:
    push {r0-r7,lr}
    ldrh r0, [r6]
    tst r0, r0
    beq locret_8030FC2
    ldr r3, [r6,#0x14]
    lsr r3, r3, #0x10
    sub r3, #1
    tst r3, r3
    bne loc_8030FBC
    add r0, r6, #0
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_8030FC2
    sub r0, #1
    strh r0, [r5,#0x24]
    cmp r0, #7
    blt loc_8030FB2
    ldrh r1, [r5,#0x2e]
    sub r1, #1
    blt loc_8030FB2
    strh r1, [r5,#0x2e]
loc_8030FB2:
    ldrh r1, [r5,#0x20]
    sub r1, #1
    blt locret_8030FC2
    strh r1, [r5,#0x20]
    b locret_8030FC2
loc_8030FBC:
    lsl r3, r3, #0x10
    orr r0, r3
    str r0, [r6,#0x14]
locret_8030FC2:
    pop {r0-r7,pc}
// end of function sub_8030F80

.thumb
sub_8030FC4:
    push {r0-r7,lr}
    mov r4, #0xff
    lsl r0, r4, #8
    orr r4, r0
    ldr r1, [pc, #0x8031060-0x8030fcc-4] // dword_2027400
    mov r2, #0
    ldrh r0, [r6]
    tst r0, r0
    beq locret_8031010
loc_8030FD6:
    ldr r3, [r1,r2]
    mov r8, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    cmp r0, r3
    bne loc_8030FF0
    mov r3, r8
    lsr r3, r3, #0x10
    add r3, #1
    lsl r3, r3, #0x10
    orr r0, r3
    str r0, [r1,r2]
    b loc_803100A
loc_8030FF0:
    cmp r3, r4
    beq loc_8030FF8
    add r2, #4
    b loc_8030FD6
loc_8030FF8:
    mov r6, #1
    lsl r6, r6, #0x10
    orr r0, r6
    str r0, [r1,r2]
    add r2, #4
    str r4, [r1,r2]
    ldrb r0, [r5,#0xe]
    add r0, #1
    strb r0, [r5,#0xe]
loc_803100A:
    ldrb r3, [r5,#0x10]
    add r3, #1
    strb r3, [r5,#0x10]
locret_8031010:
    pop {r0-r7,pc}
    .balign 4, 0x00
// end of function sub_8030FC4

.thumb
sub_8031014:
    push {r0-r7,lr}
    mov r4, #0xff
    lsl r0, r4, #8
    orr r4, r0
    ldr r1, [pc, #0x8031070-0x803101c-4] // dword_2027520
    mov r2, #0
    ldrh r0, [r6]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    tst r0, r0
    beq locret_803105E
loc_803102A:
    ldr r3, [r1,r2]
    mov r8, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    cmp r0, r3
    bne loc_8031044
    mov r3, r8
    lsr r3, r3, #0x10
    add r3, #1
    lsl r3, r3, #0x10
    orr r0, r3
    str r0, [r1,r2]
    b locret_803105E
loc_8031044:
    cmp r3, r4
    beq loc_803104C
    add r2, #4
    b loc_803102A
loc_803104C:
    mov r6, #1
    lsl r6, r6, #0x10
    orr r0, r6
    str r0, [r1,r2]
    add r2, #4
    str r4, [r1,r2]
    ldrb r0, [r5,#0xf]
    add r0, #1
    strb r0, [r5,#0xf]
locret_803105E:
    pop {r0-r7,pc}
off_8031060:    .word dword_2027400
off_8031064:    .word dword_201A000
off_8031068:    .word unk_2027500
off_803106C:    .word dword_201C000
off_8031070:    .word dword_2027520
// end of function sub_8031014

    push {r0-r7,lr}
    lsr r4, r2, #0xf
    tst r4, r4
    bne loc_803107E
    add r2, r3, #0
loc_803107E:
    lsl r4, r2, #0x11
    lsr r4, r4, #0x11
    mov r6, #0x20 
    mul r6, r4
    ldr r2, [pc, #0x8031210-0x8031086-2] // dword_201C000
    add r6, r6, r2
    mov r2, r8
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6]
    mov r2, r9
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#8]
    push {r0,r4}
    mov r0, r8
    mov r1, r9
    bl sub_8019010
    add r5, r0, #0
    pop {r0,r4}
    ldrh r2, [r5,#0x18]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#4]
    ldrh r2, [r5,#0x1a]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0xc]
    ldrb r2, [r5,#7]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x10]
    ldrb r2, [r5,#6]
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x18]
    mov r2, #1
    lsl r2, r2, #0x10
    orr r2, r0
    str r2, [r6,#0x14]
    pop {r0-r7,pc}
    .balign 4, 0x00
.thumb
sub_80310D4:
    push {r1-r7,lr}
    mov r2, #0x20 
    mov r0, #0x1e
    mul r2, r0
    ldr r0, [pc, #0x8031208-0x80310dc-4] // dword_201A000
    add r2, r2, r0
loc_80310E0:
    ldrh r1, [r0]
    tst r1, r1
    beq locret_80310EE
    add r0, #0x20 
    cmp r0, r2
    blt loc_80310E0
    mov r0, #0
locret_80310EE:
    pop {r1-r7,pc}
// end of function sub_80310D4

.thumb
sub_80310F0:
    push {r0-r7,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x803120c-0x80310f4-4] // unk_2027500
    mov r2, #0x20 
    push {r1}
    bl f900_80009A0
    pop {r1}
    ldrh r0, [r1,#0x14]
    mov r2, #1
    lsl r2, r2, #0x10
    orr r0, r2
    str r0, [r1,#0x14]
    pop {r0-r7,pc}
// end of function sub_80310F0

.thumb
sub_803110C:
    push {r0-r7,lr}
    add r0, r2, #0
    lsr r1, r2, #0xf
    tst r1, r1
    bne loc_8031118
    add r0, r3, #0
loc_8031118:
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    mov r2, #0x20 
    mul r2, r0
    ldr r1, [pc, #0x8031210-0x8031120-4] // dword_201C000
    add r1, r1, r2
    ldr r2, [r1]
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    tst r2, r2
    bne locret_8031186
    ldrh r3, [r5,#0x24]
    cmp r3, r0
    beq loc_8031150
    sub r3, r3, r0
    mov r2, #0x20 
    add r0, r1, r2
    mul r2, r3
    push {r0-r2}
    bl f900_80009A0
    pop {r0-r2}
    add r0, r0, r2
    sub r0, #0x20 
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
loc_8031150:
    ldrh r3, [r5,#0x24]
    cmp r3, #7
    blt loc_803116E
    ldrh r1, [r5,#0x20]
    add r1, #8
    cmp r3, r1
    bge locret_8031186
    sub r3, #7
    ldrh r1, [r5,#0x20]
    strh r3, [r5,#0x20]
    sub r3, r3, r1
    ldrh r1, [r5,#0x2e]
    add r1, r1, r3
    strh r1, [r5,#0x2e]
    b locret_8031186
loc_803116E:
    tst r3, r3
    beq locret_8031186
    sub r3, #1
    ldrh r0, [r5,#0x20]
    cmp r3, r0
    bgt loc_803117E
    strh r3, [r5,#0x20]
    b locret_8031186
loc_803117E:
    ldrh r0, [r5,#0x2e]
    cmp r3, r0
    bgt locret_8031186
    strh r3, [r5,#0x2e]
locret_8031186:
    pop {r0-r7,pc}
// end of function sub_803110C

.thumb
sub_8031188:
    push {r0-r7,lr}
    add r0, r2, #0
    lsr r1, r2, #0xf
    tst r1, r1
    bne loc_8031194
    add r0, r3, #0
loc_8031194:
    lsl r0, r0, #0x11
    lsr r0, r0, #0x11
    mov r2, #0x20 
    mul r2, r0
    ldr r1, [pc, #0x8031210-0x803119c-4] // dword_201C000
    add r1, r1, r2
    ldr r2, [r1]
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    tst r2, r2
    bne locret_8031202
    ldrh r3, [r5,#0x24]
    cmp r3, r0
    beq loc_80311CC
    sub r3, r3, r0
    mov r2, #0x20 
    add r0, r1, r2
    mul r2, r3
    push {r0-r2}
    bl f900_80009A0
    pop {r0-r2}
    add r0, r0, r2
    sub r0, #0x20 
    mov r1, #0x20 
    mov r2, #0
    bl f900_80009FC
loc_80311CC:
    ldrh r3, [r5,#0x24]
    cmp r3, #7
    blt loc_80311EA
    ldrh r1, [r5,#0x20]
    add r1, #8
    cmp r3, r1
    bge locret_8031202
    sub r3, #7
    ldrh r1, [r5,#0x20]
    strh r3, [r5,#0x20]
    sub r3, r3, r1
    ldrh r1, [r5,#0x2e]
    add r1, r1, r3
    strh r1, [r5,#0x2e]
    b locret_8031202
loc_80311EA:
    tst r3, r3
    beq locret_8031202
    sub r3, #1
    ldrh r0, [r5,#0x20]
    cmp r3, r0
    bgt loc_80311FA
    strh r3, [r5,#0x20]
    b locret_8031202
loc_80311FA:
    ldrh r0, [r5,#0x2e]
    cmp r3, r0
    bgt locret_8031202
    strh r3, [r5,#0x2e]
locret_8031202:
    pop {r0-r7,pc}
    .word dword_2027400
off_8031208:    .word dword_201A000
off_803120C:    .word unk_2027500
off_8031210:    .word dword_201C000
    .word dword_2027520
// end of function sub_8031188

.thumb
sub_8031218:
    push {lr}
    ldrb r1, [r5,#0x15]
    mov r0, #8
    tst r0, r1
    beq locret_8031240
    mov r0, #4
    mov r1, #2
    ldrb r2, [r5,#0x12]
    cmp r2, #0x20 
    beq loc_8031230
    mov r0, #0x13
    mov r1, #2
loc_8031230:
    mov r2, #0
    ldr r3, [pc, #0x8031244-0x8031232-2] // dword_86DE24C
    mov r4, #8
    push {r5}
    mov r5, #0x11
    bl sub_8001DDC
    pop {r5}
locret_8031240:
    pop {pc}
    .balign 4, 0x00
off_8031244:    .word dword_86DE24C
// end of function sub_8031218

    push {r0,r1,r4,r6,r7,lr}
    ldrb r0, [r5,#0x1b]
    bl fA00_8000A30
    lsr r1, r0, #4
    lsl r0, r0, #4
    lsr r0, r0, #4
    ldr r2, [pc, #0x8031280-0x8031256-2] // =0x384
    tst r0, r0
    bne loc_803125E
    ldr r2, [pc, #0x803127c-0x803125c-4] // =0x0
loc_803125E:
    add r0, r0, r2
    ldr r2, [pc, #0x8031280-0x8031260-4] // =0x384
    add r1, r1, r2
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8031278-0x8031268-4] // dword_2016C00
    str r0, [r1]
    add r1, #4
    ldr r0, [pc, #0x8031274-0x803126e-2] // =0x3AE03AD
    str r0, [r1]
    pop {r0,r1,r4,r6,r7,pc}
dword_8031274:    .word 0x3AE03AD
off_8031278:    .word dword_2016C00
dword_803127C:    .word 0x0
dword_8031280:    .word 0x38F
.thumb
sub_8031284:
    push {r7,lr}
    mov r7, #1
    ldrb r0, [r5,#0x12]
    cmp r0, #0x20 
    beq loc_8031292
    cmp r0, #2
    bne loc_80312EE
loc_8031292:
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80312EE
    ldrb r0, [r5,#0x15]
    mov r1, #8
    tst r0, r1
    bne loc_80312EE
    mov r1, #0x80
    tst r0, r1
    beq loc_80312AE
    bic r0, r1
    strb r0, [r5,#0x15]
    b loc_80312EE
loc_80312AE:
    ldrb r0, [r5,#0x11]
    mov r1, #4
    bic r0, r1
    strb r0, [r5,#0x11]
    mov r7, #1
    ldrb r0, [r5,#2]
    cmp r0, #8
    bge loc_80312EE
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #2
    tst r0, r1
    beq loc_80312EE
    ldrb r0, [r5,#0x11]
    mov r1, #0x60 
    tst r0, r1
    bne loc_80312EE
    ldrb r0, [r5,#0x10]
    cmp r0, #0x1e
    bge loc_80312EC
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80312EE
    mov r0, #0x16
    bl sub_80312F4
    mov r0, #0xc
    strb r0, [r5,#2]
    b loc_80312EE
loc_80312EC:
    mov r7, #0
loc_80312EE:
    tst r7, r7
    pop {r7,pc}
    .balign 4, 0x00
// end of function sub_8031284

.thumb
sub_80312F4:
    push {r7,lr}
    mov r7, #0
    add r6, r0, #0
    lsl r6, r6, #8
    add r2, r7, #0
    orr r2, r6
    mov r0, #9
    mov r1, #0x11
    add r1, r1, r7
    bl sub_80540C6
    ldrb r0, [r5,#0x11]
    mov r1, #4
    orr r0, r1
    strb r0, [r5,#0x11]
    mov r0, #0x69 
    bl f500_8000558
    pop {r7,pc}
    .balign 4, 0x00
// end of function sub_80312F4

.thumb
sub_803131C:
    push {r0-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r4}
    cmp r2, r3
    bne loc_803133A
    mov r0, #0xff
    strh r0, [r5,#0x34]
    mov r0, #0
    strh r0, [r5,#0x36]
    add r0, r2, #0
    bl sub_80315E0
    b loc_803135C
loc_803133A:
    add r0, r2, #0
    bl sub_80315E0
    strh r0, [r5,#0x34]
    add r0, r3, #0
    bl sub_80315E0
    strh r0, [r5,#0x36]
    mov r2, r8
    mov r3, r9
    ldrh r0, [r5,#0x34]
    add r1, r2, #0
    lsr r4, r2, #0xf
    tst r4, r4
    bne loc_803135C
    ldrh r0, [r5,#0x36]
    add r1, r3, #0
loc_803135C:
    mov r2, #0xff
    lsl r4, r2, #8
    orr r4, r2
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r12, r0
    bl sub_8031398
    mov r0, r12
    push {r0}
    bl sub_8019010
    ldrb r1, [r0,#8]
    cmp r1, #2
    pop {r0}
    beq loc_803138C
    cmp r1, #1
    beq loc_8031386
    bl sub_80313EC
    b loc_8031390
loc_8031386:
    bl sub_8031438
    b loc_8031390
loc_803138C:
    bl sub_80314B8
loc_8031390:
    tst r0, r0
    pop {r4}
    mov r12, r4
    pop {r0-r7,pc}
// end of function sub_803131C

.thumb
sub_8031398:
    push {r2,r4,r7,lr}
    mov r1, r12
    push {r1}
    mov r12, r5
    ldr r7, [pc, #0x8031610-0x80313a0-4] // dword_2027520
    mov r6, #0
    mov r4, #0
    mov r5, #0
loc_80313A8:
    ldr r1, [r7,r6]
    lsl r3, r1, #0x10
    lsr r3, r3, #0x10
    ldr r2, [pc, #0x80313e8-0x80313ae-2] // =0xFFFF
    cmp r3, r2
    beq loc_80313D8
    push {r1}
    add r0, r3, #0
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #1
    pop {r1}
    beq loc_80313CE
    cmp r0, #2
    bne loc_80313D4
    lsr r3, r1, #0x10
    add r4, r4, r3
    b loc_80313D4
loc_80313CE:
    lsr r3, r1, #0x10
    add r5, r5, r3
    b loc_80313D4
loc_80313D4:
    add r6, #4
    b loc_80313A8
loc_80313D8:
    add r0, r4, #0
    add r1, r5, #0
    mov r5, r12
    strb r0, [r5,#0x19]
    strb r1, [r5,#0x18]
    pop {r1}
    mov r12, r1
    pop {r2,r4,r7,pc}
dword_80313E8:    .word 0xFFFF
// end of function sub_8031398

.thumb
sub_80313EC:
    push {lr}
    ldr r7, [pc, #0x8031610-0x80313ee-2] // dword_2027520
    mov r2, #0
loc_80313F2:
    ldrh r1, [r7,r2]
    cmp r1, r4
    beq loc_8031430
    cmp r1, r0
    beq loc_8031400
    add r2, #4
    b loc_80313F2
loc_8031400:
    ldr r1, [r7,r2]
    lsr r1, r1, #0x10
    cmp r1, #4
    blt loc_8031430
    ldr r2, [pc, #0x8031434-0x8031408-4] // =0x1FC
    ldrh r0, [r5,#0x34]
    and r0, r2
    ldrh r1, [r5,#0x36]
    and r1, r2
    cmp r0, r1
    beq loc_8031430
    mov r1, #4
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, #0x80
    bl sub_80539A0
    bne loc_803142C
    mov r0, #0x17
    bl sub_80312F4
loc_803142C:
    mov r0, #1
    b locret_8031432
loc_8031430:
    mov r0, #0
locret_8031432:
    pop {pc}
dword_8031434:    .word 0x1FF
// end of function sub_80313EC

.thumb
sub_8031438:
    push {lr}
    ldr r7, [pc, #0x8031610-0x803143a-2] // dword_2027520
    mov r2, #0
loc_803143E:
    ldrh r1, [r7,r2]
    cmp r1, r4
    beq loc_8031456
    cmp r1, r0
    beq loc_803144C
    add r2, #4
    b loc_803143E
loc_803144C:
    ldr r1, [r7,r2]
    lsr r1, r1, #0x10
    cmp r1, #1
    bge loc_803148A
    b loc_80314B4
loc_8031456:
    ldrb r0, [r5,#0x18]
    ldrb r1, [r5,#0x1c]
    cmp r0, r1
    blt loc_80314B4
    beq loc_8031460
loc_8031460:
    mov r0, r10
    ldr r0, [r0,#0x2c]
    str r1, [r0,#0x4c]
    mov r6, #0x1a
    ldr r2, [pc, #0x8031538-0x8031468-4] // =0x1FC
    ldrh r0, [r5,#0x34]
    and r0, r2
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_803149A
    ldr r2, [pc, #0x8031538-0x8031478-4] // =0x1FC
    ldrh r0, [r5,#0x36]
    and r0, r2
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_803149A
    b loc_80314B4
loc_803148A:
    ldr r2, [pc, #0x8031538-0x803148a-2] // =0x1FC
    ldrh r0, [r5,#0x34]
    and r0, r2
    ldrh r1, [r5,#0x36]
    and r1, r2
    cmp r0, r1
    beq loc_80314B4
    mov r6, #0x18
loc_803149A:
    mov r1, #4
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, #0x80
    bl sub_80539A0
    bne loc_80314B0
    add r0, r6, #0
    bl sub_80312F4
loc_80314B0:
    mov r0, #1
    b locret_80314B6
loc_80314B4:
    mov r0, #0
locret_80314B6:
    pop {pc}
// end of function sub_8031438

.thumb
sub_80314B8:
    push {lr}
    ldr r7, [pc, #0x8031610-0x80314ba-2] // dword_2027520
    mov r2, #0
loc_80314BE:
    ldrh r1, [r7,r2]
    cmp r1, r4
    beq loc_80314D6
    cmp r1, r0
    beq loc_80314CC
    add r2, #4
    b loc_80314BE
loc_80314CC:
    ldr r1, [r7,r2]
    lsr r1, r1, #0x10
    cmp r1, #1
    bge loc_803150A
    b loc_8031534
loc_80314D6:
    ldrb r0, [r5,#0x19]
    ldrb r1, [r5,#0x1d]
    cmp r0, r1
    blt loc_8031534
    beq loc_80314E0
loc_80314E0:
    mov r0, r10
    ldr r0, [r0,#0x2c]
    str r1, [r0,#0x4c]
    mov r6, #0x1b
    ldr r2, [pc, #0x8031538-0x80314e8-4] // =0x1FC
    ldrh r0, [r5,#0x34]
    and r0, r2
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #2
    bne loc_803151A
    ldr r2, [pc, #0x8031538-0x80314f8-4] // =0x1FC
    ldrh r0, [r5,#0x36]
    and r0, r2
    bl sub_8019010
    ldrb r0, [r0,#8]
    cmp r0, #2
    bne loc_803151A
    b loc_8031534
loc_803150A:
    ldr r2, [pc, #0x8031538-0x803150a-2] // =0x1FC
    ldrh r0, [r5,#0x34]
    and r0, r2
    ldrh r1, [r5,#0x36]
    and r1, r2
    cmp r0, r1
    beq loc_8031534
    mov r6, #0x19
loc_803151A:
    mov r1, #4
    ldrb r0, [r5,#0x15]
    orr r0, r1
    strb r0, [r5,#0x15]
    mov r0, #0x80
    bl sub_80539A0
    bne loc_8031530
    add r0, r6, #0
    bl sub_80312F4
loc_8031530:
    mov r0, #1
    b locret_8031536
loc_8031534:
    mov r0, #0
locret_8031536:
    pop {pc}
dword_8031538:    .word 0x1FF
    .word 0x12D, 0xC9
// end of function sub_80314B8

.thumb
sub_8031544:
    push {r0-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r2, [r5,#0x16]
    add r6, r6, r2
    ldrb r2, [r6,#0x1d]
    lsl r3, r0, #0x10
    lsr r3, r3, #0x10
    cmp r3, r2
    bne locret_8031586
    push {r0-r7}
    ldrb r1, [r5,#0x14]
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r0-r7}
    mov r2, #0xff
    strb r2, [r6,#0x1d]
    ldrb r2, [r5,#0x11]
    mov r1, #0x80
    bic r2, r1
    strb r2, [r5,#0x11]
    ldrb r2, [r5,#0x15]
    mov r1, #1
    orr r2, r1
    strb r2, [r5,#0x15]
locret_8031586:
    pop {r0-r7,pc}
// end of function sub_8031544

.thumb
sub_8031588:
    push {r0-r7,lr}
    mov r7, #1
    ldrh r0, [r5,#0x30]
loc_803158E:
    mov r6, r10
    ldr r6, [r6,#0x40]
    ldrb r2, [r5,#0x16]
    add r6, r6, r2
    ldrb r2, [r6,#0x1d]
    lsl r3, r0, #0x10
    lsr r3, r3, #0x10
    cmp r3, r2
    bne loc_80315D6
    ldrb r1, [r5,#0x14]
    tst r7, r7
    beq loc_80315AA
    ldrh r0, [r5,#0x32]
    b loc_80315AC
loc_80315AA:
    ldrh r0, [r5,#0x30]
loc_80315AC:
    strb r0, [r6,#0x1d]
    ldrh r2, [r5,#0x26]
    sub r0, r0, r2
    strb r0, [r5,#0x14]
    push {r0-r7}
    lsl r1, r1, #1
    mov r0, #4
    add r1, r1, r0
    mov r0, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x20 
    mov r5, #2
    bl sub_8001DF8
    pop {r0-r7}
    ldrb r2, [r5,#0x15]
    mov r1, #1
    orr r2, r1
    strb r2, [r5,#0x15]
    pop {r0-r7,pc}
loc_80315D6:
    ldrh r0, [r5,#0x32]
    sub r7, #1
    bge loc_803158E
    pop {r0-r7,pc}
    .byte 0, 0
// end of function sub_8031588

.thumb
sub_80315E0:
    push {r3,lr}
    ldr r7, [pc, #0x8031604-0x80315e2-2] // dword_201A000
    lsr r1, r0, #0xf
    tst r1, r1
    beq loc_80315EE
    ldr r7, [pc, #0x803160c-0x80315ea-2] // dword_201C000
    b loc_80315F2
loc_80315EE:
    bl sub_8031544
loc_80315F2:
    lsl r1, r0, #0x11
    lsr r1, r1, #0x11
    mov r2, #0x20 
    mul r1, r2
    add r7, r7, r1
    ldrh r0, [r7]
    pop {r3,pc}
    .word dword_2027400
off_8031604:    .word dword_201A000
    .word unk_2027500
off_803160C:    .word dword_201C000
off_8031610:    .word dword_2027520
// end of function sub_80315E0

.thumb
sub_8031614:
    push {r0-r7,lr}
    mov r1, #4
    ldrb r0, [r5,#0x15]
    add r2, r0, #0
    bic r2, r1
    strb r2, [r5,#0x15]
    tst r0, r1
    pop {r0-r7,pc}
// end of function sub_8031614

.thumb
sub_8031624:
    push {r4-r7,lr}
loc_8031626:
    ldrb r7, [r0]
    cmp r7, #0xff
    beq locret_803163E
    push {r0}
    ldr r2, [r0,#4]
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    bl sub_80540C6
    pop {r0}
    add r0, #8
    b loc_8031626
locret_803163E:
    pop {r4-r7,pc}
// end of function sub_8031624

.thumb
sub_8031640:
    push {r7,lr}
    ldr r7, [pc, #0x803164c-0x8031642-2] // =0x6010000
    add r0, r0, r7
    bl f900_8000950
    pop {r7,pc}
dword_803164C:    .word 0x6010000
// end of function sub_8031640

.thumb
sub_8031650:
    push {lr}
    ldr r0, [pc, #0x803165c-0x8031652-2] // =0x118
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
dword_803165C:    .word 0x11B
// end of function sub_8031650

.thumb
sub_8031660:
    push {lr}
    bl sub_8019010
    ldrh r2, [r0,#0x1a]
    ldr r3, [pc, #0x8031688-0x8031668-4] // =0x3E0
    cmp r2, r3
    bgt loc_8031680
    ldrb r1, [r0,#9]
    mov r3, #2
    and r1, r3
    beq loc_803167A
    mov r1, #0
    b loc_8031684
loc_803167A:
    mov r2, #5
    mov r1, #0
    b loc_8031684
loc_8031680:
    mov r2, #1
    mov r1, #1
loc_8031684:
    add r0, r2, #0
    pop {pc}
dword_8031688:    .word 0x3E7
// end of function sub_8031660

    push {lr}
    mov r0, #0
    bl sub_8043170
    ldrb r1, [r5,#0x1c]
    cmp r0, r1
    pop {pc}
    .balign 4, 0x00
    push {lr}
    mov r0, #0
    bl sub_80431A8
    ldrb r1, [r5,#0x1d]
    cmp r0, r1
    pop {pc}
    .balign 4, 0x00
dword_80316AC:    .word 0xA06, 0xB0B, 0xFFFFFFFF, 0x7, 0x107, 0x207, 0x307, 0x407
    .word 0x507, 0x607, 0x707, 0x807, 0x907, 0xFFFFFFFF, 0xC202C200, 0xC206C204
    .word 0xC20AC208, 0xC20EC20C, 0xC203C201, 0xC207C205, 0xC20BC209, 0xC20FC20D, 0xC222C220, 0xC226C224
    .word 0xC22AC228, 0xC22EC22C, 0xC223C221, 0xC227C225, 0xC22BC229, 0xC22FC22D
.thumb
sub_8031724:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8031734-0x8031726-2] // off_8031738
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8031734:    .word off_8031738
off_8031738:    .word sub_8031748+1
    .word sub_80318CC+1
    .word sub_8031A20+1
    .word sub_8031A38+1
// end of function sub_8031724

.thumb
sub_8031748:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x803186c-0x803175c-4] // word_3002A50
    ldr r2, [pc, #0x8031870-0x803175e-2] // =0x60
    bl f900_800098C
    mov r0, #0x11
    bl sub_802F628
    ldr r1, [pc, #0x80318b0-0x803176a-2] // unk_30027C0
    ldr r2, [pc, #0x80318b4-0x803176c-4] // =0x20
    bl f900_800098C
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x8031878-0x8031778-4] // unk_3002BD0
    ldr r2, [pc, #0x803187c-0x803177a-2] // =0x20
    bl f900_800098C
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x8031880-0x8031786-2] // unk_3002800
    ldr r2, [pc, #0x8031884-0x8031788-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8031888-0x803178e-2] // dword_869F784
    ldr r1, [pc, #0x803188c-0x8031790-4] // unk_3002740
    ldr r2, [pc, #0x8031890-0x8031792-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8031894-0x8031798-4] // loc_86DAE6C
    ldr r1, [pc, #0x8031898-0x803179a-2] // =0x6000020
    ldr r2, [pc, #0x803189c-0x803179c-4] // =0x2B40
    bl f900_80009A0
    ldr r0, [pc, #0x80318a8-0x80317a2-2] // dword_86CEAE0
    ldr r1, [pc, #0x80318ac-0x80317a4-4] // dword_2031000
    bl dword_8111700
    ldr r0, [pc, #0x80318b8-0x80317aa-2] // dword_86E3520
    ldr r1, [pc, #0x80318bc-0x80317ac-4] // dword_2028000
    bl dword_8111700
    ldr r0, [pc, #0x80318c0-0x80317b2-2] // dword_86E3238
    ldr r1, [pc, #0x80318c4-0x80317b4-4] // unk_202B000
    bl dword_8111700
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #0
    strh r0, [r5,#0x14]
    strh r0, [r5,#0x18]
    str r0, [r5,#0x1c]
    bl sub_80540BA
    bl sub_8031B14
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x80318a0-0x80317d8-4] // dword_86D44D0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_8031748

    pop {r5}
    ldrb r0, [r5,#0x12]
    tst r0, r0
    beq loc_8031806
    push {r5}
    mov r0, #7
    mov r1, #1
    mov r2, #1
    ldr r3, [pc, #0x80318a4-0x80317f2-2] // dword_86D4980
    mov r4, #0x16
    mov r5, #0x13
    bl sub_8001DDC
    pop {r5}
    ldr r0, [pc, #0x8031864-0x80317fe-2] // dword_80316AC
    bl sub_8053FFC
    b loc_803180C
loc_8031806:
    mov r0, #0x5c 
    bl sub_8031BB4
loc_803180C:
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x80318c8-0x8031810-4] // =0x7740
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    ldr r0, [r7,#0x1c]
    mov r1, #0x2f 
    strb r1, [r0,#8]
    mov r1, #0x3f 
    strb r1, [r0,#9]
    mov r1, #0x2f 
    strb r1, [r0,#0xa]
    mov r1, #0x3f 
    strb r1, [r0,#0xb]
    mov r1, #6
    strb r1, [r0,#1]
    mov r1, #0
    strb r1, [r0,#5]
    mov r1, #0x38 
    strb r1, [r0]
    mov r1, #0xe
    strb r1, [r0,#4]
    mov r1, #6
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#7]
    mov r1, #0xf0
    strb r1, [r0,#2]
    mov r1, #0x9a
    strb r1, [r0,#6]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .balign 4, 0x00
off_8031864:    .word dword_80316AC
    .word 0x86F5DC0
off_803186C:    .word word_3002A50
off_8031870:    .word 0x60
    .word dword_869F7C4
off_8031878:    .word unk_3002BD0
dword_803187C:    .word 0x20
off_8031880:    .word unk_3002800
dword_8031884:    .word 0x20
off_8031888:    .word dword_869F784
off_803188C:    .word unk_3002740
dword_8031890:    .word 0x20
off_8031894:    .word loc_86DAE6C
dword_8031898:    .word 0x6000020
off_803189C:    .word 0x2B40
off_80318A0:    .word dword_86D44D0
off_80318A4:    .word dword_86D4980
off_80318A8:    .word dword_86CEAE0
off_80318AC:    .word dword_2031000
off_80318B0:    .word unk_30027C0
dword_80318B4:    .word 0x20
off_80318B8:    .word dword_86E3520
off_80318BC:    .word dword_2028000
off_80318C0:    .word dword_86E3238
off_80318C4:    .word unk_202B000
dword_80318C8:    .word 0x7740
.thumb
sub_80318CC:
    push {lr}
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    ldr r0, [pc, #0x803191c-0x80318d6-2] // off_8031920
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#2]
// end of function sub_80318CC

    cmp r0, #8
    bge locret_803191A
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #0xa
    tst r0, r1
    beq locret_803191A
    ldr r0, [r5,#0x1c]
    mov r1, #2
    tst r0, r1
    bne locret_803191A
    bl sub_8005B5C
    beq locret_803191A
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#2]
locret_803191A:
    pop {pc}
off_803191C:    .word off_8031920
off_8031920:    .word sub_8031930+1
    .word sub_8031950+1
    .word sub_80319CC+1
    .word sub_80319F8+1
.thumb
sub_8031930:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    blt locret_803194C
    ldr r1, [pc, #0x80319f4-0x8031938-4] // byte_2006EC0
    ldrb r0, [r1,r0]
    lsl r1, r0, #1
    add r0, r0, r1
    bl sub_8031A50
    bl sub_8031AC6
    mov r0, #4
    strb r0, [r5,#2]
locret_803194C:
    pop {pc}
    .byte 0, 0
// end of function sub_8031930

.thumb
sub_8031950:
    push {lr}
    bl sub_8005B5C
    beq loc_80319C4
    ldr r0, [r5,#0x1c]
    mov r1, #2
    tst r0, r1
    bne loc_80319C4
    mov r0, #0
    mov r1, #0x2e 
    bl sub_8024FF0
    bne loc_8031988
    mov r0, #4
    mov r1, #0x5a 
    bl sub_8024FF0
    beq loc_8031988
    mov r0, #0
    mov r1, #0x83
    bl sub_8024FF0
    beq loc_8031988
    mov r0, #4
    mov r1, #0x59 
    bl sub_8024FF0
    beq loc_80319B0
loc_8031988:
    mov r0, #0
    mov r1, #0x2d 
    bl sub_8024FF0
    bne loc_80319BE
    mov r0, #3
    mov r1, #0x65 
    bl sub_8024FF0
    beq loc_80319BE
    mov r0, #0
    mov r1, #0x9d
    bl sub_8024FF0
    beq loc_80319BE
    mov r0, #3
    mov r1, #0x64 
    bl sub_8024FF0
    bne loc_80319BE
loc_80319B0:
    mov r0, #0xc
    strb r0, [r5,#2]
    mov r0, #8
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    b loc_80319C4
loc_80319BE:
    mov r0, #0
    bl sub_8031B34
loc_80319C4:
    bl sub_8031AC6
// end of function sub_8031950

    pop {pc}
    .balign 4, 0x00
.thumb
sub_80319CC:
    push {lr}
    ldr r0, [pc, #0x80319f4-0x80319ce-2] // byte_2006EC0
    ldrb r1, [r0]
    cmp r1, #0x80
    beq loc_80319DA
    bl sub_8031AC6
loc_80319DA:
    bl sub_8005B5C
    beq locret_80319F0
    mov r0, #8
    ldr r1, [r5,#0x1c]
    tst r1, r0
    beq loc_80319EC
    mov r1, #0xc
    b loc_80319EE
loc_80319EC:
    mov r1, #8
loc_80319EE:
    strb r1, [r5,#1]
locret_80319F0:
    pop {pc}
    .balign 4, 0x00
off_80319F4:    .word byte_2006EC0
// end of function sub_80319CC

.thumb
sub_80319F8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #3
    and r1, r0
    beq loc_8031A18
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #8
    strb r0, [r5,#2]
loc_8031A18:
    bl sub_8031AC6
// end of function sub_80319F8

    pop {pc}
    .byte 0, 0
.thumb
sub_8031A20:
    push {lr}
    bl sub_80540BA
    bl sub_8031BD4
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#0x15]
    bl sub_802DE3C
    pop {pc}
    .balign 4, 0x00
// end of function sub_8031A20

.thumb
sub_8031A38:
    push {lr}
    bl sub_80540BA
    mov r0, #1
    bl sub_802D920
    bl sub_80027F4
    bl sub_802DE70
    pop {pc}
    .byte 0, 0
// end of function sub_8031A38

.thumb
sub_8031A50:
    push {lr}
    push {r0,r5}
    add r1, r0, #0
    ldr r0, [pc, #0x8031ae0-0x8031a56-2] // unk_202B000
    ldr r2, [pc, #0x8031ae4-0x8031a58-4] // word_2014000
    ldr r3, [pc, #0x8031ae8-0x8031a5a-2] // =0x6004000
    mov r4, #9
    mov r5, #2
    ldr r6, [pc, #0x8031aec-0x8031a60-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0x21 
    .byte 0xBC
    .byte 0x21 
    .byte 0xB4
    .byte 0x41 
    .byte 0x1C
    .byte 0x1C
    .byte 0x48 
    .byte 0x1F
    .byte 0x4A 
    .byte 0x20
    .byte 0x4B 
    .byte 8
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0x1C
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x21 
    .byte 0xF0
    .byte 0xC2
    .byte 0xFF
    .byte 0x21 
    .byte 0xBC
    .byte 0xA1
    .byte 0xB4
    .byte 0x81
    .byte 0x1C
    .byte 0x16
    .byte 0x48 
    .byte 0x1B
    .byte 0x4A 
    .byte 0x1C
    .byte 0x4B 
    .byte 0xA
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0x1B
    .byte 0x4E 
    .byte 0x1C
    .byte 0x4F 
    .byte 0x21 
    .byte 0xF0
    .byte 0xCC
    .byte 0xFF
    .byte 1
    .byte 0x1C
    .byte 0xA1
    .byte 0xBC
    .byte 0x20
    .byte 0xB4
    .byte 0x12
    .byte 0x20
    .byte 3
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0x18
    .byte 0x4B 
    .byte 8
    .byte 0x24 
    .byte 2
    .byte 0x25 
    .byte 0xD0
    .byte 0xF7
    .byte 0x97
    .byte 0xF9
// end of function sub_8031A50

    pop {r5}
    push {r5}
    mov r0, #0x12
    mov r1, #5
    mov r2, #2
    ldr r3, [pc, #0x8031b0c-0x8031ab8-4] // dword_80316AC+88
    mov r4, #8
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
    pop {pc}
.thumb
sub_8031AC6:
    push {lr}
    push {r5}
    mov r0, #3
    mov r2, #0xa
    mov r3, #1
    mov r4, #0x40 
    mov r5, #0x4a 
    bl sub_8053A6C
// end of function sub_8031AC6

    pop {r5}
    pop {pc}
    .word 0x300
off_8031AE0:    .word unk_202B000
off_8031AE4:    .word word_2014000
dword_8031AE8:    .word 0x6004000
off_8031AEC:    .word dword_86C6E60
    .word unk_2014400
    .word 0x6004400
    .word dword_201A000
    .word 0x6016800
    .word dword_8695224
    .word unk_201B000
    .word dword_80316AC+0x38
off_8031B0C:    .word dword_80316AC+0x58
    .word 0x340
.thumb
sub_8031B14:
    push {lr}
    ldr r7, [pc, #0x8031ba8-0x8031b16-2] // byte_2006EC0
    mov r4, #0
loc_8031B1A:
    ldrb r0, [r7,r4]
    cmp r0, #0x80
    beq loc_8031B24
    add r4, #1
    b loc_8031B1A
loc_8031B24:
    strh r4, [r5,#0x12]
    ldr r0, [pc, #0x8031b30-0x8031b26-2] // dword_80316AC+12
    bl sub_8053FFC
    pop {pc}
    .byte 0, 0
off_8031B30:    .word dword_80316AC+0xC
// end of function sub_8031B14

.thumb
sub_8031B34:
    push {lr}
    mov r1, r8
    mov r8, r0
    push {r1}
    mov r0, #4
    ldr r1, [r5,#0x1c]
    tst r0, r1
    bne loc_8031BA0
    mov r6, r10
    ldr r6, [r6,#4]
    ldrh r0, [r6,#4]
    ldr r1, [pc, #0x8031bb0-0x8031b4a-2] // =0x3C0
    and r1, r0
    beq loc_8031B72
    mov r1, #6
    mov r2, #0
    bl sub_80388E0
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r1, r1, r0
    ldrh r0, [r5,#0x12]
    sub r0, #1
    sub r0, r0, r1
    ldr r2, [pc, #0x8031ba8-0x8031b64-4] // byte_2006EC0
    ldrb r2, [r2,r0]
    lsl r0, r2, #1
    add r0, r0, r2
    bl sub_8031A50
    b loc_8031BA0
loc_8031B72:
    mov r6, r10
    ldr r6, [r6,#4]
    ldrh r0, [r6,#2]
    mov r1, #1
    and r1, r0
    beq loc_8031BA0
    mov r0, #3
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    mov r0, #0x7e 
    bl f500_8000558
    push {r5}
    mov r0, #7
    mov r1, #1
    mov r2, #1
    ldr r3, [pc, #0x8031bac-0x8031b94-4] // dword_86D4EA8
    mov r4, #0x16
    mov r5, #0x13
    bl sub_8001DDC
    pop {r5}
loc_8031BA0:
    pop {r1}
    mov r8, r1
    pop {pc}
    .balign 4, 0x00
off_8031BA8:    .word byte_2006EC0
off_8031BAC:    .word dword_86D4EA8
off_8031BB0:    .word 0x3C0
// end of function sub_8031B34

.thumb
sub_8031BB4:
    push {r7,lr}
    mov r7, #1
    add r6, r0, #0
    lsl r6, r6, #8
loc_8031BBC:
    add r2, r7, #0
    orr r2, r6
    mov r0, #9
    mov r1, #0
    add r1, r1, r7
    bl sub_80540C6
    sub r7, #1
    bge loc_8031BBC
    pop {r7,pc}
// end of function sub_8031BB4

.thumb
sub_8031BD0:
    push {lr}
    pop {pc}
// end of function sub_8031BD0

.thumb
sub_8031BD4:
    push {r4-r7,lr}
    ldr r6, [pc, #0x8031c00-0x8031bd6-2] // =0x15C0
    mov r4, #0
loc_8031BDA:
    add r0, r6, #0
    bl sub_8024FF4
    beq loc_8031BF4
    ldr r1, [pc, #0x8031c00-0x8031be2-2] // =0x15C0
    sub r0, r6, r1
    ldr r7, [pc, #0x8031c04-0x8031be6-2] // =0x1640
    add r7, r7, r0
    add r0, r7, #0
    bl sub_8024FF4
    beq loc_8031BF4
    add r4, #1
loc_8031BF4:
    add r6, #1
    ldr r1, [pc, #0x8031c04-0x8031bf6-2] // =0x1640
    cmp r6, r1
    blt loc_8031BDA
    add r0, r4, #0
    pop {r4-r7,pc}
off_8031C00:    .word 0x15C0
off_8031C04:    .word 0x1640
// end of function sub_8031BD4

loc_8031C08:
    b loc_80322CC
    b loc_80322D2
    b loc_80322D8
    b loc_80322DE
    b loc_80322E4
    b locret_80322EA
    b loc_80322DA
    b loc_80322E0
    b loc_80322E6
    b off_80322EC
    b off_80322F0+2
    b off_80322F8
    .word 0x33823380
    .hword 0x3384
    .word 0x33883386
    .word 0x338C338A
    .word 0x3390338E
    .word 0x33943392
    .word 0x33833381
    .word 0x33873385
    .word 0x338B3389
    .word 0x338F338D
    .word 0x33933391
    .word 0x33963395
    .word 0x339A3398
    .word 0x339E339C
    .word 0x33A233A0
    .word 0x33A633A4
    .word 0x33AA33A8
    .word 0x33993397
    .word 0x339D339B
    .word 0x33A1339F
    .word 0x33A533A3
    .word 0x33A933A7
    .word 0x33AC33AB
    .word 0x33B033AE
    .word 0x33B433B2
    .word 0x33B833B6
    .word 0x33BC33BA
    .word 0x33C033BE
    .word 0x33AF33AD
    .word 0x33B333B1
    .word 0x33B733B5
    .word 0x33BB33B9
    .word 0x33BF33BD
    .hword 0x33C1
.thumb
ho_8031CA4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8031cb4-0x8031ca6-2] // jt_8031CB8
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8031CB4:    .word jt_8031CB8
jt_8031CB8:    .word sub_8031CC4+1
    .word loc_8031E50+1
    .word sub_803219C+1
// end of function ho_8031CA4

.thumb
sub_8031CC4:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x8031dcc-0x8031cd8-4] // word_3002A50
    ldr r2, [pc, #0x8031dd0-0x8031cda-2] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x8031dd8-0x8031ce0-4] // loc_86DAE6C
    ldr r1, [pc, #0x8031ddc-0x8031ce2-2] // =0x6000020
    ldr r2, [pc, #0x8031de0-0x8031ce4-4] // =0x2B40
    bl loc_8000870
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x8031de8-0x8031cf0-4] // unk_3002AB0
    ldr r2, [pc, #0x8031dec-0x8031cf2-2] // =0x80
    bl f900_800098C
    mov r0, #0xd
    bl sub_802F628
    add r0, #0x60 
    ldr r1, [pc, #0x8031df0-0x8031d00-4] // unk_3002AF0
    ldr r2, [pc, #0x8031df4-0x8031d02-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8031df8-0x8031d08-4] // dword_868E224
    ldr r1, [pc, #0x8031dfc-0x8031d0a-2] // =0x6004000
    ldr r2, [pc, #0x8031e00-0x8031d0c-4] // =0x2800
    bl loc_8000870
    mov r0, #2
    bl sub_802F628
    ldr r1, [pc, #0x8031e0c-0x8031d18-4] // unk_3002BB0
    ldr r2, [pc, #0x8031e10-0x8031d1a-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8031e48-0x8031d20-4] // dword_86DE35C
    ldr r1, [pc, #0x8031e14-0x8031d22-2] // dword_2031000
    bl dword_8111700
    ldr r0, [pc, #0x8031e14-0x8031d28-4] // dword_2031000
    ldr r2, [r0]
    lsr r2, r2, #8
    sub r2, #4
    add r0, #4
    ldr r1, [pc, #0x8031e18-0x8031d32-2] // =0x6006400
    bl loc_8000870
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x8031e24-0x8031d3e-2] // word_3002780
    ldr r2, [pc, #0x8031e28-0x8031d40-4] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x8031e2c-0x8031d46-2] // dword_86CE300
    ldr r1, [pc, #0x8031e30-0x8031d48-4] // =0x6012820
    ldr r2, [pc, #0x8031e34-0x8031d4a-2] // =0x420
    bl loc_8000870
    mov r0, #0xa
    bl sub_802F628
    ldr r1, [pc, #0x8031e38-0x8031d56-2] // unk_3002760
    ldr r2, [pc, #0x8031e3c-0x8031d58-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8031e40-0x8031d5e-2] // dword_86D1794
    ldr r1, [pc, #0x8031e44-0x8031d60-4] // dword_202E000
    bl dword_8111700
    bl sub_80321BC
// end of function sub_8031CC4

    bl sub_80321E4
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #0
    str r0, [r5,#0x1c]
    str r0, [r5,#0x14]
    bl sub_80540BA
    bl sub_8032300
    mov r0, #0
    bl sub_803232C
    mov r0, #0
    bl sub_803237C
    bl sub_8032698
    bl sub_803271C
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8031e4c-0x8031d9a-2] // =0x1740
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #0
    strb r0, [r5,#0xd]
    strb r0, [r5,#0xf]
    str r0, [r5,#0x18]
    mov r0, #0xff
    strh r0, [r5,#0x10]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .balign 4, 0x00
    .word 0x86F5DC0
off_8031DCC:    .word word_3002A50
off_8031DD0:    .word 0x60
    .word 0x140
off_8031DD8:    .word loc_86DAE6C
dword_8031DDC:    .word 0x6000020
off_8031DE0:    .word 0x2B40
    .word dword_868E1A4
off_8031DE8:    .word unk_3002AB0
off_8031DEC:    .word 0x80
off_8031DF0:    .word unk_3002AF0
dword_8031DF4:    .word 0x20
off_8031DF8:    .word dword_868E224
dword_8031DFC:    .word 0x6004000
off_8031E00:    .word 0x2800
    .word dword_86D554C
    .word 0x86F6040
off_8031E0C:    .word unk_3002BB0
dword_8031E10:    .word 0x20
off_8031E14:    .word dword_2031000
dword_8031E18:    .word 0x6006400
    .word dword_86DE5D4
    .word 0x86F8A20
off_8031E24:    .word word_3002780
off_8031E28:    .word 0x80
off_8031E2C:    .word dword_86CE300
dword_8031E30:    .word 0x6012820
off_8031E34:    .word 0x420
off_8031E38:    .word unk_3002760
dword_8031E3C:    .word 0x20
off_8031E40:    .word dword_86D1794
off_8031E44:    .word dword_202E000
off_8031E48:    .word dword_86DE35C
off_8031E4C:    .word 0x1740
loc_8031E50:
    push {lr}
    ldr r0, [pc, #0x8031ea0-0x8031e52-2] // off_8031EA4
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80321E4
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#2]
    cmp r0, #0x1c
    bge locret_8031E9E
    cmp r0, #0x10
    beq locret_8031E9E
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #0xa
    tst r0, r1
    beq locret_8031E9E
    ldr r0, [r5,#0x18]
    mov r1, #1
    tst r0, r1
    bne locret_8031E9E
    bl sub_8005B5C
    beq locret_8031E9E
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x1c
    strb r0, [r5,#2]
locret_8031E9E:
    pop {pc}
off_8031EA0:    .word off_8031EA4
off_8031EA4:    .word sub_8031EC4+1
    .word sub_8031EF0+1
    .word sub_8031F1C+1
    .word sub_8031F3C+1
    .word sub_803206C+1
    .word sub_8032100+1
    .word sub_8032138+1
    .word sub_803218C+1
.thumb
sub_8031EC4:
    push {lr}
    bl sub_8005B5C
    beq loc_8031EE0
    ldrb r0, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    cmp r0, r1
    beq loc_8031EDC
    strb r0, [r5,#0xf]
    mov r0, #0x7d 
    bl f500_8000558
loc_8031EDC:
    bl sub_80324B0
loc_8031EE0:
    bl sub_8032280
    mov r0, #0
    bl sub_803237C
// end of function sub_8031EC4

    bl function_chunks__function_chunks_loc_80326CC
    .byte 0
    .byte 0xBD
.thumb
sub_8031EF0:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_8031F1A
    push {r5}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r5}
    mov r0, #0
    strb r0, [r5,#2]
    ldrb r0, [r5,#0x18]
    mov r1, #1
    bic r0, r1
    strb r0, [r5,#0x18]
locret_8031F1A:
    pop {pc}
// end of function sub_8031EF0

.thumb
sub_8031F1C:
    push {lr}
    ldrh r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r0, [r4,#0x4c]
    mov r0, #0x2f 
    bl sub_8032644
    bl sub_8032280
    mov r0, #0
    bl sub_803237C
// end of function sub_8031F1C

    mov r0, #0xc
    strb r0, [r5,#2]
    pop {pc}
.thumb
sub_8031F3C:
    push {r7,lr}
    mov r0, #0x80
    bl sub_80539A0
    tst r0, r0
    bne loc_8031F6E
    mov r7, #0x10
    bl sub_80539B0
    tst r0, r0
    beq loc_8031F54
    mov r7, #4
loc_8031F54:
    bl sub_8031EF0
    strb r7, [r5,#2]
    cmp r7, #0x10
    bne loc_8031F6E
    ldrh r0, [r5,#0x10]
    mov r1, #0xb0
    sub r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8031f7c-0x8031f66-2] // off_8031F80
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
loc_8031F6E:
    bl sub_8032280
    mov r0, #0
    bl sub_803237C
// end of function sub_8031F3C

    pop {r7,pc}
    .balign 4, 0x00
off_8031F7C:    .word off_8031F80
off_8031F80:    .word sub_8031F98+1
    .word sub_8031F98+1
    .word sub_8031FAC+1
    .word sub_8031FD4+1
    .word sub_8031FF0+1
    .word sub_8032018+1
.thumb
sub_8031F98:
    push {lr}
    mov r1, #0x32 
    ldrh r0, [r5,#0x10]
    cmp r0, #0xb0
    beq loc_8031FA8
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrh r1, [r4,#0x22]
loc_8031FA8:
    strh r1, [r5,#0x12]
    pop {pc}
// end of function sub_8031F98

.thumb
sub_8031FAC:
    push {lr}
    mov r0, #0x11
    mov r1, #0x6c 
    bl sub_8024F9C
    mov r4, r10
    ldr r1, [r4,#0x44]
    ldr r0, [pc, #0x8031fd0-0x8031fba-2] // =0x1770
    str r0, [r1,#0x40]
    ldr r1, [r4,#0x2c]
    ldrh r0, [r5,#0x10]
    str r0, [r1,#0x4c]
    mov r0, #0x32 
    bl sub_8032644
    mov r0, #0x14
    strb r0, [r5,#2]
    pop {pc}
off_8031FD0:    .word 0x1770
// end of function sub_8031FAC

.thumb
sub_8031FD4:
    push {lr}
    mov r0, #0x11
    mov r1, #0x6b 
    bl sub_8024F9C
    ldr r1, [r4,#0x2c]
    ldrh r0, [r5,#0x10]
    str r0, [r1,#0x4c]
    mov r0, #0x32 
    bl sub_8032644
    mov r0, #0x14
    strb r0, [r5,#2]
    pop {pc}
// end of function sub_8031FD4

.thumb
sub_8031FF0:
    push {lr}
    mov r0, #0x11
    mov r1, #0x6d 
    bl sub_8024F9C
    mov r4, r10
    ldr r1, [r4,#0x44]
    ldr r0, [pc, #0x8032014-0x8031ffe-2] // =0x1770
    str r0, [r1,#0x44]
    ldr r1, [r4,#0x2c]
    ldrh r0, [r5,#0x10]
    str r0, [r1,#0x4c]
    mov r0, #0x32 
    bl sub_8032644
    mov r0, #0x14
    strb r0, [r5,#2]
    pop {pc}
off_8032014:    .word 0x1770
// end of function sub_8031FF0

.thumb
sub_8032018:
    push {lr}
    mov r0, #0x11
    mov r1, #0x6a 
    bl sub_8024F9C
    ldr r1, [r4,#0x2c]
    ldrh r0, [r5,#0x10]
    str r0, [r1,#0x4c]
    mov r0, #0x32 
    bl sub_8032644
    mov r0, #0x18
    strb r0, [r5,#2]
    mov r6, r10
    ldr r6, [r6,#0x40]
    mov r0, #0xc
    strb r0, [r6,#0x12]
    mov r0, #0xff
    strb r0, [r6,#0x13]
    bl sub_80A9130
    ldr r0, [r7,#0x28]
    ldr r1, [r6,#0x3c]
    sub r0, r0, r1
    ldr r1, [r7,#0x24]
    ldr r2, [r6,#0x38]
    sub r1, r1, r2
    bl sub_8001740
    add r0, #0x10
    lsr r0, r0, #5
    mov r1, #7
    and r0, r1
    str r0, [r6,#0x44]
    ldr r0, [r7,#0x24]
    str r0, [r6,#0x38]
    ldr r0, [r7,#0x28]
    str r0, [r6,#0x3c]
    ldr r0, [r7,#0x2c]
    str r0, [r6,#0x40]
    pop {pc}
    .balign 4, 0x00
// end of function sub_8032018

.thumb
sub_803206C:
    push {r7,lr}
    ldr r0, [r5,#0x20]
    tst r0, r0
    bne loc_8032084
    mov r0, #1
    str r0, [r5,#0x20]
    mov r0, #0x40 
    bl sub_803232C
    mov r0, #0x9a
    bl f500_8000558
loc_8032084:
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrh r1, [r4,#0x20]
    add r1, #1
    strh r1, [r4,#0x20]
    ldrh r2, [r4,#0x22]
    cmp r1, r2
    bge loc_80320C0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #3
    and r1, r0
    beq loc_80320B8
    ldrh r0, [r5,#0x12]
    sub r0, #1
    ldrh r2, [r4,#0x20]
    add r2, r2, r0
    strh r2, [r4,#0x20]
    ldrh r1, [r4,#0x22]
    cmp r1, r2
    bge loc_80320B2
    strh r1, [r4,#0x20]
loc_80320B2:
    mov r0, #0
    strh r0, [r5,#0x12]
    b loc_80320C0
loc_80320B8:
    ldrh r0, [r5,#0x12]
    sub r0, #1
    strh r0, [r5,#0x12]
    bne loc_80320F4
loc_80320C0:
    mov r0, #0
    bl sub_803232C
    mov r0, #0x30 
    ldrh r7, [r5,#0x10]
    cmp r7, #0xb0
    beq loc_80320D0
    mov r0, #0x31 
loc_80320D0:
    bl sub_8032644
    add r0, r7, #0
    mov r1, #1
    bl sub_802D3D8
    bl sub_8032300
    ldrb r0, [r5,#0xc]
    sub r0, #1
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    bge loc_80320EC
    strb r0, [r5,#0xd]
loc_80320EC:
    mov r0, #4
    strb r0, [r5,#2]
    bl sub_8032698
loc_80320F4:
    bl sub_8032280
    mov r0, #0
    bl sub_803237C
// end of function sub_803206C

    pop {r7,pc}
.thumb
sub_8032100:
    push {lr}
    mov r1, #4
    ldrh r0, [r5,#0x10]
    cmp r0, #0xb5
    bne loc_803210C
    mov r1, #0x18
loc_803210C:
    strb r1, [r5,#2]
    ldrh r0, [r5,#0x10]
    mov r1, #1
    bl sub_802D3D8
    bl sub_8032300
    ldrb r0, [r5,#0xc]
    sub r0, #1
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    bge loc_8032126
    strb r0, [r5,#0xd]
loc_8032126:
    bl sub_8032280
    mov r0, #0
    bl sub_803237C
// end of function sub_8032100

    bl sub_8032698
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8032138:
    push {lr}
    mov r0, #0x80
    bl sub_80539A0
    bne locret_803218A
    ldrh r0, [r5,#0x10]
    mov r1, #1
    bl sub_802D3D8
    bl sub_8032300
    ldrb r0, [r5,#0xc]
    sub r0, #1
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    bge loc_803215A
    strb r0, [r5,#0xd]
loc_803215A:
    push {r5}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r5}
    bl sub_8032698
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x1c
    strb r0, [r5,#2]
    mov r1, #2
    ldr r0, [r5,#0x18]
    orr r0, r1
    mov r1, #1
    bic r0, r1
    str r0, [r5,#0x18]
locret_803218A:
    pop {pc}
// end of function sub_8032138

.thumb
sub_803218C:
    push {lr}
    bl sub_8005B5C
    beq locret_8032198
    mov r1, #8
    strb r1, [r5,#1]
locret_8032198:
    pop {pc}
    .balign 4, 0x00
// end of function sub_803218C

.thumb
sub_803219C:
    push {lr}
    bl sub_80540BA
    mov r1, #2
    ldr r0, [r5,#0x18]
    tst r0, r1
    beq loc_80321B6
    mov r0, #1
    bl sub_802D920
    bl sub_802DE70
    b locret_80321BA
loc_80321B6:
    bl sub_802DE3C
locret_80321BA:
    pop {pc}
// end of function sub_803219C

.thumb
sub_80321BC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80321d4-0x80321be-2] // dword_87548F4
    mov r1, #0xa5
    ldr r2, [pc, #0x80321dc-0x80321c2-2] // dword_2016C00
    ldr r3, [pc, #0x80321e0-0x80321c4-4] // =0x6006C00
    mov r4, #6
    mov r5, #1
    ldr r6, [pc, #0x80321d8-0x80321ca-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBD
off_80321D4:    .word dword_87548F4
off_80321D8:    .word dword_868E224
off_80321DC:    .word dword_2016C00
dword_80321E0:    .word 0x6006C00
// end of function sub_80321BC

.thumb
sub_80321E4:
    push {lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8032260-0x80321ee-2] // dword_86D554C
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_80321E4

    pop {r5}
    push {r5}
    mov r0, #0x10
    mov r1, #5
    mov r2, #1
    ldr r3, [pc, #0x8032264-0x8032202-2] // dword_86DE5D4
    mov r4, #0xb
    mov r5, #5
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r0, #3
    mov r1, #5
    mov r2, #2
    mov r3, #0
    mov r4, #0x18
    mov r5, #9
    bl sub_8001DF8
    pop {r5}
    bl function_chunks__function_chunks_loc_80326CC
    .byte 0xA5
    .byte 0x20
    .byte 0xFB
    .byte 0xF7
    .byte 0xE6
    .byte 0xF8
    .byte 5
    .byte 0x28 
    .byte 0x16
    .byte 0xDB
    .byte 0x20
    .byte 0xB4
    .byte 5
    .byte 0x38 
    .byte 0x80
    .byte 0
    .byte 0xC
    .byte 0x4B 
    .byte 0x1B
    .byte 0x58 
    .byte 0xF
    .byte 0x20
    .byte 2
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 0xC
    .byte 0x24 
    .byte 4
    .byte 0x25 
    .byte 0xCF
    .byte 0xF7
    .byte 0xCA
    .byte 0xFD
    pop {r5}
    push {r5}
    mov r0, #0x10
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x803227c-0x8032252-2] // loc_8031C08
    mov r4, #6
    mov r5, #2
    bl sub_8001DDC
    pop {r5}
    pop {pc}
off_8032260:    .word dword_86D554C
off_8032264:    .word dword_86DE5D4
    .word off_803226C
off_803226C:    .word dword_86D59FC
    .word dword_86D5A5C
    .word dword_86D5ABC
    .word dword_86D5B1C
off_803227C:    .word loc_8031C08
.thumb
sub_8032280:
    push {r5,r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x44]
    mov r0, #2
    bl sub_802F628
    add r6, r0, #0
    mov r0, #0xe
    add r5, r6, r0
    ldrh r2, [r5]
    add r3, r2, #0
    ldr r0, [r7,#0x40]
    tst r0, r0
    beq loc_80322A4
    mov r0, #0x14
    add r5, r6, r0
    ldrh r2, [r5]
    ldrh r3, [r5,#2]
loc_80322A4:
    ldr r4, [pc, #0x80322ec-0x80322a4-4] // word_3002BC4
    strh r2, [r4]
    strh r3, [r4,#(word_3002BC6 - 0x3002bc4)]
    mov r0, #0xe
    add r5, r6, r0
    ldrh r2, [r5]
    add r3, r2, #0
    push {r2,r3}
    mov r0, #0x11
    mov r1, #0x6b 
    bl sub_8024FF0
    pop {r2,r3}
    beq loc_80322C8
    mov r0, #0x18
    add r5, r6, r0
    ldrh r2, [r5]
    ldrh r3, [r5,#2]
loc_80322C8:
    ldr r4, [pc, #0x80322f4-0x80322c8-4] // word_3002BCC
    strh r2, [r4]
loc_80322CC:
    strh r3, [r4,#(word_3002BCE - 0x3002bcc)]
    mov r0, #0xe
    add r5, r6, r0
loc_80322D2:
    ldrh r2, [r5]
    add r3, r2, #0
    ldr r0, [r7,#0x44]
loc_80322D8:
    tst r0, r0
loc_80322DA:
    beq loc_80322E4
    mov r0, #0x1c
loc_80322DE:
    add r5, r6, r0
loc_80322E0:
    ldrh r2, [r5]
    ldrh r3, [r5,#2]
loc_80322E4:
    ldr r4, [pc, #0x80322f0-0x80322e4-4] // word_3002BC8
loc_80322E6:
    strh r2, [r4]
    strh r3, [r4,#(word_3002BCA - 0x3002bc8)]
locret_80322EA:
    pop {r5,r7,pc}
off_80322EC:    .word word_3002BC4
off_80322F0:    .word word_3002BC8
off_80322F4:    .word word_3002BCC
off_80322F8:    .word dword_200A448
// end of function sub_8032280

    str r0, [r0,#4]
    lsr r7, r5, #1
.thumb
sub_8032300:
    push {r7,lr}
    ldr r6, [pc, #0x8032328-0x8032302-2] // dword_201A000
    add r0, r6, #0
    mov r1, #6
    bl f900_8000904
    mov r7, #0xb0
    mov r3, #0
loc_8032310:
    add r0, r7, #0
    bl sub_802D3F8
    beq loc_803231E
    mov r1, #0xb0
    strb r7, [r6,r3]
    add r3, #1
loc_803231E:
    add r7, #1
    cmp r7, #0xb5
    ble loc_8032310
    strb r3, [r5,#0xc]
    pop {r7,pc}
off_8032328:    .word dword_201A000
// end of function sub_8032300

.thumb
sub_803232C:
    push {r7,lr}
    add r7, r0, #0
    ldr r0, [pc, #0x8032364-0x8032330-4] // dword_86CE720
    ldr r1, [pc, #0x8032368-0x8032332-2] // =0x6003C00
    ldr r2, [pc, #0x803236c-0x8032334-4] // =0x340
    bl loc_8000874
    tst r7, r7
    beq loc_8032354
    add r2, r7, #0
    ldr r0, [pc, #0x8032370-0x8032340-4] // dword_86CEA60
    add r0, r0, r2
    ldr r1, [pc, #0x8032374-0x8032344-4] // unk_3002B70
    mov r2, #0x20 
    push {r0,r2}
    bl loc_8000870
    pop {r0,r2}
    ldr r1, [pc, #0x8032378-0x8032350-4] // unk_3002B90
    b loc_803235E
loc_8032354:
    add r2, r7, #0
    ldr r0, [pc, #0x8032370-0x8032356-2] // dword_86CEA60
    add r0, r0, r2
    ldr r1, [pc, #0x8032374-0x803235a-2] // unk_3002B70
    mov r2, #0x40 
loc_803235E:
    bl loc_8000870
    pop {r7,pc}
off_8032364:    .word dword_86CE720
dword_8032368:    .word 0x6003C00
off_803236C:    .word 0x340
off_8032370:    .word dword_86CEA60
off_8032374:    .word unk_3002B70
off_8032378:    .word unk_3002B90
// end of function sub_803232C

.thumb
sub_803237C:
    push {r5,r7,lr}
    mov r1, r8
    push {r1}
    mov r8, r0
    mov r1, r8
    mov r0, #2
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8032408-0x803238e-2] // dword_803240C
    mov r4, #0xb
    mov r5, #2
    bl sub_8001DDC
// end of function sub_803237C

    sub sp, sp, #0x10
    mov r6, #9
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r0, [r7,#0x20]
    ldrh r2, [r7,#0x22]
    lsr r2, r2, #2
    cmp r0, r2
    bgt loc_80323AC
    mov r6, #0xa
loc_80323AC:
    mov r2, sp
    add r1, r6, #0
    bl sub_8032448
    mov r1, r8
    mov r0, #3
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    mov r3, sp
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
    mov r1, r8
    mov r0, #7
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8032438-0x80323d2-2] // dword_803243C
    cmp r6, #9
    beq loc_80323DA
    ldr r3, [pc, #0x8032440-0x80323d8-4] // loc_8032444
loc_80323DA:
    mov r4, #1
    mov r5, #2
    bl sub_8001DDC
    ldrh r0, [r7,#0x22]
    mov r2, sp
    add r1, r6, #0
    bl sub_8032448
    mov r1, r8
    mov r0, #8
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    mov r3, sp
    mov r4, #4
    mov r5, #2
    bl sub_8001DDC
    add sp, sp, #0x10
    pop {r1}
    mov r8, r1
    pop {r5,r7,pc}
off_8032408:    .word dword_803240C
dword_803240C:    .word 0x91F891E0, 0x91F891F8, 0x91F691F8, 0x91F891F8, 0x91F891F8
    .word 0x91E195E0, 0x91F991F9, 0x91F991F9, 0x91F991F7, 0x91F991F9
    .word 0x95E191F9
off_8032438:    .word dword_803243C
dword_803243C:    .word 0x91F791F6
off_8032440:    .word loc_8032444
loc_8032444:
    .hword 0xa1f6 // adr r1, loc_8032820
    .hword 0xa1f7 // adr r1, loc_8032824
.thumb
sub_8032448:
    push {r5-r7,lr}
    mov r3, r8
    mov r4, r9
    push {r3,r4}
    mov r8, r0
    mov r9, r2
    ldr r6, [pc, #0x80324ac-0x8032454-4] // =0x1E0
    lsl r1, r1, #0xc
    orr r6, r1
    ldr r0, [pc, #0x8032498-0x803245a-2] // dword_803249C
    add r1, r2, #0
    mov r2, #0x10
    bl f900_800097A
    mov r0, r8
    tst r0, r0
    beq loc_803248E
    bl fA00_8000A30
    mov r2, r9
    add r2, #6
loc_8032472:
    mov r1, #0xf
    and r1, r0
    lsr r0, r0, #4
    tst r0, r0
    bne loc_8032480
    tst r1, r1
    beq loc_803248E
loc_8032480:
    lsl r1, r1, #1
    add r4, r6, r1
    strh r4, [r2]
    add r4, #1
    strh r4, [r2,#8]
    sub r2, #2
    b loc_8032472
loc_803248E:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8032498:    .word dword_803249C
dword_803249C:    .word 0x91F891F8, 0x91F891F8, 0x91F991F9, 0x91F991F9
dword_80324AC:    .word 0x1E2
// end of function sub_8032448

.thumb
sub_80324B0:
    push {r7,lr}
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq locret_803250E
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    mov r1, #0x40 
    and r1, r6
    beq loc_80324D8
    ldrb r1, [r5,#0xc]
    sub r2, r1, #1
    ldrb r0, [r5,#0xd]
    tst r0, r0
    beq loc_80324D0
    sub r2, r0, #1
loc_80324D0:
    strb r2, [r5,#0xd]
    bl sub_8032698
    b loc_803250A
loc_80324D8:
    mov r1, #0x80
    and r1, r6
    beq loc_80324F4
    mov r2, #0
    ldrb r0, [r5,#0xd]
    ldrb r1, [r5,#0xc]
    sub r1, #1
    cmp r0, r1
    beq loc_80324EC
    add r2, r0, #1
loc_80324EC:
    strb r2, [r5,#0xd]
    bl sub_8032698
    b loc_803250A
loc_80324F4:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#2]
    mov r1, #1
    and r1, r6
    beq loc_803250A
    mov r0, #0x7e 
    bl f500_8000558
    bl loc_8032510
loc_803250A:
    bl sub_8032668
locret_803250E:
    pop {r7,pc}
// end of function sub_80324B0

loc_8032510:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    blt loc_8032532
    ldrb r0, [r5,#0xd]
    ldr r1, [pc, #0x8032714-0x803251e-2] // dword_201A000
    ldrb r0, [r1,r0]
    add r1, r0, #0
    sub r1, #0xb0
    lsl r1, r1, #2
    ldr r4, [pc, #0x8032540-0x8032528-4] // off_8032544
    ldr r4, [r4,r1]
    mov lr, pc
    bx r4
    pop {r7,pc}
loc_8032532:
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #0x2e 
    bl sub_8032644
    pop {r7,pc}
    .byte 0, 0
off_8032540:    .word off_8032544
off_8032544:    .word sub_803255C+1
    .word sub_803255C+1
    .word sub_8032584+1
    .word sub_80325AC+1
    .word sub_80325D8+1
    .word sub_8032618+1
.thumb
sub_803255C:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldrh r1, [r4,#0x20]
    ldrh r2, [r4,#0x22]
    cmp r1, r2
    beq loc_8032576
    strh r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x20]
    pop {pc}
loc_8032576:
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #0x2e 
    bl sub_8032644
    pop {pc}
    .balign 4, 0x00
// end of function sub_803255C

.thumb
sub_8032584:
    push {lr}
    strh r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x44]
    ldr r1, [r4,#0x40]
    tst r1, r1
    bne loc_8032598
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
loc_8032598:
    mov r0, #4
    strb r0, [r5,#2]
    ldrh r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r0, [r4,#0x4c]
    mov r0, #0x33 
    bl sub_8032644
    pop {pc}
// end of function sub_8032584

.thumb
sub_80325AC:
    push {lr}
    strh r0, [r5,#0x10]
    push {r0}
    mov r0, #0x11
    mov r1, #0x6b 
    bl sub_8024FF0
    pop {r0}
    bne loc_80325C4
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
loc_80325C4:
    mov r0, #4
    strb r0, [r5,#2]
    ldrh r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r0, [r4,#0x4c]
    mov r0, #0x33 
    bl sub_8032644
    pop {pc}
// end of function sub_80325AC

.thumb
sub_80325D8:
    push {lr}
    strh r0, [r5,#0x10]
    mov r6, r10
    ldr r4, [r6,#0x44]
    ldr r1, [r4,#0x44]
    tst r1, r1
    bne loc_8032602
    ldr r1, [r4,#0x38]
    tst r1, r1
    beq loc_80325F4
    str r1, [r4,#0x48]
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
loc_80325F4:
    strh r0, [r5,#0x10]
    mov r1, #4
    strb r1, [r5,#2]
    mov r0, #0x35 
    bl sub_8032644
    pop {pc}
loc_8032602:
    mov r1, #4
    strb r1, [r5,#2]
    ldrh r1, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r1, [r4,#0x4c]
    mov r0, #0x33 
    bl sub_8032644
    pop {pc}
    .balign 4, 0x00
// end of function sub_80325D8

.thumb
sub_8032618:
    push {lr}
    strh r0, [r5,#0x10]
    push {r0}
    bl sub_80A9130
    pop {r0}
    tst r7, r7
    beq loc_803262E
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
loc_803262E:
    mov r0, #4
    strb r0, [r5,#2]
    ldrh r0, [r5,#0x10]
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r0, [r4,#0x4c]
    mov r0, #0x34 
    bl sub_8032644
    pop {pc}
    .balign 4, 0x00
// end of function sub_8032618

.thumb
sub_8032644:
    push {r7,lr}
    mov r7, #0
    add r6, r0, #0
    lsl r6, r6, #8
loc_803264C:
    add r2, r7, #0
    orr r2, r6
    mov r0, #9
    mov r1, #6
    add r1, r1, r7
    bl sub_80540C6
    sub r7, #1
    bge loc_803264C
    ldrb r0, [r5,#0x18]
    mov r1, #1
    orr r0, r1
    strb r0, [r5,#0x18]
    pop {r7,pc}
// end of function sub_8032644

.thumb
sub_8032668:
    push {r7,lr}
    mov r0, #0
    lsl r0, r0, #0x10
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #1
    ldr r1, [pc, #0x8032684-0x8032672-2] // dword_8032688
    ldrh r1, [r1,r2]
    ldr r2, [r5,#0x1c]
    mov r3, #0
    bl sub_80383F0
    str r2, [r5,#0x1c]
    pop {r7,pc}
    .balign 4, 0x00
off_8032684:    .word dword_8032688
dword_8032688:    .word 0x3F002E
    .word 0x610050
    .word 0x830072
    .word 0xA142
// end of function sub_8032668

.thumb
sub_8032698:
    push {lr}
    ldrb r0, [r5,#0xc]
    tst r0, r0
    bne loc_80326A2
    b locret_80326CA
loc_80326A2:
    ldrb r0, [r5,#0xd]
    ldr r1, [pc, #0x8032714-0x80326a4-4] // dword_201A000
    ldrb r1, [r1,r0]
    sub r1, #0xb0
    add r1, #0x28 
    strb r1, [r5,#0xe]
    push {r4-r7}
    ldr r0, [pc, #0x8032700-0x80326b0-4] // unk_86DE644
    ldr r2, [pc, #0x8032704-0x80326b2-2] // word_2014000
    ldr r3, [pc, #0x8032708-0x80326b4-4] // =0x6007000
    mov r4, #0xb
    mov r5, #3
    ldr r6, [pc, #0x803270c-0x80326ba-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBC
    .byte 0x68 
    .byte 0x61 
    .byte 0
    .byte 0xF0
    .byte 1
    .byte 0xF8
locret_80326CA:
    pop {pc}
// end of function sub_8032698

function_chunks__function_chunks_loc_80326CC:
    push {lr}
    ldr r0, [r5,#0x14]
    tst r0, r0
    bne loc_80326EA
    push {r5}
    mov r0, #0x10
    mov r1, #0xc
    mov r2, #2
    mov r3, #0
    mov r4, #0xb
    mov r5, #6
    bl sub_8001DF8
    pop {r5}
    b locret_80326FE
loc_80326EA:
    push {r5}
    mov r0, #0x10
    mov r1, #0xc
    mov r2, #2
    ldr r3, [pc, #0x8032710-0x80326f2-2] // =0x8031C20
    mov r4, #0xb
    mov r5, #6
    bl sub_8001DDC
    pop {r5}
locret_80326FE:
    pop {pc}
off_8032700:    .word unk_86DE644
off_8032704:    .word word_2014000
dword_8032708:    .word 0x6007000
off_803270C:    .word dword_86C6E60
dword_8032710:    .word 0x8031C20
off_8032714:    .word dword_201A000
    .word 0x340
.thumb
sub_803271C:
    push {r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_8032736
    sub r7, #1
loc_8032726:
    mov r0, #0xd
    mov r1, #0
    add r1, r1, r7
    add r2, r7, #0
    bl sub_80540C6
    sub r7, #1
    bge loc_8032726
locret_8032736:
    pop {r7,pc}
// end of function sub_803271C

.thumb
sub_8032738:
    b loc_8032B3C
// end of function sub_8032738

    b loc_8032B42
    b loc_8032B48
    b loc_8032B4E
    b loc_8032B54
    b loc_8032B5A
    b loc_8032B60
    b loc_8032B66
    b loc_8032B4E
    b loc_8032B54
    b loc_8032B5A
    b loc_8032B60
    b loc_8032B66
    b loc_8032B6C
    b loc_8032B72
    b loc_8032B78
    b sub_8032B9C
    b loc_8032BA2
    b loc_8032BA8
    b loc_8032BAE
    b loc_8032BB4
    b word_8032BBA
    b loc_8032BC0
    .hword 0xE22E
    b loc_8032BAE
    b loc_8032BB4
    b word_8032BBA
    b loc_8032BC0
    b loc_8032BC4+2
    b loc_8032BCC
    b loc_8032BD0+2
    b loc_8032BD8
    b unk_8032BFC
    b unk_8032C02
    b unk_8032C08
    b unk_8032C0E
    b unk_8032C14
    b unk_8032C1A
    b unk_8032C20
    b unk_8032C26
    b unk_8032C0E
    b unk_8032C14
    b unk_8032C1A
    b unk_8032C20
    b unk_8032C26
    b unk_8032C2C
    b unk_8032C32
    b unk_8032C38
    b unk_8032C5C
    b unk_8032C62
    b unk_8032C68
    b unk_8032C6E
    b unk_8032C74
    b unk_8032C7A
    b unk_8032C80
    b unk_8032C86
    b unk_8032C6E
    b unk_8032C74
    b unk_8032C7A
    b unk_8032C80
    b unk_8032C86
    b loc_8032C8C
    b loc_8032C92
    b loc_8032C98
    b loc_8032BDC
    b loc_8032BE2
    b off_8032BE8
    .hword 0xE216
    b unk_8032BF4
    b unk_8032BFA
    b unk_8032C00
    b unk_8032C06
    b off_8032BEC+2
    b unk_8032BF4
    b unk_8032BFA
    b unk_8032C00
    b unk_8032C06
    b unk_8032C0C
    b unk_8032C12
    b unk_8032C18
    b unk_8032C3C
    b unk_8032C42
    b unk_8032C48
    b unk_8032C4E
    b unk_8032C54
    b unk_8032C5A
    b unk_8032C60
    b unk_8032C66
    b unk_8032C4E
    b unk_8032C54
    b unk_8032C5A
    b unk_8032C60
    b unk_8032C66
    b unk_8032C6C
    b unk_8032C72
    b unk_8032C78
    b loc_8032C9C
    b loc_8032CA2
    b loc_8032CA6+2
    b dword_8032CAE
    b dword_8032CB2+2
    .hword 0xE25A
    b dword_8032CBE+2
    b dword_8032CC6
    b dword_8032CAE
    b dword_8032CB2+2
    b dword_8032CBA
    b dword_8032CBE+2
    b dword_8032CC6
    b dword_8032CCA+2
    b loc_8032CD2
    b loc_8032CD8
    b loc_8032CFC
    b loc_8032D02
    b off_8032D08
    b loc_8032D0E
loc_8032820:
    b loc_8032D14
    b loc_8032D1A
loc_8032824:
    b sub_8032D20
    b loc_8032D26
    b loc_8032D0E
    b loc_8032D14
    b loc_8032D1A
    b sub_8032D20
    b loc_8032D26
    b loc_8032D2C
    b loc_8032D32
    b loc_8032D38
dword_8032838:    .word 0xFFFF0012, 0xFFFFFFFF
loc_8032840:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8032850-0x8032842-2] // off_8032854
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_8032850:    .word off_8032854
off_8032854:    .word sub_8032860+1
    .word sub_803297C+1
    .word sub_8032A20+1
.thumb
sub_8032860:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x8032924-0x8032874-4] // word_3002A50
    ldr r2, [pc, #0x8032928-0x8032876-2] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x803292c-0x803287c-4] // loc_86DAE6C
    ldr r1, [pc, #0x8032930-0x803287e-2] // =0x6000020
    ldr r2, [pc, #0x8032934-0x8032880-4] // =0x2B40
    bl loc_8000870
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x803293c-0x803288c-4] // unk_3002C10
    ldr r2, [pc, #0x8032940-0x803288e-2] // =0x20
    bl f900_800098C
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x8032954-0x803289a-2] // word_3002780
    ldr r2, [pc, #0x8032958-0x803289c-4] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x803295c-0x80328a2-2] // dword_86CE300
    ldr r1, [pc, #0x8032960-0x80328a4-4] // =0x6010020
    ldr r2, [pc, #0x8032964-0x80328a6-2] // =0x420
    bl f900_80009A0
    ldr r7, [pc, #0x803296c-0x80328ac-4] // unk_86E4BEC
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_80328C4
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_80328C4
    ldr r7, [pc, #0x8032974-0x80328c2-2] // dword_86E5B94
loc_80328C4:
    add r0, r7, #0
    ldr r1, [pc, #0x8032970-0x80328c6-2] // dword_2028000
    bl dword_8111700
    bl sub_8032A2C
// end of function sub_8032860

    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #0
    str r0, [r5,#0x14]
    strb r0, [r5,#0xd]
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    bl sub_8032BBC
    bl sub_8032D20
    bl sub_8032DA4
    bl sub_80540BA
    ldr r0, [pc, #0x8032968-0x80328f2-2] // dword_8032838
    bl sub_8053FFC
    bl sub_8032B9C
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8032978-0x8032900-4] // =0x1740
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .word 0x86F5DC0
off_8032924:    .word word_3002A50
off_8032928:    .word 0x60
off_803292C:    .word loc_86DAE6C
dword_8032930:    .word 0x6000020
off_8032934:    .word 0x2B40
    .word dword_869F7C4
off_803293C:    .word unk_3002C10
dword_8032940:    .word 0x20
    .word dword_86C6E60
    .word 0x6004000, 0x7000, 0x86F8A20
off_8032954:    .word word_3002780
off_8032958:    .word 0x80
off_803295C:    .word dword_86CE300
dword_8032960:    .word 0x6010020
off_8032964:    .word 0x420
off_8032968:    .word dword_8032838
off_803296C:    .word unk_86E4BEC
off_8032970:    .word dword_2028000
off_8032974:    .word dword_86E5B94
off_8032978:    .word 0x1740
.thumb
sub_803297C:
    push {lr}
    ldr r0, [pc, #0x80329d4-0x803297e-2] // off_80329D8
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#2]
// end of function sub_803297C

    cmp r0, #4
    bge locret_80329D2
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #2
    tst r0, r1
    beq loc_80329B4
    mov r0, #0x80
    bl sub_80539A0
    beq loc_80329BA
    mov r0, #8
    bl sub_80539A0
    beq locret_80329D2
    b loc_80329BA
loc_80329B4:
    mov r1, #8
    tst r0, r1
    beq locret_80329D2
loc_80329BA:
    bl sub_8005B5C
    beq locret_80329D2
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#2]
locret_80329D2:
    pop {pc}
off_80329D4:    .word off_80329D8
off_80329D8:    .word sub_80329E0+1
    .word sub_8032A10+1
.thumb
sub_80329E0:
    push {lr}
    bl sub_8005B5C
    beq locret_8032A0E
    bl sub_8032A60
    ldrb r0, [r5,#0xd]
    ldrb r1, [r5,#0xe]
    cmp r0, r1
    beq loc_80329FC
    strb r0, [r5,#0xe]
    mov r0, #0x7d 
    bl f500_8000558
loc_80329FC:
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#0x10]
    cmp r0, r1
    beq locret_8032A0E
    strb r0, [r5,#0x10]
    bl sub_8032D20
    bl sub_8032DA4
locret_8032A0E:
    pop {pc}
// end of function sub_80329E0

.thumb
sub_8032A10:
    push {lr}
    bl sub_8005B5C
    beq locret_8032A1C
    mov r1, #8
    strb r1, [r5,#1]
locret_8032A1C:
    pop {pc}
    .byte 0, 0
// end of function sub_8032A10

.thumb
sub_8032A20:
    push {lr}
    bl sub_80540BA
    bl sub_802DE3C
    pop {pc}
// end of function sub_8032A20

.thumb
sub_8032A2C:
    push {lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8032a58-0x8032a36-2] // dword_86D5B7C
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_8032A2C

    pop {r5}
    push {r5}
    mov r0, #2
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x8032a5c-0x8032a4a-2] // aAbbbbbbbb
    mov r4, #0x1a
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    pop {pc}
off_8032A58:    .word dword_86D5B7C
off_8032A5C:    .word aAbbbbbbbb
.thumb
sub_8032A60:
    push {r7,lr}
    ldrb r0, [r5,#0xc]
    tst r0, r0
    bne loc_8032A6A
    b locret_8032B94
loc_8032A6A:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    mov r1, #0x40 
    and r1, r6
    beq loc_8032A92
    ldrb r0, [r5,#0xd]
    sub r2, r0, #2
    bge loc_8032A7E
    b loc_8032B90
loc_8032A7E:
    strb r2, [r5,#0xd]
    mov r1, #0xfe
    and r1, r2
    ldrb r0, [r5,#0xf]
    cmp r0, r1
    bgt loc_8032A8C
    b loc_8032B90
loc_8032A8C:
    sub r0, #2
    strb r0, [r5,#0xf]
    b loc_8032B90
loc_8032A92:
    mov r1, #0x80
    and r1, r6
    beq loc_8032ACE
    ldrb r0, [r5,#0xd]
    add r2, r0, #2
    ldrb r1, [r5,#0xc]
    sub r1, #1
    cmp r2, r1
    ble loc_8032ABC
    ldrb r2, [r5,#0xd]
    mov r0, #1
    tst r2, r0
    beq loc_8032B90
    strb r1, [r5,#0xd]
    ldrb r3, [r5,#0xf]
    add r3, #8
    cmp r1, r3
    blt loc_8032B90
    sub r1, #6
    strb r1, [r5,#0xf]
    b loc_8032B90
loc_8032ABC:
    strb r2, [r5,#0xd]
    ldrb r0, [r5,#0xf]
    sub r2, r2, r0
    cmp r2, #8
    blt loc_8032B90
    ldrb r0, [r5,#0xf]
    add r0, #2
    strb r0, [r5,#0xf]
    b loc_8032B90
loc_8032ACE:
    mov r1, #0x20 
    and r1, r6
    beq loc_8032AE4
    ldrb r0, [r5,#0xd]
    mov r1, #1
    and r1, r0
    beq loc_8032B90
    sub r2, r0, #1
    blt loc_8032B90
    strb r2, [r5,#0xd]
    b loc_8032B90
loc_8032AE4:
    mov r1, #0x10
    and r1, r6
    beq loc_8032B14
    ldrb r0, [r5,#0xd]
    mov r1, #1
    and r1, r0
    bne loc_8032B90
    add r2, r0, #1
    ldrb r1, [r5,#0xc]
    sub r1, #1
    cmp r2, r1
    ble loc_8032B10
    sub r1, #1
    blt loc_8032B90
    strb r1, [r5,#0xd]
    ldrb r3, [r5,#0xf]
    add r3, #8
    cmp r1, r3
    blt loc_8032B90
    sub r1, #6
    strb r1, [r5,#0xf]
    b loc_8032B90
loc_8032B10:
    strb r2, [r5,#0xd]
    b loc_8032B90
loc_8032B14:
    mov r1, #0x80
    lsl r1, r1, #2
    and r1, r6
    beq loc_8032B44
    ldrb r0, [r5,#0xf]
    mov r1, #8
    sub r2, r0, r1
    blt loc_8032B34
    mov r3, #0xfe
    and r2, r3
    ldrb r3, [r5,#0xd]
    sub r3, r3, r0
    strb r2, [r5,#0xf]
    add r2, r2, r3
    strb r2, [r5,#0xd]
    b loc_8032B90
loc_8032B34:
    ldrb r0, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    sub r0, r0, r1
    mov r1, #0
loc_8032B3C:
    strb r1, [r5,#0xf]
    add r1, r1, r0
    strb r1, [r5,#0xd]
loc_8032B42:
    b loc_8032B90
loc_8032B44:
    mov r1, #0x80
    lsl r1, r1, #1
loc_8032B48:
    and r1, r6
    beq loc_8032B90
    ldrb r0, [r5,#0xd]
loc_8032B4E:
    ldrb r1, [r5,#0xf]
    sub r3, r0, r1
    mov r0, #8
loc_8032B54:
    add r2, r1, r0
    ldrb r1, [r5,#0xc]
    cmp r1, #8
loc_8032B5A:
    ble loc_8032B90
    sub r1, #7
    cmp r2, r1
loc_8032B60:
    bge loc_8032B72
    strb r2, [r5,#0xf]
    add r2, r2, r3
loc_8032B66:
    ldrb r1, [r5,#0xc]
    sub r1, #1
    cmp r2, r1
loc_8032B6C:
    bgt loc_8032B7C
    strb r2, [r5,#0xd]
    b loc_8032B90
loc_8032B72:
    lsr r1, r1, #1
    lsl r1, r1, #1
    strb r1, [r5,#0xf]
loc_8032B78:
    add r2, r1, r3
    b loc_8032B66
loc_8032B7C:
    ldrb r2, [r5,#0xd]
    mov r1, #1
    tst r2, r1
    beq loc_8032B8A
    ldrb r2, [r5,#0xc]
    sub r2, #2
    b loc_8032B8E
loc_8032B8A:
    ldrb r2, [r5,#0xc]
    sub r2, #1
loc_8032B8E:
    strb r2, [r5,#0xd]
loc_8032B90:
    bl sub_8032C88
locret_8032B94:
    pop {r7,pc}
    .balign 4, 0x00
// end of function sub_8032A60

.thumb
sub_8032B98:
    push {r7,lr}
    pop {r7,pc}
// end of function sub_8032B98

.thumb
sub_8032B9C:
    push {r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
loc_8032BA2:
    beq locret_8032BB8
    mov r7, #0
    add r6, r0, #0
loc_8032BA8:
    lsl r6, r6, #8
    add r2, r7, #0
    orr r2, r6
loc_8032BAE:
    mov r0, #0x11
    mov r1, #1
    add r1, r1, r7
loc_8032BB4:
    bl sub_80540C6
locret_8032BB8:
    pop {r7,pc}
word_8032BBA:    .hword 0x0
// end of function sub_8032B9C

.thumb
sub_8032BBC:
    push {r7,lr}
    ldr r6, [pc, #0x8032be8-0x8032bbe-2] // dword_201A000
loc_8032BC0:
    add r0, r6, #0
    mov r1, #0xa0
loc_8032BC4:
    bl f900_8000904
    mov r7, #0
    mov r3, #0
loc_8032BCC:
    ldr r1, [pc, #0x8032bec-0x8032bcc-4] // unk_8032BF0
    ldrb r0, [r1,r7]
loc_8032BD0:
    bl sub_802D3F8
    beq loc_8032BDE
    ldr r1, [pc, #0x8032bec-0x8032bd6-2] // unk_8032BF0
loc_8032BD8:
    ldrb r0, [r1,r7]
    strb r0, [r6,r3]
loc_8032BDC:
    add r3, #1
loc_8032BDE:
    add r7, #1
    cmp r7, #0x95
loc_8032BE2:
    ble loc_8032BCC
    strb r3, [r5,#0xc]
    pop {r7,pc}
off_8032BE8:    .word dword_201A000
off_8032BEC:    .word unk_8032BF0
unk_8032BF0:    .byte 0
    .byte 2
    .byte 1
    .byte 5
unk_8032BF4:    .byte 6
    .byte 3
    .byte 4
    .byte 0x16
    .byte 0x17
    .byte 0x18
unk_8032BFA:    .byte 0xA
    .byte 0xB
unk_8032BFC:    .byte 0xC
    .byte 0xD
    .byte 0xE
    .byte 0xF
unk_8032C00:    .byte 0x10
    .byte 8
unk_8032C02:    .byte 9
    .byte 0x11
    .byte 0x12
    .byte 0x13
unk_8032C06:    .byte 0x14
    .byte 0x15
unk_8032C08:    .byte 0x19
    .byte 0x1C
    .byte 0x1D
    .byte 0x52 
unk_8032C0C:    .byte 0x53 
    .byte 0x5A 
unk_8032C0E:    .byte 0x5B 
    .byte 0x1A
    .byte 0x1B
    .byte 0x26 
unk_8032C12:    .byte 0x27 
    .byte 0x28 
unk_8032C14:    .byte 0x29 
    .byte 0x2A 
    .byte 0x2B 
    .byte 0x2C 
unk_8032C18:    .byte 0x2D 
    .byte 0x2E 
unk_8032C1A:    .byte 0x2F 
    .byte 0x30 
    .byte 0x31 
    .byte 0x32 
    .byte 0x33 
    .byte 0x34 
unk_8032C20:    .byte 0x35 
    .byte 0x36 
    .byte 0x37 
    .byte 0x38 
    .byte 0x39 
    .byte 0x3A 
unk_8032C26:    .byte 0x3B 
    .byte 0x3C 
    .byte 0x3D 
    .byte 0x3E 
    .byte 0x3F 
    .byte 0x40 
unk_8032C2C:    .byte 0x41 
    .byte 0x42 
    .byte 0x43 
    .byte 0x44 
    .byte 0x45 
    .byte 0x46 
unk_8032C32:    .byte 0x47 
    .byte 0x48 
    .byte 0x49 
    .byte 0x4A 
    .byte 0x4B 
    .byte 0x4C 
unk_8032C38:    .byte 0x4D 
    .byte 0x4E 
    .byte 0x55 
    .byte 0x5C 
unk_8032C3C:    .byte 0x68 
    .byte 0x5D 
    .byte 0x5E 
    .byte 0x5F 
    .byte 0x60 
    .byte 0x61 
unk_8032C42:    .byte 0x69 
    .byte 0x6A 
    .byte 0x7A 
    .byte 0x7B 
    .byte 0x54 
    .byte 0x21 
unk_8032C48:    .byte 0x22 
    .byte 0x23 
    .byte 0x24 
    .byte 0x25 
    .byte 0x56 
    .byte 0x57 
unk_8032C4E:    .byte 0x58 
    .byte 0x59 
    .byte 0x78 
    .byte 0x62 
    .byte 0x63 
    .byte 0x7C 
unk_8032C54:    .byte 0x7E 
    .byte 0x65 
    .byte 0x66 
    .byte 0x67 
    .byte 0x7F 
    .byte 0x77 
unk_8032C5A:    .byte 0x76 
    .byte 0x6B 
unk_8032C5C:    .byte 0x75 
    .byte 0x6F 
    .byte 0x70 
    .byte 0x71 
unk_8032C60:    .byte 0x72 
    .byte 0x73 
unk_8032C62:    .byte 0x74 
    .byte 0x64 
    .byte 0x50 
    .byte 0x51 
unk_8032C66:    .byte 0x4F 
    .byte 0x6C 
unk_8032C68:    .byte 0x6D 
    .byte 0x6E 
    .byte 0x79 
    .byte 7
unk_8032C6C:    .byte 0x1F
    .byte 0x20
unk_8032C6E:    .byte 0x1E
    .byte 0x80
    .byte 0x81
    .byte 0x82
unk_8032C72:    .byte 0x83
    .byte 0x84
unk_8032C74:    .byte 0x85
    .byte 0x90
    .byte 0x91
    .byte 0x92
unk_8032C78:    .byte 0x7D 
    .byte 0x97
unk_8032C7A:    .byte 0x93
    .byte 0x98
    .byte 0x94
    .byte 0x95
    .byte 0x96
    .byte 0x99
unk_8032C80:    .byte 0x9A
    .byte 0x9B
    .byte 0x9C
    .byte 0x9D
    .byte 0x9E
    .byte 0x9F
unk_8032C86:    .byte 0
    .byte 0
// end of function sub_8032BBC

.thumb
sub_8032C88:
    push {r7,lr}
    ldrb r0, [r5,#0xd]
loc_8032C8C:
    mov r1, #1
    and r0, r1
    lsl r0, r0, #1
loc_8032C92:
    ldr r1, [pc, #0x8032cb0-0x8032c92-2] // =0x2CB40000
    ldrh r0, [r1,r0]
    ldrb r2, [r5,#0xd]
loc_8032C98:
    ldrb r1, [r5,#0xf]
    sub r2, r2, r1
loc_8032C9C:
    lsl r2, r2, #1
    ldr r1, [pc, #0x8032cb8-0x8032c9e-2] // =0x2CBC0070
    ldrh r1, [r1,r2]
loc_8032CA2:
    ldrb r2, [r5,#0x11]
    mov r3, #0
loc_8032CA6:
    bl sub_80383EC
    strb r2, [r5,#0x11]
    pop {r7,pc}
dword_8032CAE:    .word 0x2CB40000
dword_8032CB2:    .word 0x100803
dword_8032CB6:    .word 0x2CBC0070
dword_8032CBA:    .word 0x180803
dword_8032CBE:    .word 0x280018
    .word 0x380028
dword_8032CC6:    .word 0x480038
dword_8032CCA:    .word 0xA0020048
    .byte 0x0
    .byte 0
// end of function sub_8032C88

.thumb
sub_8032CD0:
    push {lr}
loc_8032CD2:
    ldr r0, [r5,#0x14]
    mov r1, #1
    tst r0, r1
loc_8032CD8:
    bne locret_8032CF8
    mov r0, r8
    push {r0,r5}
    mov r0, #0
    mov r8, r0
    mov r1, #0
    mov r2, #0
    ldrh r3, [r5,#0x14]
    mov r4, #0x40 
    mov r5, #0x4c 
    mov r6, #0xe
    ldr r7, [pc, #0x8032d08-0x8032cee-2] // =0x340
    bl sub_8053A6C
    pop {r0,r5}
    mov r8, r0
locret_8032CF8:
    pop {pc}
    .byte 0
    .byte 0
// end of function sub_8032CD0

loc_8032CFC:
    ldr r0, [r0]
    lsl r1, r0, #0x18
    strh r4, [r4,r0]
loc_8032D02:
    lsr r1, r5, #1
    .hword 0xa000 // adr r0, 0x8032d08
    lsl r1, r0, #8
off_8032D08:    .word 0x340
    .byte 0x80
    .byte 0xB5
loc_8032D0E:
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_8032D1E
loc_8032D14:
    mov r0, #0xd
    mov r1, #1
    mov r2, #0
loc_8032D1A:
    bl sub_80540C6
locret_8032D1E:
    pop {r7,pc}
.thumb
sub_8032D20:
    push {r5,r7,lr}
    ldrb r0, [r5,#0xc]
    tst r0, r0
loc_8032D26:
    beq locret_8032D74
    ldrb r7, [r5,#0xf]
    mov r6, #0
loc_8032D2C:
    ldr r0, [pc, #0x8032d8c-0x8032d2c-4] // dword_201A000
    ldrb r1, [r0,r7]
    push {r0}
loc_8032D32:
    add r0, r1, #0
    bl sub_8006374
loc_8032D38:
    pop {r0}
    beq loc_8032D48
    push {r0,r1}
    ldr r0, [r5,#0x14]
    mov r1, #1
    orr r0, r1
    str r0, [r5,#0x14]
    pop {r0,r1}
loc_8032D48:
    push {r5-r7}
    ldr r0, [pc, #0x8032d78-0x8032d4a-2] // dword_87548F4
    ldr r2, [pc, #0x8032d84-0x8032d4c-4] // unk_2016000
    ldr r3, [pc, #0x8032d7c-0x8032d4e-2] // =0x6004000
    ldr r4, [pc, #0x8032d88-0x8032d50-4] // =0x200
    mul r6, r4
    add r2, r2, r6
    add r3, r3, r6
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8032d80-0x8032d5c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .word 0x3701BCE0
    add r6, #1
    ldrb r0, [r5,#0xc]
    cmp r7, r0
    bge locret_8032D74
    .word 0xDBDB2E08
locret_8032D74:
    pop {r5,r7,pc}
    .balign 4, 0x00
off_8032D78:    .word dword_87548F4
dword_8032D7C:    .word 0x6004000
off_8032D80:    .word dword_86C6E60
off_8032D84:    .word unk_2016000
off_8032D88:    .word 0x200
off_8032D8C:    .word dword_201A000
// end of function sub_8032D20

.thumb
sub_8032D90:
    push {r4-r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_8032DA2
    add r5, r2, #0
    mov r2, #2
    mov r4, #8
    bl sub_8001DDC
locret_8032DA2:
    pop {r4-r7,pc}
// end of function sub_8032D90

.thumb
sub_8032DA4:
    push {r4,lr}
    push {r5}
    mov r0, #4
    mov r1, #3
    mov r2, #2
    mov r3, #0
    mov r4, #0x14
    mov r5, #8
    bl sub_8001DF8
    pop {r5}
    ldr r0, [r5,#0x14]
    mov r1, #1
    tst r0, r1
    bne locret_8032E06
    ldrb r0, [r5,#0xc]
    mov r1, #2
    svc 6
    add r2, r0, r1
    lsl r2, r2, #1
    cmp r2, #8
    blt loc_8032DD2
    mov r2, #8
loc_8032DD2:
    mov r0, #4
    mov r1, #3
    ldr r3, [pc, #0x8032e08-0x8032dd6-2] // sub_8032738
    bl sub_8032D90
    mov r0, #0x10
    mov r1, #3
    ldrb r2, [r5,#0xc]
    lsr r2, r2, #1
    tst r2, r2
    beq locret_8032E06
    ldrb r4, [r5,#0xf]
    lsr r4, r4, #1
    add r4, #4
    cmp r2, r4
    blt loc_8032DF6
    mov r2, #8
    b loc_8032E00
loc_8032DF6:
    cmp r2, #4
    bge loc_8032DFE
    lsl r2, r2, #1
    b loc_8032E00
loc_8032DFE:
    mov r2, #6
loc_8032E00:
    ldr r3, [pc, #0x8032e0c-0x8032e00-4] // =0x80327B8
    bl sub_8032D90
locret_8032E06:
    pop {r4,pc}
off_8032E08:    .word sub_8032738
dword_8032E0C:    .word 0x80327B8
// end of function sub_8032DA4

.thumb
sub_8032E10:
    push {r0,r1,r4-r7,lr}
    ldr r0, [pc, #0x8032e58-0x8032e12-2] // dword_87548F4
    ldr r2, [pc, #0x8032e5c-0x8032e14-4] // unk_2016000
    ldr r3, [pc, #0x8032e60-0x8032e16-2] // =0x180
    bl sub_8053A30
    str r0, [r5,#0x14]
    ldr r0, [pc, #0x8032e5c-0x8032e1e-2] // unk_2016000
    mov r6, #0x20 
    lsl r6, r6, #4
    lsl r2, r6, #0x10
    orr r2, r6
    ldr r1, [pc, #0x8032e60-0x8032e28-4] // =0x180
    bl f900_80009FC
    mov r7, #0
    ldr r5, [pc, #0x8032e5c-0x8032e30-4] // unk_2016000
    mov r1, #0
loc_8032E34:
    push {r1,r7}
    ldr r0, [pc, #0x8032e58-0x8032e36-2] // dword_87548F4
    mov r4, #0x20 
    mul r4, r7
    add r2, r5, r4
    mov r4, #0x10
    add r3, r2, r4
    mov r6, #0x20 
    lsl r6, r6, #4
    bl sub_8032E64
    pop {r1,r7}
    add r1, #1
    add r7, #1
    cmp r1, #6
    blt loc_8032E34
    pop {r0,r1,r4-r7,pc}
    .balign 4, 0x00
off_8032E58:    .word dword_87548F4
off_8032E5C:    .word unk_2016000
off_8032E60:    .word 0x180
// end of function sub_8032E10

.thumb
sub_8032E64:
    push {r7,lr}
    lsl r1, r1, #1
    ldrh r4, [r0,r1]
    add r0, r0, r4
loc_8032E6C:
    ldrb r1, [r0]
    cmp r1, #0xe5
    bge locret_8032E86
    lsl r1, r1, #1
    add r4, r6, #0
    add r4, r4, r1
    strh r4, [r2]
    add r4, #1
    strh r4, [r3]
    add r2, #2
    add r3, #2
    add r0, #1
    b loc_8032E6C
locret_8032E86:
    pop {r7,pc}
// end of function sub_8032E64

    push {r5,r7,lr}
    ldr r0, [r5,#0x14]
    mov r1, #1
    tst r0, r1
    bne locret_8032EA6
    push {r5}
    mov r0, #4
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8032ea8-0x8032e9a-2] // unk_2016000
    mov r4, #8
    mov r5, #6
    bl sub_8001DDC
    pop {r5}
locret_8032EA6:
    pop {r5,r7,pc}
off_8032EA8:    .word unk_2016000
dword_8032EAC:    .word 0xC342C340, 0xC346C344, 0xC34AC348, 0xC34EC34C, 0xC352C350
    .word 0xC341C354, 0xC345C343, 0xC349C347, 0xC34DC34B, 0xC351C34F
    .word 0xC355C353, 0xC362C360, 0xC366C364, 0xC36AC368, 0xC36EC36C
    .word 0xC372C370, 0xC361C374, 0xC365C363, 0xC369C367, 0xC36DC36B
    .word 0xC371C36F, 0xC375C373, 0xC382C380, 0xC386C384, 0xC38AC388
    .word 0xC38EC38C, 0xC392C390, 0xC381C394, 0xC385C383, 0xC389C387
    .word 0xC38DC38B, 0xC391C38F, 0xC395C393, 0xC3A2C3A0, 0xC3A6C3A4
    .word 0xC3AAC3A8, 0xC3AEC3AC, 0xC3B2C3B0, 0xC3A1C3B4, 0xC3A5C3A3
    .word 0xC3A9C3A7, 0xC3ADC3AB, 0xC3B1C3AF, 0xC3B5C3B3, 0xC122C120
    .word 0xC126C124, 0xC12AC128, 0xC12EC12C, 0xC132C130, 0xC121C134
    .word 0xC125C123, 0xC129C127, 0xC12DC12B, 0xC131C12F, 0xC135C133
    .word 0xC142C140, 0xC146C144, 0xC14AC148, 0xC14EC14C, 0xC152C150
    .word 0xC141C154, 0xC145C143, 0xC149C147, 0xC14DC14B, 0xC151C14F
    .word 0xC155C153, 0xC162C160, 0xC166C164, 0xC16AC168, 0xC16EC16C
    .word 0xC172C170, 0xC161C174, 0xC165C163, 0xC169C167, 0xC16DC16B
    .word 0xC171C16F, 0xC175C173, 0xC182C180, 0xC186C184, 0xC18AC188
    .word 0xC18EC18C, 0xC183C181, 0xC187C185, 0xC18BC189, 0xC18FC18D
    .word 0xC192C190, 0xC196C194, 0xC19AC198, 0xC19EC19C, 0xC193C191
    .word 0xC197C195, 0xC19BC199, 0xC19FC19D, 0xC1A2C1A0, 0xC1A6C1A4
    .word 0xC1AAC1A8, 0xC1AEC1AC, 0xC1A3C1A1, 0xC1A7C1A5, 0xC1ABC1A9
    .word 0xC1AFC1AD, 0xC1B2C1B0, 0xC1B6C1B4, 0xC1BAC1B8, 0xC1BEC1BC
    .word 0xC1B3C1B1, 0xC1B7C1B5, 0xC1BBC1B9, 0xC1BFC1BD, 0xC222C220
    .word 0xC200C224, 0xC200C200, 0xC200C200, 0xC223C221, 0xC200C225
    .word 0xC200C200, 0xC200C200, 0xC232C230, 0xC200C234, 0xC200C200
    .word 0xC200C200, 0xC233C231, 0xC200C235, 0xC200C200, 0xC200C200
    .word 0xC242C240, 0xC200C244, 0xC200C200, 0xC200C200, 0xC243C241
    .word 0xC200C245, 0xC200C200, 0xC200C200, 0xC252C250, 0xC200C254
    .word 0xC200C200, 0xC200C200, 0xC253C251, 0xC200C255, 0xC200C200
    .word 0xC200C200, 0xC262C260, 0xC200C264, 0xC200C200, 0xC200C200
    .word 0xC263C261, 0xC200C265, 0xC200C200, 0xC200C200, 0xC272C270
    .word 0xC200C274, 0xC200C200, 0xC200C200, 0xC273C271, 0xC200C275
    .word 0xC200C200, 0xC200C200, 0xC282C280, 0xC200C284, 0xC290C200
    .word 0xC200C292, 0xC283C281, 0xC200C285, 0xC291C200, 0xC200C293
    .word 0xC282C280, 0xC200C284, 0xC2A0C200, 0xC2A4C2A2, 0xC283C281
    .word 0xC200C285, 0xC2A1C200, 0xC2A5C2A3, 0xFFFF0113, 0xFFFF0214
    .word 0xFFFF0349, 0xFFFFFFFF, 0xFF000445, 0xFF010545, 0xFF020645
    .word 0xFF030745, 0xFF040845, 0xFF050945, 0xFFFFFFFF, 0xFF000A50
    .word 0xFFFFFFFF, 0xFF010B50, 0xFFFFFFFF, 0xFF020B50, 0xFFFFFFFF
.thumb
ho_80331A4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80331b4-0x80331a6-2] // jt_80331B8
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80331B4:    .word jt_80331B8
jt_80331B8:    .word sub_80331C4+1
    .word sub_80334A4+1
    .word sub_8033CB0+1
// end of function ho_80331A4

.thumb
sub_80331C4:
    push {lr}
    bl sub_80331DC
// end of function sub_80331C4

    bl sub_80349F0
    bl sub_80346F4
    mov r0, #0x40 
    bl sub_8053980
    pop {pc}
    .balign 4, 0x00
.thumb
sub_80331DC:
    push {lr}
    bl sub_80348B4
    ldr r0, [pc, #0x8033488-0x80331e2-2] // dword_86F3F70
    ldr r1, [pc, #0x803348c-0x80331e4-4] // dword_2031000
    bl dword_8111700
    ldr r0, [pc, #0x8033490-0x80331ea-2] // loc_86F3D5C
    ldr r1, [pc, #0x8033494-0x80331ec-4] // dword_202E000
    bl dword_8111700
    bl sub_80540BA
    bl sub_8034944
    bl sub_8034994
    bl sub_80349C0
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x8033400-0x8033214-4] // word_3002A50
    ldr r2, [pc, #0x8033404-0x8033216-2] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x8033408-0x803321c-4] // loc_86DAE6C
    ldr r1, [pc, #0x803340c-0x803321e-2] // =0x6000020
    ldr r2, [pc, #0x8033410-0x8033220-4] // =0x2B40
    bl loc_8000874
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x8033418-0x803322c-4] // unk_3002BD0
    ldr r2, [pc, #0x803341c-0x803322e-2] // =0x20
    bl f900_800098C
    mov r0, #0xd
    bl sub_802F628
    ldr r1, [pc, #0x8033424-0x803323a-2] // =0x120
    add r0, r0, r1
    ldr r1, [pc, #0x8033420-0x803323e-2] // unk_3002BB0
    ldr r2, [pc, #0x8033428-0x8033240-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x803342c-0x8033246-2] // dword_86C6E60
    ldr r1, [pc, #0x8033430-0x8033248-4] // =0x6004000
    ldr r2, [pc, #0x8033434-0x803324a-2] // =0x400
    bl loc_8000874
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x803343c-0x8033256-2] // word_3002780
    ldr r2, [pc, #0x8033440-0x8033258-4] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x8033444-0x803325e-2] // dword_86CE300
    ldr r1, [pc, #0x8033448-0x8033260-4] // =0x6010020
    ldr r2, [pc, #0x803344c-0x8033262-2] // =0x420
    bl loc_8000874
    mov r0, #4
    bl sub_802F628
    ldr r1, [pc, #0x8033454-0x803326e-2] // unk_3002B50
    ldr r2, [pc, #0x8033458-0x8033270-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x803345c-0x8033276-2] // dword_86DABEC
    ldr r1, [pc, #0x8033460-0x8033278-4] // =0x6008820
    ldr r2, [pc, #0x8033464-0x803327a-2] // =0x280
    bl loc_8000874
    ldr r0, [pc, #0x8033480-0x8033280-4] // dword_86E2D1C
    ldr r1, [pc, #0x8033484-0x8033282-2] // dword_2028000
    bl dword_8111700
    bl sub_8033D18
// end of function sub_80331DC

    bl sub_8033DD8
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_80332AA
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    beq loc_80332AA
    bl sub_802D414
    b loc_80332BC
loc_80332AA:
    mov r0, r10
    ldr r3, [r0,#0x44]
    ldr r0, [r0,#0x40]
    ldrh r1, [r0,#0x22]
    ldrh r2, [r0,#0x20]
    cmp r2, r1
    ble loc_80332BC
    strh r1, [r0,#0x20]
    strh r1, [r3,#0x14]
loc_80332BC:
    mov r0, #0
    bl sub_803232C
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #0
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xf]
    str r0, [r5,#0x30]
    str r0, [r5,#0x34]
    str r0, [r5,#0x38]
    strb r0, [r5,#0x16]
    mov r0, #0xff
    strb r0, [r5,#0x10]
    mov r0, #0xa
    strb r0, [r5,#0xd]
    strb r0, [r5,#0xe]
    mov r0, #2
    str r0, [r5,#0x1c]
    mov r0, #0
    mov r1, #0x72 
    bl sub_8024FF0
    bne loc_80332FC
    bl sub_8034F14
    bne loc_8033308
loc_80332FC:
    bl sub_80333D4
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    orr r0, r1
    str r0, [r5,#0x1c]
loc_8033308:
    ldr r1, [pc, #0x8033498-0x8033308-4] // dword_803349C+2
    ldrh r0, [r1]
    str r0, [r5,#0x20]
    str r0, [r5,#0x24]
    mov r0, #0x11
    bl sub_800D742
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#0x18]
    add r0, r0, r1
    strb r0, [r5,#0x11]
    mov r4, #0xd
    mov r6, #0
    mov r7, #0x20 
    bl sub_80340B4
    ldr r0, [pc, #0x8033468-0x803332a-2] // dword_8032EAC+692
    bl sub_8053FFC
    mov r0, #0
    strb r0, [r5,#2]
    bl sub_803455C
    bl sub_803418C
    mov r0, #0x13
    bl sub_800D742
    strb r0, [r5,#0x12]
    mov r0, #0x14
    bl sub_800D742
    strb r0, [r5,#0x13]
    bl sub_80342C4
    bl sub_8034340
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x803349c-0x8033358-4] // =0xB0107F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    ldr r0, [r7,#0x1c]
    mov r1, #0x3f 
    strb r1, [r0,#8]
    mov r1, #0x23 
    strb r1, [r0,#9]
    mov r1, #0x33 
    strb r1, [r0,#0xa]
    mov r1, #6
    strb r1, [r0,#1]
    mov r1, #0
    strb r1, [r0,#5]
    mov r1, #0xea
    strb r1, [r0]
    mov r1, #0x9a
    strb r1, [r0,#4]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#7]
    mov r1, #6
    strb r1, [r0,#2]
    mov r1, #0x9a
    strb r1, [r0,#6]
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x28]
    strb r0, [r5,#0x15]
    bl sub_80481C8
    mov r0, #2
    bl sub_811168C
    ldr r0, [pc, #0x8033474-0x80333b4-4] // =0x4234574A
    ldr r1, [pc, #0x80334a0-0x80333b6-2] // =0x2000
    mov r2, #0
    bl sub_80480A4
    mov r0, #0x80
    lsl r0, r0, #4
    mov r1, #1
    mov r2, #2
    mov r3, #1
    bl sub_80480B4
    bl sub_8034E50
    pop {pc}
    .balign 4, 0x00
.thumb
sub_80333D4:
    push {lr}
    bl sub_8034408
// end of function sub_80333D4

    bl sub_8034384
    bl sub_80344FC
    mov r0, #0
    ldr r1, [pc, #0x8033478-0x80333e4-4] // dword_201C000
    mov r2, #4
    bl sub_8034430
    mov r0, #4
    ldr r1, [pc, #0x803347c-0x80333ee-2] // unk_201C080
    mov r2, #2
    bl sub_8034430
    bl sub_80344C4
    pop {pc}
    .word 0x86F5DC0
off_8033400:    .word word_3002A50
off_8033404:    .word 0x60
off_8033408:    .word loc_86DAE6C
dword_803340C:    .word 0x6000020
off_8033410:    .word 0x2B40
    .word dword_869F7C4
off_8033418:    .word unk_3002BD0
dword_803341C:    .word 0x20
off_8033420:    .word unk_3002BB0
off_8033424:    .word 0x120
dword_8033428:    .word 0x20
off_803342C:    .word dword_86C6E60
dword_8033430:    .word 0x6004000
off_8033434:    .word 0x400
    .word 0x86F8A20
off_803343C:    .word word_3002780
off_8033440:    .word 0x80
off_8033444:    .word dword_86CE300
dword_8033448:    .word 0x6010020
off_803344C:    .word 0x420
    .word 0x86F6400
off_8033454:    .word unk_3002B50
dword_8033458:    .word 0x20
off_803345C:    .word dword_86DABEC
dword_8033460:    .word 0x6008820
off_8033464:    .word 0x280
off_8033468:    .word dword_8032EAC+0x2B4
    .word 0x6006800, 0x6002800
dword_8033474:    .word 0x4234574A
off_8033478:    .word dword_201C000
off_803347C:    .word unk_201C080
off_8033480:    .word dword_86E2D1C
off_8033484:    .word dword_2028000
off_8033488:    .word dword_86F3F70
off_803348C:    .word dword_2031000
off_8033490:    .word loc_86F3D5C
off_8033494:    .word dword_202E000
off_8033498:    .word dword_803349C+2
dword_803349C:    .word 0xB0107F40
off_80334A0:    .word 0x2000
.thumb
sub_80334A4:
    push {lr}
    ldr r0, [pc, #0x80334f8-0x80334a6-2] // off_80334FC
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8054018
    bl sub_8054054
    ldrb r0, [r5,#2]
// end of function sub_80334A4

    cmp r0, #0x38 
    beq loc_80334C2
    cmp r0, #8
    bge locret_80334F6
loc_80334C2:
    mov r4, r10
    ldr r4, [r4,#4]
    ldrh r0, [r4,#2]
    mov r1, #0xa
    tst r0, r1
    beq locret_80334F6
    ldrb r0, [r5,#2]
    cmp r0, #4
    beq locret_80334F6
    cmp r0, #0x10
    beq locret_80334F6
    bl sub_8005B5C
    beq locret_80334F6
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0x40 
    bl sub_8053980
    mov r0, #8
    strb r0, [r5,#2]
locret_80334F6:
    pop {pc}
off_80334F8:    .word off_80334FC
off_80334FC:    .word sub_8033548+1
    .word sub_80335C4+1
    .word sub_803365C+1
    .word sub_8033670+1
    .word sub_8033688+1
    .word sub_80336CC+1
    .word sub_803373C+1
    .word sub_80337EC+1
    .word sub_8033894+1
    .word sub_8033910+1
    .word sub_8033910+1
    .word sub_8033938+1
    .word sub_80339CC+1
    .word sub_80339E4+1
    .word sub_8033AB8+1
    .word sub_8033BE0+1
    .word sub_8033C14+1
    .word sub_8033C54+1
    .word sub_8033C74+1
.thumb
sub_8033548:
    push {lr}
    bl sub_8005B5C
    beq locret_80335BC
    mov r0, #0x40 
    bl sub_8053990
    bl sub_8033DF4
    bl sub_8033DD8
    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034100
    bl sub_8034128
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    ldrb r0, [r5,#2]
    tst r0, r0
    bne locret_80335BC
    bl sub_8034DC4
    bl sub_8034D78
    bne loc_80335A2
    bl sub_8048164
    beq loc_80335A2
    bl sub_8110A8C
    bl sub_8034D44
    b locret_80335BC
loc_80335A2:
    bl sub_8034D08
    beq locret_80335BC
    mov r0, #0x14
    strb r0, [r5,#2]
    mov r1, #0x51 
    ldrh r0, [r5,#0x1a]
    ldr r2, [pc, #0x80335c0-0x80335b0-4] // =0x1000
    cmp r0, r2
    bne loc_80335B8
    mov r1, #0x4f 
loc_80335B8:
    bl sub_80346F4
locret_80335BC:
    pop {pc}
    .byte 0, 0
off_80335C0:    .word 0x1000
// end of function sub_8033548

.thumb
sub_80335C4:
    push {lr}
    mov r0, #1
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_80335EE
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    sub r0, #2
    strb r0, [r5,r1]
    mov r1, #0x20 
    mvn r1, r1
    add r1, #1
    cmp r0, r1
    bgt loc_8033608
    strb r1, [r5,#0xc]
    mov r0, #0x40 
    bl sub_8053990
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#2]
    b loc_8033608
loc_80335EE:
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0xff
    and r0, r1
    bne loc_8033608
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0x40 
    bl sub_8053990
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#2]
loc_8033608:
    push {r5}
    mov r0, #0
    mov r1, #2
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0xa
    bl sub_8001DF8
// end of function sub_80335C4

    pop {r5}
    bl sub_8033D18
    bl sub_8033DD8
    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034DC4
    bl sub_8034D78
    bne locret_8033654
    bl sub_8048164
    beq locret_8033654
    bl sub_8110A8C
    bl sub_8034D44
locret_8033654:
    pop {pc}
    .balign 4, 0x00
    .word 0x150
.thumb
sub_803365C:
    push {lr}
    bl sub_8005B5C
    beq locret_803366C
    bl sub_8110A8C
    mov r1, #8
    strb r1, [r5,#1]
locret_803366C:
    pop {pc}
    .byte 0, 0
// end of function sub_803365C

.thumb
sub_8033670:
    push {lr}
    bl sub_8005B5C
    beq locret_8033684
    mov r1, #4
    ldr r0, [r5,#0x1c]
    orr r0, r1
    str r0, [r5,#0x1c]
    mov r1, #8
    strb r1, [r5,#1]
locret_8033684:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8033670

.thumb
sub_8033688:
    push {lr}
    mov r0, #0x40 
    bl sub_8053990
    bl sub_8033DD8
// end of function sub_8033688

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034100
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    mov r0, #8
    bl sub_80539A0
    beq locret_80336C6
    mov r1, #0x3c 
    bl sub_80346F4
    mov r0, #0
    strb r0, [r5,#2]
locret_80336C6:
    pop {pc}
    .word 0x3FF
.thumb
sub_80336CC:
    push {lr}
    bl sub_8033EF0
    bl sub_8033DD8
// end of function sub_80336CC

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    bl sub_8034DC4
    bl sub_8034D78
    bne locret_8033732
    bl sub_8048164
    beq locret_8033732
    mov r1, #0x3c 
    bl sub_80346F4
    bl sub_8110A8C
    bl sub_8034D44
    ldr r0, [pc, #0x8033734-0x8033710-4] // =0x200
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_803372E
    ldr r0, [pc, #0x8033738-0x8033718-4] // =0xB00E
    str r0, [r5,#0x20]
    mov r0, #0x38 
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0xff
    strh r0, [r5,#0x3e]
    bl sub_804E448
    b locret_8033732
loc_803372E:
    mov r0, #0
    strb r0, [r5,#2]
locret_8033732:
    pop {pc}
off_8033734:    .word 0x200
dword_8033738:    .word 0xB00E
.thumb
sub_803373C:
    push {lr}
    bl sub_8033DD8
// end of function sub_803373C

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    bl sub_8034DC4
    bl sub_8034D78
    bne loc_803377E
    bl sub_8048164
    beq loc_8033784
    bl sub_8110A8C
    mov r0, #0x24 
    strb r0, [r5,#2]
    bl sub_80337D4
    mov r1, #0x54 
    b loc_80337CA
loc_803377E:
    bl sub_8048164
    bne locret_80337CE
loc_8033784:
    bl sub_8110A8C
    mov r0, #0x24 
    strb r0, [r5,#2]
    ldrh r0, [r5,#0x1a]
    ldr r1, [pc, #0x80337e4-0x803378e-2] // word_80337E8
    ldrh r1, [r1]
    cmp r0, r1
    bne loc_80337A4
    bl sub_8034F9C
    bl sub_8034870
    bl sub_80337D4
    b locret_80337CE
loc_80337A4:
    bl sub_8034F34
    tst r0, r0
    beq loc_80337B4
    mov r0, #0x48 
    strb r0, [r5,#2]
    mov r1, #0x5d 
    b loc_80337CA
loc_80337B4:
    ldr r1, [r5,#0x1c]
    ldr r2, [pc, #0x80337d0-0x80337b6-2] // =0x1000
    orr r1, r2
    str r1, [r5,#0x1c]
    mov r1, #0
    bl sub_80346FC
    mov r0, #0x74 
    bl f500_8000558
    b locret_80337CE
loc_80337CA:
    bl sub_80346F4
locret_80337CE:
    pop {pc}
off_80337D0:    .word 0x1000
.thumb
sub_80337D4:
    push {lr}
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x80337e0-0x80337d8-4] // =0x800
    orr r0, r1
    str r0, [r5,#0x1c]
    pop {pc}
off_80337E0:    .word 0x800
off_80337E4:    .word word_80337E8
word_80337E8:    .hword 0x1000
    .balign 4, 0x00
// end of function sub_80337D4

.thumb
sub_80337EC:
    push {lr}
    bl sub_8033DD8
// end of function sub_80337EC

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    bl sub_8034DC4
    bl sub_8034D78
    beq loc_803381E
    bl sub_8048164
    bne locret_803388A
loc_803381E:
    bl sub_8110A8C
    bl sub_8034D44
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x803388c-0x8033828-4] // =0x200
    tst r0, r1
    bne loc_803383C
    bic r0, r1
    str r0, [r5,#0x1c]
    mov r1, #0x3c 
    bl sub_80346F4
    mov r4, #0
    b loc_8033888
loc_803383C:
    mov r0, #0
    mvn r0, r0
    strh r0, [r5,#0x3e]
    mov r0, r10
    ldr r0, [r0,#0x70]
    ldrh r1, [r5,#0x3c]
    cmp r1, #7
    beq loc_8033854
    cmp r1, #6
    bne loc_8033858
    mov r0, #0x87
    b loc_8033882
loc_8033854:
    mov r0, #0x86
    b loc_8033882
loc_8033858:
    ldrb r0, [r0,r1]
    cmp r0, #0xff
    bne loc_803386C
    mov r0, #0x80
    bl sub_80539A0
    beq loc_8033886
    bl sub_804E448
    b loc_8033886
loc_803386C:
    ldrh r0, [r5,#0x3c]
    ldrh r2, [r5,#0x3e]
    cmp r0, r2
    beq loc_8033886
    ldr r0, [pc, #0x8033890-0x8033874-4] // unk_2001EA0
    mov r2, #0x5c 
    mul r2, r1
    add r0, r0, r2
    bl sub_80347F8
    b loc_8033886
loc_8033882:
    bl sub_80347DC
loc_8033886:
    mov r4, #0x38 
loc_8033888:
    strb r4, [r5,#2]
locret_803388A:
    pop {pc}
off_803388C:    .word 0x200
off_8033890:    .word unk_2001EA0
.thumb
sub_8033894:
    push {lr}
    bl sub_8033DD8
// end of function sub_8033894

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034100
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    bl sub_8034DC4
    bl sub_8034D78
    bne loc_80338D2
    bl sub_8048164
    beq loc_80338E6
    mov r0, #0x28 
    strb r0, [r5,#2]
    mov r1, #0x52 
    b loc_80338F4
loc_80338D2:
    bl sub_8048164
    bne locret_8033900
    bl sub_804814C
    beq loc_80338E6
    mov r0, #0
    strb r0, [r5,#2]
    mov r1, #0x3c 
    b loc_80338F4
loc_80338E6:
    mov r0, #0x28 
    strb r0, [r5,#2]
    mov r0, #0x18
    ldr r1, [r5,#0x1c]
    bic r1, r0
    str r1, [r5,#0x1c]
    mov r1, #0x59 
loc_80338F4:
    bl sub_80346F4
    bl sub_8110A8C
    bl sub_8034D44
locret_8033900:
    pop {pc}
    .balign 4, 0x00
    .word byte_200A3D0
    .byte 0x4A
    .byte 0x57 
    .byte 0x34 
    .byte 0x42 
    .byte 0
    .hword 0x20
    .byte 0x0
.thumb
sub_8033910:
    push {lr}
    bl sub_8033F5C
    bl sub_8033DD8
// end of function sub_8033910

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    pop {pc}
.thumb
sub_8033938:
    push {lr}
    bl sub_8005B5C
    beq loc_8033996
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x80339c8-0x8033942-2] // =0x1000
    tst r0, r1
    beq loc_8033960
    bic r0, r1
    str r0, [r5,#0x1c]
    mov r0, #0
    mov r1, #0x72 
    bl sub_8024F9C
    bl sub_8035044
    bl sub_8042EF0
    bl sub_802F604
loc_8033960:
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x80339c4-0x8033962-2] // =0x800
    tst r0, r1
    beq loc_8033980
    bic r0, r1
    str r0, [r5,#0x1c]
    mov r0, #0xc
    mov r1, #0xff
    bl sub_8005ADC
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#1]
    strb r0, [r5,#2]
    b loc_8033996
loc_8033980:
    bl sub_80331DC
    mov r0, #0xc
    mov r1, #0xff
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0x40 
    strb r0, [r5,#2]
    pop {pc}
loc_8033996:
    bl sub_8033DD8
// end of function sub_8033938

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    orr r0, r1
    str r0, [r5,#0x1c]
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    pop {pc}
    .word 0x200
off_80339C4:    .word 0x800
off_80339C8:    .word 0x1000
.thumb
sub_80339CC:
    push {lr}
    bl sub_8005B5C
    beq locret_80339E0
    mov r1, #0x20 
    ldr r0, [r5,#0x1c]
    orr r0, r1
    str r0, [r5,#0x1c]
    mov r1, #8
    strb r1, [r5,#1]
locret_80339E0:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80339CC

.thumb
sub_80339E4:
    push {lr}
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_8033A34
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    sub r0, #2
    strb r0, [r5,r1]
    mov r1, #0x40 
    mvn r1, r1
    add r1, #1
    cmp r0, r1
    bgt loc_8033A58
    strb r1, [r5,#0xc]
    mov r1, #0
    ldr r2, [r5,#0x1c]
    ldr r0, [pc, #0x8033ab0-0x8033a06-2] // =0x400
    tst r0, r2
    beq loc_8033A20
    ldr r1, [pc, #0x8033ab0-0x8033a0c-4] // =0x400
    ldr r0, [pc, #0x8033aac-0x8033a0e-2] // =0x200
    orr r0, r1
    str r0, [r5,#0x1c]
    mov r4, #0xe
    mov r6, #2
    mov r7, #0x24 
    bl sub_80340B4
    b loc_8033A26
loc_8033A20:
    ldr r0, [pc, #0x8033aac-0x8033a20-4] // =0x200
    orr r0, r1
    str r0, [r5,#0x1c]
loc_8033A26:
    ldr r0, [pc, #0x8033ab4-0x8033a26-2] // =0xB00E
    str r0, [r5,#0x20]
    mov r0, #0x38 
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x40]
    b loc_8033A58
loc_8033A34:
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    cmp r0, #0xe0
    blt loc_8033A58
    mov r0, #0xe0
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#2]
    mov r1, #0x3c 
    bl sub_80346F4
    mov r0, #0x41 
    ldr r1, [r5,#0x1c]
    orr r0, r1
    ldr r1, [pc, #0x8033aac-0x8033a52-2] // =0x200
    bic r0, r1
    str r0, [r5,#0x1c]
loc_8033A58:
    push {r5}
    mov r0, #0
    mov r1, #2
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0xa
    bl sub_8001DF8
// end of function sub_80339E4

    pop {r5}
    bl sub_8033D18
    bl sub_8033DD8
    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    bl sub_80344C4
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034DC4
    bl sub_8034D78
    bne locret_8033AA8
    bl sub_8048164
    beq locret_8033AA8
    bl sub_8110A8C
    bl sub_8034D44
locret_8033AA8:
    pop {pc}
    .balign 4, 0x00
off_8033AAC:    .word 0x200
off_8033AB0:    .word 0x400
dword_8033AB4:    .word 0xB00E
.thumb
sub_8033AB8:
    push {lr}
    bl sub_8005B5C
    bne loc_8033AC2
    b locret_8033BD0
loc_8033AC2:
    mov r0, #0x40 
    bl sub_8053990
    bl sub_8033F98
    bl sub_8034020
    bl sub_8033DD8
    bl sub_80344C4
    mov r4, #0xd
    mov r6, #3
    mov r7, #0x20 
    bl sub_80340B4
    mov r0, #6
    ldrh r1, [r5,#0x3c]
    cmp r1, #4
    blt loc_8033AEC
    mov r0, #0x78 
loc_8033AEC:
    ldrh r1, [r5,#0x3c]
    mov r2, #3
    and r1, r2
    lsl r1, r1, #4
    add r1, #0x18
    ldr r2, [r5,#0x40]
    mov r3, #0
    bl sub_80383EC
    str r2, [r5,#0x40]
    mov r0, r10
    ldr r0, [r0,#0x70]
    ldrh r1, [r5,#0x3c]
    cmp r1, #7
    beq loc_8033B16
    cmp r1, #6
    bne loc_8033B1E
    mov r0, #0x87
    bl sub_80347DC
    b loc_8033B4E
loc_8033B16:
    mov r0, #0x86
    bl sub_80347DC
    b loc_8033B4E
loc_8033B1E:
    ldrb r2, [r0,r1]
    cmp r2, #0xff
    bne loc_8033B3A
    add r0, #7
    ldrb r2, [r0,r1]
    cmp r2, #0xff
    bne loc_8033B3A
    mov r0, #0x80
    bl sub_80539A0
    beq loc_8033B4E
    bl sub_804E448
    b loc_8033B4E
loc_8033B3A:
    ldrh r0, [r5,#0x3c]
    ldrh r2, [r5,#0x3e]
    cmp r0, r2
    beq loc_8033B4E
    ldr r0, [pc, #0x8033bd8-0x8033b42-2] // unk_2001EA0
    mov r2, #0x5c 
    mul r2, r1
    add r0, r0, r2
    bl sub_80347F8
loc_8033B4E:
    ldrh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    bl sub_8034DC4
    bl sub_8034D78
    bne loc_8033B6C
    bl sub_8048164
    beq loc_8033B6C
    bl sub_8110A8C
    bl sub_8034D44
    b locret_8033BD0
loc_8033B6C:
    bl sub_8034D08
    bne loc_8033BBC
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x8033bd4-0x8033b74-4] // =0xFF
    tst r0, r1
    beq locret_8033BD0
    mov r0, #0x80
    bl f500_8000558
    bl sub_8035044
    bl sub_8042EF0
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    bic r0, r1
    ldr r1, [pc, #0x8033bd4-0x8033b8e-2] // =0xFF
    bic r0, r1
    str r0, [r5,#0x1c]
    mov r0, #0x3c 
    strb r0, [r5,#2]
    mov r0, #0x1e
    str r0, [r5,#0x44]
    ldrh r0, [r5,#0x3c]
    cmp r0, #6
    beq loc_8033BB4
    cmp r0, #7
    beq loc_8033BB0
    mov r1, r10
    ldr r1, [r1,#0x70]
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    bne loc_8033BB4
loc_8033BB0:
    mov r1, #0x70 
    b loc_8033BB6
loc_8033BB4:
    mov r1, #0x6e 
loc_8033BB6:
    bl sub_80346F4
    b locret_8033BD0
loc_8033BBC:
    mov r0, #0x14
    strb r0, [r5,#2]
    mov r1, #0x51 
    ldrh r0, [r5,#0x1a]
    ldr r2, [pc, #0x8033bdc-0x8033bc4-4] // =0x1000
    cmp r0, r2
    bne loc_8033BCC
    mov r1, #0x4f 
loc_8033BCC:
    bl sub_80346F4
locret_8033BD0:
    pop {pc}
    .balign 4, 0x00
off_8033BD4:    .word 0x100
off_8033BD8:    .word unk_2001EA0
off_8033BDC:    .word 0x1000
// end of function sub_8033AB8

.thumb
sub_8033BE0:
    push {lr}
    ldr r0, [r5,#0x44]
    tst r0, r0
    beq loc_8033BEE
    sub r0, #1
    str r0, [r5,#0x44]
    bne locret_8033C12
loc_8033BEE:
    mov r0, #8
    bl sub_80539A0
    beq locret_8033C12
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #2
    str r0, [r5,#0x1c]
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    orr r0, r1
    str r0, [r5,#0x1c]
    bl sub_802F604
    mov r0, #0x2c 
    strb r0, [r5,#2]
locret_8033C12:
    pop {pc}
// end of function sub_8033BE0

.thumb
sub_8033C14:
    push {lr}
    bl sub_80339E4
// end of function sub_8033C14

    ldrb r0, [r5,#0xc]
    cmp r0, #0xc0
    bne locret_8033C4E
    bl sub_80349F0
    bl sub_80346F4
    ldr r0, [pc, #0x8033c70-0x8033c28-4] // =0x400
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_8033C36
    mov r0, #0x44 
    strb r0, [r5,#2]
    b loc_8033C46
loc_8033C36:
    bl sub_804E448
    mov r0, #0xff
    strh r0, [r5,#0x3e]
    mov r0, #0x38 
    strb r0, [r5,#2]
    ldr r0, [pc, #0x8033c50-0x8033c42-2] // =0xB00E
    str r0, [r5,#0x20]
loc_8033C46:
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
locret_8033C4E:
    pop {pc}
dword_8033C50:    .word 0xB00E
.thumb
sub_8033C54:
    push {lr}
    mov r0, #8
    bl sub_80539A0
    beq locret_8033C6E
    ldr r0, [r5,#0x1c]
    ldr r1, [pc, #0x8033c70-0x8033c60-4] // =0x400
    bic r0, r1
    str r0, [r5,#0x1c]
    mov r0, #0xff
    strh r0, [r5,#0x3e]
    mov r0, #0x38 
    strb r0, [r5,#2]
locret_8033C6E:
    pop {pc}
off_8033C70:    .word 0x400
// end of function sub_8033C54

.thumb
sub_8033C74:
    push {lr}
    bl sub_8033DD8
// end of function sub_8033C74

    bl sub_803416C
    bl sub_80342A4
    bl sub_8034340
    bl sub_8034320
    mov r1, #0xc
    ldrsb r0, [r5,r1]
    bl sub_803237C
    bl sub_8034100
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    mov r0, #8
    bl sub_80539A0
    beq locret_8033CAA
    bl sub_80337D4
    mov r0, #0x24 
    strb r0, [r5,#2]
locret_8033CAA:
    pop {pc}
    .word 0x200
.thumb
sub_8033CB0:
    push {lr}
    bl sub_80540BA
    mov r1, #4
    ldr r0, [r5,#0x1c]
    tst r0, r1
    beq loc_8033CE2
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    ldr r0, [pc, #0x8033d0c-0x8033cc8-4] // dword_868E1A4
    ldr r1, [pc, #0x8033d10-0x8033cca-2] // word_3002780
    ldr r2, [pc, #0x8033d14-0x8033ccc-4] // =0x20
    bl f900_800098C
    mov r0, #0x3c 
    strb r0, [r5]
    bl sub_804E448
    mov r0, #0x40 
    bl sub_8053990
    b locret_8033D08
loc_8033CE2:
    mov r1, #0x20 
    ldr r0, [r5,#0x1c]
    tst r0, r1
    beq loc_8033D04
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    mov r0, #0x2c 
    strb r0, [r5]
    bl sub_804E448
    mov r0, #0x40 
    bl sub_8053990
    b locret_8033D08
loc_8033D04:
    bl sub_802DE3C
locret_8033D08:
    pop {pc}
    .balign 4, 0x00
off_8033D0C:    .word dword_868E1A4
off_8033D10:    .word word_3002780
dword_8033D14:    .word 0x20
// end of function sub_8033CB0

.thumb
sub_8033D18:
    push {lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x8033db4-0x8033d22-2] // dword_86D6450
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_8033D18

    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    mov r1, #0xf
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8033db8-0x8033d3c-4] // dword_86D6900
    mov r4, #0xe
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8033dc8-0x8033d4e-2] // =0x20
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8033dbc-0x8033d56-2] // dword_86D6A18
    mov r4, #0xe
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8033dcc-0x8033d68-4] // =0x30
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8033dc0-0x8033d70-4] // dword_86D6B30
    mov r4, #0xd
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8033dd0-0x8033d82-2] // =0x40
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8033dc4-0x8033d8a-2] // asc_86DA174
    mov r4, #0xe
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8033dd4-0x8033d9c-4] // =0x4F
    add r0, r0, r1
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8033dc4-0x8033da4-4] // asc_86DA174
    mov r4, #0xe
    mov r5, #0xa
    bl sub_8001DDC
    pop {r5}
    pop {pc}
    .balign 4, 0x00
off_8033DB4:    .word dword_86D6450
off_8033DB8:    .word dword_86D6900
off_8033DBC:    .word dword_86D6A18
off_8033DC0:    .word dword_86D6B30
off_8033DC4:    .word asc_86DA174
dword_8033DC8:    .word 0x22
off_8033DCC:    .word 0x30
off_8033DD0:    .word 0x41
dword_8033DD4:    .word 0x4F
.thumb
sub_8033DD8:
    push {lr}
    push {r5}
    mov r0, #1
    mov r1, #0xb
    mov r2, #3
    ldr r3, [pc, #0x8033df0-0x8033de2-2] // dword_86D6C34
    mov r4, #0x1c
    mov r5, #9
    bl sub_8001DDC
// end of function sub_8033DD8

    pop {r5}
    pop {pc}
off_8033DF0:    .word dword_86D6C34
.thumb
sub_8033DF4:
    push {r7,lr}
    bl sub_8005B5C
    beq locret_8033EE4
    mov r0, #0x20 
    bl sub_80539A0
    beq loc_8033E44
    mov r7, #0
    mov r0, #0
    mov r1, #0x70 
    bl sub_8024FF0
    beq loc_8033E14
    mov r1, #1
    orr r7, r1
loc_8033E14:
    mov r0, #0
    mov r1, #0x71 
    bl sub_8024FF0
    bne loc_8033E22
    tst r7, r7
    bne loc_8033E30
loc_8033E22:
    mov r1, #2
    orr r7, r1
    cmp r7, #3
    bne loc_8033E30
    bl sub_80539B0
    add r7, r0, #1
loc_8033E30:
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #0xc
    cmp r7, #1
    beq loc_8033E40
    mov r0, #0x30 
loc_8033E40:
    strb r0, [r5,#2]
    b locret_8033EE4
loc_8033E44:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    mov r1, #0x20 
    and r1, r6
    beq loc_8033E78
    mov r0, #2
    ldr r1, [r5,#0x1c]
    tst r0, r1
    bne loc_8033EA6
    orr r1, r0
    mov r0, #1
    bic r1, r0
    str r1, [r5,#0x1c]
    ldrb r0, [r5,#2]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#2]
    ldr r0, [pc, #0x8033ee8-0x8033e68-4] // =0xB010
    str r0, [r5,#0x20]
    mov r0, #0x40 
    bl sub_8053980
    bl sub_8031650
    b locret_8033EE4
loc_8033E78:
    mov r1, #0x10
    and r1, r6
    beq loc_8033ED2
    mov r0, #1
    ldr r1, [r5,#0x1c]
    tst r0, r1
    bne loc_8033EA6
    orr r1, r0
    mov r0, #2
    bic r1, r0
    str r1, [r5,#0x1c]
    ldrb r0, [r5,#2]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#2]
    ldr r0, [pc, #0x8033eec-0x8033e96-2] // =0xB00E
    str r0, [r5,#0x20]
    mov r0, #0x40 
    bl sub_8053980
    bl sub_8031650
    b locret_8033EE4
loc_8033EA6:
    mov r0, #1
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_8033ED2
    mov r0, #0x40 
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq loc_8033ED2
    ldrb r0, [r5,#2]
    strb r0, [r5,#0x14]
    mov r0, #0x34 
    strb r0, [r5,#2]
    mov r0, #0
    strh r0, [r5,#0x3c]
    mov r0, #0xff
    strh r0, [r5,#0x3e]
    mov r0, #0x40 
    bl sub_8053980
    bl sub_8031650
    b locret_8033EE4
loc_8033ED2:
    mov r0, #1
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq locret_8033EE4
    add r0, r6, #0
    mov r1, #4
    mov r2, #0
    bl sub_8034804
locret_8033EE4:
    pop {r7,pc}
    .balign 4, 0x00
dword_8033EE8:    .word 0xB010
dword_8033EEC:    .word 0xB00E
// end of function sub_8033DF4

.thumb
sub_8033EF0:
    push {r7,lr}
    bl sub_8005B5C
    beq locret_8033F46
    mov r0, #0x20 
    bl sub_80539A0
    beq locret_8033F46
    bl sub_80539B0
    cmp r0, #0
    beq loc_8033F12
    mov r0, #0x1c
    strb r0, [r5,#2]
    bl sub_8034D20
    b locret_8033F46
loc_8033F12:
    mov r0, #0x18
    strb r0, [r5,#2]
    mov r1, #0x57 
    bl sub_803478C
    ldr r0, [pc, #0x8033f4c-0x8033f1c-4] // dword_2028000
    ldr r1, [pc, #0x8033f58-0x8033f1e-2] // =0xFF
    bl f900_8000930
    ldrh r0, [r5,#0x1a]
    ldr r1, [pc, #0x8033f54-0x8033f26-2] // =0x1000
    cmp r0, r1
    bne loc_8033F38
    ldr r0, [pc, #0x8033f48-0x8033f2c-4] // =0x4234574A
    ldr r1, [pc, #0x8033f54-0x8033f2e-2] // =0x1000
    mov r2, #0
    bl sub_80480A4
    b loc_8033F42
loc_8033F38:
    ldr r0, [pc, #0x8033f48-0x8033f38-4] // =0x4234574A
    ldr r1, [pc, #0x8033f50-0x8033f3a-2] // =0x1010
    mov r2, #0
    bl sub_80480A4
loc_8033F42:
    mov r0, #4
    strb r0, [r5,#0x15]
locret_8033F46:
    pop {r7,pc}
dword_8033F48:    .word 0x4234574A
off_8033F4C:    .word dword_2028000
off_8033F50:    .word 0x1010
off_8033F54:    .word 0x1000
off_8033F58:    .word 0x100
// end of function sub_8033EF0

.thumb
sub_8033F5C:
    push {r7,lr}
    mov r0, #8
    bl sub_80539A0
    beq locret_8033F8C
    mov r0, #0x2c 
    strb r0, [r5,#2]
    mov r0, #0xc
    mov r1, #0xc
    bl sub_8005ADC
    ldrb r0, [r5,#2]
    cmp r0, #0x28 
    bne loc_8033F88
    bl sub_8034D44
    ldr r0, [pc, #0x8033f90-0x8033f7c-4] // =0x4234574A
    ldr r1, [pc, #0x8033f94-0x8033f7e-2] // =0x1010
    mov r2, #0
    bl sub_80480A4
    b locret_8033F8C
loc_8033F88:
    bl sub_8034D44
locret_8033F8C:
    pop {r7,pc}
    .byte 0, 0
dword_8033F90:    .word 0x4234574A
off_8033F94:    .word 0x1010
// end of function sub_8033F5C

.thumb
sub_8033F98:
    push {r7,lr}
    bl sub_8005B5C
    beq locret_803401C
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#4]
    mov r1, #0x20 
    and r1, r6
    beq loc_8033FCE
    ldrh r0, [r5,#0x3c]
    lsr r1, r0, #2
    beq loc_8033FBE
    sub r0, #4
    strh r0, [r5,#0x3c]
    mov r0, #0x66 
    bl f500_8000558
    b locret_803401C
loc_8033FBE:
    mov r0, #0x34 
    strb r0, [r5,#2]
    mov r0, #0x40 
    bl sub_8053980
    bl sub_8031650
    b locret_803401C
loc_8033FCE:
    mov r1, #0x10
    and r1, r6
    beq loc_8033FE6
    ldrh r0, [r5,#0x3c]
    lsr r1, r0, #2
    bne locret_803401C
    add r0, #4
    strh r0, [r5,#0x3c]
    mov r0, #0x66 
    bl f500_8000558
    b locret_803401C
loc_8033FE6:
    mov r1, #0x40 
    and r1, r6
    beq loc_8034002
    ldrh r0, [r5,#0x3c]
    tst r0, r0
    beq locret_803401C
    cmp r0, #4
    beq locret_803401C
    sub r0, #1
    strh r0, [r5,#0x3c]
    mov r0, #0x66 
    bl f500_8000558
    b locret_803401C
loc_8034002:
    mov r1, #0x80
    and r1, r6
    beq locret_803401C
    ldrh r0, [r5,#0x3c]
    cmp r0, #3
    beq locret_803401C
    cmp r0, #7
    beq locret_803401C
    add r0, #1
    strh r0, [r5,#0x3c]
    mov r0, #0x66 
    bl f500_8000558
locret_803401C:
    pop {r7,pc}
    .byte 0, 0
// end of function sub_8033F98

.thumb
sub_8034020:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r6, [r7,#2]
    mov r1, #1
    and r1, r6
    beq locret_80340A6
    mov r7, r10
    ldr r7, [r7,#0x70]
    ldrh r3, [r5,#0x3c]
    cmp r3, #6
    blt loc_8034070
    cmp r3, #6
    bne loc_8034056
    mov r4, #7
    add r6, r7, r4
    mov r3, #0
loc_8034042:
    ldrb r0, [r6,r3]
    cmp r0, #0xff
    beq loc_803404E
    strb r0, [r7,r3]
    mov r0, #0xff
    strb r0, [r6,r3]
loc_803404E:
    add r3, #1
    cmp r3, #6
    blt loc_8034042
    b loc_803409E
loc_8034056:
    mov r4, #7
    add r6, r7, r4
    mov r3, #0
loc_803405C:
    ldrb r0, [r7,r3]
    cmp r0, #0xff
    beq loc_8034068
    strb r0, [r6,r3]
    mov r0, #0xff
    strb r0, [r7,r3]
loc_8034068:
    add r3, #1
    cmp r3, #6
    blt loc_803405C
    b loc_803409E
loc_8034070:
    add r0, r7, r3
    ldrb r1, [r0]
    cmp r1, #0xff
    beq loc_8034084
    mov r2, #0xff
    strb r2, [r0]
    mov r4, #7
    add r0, r0, r4
    strb r1, [r0]
    b loc_803409E
loc_8034084:
    mov r4, #7
    add r7, r7, r4
    add r2, r7, r3
    ldrb r6, [r2]
    cmp r6, #0xff
    bne loc_8034098
    mov r0, #0x69 
    bl f500_8000558
    b locret_80340A6
loc_8034098:
    mov r1, #0xff
    strb r1, [r2]
    strb r6, [r0]
loc_803409E:
    ldr r0, [pc, #0x80340ac-0x803409e-2] // =0xFF
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
locret_80340A6:
    pop {pc}
    .word 0x204
off_80340AC:    .word 0x100
    .word 0x104
// end of function sub_8034020

.thumb
sub_80340B4:
    push {lr}
    ldrb r0, [r5,r4]
    sub r0, #1
    strb r0, [r5,r4]
    bne loc_80340D2
    mov r0, #0xa
    strb r0, [r5,r4]
    ldrh r0, [r5,r7]
    ldr r2, [pc, #0x80340fc-0x80340c4-4] // =0xB01E
    and r2, r0
    mov r1, #1
    and r0, r1
    eor r0, r1
    orr r0, r2
    strh r0, [r5,r7]
loc_80340D2:
    lsl r6, r6, #1
    ldr r0, [pc, #0x80340f0-0x80340d4-4] // dword_80340F4
    ldrh r0, [r0,r6]
    lsl r0, r0, #0x10
    mov r1, #0x34 
    orr r0, r1
    ldrh r1, [r5,r7]
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
// end of function sub_80340B4

    pop {pc}
off_80340F0:    .word dword_80340F4
dword_80340F4:    .word 0x600E0, 0x600E0
dword_80340FC:    .word 0xB01E
.thumb
sub_8034100:
    push {lr}
    ldr r2, [r5,#0x1c]
    mov r3, #2
    tst r2, r3
    beq loc_8034116
    mov r6, #0
    ldrb r0, [r5,#0xc]
    mov r1, #0xff
    and r0, r1
    beq loc_803411E
    b locret_8034126
loc_8034116:
    ldrb r0, [r5,#0xc]
    cmp r0, #0xe0
    bne locret_8034126
    mov r6, #1
loc_803411E:
    mov r4, #0xd
    mov r7, #0x20 
    bl sub_80340B4
locret_8034126:
    pop {pc}
// end of function sub_8034100

.thumb
sub_8034128:
    push {r4-r7,lr}
    mov r6, #3
    ldr r2, [r5,#0x1c]
    mov r3, #1
    tst r2, r3
    beq locret_8034146
    ldr r2, [r5,#0x1c]
    mov r3, #0x40 
    tst r2, r3
    beq locret_8034146
    mov r6, #2
    mov r4, #0xe
    mov r7, #0x24 
    bl sub_80340B4
locret_8034146:
    pop {r4-r7,pc}
// end of function sub_8034128

.thumb
sub_8034148:
    push {r5,r7,lr}
    add r7, r1, #0
    add r1, r0, #0
    add r0, r3, #0
    add r3, r2, #0
    add r2, r4, #0
    add r2, r2, r7
    add r3, r3, r7
    mov r4, #0xb
    mov r5, #2
    ldr r6, [pc, #0x8034168-0x803415c-4] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xA0
    .byte 0xBD
    .balign 4, 0x00
off_8034168:    .word dword_86C6E60
// end of function sub_8034148

.thumb
sub_803416C:
    push {r5,lr}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    mov r1, #0x10
    add r0, r0, r1
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8034188-0x803417a-2] // dword_8032EAC
    mov r4, #0xb
    mov r5, #8
    bl sub_8001DDC
// end of function sub_803416C

    pop {r5,pc}
    .balign 4, 0x00
off_8034188:    .word dword_8032EAC
.thumb
sub_803418C:
    push {lr}
    mov r0, #5
    bl sub_800D742
    add r0, #1
    mov r6, r10
    ldr r6, [r6,#0x38]
    mov r1, #1
    str r0, [r6,#4]
    mov r0, #0x3d 
    mov r1, #0
    ldr r2, [pc, #0x803423c-0x80341a2-2] // =0x6006800
    ldr r3, [pc, #0x8034240-0x80341a4-4] // unk_86DE644
    ldr r4, [pc, #0x8034244-0x80341a6-2] // unk_2017000
    bl sub_8034148
    mov r0, #6
    bl sub_800D742
    add r0, #1
    mov r6, r10
    ldr r6, [r6,#0x38]
    mov r1, #1
    str r0, [r6,#4]
    mov r0, #0x3e 
    mov r1, #0x40 
    lsl r1, r1, #4
    ldr r2, [pc, #0x803423c-0x80341c2-2] // =0x6006800
    ldr r3, [pc, #0x8034240-0x80341c4-4] // unk_86DE644
    ldr r4, [pc, #0x8034244-0x80341c6-2] // unk_2017000
    bl sub_8034148
    mov r0, #7
    bl sub_800D742
    add r0, #1
    mov r6, r10
    ldr r6, [r6,#0x38]
    mov r1, #1
    str r0, [r6,#4]
    mov r0, #0x3f 
    mov r1, #0x80
    lsl r1, r1, #4
    ldr r2, [pc, #0x803423c-0x80341e2-2] // =0x6006800
    ldr r3, [pc, #0x8034240-0x80341e4-4] // unk_86DE644
    ldr r4, [pc, #0x8034244-0x80341e6-2] // unk_2017000
    bl sub_8034148
    mov r0, #0xa
    bl sub_800D742
    mov r3, #0
    ldr r1, [pc, #0x8034248-0x80341f4-4] // loc_8034250
loc_80341F6:
    ldrb r2, [r1,r3]
    cmp r0, r2
    beq loc_8034204
    add r3, #1
    cmp r3, #0x1e
    blt loc_80341F6
    mov r3, #9
loc_8034204:
    ldr r1, [pc, #0x803424c-0x8034204-4] // loc_803426C
    lsl r2, r3, #1
    ldrb r0, [r1,r2]
    add r2, #1
    ldrb r1, [r1,r2]
    tst r1, r1
    beq loc_8034226
    push {r0}
    mov r0, #0xb
    bl sub_800D742
    add r0, #1
    mov r6, r10
    ldr r6, [r6,#0x38]
    mov r1, #1
    str r1, [r6,#4]
    pop {r0}
loc_8034226:
    mov r1, #0xc0
    lsl r1, r1, #4
    ldr r2, [pc, #0x803423c-0x803422a-2] // =0x6006800
    ldr r3, [pc, #0x8034240-0x803422c-4] // unk_86DE644
    ldr r4, [pc, #0x8034244-0x803422e-2] // unk_2017000
    bl sub_8034148
// end of function sub_803418C

    bl sub_803416C
    pop {pc}
    .balign 4, 0x00
dword_803423C:    .word 0x6006800
off_8034240:    .word unk_86DE644
off_8034244:    .word unk_2017000
off_8034248:    .word loc_8034250
off_803424C:    .word loc_803426C
loc_8034250:
    lsl r1, r0, #8
    lsl r3, r0, #0x10
    lsl r5, r0, #0x18
    mov r0, #0x1f
    cmp r0, #0x21 
    cmp r2, #0x29 
    cmp r6, #0x2d 
    add r7, #0x2f 
    sub r1, #0x38 
    sub r3, #0x3a 
    sub r5, #0x3c 
    tst r6, r7
    add r3, r8
    mov r5, r8
loc_803426C:
    lsl r4, r1, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
    lsl r5, r2, #2
.thumb
sub_80342A4:
    push {r5,lr}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    mov r1, #0x23 
    add r0, r0, r1
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x80342c0-0x80342b2-2] // dword_8032EAC+176
    mov r4, #0xb
    mov r5, #6
    bl sub_8001DDC
// end of function sub_80342A4

    pop {r5,pc}
    .byte 0, 0
off_80342C0:    .word dword_8032EAC+0xB0
.thumb
sub_80342C4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldrb r1, [r5,#0x11]
    str r1, [r0,#4]
    mov r0, #0x49 
    mov r1, #0
    ldr r2, [pc, #0x8034314-0x80342d2-2] // =0x6002400
    ldr r3, [pc, #0x8034318-0x80342d4-4] // unk_86DE644
    ldr r4, [pc, #0x803431c-0x80342d6-2] // unk_2016000
    bl sub_8034148
// end of function sub_80342C4

    mov r0, r10
    ldr r0, [r0,#0x38]
    ldrb r1, [r5,#0x12]
    str r1, [r0,#4]
    mov r0, #0x4a 
    mov r1, #0x40 
    lsl r1, r1, #4
    ldr r2, [pc, #0x8034314-0x80342ea-2] // =0x6002400
    ldr r3, [pc, #0x8034318-0x80342ec-4] // unk_86DE644
    ldr r4, [pc, #0x803431c-0x80342ee-2] // unk_2016000
    bl sub_8034148
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldrb r1, [r5,#0x13]
    str r1, [r0,#4]
    mov r0, #0x4b 
    mov r1, #0x80
    lsl r1, r1, #4
    ldr r2, [pc, #0x8034314-0x8034302-2] // =0x6002400
    ldr r3, [pc, #0x8034318-0x8034304-4] // unk_86DE644
    ldr r4, [pc, #0x803431c-0x8034306-2] // unk_2016000
    bl sub_8034148
    bl sub_80342A4
    pop {pc}
    .balign 4, 0x00
dword_8034314:    .word 0x6002400
off_8034318:    .word unk_86DE644
off_803431C:    .word unk_2016000
.thumb
sub_8034320:
    push {r5,lr}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    mov r1, #0x31 
    add r0, r0, r1
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x803433c-0x803432e-2] // dword_8032EAC+308
    mov r4, #8
    mov r5, #8
    bl sub_8001DDC
// end of function sub_8034320

    pop {r5,pc}
    .balign 4, 0x00
off_803433C:    .word dword_8032EAC+0x134
.thumb
sub_8034340:
    push {r7,lr}
    mov r1, #0
    ldrb r7, [r5,#0xf]
    ldrb r0, [r5,#0x10]
    cmp r7, r0
    beq locret_803436C
loc_803434C:
    ldr r3, [pc, #0x803437c-0x803434c-4] // dword_201A000
    ldrb r0, [r3,r7]
    ldr r2, [pc, #0x8034370-0x8034350-4] // =0x6003000
    ldr r3, [pc, #0x8034374-0x8034352-2] // byte_86E66B8
    ldr r4, [pc, #0x8034378-0x8034354-4] // unk_2015400
    push {r1}
    bl sub_8034148
    pop {r1}
    add r7, #1
    mov r0, #0x20 
    lsl r0, r0, #4
    add r1, r1, r0
    ldr r2, [pc, #0x8034380-0x8034366-2] // =0x600
    cmp r1, r2
    ble loc_803434C
locret_803436C:
    pop {r7,pc}
    .byte 0, 0
dword_8034370:    .word 0x6003000
off_8034374:    .word byte_86E66B8
off_8034378:    .word unk_2015400
off_803437C:    .word dword_201A000
off_8034380:    .word 0x600
// end of function sub_8034340

.thumb
sub_8034384:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    mov r0, #0x71 
    str r0, [sp]
    ldr r0, [pc, #0x80343dc-0x803438c-4] // unk_2014400
    str r0, [sp,#4]
    ldr r0, [pc, #0x80343e0-0x8034390-4] // =0x6004400
    str r0, [sp,#8]
    ldr r0, [pc, #0x80343d4-0x8034394-4] // unk_86DE644
    ldr r1, [sp]
    cmp r1, #0x78 
    beq loc_80343A4
    cmp r1, #0x79 
    bne loc_80343A6
    mov r1, #0x6d 
    b loc_80343A6
loc_80343A4:
    mov r1, #0x6f 
loc_80343A6:
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    mov r4, #3
    mov r5, #1
    ldr r6, [pc, #0x80343d8-0x80343ae-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 1
    .byte 0x98
    .byte 0xC0
    .byte 0x30 
    .byte 1
    .byte 0x90
    .byte 2
    .byte 0x98
    .byte 9
    .byte 0x49 
    .byte 0x40 
    .byte 0x18
    .byte 2
    .byte 0x90
    .byte 0
    .byte 0x98
    .byte 1
    .byte 0x30 
    .byte 0
    .byte 0x90
    .byte 0x7A 
    .byte 0x28 
    .byte 0xE2
    .byte 0xDB
    .byte 3
    .byte 0xB0
    .byte 0xF0
    .byte 0xBD
    .balign 4, 0x00
off_80343D4:    .word unk_86DE644
off_80343D8:    .word dword_86C6E60
off_80343DC:    .word unk_2014400
dword_80343E0:    .word 0x6004400
    .word 0x200
// end of function sub_8034384

    push {r0,r4,r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x70]
    mov r4, #7
    add r7, r7, r4
    sub r4, #1
loc_80343F4:
    ldrb r0, [r7,r4]
    cmp r0, #0xff
    beq loc_80343FE
    mov r1, #0x6f 
    b locret_8034404
loc_80343FE:
    sub r4, #1
    bge loc_80343F4
    mov r1, #0x77 
locret_8034404:
    pop {r0,r4,r7,pc}
    .balign 4, 0x00
.thumb
sub_8034408:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8034420-0x803440a-2] // unk_86DE644
    mov r1, #0xaa
    ldr r2, [pc, #0x8034428-0x803440e-2] // unk_20142C0
    ldr r3, [pc, #0x803442c-0x8034410-4] // =0x60042C0
    mov r4, #2
    mov r5, #1
    ldr r6, [pc, #0x8034424-0x8034416-2] // dword_86C6E60
    mov r7, #0
    bl sub_8053A04
    .byte 0xF0
    .byte 0xBD
off_8034420:    .word unk_86DE644
off_8034424:    .word dword_86C6E60
off_8034428:    .word unk_20142C0
dword_803442C:    .word 0x60042C0
// end of function sub_8034408

.thumb
sub_8034430:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r7, #0
loc_803443C:
    ldr r4, [sp,#4]
    add r4, #0xe
    mov r1, #0x20 
    mul r1, r7
    add r4, r4, r1
    ldr r5, [sp,#4]
    add r5, #0x1e
    add r5, r5, r1
    mov r1, r10
    ldr r1, [r1,#0x70]
    ldr r0, [sp]
    ldrb r0, [r1,r0]
    cmp r0, #0x85
    bne loc_803445E
    ldr r6, [pc, #0x803452c-0x8034458-4] // =0xC202
    mov r0, #0
    b loc_8034492
loc_803445E:
    ldr r6, [pc, #0x803452c-0x803445e-2] // =0xC202
    cmp r0, #0xff
    bne loc_8034492
    mov r0, #7
    add r1, r1, r0
    ldr r0, [sp]
    ldrb r0, [r1,r0]
    cmp r0, #0x85
    bne loc_8034476
    ldr r6, [pc, #0x8034534-0x8034470-4] // =0xB202
    mov r0, #0
    b loc_8034492
loc_8034476:
    cmp r0, #0xff
    beq loc_803447E
    ldr r6, [pc, #0x8034534-0x803447a-2] // =0xB202
    b loc_8034492
loc_803447E:
    mov r3, #2
loc_8034480:
    ldr r0, [pc, #0x8034530-0x8034480-4] // =0xC218
    strh r0, [r4]
    add r0, #1
    strh r0, [r5]
    sub r4, #2
    sub r5, #2
    sub r3, #1
    bge loc_8034480
    b loc_80344B0
loc_8034492:
    bl fA00_8000A30
    mov r3, #2
loc_8034498:
    mov r2, #0xf
    and r2, r0
    lsl r2, r2, #1
    add r2, r2, r6
    strh r2, [r4]
    add r2, #1
    strh r2, [r5]
    lsr r0, r0, #4
    sub r4, #2
    sub r5, #2
    sub r3, #1
    bge loc_8034498
loc_80344B0:
    add r7, #1
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    ldr r1, [sp,#8]
    cmp r7, r1
    blt loc_803443C
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8034430

.thumb
sub_80344C4:
    push {r4-r7,lr}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8034524-0x80344cc-4] // =0x40
    add r0, r0, r1
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8034514-0x80344d4-4] // dword_201C000
    mov r4, #8
    mov r5, #8
    bl sub_8001DDC
// end of function sub_80344C4

    pop {r5}
    push {r5}
    mov r2, #0xc
    ldrsb r0, [r5,r2]
    ldr r1, [pc, #0x8034528-0x80344e6-2] // =0x51
    add r0, r0, r1
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8034518-0x80344ee-2] // unk_201C080
    mov r4, #8
    mov r5, #8
    bl sub_8001DDC
    pop {r5}
    pop {r4-r7,pc}
.thumb
sub_80344FC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x803451c-0x80344fe-2] // dword_8032EAC+436
    ldr r1, [pc, #0x8034514-0x8034500-4] // dword_201C000
    mov r2, #0x80
    bl f900_800098C
    ldr r0, [pc, #0x8034520-0x8034508-4] // dword_8032EAC+564
    ldr r1, [pc, #0x8034518-0x803450a-2] // unk_201C080
    mov r2, #0x80
    bl f900_800098C
    pop {r4-r7,pc}
off_8034514:    .word dword_201C000
off_8034518:    .word unk_201C080
off_803451C:    .word dword_8032EAC+0x1B4
off_8034520:    .word dword_8032EAC+0x234
off_8034524:    .word 0x43
off_8034528:    .word 0x51
dword_803452C:    .word 0xC202
dword_8034530:    .word 0xC218
dword_8034534:    .word 0xB202
// end of function sub_80344FC

    push {r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_8034558
    mov r7, #1
    add r6, r0, #0
    lsl r6, r6, #8
loc_8034546:
    add r2, r7, #0
    orr r2, r6
    mov r0, #0x11
    mov r1, #1
    add r1, r1, r7
    bl sub_80540C6
    sub r7, #1
    bge loc_8034546
locret_8034558:
    pop {r7,pc}
    .balign 4, 0x00
.thumb
sub_803455C:
    push {r4-r7,lr}
    ldr r6, [pc, #0x80345bc-0x803455e-2] // dword_201A000
    add r0, r6, #0
    mov r1, #0x19
    bl f900_8000904
    mov r4, #0
loc_803456A:
    add r0, r4, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8034580
    lsr r0, r0, #2
    strb r0, [r6,r4]
    ldrb r0, [r5,#0x16]
    add r0, #1
    strb r0, [r5,#0x16]
loc_8034580:
    add r4, #1
    cmp r4, #0x19
    blt loc_803456A
    ldr r6, [pc, #0x80345bc-0x8034586-2] // dword_201A000
    mov r0, #0x19
    add r7, r6, r0
    mov r4, #0
loc_803458E:
    ldrb r0, [r6]
    tst r0, r0
    bne loc_80345AC
    add r0, r6, #0
    add r1, r6, #1
loc_8034598:
    ldrb r2, [r1]
    tst r2, r2
    beq loc_80345A6
    strb r2, [r0]
    mov r2, #0
    strb r2, [r1]
    add r0, #1
loc_80345A6:
    add r1, #1
    cmp r1, r7
    blt loc_8034598
loc_80345AC:
    add r6, #1
    add r4, #1
    cmp r4, #0x19
    blt loc_803458E
    ldr r0, [pc, #0x80345bc-0x80345b4-4] // dword_201A000
    bl sub_8034A7C
    pop {r4-r7,pc}
off_80345BC:    .word dword_201A000
    .word 0x17C
// end of function sub_803455C

    push {r7,lr}
    ldr r6, [pc, #0x80346b8-0x80345c6-2] // =0xA002
    mov r4, #0
    ldrb r2, [r5,#0xd]
    mov r1, #1
    and r2, r1
    lsl r2, r2, #1
    ldr r0, [pc, #0x803469c-0x80345d2-2] // dword_80346A0
    ldrh r0, [r0,r2]
    lsl r0, r0, #0x10
    ldrb r2, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    sub r2, r2, r1
    lsl r2, r2, #1
    ldr r1, [pc, #0x80346a4-0x80345e0-4] // dword_80346A8
    ldrh r1, [r1,r2]
    orr r0, r1
    add r1, r6, #0
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    push {r0}
    bl sub_8025BD8
    pop {r0}
    ldrb r2, [r5,#0xd]
    mov r1, #1
    and r2, r1
    lsl r2, r2, #1
    ldr r0, [pc, #0x803469c-0x8034602-2] // dword_80346A0
    ldrh r0, [r0,r2]
    add r0, #8
    lsl r0, r0, #0x10
    ldrb r2, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    sub r2, r2, r1
    lsl r2, r2, #1
    ldr r1, [pc, #0x80346a4-0x8034612-2] // dword_80346A8
    ldrh r1, [r1,r2]
    orr r0, r1
    add r1, r6, #0
    add r1, #1
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    push {r0}
    bl sub_8025BD8
    pop {r0}
    ldrb r2, [r5,#0xd]
    mov r1, #1
    and r2, r1
    lsl r2, r2, #1
    ldr r0, [pc, #0x803469c-0x8034636-2] // dword_80346A0
    ldrh r0, [r0,r2]
    lsl r0, r0, #0x10
    ldrb r2, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    sub r2, r2, r1
    lsl r2, r2, #1
    ldr r1, [pc, #0x80346a4-0x8034644-4] // dword_80346A8
    ldrh r1, [r1,r2]
    add r1, #8
    orr r0, r1
    add r1, r6, #0
    add r1, #2
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    push {r0}
    bl sub_8025BD8
    pop {r0}
    ldrb r2, [r5,#0xd]
    mov r1, #1
    and r2, r1
    lsl r2, r2, #1
    ldr r0, [pc, #0x803469c-0x803466a-2] // dword_80346A0
    ldrh r0, [r0,r2]
    add r0, #8
    lsl r0, r0, #0x10
    ldrb r2, [r5,#0xd]
    ldrb r1, [r5,#0xf]
    sub r2, r2, r1
    lsl r2, r2, #1
    ldr r1, [pc, #0x80346a4-0x803467a-2] // dword_80346A8
    ldrh r1, [r1,r2]
    add r1, #8
    orr r0, r1
    add r1, r6, #0
    add r1, #3
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    push {r0}
    bl sub_8025BD8
    pop {r0}
    pop {r7,pc}
    .balign 4, 0x00
off_803469C:    .word dword_80346A0
dword_80346A0:    .word 0x700010
off_80346A4:    .word dword_80346A8
dword_80346A8:    .word 0x180018, 0x280028, 0x380038, 0x480048
dword_80346B8:    .word 0xA002
    push {lr}
    mov r0, r8
    push {r0,r5}
    mov r0, #0
    mov r8, r0
    mov r1, #0
    mov r2, #0
    ldrh r3, [r5,#0x14]
    mov r4, #0x40 
    mov r5, #0x4c 
    mov r6, #0xe
    ldr r7, [pc, #0x80346f0-0x80346d2-2] // =0x340
    bl sub_8053A6C
    pop {r0,r5}
    mov r8, r0
    pop {pc}
    .byte 0, 0
    .word unk_86DE644
    .word 0x6016800, 0x8695224, 0x201A000
off_80346F0:    .word 0x340
.thumb
sub_80346F4:
    push {lr}
    bl sub_803478C
    pop {pc}
// end of function sub_80346F4

.thumb
sub_80346FC:
    push {lr}
    ldr r0, [pc, #0x8034708-0x80346fe-2] // unk_202A800
    bl sub_804DFA0
    pop {pc}
    .balign 4, 0x00
off_8034708:    .word unk_202A800
// end of function sub_80346FC

    push {r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_803471E
    mov r0, #0xd
    mov r1, #1
    mov r2, #0
    bl sub_80540C6
locret_803471E:
    pop {r7,pc}
    push {r5,r7,lr}
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq locret_803475C
    ldrb r7, [r5,#0xf]
    mov r6, #0
    ldr r0, [pc, #0x8034774-0x803472c-4] // dword_201A000
    ldrb r1, [r0,r7]
    push {r5-r7}
    ldr r0, [pc, #0x8034760-0x8034732-2] // dword_87548F4
    ldr r2, [pc, #0x803476c-0x8034734-4] // unk_2016000
    ldr r3, [pc, #0x8034764-0x8034736-2] // =0x6004000
    ldr r4, [pc, #0x8034770-0x8034738-4] // =0x200
    mul r6, r4
    add r2, r2, r6
    add r3, r3, r6
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x8034768-0x8034744-4] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0xE0
    .byte 0xBC
    .byte 1
    .byte 0x37 
    .byte 1
    .byte 0x36 
    .byte 0x28 
    .byte 0x7B 
    .byte 0x87
    .byte 0x42 
    .byte 1
    .byte 0xDA
    .byte 8
    .byte 0x2E 
    .byte 0xE7
    .byte 0xDB
locret_803475C:
    pop {r5,r7,pc}
    .byte 0, 0
off_8034760:    .word dword_87548F4
dword_8034764:    .word 0x6004000
off_8034768:    .word dword_868E224
off_803476C:    .word unk_2016000
off_8034770:    .word 0x200
off_8034774:    .word dword_201A000
    push {r5,r7,lr}
    ldrb r7, [r5,#0xc]
    tst r7, r7
    beq locret_803478A
    add r5, r2, #0
    mov r2, #2
    mov r4, #8
    bl sub_8001DDC
locret_803478A:
    pop {r5,r7,pc}
.thumb
sub_803478C:
    push {r6,r7,lr}
    add r6, r1, #0
    ldr r7, [pc, #0x80347d4-0x8034790-4] // unk_86DE644
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_80347A8
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_80347A8
    ldr r7, [pc, #0x80347d8-0x80347a6-2] // dword_86E0A10
loc_80347A8:
    add r0, r7, #0
    add r1, r6, #0
    bl sub_804DFA0
    pop {r6,r7,pc}
    .balign 4, 0x00
// end of function sub_803478C

.thumb
sub_80347B4:
    push {r1-r7,lr}
    ldr r7, [pc, #0x80347d4-0x80347b6-2] // unk_86DE644
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_80347CE
    mov r0, #0x11
    mov r1, #0x7d 
    bl sub_8024FF0
    bne loc_80347CE
    ldr r7, [pc, #0x80347d8-0x80347cc-4] // dword_86E0A10
loc_80347CE:
    add r0, r7, #0
    pop {r1-r7,pc}
    .balign 4, 0x00
off_80347D4:    .word unk_86DE644
off_80347D8:    .word dword_86E0A10
// end of function sub_80347B4

.thumb
sub_80347DC:
    push {lr}
    ldrh r1, [r5,#0x3c]
    ldrh r2, [r5,#0x3e]
    cmp r1, r2
    beq locret_80347F0
    strh r1, [r5,#0x3e]
    add r1, r0, #0
    ldr r0, [pc, #0x80347f4-0x80347ea-2] // dword_2028000
    bl sub_804DFA0
locret_80347F0:
    pop {pc}
    .balign 4, 0x00
off_80347F4:    .word dword_2028000
// end of function sub_80347DC

.thumb
sub_80347F8:
    push {lr}
    mov r1, #0
    bl sub_804DFA0
    pop {pc}
    .balign 4, 0x00
// end of function sub_80347F8

.thumb
sub_8034804:
    push {r5,lr}
    mov r12, r2
    sub r1, #1
    mov r9, r1
    ldrh r6, [r5,#0x16]
    sub r6, #1
    ldr r2, [r5,#0x30]
    ldrb r3, [r5,#0xf]
    mov r4, r9
    add r4, #1
    ldr r1, [pc, #0x8034ab4-0x8034818-4] // =0x200
    tst r1, r0
    beq loc_8034826
    sub r3, r3, r4
    bgt loc_8034850
    mov r3, #0
    b loc_8034850
loc_8034826:
    mov r4, r9
    add r4, #1
    ldr r1, [pc, #0x8034ab8-0x803482a-2] // =0xFF
    tst r1, r0
    beq loc_8034850
    cmp r6, r9
    blt loc_8034850
    ldrh r6, [r5,#0x16]
    mov r0, r9
    sub r6, r6, r0
    sub r6, #1
    add r3, r3, r4
    cmp r3, r6
    ble loc_8034850
    add r3, r6, #0
    mov r7, r12
    cmp r7, #0
    beq loc_8034850
    mov r2, #0
    mov r3, #0
    b loc_8034850
loc_8034850:
    ldr r4, [r5,#0x30]
    cmp r2, r4
    bne loc_8034860
    ldrb r4, [r5,#0xf]
    cmp r3, r4
    bne loc_8034860
    mov r7, #0
    b loc_8034868
loc_8034860:
    mov r0, #0x7d 
    bl f500_8000558
    mov r7, #0xff
loc_8034868:
    str r2, [r5,#0x30]
    strb r3, [r5,#0xf]
    pop {r5,pc}
    .byte 0, 0
// end of function sub_8034804

.thumb
sub_8034870:
    push {lr}
    lsl r0, r0, #1
    ldr r1, [pc, #0x80348a8-0x8034874-4] // dword_80348AC
    ldrh r0, [r1,r0]
    lsr r1, r0, #9
    add r2, r1, #0
    lsl r2, r2, #9
    bic r0, r2
    push {r0,r1}
    bl sub_8019154
    tst r0, r0
    pop {r0,r1}
    bne loc_80348A0
    mov r2, #1
    bl dword_801907C+2
    mov r1, #0x46 
    bl sub_803478C
    mov r0, #0x74 
    bl f500_8000558
    b locret_80348A6
loc_80348A0:
    mov r1, #0x47 
    bl sub_803478C
locret_80348A6:
    pop {pc}
off_80348A8:    .word dword_80348AC
dword_80348AC:    .word 0x7370000, 0xD38
// end of function sub_8034870

.thumb
sub_80348B4:
    push {lr}
    ldr r4, [pc, #0x80348ec-0x80348b6-2] // unk_2007230
    mov r1, #0
loc_80348BA:
    ldrh r0, [r4,r1]
    mov r2, #0
    mvn r2, r2
    lsr r2, r2, #0x10
    cmp r0, r2
    beq loc_80348D0
loc_80348C6:
    mov r0, #0
    mov r1, #0x71 
    bl sub_8024F9C
    b locret_80348EA
loc_80348D0:
    add r1, #2
    cmp r1, #0x28 
    blt loc_80348BA
    ldr r7, [pc, #0x80348f0-0x80348d6-2] // dword_80348F4
    mov r6, #0
loc_80348DA:
    ldr r0, [r7,r6]
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    bne loc_80348C6
    add r6, #4
    cmp r6, #0x50 
    blt loc_80348DA
locret_80348EA:
    pop {pc}
off_80348EC:    .word unk_2007230
off_80348F0:    .word dword_80348F4
dword_80348F4:    .word 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D
    .word 0x8E, 0x8F, 0x90, 0x91, 0x97, 0x93, 0x95, 0x92, 0x98
    .word 0x96, 0x94
// end of function sub_80348B4

.thumb
sub_8034944:
    push {lr}
    bl sub_80350BC
    mov r0, #0
    mov r1, #0x15
    bl sub_8024FF0
    beq locret_803497C
    ldr r4, [pc, #0x8034980-0x8034954-4] // byte_803498C
    mov r7, #0
    mov r2, #0
loc_803495A:
    ldrb r6, [r4,r2]
    cmp r6, #0xff
    beq loc_8034976
    push {r2}
    add r0, r6, #0
    bl sub_8024FF4
    pop {r2}
    beq loc_8034972
    ldr r0, [pc, #0x8034984-0x803496c-4] // unk_201D000
    strb r6, [r0,r7]
    add r7, #1
loc_8034972:
    add r2, #1
    b loc_803495A
loc_8034976:
    ldr r0, [pc, #0x8034988-0x8034976-2] // dword_8032EAC+708
    bl sub_8053FFC
locret_803497C:
    pop {pc}
    .byte 0, 0
off_8034980:    .word byte_803498C
off_8034984:    .word unk_201D000
off_8034988:    .word dword_8032EAC+0x2C4
byte_803498C:    .byte 0x17
    .word 0x1B1A1918
    .hword 0xFF1C
    .byte 0
// end of function sub_8034944

.thumb
sub_8034994:
    push {lr}
    mov r0, #0x24 
    bl sub_800D742
    cmp r0, #0
    bne locret_80349BA
    mov r0, #0x1f
    bl sub_800D742
    cmp r0, #1
    beq loc_80349B4
    mov r0, #0
    bl sub_800D742
    cmp r0, #0xff
    bne locret_80349BA
loc_80349B4:
    ldr r0, [pc, #0x80349bc-0x80349b4-4] // dword_8032EAC+736
    bl sub_8053FFC
locret_80349BA:
    pop {pc}
off_80349BC:    .word dword_8032EAC+0x2E0
// end of function sub_8034994

.thumb
sub_80349C0:
    push {lr}
    mov r0, #0x24 
    bl sub_800D742
    cmp r0, #5
    bne loc_80349D4
    ldr r0, [pc, #0x80349e8-0x80349cc-4] // dword_8032EAC+744
    bl sub_8053FFC
    b locret_80349E4
loc_80349D4:
    mov r0, #0x24 
    bl sub_800D742
    cmp r0, #8
    bne locret_80349E4
    ldr r0, [pc, #0x80349ec-0x80349de-2] // dword_8032EAC+752
    bl sub_8053FFC
locret_80349E4:
    pop {pc}
    .balign 4, 0x00
off_80349E8:    .word dword_8032EAC+0x2E8
off_80349EC:    .word dword_8032EAC+0x2F0
// end of function sub_80349C0

.thumb
sub_80349F0:
    push {lr}
    mov r0, #0x13
    bl sub_800D742
    push {r0}
    mov r0, #0xff
    bl sub_8043170
    strb r0, [r5,#0x12]
    add r1, r0, #0
    pop {r0}
    cmp r0, r1
    bge loc_8034A32
    mov r6, #0x58 
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    bne loc_8034A1E
    mov r0, #0x23 
    bl sub_8042FB4
    mov r6, #0x4c 
loc_8034A1E:
    bl sub_80430BC
    ldr r0, [pc, #0x8034a78-0x8034a22-2] // =0x400
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    mov r0, #0x10
    strb r0, [r5,#2]
    add r1, r6, #0
    b locret_8034A74
loc_8034A32:
    mov r0, #0x14
    bl sub_800D742
    push {r0}
    mov r0, #0xff
    bl sub_80431A8
    strb r0, [r5,#0x13]
    add r1, r0, #0
    pop {r0}
    cmp r0, r1
    bge loc_8034A72
    mov r6, #0x58 
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldrb r0, [r0,#6]
    cmp r0, #1
    bne loc_8034A5E
    mov r6, #0x4c 
    mov r0, #0x23 
    bl sub_8042FB4
loc_8034A5E:
    bl sub_80430BC
    ldr r0, [pc, #0x8034a78-0x8034a62-2] // =0x400
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    mov r0, #0x10
    strb r0, [r5,#2]
    add r1, r6, #0
    b locret_8034A74
loc_8034A72:
    mov r1, #0x3c 
locret_8034A74:
    pop {pc}
    .balign 4, 0x00
off_8034A78:    .word 0x400
// end of function sub_80349F0

.thumb
sub_8034A7C:
    push {r0,r4,r6,r7,lr}
    add r7, r0, #0
loc_8034A80:
    ldrb r0, [r7]
    tst r0, r0
    beq locret_8034AAC
    mov r6, #0
    add r4, r0, #0
loc_8034A8A:
    lsl r0, r4, #2
    mov r1, #0xc0
    add r0, r0, r1
    add r1, r6, #0
    bl sub_802D62C
    bne loc_8034AA8
    add r6, #1
    cmp r6, #6
    blt loc_8034A8A
    ldr r0, [pc, #0x8034ab0-0x8034a9e-2] // dword_201A000
    mov r1, #0x19
    bl f900_8000904
    b locret_8034AAC
loc_8034AA8:
    add r7, #1
    b loc_8034A80
locret_8034AAC:
    pop {r0,r4,r6,r7,pc}
    .byte 0, 0
off_8034AB0:    .word dword_201A000
off_8034AB4:    .word 0x200
off_8034AB8:    .word 0x100
// end of function sub_8034A7C

.thumb
ho_8034ABC:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r0, [r0,#0x15]
    ldr r1, [pc, #0x8034ad0-0x8034ac4-4] // jt_8034AD4
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_8034AD0:    .word jt_8034AD4
jt_8034AD4:    .word sub_8034ADC+1
    .word sub_8034B7C+1
// end of function ho_8034ABC

.thumb
sub_8034ADC:
    push {r4-r7,lr}
    bl sub_8034D14
    bgt loc_8034B66
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #0
    mul r1, r3
loc_8034AF2:
    ldrh r0, [r4,r1]
    cmp r0, #0x62 
    beq loc_8034B5C
    cmp r0, #0x60 
    bne loc_8034B66
    add r4, #2
    sub r2, #1
    bgt loc_8034AF2
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #1
    mul r1, r3
    push {r5,r6}
    ldr r5, [pc, #0x8034b6c-0x8034b0c-4] // loc_8034B74
    mov r6, #0
loc_8034B10:
    push {r3}
    ldrh r0, [r4,r1]
    ldrh r3, [r5,r6]
    and r3, r0
    pop {r3}
    beq loc_8034B28
    add r4, #2
    add r6, #2
    sub r2, #1
    bgt loc_8034B10
    pop {r5,r6}
    b loc_8034B2C
loc_8034B28:
    pop {r5,r6}
    b loc_8034B66
loc_8034B2C:
    mov r1, r10
    ldr r1, [r1,#0x34]
    strh r0, [r1,#0x1a]
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #2
    mul r1, r3
loc_8034B3A:
    push {r1}
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [r6,#0x1c]
    cmp r0, r1
    pop {r1}
    bne loc_8034B66
    add r4, #2
    sub r2, #1
    bgt loc_8034B3A
    mov r0, #1
    strh r0, [r6,#0xe]
loc_8034B58:
    mov r0, #0
    pop {r4-r7,pc}
loc_8034B5C:
    mov r0, #8
    strb r0, [r6]
    bl sub_8034D20
    b loc_8034B58
loc_8034B66:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034B6C:    .word loc_8034B74
    .word loc_8034B78
// end of function sub_8034ADC

loc_8034B74:
    mov r0, #0
    asr r0, r0, #0x20
loc_8034B78:
    asr r0, r0, #0x20
    mov r0, #0
.thumb
sub_8034B7C:
    push {r4-r7,lr}
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #0
    mul r1, r3
loc_8034B8C:
    ldrh r0, [r4,r1]
    cmp r0, #0x62 
    beq loc_8034C1E
    cmp r0, #0x60 
    bne loc_8034C28
    add r4, #2
    sub r2, #1
    bgt loc_8034B8C
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #1
    mul r1, r3
loc_8034BA4:
    push {r3}
    ldrh r0, [r4,r1]
    ldr r3, [pc, #0x8034e98-0x8034ba8-4] // =0x1000
    and r0, r3
    pop {r3}
    beq loc_8034C28
    add r4, #2
    sub r2, #1
    bgt loc_8034BA4
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #2
    mul r1, r3
loc_8034BBE:
    push {r1}
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [r6,#0x1c]
    cmp r0, r1
    pop {r1}
    bne loc_8034C28
    add r4, #2
    sub r2, #1
    bgt loc_8034BBE
    add r4, r5, #0
    mov r1, #4
    mul r1, r3
    tst r2, r2
    bne loc_8034BE4
    add r4, #2
loc_8034BE4:
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x20]
    add r4, r5, #0
    mov r1, #6
    mul r1, r3
    mov r0, r10
    ldr r0, [r0,#0x34]
    ldrb r2, [r0,#0x18]
    tst r2, r2
    bne loc_8034C02
    add r4, #2
loc_8034C02:
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x40]
    ldrb r0, [r6,#1]
    add r0, #4
    strb r0, [r6,#1]
    strb r0, [r6]
    mov r0, #2
    strh r0, [r6,#0xe]
loc_8034C1A:
    mov r0, #0
    pop {r4-r7,pc}
loc_8034C1E:
    mov r0, #8
    strb r0, [r6]
    bl sub_8034D20
    b loc_8034C1A
loc_8034C28:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_8034B7C

.thumb
sub_8034C2C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x34]
    ldrb r0, [r7,#0x18]
    tst r0, r0
    bne loc_8034C9C
    add r5, #2
    ldr r0, [r7,#0x28]
    tst r0, r0
    bne loc_8034C52
    ldrh r2, [r5]
    cmp r2, #0x61 
    bne loc_8034C9C
    mov r0, #1
    str r0, [r7,#0x28]
    mov r0, #0
    str r0, [r7,#0x2c]
    mov r0, #0
    str r0, [r6,#0x28]
loc_8034C52:
    mov r1, #0x38 
    ldrb r0, [r7,#0x18]
    tst r0, r0
    beq loc_8034C5C
    mov r1, #0x3c 
loc_8034C5C:
    add r1, r1, r6
    ldr r2, [r1]
    mov r1, #0xe
    ldr r4, [r6,#0x28]
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r5, r5, r3
loc_8034C6C:
    bl sub_8034CA0
    add r5, r5, r3
    add r4, #2
    sub r1, #2
    bgt loc_8034C6C
    str r4, [r6,#0x28]
    ldr r0, [r6,#0x20]
    cmp r4, r0
    blt loc_8034C9C
    ldr r0, [r6,#0x40]
    ldr r1, [r7,#0x2c]
    cmp r0, r1
    beq loc_8034C94
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strh r0, [r6,#0xe]
    mov r0, #1
    pop {r4-r7,pc}
loc_8034C94:
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strh r0, [r6,#0xe]
loc_8034C9C:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8034C2C

.thumb
sub_8034CA0:
    push {r0-r7,lr}
    mov r3, #0
    ldr r0, [r6,#0x28]
    tst r0, r0
    bne loc_8034CAE
    ldrb r0, [r5,r3]
    ldrb r1, [r5,r0]
loc_8034CAE:
    ldrb r0, [r5,r3]
    strb r0, [r2,r4]
    ldr r1, [r7,#0x2c]
    add r1, r1, r0
    str r1, [r7,#0x2c]
    add r4, #1
    add r3, #1
    cmp r3, #2
    blt loc_8034CAE
    pop {r0-r7,pc}
    .balign 4, 0x00
// end of function sub_8034CA0

.thumb
sub_8034CC4:
    push {r4-r7,lr}
    ldr r6, [pc, #0x8034e9c-0x8034cc6-2] // byte_200A3D0
    ldrb r0, [r6,#(byte_200A3D1 - 0x200a3d0)]
    cmp r0, #4
    bne locret_8034D04
    bl sub_8034E2C
    ldr r1, [r6,#(dword_200A3FC - 0x200a3d0)]
    ldr r0, [r6,#(dword_200A3F0 - 0x200a3d0)]
    cmp r1, r0
    blt loc_8034CE0
    bl sub_8048138
    b locret_8034D04
loc_8034CE0:
    ldr r1, [r6,#(dword_200A400 - 0x200a3d0)]
    mov r2, #0
    ldr r7, [pc, #0x8034ea0-0x8034ce4-4] // dword_200B720
    ldr r5, [pc, #0x8034ea4-0x8034ce6-2] // word_202A000
loc_8034CE8:
    cmp r1, #4
    bne loc_8034CF0
    ldrh r0, [r6,#(dword_200A3EC - 0x200a3d0)]
    b loc_8034CF2
loc_8034CF0:
    ldrh r0, [r5,r1]
loc_8034CF2:
    strh r0, [r7,r2]
    add r1, #2
    add r2, #2
    cmp r2, #0x10
    blt loc_8034CE8
    mov r0, #0xe
    ldr r1, [r6,#(dword_200A3FC - 0x200a3d0)]
    add r1, r1, r0
    str r1, [r6,#(dword_200A3FC - 0x200a3d0)]
locret_8034D04:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8034CC4

.thumb
sub_8034D08:
    push {r4-r7,lr}
    ldr r6, [pc, #0x8034ea8-0x8034d0a-2] // byte_200A3D0
    ldrh r0, [r6,#(word_200A3DE - 0x200a3d0)]
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8034D08

.thumb
sub_8034D14:
    push {r4-r7,lr}
    ldr r6, [pc, #0x8034eac-0x8034d16-2] // byte_200A3D0
    ldrb r0, [r6,#(byte_200A3D4 - 0x200a3d0)]
    ldrb r1, [r6,#(byte_200A3D3 - 0x200a3d0)]
    cmp r0, r1
    pop {r4-r7,pc}
// end of function sub_8034D14

.thumb
sub_8034D20:
    push {r4-r7,lr}
    ldr r6, [pc, #0x8034eb0-0x8034d22-2] // byte_200A3D0
    mov r0, #0
    strh r0, [r6,#(word_200A3DE - 0x200a3d0)]
    strh r0, [r6,#(word_200A3DC - 0x200a3d0)]
    mov r0, #8
    strb r0, [r6,#(byte_200A3D1 - 0x200a3d0)]
    bl sub_8048138
    pop {r4-r7,pc}
// end of function sub_8034D20

    push {r4-r7,lr}
    ldr r6, [pc, #0x8034eb4-0x8034d36-2] // byte_200A3D0
    ldrb r0, [r6,#(byte_200A3D1 - 0x200a3d0)]
    add r0, #4
    strb r0, [r6,#(byte_200A3D1 - 0x200a3d0)]
    strb r0, [r6]
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_8034D44:
    push {r4-r7,lr}
    mov r0, #0
    str r0, [r5,#0x28]
    strb r0, [r5,#0x15]
    bl sub_80481C8
    bl sub_80481E4
    ldr r0, [pc, #0x8034d70-0x8034d54-4] // =0x4234574A
    ldr r1, [pc, #0x8034d74-0x8034d56-2] // =0x2000
    mov r2, #0
    bl sub_80480A4
    mov r0, #0x80
    lsl r0, r0, #4
    mov r1, #1
    mov r2, #2
    mov r3, #1
    bl sub_80480B4
    pop {r4-r7,pc}
    .byte 0, 0
dword_8034D70:    .word 0x4234574A
off_8034D74:    .word 0x2000
// end of function sub_8034D44

.thumb
sub_8034D78:
    push {r4-r7,lr}
    mov r7, #1
    bl sub_80481EC
    cmp r0, #4
    bne loc_8034D88
    mov r7, #0
    b loc_8034D98
loc_8034D88:
    mov r1, #2
    and r0, r1
    beq loc_8034D98
    bl sub_80480EC
    strb r0, [r5,#0x18]
    bl sub_8034CC4
loc_8034D98:
    add r0, r7, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8034D78

    push {r4-r7,lr}
    mov r1, #0x38 
    ldrb r0, [r7,#0x18]
    tst r0, r0
    beq loc_8034DAC
    mov r1, #0x3c 
loc_8034DAC:
    ldr r1, [r6,r1]
    mov r2, #0
    mov r3, #0
    ldr r4, [r6,#0x20]
loc_8034DB4:
    ldrb r0, [r1,r2]
    add r3, r3, r0
    add r2, #1
    cmp r2, r4
    blt loc_8034DB4
    ldr r0, [r6,#0x40]
    cmp r0, r3
    pop {r4-r7,pc}
.thumb
sub_8034DC4:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_8034DC4

    push {r4-r7,lr}
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #0
    mul r1, r3
loc_8034DD8:
    ldrh r0, [r4,r1]
    cmp r0, #0x60 
    bne loc_8034E26
    add r4, #2
    sub r2, #1
    bgt loc_8034DD8
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #1
    mul r1, r3
loc_8034DEC:
    push {r3}
    ldrh r0, [r4,r1]
    ldr r3, [pc, #0x8034e98-0x8034df0-4] // =0x1000
    and r0, r3
    pop {r3}
    beq loc_8034E26
    add r4, #2
    add r6, #2
    sub r2, #1
    bgt loc_8034DEC
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #2
    mul r1, r3
loc_8034E08:
    push {r1}
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [r6,#0x1c]
    cmp r0, r1
    pop {r1}
    bne loc_8034E26
    add r4, #2
    sub r2, #1
    bgt loc_8034E08
    mov r0, #0
    pop {r4-r7,pc}
loc_8034E26:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_8034E2C:
    push {r4-r7,lr}
    mov r0, #8
    ldr r1, [r5,#0x1c]
    tst r0, r1
    beq locret_8034E4C
    mov r0, #0x10
    ldr r1, [r5,#0x1c]
    tst r0, r1
    bne locret_8034E4C
    mov r1, #0x53 
    bl sub_803478C
    mov r0, #0x10
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
locret_8034E4C:
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8034E2C

.thumb
sub_8034E50:
    push {r4-r7,lr}
    ldr r4, [pc, #0x8034ea4-0x8034e52-2] // word_202A000
    mov r7, #0
    mov r1, #0
    mov r3, #0
    mov r0, #0x61 
    strh r0, [r4,r1]
    mov r6, #0
loc_8034E60:
    add r1, #2
    add r6, #2
    add r3, #1
    strh r3, [r4,r1]
    cmp r6, #0xe
    blt loc_8034E60
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8034E50

    push {r0-r7,lr}
    pop {r0-r7,pc}
.thumb
sub_8034E74:
    push {r0-r7,lr}
    ldr r4, [pc, #0x8034eb8-0x8034e76-2] // word_200A340
    mov r3, #4
    lsl r3, r3, #1
    mul r2, r3
    lsl r1, r1, #1
    add r1, r1, r2
    strh r0, [r4,r1]
    pop {r0-r7,pc}
    .balign 4, 0x00
// end of function sub_8034E74

.thumb
sub_8034E88:
    push {r7,lr}
    ldr r7, [pc, #0x8034ebc-0x8034e8a-2] // word_200A340
    ldrh r0, [r7]
    ldrh r1, [r7,#(word_200A342 - 0x200a340)]
    ldrh r2, [r7,#(word_200A344 - 0x200a340)]
    ldrh r3, [r7,#(word_200A346 - 0x200a340)]
    pop {r7,pc}
    .balign 4, 0x00
off_8034E98:    .word 0x1000
off_8034E9C:    .word byte_200A3D0
off_8034EA0:    .word dword_200B720
off_8034EA4:    .word word_202A000
off_8034EA8:    .word byte_200A3D0
off_8034EAC:    .word byte_200A3D0
off_8034EB0:    .word byte_200A3D0
off_8034EB4:    .word byte_200A3D0
off_8034EB8:    .word word_200A340
off_8034EBC:    .word word_200A340
// end of function sub_8034E88

.thumb
sub_8034EC0:
    push {r4-r7,lr}
    mov r2, #0
    mov r0, r10
    ldr r0, [r0,#0x70]
    mov r1, #0xff
loc_8034ECA:
    strb r1, [r0,r2]
    add r2, #1
    cmp r2, #7
    blt loc_8034ECA
    pop {r4-r7,pc}
// end of function sub_8034EC0

.thumb
sub_8034ED4:
    push {r1,r2,r4-r7,lr}
    mov r2, #0
    mov r0, r10
    ldr r0, [r0,#0x70]
    mov r1, #7
    add r0, r0, r1
    mov r1, #0xff
loc_8034EE2:
    strb r1, [r0,r2]
    add r2, #1
    cmp r2, #7
    blt loc_8034EE2
    pop {r1,r2,r4-r7,pc}
// end of function sub_8034ED4

    push {r1,r2,r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x70]
    mov r1, #7
    add r2, r1, #0
    add r1, r1, r0
    bl f900_8000970
    pop {r1,r2,r4-r7,pc}
    .byte 0, 0
    push {r1,r2,r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x70]
    mov r0, #7
    add r2, r0, #0
    add r0, r0, r1
    bl f900_8000970
    pop {r1,r2,r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_8034F14:
    push {r4-r7,lr}
    mov r4, #0
    mov r2, #0
    mov r0, r10
    ldr r0, [r0,#0x70]
loc_8034F1E:
    ldrb r1, [r0,r2]
    cmp r1, #0xff
    bne loc_8034F2C
    add r2, #1
    cmp r2, #7
    blt loc_8034F1E
    mov r4, #1
loc_8034F2C:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8034F14

.thumb
sub_8034F34:
    push {r4-r7,lr}
    mov r1, #0x38 
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_8034F40
    mov r1, #0x3c 
loc_8034F40:
    ldr r6, [pc, #0x80350ec-0x8034f40-4] // byte_200A3D0
    add r1, r1, r6
    ldr r2, [r1]
    ldrh r0, [r2]
    add r0, r0, r2
    ldrh r0, [r0]
    mov r1, #0xff
    and r1, r0
    cmp r1, #0x85
    beq loc_8034F58
    cmp r1, #0x7f
    bge loc_8034F98
loc_8034F58:
    lsr r6, r0, #8
    mov r7, r10
    ldr r7, [r7,#0x70]
    add r3, r6, r7
    ldrb r0, [r3]
    cmp r0, #0xff
    beq loc_8034F6A
    bl sub_8006504
loc_8034F6A:
    add r0, r1, #0
    bl sub_80064F0
    strb r1, [r3]
    add r3, #7
    mov r1, #0xff
    strb r1, [r3]
    ldrh r0, [r2,#2]
    add r0, r0, r2
    ldrh r4, [r2,#4]
    add r4, r4, r2
    ldr r7, [pc, #0x80350f0-0x8034f80-4] // unk_2001EA0
    mov r1, #0x5c 
    mul r1, r6
    add r1, r1, r7
    bl dword_8111700
    add r0, r4, #0
    ldr r1, [pc, #0x80350f4-0x8034f8e-2] // unk_202A800
    bl dword_8111700
    mov r0, #0
    pop {r4-r7,pc}
loc_8034F98:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_8034F34

.thumb
sub_8034F9C:
    push {r4-r7,lr}
    mov r0, r8
    push {r0}
    mov r1, #0x38 
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_8034FAC
    mov r1, #0x3c 
loc_8034FAC:
    ldr r6, [pc, #0x80350f8-0x8034fac-4] // byte_200A3D0
    add r1, r1, r6
    ldr r7, [r1]
    ldrh r0, [r7]
    add r0, r0, r7
    ldrh r0, [r0]
    cmp r0, #1
    bne loc_8034FC0
    mov r0, #2
    b loc_8034FC2
loc_8034FC0:
    mov r0, #1
loc_8034FC2:
    mov r8, r0
    ldrh r0, [r7,#2]
    add r0, r0, r7
    ldr r4, [pc, #0x80350fc-0x8034fc8-4] // unk_2001770
    mov r1, r8
    sub r1, #1
    mov r3, #0x10
    mul r1, r3
    add r1, r1, r4
    bl dword_8111700
    ldrh r4, [r7,#4]
    add r4, r4, r7
    ldr r2, [pc, #0x8035100-0x8034fdc-4] // unk_2000520
    mov r1, r8
    sub r1, #1
    mov r0, #0x5c 
    mul r1, r0
    add r1, r1, r2
    add r0, r4, #0
    bl dword_8111700
    ldrh r0, [r7,#6]
    add r0, r0, r7
    ldr r2, [pc, #0x8035104-0x8034ff2-2] // unk_20008A0
    mov r1, r8
    sub r1, #1
    ldr r3, [pc, #0x8035108-0x8034ff8-4] // =0x5E0
    mul r1, r3
    add r1, r1, r2
    ldr r2, [pc, #0x803510c-0x8034ffe-2] // =0x540
    bl f900_800098C
    ldrh r0, [r7,#8]
    add r0, r0, r7
    ldr r2, [pc, #0x8035110-0x8035008-4] // unk_20008A0
    mov r1, r8
    sub r1, #1
    ldr r3, [pc, #0x8035108-0x803500e-2] // =0x5E0
    mul r1, r3
    ldr r3, [pc, #0x803510c-0x8035012-2] // =0x540
    add r1, r1, r3
    add r1, r1, r2
    mov r2, #0x20 
    bl f900_800098C
    ldrh r0, [r7,#0xa]
    add r0, r0, r7
    ldr r2, [pc, #0x8035114-0x8035022-2] // unk_20008A0
    mov r1, r8
    sub r1, #1
    ldr r3, [pc, #0x8035108-0x8035028-4] // =0x5E0
    mul r1, r3
    ldr r3, [pc, #0x8035118-0x803502c-4] // =0x560
    add r1, r1, r3
    add r1, r1, r2
    mov r2, #0x80
    bl f900_800098C
    mov r1, r8
    pop {r0}
    mov r8, r0
    add r0, r1, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8034F9C

.thumb
sub_8035044:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    bl sub_8047240
    bl sub_8036BD4
    bl sub_8042ECC
    mov r0, #0xc
    mov r1, #0x49 
    bl sub_8024FB8
    bl loc_804187C
    bl loc_804299C
    bl sub_8041D58
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrh r6, [r1,#0x22]
    mov r7, r10
    ldr r7, [r7,#0x70]
    mov r4, #6
loc_803507A:
    ldrb r0, [r7,r4]
    cmp r0, #0xff
    beq loc_8035094
    push {r0}
    bl sub_800651A
    pop {r0}
    beq loc_8035090
    mov r0, #0xff
    strb r0, [r7,r4]
    b loc_8035094
loc_8035090:
    bl sub_8041D72
loc_8035094:
    sub r4, #1
    bge loc_803507A
    bl loc_8042960
    mov r0, #0
    mov r1, #0x2c 
    bl sub_8024F9C
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8035044

    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x70]
    strb r0, [r7,#6]
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_80350BC:
    push {lr}
    ldr r0, [pc, #0x80350cc-0x80350be-2] // unk_201D000
    mov r1, #8
    mov r2, #0xff
    bl f900_80009B4
    pop {pc}
    .balign 4, 0x00
off_80350CC:    .word unk_201D000
// end of function sub_80350BC

.thumb
sub_80350D0:
    push {r4-r7,lr}
    ldr r1, [pc, #0x80350dc-0x80350d2-2] // dword_200A448
    ldr r0, [r1]
    ldr r2, [pc, #0x80350e0-0x80350d6-2] // dword_80350E4
    ldrb r0, [r2,r0]
    pop {r4-r7,pc}
off_80350DC:    .word dword_200A448
off_80350E0:    .word dword_80350E4
dword_80350E4:    .word 0x1040203, 0x0
off_80350EC:    .word byte_200A3D0
off_80350F0:    .word unk_2001EA0
off_80350F4:    .word unk_202A800
off_80350F8:    .word byte_200A3D0
off_80350FC:    .word unk_2001770
off_8035100:    .word unk_2000520
off_8035104:    .word unk_20008A0
off_8035108:    .word 0x5E0
off_803510C:    .word 0x540
off_8035110:    .word unk_20008A0
off_8035114:    .word unk_20008A0
off_8035118:    .word 0x560
dword_803511C:    .word 0xFF000017, 0xFF000117, 0xFF000217, 0xFF000317, 0xFF000417
    .word 0xFF000517, 0xFF000617, 0xFF010918, 0xFF010819, 0xFF000F1A
    .word 0xFF000D1B, 0xFFFFFFFF, 0xFF000819, 0xFFFFFFFF, 0xFF640A1D
    .word 0xFFFFFFFF, 0xFF000B1E, 0xFFFFFFFF, 0xFF000F1F, 0xFFFFFFFF
    .word 0xFF040F1A, 0xFFFFFFFF, 0xFF000F1A, 0xFFFFFFFF, 0xFF670A1D
    .word 0xFFFFFFFF, 0xFF000C20, 0xFFFFFFFF, 0xFF00071C, 0xFFFFFFFF
    .word 0xFF6A0A1D, 0xFFFFFFFF, 0x41A141A0, 0x41A341A2, 0x41A541A4
    .word 0x41A741A6, 0x41A941A8, 0x41AB41AA, 0x41AD41AC, 0x41AF41AE
    .word 0x41B141B0, 0x41B341B2, 0x41B541B4, 0x41B741B6, 0x41B941B8
    .word 0x41BB41BA, 0x41BD41BC, 0x41BF41BE, 0x41C141C0, 0x41C341C2
    .word 0x41C541C4, 0x41C741C6, 0x41C941C8, 0x41CB41CA, 0x41CD41CC
    .word 0x41CF41CE, 0x41D141D0, 0x41D341D2, 0x41D541D4, 0x41D741D6
    .word 0x41D941D8, 0x41DB41DA
// end of function sub_80350D0

.thumb
ho_8035214:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8035224-0x8035216-2] // jt_8035228
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8035224:    .word jt_8035228
jt_8035228:    .word sub_803525C+1
    .word sub_803532C+1
    .word sub_80354E0+1
    .word sub_803552C+1
    .word sub_8035350+1
    .word sub_8035390+1
    .word sub_80353C0+1
    .word ho_803643C+1
    .word sub_8035558+1
    .word sub_803559C+1
    .word sub_80355EC+1
    .word sub_80353E8+1
    .word sub_803544C+1
// end of function ho_8035214

.thumb
sub_803525C:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0x12
    bl sub_8001BC8
    mov r7, r10
    ldr r0, [r7,#8]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    bl sub_8001D60
    ldr r0, [r7,#0x1c]
    mov r1, #0x27 
    strb r1, [r0,#9]
    mov r1, #0x37 
    strb r1, [r0,#0xa]
    mov r1, #0x3f 
    strb r1, [r0,#0xb]
    mov r1, #6
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#7]
    mov r1, #0xf0
    strb r1, [r0,#2]
    mov r1, #0xe
    strb r1, [r0,#6]
    bl sub_80359F0
    bl sub_80540BA
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8035328-0x80352b0-4] // =0xDF40
    strh r1, [r0]
    mov r0, #0
    strh r0, [r5,#0x22]
    strh r0, [r5,#0x2e]
    strb r0, [r5,#0xc]
    strh r0, [r5,#0x30]
    strh r0, [r5,#0x32]
    strh r0, [r5,#0x36]
    strh r0, [r5,#0x34]
    strh r0, [r5,#0x3a]
    strh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x28]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    str r0, [r5,#0x50]
    str r0, [r5,#0x54]
    strb r0, [r5,#0x14]
    mov r0, #0xa1
    bl sub_802D3F8
    strb r0, [r5,#0xd]
    bl sub_8046EE4
    str r7, [r5,#0x3c]
    bl sub_8046CB4
    bl sub_8035A14
    bl sub_803635C
    bl sub_8035624
    bl sub_80358F4
    mov r0, #0
    bl sub_803575C
    bl sub_80359A8
// end of function sub_803525C

    mov r0, #0
    bl sub_8046CD8
    ldr r0, [pc, #0x8035324-0x8035308-4] // dword_803511C
    bl sub_8053FFC
    mov r0, #0
    ldrb r1, [r5]
    cmp r1, #0x28 
    bne loc_8035318
    mov r0, #8
loc_8035318:
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
off_8035324:    .word dword_803511C
dword_8035328:    .word 0xDF40
.thumb
sub_803532C:
    push {lr}
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x22]
    strh r0, [r5,#0x28]
    bl sub_8005B5C
    beq loc_8035342
    mov r0, #0
    bl sub_8035ABC
loc_8035342:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    pop {pc}
// end of function sub_803532C

.thumb
sub_8035350:
    push {lr}
    mov r0, #9
    bl sub_805411A
    ldrb r0, [r1,#4]
    tst r0, r0
    bne loc_803537A
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    bl sub_803575C
    mov r0, #0
    bl sub_8046CD8
    mov r0, #8
    bl sub_80540EC
    ldr r0, [pc, #0x803538c-0x8035374-4] // dword_803511C+48
    bl sub_8053FFC
loc_803537A:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_803538C:    .word dword_803511C+0x30
// end of function sub_8035350

.thumb
sub_8035390:
    push {lr}
    mov r0, #9
    bl sub_805411A
    ldrb r0, [r1,#4]
    tst r0, r0
    bne loc_80353AE
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
loc_80353AE:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .byte 0, 0
// end of function sub_8035390

.thumb
sub_80353C0:
    push {lr}
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x38]
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x2a]
    ldrb r0, [r5,#0xe]
    tst r0, r0
    bne loc_80353D6
    mov r0, #0xa
    bl sub_8035EF4
loc_80353D6:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_80353C0

.thumb
sub_80353E8:
    push {lr}
    mov r0, #0xa
    bl sub_805411A
    bne loc_8035434
    bl sub_80359A8
    bl sub_80539B0
    cmp r0, #0
    beq loc_8035410
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x8035444-0x8035408-4] // dword_803511C+88
    bl sub_8053FFC
    b loc_8035434
loc_8035410:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    push {r5}
    mov r0, #0x11
    mov r1, #0xb
    mov r2, #2
    ldr r3, [pc, #0x8035448-0x8035424-4] // dword_86F17E0
    mov r4, #0xc
    mov r5, #9
    bl sub_8001DDC
    pop {r5}
    bl sub_80471E8
loc_8035434:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
off_8035444:    .word dword_803511C+0x58
off_8035448:    .word dword_86F17E0
// end of function sub_80353E8

.thumb
sub_803544C:
    push {lr}
    mov r0, #0xa
    bl sub_805411A
    bne loc_80354C8
    bl sub_80359A8
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x80354d8-0x8035460-4] // dword_803511C+88
    bl sub_8053FFC
    bl sub_80539B0
    cmp r0, #0
    beq loc_8035474
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#1]
    b loc_80354C8
loc_8035474:
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r4, #0
loc_803547E:
    add r0, r4, #0
    bl sub_8046EC8
    add r0, r4, #0
    bl sub_8035938
    bl sub_80471B0
    add r4, #1
    cmp r4, #0x19
    blt loc_803547E
    bl sub_8035A14
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#1]
    cmp r0, #4
    bne loc_80354C8
    ldrh r0, [r5,#0x20]
    bl sub_8035DFC
    ldrh r1, [r5,#0x2e]
    sub r1, r1, r0
    ldrh r2, [r5,#0x30]
    add r1, r1, r2
    cmp r1, #4
    bge loc_80354C2
    mov r2, #3
    strh r2, [r5,#0x30]
loc_80354C2:
    ldrh r2, [r5,#0x30]
    sub r0, r0, r2
    strh r0, [r5,#0x22]
loc_80354C8:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
off_80354D8:    .word dword_803511C+0x58
// end of function sub_803544C

    asr r0, r4, #0x1f
    lsr r7, r5, #1
.thumb
sub_80354E0:
    push {lr}
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    bl sub_8005B5C
    beq locret_8035528
    bl sub_802BC50
    bl sub_80540BA
    ldrb r0, [r5]
    cmp r0, #0x28 
    bne loc_8035512
    mov r0, #1
    bl sub_802D920
    bl sub_80027F4
    bl sub_802DE70
    b locret_8035528
loc_8035512:
    bl sub_8042EF0
    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x64 
    bl f900_8000930
    mov r0, #0xc
    strb r0, [r5]
    bl sub_80027F4
locret_8035528:
    pop {pc}
    .balign 4, 0x00
// end of function sub_80354E0

.thumb
sub_803552C:
    push {lr}
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x38]
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x2a]
    ldrb r0, [r5,#0xe]
    tst r0, r0
    bne loc_8035542
    mov r0, #0x14
    bl sub_8035C6C
loc_8035542:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    bl sub_80363F4
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_803552C

.thumb
sub_8035558:
    push {lr}
    mov r0, #8
    bl sub_805411A
    ldrb r0, [r1,#4]
    tst r0, r0
    bne loc_803558A
    bl sub_8047084
    bl sub_8035990
    bl sub_8035A14
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
loc_803558A:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_8035558

.thumb
sub_803559C:
    push {lr}
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x38]
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x2a]
    ldrh r0, [r5,#0x34]
    strh r0, [r5,#0x3a]
    mov r0, #0x14
    bl sub_8036208
    mov r0, #7
    bl sub_805411A
    bne loc_80355DA
    ldrh r0, [r5,#0x34]
    cmp r0, #0xff
    beq loc_80355D4
    cmp r0, #0
    beq loc_80355C4
    b loc_80355CA
loc_80355C4:
    bl sub_8035D84
    b loc_80355DA
loc_80355CA:
    bl sub_8035D84
    mov r0, #0x28 
    strb r0, [r5,#1]
    b loc_80355DA
loc_80355D4:
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_80355DA
loc_80355DA:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_803559C

.thumb
sub_80355EC:
    push {lr}
    mov r0, #8
    bl sub_805411A
    ldrb r0, [r1,#4]
    tst r0, r0
    bne loc_8035612
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
loc_8035612:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_80355EC

.thumb
sub_8035624:
    push {lr}
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x80356c4-0x803562c-4] // word_3002A50
    ldr r2, [pc, #0x80356c8-0x803562e-2] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x80356cc-0x8035634-4] // loc_86DAE6C
    ldr r1, [pc, #0x80356d0-0x8035636-2] // =0x6000020
    ldr r2, [pc, #0x80356d4-0x8035638-4] // =0x2B40
    bl f900_80009A0
    ldr r0, [pc, #0x80356d8-0x803563e-2] // loc_86ECF98
    ldr r1, [pc, #0x80356dc-0x8035640-4] // =0x6004000
    ldr r2, [pc, #0x80356e0-0x8035642-2] // =0x1320
    bl f900_80009A0
    ldr r0, [pc, #0x80356e4-0x8035648-4] // asc_86F151D+35
    ldr r1, [pc, #0x80356e8-0x803564a-2] // =0x6002000
    ldr r2, [pc, #0x80356ec-0x803564c-4] // =0x2A0
    bl f900_80009A0
    mov r0, #0x13
    bl sub_802F628
    ldr r1, [pc, #0x80356f4-0x8035658-4] // unk_3002AB0
    ldr r2, [pc, #0x80356f8-0x803565a-2] // =0x40
    bl f900_800098C
    mov r0, #9
    bl sub_802F628
    ldr r1, [pc, #0x8035700-0x8035666-2] // unk_3002AD0
    ldr r2, [pc, #0x8035704-0x8035668-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8035708-0x803566e-2] // dword_868DBA4
    ldr r1, [pc, #0x803570c-0x8035670-4] // =0x6010400
    ldr r2, [pc, #0x8035710-0x8035672-2] // =0x180
    bl f900_800098C
    ldr r0, [pc, #0x8035714-0x8035678-4] // dword_8708D20
    ldr r1, [pc, #0x8035718-0x803567a-2] // =0x6010600
    ldr r2, [pc, #0x803571c-0x803567c-4] // =0xFF
    bl f900_800098C
    ldr r0, [pc, #0x8035720-0x8035682-2] // dword_870A060
    ldr r1, [pc, #0x8035724-0x8035684-4] // unk_3002640
    ldr r2, [pc, #0x8035728-0x8035686-2] // =0x20
    bl f900_800098C
    mov r0, #6
    bl sub_802F628
    ldr r1, [pc, #0x8035754-0x8035692-2] // unk_3002820
    ldr r2, [pc, #0x8035758-0x8035694-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x803572c-0x803569a-2] // dword_868E1E4
    ldr r1, [pc, #0x8035730-0x803569c-4] // unk_30027A0
    ldr r2, [pc, #0x8035734-0x803569e-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8035738-0x80356a4-4] // dword_86EE2B8
    ldr r1, [pc, #0x803573c-0x80356a6-2] // dword_202E000
    bl dword_8111700
    ldr r0, [pc, #0x8035740-0x80356ac-4] // dword_86CEAE0
    ldr r1, [pc, #0x8035744-0x80356ae-2] // dword_2031000
    bl dword_8111700
    ldr r0, [pc, #0x8035748-0x80356b4-4] // dword_86E789C
    ldr r1, [pc, #0x803574c-0x80356b6-2] // dword_2028000
    bl dword_8111700
    pop {pc}
    .byte 0, 0
    .word 0x86F5DC0
off_80356C4:    .word word_3002A50
off_80356C8:    .word 0x60
off_80356CC:    .word loc_86DAE6C
dword_80356D0:    .word 0x6000020
off_80356D4:    .word 0x2B40
off_80356D8:    .word loc_86ECF98
dword_80356DC:    .word 0x6004000
off_80356E0:    .word 0x1320
off_80356E4:    .word asc_86F151D+0x23
dword_80356E8:    .word 0x6002000
off_80356EC:    .word 0x2A0
    .word 0x86F8840
off_80356F4:    .word unk_3002AB0
off_80356F8:    .word 0x40
    .word dword_869F7C4
off_8035700:    .word unk_3002AD0
dword_8035704:    .word 0x20
off_8035708:    .word dword_868DBA4
dword_803570C:    .word 0x6010400
off_8035710:    .word 0x180
off_8035714:    .word dword_8708D20
dword_8035718:    .word 0x6010600
off_803571C:    .word 0x100
off_8035720:    .word dword_870A060
off_8035724:    .word unk_3002640
dword_8035728:    .word 0x20
off_803572C:    .word dword_868E1E4
off_8035730:    .word unk_30027A0
dword_8035734:    .word 0x20
off_8035738:    .word dword_86EE2B8
off_803573C:    .word dword_202E000
off_8035740:    .word dword_86CEAE0
off_8035744:    .word dword_2031000
off_8035748:    .word dword_86E789C
off_803574C:    .word dword_2028000
    .word 0x870A060
off_8035754:    .word unk_3002820
dword_8035758:    .word 0x20
// end of function sub_8035624

.thumb
sub_803575C:
    push {r7,lr}
    tst r0, r0
    beq loc_8035778
    mov r0, #5
    bl sub_802F628
    ldr r1, [pc, #0x8035798-0x8035768-4] // unk_3002B30
    ldr r2, [pc, #0x803579c-0x803576a-2] // =0xFF
    bl f900_800098C
    mov r0, #0
    bl sub_80357A8
    pop {r7,pc}
loc_8035778:
    mov r0, #5
    bl sub_802F628
    mov r1, #0x20 
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x8035798-0x8035784-4] // unk_3002B30
    ldr r2, [pc, #0x803579c-0x8035786-2] // =0xFF
    bl f900_800098C
    mov r0, #1
    bl sub_80357A8
    pop {r7,pc}
    .word 0x86F64C0
off_8035798:    .word unk_3002B30
off_803579C:    .word 0x100
// end of function sub_803575C

    str r0, [r0,#0x5c]
    lsr r7, r5, #1
    .hword 0xa448 // adr r4, loc_80358C8
    lsl r0, r0, #8
.thumb
sub_80357A8:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
    strb r4, [r5,#0x11]
    strb r4, [r5,#0x12]
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r4, [r1,#0x14]
loc_80357B8:
    ldr r1, [pc, #0x8035874-0x80357b8-4] // dword_8035878
    tst r7, r7
    beq loc_80357C0
    ldr r1, [pc, #0x8035894-0x80357be-2] // dword_8035898
loc_80357C0:
    bl sub_80358B4
    lsl r0, r0, #1
    cmp r0, #0x10
    bne loc_80357D6
    push {r1,r7}
    ldr r7, [pc, #0x8035860-0x80357cc-4] // dword_200A448
    ldr r1, [r7]
    lsl r1, r1, #1
    add r0, r0, r1
    pop {r1,r7}
loc_80357D6:
    ldrh r1, [r1,r0]
    ldr r2, [pc, #0x8035864-0x80357d8-4] // unk_3002B30
    ldr r3, [pc, #0x8035868-0x80357da-2] // dword_803586C
    ldrb r0, [r3,r4]
    lsl r0, r0, #1
    strh r1, [r2,r0]
    add r4, #1
    cmp r4, #4
    blt loc_80357B8
loc_80357E8:
    ldr r1, [pc, #0x8035874-0x80357e8-4] // dword_8035878
    tst r7, r7
    beq loc_80357F0
    ldr r1, [pc, #0x8035894-0x80357ee-2] // dword_8035898
loc_80357F0:
    bl sub_80358B4
    lsl r0, r0, #1
    tst r0, r0
    bne loc_80357FC
    mov r0, #0x10
loc_80357FC:
    cmp r0, #0x10
    bne loc_803580C
    push {r1,r7}
    ldr r7, [pc, #0x8035860-0x8035802-2] // dword_200A448
    ldr r1, [r7]
    lsl r1, r1, #1
    add r0, r0, r1
    pop {r1,r7}
loc_803580C:
    ldrh r1, [r1,r0]
    ldr r2, [pc, #0x8035864-0x803580e-2] // unk_3002B30
    ldr r3, [pc, #0x8035868-0x8035810-4] // dword_803586C
    ldrb r0, [r3,r4]
    lsl r0, r0, #1
    strh r1, [r2,r0]
    add r4, #1
    cmp r4, #6
    blt loc_80357E8
    mov r4, #6
loc_8035820:
    ldr r2, [pc, #0x8035874-0x8035820-4] // dword_8035878
    tst r7, r7
    beq loc_8035828
    ldr r2, [pc, #0x8035894-0x8035826-2] // dword_8035898
loc_8035828:
    push {r7}
    ldr r7, [pc, #0x8035860-0x803582a-2] // dword_200A448
    ldr r1, [r7]
    lsl r1, r1, #1
    add r1, #0x10
    ldrh r1, [r2,r1]
    pop {r7}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#0x14]
    cmp r0, #4
    bgt loc_803584E
    push {r7}
    ldr r7, [pc, #0x8035860-0x8035842-2] // dword_200A448
    ldr r1, [r7]
    lsl r1, r1, #1
    add r1, #0x10
    ldrh r1, [r2,r1]
    pop {r7}
loc_803584E:
    ldr r2, [pc, #0x8035864-0x803584e-2] // unk_3002B30
    ldr r3, [pc, #0x8035868-0x8035850-4] // dword_803586C
    ldrb r0, [r3,r4]
    lsl r0, r0, #1
    strh r1, [r2,r0]
    add r4, #1
    cmp r4, #8
    blt loc_8035820
    pop {r4-r7,pc}
off_8035860:    .word dword_200A448
off_8035864:    .word unk_3002B30
off_8035868:    .word dword_803586C
dword_803586C:    .word 0x7D7C7B7A, 0xD0B0E0C
off_8035874:    .word dword_8035878
dword_8035878:    .word 0x7FFF45AA, 0x13FF72BF, 0x7E8910DF, 0x14A50787, 0x63396339
    .word 0x63396339, 0x6339
off_8035894:    .word dword_8035898
dword_8035898:    .word 0x5EF73104, 0x2F751B7, 0x5D810017, 0x14A50280, 0x46524652
    .word 0x46524652, 0x4652
// end of function sub_80357A8

.thumb
sub_80358B4:
    push {r1,r4,r6,r7,lr}
loc_80358B6:
    ldrb r1, [r5,#0x11]
    cmp r1, #0x19
    bge loc_80358C4
    ldr r0, [pc, #0x80358f0-0x80358bc-4] // unk_201D000
    ldrb r0, [r0,r1]
    cmp r0, #0xff
    bne loc_80358C8
loc_80358C4:
    mov r0, #0
    b locret_80358EC
loc_80358C8:
    mov r4, #1
    lsl r4, r0
    ldrb r6, [r5,#0x12]
    tst r4, r6
    bne loc_80358E6
    add r1, #1
    strb r1, [r5,#0x11]
    orr r6, r4
    strb r6, [r5,#0x12]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r4, [r1,#0x14]
    add r4, #1
    strb r4, [r1,#0x14]
    b locret_80358EC
loc_80358E6:
    add r1, #1
    strb r1, [r5,#0x11]
    b loc_80358B6
locret_80358EC:
    pop {r1,r4,r6,r7,pc}
    .byte 0, 0
off_80358F0:    .word unk_201D000
// end of function sub_80358B4

.thumb
sub_80358F4:
    push {r0,r4-r7,lr}
    ldr r0, [pc, #0x8035904-0x80358f6-2] // unk_2000190
    ldr r1, [pc, #0x8035908-0x80358f8-4] // unk_201D000
    mov r2, #0x20 
    bl f900_800098C
    pop {r0,r4-r7,pc}
    .balign 4, 0x00
off_8035904:    .word unk_2000190
off_8035908:    .word unk_201D000
// end of function sub_80358F4

.thumb
sub_803590C:
    push {r0,r4-r7,lr}
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_803591E
    bl sub_8046C98
    ldrb r0, [r7,#3]
loc_803591E:
    ldr r4, [pc, #0x803597c-0x803591e-2] // unk_201D000
    mov r7, #0
loc_8035922:
    ldrb r6, [r4,r7]
    cmp r6, r0
    beq loc_8035930
    cmp r6, #0xff
    bne loc_8035930
    strb r0, [r4,r7]
    b locret_8035936
loc_8035930:
    add r7, #1
    cmp r7, #0x19
    blt loc_8035922
locret_8035936:
    pop {r0,r4-r7,pc}
// end of function sub_803590C

.thumb
sub_8035938:
    push {r0,r4-r7,lr}
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_803594A
    bl sub_8046C98
    ldrb r0, [r7,#3]
loc_803594A:
    ldr r4, [pc, #0x803597c-0x803594a-2] // unk_201D000
    mov r7, #0x18
loc_803594E:
    ldrb r6, [r4,r7]
    cmp r6, r0
    bne loc_8035974
    add r0, r4, #0
    add r0, r0, r7
    add r1, r0, #0
    add r0, #1
    mov r3, #0x18
    sub r2, r3, r7
    mov r4, #0
loc_8035962:
    ldrb r3, [r0,r4]
    strb r3, [r1,r4]
    add r4, #1
    cmp r4, r2
    blt loc_8035962
    mov r7, #0x18
    mov r0, #0xff
    strb r0, [r4,r7]
    b locret_8035978
loc_8035974:
    sub r7, #1
    bge loc_803594E
locret_8035978:
    pop {r0,r4-r7,pc}
    .balign 4, 0x00
off_803597C:    .word unk_201D000
// end of function sub_8035938

.thumb
sub_8035980:
    push {r0,r4-r7,lr}
    ldr r0, [pc, #0x80359a0-0x8035982-2] // unk_201D000
    ldr r1, [pc, #0x80359a4-0x8035984-4] // unk_201D020
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0,r4-r7,pc}
    .byte 0, 0
// end of function sub_8035980

.thumb
sub_8035990:
    push {r0,r4-r7,lr}
    ldr r0, [pc, #0x80359a4-0x8035992-2] // unk_201D020
    ldr r1, [pc, #0x80359a0-0x8035994-4] // unk_201D000
    mov r2, #0x20 
    bl f900_80009A0
    pop {r0,r4-r7,pc}
    .byte 0, 0
off_80359A0:    .word unk_201D000
off_80359A4:    .word unk_201D020
// end of function sub_8035990

.thumb
sub_80359A8:
    push {lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x80359dc-0x80359b2-2] // dword_86EBFC0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_80359A8

    pop {r5}
    ldr r3, [pc, #0x80359e0-0x80359be-2] // loc_80359E4
    ldrb r0, [r5,#0xd]
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    push {r5}
    mov r0, #1
    mov r1, #2
    mov r2, #1
    mov r4, #0x1c
    mov r5, #0x11
    bl sub_8001DDC
    pop {r5}
    pop {pc}
    .balign 4, 0x00
off_80359DC:    .word dword_86EBFC0
off_80359E0:    .word loc_80359E4
loc_80359E4:
    stmia r4, {r4-r6}
    lsr r6, r5, #1
    ldmia r0!, {r3,r5}
    lsr r6, r5, #1
    ldmia r3!, {r5-r7}
    lsr r6, r5, #1
.thumb
sub_80359F0:
    push {lr}
    ldr r0, [pc, #0x80359fc-0x80359f2-2] // =0x17C
    mov r1, #1
    bl sub_802D3C8
    pop {pc}
off_80359FC:    .word 0x17C
    .word 0xEC
    .word 0x148
    .word 0x14C
    .word 0x164
    .word 0xE4
// end of function sub_80359F0

.thumb
sub_8035A14:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8035ab8-0x8035a16-2] // dword_201A000
    mov r1, #0xbc
    lsl r1, r1, #2
    mov r2, #0
    bl f900_80009B4
    push {r5}
    ldr r5, [pc, #0x8035ab4-0x8035a24-4] // =0x17C
    mov r7, #0xc1
    mov r6, #0
    ldr r4, [pc, #0x8035ab8-0x8035a2a-2] // dword_201A000
loc_8035A2C:
    add r0, r7, #0
    bl sub_802D3F8
    beq loc_8035A74
    push {r4-r7}
    mov r4, #0
    add r6, r7, #0
loc_8035A3A:
    push {r0}
    add r0, r4, #0
    bl sub_8046CA8
    pop {r0}
    ldrb r1, [r7]
    add r1, #0xc0
    cmp r1, r6
    bne loc_8035A4E
    sub r0, #1
loc_8035A4E:
    add r4, #1
    cmp r4, #0x19
    blt loc_8035A3A
    pop {r4-r7}
    tst r0, r0
    beq loc_8035A74
    push {r0,r7}
    add r0, r7, #0
    sub r0, #0xc0
    bl sub_8046C98
    ldrb r1, [r7,#3]
    pop {r0,r7}
    cmp r1, #0
    beq loc_8035A74
    add r3, r4, r6
    strh r7, [r3]
    strh r0, [r3,#2]
    add r6, #4
loc_8035A74:
    add r7, #1
    cmp r7, r5
    ble loc_8035A2C
    pop {r5}
    lsr r6, r6, #2
    strh r6, [r5,#0x2e]
    cmp r6, #4
    blt loc_8035A9E
    ldrh r0, [r5,#0x22]
    sub r6, #4
    cmp r0, r6
    ble locret_8035A9C
    strh r6, [r5,#0x22]
    str r6, [r5,#0x40]
    ldrh r0, [r5,#0x30]
    sub r0, r0, r6
    cmp r0, #4
    ble locret_8035A9C
    strh r0, [r5,#0x30]
    str r0, [r5,#0x44]
locret_8035A9C:
    pop {r4-r7,pc}
loc_8035A9E:
    mov r0, #0
    strh r0, [r5,#0x22]
    str r0, [r5,#0x40]
    sub r6, #1
    strh r6, [r5,#0x30]
    str r6, [r5,#0x44]
    pop {r4-r7,pc}
// end of function sub_8035A14

.thumb
sub_8035AAC:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8035ab8-0x8035aae-2] // dword_201A000
    add r0, r0, r1
    mov pc, lr
off_8035AB4:    .word 0x17C
off_8035AB8:    .word dword_201A000
// end of function sub_8035AAC

.thumb
sub_8035ABC:
    push {r5,lr}
    mov r8, r0
    ldrb r0, [r5,#0xc]
    sub r0, #1
    blt loc_8035ACA
    strb r0, [r5,#0xc]
    pop {r5,pc}
loc_8035ACA:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8035ADC
    bl sub_8035B70
    b loc_8035B56
loc_8035ADC:
    ldrh r1, [r5,#0x2e]
    cmp r1, #0
    beq loc_8035B56
    mov r1, #1
    tst r1, r0
    beq loc_8035AEE
    bl sub_8035B94
    b loc_8035B56
loc_8035AEE:
    mov r1, #4
    tst r1, r0
    beq loc_8035AFA
    bl sub_8035EA0
    b loc_8035B56
loc_8035AFA:
    mov r1, #0x20 
    tst r1, r0
    beq loc_8035B06
    bl sub_8035BF8
    b loc_8035B56
loc_8035B06:
    ldrb r3, [r5,#0xe]
    tst r3, r3
    bne loc_8035B18
    mov r1, #8
    tst r1, r0
    beq loc_8035B18
    bl sub_8035C1C
    b loc_8035B56
loc_8035B18:
    ldrb r3, [r5,#0xe]
    tst r3, r3
    bne loc_8035B56
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x8035b60-0x8035b20-4] // =0x300
    bic r0, r1
    mov r1, #0x40 
    mov r3, #4
    bl sub_8035C3C
    bne loc_8035B52
    mov r1, #0x80
    mov r3, #8
    bl sub_8035C3C
    bne loc_8035B52
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x8035b64-0x8035b3a-2] // =0x30
    bic r0, r1
    ldr r1, [pc, #0x8035b68-0x8035b3e-2] // =0x200
    mov r3, #0xc
    bl sub_8035C3C
    bne loc_8035B52
    ldr r1, [pc, #0x8035b6c-0x8035b48-4] // =0xFF
    mov r3, #0xc
    bl sub_8035C3C
    bne loc_8035B52
loc_8035B52:
    bl sub_8036340
loc_8035B56:
    ldrh r0, [r5,#0x22]
    ldrh r1, [r5,#0x30]
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r5,pc}
off_8035B60:    .word 0x300
off_8035B64:    .word 0x30
off_8035B68:    .word 0x200
off_8035B6C:    .word 0x100
// end of function sub_8035ABC

.thumb
sub_8035B70:
    push {lr}
    mov r0, #0x7f
    bl f500_8000558
    mov r0, #0xa
    bl sub_80540EC
    ldr r0, [pc, #0x8035b90-0x8035b7e-2] // dword_803511C+56
    bl sub_8053FFC
    mov r0, #0xf
    bl sub_80540EC
    mov r0, #0x2c 
    strb r0, [r5,#1]
    pop {pc}
off_8035B90:    .word dword_803511C+0x38
// end of function sub_8035B70

.thumb
sub_8035B94:
    push {lr}
    mov r0, #0x7e 
    bl f500_8000558
    ldrh r0, [r5,#0x22]
    ldrh r1, [r5,#0x30]
    add r0, r0, r1
    bl sub_8035AAC
    ldr r2, [pc, #0x8035bf0-0x8035ba6-2] // =0x17C
    ldrh r1, [r0]
    bl sub_8036418
    bne loc_8035BB6
    bl sub_80540BA
    b loc_8035BD8
loc_8035BB6:
    cmp r1, r2
    beq loc_8035BE0
    ldrh r0, [r0,#2]
    tst r0, r0
    beq loc_8035BD8
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #8
    bl sub_80540EC
    ldr r0, [pc, #0x8035bf4-0x8035bca-2] // dword_803511C+48
    bl sub_8053FFC
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
loc_8035BD8:
    mov r0, #0x69 
    bl f500_8000558
    pop {pc}
loc_8035BE0:
    mov r0, #0x1c
    strb r0, [r5,#1]
    bl sub_8036834
// end of function sub_8035B94

    mov r0, #0x80
    bl f500_8000558
    pop {pc}
off_8035BF0:    .word 0x17C
off_8035BF4:    .word dword_803511C+0x30
.thumb
sub_8035BF8:
    push {lr}
    mov r0, #0x7e 
    bl f500_8000558
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #8
    strb r0, [r5,#0xc]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    bl sub_803637C
    pop {pc}
    .balign 4, 0x00
// end of function sub_8035BF8

.thumb
sub_8035C1C:
    push {lr}
    mov r1, #3
    ldrh r0, [r5,#0x2e]
    sub r0, #4
    bge loc_8035C2A
    add r1, r0, #3
    mov r0, #0
loc_8035C2A:
    strh r0, [r5,#0x22]
    strh r1, [r5,#0x30]
    mov r0, #0xc
    strb r0, [r5,#0xe]
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
    .balign 4, 0x00
// end of function sub_8035C1C

.thumb
sub_8035C3C:
    push {r5,r7,lr}
    tst r0, r1
    beq loc_8035C68
    ldrh r2, [r5,#0x22]
    push {r2,r3}
    mov r1, #4
    mov r2, #0
    bl sub_8036284
    strb r7, [r5,#0xf]
    pop {r2,r3}
    tst r7, r7
    beq loc_8035C64
    mov r0, #0x7d 
    bl f500_8000558
    ldrh r4, [r5,#0x22]
    cmp r2, r4
    beq loc_8035C64
    strb r3, [r5,#0xe]
loc_8035C64:
    mov r1, #1
    pop {r5,r7,pc}
loc_8035C68:
    mov r1, #0
    pop {r5,r7,pc}
// end of function sub_8035C3C

.thumb
sub_8035C6C:
    push {r5,lr}
    mov r8, r0
    ldrb r0, [r5,#0xc]
    sub r0, #1
    blt loc_8035C7A
    strb r0, [r5,#0xc]
    pop {r5,pc}
loc_8035C7A:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8035C8E
    mov r0, #0x7f
    bl sub_8035D50
    b locret_8035D42
loc_8035C8E:
    mov r1, #8
    tst r1, r0
    beq loc_8035C9A
    bl sub_8035E20
    b locret_8035D42
loc_8035C9A:
    mov r1, #1
    tst r1, r0
    beq loc_8035CA6
    bl sub_8035E70
    b locret_8035D42
loc_8035CA6:
    mov r1, #4
    tst r1, r0
    beq loc_8035CB2
    bl sub_8035EA0
    b locret_8035D42
loc_8035CB2:
    ldrb r2, [r5,#0xd]
    ldr r3, [pc, #0x8035d44-0x8035cb4-4] // dword_8035D48
    lsl r2, r2, #1
    add r3, r3, r2
    ldrh r0, [r7,#4]
    mov r1, #0xc0
    tst r0, r1
    beq loc_8035CE4
    ldrb r2, [r3,#1]
    mov r3, #1
    mov r1, #0x40 
    tst r0, r1
    beq loc_8035CCE
    neg r3, r3
loc_8035CCE:
    ldrh r1, [r5,#0x24]
    add r1, r1, r3
    cmp r1, #0
    blt loc_8035CDE
    cmp r1, r2
    blt loc_8035CE0
    ldrh r1, [r5,#0x2a]
    b loc_8035CE0
loc_8035CDE:
    ldrh r1, [r5,#0x2a]
loc_8035CE0:
    strh r1, [r5,#0x24]
    b loc_8035D0E
loc_8035CE4:
    mov r1, #0x30 
    tst r0, r1
    beq loc_8035D0E
    ldrb r2, [r3]
    mov r3, #1
    mov r1, #0x20 
    tst r0, r1
    beq loc_8035CF6
    neg r3, r3
loc_8035CF6:
    ldrh r1, [r5,#0x32]
    add r1, r1, r3
    cmp r1, #0
    blt loc_8035D0A
    cmp r1, r2
    blt loc_8035D0C
    mov r0, #0x7d 
    bl sub_8035D50
    b locret_8035D42
loc_8035D0A:
    ldrh r1, [r5,#0x38]
loc_8035D0C:
    strh r1, [r5,#0x32]
loc_8035D0E:
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x24]
    bl sub_8046E64
    beq loc_8035D24
    sub r0, #1
    add r4, r0, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    b loc_8035D26
loc_8035D24:
    mov r0, #0
loc_8035D26:
    lsr r0, r0, #2
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x2a]
    cmp r0, r1
    bne loc_8035D3C
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x38]
    cmp r0, r1
    bne loc_8035D3C
    b locret_8035D42
loc_8035D3C:
    mov r0, #0x7d 
    bl f500_8000558
locret_8035D42:
    pop {r5,pc}
off_8035D44:    .word dword_8035D48
dword_8035D48:    .word 0x4050404, 0x505
// end of function sub_8035C6C

.thumb
sub_8035D50:
    push {lr}
    bl f500_8000558
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x48]
    bl sub_8046FA4
    bl sub_80363B4
    bl sub_803635C
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #8
    bl sub_80540EC
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    pop {pc}
    .balign 4, 0x00
// end of function sub_8035D50

.thumb
sub_8035D84:
    push {lr}
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x24]
    bl sub_8046E64
    sub r0, #1
    add r4, r0, #0
    bl sub_8046CA8
    bl sub_80471CC
    bl sub_8035980
    ldrb r6, [r7]
    ldrb r0, [r7,#2]
    ldrb r1, [r7,#3]
    strh r0, [r5,#0x32]
    strh r1, [r5,#0x24]
    str r0, [r5,#0x54]
    str r1, [r5,#0x50]
    ldrb r0, [r7,#4]
    str r0, [r5,#0x48]
    bl sub_8046FA4
    add r0, r4, #0
    bl sub_8046EC8
    add r0, r4, #0
    bl sub_8035938
    bl sub_80471B0
    bl sub_8035A14
    add r0, r6, #0
    bl sub_8035DFC
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    mov r0, #8
    bl sub_80540EC
    ldr r0, [pc, #0x8035df8-0x8035dee-2] // dword_803511C+48
    bl sub_8053FFC
    pop {pc}
    .balign 4, 0x00
off_8035DF8:    .word dword_803511C+0x30
// end of function sub_8035D84

.thumb
sub_8035DFC:
    push {r5,lr}
    mov r6, #0
    ldr r4, [pc, #0x8035e1c-0x8035e00-4] // dword_201A000
    add r0, #0xc0
loc_8035E04:
    ldrh r1, [r4]
    cmp r0, r1
    beq loc_8035E16
    add r4, #4
    add r6, #1
    cmp r6, #0xbc
    ble loc_8035E04
    mov r0, #0
    pop {r5,pc}
loc_8035E16:
    add r0, r6, #0
    pop {r5,pc}
    .balign 4, 0x00
off_8035E1C:    .word dword_201A000
// end of function sub_8035DFC

.thumb
sub_8035E20:
    push {lr}
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x48]
    bl sub_8046FA4
    bl sub_80363B4
    bl sub_803635C
    mov r0, #8
    bl sub_80540EC
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    bl sub_8035E50
    pop {pc}
    .byte 0, 0
// end of function sub_8035E20

.thumb
sub_8035E50:
    push {lr}
    mov r1, #3
    ldrh r0, [r5,#0x2e]
    sub r0, #4
    bge loc_8035E5E
    add r1, r0, #3
    mov r0, #0
loc_8035E5E:
    strh r0, [r5,#0x22]
    strh r1, [r5,#0x30]
    mov r0, #0xc
    strb r0, [r5,#0xe]
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
    .byte 0, 0
// end of function sub_8035E50

.thumb
sub_8035E70:
    push {lr}
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x24]
    bl sub_8046E64
    beq loc_8035E94
    mov r0, #0x24 
    strb r0, [r5,#1]
    ldr r0, [pc, #0x8035e9c-0x8035e80-4] // dword_803511C+112
    bl sub_8053FFC
    mov r0, #0
    strh r0, [r5,#0x34]
    strh r0, [r5,#0x3a]
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
loc_8035E94:
    mov r0, #0x69 
    bl f500_8000558
    pop {pc}
off_8035E9C:    .word dword_803511C+0x70
// end of function sub_8035E70

.thumb
sub_8035EA0:
    push {r4,lr}
    mov r4, #0
loc_8035EA4:
    add r0, r4, #0
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    bne loc_8035EB8
    add r4, #1
    cmp r4, #0x19
    blt loc_8035EA4
    b locret_8035EEC
loc_8035EB8:
    mov r0, #0xa
    bl sub_80540EC
    ldr r0, [pc, #0x8035ef0-0x8035ebe-2] // dword_803511C+120
    bl sub_8053FFC
    mov r0, #0xf
    bl sub_80540EC
    ldrb r0, [r5,#1]
    strb r0, [r5,#0x15]
    cmp r0, #4
    bne loc_8035EE2
    ldrh r0, [r5,#0x22]
    ldrh r1, [r5,#0x30]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r1, [r0]
    sub r1, #0xc0
    strh r1, [r5,#0x20]
loc_8035EE2:
    mov r0, #0x30 
    strb r0, [r5,#1]
    mov r0, #0x7f
    bl f500_8000558
locret_8035EEC:
    pop {r4,pc}
    .byte 0, 0
off_8035EF0:    .word dword_803511C+0x78
// end of function sub_8035EA0

.thumb
sub_8035EF4:
    push {r5,lr}
    mov r8, r0
    ldrb r0, [r5,#0xc]
    sub r0, #1
    blt loc_8035F02
    strb r0, [r5,#0xc]
    pop {r5,pc}
loc_8035F02:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8035F14
    bl sub_8036018
    b locret_8036002
loc_8035F14:
    ldrh r1, [r5,#0x2e]
    cmp r1, #0
    beq locret_8036002
    mov r1, #1
    tst r1, r0
    beq loc_8035F26
    bl sub_8036060
    b locret_8036002
loc_8035F26:
    ldrh r0, [r7,#4]
    bl sub_803612C
    beq loc_8035F72
    ldr r1, [pc, #0x8036004-0x8035f2e-2] // =0x200
    tst r1, r0
    beq loc_8035F50
    bl sub_8046FAA
    sub r0, #1
    mov r1, #3
    and r0, r1
    bl sub_8046FA4
    str r0, [r5,#0x48]
    bl sub_8036198
    mov r0, #0x7d 
    bl f500_8000558
    b locret_8036002
loc_8035F50:
    ldr r1, [pc, #0x8036008-0x8035f50-4] // =0xFF
    tst r1, r0
    beq loc_8035F72
    bl sub_8046FAA
    add r0, #1
    mov r1, #3
    and r0, r1
    bl sub_8046FA4
    str r0, [r5,#0x48]
    bl sub_8036198
    mov r0, #0x7d 
    bl f500_8000558
    b locret_8036002
loc_8035F72:
    ldrb r2, [r5,#0xd]
    ldr r3, [pc, #0x803600c-0x8035f74-4] // dword_8036010
    lsl r2, r2, #1
    add r3, r3, r2
    mov r1, #0xc0
    tst r0, r1
    beq loc_8035FAA
    ldrb r2, [r3,#1]
    bl sub_8036170
    cmp r2, r4
    beq loc_8035FD8
    mov r3, #1
    mov r1, #0x40 
    tst r0, r1
    beq loc_8035F94
    neg r3, r3
loc_8035F94:
    ldrh r1, [r5,#0x24]
    add r1, r1, r3
    cmp r1, r4
    blt loc_8035FA4
    cmp r1, r2
    blt loc_8035FA6
    ldrh r1, [r5,#0x2a]
    b loc_8035FA6
loc_8035FA4:
    ldrh r1, [r5,#0x2a]
loc_8035FA6:
    strh r1, [r5,#0x24]
    b loc_8035FD8
loc_8035FAA:
    mov r1, #0x30 
    tst r0, r1
    beq loc_8035FD8
    ldrb r2, [r3]
    bl sub_803614C
    cmp r2, r4
    beq loc_8035FD8
    mov r3, #1
    mov r1, #0x20 
    tst r0, r1
    beq loc_8035FC4
    neg r3, r3
loc_8035FC4:
    ldrh r1, [r5,#0x32]
    add r1, r1, r3
    cmp r1, r4
    blt loc_8035FD4
    cmp r1, r2
    blt loc_8035FD6
    ldrh r1, [r5,#0x38]
    b loc_8035FD6
loc_8035FD4:
    ldrh r1, [r5,#0x38]
loc_8035FD6:
    strh r1, [r5,#0x32]
loc_8035FD8:
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r0, [r0]
    sub r0, #0xc0
    lsr r0, r0, #2
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x2a]
    cmp r0, r1
    bne loc_8035FFC
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x38]
    cmp r0, r1
    bne loc_8035FFC
    pop {r5,pc}
loc_8035FFC:
    mov r0, #0x7d 
    bl f500_8000558
locret_8036002:
    pop {r5,pc}
off_8036004:    .word 0x200
off_8036008:    .word 0x100
off_803600C:    .word dword_8036010
dword_8036010:    .word 0x4050404, 0x505
// end of function sub_8035EF4

.thumb
sub_8036018:
    push {lr}
    ldrb r0, [r5,#0x10]
    tst r0, r0
    beq loc_8036034
    mov r0, #0x20 
    strb r0, [r5,#1]
    ldr r0, [r5,#0x50]
    ldr r1, [r5,#0x54]
    strh r0, [r5,#0x24]
    strh r1, [r5,#0x32]
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
loc_8036034:
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x48]
    bl sub_8046FA4
    bl sub_803635C
    mov r0, #8
    bl sub_80540EC
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    mov r0, #0x7f
    bl f500_8000558
    pop {pc}
    .byte 0, 0
// end of function sub_8036018

.thumb
sub_8036060:
    push {lr}
    bl sub_80360C8
    bne loc_80360C0
    bl sub_80360F8
    ldrb r0, [r5,#0x10]
    tst r0, r0
    bne loc_80360A0
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x48]
    bl sub_8046FA4
    bl sub_803635C
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #8
    bl sub_80540EC
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    mov r0, #0x7e 
    bl f500_8000558
    pop {pc}
loc_80360A0:
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0x7e 
    bl f500_8000558
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    pop {pc}
loc_80360C0:
    mov r0, #0x69 
    bl f500_8000558
    pop {pc}
// end of function sub_8036060

.thumb
sub_80360C8:
    push {r4-r7,lr}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r1, [r0,#2]
    tst r1, r1
    beq loc_80360F2
    ldrh r0, [r0]
    sub r0, #0xc0
    add r7, r0, #0
    ldr r1, [r5,#0x3c]
    ldrh r2, [r5,#0x32]
    ldrh r3, [r5,#0x24]
    bl sub_80470A8
    add r1, r0, #0
    add r0, r7, #0
    tst r1, r1
    pop {r4-r7,pc}
loc_80360F2:
    mov r1, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_80360C8

.thumb
sub_80360F8:
    push {r4-r7,lr}
    add r7, r0, #0
    ldrh r1, [r5,#0x32]
    ldrh r2, [r5,#0x24]
    ldr r3, [r5,#0x48]
    mov r4, #0
    bl sub_8047180
    bl sub_803590C
    add r1, r7, #0
    ldrh r2, [r5,#0x32]
    ldrh r3, [r5,#0x24]
    bl sub_8046E74
    bl sub_8035A14
    mov r0, #0x10
    strb r0, [r5,#0xe]
    mov r0, #0xc
    strb r0, [r5,#1]
    ldrh r0, [r5,#0x22]
    ldrh r1, [r5,#0x30]
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r4-r7,pc}
// end of function sub_80360F8

.thumb
sub_803612C:
    push {r0,lr}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046C98
    ldrb r0, [r7,#3]
    add r0, #0x7f
    bl sub_802D3F8
    tst r0, r0
    pop {r0,pc}
// end of function sub_803612C

.thumb
sub_803614C:
    push {r0,r1,r3,r5-r7,lr}
    push {r2}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046FB4
    pop {r2}
    sub r2, #4
    mov r4, #2
    sub r4, r4, r0
    add r1, #2
    add r2, r2, r1
    pop {r0,r1,r3,r5-r7,pc}
// end of function sub_803614C

.thumb
sub_8036170:
    push {r0,r1,r3,r5-r7,lr}
    push {r2}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046FB4
    add r0, r2, #0
    add r1, r3, #0
    pop {r2}
    sub r2, #4
    mov r4, #2
    sub r4, r4, r0
    add r1, #2
    add r2, r2, r1
    pop {r0,r1,r3,r5-r7,pc}
// end of function sub_8036170

.thumb
sub_8036198:
    push {r0,r1,r3,r5-r7,lr}
    ldr r0, [r5,#0x40]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    bl sub_8035AAC
    ldrh r0, [r0]
    sub r0, #0xc0
    bl sub_8046FB4
    ldrb r6, [r5,#0xd]
    ldr r4, [pc, #0x80361fc-0x80361ae-2] // dword_8036200
    lsl r6, r6, #1
    add r4, r4, r6
    mov r8, r4
    ldrb r7, [r4,#1]
    sub r7, #1
    ldrh r6, [r5,#0x24]
    sub r2, #2
    neg r2, r2
    cmp r6, r2
    bge loc_80361C6
    add r6, r2, #0
loc_80361C6:
    strh r6, [r5,#0x24]
    sub r3, #2
    neg r3, r3
    sub r4, r7, r3
    cmp r6, r4
    ble loc_80361D4
    add r6, r4, #0
loc_80361D4:
    strh r6, [r5,#0x24]
    mov r4, r8
    ldrb r7, [r4]
    sub r7, #1
    ldrh r6, [r5,#0x32]
    sub r0, #2
    neg r0, r0
    cmp r6, r0
    bge loc_80361E8
    add r6, r0, #0
loc_80361E8:
    strh r6, [r5,#0x32]
    sub r1, #2
    neg r1, r1
    sub r4, r7, r1
    cmp r6, r4
    ble loc_80361F6
    add r6, r4, #0
loc_80361F6:
    strh r6, [r5,#0x32]
    pop {r0,r1,r3,r5-r7,pc}
    .balign 4, 0x00
off_80361FC:    .word dword_8036200
dword_8036200:    .word 0x4050404, 0x505
// end of function sub_8036198

.thumb
sub_8036208:
    push {r5,lr}
    mov r8, r0
    ldrb r0, [r5,#0xc]
    sub r0, #1
    blt loc_8036216
    strb r0, [r5,#0xc]
    pop {r5,pc}
loc_8036216:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8036238
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #7
    bl sub_80540EC
    mov r0, #0xff
    strh r0, [r5,#0x34]
    mov r0, #0x7f
    bl f500_8000558
    b locret_8036280
loc_8036238:
    mov r1, #1
    tst r1, r0
    beq loc_803624C
    mov r0, #7
    bl sub_80540EC
    mov r0, #0x7e 
    bl f500_8000558
    b locret_8036280
loc_803624C:
    ldrh r0, [r7,#4]
    mov r1, #0xc0
    tst r0, r1
    beq locret_8036280
    mov r3, #1
    mov r1, #0x40 
    tst r0, r1
    beq loc_803625E
    neg r3, r3
loc_803625E:
    ldrh r1, [r5,#0x34]
    add r1, r1, r3
    cmp r1, #0
    blt loc_803626E
    cmp r1, #2
    blt loc_8036270
    mov r1, #0
    b loc_8036270
loc_803626E:
    mov r1, #1
loc_8036270:
    strh r1, [r5,#0x34]
    ldrh r0, [r5,#0x3a]
    cmp r0, r1
    beq locret_8036280
    mov r0, #0x7d 
    bl f500_8000558
    b locret_8036280
locret_8036280:
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_8036208

.thumb
sub_8036284:
    push {r5,lr}
    mov r12, r2
    sub r1, #1
    mov r9, r1
    mov r6, #0x2e 
    add r6, r8
    ldrh r6, [r5,r6]
    sub r6, #1
    mov r2, #0x30 
    add r2, r8
    ldrh r2, [r5,r2]
    mov r3, #0x22 
    add r3, r8
    ldrh r3, [r5,r3]
    mov r4, r9
    add r4, #1
    ldr r1, [pc, #0x8036434-0x80362a4-4] // =0x200
    tst r1, r0
    bne loc_80362CA
    mov r4, #1
    mov r1, #0x40 
    tst r1, r0
    beq loc_80362D2
    sub r2, r2, r4
    bge loc_80362D2
    mov r2, #0
    mov r7, r12
    cmp r7, #0
    beq loc_80362CA
    cmp r3, #0
    bne loc_80362CA
    mov r2, r9
    mov r3, r9
    sub r3, r6, r3
    add r3, #1
loc_80362CA:
    sub r3, r3, r4
    bgt loc_8036316
    mov r3, #0
    b loc_8036316
loc_80362D2:
    mov r4, r9
    add r4, #1
    ldr r1, [pc, #0x8036438-0x80362d6-2] // =0xFF
    tst r1, r0
    bne loc_80362F2
    mov r4, #1
    mov r1, #0x80
    tst r1, r0
    beq loc_8036316
    cmp r6, r9
    blt loc_80362EA
    mov r6, r9
loc_80362EA:
    add r2, r2, r4
    cmp r2, r6
    ble loc_8036316
    add r2, r6, #0
loc_80362F2:
    cmp r6, r9
    blt loc_8036316
    mov r6, #0x2e 
    add r6, r8
    ldrh r6, [r5,r6]
    mov r0, r9
    sub r6, r6, r0
    sub r6, #1
    add r3, r3, r4
    cmp r3, r6
    ble loc_8036316
    add r3, r6, #0
    mov r7, r12
    cmp r7, #0
    beq loc_8036316
    mov r2, #0
    mov r3, #0
    b loc_8036316
loc_8036316:
    mov r4, #0x30 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r2, r4
    bne loc_803632E
    mov r4, #0x22 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r3, r4
    bne loc_803632E
    mov r7, #0
    b loc_8036330
loc_803632E:
    mov r7, #0xff
loc_8036330:
    mov r0, #0x30 
    add r0, r8
    strh r2, [r5,r0]
    mov r0, #0x22 
    add r0, r8
    strh r3, [r5,r0]
    pop {r5,pc}
    .byte 0, 0
// end of function sub_8036284

.thumb
sub_8036340:
    push {lr}
    ldrh r0, [r5,#0x22]
    ldrh r1, [r5,#0x30]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x8036358-0x803634a-2] // dword_201A000
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0xc0
    lsr r0, r0, #2
    str r0, [r5,#0x4c]
    pop {pc}
off_8036358:    .word dword_201A000
// end of function sub_8036340

.thumb
sub_803635C:
    push {r4,lr}
    ldr r4, [pc, #0x8036370-0x803635e-2] // dword_8036374
    ldrb r0, [r5,#0xd]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrb r0, [r4]
    strh r0, [r5,#0x32]
    ldrb r0, [r4,#1]
    strh r0, [r5,#0x24]
    pop {r4,pc}
off_8036370:    .word dword_8036374
dword_8036374:    .word 0x2020202, 0x202
// end of function sub_803635C

.thumb
sub_803637C:
    push {r4,lr}
    ldr r4, [pc, #0x8036398-0x803637e-2] // unk_803639C
    ldrb r0, [r5,#0xd]
    lsl r0, r0, #3
    add r4, r4, r0
    ldrh r0, [r5,#0x30]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrb r0, [r4]
    strh r0, [r5,#0x32]
    ldrb r0, [r4,#1]
    strh r0, [r5,#0x24]
    pop {r4,pc}
    .balign 4, 0x00
off_8036398:    .word unk_803639C
unk_803639C:    .byte 3
    .byte 0
    .byte 3
    .byte 0
    .byte 3
    .byte 0
    .byte 3
    .byte 1
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .byte 4
    .byte 1
    .byte 4
    .byte 2
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .hword 0x104
// end of function sub_803637C

    lsl r4, r0, #8
.thumb
sub_80363B4:
    push {lr}
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x2e]
    ldr r4, [pc, #0x80363d8-0x80363ba-2] // dword_80363DC
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #3
    add r4, r4, r2
    ldrb r0, [r4,r0]
    cmp r0, #4
    blt loc_80363CA
    mov r0, #3
loc_80363CA:
    cmp r0, r1
    blt loc_80363D2
    add r0, r1, #0
    sub r0, #1
loc_80363D2:
    strh r0, [r5,#0x30]
    pop {pc}
    .balign 4, 0x00
off_80363D8:    .word dword_80363DC
dword_80363DC:    .word 0x3030302, 0xFFFFFFFF, 0x3030201, 0xFFFFFFFF, 0x3030201
    .word 0xFFFFFF03
// end of function sub_80363B4

.thumb
sub_80363F4:
    push {lr}
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #0x10
    and r1, r2
    lsr r2, r1, #4
    ldrh r0, [r5,#0x32]
    ldrh r1, [r5,#0x24]
    bl sub_8046D98
    pop {pc}
// end of function sub_80363F4

.thumb
sub_8036418:
    push {r0-r2,r6,r7,lr}
    add r6, r1, #0
    add r0, r1, #0
    sub r0, #0xc0
    bl sub_8046C98
    lsr r6, r6, #2
    lsl r0, r6, #2
    ldrb r1, [r7,#3]
    bl sub_802D62C
    tst r0, r0
    pop {r0-r2,r6,r7,pc}
    .balign 4, 0x00
off_8036434:    .word 0x200
off_8036438:    .word 0x100
// end of function sub_8036418

.thumb
ho_803643C:
    push {lr}
    ldr r0, [pc, #0x803644c-0x803643e-2] // jt_8036450
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    mov r0, #0
// end of function ho_803643C

    pop {pc}
off_803644C:    .word jt_8036450
jt_8036450:    .word sub_8036490+1
    .word sub_8036490+1
    .word sub_8036490+1
    .word sub_8036490+1
    .word sub_8036490+1
    .word sub_8036518+1
    .word sub_803656C+1
    .word sub_80365F8+1
    .word sub_8036664+1
    .word sub_80366A0+1
    .word sub_80366FC+1
    .word sub_8036740+1
    .word sub_8036770+1
    .word sub_803679C+1
    .word sub_80367C4+1
    .word sub_8036804+1
.thumb
sub_8036490:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0x14
    blt loc_80364E8
    ldrb r0, [r5,#2]
    add r2, r0, #0
    add r0, #4
    strb r0, [r5,#2]
    mov r1, #0
    strb r1, [r5,#0xc]
    ldr r3, [pc, #0x8036504-0x80364a8-4] // dword_8036508
    ldrb r0, [r5,#0xd]
    mov r1, #5
    mul r0, r1
    add r3, r3, r0
    lsr r2, r2, #2
    ldrb r1, [r3,r2]
    tst r1, r1
    bne loc_80364E8
    ldrb r0, [r5,#2]
    sub r0, #4
    lsr r0, r0, #2
    mov r1, #2
    bl sub_8046E64
    beq loc_80364D6
    sub r0, #1
    bl sub_8046CA8
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80364E8
    b loc_80364D8
loc_80364D6:
    mov r0, #0
loc_80364D8:
    lsr r0, r0, #2
    str r0, [r5,#0x4c]
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x8036500-0x80364e2-2] // dword_803511C+72
    bl sub_8053FFC
loc_80364E8:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_803692C
    mov r0, #0
    pop {pc}
    .byte 0, 0
off_8036500:    .word dword_803511C+0x48
off_8036504:    .word dword_8036508
dword_8036508:    .word 0x0
    .word 0x1, 0x0, 0x0
// end of function sub_8036490

.thumb
sub_8036518:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0x10
    blt loc_8036548
    push {r5}
    ldr r1, [pc, #0x8036564-0x8036526-2] // byte_8036568
    ldrb r0, [r5,#0xd]
    ldrb r1, [r1,r0]
    mov r0, #0
    mov r2, #3
    ldr r3, [pc, #0x8036560-0x8036530-4] // dword_86F0410
    mov r4, #0x20 
    mov r5, #3
    bl sub_8001DDC
    pop {r5}
    mov r0, #0x18
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#0xc]
    bl sub_8047240
loc_8036548:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_803692C
    mov r0, #0
    pop {pc}
    .byte 0, 0
off_8036560:    .word dword_86F0410
off_8036564:    .word byte_8036568
byte_8036568:    .byte 0xB
    .hword 0xA0B
    .byte 0
// end of function sub_8036518

.thumb
sub_803656C:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0x50 
    blt loc_80365D4
    bl sub_8036BD4
    bl sub_8042ECC
    mov r0, #0xc
    mov r1, #0x49 
    bl sub_8024FB8
    bl loc_804187C
    mov r0, #0
    mov r1, #0x2c 
    bl sub_8024FF0
    bne loc_803659A
    bl sub_8042EF0
loc_803659A:
    bl loc_804299C
    bl sub_8041D58
    mov r0, #0
    mov r1, #0x2c 
    bl sub_8024FF0
    beq loc_80365B0
    bl sub_8035044
loc_80365B0:
    mov r0, #0x66 
    str r0, [r5,#0x4c]
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x80365ec-0x80365ba-2] // dword_803511C+80
    bl sub_8053FFC
    mov r0, #0x28 
    strb r0, [r5,#2]
    mov r0, #0x74 
    bl f500_8000558
    ldr r0, [pc, #0x80365f0-0x80365ca-2] // unk_201D000
    ldr r1, [pc, #0x80365f4-0x80365cc-4] // unk_2000190
    mov r2, #0x20 
    bl f900_800098C
loc_80365D4:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #2
    bl sub_803692C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_80365EC:    .word dword_803511C+0x50
off_80365F0:    .word unk_201D000
off_80365F4:    .word unk_2000190
// end of function sub_803656C

.thumb
sub_80365F8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x20]
    ldrb r1, [r5,#0xc]
    lsr r1, r1, #2
    strb r1, [r0,#2]
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0
    bge loc_803664C
    mov r0, #0x20 
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, r10
    ldr r0, [r0,#0x20]
    mov r1, #0
    strb r1, [r0]
    strb r1, [r0,#2]
    strb r1, [r0,#3]
    strb r1, [r0,#1]
    mov r0, #0xb
    bl sub_80540EC
    mov r0, #0xf
    bl sub_80540EC
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
loc_803664C:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #3
    bl sub_803692C
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
// end of function sub_80365F8

.thumb
sub_8036664:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0x20 
    blt loc_803668A
    ldrb r0, [r5]
    cmp r0, #0x28 
    beq loc_8036682
    mov r0, #0xa
    bl sub_80540EC
    ldr r0, [pc, #0x803669c-0x803667c-4] // dword_803511C+96
    bl sub_8053FFC
loc_8036682:
    mov r0, #0x24 
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#0xc]
loc_803668A:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_803669C:    .word dword_803511C+0x60
// end of function sub_8036664

.thumb
sub_80366A0:
    push {lr}
    ldrb r0, [r5]
    cmp r0, #0x28 
    beq loc_80366C4
    mov r0, #0xa
    bl sub_805411A
    bne loc_80366E8
    bl sub_80539B0
    cmp r0, #0
    beq loc_80366C4
    bl sub_80359A8
    mov r0, #1
    bl sub_803698C
    b loc_80366E8
loc_80366C4:
    bl sub_80359A8
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl sub_8005ADC
    push {r5}
    mov r0, #0x11
    mov r1, #0xb
    mov r2, #2
    ldr r3, [pc, #0x80366f8-0x80366dc-4] // dword_86F17E0
    mov r4, #0xc
    mov r5, #9
    bl sub_8001DDC
    pop {r5}
loc_80366E8:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #0
    pop {pc}
off_80366F8:    .word dword_86F17E0
// end of function sub_80366A0

.thumb
sub_80366FC:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #3
    tst r1, r0
    beq loc_8036714
    mov r0, #0x1c
    strb r0, [r5,#2]
    mov r0, #0x30 
    strb r0, [r5,#0xc]
    b loc_803671A
loc_8036714:
    mov r1, #4
    tst r1, r0
    beq loc_803671A
loc_803671A:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_8036964
// end of function sub_80366FC

    mov r0, #0xd6
    mov r1, #0x8a
    ldrb r2, [r5,#0x14]
    mov r3, #0
    bl sub_80369D8
    strb r2, [r5,#0x14]
    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_8036740:
    push {lr}
    ldr r0, [r5,#0x60]
    add r0, #1
    str r0, [r5,#0x60]
    cmp r0, #4
    blt loc_8036756
    mov r0, #0x30 
    strb r0, [r5,#2]
    ldr r0, [pc, #0x803676c-0x8036750-4] // dword_803511C+104
    bl sub_8053FFC
loc_8036756:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_8036964
// end of function sub_8036740

    mov r0, #0
    pop {pc}
off_803676C:    .word dword_803511C+0x68
.thumb
sub_8036770:
    push {lr}
    ldrh r0, [r5,#0x34]
    strh r0, [r5,#0x3a]
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x2c]
    mov r0, #0x1e
    mov r1, #0
    bl sub_8036A54
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_8036964
// end of function sub_8036770

    bl sub_8036B4C
    mov r0, #0
    pop {pc}
.thumb
sub_803679C:
    push {lr}
    ldr r0, [r5,#0x60]
    sub r0, #1
    str r0, [r5,#0x60]
    cmp r0, #0
    bgt loc_80367AC
    mov r0, #0x28 
    strb r0, [r5,#2]
loc_80367AC:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #1
    bl sub_8036964
// end of function sub_803679C

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_80367C4:
    push {lr}
    ldr r0, [r5,#0x60]
    sub r0, #1
    str r0, [r5,#0x60]
    cmp r0, #0
    bgt loc_80367E8
    mov r0, #0x3c 
    strb r0, [r5,#2]
    mov r0, #0x30 
    strb r0, [r5,#0xc]
    mov r0, #0x66 
    str r0, [r5,#0x4c]
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x8036800-0x80367e2-2] // dword_803511C+80
    bl sub_8053FFC
loc_80367E8:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #2
    bl sub_8036964
// end of function sub_80367C4

    mov r0, #0
    pop {pc}
    .byte 0, 0
off_8036800:    .word dword_803511C+0x50
.thumb
sub_8036804:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #0
    bgt loc_803681C
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0x1c
    strb r0, [r5,#2]
    mov r0, #0x30 
    strb r0, [r5,#0xc]
loc_803681C:
    bl sub_8054018
    bl sub_8054054
    mov r3, #0
    strb r3, [r5,#0xf]
    mov r0, #2
    bl sub_8036964
// end of function sub_8036804

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8036834:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #8
    strb r0, [r5,#0xc]
    mov r0, #0x65 
    str r0, [r5,#0x4c]
    mov r0, #0
    mvn r0, r0
    str r0, [r5,#0x58]
    bl sub_803690C
    mov r7, r10
    ldr r0, [r7,#8]
    mov r1, #0xe8
    strh r1, [r0,#0x18]
    mov r1, #0
    strh r1, [r0,#0x1a]
    mov r0, #0xb
    bl sub_80540EC
    ldr r0, [pc, #0x80368d0-0x803685e-2] // dword_803511C+64
    bl sub_8053FFC
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x80368d4-0x803686a-2] // dword_803511C+80
    bl sub_8053FFC
    mov r0, r10
    ldr r0, [r0,#0x20]
    mov r1, #0x48 
    strb r1, [r0]
    mov r1, #0xc
    strb r1, [r0,#2]
    mov r1, #0x10
    strb r1, [r0,#3]
    mov r1, #0x37 
    strb r1, [r0,#1]
    mov r0, #1
    bl sub_803575C
    mov r0, #1
    bl sub_8046CD8
    ldr r0, [pc, #0x80368d8-0x8036890-4] // dword_86F00B0
    ldr r1, [pc, #0x80368dc-0x8036892-2] // =0x6008020
    ldr r2, [pc, #0x80368e0-0x8036894-4] // =0x260
    bl loc_8000870
    ldr r0, [pc, #0x80368e4-0x803689a-2] // dword_86F0310
    ldr r1, [pc, #0x80368e8-0x803689c-4] // unk_3002AB0
    mov r2, #0x20 
    bl f900_800098C
    ldr r0, [pc, #0x80368ec-0x80368a4-4] // dword_86F04D0
    ldr r1, [pc, #0x80368f0-0x80368a6-2] // =0x6008420
    ldr r2, [pc, #0x80368f4-0x80368a8-4] // =0xB80
    bl loc_8000870
    ldr r0, [pc, #0x80368f8-0x80368ae-2] // dword_86F1050
    ldr r1, [pc, #0x80368fc-0x80368b0-4] // unk_3002A90
    mov r2, #0x20 
    bl f900_800098C
    ldr r1, [pc, #0x8036904-0x80368b8-4] // byte_8036908
    ldrb r0, [r5,#0xd]
    ldrb r1, [r1,r0]
    mov r0, #0
    mov r2, #3
    ldr r3, [pc, #0x8036900-0x80368c2-2] // dword_86F0350
    mov r4, #0x20 
    mov r5, #3
    bl sub_8001DDC
// end of function sub_8036834

    pop {r4-r7,pc}
    .byte 0, 0
off_80368D0:    .word dword_803511C+0x40
off_80368D4:    .word dword_803511C+0x50
off_80368D8:    .word dword_86F00B0
dword_80368DC:    .word 0x6008020
off_80368E0:    .word 0x260
off_80368E4:    .word dword_86F0310
off_80368E8:    .word unk_3002AB0
off_80368EC:    .word dword_86F04D0
dword_80368F0:    .word 0x6008420
off_80368F4:    .word 0xB80
off_80368F8:    .word dword_86F1050
off_80368FC:    .word unk_3002A90
off_8036900:    .word dword_86F0350
off_8036904:    .word byte_8036908
byte_8036908:    .byte 0xB
    .hword 0xA0B
    .byte 0
.thumb
sub_803690C:
    push {r4-r7,lr}
    add r0, r5, #0
    add r0, #0x16
    mov r1, #0xa
    mov r2, #0xff
    bl f900_80009B4
    mov r0, #0
    strh r0, [r5,#0x34]
    strh r0, [r5,#0x26]
    strh r0, [r5,#0x3a]
    strh r0, [r5,#0x2c]
    str r0, [r5,#0x5c]
    str r0, [r5,#0x60]
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_803690C

.thumb
sub_803692C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#8]
    ldrh r1, [r7,#0x18]
    sub r1, r1, r0
    strh r1, [r7,#0x18]
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #8
    and r1, r2
    lsr r7, r1, #3
    mov r6, #0
    ldrb r4, [r5,#2]
    lsr r4, r4, #2
    cmp r4, #5
    blt loc_8036950
    mov r4, #5
loc_8036950:
    add r0, r6, #0
    mov r1, #2
    add r2, r7, #0
    bl sub_8046D98
    add r6, #1
    cmp r6, r4
    blt loc_8036950
    pop {pc}
    .balign 4, 0x00
// end of function sub_803692C

.thumb
sub_8036964:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#8]
    ldrh r1, [r7,#0x18]
    sub r1, r1, r0
    strh r1, [r7,#0x18]
    mov r1, #0x14
    ldr r0, [r5,#0x60]
    sub r1, r1, r0
    mov r0, #0
    mov r2, #0
    ldr r3, [pc, #0x8036988-0x803697a-2] // dword_86F1070
    mov r4, #0x1e
    mov r5, #4
    bl sub_8001DDC
// end of function sub_8036964

    pop {r4-r7,pc}
    .balign 4, 0x00
off_8036988:    .word dword_86F1070
.thumb
sub_803698C:
    push {r4-r7,lr}
    push {r0}
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0xf
    bl sub_80540EC
    ldr r0, [pc, #0x80369cc-0x803699a-2] // dword_803511C+88
    bl sub_8053FFC
    mov r0, #0
    bl sub_803575C
    mov r0, #0
    bl sub_8046CD8
    mov r0, #0x13
    bl sub_802F628
    ldr r1, [pc, #0x80369d4-0x80369b2-2] // unk_3002AB0
    mov r2, #0x20 
    bl f900_800098C
    bl sub_8036340
    pop {r0}
    tst r0, r0
    beq locret_80369C8
    bl sub_8046CB4
locret_80369C8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80369CC:    .word dword_803511C+0x58
    .word 0x86F8840
off_80369D4:    .word unk_3002AB0
// end of function sub_803698C

.thumb
sub_80369D8:
    push {lr}
    ldr r4, [pc, #0x8036a28-0x80369da-2] // loc_8036A2C
    tst r3, r3
    beq loc_80369EC
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #2
    tst r6, r7
    beq locret_8036A22
loc_80369EC:
    lsl r0, r0, #0x10
    orr r0, r1
    add r3, r4, #0
    lsl r4, r2, #1
    add r2, #1
    ldrh r1, [r3,r4]
    cmp r1, #0
    bne loc_8036A00
    mov r2, #1
    ldrh r1, [r3]
loc_8036A00:
    push {r0-r3}
    mov r0, #0x80
    bl sub_80539A0
    pop {r0-r3}
    bne locret_8036A22
    push {r2}
    ldr r2, [pc, #0x8036a24-0x8036a0e-2] // =0x40000000
    orr r0, r2
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
    pop {r2}
locret_8036A22:
    pop {pc}
dword_8036A24:    .word 0x40000000
off_8036A28:    .word loc_8036A2C
// end of function sub_80369D8

loc_8036A2C:
    b loc_8036A70
    b loc_8036A72
    b loc_8036A74
    .hword 0xE020
    b loc_8036A78
    b loc_8036A7A
    b loc_8036A84
    b loc_8036A86
    b loc_8036A88
    b loc_8036A8A
    b loc_8036A8C
    b loc_8036A8E
    b loc_8036A98
    b loc_8036A9A
    b loc_8036A9C
    b loc_8036A9E
    b loc_8036AA0
    b loc_8036AA2
    .word 0x0
.thumb
sub_8036A54:
    push {r5,lr}
    lsl r1, r1, #3
    ldr r2, [pc, #0x8036b40-0x8036a58-4] // dword_8036B44
    add r1, r1, r2
    mov r9, r1
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #4
    tst r1, r0
    beq loc_8036A7A
loc_8036A6C:
    mov r0, r9
    ldrb r0, [r0]
loc_8036A70:
    strb r0, [r5,#2]
loc_8036A72:
    mov r0, #0xc
loc_8036A74:
    bl sub_80540EC
loc_8036A78:
    b locret_8036B3E
loc_8036A7A:
    mov r1, #8
    tst r1, r0
    beq loc_8036A8A
    mov r0, #0xe
    strh r0, [r5,#0x34]
loc_8036A84:
    mov r0, #1
loc_8036A86:
    strh r0, [r5,#0x26]
loc_8036A88:
    b locret_8036B3E
loc_8036A8A:
    mov r1, #1
loc_8036A8C:
    tst r1, r0
loc_8036A8E:
    beq loc_8036AD4
    ldrh r0, [r5,#0x26]
    mov r1, #0xf
    mul r0, r1
    ldrh r1, [r5,#0x34]
loc_8036A98:
    add r0, r0, r1
loc_8036A9A:
    cmp r0, #0x1d
loc_8036A9C:
    beq loc_8036AB2
loc_8036A9E:
    ldr r4, [r5,#0x5c]
loc_8036AA0:
    cmp r4, #8
loc_8036AA2:
    bge loc_8036AB0
    add r7, r5, #0
    add r7, #0x16
    strb r0, [r7,r4]
    add r4, #1
    str r4, [r5,#0x5c]
    b locret_8036B3E
loc_8036AB0:
    b locret_8036B3E
loc_8036AB2:
    ldr r0, [r5,#0x4c]
    add r1, r5, #0
    add r1, #0x16
    mov r2, r9
    ldr r2, [r2,#4]
    mov lr, pc
    bx r2
    tst r0, r0
    beq loc_8036AC6
    b locret_8036B3E
loc_8036AC6:
    mov r0, r9
    ldrb r0, [r0,#1]
    strb r0, [r5,#2]
    mov r0, #0xc
    bl sub_80540EC
    b locret_8036B3E
loc_8036AD4:
    mov r1, #2
    tst r1, r0
    beq loc_8036AEE
    ldr r4, [r5,#0x5c]
    cmp r4, #0
    beq loc_8036A6C
    sub r4, #1
    str r4, [r5,#0x5c]
    add r7, r5, #0
    add r7, #0x16
    mov r0, #0xff
    strb r0, [r7,r4]
    b locret_8036B3E
loc_8036AEE:
    ldrh r0, [r7,#4]
    mov r1, #0x30 
    tst r0, r1
    beq loc_8036B1C
    mov r3, #1
    mov r1, #0x20 
    tst r0, r1
    beq loc_8036B00
    neg r3, r3
loc_8036B00:
    ldrh r1, [r5,#0x34]
    add r1, r1, r3
    cmp r1, #0xe
    bgt loc_8036B10
    cmp r1, #0
    bge loc_8036B12
    mov r1, #0xe
    b loc_8036B12
loc_8036B10:
    mov r1, #0
loc_8036B12:
    strh r1, [r5,#0x34]
    ldrh r2, [r5,#0x3a]
    cmp r1, r2
    beq loc_8036B1C
    b locret_8036B3E
loc_8036B1C:
    mov r1, #0x40 
    tst r0, r1
    beq loc_8036B2E
    mov r1, #0
    strh r1, [r5,#0x26]
    ldrh r2, [r5,#0x2c]
    cmp r1, r2
    beq locret_8036B3E
    b locret_8036B3E
loc_8036B2E:
    mov r1, #0x80
    tst r0, r1
    beq locret_8036B3E
    mov r1, #1
    strh r1, [r5,#0x26]
    ldrh r2, [r5,#0x2c]
    cmp r1, r2
    beq locret_8036B3E
locret_8036B3E:
    pop {r5,pc}
off_8036B40:    .word dword_8036B44
dword_8036B44:    .word 0xFFFF3834, 0x8047629
// end of function sub_8036A54

.thumb
sub_8036B4C:
    push {r4-r7,lr}
    add r7, r5, #0
    add r7, #0x16
    sub sp, sp, #0x14
    ldr r4, [pc, #0x8036bc8-0x8036b54-4] // dword_86F1160
    ldr r6, [pc, #0x8036bcc-0x8036b56-2] // word_2014000
    mov r5, #0
loc_8036B5A:
    ldrb r0, [r7,r5]
    cmp r0, #0xff
    beq loc_8036B76
    lsl r0, r0, #5
    add r0, r0, r4
    add r1, r6, #0
    mov r2, #0x20 
    bl f900_800098C
    bl sub_8036BB8
    add r5, #1
    add r6, #0x20 
    b loc_8036B5A
loc_8036B76:
    mov r0, #0x1d
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #0x1f
    and r1, r2
    cmp r1, #0x10
    bge loc_8036B88
    mov r0, #0x1e
loc_8036B88:
    lsl r0, r0, #5
    add r0, r0, r4
    add r1, r6, #0
    mov r2, #0x20 
    bl f900_800098C
    bl sub_8036BB8
    add r5, #1
    ldr r0, [pc, #0x8036bcc-0x8036b9a-2] // word_2014000
    ldr r1, [pc, #0x8036bd0-0x8036b9c-4] // =0x6003C00
    lsl r2, r5, #5
    bl loc_8000870
    mov r0, #0x12
    mov r1, #0xf
    mov r2, #2
    mov r3, sp
    add r4, r5, #0
    mov r5, #1
    bl sub_8001DDC
// end of function sub_8036B4C

    add sp, sp, #0x14
    pop {r4-r7,pc}
.thumb
sub_8036BB8:
    mov r0, sp
    lsl r1, r5, #1
    mov r2, #1
    lsl r2, r2, #8
    add r2, #0xe0
    add r2, r2, r5
    strh r2, [r0,r1]
    mov pc, lr
off_8036BC8:    .word dword_86F1160
off_8036BCC:    .word word_2014000
dword_8036BD0:    .word 0x6003C00
// end of function sub_8036BB8

.thumb
sub_8036BD4:
    push {lr}
    sub sp, sp, #0x10
    mov r0, #0
    bl sub_800D742
    str r0, [sp]
    mov r0, #0x36 
    bl sub_800D752
    str r0, [sp,#4]
    mov r0, #0x20 
    bl sub_800D742
    str r0, [sp,#8]
    mov r0, #0x29 
    bl sub_800D742
    str r0, [sp,#0xc]
    mov r0, #0
    bl sub_800D62E
    mov r0, #0
    ldr r1, [sp]
    bl sub_800D73A
    mov r0, #0x36 
    ldr r1, [sp,#4]
    bl sub_800D74A
    mov r0, #0x20 
    ldr r1, [sp,#8]
    bl sub_800D73A
    mov r0, #0x29 
    ldr r1, [sp,#0xc]
    bl sub_800D73A
    add sp, sp, #0x10
    pop {pc}
    .hword 0x0
unk_8036C24:    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x202, 0x2030000, 0x0
    .word 0x202, 0x2030000, 0x0
    .word 0x202, 0x2030000, 0x0
    .word 0x202, 0x2030000, 0x0
    .word 0x202, 0x2030000, 0x0
    .word 0x202, 0x2030000, 0x0
dword_8036C70:    .word 0x202, 0x2030000, 0x43114310, 0x43134312, 0x43154314
    .word 0x43174316, 0x43194318, 0x431B431A, 0x431D431C, 0x431F431E
    .word 0x43214320, 0x43234322, 0x43254324, 0x43274326, 0x43294328
    .word 0x432B432A, 0x43314330, 0x43334332, 0x43354334, 0x43374336
    .word 0x43394338, 0x433B433A, 0x433D433C, 0x433F433E, 0x43414340
    .word 0x43434342, 0x43454344, 0x43474346, 0x43494348, 0x434B434A
    .word 0x43514350, 0x43534352, 0x43554354, 0x43574356, 0x43594358
    .word 0x435B435A, 0x435D435C, 0x435F435E, 0x43614360, 0x43634362
    .word 0x43654364, 0x43674366, 0x43694368, 0x436B436A, 0x43714370
    .word 0x43734372, 0x43754374, 0x43774376, 0x43794378, 0x437B437A
    .word 0x437D437C, 0x437F437E, 0x43814380, 0x43834382, 0x43854384
    .word 0x43874386, 0x43894388, 0x438B438A, 0xC082C080, 0xC086C084
    .word 0xC08AC088, 0xC08EC08C, 0xC081C090, 0xC085C083, 0xC089C087
    .word 0xC08DC08B, 0xC091C08F, 0xC0A2C0A0, 0xC0A6C0A4, 0xC0AAC0A8
    .word 0xC0AEC0AC, 0xC0A1C0B0, 0xC0A5C0A3, 0xC0A9C0A7, 0xC0ADC0AB
    .word 0xC0B1C0AF, 0xC0C2C0C0, 0xC0C6C0C4, 0xC0CAC0C8, 0xC0CEC0CC
    .word 0xC0C1C0D0, 0xC0C5C0C3, 0xC0C9C0C7, 0xC0CDC0CB, 0xC0D1C0CF
    .word 0xC0E2C0E0, 0xC0E6C0E4, 0xC0EAC0E8, 0xC0EEC0EC, 0xC0E1C0F0
    .word 0xC0E5C0E3, 0xC0E9C0E7, 0xC0EDC0EB, 0xC0F1C0EF, 0xC102C100
    .word 0xC106C104, 0xC10AC108, 0xC10EC10C, 0xC101C110, 0xC105C103
    .word 0xC109C107, 0xC10DC10B, 0xC111C10F, 0xFF000022, 0xFF010122
    .word 0xFF020222, 0xFFFFFFFF, 0xFF000023, 0xFF040123, 0xFF080223
    .word 0xFF0C0323, 0xFFFFFFFF, 0xFF000421, 0xFF000521, 0xFF000621
    .word 0xFF040721, 0xFF040821, 0xFF040921, 0xFF080A21, 0xFF080B21
    .word 0xFF080C21, 0xFF0C0D21, 0xFF0C0E21, 0xFF0C0F21, 0xFF101021
    .word 0xFF101121, 0xFF101221, 0xFFFFFFFF, 0x1030401, 0x1010101
    .word 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010104
    .word 0x101
// end of function sub_8036BD4

loc_8036E90:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r0, [pc, #0x8036eb0-0x8036e9a-2] // off_8036EB4
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .byte 0, 0
off_8036EB0:    .word off_8036EB4
off_8036EB4:    .word sub_8036F08+1
    .word sub_803701C+1
    .word sub_8037044+1
    .word sub_803706C+1
    .word sub_8037094+1
    .word sub_80370B4+1
    .word sub_80370DC+1
    .word sub_8037104+1
    .word sub_8037124+1
    .word sub_803714C+1
    .word sub_8037174+1
    .word sub_8037194+1
    .word sub_80371C0+1
    .word sub_80371EC+1
    .word sub_803721C+1
    .word sub_803721C+1
    .word sub_803721C+1
    .word sub_803721C+1
    .word sub_803721C+1
    .word sub_8037264+1
    .word sub_8037290+1
.thumb
sub_8036F08:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x58]
    bl sub_80372BC
    str r0, [r5,#0x44]
    bl sub_8037304
    str r0, [r5,#0x48]
    bl sub_8037364
    str r0, [r5,#0x4c]
    bl sub_80373C4
    str r0, [r5,#0x50]
    bl sub_8037404
    str r0, [r5,#0x54]
    bl sub_8037428
    bl sub_8037614
// end of function sub_8036F08

    bl sub_80376AC
    strh r0, [r5,#0x12]
    bl sub_8037738
    strh r0, [r5,#0x1c]
    bl sub_80377EC
    strh r0, [r5,#0x26]
    bl sub_80378A4
    strh r0, [r5,#0x30]
    bl sub_8037974
    strh r0, [r5,#0x3a]
    bl sub_80540BA
    ldr r0, [pc, #0x8037014-0x8036f56-2] // dword_8036C70+448
    bl sub_8053FFC
    ldr r0, [pc, #0x8037018-0x8036f5c-4] // dword_8036C70+412
    bl sub_8053FFC
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8037010-0x8036f66-2] // =0x7F40
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    ldr r0, [r7,#0x1c]
    mov r1, #0x3f 
    strb r1, [r0,#8]
    mov r1, #0x22 
    strb r1, [r0,#9]
    mov r1, #0x22 
    strb r1, [r0,#0xa]
    mov r1, #6
    strb r1, [r0,#1]
    mov r1, #0
    strb r1, [r0,#5]
    mov r1, #0xea
    strb r1, [r0]
    mov r1, #0x9a
    strb r1, [r0,#4]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#7]
    mov r1, #6
    strb r1, [r0,#2]
    mov r1, #0x9a
    strb r1, [r0,#6]
    mov r0, #0x12
    bl sub_8001BC8
    mov r0, #0
    strh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    mov r0, #0
    strh r0, [r5,#0x1e]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    mov r0, #0
    strh r0, [r5,#0x28]
    strh r0, [r5,#0x2a]
    strh r0, [r5,#0x2c]
    strh r0, [r5,#0x2e]
    mov r0, #0
    strh r0, [r5,#0x32]
    strh r0, [r5,#0x34]
    strh r0, [r5,#0x36]
    strh r0, [r5,#0x38]
    mov r0, #0
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0xe]
    mov r0, #0xa0
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    bl sub_80375C4
    bl sub_8037A64
    bl sub_8037AF8
    bl sub_8037BD0
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0
    .byte 0xF0
    .byte 0xC6
    .byte 0xFE
    bl sub_80381C4
    mov r0, #8
    mov r1, #0xc
    bl sub_8005ADC
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
    .byte 0, 0
dword_8037010:    .word 0x7F40
off_8037014:    .word dword_8036C70+0x1C0
off_8037018:    .word dword_8036C70+0x19C
.thumb
sub_803701C:
    push {lr}
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    bl sub_8005B5C
    beq loc_8037032
    mov r0, #0
    bl sub_8038684
loc_8037032:
    bl sub_8038254
    bl sub_8037A64
// end of function sub_803701C

    bl sub_80382BC
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8037044:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x8e
    cmp r0, r1
    bgt loc_8037058
    strb r1, [r5,#0xc]
    mov r0, #0x10
    strb r0, [r5,#1]
loc_8037058:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037A64
// end of function sub_8037044

    bl sub_8037AF8
    mov r0, #0
    pop {pc}
.thumb
sub_803706C:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0xa0
    cmp r0, r1
    blt loc_8037080
    strb r1, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#1]
loc_8037080:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037A64
// end of function sub_803706C

    bl sub_8037AF8
    mov r0, #0
    pop {pc}
.thumb
sub_8037094:
    push {lr}
    ldrh r0, [r5,#0x1e]
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    strh r0, [r5,#0x24]
    mov r0, #0xa
    bl sub_80386E8
    bl sub_8038254
    bl sub_8037AF8
// end of function sub_8037094

    bl sub_80382F0
    mov r0, #0
    pop {pc}
.thumb
sub_80370B4:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x7c 
    cmp r0, r1
    bgt loc_80370C8
    strb r1, [r5,#0xc]
    mov r0, #0x1c
    strb r0, [r5,#1]
loc_80370C8:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037AF8
// end of function sub_80370B4

    bl sub_8037BD0
    mov r0, #0
    pop {pc}
.thumb
sub_80370DC:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x8e
    cmp r0, r1
    blt loc_80370F0
    strb r1, [r5,#0xc]
    mov r0, #0x10
    strb r0, [r5,#1]
loc_80370F0:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037AF8
// end of function sub_80370DC

    bl sub_8037BD0
    mov r0, #0
    pop {pc}
.thumb
sub_8037104:
    push {lr}
    ldrh r0, [r5,#0x28]
    strh r0, [r5,#0x2a]
    ldrh r0, [r5,#0x2c]
    strh r0, [r5,#0x2e]
    mov r0, #0x14
    bl sub_803875C
    bl sub_8038254
    bl sub_8037BD0
// end of function sub_8037104

    bl sub_803832C
    mov r0, #0
    pop {pc}
.thumb
sub_8037124:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x6a 
    cmp r0, r1
    bgt loc_8037138
    strb r1, [r5,#0xc]
    mov r0, #0x28 
    strb r0, [r5,#1]
loc_8037138:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037BD0
// end of function sub_8037124

    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xBD
.thumb
sub_803714C:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x7c 
    cmp r0, r1
    blt loc_8037160
    strb r1, [r5,#0xc]
    mov r0, #0x1c
    strb r0, [r5,#1]
loc_8037160:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037BD0
// end of function sub_803714C

    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xBD
.thumb
sub_8037174:
    push {lr}
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x34]
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x38]
    mov r0, #0x1e
    bl sub_80387DC
    bl sub_8038254
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 1
    .byte 0xF0
    .byte 0xEC
    .byte 0xF8
// end of function sub_8037174

    mov r0, #0
    pop {pc}
.thumb
sub_8037194:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x58 
    cmp r0, r1
    bgt loc_80371AC
    strb r1, [r5,#0xc]
    mov r0, #0x34 
    strb r0, [r5,#1]
    bl sub_80389C8
loc_80371AC:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0
    .byte 0xF0
    .byte 0xE6
    .byte 0xFD
// end of function sub_8037194

    mov r0, #0
    pop {pc}
.thumb
sub_80371C0:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x6a 
    cmp r0, r1
    blt loc_80371D8
    strb r1, [r5,#0xc]
    mov r0, #0x28 
    strb r0, [r5,#1]
    bl sub_80389A0
loc_80371D8:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0
    .byte 0xF0
    .byte 0xD0
    .byte 0xFD
// end of function sub_80371C0

    mov r0, #0
    pop {pc}
.thumb
sub_80371EC:
    push {lr}
    ldrh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    mov r1, #0x40 
    ldrh r0, [r5,r1]
    mov r1, #0x42 
    strh r0, [r5,r1]
    mov r0, #0x28 
    bl sub_8038850
    bl sub_8038254
    ldr r0, [r5,#0x30]
    tst r0, r0
    beq loc_8037210
    bl sub_8037D88
    b loc_8037214
loc_8037210:
    bl sub_8037DF8
loc_8037214:
    bl sub_80383A4
// end of function sub_80371EC

    mov r0, #0
    pop {pc}
.thumb
sub_803721C:
    push {lr}
    bl sub_8038254
    ldrb r0, [r5,#1]
    cmp r0, #0x38 
    bne loc_803722E
    bl sub_80382BC
    b loc_8037250
loc_803722E:
    cmp r0, #0x3c 
    bne loc_8037238
    bl sub_80382F0
    b loc_8037250
loc_8037238:
    cmp r0, #0x40 
    bne loc_8037242
    bl sub_803832C
    b loc_8037250
loc_8037242:
    cmp r0, #0x44 
    bne loc_803724C
    bl sub_8038368
    b loc_8037250
loc_803724C:
    bl sub_80383A4
loc_8037250:
    bl sub_8005B5C
    beq loc_8037260
    bl sub_80540BA
    bl sub_802DE3C
    pop {pc}
loc_8037260:
    mov r0, #0
    pop {pc}
// end of function sub_803721C

.thumb
sub_8037264:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x6a 
    cmp r0, r1
    bgt loc_803727C
    strb r1, [r5,#0xc]
    mov r0, #0x34 
    strb r0, [r5,#1]
    bl sub_80389C8
loc_803727C:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037BD0
// end of function sub_8037264

    bl sub_8037DF8
    mov r0, #0
    pop {pc}
.thumb
sub_8037290:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #2
    strb r0, [r5,#0xc]
    mov r1, #0x7c 
    cmp r0, r1
    blt loc_80372A8
    strb r1, [r5,#0xc]
    mov r0, #0x1c
    strb r0, [r5,#1]
    bl sub_80389A0
loc_80372A8:
    mov r0, #0xff
    strb r0, [r5,#0xe]
    bl sub_8038254
    bl sub_8037BD0
// end of function sub_8037290

    bl sub_8037DF8
    mov r0, #0
    pop {pc}
.thumb
sub_80372BC:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80372fc-0x80372be-2] // word_8037300
    mov r6, #0
    mov r7, #0
loc_80372C4:
    ldrh r0, [r4]
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80372EE
    add r0, r7, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_80372EE
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_80372EE
    ldrb r0, [r0,#8]
    cmp r0, #0
    bne loc_80372EE
    add r6, #1
loc_80372EE:
    add r7, #1
    ldrh r0, [r4,#(word_8037302 - 0x8037300)]
    cmp r7, r0
    ble loc_80372C4
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80372FC:    .word word_8037300
word_8037300:    .hword 0x16C0
word_8037302:    .hword 0x13F
// end of function sub_80372BC

.thumb
sub_8037304:
    push {r4-r7,lr}
    ldr r4, [pc, #0x803735c-0x8037306-2] // word_8037360
    mov r6, #0
    mov r7, #0
loc_803730C:
    ldrh r0, [r4]
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_803734E
    add r0, r7, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_803734E
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_803734E
    mov r1, #0
    tst r1, r1
    beq loc_803733E
    ldrb r1, [r0,#0x16]
    mov r2, #4
    tst r1, r2
    bne loc_803734E
    b loc_8037346
loc_803733E:
    ldrb r1, [r0,#0x16]
    mov r2, #8
    tst r1, r2
    bne loc_803734E
loc_8037346:
    ldrb r0, [r0,#8]
    cmp r0, #1
    bne loc_803734E
    add r6, #1
loc_803734E:
    add r7, #1
    ldrh r0, [r4,#(word_8037362 - 0x8037360)]
    cmp r7, r0
    ble loc_803730C
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803735C:    .word word_8037360
word_8037360:    .hword 0x16C0
word_8037362:    .hword 0x13F
// end of function sub_8037304

.thumb
sub_8037364:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80373bc-0x8037366-2] // word_80373C0
    mov r6, #0
    mov r7, #0
loc_803736C:
    ldrh r0, [r4]
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80373AE
    add r0, r7, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_80373AE
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_80373AE
    mov r1, #0
    tst r1, r1
    beq loc_803739E
    ldrb r1, [r0,#0x16]
    mov r2, #4
    tst r1, r2
    bne loc_80373AE
    b loc_80373A6
loc_803739E:
    ldrb r1, [r0,#0x16]
    mov r2, #8
    tst r1, r2
    bne loc_80373AE
loc_80373A6:
    ldrb r0, [r0,#8]
    cmp r0, #2
    bne loc_80373AE
    add r6, #1
loc_80373AE:
    add r7, #1
    ldrh r0, [r4,#(word_80373C2 - 0x80373c0)]
    cmp r7, r0
    ble loc_803736C
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80373BC:    .word word_80373C0
word_80373C0:    .hword 0x16C0
word_80373C2:    .hword 0x13F
// end of function sub_8037364

.thumb
sub_80373C4:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80373fc-0x80373c6-2] // word_8037400
    mov r6, #0
    mov r7, #0
loc_80373CC:
    ldrh r0, [r4]
    add r0, r0, r7
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_8024FF4
    beq loc_80373F0
    add r0, r7, #0
    bl sub_8019010
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_80373F0
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    beq loc_80373F0
    add r6, #1
loc_80373F0:
    add r7, #1
    ldrh r0, [r4,#(word_8037402 - 0x8037400)]
    cmp r7, r0
    ble loc_80373CC
    add r0, r6, #0
    pop {r4-r7,pc}
off_80373FC:    .word word_8037400
word_8037400:    .hword 0x16C0
word_8037402:    .hword 0x13F
// end of function sub_80373C4

.thumb
sub_8037404:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8037424-0x8037406-2] // =0x1800
    mov r6, #0
    mov r4, #0
loc_803740C:
    add r0, r7, #0
    bl sub_8024FF4
    beq loc_8037416
    add r6, #1
loc_8037416:
    add r7, #1
    add r4, #1
    cmp r4, #0x1e
    blt loc_803740C
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8037424:    .word 0x1800
// end of function sub_8037404

.thumb
sub_8037428:
    push {lr}
    bl sub_8001D04
    bl sub_8001D38
    bl sub_8001D88
    mov r0, #0xc
    bl sub_802F628
    add r0, #0x20 
    ldr r1, [pc, #0x8037504-0x803743e-2] // unk_3002BD0
    ldr r2, [pc, #0x8037508-0x8037440-4] // =0x20
    bl f900_800098C
    mov r0, #0xc
    bl sub_802F628
    ldr r1, [pc, #0x80375b4-0x803744c-4] // unk_3002C10
    ldr r2, [pc, #0x80375b8-0x803744e-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x803750c-0x8037454-4] // dword_868E224
    ldr r1, [pc, #0x8037510-0x8037456-2] // =0x6004000
    ldr r2, [pc, #0x8037514-0x8037458-4] // =0x2200
    bl loc_8000870
    mov r0, #0x10
    bl sub_802F628
    ldr r1, [pc, #0x803751c-0x8037464-4] // unk_3002AD0
    ldr r2, [pc, #0x8037520-0x8037466-2] // =0x40
    bl f900_800098C
    mov r0, #0
    bl sub_802F628
    ldr r1, [pc, #0x8037528-0x8037472-2] // word_3002A50
    ldr r2, [pc, #0x803752c-0x8037474-4] // =0x60
    bl f900_800098C
    ldr r0, [pc, #0x8037530-0x803747a-2] // dword_86CDFA0
    ldr r1, [pc, #0x8037534-0x803747c-4] // =0x6007400
    ldr r2, [pc, #0x8037538-0x803747e-2] // =0x360
    bl loc_8000870
    ldr r0, [pc, #0x803753c-0x8037484-4] // dword_8707A80
    ldr r1, [pc, #0x8037540-0x8037486-2] // unk_3002B30
    ldr r2, [pc, #0x8037544-0x8037488-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8037548-0x803748e-2] // unk_8706F00
    ldr r1, [pc, #0x803754c-0x8037490-4] // =0x6007800
    ldr r2, [pc, #0x8037550-0x8037492-2] // =0x680
    bl loc_8000870
    ldr r0, [pc, #0x8037554-0x8037498-4] // loc_86DAE6C
    ldr r1, [pc, #0x8037558-0x803749a-2] // =0x6000020
    ldr r2, [pc, #0x803755c-0x803749c-4] // =0x2B40
    bl loc_8000870
    ldr r0, [pc, #0x8037560-0x80374a2-2] // dword_86CE300
    ldr r1, [pc, #0x8037564-0x80374a4-4] // =0x6010020
    ldr r2, [pc, #0x8037568-0x80374a6-2] // =0x420
    bl loc_8000870
    mov r0, #0x14
    bl sub_802F628
    ldr r1, [pc, #0x8037570-0x80374b2-2] // unk_30027A0
    ldr r2, [pc, #0x8037574-0x80374b4-4] // =0x80
    bl f900_800098C
    ldr r0, [pc, #0x8037578-0x80374ba-2] // dword_868E1E4
    ldr r1, [pc, #0x803757c-0x80374bc-4] // unk_3002BF0
    ldr r2, [pc, #0x8037580-0x80374be-2] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8037584-0x80374c4-4] // dword_868E204
    ldr r1, [pc, #0x8037588-0x80374c6-2] // unk_30026E0
    ldr r2, [pc, #0x803758c-0x80374c8-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x8037590-0x80374ce-2] // dword_86F2510
    ldr r1, [pc, #0x8037594-0x80374d0-4] // unk_3002760
    ldr r2, [pc, #0x8037598-0x80374d2-2] // =0x20
    bl f900_800098C
    mov r0, #7
    bl sub_802F628
    ldr r1, [pc, #0x803759c-0x80374de-2] // unk_3002740
    ldr r2, [pc, #0x80375a0-0x80374e0-4] // =0x20
    bl f900_800098C
    ldr r0, [pc, #0x80375a4-0x80374e6-2] // dword_86F2104
    ldr r1, [pc, #0x80375a8-0x80374e8-4] // dword_202E000
    bl dword_8111700
    ldr r0, [pc, #0x80375ac-0x80374ee-2] // dword_86F1D0C
    ldr r1, [pc, #0x80375b0-0x80374f0-4] // dword_2031000
    bl dword_8111700
    ldr r0, [pc, #0x80375bc-0x80374f6-2] // dword_86E7F10
    ldr r1, [pc, #0x80375c0-0x80374f8-4] // dword_2028000
    bl dword_8111700
    pop {pc}
    .word dword_868E1C4
off_8037504:    .word unk_3002BD0
dword_8037508:    .word 0x20
off_803750C:    .word dword_868E224
dword_8037510:    .word 0x6004000
off_8037514:    .word 0x2200
    .word 0x8745CB8
off_803751C:    .word unk_3002AD0
off_8037520:    .word 0x40
    .word 0x86F5DC0
off_8037528:    .word word_3002A50
off_803752C:    .word 0x60
off_8037530:    .word dword_86CDFA0
dword_8037534:    .word 0x6007400
off_8037538:    .word 0x360
off_803753C:    .word dword_8707A80
off_8037540:    .word unk_3002B30
dword_8037544:    .word 0x20
off_8037548:    .word unk_8706F00
dword_803754C:    .word 0x6007800
off_8037550:    .word 0x680
off_8037554:    .word loc_86DAE6C
dword_8037558:    .word 0x6000020
off_803755C:    .word 0x2B40
off_8037560:    .word dword_86CE300
dword_8037564:    .word 0x6010020
off_8037568:    .word 0x420
    .word 0x86F8A20
off_8037570:    .word unk_30027A0
off_8037574:    .word 0x80
off_8037578:    .word dword_868E1E4
off_803757C:    .word unk_3002BF0
dword_8037580:    .word 0x20
off_8037584:    .word dword_868E204
off_8037588:    .word unk_30026E0
dword_803758C:    .word 0x20
off_8037590:    .word dword_86F2510
off_8037594:    .word unk_3002760
dword_8037598:    .word 0x20
off_803759C:    .word unk_3002740
dword_80375A0:    .word 0x20
off_80375A4:    .word dword_86F2104
off_80375A8:    .word dword_202E000
off_80375AC:    .word dword_86F1D0C
off_80375B0:    .word dword_2031000
off_80375B4:    .word unk_3002C10
dword_80375B8:    .word 0x20
off_80375BC:    .word dword_86E7F10
off_80375C0:    .word dword_2028000
// end of function sub_8037428

.thumb
sub_80375C4:
    push {r5,lr}
    add r7, r5, #0
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x803760c-0x80375ce-2] // dword_86D6E2C
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_8001DDC
// end of function sub_80375C4

    mov r0, #0
    mov r1, #2
    mov r2, #2
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x11
    bl sub_8001DF8
    mov r0, #0
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #2
    bl sub_8001DF8
    ldrb r0, [r7,#0xc]
    sub r0, #0x95
    mov r1, #2
    mov r2, #2
    ldr r3, [pc, #0x8037610-0x8037600-4] // byte_86D72DC
    mov r4, #0x5b 
    mov r5, #0x11
    bl sub_8001DDC
    pop {r5,pc}
off_803760C:    .word dword_86D6E2C
off_8037610:    .word byte_86D72DC
.thumb
sub_8037614:
    push {r4-r7,lr}
    ldr r0, [pc, #0x803767c-0x8037616-2] // unk_86DE644
    mov r1, #0x78 
    ldr r2, [pc, #0x8037684-0x803761a-2] // unk_2017000
    ldr r3, [pc, #0x8037698-0x803761c-4] // =0x6009000
    mov r4, #9
    mov r5, #1
    ldr r6, [pc, #0x8037680-0x8037622-2] // dword_868E224
    mov r7, #0
    bl sub_8053A04
    .byte 0x14
    .byte 0x48 
    .byte 0x79 
    .byte 0x21 
    .byte 0x16
    .byte 0x4A 
    .byte 0x1A
    .byte 0x4B 
    .byte 9
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0x12
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x1C
    .byte 0xF0
    .byte 0xE3
    .byte 0xF9
    .byte 0xF
    .byte 0x48 
    .byte 0x7A 
    .byte 0x21 
    .byte 0x12
    .byte 0x4A 
    .byte 0x16
    .byte 0x4B 
    .byte 9
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 0xD
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x1C
    .byte 0xF0
    .byte 0xD9
    .byte 0xF9
    .byte 0xA
    .byte 0x48 
    .byte 0x7D 
    .byte 0x21 
    .byte 0xE
    .byte 0x4A 
    .byte 0x12
    .byte 0x4B 
    .byte 9
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 8
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x1C
    .byte 0xF0
    .byte 0xCF
    .byte 0xF9
    .byte 5
    .byte 0x48 
    .byte 0x7B 
    .byte 0x21 
    .byte 0xA
    .byte 0x4A 
    .byte 0xE
    .byte 0x4B 
    .byte 9
    .byte 0x24 
    .byte 1
    .byte 0x25 
    .byte 3
    .byte 0x4E 
    .byte 0
    .byte 0x27 
    .byte 0x1C
    .byte 0xF0
    .byte 0xC5
    .byte 0xF9
    .byte 0xF0
    .byte 0xBD
off_803767C:    .word unk_86DE644
off_8037680:    .word dword_868E224
off_8037684:    .word unk_2017000
    .word unk_2017400
    .word unk_2017800
    .word unk_2017C00
    .word unk_2018000
dword_8037698:    .word 0x6009000
    .word 0x6009400
    .word 0x6009800
    .word 0x6009C00
    .word 0x600A000
// end of function sub_8037614

.thumb
sub_80376AC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x803772c-0x80376ae-2] // dword_201A000
    ldr r1, [pc, #0x8037730-0x80376b0-4] // =0x258
    bl f900_8000930
    mov r4, #1
    mov r5, #0
    ldr r7, [pc, #0x803772c-0x80376ba-2] // dword_201A000
loc_80376BC:
    add r0, r4, #0
    bl sub_8019010
    ldrh r6, [r0,#0x1c]
    sub r6, #1
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_803771E
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_803771E
    lsl r6, r6, #2
    add r6, r6, r7
    ldrb r0, [r0,#8]
    mov r1, #0
    cmp r0, r1
    bne loc_803771E
    add r5, #1
    ldr r3, [pc, #0x803789c-0x80376e4-4] // =0x16C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80376F8
    strh r4, [r6]
    mov r0, #0
    strb r0, [r6,#2]
    b loc_803771E
loc_80376F8:
    ldr r3, [pc, #0x8037a58-0x80376f8-4] // =0x1AC0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_803770C
    strh r4, [r6]
    mov r0, #1
    strb r0, [r6,#2]
    b loc_803771E
loc_803770C:
    ldr r3, [pc, #0x8037a54-0x803770c-4] // =0x18C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_803771E
    strh r4, [r6]
    mov r0, #2
    strb r0, [r6,#2]
loc_803771E:
    add r4, #1
    ldr r0, [pc, #0x8037734-0x8037720-4] // =0xB8
    cmp r4, r0
    ble loc_80376BC
    add r0, r5, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803772C:    .word dword_201A000
off_8037730:    .word 0x258
dword_8037734:    .word 0xBA
// end of function sub_80376AC

.thumb
sub_8037738:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80377d8-0x803773a-2] // unk_201A800
    ldr r1, [pc, #0x80377dc-0x803773c-4] // =0x578
    bl f900_8000930
    mov r4, #1
    mov r5, #0
    mov r6, #0
    ldr r7, [pc, #0x80377d8-0x8037748-4] // unk_201A800
loc_803774A:
    add r0, r4, #0
    bl sub_8019010
    ldrh r6, [r0,#0x1c]
    lsl r6, r6, #1
    ldr r1, [pc, #0x80377e8-0x8037754-4] // dword_8038A68
    ldrh r6, [r1,r6]
    sub r6, #1
    lsl r6, r6, #2
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_80377CC
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_80377CC
    mov r2, #0
    tst r2, r2
    beq loc_803777A
    mov r2, #4
    tst r1, r2
    bne loc_80377CC
    b loc_8037780
loc_803777A:
    mov r2, #8
    tst r1, r2
    bne loc_80377CC
loc_8037780:
    add r2, r6, r7
    ldrb r0, [r0,#8]
    mov r1, #1
    cmp r0, r1
    bne loc_80377CC
    add r5, #1
    ldr r3, [pc, #0x803789c-0x803778c-4] // =0x16C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80377A2
    strh r4, [r2]
    mov r0, #0
    strb r0, [r2,#2]
    add r6, #4
    b loc_80377CC
loc_80377A2:
    ldr r3, [pc, #0x8037a58-0x80377a2-2] // =0x1AC0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80377B8
    strh r4, [r2]
    mov r0, #1
    strb r0, [r2,#2]
    add r6, #4
    b loc_80377CC
loc_80377B8:
    ldr r3, [pc, #0x8037a54-0x80377b8-4] // =0x18C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80377CC
    strh r4, [r2]
    mov r0, #2
    strb r0, [r2,#2]
    add r6, #4
loc_80377CC:
    add r4, #1
    ldr r0, [pc, #0x8037a50-0x80377ce-2] // =0x13F
    cmp r4, r0
    ble loc_803774A
    add r0, r5, #0
    pop {r4-r7,pc}
off_80377D8:    .word unk_201A800
off_80377DC:    .word 0x578
    .word unk_201AD78
    .word 0x13F
off_80377E8:    .word dword_8038A68
// end of function sub_8037738

.thumb
sub_80377EC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x803788c-0x80377ee-2] // unk_201B000
    ldr r1, [pc, #0x8037890-0x80377f0-4] // =0x578
    bl f900_8000930
    mov r4, #1
    mov r5, #0
    mov r6, #0
    ldr r7, [pc, #0x803788c-0x80377fc-4] // unk_201B000
loc_80377FE:
    add r0, r4, #0
    bl sub_8019010
    ldrh r6, [r0,#0x1c]
    lsl r6, r6, #1
    ldr r1, [pc, #0x80378a0-0x8037808-4] // dword_8038CC0
    ldrh r6, [r1,r6]
    sub r6, #1
    lsl r6, r6, #2
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_8037880
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_8037880
    mov r2, #0
    tst r2, r2
    beq loc_803782E
    mov r2, #4
    tst r1, r2
    bne loc_8037880
    b loc_8037834
loc_803782E:
    mov r2, #8
    tst r1, r2
    bne loc_8037880
loc_8037834:
    add r2, r6, r7
    ldrb r0, [r0,#8]
    mov r1, #2
    cmp r0, r1
    bne loc_8037880
    add r5, #1
    ldr r3, [pc, #0x803789c-0x8037840-4] // =0x16C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_8037856
    strh r4, [r2]
    mov r0, #0
    strb r0, [r2,#2]
    add r6, #4
    b loc_8037880
loc_8037856:
    ldr r3, [pc, #0x8037a58-0x8037856-2] // =0x1AC0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_803786C
    strh r4, [r2]
    mov r0, #1
    strb r0, [r2,#2]
    add r6, #4
    b loc_8037880
loc_803786C:
    ldr r3, [pc, #0x8037a54-0x803786c-4] // =0x18C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_8037880
    strh r4, [r2]
    mov r0, #2
    strb r0, [r2,#2]
    add r6, #4
loc_8037880:
    add r4, #1
    ldr r0, [pc, #0x8037a50-0x8037882-2] // =0x13F
    cmp r4, r0
    ble loc_80377FE
    add r0, r5, #0
    pop {r4-r7,pc}
off_803788C:    .word unk_201B000
off_8037890:    .word 0x578
// end of function sub_80377EC

    push {r3-r6,lr}
    lsl r1, r0, #8
    lsl r7, r7, #4
    .hword 0x0 // mov r0, r0  // <mkdata>
off_803789C:    .word 0x16C0
off_80378A0:    .word dword_8038CC0
.thumb
sub_80378A4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x803795c-0x80378a6-2] // dword_201B800
    ldr r1, [pc, #0x8037960-0x80378a8-4] // =0x578
    bl f900_8000930
    mov r4, #1
    mov r5, #0
    mov r6, #0
    ldr r7, [pc, #0x803795c-0x80378b4-4] // dword_201B800
loc_80378B6:
    add r0, r4, #0
    bl sub_8019010
    ldrh r6, [r0,#0x1c]
    lsl r6, r6, #1
    ldr r1, [pc, #0x8037970-0x80378c0-4] // dword_8038F18
    ldrh r6, [r1,r6]
    sub r6, #1
    lsl r6, r6, #2
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_8037920
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    beq loc_8037920
    add r2, r6, r7
    ldr r3, [pc, #0x803796c-0x80378da-2] // =0x16C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80378F2
    add r5, #1
    strh r4, [r2]
    mov r0, #0
    strb r0, [r2,#2]
    add r6, #4
    b loc_8037920
loc_80378F2:
    ldr r3, [pc, #0x8037a58-0x80378f2-2] // =0x1AC0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_803790A
    add r5, #1
    strh r4, [r2]
    mov r0, #1
    strb r0, [r2,#2]
    add r6, #4
    b loc_8037920
loc_803790A:
    ldr r3, [pc, #0x8037a54-0x803790a-2] // =0x18C0
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_8037920
    add r5, #1
    strh r4, [r2]
    mov r0, #2
    strb r0, [r2,#2]
    add r6, #4
loc_8037920:
    add r4, #1
    ldr r0, [pc, #0x8037a50-0x8037922-2] // =0x13F
    cmp r4, r0
    ble loc_80378B6
    ldr r6, [pc, #0x803795c-0x8037928-4] // dword_201B800
    ldr r7, [pc, #0x8037964-0x803792a-2] // unk_201BD78
    mov r4, #0
loc_803792E:
    ldr r0, [r6]
    tst r0, r0
    bne loc_803794C
    add r0, r6, #0
    add r1, r6, #4
loc_8037938:
    ldr r2, [r1]
    tst r2, r2
    beq loc_8037946
    str r2, [r0]
    mov r2, #0
    str r2, [r1]
    add r0, #4
loc_8037946:
    add r1, #4
    cmp r1, r7
    blt loc_8037938
loc_803794C:
    add r6, #4
    add r4, #1
    ldr r0, [pc, #0x8037968-0x8037950-4] // =0x13F
    cmp r4, r0
    blt loc_803792E
    add r0, r5, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803795C:    .word dword_201B800
off_8037960:    .word 0x578
off_8037964:    .word unk_201BD78
dword_8037968:    .word 0x13F
off_803796C:    .word 0x16C0
off_8037970:    .word dword_8038F18
// end of function sub_80378A4

.thumb
sub_8037974:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8037a38-0x8037976-2] // dword_201C000
    ldr r1, [pc, #0x8037a3c-0x8037978-4] // =0x578
    bl f900_8000930
    mov r4, #0
    mov r5, #0
    mov r6, #0
    ldr r7, [pc, #0x8037a38-0x8037984-4] // dword_201C000
loc_8037986:
    ldr r3, [pc, #0x8037a48-0x8037986-2] // =0x140
    add r0, r3, r4
    bl sub_8019010
    ldrh r6, [r0,#0x1c]
    lsl r6, r6, #2
    add r2, r6, r7
    ldrb r0, [r0,#8]
    mov r1, #4
    cmp r0, r1
    bne loc_80379FE
    ldr r3, [pc, #0x8037a4c-0x803799c-4] // =0x1800
    add r3, r3, r4
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80379B8
    add r5, #1
    ldr r3, [pc, #0x8037a48-0x80379aa-2] // =0x140
    add r3, r3, r4
    strh r3, [r2]
    mov r0, #0
    strb r0, [r2,#2]
    add r6, #4
    b loc_80379FE
loc_80379B8:
    ldr r3, [pc, #0x8037a58-0x80379b8-4] // =0x1AC0
    add r3, r3, r4
    ldr r0, [pc, #0x8037a60-0x80379bc-4] // =0x16C0
    ldr r1, [pc, #0x8037a4c-0x80379be-2] // =0x1800
    sub r1, r1, r0
    add r3, r3, r1
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80379DC
    add r5, #1
    ldr r3, [pc, #0x8037a48-0x80379ce-2] // =0x140
    add r3, r3, r4
    strh r3, [r2]
    mov r0, #1
    strb r0, [r2,#2]
    add r6, #4
    b loc_80379FE
loc_80379DC:
    ldr r3, [pc, #0x8037a54-0x80379dc-4] // =0x18C0
    add r3, r3, r4
    ldr r0, [pc, #0x8037a60-0x80379e0-4] // =0x16C0
    ldr r1, [pc, #0x8037a4c-0x80379e2-2] // =0x1800
    sub r1, r1, r0
    add r3, r3, r1
    add r0, r3, #0
    bl sub_8024FF4
    beq loc_80379FE
    add r5, #1
    ldr r3, [pc, #0x8037a48-0x80379f2-2] // =0x140
    add r3, r3, r4
    strh r3, [r2]
    mov r0, #2
    strb r0, [r2,#2]
    add r6, #4
loc_80379FE:
    add r4, #1
    ldr r0, [pc, #0x8037a5c-0x8037a00-4] // =0x1F
    cmp r4, r0
    ble loc_8037986
    ldr r6, [pc, #0x8037a38-0x8037a06-2] // dword_201C000
    ldr r7, [pc, #0x8037a40-0x8037a08-4] // unk_201C578
    mov r4, #0
loc_8037A0C:
    ldr r0, [r6]
    tst r0, r0
    bne loc_8037A2A
    add r0, r6, #0
    add r1, r6, #4
loc_8037A16:
    ldr r2, [r1]
    tst r2, r2
    beq loc_8037A24
    str r2, [r0]
    mov r2, #0
    str r2, [r1]
    add r0, #4
loc_8037A24:
    add r1, #4
    cmp r1, r7
    blt loc_8037A16
loc_8037A2A:
    add r6, #4
    add r4, #1
    ldr r0, [pc, #0x8037a44-0x8037a2e-2] // =0x13F
    cmp r4, r0
    blt loc_8037A0C
    add r0, r5, #0
    pop {r4-r7,pc}
off_8037A38:    .word dword_201C000
off_8037A3C:    .word 0x578
off_8037A40:    .word unk_201C578
dword_8037A44:    .word 0x13F
off_8037A48:    .word 0x140
off_8037A4C:    .word 0x1800
dword_8037A50:    .word 0x13F
off_8037A54:    .word 0x18C0
off_8037A58:    .word 0x1AC0
dword_8037A5C:    .word 0x1F
off_8037A60:    .word 0x16C0
// end of function sub_8037974

.thumb
sub_8037A64:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrh r0, [r7,#0x18]
    ldr r1, [pc, #0x8037e68-0x8037a6a-2] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0xa0
    add r0, #0xc
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037a78-4] // unk_2016600
    mov r3, #7
    bl sub_8037ED4
// end of function sub_8037A64

    ldrh r0, [r7,#0x18]
    ldr r1, [pc, #0x8037ae4-0x8037a82-2] // dword_201A000
    ldr r2, [pc, #0x8037e68-0x8037a84-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x70 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0xa0
    add r0, #0x11
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037a9a-2] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    ldrh r0, [r7,#0x18]
    ldr r1, [pc, #0x8037ae4-0x8037aa4-4] // dword_201A000
    ldr r2, [pc, #0x8037e68-0x8037aa6-2] // unk_2016600
    ldr r3, [pc, #0x8037aec-0x8037aa8-4] // dword_8036C70+8
    ldr r4, [pc, #0x8037ae8-0x8037aaa-2] // =0x6006200
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0xa0
    add r0, #0xf
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037ab8-4] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x18]
    ldr r1, [pc, #0x8037ae4-0x8037ac0-4] // dword_201A000
    ldr r2, [pc, #0x8037e68-0x8037ac2-2] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0xa0
    add r0, #0x19
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037ad0-4] // unk_2016600
    bl sub_8038198
    pop {r4-r7,pc}
.thumb
sub_8037AD8:
    push {r0,lr}
    ldr r0, [pc, #0x8037af0-0x8037ada-2] // byte_8037AF4
    ldrb r4, [r7,#4]
    ldrb r4, [r0,#(byte_8037AF5 - 0x8037af4)]
    pop {r0,pc}
    .balign 4, 0x00
off_8037AE4:    .word dword_201A000
dword_8037AE8:    .word 0x6006200
off_8037AEC:    .word dword_8036C70+8
off_8037AF0:    .word byte_8037AF4
byte_8037AF4:    .byte 0xE
byte_8037AF5:    .byte 0xD
    .balign 4, 0x00
// end of function sub_8037AD8

.thumb
sub_8037AF8:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037e68-0x8037afe-2] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037b0c-4] // unk_2016600
    mov r3, #7
    bl sub_8037ED4
// end of function sub_8037AF8

    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037b16-2] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037b18-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x70 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #6
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037b2e-2] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037b38-4] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037b3a-2] // unk_2016600
    ldr r3, [pc, #0x8037bcc-0x8037b3c-4] // dword_8036C70+64
    ldr r4, [pc, #0x8037bc8-0x8037b3e-2] // =0x6006600
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #4
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037b4c-4] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037b54-4] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037b56-2] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #0xe
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037b64-4] // unk_2016600
    bl sub_8038198
    b locret_8037BC2
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037b6e-2] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037b70-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x70 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #3
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037b86-2] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037b90-4] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037b92-2] // unk_2016600
    ldr r3, [pc, #0x8037bcc-0x8037b94-4] // dword_8036C70+64
    ldr r4, [pc, #0x8037bc8-0x8037b96-2] // =0x6006600
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037ba4-4] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x22]
    ldr r1, [pc, #0x8037bc4-0x8037bac-4] // unk_201A800
    ldr r2, [pc, #0x8037e68-0x8037bae-2] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x83
    add r0, #0xb
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037bbc-4] // unk_2016600
    bl sub_8038198
locret_8037BC2:
    pop {r4-r7,pc}
off_8037BC4:    .word unk_201A800
dword_8037BC8:    .word 0x6006600
off_8037BCC:    .word dword_8036C70+0x40
.thumb
sub_8037BD0:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037e68-0x8037bd6-2] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037be4-4] // unk_2016600
    mov r3, #5
    bl sub_8037ED4
// end of function sub_8037BD0

    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037bee-2] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037bf0-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x50 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #6
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c06-2] // unk_2016600
    mov r3, #0xa
    bl sub_8038098
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037c10-4] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037c12-2] // unk_2016600
    ldr r3, [pc, #0x8037ca4-0x8037c14-4] // dword_8036C70+120
    ldr r4, [pc, #0x8037ca0-0x8037c16-2] // =0x6006A00
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #4
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c24-4] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037c2c-4] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037c2e-2] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #0xe
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c3c-4] // unk_2016600
    bl sub_8038198
    b locret_8037C9A
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037c46-2] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037c48-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x50 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #3
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c5e-2] // unk_2016600
    mov r3, #0xa
    bl sub_8038098
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037c68-4] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037c6a-2] // unk_2016600
    ldr r3, [pc, #0x8037ca4-0x8037c6c-4] // dword_8036C70+120
    ldr r4, [pc, #0x8037ca0-0x8037c6e-2] // =0x6006A00
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c7c-4] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x2c]
    ldr r1, [pc, #0x8037c9c-0x8037c84-4] // unk_201B000
    ldr r2, [pc, #0x8037e68-0x8037c86-2] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x71 
    add r0, #0xb
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037c94-4] // unk_2016600
    bl sub_8038198
locret_8037C9A:
    pop {r4-r7,pc}
off_8037C9C:    .word unk_201B000
dword_8037CA0:    .word 0x6006A00
off_8037CA4:    .word dword_8036C70+0x78
function_chunks__function_chunks_loc_8037CA8:
    push {r4-r7,lr}
    add r7, r5, #0
    ldr r0, [r7,#0x50]
    cmp r0, #0x38 
    bne loc_8037D22
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037e68-0x8037cb4-4] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037cc2-2] // unk_2016600
    mov r3, #7
    bl sub_8037ED4
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037ccc-4] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037cce-2] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #6
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037ce4-4] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037cee-2] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037cf0-4] // unk_2016600
    ldr r3, [pc, #0x8037d84-0x8037cf2-2] // dword_8036C70+176
    ldr r4, [pc, #0x8037d80-0x8037cf4-4] // =0x6006E00
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #4
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037d02-2] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037d0a-2] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037d0c-4] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #0xe
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037d1a-2] // unk_2016600
    bl sub_8038198
    b locret_8037D78
loc_8037D22:
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037d24-4] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037d26-2] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #3
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037d3c-4] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037d46-2] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037d48-4] // unk_2016600
    ldr r3, [pc, #0x8037d84-0x8037d4a-2] // dword_8036C70+176
    ldr r4, [pc, #0x8037d80-0x8037d4c-4] // =0x6006E00
    bl sub_80380C8
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037d5a-2] // unk_2016600
    bl sub_803811C
    ldrh r0, [r7,#0x36]
    ldr r1, [pc, #0x8037d7c-0x8037d62-2] // dword_201B800
    ldr r2, [pc, #0x8037e68-0x8037d64-4] // unk_2016600
    bl sub_8038148
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #0xb
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037d72-2] // unk_2016600
    bl sub_8038198
locret_8037D78:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8037D7C:    .word dword_201B800
dword_8037D80:    .word 0x6006E00
off_8037D84:    .word dword_8036C70+0xB0
.thumb
sub_8037D88:
    push {r4-r7,lr}
    add r7, r5, #0
    ldr r0, [r7,#0x54]
    cmp r0, #0x1e
    bne loc_8037DD2
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e68-0x8037d96-2] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0x4d 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037da4-4] // unk_2016600
    mov r3, #7
    bl sub_8037ED4
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e6c-0x8037db0-4] // dword_201C000
    ldr r2, [pc, #0x8037e68-0x8037db2-2] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x4d 
    add r0, #6
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037dc8-4] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    b locret_8037DF6
loc_8037DD2:
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e6c-0x8037dd6-2] // dword_201C000
    ldr r2, [pc, #0x8037e68-0x8037dd8-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x4d 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037dee-2] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
locret_8037DF6:
    pop {r4-r7,pc}
// end of function sub_8037D88

.thumb
sub_8037DF8:
    push {r4-r7,lr}
    add r7, r5, #0
    ldr r0, [r7,#0x54]
    cmp r0, #0x1e
    bne loc_8037E42
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e68-0x8037e06-2] // unk_2016600
    bl sub_8037E70
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037e14-4] // unk_2016600
    mov r3, #7
    bl sub_8037ED4
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e6c-0x8037e20-4] // dword_201C000
    ldr r2, [pc, #0x8037e68-0x8037e22-2] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #6
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037e38-4] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
    b locret_8037E66
loc_8037E42:
    mov r0, #0x40 
    ldrh r0, [r7,r0]
    ldr r1, [pc, #0x8037e6c-0x8037e46-2] // dword_201C000
    ldr r2, [pc, #0x8037e68-0x8037e48-4] // unk_2016600
    mov r3, #0xe
    bl sub_8037AD8
    mov r5, #0x71 
    bl sub_8037F00
    ldrb r0, [r7,#0xc]
    sub r0, #0x5f 
    add r0, #1
    mov r1, #4
    ldr r2, [pc, #0x8037e68-0x8037e5e-2] // unk_2016600
    mov r3, #0xe
    bl sub_8038098
locret_8037E66:
    pop {r4-r7,pc}
off_8037E68:    .word unk_2016600
off_8037E6C:    .word dword_201C000
// end of function sub_8037DF8

.thumb
sub_8037E70:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    push {r0,r1}
    ldr r0, [pc, #0x8037ecc-0x8037e78-4] // unk_8036C24
    mov r2, #0x54 
    bl f900_800097A
    pop {r5,r7}
    ldr r4, [pc, #0x8037ed0-0x8037e82-2] // =0x201
    mov r6, #0
loc_8037E86:
    mov r0, #0
    mov r8, r0
    add r0, r5, #0
    add r0, #1
    bl fA00_8000A30
    mov r2, #8
loc_8037E94:
    add r3, r0, #0
    lsr r3, r2
    mov r1, #0xf
    and r1, r3
    mov r3, r8
    tst r3, r3
    bne loc_8037EAA
    tst r1, r1
    beq loc_8037EB4
    mov r3, #1
    mov r8, r3
loc_8037EAA:
    lsl r1, r1, #1
    add r1, r1, r4
    strh r1, [r7]
    add r1, #1
    strh r1, [r7,#6]
loc_8037EB4:
    add r7, #2
    sub r2, #4
    bge loc_8037E94
    add r7, #6
    add r5, #1
    add r6, #1
    cmp r6, #7
    blt loc_8037E86
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8037ECC:    .word unk_8036C24
dword_8037ED0:    .word 0x202
// end of function sub_8037E70

.thumb
sub_8037ED4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34]
    ldr r6, [r5,#0x58]
    mov r4, #1
    tst r6, r4
    beq loc_8037EF0
    lsl r5, r3, #1
    add r3, r2, #0
    mov r2, #2
    mov r4, #3
    bl sub_8001DF8
    b locret_8037EFC
loc_8037EF0:
    lsl r5, r3, #1
    add r3, r2, #0
    mov r2, #2
    mov r4, #3
    bl sub_8001DDC
locret_8037EFC:
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8037ED4

.thumb
sub_8037F00:
    push {r4-r7,lr}
    mov r6, r8
    mov r7, r9
    push {r6,r7}
    mov r8, r5
    lsr r5, r5, #4
    mov r9, r5
    mov r5, r8
    lsl r5, r5, #0x1c
    lsr r5, r5, #0x1c
    mov r8, r5
    ldr r6, [pc, #0x8038060-0x8037f16-2] // =0x200
    lsl r3, r3, #0xc
    lsl r4, r4, #0xc
    orr r3, r6
    orr r4, r6
    sub sp, sp, #8
    str r3, [sp]
    str r4, [sp,#4]
    lsl r0, r0, #2
    add r5, r0, r1
    mov r3, #0x10
    add r3, r3, r2
    mov r4, #0
loc_8037F30:
    ldr r6, [sp]
    ldr r0, [pc, #0x8038048-0x8037f32-2] // dword_803804C
    ldrh r1, [r5]
    tst r1, r1
    bne loc_8037F46
    mov r7, r8
    tst r7, r7
    bne loc_8037F98
loc_8037F40:
    ldr r0, [pc, #0x8038054-0x8037f40-4] // off_8038058
    mov r1, #0x7c 
    b loc_8037F82
loc_8037F46:
    push {r0}
    add r0, r1, #0
    bl sub_800659E
    pop {r0}
    beq loc_8037F7A
    push {r2}
    mov r2, r10
    ldr r2, [r2,#0x34]
    mov r0, #1
    ldr r1, [r2,#0x58]
    orr r1, r0
    str r1, [r2,#0x58]
    mov r0, #0
    str r0, [r2,#0x44]
    str r0, [r2,#0x48]
    str r0, [r2,#0x4c]
    str r0, [r2,#0x50]
    str r0, [r2,#0x54]
    strh r0, [r2,#0x12]
    strh r0, [r2,#0x1c]
    strh r0, [r2,#0x26]
    strh r0, [r2,#0x30]
    strh r0, [r2,#0x3a]
    pop {r2}
    b loc_8037F40
loc_8037F7A:
    ldrb r7, [r5,#2]
    cmp r7, #1
    ble loc_8037F82
    ldr r6, [sp,#4]
loc_8037F82:
    lsr r7, r1, #8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    bl sub_8038064
    b loc_8037FAE
loc_8037F98:
    mov r1, #0
    str r1, [r2]
    str r1, [r2,#4]
    str r1, [r2,#8]
    str r1, [r2,#0xc]
    str r1, [r3]
    str r1, [r3,#4]
    str r1, [r3,#8]
    str r1, [r3,#0xc]
    add r2, #0x10
    add r3, #0x10
loc_8037FAE:
    add r5, #4
    add r2, #0x10
    add r3, #0x10
    add r4, #1
    mov r0, r9
    cmp r4, r0
    blt loc_8037F30
    add sp, sp, #8
    pop {r6,r7}
    mov r8, r6
    mov r9, r7
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8037F00

    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    mov r8, r5
    ldr r6, [pc, #0x8038060-0x8037fd0-4] // =0x200
    lsl r3, r3, #0xc
    lsl r4, r4, #0xc
    orr r3, r6
    orr r4, r6
    sub sp, sp, #8
    str r3, [sp]
    str r4, [sp,#4]
    lsl r0, r0, #2
    add r5, r0, r1
    mov r3, #0x10
    add r3, r3, r2
    mov r4, #0
loc_8037FEA:
    ldr r6, [sp]
    ldr r0, [pc, #0x8038048-0x8037fec-4] // dword_803804C
    ldrh r1, [r5]
    tst r1, r1
    bne loc_8038000
    mov r7, r8
    tst r7, r7
    bne loc_803801E
    ldr r0, [pc, #0x8038054-0x8037ffa-2] // off_8038058
    mov r1, #0x7c 
    b loc_8038008
loc_8038000:
    ldrb r7, [r5,#2]
    cmp r7, #1
    ble loc_8038008
    ldr r6, [sp,#4]
loc_8038008:
    lsr r7, r1, #8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    bl sub_8038064
    b loc_8038034
loc_803801E:
    mov r1, #0
    str r1, [r2]
    str r1, [r2,#4]
    str r1, [r2,#8]
    str r1, [r2,#0xc]
    str r1, [r3]
    str r1, [r3,#4]
    str r1, [r3,#8]
    str r1, [r3,#0xc]
    add r2, #0x10
    add r3, #0x10
loc_8038034:
    add r5, #4
    add r2, #0x10
    add r3, #0x10
    add r4, #1
    cmp r4, #5
    blt loc_8037FEA
    add sp, sp, #8
    pop {r7}
    mov r8, r7
    pop {r4-r7,pc}
off_8038048:    .word dword_803804C
dword_803804C:    .word 0x8745E98, 0x8746830
off_8038054:    .word off_8038058
off_8038058:    .word unk_86DE644
    .word unk_86DE644
off_8038060:    .word 0x200
.thumb
sub_8038064:
    push {r4,r6,r7,lr}
    mov r7, #0
loc_8038068:
    ldrb r1, [r0]
    cmp r1, #0xe5
    bge loc_8038084
    lsl r1, r1, #1
    add r4, r6, #0
    add r4, r4, r1
    strh r4, [r2]
    add r4, #1
    strh r4, [r3]
    add r2, #2
    add r3, #2
    add r0, #1
    add r7, #1
    b loc_8038068
loc_8038084:
    cmp r7, #8
    bge locret_8038096
    mov r4, #0
    strh r4, [r2]
    strh r4, [r3]
    add r2, #2
    add r3, #2
    add r7, #1
    b loc_8038084
locret_8038096:
    pop {r4,r6,r7,pc}
// end of function sub_8038064

.thumb
sub_8038098:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34]
    ldr r6, [r5,#0x58]
    mov r4, #1
    tst r6, r4
    beq loc_80380B6
    add r6, r3, #0
    add r3, r2, #0
    mov r2, #2
    mov r4, #8
    add r5, r6, #0
    bl sub_8001DF8
    b locret_80380C4
loc_80380B6:
    add r6, r3, #0
    add r3, r2, #0
    mov r2, #2
    mov r4, #8
    add r5, r6, #0
    bl sub_8001DDC
locret_80380C4:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8038098

.thumb
sub_80380C8:
    push {r4-r7,lr}
    push {r0-r2}
    add r0, r3, #0
    add r1, r2, #0
    mov r2, #0x38 
    bl f900_800098C
    pop {r0-r2}
    lsl r0, r0, #2
    add r5, r0, r1
    mov r7, #0
    add r6, r4, #0
loc_80380E0:
    ldrh r0, [r5]
    tst r0, r0
    bne loc_80380EE
    mov r4, #0
    str r4, [r2]
    str r4, [r2,#4]
    b loc_803810E
loc_80380EE:
    ldrb r1, [r5,#2]
    tst r1, r1
    beq loc_80380FC
    mov r4, #0
    str r4, [r2]
    str r4, [r2,#4]
    b loc_803810E
loc_80380FC:
    push {r2}
    bl sub_8019010
    ldr r0, [r0,#0x20]
    add r1, r6, #0
    mov r2, #0x80
    bl f900_800098C
    pop {r2}
loc_803810E:
    add r5, #4
    add r6, #0x80
    add r2, #8
    add r7, #1
    cmp r7, #7
    blt loc_80380E0
    pop {r4-r7,pc}
// end of function sub_80380C8

.thumb
sub_803811C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34]
    ldr r6, [r5,#0x58]
    mov r4, #1
    tst r6, r4
    beq loc_8038138
    add r3, r2, #0
    mov r2, #2
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DF8
    b locret_8038144
loc_8038138:
    add r3, r2, #0
    mov r2, #2
    mov r4, #2
    mov r5, #0xe
    bl sub_8001DDC
locret_8038144:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_803811C

.thumb
sub_8038148:
    push {r4-r7,lr}
    lsl r0, r0, #2
    add r5, r0, r1
    ldr r6, [pc, #0x8038194-0x803814e-2] // =0x3A0
    mov r7, #0
loc_8038152:
    ldrh r0, [r5]
    tst r0, r0
    bne loc_8038164
    mov r4, #0
    str r4, [r2]
    str r4, [r2,#4]
    str r4, [r2,#8]
    strh r4, [r2,#0xa]
    b loc_8038186
loc_8038164:
    push {r2}
    bl sub_8019010
    pop {r2}
    ldrb r0, [r0,#5]
    lsl r4, r0, #1
    add r0, r0, r4
    mov r4, #0
    strh r4, [r2]
    strh r4, [r2,#2]
    strh r4, [r2,#4]
    add r4, r6, r0
    strh r4, [r2,#6]
    add r4, #1
    strh r4, [r2,#8]
    add r4, #1
    strh r4, [r2,#0xa]
loc_8038186:
    add r5, #4
    add r2, #0xc
    add r7, #1
    cmp r7, #7
    blt loc_8038152
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8038194:    .word 0x3A0
// end of function sub_8038148

.thumb
sub_8038198:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34]
    ldr r6, [r5,#0x58]
    mov r4, #1
    tst r6, r4
    beq loc_80381B4
    add r3, r2, #0
    mov r2, #2
    mov r4, #3
    mov r5, #0xe
    bl sub_8001DF8
    b locret_80381C0
loc_80381B4:
    add r3, r2, #0
    mov r2, #2
    mov r4, #3
    mov r5, #0xe
    bl sub_8001DDC
locret_80381C0:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8038198

.thumb
sub_80381C4:
    push {r5,lr}
    add r7, r5, #0
    ldrb r0, [r7,#0xc]
    sub r0, #0x94
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8038240-0x80381d0-4] // dword_8036C70+232
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
// end of function sub_80381C4

    ldrb r0, [r7,#0xc]
    sub r0, #0x82
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8038244-0x80381e2-2] // dword_8036C70+268
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    ldrb r0, [r7,#0xc]
    sub r0, #0x70 
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8038248-0x80381f4-4] // dword_8036C70+304
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    ldr r0, [r7,#0x30]
    tst r0, r0
    bne loc_8038218
    ldrb r0, [r7,#0xc]
    sub r0, #0x5e 
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8038250-0x803820c-4] // dword_8036C70+376
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    b locret_803823C
loc_8038218:
    ldrb r0, [r7,#0xc]
    sub r0, #0x5e 
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x803824c-0x8038220-4] // dword_8036C70+340
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
    ldrb r0, [r7,#0xc]
    sub r0, #0x4c 
    mov r1, #2
    mov r2, #3
    ldr r3, [pc, #0x8038250-0x8038232-2] // dword_8036C70+376
    mov r4, #9
    mov r5, #2
    bl sub_8001DDC
locret_803823C:
    pop {r5,pc}
    .byte 0, 0
off_8038240:    .word dword_8036C70+0xE8
off_8038244:    .word dword_8036C70+0x10C
off_8038248:    .word dword_8036C70+0x130
off_803824C:    .word dword_8036C70+0x154
off_8038250:    .word dword_8036C70+0x178
.thumb
sub_8038254:
    push {r5,lr}
    bl sub_8054018
    bl sub_8054054
    ldrb r3, [r5,#0xe]
    cmp r3, #0
    beq locret_8038270
    mov r3, #0
    strb r3, [r5,#0xe]
    bl sub_80375C4
    bl sub_80381C4
locret_8038270:
    pop {r5,pc}
    .balign 4, 0x00
// end of function sub_8038254

    push {r5,lr}
    bl sub_8037A64
    bl sub_8037AF8
    pop {r5,pc}
    push {r5,lr}
    bl sub_8037A64
    bl sub_8037AF8
    bl sub_8037BD0
    pop {r5,pc}
    push {r5,lr}
    bl sub_8037AF8
    bl sub_8037BD0
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0x20
    .byte 0xBD
    push {r5,lr}
    bl sub_8037BD0
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0xFF
    .byte 0xF7
    .byte 0x6D 
    .byte 0xFD
    pop {r5,pc}
    push {r5,lr}
    bl function_chunks__function_chunks_loc_8037CA8
    .byte 0xFF
    .byte 0xF7
    .byte 0x67 
    .byte 0xFD
    pop {r5,pc}
.thumb
sub_80382BC:
    push {r5,lr}
    mov r0, #0x52 
    ldrh r1, [r5,#0x14]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xf]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xf]
    mov r0, #0xe0
    mov r1, #0x24 
    ldrh r2, [r5,#0x12]
    ldrh r3, [r5,#0x18]
    mov r4, #7
    mov r6, #2
    mov r7, #0x64 
    bl sub_8038510
    mov r0, #0xe1
    mov r1, #0x15
    mov r2, #1
    bl sub_8038550
// end of function sub_80382BC

    pop {r5,pc}
    .byte 0, 0
.thumb
sub_80382F0:
    push {r5,lr}
    mov r0, #0x52 
    ldrh r1, [r5,#0x1e]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xf]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xf]
    mov r0, #0xe0
    mov r1, #0x24 
    ldrh r2, [r5,#0x1c]
    ldrh r3, [r5,#0x22]
    mov r4, #7
    mov r6, #2
    mov r7, #0x64 
    bl sub_8038510
    mov r0, #0x56 
    mov r1, #0x15
    mov r2, #0
    bl sub_8038550
// end of function sub_80382F0

    mov r0, #0xe1
    mov r1, #0x15
    mov r2, #1
    bl sub_8038550
    pop {r5,pc}
.thumb
sub_803832C:
    push {r5,lr}
    mov r0, #0x52 
    ldrh r1, [r5,#0x28]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xf]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xf]
    mov r0, #0xe0
    mov r1, #0x24 
    ldrh r2, [r5,#0x26]
    ldrh r3, [r5,#0x2c]
    mov r4, #7
    mov r6, #2
    mov r7, #0x64 
    bl sub_8038510
    mov r0, #0x56 
    mov r1, #0x15
    mov r2, #0
    bl sub_8038550
// end of function sub_803832C

    mov r0, #0xe1
    mov r1, #0x15
    mov r2, #1
    bl sub_8038550
    pop {r5,pc}
.thumb
sub_8038368:
    push {r5,lr}
    mov r0, #0x52 
    ldrh r1, [r5,#0x32]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xf]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xf]
    mov r0, #0xe0
    mov r1, #0x24 
    ldrh r2, [r5,#0x30]
    ldrh r3, [r5,#0x36]
    mov r4, #7
    mov r6, #2
    mov r7, #0x64 
    bl sub_8038510
    mov r0, #0x56 
    mov r1, #0x15
    mov r2, #0
    bl sub_8038550
// end of function sub_8038368

    mov r0, #0xe1
    mov r1, #0x15
    mov r2, #1
    bl sub_8038550
    pop {r5,pc}
.thumb
sub_80383A4:
    push {r5,lr}
    mov r0, #0x52 
    ldrh r1, [r5,#0x3c]
    lsl r1, r1, #4
    add r1, #0x20 
    ldrb r2, [r5,#0xf]
    mov r3, #0
    bl loc_80383F4
    strb r2, [r5,#0xf]
    mov r0, #0xe0
    mov r1, #0x24 
    ldrh r2, [r5,#0x3a]
    mov r3, #0x40 
    ldrh r3, [r5,r3]
    mov r4, #7
    mov r6, #2
    mov r7, #0x64 
    bl sub_8038510
    mov r0, #0x56 
    mov r1, #0x15
    mov r2, #0
    bl sub_8038550
// end of function sub_80383A4

    ldr r0, [r5,#0x54]
    tst r0, r0
    beq locret_80383E4
    mov r0, #0x42 
    mov r1, #0x11
    bl sub_8038610
locret_80383E4:
    pop {r5,pc}
    .balign 4, 0x00
    ldr r4, [pc, #0x803844c-0x80383e8-4] // dword_8038450
    b loc_80383FA
.thumb
sub_80383EC:
    ldr r4, [pc, #0x8038448-0x80383ec-4] // dword_8038450
    b loc_80383FA
// end of function sub_80383EC

.thumb
sub_80383F0:
    ldr r4, [pc, #0x8038444-0x80383f0-4] // word_80384E8
    b loc_80383FA
loc_80383F4:
    ldr r4, [pc, #0x803843c-0x80383f4-4] // dword_803849C
    b loc_80383FA
    ldr r4, [pc, #0x8038440-0x80383f8-4] // dword_803849C
loc_80383FA:
    tst r3, r3
    beq loc_803840A
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #2
    tst r6, r7
    beq locret_8038434
loc_803840A:
    lsl r0, r0, #0x10
    orr r0, r1
    add r3, r4, #0
    lsl r4, r2, #1
    add r2, #1
    ldrh r1, [r3,r4]
    cmp r1, #0
    bne loc_803841E
    mov r2, #1
    ldrh r1, [r3]
loc_803841E:
    push {r2,lr}
    ldr r2, [pc, #0x8038438-0x8038420-4] // =0x40000000
    orr r0, r2
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #2
    bl sub_8025BD8
    pop {r2,pc}
locret_8038434:
    mov pc, lr
    .balign 4, 0x00
dword_8038438:    .word 0x40000000
off_803843C:    .word dword_803849C
dword_8038440:    .word 0x80384C2
off_8038444:    .word word_80384E8
dword_8038448:    .word 0x8038476
off_803844C:    .word dword_8038450
dword_8038450:    .word 0x20002, 0x20002, 0x20002, 0x60006, 0x60006, 0x60006
    .word 0xA000A, 0xA000A, 0xA000A, 0xA0020000, 0xA002A002, 0xA002A002
    .word 0xA006A002, 0xA006A006, 0xA006A006, 0xA00AA006, 0xA00AA00A, 0xA00AA00A
    .word 0xA00A
dword_803849C:    .word 0xB002B002, 0xB002B002, 0xB002B002, 0xB006B006, 0xB006B006
    .word 0xB006B006, 0xB00AB00A, 0xB00AB00A, 0xB00AB00A, 0xE00D0000
    .word 0xE00DE00D, 0xE00DE00D, 0xE011E00D, 0xE011E011, 0xE011E011
    .word 0xE015E011, 0xE015E015, 0xE015E015, 0xE015
word_80384E8:    .hword 0xA142
    .hword 0xA142
    .word 0xA142A142, 0xA142A142, 0xA146A146, 0xA146A146, 0xA146A146
    .word 0xA14AA14A, 0xA14AA14A, 0xA14AA14A, 0x0
// end of function sub_80383F0

.thumb
sub_8038510:
    push {lr}
    cmp r2, r4
    ble locret_8038546
    sub r2, r2, r4
    push {r0,r1,r3}
    add r0, r7, #0
    add r1, r2, #0
    lsl r0, r0, #0x10
    lsl r1, r1, #4
    svc 6
    add r2, r0, #0
    pop {r0,r1,r3}
    mul r2, r3
    lsr r2, r2, #0xc
    add r1, r1, r2
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x8038548-0x8038532-2] // =0x0
    orr r0, r1
    ldr r1, [pc, #0x803854c-0x8038536-2] // =0xB001
    add r2, r6, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_8025BD8
locret_8038546:
    pop {pc}
dword_8038548:    .word 0x0
dword_803854C:    .word 0xB001
// end of function sub_8038510

.thumb
sub_8038550:
    ldr r3, [pc, #0x8038588-0x8038550-4] // loc_8038590
    b loc_8038556
    ldr r3, [pc, #0x803858c-0x8038554-4] // loc_80385D0
loc_8038556:
    push {r4-r7,lr}
    lsl r4, r2, #1
    lsl r0, r0, #0x10
    orr r0, r1
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    ldrh r1, [r3,r6]
    add r1, r1, r4
    ldr r2, [pc, #0x8038584-0x803856e-2] // =0x0
    orr r0, r2
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8038550

    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8038584:    .word 0x0
off_8038588:    .word loc_8038590
off_803858C:    .word loc_80385D0
loc_8038590:
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
loc_80385D0:
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x38
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
    add sp, sp, #0x3c
.thumb
sub_8038610:
    push {r4-r7,lr}
    ldr r3, [pc, #0x8038640-0x8038612-2] // loc_8038644
    lsl r0, r0, #0x10
    orr r0, r1
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    ldrh r1, [r3,r6]
    ldr r2, [pc, #0x803863c-0x8038626-2] // =0x40000000
    orr r0, r2
    mov r2, #1
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_8025BD8
// end of function sub_8038610

    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803863C:    .word 0x40000000
off_8038640:    .word loc_8038644
loc_8038644:
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x68
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
    add sp, sp, #0x78
.thumb
sub_8038684:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_803869C
    mov r0, #0x38 
    bl sub_80388CC
    b locret_80386E2
loc_803869C:
    ldrh r0, [r7,#4]
    mov r1, #0x10
    tst r1, r0
    beq loc_80386AE
    mov r0, #8
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_80386E2
loc_80386AE:
    ldrh r0, [r5,#0x12]
    tst r0, r0
    beq locret_80386E2
    ldrh r0, [r7,#4]
    ldrh r1, [r7]
    ldr r2, [pc, #0x80386e4-0x80386b8-4] // =0x300
    tst r0, r2
    beq loc_80386CE
    mov r2, #0xc0
    bic r0, r2
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
    b locret_80386E2
loc_80386CE:
    tst r1, r2
    bne locret_80386E2
    mov r2, #0xc0
    tst r0, r2
    beq locret_80386E2
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
locret_80386E2:
    pop {r5,pc}
off_80386E4:    .word 0x300
// end of function sub_8038684

.thumb
sub_80386E8:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_8038700
    mov r0, #0x3c 
    bl sub_80388CC
    b locret_8038756
loc_8038700:
    ldrh r0, [r7,#4]
    mov r1, #0x10
    tst r1, r0
    beq loc_8038712
    mov r0, #0x14
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_8038756
loc_8038712:
    mov r1, #0x20 
    tst r1, r0
    beq loc_8038722
    mov r0, #0xc
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_8038756
loc_8038722:
    ldrh r0, [r5,#0x1c]
    tst r0, r0
    beq locret_8038756
    ldrh r0, [r7,#4]
    ldrh r1, [r7]
    ldr r2, [pc, #0x8038758-0x803872c-4] // =0x300
    tst r0, r2
    beq loc_8038742
    mov r2, #0xc0
    bic r0, r2
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
    b locret_8038756
loc_8038742:
    tst r1, r2
    bne locret_8038756
    mov r2, #0xc0
    tst r0, r2
    beq locret_8038756
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
locret_8038756:
    pop {r5,pc}
off_8038758:    .word 0x300
// end of function sub_80386E8

.thumb
sub_803875C:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_8038774
    mov r0, #0x40 
    bl sub_80388CC
    b locret_80387D6
loc_8038774:
    ldrh r0, [r7,#4]
    mov r1, #0x10
    tst r1, r0
    beq loc_8038792
    ldr r0, [r5,#0x30]
    tst r0, r0
    bne loc_8038788
    mov r0, #0x4c 
    strb r0, [r5,#1]
    b loc_803878C
loc_8038788:
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_803878C:
    bl sub_8031650
    b locret_80387D6
loc_8038792:
    mov r1, #0x20 
    tst r1, r0
    beq loc_80387A2
    mov r0, #0x18
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_80387D6
loc_80387A2:
    ldrh r0, [r5,#0x26]
    tst r0, r0
    beq locret_80387D6
    ldrh r0, [r7,#4]
    ldrh r1, [r7]
    ldr r2, [pc, #0x80387d8-0x80387ac-4] // =0x300
    tst r0, r2
    beq loc_80387C2
    mov r2, #0xc0
    bic r0, r2
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
    b locret_80387D6
loc_80387C2:
    tst r1, r2
    bne locret_80387D6
    mov r2, #0xc0
    tst r0, r2
    beq locret_80387D6
    mov r1, #7
    mov r2, #0
    bl sub_80388E0
    strb r7, [r5,#0xe]
locret_80387D6:
    pop {r5,pc}
off_80387D8:    .word 0x300
// end of function sub_803875C

.thumb
sub_80387DC:
    push {r5,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0xa
    tst r1, r0
    beq loc_80387F4
    mov r0, #0x44 
    bl sub_80388CC
    b locret_803884A
loc_80387F4:
    ldrh r0, [r7,#4]
    mov r1, #0x10
    tst r1, r0
    beq loc_8038806
    mov r0, #0x2c 
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_803884A
loc_8038806:
    mov r1, #0x20 
    tst r1, r0
    beq loc_8038816
    mov r0, #0x24 
    strb r0, [r5,#1]
    bl sub_8031650
    b locret_803884A
loc_8038816:
    ldrh r0, [r5,#0x30]
    tst r0, r0
    beq locret_803884A
    ldrh r0, [r7,#4]
    ldrh r1, [r7]
    tst r0, r2

