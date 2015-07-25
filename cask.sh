# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# hash -r

brew update
brew upgrade brew-cask
brew cleanup
brew cask update

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

# versioned
brew cask install 1password
brew cask install adobe-reader
brew cask install clipmenu
brew cask install diffmerge
brew cask install firefox
brew cask install garmin-express
brew cask install google-chrome
brew cask install grandperspective
brew cask install ifunbox
brew cask install iterm2
brew cask install karabiner
brew cask install kitematic
brew cask install omnifocus
brew cask install sizeup
brew cask install the-unarchiver
brew cask install textwrangler
brew cask install vagrant
brew cask install virtualbox

# unversioned
brew cask install dropbox --force
brew cask install skype --force
brew cask install teleport --force
brew cask install google-japanese-ime --force

brew cask cleanup

# 1Password form the Apple Store needs Chrome to be in /Applications
# Known issues #3
# https://guides.agilebits.com/1password-mac-kb/5/en/topic/browser-validation-failed

# brew cask install chrome-remote-desktop-host
# brew cask install cyberduck
# brew cask install libreoffice
# brew cask install macvim
# brew cask install mou
# brew cask install opera
# brew cask install skitch
# brew cask install vlc
# brew cask install java

# not available: line
# not available: shupapan
# not available: toyviewer
# not available: typist
# not available: xstreamripper
# not available: skitch 1.0.12

