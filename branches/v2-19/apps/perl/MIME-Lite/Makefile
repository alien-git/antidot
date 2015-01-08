GARNAME = MIME-Lite
GARVERSION = 3.027
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES =  Makefile.PL.patch

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RJ/RJBS/ http://backpan.perl.org/authors/id/R/RJ/RJBS/

LIBDEPS = apps/perl/Email-Date-Format apps/perl/MIME-Types apps/perl/MIME-Base64

DESCRIPTION = Definition of one MIME type
AUTHOR = Yves Orton
URL = http://cpan.uwinnipeg.ca/~yves
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

