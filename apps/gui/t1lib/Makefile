GARNAME = t1lib
GARVERSION = 5.0.2
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = 

MASTER_SITES = ftp://sunsite.unc.edu/pub/Linux/libs/graphics/ http://alien.cern.ch/cache/

DESCRIPTION = t1lib

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)
BUILD_ARGS = without_doc

include ../category.mk
