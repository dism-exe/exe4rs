"""
:author: Lan
Run this script after using the provided idc script to initialize the # IDA
database. This will run fix commands that fixes the database and make sure that
it compiles and outputs a matching ROM.
"""


pt.fix.remFuncChunks()
pt.fix.removeStackVarUsages(0x8000000, 0x8800000)
# this just needs to repeat a few times to remove new ARM guesses
while pt.fix.makeThumb(0x800036C, 0x8800000): pass
print("Finished running fixes!")
