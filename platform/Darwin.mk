TARGET_LIBNAME=lib
export MACOSX_DEPLOYMENT_TARGET=10.4
unexport LD_PREBIND
export GARLIBEXT=dylib
export GARSHARED=-dynamic
export OWN_LDFLAGS += -dylib -undefined dynamic_lookup -single_module
export OWN_CXXLDFLAGS += -dynamiclib -undefined dynamic_lookup -single_module
export MASKED := apps/gcc/gcc apps/base/bash apps/gui/glib apps/gui/Gtk-Perl apps/gui/qt-x11-opensource-src apps/lcg/lcg-gfal apps/lcg/lcg-util apps/lcg/lfc apps/lcg/lfc-perl apps/server/openldap apps/portal/apache

