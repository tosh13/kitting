#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# String selectable on QuickLook
defaults write com.apple.finder QLEnableTextSelection -bool yes

# Don't make DS_Store on network drive
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# restart
killall Finder
killall Dock

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
hash -r

brew tap homebrew/science

brew update
brew install ansible
brew install caskroom/cask/brew-cask
brew install git
brew install heroku-toolbelt
brew install nkf
brew install R

brew cask install adobe-reader
brew cask install clipmenu
brew cask install diffmerge
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install grandperspective
brew cask install iterm2
brew cask install karabiner
brew cask install skype
brew cask install textwrangler
brew cask install virtualbox
