#!/bin/sh

PREFIX=$1; shift
COOKIEDIR=$1; shift

ProvidesStart()
{
  mkdir -p $PREFIX/share/alien/packages
  mkdir -p $COOKIEDIR
  rm -rf $COOKIEDIR/.provides  $COOKIEDIR/provides*   
  touch $COOKIEDIR/provides
  sleep 2   
}


ProvidesStop()
{
  case $1 in 
    *globus-toolkit)
      find $GLOBUS_LOCATION \( -type f -o -type l \) > $COOKIEDIR/provides
      ;;
    *) 
    if [ -f files/provides ]
    then
       cat files/provides | sed -e "s%^PREFIX%$PREFIX%" > $COOKIEDIR/provides
    else
      find $PREFIX -cnewer $COOKIEDIR/provides  -a \( -type f -o -type l \) > $COOKIEDIR/provides.all

      grep /.packlist $COOKIEDIR/provides.all > $COOKIEDIR/provides.perl; 
 
      if [ -s $COOKIEDIR/provides.perl ] 
      then 
        list=`cat $COOKIEDIR/provides.perl | grep -v 'perllocal.pod$'` 
        for f in $list
        do
          if [ ! -z $f ]
          then 
            if [ `grep -c -e type=file -e type=link $f` -gt 0 ] 
            then 
              grep -e type=file -e type=link $f | awk '{print $1}' >> $COOKIEDIR/provides.all
            else
              cat $f >> $COOKIEDIR/provides.all
            fi
          fi
        done
      fi
      sort -u $COOKIEDIR/provides.all | grep -v /.packlist > $COOKIEDIR/provides 
      echo $PREFIX/share/alien/packages/$1-${2}_${3} >> $COOKIEDIR/provides 
    fi
    ;;
  esac
  sed -e "s%^/opt/alien%\.%g"  $COOKIEDIR/provides > $PREFIX/share/alien/packages/$1-${2}_${3}
}


case $1 in 
  start|Start) 
       shift 
       ProvidesStart $*
       exit
       ;;
  stop|Stop)
       shift  
       ProvidesStop $* 
       exit
       ;;
  *) 
       echo "Usage: provides.sh <PREFIX> <COOKIEDIR> <start | stop GAR_NAME GAR_VERSION BUILD_NUMBER>"
       exit 1
       ;;
esac
