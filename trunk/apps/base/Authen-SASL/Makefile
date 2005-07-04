GARNAME = Authen-SASL
GARVERSION = 2.09
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GB/GBARR/ http://www.cpan.org/authors/id/G/GB/GBARR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GB/GBARR/

LIBDEPS = apps/base/perl 

DESCRIPTION = SASL authentication framework
AUTHOR = Graham Barr 
URL = http://cpan.uwinnipeg.ca/~gbarr
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Authen::SASL $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

