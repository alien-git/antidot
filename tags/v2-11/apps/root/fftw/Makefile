GARNAME = fftw
GARVERSION = 3.1.2
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://www.fftw.org/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Library for computing the discrete Fourier transform (DFT) in one or more dimensions
URL = http://www.fftw.org/
AUTHOR = Matteo Frigo
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

AUTOTEST = 

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

