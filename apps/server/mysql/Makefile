GARNAME = mysql
GARVERSION = 5.0.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz 
PATCHFILES = # openssl.diff

MASTER_SITES = 

LIBDEPS = apps/base/openssl

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

ifeq ($(shell uname -s),Darwin)
CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-big-tables  --without-debug --enable-thread-safe-client 
else
CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-openssl=yes --with-openssl-libs=$(PREFIX)/lib --with-openssl-includes=$(PREFIX)/include --with-big-tables  --without-debug --enable-thread-safe-client 
endif

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
