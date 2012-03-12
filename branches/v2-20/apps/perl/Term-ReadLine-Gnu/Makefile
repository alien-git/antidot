GARNAME = Term-ReadLine-Gnu
GARVERSION = 1.20
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/H/HA/HAYASHI/

LIBDEPS = apps/perl/perl apps/system/readline

DESCRIPTION = GNU Readline XS library wrapper
AUTHOR = Hiroo HAYASHI
URL = http://cpan.uwinnipeg.ca/~hayashi
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
ifeq ($(ALICBS),)
TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

ifeq ($(shell uname),Darwin)
	CONFIGURE_ARGS = --includedir=$(PREFIX)/include --includedir=/sw/include --libdir=$(PREFIX)/$(TARGET_LIBNAME) --libdir=/sw/lib
else
	CONFIGURE_ARGS = --includedir=$(PREFIX)/include --libdir=$(PREFIX)/$(TARGET_LIBNAME)
endif

include ../category.mk

