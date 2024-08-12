return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader> ",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Find Buffers",
    },
  },
}
