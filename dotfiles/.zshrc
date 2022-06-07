# My user settings
# -----------------------------------------------

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

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

# Autocorrection
setopt CORRECT_ALL

# Magic hitory search
autoload -U predict-on
zle -N predict-on
zle -N predict-off
bindkey "^X^Z" predict-on # C-x C-z
bindkey "^Z" predict-off # C-z
# -----------------------------------------------

