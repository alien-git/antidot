#!/bin/sh

PREFIX=$1; shift
PACKAGE=$1; shift

if [ -d $PREFIX/share/alien/packages ] 
then
  for file in `ls $PREFIX/share/alien/packages/$PACKAGE\-* 2>/dev/null`
  do
     cat $file
  done | while read file
  do
    (cd $PREFIX; rm -f $file)
  done
fi