# HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

bindkey '^R' zaw-history

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search

bindkey -e

