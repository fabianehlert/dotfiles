# oh-my-zsh
export ZSH="/Users/fabian/.oh-my-zsh"

DEFAULT_USER="fabian"

# Theme (see more at $SPACESHIP_CONFIG)
ZSH_THEME="spaceship"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(git macos ruby zsh-autosuggestions zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh

# Brew
export PATH=$(brew --prefix)/bin:$PATH

# Ruby
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"
