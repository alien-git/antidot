#!/bin/sh
###########################################################################
STANDARD_DIRS="$prefix /opt/globus /opt/alien /opt/glite /opt/glite/externals /usr/local /usr/bin /usr/lib"
###########################################################################
FindLocation()
###########################################################################
{
  if [ "$2" != "" ]
  then
     echo $2
  else
     for dir in $STANDARD_DIRS
     do
       if [ -d $dir ]
       then
         file=`find $dir -path $1 -type f -print -maxdepth 3  2> /dev/null`
         if [ $? -eq 0 -a -f "$file" ]
         then
           bindir=`dirname $file`
           dirname $bindir
           break
         fi
       fi
     done
  fi
}

###########################################################################
PREFIX=$1; shift 1
###########################################################################

arg=$1; shift 1

found=""

if [ "$GARAUTODETECT" != "true" ] 
then
  echo ""
  exit 
fi
  
case $arg in 
   */apps/base/globus*)
     #########
     # globus
     #########
     GLOBUS_LOCATION=`FindLocation "*/bin/grid-proxy-init" $GLOBUS_LOCATION`
     test -f $GLOBUS_LOCATION/bin/grid-proxy-init
     [ $? ] && found="apps/base/globus"
     ;;
   */apps/base/gpt*)
     #########
     # gpt
     #########
     GPT_LOCATION=`FindLocation "*/sbin/gpt-build" $GPT_LOCATION`
     test -f $GPT_LOCATION/sbin/gpt
     [ $? ] && found="apps/base/gpt"
     ;;
   */apps/base/myproxy*)
     #########
     # myproxy
     #########
     MYPROXY_LOCATION=`FindLocation "*/bin/myproxy-init" $MYPROXY_LOCATION`
     test -x $MYPROXY_LOCATION/bin/myproxy-init 
     [ $? ] && found="apps/base/myproxy"
     ;;
   */apps/base/expat*)
     #########
     # expat
     #########
     EXPAT_LOCATION=`FindLocation "*/lib/libexpat.so" $EXPAT_LOCATION`
     test -x $EXPAT_LOCATION/lib/libexpat.so 
     [ $? ] && found="apps/base/expat"
     ;;
   */apps/gcc/gcc*)
     #########
     # gcc
     #########
     which gcc >& /dev/null || exit 1
     case `gcc -dumpversion` in
       3.2.3)
         found="apps/gcc/gcc"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/base/db*)
     #########
     # db
     #########
     which db_verify >& /dev/null || exit 1
     case `db_verify -V` in
       *4.3.27*)
         found="apps/base/db"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/devel/autoconf*)
     #########
     # autoconf
     #########
     which autoconf >& /dev/null || exit 1
     case `autoconf --version | head -1` in
       autoconf*2.59*)
         found="apps/devel/autoconf"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/devel/libtool)
     #########
     # libtool
     #########
     which libtool >& /dev/null || exit 1
     case `libtool --version | head -1` in
       *libtool*1.5.8*)
         found="apps/devel/libtool"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/devel/automake*)
     #########
     # automake
     #########
     which automake >& /dev/null || exit 1
     case `automake --version | head -1` in
       automake*1.6.3*)
         found="apps/devel/automake"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/base/edb*)
     #########
     # edb
     #########
     which edb-config >& /dev/null || exit 1
     case `edb-config  --version` in
       1.0.5)
         found="apps/base/edb"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/base/libxml2*)
     #########
     # libxml2
     #########
     which xml2-config >& /dev/null || exit 1
     case `xml2-config --version` in
       2.6.16)
         found="apps/base/libxml2"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/gui/freetype2*)
     #########
     # freetype2
     #########
     which freetype-config >& /dev/null || exit 1
     case `freetype-config --version` in
       9.4.3)
         found="apps/base/freetype2"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/gui/gd*)
     #########
     # gd
     #########
     which gdlib-config >& /dev/null || exit 1
     case `gdlib-config --version` in
       2.0.33)
         found="apps/base/gd"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/base/libxslt*)
     #########
     # libxslt
     #########
     which xslt-config >& /dev/null || exit 1
     case `xslt-config --version` in
       1.1.12)
         found="apps/base/libxslt"
         ;;
       *)
         ;;
      esac
     ;;
   */apps/base/openssl*)
     #########
     # openssl
     #########
     which openssl >& /dev/null || exit 1
     case `openssl version` in
       *0.9.7e*)
         found="apps/base/openssl"
         ;;
       *)
         exit 1
         ;;
      esac
     ;;
   */apps/server/mysql*)
     #########
     # mysql
     #########
     which mysql >& /dev/null || exit 1
     case `mysql --version` in
       *5.0.18*)
         found="apps/base/mysql"
         ;;
       *)
         ;;
      esac
     ;;
     *)
     ;;
esac 

echo $found
