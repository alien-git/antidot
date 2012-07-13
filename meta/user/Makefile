GARNAME = alien-meta-user
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= apps/system/expat apps/perl/XML-Parser apps/gcc/gcc apps/system/db  apps/perl/perl apps/perl/HTML-Tagset apps/perl/HTML-Parser apps/perl/URI apps/perl/libwww-perl apps/tools/globus-toolkit
FILTER     ?= % 

ALL=\
apps/alien/alien-ca \
apps/alien/gapi 


LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - User components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

list_filtered:
	@echo $(FILTER_OUT)