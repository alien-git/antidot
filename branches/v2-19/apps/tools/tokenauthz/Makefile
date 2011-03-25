GARNAME = tokenauthz
GARVERSION = 1.1.6b
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
    PATCHFILES = configure.patch
endif

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/tkauthz/

LIBDEPS = apps/perl/perl apps/system/libxml2 apps/devel/swig apps/system/openssl

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

