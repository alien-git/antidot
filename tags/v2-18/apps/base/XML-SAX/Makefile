GARNAME = XML-SAX
GARVERSION = 0.96
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/

LIBDEPS = apps/base/XML-NamespaceSupport

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

