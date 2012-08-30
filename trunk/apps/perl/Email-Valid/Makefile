GARNAME = Email-Valid
GARVERSION = 0.190
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = #  valid.t.diff

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RJ/RJBS/ 

LIBDEPS = apps/perl/Net-DNS apps/perl/MailTools

DESCRIPTION = Check validity of Internet email addresses
AUTHOR = Ricardo Signes 
URL = http://search.cpan.org/~rjbs/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

