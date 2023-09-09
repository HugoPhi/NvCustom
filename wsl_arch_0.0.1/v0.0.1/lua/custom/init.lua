-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


vim.o.scrolloff = 5
vim.o.relativenumber = true
vim.o.number = true
vim.o.autochdir = true
vim.o.cursorline = false
vim.o.whichwrap='b,s,<,>,[,]'
vim.g.indent_blankline_show_first_indent_level = true

----- Markdown Preview ------
-- vim.g.mkdp_browser = '/mnt/c/Program\\ Files\\ \\(x86\\)/Microsoft/Edge/Application/msedge.exe'

vim.g.mkdp_auto_close = false
vim.g.mkdp_browser = 'C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe'
vim.g.mkdp_filetypes = {'markdown', 'text'}
vim.g.mkdp_theme = 'light'

-----------------------------


-------- Code Runner --------
-- use <ctrl-b> compile & run current file

local CompileRunFile = function()
  vim.cmd('w')
  if vim.bo.filetype == 'c' then
    vim.cmd('!clang % -o a.out')
    if vim.fn.filereadable("./a.out") ~= 0 then
      vim.cmd('!./a.out')
      vim.cmd('!rm a.out')
    else
      vim.cmd('!echo "Compile Error"')
    end
  elseif vim.bo.filetype == 'cpp' then
    vim.cmd('!clang++ % -o a.out')
    if vim.fn.filereadable("./a.out") ~= 0 then
      vim.cmd('!./a.out')
      vim.cmd('!rm ./a.out')
    else
      vim.cmd('!echo "Compile Error"')
    end
  elseif vim.bo.filetype == 'java' then
    vim.cmd('!java %')
  elseif vim.bo.filetype == 'python' then
    vim.cmd('!python3 %')
  elseif vim.bo.filetype == 'rust' then
    vim.cmd('!cargo run')
  elseif vim.bo.filetype == 'tpy' then
    vim.cmd('!typst %')
  else
    vim.cmd('echo "Unknown File Type"')
  end
end

vim.api.nvim_create_user_command("RunFile", CompileRunFile, {})
-----------------------------


------ indent styler -------
vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = { "*.rs", "*.c", "*.cpp", "*.go", "*.java", "*.typst", "*.js", "*.py", "*.sh", "*.mysql" },
  callback = function()
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.softtabstop = 4
    vim.o.expandtab = true
  end
})

vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = { "*.lua", "*.json" },
  callback = function()
    vim.o.tabstop = 2
    vim.o.shiftwidth = 2
    vim.o.softtabstop = 2
    vim.o.expandtab = true
  end
})
-----------------------------

