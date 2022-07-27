# Install oh-my-bash from https://github.com/ohmybash/oh-my-bash

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH=/home/billy/.oh-my-bash

OSH_THEME="agnoster"

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

completions=(
  git
  #composer
  #ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)


source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Install rustup , then install
# - cargo install exa, procs, bat ripgrep, find-fd

# Setup rust env
. "$HOME/.cargo/env"

# Aliases
alias ls='exa --icons'
alias ll='exa -a --icons'
alias ps='procs'
alias cat='bat'
alias grep='rg'
alias find='fd'
