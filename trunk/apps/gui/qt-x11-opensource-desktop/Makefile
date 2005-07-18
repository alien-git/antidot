GARNAME = qt-x11-opensource-desktop
GARVERSION = 4.0.0
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gcc/gcc

MASTER_SITES =  http://sunsite.rediris.es/mirror/Qt/source/

DESCRIPTION = QT Graphics Library
URL = http://www.trolltech.com/
LICENSE = Q or GPL
AUTHOR = Trolltech


CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) -fast -qt-gif -qt-libpng -qt-libjpeg -static -release -no-exceptions 

CONFIGURE_ENV  = echo yes |
BUILD TARGETS  = symlinks src-qmake src-moc sub-src sub-tools

include ../category.mk

POST_INSTALL = ( rm -rf $(PREFIX)/examples $(PREFIX)/doc/html $(PREFIX)/demos )
