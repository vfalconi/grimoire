# grimoire

These are my dot files. They suit my needs. They are a part of my overall homelab setup, but not specific to it.

## Installation

This installation is destructive. No backups are made. Anything that might be overwritten, will be, and will not be restorable. That said...

Clone the repository, run the installer:

```bash
git clone https://github.com/vfalconi/grimoire
cd grimoire
make
```

To uninstall, run the uninstaller and follow any prompts:

```bash
cd grimoire
make uninstall
```

## Philosophy

Some general ideas behind this setup:

- These are my tools, the things I should be able to drop on any machine and be ready to go.
- These files should only modify the user directory, not the general environment (outside of installing via `apt`).
- Install from source whenever possible, but use `apt` otherwise.
- If installing from source, all downloading, unzipping, etc, should be added to `bin/install_tools`, and all installation files should be somewhere in `/tmp/grimoire` so they'll be included in `bin/clean`.
- Commands in scripts should be verbose if possible, especially if it is changing or moving files, double especially when installing packages or these dotfiles.
- `bin/` scripts can use `sudo` but should not require `sudo` to run.
- If a `bin/` script uses `sudo`, it must run in verbose mode.

Some of the files themselves have specific principles or uses:

- `bin/`: Short scripts either to automate something or basically make a rote task easier.
- `etc/`: Source files, special config files, junk drawer.
- `.aliases`: Single line commands I use enough to save. The difference between an alias and a `bin/` script is simplicity--an alias should have a single command in it, and if there is a pipe or STDOUT is written somewhere or two commands are run together with `&&`, it goes in a `bin/` script.
- `.grim-apt-list`: List of packages to install via `apt`. This also serves as a guide for `bin/uninstall`.
- `.grimignore`: Files that should be in the repository but not installed in the home directory.

## Grim--come on.

A grimoire is a collection of spells. Between my love for horror and fantasy, what better metaphor for whatever it is we're doing here.

There's no need for everything to be so blah. Whimsy and weird, or don't bother.

I learned while working on this that there is a sorcery-themed fork of Linux with a package manager that uses "grimoire" files. Clearly I'm on to something, thematically.

## Inspiration

- https://mina.codes/projects/formation/
- https://github.com/mathiasbynens/dotfiles
- https://github.com/krisnova/home
