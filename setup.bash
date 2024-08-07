#!/bin/bash

# Run on new machine to begin setup
# mkdir ~/dev && cd ~/dev
# git clone https://github.com/hughgardiner/VsCodeConfig.git
# cd VsCodeConfig
# chmod +x setup.bash
# ./setup.bash

# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/hughgardiner/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Application Install
brew install --cask visual-studio-code
brew install --cask figma
brew install --cask karabiner-elements
brew install --cask hammerspoon
brew install --cask spotify

# Starship Install
curl -sS https://starship.rs/install.sh | sh

# Setup ZSH
cp base.zshrc ~/.zshrc

# Setup Hammerspoon
mkdir ~/.hammerspoon
cp init.lua ~/.hammerspoon/

# Setup Karabiner
mkdir ~/.config
mkdir ~/.config/karabiner
cp karabiner.json ~/.config/karabiner/
cp starship.toml ~/.config/starship.toml

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# VSCode Vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

