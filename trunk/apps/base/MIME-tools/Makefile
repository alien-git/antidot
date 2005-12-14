GARNAME = MIME-tools
GARVERSION = 5.418
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

CPAN_AUTHOR_ID=/D/DS/DSKOLL/

MASTER_SITES =$(CPAN_MIRROR)/authors/id/$(CPAN_AUTHOR_ID) http://www.cpan.org/authors/id/$(CPAN_AUTHOR_ID) ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/$(CPAN_AUTHOR_ID) 

LIBDEPS = apps/base/IO-Stringy apps/base/MailTools

DESCRIPTION =  Parses streams to create MIME entities
AUTHOR = David F. Skoll 
URL = http://cpan.uwinnipeg.ca/~dskoll
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule MIME::Tools $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS =$(WORKSRC)/Makefile
TEST_SCRIPTS =$(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

