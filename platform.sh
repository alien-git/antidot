#!/bin/sh

mode=$1; shift
dir=`dirname $0`

case `$dir/config.guess` in
    i*86-*-linux-gnu)
      platform=i686-pc-linux-gnu
      autoplatform=x86
      javaplatform=linux-i586
     ;;
    x86_64-*-linux-gnu)
      platform=i686-pc-linux-gnu
      autoplatform=x86_64
      javaplatform=linux-x86_64
      ;;
    powerpc-apple-darwin7.*)
      platform=powerpc-apple-darwin7.7.0
      javaplatform=linux-ppc
      ;;
    ia64-*-linux-gnu)
      platform=ia64-unknown-linux-gnu
      autoplatform=ia64
      javaplatform=linux-ia64
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
     *)
       echo "Unknown mode: $mode"
       exit 1
esac  
