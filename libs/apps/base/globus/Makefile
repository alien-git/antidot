GARNAME = globus
GARVERSION = 2.4.3
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/gpt

DESCRIPTION = Globus Toolkit

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 

ifeq "$(shell uname)" "Darwin"
INSTALL_SCRIPT =
else
INSTALL_SCRIPTS = $(WORKSRC)/gpt-build
endif

INSTALL_ARGS = -installdir=$(PREFIX) globus-gsi-2.4.3-src_bundle.tar.gz globus_io-4.0.tar.gz globus_ftp_control-1.11.tar.gz globus_ftp_client-1.10.tar.gz globus_gridftp_server-1.12.tar.gz globus_gass_transfer-2.4.tar.gz globus_gass_copy-2.9.tar.gz $(GLOBUS_FLAVOR)

include ../category.mk

POST_INSTALL  =  $(GPT_LOCATION)/sbin/gpt-postinstall