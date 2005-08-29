ifeq ($(shell uname -s),Darwin)
GARNAME = qt-mac-opensource-src
GARVERSION = 4.0.1
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
MASTER_SITES = ftp://ftp.ntua.gr/pub/X11/Qt/qt/source/ ftp://ftp.trolltech.com/qt/source/
CONFIGURE_ARGS = --prefix=$(PREFIX) -fast -qt-gif -qt-libpng -qt-libjpeg -static -release -no-exceptions 
else
GARNAME = qt-x11-opensource-desktop
GARVERSION = 4.0.0
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
MASTER_SITES = ftp://ftp.fu-berlin.de/unix/X11/gui/Qt/source/ http://sunsite.rediris.es/mirror/Qt/source/
PATCHFILES = qatomic.patch
CONFIGURE_ARGS = --prefix=$(PREFIX) -fast -qt-gif -qt-libpng -qt-libjpeg -static -release -no-exceptions 
endif

CATEGORIES = libs

LIBDEPS = apps/gcc/gcc

DESCRIPTION = QT Graphics Library
URL = http://www.trolltech.com/
LICENSE = Q or GPL
AUTHOR = Trolltech

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV  = echo yes |
BUILD TARGETS  = symlinks src-qmake src-moc sub-src sub-tools

include ../category.mk

POST_INSTALL = ( rm -rf $(PREFIX)/examples $(PREFIX)/doc/html $(PREFIX)/demos )
