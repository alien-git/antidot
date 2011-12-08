GARNAME = SOAP-Lite
GARVERSION = 0.714
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/M/MK/MKUTTER/

LIBDEPS = apps/perl/MIME-tools apps/perl/libwww-perl apps/perl/XML-Parser apps/perl/IO-Socket-SSL apps/perl/Task-Weaken apps/perl/Class-Inspector apps/perl/MIME-Lite

DESCRIPTION = SOAP toolkit for perl
AUTHOR = Byrne Reese
URL = http://cpan.uwinnipeg.ca/~byrne
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule SOAP::Lite $(GARVERSION)

CONFIGURE_ARGS = --noprompt --HTTPS-Client --noMAILTO-Client --FTP-Client --HTTP-Daemon --noHTTP-FCGI --noPOP3-Server --IO-Server --noMQ --JABBER --MIMEParser --TCP --HTTP 

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC)/t; rm -f 03-server.t 04-attach.t)
