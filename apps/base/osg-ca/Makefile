GARNAME = osg-ca 
GARVERSION = 1.3
CATEGORIES = apps-tools
DISTFILES   = osg-certificates-$(GARVERSION).tar.gz
DISTNAME    = osg-certificates-$(GARVERSION)
BINDISTNAME = osg-certificates-$(GARVERSION)
PATCHFILES = 

MASTER_SITES = http://software.grid.iu.edu/pacman/cadist/1.3/

LIBDEPS = 

DESCRIPTION =   Open Science Grid - acredited CA certificates

LICENSE =
AUTHOR =
URL = http://software.grid.iu.edu/pacman/cadist/ca-certs-version
 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/globus/share/certificates --with-profile=classic
BUILD_ARGS   = 
INSTALL_ARGS = 

include ../category.mk

