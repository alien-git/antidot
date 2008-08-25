GARNAME = mysql
GARVERSION = 5.0.67
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz 
PATCHFILES =

MASTER_SITES = 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-yassl --with-big-tables  --without-debug --enable-thread-safe-client 

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
