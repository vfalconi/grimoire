#!/bin/bash

source bin/common

# Get rid of that annoying message in MacOS about zsh being the default
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles
for file in ~/.{functions,aliases,bash_prompt}; do
	# shellcheck source=/dev/null
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

# shellcheck source=/dev/null
source "$BIN_PATH/lscolors.sh"
# shellcheck source=/dev/null
source "$ETC_PATH/exa_colors"

# shellcheck source=/dev/null
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:"$BIN_PATH"
export MANPATH=$MANPATH:"$MAN_PATH"
export BAT_CONFIG_PATH="$ETC_PATH/bat.conf"

# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# shellcheck source=/dev/null
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
