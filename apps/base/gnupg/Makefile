GARNAME = gnupg
GARVERSION = 1.4.0
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = ftp://ftp.gnupg.org/gcrypt/gnupg/ http://alien.cern.ch/cache/

LIBDEPS = 

DESCRIPTION = low-level core library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
