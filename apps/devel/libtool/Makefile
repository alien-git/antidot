GARNAME = libtool
GARVERSION = 1.5.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.gnu.org/gnu/libtool/

LIBDEPS = 

DESCRIPTION = GNU Libtool
URL = http://www.gnu.org/software/libtool/libtool.html
AUTHOR = 
LICENSE = GPL

AUTOTEST=locateCommand libtool --version  2>&1 | head -1 | awk '{print $4}'

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
