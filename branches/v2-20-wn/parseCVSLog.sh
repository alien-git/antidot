#!/bin/bash

export LD_LIBRARY_PATH=

SEARCH="$1"

ECHOCMD=`which echo`
DATECMD=`which date`

if [ -z "$SEARCH" -o "$SEARCH" == "HEAD" ]; then
	SEARCH="head"
fi

revision=""

while read first second third anythingelse; do
#	echo "first = $first" >&2
#	echo "second = $second" >&2
	if [ "$first" = "$SEARCH:" ]; then
		#         ML_1_8_12: 1.12
		revision="$second"
#		echo "Found revision : $revision" >&2
	elif [ "revision" = "$first" ]; then
		if [ "$revision" = "$second" ]; then
			# revision 1.3
			read thedate
		
			# date: 2009-01-19 10:56:47 +0100;  author: costing;  state: Exp;  commitid: kYStOfLnVBd0Q2zt;
			thedate=`$ECHOCMD "$thedate" | cut -d\; -f1 | cut -d: -f2-`
			$DATECMD +%s -d "$thedate"
		fi
	fi
done | sort | tail -n 1
