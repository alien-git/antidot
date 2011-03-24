#!/bin/sh

mode=$1; shift
dir=`dirname $0`
unset TMPDIR
host=`hostname`

case `$dir/config.guess` in
	i*86-*-linux-gnu*)
		platform=i686-pc-linux-gnu
      	autoplatform=x86
      	javaplatform=linux-i586
      	flavor=gcc32
     	;;
	x86_64-*-linux-gnu)
      	platform=x86_64-unknown-linux-gnu
      	autoplatform=x86_64
      	javaplatform=linux-x64
      	flavor=gcc64
      	;;
    *darwin*)
        	platform=x86_64-apple-darwin
      		javaplatform=linux-x64
      		flavor=gcc64
      ;;
    ia64-*-linux-gnu)
      	platform=ia64-unknown-linux-gnu
      	autoplatform=ia64
      	javaplatform=linux-ia64
      	flavor=gcc64
      	;;
     *)
      	echo "Unknown or unsupported platform: $platform"
      	exit 1
      	;;
esac

case $mode in
    platform)
       echo $platform
       ;;
    autoplatform)
       echo $autoplatform
       ;;
    javaplatform)
       echo $javaplatform
       ;;
    flavor)
       echo $flavor
       ;;
     *)
       echo "Unknown mode: $mode"
       exit 1
esac  
