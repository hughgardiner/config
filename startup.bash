#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Dev Tools
brew install starship

# Applications
brew install --cask karabiner-elements
brew install --cask hammerspoon
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask iterm2

# Retrieve Dev Configurations
mkdir ~/dev && cd ~/dev
git clone git@github.com:hughgardiner/VsCodeConfig.git
cd VsCodeConfig

# Setup ZSH
cp base.zshrc ~/.zshrc

# Setup Hammerspoon
cp init.lua ~/.hammerspoon

# Setup Starship
mkdir ~/.config
cp starship.toml ~/.config

# Setup VSCode
cp settings.json ~/Library/Application\ Support/Code/User
cp keybindings.json ~/Library/Application\ Support/Code/User
