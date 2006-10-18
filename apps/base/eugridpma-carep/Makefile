GARNAME = eugridpma-carep
GARVERSION = 1.10
CATEGORIES = apps-tools
DISTFILES   = igtf-policy-installation-bundle-$(GARVERSION).tar.gz
DISTNAME    = igtf-policy-installation-bundle-$(GARVERSION)
BINDISTNAME = igtf-policy-installation-bundle-$(GARVERSION)
PATCHFILES = 

MASTER_SITES = http://www.eugridpma.org/distribution/igtf/$(GARVERSION)/accredited/

LIBDEPS = apps/base/globus-toolkit

DESCRIPTION =  European Policy Management Authority for Grid Authentication in e-Science - acredited CA certificates
LICENSE =
AUTHOR =
URL = http://www.eugridpma.org
 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/globus/share/certificates --with-profile=classic
BUILD_ARGS   = 
INSTALL_ARGS = 

include ../category.mk

