Install DevkitARM and make the bin folder containing arm-none-eabi binaries available in the path.

Use the following make rules to build the ROM:
- **make rom**: Builds the output ROM `exe4rs.gba` by compiling the disassembled asm files
and overlaying the object files on the binary image of the ROM in the bin folder: `bin/exe4rs.bin`
- **make checksum**: displays the sha1 checksum of both `bin/exe4rs.bin` and `exe4rs.gba`. They must always be identical for `exe4rs.gba` to be considered valid
- **make clean**: removes intermediate build files
