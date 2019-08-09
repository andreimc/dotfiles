#!/usr/bin/env bash
# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
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

brew install aws-iam-authenticator
brew install kubectx