return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = {
    auto_install = true,
    ensure_installed = { "lua" },
    sync_install = true,
    highlight = {
      additional_vim_regex_highlighting = false,
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<TAB>",
        node_incremental = "<TAB>",
        node_decremental = "<S-TAB>",
        scope_incremental = false
      },
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = { query = "@call.outer", desc = "call" },
          ["if"] = { query = "@call.inner", desc = "inner call" },
          ["ac"] = { query = "@class.outer", desc = "class" },
          ["ic"] = { query = "@class.inner", desc = "inner class" },
          ["am"] = { query = "@function.outer", desc = "function" },
          ["im"] = { query = "@function.inner", desc = "inner function" },
          ["al"] = { query = "@loop.outer", desc = "loop" },
          ["il"] = { query = "@loop.inner", desc = "inner loop" },
          ["aa"] = { query = "@parameter.outer", desc = "parameter" },
          ["ia"] = { query = "@parameter.inner", desc = "inner parameter" },
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]f"] = { query = "@call.outer", desc = "Next call start" },
          ["]c"] = { query = "@class.outer", desc = "Next class start" },
          ["]m"] = { query = "@function.outer", desc = "Next function start" },
          ["]i"] = { query = "@loop.outer", desc = "Next loop start" },
          ["]a"] = { query = "@parameter.inner", desc = "Next parameter start" },
        },
        goto_next_end = {
          ["]F"] = { query = "@call.outer", desc = "Next call end" },
          ["]C"] = { query = "@class.outer", desc = "Next class end" },
          ["]M"] = { query = "@function.outer", desc = "Next function end" },
          ["]I"] = { query = "@loop.outer", desc = "Next loop end" },
          ["]A"] = { query = "@parameter.inner", desc = "Next parameter end" },
        },
        goto_previous_start = {
          ["[f"] = { query = "@call.outer", desc = "Previous call start" },
          ["[c"] = { query = "@class.outer", desc = "Previous class start" },
          ["[m"] = { query = "@function.outer", desc = "Previous function start" },
          ["[i"] = { query = "@loop.outer", desc = "Previous loop start" },
          -- ["[a"] = { query = "@parameter.inner", desc = "Previous parameter start" },
        },
        goto_previous_end = {
          ["[F"] = { query = "@call.outer", desc = "Previous call end" },
          ["[C"] = { query = "@class.outer", desc = "Previous class end" },
          ["[M"] = { query = "@function.outer", desc = "Previous function end" },
          ["[I"] = { query = "@loop.outer", desc = "Previous loop end" },
          ["[A"] = { query = "@parameter.inner", desc = "Previous parameter end" },
        },
      },
    },

  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
  end,
}
