GARNAME = Perl-Tidy
GARVERSION = 20070801
CATEGORIES = perl-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SH/SHANCOCK/ http://www.cpan.org/authors/id/S/SH/SHANCOCK/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SH/SHANCOCK/

LIBDEPS = apps/base/perl

DESCRIPTION =  Perltidy is a tool to indent and reformat perl scripts
AUTHOR = Steve Hancock
URL = http://cpan.uwinnipeg.ca/~shancock
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Perl::Tidy $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

