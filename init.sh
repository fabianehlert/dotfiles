#!/usr/bin/env bash

# Heavily inspired by: https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Copy dotfiles
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global

# Create Developer directory
mkdir ~/Developer

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spaceship Prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# KeyRepeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Finder
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # search the current folder by default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv" # Use column view in all Finder windows by default
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0;killall Dock
defaults write com.apple.dock autohide-time-modifier -float 0.6;killall Dock
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock mru-spaces -bool false # Don’t automatically rearrange Spaces based on most recent use

# Hot Corners
# Top right screen corner → Start screen saver
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom right screen corner → Remove Quick Note
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0

# Xcode Defaults
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle # Install packages defined in Brewfile

# Notify complete
echo "*-----------------------------------*"
echo "| Done!                             |"
echo "| System restart might be required. |"
echo "|                                   |"
echo "| Manually install:                 |"
echo "| JetBrains Mono Font, Xcode,       |"
echo "| oh-my-zsh plugins, iTerm Colors.  |"
echo "*-----------------------------------*"
