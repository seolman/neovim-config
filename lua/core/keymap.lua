local set = vim.keymap.set

set("i", "jk", "<esc>")

set({ "n", "v" }, "<c-r>", "u")
set({ "n", "v" }, "<c-d>", "<c-d>zz")
set({ "n", "v" }, "<c-u>", "<c-u>zz")

set({ "n", "v" }, "<C-w>Q", "<C-w>q", { desc = "Quit a window" })

set({ "n", "v"}, "gh", "0", { desc = "Go to line start" })
set({ "n", "v"}, "gl", "$", { desc = "Go to line end" })
set({ "n", "v" }, "gs", "^", { desc = "Go to first non-blank in line" })

set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
set({ "n", "x" }, "gq", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
set("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
set("n", "grd", "<cmd>lua vim.lsp.buf.declaration()<cr>")
