GARNAME = ExtUtils-CBuilder
GARVERSION = 0.2703
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/K/KW/KWILLIAMS/ http://www.cpan.org/authors/id/K/KW/KWILLIAMS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/K/KW/KWILLIAMS/

LIBDEPS = apps/base/perl

DESCRIPTION = Compile and link C code for Perl modules
AUTHOR = Ken Williams
URL = http://cpan.uwinnipeg.ca/~kwilliams
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule ExtUtils::CBuilder $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

