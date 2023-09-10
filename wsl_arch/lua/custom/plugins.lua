local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- nvim-gpt 
  {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  -- remember.nvim : restore last editing position 
  { 'vladdoster/remember.nvim', config = [[ require('remember') ]], event = 'VimEnter' },

  -- markdown preview 
  -- if this does not works, try following method to solve it:
  -- 1. get in to folder of this plugin:
  -- 
  -- > cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
  -- 
  -- 2. run this command:
  -- 
  -- > bash ./install.sh
  -- 
  -- [ if time out, get into ./install.sh and change the proxy of the url -> ghproxy.com ]
  -- 3.(optional) get into neovim and run markdown-preview, if the error message is:
  -- 
  -- | [markdown-preview.nvim]: Can not open browser by using cmd.exe command
  --
  -- please try this command in your terminal: 
  -- 
  -- > export PATH=$PATH:/mnt/c/Windows/System32/
  {
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  },

  -- tabular  
  {
    'godlygeek/tabular',
    event = 'VimEnter',
  },

  -- Codeium 
  {
    'Exafunction/codeium.vim',
    event = 'VimEnter',
    config = function ()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-]>', function () return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-K>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-J>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },


  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
