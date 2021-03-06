#!/bin/sh

mkdir -p autopackage

cat <<EOF>autopackage/skeleton.1
# -*- shell-script-mode -*-

[Meta]
RootName: @alien.cern.ch/$GARFNAME
DisplayName: $DESCRIPTION
ShortName: $GARNAME
Skeleton-Author: AntiDot
Skeleton-Version: 1
Repository: http://alien.cern.ch/cache/packages/$GARNAME.xml

[Notes]
Autogenerated skeleton.

[Test]
SOFTWARE_VERSIONS=
EOF

if [ "$*" != "" ]
then
  echo "INTERFACE_VERSIONS=\$($*)" >> autopackage/skeleton.1   
else
  echo "INTERFACE_VERSIONS=" >> autopackage/skeleton.1
fi

mkdir -p $PREFIX/share/autopackage/skeletons/@alien.cern.ch/$GARFNAME
mv autopackage/skeleton.1 $PREFIX/share/autopackage/skeletons/@alien.cern.ch/$GARFNAME

