GARNAME = lors
GARVERSION = 0.82.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://loci.cs.utk.edu/lors/distributions/
AUTHOR = Micah Beck and James S. Plank 
URL = http://loci.cs.utk.edu/
LICENSE = 

LIBDEPS = apps/base/zlib apps/base/libxml2 apps/base/lbone

DESCRIPTION = The Logistical Runtime System contains a C API and a tool set that automate the finding of IBP depots via the LBone, creating and using IBP capabilities and creating exNodes.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

CONFIGURE_ENV  =  

CONFIGURE_ARGS = --prefix=$(PREFIX)/loci --with-zlib=$(PREFIX) --with-libxml2=$(PREFIX) --with-lbone=$(PREFIX)/loci

include ../category.mk

