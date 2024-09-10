return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    require("flutter-tools").setup({
      --       debugger = {
      --         enabled = true,
      --         run_via_dap = true,
      --         register_configurations = function(_)
      --           local dap = require("dap")
      --           dap.adapters.dart = {
      --             name = "flutter",
      --             type = "executable",
      --             command = "flutter",
      --             args = { "debug_adapter" },
      --           }
      --           -- dap.set_log_level("TRACE")
      --           dap.configurations.dart = {}
      --           require("dap.ext.vscode").load_launchjs()
      --         end,
      --       },
      --       settings = {
      --         enableSnippets = true,
      --       },
      --       dev_log = {
      --         enabled = false,
      --       },
    })
  end,
  ft = "dart",
}
