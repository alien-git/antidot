GARNAME = SOAP-Lite
GARVERSION = 0.60
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION)a.tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BY/BYRNE/SOAP/ http://www.cpan.org/authors/id/B/BY/BYRNE/SOAP/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BY/BYRNE/SOAP/

LIBDEPS = apps/base/XML-Parser apps/base/libwww-perl apps/base/Crypt-SSLeay apps/base/IO-Socket-SSL apps/base/MIME-tools

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

CONFIGURE_ENV = printf "\n" |

BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC)/t; rm -f 03-server.t 04-attach.t)
