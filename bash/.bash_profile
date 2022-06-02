# Load the shell dotfiles
for file in ~/.{bash_prompt,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
