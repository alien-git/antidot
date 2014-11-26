GARNAME = DBD-mysql
GARVERSION = 4.020
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://mirror.switch.ch/ftp/mirror/CPAN/authors/id/C/CA/CAPTTOFU/

LIBDEPS = apps/perl/perl apps/server/mysql apps/perl/DBI apps/alien/admin

DESCRIPTION = MySQL driver for DBI
AUTHOR = Rudy Lippan
URL = http://cpan.uwinnipeg.ca/~rudy
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

