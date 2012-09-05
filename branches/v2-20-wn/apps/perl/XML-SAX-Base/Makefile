GARNAME = XML-SAX-Base
GARVERSION = 1.00
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/K/KH/KHAMPTON/

LIBDEPS = apps/perl/perl

DESCRIPTION = Simple API for XML
AUTHOR = Matt Sergeant
URL = http://cpan.uwinnipeg.ca/~msergeant
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule XML::SAX $(GARVERSION)

CONFIGURE_ENV =  printf "\n" | 
BUILD_ARGS =  

include ../category.mk

