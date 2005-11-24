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
apps/alien/admin \
apps/alien/classad \
apps/alien/common \
apps/alien/gssapi \
apps/gui/glib \
apps/gui/GD \
apps/gui/Glade-Perl \
apps/gui/Gtk-Perl \
apps/portal/CGI-FastTemplate \
apps/portal/CGI_Imagemap \
apps/portal/gridsite \
apps/monitor/monit \
apps/base/Authen-PAM

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Portal components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)