GARNAME = ApMon-CPP
GARVERSION = 2.0.4
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/gcc/gcc

AUTHOR  = Catalin Cirstoiu
LICENSE = 

DESCRIPTION = Application monitor using MonaLisa

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = 

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = ( cd $(WORKSRC); sh bootstrap )