return {
  "rcarriga/nvim-dap-ui",
  config = function(plugin, opts)
    require("dapui").setup({
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.65 },
            { id = "watches", size = 0.35 },
          },
          size = 0.33,
          position = "right",
        },
        {
          elements = {},
          size = 0.27,
          position = "bottom",
        },
      },
      floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
    })
  end,
}
