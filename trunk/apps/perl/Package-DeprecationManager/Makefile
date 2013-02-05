GARNAME = Package-DeprecationManager
GARVERSION = 0.13
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/Package-DeprecationManager-0.13.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/Test-Fatal apps/perl/Test-Requires apps/perl/Params-Util apps/perl/List-MoreUtils apps/perl/Sub-Install

DESCRIPTION = Manage deprecation warnings for your distribution  
AUTHOR = Dave Rolsky
URL = http://search.cpan.org/~drolsky
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

