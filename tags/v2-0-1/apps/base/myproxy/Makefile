GARNAME = myproxy
GARVERSION = 1.9
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.ncsa.uiuc.edu/aces/myproxy/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/globus

DESCRIPTION = myproxy

CONFIGURE_ARGS = $(DIRPATHS) --with-flavor=$(GLOBUS_FLAVOR)
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

include ../category.mk
