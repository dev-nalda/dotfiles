# ref: https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh

# # # Dock # # #

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 12

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 40

# System Preferences > Dock > Position on screen
defaults write com.apple.Dock orientation -string "left"

# System Preferences > Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Restart the Dock
killall Dock
