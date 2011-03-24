ENABLE_LIBSUFFIX=
TARGET_LIBNAME=lib
TARGET_PLATFORM=linux-g++
TARGET_PKG_CONFIG_PATH = /usr/lib/pkgconfig:/usr/local/lib/pkgconfig

# Compiler options (optional)

OWN_CFLAGS  = -O2 -pipe
OWN_LDFLAGS =

export GARLIBEXT=so
export GARSHARED=-shared

export MASKED :=

