#!/bin/sh

ChecksumPackage()
{
  cat $1 | awk '{printf("[ -f %s ] && md5sum %s\n",$1,$1)}' | sh | awk '{print $1} END{print NR}' | sort | md5sum | awk -v name=$2 '{printf("%s  %s\n",$1,name)}' 
}

ChecksumPrint()
{
  if [ "$BININSTALL" != "" ]
  then 
    tmpdir=`mktemp -d /tmp/checksum.XXXXXX`
    dir=`dirname $1`
    mkdir -p $tmpdir/$dir || exit 1
    tar jxvf $1 -C $tmpdir/$dir | \
    (
      cd $tmpdir/$dir
      awk '{printf("[ -f %s ] && md5sum %s\n",$1,$1)}' | sh | awk '{print $1} END{print NR}' | sort | md5sum | awk -v name=$1 '{printf("%s  %s\n",$1,name)}'
    )
    rm -rf $tmpdir
  else
    md5sum $*
  fi
}

CheckFile()
{
   sum=`grep $1 $checksums | awk '{print $1}'` || exit 1
   if [ "$BININSTALL" != "" ]
   then 
     mysum=`ChecksumPrint $1 | awk '{print $1}'`
     [ "$sum" != "$mysum" ] && exit 1 
   else
     env LC_ALL="C" LANG="C" md5sum -c $checksums 2>&1 | grep "$1:[ ]\+OK" || exit 1 
   fi
   exit 0
}

case $1 in
  package)
       shift 1
       ChecksumPackage $*
       exit
       ;;
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
       echo "                   package <file list> <file>"
       exit 0
       ;;
       *)
       md5sum $*
       exit $?
       ;; 
esac
