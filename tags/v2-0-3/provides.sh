#!/bin/sh

PREFIX=$1; shift
COOKIEDIR=$1; shift

ProvidesStart()
{
  mkdir -p $COOKIEDIR
  rm -rf $COOKIEDIR/.provides  $COOKIEDIR/provides*   
  touch $COOKIEDIR/provides
  sleep 2   
}


ProvidesStop()
{
  if [ -f files/provides ]
  then
     cp files/provides $COOKIEDIR
  else
    find $PREFIX -cnewer $COOKIEDIR/provides  -a \( -type f -o -type l \) > $COOKIEDIR/provides.all

    grep /.packlist $COOKIEDIR/provides.all > $COOKIEDIR/provides.perl; 

    if [ -s $COOKIEDIR/provides.perl ] 
    then 
      list=`cat $COOKIEDIR/provides.perl` 
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
  fi
}


case $1 in 
  start|Start) 
       ProvidesStart
       exit
       ;;
  stop|Stop) 
       ProvidesStop
       exit
       ;;
  *) 
       echo "Usage: provides.sh <PREFIX> <COOKIEDIR> <start|stop>"
       exit 1
       ;;
esac