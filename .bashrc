# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
PATH=$PATH:/local/perforce:local/perforce/p4v-2013.1.611503/bin
export P4CONFIG=./.p4config

export PYENV_ROOT="$HOME/.pyenv"                                                
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias scrapy=/home/AAA/.pyenv/versions/2.7.6/bin/scrapy
