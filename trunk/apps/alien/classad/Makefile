GARNAME = glite-alien-classad
GARVERSION = 2.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.classad
GARCVSVERSION = glite-alien-classad_branch_2_0_0

MASTER_SITES =  http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/ webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/base/perl apps/base/classad apps/base/swig apps/glite/glite

DESCRIPTION = AliEn classad component

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX) --with-classads-dir=$(PREFIX) --with-classad-lib=classad --with-swig-dir=$(PREFIX) --with-perl5=$(PREFIX)/bin/perl

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC);env PREFIX=$(PREFIX) sh bootstrap )
POST_INSTALL  = (touch $(PREFIX)/lib/perl5/site_perl/5.8.6/Classad.pm) 