#!/bin/bash

SVNVERSION="";
count=`LD_LIBRARY_PATH= DYLD_LIBRARY_PATH= svn info | grep "URL"| grep -c "trunk"`

if [ $count = "1" ] ; then
    SVNVERSION="trunk"
else
    SVNVERSION=`svn info | grep URL | cut -d/ -f6- | cut -d/ -f1`
fi

echo $SVNVERSION;