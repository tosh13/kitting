#!/bin/sh

# Disable sudo timeout
sudo sh -c 'echo "\nDefaults timestamp_timeout=-1">>/etc/sudoers'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished -> not working
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# QuickLookで閲覧中ファイルの文字列を選択コピー可能にする
defaults write com.apple.finder QLEnableTextSelection -bool yes

# ネットワークボリュームに DS_Storeを作らない
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
brew update
brew cask install google-chrome --force
brew cask install google-japanese-ime --force
brew cask install clipmenu
brew cask install cmd-eikana
brew cask install spectacle
brew cask install iterm2
brew cask install libreoffice
brew cask install libreoffice-language-pack
brew cask cleanup

# Google IME needs to restart computer
shutdown -r now
