#!/bin/sh

# Disable sudo timeout
# sudo sh -c 'echo "\nDefaults timestamp_timeout=-1">>/etc/sudoers'

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

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
hash -r

brew update

brew tap homebrew/science
brew tap caskroom/cask

brew install git
brew install nkf
brew install R

brew cask install clipy
brew cask install cmd-eikana
brew cask install coteditor
brew cask install iterm2
brew cask install spectacle
brew cask install the-unarchiver

brew cask cleanup

# curl https://raw.githubusercontent.com/tosh13/kitting/master/cask.sh | bash

# re-enable sudo timeout
# sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers

# Google IME needs to restart computer
# shutdown -r now

# Google IME needs to restart computer

# brew tap homebrew/dupes
# brew tap motemen/ghq
# brew tap caskroom/fonts
# brew tap homebrew/binary

# brew install ansible
# brew install caskroom/cask/brew-cask
# brew install heroku-toolbelt

# echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
# source ~/.bash_profile

# brew cask install diffmerge
# brew cask install dropbox
# brew cask install firefox
# brew cask install github-desktop
# brew cask install google-chrome
# brew cask install google-japanese-ime
# brew cask install grandperspective
# brew cask install ifunbox
# brew cask install libreoffice
# brew cask install libreoffice-language-pack
# brew cask install mactex
# brew cask install omnifocus
# brew cask install owncloud
# brew cask install rstudio
# brew cask install shupapan
# brew cask install skype
# brew cask install slack
# brew cask install teleport
# brew cask install textwrangler
# brew cask install vagrant
# brew cask install virtualbox
# brew cask install virtualbox-extension-pack

# brew cask install 1password
# brew cask install atom
# brew cask install adobe-reader
# brew cask install amazon-music
# brew cask install java
# brew cask install karabiner
# brew cask install kindle
# brew cask install kitematic

# brew cask install garmin-express
# brew cask install chrome-remote-desktop-host
# brew cask install cyberduck
# brew cask install libreoffice
# brew cask install macvim
# brew cask install mou
# brew cask install opera
# brew cask install sizeup
# brew cask install skitch
# brew cask install vlc

# not available: line
# not available: toyviewer
# not available: typist
# not available: xstreamripper
# not available: skitch 1.0.12
