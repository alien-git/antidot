GARNAME = lbone
GARVERSION = 1.4.0.2
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://loci.cs.utk.edu/lors/distributions/
AUTHOR = Micah Beck and James S. Plank 
URL = http://loci.cs.utk.edu/
LICENSE = 

LIBDEPS = apps/gcc/gcc apps/base/ibp

DESCRIPTION = The Logistical Backbone maintains a directory of IBP depots and metadata about these depots.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

CONFIGURE_ENV  = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/loci

include ../category.mk

