GARNAME    = glite-data
GARVERSION = 1.1.5
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/glite/glite

DESCRIPTION = Glite data subproject files

CONFIGURE_SCRIPTS =
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_ENV = env PREFIX=$(PREFIX)

CONFIGURE_ARGS =

include ../category.mk
