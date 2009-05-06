GARNAME = gcc
GARVERSION = 3.4.6
CATEGORIES = apps-gcc
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

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

UBUNTU = $(shell cat /etc/*-release | grep -i -c ubuntu)
#UBUNTU = $(shell ech)

ifneq ($(shell uname),Darwin)
    ifneq ($(UBUNTU), 0)
	CONFIGURE_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
	BUILD_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
	INSTALL_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
    endif
endif


CONFIGURE_ARGS = --prefix=$(PREFIX)/$(PLATFORM)/$(GARVERSION) --enable-threads=posix --enable-clocale=gnu --enable-__cxa_atexit --enable-languages=c,c++,f77 --enable-shared --disable-checking --disable-multilib --srcdir=..

include ../category.mk


POST_INSTALL = (cd $(GCC_BIN_DIR); rm -rf cc; ln -s gcc cc )
