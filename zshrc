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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jwoodlee/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

export PATH="/usr/local/opt/gettext/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
