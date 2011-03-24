GARNAME = gcc
GARVERSION = 4.1.2
CATEGORIES = apps-gcc
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/gnu/gcc/gcc-4.1.2/

LIBDEPS = apps/devel/libtool apps/devel/automake

DESCRIPTION = GNU C/C++ compiler
URL = http://gcc.gnu.org/
AUTHOR = GCC Team
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST=locateCommand gcc -dumpversion

UBUNTU = $(shell cat /etc/*-release | grep -i -c ubuntu)

#ifneq ($(shell uname),Darwin)
#    ifneq ($(UBUNTU), 0)
#	CONFIGURE_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
#	BUILD_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
#	INSTALL_ENV =	env CPPFLAGS="-D_FORTIFY_SOURCE=2" CFLAGS="-D_FORTIFY_SOURCE=2"
#   endif
#endif

CONFIGURE_ARGS = --prefix=$(PREFIX)/$(PLATFORM)/$(GARVERSION) --enable-languages=c,c++,fortran --disable-multilib --enable-shared --enable-threads=posix --enable-__cxa_atexit --enable-clocale=gnu

include ../category.mk

POST_INSTALL = (cd $(GCC_BIN_DIR); rm -rf cc; ln -s gcc cc )
