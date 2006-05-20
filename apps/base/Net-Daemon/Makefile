GARNAME = Net-Daemon
GARVERSION = 0.38
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/J/JW/JWIED/ http://www.cpan.org/authors/id/J/JW/JWIED/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/J/JW/JWIED/

LIBDEPS = apps/base/perl

DESCRIPTION = Abstract base class for portable servers
AUTHOR = Jochen Wiedmann
URL = http://cpan.uwinnipeg.ca/~jwied
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Net::Daemon $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); rm -f t/forkm.t)
