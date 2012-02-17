GARNAME = POE
GARVERSION = 1.350
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/R/RC/RCAPUTO/POE-1.292.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RC/RCAPUTO/

LIBDEPS  = apps/perl/IO-Tty apps/perl/POE-Test-Loops

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

