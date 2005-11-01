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
   */apps/base/globus)
     echo Relocating $app
     if [ -f $prefix/globus/setup/globus/setup-globus-common ]
     then
       env GLOBUS_LOCATION=$prefix/globus GPT_LOCATION=$prefix/globus PERL5LIB="$prefix/globus/lib/perl5:$prefix/lib/perl5" $prefix/bin/perl $prefix/globus/setup/globus/setup-globus-common.pl
     fi 
     ;;
     *)
      ;;
  esac 
fi
