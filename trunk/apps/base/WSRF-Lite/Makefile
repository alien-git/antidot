GARNAME = WSRF-Lite
GARVERSION = 0.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = apps/base/perl

DESCRIPTION = WSRF container for perl by Mark Mc Keown, mark.mckeown@man.ac.uk

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = PREFIX=$(PREFIX)
BUILD_ARGS =  

include ../category.mk

