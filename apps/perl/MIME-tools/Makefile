GARNAME = MIME-tools
GARVERSION = 5.504
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DS/DSKOLL/MIME-tools-5.502.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DS/DSKOLL/

LIBDEPS = apps/perl/IO-Stringy apps/perl/MailTools apps/perl/Test-Deep

DESCRIPTION =  Parses streams to create MIME entities
AUTHOR = David F. Skoll 
URL = http://cpan.uwinnipeg.ca/~dskoll
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS =$(WORKSRC)/Makefile
TEST_SCRIPTS =$(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

