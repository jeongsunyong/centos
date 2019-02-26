#! /bin/sh
"""
install djv
"""
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

yum -y remove DJV

 cd /tmp 
 wget https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm
 yum -y install DJV-1.2.5-1.x86_64.rpm
 rm DJV-1.2.5-1.x86_64.rpm

 cd $HOME
 
 
 #echo "
 #export PATH=$PATH:/usr/local/DJV/bin
 #export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/DJV/lib
 #" >> ~/centos/env/init.env

