return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gdscript = {},
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              diagnosticMode = "workspace",
            },
          },
        },
      },
    },
    inlay_hints = {
      enabled = false,
    },
  },
}
