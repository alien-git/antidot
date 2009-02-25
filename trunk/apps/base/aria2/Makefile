GARNAME = aria2
GARVERSION = 1.2.0
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.bz2

LIBDEPS = apps/gcc/gcc apps/base/openssl apps/base/zlib

#http://ovh.dl.sourceforge.net/sourceforge/aria2/aria2-1.2.0.tar.bz2
MASTER_SITES =  http://puzzle.dl.sourceforge.net/sourceforge/aria2 http://switch.dl.sourceforge.net/sourceforge/aria2/  http://ovh.dl.sourceforge.net/sourceforge/aria2/
AUTHOR = t-tujikawa@users.sourceforge.net
URL = http://aria2.sourceforge.net
LICENSE = GPL
DESCRIPTION = aria2 - The Fast and Reliable Download Utility

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = CFLAGS="-O0 -foptimize-sibling-calls -mpreferred-stack-boundary=4 -fmerge-constants" CPPFLAGS="-O0 -foptimize-sibling-calls -mpreferred-stack-boundary=4 -fmerge-constants" CXXFLAGS="-O0 -foptimize-sibling-calls -mpreferred-stack-boundary=4 -fmerge-constants"
CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-bittorrent --disable-metalink --disable-xmltest --disable-nls --without-libxml2 --without-libexpat --with-openssl-prefix=$(PREFIX)

include ../category.mk

POST_INSTALL = ( strip $(PREFIX)/bin/aria2c )

