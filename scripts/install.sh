#!/bin/bash

echo "Installing dotfiles..."

# Ensure Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install essential tools
brew install neovim tmux zsh git

# Ensure necessary directories exist
mkdir -p $HOME/.config
mkdir -p $HOME/.config/nvim/lua

# Symlink dotfiles
ln -sf $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim

# Install Lazy.nvim if not already installed
if [ ! -d "$HOME/.local/share/nvim/lazy/lazy.nvim" ]; then
    echo "Installing Lazy.nvim..."
    git clone --depth 1 https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
fi

# Verify that Neovim is properly configured before syncing plugins
if [ -f "$HOME/.config/nvim/init.lua" ]; then
    echo "Syncing Neovim plugins..."
    nvim --headless "+Lazy! sync" +qall
else
    echo "Warning: Neovim config (init.lua) not found! Please check your setup."
fi

echo "✅ Dotfiles setup complete! Restart your terminal."

