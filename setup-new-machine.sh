#!/bin/bash

# ------- various app install --------
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git

# ------- git --------
git config --global user.name "Patrick B. Gibson"
git config --global user.email patrick@fadeover.org
git config --global status.submoduleSummary true
git config --global diff.submodule log
git config --global push.default simple
git config --global alias.up '!git pull --rebase --prune && git submodule update --init --recursive'
git config --global alias.subup 'submodule update --init --recursive'

# ------- Bash profile --------
mv ~/.bash_profile ~/.bash_profile.original
mv ./bash_profile ~/.bash_profile

# ------- OS Level ------------

# Disable local time machine backups
sudo tmutil disablelocal

# ------- Finder / UI ---------

# Change the dock effect to not be ugly
defaults write com.apple.Dock mineffect scale

# Show the friggen library folder
chflags nohidden ~/Library/

# Automatically search the current folder instead of the system
defaults write com.apple.finder FXDefaultSearchScope -string “SCcf”

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Sort desktop icons by Date Added
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy dateAdded" ~/Library/Preferences/com.apple.finder.plist

# Add iOS Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app" "/Applications/iOS Simulator.app"

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true


# ------- Safari -------

defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari ShowStatusBar -bool true


# ------- Tweetbot -------
defaults write com.tapbots.TweetbotMac OpenURLsDirectly YES

# ------- Restart Stuff -------
killall Finder Dock Safari
