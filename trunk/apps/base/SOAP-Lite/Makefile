GARNAME = SOAP-Lite
GARVERSION = 0.60
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION)a.tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BY/BYRNE/SOAP/ http://www.cpan.org/authors/id/B/BY/BYRNE/SOAP/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BY/BYRNE/SOAP/

LIBDEPS = apps/base/perl apps/base/XML-Parser apps/base/MIME-Base64 apps/base/URI apps/base/libwww-perl apps/base/Crypt-SSLeay apps/base/Net-Jabber apps/base/IO-Socket-SSL apps/base/Compress-Zlib apps/base/MIME-tools

DESCRIPTION = SOAP toolkit for perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --noprompt --HTTPS-Client --noMAILTO-Client --FTP-Client --HTTP-Daemon --noHTTP-FCGI --noPOP3-Server --IO-Server --noMQ --JABBER --noMIMEParser --TCP --HTTP 

CONFIGURE_ENV = printf "\n" |

BUILD_ARGS =  

include ../category.mk
