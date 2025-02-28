#!/bin/bash

# Check if Homebrew is already installed
if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is already installed"
else
    echo "Installing Homebrew..."
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo "Homebrew installation completed"
fi

brew install --cask rectangle appcleaner netnewswire
brew install --cask ghostty visual-studio-code zed sequel-ace 
# fancy applications
brew install --cask arc raycast cherry-studio chat-gpt 
brew install --cask logseq ollama
brew install --cask jordanbaird-ice itsycal

brew install cat wget curl git zsh cmake
brew install cloc tree graphviz node
brew install hugo # for blog
brew install neovim # for vim

# Install Oh My Zsh(will also set zsh as default shell)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
