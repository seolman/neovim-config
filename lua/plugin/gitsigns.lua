return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>gs", function() require("gitsigns").stage_hunk() end, desc = "Stage hunk" },
    { "<leader>gr", function() require("gitsigns").reset_hunk() end, desc = "Reset hunk" },
    { "<leader>gp", function() require("gitsigns").preview_hunk() end, desc = "Preview hunk" },
    { "]g", function() require("gitsigns").nav_hunk("next") end, desc = "Next hunk" },
    { "[g", function() require("gitsigns").nav_hunk("prev") end, desc = "Previous hunk" },
  },
}
