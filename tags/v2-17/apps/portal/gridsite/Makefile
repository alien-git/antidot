GARNAME = gridsite
GARVERSION = 1.5.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.patch

MASTER_SITES = http://www.gridsite.org/download/sources/

LIBDEPS = apps/base/gsoap apps/base/globus-toolkit apps/base/curl apps/base/libxml2 apps/portal/httpd 

DESCRIPTION = Grid Security for the Web
URL = http://www.gridsite.org
AUTHOR = Andrew McNab
LICENSE = Apache

CONFIGURE_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include  -I$(PREFIX)/include/libxml2 -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib -L$(PREFIX)/lib64 $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"
BUILD_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include  -I$(PREFIX)/include/libxml2 -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib -L$(PREFIX)/lib64 $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile

include ../category.mk


#BUILD_ENV = env MYCFLAGS="-I. -I../interface -I$(PREFIX)/httpd/include $(OWN_CFLAGS)" MYLDFLAGS="-L. $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2" OPENSSL_GLOBUS_CFLAGS="-I$(GLOBUS_LOCATION)/include/$(GLOBUS_FLAVOR)" OPENSSL_GLOBUS_LIBS="-L$(GLOBUS_LOCATION)/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)"

