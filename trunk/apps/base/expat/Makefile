GARNAME = expat
GARVERSION = 1.95.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # expat.patch

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/expat/ http://alien.cern.ch/cache/

LIBDEPS = 

DESCRIPTION = Expat XML Parser

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --mandir=$(PREFIX)/man # $(DIRPATHS)
CONFIGURE_ENV  = #env CPPFLAGS="-no-cpp-precomp -pipe -g" LDFLAGS="-L$(PREFIX)/lib"
BUILD_ENV = 

#NOLDFLAGS=-L/usr/X11R6/lib
#NOCFLAGS=-L/usr/X11R6/lib
  
include ../category.mk

