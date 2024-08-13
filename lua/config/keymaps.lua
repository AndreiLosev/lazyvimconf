-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>a", "[%%", { desc = "my castom" })
vim.keymap.set("n", "<leader>af", function()
  require("telescope").extensions.flutter.commands()
end, { desc = "flutter commands" })
vim.keymap.set("n", "<leader>as", function()
  SetPhpFileStart()
end, { desc = "Start php class" })
vim.keymap.set("n", "<leader>an", function()
  GetPhpNameSpace()
end, { desc = "Insert namesapace" })
vim.keymap.set("n", "<leader>ac", function()
  GetPhpClassName()
end, { desc = "Inser class" })
vim.keymap.set("n", "<leader>aj", "<cmd> :%!jq  <cr>", { desc = "json formated" })

vim.keymap.set("n", "<leader>df", function()
  require("dapui").float_element("breakpoints")
end, { desc = "Breakpoints window" })

vim.keymap.set("n", "<leader>dS", function()
  require("dapui").float_element("stacks")
end, { desc = "Stacks window" })
