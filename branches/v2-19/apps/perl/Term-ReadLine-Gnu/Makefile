GARNAME = Term-ReadLine-Gnu
GARVERSION = 1.21
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/H/HA/HAYASHI/
PATCHFILES = termcap.patch

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

CONFIGURE_ARGS = --includedir=$(PREFIX)/include --libdir=$(PREFIX)/$(TARGET_LIBNAME)

include ../category.mk

