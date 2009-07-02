GARNAME = mysql
GARVERSION = 5.1.28
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)-rc.tar.gz
DISTNAME =  $(GARNAME)-$(GARVERSION)-rc
PATCHFILES =

MASTER_SITES = http://downloads.mysql.com/archives/mysql-5.1/

LIBDEPS = apps/gcc/gcc apps/base/ncurses

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-ssl --with-big-tables  --without-debug --enable-thread-safe-client 

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
