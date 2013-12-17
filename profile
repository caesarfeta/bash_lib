if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias fsizes='du -a | sort -nr'
alias fstring='grep -rl'
alias hosts='cat ~/.ssh/config | grep "Host\ "| sed "s/Host //g"'