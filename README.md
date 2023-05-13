# dotfiles
My dotfiles for MacOS and Linux

## How to
### Repo location
Place this repo in the home directory:
```
cd ~ && git clone https://github.com/mebn/dotfiles.git
```

### Stowing and unstowing
Stow all dotfiles:
```
stow */
```

Stow a specific dotfile:
```
stow <folder_name>
```

Unstow all dotfiles:
```
stow -D */
```

Unstow a specific dotfile:
```
stow -D <folder_name>
```

## Folder structure
The name of folders doesn't matter, it's just for humans.
Inside a folder we pretend we are in the home directory (eg `/Users/mebn/`).

A dotfile could look like this in the repo: `my_neovim_config/.config/nvim/init.lua`.
On the machine, it would look like this: `~/.config/nvim/init.lua`, after using `stow my_neovim_config`.
