#alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

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
alias irc='ssh keogh2010@perso.iiens.net'
alias pf='ps -ef|grep $1'
alias df='df -h'
alias du='du -sh'
alias lunix='ssh martin.keogh@lunix121.ensiie.fr'
alias -g :g='|grep'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias simcity='wine explorer /desktop=SC4,1300x670 Simcity\ 4.exe -intro:off -CustomResolution:enabled -r1300x670x32'
alias ocaml='ledit ocaml'
alias arise='export http_proxy=http://http-proxy.iiens.net:3128;export ftp_proxy=ftp://http-proxy.iiens.net:3128'
alias google-chrome-arise='google-chrome --proxy-server=http-proxy.iiens.net:3128'
alias google-chrome-user-agent="google-chrome --user-agent HTC-T8282"
alias eclipse="(eclipse -clean &) &> /dev/null "
alias tmux="tmux -2"
alias git-root='cd $(git rev-parse --show-toplevel)'
