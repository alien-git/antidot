GARNAME = eugridpma-carep
GARVERSION = 1.62
CATEGORIES = apps-tools
DISTFILES   = igtf-preinstalled-bundle-slcs-$(GARVERSION).tar.gz
DISTNAME = $(GARNAME)
#DISTNAME    = igtf-preinstalled-bundle-classic-$(GARVERSION)
#BINDISTNAME = igtf-preinstalled-bundle-classic-$(GARVERSION)
PATCHFILES = Makefile.patch

MASTER_SITES = http://dist.eugridpma.info/distribution/current/accredited/ http://dist.eugridpma.org/distribution/igtf/1.25/accredited/

LIBDEPS = apps/gcc/gcc

DESCRIPTION =  European Policy Management Authority for Grid Authentication in e-Science - acredited CA certificates
LICENSE =
AUTHOR =
URL = http://www.eugridpma.org
 

CONFIGURE_SCRIPTS =
BUILD_SCRIPTS =
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

PRE_INSTALL = (for a in $(WORKDIR)/*; do mv "$$a" $(WORKSRC); done)


