#source: pr13082-5.s
#name: PR ld/13082-5 (a)
#as: --x32
#ld: -shared -mcgc32_x86_64
#readcgc: -r --wide

Relocation section '.rela.dyn' at offset 0x[0-9a-f]+ contains 1 entries:
 Offset     Info    Type                Sym. Value  Symbol's Name \+ Addend
[0-9a-f]+ +[0-9a-f]+ +R_X86_64_32 +ifunc\(\)+ +ifunc \+ 0

Relocation section '.rela.plt' at offset 0x[0-9a-f]+ contains 1 entries:
 Offset     Info    Type                Sym. Value  Symbol's Name \+ Addend
[0-9a-f]+ +[0-9a-f]+ +R_X86_64_JUMP_SLOT +ifunc\(\)+ +ifunc \+ 0
