// forward references
.equ dead_80758A4, 0x080758A4
.equ off_80758FC, 0x080758FC
.equ off_8075900, 0x08075900
.equ off_8075904, 0x08075904
.equ off_8075908, 0x08075908
.equ dword_8075948, 0x08075948
.equ sub_8075A0C, 0x08075A0C
.equ off_8075A48, 0x08075A48
.equ off_8075A4C, 0x08075A4C
.equ off_8075B4C, 0x08075B4C
.equ off_8075B50, 0x08075B50
.equ off_8075B90, 0x08075B90
.equ loc_8075BB4, 0x08075BB4
.equ off_8075BC8, 0x08075BC8
.equ off_8075BCC, 0x08075BCC
.equ locret_8075C0C, 0x08075C0C
.equ sub_8075C0E, 0x08075C0E
.equ off_8075C24, 0x08075C24
.equ off_8075C28, 0x08075C28

.thumb
dead_80758A4:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x80758fc-0x80758a8-4] // off_8075564
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
    bl sub_8075A0C
    ldr r0, [pc, #0x8075900-0x80758dc-4] // unk_2038800
    bl sub_80029F8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8075904-0x80758e6-2] // off_8075908
    ldr r0, [r0,r1]
    bl sub_8002A2A
    bl sub_804DF5C
    bl sub_8075C0E
    bl sub_802A28C
    pop {r4-r7,pc}
off_80758FC:    .word off_8075564
off_8075900:    .word unk_2038800
off_8075904:    .word off_8075908
off_8075908:    .word dword_8075948
    .word 0x807594E, 0x8075954, 0x807595A, 0x8075960, 0x8075966
    .word 0x807596C, 0x8075972, 0x8075978, 0x807597E, 0x8075984
    .word 0x807598A, 0x8075990, 0x8075996, 0x807599C, 0x80759A2
dword_8075948:    .word 0x221C6A1C, 0x6A1CFFFF, 0xFFFF221C, 0x221C6A1C, 0x6A1CFFFF
    .word 0xFFFF221C, 0x221C6A1C, 0x6A1CFFFF, 0xFFFF221C, 0x221C6A1C
    .word 0x6A1CFFFF, 0xFFFF221C, 0x221C6A1C, 0x6A1CFFFF, 0xFFFF221C
    .word 0x221C6A1C, 0x6A1CFFFF, 0xFFFF221C, 0x221C6A1C, 0x6A1CFFFF
    .word 0xFFFF221C, 0x221C6A1C, 0x6A1CFFFF, 0xFFFF4E1C, 0x89B500
    .word 0x58404802, 0xFD96F78C, 0xBD00, 0x80759BC, 0x80759FC
    .word 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC
    .word 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC
    .word 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC, 0x80759FC
    .word 0x8070ED4, 0x8070F7C, 0x8071004, 0xFFFFFFFF
// end of function dead_80758A4

.thumb
sub_8075A0C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x8075a48-0x8075a16-2] // off_8075A4C
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
    ldr r0, [pc, #0x8075b4c-0x8075a30-4] // off_8075B50
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r4, r0, #0
    bl sub_8026188
    add r0, r4, #0
    bl sub_80261BA
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8075A48:    .word off_8075A4C
off_8075A4C:    .word nullsub_88+1
    .word sub_8001ECE+1
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800, 0x8001F95, 0x8001ECF, 0x300593D
    .word 0x800, 0x8001F95, 0x8001ECF, 0x300593D, 0x800
    .word 0x8001F95, 0x8001ECF, 0x300593D, 0x800, 0x8001F95
    .word 0x8001ECF, 0x300593D, 0x800, 0x8001F95, 0x8001ECF
    .word 0x300593D, 0x800
off_8075B4C:    .word off_8075B50
off_8075B50:    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
    .word off_8075B90
off_8075B90:    .word off_8619ABC
    .word unk_2012800
    .word 0x600CC80, 0x8619B60, 0x2012C00, 0x3001800, 0x8619D84
    .word 0x3002A50, 0x20
// end of function sub_8075A0C

loc_8075BB4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x40]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x8075bc8-0x8075bbe-2] // off_8075BCC
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8075BC8:    .word off_8075BCC
off_8075BCC:    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
    .word locret_8075C0C+1
locret_8075C0C:
    mov pc, lr
.thumb
sub_8075C0E:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8075c24-0x8075c18-4] // off_8075C28
    ldr r0, [r1,r0]
    bl sub_80034C4
    pop {pc}
    .balign 4, 0x00
off_8075C24:    .word off_8075C28
off_8075C28:    .word dword_8075C68  // <endpool>
// end of function sub_8075C0E

    .word dword_8075C94  // <filepool>
    .word dword_8075CC0
    .word dword_8075CEC
    .word dword_8075D18
    .word dword_8075D44
    .word dword_8075D70
    .word dword_8075D9C
    .word dword_8075DC8
    .word dword_8075DCC
    .word dword_8075DF8
    .word dword_8075E24
    .word dword_8075E28
    .word dword_8075E54
    .word dword_8075E80
    .word dword_8075E98
/*For debugging purposes, connect comment at any range!*/
