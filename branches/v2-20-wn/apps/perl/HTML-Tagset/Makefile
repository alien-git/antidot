GARNAME = HTML-Tagset
GARVERSION = 3.20
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PE/PETDANCE/

LIBDEPS = apps/perl/perl

DESCRIPTION = data tables useful in parsing HTML
AUTHOR = Sean M. Burke
URL = http://cpan.uwinnipeg.ca/~sburke
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule HTML::Tagset $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

