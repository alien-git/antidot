GARNAME = DateTime-TimeZone
GARVERSION = 1.72
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/Test-Fatal apps/perl/Test-Output apps/perl/Test-Requires apps/perl/Class-Load apps/perl/List-AllUtils apps/perl/Params-Validate

DESCRIPTION = Time zone object base class and factory
AUTHOR = Dave Rolsky
URL = http://cpan.uwinnipeg.ca/~drolsky
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

