GARNAME = Params-Validate
GARVERSION = 1.13
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/perl/Test-Requires apps/perl/Test-Fatal apps/perl/Module-Implementation

DESCRIPTION = Validate sub params against a spec
AUTHOR = Dave Rolsky
URL = http://cpan.uwinnipeg.ca/~drolsky
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ARGS =
BUILD_ARGS =

include ../category.mk

