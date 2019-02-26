#! /bin/sh
"""
#install mongoDB
"""
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

echo "[mongodb-org-4.0]" >> /etc/yum.repos.d/mongodb-org.repo
echo "name=MongoDB Repository" >> /etc/yum.repos.d/mongodb-org.repo
echo "baseurl=https://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/4.0/x86_64/" >> /etc/yum.repos.d/mongodb-org.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/mongodb-org.repo
echo "enabled=1" >> /etc/yum.repos.d/mongodb-org.repo
echo "gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" >> /etc/yum.repos.d/mongodb-org.repo

yum install -y mongodb-org
firewall-cmd --zone=public --add-port=27017/tcp --permanent
firewall-cmd --reload
service mongod start
chkconfig mongod on
"""
#set mongod.conf
vim /etc/mongod.conf
	net:
  port:27017
  bindIpAll: true
  #bindIp: 127.0.0.1

service mongod restart

"""
