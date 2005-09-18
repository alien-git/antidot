GARNAME = mysql
GARVERSION = 4.1.13
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://mirror.switch.ch/mirror/mysql/Downloads/MySQL-4.1/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 
CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib"

include ../category.mk
