GARNAME = GraphViz
GARVERSION = 2.04
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/L/LB/LBROCARD/ http://www.cpan.org/authors/id/L/LB/LBROCARD/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/L/LB/LBROCARD/

LIBDEPS = extra/bits/IPC-Run

DESCRIPTION = Interface to the GraphViz graphing tool
AUTHOR = Leon Brocard
URL = http://cpan.uwinnipeg.ca/~lbrocard
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule GraphViz $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = 
BUILD_ARGS = 

include ../category.mk

