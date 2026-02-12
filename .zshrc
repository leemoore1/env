############
# Homebrew #
############

eval "$(/opt/homebrew/bin/brew shellenv)"

###############
# Environment #
###############

# Cached completion scripts
fpath=($HOME/.zsh/completions $fpath)
autoload -Uz compinit
compinit -C

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt AUTO_CD
setopt GLOB_DOTS

unsetopt BEEP

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' group-name ''

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
bindkey '^[^?' backward-kill-word

##############
# Oh My Posh #
##############

# Manual binary due to incompatible Homebrew Go bottle version
export PATH="$PATH:$HOME/.local/bin"
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/fusion.omp.json)"

##############
# Extensions #
##############

source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

###########
# Aliases #
###########

alias du="duf -only local"
alias k="kubectl"
alias ll="ls -alh"
alias omp="oh-my-posh"
alias top="bashtop"

#############
# Functions #
#############

function validate_yaml() {
	yamllint -d "{extends: default, rules: {line-length: {max: 3000}, trailing-spaces: enable}}" ${1}
}

#########
# Other #
#########

export PKG_CONFIG_PATH="/opt/homebrew/bin/pkg-config:$(brew --prefix icu4c)/lib/pkgconfig:$(brew --prefix curl)/lib/pkgconfig:$(brew --prefix zlib)/lib/pkgconfig"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
export PATH=$PATH:$HOME/go/bin

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C $HOME/.asdf/installs/terraform/1.8.5/bin/terraform terraform
