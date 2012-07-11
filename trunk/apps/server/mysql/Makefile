GARNAME = mysql
GARVERSION = 5.5.25a
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).zip
DISTNAME =  $(GARNAME)-$(GARVERSION)
#PATCHFILES = term.c.patch

#http://mirror.switch.ch/ftp/mirror/mysql/Downloads/MySQL-5.5/mysql-5.5.25a.zip
MASTER_SITES = http://mirror.switch.ch/ftp/mirror/mysql/Downloads/MySQL-5.5/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = MySQL database
URL = http://dev.mysql.com/
LICENSE = MySQL
AUTHOR = 

CONFIGURE_SCRIPTS = $(OBJWORKSRC)/cmake
BUILD_SCRIPTS = $(OBJWORKSRC)/cmake
INSTALL_SCRIPTS = $(OBJWORKSRC)/cmake

#CONFIGURE_ARGS = --prefix=$(PREFIX) --with-vio --with-ssl --with-big-tables  --without-debug --enable-thread-safe-client --with-plugins=innodb_plugin
CONFIGURE_ARGS = -DCMAKE_INSTALL_PREFIX=$(PREFIX) -DWITH_SSL=yes -DWITH_DEBUG=no -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ZLIB=system -DWITH_READLINE=1 -DWITH_LIBEDIT=0

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib" CFLAGS="-I$(PREFIX)/include -fPIC" CPPFLAGS="-I$(PREFIX)/include"

include ../category.mk
