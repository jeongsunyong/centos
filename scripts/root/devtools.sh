#!/bin/sh
if [[$EUID -ne 0]];then
        echo"This scripts must be run as Root" 1>&2
        exit 1
fi

#for install gcc
yum -y install centos-release-scl
yum -y install devtoolset-6
#GNU C Library
yum -y install glibc
#for Alembic Compile
yum -y install devtoolset-6-libatomic-devel
