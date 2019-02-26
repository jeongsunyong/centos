
#! /bin/sh
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

yum -y install epel-release
yum -y install git

yum -y install sl
yum -y install banner
yum -y install espeak
yum -y install oneko #고양이
yum -y install pv #

yum -y install fish #shell
yum -y install mesa-libGLU # for Nuke and Other Graphics SW.
yum -y install transmission #torrent
yum -y install tigervnc #VNC
yum -y install filezilla #SFTP
yum -y install tree
yum -y install ImageMagick
yum -y install gvim

#ripgrep
yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
yum -y install ripgrep

#chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum -y localinstall google-chrome-stable_current_x86_64.rpm

#djv vier 1.2.5-1 version
cd /tmp https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm/download
yum -y install DJV-1.1.5-1.x86_64.rpm
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/app/djv-install-Debug/lib
