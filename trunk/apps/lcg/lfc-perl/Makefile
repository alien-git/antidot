GARNAME = lfc-perl
GARVERSION = 1.3.7
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  

LIBDEPS = apps/lcg/lfc apps/base/perl

DESCRIPTION = Perl interface to LFC
URL = http://lcg.web.cern.ch/LCG
AUTHOR = CERN LCG
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-lfc-dir=$(PREFIX) --with-swig-dir=$(PREFIX) --with-perl5=$(PREFIX)/bin/perl

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC);env PREFIX=$(PREFIX) sh bootstrap )

