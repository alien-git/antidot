GARNAME = SealedEnvelope
GARVERSION = 1.0.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.PL.diff  uuid.diff
ifeq ($(shell uname),Darwin)
PATCHFILES += macosx.diff 
endif

MASTER_SITES = 

LIBDEPS = apps/base/swig apps/base/uuid apps/base/openssl

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


PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; libtoolize -c; automake -a; autoconf)
 

POST_INSTALL = (cd $(WORKSRC) ; make perlmodule-install) 
