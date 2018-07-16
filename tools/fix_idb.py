"""
:author: Lan
Run this script after using the provided idc script to initialize the # IDA
database. This will run fix commands that fixes the database and make sure that
it compiles and outputs a matching ROM.
"""


pt.fix.remFuncChunks()
pt.fix.replNameParen()
pt.fix.removeStackVarUsages(0x8000000, 0x8800000)
# this just needs to repeat a few times to remove new ARM guesses
for i in range(3):
    pt.fix.makeThumb(0x800036C, 0x8800000)
print("Finished running fixes!")
