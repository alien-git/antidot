GARNAME = myproxy
GARVERSION = 1.9
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.ncsa.uiuc.edu/aces/myproxy/ 

LIBDEPS = apps/base/globus

DESCRIPTION = MyProxy Online Credential Repository
URL = http://grid.ncsa.uiuc.edu/myproxy/
AUTHOR = NCSA MyProxy Team
LICENSE = MyProxy

CONFIGURE_ARGS = $(DIRPATHS) --with-flavor=$(GLOBUS_FLAVOR)
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

include ../category.mk
