# General
SPACESHIP_TIME_SHOW="true"
SPACESHIP_RUBY_SHOW="false"
SPACESHIP_BATTERY_SHOW="false"

# Git
SPACESHIP_GIT_BRANCH_SHOW="true"
SPACESHIP_GIT_BRANCH_ASYNC="true"
SPACESHIP_GIT_BRANCH_PREFIX=$'\UE725 ' # Branch character from Nerd Font
SPACESHIP_GIT_BRANCH_SUFFIX=" "

# Colors
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_CHAR_COLOR_SUCCESS="8"
SPACESHIP_CHAR_COLOR_FAILURE="8"

SPACESHIP_GIT_BRANCH_COLOR="cyan"
SPACESHIP_GIT_STATUS_COLOR="red"

SPACESHIP_DIR_COLOR="blue"
SPACESHIP_EXEC_TIME_COLOR="yellow"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# Prompt order
SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git_branch     # Git Branch
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)
