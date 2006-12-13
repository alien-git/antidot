TARGET_LIBNAME=lib
export MACOSX_DEPLOYMENT_TARGET=10.4
unexport LD_PREBIND
export GARLIBEXT=dylib
export GARSHARED=-dynamic
export OWN_LDFLAGS += -dylib -undefined dynamic_lookup -single_module
export OWN_CXXLDFLAGS += -dynamiclib -undefined dynamic_lookup -single_module
export MASKED := apps/gcc/gcc apps/base/bash apps/lcg/lcg-dm apps/lcg/lcg-gfal apps/lcg/lcg-util apps/portal/apache apps/gui/glib apps/gui/Gtk-Perl apps/gui/Glade-Perl apps/portal/gridsite apps/base/loudmouth apps/base/libgcrypt apps/base/libgpg-error apps/base/gnutls apps/base/opencdk apps/base/cctools apps/base/OpenCA apps/base/ibp apps/base/lors apps/base/lbone