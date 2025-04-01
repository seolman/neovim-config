return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  opts = {
    ui = {
    backdrop = 100,
    width = 0.8,
    height = 0.9,
    border = "rounded",
      icons = {
        package_installed = "●",
        package_pending = "◌",
        package_uninstalled = "○"
      },
    },
  },
}
