#!/bin/sh
 
cd ocbuild
cd client-build
 
# Prepare a redistribuable package
make package
 
sudo make install -j4
 
# It seems that libocsync and libowncloudsync shared libraries must be installed manually:
cp csync/src/libocsync.so.* /usr/local/lib
cp src/libsync/libowncloudsync.so.* /usr/local/lib
ldconfig
cd ..

sudo rm client* -R
