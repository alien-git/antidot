GARNAME = all
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= # apps/glite/%data%
FILTER     ?= % 
 
ALL=\
apps/base/gcc \
apps/devel/dialog \
apps/devel/automake \
apps/devel/libtool \
apps/devel/autoconf \
apps/devel/pkgconfig \
apps/devel/Devel-Modlist \
apps/devel/Devel-StackTrace \
apps/devel/Devel-Trace \
apps/devel/Perl-Tidy \
apps/base/globus \
apps/base/myproxy \
apps/base/classad \
apps/base/expat \
apps/base/edb \
apps/base/openssl \
apps/base/cyrus-sasl \
apps/base/db \
apps/base/gsoap \
apps/base/Class-Base \
apps/base/gnupg \
apps/base/libghttp \
apps/base/libxslt \
apps/base/Class-Class \
apps/base/Class-Factory \
apps/base/Class-Hook \
apps/base/libxml2 \
apps/base/zlib \
apps/base/perl \
apps/base/libidn \
apps/base/gpt \
apps/base/swig \
apps/base/Class-Factory-Util \
apps/base/Class-MethodMaker \
apps/base/Class-Singleton \
apps/base/Authen-PAM \
apps/base/Authen-SASL \
apps/base/Archive-Tar \
apps/base/Archive-Zip \
apps/base/Cache \
apps/base/Cache-Cache \
apps/base/Compress-Zlib \
apps/base/Config-ApacheFormat \
apps/base/Convert-ASN1 \
apps/base/Crypt-OpenSSL-Random \
apps/base/Crypt-OpenSSL-RSA \
apps/base/Crypt-SSLeay \
apps/base/Data-Dumper \
apps/base/Data-UUID \
apps/base/DateManip \
apps/base/DateTime \
apps/base/DateTime-Format-Epoch \
apps/base/DateTime-Format-W3CDTF \
apps/base/DateTime-Locale \
apps/base/DateTime-TimeZone \
apps/base/DBD-CSV \
apps/base/DBD-SQLite2 \
apps/base/DBI \
apps/base/Digest-SHA \
apps/base/Digest-SHA1 \
apps/base/Email-Find \
apps/base/Email-Valid \
apps/base/Error \
apps/base/Expect \
apps/base/Exporter-Lite \
apps/base/ExtUtils-AutoInstall \
apps/base/ExtUtils-CBuilder \
apps/base/File-Cache \
apps/base/File-CacheDir \
apps/base/File-NFSLock \
apps/base/Filesys-DiskFree \
apps/base/Filesys-DiskSpace \
apps/base/Heap \
apps/base/HTML-FromText \
apps/base/HTML-Parser \
apps/base/HTML-Tagset \
apps/base/Inline \
apps/base/Inline-CPP \
apps/base/IO-Socket-SSL \
apps/base/IO-String \
apps/base/IO-Stringy \
apps/base/IO-Tty \
apps/base/IO-Zlib \
apps/base/IPC-Run \
apps/base/libwww-perl \
apps/base/libxml-perl \
apps/base/Log-Dispatch \
apps/base/Log-Dispatch-FileRotate \
apps/base/Log-Log4perl \
apps/base/Log-TraceMessages \
apps/base/MailTools \
apps/base/Math-BigInt \
apps/base/MD5 \
apps/base/MIME-Base64 \
apps/base/MIME-tools \
apps/base/Module-Build \
apps/base/Module-Signature \
apps/base/Net-Daemon \
apps/base/Net-Jabber \
apps/base/Net_SSLeay.pm \
apps/base/Net-XMPP \
apps/base/Params-Validate \
apps/base/Parse-RecDescent \
apps/base/PathTools \
apps/base/PlRPC \
apps/base/perl-ldap \
apps/base/podlators \
apps/base/Pragmatic \
apps/base/SOAP-Lite \
apps/base/SOAP-WSDL \
apps/base/SQL-Statement \
apps/base/Term-Cap \
apps/base/TermReadKey \
apps/base/Term-ReadLine-Gnu \
apps/base/Text-CSV_XS \
apps/base/TimeDate \
apps/base/Unicode-String \
apps/base/URI \
apps/base/WSDL-Generator \
apps/base/WSRF-Lite \
apps/base/XML-Generator \
apps/base/XML-Parser \
apps/base/XML-Parser-EasyTree \
apps/base/XML-RegExp \
apps/base/XML-SAX-Base \
apps/base/XML-Simple \
apps/base/XML-Stream \
apps/base/XML-Writer \
apps/base/XML-Writer-String \
apps/base/XML-XPath \
apps/base/YAML \
apps/base/bbftp \
apps/base/cgsi-gsoap \
apps/base/xerces-c \
apps/base/xalan-c \
apps/base/eugridpma-carep \
apps/glite/glite \
apps/glite/glite-data \
apps/glite/data-io-quanta \
apps/glite/data-io-gss-auth \
apps/glite/data-io-base \
apps/glite/data-config-service \
apps/glite/data-io-daemon \
apps/alien/admin \
apps/alien/classad \
apps/alien/rls \
apps/alien/srm \
apps/alien/gas \
apps/alien/common \
apps/alien/gssapi \
apps/alien/packman \
apps/alien/perl \
apps/alien/apiservice \
apps/gui/glib \
apps/gui/imlib2 \
apps/gui/t1lib \
apps/gui/freetype2 \
apps/gui/gd \
apps/gui/GD \
apps/gui/Glade-Perl \
apps/gui/Gtk-Perl \
apps/gui/Image-Imlib2 \
apps/gui/Imager \
apps/gui/Image-WorldMap \
apps/portal/apache \
apps/portal/mod_perl \
apps/portal/CGI-FastTemplate \
apps/portal/CGI_Imagemap \
apps/portal/gridport \
apps/server/mysql \
apps/server/DBD-mysql \
apps/server/jabberd \
apps/server/openldap

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)