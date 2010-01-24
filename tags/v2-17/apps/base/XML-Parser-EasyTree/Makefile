GARNAME = XML-Parser-EasyTree
GARVERSION = 0.01
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/E/EB/EBOHLMAN/ http://www.cpan.org/authors/id/E/EB/EBOHLMAN/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/E/EB/EBOHLMAN/

DESCRIPTION = Easier tree style for XML-Parser
LIBDEPS = apps/base/perl
AUTHOR = Eric Bohlman 
URL = http://cpan.uwinnipeg.ca/~ebohlman
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule XML::Parser::EasyTree $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

