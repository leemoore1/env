#!/usr/bin/env bash

echo "Prepare env..."

# Install ZSH
sudo apt-get update
sudo apt-get install -y zsh

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Oh My Zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Update Oh My Zsh plugin list
sed -i 's/plugins=(git)/plugins=(plugins=(ansible asdf aws docker dotnet git golang helm kubectl node npm minikube python pip terraform yarn zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

## Oh My Zsh theme
$ git clone https://github.com/moarram/headline.git $ZSH_CUSTOM/themes/headline
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="headline"/g' ~/.zshrc

# Set default shell to ZSH
sudo chsh -s /usr/bin/zsh $USER
