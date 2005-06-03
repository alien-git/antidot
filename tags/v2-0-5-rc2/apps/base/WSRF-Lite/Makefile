GARNAME = WSRF-Lite
GARVERSION = 0.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = 

LIBDEPS = apps/base/XML-DOM apps/base/DateTime-Format-W3CDTF apps/base/DateTime-Format-Epoch

DESCRIPTION = WSRF container for perl by Mark Mc Keown, mark.mckeown@man.ac.uk
AUTHOR = Mark Mc Keown
URL = http://www.sve.man.ac.uk/Research/AtoZ/ILCT
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule WSRF::Lite $(GARVERSION)

CONFIGURE_ARGS = PREFIX=$(PREFIX)
BUILD_ARGS =  

include ../category.mk

