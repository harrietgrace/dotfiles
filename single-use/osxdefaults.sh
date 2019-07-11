# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Save screenshots to the desktop
#[ ! -d ~/Desktop/Screenshots  ] && mkdir ~/Desktop/Screenshots
#defaults write com.apple.screencapture location ~/Desktop/Screenshots

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string PNG

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Set to Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Set accent colour to pink
defaults write NSGlobalDomain AppleAccentColor -int 6

# Set highlight color to pink
defaults write NSGlobalDomain AppleHighlightColor -string "1.000000 0.749020 0.823529"

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Hot corner: bottom left screen corner → Put display to sleep
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Allow Magnet accessibility access (use tccutil?)