local util = require("lspconfig.util")

return {
  {
    "IndianBoy42/tree-sitter-just",
  },

  {
    "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    -- config = function()
    --   local dap_python = require("dap-python")
    --   local path = require("mason-registry").get_package("debugpy"):get_install_path()
    --   -- dap_python.setup(path .. "/venv/bin/python")
    --   dap_python.setup("./.venv/bin/python")
    --   dap_python.test_runner = "pytest"
    --   table.insert(require('dap').configurations.python, {
    --     type = "python",
    --     request = "launch",
    --     name = "pytest tests/unit",
    --     python = "./.venv/bin/python",
    --     module = "pytest",
    --     args = { "tests/unit" },
    --     -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
    --   })
    -- end,
  },

  { "NoahTheDuke/vim-just" },
  { "folke/neoconf.nvim" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ocamllsp = {
          mason = false,
        },
        -- omnisharp = {
        --   -- copied from https://github.com/neovim/nvim-lspconfig/blob/master/lsp/omnisharp.lua#L20
        --   -- so I can have it not look for csproj files.
        -- },
      },
    },
  },

  -- {
  --   "GustavEikaas/easy-dotnet.nvim",
  --   dependencies = {
  --     "nsidorenco/neotest-vstest",
  --     "nvim-lua/plenary.nvim",
  --     "folke/snacks.nvim",
  --     {
  --       "folke/which-key.nvim",
  --       optional = true,
  --       opts = {
  --         spec = {
  --           { "<leader>N", group = "Easy .NET" },
  --           { "<leader>Nd", group = "Database/EF" },
  --           { "<leader>Np", group = "Packages" },
  --         },
  --       },
  --     },
  --   },
  --   ft = { "cs", "fs", "sln", "csproj" },
  --   opts = {
  --     -- lsp = {
  --     --   -- TODO: move this to project config
  --     --   -- roslynator_enabled = false,
  --     -- },
  --     picker = "snacks",
  --   },
  --   keys = {
  --     { "<leader>Nb", "<cmd>Dotnet build<cr>", desc = "Build the solution" },
  --     { "<leader>Nr", "<cmd>Dotnet run<cr>", desc = "Run the solution" },
  --     { "<leader>Nx", "<cmd>Dotnet build quickfix<cr>", desc = "Build the solution and add errors to quickfix" },
  --     { "<leader>Nv", "<cmd>Dotnet project view<cr>", desc = "View project info" },
  --     { "<leader>Nt", "<cmd>Dotnet test<cr>", desc = "Run tests" },
  --     { "<leader>NT", "<cmd>Dotnet testrunner<cr>", desc = "Show the test runner" },
  --     { "<leader>NS", "<cmd>Dotnet solution select<cr>", desc = "Select the active solution" },
  --     { "<leader>Nda", "<cmd>Dotnet ef migrations add<cr>", desc = "Add a migration" },
  --     { "<leader>Ndu", "<cmd>Dotnet ef database update<cr>", desc = "Update the database" },
  --     { "<leader>Ndl", "<cmd>Dotnet ef migrations list<cr>", desc = "List migrations" },
  --     { "<leader>ND", "<cmd>Dotnet<cr>", desc = "Show actions" },
  --     { "<leader>Npa", "<cmd>Dotnet add package<cr>", desc = "Add a package" },
  --   },
  -- },

  -- {
  --   "nsidorenco/neotest-vstest",
  -- },

  -- Add neotest and the neotest-haskell adapter
  {
    "nvim-neotest/neotest",
    dependencies = {
      "mrcjkb/neotest-haskell",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = function(_, opts)
      local hs = require("neotest-haskell")
      table.insert(opts.adapters, {
        require("neotest-haskell")({
          -- Default: Use stack if possible and then try cabal
          build_tools = { "stack", "cabal" },
          -- Default: Check for tasty first and then try hspec
          frameworks = { "tasty", "hspec", "sydtest" },
        }),
      })
    end,
  },
  {
    "nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "haskell" })
      end
    end,
  },
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = {
  --     "nvim-neotest/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "mrcjkb/neotest-haskell",
  --   },
  -- },
  --
  -- {
  --   "nvim-neotest/neotest",
  --   optional = true,
  --   opts = {
  --     adapters = {
  --       []
  --   require("neotest-haskell")({
  --     -- Specify the build tool if necessary (usually detected automatically)
  --     build_tool = "stack",
  --   }),
  --       -- ["nsidorenco/neotest-vstest"] = {},
  --     },
  --   },
  -- },

  {
    "syaiful6/koka.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
