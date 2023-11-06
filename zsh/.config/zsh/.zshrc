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

### Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias vim="nvim"
alias NVIM="nvim"
alias cls="clear"
alias mv="mv -v"
alias cp="cp -v"

# exa override ls
alias ls="exa" # ls
alias ll='exa -lbF --git' # list, size, type, git
alias llm='exa -lbGd --git --sort=modified' # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale' # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias lS='exa -1' # one column, just names
alias lt='exa --tree --level=2' # tree


# tmux
alias tls="tmux ls"
alias td="tmux detach"
tn () { tmux new -s $1 ; }
tk () { tmux kill-session -t $1 ; }

# git aliases
alias gs="git status"
gdc () { git commit --dry-run -S -m $1 ; }
ct () { echo "^--^  ^------------^
|     |
|     +-> Summary in present tense.
|
+-------> Type: build, chore, ci, docs, feat, fix, perf, refactor, revert, style, or test

feat: new feature for the user, not a new feature for build script
fix: a bug fix
docs: changes to the documentation only
style: formatting, white-space, etc; no production code change
refactor: code change that does not fix a bug or add a feature, eg. renaming a variable
perf: code change that improves performance
test: adding missing tests, refactoring tests; no production code change
build: change that affects the build system or external dependencies (example scopes: gulp, npm)
ci: change to the CI configuration files and scripts
chore: change that does not modify src or test files
revert: reverts a previous commit" ; }

# rust
alias rdb="RUST_TEST_THREADS=1 rust-gdb"

# ruby
# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh
# chruby ruby-3.1.2

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
  colored-man-pages
  colorize
  common-aliases
  tmux
  repo
  git
  git-extras
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Possibly change to $ZDOTDIR/.p10k.zsh
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# pnpm
export PNPM_HOME="/home/ciehanski/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end