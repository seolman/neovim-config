return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},
  keys = {
    { "<leader>q", function() require("persistence").load() end, desc = "Load session" },
    { "<leader>Q", function() require("persistence").select() end, desc = "Select session" },
  }
}
