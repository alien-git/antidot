GARNAME = alien-ca
GARVERSION = 1.2
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/tools/eugridpma-carep-classic apps/tools/eugridpma-carep-slcs apps/tools/eugridpma-carep-iota apps/tools/eugridpma-carep-mics

DESCRIPTION = AliEn CA certificate
URL = 
AUTHOR = 
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = 

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

