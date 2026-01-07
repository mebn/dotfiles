# colors
autoload -U colors && colors

# git
autoload -Uz vcs_info
precmd_functions+=( vcs_info )
setopt prompt_subst

# add star next to branch name if there is new changes
zstyle ':vcs_info:git+set-message:*' hooks git-changes
function +vi-git-changes() {
    [[ -n $(git status --porcelain) ]] && hook_com[misc]='*'
}

zstyle ':vcs_info:git:*' formats '%F{yellow}%b%F{red}%m '

PROMPT='%B%F{green}%n@%M %F{magenta}%2~ ${vcs_info_msg_0_}%f%b$ '
PROMPT='%B%F{green}%n %F{magenta}%2~ ${vcs_info_msg_0_}%f%b$ '

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
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS

# aliases
## paths
alias cdm="cd ~/marcus/"
alias cdmc="cd ~/marcus/code/"
alias cdmt="cd ~/marcus/temp/"
alias cdms="cd ~/marcus/screenshots/"
alias cdmo="cd ~/marcus/other/"
## notes
alias notes="v ~/marcus/notes/"
alias n=notes
## neovim
alias v="nvim"
## git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
## config files
alias z="v ~/.zshrc"
alias zs="source ~/.zshrc"
## other
alias c="clear"
alias ls="ls --color"
alias l="ls -la --color"
alias cwd="pwd | tr -d '\n' | xclip -selection clipboard"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias open="xdg-open"
fi
alias feh="feh --scale-down"
## remove .DS_Store files (MacOS)
alias rmds="find . -name \".DS_Store\" -delete"
alias rmdsa="sudo find / -name \".DS_Store\" -depth -exec rm {} \;"

# exports
## paths
export PATH=$PATH:$HOME/go/bin
## homebrew (MacOS)
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

# bun completions
[ -s "/Users/mebn/.bun/_bun" ] && source "/Users/mebn/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/mebn/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/mebn/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
eval "$(/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

# opencode
export PATH=/home/marnil9/.opencode/bin:$PATH
