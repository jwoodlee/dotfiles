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
export PATH="$HOME/.local/bin:$HOME/.rbenv/bin:$PATH"
export PATH="./scripts:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/gettext/bin:$HOME/.rbenv/bin:$PATH"
autoload -U add-zsh-hook
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


###############locals
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory



export MQ_URL=amqp://cdu-dev:cduisawesome@10.76.147.118:5672/cdu-dev-jbw
export MQ_SUBSCRIBER_URL=amqp://cdu-dev:cduisawesome@10.76.147.118:5672/cdu-dev-jbw
export MQ_PUBLISHER_URL=amqp://cdu-dev:cduisawesome@10.76.147.118:5672/cdu-dev-jbw
export DB_USER=postgres
export DB_PWD=''


alias pg_start='su postgres -c "/usr/bin/pg_ctl -D /var/tmp/pgsql/data -l logfile start"'



export LIBDIR="/usr/pgsql-11/lib"
export PKGLIBDIR="$PKGLIBDIR:/usr/pgsql-11/lib"
export SHAREDIR="$SHAREDIR:/usr/pgsql-11/share"

export libdir="/usr/pgsql-11/lib"

export PATH="$HOME:/usr/pgsql-11/bin:$PATH"
