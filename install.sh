# Package Management
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

brew install node
npm install n
brew install git
brew install wget
brew install mas

alias upapps="mas upgrade"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew cask install alfred
brew cask install basecamp
#brew cask install dash
brew cask install dropbox
brew cask install firefox
brew cask install filezilla
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install sketch
brew cask install slack
brew cask install spotify
brew cask install sublime-text3
brew cask install vlc
brew cask install 1password

mas signin --dialog fezyll@hotmail.com

# LookUp
mas install 965041401
# Magnet
mas install 441258766

# Settings

source osxdefaults.sh