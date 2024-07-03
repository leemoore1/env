#!/usr/bin/env bash

echo "Prepare non-native env..."

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Oh My Zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Update Oh My Zsh plugin list
sed -i 's/plugins=(git)/plugins=(git helm minikube kubectl zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

source ~/.zshrc
