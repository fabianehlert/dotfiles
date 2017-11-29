# Path to your oh-my-zsh installation.
export ZSH=/Users/fabian/.oh-my-zsh

# Theme
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW="true"
SPACESHIP_BATTERY_SHOW="false"

# User
DEFAULT_USER="fabian"

export PATH=$PATH:/usr/local/Cellar
export PATH=$PATH:/usr/local/Caskroom

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git osx ruby zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source "/Users/fabian/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# https://github.com/rupa/z
. ~/.oh-my-zsh/custom/z.sh

export GEM_HOME=/Users/fabian/.gem
export PATH="$HOME/.fastlane/bin:$PATH"
