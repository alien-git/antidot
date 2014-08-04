GARNAME = List-AllUtils
GARVERSION = 0.08
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = version.patch

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/Test-Warnings apps/perl/List-MoreUtils

DESCRIPTION = Combines List::Util and List::MoreUtils in one bite-sized package   
AUTHOR = DROLSKY
URL = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/
LICENSE = The Perl 5 License (Artistic 1 & GPL 1)


CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =  $(WORKSRC)/Makefile

BUILD_ARGS =  

include ../category.mk
