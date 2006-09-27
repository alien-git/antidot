GARNAME = alien-srm
GARVERSION = 2.1.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =

LIBDEPS = apps/base/perl apps/base/cgsi-gsoap
BUILDDEPS = apps/glite/glite

DESCRIPTION = AliEn interface to SRM
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-thr-flavor=$(GLOBUS_FLAVOR)thr --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap=$(PREFIX) --with-cgsi-gsoap=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )

