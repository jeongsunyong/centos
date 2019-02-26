#!/bin/sh
"""
install opencolorIO v1.0.9
	after install, needed manual operation
	~/centos/env/init.bash
		$ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/app/OpenColorIO/lib
		$ export OCIO=$HOME/app/OpenColorIO-Configs/aces_1.0.3/config.ocio
"""
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
git clone https://github.com/imageworks/OpenColorIO OpenColorIO_src
cd OpenColorIO_src
git tag
git checkout v1.0.9
cd ..
mkdir OpenColorIO_build
cd OpenColorIO_build
/home/$USER/app/cmake-3.13.3/bin/cmake ../OpenColorIO_src -DCMAKE_INSTALL_PREFIX=$HOME/app/OpenColorIO
make
make install
