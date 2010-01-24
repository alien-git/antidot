GARNAME = Net-Server
GARVERSION = 0.97
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RH/RHANDOM/ http://www.cpan.org/authors/id/R/RH/RHANDOM/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RH/RHANDOM/

LIBDEPS = apps/base/perl

DESCRIPTION = Extensible, general Perl server engine
AUTHOR = Paul Seamons
URL = http://search.cpan.org/~rhandom/
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
