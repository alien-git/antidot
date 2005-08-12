GARNAME = AuthzXMLreader
GARVERSION = 1.0.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
PATCHFILES = macos.diff
endif

MASTER_SITES = 

LIBDEPS = apps/base/perl apps/base/libxml2

AUTHOR  = Andreas Peters
LICENSE = 
URL     = 

DESCRIPTION = Class to read authorization envelopes

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-perl=$(PREFIX)/bin/perl 

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; libtoolize -c; autoconf)
 
