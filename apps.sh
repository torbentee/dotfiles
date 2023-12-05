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

# 1Password
brew install --cask 1password

# Cyberduck
brew install --cask cyberduck

# Docker
brew install --cask docker

# Chrome
brew install --cask google-chrome

brew install --cask brave-browser

# Firefox
brew install --cask firefox

# iTerm2
brew install --cask iTerm2

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Postman
brew install --cask postman 

# Rectangle
brew install --cask rectangle

# Set up keyboard shortcuts
#cp -r ./apps/spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null

# Slack
brew install --cask slack

# Spotify
brew install --cask spotify

# Visual Studio Code
brew install --cask visual-studio-code

# VLC
brew install --cask vlc

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# OpenLens
brew install --cask openlens

brew install --cask nextcloud

brew install --cask telegram

brew install --cask whatsapp

brew install --cask figma

brew install --cask alfred

brew install --cask bitwarden

brew install --cask zotero