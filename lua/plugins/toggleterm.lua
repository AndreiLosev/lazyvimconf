return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      shade_terminals = false,
      -- add --login so ~/.zprofile is loaded
      -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
      shell = "zsh --login",
      direction = "float",
    })
  end,
  keys = {
    { [[<C-\>]] },
    -- {
    --   "<C-\\>",
    --   "<cmd>ToggleTerm direction=float<cr>",
    --   desc = "Open a horizontal terminal at the Desktop directory",
    -- },
  },
}
