GARNAME = Authen-SASL
GARVERSION = 2.15
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#PATCHFILES = sasl.diff

#http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Authen-SASL-2.15.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/

LIBDEPS = apps/perl/Digest-HMAC apps/tools/cyrus-sasl

DESCRIPTION = SASL authentication framework
AUTHOR = Graham Barr 
URL = http://cpan.uwinnipeg.ca/~gbarr
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = -default 
CONFIGURE_ENV=env PERL_MM_USE_DEFAULT=1

BUILD_ARGS =  

include ../category.mk

