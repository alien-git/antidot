GARNAME = alien-classad
GARVERSION = 2.1.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =

LIBDEPS = apps/perl/perl apps/tools/classad apps/devel/swig

DESCRIPTION = AliEn classad component
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

DARWIN = $(shell uname)

ifneq ($(DARWIN),Darwin)
    TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-classads-dir=$(PREFIX) --with-classad-lib=classad --with-swig-dir=$(PREFIX) --with-perl5=$(PREFIX)/bin/perl

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC);env PREFIX=$(PREFIX) sh bootstrap )
