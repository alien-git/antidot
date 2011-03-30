#!/bin/bash

export LD_LIBRARY_PATH=
export DYLD_LIBRARY_PATH=

file="$1"

ECHOCMD=`which echo`
DATECMD=`which date`

if [ -z "$file" ]; then
    $ECHOCMD "ERROR:$file NO FILE"
    exit
fi

if [ ! -e "$file" ]; then
    $ECHOCMD "ERROR: $file FILE DOEN'T EXIST"
    exit
fi

if [ -d "$file" ]; then
    $ECHOCMD "ERROR: $file DIRECTORY"
    exit
fi 

thedate=`svn info "$fine" | grep "Last Changed Date" |  cut -f2- -d\: | cut -d\( -f1`    

if [ $? -ne 0 ]; then
    $ECHOCMD "ERROR: SVN $file STATUS ERROR"
    exit
fi

finalDate=`$DATECMD +%s -d "$thedate"`

if [ $? -ne 0 ]; then
    $ECHOCMD "ERROR: $fileDate1 DATE ERROR"
    exit
fi

echo $finalDate
