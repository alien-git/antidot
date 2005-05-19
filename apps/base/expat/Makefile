GARNAME = expat
GARVERSION = 1.95.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/expat/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Expat XML Parser
URL = http://www.libexpat.org/
AUTHOR = Expat maintainers
LICENSE = Expat
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --mandir=$(PREFIX)/man 
CONFIGURE_ENV  = 
BUILD_ENV = 

include ../category.mk

