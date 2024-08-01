# colors
autoload -U colors && colors

# git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '(%b) '
PROMPT='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} ${vcs_info_msg_0_}$%b '

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
alias cdmo="cd ~/marcus/other/"
alias cdmd="cd ~/marcus/KTH/datateknik/"
alias cdmcs="cd ~/marcus/KTH/computer_science/"
## config files
alias z="v ~/.zshrc"
alias zs="source ~/.zshrc"
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
## editor (make sure nvim is installed, I guess)
export VISUAL=nvim
export EDITOR="$VISUAL"

# plugins
install_and_load_plugin() {
    local repo_url="https://github.com/$1"
    local path="$HOME/.zsh/$2"
    local file="$3"

    if ! [ -f "$path/$file" ]; then
        /usr/bin/git clone "$repo_url" "$path"
    fi

    source "$path/$file"
}

install_and_load_plugin "zsh-users/zsh-syntax-highlighting" "zsh-syntax-highlighting" "zsh-syntax-highlighting.zsh"

install_and_load_plugin "zsh-users/zsh-autosuggestions" "zsh-autosuggestions" "zsh-autosuggestions.zsh"
