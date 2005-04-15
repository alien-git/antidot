GARNAME    = alien-perl
GARVERSION = 2.0.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/perl

DESCRIPTION = AliEn perl
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS =
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_ENV = env PREFIX=$(PREFIX)

CONFIGURE_ARGS =

include ../category.mk
