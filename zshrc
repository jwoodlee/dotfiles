#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

autoload -U compinit
compinit

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

[[ -s "${ZDOTDIR:-$HOME}/.tmuxinator/scripts/tmuxinator" ]] && source "${ZDOTDIR:-$HOME}/.tmuxinator/scripts/tmuxinator"

if [[ -s "${ZDOTDIR:-$HOME}/.aliasrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.aliasrc"
fi

bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

echo -e "\033]P44040ff\033\\"

if [[ -s "${ZDOTDIR:-$HOME}/.zshrc-mine" ]]; then
  source "${ZDOTDIR:-$HOME}/.zshrc-mine"
fi
# Customize to your needs...
#export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="./scripts:$PATH"
export ARDUINO_PATH="/applications/"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/gettext/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

autoload -U add-zsh-hook
load-nvmrc() {
local node_version="$(nvm version)"
local nvmrc_path="$(nvm_find_nvmrc)"

if [ -n "$nvmrc_path" ]; then
  local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

  if [ "$nvmrc_node_version" = "N/A" ]; then
    nvm install
  elif [ "$nvmrc_node_version" != "$node_version" ]; then
    nvm use >/dev/null
  fi
elif [ "$node_version" != "$(nvm version default)" ]; then
  #echo "Reverting to nvm default version"
  nvm use default
fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
