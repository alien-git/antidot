GARNAME = AppConfig
GARVERSION = 1.66
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AB/ABW/ http://www.cpan.org/authors/id/A/AB/ABW/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AB/ABW/

LIBDEPS = apps/perl/perl

DESCRIPTION = Application config (from ARGV, file, ...)
AUTHOR = Andy Wardley
URL = http://cpan.uwinnipeg.ca/~abw
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule AppConfig $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = 
BUILD_ARGS = 

include ../category.mk

