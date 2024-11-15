return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function()
      vim.g.codeium_enabled = true
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    show_guides = true,
    lazy = false,
    config = function()
      require("symbols-outline").setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = {
      -- indent = { char = "│", highlight = "IblChar" },
      indent = {
        char = { "│", "│", "│", "│", "│", "│" },  -- 使用字符数组定义每个级别的缩进字符
        highlight = { "IblChar1", "IblChar2", "IblChar3", "IblChar4", "IblChar5", "IblChar6" },  -- 定义每个级别的高亮组
      },
      scope = { char = "│", highlight = "IblScopeChar", enabled = false },
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "blankline")

      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)

      vim.api.nvim_set_hl(0, "IblChar1", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "IblChar2", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "IblChar3", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "IblChar4", { fg = "#56B6C2" })
      vim.api.nvim_set_hl(0, "IblChar5", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "IblChar6", { fg = "#C678DD" })

      require("ibl").setup(opts)

      dofile(vim.g.base46_cache .. "blankline")
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      vim.g.mkdp_browser = 'qutebrowser'
      vim.g.mkdp_theme = 'dark'
      vim.g.mkdp_auto_close = 1
    end,
  },

  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        -- 基本设置
        filters = { dotfiles = true },
        update_focused_file = {
          enable = true,  -- 更新文件
          update_cwd = true,  -- 更新当前目录
        },
        view = {
          width = 35,
          side = "left",
        },
        renderer = {
          root_folder_label = true,  -- 显示根目录名称
          indent_markers = { enable = true },

          -- 自定义图标设置
          icons = {
            webdev_colors = true,  -- 启用颜色

            -- 自定义文件夹图标
            glyphs = {
              folder = {
                -- arrow_closed = "", -- 关闭的文件夹箭头
                -- arrow_open = "",   -- 打开的文件夹箭头
                default = " ",      -- 默认文件夹
                -- default = " ",      -- 默认文件夹
                open = " ",         -- 打开的文件夹
                empty = " ",        -- 空文件夹
                -- empty = " ",        -- 空文件夹
                empty_open = " ",   -- 打开的空文件夹
                symlink = " ",      -- 符号链接文件夹
                symlink_open = " ", -- 打开的符号链接文件夹
              },

              -- 自定义文件图标
              default = "󰷆",  -- 默认文件
              symlink = "",  -- 符号链接
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
        },
      })
    end
  },
}
