#!/bin/sh

case `uname` in
    Darwin)
      MD5="md5sum"
      ;;
    *)       
      MD5="md5sum"
      ;;
esac

ChecksumPrint()
{
  $MD5 $*
}

CheckFile()
{
   if [ ! -f "$1" ]
   then
     exit 1
   fi
   env LC_ALL="C" LANG="C" $MD5 -c $checksums 2>&1 | grep "$1.*OK" || exit 1 
   exit 0
}

case $1 in
  print) 
       shift 1
       ChecksumPrint $*
       exit
       ;;
  check) 
       shift 1
       checksums=$1
       shift 1
       CheckFile $*
       exit
       ;;
  --help)
       echo "Usage: checksum.sh print <file_name>"
       echo "                   check <checksum file> <file>"
       exit 0
       ;;
       *)
       exit 2
       ;; 
esac
