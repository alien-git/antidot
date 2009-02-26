GARNAME = krb5
GARVERSION = 1.3.4
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gcc/gcc

MASTER_SITES = 
AUTHOR = MIT
URL = http://web.mit.edu/Kerberos/
LICENSE = 

DESCRIPTION = Kerberos5

CONFIGURE_SCRIPTS = $(WORKSRC)/src/configure
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile
TEST_SCRIPTS =

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_ARGS = --prefix=$(PREFIX)

ifneq ($(PLATFORM), ia64-unknown-linux-gnu)
	CONFIGURE_ARGS +=  --enable-dns=no
endif

BUILD_ENV = LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

include ../category.mk


