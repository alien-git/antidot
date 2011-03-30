#!/bin/bash

export LD_LIBRARY_PATH=
export DYLD_LIBRARY_PATH=

ECHOCMD=`which echo`
DATECMD=`which date`


while read line; do
    found=`echo $line | grep -c "Last Changed Date"`
    
    if [ $found = "1" ] ; then
        thedate=`echo "$line" | grep "Last Changed Date" |  cut -f2- -d\: | cut -d\( -f1`
        $DATECMD +%s -d "$thedate"
    fi
done; 
