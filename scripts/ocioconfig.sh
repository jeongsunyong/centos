#!/bin/sh

if[ ! -d "/home/$USER/app"];then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
git clone http://github.com/imageworks/OpenColorIO-Configs
chmod 775 OpenColorIO-Configs

