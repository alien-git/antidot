GARNAME    = glite
GARVERSION = 1.0.8
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS =

DESCRIPTION = Glite project files

CONFIGURE_SCRIPTS =
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_ENV = env PREFIX=$(PREFIX)

CONFIGURE_ARGS =

include ../category.mk

x:
	echo $(MASTER_SITES)
	echo $(DISTFILES)


