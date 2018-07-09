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
    ## matching test
    # progress:
    # compile: 6.25% (0x10000/0x100000)
    # checksum: 0.32% (0xD20/0x100000)
    'sect0':    (0x08000000, 0x08000000+0x10000),
    #'sect1':    (0x08100000, 0x08200000),
    #'sect2':    (0x08200000, 0x08300000),
    #'sect3':    (0x08300000, 0x08400000),
    #'sect4':    (0x08400000, 0x08500000),
    #'sect5':    (0x08500000, 0x08600000),
    #'sect6':    (0x08600000, 0x08700000),
    #'sect7':    (0x08700000, 0x08800000),
})

print("Environment set!")
