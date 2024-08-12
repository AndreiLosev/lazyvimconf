-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "90"

vim.api.nvim_create_user_command("MyTabs", function(opts)
  local val = tonumber(opts.fargs[1])
  if val == nil then
    val = 2
  end

  vim.opt.tabstop = val
  vim.opt.shiftwidth = val
  vim.opt.softtabstop = val
end, { nargs = "*" })
