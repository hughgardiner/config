#!/bin/bash

# Run on new machine to begin setup
# mkdir ~/dev && cd ~/dev
# git clone https://github.com/hughgardiner/VsCodeConfig.git
# cd VsCodeConfig
# chmod +x setup.bash
# ./setup.bash

# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Application Install
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask figma
brew install --cask docker
brew install --cask karabiner-elements
brew install --cask hammerspoon
brew install --cask spotify
brew install --cask dbeaver-community
brew install slack
curl -fsSL https://starship.rs/install.sh | bash
brew install node

# Setup ZSH
cp base.zshrc ~/.zshrc

# Setup Hammerspoon
cp init.lua ~/.hammerspoon/

# Setup Starship
mkdir ~/.config
cp starship.toml ~/.config/

# Setup Karabiner
cp karabiner.json ~/.config/karabiner/

# Setup iTerm
cp com.googlecode.iterm2.plist ~/Library/Preferences/

# Setup VSCode
cp settings.json ~/Library/Application\ Support/Code/User/
cp keybindings.json ~/Library/Application\ Support/Code/User/

code --install-extension aaronthomas.vscode-snazzy-operator
code --install-extension apollographql.vscode-apollo
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension artdiniz.quitcontrol-vscode
code --install-extension azemoh.one-monokai
code --install-extension bungcip.better-toml
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension cssho.vscode-svgviewer
code --install-extension dawhite.mustache
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension forbeslindesay.vscode-sql-template-literal
code --install-extension hoovercj.vscode-power-mode
code --install-extension johnpapa.vscode-peacock
code --install-extension liviuschera.noctis
code --install-extension mechatroner.rainbow-csv
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension msjsdiag.vscode-react-native
code --install-extension naumovs.theme-oceanicnext
code --install-extension PKief.material-icon-theme
code --install-extension rebornix.ruby
code --install-extension sandcastle.vscode-open
code --install-extension sdras.night-owl
code --install-extension studiobio.bio-dark-theme
code --install-extension tht13.html-preview-vscode
code --install-extension WallabyJs.quokka-vscode
code --install-extension wayou.vscode-todo-highlight
code --install-extension wingrunr21.vscode-ruby
code --install-extension wmaurer.change-case
code --install-extension yzane.markdown-pdf