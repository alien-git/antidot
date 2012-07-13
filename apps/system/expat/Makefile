GARNAME = expat
GARVERSION = 2.1.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

#MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/expat/ 
MASTER_SITES = http://downloads.sourceforge.net/project/expat/expat/$(GARVERSION)/

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

DESCRIPTION = Expat XML Parser
URL = http://www.libexpat.org/
AUTHOR = Expat maintainers
LICENSE = Expat
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

