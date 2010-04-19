GARNAME = DBD-CSV
GARVERSION = 0.28
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tgz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/H/HM/HMBRAND/

LIBDEPS = apps/base/DBI apps/base/SQL-Statement apps/base/Text-CSV_XS

DESCRIPTION = SQL engine and DBI driver for CSV files
AUTHOR = Jeff Zucker 
URL = http://cpan.uwinnipeg.ca/~jzucker
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

