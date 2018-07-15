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
pt.env(dismProjPath= 'GameDev/Disassembly/exe4rs/')
pt.env(asmPath= 'asm/')
pt.env(binPath='bin/')
pt.env(incPath='inc/')
pt.env(externsPath= 'externs/')
pt.env(gameFiles={
    # [sect0 progress ----------------------]
    # compile   | 67.91% (0xADDC8/0x100000)
    # checksum  | 67.91% (0xADDC8/0x100000)
    'sect0/asm00.s':        (0x8000000, 0x8017C08),
    'sect0/bin00.bin':      (0x8017C08, 0x8019010),
    'sect0/asm01.s':        (0x8019010, 0x801972C),
    'sect0/bin01.bin':      (0x801972C, 0x801DA08),
    'sect0/asm02.s':        (0x801DA08, 0x8045538),
    'sect0/bin02.bin':      (0x8045538, 0x8046C98),
    'sect0/asm03.s':        (0x8046C98, 0x80515B8),
    'sect0/bin03.bin':      (0x80515B8, 0x8053980),
    'sect0/asm04.s':        (0x8053980, 0x805420C),
    'sect0/bin04.bin':      (0x805420C, 0x8059284),
    'sect0/asm05.s':        (0x8059284, 0x805937C),
    'sect0/bin05.bin':      (0x805937C, 0x805D4F8),
    'sect0/asm06.s':        (0x805D4F8, 0x805D63C),
    'sect0/bin06.bin':      (0x805D63C, 0x8069450),
    'sect0/asm07.s':        (0x8069450, 0x8069648),
    'sect0/bin07.bin':      (0x8069648, 0x806A87C),
    'sect0/asm08.s':        (0x806A87C, 0x806AB48),
    'sect0/bin08.bin':      (0x806AB48, 0x806D928),
    'sect0/asm09.s':        (0x806D928, 0x806DAD0),
    'sect0/bin09.bin':      (0x806DAD0, 0x806FE20),
    'sect0/asm10.s':        (0x806FE20, 0x8071618),
    'sect0/bin10.bin':      (0x8071618, 0x8073910),
    'sect0/asm11.s':        (0x8073910, 0x8073C1C),
    'sect0/bin11.bin':      (0x8073C1C, 0x80758A4),
    'sect0/asm12.s':        (0x80758A4, 0x8075C68),
    'sect0/bin12.bin':      (0x8075C68, 0x80772DA),
    'sect0/asm13.s':        (0x80772DA, 0x807750C),
    'sect0/bin13.bin':      (0x807750C, 0x807990C),
    'sect0/asm14.s':        (0x807990C, 0x8079964),
    'sect0/bin14.bin':      (0x8079964, 0x807CB92),
    'sect0/asm15.s':        (0x807CB92, 0x807CD6C),
    'sect0/bin15.bin':      (0x807CD6C, 0x807FD00),
    'sect0/asm16.s':        (0x807FD00, 0x807FD58),
    'sect0/bin16.bin':      (0x807FD58, 0x8082728),
    'sect0/asm17.s':        (0x8082728, 0x80827A8),
    'sect0/bin17.bin':      (0x80827A8, 0x8085444),
    'sect0/asm18.s':        (0x8085444, 0x8085C70),
    'sect0/bin18.bin':      (0x8085C70, 0x8086488),
    'sect0/asm19.s':        (0x8086488, 0x80864A8),
    'sect0/bin19.bin':      (0x80864A8, 0x80886F8),
    'sect0/asm20.s':        (0x80886F8, 0x808A1F4),
    'sect0/bin20.bin':      (0x808A1F4, 0x808BFEC),
    'sect0/asm21.s':        (0x808BFEC, 0x808D668),
    'sect0/bin21.bin':      (0x808D668, 0x808EC68),
    'sect0/asm22.s':        (0x808EC68, 0x808FF20),
    'sect0/bin22.bin':      (0x808FF20, 0x8091404),
    'sect0/asm23.s':        (0x8091404, 0x8091420),
    'sect0/bin23.bin':      (0x8091420, 0x8093BC0),
    'sect0/asm24.s':        (0x8093BC0, 0x8094C06),
    'sect0/bin24.bin':      (0x8094C06, 0x8097328),
    'sect0/asm25.s':        (0x8097328, 0x809742E),
    'sect0/bin25.bin':      (0x809742E, 0x80986C4),
    'sect0/asm26.s':        (0x80986C4, 0x80986D2),
    'sect0/bin26.bin':      (0x80986D2, 0x809CDD0),
    'sect0/asm27.s':        (0x809CDD0, 0x80A9154),
    'sect0/bin27.bin':      (0x80A9154, 0x80ADDC8),
    'sect0/asm28.s':        (0x80ADDC8, 0x80F5E24),
    'sect0/bin28.bin':      (0x80F5E24, 0x80F8944),
    'sect0/asm29.s':        (0x80F8944, 0x80F8954),
    'sect0/bin29.bin':      (0x80F8954, 0x8102E9C), # 0xA548


    # [sect1 progress ----------------------]
    # compile   | 0.00% (0x00/0x100000)
    # checksum  | 0.00% (0x8BFEC/0x100000)
    # 'sect1':    (0x08100000, 0x082x00000),
    #'sect2':    (0x08200000, 0x08300000),
    #'sect3':    (0x08300000, 0x08400000),
    #'sect4':    (0x08400000, 0x08500000),
    #'sect5':    (0x08500000, 0x08600000),
    #'sect6':    (0x08600000, 0x08700000),
    #'sect7':    (0x08700000, 0x08800000),
})

print("Environment set!")
