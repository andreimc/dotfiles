#!/usr/bin/env bash

# Install command-line tools using Homebrew.

./install/get_hosts.sh

./install/brew_prepare.sh

./install/zsh_install.sh

cat ./install/cask_install.sh | parallel -j10
./install/brew_packages.sh

rbenv install 2.3.3

rbenv global 2.3.3

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

gem install tmuxinator neovim --no-rdoc --no-ri

pip2 install --upgrade pip
pip2 install --upgrade neovim
pip3 install --upgrade pip
pip3 install --upgrade neovim
pip install --user ansible

nvm install 7.3.0
