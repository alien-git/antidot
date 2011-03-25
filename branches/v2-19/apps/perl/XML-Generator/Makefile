GARNAME = XML-Generator
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BH/BHOLZMAN/ http://www.cpan.org/authors/id/B/BH/BHOLZMAN/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BH/BHOLZMAN/

LIBDEPS = apps/perl/perl

DESCRIPTION = Generates XML documents
AUTHOR = Benjamin Holzman
URL = http://cpan.uwinnipeg.ca/~bholzman
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule XML::Generator $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

