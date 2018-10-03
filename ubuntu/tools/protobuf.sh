#! /bin/bash
cd /tmp
sudo apt-get install autoconf automake libtool curl make g++ unzip
git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf
git submodule update --init --recursive
./autogen.sh

./configure  --prefix=/usr
make
make check
sudo make install
sudo ldconfig
