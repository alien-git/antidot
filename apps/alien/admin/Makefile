CVS_TAG = $(shell echo '$$Name$$' | awk '{print $$2}' | sed -e 's/^\$$$$/HEAD/' )

GARNAME = alien-admin
GARVERSION = $(CVS_TAG)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME = alien-admin
GARCVSVERSION = $(CVS_TAG)

MASTER_SITES = pserver://cvs@alisoft.cern.ch:/soft/cvsroot/ 

LIBDEPS = apps/alien/common

DESCRIPTION = AliEn admin component
URL = http://alien.cern.ch
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); find . -name bootstrap -exec chmod +x {} \; ; ./bootstrap )


