GARNAME = Authen-SASL-Cyrus
GARVERSION = 0.13.1-server
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = 

LIBDEPS = apps/base/perl apps/base/cyrus-sasl apps/base/Authen-SASL

DESCRIPTION = SASL authentication framework
AUTHOR = Mark Adamson
URL = http://search.cpan.org/~adamson/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Authen::SASL::Cyrus $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS =  INC="-I$(PREFIX)/include" LIBS="-L$(PREFIX)/lib -lsasl2" DEFINE="-DSASL2"
BUILD_ARGS =  

include ../category.mk

