GARNAME = pks
GARVERSION = 0.9.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = macos.diff

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/pks/

LIBDEPS = 

DESCRIPTION = OpenPGP Public Key Server
URL = http://pks.sourceforge.net/
AUTHOR = Chris Kuethe, Richard Laager, David Shaw and M. Drew Streib, Marc Horowitz
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --prefix=$(PREFIX)

include ../category.mk
