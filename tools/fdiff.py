import sys

def err():
    fprint(stderr, "Usage: <binpath> <binpath> [-s1|-s2|-s4] [-d<diffnum>]")
    exit(1)

def parseSize(arg):
    if len(arg) != 3 or arg[:2] != '-s' or not arg[2].isdigit():
        err()
    # parse digit
    size = int(arg[2])
    if (size != 1 and size != 2 and size != 4):
        err()
    return size

def parseDiffnum(arg):
    if len(arg) != 3 or arg[:2] != '-d' or not arg[2].isdigit():
        err()
    # parse digit
    diffnum = int(arg[2])
    if diffnum < 0:
        fprint(stderr, "diffnum must be unsigned")
    return diffnum

def concatBytes(bytes):
    """
    :return: a primitive version of the given bytes, concatenated together into an int
    """
    output = 0
    for i in range(len(bytes)):
        output |= bytes[i] << (8*i)
    return output

def main():
    """
    Compares two binary files until it finds a difference, and that difference is displayed
    as a byte, halfword, or word. word is used by default
    :return:
    """

    # open the binary files to compare
    bin1 = open(sys.argv[1], 'rb')
    bin2 = open(sys.argv[2], 'rb')

    # parse switches for packet size and the difference to display
    size = 4
    diff = 0
    for i in range(3,5):
        if len(sys.argv) > i:
            if '-s' in sys.argv[i]:
                size = parseSize(sys.argv[i])
            elif '-d' in sys.argv[i]:
                diff = parseDiffnum(sys.argv[i])
            else:
                err()

    # find difference
    p1 = p2 = 0
    packet1 = packet2 = 0
    d = 0
    addr = diffAddr = 0
    foundDiff = False
    while packet1 != b'' and packet2 != b'':
        packet1 = bin1.read(size)
        packet2 = bin2.read(size)
        if packet1 != packet2:
            # store last diff packets
            p1 = packet1
            p2 = packet2
            diffAddr = addr
            foundDiff = True
            d += 1
            # stop comparing when we find the requested difference to display
            if d-1 == diff:
                break
        addr += size

    # close files, thanks!
    bin1.close()
    bin2.close()

    # display output
    if foundDiff:
        print("Found diff #%d @ %06X: bin1=0x%X bin2=0x%0X" % (d-1, diffAddr, concatBytes(p1), concatBytes(p2)))
    else:
        print("Files are identical!")



if __name__ == '__main__':
    main()
