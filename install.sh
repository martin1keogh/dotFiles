GIT_INSTALLED=false
POWERLINE_INSTALLED=false
ZSH_INSTALLED=false

### GIT ###
if test `which git`; then
	GIT_INSTALLED=true
	cp -rn gitconfig $HOME/.gitconfig
	cp -rn git_template $HOME/.git_template
else 
	echo "Couldn't find git, this might cause problems for further installs."
	echo "Continue ? (y/N)"
	read -r ans
	case $ans in
		[yY]|[yY]es)
			;;
		*)
			exit 0
			;;
	esac
fi

### ZSH ###
if test `which zsh`; then
	ZSH_INSTALLED=true
	cp -rn zshrc $HOME/.zshrc
	if $GIT_INSTALLED; then
		git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
		cp -rn oh-my-zsh $HOME/.oh-my-zsh
	else
		echo "Couldn't find git, skipping `oh-my-zsh`'s install."
	fi
else 
	echo "Couldn't find zsh, please install it and then restart the installer."
fi

### POWERLINE ###
if test `which powerline`; then
	POWERLINE_INSTALLED=true
	cp -rn powerline $HOME/.config/
else 
	echo "Couldn't find powerline, this will cause bugs in vim/tmux"
	echo "Continue ? (y/N)"
	read -r ans
	case $ans in
		[yY]|[yY]es)
			;;
		*)
			exit 0
			;;
	esac
fi

### TMUX ###
if test `which tmux`; then
	cp -rn tmux.conf $HOME/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "Tmux no found, skipping .tmux.conf"
fi

### VIM ###
if test `which vim`; then
	cp -rn vim $HOME/.vim
	cp -rn vimrc $HOME/.vimrc
	ln -s $HOME/.vim/resources/colors $HOME/.vim/colors
	mkdir -p ~/.vim/bundle
	git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
	vim -u $HOME/.vimrc +NeoBundleUpdate +qa
else 
	echo "Couldn't find vim. Please install it and ensure it's 7.3+ with python enabled."
fi

### Change user shell to zsh
if $ZSH_INSTALLED; then
	echo "Do not forget to change your default shell to zsh! (`chsh -s /bin/zsh`)"
fi

### pryrc
cp -n pryrc $HOME/.pryrc
cp -n irbrc $HOME/.irbrc
