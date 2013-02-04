GARNAME = aria2
GARVERSION = 1.12.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.bz2

LIBDEPS = apps/gcc/gcc apps/system/openssl

#http://ovh.dl.sourceforge.net/sourceforge/aria2/aria2-1.2.0.tar.bz2
MASTER_SITES =  http://puzzle.dl.sourceforge.net/sourceforge/aria2 http://switch.dl.sourceforge.net/sourceforge/aria2/  http://ovh.dl.sourceforge.net/sourceforge/aria2/
AUTHOR = t-tujikawa@users.sourceforge.net
URL = http://aria2.sourceforge.net
LICENSE = GPL
DESCRIPTION = aria2 - The Fast and Reliable Download Utility

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

ifeq ($(PLATFORM), ia64-unknown-linux-gnu)
    CONFIGURE_ARGS = --prefix=$(PREFIX) --with-openssl-prefix=$(PREFIX) --with-openssl --without-gnutls
else
    CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-bittorrent --disable-metalink --disable-xmltest --disable-nls --without-libxml2 --without-libexpat --with-openssl-prefix=$(PREFIX) --with-openssl --without-gnutls
endif

PLATFORM = $(shell ../../../platform.sh platform)
FLAGS = -O0 -foptimize-sibling-calls -fmerge-constants

ifneq ($(PLATFORM), ia64-unknown-linux-gnu)
	ifeq ($(PLATFORM), i686-pc-linux-gnu)
		FLAGS +=  -mpreferred-stack-boundary=2
	else
		FLAGS +=  -mpreferred-stack-boundary=4
	endif
endif

#CONFIGURE_ENV = CFLAGS="$(FLAGS) -I$(PREFIX)/include" CPPFLAGS="$(FLAGS) -I$(PREFIX)/include" CXXFLAGS="$(FLAGS) -I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

include ../category.mk

POST_INSTALL = ( strip $(PREFIX)/bin/aria2c )

