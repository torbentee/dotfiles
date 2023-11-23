#!/bin/bash

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set zsh as default shell
chsh -s $(which zsh)

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install zsh-nvm plugin
git clone https://github.com/lukechilds/zsh-nvm $ZSH_CUSTOM/plugins/zsh-nvm

brew tap caskroom/cask
brew tap caskroom/versions

# 1Password
brew cask install 1password

# Cyberduck
brew cask install cyberduck

# Docker
brew cask install docker

# Chrome
brew cask install google-chrome

brew cask install brave-browser

# Firefox
brew cask install firefox

# iTerm2
brew cask install iTerm2

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Postman
brew cask install postman 

# Rectangle
brew cask install rectangle

# Set up keyboard shortcuts
#cp -r ./apps/spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null

# Slack
brew cask install slack

# Spotify
brew cask install spotify

# Visual Studio Code
brew cask install visual-studio-code

# VLC
brew cask install vlc

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# OpenLens
brew cask install openlens

brew cask install nextcloud

brew cask install telegram

brew cask install whatsapp

brew cask install figma

brew cask install alfred

brew cask install bitwarden

brew cask install zotero