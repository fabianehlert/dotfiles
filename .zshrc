# oh-my-zsh
export ZSH="/Users/fabian/.oh-my-zsh"

DEFAULT_USER="fabian"

# Theme
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW="true"
SPACESHIP_BATTERY_SHOW="false"
SPACESHIP_GIT_SHOW="false"
SPACESHIP_RUBY_SHOW="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(git macos ruby zsh-autosuggestions zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh

# Brew
export PATH="/opt/homebrew:$PATH"

# Ruby
export PATH="$HOME/.rbenv/shims:$PATH"
