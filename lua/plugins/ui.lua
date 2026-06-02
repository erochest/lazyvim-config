return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavor = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
    },
  },

  { "NLKNguyen/papercolor-theme" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "PaperColor",
      -- colorscheme = "desert",
      -- colorscheme = "tokyonight-storm",
    },
  },
}
