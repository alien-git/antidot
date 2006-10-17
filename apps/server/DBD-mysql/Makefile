GARNAME = DBD-mysql
GARVERSION = 3.0008
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CA/CAPTTOFU/ http://www.cpan.org/authors/id/C/CA/CAPTTOFU/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CA/CAPTTOFU/

LIBDEPS = apps/base/perl apps/server/mysql apps/base/DBI

DESCRIPTION = MySQL driver for DBI
AUTHOR = Rudy Lippan
URL = http://cpan.uwinnipeg.ca/~rudy
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule DBD::mysql $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = testForAliEnPerlModule DBD::mysql $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

