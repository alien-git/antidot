GARNAME = alien-admin
GARVERSION = 2.1.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = 

MASTER_SITES = 

LIBDEPS = apps/alien/common apps/server/DBD-mysql apps/server/openldap apps/server/ejabberd

DESCRIPTION = AliEn admin component
URL = http://alien.cern.ch
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); find . -name bootstrap -exec chmod +x {} \; ; ./bootstrap )

