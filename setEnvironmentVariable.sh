#! /bin/bash -x

# do not run this script with "./"
# run with command: "source setEnvironmentVariable"

if [ -z "$(env | grep USERSECRET| grep dH34xJaa23)" ]
then
	export USERSECRET=dH34xJaa23;
else
	echo "USERSECRET is already set to given value"
fi
