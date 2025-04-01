vim.diagnostic.config({
  virtual_lines = { current_line = true },
  signs = false,
})


vim.lsp.enable({
  "luals",
  "clangd",
  "bashls",
  "tsserver",
  "marksman",
})
