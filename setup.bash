#!/bin/bash

# Run on new machine to begin setup
# mkdir ~/dev && cd ~/dev
# git clone https://github.com/hughgardiner/VsCodeConfig.git
# cd VsCodeConfig
# chmod +x setup.bash
# ./setup.bash

# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Application Install
brew install --cask figma
brew install --cask karabiner-elements
brew install --cask hammerspoon
brew install --cask spotify
brew install --cask warp
brew install --cask cursor
brew install --cask arc

# Starship Install
# curl -sS https://starship.rs/install.sh | sh

# Setup ZSH
cp base.zshrc ~/.zshrc

# Setup Hammerspoon
mkdir ~/.hammerspoon
cp init.lua ~/.hammerspoon/

# Setup Karabiner
mkdir ~/.config
mkdir ~/.config/karabiner
cp karabiner.json ~/.config/karabiner/
# cp starship.toml ~/.config/starship.toml
