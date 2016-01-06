# Package Management
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

brew install node
brew install git
brew install wget

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew cask install alfred
brew cask install dash
brew cask install dropbox
brew cask install firefox
brew cask install filezilla
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install slack
brew cask install spotify
brew cask install sublime-text3
brew cask install u-torrent
brew cask install virtualbox
brew cask install vlc

# Settings

source osxdefaults.sh