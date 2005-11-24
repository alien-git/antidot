GARNAME = qt
GARVERSION = 4.0.1
CATEGORIES = meta
DISTFILES  =

ifeq ($(shell uname -s),Darwin)
LIBDEPS = apps/gui/qt-mac-opensource-src
else
LIBDEPS = apps/gui/qt-x11-opensource-src
endif

DESCRIPTION = QT meta package

include ../category.mk

