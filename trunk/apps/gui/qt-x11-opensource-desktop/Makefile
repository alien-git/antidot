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

CONFIGURE_ARGS = --prefix=$(PREFIX)
CONFIGURE_ENV  = echo yes |

include ../category.mk
