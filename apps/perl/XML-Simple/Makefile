GARNAME = XML-Simple
GARVERSION = 2.20
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GR/GRANTM/ http://www.cpan.org/authors/id/G/GR/GRANTM/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GR/GRANTM/

LIBDEPS = apps/perl/XML-SAX 

DESCRIPTION = Easy API to maintain XML (esp config files)
AUTHOR = Grant McLean 
URL = http://cpan.uwinnipeg.ca/~grantm
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

