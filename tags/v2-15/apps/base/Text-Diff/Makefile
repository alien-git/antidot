GARNAME = Text-Diff
GARVERSION = 0.35
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RB/RBS/ http://www.cpan.org/authors/id/R/RB/RBS/

LIBDEPS = apps/base/Algorithm-Diff

AUTHOR  = Barrie Slaymaker
LICENSE = Perl
URL     = http://search.cpan.org/~rbs

DESCRIPTION =  Perform diffs on files and record sets 

AUTOTEST = testForAliEnPerlModule Text-Diff $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

