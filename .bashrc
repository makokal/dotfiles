export CPATH=/opt/local/include
export LIBRARY_PATH=/opt/local/lib
export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:/opt/local/lib:/usr/local/lib
export PATH=/opt/local/bin:$PATH


## prompt
[ -z "$PS1" ] && return

# Basic options
export HISTCONTROL=ignoredups
export COLORFGBG='default;default'

# some colors
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=exfxcxdxbxegedabagacad

#Aliases
alias ls='ls -h'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias svim='sudo vim'
alias h='cd'
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias cim='vim'
alias back='cd $OLDPWD'
alias root='sudo su'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'
alias dfh='df -h'
alias gvim='gvim -geom 84x26'
alias start='dbus-launch startx'

# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
PS1="${BLUE}(${RED}\w${BLUE}) ${NORMAL}\h ${RED}\$ ${NORMAL}"


################# Qt
PATH=/Developer/SDKs/QtSDK/Desktop/Qt/4.8.0/gcc/bin:$PATH
#PATH=/usr/local/Trolltech/Qt-4.8.0/bin:$PATH 
export PATH 
QTDIR=/Developer/SDKs/QtSDK/Desktop/Qt/4.8.0/gcc
#QTDIR=/usr/local/Trolltech/Qt-4.8.0 
export QTDIR 

