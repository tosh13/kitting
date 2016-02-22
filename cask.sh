curl https://raw.githubusercontent.com/tosh13/kitting/master/versioned.sh | bash

# unversioned
brew cask install dropbox --force
brew cask install google-chrome --force
brew cask install google-japanese-ime --force
brew cask install ifunbox --force
brew cask install shupapan --force
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
# brew cask install sizeup --force
# brew cask install skitch
# brew cask install vlc

# not available: line
# not available: toyviewer
# not available: typist
# not available: xstreamripper
# not available: skitch 1.0.12
