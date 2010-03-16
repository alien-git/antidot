GARNAME = zlib
GARVERSION = 1.2.4
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES =  http://puzzle.dl.sourceforge.net/sourceforge/libpng/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Lossless data-compression library 
URL = http://www.zlib.net/
AUTHOR = Jean-loup Gailly Mark Adler
LICENSE = zlib

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForLib -i libz.so.$(GARVERSION)

CONFIGURE_ARGS = --prefix=$(PREFIX) --libdir=$(PREFIX)/lib --shared 

UBUNTU = $(uname -a | grep -i -c ubuntu)

ifeq ($(UBUNTU), 1)
    CONFIGURE_ENV = CFLAGS="-D_LARGEFILE64_SOURCE=1 -fPIC"
    BUILD_ENV = CFLAGS="-D_LARGEFILE64_SOURCE=1 -fPIC"
endif


NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk

