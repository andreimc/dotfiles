#!/usr/bin/env bash

# Install command-line tools using Homebrew.

./install/get_hosts.sh

brew update

brew upgrade

brew cleanup

brew install parallel
brew tap caskroom/versions

./install/zsh_install.sh

cat ./install/cask_install.sh | parallel -j10
cat ./install/brew_packages.sh | parallel -j10

rbenv install 2.3.3

rbenv global 2.3.3

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

gem install hub tmuxinator neovim --no-rdoc --no-ri

pip2 install --upgrade pip
pip2 install --upgrade neovim
pip3 install --upgrade pip
pip3 install --upgrade neovim
pip install --user ansible

nvm install 7.3.0
