GARNAME = DB_File
GARVERSION = 1.814
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/P/PM/PMQS/ http://www.cpan.org/authors/id/P/PM/PMQS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/db

DESCRIPTION = Perl5 access to Berkeley DB version 1.x 
AUTHOR = Paul Marquess 
URL = http://cpan.uwinnipeg.ca/~pmqs
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

BUILD_ARGS =  

include ../category.mk

export DB_FILE_INCLUDE=$(PREFIX)/include
export DB_FILE_LIB=$(PREFIX)/lib
