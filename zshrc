# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
source "/Users/adcbww9/.aliasrc"

export no_proxy="127.0.0.1:3000,127.0.0.1,localhost,localhost:3000,bnymellon.net,.bnymellon.net,bnymcloud.net"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward
echo -e "\033]P44040ff\033\\"
# Customize to your needs...


export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="./scripts:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"



username="$(whoami | tr '[:lower:]' '[:upper:]')"
#password="$(security find-generic-password -gwa $(whoami) -s curl)"
#export http_proxy=http://AMS%5C%5C$username:$password@bnym-proxy.bnymellon.net:8080
export http_proxy=http://bnym-proxy.bnymellon.net:8080


export NO_PROXY=$no_proxy
export https_proxy=$http_proxy
export all_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export ALL_PROXY=$http_proxy

#https://teamtreehouse.com/community/what-does-rbenv-rehash-mean-exactly
#eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"


export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"


export GEM_HOME="$HOME/.gems/ruby/2.6.0/gems"
export GEM_PATH="$GEM_HOME"
