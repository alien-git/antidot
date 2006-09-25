GARNAME = Authen-SASL-Cyrus
GARVERSION = 0.13-server
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Authen-SASL-Cyrus-0.13b-server.patch
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PB/PBOETTCH/ 

LIBDEPS = apps/base/perl apps/base/Authen-SASL

DESCRIPTION = SASL authentication framework
AUTHOR = Mark Adamson
URL = http://search.cpan.org/~adamson/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Authen::SASL::Cyrus $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Authen-SASL-Cyrus $(GARVERSION)

CONFIGURE_ARGS =  INC="-I$(PREFIX)/include" LIBS="-L$(PREFIX)/lib -lsasl2" DEFINE="-DSASL2"
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = find $(WORKSRC) -type f -exec chmod u+w {} \;

LD_LIBRARY_PATH   := $(LD_LIBRARY_PATH):$(GLOBUS_LOCATION)/lib
DYLD_LIBRARY_PATH := $(LD_LIBRARY_PATH)

