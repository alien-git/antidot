GARNAME = IO-Compress
GARVERSION = 2.055
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/perl/perl apps/perl/Compress-Raw-Bzip2 apps/perl/Compress-Raw-Zlib

DESCRIPTION = IO-Compress
URL = http://lwp.linpro.no/lwp/
AUTHOR = Gisle Aas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

