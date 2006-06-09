GARNAME = cgsi-gsoap
GARVERSION = 1.1.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifeq ($(shell uname),Darwin)
PATCHFILES = makefile.in.diff
endif
 
MASTER_SITES = 

LIBDEPS = apps/base/gsoap apps/base/globus-toolkit

DESCRIPTION = gSOAP-based GSI authentication library
AUTHOR = CERN
URL= http://cern.ch/castor
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
