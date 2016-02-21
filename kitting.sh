#!/bin/sh

# Disable sudo timeout
sudo sh -c 'echo "\nDefaults timestamp_timeout=-1">>/etc/sudoers'

# Ask for the administrator password upfront
sudo -v

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
brew install nkf
brew install R

# install applications
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

brew cask install adobe-reader
brew cask install atom
brew cask install clipmenu
brew cask install diffmerge
brew cask install dropbox
brew cask install firefox
brew cask install github-desktop
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install grandperspective
brew cask install iterm2
brew cask install java
brew cask install karabiner
brew cask install microsoft-office
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install the-unarchiver
brew cask install textwrangler
brew cask install virtualbox
# brew cask install endnote
# brew cask install libreoffice

brew cask cleanup

# re-enable sudo timeout
sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers

# Google IME needs to restart computer
shutdown -r now
