GARNAME = gridsite
GARVERSION = 1.7.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).src.tar.gz
DISTNAME = org.gridsite.core

PATCHFILES = Makefile.patch


#http://www.gridsite.org/download/sources/gridsite-1.7.6.src.tar.gz
MASTER_SITES = http://www.gridsite.org/download/sources/

LIBDEPS = apps/base/gsoap apps/base/globus-toolkit apps/base/curl apps/base/libxml2 apps/portal/httpd 

DESCRIPTION = Grid Security for the Web
URL = http://www.gridsite.org
AUTHOR = Andrew McNab
LICENSE = Apache

CONFIGURE_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include  -I$(PREFIX)/include/libxml2 -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"
BUILD_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include  -I$(PREFIX)/include/libxml2 -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile

include ../category.mk

