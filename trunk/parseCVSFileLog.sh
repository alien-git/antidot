#!/bin/bash

file="$1"

if [ -z "$file" ]; then
    echo "ERROR: NO FILE"
    exit
fi

if [ ! -e "$file" ]; then
    echo "ERROR: FILE DOEN'T EXIST"
    exit
fi

if [ -d "$file" ]; then
    echo "ERROR: DIRECTORY"
    exit
fi 

revision=`cvs status $file  2>&1 | grep "Working revision" | awk '{print $3}'`

if [ $? -ne 0 ]; then
    echo "ERROR: CVS STATUS ERROR"
    exit
fi

if [ "$revision" != "" ]; then

    fileDate=`cvs log -r"$revision" $file  2>&1 | grep "^date:" | cut -d\; -f1 | cut -d: -f2-`

    fileDate1=`echo -e "$fileDate" | awk '{gsub(/^ +| +$/,"")}1'`

    if [ $? -ne 0 ]; then
	echo "ERROR: CVS LOG ERROR"
	exit
    fi
    
    if [[ "$fileDate1" =~ ^[0-9]{4}\-[0-9]{2}\-[0-9]{2}\ [0-9]{2}\:[0-9]{2}\:[0-9]{2}\ \+.*$ ]]; then
	finalDate=`date +%s -d "$fileDate1"`

	if [ $? -ne 0 ]; then
	    echo "ERROR: DATE ERROR"
	    exit
	fi
	echo $finalDate

    else
	echo "ERROR: WRONG DATE FORMAT"
	exit

    fi
else
    echo "ERROR: CVS REVISION ERROR"
    exit
fi
