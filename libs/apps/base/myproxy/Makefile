GARNAME = myproxy
GARVERSION = 1.9
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.ncsa.uiuc.edu/aces/myproxy/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/globus

DESCRIPTION = myproxy

ifeq "$(shell uname)" "Darwin"
CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS =
INSTALL_SCRIPTS =
else
CONFIGURE_ARGS = $(DIRPATHS) 
CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS =
INSTALL_SCRIPTS = $(WORKSRC)/gpt-build
endif

INSTALL_ARGS = -installdir=$(PREFIX) -verbose ../../download/$(GARNAME)-$(GARVERSION).tar.gz  $(GLOBUS_FLAVOR)

include ../category.mk
