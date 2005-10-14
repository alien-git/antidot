GARNAME = glite-security-voms-client
GARVERSION = 1.6.4
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
ifeq ($(shell uname -s),Darwin)
PATCHFILES = Makefile.am.diff macos.diff
else
PATCHFILES = Makefile.am.diff
endif

MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.security.voms
GARCVSVERSION = glite-security-voms_R_1_6_3
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/glite/glite apps/base/globus-toolkit apps/base/openssl 

DESCRIPTION = VOMS
URL = http://www.glite.org
LICENSE = EGEE

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-docs=no --with-pic
CONFIGURE_ENV = eval CFLAGS="-I$(PREFIX)/globus/include/gcc32 $(CFGLAGS)"

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); sh autogen.sh) 
