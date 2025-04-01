return {
  {
    "nuvic/flexoki-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("flexoki").setup({
        extend_background_behind_borders = false,
        highlight_groups = {
          NormalFloat = { link = "Normal" },
          StatusLine = { link = "Normal" },
          StatusLineNC = { link = "Normal" },
          Pmenu = { link = "Normal" },
          PmenuExtra = { link = "Pmenu" },
          PmenuKind = { link = "Float" },
          FloatTitle = { link = "Float" },
        },
      })
      require("flexoki").colorscheme()
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
