GARNAME = instantclient-sqlplus
GARVERSION = 11.2.0.2.0
CATEGORIES = perl

#instantclient-sqlplus-linux-x86-64-11.2.0.2.0.zip
DISTFILES =

DISTNAME = instantclient_11_2
PATCHFILES = Makefile.patch

MASTER_SITES = 


ifeq ($(shell ../../../platform.sh platform),x86_64-unknown-linux-gnu)
    DISTFILES = $(GARNAME)-linux-x86-64-$(GARVERSION).zip
endif

ifeq ($(shell ../../../platform.sh platform),i686-pc-linux-gnu)
    DISTFILES = $(GARNAME)-linux32-$(GARVERSION).zip
endif

ifeq ($(shell ../../../platform.sh platform),x86_64-apple-darwin)
    DISTFILES = $(GARNAME)-10.2.0.4.0-macosx-x64.zip
    DISTNAME = instantclient_10_2
    PATCHFILES = Makefile.macos.patch
endif

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Oracle Instant Client
AUTHOR = Oracle
URL = http://www.oracle.com
LICENSE = Oracle

INSTALL_ENV = env PREFIX=$(PREFIX)

INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

