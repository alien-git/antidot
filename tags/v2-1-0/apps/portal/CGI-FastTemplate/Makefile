GARNAME = CGI-FastTemplate
GARVERSION = 1.09
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/J/JM/JMOORE/ http://www.cpan.org/authors/id/J/JM/JMOORE/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/J/JM/JMOORE/

LIBDEPS = apps/base/perl

DESCRIPTION = Perl extension for managing templates, and performing variable interpolation.
URL = http://cpan.uwinnipeg.ca/~jmoore
AUTHOR = Jason Moore
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule CGI::FastTemplate $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule CGI::FastTemplate $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

