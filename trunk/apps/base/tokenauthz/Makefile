GARNAME = tokenauthz
GARVERSION = 1.0.9
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = macos.diff

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/

LIBDEPS = apps/base/perl apps/base/libxml2

AUTHOR  = Andreas Peters and Derek Feichtinger
LICENSE = 
URL     = 

DESCRIPTION = Class to read authorization envelopes

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-base-directory=$(PREFIX) --enable-perlint --with-perl=$(PREFIX)/bin/perl

include ../category.mk

#PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; libtoolize -c; autoconf)
 
