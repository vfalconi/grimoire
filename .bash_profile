#!/bin/bash

# Get rid of that annoying message in MacOS about zsh being the default
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles
for file in ~/.{functions,aliases,bash_prompt}; do
	# shellcheck source=/dev/null
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# shellcheck source=/dev/null
source "${HOME}/bin/lscolors.sh"
# shellcheck source=/dev/null
source "${HOME}/etc/exa_colors"

# shellcheck source=/dev/null
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:"${HOME}/bin"
export MANPATH=$MANPATH:"${HOME}/man"
export BAT_CONFIG_PATH="${HOME}/etc/bat.conf"

# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# shellcheck source=/dev/null
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
