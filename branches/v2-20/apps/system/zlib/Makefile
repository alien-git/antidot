GARNAME = zlib
GARVERSION = 1.2.5
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES =  http://puzzle.dl.sourceforge.net/sourceforge/libpng/ 

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

DESCRIPTION = Lossless data-compression library 
URL = http://www.zlib.net/
AUTHOR = Jean-loup Gailly Mark Adler
LICENSE = zlib

CONFIGURE_ENV = CFLAGS="-fPIC -O3" CPPFLAGS="-fPIC -O3" CXXFLAGS="-fPIC -O3"
BUILD_ENV = CFLAGS="-fPIC -O3" CPPFLAGS="-fPIC -O3" CXXFLAGS="-fPIC -O3"
INSTALL_ENV = CFLAGS="-fPIC -O3" CPPFLAGS="-fPIC -O3" CXXFLAGS="-fPIC -O3"

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
#TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --shared 


include ../category.mk

#POST_INSTALL = (mkdir -p $(PREFIX)/lib64 ; ln -sf $(PREFIX)/lib/libz.so $(PREFIX)/lib64/libz.so ; ln -sf $(PREFIX)/lib/libz.a $(PREFIX)/lib64/libz.a)