GARNAME = SWIG
GARVERSION = 1.3.19
CATEGORIES = apps-tools
DISTFILES = swig-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ http://puzzle.dl.sourceforge.net/sourceforge/swig/ http://ovh.dl.sourceforge.net/sourceforge/swig/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = SWIG
URL = http://www.swig.org/
AUTHOR = Dave Beazley et al.
LICENSE = as-is

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
