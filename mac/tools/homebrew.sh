#! /bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "export PATH=/usr/local/bin:$PATH" >> ~/.bash_profile  

source ~/.bash_profile

# Homebrew Cask
brew tap caskroom/cask
brew install brew-cask
