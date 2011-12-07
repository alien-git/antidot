GARNAME = gridsite
GARVERSION = 1.7.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).src.tar.gz
DISTNAME = org.gridsite.core
PATCHFILES = Makefile.patch

MASTER_SITES = http://www.gridsite.org/download/sources/

LIBDEPS = apps/tools/gsoap apps/tools/globus-toolkit apps/tools/curl apps/portal/httpd 

DESCRIPTION = Grid Security for the Web
URL = http://www.gridsite.org
AUTHOR = Andrew McNab
LICENSE = Apache

CONFIGURE_ENV = env MYCFLAGS="-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"
BUILD_ENV = env MYCFLAGS="-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -I. -I../interface -I$(PREFIX)/httpd/include -I$(PREFIX)/include  -I$(PREFIX)/include/curl $(OWN_CFLAGS)" MYLDFLAGS="-L. -L$(PREFIX)/lib $(OWN_LDFLAGS)" GSOAPDIR="$(PREFIX)/share/soapcpp2"

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile

include ../category.mk
