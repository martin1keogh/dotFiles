GIT_INSTALLED=false
POWERLINE_INSTALLED=false
ZSH_INSTALLED=false

SCRIPT=`readlink -f $0`
SCRIPTDIR=`dirname "$SCRIPT"`

### GIT ###
if test `which git`; then
	GIT_INSTALLED=true
	ln -T -s $SCRIPTDIR/gitconfig $HOME/.gitconfig
	ln -T -s $SCRIPTDIR/git_template $HOME/.git_template
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
	ln -T -s $SCRIPTDIR/zshrc $HOME/.zshrc
	if $GIT_INSTALLED; then
		git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
		for custom in `ls $SCRIPTDIR/oh-my-zsh/custom/*`; do
		  ln -T -s $SCRIPTDIR/oh-my-zsh/custom/$custom $HOME/.oh-my-zsh/custom/`basename $custom`
		done
		for theme in `ls $SCRIPTDIR/oh-my-zsh/themes/*`; do
		  ln -T -s $SCRIPTDIR/oh-my-zsh/themes/$theme $HOME/.oh-my-zsh/themes/`basename $theme`
		done
	else
		echo "Couldn't find git, skipping `oh-my-zsh`'s install."
	fi
else 
	echo "Couldn't find zsh, please install it and then restart the installer."
fi

### POWERLINE ###
if test `which powerline`; then
	POWERLINE_INSTALLED=true
	ln -T -s $SCRIPTDIR/powerline $HOME/.config/
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
	ln -T -s $SCRIPTDIR/tmux.conf $HOME/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "Tmux no found, skipping .tmux.conf"
fi

### VIM ###
if test `which vim`; then
	ln -T -s $SCRIPTDIR/vim $HOME/.vim
	ln -T -s $SCRIPTDIR/vimrc $HOME/.vimrc
	mkdir -p $HOME/.vim_bundle
	git clone https://github.com/Shougo/neobundle.vim ~/.vim_bundle/neobundle.vim
	vim -u $HOME/.vimrc +NeoBundleUpdate +qa
else 
	echo "Couldn't find vim. Please install it and ensure it's 7.3+ with python enabled."
fi

### Change user shell to zsh
if $ZSH_INSTALLED; then
	echo "Do not forget to change your default shell to zsh! (`chsh -s /bin/zsh`)"
fi

### pryrc
ln -T -s $SCRIPTDIR/pryrc $HOME/.pryrc
ln -T -s $SCRIPTDIR/irbrc $HOME/.irbrc
