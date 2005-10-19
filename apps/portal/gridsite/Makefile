GARNAME = gridsite
GARVERSION = 1.1.14
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.gridsite.org/download/sources/

LIBDEPS = apps/base/gsoap apps/base/globus-toolkit apps/base/curl apps/base/libxml2 apps/portal/httpd 

DESCRIPTION = Grid Security for the Web
URL = http://www.gridsite.org
AUTHOR = Andrew McNab
LICENSE = Apache

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile

BUILD_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include" MYLDFLAGS="-L." GSOAPDIR="$(PREFIX)/share/soapcpp2" OPENSSL_GLOBUS_CFLAGS="-I$(GLOBUS_LOCATION)/include/$(GLOBUS_FLAVOR)" OPENSSL_GLOBUS_LIBS="-L$(GLOBUS_LOCATION)/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)"

include ../category.mk
