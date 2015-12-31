#objdump: -dr --prefix-addresses
#as: -32 --defsym tsd=1
#name: MIPS sd
#source: ld.s

# Test the sd macro (ECOFF).

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> sd	a0,0\(zero\)
[0-9a-f]+ <[^>]*> sd	a0,1\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[0-9a-f]+ <[^>]*> sd	a0,-32768\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[0-9a-f]+ <[^>]*> sd	a0,0\(a1\)
[0-9a-f]+ <[^>]*> sd	a0,1\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[0-9a-f]+ <[^>]*> sd	a0,-32768\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,0\(gp\)
[ 	]*[0-9a-f]+: GPREL	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,0\(gp\)
[ 	]*[0-9a-f]+: GPREL	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,8192\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,-16384\(gp\)
[ 	]*[0-9a-f]+: GPREL	\.sbss\+0x4000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,4097\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,1\(gp\)
[ 	]*[0-9a-f]+: GPREL	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,1\(gp\)
[ 	]*[0-9a-f]+: GPREL	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,8193\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,-16383\(gp\)
[ 	]*[0-9a-f]+: GPREL	\.sbss\+0x4000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,-24576\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,-24576\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,8192\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-19035\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> sd	a0,-14939\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> sd	a0,-19035\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: GPREL	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: GPREL	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,8192\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,-16384\(at\)
[ 	]*[0-9a-f]+: GPREL	\.sbss\+0x4000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,4097\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: GPREL	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,1\(at\)
[ 	]*[0-9a-f]+: GPREL	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,8193\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sd	a0,-16383\(at\)
[ 	]*[0-9a-f]+: GPREL	\.sbss\+0x4000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-24576\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-32768\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-24576\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-28672\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,0\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,8192\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,4096\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.data-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-19035\(at\)
[ 	]*[0-9a-f]+: REFLO	\.data-0x1000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-23131\(at\)
[ 	]*[0-9a-f]+: REFLO	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.bss-0x2000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-14939\(at\)
[ 	]*[0-9a-f]+: REFLO	\.bss-0x2000
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: REFHI	\.sbss-0x1000
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> sd	a0,-19035\(at\)
[ 	]*[0-9a-f]+: REFLO	\.sbss-0x1000
	\.\.\.
