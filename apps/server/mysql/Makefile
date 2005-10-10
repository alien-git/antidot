GARNAME = mysql
GARVERSION = 4.1.14
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = openssl.diff

MASTER_SITES = ftp://mirror.switch.ch/mirror/mysql/Downloads/MySQL-4.1/ 

LIBDEPS = apps/base/openssl

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-vio  --with-openssl=$(PREFIX)
CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib"

include ../category.mk
