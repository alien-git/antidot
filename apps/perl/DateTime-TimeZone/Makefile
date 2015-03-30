GARNAME = DateTime-TimeZone
GARVERSION = 1.34
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/ http://backpan.perl.org/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/Class-Singleton apps/perl/Params-Validate apps/perl/Class-Load

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

