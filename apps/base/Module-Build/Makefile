GARNAME = Module-Build
GARVERSION = 0.3607
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DA/DAGOLDEN/

LIBDEPS = apps/base/Module-Signature  apps/base/Archive-Tar apps/base/ExtUtils-CBuilder apps/base/YAML


DESCRIPTION = Build, test, and install Perl modules
AUTHOR = Ken Williams
URL = http://cpan.uwinnipeg.ca/~kwilliams
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ENV = 
BUILD_ARGS =  

include ../category.mk

