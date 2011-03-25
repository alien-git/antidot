#!/bin/bash

export LD_LIBRARY_PATH=

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

revision=`cvs status $file  2>&1 | grep "Working revision" | awk '{print $3}'`

if [ $? -ne 0 ]; then
    $ECHOCMD "ERROR: CVS $file STATUS ERROR"
    exit
fi

if [ "$revision" != "" ]; then

    fileDate=`cvs log -r"$revision" $file  2>&1 | grep "^date:" | cut -d\; -f1 | cut -d: -f2-`

    fileDate1=`$ECHOCMD -e "$fileDate" | awk '{gsub(/^ +| +$/,"")}1'`

    if [ $? -ne 0 ]; then
	$ECHOCMD "ERROR: $revision $fileDate CVS LOG ERROR"
	exit
    fi
    
    if [[ "$fileDate1" =~ ^[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ [0-9]{2}\:[0-9]{2}\:[0-9]{2}\ \+.*$ ]]; then
	finalDate=`$DATECMD +%s -d "$fileDate1"`

	if [ $? -ne 0 ]; then
	    $ECHOCMD "ERROR: $fileDate1 DATE ERROR"
	    exit
	fi
	echo $finalDate

    else
	$ECHOCMD "ERROR: $fileDate1 WRONG DATE FORMAT"
	exit

    fi
else
    echo "ERROR: CVS REVISION ERROR"
    exit
fi
