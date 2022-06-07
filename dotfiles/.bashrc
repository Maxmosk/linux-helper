#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[\e[0;37m\]You logged in on \[\e[0;1;94m\]\H\[\e[0;37m\] as \[\e[0;1;92m\]\u\[\e[0;37m\].\n\[\e[0;37m\]Working directory: \[\e[0;3;90m\]\w\[\e[0;37m\].\n\[\e[0;37m\]Git branch: \[\e[0;3;93m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0;37m\].\n\[\e[0;37m\]$ \[\e[0m\]'

