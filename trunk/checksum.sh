#!/bin/sh

unset DYLD_LIBRARY_PATH

MD5=""

which md5sum > /dev/null 2>&1 

if [ $? -eq 0 ] 
then
  MD5="md5sum"
else
  which md5 > /dev/null 2>&1 
  if [ $? -eq 0 ] 
  then
    MD5="md5 -r"
  fi
fi

if [ "x$MD5" = "x" ]
then
  exit 1
fi

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
   s1=`grep "$1\$" $checksums | awk '{print $1}'` 
   s2=`$MD5 $1 | awk '{print $1}'`
   if [ "x$s1" = "x$s2" ]
   then
     exit 0
   else
     exit 1 
   fi
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
