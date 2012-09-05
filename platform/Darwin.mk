TARGET_LIBNAME=lib
export MACOSX_DEPLOYMENT_TARGET=10.6
unexport LD_PREBIND
export GARLIBEXT=dylib
export GARSHARED=-dynamic
export OWN_LDFLAGS += -dylib -undefined dynamic_lookup -single_module
export OWN_CXXLDFLAGS += -dynamiclib -undefined dynamic_lookup -single_module
export MASKED := \
apps/gcc/gcc= \
apps/system/kerberos= \
apps/devel/autoconf= \
apps/devel/automake= \
apps/portal/gridsite= \
apps/devel/libtool= \
apps/portal/gridsite \
apps/devel/jdk= \
apps/system/openssl= \
