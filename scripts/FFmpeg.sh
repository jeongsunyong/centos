#!/bin/sh

cd ~
if [ ! -d "/home/$USER/app" ]; then
	mkdir app
mkdir /home/$USER/app/ffmpeg
cd app/ffmpeg
wget http://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz
tar xpvf ffmpeg-git-64bit-static.tar.xz --strip 1

