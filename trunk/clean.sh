#!/bin/sh

PREFIX=$1; shift
PACKAGE=$1; shift

if [ -d $PREFIX/share/alien/packages -a -f $PREFIX/share/alien/packages/$PACKAGE* ] 
then
  for file in `ls $PREFIX/share/alien/packages/$PACKAGE*`
  do
     cat $file
  done | while read file
  do
    (cd $PREFIX; rm -f $file)
  done
fi