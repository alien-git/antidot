GARNAME = Curses
GARVERSION = 1.13
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tgz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GI/GIRAFFED/

LIBDEPS = apps/base/perl

DESCRIPTION = Terminal screen handling and optimization
AUTHOR = William Setzer and Bryan Henderson  
URL = http://search.cpan.org/~giraffed
LICENSE = Artistic or GNU

AUTOTEST = testForAliEnPerlModule Curses $(GARVERSION )

CONFIGURE_ENV = env CURSES_CFLAGS=" -I$(PREFIX)/include" CURSES_LDFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64"

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  

include ../category.mk

pre-configure:
	cp work/$(GARNAME)-$(GARVERSION)/hints/c-darwin-thread-multi-2level.h work/$(GARNAME)-$(GARVERSION)/hints/c-darwin.h


