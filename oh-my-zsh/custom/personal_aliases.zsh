# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls=' ls --color=auto -h -B'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -AlF'
alias la='ls -A'
alias l='ls -CF'
alias pf='ps -ef|grep $1'
alias df='df -h'
alias du='du -sh'
alias -g :g='|grep'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias tmux="tmux -2"
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias ocaml='rlwrap ocaml'
