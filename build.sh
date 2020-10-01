gcc -m64 -c -o preloader.o preloader.c -Iloader -I../wine/loader -Iinclude -I../wine/include \
  -D__WINESRC__ -DCOMPAT_MODE -fno-builtin -Wall -pipe -fcf-protection=none -fno-stack-protector \
  -fno-strict-aliasing -Wdeclaration-after-statement -Wempty-body -Wignored-qualifiers \
  -Wno-packed-not-aligned -Wshift-overflow=2 -Wstrict-prototypes -Wtype-limits \
  -Wunused-but-set-parameter -Wvla -Wwrite-strings -Wpointer-arith -Wlogical-op -gdwarf-2 \
  -gstrict-dwarf -g -O2

gcc -m64 -o wine64-preloader preloader.o -static -nostartfiles -nodefaultlibs \
  -Wl,-Ttext=0x7d400000
