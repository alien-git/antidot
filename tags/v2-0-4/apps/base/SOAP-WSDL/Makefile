GARNAME = SOAP-WSDL
GARVERSION = 1.20
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MK/MKUTTER/ http://www.cpan.org/authors/id/M/MK/MKUTTER/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MK/MKUTTER/

LIBDEPS = apps/base/XML-XPath apps/base/SOAP-Lite

DESCRIPTION = Complete WSDL support for SOAP-Lite
AUTHOR = Martin Kutter 
URL = http://cpan.uwinnipeg.ca/~mkutter
LICENSE = Artistic

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule SOAP::WSDL $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

