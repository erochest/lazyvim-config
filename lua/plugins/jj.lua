return {
  -- {
  --   "jceb/jiejie.nvim",
  --   dependencies = {
  --     {
  --       "folke/which-key.nvim",
  --       optional = true,
  --       opts = {
  --         spec = {
  --           { "<leader>j", group = "Jujutsu" },
  --         },
  --       },
  --     },
  --   },
  --   keys = {
  --     { "<leader>jl", "<cmd>JJ<cr>", desc = "Show the log" },
  --     { "<leader>jo", "<cmd>J oplog<cr>", desc = "Show the operation log" },
  --     { "<leader>jq", "<cmd>JcLog<cr>", desc = "Quickfix log" },
  --   },
  -- },

  "evanphx/jjsigns.nvim",

  {
    "julienvincent/hunk.nvim",
    cmd = { "DiffEditor" },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-mini/mini.icons",
    },
    config = function()
      require("hunk").setup()
    end,
  },

  { "rafikdraoui/jj-diffconflicts" },

  { "avm99963/vim-jjdescription" },

  {
    "willothy/flatten.nvim",
    config = true,
    -- or pass configuration with
    -- opts = {  }
    -- Ensure that it runs first to minimize delay when opening file from terminal
    lazy = false,
    priority = 1001,
  },

  {
    "mistweaverco/jujutsu.nvim",
    lazy = true,
    dependencies = { "sindrets/diffview.nvim", "ibhagwan/fzf-lua" },
    keys = {
      {
        "<leader>gg",
        function()
          require("jujutsu").open()
        end,
        desc = "Jujutsu",
      },
    },
    opts = {}, -- passed to setup()
  },
}
