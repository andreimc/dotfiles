#!/usr/bin/env bash

brew install zsh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "/usr/local/bin/zsh" /etc/shells; then
  echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

