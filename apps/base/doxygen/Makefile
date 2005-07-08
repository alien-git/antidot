GARNAME = doxygen
GARVERSION = 1.4.3
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).src.tar.gz

MASTER_SITES = http://ftp.stack.nl/pub/users/dimitri/

LIBDEPS = apps/base/perl

DESCRIPTION = Documentation system for C++, C, Java, Objective-C

URL = http://www.stack.nl/~dimitri/doxygen/
AUTHOR = Dimitri van Heesch
LICENSE = GPL2 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix $(PREFIX) --perl $(PREFIX)/bin/perl

include ../category.mk
