#! /bin/install_all.sh
nvidia.sh
utility.sh
code.sh
djv.sh
mpv.sh
rmbeep.sh
trans.sh
pip.sh
devtools.sh
FFmpeg.sh
handbrake.sh

#
scl enable devtoolset-6 ./cmake.sh
scl enable devtoolset-6 ./openexr.sh
scl enable devtoolset-6 ./opencolorio.sh
scl enable devtoolset-6 ./alembic.sh
