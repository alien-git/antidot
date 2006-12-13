GARNAME = alien-gssapi
GARVERSION = 2.1.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =

LIBDEPS = apps/base/globus-toolkit apps/glite/glite apps/base/eugridpma-carep

DESCRIPTION = AliEn GSSAPI component
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-glite-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) GLOBUS_LOCATION=$(GLOBUS_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) sh ./bootstrap )
