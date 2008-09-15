GARNAME = AliEnBITS
GARVERSION = 1.4.24
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://monalisa2.cern.ch/~catac/AliEnBITS/

LIBDEPS = extra/bits/Template extra/bits/Graphviz-perl extra/bits/SLOCcount apps/portal/httpd apps/base/ApMon

DESCRIPTION = AliEn Build Integration and Testing System
AUTHOR = Catalin Cirstoiu
URL = 
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS =
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

CONFIGURE_ARGS = --prefix $(PREFIX)

include ../category.mk
