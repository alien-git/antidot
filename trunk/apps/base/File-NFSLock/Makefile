GARNAME = File-NFSLock
GARVERSION = 1.20
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BB/BBB/ http://www.cpan.org/authors/id/B/BB/BBB/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BB/BBB/

LIBDEPS = apps/base/perl

DESCRIPTION = NFS compatible (safe) locking utility
AUTHOR = Rob Brown
URL = http://cpan.uwinnipeg.ca/~bbb
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule File::NFSLock $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

