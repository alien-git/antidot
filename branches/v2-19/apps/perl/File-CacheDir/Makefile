GARNAME = File-CacheDir
GARVERSION = 1.30
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/E/EA/EARL/ http://www.cpan.org/authors/id/E/EA/EARL/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/E/EA/EARL/

LIBDEPS = apps/perl/perl

DESCRIPTION = Auto ttl-based file cleanup without a cron
AUTHOR = Earl Cahill
URL = http://cpan.uwinnipeg.ca/~earl
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

