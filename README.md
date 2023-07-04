# dotfiles

## How to use
Place this repo in the home directory:
```
cd ~ && git clone https://github.com/mebn/dotfiles
```

Stow:
```
# Stow all dotfiles
stow */

# Stow specific dotfile
stow <folder_name>
```

Unstow:
```
# Unstow all dotfiles
stow -D */

# Unstow specific dotfile
stow -D <folder_name>
```

## Folder structure example
1. In repo: `my_neovim_config/.config/nvim/init.lua`
1. run: `stow my_neovim_config`
1. on machine: `~/.config/nvim/init.lua`
