-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  --- Normal
  Comment = {
    sp = "NONE",
    fg = "vibrant_green",
    bg = "NONE",
    bold = true,
  },
  LineNr = {
    sp = "NONE",
    fg = "#dadada",
    bg = "NONE",
  },
  CursorLineNr = {
    sp = "NONE",
    fg = "#e57474",
    bg = "NONE",
    bold = true,
  },
  -- CursorLine = {
  --   sp = "NONE",
  --   fg = "#48dda3",
  --   bg = "NONE",
  -- },
  Visual = {
    sp = "NONE",
    fg = "#000000",
    bg = "#ffffff",
  },
  Normal = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  St_lspWarning = {
    sp = "NONE",
    fg = "#f5c53c",
    bg = "NONE",
  },

  --- nvdash
  NvdashAscii = {
    sp = "NONE",
    fg = "#48dda3",
    -- fg = "#67b0e8",
    bg = "NONE",
  },
  NvDashButtons = {
    sp = "NONE",
    fg = "#48dda3",
    bg = "NONE",
    bold = true,
  },

  --- Telescope
  TelescopeSelection = {
    sp = "NONE",
    fg = "purple",
    bg = "NONE",
  },
  TelescopeBorder = {
    sp = "NONE",
    fg = "white",
    bg = "NONE",
    bold = true,
  },
  TelescopePromptBorder = {
    sp = "NONE",
    fg = "white",
    bg = "NONE",
    bold = true,
  },
  TelescopeNormal = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  TelescopePromptTitle = {
    sp = "NONE",
    fg = "red",
    bg = "NONE",
  },
  TelescopePromptNormal = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  TelescopePromptPrefix = {
    sp = "NONE",
    fg = "red",
    bg = "NONE",
  },
  TelescopeResultsTitle = {
    sp = "NONE",
    fg = "red",
    bg = "NONE",
  },

  --- nvim-tree
  NvimTreeNormal = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  NvimTreeCursorLine = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
    italic = true,
  },
  NvimTreeWinSeparator = { -- vertical line between windows 
    sp = "NONE",
    fg = "#ffffff",
    bg = "NONE",
    bold = true,
  },
  NvimTreeGitIgnored = {
    sp = "NONE",
    fg = "blue",
    bg = "NONE",
  },

  --- Floaterm
  FloatBorder = {
    sp = "NONE",
    fg = "yellow",
    bg = "NONE",
  },
  NormalFloat = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },

  --- cmp [completion]
  CmpDoc = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  CmpDocBorder = {
    sp = "NONE",
    fg = "yellow",
    bg = "NONE",
  },
  CmpPmenu = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  CmpBorder = {
    sp = "NONE",
    fg = "yellow",
    bg = "NONE",
  },

  --- mappings sheet
  NvChSection = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },

  --- Bufferline 
  TblineFill = {
    sp = "NONE",
    fg = "NONE",
    bg = "NONE",
  },
  TbLineBufOn = {
    sp = "NONE",
    fg = "orange",
    bg = "NONE",
    italic = true,
  },
  TbLineBufOff = {
    sp = "NONE",
    fg = "#dadada",
    bg = "NONE",
  },
  TbLineBufOnClose = {
    sp = "NONE",
    fg = "red",
    bg = "NONE",
  },
  TbLineBufOffClose = {
    sp = "NONE",
    fg = "#dadada",
    bg = "NONE",
  },

  --- Mason
}


---@type HLTable
-- M.add = {
--   NvimTreeOpenedFolderName = { fg = "green", bold = true },
-- }

return M
