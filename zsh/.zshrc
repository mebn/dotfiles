# colors
autoload -U colors && colors

# git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' formats '%F{red}(%F{green}%b%F{yellow}%m%F{red}) '
PROMPT='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%2~%{$fg[red]%}] ${vcs_info_msg_0_}%{$reset_color%}$%b '

# add star next to branch name if there is new changes
zstyle ':vcs_info:git+set-message:*' hooks git-changes
function +vi-git-changes() {
  if [[ -n $(git status --porcelain) ]]; then
    hook_com[misc]='*'
  fi
}

# auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# aliases
## neovim
alias v="nvim"
## git
alias gs="git status"
## paths
alias cdd="cd ~/Desktop/"
alias cdm="cd ~/marcus/"
alias cdmc="cd ~/marcus/code/"
alias cdmt="cd ~/marcus/temp/"
alias cdms="cd ~/marcus/screenshots/"
alias cdmo="cd ~/marcus/other/"
alias cdmd="cd ~/marcus/KTH/datateknik/"
alias cdmcs="cd ~/marcus/KTH/computer_science/"
## config files
alias z="v ~/.zshrc"
alias zs="source ~/.zshrc"
alias i3c="v ~/.config/i3/config"
## other
alias c="clear"
alias ls="ls --color"
alias l="ls -la --color"
alias cwd="pwd | tr -d '\n' | xclip -selection clipboard"
## remove .DS_Store files (MacOS)
alias rmds="find . -name \".DS_Store\" -delete"
alias rmdsa="sudo find / -name \".DS_Store\" -depth -exec rm {} \;"

# exports
## paths
export PATH=$PATH:$HOME/go/bin
## default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
## homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# plugins
load_plugin() {
    local repo_url="https://github.com/$1"
    local path="$HOME/.zsh/${repo_url##*/}"
    local file="$2"

    if ! [ -f "$path/$file" ]; then
        /usr/bin/git clone "$repo_url" "$path"
    fi

    source "$path/$file"
}

load_plugin "zsh-users/zsh-syntax-highlighting" "zsh-syntax-highlighting.zsh"
load_plugin "zsh-users/zsh-autosuggestions" "zsh-autosuggestions.zsh"
