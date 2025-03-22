return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", "󰈔  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "󰋚  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("c", "󰒓  Configuration", ":e $MYVIMRC <CR>"),
      dashboard.button("q", "󰗼  Quit", ":qa<CR>"),
    }

    -- Simple footer
    dashboard.section.footer.val = "Neovim " .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch

    -- Simple layout
    dashboard.config.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    -- Send config to alpha
    alpha.setup(dashboard.config)

    -- Auto-open alpha when no files are specified
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 and vim.fn.line2byte("$") == -1 then
          require("alpha").start()
        end
      end,
    })
  end,
}