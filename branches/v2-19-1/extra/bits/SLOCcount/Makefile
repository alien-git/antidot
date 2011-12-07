GARNAME = sloccount
GARVERSION = 2.26
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = makefile.patch

MASTER_SITES = http://www.dwheeler.com/sloccount/

LIBDEPS = apps/gcc/gcc apps/perl/perl

DESCRIPTION = A set of tools for counting physical Source Lines of Code (SLOC)
URL = http://www.dwheeler.com/sloccount/
AUTHOR = David A. Wheeler
LICENSE = GPL

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/makefile
INSTALL_SCRIPTS = $(WORKSRC)/makefile

BUILD_ENV = env PREFIX=$(PREFIX)
INSTALL_ENV = env PREFIX=$(PREFIX)

include ../category.mk
