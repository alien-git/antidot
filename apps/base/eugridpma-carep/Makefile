GARNAME = eugridpma-carep
GARVERSION = 1.26
CATEGORIES = apps-tools
DISTFILES   = igtf-policy-installation-bundle-$(GARVERSION).tar.gz
DISTNAME    = igtf-policy-installation-bundle-$(GARVERSION)
BINDISTNAME = igtf-policy-installation-bundle-$(GARVERSION)
PATCHFILES = 

#https://dist.eugridpma.org/distribution/igtf/1.25/accredited/igtf-policy-installation-bundle-1.25.tar.gz
#http://dist.eugridpma.info/distribution/current/accredited/igtf-preinstalled-bundle-classic-1.26.tar.gz
MASTER_SITES = http://dist.eugridpma.info/distribution/current/accredited/

LIBDEPS = 

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

