#!/bin/bash

set -x
set -e
set -u

SCRIPT=$(readlink -f "$0")
SCRIPTDIR=$(dirname "$SCRIPT")

# Creates a symbolic link of the file to $HOME
# If as second argument is passed, creates the link
# in $HOME/$2 instead.
link() {
  ln -s "$SCRIPTDIR"/"$1" "$HOME"/"${2:-.}"/."$1"
}

install_if_needed() {
  log_file=$SCRIPTDIR/.successful_steps
  echo "${@:2}"
  grep "$1" "$log_file" > /dev/null || {
    eval "${@:2}" && echo "$1" >> "$log_file"
  }
}

install_if_needed "dependencies"  \
  sudo apt install \
    zsh neovim git tmux mosh \
    python3-pip curl tig \
    silversearcher-ag zsh-syntax-highlighting \
    fonts-powerline


# GIT
install_if_needed "git_and_tig" \
  link gitconfig \;\
  link tigrc

### ZSH ###
install_if_needed "zsh" \
  link zshrc \;\
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

for custom in "$SCRIPTDIR"/oh-my-zsh/custom/*; do
  ln -b -T -s "$custom" "$HOME"/.oh-my-zsh/custom/"$(basename "$custom")"
done
for theme in "$SCRIPTDIR"/oh-my-zsh/themes/*; do
  ln -b -T -s "$theme" "$HOME"/.oh-my-zsh/themes/"$(basename "$theme")"
done

if [ ! -e ~/.oh-my-zsh/custom/plugins/psql/ ]; then
  git clone 'git@github.com:martin1keogh/zsh_pgpass_completion.git' ~/.oh-my-zsh/custom/plugins/psql/
fi

### POWERLINE ###
install_if_needed "powerline" \
  pip3 install --user powerline-status \;\
  link powerline .config

### TMUX ###
install_if_needed "tmux" \
  link tmux.conf

### NEOVIM ###
NVIM_HOME=~/.config/nvim
mkdir -p $NVIM_HOME
mkdir -p "$HOME"/.vim_bundle
mkdir -p "$HOME"/.vim_undo
install_if_needed "neovim" \
  ln -s "$SCRIPTDIR"/init.vim $NVIM_HOME \;\
  ln -s "$SCRIPTDIR"/vim/colors $NVIM_HOME/colors \;\
  link vim \;\
  curl -fLo $NVIM_HOME/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \;\
  pip3 install --user neovim \;\
  nvim +PlugInstall +UpdateRemovePlugins +qa

install_if_needed "psqlrc" link psqlrc
install_if_needed "pryrc" link pryrc
install_if_needed "irbrc" link irbrc
install_if_needed "ideavimrc" link ideavimrc
install_if_needed "inputrc" link inputrc

echo
echo
echo
echo Changing shell to zsh
chsh -s /usr/bin/zsh
