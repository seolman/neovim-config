local a = 10
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    styles = {
      my_select = {
        backdrop = false,
        relative = "cursor",
        min_width = 20,
        min_height = 1,
        box = "vertical",
      }
    },
    picker = {
      enabled = true,
      prompt = " ",
      layouts = {
        default = {
          layout = {
            box = "horizontal",
            backdrop = false,
            width = 0.8,
            min_width = 120,
            height = 0.9,
            {
              box = "vertical",
              border = "rounded",
              title = "",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
            },
            { win = "preview", title = "", border = "rounded", width = 0.5 },
          },
        },
        -- TODO
        select = {},
      },
      matcher = {
        frecency = true,
      },
      ui_select = true,
      icons = {
        files = { enabled = false },
        diagnostics = {
          Error = "●",
          Warn  = "●",
          Hint  = "●",
          Info  = "●",
        },
      },
      win = { input = { keys = { ["<c-t>"] = { "toggle_preview", mode = { "n", "i" } } } } }
    },
    -- TODO
    input = {
      enabled = false,
    },
    statuscolumn = { enabled = true },
    dashboard = { enabled = false },
    notifier = { enabled = false },
    image = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    words = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    bigfile = { enabled = false },
  },
  keys = {
    { "<leader><space>", function() require("snacks").picker() end, desc = "Pickers" },
    { "<leader>?", function() require("snacks").picker.help() end, desc = "Help" },
    { "<leader>/", function() require("snacks").picker.grep() end, desc = "Grep" },
    { "<leader>f", function() require("snacks").picker.files() end, desc = "Files" },
    { "<leader>b", function() require("snacks").picker.buffers() end, desc = "Buffers" },
    { "<leader>d", function() require("snacks").picker.diagnostics_buffer() end, desc = "Diagnostics" },
    { "<leader>D", function() require("snacks").picker.diagnostics() end, desc = "Workspace diagnostics" },
    { "<leader>j", function() require("snacks").picker.jumps() end, desc = "Jumps" },
    { "<leader>'", function() require("snacks").picker.resume() end, desc = "Resume" },
    { "<C-w>q", function() require("snacks").bufdelete.delete() end, desc = "Quit a buffer" },
    { "<C-w>o", function() require("snacks").bufdelete.other() end, desc = "Close all other windows" },
  },
}
