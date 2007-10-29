GARNAME = gcc
GARVERSION = 3.2.3-20040701
CATEGORIES = apps-gcc
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

#MASTER_SITES = ftp://ftp.gnu.org/gnu/gcc/gcc-3.2.3/  
MASTER_SITES =

LIBDEPS = apps/devel/libtool apps/devel/automake

DESCRIPTION = GNU C/C++ compiler
URL = http://gcc.gnu.org/
AUTHOR = GCC Team
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/BUILD/configure 
BUILD_SCRIPTS = $(WORKSRC)/BUILD/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/BUILD/Makefile

AUTOTEST=locateCommand gcc -dumpversion

CONFIGURE_ARGS = --prefix=$(PREFIX)/$(PLATFORM)/3.2.3 --enable-threads=posix --enable-clocale=gnu --enable-__cxa_atexit --enable-languages=c,c++,f77 --enable-shared --disable-checking --disable-multilib --srcdir=..

include ../category.mk

POST_INSTALL = (cd $(GCC_BIN_DIR); rm -rf cc; ln -s gcc cc )
