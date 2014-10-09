export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='subl'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Python setup
export PATH="$HOME/anaconda/bin:/usr/local/bin:/usr/local/sbin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11/bin:$PATH"


# Ruby setup

