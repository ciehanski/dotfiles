# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# P10k
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD="true"
POWERLEVEL9K_MODE="nerdfont-complete"

# Command history
HISTFILE=~/.config/zsh/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
# setopt INC_APPEND_HISTORY # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# Aliases
alias ..="cd .." 
alias ...="cd ../.."
alias ....="cd ../../.."
alias vim="nvim"
alias cls="clear"
# tmux
alias tls="tmux ls"
alias td="tmux detach"
tn () { tmux new -s $1 ; }
tk () { tmux kill-session -t $1 ; }
# git aliases
alias gs="git status"
gdc () { git commit --dry-run -S -m $1 ; }
# exa override ls
# ls () { exa ; }
# ll () { exa -l ; }
# la () { exa -la ; }
# rust
alias rdb="RUST_TEST_THREADS=1 rust-gdb"

# ZSH Options
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  brew
  colored-man-pages
  colorize
  common-aliases
  golang
  fzf
  tmux
  repo
  git
  git-extras
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source FZF
source ~/.config/fzf/.fzf

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Possibly change to $ZDOTDIR/.p10k.zsh
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
