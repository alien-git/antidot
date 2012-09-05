#!/bin/sh

UPDATE_SCRIPT=alien_ml_update.sh

wget_ver=`wget --version 2>/dev/null | head -1`
if [ -z "$wget_ver" ] ; then
	echo "wget is not available. Cannot update!"
	exit 1
fi
echo "Using: $wget_ver"

if [ -z "$URL_LIST_UPDATE" ] ; then
	echo "URL_LIST_UPDATE is empty. Cannot update!";
	exit 1
fi

for url in `echo $URL_LIST_UPDATE | sed -e 's/,/ /g'` ; do
	success=1
	url=`echo $url | sed -e 's/\/[^/]*$//g'`
	echo "Trying URL: $url/$UPDATE_SCRIPT .."
	rm -f $MonaLisa_HOME/$UPDATE_SCRIPT
	wget $url/$UPDATE_SCRIPT -O $MonaLisa_HOME/$UPDATE_SCRIPT &>/dev/null && break
	success=0
done

if [ "$success" -ne "0" ] ; then
	cd $MonaLisa_HOME && chmod a+rx $UPDATE_SCRIPT && ./$UPDATE_SCRIPT && rm -f ./$UPDATE_SCRIPT
else
	echo "Failed updating $UPDATE_SCRIPT"
	exit 1
fi

