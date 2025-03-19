# 🚀 vale-c/dotfiles: The Ultimate Beginner-Friendly Dotfiles

[![GitHub stars](https://img.shields.io/github/stars/vale-c/dotfiles?style=social)](https://github.com/vale-c/dotfiles)

🔥 **A simple yet powerful dotfiles setup** designed for:
- ✅ **Neovim Beginners** – VSCode-like experience
- ✅ **Tmux Users** – Smooth workflow with `Ctrl+a`
- ✅ **Zsh Lovers** – Smart aliases & functions

**⚡ Fast | 🎨 Catppuccin Theme | 🤖 AI-Ready**

---

## 📦 **What's Inside?**
| Component | Features |
|-----------|----------|
| **Neovim** | 🚀 Lazy.nvim, `Space + e` for file explorer, `Space + ff` for fuzzy finder |
| **Tmux** | 📟 `Ctrl+a` as prefix, easy window/pane management |
| **Zsh** | 🐚 Smart aliases, Oh My Zsh, syntax highlighting |

---

## **🚀 Installation (One Command)**
```sh
git clone https://github.com/vale-c/dotfiles.git ~/.dotfiles && bash ~/.dotfiles/scripts/install.sh
```

---

## 🎯 **Keybindings Cheat Sheet**
| Action | Shortcut |
|--------|----------|
| **Find files** | `Space + ff` (Telescope) |
| **Search text** | `Space + fg` (Telescope Live Grep) |
| **File Explorer** | `Space + e` (NvimTree) |
| **Git status** | `gs` (Zsh alias) |
| **Pane navigation** | `Ctrl+h/j/k/l` (Tmux) |
| **Reload Tmux config** | `Ctrl+a r` |

---

## 🛠 **Manual Setup**
### **1⃣ Install Dependencies**
```sh
brew install neovim tmux zsh git
```
### **2⃣ Symlink Your Configs**
```sh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/nvim ~/.config/nvim
```
### **3⃣ Install Neovim Plugins**
```sh
nvim --headless "+Lazy! sync" +qall
```

---

## ⭐ **Why Use This Setup?**
- ✅ **Super lightweight** – No bloat, just essentials  
- ✅ **VSCode-like shortcuts** – Easy transition from VSCode  
- ✅ **AI-powered development** – Ready for Copilot & autocomplete  
- ✅ **Aesthetic design** – Beautiful Catppuccin theme  

---

## 📢 Want More?
- **🌟 Star this repo!** [GitHub](https://github.com/vale-c/dotfiles)
- **🐦 Follow me on X!** [@valecodes](https://x.com/valecodes)

🚀 **Spread the word!** Share this repo & help others upgrade their terminal life. 🎉


