[GARNAME = gold
GARVERSION = 2.1.4.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.clusterresources.com/downloads/gold/

LIBDEPS = apps/portal/CGI-Session apps/base/Compress-Zlib apps/base/Crypt-CBC apps/base/Crypt-DES apps/base/Crypt-DES_EDE3 apps/base/Data-Properties apps/base/DateManip apps/base/DBI apps/server/DBD-mysql apps/base/Digest-SHA1 apps/base/Digest-HMAC apps/base/Error apps/base/Log-Dispatch apps/base/Log-Dispatch-FileRotate apps/base/Log-Log4perl apps/base/Params-Validate apps/base/SOAP apps/base/Term-ReadLine-Gnu apps/base/Time-HiRes apps/base/XML-SAX apps/base/XML-LibXML-Common apps/base/XML-LibXML apps/base/XML-NamespaceSupport 

BUILDDEPS = apps/base/Module-Build

DESCRIPTION = Gold Allocation Manager
URL = http://www.clusterresources.com/pages/products/gold-allocation-manager.php
AUTHOR = PNNL
LICENSE = Perl

AUTOTEST = 
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-db=mysql  --with-perl-libs=site --with-gold-libs=site

include ../category.mk


