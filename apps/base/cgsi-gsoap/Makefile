GARNAME = cgsi-gsoap
GARVERSION = 1.1.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = makefile.in.diff

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/gsoap apps/base/globus

DESCRIPTION = gSOAP-based GSI authentication library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
