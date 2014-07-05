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


alias cd2='cd ../../'
alias cd4='cd ../../../../'
alias cd3='cd ../../../'
alias ls='ls --color=tty '
alias ll='ls -la '
alias lt='ls -lhrt '
alias lz='ls -lhrS '
alias h='history'
alias df='df -h'
alias du='du -h'
alias grep='grep -rnE --color'
alias vd='vimdiff'
alias grep='grep -rnE --color'
alias vd='vimdiff'
alias tf='tail -f'
alias cls='clear'
alias du0='du --max-depth=0'
alias du1='du --max-depth=1'

function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
function remove_lines_from() { grep -F -x -v -f $2 $1; } # removes lines from $1 if they appear in $2
alias pp="ps axuf | pager"
 alias sum="xargs | tr ' ' '+' | bc" ## Usage: echo 1 2 3 | sum
function mcd() { mkdir $1 && cd $1; }
