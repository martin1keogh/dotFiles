export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/scala/bin:$HOME/.rvm/bin
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# List of theme I used
#ZSH_THEME="bira"
#ZSH_THEME="gallois"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="my-theme"
#ZSH_THEME="geoffgarside"
ZSH_THEME="my"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man command-not-found sbt scala)

source $ZSH/oh-my-zsh.sh


setopt correctall
setopt autocd


zle -N zle-line-init
zle -N zle-keymap-select

export EDITOR=vim

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


#### Welcome Message #######
if [[ $SHLVL -le 3 ]] ; then
    echo
    print -P "\e[1;32m Welcome to: \e[1;34m%m"
    print -P "\e[1;32m Running: \e[1;34m`uname -srm`\e[1;32m on \e[1;34m%l"
    print -P "\e[1;32m It is:\e[1;34m %D{%r} \e[1;32m on \e[1;34m%D{%A %b %f %G}"
    echo
fi

play () {
	if [[ -e $1 ]];then
		touch $1;
		(smplayer -add-to-playlist $1) &
      else
              echo -n $1
              echo " n'existe pas"
      	fi
}

function chpwd() {
    emulate -L zsh
    ls
}

