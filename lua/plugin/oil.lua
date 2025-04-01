return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    view_options = {
      show_hidden = true,
    },
    float = {
      max_width = 0.8,
      max_height = 0.9,
    },
  },
  keys = {
    { "<leader>e", function() require("oil").open() end, desc = "Open oil" },
  },
}
