GARNAME = mysql
GARVERSION = 4.0.23a
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://mirror.switch.ch/mirror/mysql/Downloads/MySQL-4.0/  http://alien.cern.ch/cache/

LIBDEPS = 

DESCRIPTION = MySQL database

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
