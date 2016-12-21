#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
#brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
#brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install zsh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "$HOME/.homebrew/bin/zsh" /etc/shells; then
  echo "$HOME/.homebrew/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s $HOME/.homebrew/bin/zsh;
fi;

# Install `wget` with IRI support.
#brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some macOS tools.
#brew install vim --override-system-vi
brew install python
brew install python3
brew install neovim/neovim/neovim
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/openssh

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xz

# Install other useful binaries.
brew install pt
brew install the_silver_searcher
# brew install dark-mode
# brew install dnsmasq
brew install jq

# Install tmux and friends
brew install nvm
brew install kubectl
brew install rbenv
brew install reattach-to-user-namespace
brew install tmux
brew install choppsv1/term24/emacs

brew install tig

brew install terraform
brew install ansible

brew tap caskroom/fonts
brew cask install appzapper
brew cask install font-inconsolata-g-for-powerline
brew cask install flux
brew cask install karabiner
brew cask install sizeup
brew cask install istat-menus
brew cask install spotify
brew cask install java
brew cask install docker
brew cask install caffeine
brew cask install dash
brew cask install google-chrome
brew cask install google-erive
brew cask install iterm
brew cask install skype
brew cask install slack
brew cask install virtualbox
brew cask install whatsapp
#brew install exiv2
brew install gpg
brew install git
brew install git-lfs
brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rhino
# brew install speedtest_cli
# brew install ssh-copy-id
# brew install testssl
# brew install tree
# brew install vbindiff
# brew install webkit2png
# brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup

rbenv install 2.3.3

rbenv global 2.3.3

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

gem install hub tmuxinator --no-rdoc --no-ri


pip3 install --upgrade pi
pip3 install --upgrade neovim
