#! /bin/bash

brew install git 

git --version

ssh-keygen -t rsa -C "divine"
git config --global user.name "Tianyu Bai"
git config --global user.email "t3bai@eng.ucsd.edu"

git config --global credential.helper osxkeychain

