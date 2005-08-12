GARNAME = Term-ReadLine-Gnu
GARVERSION = 1.15
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/H/HA/HAYASHI/ http://www.cpan.org/authors/id/H/HA/HAYASHI/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/H/HA/HAYASHI/

LIBDEPS = apps/base/perl apps/base/readline

DESCRIPTION = GNU Readline XS library wrapper
AUTHOR = Hiroo HAYASHI
URL = http://cpan.uwinnipeg.ca/~hayashi
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Term::ReadLine::Gnu $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
ifeq ($(ALICBS),)
TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

ifeq ($(shell uname),Darwin) 
CONFIGURE_ARGS = --includedir=/sw/include --libdir=/sw/lib
else
CONFIGURE_ARGS = --includedir=$(PREFIX)/include --libdir=$(PREFIX)/lib  
endif

include ../category.mk

