GARNAME = gsoap
GARVERSION = 2.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).2.tar.gz
PATCHFILES = gsoap-2.6.2-instsrc.patch

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/gsoap2/  

LIBDEPS = apps/gcc/gcc

DESCRIPTION = gSOAP Toolkit
URL = http://gsoap2.sourceforge.net/
AUTHOR = 
LICENSE = gSOAP and GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-ssl --with-openssl=$(PREFIX) 

CONFIGURE_ENV = CFLAGS="-fPIC" CXXFLAGS="-fPIC" CPPFLAGS="-fPIC"

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; autoconf )

