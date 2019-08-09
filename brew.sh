#!/usr/bin/env bash

# Install command-line tools using Homebrew.

./install/brew_prepare.sh

./install/zsh_install.sh

cat ./install/cask_install.sh | parallel -j10
./install/brew_packages.sh

rbenv install 2.6.3

rbenv global 2.6.3

nvm install 10.16

npm install --global pure-prompt