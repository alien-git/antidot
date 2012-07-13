#!/bin/sh

prefix=$1; shift 1
app=$1; shift 1

build_prefix=/opt/alien
if [ "$prefix" != "$build_prefix" ]
then
  case $app in 
   */apps/perl/perl)
     echo Relocating $app
     config=`find $prefix/lib/perl5 -name Config.pm -exec grep -l "This file was created by configpm" {} \;`
     if [ "$config" = "" ] ; then
	echo "Couldn't find Config.pm in $prefix/lib/perl5!"
	exit -2
     fi     
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $config
     config=`find $prefix/lib/perl5 -path "*/CORE/config.h"`
     if [ "$config" = "" ] ; then
	echo "Couldn't find CORE/config.h in $prefix/lib/perl5!"
	exit -2
     fi
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg; s%\"$build_prefix\"%\"$prefix\"%sg; " $config
     for file in `find $prefix/lib/perl5 -name .packlist`
     do
          perl -pi -e "s%$build_prefix/%$prefix/%g" $file
     done
     ;;

   */apps/alien/gapi)
     echo Relocating $app
     (cd $prefix/api/bin; ./alien_apiservice-bootstrap)
     ;;
   */apps/alien/perl)
     echo Relocating $app
     if [ -f $prefix/bin/alien-perl ]
     then
       $prefix/bin/alien-perl --bootstrap --prefix $prefix
     fi
     ;;
   */apps/tools/curl)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/curl-config
     ;;
   */apps/perl/uuid)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/uuid-config
     ;;
  esac 
fi
