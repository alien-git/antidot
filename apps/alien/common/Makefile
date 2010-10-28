CVS_TAG = $(shell echo '$$Name$$' | awk '{print $$2}' | sed -e 's/^\$$$$/HEAD/' )

GARNAME    = alien-common
GARVERSION = $(CVS_TAG)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME = alien-common
GARCVSVERSION = $(CVS_TAG)

MASTER_SITES = pserver://cvs@alisoft.cern.ch:/soft/cvsroot/

LIBDEPS =  apps/perl/ApMon \
apps/perl/Archive-Zip \
apps/perl/Authen-PAM \
apps/perl/Authen-SASL \
apps/perl/Cache-Cache \
apps/tools/classad \
apps/perl/Crypt-OpenSSL-Random \
apps/perl/Crypt-OpenSSL-RSA \
apps/perl/Crypt-OpenSSL-X509 \
apps/server/DBD-mysql \
apps/perl/DBI \
apps/perl/File-CacheDir \
apps/perl/Filesys-DiskFree \
apps/perl/Filesys-DiskUsage \
apps/alien/gapi \
apps/alien/perl \
apps/alien/gssapi \
apps/perl/IO-Socket-SSL \
apps/perl/LockFile-Simple \
apps/perl/Log-Agent \
apps/perl/Log-Agent-Rotate \
apps/perl/Log-Dispatch \
apps/perl/Log-TraceMessages \
apps/perl/libwww-perl \
apps/perl/MIME-Base64 \
apps/perl/Net-SSLeay \
apps/perl/perl \
apps/perl/perl-ldap \
apps/perl/PlRPC \
apps/perl/SOAP-Lite \
apps/alien/sasl \
apps/perl/uuid \
apps/perl/URI \
apps/perl/XML-Generator \
apps/perl/XML-Parser \
apps/perl/XML-Parser-EasyTree \
apps/perl/XML-Simple

DESCRIPTION = AliEn common component
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

PRE_CONFIGURE = (rm -f ~/.alien/Environment)
