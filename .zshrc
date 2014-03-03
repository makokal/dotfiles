# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias lt="tree -LC 1"

# force tmux to know that terminal is 256 colors
alias tmux="tmux -2"

export EDITOR="vim"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# path
export PATH=/anaconda/bin:/usr/local/bin:/usr/local/sbin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11/bin:$PATH
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11/bin:$PATH

# brew related python
#export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Anaconda python
export PYTHONPATH="/anaconda/pkgs:$PYTHONPATH"

# undo the annoying autocorrect option
unsetopt correct_all

# STAGE
#export STG=$HOME/Workspace/stg
#export DYLD_LIBRARY_PATH=$STG/lib




PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
