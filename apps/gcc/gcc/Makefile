GARNAME = gcc
GARVERSION = 3.2.3
CATEGORIES = apps-gcc
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = ftp://ftp.gnu.org/gnu/gcc/gcc-3.2.3/  

LIBDEPS = apps/devel/libtool apps/devel/automake

DESCRIPTION = GNU C/C++ compiler
URL = http://gcc.gnu.org/
AUTHOR = GCC Team
LICENSE = GPL2

ifeq ($(shell uname -s),Darwin)
CONFIGURE_SCRIPTS =
BUILD_SCRIPTS =
INSTALL_SCRIPTS =
else
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
endif

AUTOTEST=locateCommand gcc -dumpversion

CONFIGURE_ARGS = --prefix=$(PREFIX)/$(PLATFORM)/$(GARVERSION) --enable-threads=posix --enable-clocale=gnu --enable-__cxa_atexit --enable-languages=c,c++,f77 --enable-shared --disable-checking

include ../category.mk

ifeq ($(shell uname -s),Darwin)
POST_INSTALL = 
else
POST_INSTALL = (cd $(GCC_BIN_DIR); rm -rf cc; ln -s gcc cc )
endif