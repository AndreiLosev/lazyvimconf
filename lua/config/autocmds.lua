-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local group = vim.api.nvim_create_augroup("myGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.js", "*.jsx", "*.json", "*.css" },
  group = "myGroup",
  callback = function(params)
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end,
})
