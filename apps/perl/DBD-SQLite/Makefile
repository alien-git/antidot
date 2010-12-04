GARNAME = DBD-SQLite
GARVERSION = 1.31
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/A/AD/ADAMK/DBD-SQLite-1.31.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/A/AD/ADAMK/

LIBDEPS = apps/perl/SQL-Statement  apps/perl/DBI

DESCRIPTION = SQL engine and DBI driver for SQLite files
AUTHOR = Adam Kennedy <adamk@cpan.org>
URL = http://cpan.uwinnipeg.ca/~adamk
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile


CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

