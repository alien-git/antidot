GARNAME = XML-Parser
GARVERSION = 2.36
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MS/MSERGEANT/ http://www.cpan.org/authors/id/M/MS/MSERGEANT/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MS/MSERGEANT/

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
