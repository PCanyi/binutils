SCRIPT_NAME=cgc
OUTPUT_FORMAT="cgc32-i386-vxworks"
NO_RELA_RELOCS=yes
TEXT_START_ADDR=0x08048000
MAXPAGESIZE="CONSTANT (MAXPAGESIZE)"
COMMONPAGESIZE="CONSTANT (COMMONPAGESIZE)"
ARCH=i386
MACHINE=
TEMPLATE_NAME=cgc32
GENERATE_SHLIB_SCRIPT=yes
GENERATE_PIE_SCRIPT=yes
NO_SMALL_DATA=yes
. ${srcdir}/emulparams/vxworks.sh
