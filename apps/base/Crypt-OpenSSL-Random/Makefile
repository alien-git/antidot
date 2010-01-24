GARNAME = Crypt-OpenSSL-Random
GARVERSION = 0.04
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/I/IR/IROBERTS/ http://www.cpan.org/authors/id/I/IR/IROBERTS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/I/IR/IROBERTS/

LIBDEPS = apps/base/globus-toolkit apps/base/perl

DESCRIPTION = Interface to OpenSSL PRNG methods
AUTHOR = Ian Robertson
URL = http://cpan.uwinnipeg.ca/~iroberts
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Crypt::OpenSSL::Random $(GARVERSION)

#ifeq ($(shell uname),Darwin)
#CONFIGURE_ARGS = INC=-I/usr/kerberos/include 
#else
CONFIGURE_ARGS = LIBS="-L$(PREFIX)/globus/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)" INC="-I$(PREFIX)/globus/include/$(GLOBUS_FLAVOR)/ -I/usr/kerberos/include/"
#endif

BUILD_ARGS =  

include ../category.mk

