if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[0;33m\]@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# My preferred editor is VIM
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Add scripts directory to PATH
PATH=$PATH:~/lib/bash_lib/scripts

# Aliases
alias fsizes='du -a | sort -nr'
alias fstring='grep -rl'
alias hosts='cat ~/.ssh/config | grep "^Host\ "| sed "s/Host //g"'
alias hist='cat ~/.bash_history | grep'
alias aliases='cat ~/lib/bash_lib/profile | grep alias | grep -v aliases'
alias scripts='ls -1 ~/lib/bash_lib/scripts'
alias texproj='mate ~/Desktop/sshfs'
