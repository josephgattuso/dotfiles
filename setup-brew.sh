# Install brew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Upgrade brew
brew upgrade && brew upgrade --cask

# Install brwev packages
brew bundle

# Start brew services
brew services start postgresql

# Fix Quicklook packages
xattr -r ~/Library/QuickLook
xattr -d -r com.apple.quarantine ~/Library/QuickLook

# Remove outdated versions from the cellar.
brew cleanup

# Install npm packages
# npm list -g --depth=0
npm install -g yarn

# Install yarn packages
# yarn global list
yarn global add eslint prettier
