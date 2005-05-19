GARNAME = gpt

GARVERSION = 3.0.1

CATEGORIES = apps-tools

DISTFILES = $(GARNAME)-$(GARVERSION)-src.tar.gz

MASTER_SITES = http://www-unix.mcs.anl.gov/~globus/ 
LIBDEPS = apps/base/perl

DESCRIPTION = Grid packaging tool
URL = http://www.gridpackagingtools.org/
AUTHORE = NCSA
LICENSE = GPT

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/build_gpt

BUILD_ARGS = -prefix=$(GPT_LOCATION) -with-perl=$(PREFIX)/bin/perl -verbose -autotools

BUILD_ENV  = env GPT_LOCATION=$(GPT_LOCATION)

include ../category.mk

