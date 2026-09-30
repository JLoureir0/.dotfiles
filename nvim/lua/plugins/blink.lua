return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "snippet_forward" },
      ["<C-j>"] = { "select_next", "snippet_forward" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward" },
      ["<C-k>"] = { "select_prev", "snippet_backward" },
    },
  },
}
