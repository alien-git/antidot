GARNAME = mysql
GARVERSION = 5.5.41
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).zip
DISTNAME =  $(GARNAME)-$(GARVERSION)
PATCHFILES = sslcomp.patch

MASTER_SITES = http://mirror.switch.ch/ftp/mirror/mysql/Downloads/MySQL-5.5/

LIBDEPS = apps/gcc/gcc apps/system/ncurses

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(OBJWORKSRC)/cmake
BUILD_SCRIPTS = $(OBJWORKSRC)/cmake
INSTALL_SCRIPTS = $(OBJWORKSRC)/cmake

CONFIGURE_ARGS = -DCMAKE_INSTALL_PREFIX=$(PREFIX) -DWITH_READLINE=ON -DWITH_SSL=yes
#CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-ssl --with-big-tables  --without-debug --enable-thread-safe-client 
#CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
