#!/bin/bash

ZSH_THEME="agnoster"

plugins=(
  docker
  git 
  zsh-autosuggestions
  zsh-syntax-highlighting
  npm
)

for file in $HOME/.{exports,aliases,functions,extras}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Load zsh shell integration
SHELL_INTEGRATION=${HOME}/.iterm2_shell_integration.zsh
if test -f "$SHELL_INTEGRATION"; then
  source $SHELL_INTEGRATION
fi

# disable user@hostname on local machine
prompt_context(){}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use default

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
