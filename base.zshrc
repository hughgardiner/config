autoload -Uz compinit
compinit 

# Example Shell Functions for easier navigation
cda() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        cd "$gitroot/apps/$1"
    fi
}

_cda_autocomplete() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        _arguments "1:path:_path_files -W $gitroot/apps -/"
    fi
}

compdef _cda_autocomplete cda

cdp() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        cd "$gitroot/packages/$1"
    fi
}

_cdp_autocomplete() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        _arguments "1:path:_path_files -W $gitroot/packages -/"
    fi
}

compdef _cdp_autocomplete cdp

cds() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        cd "$gitroot/services/$1"
    fi
}

_cds_autocomplete() {
    local gitroot=$(git rev-parse --show-toplevel)
    if [[ -n "$gitroot" ]]; then
        _arguments "1:path:_path_files -W $gitroot/services -/"
    fi
}

compdef _cds_autocomplete cds

# Config Shortcuts
alias ez='cursor ~/.zshrc'
alias sz='source ~/.zshrc'
alias hammer='cursor ~/.hammerspoon/init.lua'
alias star='cursor ~/.config/starship.toml'
alias pip='curl ipinfo.io/ip'

# Git Aliases
alias pushup='git push -u origin $(parse_git_branch_for_push)'
alias push='git push'   
alias reset='git checkout -- .'
alias commit='git add . && git commit -m '
alias diff='git diff --color-moved'
alias latest='git pull && code .'
alias delete-branches='git fetch --prune && git branch -r | awk '\''{print $1}'\'' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '\''{print $1}'\'' | xargs git branch -D'
alias lb='git branch --sort="-committerdate" --format="%(color:green)%(committerdate:relative)%(color:reset) %(refname:short)" | head -n 10'

# Docker Shortcuts
alias dcd='docker compose down'
alias dcb='docker compose build --pull'
alias dcu='docker compose up'
alias dc='docker compose'
alias dke='docker exec -it `docker compose ps -q web`'
alias dps='docker ps'
alias dsa='docker stop $(docker ps -q)'

# Infra
alias tf='terraform'
alias kc='kubectl'

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# cd ~/dev