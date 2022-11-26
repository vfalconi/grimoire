#!/bin/bash

# "           ______              "
# "       .d$$$******$$$$c.        "
# "    .d$P"            "$$c      "
# "   $$$$$.           .$$$*$.    "
# " .$$ 4$L*$$.     .$$Pd$  '$b   "
# " $F   *$. "$$e.e$$" 4$F   ^$b  "
# "d$     $$   z$$$e   $$     '$. "
# "$P     `$L$$P` ''$$d$'      $$ "
# "$$     e$$F       4$$b.     $$ "
# "$b  .$$" $$      .$$ "4$b.  $$ "
# "$$e$P"    $b     d$`    "$$c$F "
# "'$P$$$$$$$$$$$$$$$$$$$$$$$$$$  "
# " '$c.      4$.  $$       .$$   "
# "  ^$$.      $$ d$'      d$P    "
# "    "$$c.   `$b$F    .d$P"     "
# "      `4$$$c.$$$..e$$P"        "
# "          `^^^^^^^`"

echo -e "$(cat etc/startup-message)"

cd "$(dirname "${BASH_SOURCE}")";

function copyFiles() {
	if [ "$update" -eq 1 ]; then
		git pull origin canon
	fi
	cd bash;
	rsync --exclude ".DS_Store" \
		-avh --no-perms . ~;
	cd -;
}

force=0;
update=0;

while getopts fu opt; do
		case $opt in
				f) force=1;;
				u) update=1;;
				*) echo 'Error in parsing options' >&2
					 exit 1
		esac
done

if [ "$force" -eq 1 ]; then
	copyFiles;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copyFiles;
	fi;
fi;
unset copyFiles;

source ~/.bash_profile;
