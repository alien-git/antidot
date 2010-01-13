GARNAME = ApMon_cpp
GARVERSION = 2.2.7
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://monalisa.cern.ch/download/apmon/ http://monalisa.cacr.caltech.edu/download/apmon/

LIBDEPS = apps/gcc/gcc

AUTHOR  = Catalin Cirstoiu
LICENSE = 

DESCRIPTION = Application monitor using MonaLisa

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api

include ../category.mk
