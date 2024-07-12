-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.loop.os_uname().sysname == "Windows_NT" then
  if os.execute("command -v pwsh") == 0 then
    vim.opt.shell = "pwsh"
  else
    vim.opt.shell = "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
  end
end
