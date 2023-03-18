#!/bin/bash

# Get rid of that annoying message in MacOS about zsh being the default
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles
for file in ~/.{functions,aliases,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source "${HOME}/bin/lscolors.sh"
source "${HOME}/etc/exa_colors"

export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:"${HOME}/bin"
export MANPATH=$MANPATH:"${HOME}/man"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
