#! /bin/sh
"""
#install redis
"""
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

yum -y install redis
systemctl start redis
systemctl enable redis

firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --reload

"""
#set ip
vim /etc/redis.conf 
	appendonly yes
	appendfsync everysec
	bind 127.0.0.1 IPadress
#restart
systemctl restart redis

"""
