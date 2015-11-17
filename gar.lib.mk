\#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4
# $Id$

# Copyright (C) 2001 Nick Moffitt
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

# cookies go here, so we have to be able to find them for
# dependency checking.
VPATH += $(COOKIEDIR)

# So these targets are all loaded into bbc.port.mk at the end,
# and provide actions that would be written often, such as
# running configure, automake, makemaker, etc.
#
# The do- targets depend on these, and they can be overridden by
# a port maintainer, since they'e pattern-based.  Thus:
#
# extract-foo.tar.gz:
#	(special stuff to unpack non-standard tarball, such as one
#	accidentally named .gz when it's really bzip2 or something)
#
# and this will override the extract-%.tar.gz rule.

# convenience variable to make the cookie.

PROVIDE_BEGIN = @$(GARDIR)/provides.sh $(PREFIX) $(COOKIEDIR) start $(GARNAME) $(GARVERSION)
PROVIDE_END   = @$(GARDIR)/provides.sh $(PREFIX) $(COOKIEDIR) stop $(GARNAME) $(GARVERSION) $(NEW_PKG_BUILD_NUMBER)

MAKECOOKIE = mkdir -p $(COOKIEDIR)/$(@D) && date >> $(COOKIEDIR)/$@
#################### FETCH RULES ####################

