-- 🛠 Set leader key early
vim.g.mapleader = " "

-- 🔹 Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- 🔥 Lazy.nvim Plugin Manager Setup
require("lazy").setup({
    -- 🌙 Theme
    "catppuccin/nvim",

    -- 🔎 Navigation
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    "nvim-tree/nvim-tree.lua",

    -- 🧠 Syntax Highlighting & LSP
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp", -- Autocompletion
    "hrsh7th/cmp-nvim-lsp", -- LSP completion
})

-- 🎨 Apply Catppuccin Theme
vim.cmd.colorscheme "catppuccin"

-- ✅ Improved Neovim Defaults
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus" -- System clipboard
vim.opt.undofile = true -- Persistent undo
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.mouse = "a"

-- 🏗 LSP Setup (Following Kickstart.nvim)
local lspconfig = require("lspconfig")
lspconfig.ts_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({})

-- ⚡ Autocompletion
local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
    }),
})

-- 🔎 Configure Telescope (Fuzzy Finder)
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<C-u>"] = false, -- Remove clearing
                ["<C-d>"] = false,
            },
        },
    },
})

-- 📂 Configure NvimTree (File Explorer)
require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        width = 35,
        side = "left",
    },
})

-- 🎯 Keybindings (Following Kickstart.nvim)
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 🌲 File Explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- 🔎 Fuzzy Finder
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- 🏃 Window Navigation (Kickstart.nvim Style)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- 📜 Better Scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- 📝 Quick Save
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- 🌙 Auto-Install Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "typescript", "javascript", "python" },
    highlight = { enable = true },
})

