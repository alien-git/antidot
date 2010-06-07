GARNAME = google-perftools
GARVERSION = 1.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://google-perftools.googlecode.com/files/
#google-perftools-1.5.tar.gz


LIBDEPS = apps/gcc/gcc

AUTHOR  = Craig Silverstein
LICENSE = New BSD License
URL     = http://code.google.com/p/google-perftools/

DESCRIPTION =  The fastest malloc we've seen

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env CFLAGS="" CXXFLAGS="" CPPFLAGS=""

CONFIGURE_ARGS =  --prefix=$(PREFIX) --enable-frame-pointers
BUILD_ARGS =  

include ../category.mk

