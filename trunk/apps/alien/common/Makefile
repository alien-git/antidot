SVNTYPE = trunk
SVNNAME =  trunk
SVNREVISION =

GARNAME    = alien-common
GARVERSION = $(SVNNAME)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

MASTER_SITES = svn-https://alisoft.cern.ch/

LIBDEPS =  apps/perl/ApMon \
apps/perl/Archive-Zip \
apps/perl/Authen-PAM \
apps/perl/Cache-Cache \
apps/tools/classad \
apps/perl/DBD-SQLite \
apps/perl/Crypt-SSLeay \
apps/perl/Crypt-OpenSSL-Random \
apps/perl/Crypt-OpenSSL-RSA \
apps/perl/Crypt-OpenSSL-X509 \
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
apps/perl/Tie-CPHash \
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
