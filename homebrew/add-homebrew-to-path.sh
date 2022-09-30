#!/usr/bin/env bash

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.bash_profile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
