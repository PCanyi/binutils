#source: protected3.s
#as: --64 -march=k1om
#ld: -shared -mcgc_k1om
#readcgc: -h

CGC Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             CGC64
  Data:                              2's complement, little endian
  Version:                           1 \(current\)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN \(Shared object file\)
  Machine:                           Intel K1OM
  Version:                           0x1
#pass
