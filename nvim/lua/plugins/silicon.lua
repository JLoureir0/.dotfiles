return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("silicon").setup({
      -- Configuration here, or leave empty to use defaults
      font = "CaskaydiaCove Nerd Font Mono-Bold",
      theme = "Monokai Extended",
      background = "#ffffff",
      to_clipboard = true,
      window_title = function()
        return vim.fn.expand("%:t")
      end,
    })
  end,
  keys = {
    { "<leader>cs", ":Silicon<CR>", mode = { "v" }, desc = "Code Snapshot" },
  },
}
