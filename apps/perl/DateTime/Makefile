GARNAME = DateTime
GARVERSION = 1.10
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/DateTime-Locale apps/perl/DateTime-TimeZone apps/perl/Test-Warnings apps/perl/Test-Fatal

DESCRIPTION = A complete, easy to use date and time object
URL = http://cpan.uwinnipeg.ca/~drolsky
AUTHOR = Dave Rolsky
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

