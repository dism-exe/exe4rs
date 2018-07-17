Install DevkitARM and make the bin folder containing arm-none-eabi binaries available in the path.

# Building
Use the following make rules to build the ROM:
- **make rom**: Builds the output ROM `exe4rs.gba` by compiling the disassembled asm files
and overlaying the object files on the binary image of the ROM in the bin folder: `bin/exe4rs.bin`
- **make checksum**: displays the sha1 checksum of both `bin/exe4rs.bin` and `exe4rs.gba`. They must always be identical for `exe4rs.gba` to be considered valid
- **make clean**: removes intermediate build files
- **make tail**: In case the tail label changes locations in `_rom.s`, Run this to recompute `tail.bin`. the tail label is the very last label in `rom.s`, so it only has content if the rom has not been completely disassembled.
- **make fdiff**: Runs a python script to quickly report back all content differences detected in the ROM.

# Setting up and syncing IDA with the project
This is not necessary for contribution, but could prove very useful. In order to sync this project with IDA, The PseudoTerminal tool chain is needed: https://github.com/LanHikari22/GBA-IDA-Pseudo-Terminal. In the tools folder, there is an environment script, a game loader idc script, and an IDB fix script.
- Initialize the IDA database for exe4rs as a binary. 
- Choose ARM little endian as the processor type.
- In Processor Settings, Disable Macros and make sure that pointer dereferencing is enabled.
- Once the database is initialized, run the game loader idc script.
- Once that is finished, run `pt.py` from the PseudoTerminal tool chain and then run the IDB fix script.
- Open the PseudoTerminal environment script and modify the project path.
- Run the script in IDA and then execute `pt.dis.push()` to disassemble and export all code files. 
- Run `pt.dis.extract()` to extract all binary files from the database.
