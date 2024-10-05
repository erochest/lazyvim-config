-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.opt.shell = "nu"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellredir = "2>&1 | save --raw %s"
  vim.opt.shellpipe = "2>&1 | save --raw %s"
  vim.opt.shellquote = "'"
  vim.opt.shellxquote = ""
  -- if os.execute("command -v pwsh") == 0 then
  --   vim.opt.shell = "pwsh"
  -- else
  --   vim.opt.shell = "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
  -- end
end
