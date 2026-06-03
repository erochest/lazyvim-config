return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" },
  },
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- use latest release, remove to use latest commit
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      legacy_commands = false, -- this will be removed in 4.0.0
      -- TODO: how to have this local to the machine
      workspaces = {
        {
          name = "lab-notes",
          path = "~/w/lab-notes",
        },
        {
          name = "writing",
          path = "~/Dropbox/n/writing/",
        },
        {
          name = "clutter",
          path = "~/Dropbox/n/clutter/",
        },
        {
          name = "Scrivenings",
          path = "~/Dropbox/n/Scrivenings/",
        },
      },
      picker = {
        name = "snacks.picker", -- use snacks picker
        -- name = "telescope.nvim",   -- or telescope
        -- name = "fzf-lua", -- or fzf-lua
        -- name = "mini.pick",   -- or mini.pick
      },
    },
    keys = {
      -- TODO: better prefix than o (clash with overseer)
      { "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Obsidian Dailies Picker" },
      {
        "<leader>on",
        function()
          vim.ui.input({ prompt = "Note title: " }, function(input)
            if input == nil or input == "" then
              return
            end
            -- TODO: Obsidian new TITLE
          end)
        end,
        desc = "Obsidian Dailies Picker",
      },
      { "<leader>oq", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian Quick Switch" },
      { "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Obsidian Today" },
      -- TODO: Obsidian open QUERY
      -- TODO: Obsidian new_from_template TITLE TEMPLATE
      -- TODO: Obsidian search QUERY
      -- TODO: Obsidian tags TAG..
      -- TODO: Obsidian unique_note TITLE
      -- TODO: Obsidian workspace NAME
      -- TODO: keys from https://github.com/obsidian-nvim/obsidian.nvim#note-commands
    },
  },
}
