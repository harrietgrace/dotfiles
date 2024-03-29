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

brew install --cask alfred
#brew install --cask basecamp
#brew install --cask dash
#brew install --cask dropbox
#brew install --cask flux
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask notion
#brew install --cask sketch
brew install --cask slack
brew install --cask spotify
brew install --cask sublime-text
#brew install --cask 1password

# pop up a login box for the app store
mas signin --dialog fezyll@hotmail.com

# LookUp
mas install 965041401
# Bear
mas install 1091189122
# Magnet
mas install 441258766
# Trello
mas install 1278508951
# Giphy Capture
#mas install 668208984
# Microsoft Remote Desktop
#mas install 1295203466
# Things
mas install 904280696

# Settings
source osxdefaults.sh

# symlinks
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
ln -s "/Users/halawren/dev/harriet/dotfiles/symlinks/.bash_profile" "/Users/halawren/.bash_profile"

# Sublime settings
cd "/Users/halawren/Library/Application Support/Sublime Text 3/"
mkdir -p "Installed Packages" && cd "Installed Packages"
curl "https://packagecontrol.io/Package%20Control.sublime-package"

mkdir -p "../Packages/User" && cd "Packages/User"

cp "~/dev/harriet/dotfiles/symlinks/Package\ Control.sublime-settings" .

# Get Dracula colours for iterm
cd "/dev/harriet/"
git clone https://github.com/dracula/iterm.git
cd ~

# Git config
git config --global core.excludesfile ~/dev/harriet/dotfiles/.gitignore_global
git config --global user.name "Harriet Lawrence"
git config --global pull.rebase false

echo "🎉 Finished installing! Some of these changes might need a restart 💁🏻"
echo "Don't forget to run: git config --global user.email with your git email address"
