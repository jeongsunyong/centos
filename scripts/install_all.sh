#! /bin/install_all.sh

# OS : centos 7.6
# after running as root, please run again as user.

#execute as root
if [[ $EUID -e 0]]; then

cd /home/$USER/centos/scripts/root/
nvidia.sh
utility.sh
pip_install.sh
install.sh
devtools.sh
code.sh
djv.sh
mpv.sh
handbrake.sh
openimageio.sh
nohotcorner.sh
rmbeep.sh
redis.sh
mongoDB.sh
postgreSQL.sh

else

#excute as user
cd /home/$USER/centos/scripts/user/
pip.sh
ffmpeg.sh
blender.sh
gaffer.sh
ocioconfig.sh
trans.sh
scl enable devtoolset-6 /home/$USER/centos/scripts/user/cmake.sh
scl enable devtoolset-6 /home/$USER/centos/scripts/user/openexr.sh
scl enable devtoolset-6 /home/$USER/centos/scripts/user/opencolorio.sh
scl enable devtoolset-6 /home/$USER/centos/scripts/user/alembic.sh

fi
