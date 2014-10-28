#!/bin/bash

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


# ------- Restart Stuff -------

killall Finder; killall Safari
