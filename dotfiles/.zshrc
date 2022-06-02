# Use powerline
USE_POWERLINE="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# My user settings
# -----------------------------------------------

# Autocomplition of command line args
autoload -U compinit
compinit

# Higthlighting of current arg
zmodload zsh/complist
zstyle ':completion:*' menu yes select

# Colorfull list of args
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Helper for kill and killall commands
zstyle ':completion:*:processes' command 'ps -xuf'
zstyle ':completion:*:processes' sort false

zstyle ':completion:*:processes-names' command 'ps xho command'

# Custom LEFT and RIGHT prompt
export PROMPT="%F{green}zsh%1-%f> "
export RPROMPT='%F{magenta}%T%1-%f'
export SPROMPT="Error! Would you input %r instead of %R? ([Y]es/[N]o/[E]dit/[A]bort) "

# Default apps
export EDITOR=vim
export VIDEOPLAYER=vlc
export OFFICE=libreoffice
export DOCVIEWER=atril
export AUDIOPLAYER=rhythmbox

# Autocorrection
setopt CORRECT_ALL

# Aliases for file suffixes 
alias -s avi=$VIDEOPLAYER
alias -s mpg=$VIDEOPLAYER
alias -s mp4=$VIDEOPLAYER
alias -s c=$EDITOR
alias -s h=$EDITOR
#alias -s py=$EDITOR
alias -s md=$EDITOR
alias -s txt=$EDITOR
alias -s tex=$EDITOR
alias -s asm=$EDITOR
alias -s mp3=$AUDIOPLAYER
alias -s pdf=$DOCVIEWER
alias -s djvu=$DOCVIEWER

# -----------------------------------------------

