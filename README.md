# 🚀 The Ultimate Dotfiles Setup for Neovim + Tmux + Zsh

[![GitHub stars](https://img.shields.io/github/stars/vale-c/dotfiles?style=social)](https://github.com/vale-c/dotfiles)

🔥 **A beginner-friendly yet powerful dotfiles setup** for:

- ✅ **Neovim Users** – A VSCode-like experience with **Lazy.nvim, Telescope, Treesitter, and GitHub Copilot**.
- ✅ **Tmux Lovers** – Optimized **pane navigation and smooth workflow**.
- ✅ **Zsh Users** – Smart **aliases, Oh My Zsh, and syntax highlighting**.

🎨 **Beautiful UI | 🚀 Fast & Lightweight | 🤖 AI-Ready (GitHub Copilot)**

---

## 📦 **What's Included?**

| Component                | Features                                                                                          |
| ------------------------ | ------------------------------------------------------------------------------------------------- |
| **Neovim**               | 🚀 Kickstart.nvim-based config, `Lazy.nvim`, `Telescope`, `Treesitter`, `NvimTree`, `Copilot.vim` |
| **Tmux**                 | 📟 Easy navigation (`Ctrl + h/l/j/k`), `Ctrl+a` as prefix, smooth scrolling                       |
| **Zsh**                  | 🐚 Smart aliases, Oh My Zsh, syntax highlighting                                                  |
| **Theme**                | 🎨 **Catppuccin** for a modern, beautiful interface                                               |
| **LSP & AutoCompletion** | ⚡ Full LSP support, `nvim-cmp` for VSCode-like autocompletion                                    |

---

## **🚀 Installation**

### **📌 What This Will Do:**

This setup will:

- ✅ Install **Neovim, Tmux, and Zsh** (if not already installed).
- ✅ **Backup** your existing config files (so nothing gets lost).
- ✅ Symlink your dotfiles **for easy version control**.
- ✅ Install all plugins via **Lazy.nvim**, including **GitHub Copilot**.

### **📥 One-Command Installation (Recommended for macOS & Linux)**

```sh
git clone https://github.com/vale-c/dotfiles.git ~/.dotfiles && bash ~/.dotfiles/scripts/install.sh
```

### **🛠 What the Install Script Does:**

- Installs **Neovim, Tmux, and Zsh** (if missing).
- Backs up existing configurations before making changes.
- Creates **symlinks** so all configurations are loaded correctly.
- Installs **all required plugins** via Lazy.nvim.
- Installs **GitHub Copilot for AI-powered coding**.
- Sets up a **smooth and productive development environment**.

✅ **After running the install script, restart your terminal and you're ready to go!**

---

## 🎯 **Keybindings Cheat Sheet**

| Action                 | Shortcut                         |
| ---------------------- | -------------------------------- |
| **Find files**         | `Space + ff` (Telescope)         |
| **Search text**        | `Space + fg` (Live Grep)         |
| **File Explorer**      | `Space + e` (NvimTree)           |
| **Git status**         | `gs` (Zsh alias)                 |
| **Pane navigation**    | `Ctrl + h/j/k/l` (Tmux & Neovim) |
| **Reload Tmux config** | `Ctrl+a r`                       |
| **Quick save**         | `Space + w`                      |
| **Quit Neovim**        | `Space + q`                      |
| **Reload Plugins**     | `:Lazy reload`                   |
| **Enable Copilot**     | `:Copilot setup`                 |

---

## 🔥 **Neovim Features & How to Use Them**

### 🏗 **LSP & Autocompletion**

- Uses **`ts_ls`** (TypeScript), **`pyright`** (Python), and **`lua_ls`** (Lua) for **code intelligence**.
- **Autocompletion** via `nvim-cmp`, `cmp-nvim-lsp`.
- **GitHub Copilot integration** for AI-powered code suggestions.
- **Keybindings for LSP:**
  - `gd` → **Go to definition**
  - `gr` → **Find references**
  - `K` → **Hover documentation**
  - `Space + rn` → **Rename variable**

### 📂 **File Navigation**

- `NvimTree` (File explorer) → `Space + e`
- `Telescope` (Find files) → `Space + ff`
- `Telescope` (Live Grep) → `Space + fg`

### 📜 **Smooth Scrolling**

- `Ctrl + d` → **Scroll down & center cursor**
- `Ctrl + u` → **Scroll up & center cursor**

### 🏃 **Window Navigation**

- `Ctrl + h/l/j/k` → **Move between Neovim splits**

### ✨ **Quick Commands**

- `Space + w` → **Save file**
- `Space + q` → **Quit Neovim**
- `:Lazy reload` → **Reload plugins instantly**

---

## 🛠 **Troubleshooting & Customization**

### **📌 If You Experience Any Issues:**

- Ensure you have **all dependencies installed** (`neovim, tmux, zsh, git`).
- If Neovim isn't loading properly, try:
  ```sh
  nvim --headless "+Lazy! sync" +qall
  ```
- If your shell looks incorrect, restart your terminal or run:
  ```sh
  exec zsh
  ```

### **📌 How to Customize Your Setup**

- Modify **aliases and Zsh configuration** in `~/.dotfiles/zsh/.zshrc`.
- Modify **Neovim keybindings and plugins** in `~/.dotfiles/nvim/init.lua`.
- Modify **Tmux configuration** in `~/.dotfiles/tmux/.tmux.conf`.

---

## ⭐ **Why Use This Setup?**

This setup is built to make your terminal experience **smoother, faster, and more enjoyable**.

- 🏎️ **Lightweight & efficient** – Everything is optimized to be **blazing fast**.
- 🔥 **Beginner-friendly yet powerful** – If you're coming from VSCode, you'll feel right at home with **intuitive shortcuts & navigation**.
- 🛠️ **Highly customizable** – Everything is modular, so you can tweak it to fit your workflow.
- 🤖 **AI-powered coding with GitHub Copilot** – Get intelligent suggestions as you code.
- 📦 **Lazy.nvim for plugin management** – Keeps Neovim lightweight while ensuring all essential plugins are included.

If you're looking for **a clean, smart, and easy-to-use terminal setup**, this is it. 🚀

---

## 📣 Want More?

- 🌟 **Star this repo!** [GitHub](https://github.com/vale-c/dotfiles)
- 🐦 **Follow me on X!** [@valecodes](https://x.com/valecodes)
