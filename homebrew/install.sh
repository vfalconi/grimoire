#!/usr/bin/env bash

# from https://brew.sh/
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.bash_profile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
