# execute this file after pt.py in IDA to define the environmental variables
# for pt there.

# set up a new environment
pt.clrenv()

## ROM Paths
pt.env(ROMPath= '')

## search utils
pt.env(compareBinPath= '')


## disassembly utils
# TODO set this to your project path relative to your analysis idb path
pt.env(dismProjPath= '../../Mods/GBA/exe4rs/')
pt.env(asmPath= 'asm/')
pt.env(externsPath= 'externs/')
pt.env(asmFiles={
    'start':    (0x08000000, 0x0800029C),
    'main':     (0x0800029C, 0x08000550),
    'f500':     (0x08000550, 0x08000788),
    'f800':     (0x08000788, 0x08000904),
    'f900':     (0x08000904, 0x08000A1C),
    'fA00':     (0x08000A1C, 0x08000C98),
})

print("Environment set!")
