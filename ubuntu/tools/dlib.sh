#!/bin/bash

git clone https://github.com/davisking/dlib.git

mkdir build
cd build
cmake .. -DUSE_AVX_INSTRUCTIONS=1; cmake --build .
python setup.py install
