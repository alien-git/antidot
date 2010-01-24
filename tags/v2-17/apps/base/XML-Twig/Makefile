GARNAME = XML-Twig
GARVERSION = 3.26
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MI/MIROD/ http://www.cpan.org/authors/id/M/MI/MIROD/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MI/MIROD/

LIBDEPS = apps/base/XML-Parser apps/base/XML-XPath apps/base/libwww-perl

DESCRIPTION = A perl module for processing huge XML documents in tree mode. 
AUTHOR = Michel Rodriguez
URL = http://search.cpan.org/~mirod/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule XML::Twig $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV =  yes |
BUILD_ARGS =  

include ../category.mk

