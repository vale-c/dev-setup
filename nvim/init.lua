-- Set leader key to Space
vim.g.mapleader = " "

-- Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load Lazy.nvim and Plugins
require("lazy").setup({
    "catppuccin/nvim", -- Theme
    "nvim-telescope/telescope.nvim", -- Fuzzy finder
    "nvim-tree/nvim-tree.lua", -- File explorer
    "neovim/nvim-lspconfig", -- LSP support
    "hrsh7th/nvim-cmp", -- Autocompletion
    "hrsh7th/cmp-nvim-lsp", -- LSP completion
    "nvim-lua/plenary.nvim", -- Required dependency for many plugins
})

-- Apply Catppuccin Theme
vim.cmd.colorscheme "catppuccin"

-- Neovim Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true

-- Keybindings
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })

-- Configure nvim-tree
require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        width = 35,
        side = "left",
    },
})

-- LSP Setup
local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({})

-- Autocompletion Setup
local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" },
    },
})

