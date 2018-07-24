# Package Management
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

brew install node
npm install n
brew install git
brew install mas

brew install rbenv
brew install ruby-build

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
brew cask install sublime-text
brew cask install vlc
brew cask install 1password

# pop up a login box for the app store
mas signin --dialog fezyll@hotmail.com

# LookUp
mas install 965041401
# Newton Mail
mas install 1059655371

# Settings
source osxdefaults.sh

# symlinks
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
ln -s "~/dev/harriet/dotfiles/symlinks/.bash_profile" ~

# Sublime settings
cd "/Users/harriet/Library/Application Support/Sublime Text 3/"
mkdir -p "Installed Packages" && cd "Installed Packages"
curl "https://packagecontrol.io/Package%20Control.sublime-package"

mkdir -p "../Packages/User" && cd "Packages/User"

cp "~/dev/harriet/dotfiles/symlinks/Package Control.sublime-settings" .

# Get Dracula colours for iterm
cd "/dev/harriet/"
git clone https://github.com/dracula/iterm.git

cd ~
echo "🎉 Finished installing! Some of these changes might need a restart 💁🏻"
