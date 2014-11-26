GARNAME = krb5
GARVERSION = 1.8.3
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

#krb5-1.8.3-signed.tar
MASTER_SITES = 
AUTHOR = MIT
URL = http://web.mit.edu/Kerberos/
LICENSE = 

DESCRIPTION = Kerberos5

CONFIGURE_ENV = LDFLAGS="-L$(PREFIX)/lib"
BUILD_ENV = LDFLAGS="-L$(PREFIX)/lib"


CONFIGURE_SCRIPTS = $(WORKSRC)/src/configure
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile
TEST_SCRIPTS =

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_ARGS = --prefix=$(PREFIX) --without-tcl

ifneq ($(PLATFORM), ia64-unknown-linux-gnu)
	CONFIGURE_ARGS +=  --enable-dns=no
endif

include ../category.mk


