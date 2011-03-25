ENABLE_LIBSUFFIX=
TARGET_LIBNAME=lib
TARGET_PLATFORM=linux-g++
TARGET_PKG_CONFIG_PATH = /usr/lib/pkgconfig:/usr/local/lib/pkgconfig

# Compiler options (optional)
OWN_CFLAGS = -fPIC

# Compiler options (optional)
OWN_CFLAGS += -O2 -pipe

export GARLIBEXT=so
export GARSHARED=-shared

export MASKED := apps/gcc/gcc=


