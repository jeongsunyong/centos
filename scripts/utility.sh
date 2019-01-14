#! /bin/sh
yum -y install git

yum -y install sl
yum -y install banner
yum -y install espeak
yum -y install oneko #고양이
yum -y install pv #

yum -y install fish #shell
yum -y install mesa-libGLU # for Nuke
yum -y install transmission #torrent
yum -y install tigervnc #VNC
yum -y install filezilla #SFTP

#ripgrep
yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
yum -y install ripgrep

#chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum -y localinstall google-chrome-stable_current_x86_64.rpm
