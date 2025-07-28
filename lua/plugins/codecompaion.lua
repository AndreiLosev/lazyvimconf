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
              default = "qwen3:14b",
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
          api_key = "sk-1728ffa76f32483596d5b59b846fd223",
        },
      })
    end,
    mistral = function()
      return require("codecompanion.adapters").extend("mistral", {
        env = {
          api_key = "wdkoIAqlEsl7tG5mTvcy2cnHhZZC2j8V",
        },
      })
    end,
    strategies = {
      chat = {
        adapter = "mistral",
      },
      inline = {
        adapter = "mistral",
      },
      cmd = {
        adapter = "mistral",
      },
    },
  },
}
