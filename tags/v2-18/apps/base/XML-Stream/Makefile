GARNAME = XML-Stream
GARVERSION = 1.23
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DA/DAPATRICK/

LIBDEPS = apps/base/Authen-SASL apps/base/IO-Socket-SSL apps/base/Net-DNS

DESCRIPTION = Module for handling XML Streams
AUTHOR = Ryan Eatmon
URL = http://cpan.uwinnipeg.ca/~reatmon
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = testForAliEnPerlModule XML::Stream $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

