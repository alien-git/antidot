GARNAME = log4cpp
GARVERSION = 0.3.4b
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://alien.cern.ch/cache/ http://puzzle.dl.sourceforge.net/sourceforge/log4cpp/ 

LIBDEPS = 

DESCRIPTION = A library of C++ classes for flexible logging to files, syslog, IDSA and other destinations.
URL = http://log4cpp.sourceforge.net/
AUTHOR = Bastiaan Bakker 
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)  --disable-doxygen --disable-dot --disable-html-docs  --disable-latex-docs

include ../category.mk
