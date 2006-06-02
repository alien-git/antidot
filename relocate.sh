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
   */apps/base/curl)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/curl-config
     ;;
   */apps/base/libgpg-error)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/gpg-error-config
     ;;
   */apps/base/libgcrypt)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/libgcrypt-config
     ;;
   */apps/base/gnutls)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/libgnutls-config $prefix/bin/libgnutls-extra-config
     ;;
   */apps/base/uuid)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/uuid-config
     ;;
   */apps/base/libxml2)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/xml2-config
     ;;
   */apps/gui/freetype2)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/freetype-config
     ;;
   */apps/devel/pkgconfig)
     echo Relocating $app
     perl -pi -e "s%$build_prefix/%$prefix/%sg; s%$build_prefix'%$prefix'%sg; s%$build_prefix %$prefix %sg " $prefix/bin/pkg-config
     ;;
   */apps/base/eugridpma-carep)
     echo Relocating $app
     if [ -d /etc/grid-security/certificates ]
     then 
       cd $prefix; 
       rm `grep -v /share/alien $prefix/share/alien/packages/eugridpma-carep*`
       cd globus/share/certificates && ln -s /etc/grid-security/certificates/* .
     fi
     ;;
     *)
      ;;
  esac 
fi
