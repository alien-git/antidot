GARNAME = cyrus-sasl-alien
GARVERSION = 2.1.22_2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
PATCHFILES = alienssh.diff
endif

MASTER_SITES = 

LIBDEPS = apps/base/cyrus-sasl apps/base/globus-toolkit apps/base/Authen-SASL-Cyrus apps/base/eugridpma-carep

DESCRIPTION = SASL is the Simple Authentication and Security Layer
URL = http://asg.web.cmu.edu/sasl/
AUTHOR =  Artem HARUTYUNYAN, Arsen HAYRAPETYAN

LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEAST_SCRIPTS = $(WORKSRC)/Makefile



CONFIGURE_ARGS = --prefix=$(PREFIX) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-globus=$(GLOBUS_LOCATION) --with-openssl=$(PREFIX) --with-sasl-dir=$(PREFIX) --enable-alientoken  --enable-aliengssapi --enable-alienjobtoken

include ../category.mk

#PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap) 
