GARNAME = google-perftools
GARVERSION = 1.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://google-perftools.googlecode.com/files/
#google-perftools-1.5.tar.gz

#we depend on xrootd in order to have api dir already created                                                                                      
LIBDEPS = apps/gcc/gcc apps/base/xrootd 

AUTHOR  = Craig Silverstein
LICENSE = New BSD License
URL     = http://code.google.com/p/google-perftools/

DESCRIPTION =  The fastest malloc we've seen

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env CFLAGS="" CXXFLAGS="" CPPFLAGS=""

CONFIGURE_ARGS =  --prefix=$(PREFIX) --enable-frame-pointers
BUILD_ARGS =  

include ../category.mk

POST_INSTALL = (cd $(PREFIX)/api/lib; ln -sf ../../lib/libtcmalloc.so libtcmalloc.so; ln -sf ../../lib/libtcmalloc_minimal.so libtcmalloc_minimal.so;)        