GARNAME = XML-NamespaceSupport
GARVERSION = 1.11
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RB/RBERJON/ http://www.cpan.org/authors/id/R/RB/RBERJON/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RB/RBERJON/ http://search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/

LIBDEPS = apps/perl/perl

DESCRIPTION = Flexible fast parser with plug-in styles
AUTHOR = Robin Berjon
URL = http://cpan.uwinnipeg.ca/~rberjon
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule XML::NamespaceSupport $(GARVERSION)

CONFIGURE_ARGS = # EXPATLIBPATH=$(PREFIX)/lib EXPATINCPATH=$(PREFIX)/include  
BUILD_ARGS =  

include ../category.mk
