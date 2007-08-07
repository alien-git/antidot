GARNAME = mysql
GARVERSION = 5.0.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz 
PATCHFILES = # openssl.diff

MASTER_SITES = 

LIBDEPS = apps/base/globus-toolkit

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

#CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-openssl=yes --with-openssl-libs=$(GLOBUS_LOCATION)/lib --with-openssl-includes=$(GLOBUS_LOCATION)/include/$(GLOBUS_FLAVOR) --with-big-tables  --without-debug --enable-thread-safe-client 
CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-yassl --with-big-tables  --without-debug --enable-thread-safe-client 
endif

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
