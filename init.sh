#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
hash -r

# brew tap homebrew/dupes
# brew tap motemen/ghq
# brew tap caskroom/fonts
# brew tap homebrew/binary
# brew tap homebrew/science

brew update
brew install ansible
brew install caskroom/cask/brew-cask
brew install git
brew install heroku-toolbelt
brew install nkf
brew install R

# sudoになる
sudo -v

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

# install applications
curl https://raw.githubusercontent.com/tosh13/kitting/master/cask.sh | bash

# brew install unzip
# brew install caskroom/cask/brew-cask
# brew install peco
# brew install ghq
# brew install packer

# brew install ag
# brew install pt
# brew install lv
# brew install colordiff
# brew install coreutils
# brew install htop-osx
# brew install pstree
# brew install ssh-copy-id
# brew install tmux
# brew install tree
# brew install reattach-to-user-namespace
# brew install wget
# brew install curl
# brew install xz
# brew install z
# brew install zsh
# brew install fish
# brew install zsh-completions
# brew install renameutils
# brew install rlwrap
# brew install mobile-shell
# brew install jq
# brew install jsonpp
# brew install direnv
# brew install highlight
# 
# brew install openssl
# brew install readline
# 
# brew install mercurial
# brew install tig
# brew install hub
# brew install mongodb
# brew install node
# brew install phantomjs
# brew install postgresql
# brew install mysql
# brew install qt
# brew install redis
# brew install sqlite
# brew install vim
# brew install emacs --cocoa --japanese --srgb
# 
# brew install dnsmasq
# 
# brew install rbenv
# brew install rbenv-default-gems
# brew install rbenv-gem-rehash
# brew install rbenv-gemset
# brew install ruby-build
# 
# brew install docker
# brew install boot2docker
