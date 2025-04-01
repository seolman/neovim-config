return {
  "nvim-lualine/lualine.nvim",
  event = "UIEnter",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      globalstatus = false,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = {
        "filename",
        "branch",
        "diff",
        {
          "diagnostics",
          symbols = {
            error = "● ",
            warn  = "● ",
            info  = "● ",
            hint  = "● ",
          },
        },
      },
      lualine_x = { "lsp_status", "selectioncount", "location", "progress" },
      lualine_y = {},
      lualine_z = {}
    },
    inactive_sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = {
        "filename",
        "branch",
        "diff",
        {
          "diagnostics",
          symbols = {
            error = "● ",
            warn  = "● ",
            info  = "● ",
            hint  = "● ",
          },
        },
      },
      lualine_x = { "selectioncount", "location", "progress" },
      lualine_y = {},
      lualine_z = {}
    },
  },
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
}
