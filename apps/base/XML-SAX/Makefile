GARNAME = XML-SAX
GARVERSION = 0.12
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MS/MSERGEANT/ http://www.cpan.org/authors/id/M/MS/MSERGEANT/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MS/MSERGEANT/

LIBDEPS = apps/base/perl apps/base/XML-NamespaceSupport

DESCRIPTION = Simple API for XML
AUTHOR = Matt Sergeant
URL = http://cpan.uwinnipeg.ca/~msergeant
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV =  printf "\n" | 
BUILD_ARGS =  

include ../category.mk

