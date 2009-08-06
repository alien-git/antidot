GARNAME = eugridpma-carep
GARVERSION = 1.31
CATEGORIES = apps-tools
DISTFILES   = igtf-preinstalled-bundle-classic-$(GARVERSION).tar.gz
#DISTNAME    = igtf-preinstalled-bundle-classic-$(GARVERSION)
#BINDISTNAME = igtf-preinstalled-bundle-classic-$(GARVERSION)
PATCHFILES = Makefile.patch

#https://dist.eugridpma.org/distribution/igtf/1.25/accredited/igtf-policy-installation-bundle-1.25.tar.gz
#http://dist.eugridpma.info/distribution/current/accredited/igtf-preinstalled-bundle-classic-1.26.tar.gz
MASTER_SITES = http://dist.eugridpma.info/distribution/current/accredited/ http://dist.eugridpma.org/distribution/igtf/1.25/accredited/

LIBDEPS = 

DESCRIPTION =  European Policy Management Authority for Grid Authentication in e-Science - acredited CA certificates
LICENSE =
AUTHOR =
URL = http://www.eugridpma.org
 

CONFIGURE_SCRIPTS =
BUILD_SCRIPTS =
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

PRE_INSTALL = (for a in $(WORKDIR)/*; do test -f "$$a" && mv "$$a" $(WORKSRC); done)


