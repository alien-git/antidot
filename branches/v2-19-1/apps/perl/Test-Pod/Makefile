GARNAME = Test-Pod
GARVERSION = 1.48
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DW/DWHEELER/

LIBDEPS = apps/perl/perl

DESCRIPTION = check for POD errors in files 
AUTHOR = David E. Wheeler
URL  = http://search.cpan.org/~dwheeler
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Exporter::Lite $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

