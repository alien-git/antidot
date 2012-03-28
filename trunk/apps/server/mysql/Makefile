GARNAME = mysql
GARVERSION = 5.1.61
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).zip
DISTNAME =  $(GARNAME)-$(GARVERSION)
#PATCHFILES = term.c.patch

#http://mirror.switch.ch/ftp/mirror/mysql/Downloads/MySQL-5.1/mysql-5.1.36.zip
MASTER_SITES = http://mirror.switch.ch/ftp/mirror/mysql/Downloads/MySQL-5.1/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-ssl --with-big-tables  --without-debug --enable-thread-safe-client --with-plugins=innodb_plugin

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
