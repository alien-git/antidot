GARNAME = XML-XPath
GARVERSION = 1.13
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MS/MSERGEANT/ http://www.cpan.org/authors/id/M/MS/MSERGEANT/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MS/MSERGEANT/

LIBDEPS = apps/base/XML-Parser

DESCRIPTION = A set of modules for parsing and evaluating
AUTHOR = Matt Sergeant
URL = http://cpan.uwinnipeg.ca/~msergeant
LICENSE =

AUTOTEST = testForAliEnPerlModule XML::XPath $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule XML::XPath $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

