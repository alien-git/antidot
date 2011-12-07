#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4
# $Id: gar.conf.mk 2520 2011-07-22 15:04:29Z alinag $

# This file contains configuration variables that are global to
# the GAR system.  Users wishing to make a change on a
# per-package basis should edit the category/package/Makefile, or
# specify environment variables on the make command-line.

# Variables that define the default *actions* (rather than just
# default data) of the system will remain in bbc.gar.mk
# (bbc.port.mk)

# These are the standard directory name variables from all GNU
# makefiles.  They're also used by autoconf, and can be adapted
# for a variety of build systems.
#
# TODO: set $(SYSCONFDIR) and $(LOCALSTATEDIR) to never use
# /usr/etc or /usr/var
prefix ?= $(ALIEN_PREFIX)
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
libexecdir = $(exec_prefix)/libexec
datadir = $(prefix)/share
sysconfdir = $(prefix)/etc
sharedstatedir = $(prefix)/share
localstatedir = $(prefix)/var
libdir = $(exec_prefix)/$(TARGET_LIBNAME)
infodir = $(BUILD_PREFIX)/info
lispdir = $(prefix)/share/emacs/site-lisp
includedir = $(BUILD_PREFIX)/include
mandir = $(BUILD_PREFIX)/man
docdir = $(BUILD_PREFIX)/share/doc
sourcedir = $(BUILD_PREFIX)/src

# the DESTDIR is used at INSTALL TIME ONLY to determine what the
# filesystem root should be.  The BUILD_PREFIX is the prefix that
# usurps the DESTDIR.  It should be considered relative to
# $(DESTDIR).  Thus, if includedir were set to
# $(BUILD_PREFIX)/include, it would expand out at install time
# (BUT NO SOONER) to /tmp/gar/../../tmp/build.  The /../../ at
# the front should be harmless, as .. for / is just / itself.
DESTDIR ?=
BUILD_PREFIX ?= $(prefix)

CPPFLAGS += $(filter-out $(NOCPPFLAGS),-I$(DESTDIR)$(includedir))
CFLAGS   += $(filter-out $(NOCFLAGS),-I$(DESTDIR)$(includedir))
LDFLAGS  += $(filter-out $(NOLDFLAGS),-L$(DESTDIR)$(libdir)) 

CFLAGS += -I/usr/include/x86_64-linux-gnu
CPPFLAGS += -I/usr/include/x86_64-linux-gnu
CXXFLAGS += -I/usr/include/x86_64-linux-gnu
LDFLAGS += -L/lib/x86_64-linux-gnu

# allow us to use programs we just built
PATH :=/usr/lib/ccache/bin:/usr/lib64/ccache/bin:$(DESTDIR)$(bindir):$(DESTDIR)$(sbindir):$(DESTDIR)$(BUILD_PREFIX)/bin:$(DESTDIR)$(BUILD_PREFIX)/sbin:$(GCC_BIN_DIR):$(DESTDIR)$(BUILD_PREFIX)/jdk/bin:$(DESTDIR)$(BUILD_PREFIX)/ant/bin:$(PATH)
LD_LIBRARY_PATH=$(strip $(DESTDIR)$(libdir):$(DESTDIR)$(BUILD_PREFIX)/$(TARGET_LIBNAME):$(PREFIX)/lib:$(PREFIX)/lib64:$(GCC_LIB_DIR)):/lib/x86_64-linux-gnu
DYLD_LIBRARY_PATH=$(LD_LIBRARY_PATH)

# This is for foo-config chaos
PKG_CONFIG_PATH:=$(DESTDIR)$(libdir)/pkgconfig:$(TARGET_PKG_CONFIG_PATH):$(PKG_CONFIG_PATH)

# Now add own flags to CFLAGS 
CFLAGS += $(OWN_CFLAGS)

# Equalise CFLAGS and CXXFLAGS
CXXFLAGS := $(CFLAGS)

# If you have no following GNU tools installed change these lines
TAR  = tar
MD5  = $(GARDIR)/checksum.sh
WGET = env LD_LIBRARY_PATH= DYLD_LIBRARY_PATH= $(GARDIR)/wget.sh
CVS = env LD_LIBRARY_PATH= DYLD_LIBRARY_PATH= cvs 

# make these variables available to configure and build scripts
# outside of make's realm.
export DESTDIR prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir
export sharedstatedir localstatedir libdir infodir lispdir includedir mandir
export docdir sourcedir
export CC CXX
export CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PATH LD_LIBRARY_PATH LD_PRELOAD
export PKG_CONFIG_PATH BUILD_CLEAN
export DYLD_LIBRARY_PATH

# prepend the local file listing
FILE_SITES = file://$(FILEDIR)/ file://$(GARCHIVEDIR)/