URLS = $(subst ://,//,$(foreach SITE,$(FILE_SITES) $(MASTER_SITES),$(addprefix $(SITE),$(DISTFILES))) $(foreach SITE,$(FILE_SITES) $(PATCH_SITES) $(MASTER_SITES),$(addprefix $(SITE),$(PATCHFILES))) $(foreach SITE,$(FILE_SITES) $(BIN_SITES) $(MASTER_SITES),$(addprefix $(SITE),$(BINDISTFILES))))

WGETOPTS=-nd --passive-ftp --timeout=60 --waitretry=10 --tries=3

# Download the file if and only if it doesn't have a preexisting
# checksum file.  Loop through available URLs and stop when you
# get one that doesn't return an error code.


$(DOWNLOADDIR)/%: $(FETCH_TARGETS)
	@if test -s $(COOKIEDIR)/checksum-$*; then \
		echo " ==> Checking $(call TMSG_ID,$@) for updates.."; \
		grep -- `cat $(COOKIEDIR)/checksum-$*` $(CHECKSUM_FILE) || (rm -f $(COOKIEDIR)/checksum-$* && [ -f $(COOKIEDIR)/provides ] && rm -rf `cat $(COOKIEDIR)/provides` && rm -f $(COOKIEDIR)/* ) ; \
	fi
	@if test -f $(COOKIEDIR)/checksum-$*; then : ; else \
		echo " ==> Grabbing $(call TMSG_ID,$@)"; \
		for i in $(filter %/$*,$(URLS)); do  \
			$(MAKE) -s $$i > /dev/null 2>&1 || continue; \
			$(MAKECOOKIE); \
			break; \
		done; \
		rm -f $(COOKIEDIR)/checksum-$* ; \
		if test -r $@ ; then : ; else \
			echo '*** GAR GAR GAR!  Failed to download $(call TMSG_ID,$@)!  GAR GAR GAR! ***' 1>&2; \
			false; \
		fi; \
	fi

# download an http URL
http//%:
	@$(WGET) -c $(WGETOPTS) -P $(DOWNLOADDIR) http://$*

# download an http URL
https//%:
	@$(WGET) -c $(WGETOPTS) -P $(DOWNLOADDIR) http://$*

# download file from cvsweb
webcvs//%:
	@(cd $(DOWNLOADDIR) && $(WGET) $(WGETOPTS) -O $(GARCVSNAME).tar.gz http://$(dir $*)/$(GARCVSNAME)/$(GARCVSNAME).tar.gz?tarball=1\&only_with_tag=$(GARCVSVERSION))
	@(cd $(DOWNLOADDIR) && tar zxf $(GARCVSNAME).tar.gz && mv $(GARCVSNAME) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && tar zcf $(DISTFILES) $(GARNAME)-$(GARVERSION)) 
	@(cd $(DOWNLOADDIR) && rm -rf ./$(GARCVSNAME).tar.gz  ./$(GARNAME)-$(GARVERSION))

# download file from ViewVC (a newer cvsweb clone)
viewvc//%:
	@(cd $(DOWNLOADDIR) && $(WGET) $(WGETOPTS) -O $(GARCVSNAME).tar.gz http://$(dir $*)/$(GARCVSNAME).tar.gz?view=tar\&pathrev=$(GARCVSVERSION))
	@(cd $(DOWNLOADDIR) && tar zxf $(GARCVSNAME).tar.gz && mv $(GARCVSNAME) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && tar zcf $(DISTFILES) $(GARNAME)-$(GARVERSION)) 
	@(cd $(DOWNLOADDIR) && rm -rf ./$(GARCVSNAME).tar.gz  ./$(GARNAME)-$(GARVERSION))

# download file from a pserver cvs
pserver//%:
	@(cd $(DOWNLOADDIR) && $(CVS) -d :pserver:`echo $(dir $*) | sed -e 's/\/$$//'` co -r $(GARCVSVERSION) $(GARCVSNAME))
	@(cd $(DOWNLOADDIR) && mv $(GARCVSNAME) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && tar zcf $(DISTFILES) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && rm -rf ./$(GARNAME)-$(GARVERSION))

# download the file from a svn server using plain http, with an URL like svn-http://hostname/svn/$(NAME)/tags/$(VERSION)
#if we try to build the trunk then we have to use svn-http://hostname/svn/$(NAME)/trunk
svn-http//%:
	@if [ "$(SVNTYPE)" = "trunk" ]; then \
	    if [ "$(SVNDIR)" ]; then \
		if [ "$(SVNREVISION)" ]; then \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/trunk/$(SVNDIR) -r $(SVNREVISION) $(SVNNAME); \
		else \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/trunk/$(SVNDIR) $(SVNNAME); \
		fi \
	    else \
		if [ "$(SVNREVISION)" ]; then \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(GARNAME)/trunk -r $(SVNREVISION); \
		else \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(GARNAME)/trunk; \
		fi \
	    fi \
	fi
	@if [ "$(SVNTYPE)" = "tags" -o "$(SVNTYPE)" = "branches" ]; then \
	    if [ "$(SVNDIR)" ]; then \
		if [ "$(SVNTYPE)" = "branches" -a "$(SVNREVISION)" ]; then \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(SVNTYPE)/$(SVNNAME)/$(SVNDIR) -r $(SVNREVISION) $(SVNNAME); \
		else \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(SVNTYPE)/$(SVNNAME)/$(SVNDIR) $(SVNNAME); \
		fi \
	    else \
		if [ "$(SVNTYPE)" = "branches" -a "$(SVNREVISION)" ]; then \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(GARNAME)/$(SVNTYPE)/$(SVNNAME) -r $(SVNREVISION); \
		else \
		    cd $(DOWNLOADDIR) && svn co http://$(dir $*)/$(GARNAME)/$(SVNTYPE)/$(SVNNAME); \
		fi \
	    fi \
	fi
	@(cd $(DOWNLOADDIR) && mv $(SVNNAME) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && tar zcf $(DISTFILES) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && rm -rf ./$(GARNAME)-$(GARVERSION))

svn-https//%:
	@if [ $(SVNTYPE) = "trunk" ]; then \
	    if [ $(SVNREVISION) ]; then \
		cd $(DOWNLOADDIR) && svn co https://$(dir $*)/$(GARNAME)/trunk -r $(SVNREVISION); \
	    else \
		cd $(DOWNLOADDIR) && svn co https://$(dir $*)/$(GARNAME)/trunk; \
	    fi \
	fi
	@if [ $(SVNTYPE) = "tags" -o $(SVNTYPE) = "branches" ]; then \
	    if [ $(SVNTYPE) = "branches" -a $(SVNREVISION) ]; then \
		cd $(DOWNLOADDIR) && svn co https://$(dir $*)/$(GARNAME)/$(SVNTYPE)/$(SVNNAME) -r $(SVNREVISION); \
	    else \
		cd $(DOWNLOADDIR) && svn co https://$(dir $*)/$(GARNAME)/$(SVNTYPE)/$(SVNNAME); \
	    fi \
	fi
	@(cd $(DOWNLOADDIR) && mv $(SVNNAME) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && tar zcf $(DISTFILES) $(GARNAME)-$(GARVERSION))
	@(cd $(DOWNLOADDIR) && rm -rf ./$(GARNAME)-$(GARVERSION))

# download an ftp URL
ftp//%:
	@$(WGET) -c $(WGETOPTS) -P $(DOWNLOADDIR) ftp://$*

# link to a local copy of the file
# (absolute path)
file///%:
	@if test -f /$*; then \
		ln -f -s /$* $(DOWNLOADDIR)/$(notdir $*); \
	else \
		false; \
	fi

# link to a local copy of the file
# (relative path)
file//%:
	@if test -f $*; then \
		ln -f -s "$(CURDIR)/$*" $(DOWNLOADDIR)/$(notdir $*); \
	else \
		false; \
	fi

# Using Jeff Waugh's rsync rule.
# DOES NOT PRESERVE SYMLINKS!
rsync//%:
	@rsync -azvLP rsync://$* $(DOWNLOADDIR)/

# Using Jeff Waugh's scp rule
scp//%:
	@scp -C $* $(DOWNLOADDIR)/

#################### CHECKSUM RULES ####################

# check a given file's checksum against $(CHECKSUM_FILE) and
# error out if it mentions the file without an "OK".
checksum-%: $(CHECKSUM_FILE) $(MAKEFILE)
	@echo " ==> Running checksum on $(call TMSG_ID,$*)"
	@if grep -- '$*' $(CHECKSUM_FILE) > /dev/null ; then \
		($(MD5) check $(CHECKSUM_FILE) $(DOWNLOADDIR)/$* && \
			$(MAKECOOKIE) && $(MD5) print $(DOWNLOADDIR)/$* > $(COOKIEDIR)/checksum-$*) || ( rm -rf  $(COOKIEDIR)/* )  > /dev/null 2>&1 ; \
		if test -f $(COOKIEDIR)/checksum-$*; then \
			echo 'file $(call TMSG_ID,$*) passes checksum test!' > /dev/null ; \
		else \
			(rm -f $(DOWNLOADDIR)/$*; echo '*** GAR GAR GAR!  $(call TMSG_ID,$*) failed checksum test!  GAR GAR GAR! ***' 1>&2; false ) ;\
		fi ; \
	else \
		echo '*** GAR GAR GAR!  $(call TMSG_ID,$*) not in $(CHECKSUM_FILE) file!  GAR GAR GAR! ***' 1>&2; \
		false; \
	fi


#################### EXTRACT RULES ####################

# rule to extract uncompressed tarballs
tar-extract-%:
	@echo ' $(call TMSG_LIB,Extracting,$(DOWNLOADDIR)/$*)'
	@$(TAR) -xf $(DOWNLOADDIR)/$* -C $(EXTRACTDIR)
	@$(MAKECOOKIE)

# rule to extract files with tar xzf
tar-gz-extract-%:
	@echo ' $(call TMSG_LIB,Extracting,$(DOWNLOADDIR)/$*)'
	@gzip -dc $(DOWNLOADDIR)/$* | $(TAR) -xf - -C $(EXTRACTDIR)
	@$(MAKECOOKIE)

# rule to extract files with tar and bzip
tar-bz-extract-%:
	@echo ' $(call TMSG_LIB,Extracting,$(DOWNLOADDIR)/$*)'
	@bzip2 -dc $(DOWNLOADDIR)/$* | $(TAR) -xf - -C $(EXTRACTDIR)
	@$(MAKECOOKIE)

# rule to extract files with tar and bzip
tar-bz-binextract-%:
	@echo ' $(call TMSG_LIB,Extracting,$(DOWNLOADDIR)/$*)'
	@mkdir -p $(COOKIEDIR)
	@bzip2 -dc $(DOWNLOADDIR)/$* | $(TAR) -xvf - -C $(BUILD_PREFIX) | awk -v prefix=$(PREFIX) '{printf("%s/%s\n",prefix,$$1)}'  > $(COOKIEDIR)/provides
	@$(MAKECOOKIE)

# rule to relocate extracted files 
tar-bz-relocate-%:
	@echo ' $(call TMSG_LIB,Relocating,$(DOWNLOADDIR)/$*)'
	@$(GARDIR)/relocate.sh $(BUILD_PREFIX) $(shell pwd) $(DOWNLOADDIR)/$*
	@$(MAKECOOKIE)

# rule to extract files with unzip
zip-extract-%:
	@echo ' $(call TMSG_LIB,Extracting,$(DOWNLOADDIR)/$*)'
	@unzip $(DOWNLOADDIR)/$* -d $(EXTRACTDIR)
	@$(MAKECOOKIE)

# this is a null extract rule for files which are constant and
# unchanged (not archives)
cp-extract-%:
	@echo ' $(call TMSG_LIB,Copying,$(DOWNLOADDIR)/$*)'
	@cp $(DOWNLOADDIR)/$* $(WORKDIR)/
	@$(MAKECOOKIE)

### EXTRACT FILE TYPE MAPPINGS ###
# These rules specify which of the above extract action rules to use for a
# given file extension.  Often support for a given extract type can be handled
# by simply adding a rule here.

binextract-%.tar.gz: tar-gz-binextract-%.tar.gz
	@$(MAKECOOKIE)

binextract-%.tar.bz2: tar-bz-binextract-%.tar.bz2
	@$(MAKECOOKIE)

relocate-%.tar.bz2: tar-bz-relocate-%.tar.bz2
	@$(MAKECOOKIE)

extract-%.tar: tar-extract-%.tar
	@$(MAKECOOKIE)

extract-%.tar.gz: tar-gz-extract-%.tar.gz
	@$(MAKECOOKIE)

extract-%.tar.Z: tar-gz-extract-%.tar.Z
	@$(MAKECOOKIE)

extract-%.tgz: tar-gz-extract-%.tgz
	@$(MAKECOOKIE)

extract-%.taz: tar-gz-extract-%.taz
	@$(MAKECOOKIE)

extract-%.tar.bz: tar-bz-extract-%.tar.bz
	@$(MAKECOOKIE)

extract-%.tar.bz2: tar-bz-extract-%.tar.bz2
	@$(MAKECOOKIE)

extract-%.tbz: tar-bz-extract-%.tbz
	@$(MAKECOOKIE)

extract-%.zip: zip-extract-%.zip
	@$(MAKECOOKIE)

extract-%.ZIP: zip-extract-%.ZIP
	@$(MAKECOOKIE)

extract-%.jpeg: cp-extract-%.jpeg
	@$(MAKECOOKIE)

extract-%.png: cp-extract-%.png
	@$(MAKECOOKIE)

extract-%.html: cp-extract-%.html
	@$(MAKECOOKIE)

extract-%.spl: cp-extract-%.spl
	@$(MAKECOOKIE)

extract-%.txt: cp-extract-%.txt
	@$(MAKECOOKIE)

extract-%.cfg: cp-extract-%.cfg
	@$(MAKECOOKIE)

extract-%.c: cp-extract-%.c
	@$(MAKECOOKIE)

extract-%.sh: cp-extract-%.sh
	@$(MAKECOOKIE)

extract-%.cmd: cp-extract-%.cmd
	@$(MAKECOOKIE)

extract-%: cp-extract-%
	@$(MAKECOOKIE)


#################### PATCH RULES ####################

# apply bzipped patches
bz-patch-%:
	@echo ' $(call TMSG_LIB,Applying patch,$(DOWNLOADDIR)/$*)'
	@bzip2 -dc $(DOWNLOADDIR)/$* | patch -p0
	@$(MAKECOOKIE)

# apply gzipped patches
gz-patch-%:
	@echo ' $(call TMSG_LIB,Applying patch,$(DOWNLOADDIR)/$*)'
	@gzip -dc $(DOWNLOADDIR)/$* | patch -p0
	@$(MAKECOOKIE)

# apply normal patches
normal-patch-%:
	@echo ' $(call TMSG_LIB,Applying patch,$(DOWNLOADDIR)/$*)'
	@patch -p0 < $(DOWNLOADDIR)/$*
	@$(MAKECOOKIE)

# apply normal p1 patches
normal-patch1-%:
	@echo ' $(call TMSG_LIB,Applying patch (-p1),$(DOWNLOADDIR)/$*)'
	@(cd $(WORKSRC) && patch -p1 < ../../$(DOWNLOADDIR)/$*)
	@$(MAKECOOKIE)

# This is used by makepatch
%/gar-base.diff:
	@echo ' $(call TMSG_LIB,Creating patch,$@)'
	@EXTRACTDIR=$(SCRATCHDIR) COOKIEDIR=$(SCRATCHDIR)-$(COOKIEDIR) $(MAKE) extract
	@if diff --speed-large-files --minimal -Nru $(SCRATCHDIR) $(WORKDIR) > $@; then \
		rm $@; \
	fi

### PATCH FILE TYPE MAPPINGS ###
# These rules specify which of the above patch action rules to use for a given
# file extension.  Often support for a given patch format can be handled by
# simply adding a rule here.

patch-%.diff.bz: bz-patch-%.diff.bz
	@$(MAKECOOKIE)

patch-%.patch.bz: bz-patch-%.patch.bz
	@$(MAKECOOKIE)

patch-%.diff.bz2: bz-patch-%.diff.bz2
	@$(MAKECOOKIE)

patch-%.patch.bz2: bz-patch-%.patch.bz2
	@$(MAKECOOKIE)

patch-%.diff.gz: gz-patch-%.diff.gz
	@$(MAKECOOKIE)

patch-%.patch.gz: gz-patch-%.patch.gz
	@$(MAKECOOKIE)

patch-%.diff.Z: gz-patch-%.diff.Z
	@$(MAKECOOKIE)

patch-%.patch.Z: gz-patch-%.patch.Z
	@$(MAKECOOKIE)

patch-%.diff: normal-patch-%.diff
	@$(MAKECOOKIE)

patch-%.patch: normal-patch$(PATCHLEVEL)-%.patch
	@$(MAKECOOKIE)

#################### CONFIGURE RULES ####################
export PREFIX=$(prefix)
export PATH:=$(prefix)/bin:$(PATH)
export PERL5LIB=$(prefix)/lib/perl5

TMP_DIRPATHS = --prefix=$(prefix) --exec_prefix=$(exec_prefix) --bindir=$(bindir) --sbindir=$(sbindir) --libexecdir=$(libexecdir) --datadir=$(datadir) --sysconfdir=$(sysconfdir) --sharedstatedir=$(sharedstatedir) --localstatedir=$(localstatedir) --libdir=$(libdir) --infodir=$(infodir) --lispdir=$(lispdir) --includedir=$(includedir) --mandir=$(mandir) 

TMP_PERL_DIRPATHS = -Dprefix=$(prefix) -Dbin=$(bindir) -Dinstallprefix=$(exec_prefix) 

NODIRPATHS += --lispdir

DIRPATHS = $(filter-out $(addsuffix %,$(NODIRPATHS)), $(TMP_DIRPATHS))
PERL_DIRPATHS = $(filter-out $(addsuffix %,$(NODIRPATHS)), $(TMP_PERL_DIRPATHS))
PRE_CONFIGURE = true
PRE_BUILD = true
PRE_INSTALL = true
POST_INSTALL = true

# configure a package that has an autoconf-style configure
# script.

configure-%/configure:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running configure in,$*)'
	@(cd $* && $(CONFIGURE_ENV) ./configure $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/configure.classic:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running configure in,$*)'
	@(cd $* && $(CONFIGURE_ENV) ./configure.classic $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/Configure:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running Configure in,$*)'
	@(cd $* && $(CONFIGURE_ENV) ./Configure $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/Makefile.PL:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running perl Makefile.PL in,$*)'
	@(cd $* && $(CONFIGURE_ENV) $(PREFIX)/bin/perl Makefile.PL $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/Build.PL:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running perl Build.PL in,$*)'
	@(cd $* && $(CONFIGURE_ENV) $(PREFIX)/bin/perl Build.PL $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/config:
	true && $(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running config in,$*)'
	@(cd $* && $(CONFIGURE_ENV) ./config $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/cmake.ng:
	true && $(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running CMake-ng in,$*)'
	@mkdir -p $*/CMake-Build
	@(cd $*/CMake-Build && $(CONFIGURE_ENV) cmake .. $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

configure-%/cmake:
	true && $(PRE_CONFIGURE)
	@mkdir -p $*
	@rm -rf $*/*
	@(cd $* && $(CONFIGURE_ENV) cmake $(CONFIGURE_ARGS) ../../$(WORKSRC))
	@$(MAKECOOKIE)
	

# configure a package that uses imake
# FIXME: untested and likely not the right way to handle the
# arguments
configure-%/Imakefile:
	@$(PRE_CONFIGURE)
	@echo ' $(call TMSG_LIB,Running xmkmf in,$*)'
	@(cd $* && $(CONFIGURE_ENV) xmkmf $(CONFIGURE_ARGS))
	@$(MAKECOOKIE)

#################### BUILD RULES ####################

# build from a standard gnu-style makefile's default rule.

build-%/Build:
	@echo ' $(call TMSG_LIB,Running Build in,$*)'
	@(cd $* && $(BUILD_ENV) ./Build $(BUILD_ARGS))
	@$(MAKECOOKIE)

build-%/Makefile:
	@echo ' $(call TMSG_LIB,Running make in,$*)'
	@$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(MAKECOOKIE)

build-%/GNUMakefile:
	@echo ' $(call TMSG_LIB,Running make in,$*)'
	@$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(MAKECOOKIE)

build-%/makefile:
	@echo ' $(call TMSG_LIB,Running make in,$*)'
	@$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(MAKECOOKIE)

build-%/GNUmakefile:
	@echo ' $(call TMSG_LIB,Running make in,$*)'
	@$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(MAKECOOKIE)

build-%/Makefile.multicore:
	@echo ' $(call TMSG_LIB,Running make multicore in,$*)'
	@$(BUILD_ENV) $(MAKE) -j$(shell grep -c bogomips /proc/cpuinfo || echo 4) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(MAKECOOKIE)

build-%/cmake.ng:
	@echo ' $(call TMSG_LIB,Running make for a CMake-ng project in,$*)'
	$(PRE_BUILD)
	@(cd $*/CMake-Build && $(MAKE) -j$(shell grep -c bogomips /proc/cpuinfo || echo 4) $(BUILD_ARGS))
	$(POST_BUILD)
	@$(MAKECOOKIE)

build-%/cmake:
	@echo ' $(call TMSG_LIB,Running cmake in,$*)'
	@echo "$(PRE_BUILD)"
	@$(PRE_BUILD)
	@echo "$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)"
	@$(BUILD_ENV) $(MAKE) $(foreach TTT,$(BUILD_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* $(BUILD_ARGS)
	@$(POST_BUILD)
	@$(MAKECOOKIE)

#################### USE RULES ####################
usedby-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Using $* as a dependency)'
	@(cd $(GARDIR)/$* ; [ ! -d $(COOKIEDIR)/usedby ] && mkdir -p $(COOKIEDIR)/usedby;	touch  $(COOKIEDIR)/usedby/$(MYNAME))

#################### AUTOPACKAGE RULES ####################
autopackage-%/makeinstaller:
	@echo ' $(call TMSG_LIB,Autopackaging $*)'
	@(env PREFIX=$(PREFIX) INTERFACE_VERSION=$(INTERFACE_VERSION)  COOKIEDIR="$(COOKIEDIR)" GARFNAME="$(GARFNAME)" GARVERSION="$(GARVERSION)" DESCRIPTION="$(DESCRIPTION)" GARNAME="$(GARNAME)" AUTHOR="$(AUTHOR)" URL="$(URL)" LICENSE="$(LICENSE)" COOKIEDIR="$(CURDIR)/$(COOKIEDIR)" LIBDEPS="$(LIBDEPS)" BINDISTFILES="$(BINDISTFILES)" $(GARDIR)/autopackage.sh )
	@$(MAKECOOKIE)

autopackage-%/skeleton:
	@echo ' $(call TMSG_LIB,Creating skeleton $*)'
	@(env PREFIX="$(PREFIX)" INTERFACE_VERSION=$(INTERFACE_VERSION) COOKIEDIR="$(COOKIEDIR)" GARFNAME="$(GARFNAME)" GARVERSION="$(GARVERSION)" DESCRIPTION="$(DESCRIPTION)" GARNAME="$(GARNAME)" AUTHOR="$(AUTHOR)" URL="$(URL)" LICENSE="$(LICENSE)" COOKIEDIR="$(CURDIR)/$(COOKIEDIR)" LIBDEPS="$(LIBDEPS)" BINDISTFILES="$(BINDISTFILES)" $(GARDIR)/skeleton.sh "$(AUTOTEST)")
	@$(MAKECOOKIE)

#################### VARIABLES DUMP RULE ###########

variables:
	@echo "GARNAME = $(GARNAME)"
	@echo "GARVERSION = $(GARVERSION)"
	@echo "GARCVSNAME = $(GARCVSNAME)"
	@echo "GARCVSVERSION = $(GARCVSVERSION)"	
	@echo "SVNTYPE = $(SVNTYPE)"	
	@echo "SVNNAME = $(SVNNAME)"
	@echo "SVNREVISION = $(SVNREVISION)"
	@echo "MASTER_SITES = $(MASTER_SITES)"
	@echo "DESCRIPTION = $(DESCRIPTION)"
	@echo "AUTHOR = $(AUTHOR)"
	@echo "URL = $(URL)"
	@echo "LICENSE = $(LICENSE)"
	@echo "CATEGORIES = $(CATEGORIES)"
	@echo "LIBDEPS = $(LIBDEPS)"
	@echo "BUILDDEPS = $(BUILDDEPS)"
	@echo "DISTFILES = $(DISTFILES)"
	@echo "PKG_BUILD_NUMBER = $(PKG_BUILD_NUMBER)"
	@echo "BINDISTFILES = $(BINDISTFILES)"
	@echo "BININSTALL_IGNORE = $(BININSTALL_IGNORE)"   

#################### TEST RULES ####################

# build from a standard gnu-style makefile's default rule.

test-%/Build:
	@echo ' $(call TMSG_LIB,Testing Build in,$*)'
	@mkdir -p $(dir $(COOKIEDIR)/$(TEST_TARGETS))
	@((cd $* && $(TEST_ENV) ./Build test $(TEST_ARGS)) && $(MAKECOOKIE)) || true

test-%/Makefile:
	@echo ' $(call TMSG_LIB,Testing make in,$*)'
	mkdir -p $(dir $(COOKIEDIR)/$(TEST_TARGETS))
	echo "$(TEST_ENV) $(MAKE) $(foreach TTT,$(TEST_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* test $(TEST_ARGS) &&  $(MAKECOOKIE)) || true"
	@($(TEST_ENV) $(MAKE) $(foreach TTT,$(TEST_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* test $(TEST_ARGS) &&  $(MAKECOOKIE)) || true

test-%/makefile:
	@echo ' $(call TMSG_LIB,Testing make in,$*)'
	@mkdir -p $(dir $(COOKIEDIR)/$(TEST_TARGETS))
	@($(TEST_ENV) $(MAKE) $(foreach TTT,$(TEST_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C $* test $(TEST_ARGS) && $(MAKECOOKIE)) || true

test-%/GNUmakefile:
	@echo ' $(call TMSG_LIB,Running test in,$*)'
	@mkdir -p $(dir $(COOKIEDIR)/$(TEST_TARGETS))
	@($(TEST_ENV) $(MAKE) $(foreach TTT,$(TEST_OVERRIDE_DIRS),$(TTT)="$($(TTT))") -C test $* $(BUILD_ARGS) && $(MAKECOOKIE)) || true


#################### STRIP RULES ####################
# The strip rule should probably strip uninstalled binaries.
# TODO: Seth, what was the exact parameter set to strip that you
# used to gain maximal space on the LNX-BBC?

# Strip all binaries listed in the manifest file
# TODO: actually write it!
#  This will likely become almost as hairy as the actual
#  installation code.
strip-$(MANIFEST_FILE):
	@echo "$(call TMSG_FAIL,Not finished)"

# The Makefile must have a "make strip" rule for this to work.
strip-%/Makefile:
	@echo ' $(call TMSG_LIB,Running make strip in,$*)'
	@$(BUILD_ENV) $(MAKE) -C $* $(BUILD_ARGS) strip
	@$(MAKECOOKIE)

#################### INSTALL RULES ####################

# just run make install and hope for the best.
install-%/build_gpt:
	@echo ' $(call TMSG_LIB,Running gptinstall in,$*)'
	@$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@(cd $* && $(INSTALL_ENV) ./build_gpt $(INSTALL_ARGS))
	@$(POST_INSTALL)
	@$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/cmake.ng:
	@echo ' $(call TMSG_LIB,Running make install for a CMake-ng project in,$*)'
	$(PROVIDE_BEGIN)
	$(PRE_INSTALL)
	@(cd $*/CMake-Build && $(MAKE) $(INSTALL_ARGS) install)
	$(POST_INSTALL)
	$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/gpt-build:
	@echo ' $(call TMSG_LIB,Running gptinstall in,$*)'
	@$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@(cd $* && $(INSTALL_ENV) $(GPT_LOCATION)/sbin/gpt-build $(INSTALL_ARGS))
	@$(POST_INSTALL)
	@$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/Build:
	@echo ' $(call TMSG_LIB,Running Build install in,$*)'
	@$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@(cd $* && ./Build DESTDIR=$(DESTDIR) $(INSTALL_ARGS) fakeinstall | grep ^Skipping | awk '{print $2}' | xargs rm -f {} \; ) || true
	@(cd $* && $(INSTALL_ENV) ./Build DESTDIR=$(DESTDIR) $(INSTALL_ARGS) install)
	@$(POST_INSTALL)
	@$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/Makefile:
	@echo ' $(call TMSG_LIB,Running make install in,$*)'
	$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@$(INSTALL_ENV) $(MAKE) DESTDIR=$(DESTDIR) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)
	@$(POST_INSTALL)
	$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/GNUMakefile:
	@echo ' $(call TMSG_LIB,Running make install in,$*)'
	$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@$(INSTALL_ENV) $(MAKE) DESTDIR=$(DESTDIR) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)
	@$(POST_INSTALL)
	$(PROVIDE_END)
	@$(MAKECOOKIE)


install-%/makefile:
	@echo ' $(call TMSG_LIB,Running make install in,$*)'
	@$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@$(INSTALL_ENV) $(MAKE) DESTDIR=$(DESTDIR) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)
	@$(POST_INSTALL)
	@$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/GNUmakefile:
	@echo ' $(call TMSG_LIB,Running make install in,$*)'
	@$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@$(INSTALL_ENV) $(MAKE) DESTDIR=$(DESTDIR) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)
	@$(POST_INSTALL)
	@$(PROVIDE_END)
	@$(MAKECOOKIE)

install-%/cmake:
	@echo ' $(call TMSG_LIB,Running make install in,$*)'
	$(PROVIDE_BEGIN)
	@$(PRE_INSTALL)
	@echo "$(INSTALL_ENV) $(MAKE) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)"
	@$(INSTALL_ENV) $(MAKE) $(foreach TTT,$(INSTALL_OVERRIDE_DIRS),$(TTT)="$(DESTDIR)$($(TTT))") -C $* $(INSTALL_ARGS) $(INSTALL_TARGET)
	@$(POST_INSTALL)
	$(PROVIDE_END)
	@$(MAKECOOKIE)


######################################
# Use a manifest file of the format:
# src:dest[:mode[:owner[:group]]]
#   as in...
# ${WORKSRC}/nwall:${bindir}/nwall:2755:root:tty
# ${WORKSRC}/src/foo:${sharedstatedir}/foo
# ${WORKSRC}/yoink:${sysconfdir}/yoink:0600

# Okay, so for the benefit of future generations, this is how it
# works:
#
# First of all, we have this file with colon-separated lines.
# The $(shell cat foo) routine turns it into a space-separated
# list of words.  The foreach iterates over this list, putting a
# colon-separated record in $(ZORCH) on each pass through.
#
# Next, we have the macro $(MANIFEST_LINE), which splits a record
# into a space-separated list, and $(MANIFEST_SIZE), which
# determines how many elements are in such a list.  These are
# purely for convenience, and could be inserted inline if need
# be.
MANIFEST_LINE = $(subst :, ,$(ZORCH))
MANIFEST_SIZE = $(words $(MANIFEST_LINE))

# So the install command takes a variable number of parameters,
# and our records have from two to five elements.  Gmake can't do
# any sort of arithmetic, so we can't do any really intelligent
# indexing into the list of parameters.
#
# Since the last three elements of the $(MANIFEST_LINE) are what
# we're interested in, we make a parallel list with the parameter
# switch text (note the dummy elements at the beginning):
MANIFEST_FLAGS = notused notused --mode= --owner= --group=

# The following environment variables are set before the
# installation boogaloo begins.  This ensures that WORKSRC is
# available to the manifest and that all of the location
# variables are suitable for *installation* (that is, using
# DESTDIR)

MANIFEST_ENV += WORKSRC=$(WORKSRC)
# This was part of the "implicit DESTDIR" regime.  However:
# http://gar.lnx-bbc.org/wiki/ImplicitDestdirConsideredHarmful
#MANIFEST_ENV += $(foreach TTT,prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir sharedstatedir localstatedir libdir infodir lispdir includedir mandir,$(TTT)=$(DESTDIR)$($(TTT)))

# ...and then we join a slice of it with the corresponding slice
# of the $(MANIFEST_LINE), starting at 3 and going to
# $(MANIFEST_SIZE).  That's where all the real magic happens,
# right there!
#
# following that, we just splat elements one and two of
# $(MANIFEST_LINE) on the end, since they're the ones that are
# always there.  Slap a semicolon on the end, and you've got a
# completed iteration through the foreach!  Beaujolais!

# FIXME: using -D may not be the right thing to do!
install-$(MANIFEST_FILE):
	@echo ' $(call TMSG_LIB,Installing from,$(MANIFEST_FILE))'
	$(MANIFEST_ENV) ; $(foreach ZORCH,$(shell cat $(MANIFEST_FILE)), install -Dc $(join $(wordlist 3,$(MANIFEST_SIZE),$(MANIFEST_FLAGS)),$(wordlist 3,$(MANIFEST_SIZE),$(MANIFEST_LINE))) $(word 1,$(MANIFEST_LINE)) $(word 2,$(MANIFEST_LINE)) ;)
	@$(MAKECOOKIE)


#################### DEPENDENCY RULES ####################
# builddeps need to have everything put in $(BUILD_PREFIX)
# (unless they've been installed already, in which case they're
# already in the install dir)
# it checks the standard cookie dir first, then a special
# -builddep cookie dir, then if those fail, it does the builddep
# build with the -builddep cookie dir.  This should do The Right
# Thing.
builddep-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Building,$*,as a build dep)'
	@COOKIEDIR=cookies $(MAKE) -C $(GARDIR)/$* install-p > /dev/null 2>&1 || \
	 COOKIEDIR=$(COOKIEDIR)-builddep $(MAKE) -C $(GARDIR)/$* install-p > /dev/null 2>&1 || \
	 COOKIEDIR=$(COOKIEDIR)-builddep prefix=$(BUILD_PREFIX) exec_prefix=$(BUILD_PREFIX) $(MAKE) -C $(GARDIR)/$* install

binbuilddep-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Installing,$*,as a build dep)'
	@COOKIEDIR=cookies $(MAKE) -C $(GARDIR)/$* bininstall-p > /dev/null 2>&1 || \
	 COOKIEDIR=$(COOKIEDIR)-builddep $(MAKE) -C $(GARDIR)/$* bininstall-p > /dev/null 2>&1 || \
	 COOKIEDIR=$(COOKIEDIR)-builddep prefix=$(BUILD_PREFIX) exec_prefix=$(BUILD_PREFIX) $(MAKE) -C $(GARDIR)/$* bininstall

# Standard deps install into the standard install dir.  For the
# BBC, we set the includedir to the build tree and the libdir to
# the install tree.  Most dependencies work this way.
# XXX: use a secondary variable to store the canonical cookiedir
# somehow.
dep-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Building,$*,as a dependency)'
	@COOKIEDIR=cookies $(MAKE) -C $(GARDIR)/$* install-p > /dev/null 2>&1 || \
	 $(MAKE) -C $(GARDIR)/$* install

bindep-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Installing,$*,as a dependency)'
	@COOKIEDIR=cookies $(MAKE) -C $(GARDIR)/$* bininstall-p > /dev/null 2>&1 || \
	 $(MAKE) -C $(GARDIR)/$* bininstall

# Source Deps grab the source code for another package
srcdep-$(GARDIR)/%:
	@echo ' $(call TMSG_LIB,Grabbing source for,$*,as a dependency)'
	@$(MAKE) -C $(GARDIR)/$* patch-p extract-p > /dev/null 2>&1 || \
	 $(MAKE) -C $(GARDIR)/$* patch

# Igor's info and man gzipper rule
gzip-info-man: gzip-info gzip-man

gzip-info:
	find $(DESTDIR) -type f -iname *.info* -not -iname *.gz | \
        xargs -r gzip --force

gzip-man:
	find $(DESTDIR) -type f -iname *.[1-8] -size +2 -print | \
        xargs -r gzip --force

# Mmm, yesssss.  cookies my preciousssss!  Mmm, yes downloads it
# is!  We mustn't have nasty little gmakeses deleting our
# precious cookieses now must we?
.PRECIOUS: $(DOWNLOADDIR)/% $(COOKIEDIR)/% $(FILEDIR)/%
