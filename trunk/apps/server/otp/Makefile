GARNAME = otp
GARVERSION = 11.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#ifeq ($(shell uname),Darwin)
#PATCHFILES = macos.diff
#endif

MASTER_SITES = 

LIBDEPS = apps/gcc/gcc

DESCRIPTION =  Open-source version of Erlang programming language
URL = http://www.erlang.org
AUTHOR = Ericsson Utvecklings AB
LICENSE = Erlang 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-ssl=$(PREFIX) --enable-threads --disable-hipe --enable-elib-malloc 

include ../category.mk
