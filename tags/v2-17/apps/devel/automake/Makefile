GARNAME = automake
GARVERSION = 1.11
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = http://ftp.gnu.org/gnu/automake/

LIBDEPS = apps/devel/autoconf

DESCRIPTION = GNU Autmake
URL = http://www.gnu.org/software/automake/
AUTHOR = 
LICENSE = GPL2

AUTOTEST=locateCommand automake --version  2>&1 | head -n 1 | awk '{print $4}'

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
