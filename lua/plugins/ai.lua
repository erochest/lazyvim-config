vim.cmd([[cab cc CodeCompanion]])

return {
  {
    "olimorris/codecompanion.nvim",
    keys = {
      { "<leader>Ci", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion inline" },
      { "<leader>CC", "<cmd>CodeCompanionChat Toggle<cr>", desc = "CodeCompanion toggle chat" },
      { "<leader>CA", "<cmd>CodeCompanionChat Add<cr>", mode = { "v" }, desc = "CodeCompanion add context" },
      { "<leader>Ca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion actions" },
    },
    opts = {
      adapters = {
        acp = {
          claude_code = function()
            return require("codecompanion.adapters").extend("claude_code", {})
          end,
        },
        http = {
          fuelix = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              url = "https://api.fuelix.ai/v1/chat/completions",
              env = {
                url = "https://api.fuelix.ai",
                api_key = "cmd:op --account my.1password.com read 'op://Private/tsadcgixxpof4yapxdrue2nzzi/credential' --no-newline",
              },
            })
          end,
        },
      },
      -- extensions = {
      -- mcphub = {
      --   callback = "mcphub.extensions.codecompanion",
      --   opts = {
      --     make_vars = true,
      --     make_slash_commands = true,
      --     show_result_in_chat = true,
      --   },
      -- },
      -- },
      opts = {
        log_level = "DEBUG",
      },
      strategies = {
        chat = {
          adapter = "claude_code",
          -- adapter = "fuelix",
          model = "claude-sonnet-4-5",
        },
        inline = {
          adapter = "fuelix",
          model = "gemini-2.5-pro",
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
      {
        "folke/which-key.nvim",
        optional = true,
        opts = {
          spec = {
            { "<leader>C", group = "Code Companion" },
          },
        },
      },
    },
  },
}
