#!/bin/sh
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi
yum -y install centos-release-scl
yum -y install devtoolset-6
yum -y install glibc
