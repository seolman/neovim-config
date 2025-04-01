return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    cmdline = {
      enabled = true,
      completion = { menu = { auto_show = true } },
    },
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind" }
          },
        },
      },
      documentation = { auto_show = true },
      ghost_text = { enabled = true },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    signature = { enabled = true },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    keymap = {
      preset = "none",
      ["<C-x>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "cancel" },
      ["<C-y>"] = { "select_and_accept" },
      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
    },
  },
  opts_extend = { "sources.default" }
}
