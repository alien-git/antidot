GARNAME = log4cpp
GARVERSION = 0.3.4b
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/log4cpp/ http://alien.cern.ch/cache/

LIBDEPS = 

DESCRIPTION = A library of C++ classes for flexible logging to files, syslog, IDSA and other destinations.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)  --disable-doxygen --disable-dot --disable-html-docs  --disable-latex-docs

include ../category.mk
