GARNAME = Authen-SASL-Cyrus
GARVERSION = 0.13-server
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PB/PBOETTCH/

LIBDEPS = apps/base/Authen-SASL

PATCHFILES = Authen-SASL-Cyrus-0.13.1-server.patch

DESCRIPTION = SASL authentication framework
AUTHOR = Patrick  Boettcher 
URL = http://search.cpan.org/~PBOETTCH/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Authen::SASL::Cyrus $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS =  INC="-I$(PREFIX)/include" LIBS="-L$(PREFIX)/lib -lsasl2" DEFINE="-DSASL2"
BUILD_ARGS =  

include ../category.mk

