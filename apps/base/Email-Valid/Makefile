GARNAME = Email-Valid
GARVERSION = 0.15
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MA/MAURICE/ http://www.cpan.org/authors/id/M/MA/MAURICE/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MA/MAURICE/

LIBDEPS = apps/base/MailTools

DESCRIPTION = Check validity of Internet email addresses
AUTHOR = Maurice Aubrey
URL = http://cpan.uwinnipeg.ca/~maurice
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Email::Valid $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

