GARNAME = ApMon-CPP
GARVERSION = 2.0.4
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.am.diff

MASTER_SITES = 

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