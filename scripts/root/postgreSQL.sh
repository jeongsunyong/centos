#! /bin/sh
"""
install postfreSQL
"""
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

yum install https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm
yum install postgresql11
yum install postgresql11-server
/usr/pgsql-11/bin/postgresql-11-setup initdb
systemctl enable postgresql-11
systemctl start postgresql-11

firewall-cmd --zone=public --add-port=5432/tcp --permanent
firewall-cmd --reload

"""
#allow external access
vim /var/lib/pgsql/11/data/postgresql.conf
59 : listen_address = '*'
"""

