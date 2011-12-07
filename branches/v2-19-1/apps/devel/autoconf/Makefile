GARNAME = autoconf
GARVERSION = 2.67
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

BININSTALL_IGNORE =  true

MASTER_SITES = http://ftp.gnu.org/gnu/autoconf/

LIBDEPS = apps/devel/m4

DESCRIPTION = GNU Autoconf
URL = http://www.gnu.org/software/autoconf/
LICENSE = GPL2
AUTHOR = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
