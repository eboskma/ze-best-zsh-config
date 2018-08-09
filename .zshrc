fpath=($HOME/.zfunctions $fpath)

source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
source ~/zaw/zaw.zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}

# GPG
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye > /dev/null
#
eval $(keychain --eval --agents ssh,gpg id_rsa)

# Direnv
eval "$(direnv hook zsh)"

# rbenv
test -e rbenv && eval "$(rbenv init -)"

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
