GARNAME = cyrus-sasl
GARVERSION = 2.1.20
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.andrew.cmu.edu/pub/cyrus-mail/

LIBDEPS = 

DESCRIPTION = OpenSSL toolkit 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-gssapi --with-plugindir=$(PREFIX)/sasl --enable-krb4=no --enable-shared --with-dblib=none

#NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk
