GARNAME = CGI-Session
GARVERSION = 3.95
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz


MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SH/SHERZODR/ http://www.cpan.org/authors/id/S/SH/SHERZODR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SH/SHERZODR/

LIBDEPS = apps/base/perl

DESCRIPTION = Perl extension for managing templates, and performing variable interpolation.
URL = http://cpan.uwinnipeg.ca/~sherzodr
AUTHOR = Sherzod Ruzmetov 
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule CGI::FastTemplate $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule CGI::Session $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

