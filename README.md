# dotfiles
Some of my dotfiles for MacOS and Linux.

## How to
If on mac, delete all .DS_Store files:
```
find . -name ".DS_Store" -delete
```

Install `stow`, then run:
```
stow */
```

or if you only want a specific config:
```
stow <folder name>
```

Unstow (delete symlinks) with:
```
stow -D */
```

## Layout
Name of folder doesn't matter, it's just for humans. Inside a folder we pretend we are in the home directory (eg `/Users/mebn/`). If we want to place config files inside `.config/`, create a `.config/` folder inside current folder.
