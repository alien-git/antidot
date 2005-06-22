GARNAME = SealedEnvelope
GARVERSION = 1.0.1
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.PL.diff configure.diff uuid.diff

MASTER_SITES = 

LIBDEPS = apps/base/swig apps/base/uuid

AUTHOR  = Andreas Peters
LICENSE = 
URL     = 

DESCRIPTION = Packing binary data into an encoded signed envelope object

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-perl=$(PREFIX)/bin/perl --enable-perl-module --with-swig=$(PREFIX)/bin/swig

BUILD_ARGS =

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; libtoolize -c; autoconf)
 

POST_INSTALL = (cd $(WORKSRC) ; make perlmodule-install) 