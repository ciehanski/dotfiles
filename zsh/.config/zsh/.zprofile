# Path to your oh-my-zsh installation. export ZSH="/home/ciehanski/.oh-my-zsh" Set lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Set editor
export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# Go env
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH=$PATH:$GOPATH/bin

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# haskell
export PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# elixir
export PATH="$PATH:/usr/local/bin/elixir"
export PATH="$PATH:/usr/local/bin/mix"
