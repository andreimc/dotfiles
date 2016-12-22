#!/usr/bin/env bash

brew install zsh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "$HOME/.homebrew/bin/zsh" /etc/shells; then
  echo "$HOME/.homebrew/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s $HOME/.homebrew/bin/zsh;
fi;

