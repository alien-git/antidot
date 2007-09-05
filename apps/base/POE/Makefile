GARNAME = POE
GARVERSION = 0.9989
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RC/RCAPUTO/

LIBDEPS  = apps/base/Socket6 apps/base/Event apps/base/Curses apps/base/Filter-Template


DESCRIPTION = Portable multitasking and networking framework for Perl 
AUTHOR = Rocco Caputo 
URL = http://search.cpan.org/~rcaputo/
LICENSE = Perl and GPL

AUTOTEST = testForAliEnPerlModule POE $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

CONFIGURE_ARGS = --default 

include ../category.mk

