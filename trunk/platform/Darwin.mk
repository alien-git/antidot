TARGET_LIBNAME=lib
export MACOSX_DEPLOYMENT_TARGET=10.5
unexport LD_PREBIND
export GARLIBEXT=dylib
export GARSHARED=-dynamic
export OWN_LDFLAGS += -dylib -undefined dynamic_lookup -single_module
export OWN_CXXLDFLAGS += -dynamiclib -undefined dynamic_lookup -single_module
export MASKED := apps/gcc/gcc= apps/base/cctools= apps/base/OpenCA= apps/base/xrootd-tokenauthzofs= apps/portal/httpd= apps/portal/gridsite= apps/portal/mod_macro= apps/portal/mod_perl= apps/base/kerberos= apps/base/aria2= apps/devel/autoconf= apps/devel/automake= apps/devel/libtool= apps/devel/jdk= apps/base/google-perftools= /apps/base/Scalar-List-Utils= apps/base/IO-Compress= apps/base/Params-Util=

