GARNAME = XML-Parser
GARVERSION = 2.41
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/T/TO/TODDR/

LIBDEPS = apps/perl/perl apps/system/expat

DESCRIPTION = Flexible fast parser with plug-in styles
AUTHOR = Matt Sergeant 
URL = http://cpan.uwinnipeg.ca/~msergeant
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule XML::Parser $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = EXPATLIBPATH=$(PREFIX)/lib EXPATINCPATH=$(PREFIX)/include  
BUILD_ARGS =  

include ../category.mk
