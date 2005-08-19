#!/bin/sh

prefix=$1; shift 1
app=$1; shift 1

build_prefix=/opt/alien
if [ "$prefix" != "$build_prefix" ]
then
  case $app in 
   */apps/base/perl)
     echo Relocating $app
     config=`find $prefix/lib/perl5 -name Config.pm -exec grep -l "This file was created by configpm" {} \;`
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $config
     config=`find $prefix/lib/perl5 -path "*/CORE/config.h"`
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg; s%\"$build_prefix\"%\"$prefix\"%sg; " $config
     for file in `find $prefix/lib/perl5 -name .packlist`
     do
          perl -pi -e "s%$build_prefix/%$prefix/%g" $file
     done
     ;;
   */apps/base/globus)
     echo Relocating $app
     env PERL5LIB=$prefix/globus/lib $prefix/globus/setup/globus/setup-globus-common 
     if [ -f $prefix/globus/setup/globus/setup-globus-common ]
     then
       env GLOBUS_LOCATION=$prefix/globus PERL5LIB=$prefix/globus/lib $prefix/globus/setup/globus/setup-globus-common
     fi 
     ;;
     *)
      ;;
  esac 
fi