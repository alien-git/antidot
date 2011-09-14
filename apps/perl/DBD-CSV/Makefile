GARNAME = DBD-CSV
GARVERSION = 0.33
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tgz

#http://search.cpan.org/CPAN/authors/id/H/HM/HMBRAND/DBD-CSV-0.30.tgz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/H/HM/HMBRAND/

LIBDEPS = apps/perl/SQL-Statement apps/perl/Text-CSV_XS

DESCRIPTION = SQL engine and DBI driver for CSV files
AUTHOR = Jeff Zucker 
URL = http://cpan.uwinnipeg.ca/~jzucker
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile


CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

