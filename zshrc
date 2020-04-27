#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#set -xv


export HTTP_PROXY=http://bnym-proxy.bnymellon.net:8080
export HTTPS_PROXY=http://bnym-proxy.bnymellon.net:8080
export NO_PROXY=.bnymellon.net

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


if [[ -s "${ZDOTDIR:-$HOME}/.aliasrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.aliasrc"
fi

bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

echo -e "\033]P44040ff\033\\"

# Customize to your needs...
export PATH="$HOME/.local/bin:$HOME/.rbenv/bin:$PATH"
export PATH="./scripts:$PATH"
eval "$(rbenv init -)"


eval "$(dircolors ~/.dir_colors)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm

