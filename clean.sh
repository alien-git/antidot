#!/bin/sh

PREFIX=$1; shift
PACKAGE=$1; shift
VERSION=$1; shift

if [ -d $PREFIX/share/alien/packages ] 
then
  for file in `ls $PREFIX/share/alien/packages/$PACKAGE\-$VERSION 2>/dev/null`
  do
     cat $file
  done | while read file
  do
    (cd $PREFIX; rm -f $file)
  done
fi
