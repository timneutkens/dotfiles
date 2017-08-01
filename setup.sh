/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap caskroom/drivers
brew tap caskroom/fonts
brew cask install sonos
brew cask install vlc
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install 1password
brew cask install hyper
brew cask install slack
brew cask install sip
brew cask install spotify
brew cask install webtorrent
brew cask install kap
brew cask install alfred
brew cask install sequel-pro
brew cask install tower
brew cask install kaleidoscope
brew cask install microsoft-office
brew cask install skype
brew cask install postman
brew cask install flux
brew cask install bettertouchtool
brew cask install touchswitcher
brew install hub
# Install Fira Code font
brew cask install font-fira-code
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
code --install-extension zuangtongfa.material-theme
code --install-extension eamodio.gitlens
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension robertohuertasm.vscode-icons
code --install-extension felixfbecker.php-intellisense

# Dotfiles config
# Based on https://github.com/herrbischoff/awesome-osx-command-line

# Disable start itunes
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# Enable web inspector and develop menu in Safari (for when I use safari those 3 times a year
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Turn textedit into a plain text editor
defaults write com.apple.TextEdit RichText -int 0

# Prevent Time Machine from Prompting to Use New Hard Drives as Backup Volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Install Command Line Tools without Xcode
xcode-select --install

# Remove All Unavailable Simulators
xcrun simctl delete unavailable

# Use your touchpad or mouse scroll wheel to interact with Dock items. Allows you to use an upward scrolling gesture to open stacks. Using the same gesture on applications that are running invokes Exposé/Mission Control.
defaults write com.apple.dock scroll-to-open -bool true && killall Dock

# Show All File Extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles true

# Show full path in Finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show pathbar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show statusbar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Set Current Folder as Default Search Scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Expand save window by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true && \
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable Creation of Metadata Files on Network Volumes and USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable infrared receiver
defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -int 0

# Automatic Restart on System Freeze
sudo systemsetup -setrestartfreeze on

# Show battery percentage by default
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Ask password after screensaver
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay 0
defaults -currentHost write com.apple.screensaver idleTime 300
