# ----------------------
# Oh My Zsh Setup
# ----------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git macos zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
if [ -d "$ZSH" ]; then
    source $ZSH/oh-my-zsh.sh
else
    echo "⚠️ Oh My Zsh not found! Install it using: sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
fi

# ----------------------
# Git Branch in Prompt
# ----------------------
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# ----------------------
# Fun Startup Message
# ----------------------
if command -v fortune &> /dev/null && command -v cowsay &> /dev/null; then
    fortune | cowsay -f tux
fi

# ----------------------
# Custom Functions
# ----------------------
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# ----------------------
# Aliases
# ----------------------
alias 🍺="git checkout -b drunk"
alias a="code ."
alias c="code ."
alias l="ls -G"  # Add color (macOS)
alias ll="ls -alG"
alias o="open ."

# npm/yarn
alias ns="npm start"
alias start="npm start"
alias nr="npm run"
alias yr="yarn run"
alias run="npm run"
alias nis="npm i -S"

# Git Aliases
alias ga="git add"
alias gaa="git add ."
alias gaaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff"
alias gi="git init"
alias gl="git log --oneline --graph --decorate"
alias gp="git pull"
alias gpsh="git push"
alias gss="git status -s"
alias gs='echo ""; echo "*********************************************"; echo "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

# ----------------------
# Node.js (NVM)
# ----------------------
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
fi

# ----------------------
# Ruby (rbenv)
# ----------------------
if command -v rbenv > /dev/null; then
    eval "$(rbenv init -)"
fi
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# ----------------------
# Bun
# ----------------------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
if [ -s "$BUN_INSTALL/_bun" ]; then
    source "$BUN_INSTALL/_bun"
fi

# ----------------------
# Ensure Dotfiles Work Anywhere
# ----------------------
export DOTFILES="$HOME/Desktop/CODING/dotfiles"
if [ -f "$DOTFILES/zsh/aliases.zsh" ]; then
    source "$DOTFILES/zsh/aliases.zsh"
fi

