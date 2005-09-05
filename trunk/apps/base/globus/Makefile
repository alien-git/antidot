GARNAME = globus
GARVERSION = 2.4.3ng
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = config.diff

MASTER_SITES = 

LIBDEPS   = apps/gcc/gcc apps/base/gpt

DESCRIPTION = Globus Toolkit
URL = http://www.globus.org/
LICENSE = Globus 
AUTHOR = Globus Alliance
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

INSTALL_ENV = env GLOBUS_CC="gcc" GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) 

CONFIGURE_ENV = env GLOBUS_CC="gcc" GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) 
CONFIGURE_ARGS =  --with-flavor=$(GLOBUS_FLAVOR)

ifeq ($(shell uname),Darwin)
INSTALL_ENV += GLOBUS_BUILD_TARGETS="client"
CONFIGURE_ENV += CPPFLAGS="-I/sw/include -no-cpp-precomp -I/sw/include -no-cpp-precomp -DHAVE_NETDB_H -DHAVE_SYS_SOCKET_H -DBIND_8_COMPAT"
else
INSTALL_ENV += GLOBUS_BUILD_TARGETS="client server"
endif

include ../category.mk

POST_INSTALL = ( cd $(GLOBUS_LOCATION)/setup/globus; env GLOBUS_LOCATION="$(GLOBUS_LOCATION)" GPT_LOCATION="$(GPT_LOCATION)" PERL5LIB="$(PREFIX)/globus/lib/perl5:$(PREFIX)/lib/perl5" $(PREFIX)/bin/perl $(GLOBUS_LOCATION)/setup/globus/setup-globus-common.pl ; touch -c $(GLOBUS_LOCATION)/include/$(GLOBUS_FLAVOR)/globus_config.h)

ifeq ($(GLOBUS_FLAVOR),gcc64)
CONFIGURE_ARGS += --enable-64bit 
endif

