GARNAME = gfw
GARVERSION = 0.1.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.in.diff
 
MASTER_SITES = 

LIBDEPS = apps/base/globus-toolkit

DESCRIPTION = GFW helper library
AUTHOR = 
URL = http://doc.in2p3.fr/bbftp/index.html
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) \
                 --with-gsi=$(GLOBUS_LOCATION) \
                 --with-globus-flavor=$(GLOBUS_FLAVOR)

include ../category.mk
