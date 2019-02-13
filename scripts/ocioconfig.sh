#!/bin/sh
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

if [ ! -d "/home/$USER/app"];then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
git clone http://github.com/imageworks/OpenColorIO-Configs
chmod 775 OpenColorIO-Configs

