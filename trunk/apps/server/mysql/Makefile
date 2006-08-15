GARNAME = mysql
GARVERSION = 5.0.24
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz 

MASTER_SITES = 

LIBDEPS = apps/base/openssl

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio  --with-openssl=$(PREFIX) --with-openssl-libs=$(PREFIX)/lib --with-big-tables  --without-debug --enable-thread-safe-client 

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
