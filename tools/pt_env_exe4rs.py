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
pt.env(dismProjPath= './GameDev/Disassembly/exe4rs/')
pt.env(asmPath= 'asm/')
pt.env(binPath='bin/')
pt.env(incPath='inc/')
pt.env(externsPath= 'externs/')
pt.env(asmFiles={
    # [sect0 progress ----------------------]
    # compile   | 49.93% (0x7FD00/0x100000)
    # checksum  | 49.93% (0x7FD00/0x100000)
    'sect0/asm00':        (0x8000000, 0x8017C08),
    'sect0/asm01':        (0x8019010, 0x801972C),
    'sect0/asm02':        (0x801DA08, 0x8045538),
    'sect0/asm03':        (0x8046C98, 0x80515B8),
    'sect0/asm04':        (0x8053980, 0x805420C),
    'sect0/asm05':        (0x8059284, 0x805937C),
    'sect0/asm06':        (0x805D4F8, 0x805D63C),
    'sect0/asm07':        (0x8069450, 0x8069648),
    'sect0/asm08':        (0x806A87C, 0x806AB48),
    'sect0/asm09':        (0x806D928, 0x806DAD0),
    'sect0/asm10':        (0x806FE20, 0x8071618),
    'sect0/asm11':        (0x8073910, 0x8073C1C),
    'sect0/asm12':        (0x80758A4, 0x8075C68),
    'sect0/asm13':        (0x80772DA, 0x807750C),
    'sect0/asm14':        (0x807990C, 0x8079964),
    'sect0/asm15':        (0x807CB92, 0x807CD6C),
    'sect0/asm16':        (0x807FD00, 0x807FD58),
    'sect0/asm17':        (0x8082728, 0x80827A8),
    'sect0/asm18':        (0x8085444, 0x8085C70),
    'sect0/asm19':        (0x8086488, 0x80864A8),
    'sect0/asm20':        (0x80886F8, 0x808A1F4),
    'sect0/asm21':        (0x808BFEC, 0x808D668),
    # 'sect1':    (0x08100000, 0x08200000),
    #'sect2':    (0x08200000, 0x08300000),
    #'sect3':    (0x08300000, 0x08400000),
    #'sect4':    (0x08400000, 0x08500000),
    #'sect5':    (0x08500000, 0x08600000),
    #'sect6':    (0x08600000, 0x08700000),
    #'sect7':    (0x08700000, 0x08800000),
})
pt.env(binFiles={
    'rom':                (0x8000000, 0x8800000),
    'sect0/bin00':        (0x8017C08, 0x8019010),
    'sect0/bin01':        (0x801972C, 0x801DA08),
    'sect0/bin02':        (0x8045538, 0x8046C98),
    'sect0/bin03':        (0x80515B8, 0x8053980),
    'sect0/bin04':        (0x805420C, 0x8059284),
    'sect0/bin05':        (0x805937C, 0x805D4F8),
    'sect0/bin06':        (0x805D63C, 0x8069450),
    'sect0/bin07':        (0x8069648, 0x806A87C),
    'sect0/bin08':        (0x806AB48, 0x806D928),
    'sect0/bin09':        (0x806DAD0, 0x806FE20),
    'sect0/bin10':        (0x8071618, 0x8073910),
    'sect0/bin11':        (0x8073C1C, 0x80758A4),
    'sect0/bin12':        (0x8075C68, 0x80772DA),
    'sect0/bin13':        (0x807750C, 0x807990C),
    'sect0/bin14':        (0x8079964, 0x807CB92),
    'sect0/bin15':        (0x807CD6C, 0x807FD00),
    'sect0/bin16':        (0x807FD58, 0x8082728),
    'sect0/bin17':        (0x80827A8, 0x8085444),
    'sect0/bin18':        (0x8085C70, 0x8086488),
    'sect0/bin19':        (0x80864A8, 0x80886F8),
    'sect0/bin20':        (0x808A1F4, 0x808BFEC),
    'sect0/bin21':        (0x808D6A0, 0x808EC68),

    # 'sect0_594AC': (0x080594AC, 0x0805D4F8),
})

print("Environment set!")
