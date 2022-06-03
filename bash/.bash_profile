# Get rid of that annoying message in MacOS about zsh being the default
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles
for file in ~/.{bash_prompt,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
