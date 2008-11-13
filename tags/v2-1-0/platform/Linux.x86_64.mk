ENABLE_LIBSUFFIX="--enable-libsuffix=64"
TARGET_LIBNAME=lib64
TARGET_PLATFORM=linux-g++-64
TARGET_PKG_CONFIG_PATH = /usr/lib64/pkgconfig:/usr/local/lib64/pkgconfig

# *Mandatory* compiler options on x86_64
OWN_CFLAGS = -m64 -fPIC

# Compiler options (optional)
OWN_CFLAGS += -O2 -pipe

# Optional compiler options for gcc >= 3.4.0

#  OWN_CFLAGS += -march=opteron -O3 -pipe
export GARLIBEXT=so
export GARSHARED=-shared