#!/bin/bash

cd ~
git clone https://github.com/davisking/dlib.git
cd dlib
mkdir build
cd build
cmake ..
cmake --build . --config Release
sudo make install
sudo ldconfig
cd ..
sudo python setup.py install
sudo rm -rf dist
sudo rm -rf tools/python/build
