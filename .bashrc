#!/bin/bash

# shellcheck source=/dev/null
[ -n "$PS1" ] && source "$HOME/.bash_profile";

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi
