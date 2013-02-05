GARNAME = Package-Stash
GARVERSION = 0.34
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DO/DOY/Package-Stash-0.34.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DO/DOY/

LIBDEPS = apps/perl/Module-Implementation apps/perl/Package-DeprecationManager apps/perl/Dist-CheckConflicts

DESCRIPTION = routines for manipulating stashes
AUTHOR = Jesse Luehrs
URL = http://search.cpan.org/~doy/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

