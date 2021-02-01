# System Preferences > General > Appearance
defaults write -globalDomain AppleInterfaceStyleSwitchesAutomatically -bool true

# System Preferences > General > Click in the scrollbar to: Jump to the spot that's clicked
defaults write -globalDomain AppleScrollerPagingBehavior -bool true

# System Preferences > General > Sidebar icon size: Medium
defaults write -globalDomain NSTableViewDefaultSizeMode -int 2

# # # # # # # # # #

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Animate opening applications
defaults write com.apple.dock launchanim -bool true

# System Preferences > Dock >  Set dock orientation to the right
defaults write com.apple.dock orientation -string "right"

# System Preferences > Dock > Hide recent items
defaults write com.apple.dock show-recents -bool false

# # # # # # # # # #

# System Preferences > Keyboard >
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# # # # # # # # # #

# Finder > Preferences > Show all filename extensions
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show wraning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > View > As List
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# # # # # # # # # #

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" >/dev/null 2>&1
done

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."
