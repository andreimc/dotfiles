#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude "bootstrap.sh" \
    --exclude "brew.sh" \
    --exclude "install" \
    --exclude "README.md" \
    --exclude "LICENSE-MIT.txt" \
    -avh --no-perms . ~;
  source ~/.zshrc;

  if [[ ! -x ~/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi

  if [[ ! -x ~/.scm_breeze ]]; then
    git clone git://github.com/andreimc/scm_breeze.git ~/.scm_breeze
    ~/.scm_breeze/install.sh
  fi

  if [[ ! -x ~/.local/share/nvim/site/autoload/plug.vim ]]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi

  # if [[ ! -x ~/.homebrew/bin/brew ]]; then
  #   mkdir -p ~/.homebrew
  #   curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/.homebrew
  # fi


  mkdir ~/personal
  mkdir ~/projects

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
