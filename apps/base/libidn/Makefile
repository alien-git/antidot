GARNAME = libidn
GARVERSION = 0.5.9
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://alpha.gnu.org/pub/gnu/libidn/ http://josefsson.org/libidn/releases/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Internationalized Domain Names implementation
URL = http://www.gnu.org/software/libidn/
AUTHOR = gnu.org
LCIENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
