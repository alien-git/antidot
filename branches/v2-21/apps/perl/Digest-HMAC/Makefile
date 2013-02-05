GARNAME = Digest-HMAC
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/Digest-HMAC-1.02.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/

LIBDEPS = apps/perl/Digest-SHA1

DESCRIPTION =  Keyed-Hashing for Message Authentication 
AUTHOR = Gisle Aas
URL = http://cpan.uwinnipeg.ca/~gaas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Digest::HMAC $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

