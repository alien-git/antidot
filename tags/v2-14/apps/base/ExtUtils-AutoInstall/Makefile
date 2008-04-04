GARNAME = ExtUtils-AutoInstall
GARVERSION = 0.61
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AU/AUTRIJUS/ http://www.cpan.org/authors/id/A/AU/AUTRIJUS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AU/AUTRIJUS/

LIBDEPS = apps/base/perl

DESCRIPTION = Automatic install of dependencies via CPAN
AUTHOR = Autrijus Tang
URL = http://cpan.uwinnipeg.ca/~autrijus
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule ExtUtils::AutoInstall $(GARVERSION )
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "\n\n" |   
BUILD_ARGS =  

include ../category.mk

