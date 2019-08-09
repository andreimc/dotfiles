#!/usr/bin/env bash

brew install golang
brew install python
brew install python3
brew install neovim
brew install zsh-syntax-highlighting
brew install the_silver_searcher
brew install zsh-syntax-highlighting
brew install jq
brew install nvm
brew install kubectl
brew install rbenv
brew install reattach-to-user-namespace
brew install terraform
brew install tig
brew install tmux
brew install gpg
brew install git
brew install git-lfs
brew install wget
brew install awscli
brew install pinentry-mac

echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent
