GARNAME = openssl
GARVERSION = 0.9.7e
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/base/zlib 

DESCRIPTION = OpenSSL toolkit 

CONFIGURE_SCRIPTS = $(WORKSRC)/config
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) shared --openssldir=$(PREFIX)/ssl
NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk
