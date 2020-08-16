#!/bin/bash

ZSH_THEME="agnoster"

plugins=(
  docker
  git 
  zsh-autosuggestions
  zsh-syntax-highlighting
)

for file in $HOME/.{exports,aliases,functions,extras}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $ZSH/oh-my-zsh.sh

# Load zsh shell integration
SHELL_INTEGRATION=${HOME}/.iterm2_shell_integration.zsh
if test -f "$SHELL_INTEGRATION"; then
  source $SHELL_INTEGRATION
fi

# disable user@hostname on local machine
prompt_context(){}
