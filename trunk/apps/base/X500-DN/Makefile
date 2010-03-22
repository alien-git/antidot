GARNAME = X500-DN
GARVERSION = 0.29
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RJ/RJOOP/ http://www.cpan.org/authors/id/R/RJ/RJOOP/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RJ/RJOOP/

LIBDEPS = apps/base/perl

DESCRIPTION = Handle X.500 DNs, parse and format them 
AUTHOR = Robert Joop
URL = http://search.cpan.org/~rjoop/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Net::Server $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); rm -f t/forkm.t)
