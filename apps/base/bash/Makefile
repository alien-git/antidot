GARNAME = bash
GARVERSION = 2.05a
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://alien.cern.ch/cache/ http://ftp.gnu.org/gnu/bash/

LIBDEPS = apps/devel/autoconf apps/devel/automake

DESCRIPTION = Bash is the GNU shell

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-static-link
CONFIGURE_ENV  = 

include ../category.mk

