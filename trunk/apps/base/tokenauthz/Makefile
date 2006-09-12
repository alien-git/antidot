GARNAME = tokenauthz
GARVERSION = 1.1.0
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/

LIBDEPS = apps/base/perl apps/base/libxml2 apps/base/swig apps/base/openssl

AUTHOR  = Andreas Peters and Derek Feichtinger
LICENSE = 
URL     = 

DESCRIPTION = Class to read authorization envelopes

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-base-directory=$(PREFIX) --enable-perlint --with-xml2-incdir=$(PREFIX)/include/libxml2 --with-xml2-libdir=$(PREFIX)/lib --with-perl=$(PREFIX)/bin/perl

include ../category.mk

