ENABLE_LIBSUFFIX=
TARGET_LIBNAME = lib
TARGET_PLATFORM = linux-g++
#TARGET_X11_LIB = /usr/X11R6/lib
TARGET_PKG_CONFIG_PATH = /usr/lib/pkgconfig:/usr/local/lib/pkgconfig

# Compiler options (optional)

OWN_CFLAGS = -O2 -pipe
export GARLIBEXT=so
export GARSHARED=-shared
