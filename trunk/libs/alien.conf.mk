export GLOBUS_LOCATION=/opt/alien
export GLOBUS_FLAVOR=gcc32
export GPT_LOCATION=/opt/alien
export PKG_CONFIG_PATH=/opt/alien/lib/pkgconfig/
export PLATFORM=i686-pc-linux-gnu
export CACHE_DIR=/opt/alien/dist
export CACHE_URL=http://alien.cern.ch/cache/dist/
export GLITE_BUILD=current

MASTER_SITES += http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)
