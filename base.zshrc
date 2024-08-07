# Config Shortcuts
alias ez='code ~/.zshrc'
alias sz='source ~/.zshrc'
alias hammer='code ~/.hammerspoon/init.lua'
alias config='cd ~/dev/VsCodeConfig && code .'
alias star='code ~/.config/starship.toml'

# Git Aliases
alias pushup='git push -u origin $(parse_git_branch_for_push)'
alias push='git push'   
alias master='git checkout master'
alias reset='git checkout -- .'
alias commit='git add . && git commit -m '
alias diff='git diff --color-moved'
alias latest='git pull && code .'
alias delete-branches='git fetch --prune && git branch -r | awk '\''{print $1}'\'' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '\''{print $1}'\'' | xargs git branch -D'
alias lb='git branch --sort="-committerdate" --format="%(color:green)%(committerdate:relative)%(color:reset) %(refname:short)" | head -n 10'

# Docker Shortcuts
alias dcd='docker-compose down'
alias dcb='docker-compose build --pull'
alias dcu='docker-compose up'
alias dc='docker-compose'
alias dke='docker exec -it `docker-compose ps -q web`'
alias dps='docker ps'
alias dsa='docker stop $(docker ps -q)'
alias dse='docker stop $(docker ps -q -f "name=firefox" -f "name=selenium" -f "name=elasticsearch" -f "name=postgres")'

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cd ~/dev