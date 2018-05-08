#!/bin/bash

set -x
set -e
set -u

SCRIPT=`readlink -f $0`
SCRIPTDIR=`dirname "$SCRIPT"`

# Creates a symbolic link of the file to $HOME
# If as second argument is passed, creates the link
# in $HOME/$2 instead.
link() {
  ln -s $SCRIPTDIR/$1 $HOME/${2:-.}/.$1
}

install_if_needed() {
  log_file=$SCRIPTDIR/.successful_steps
  echo "${@:2}"
  grep $1 $log_file > /dev/null || {
    eval "${@:2}" && echo $1 >> $log_file
  }
}

install_if_needed "aptitude"  \
  sudo apt-get install -y aptitude \;\
  sudo aptitude install \
    zsh neovim git tmux mosh \
    python-pip python3-pip curl tig


# GIT
install_if_needed "git_and_tig" \
  link gitconfig \;\
  link git_template \;\
  link tigrc

### ZSH ###
install_if_needed "zsh" \
  link zshrc \;\
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

for custom in $SCRIPTDIR/oh-my-zsh/custom/*; do
  ln -b -T -s $custom $HOME/.oh-my-zsh/custom/$(basename $custom)
done
for theme in $SCRIPTDIR/oh-my-zsh/themes/*; do
  ln -b -T -s $theme $HOME/.oh-my-zsh/themes/$(basename $theme)
done

### POWERLINE ###
install_if_needed "powerline" \
  pip install --user powerline-status \;\
  link powerline .config

### TMUX ###
install_if_needed "tmux" \
  link tmux.conf \;\
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### NEOVIM ###
NVIM_HOME=~/.config/nvim
mkdir -p $NVIM_HOME
mkdir -p $HOME/.vim_bundle
mkdir -p $HOME/.vim_undo
install_if_needed "neovim" \
  ln -s $SCRIPTDIR/init.vim $NVIM_HOME \;\
  ln -s $SCRIPTDIR/vim/colors $NVIM_HOME/colors \;\
  link vim \;\
  curl -fLo $NVIM_HOME/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \;\
  pip3 install --user neovim \;\
  nvim +PlugInstall +UpdateRemovePlugins +qa

### pryrc
install_if_needed "psqlrc" link psqlrc
install_if_needed "pryrc" link pryrc
install_if_needed "irbrc" link irbrc

echo
echo
echo
echo Changing shell to zsh
chsh -s /usr/bin/zsh
