GARNAME = alien-meta-portal
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
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
apps/base/Authen-PAM

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Portal components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)