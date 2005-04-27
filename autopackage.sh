#!/bin/sh

mkdir -p autopackage

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
# Dependency checking
#registerRepository @alien.cern.ch/$GARFNAME http://alien.cern.ch/cache/packages/$GARNAME.xml
true

EOF

for dep in $LIBDEPS
do
  case $dep in
     apps/base/gcc)
     ;;
     *)
     echo require @alien.cern.ch/$dep 0.0
     ;;
  esac 
done >> autopackage/default.apspec

cat <<EOF>>autopackage/default.apspec

[Install]
#copyFiles --nobackup * "\$PREFIX"
if [ ! `ls | wc -l` ]
then
  tar cf - * | (cd "\$PREFIX"; tar xf -)
  for file in `find . -type f -o -type l -printf "\$PREFIX/%P "`
  do
    logFile \$file
  done
done
 
[Uninstall]
# Usually just the following line is enough to uninstall everything
uninstallFromLog
EOF

export APKG_URL=http://alien.cern.ch/cache/packages

mkdir -p $PREFIX/packages
makeinstaller -b -x && mv *.package* *.xml $PREFIX/packages
rm -rf autopackage
