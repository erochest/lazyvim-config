vim.cmd([[cab cc CodeCompanion]])

return {
  -- {
  --   "olimorris/codecompanion.nvim",
  --   keys = {
  --     { "<leader>Ci", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion inline" },
  --     { "<leader>CC", "<cmd>CodeCompanionChat Toggle<cr>", desc = "CodeCompanion toggle chat" },
  --     { "<leader>CA", "<cmd>CodeCompanionChat Add<cr>", mode = { "v" }, desc = "CodeCompanion add context" },
  --     { "<leader>Ca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion actions" },
  --   },
  --   opts = {
  --     adapters = {
  --       acp = {
  --         claude_code = function()
  --           return require("codecompanion.adapters").extend("claude_code", {
  --             commands = {
  --               default = {
  --                 "/Users/ericrochester/Library/pnpm/bin/claude-agent-acp",
  --               },
  --             },
  --             env = {
  --               -- CLAUDE_CODE_OAUTH_TOKEN = "cmd:op --account my.1password.com read op://Private/aafro6dwlvclx4y2s6jfvd2tue/credential --no-newline",
  --               CLAUDE_CODE_OAUTH_TOKEN = "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",
  --             },
  --           })
  --         end,
  --       },
  --       http = {
  --         fuelix = function()
  --           return require("codecompanion.adapters").extend("openai_compatible", {
  --             url = "https://api.fuelix.ai/v1/chat/completions",
  --             env = {
  --               url = "https://api.fuelix.ai",
  --               api_key = "cmd:op --account my.1password.com read 'op://Private/tsadcgixxpof4yapxdrue2nzzi/credential' --no-newline",
  --             },
  --           })
  --         end,
  --       },
  --     },
  --     -- extensions = {
  --     -- mcphub = {
  --     --   callback = "mcphub.extensions.codecompanion",
  --     --   opts = {
  --     --     make_vars = true,
  --     --     make_slash_commands = true,
  --     --     show_result_in_chat = true,
  --     --   },
  --     -- },
  --     -- },
  --     opts = {
  --       log_level = "DEBUG",
  --     },
  --     strategies = {
  --       chat = {
  --         adapter = "claude_code",
  --         -- adapter = "fuelix",
  --         model = "claude-sonnet-4-5",
  --       },
  --       inline = {
  --         adapter = "fuelix",
  --         model = "gemini-2.5-pro",
  --       },
  --     },
  --   },
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "ravitemer/mcphub.nvim",
  --     {
  --       "folke/which-key.nvim",
  --       optional = true,
  --       opts = {
  --         spec = {
  --           { "<leader>C", group = "Code Companion" },
  --         },
  --       },
  --     },
  --   },
  -- },

  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },

  {
    "zgs225/pi2.nvim",

    -- render-markdown.nvim powers the default chat-history renderer
    -- (render.engine = "render-markdown"); img-clip.nvim is optional and
    -- required only for `:PiPasteImage` (clipboard image paste).
    dependencies = {
      "MeanderingProgrammer/render-markdown.nvim",
      "HakonHarnes/img-clip.nvim",
    },

    -- if you're fine with defaults:
    config = true,
  },
}
