TARGET_LIBNAME=lib
export MACOSX_DEPLOYMENT_TARGET=10.3
unexport LD_PREBIND
export GARLIBEXT=dylib
export GARSHARED=-dynamic
export OWN_LDFLAGS += -dylib -undefined dynamic_lookup -single_module
export OWN_CXXLDFLAGS += -dynamiclib -undefined dynamic_lookup -single_module
export MASKED := apps/base/gcc apps/base/globus apps/base/gpt apps/base/myproxy apps/base/openssl apps/base/autoconf apps/base/automake apps/base/libtool apps/base/readline apps/base/ncurses apps/devel/dialog  
