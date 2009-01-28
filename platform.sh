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
      	javaplatform=linux-amd64
      	flavor=gcc64
      	;;
    powerpc-apple-darwin8.*)
      	platform=powerpc-apple-darwin8.1.0
      	javaplatform=linux-ppc
      	flavor=gcc32
      	;;
    i686-apple-darwin8.*|i686-apple-darwin9.*)
		if [[ $host =~ "alimacx03" ]]; then
        	platform=i686-apple-darwin8.6.1
      		javaplatform=linux-i586
      		flavor=gcc32
		else
        	platform=x86_64-apple-darwin8.6.1
      		javaplatform=linux-i586
      		flavor=gcc64        	
		fi 
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
