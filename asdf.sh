#!/usr/bin/env bash

# asdf
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
. "$HOME/.asdf/asdf.sh"

## asdf plugins

### HashiCorp
asdf plugin-add consul https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add packer https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add vault https://github.com/asdf-community/asdf-hashicorp.git

asdf install consul latest && asdf global packer latest
asdf install packer latest && asdf global packer latest
asdf install terraform latest && asdf global terraform latest
asdf install vault latest && asdf global vault latest

asdf plugin-add terragrunt https://github.com/ohmer/asdf-terragrunt
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add spring-boot https://github.com/joschi/asdf-spring-boot

### Miscellaneous
asdf plugin-add gradle https://github.com/rfrancis/asdf-gradle.git
asdf plugin-add maven https://github.com/halcyon/asdf-maven
asdf plugin-add pnpm https://github.com/jonathanmorley/asdf-pnpm
asdf plugin-add tflint https://github.com/skyzyx/asdf-tflint

asdf install pnpm latest && asdf global pnpm latest
asdf install tflint latest && asdf global tflint latest

### Kubernetes & Tools
asdf plugin-add k9s https://github.com/looztra/asdf-k9s
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf plugin-add kubie https://github.com/johnhamelink/asdf-kubie
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git

asdf install k9s latest && asdf global k9s latest
asdf install kubectl latest && asdf global kubectl latest
asdf install kubie latest && asdf global kubie latest
asdf install helm latest && asdf global helm latest
