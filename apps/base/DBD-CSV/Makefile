GARNAME = DBD-CSV
GARVERSION = 0.21
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/J/JZ/JZUCKER/ http://www.cpan.org/authors/id/J/JZ/JZUCKER/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/J/JZ/JZUCKER/

LIBDEPS = apps/base/DBI apps/base/SQL-Statement apps/base/Text-CSV_XS

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

