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

# Path
export PATH="/opt/homebrew:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# "$(gem environment gemdir)/bin"
export PATH="/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"

# Rosetta
alias mzsh="arch -arm64 zsh"
alias izsh="arch -x86_64 zsh"

if [ "$(uname -p)" = "i386" ]; then
  echo "Running in i386 mode (Rosetta)"
  eval "$(/usr/local/homebrew/bin/brew shellenv)"
  alias brew='/usr/local/homebrew/bin/brew'
else
  eval "$(/opt/homebrew/bin/brew shellenv)"
  alias brew='/opt/homebrew/bin/brew'
fi
