#!/bin/sh
if [[$EUID -ne 0]];then
	echo"This scripts must be run as Root" 1>&2
	exit 1
fi

#for OpenImageIO (needed compile)
yum -y install OpenImageIO
yum -y install OpenImageIO-iv
yum -y install OpenImageIO-devel
yum -y install OpenImageIO-utils
yum -y install python-OpenImageIO

#for OpencolorIO (needed compile)
yum -y install OpenColorIO


#compile : /home/$USER/centos/scripts/user/Opencolorio

