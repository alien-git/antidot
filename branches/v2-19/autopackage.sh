#!/bin/sh

mkdir -p autopackage

if [ "$BITS_HOME" = "" ]
then
  makeinstaller=makeinstaller
else
  makeinstaller=$BITS_HOME/bin/makeinstaller
fi

cat <<EOF>autopackage/default.apspec 
# -*-shell-script-*-

[Meta]
RootName: @alien.cern.ch/$GARFNAME:$GARVERSION
DisplayName: $DESCRIPTION
ShortName: $GARNAME
Maintainer: $AUTHOR
Packager: alien@cern.ch
Summary: $DESCRIPTION
URL: $URL
License: $LICENSE
SoftwareVersion: $GARVERSION
InterfaceVersion: $INTERFACE_VERSION
AutopackageTarget: 1.0

[Description]
$DESCRIPTION

[BuildPrepare]
true

[BuildUnprepare]
true

[Imports]
(cd \$build_root; [ -f $PREFIX/dist/$BINDISTFILES ] &&  tar jxf  $PREFIX/dist/$BINDISTFILES; echo . ) | import

[Prepare]
EOF
make -s showautodeps | grep require >> autopackage/default.apspec 

cat <<EOF>>autopackage/default.apspec

[Install]
#copyFiles --nobackup * "\$PREFIX"

if [ `test -s cookies/provides && echo 1 || echo 0` -eq 1 ]
then
  tar cf - * | ( cd "\$PREFIX"; tar xf -) 
  echo "`cat cookies/provides | sed -e 's%^/opt/alien%$PREFIX%'`" >> "\$apkg_filelist"
fi

[Uninstall]
# Usually just the following line is enough to uninstall everything
uninstallFromLog
EOF

export APKG_URL=http://alien.cern.ch/cache/packages

mkdir -p $PREFIX/packages
$makeinstaller -b -x && mv *.package* *.xml $PREFIX/packages
rm -rf autopackage
