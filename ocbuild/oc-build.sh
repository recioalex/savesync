#!/bin/sh
 
cd ocbuild
#sudo rm client -R
git clone git://github.com/owncloud/client.git
 
# Build

mkdir client-build 
cd client-build
cmake  -DWITH_DOC=TRUE -DCMAKE_BUILD_TYPE="Release" ../client 
make -j4
cd ../../..
