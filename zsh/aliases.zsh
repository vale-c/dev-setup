# Custom Functions
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# Git
alias gs="git status"
alias gss="git status -s"
alias gl="git log --oneline --graph --decorate"
alias gp="git pull"
alias gpsh="git push"
alias gcm="git commit -m"
alias gd="git diff"

# Open Vim
alias vim="nvim"

