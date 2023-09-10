---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["JK"] = { ":q<CR>", "Quit" },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-b>"] = { ":RunFile<CR>", "compile & run current file" },
    ["U"] = { "<C-r>", "undo" },
    ["<leader>m"] = { ":noh<CR>", "no highlight" },
    ["<C-j>"] = { "<C-w>j", "move down" },
    ["<C-k>"] = { "<C-w>k", "move up" },
    ["<C-l>"] = { "<C-w>l", "move right" },
    ["<C-h>"] = { "<C-w>h", "move left" },
    ["<A-m>"] = { ":MarkdownPreviewToggle<CR>", "markdown preview" },
    ["<C-a>"] = { "gg0vG$", "select all" },
    [">"] = { "v0>gv", "shift right" },
    ["<"] = { "v0<gv", "shift left" },
    ["<F2>"] = { ":browse oldfiles<CR>", "browse old files" },
    ["<leader>in"] = {":e ~/.config/nvim/lua/custom/init.lua<CR>", "edit init.lua"},
    ["<leader>mp"] = {":e ~/.config/nvim/lua/custom/mappings.lua<CR>", "edit mappings.lua"},
  },

  v = {
    ["q"] = { "<Esc>", "escape" },
    [">"] = { ">gv", "shift right" },
    ["<"] = { "<gv", "shift left" },
    ["\'"] = { "hdi\'<Esc>pla\'", "wrap selected text with \'\'" },
    ["\""] = { "hdi\"<Esc>pla\"", "unwrap selected text with \"\"" },
    ["["] = { "hdi[<Esc>pla]", "wrap selected text with []" },
    ["("] = { "hdi(<Esc>pla)", "wrap selected text with ()" },
    -- ["{"] = { "da{}<Esc>Ph%i<CR><Esc>%", "wrap selected text with {}" },
    ["{"] = { "da{}<Esc>Ph%", "wrap selected text with {}" },
  },

  i = {
    ["jk"] = { "<Esc>", "Quit insert mode" },
    ["<C-b>"] = { "<ESC>:RunFile<CR>", "compile & run current file" },
  },

  t = {
    ["C-j"] = { "<C-\\><C-N><C-w>j", "move down" },
    ["C-k"] = { "<C-\\><C-N><C-w>k", "move up" },
    ["C-l"] = { "<C-\\><C-N><C-w>l", "move right" },
    ["C-h"] = { "<C-\\><C-N><C-w>h", "move left" },
    ["<leader>q"] = { "<C-\\><C-N>:q<CR>", "quit" },
  }
}

return M
