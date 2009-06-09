GARNAME = autoconf
GARVERSION = 2.63
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = http://ftp.gnu.org/gnu/autoconf/

LIBDEPS = 

DESCRIPTION = GNU Autoconf
URL = http://www.gnu.org/software/autoconf/
LICENSE = GPL2
AUTHOR = 

AUTOTEST=locateCommand autoconf --version | awk '{print $3}'

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
