GARNAME = gpt
ifeq ($(shell uname),Darwin)
GARVERSION = 3.0.1
else
GARVERSION = 2.2.10
endif

CATEGORIES = apps-tools

DISTFILES = $(GARNAME)-$(GARVERSION)-src.tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ http://www-unix.mcs.anl.gov/~globus/ 

LIBDEPS = apps/base/perl

DESCRIPTION = Globus packaging tool

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/build_gpt

BUILD_ARGS = -prefix=$(GPT_LOCATION) -with-perl=$(PREFIX)/bin/perl -verbose
BUILD_ENV  = env GPT_LOCATION=$(GPT_LOCATION)

include ../category.mk

