#!/usr/bin/env bash

function usage {
cat << END

usage: $0 [options] username

This script remove the need to use docker with sudo by adding a user to the docker group


OPTIONS:
   -u                   Username that will be added to the docker group
   -h                   Show this message
END
}

OPTSTRING=":u:h"

if [[ -z $@ ]]
then
	usage
	exit 1
fi
while getopts $OPTSTRING opt; do
	case $opt in
		u)
			sudo groupadd docker
			sudo gpasswd -a ${OPTARG} docker
			sudo service docker restart
			sudo service docker.io restart
			;;
		h)
			usage
			;;
		\?)
			usage
			;;
	esac
done
