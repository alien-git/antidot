GARNAME = eugridpma-carep-classic
GARVERSION = 1.63
CATEGORIES = apps-tools
DISTFILES   = igtf-preinstalled-bundle-classic-$(GARVERSION).tar.gz
DISTNAME = $(GARNAME)
PATCHFILES = Makefile.patch

MASTER_SITES = http://dist.eugridpma.info/distribution/current/accredited/

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


