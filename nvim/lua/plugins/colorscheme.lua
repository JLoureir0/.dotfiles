return {
  -- add monokai-pro
  { "loctvl842/monokai-pro.nvim" },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
