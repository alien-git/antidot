GARNAME = YAML
GARVERSION = 0.68
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/I/IN/INGY/ http://www.cpan.org/authors/id/I/IN/INGY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/I/IN/INGY/

LIBDEPS = apps/base/perl

DESCRIPTION = YAML Ain Markup Language (tm)
AUTHOR = Brian Ingerson 
URL = http://cpan.uwinnipeg.ca/~ingy
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule YAML $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = yes |  
BUILD_ARGS =  

include ../category.mk

