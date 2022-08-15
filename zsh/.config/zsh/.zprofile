# Path to your oh-my-zsh installation.
export ZSH="/Users/Ryan/.oh-my-zsh"

# Add macOS local/sbin to path
export PATH="/usr/local/sbin:$PATH"

# Set lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Set editor
export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# homebrew 
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Set terminal
# export TERM="xterm-256color"

# FZF
export FZF_BASE="/usr/local/opt/fzf"
export FZF_DEFAULT_OPTS="--height 30% --border --extended"

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

# Setting PATH for Python 3.7
# export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
