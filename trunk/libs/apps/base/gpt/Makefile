GARNAME = gpt
CATEGORIES = apps-tools

ifeq "$(GLOBUS_FLAVOR)" "gcc64"
  GARVERSION = 3.2
else
  GARVERSION = 2.2.10
endif

DISTFILES = $(GARNAME)-$(GARVERSION)-src.tar.gz

MASTER_SITES = http://www-unix.mcs.anl.gov/~globus/ ftp://ftp.ncsa.uiuc.edu/aces/gpt/releases/gpt-3.2/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/perl

DESCRIPTION = Globus packaging tool

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/build_gpt

BUILD_ARGS = -prefix=$(PREFIX) -with-perl=$(PREFIX)/bin/perl 
BUILD_ENV  = GPT_LOCATION=$(PREFIX)

include ../category.mk

