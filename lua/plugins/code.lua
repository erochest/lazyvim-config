return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  {
    "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    config = function()
      local dap_python = require("dap-python")
      local path = require("mason-registry").get_package("debugpy"):get_install_path()
      -- dap_python.setup(path .. "/venv/bin/python")
      dap_python.setup("./.venv/bin/python")
      dap_python.test_runner = "pytest"
      table.insert(require('dap').configurations.python, {
        type = "python",
        request = "launch",
        name = "pytest tests/unit",
        python = "./.venv/bin/python",
        module = "pytest",
        args = { "tests/unit" },
        -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
      })
    end,
  },

  { "NoahTheDuke/vim-just" },
  {
    "IndianBoy42/tree-sitter-just",
    dependencies = { "NoahTheDuke/vim-just" },
  },
}
