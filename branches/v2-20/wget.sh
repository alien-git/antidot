#!/bin/sh

while [ $# -gt 0 ]
do
  echo $1
  case $1 in
  -nd)
    shift 1
    ;;
  --passive-ftp)
    shift 1
    ;;
  --timeout=*)
    shift 1
    ;;
  --waitretry=*)
    shift 1
    ;;
  --retry=*)
    shift 1
    ;;
  --tries=*)
    shift 1
    ;;
   -c)
    shift 1
    ;;
  -P)
    shift 1
    downloaddir=$1
    shift 1
    ;;
  -O)
    shift 1
    outfile=$1
    shift 1
    ;;
   *)
    break
    ;;
  esac
done

if [ "x$downloaddir" != "x" ] ; then
   mkdir -p $downloaddir 
   cd $downloaddir || exit 1
fi 

if [ "x$outfile" = "x" ]; then
   outfile=`basename $1`
fi 

PATH=/sw/bin:/sw/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin curl --insecure -f -L -o $outfile $1
