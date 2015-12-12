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

# brew tap homebrew/dupes
# brew tap motemen/ghq
# brew tap caskroom/fonts
# brew tap homebrew/binary
brew tap homebrew/science

brew update
brew install ansible
brew install caskroom/cask/brew-cask
brew install git
brew install heroku-toolbelt
brew install nkf
brew install R

# install applications
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

curl https://raw.githubusercontent.com/tosh13/kitting/master/cask.sh | bash

# re-enable sudo timeout
sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers

# Google IME needs to restart computer
shutdown -r now
