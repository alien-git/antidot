GARNAME = DBD-mysql
GARVERSION = 4.027
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/C/CA/CAPTTOFU/

LIBDEPS = apps/perl/perl apps/server/mysql apps/perl/DBI apps/alien/admin

DESCRIPTION = MySQL driver for DBI
AUTHOR = CAPTTOFU
URL = http://search.cpan.org/CPAN/authors/id/C/CA/CAPTTOFU/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

