ifeq (${_INCLUDE_MK_GCC_},)
_INCLUDE_MK_GCC_=1
CROSS=i686-w64-mingw32-
CC=${CROSS}gcc
RANLIB=${CROSS}ranlib
ONELIB=0
OSTYPE=windows
LINK=
AR=${CROSS}ar
EXT_AR=lib
CC_AR=${AR} -r ${LIBAR}
PARTIALLD=${CROSS}ld -r --whole-archive
PICFLAGS=
CFLAGS+=${PICFLAGS} -MD -D__WINDOWS__=1
CC_LIB=${CC} -shared -o
CFLAGS_INCLUDE=-I
LDFLAGS+=-static-libgcc
LDFLAGS_LINK=-l
LDFLAGS_LINKPATH=-L
CFLAGS_OPT0=-O0
CFLAGS_OPT1=-O1
CFLAGS_OPT2=-O2
CFLAGS_OPT3=-O3
CFLAGS_DEBUG=-g
endif
