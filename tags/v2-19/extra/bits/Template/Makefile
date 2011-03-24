GARNAME = Template-Toolkit
GARVERSION = 2.22
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AB/ABW/ http://www.cpan.org/authors/id/A/AB/ABW/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AB/ABW/

LIBDEPS = extra/bits/AppConfig

DESCRIPTION = A fast, powerful and extensible template processing system
AUTHOR = Andy Wardley
URL = http://wardley.org/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule IPC::Run $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = TT_PREFIX=$(PREFIX)/tt2 TT_IMAGES=$(PREFIX)/tt2/images TT_DBI=n TT_ACCEPT=y
BUILD_ARGS = 

include ../category.mk

