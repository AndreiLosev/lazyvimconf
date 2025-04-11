return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          schema = {
            model = {
              default = "deepseek-r1",
            },
            num_ctx = {
              default = 20000,
            },
          },
        })
      end,
    },
    deepseek = function()
      return require("codecompanion.adapters").extend("deepseek", {
        env = {
          api_key = "sk-9966398addce45d09048c9e34204394a",
        },
      })
    end,
    strategies = {
      chat = {
        adapter = "deepseek",
      },
      inline = {
        adapter = "deepseek",
      },
      cmd = {
        adapter = "deepseek",
      },
    },
  },
}
