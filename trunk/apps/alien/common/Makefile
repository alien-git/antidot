GARNAME = glite-alien-common
GARVERSION = 2.0.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.common
GARCVSVERSION = glite-alien-common_branch_2_0_0

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/base/perl apps/alien/classad apps/alien/gssapi apps/alien/rls apps/alien/srm apps/base/SOAP-Lite apps/base/DBI apps/base/perl-ldap apps/base/XML-Generator apps/base/XML-Parser-EasyTree apps/base/XML-Simple apps/base/Log-TraceMessages apps/base/Data-UUID apps/base/Crypt-OpenSSL-RSA apps/base/Crypt-OpenSSL-Random apps/base/Log-Dispatch apps/base/Log-Dispatch-FileRotate apps/base/Cache-Cache apps/base/DBD-CSV apps/base/DBD-SQLite2 apps/base/Term-ReadLine-Gnu apps/base/Compress-Zlib apps/base/DateTime apps/base/Filesys-DiskFree apps/base/MIME-Base64 apps/base/PlRPC apps/base/URI apps/base/WSRF-Lite apps/base/bbftp apps/base/Authen-SASL apps/base/Archive-Zip apps/base/bash apps/base/ApMon apps/base/xrootd apps/base/Digest-MD5 apps/base/Convert-PEM apps/base/Crypt-CBC apps/base/Convert-UU

DESCRIPTION = AliEn common component
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); find . -name bootstrap -exec chmod +x {} \; ; sh bootstrap )

