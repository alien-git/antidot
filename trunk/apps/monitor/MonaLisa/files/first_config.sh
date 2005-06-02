
# first_config.sh - Will do the first configuration of ML with default values
# Expects:
#   $1 = <MonaLisa_HOME> - place where ML was installed
#   $2 = <AliEn_files_dir> - directory where AliEn specific files are located
#        (i.e. AliEn with start/stop scripts and Services/usr_code/Alien)

myreplace(){
	a=`echo $1 | sed 's/\//\\\\\//g'`
	b=`echo $2 | sed 's/\//\\\\\//g'`

	cat | sed "s/$a/$b/g"
}

if [ -z "$1" -o -z "$2" ]; then
	echo "  WARNING : This script is not meant to be runed manually"
	echo "  Please use the AliEn installer or run it like:"
	echo ""
	echo "./first_config.sh \$MonaLisa_HOME \$AliEn_files_dir"
	echo ""
	exit 1  
fi

echo "Doing first configuration of the farm..."

# performing site configuration
cp $1/Service/CMD/ml_env $1/Service/CMD/ml_env.orig
cat $1/Service/CMD/ml_env.orig | \
	myreplace "#MONALISA_USER=\"monalisa\"" "MONALISA_USER=\"$USER\"" | \
	myreplace "#FARM_NAME=\"\"" "FARM_NAME=\"alice2-`hostname -f`\"" | \
	myreplace "MonaLisa_HOME=\"\${HOME}/MonaLisa.v1.2\"" "MonaLisa_HOME=\"$1\"" | \
	myreplace "JAVA_HOME=\"/usr/local/java\"" "JAVA_HOME=\"`(cd $1/../java ; pwd)`\"" \
> $1/Service/CMD/ml_env

# performing farm configuration
mkdir -p $1/Service/myFarm

# put myFarm.conf as it is
cp $1/AliEn/myFarm.conf $1/Service/myFarm

# put db.conf.embedded as it is
cp $1/AliEn/db.conf.embedded $1/Service/myFarm

# put ml.properties with some defaults
cat $1/AliEn/ml.properties | \
	myreplace "=user" "=$USER" | \
	myreplace "=email" "=$USER@`hostname -f`" | \
	myreplace "CITY" "CITY" | \
	myreplace "COUNTRY" "COUNTRY" | \
	myreplace "LONGITUDE" "-23.3" | \
	myreplace "LATITUDE" "-40.2" \
> $1/Service/myFarm/ml.properties

