GARNAME = globus
GARVERSION = 2.4.3
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/gpt

DESCRIPTION = Globus Toolkit

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/gpt-build

INSTALL_ARGS = -force -verbose -installdir=$(GLOBUS_LOCATION) globus-gsi-2.4.3-src_bundle.tar.gz globus_io-4.0.tar.gz globus_ftp_control-1.11.tar.gz globus_ftp_client-1.10.tar.gz globus_gridftp_server-1.12.tar.gz globus_gass_transfer-2.4.tar.gz globus_gass_copy-2.9.tar.gz $(GLOBUS_FLAVOR)

INSTALL_ENV = env GLOBUS_CC="gcc"

include ../category.mk

#PRE_INSTALL =  ([ -f $(PREFIX)/bin/openssl ] && mv -f $(PREFIX)/bin/openssl $(PREFIX)/bin/openssl-noglobus) || true
#POST_INSTALL  =  $(GPT_LOCATION)/sbin/gpt-postinstall; ([ -f $(PREFIX)/bin/openssl -a -f $(PREFIX)/bin/openssl-noglobus ] && rm -f $(PREFIX)/bin/openssl && mv -f $(PREFIX)/bin/openssl-noglobus $(PREFIX)/bin/openssl) || true
