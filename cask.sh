brew update
brew upgrade brew-cask
brew cleanup
brew cask update

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

# Ask for the administrator password upfront
# sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# versioned
brew cask install karabiner
brew cask install 1password
brew cask install adobe-reader
brew cask install atom
brew cask install clipmenu
brew cask install diffmerge
brew cask install firefox
brew cask install grandperspective
brew cask install iterm2
brew cask install kindle
brew cask install kitematic
brew cask install omnifocus
brew cask install the-unarchiver
brew cask install textwrangler
brew cask install vagrant
brew cask install virtualbox

# unversioned
brew cask install dropbox --force
brew cask install google-chrome --force
brew cask install google-japanese-ime --force
brew cask install ifunbox --force
brew cask install shupapan --force
brew cask install sizeup --force
brew cask install skype --force
brew cask install teleport --force

brew cask cleanup

# Google IME needs to restart computer

# 1Password form the Apple Store needs Chrome to be in /Applications
# Known issues #3
# https://guides.agilebits.com/1password-mac-kb/5/en/topic/browser-validation-failed
rm "/Applications/Google Chrome.app"
mv "/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app" /Applications

# brew cask install garmin-express --force
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
# not available: toyviewer
# not available: typist
# not available: xstreamripper
# not available: skitch 1.0.12

