#!/bin/sh
"""
#set ocio-config
	after install
	~/centos/env/init.bash 
		export OCIO=$HOME/app/OpenColorIO-Configs/aces_1.0.3/config.ocio
"""
if [ ! -d "/home/$USER/app"];then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
git clone http://github.com/imageworks/OpenColorIO-Configs
chmod 775 OpenColorIO-Configs

