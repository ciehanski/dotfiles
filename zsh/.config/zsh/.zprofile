# Path to your oh-my-zsh installation. 
export ZSH="/home/ciehanski/.oh-my-zsh" 
# Set lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Set editor
export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# Go env
export GOPATH="/code/go"
export GOBIN="/code/go/bin"
export PATH=$PATH:$GOPATH/bin

# cargo / rustup
export CARGO_HOME="/code/.cargo"
export PATH="$CARGO_HOME/bin:$PATH"
export RUSTUP_HOME="/code/.rustup"

# haskell
export PATH="/code/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"
export PATH="/code/.local/bin:$PATH"

# Start ssh-agent and set env
# if ! pgrep -x ssh-agent -u $(id -u) >/dev/null; then
# 	# This sets SSH_AUTH_SOCK and SSH_AGENT_PID variables
# 	eval "$(ssh-agent -s)"
# 	export SSH_AUTH_SOCK SSH_AGENT_PID
# 	cat > "$XDG_RUNTIME_DIR/ssh-agent-env" <<- __EOF__
# 	export SSH_AUTH_SOCK=$SSH_AUTH_SOCK
# 	export SSH_AGENT_PID=$SSH_AGENT_PID
# 	__EOF__
# else
# 	if [ -s "$XDG_RUNTIME_DIR/ssh-agent-env" ]; then
# 		. $XDG_RUNTIME_DIR/ssh-agent-env
# 	fi
# fi
