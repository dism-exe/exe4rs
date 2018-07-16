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
pt.env(gameFiles={
    'start.s':        (0x8000000, 0x800029C),
    'main.s':         (0x800029C, 0x8000550),
    'asm00.s':        (0x8000550, 0x8017C08),
    'bin00.bin':      (0x8017C08, 0x8019010),
    'asm01.s':        (0x8019010, 0x801972C),
    'bin01.bin':      (0x801972C, 0x801DA08),
    'asm02.s':        (0x801DA08, 0x8045538),
    'bin02.bin':      (0x8045538, 0x8046C98),
    'asm03.s':        (0x8046C98, 0x80515B8),
    'bin03.bin':      (0x80515B8, 0x8053980),
    'asm04.s':        (0x8053980, 0x805420C),
    'bin04.bin':      (0x805420C, 0x8059284),
    'asm05.s':        (0x8059284, 0x805937C),
    'bin05.bin':      (0x805937C, 0x805D4F8),
    'asm06.s':        (0x805D4F8, 0x805D63C),
    'bin06.bin':      (0x805D63C, 0x8069450),
    'asm07.s':        (0x8069450, 0x8069648),
    'bin07.bin':      (0x8069648, 0x806A87C),
    'asm08.s':        (0x806A87C, 0x806AB48),
    'bin08.bin':      (0x806AB48, 0x806D928),
    'asm09.s':        (0x806D928, 0x806DAD0),
    'bin09.bin':      (0x806DAD0, 0x806FE20),
    'asm10.s':        (0x806FE20, 0x8071618),
    'bin10.bin':      (0x8071618, 0x8073910),
    'asm11.s':        (0x8073910, 0x8073C1C),
    'bin11.bin':      (0x8073C1C, 0x80758A4),
    'asm12.s':        (0x80758A4, 0x8075C68),
    'bin12.bin':      (0x8075C68, 0x80772DA),
    'asm13.s':        (0x80772DA, 0x807750C),
    'bin13.bin':      (0x807750C, 0x807990C),
    'asm14.s':        (0x807990C, 0x8079964),
    'bin14.bin':      (0x8079964, 0x807CB92),
    'asm15.s':        (0x807CB92, 0x807CD6C),
    'bin15.bin':      (0x807CD6C, 0x807FD00),
    'asm16.s':        (0x807FD00, 0x807FD58),
    'bin16.bin':      (0x807FD58, 0x8082728),
    'asm17.s':        (0x8082728, 0x80827A8),
    'bin17.bin':      (0x80827A8, 0x8085444),
    'asm18.s':        (0x8085444, 0x8085C70),
    'bin18.bin':      (0x8085C70, 0x8086488),
    'asm19.s':        (0x8086488, 0x80864A8),
    'bin19.bin':      (0x80864A8, 0x80886F8),
    'asm20.s':        (0x80886F8, 0x808A1F4),
    'bin20.bin':      (0x808A1F4, 0x808BFEC),
    'asm21.s':        (0x808BFEC, 0x808D668),
    'bin21.bin':      (0x808D668, 0x808EC68),
    'asm22.s':        (0x808EC68, 0x808FF20),
    'bin22.bin':      (0x808FF20, 0x8091404),
    'asm23.s':        (0x8091404, 0x8091420),
    'bin23.bin':      (0x8091420, 0x8093BC0),
    'asm24.s':        (0x8093BC0, 0x8094C06),
    'bin24.bin':      (0x8094C06, 0x8097328),
    'asm25.s':        (0x8097328, 0x809742E),
    'bin25.bin':      (0x809742E, 0x80986C4),
    'asm26.s':        (0x80986C4, 0x80986D2),
    'bin26.bin':      (0x80986D2, 0x809CDD0),
    'asm27.s':        (0x809CDD0, 0x80A9154),
    'bin27.bin':      (0x80A9154, 0x80ADDC8),
    'asm28.s':        (0x80ADDC8, 0x80F5E24),
    'bin28.bin':      (0x80F5E24, 0x80F8944),
    'asm29.s':        (0x80F8944, 0x80F8954),
    'bin29.bin':      (0x80F8954, 0x8102E9C), # 0xA548
    'asm30.s':        (0x8102E9C, 0x8113B22),
    'bin30.bin':      (0x8113B22, 0x821283E), #0xFED1C
    'asm31.s':        (0x821283E, 0x8213ED4),
    'bin31.bin':      (0x8213ED4, 0x8800000)
})

print("Environment set!")
