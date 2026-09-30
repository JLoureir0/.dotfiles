return {
  "folke/snacks.nvim",
  opts = {
    -- lazy.nvim
    lazygit = {
      -- your lazygit configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      configure = true,
      theme = {
        [241] = { fg = "Special" },
        activeBorderColor = { fg = "MatchParen", bold = true },
        cherryPickedCommitBgColor = { fg = "Identifier" },
        cherryPickedCommitFgColor = { fg = "Function" },
        defaultFgColor = { fg = "Normal" },
        inactiveBorderColor = { fg = "FloatBorder" },
        optionsTextColor = { fg = "Function" },
        searchingActiveBorderColor = { fg = "MatchParen", bold = true },
        selectedLineBgColor = { bg = "MiniStatuslineModeReplace" }, -- set to `default` to have no background colour
        unstagedChangesColor = { fg = "DiagnosticError" },
      },
    },
    dashboard = {
      -- sections = {
      --   { section = "header" },
      --   { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
      --   { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
      --   { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
      --   { section = "startup" },
      -- },
      preset = {
        header = [[
⣀⣀⣤⣤⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣤⣤⣄⣀⡀
⣴⣿⣿⡿⣿⢿⣟⣿⣻⣟⡿⣟⣿⣟⡿⣟⣿⣻⣟⣿⣻⢿⣻⡿⣿⢿⣷⣆
⢘⣿⢯⣷⡿⡿⡿⢿⢿⣷⣯⡿⣽⣞⣷⣻⢯⣷⣻⣾⡿⡿⢿⢿⢿⢯⣟⣞⡮⡀
⢸⢞⠟⠃⣉⢉⠉⠉⠓⠫⢿⣿⣷⢷⣻⣞⣿⣾⡟⠽⠚⠊⠉⠉⠉⠙⠻⣞⢵⠂
⢜⢯⣺⢿⣻⣿⣿⣷⣔⡄ ⠈⠛⣿⣿⡾⠋⠁  ⣄⣶⣾⣿⡿⣿⡳⡌⡗⡅
⢽⢱⢳⢹⡪⡞⠮⠯⢯⡻⡬⡐⢨⢿⣿⣿⢀⠐⡥⣻⡻⠯⡳⢳⢹⢜⢜⢜⢎⠆
⠠⣻⢌⠘⠌⡂⠈⠁⠉⠁⠘⠑⢧⣕⣿⣿⣿⢤⡪⠚⠂⠈⠁⠁⠁⠂⡑⠡⡈⢮⠅
⠠⣳⣿⣿⣽⣭⣶⣶⣶⣶⣶⣺⣟⣾⣻⣿⣯⢯⢿⣳⣶⣶⣶⣖⣶⣮⣭⣷⣽⣗⠍
⢀⢻⡿⡿⣟⣿⣻⣽⣟⣿⢯⣟⣞⡷⣿⣿⣯⢿⢽⢯⣿⣻⣟⣿⣻⣟⣿⣻⢿⣿⢀
⡑⡏⠯⡯⡳⡯⣗⢯⢟⡽⣗⣯⣟⣿⣿⣾⣫⢿⣽⠾⡽⣺⢳⡫⡞⡗⡝⢕⠕
⢂⡎⠅⡃⢇⠇⠇⣃⣧⡺⡻⡳⡫⣿⡿⣟⠞⠽⠯⢧⣅⣃⠣⠱⡑⡑⠨⢐⢌⠂
⠐⠼⣦⢀ ⣶⣿⢿⣿⣧⣄⡌⠂⠢⠩⠂⠑⣁⣅⣾⢿⣟⣷⠦  ⡤⡇⡪
⠨⢻⣧⡅⡈⠛⠿⠿⠿⠛⠁ ⢀⡀  ⠘⠻⠿⠿⠯⠓⠁⢠⣱⡿⢑
⠈⢌⢿⣷⡐⠤⣀⣀⣂⣀⢀⢀⡓⠝⡂⡀⢀⢀⢀⣀⣀⠤⢊⣼⡟⡡⡁
⠈⢢⠚⣿⣄⠈⠉⠛⠛⠟⠿⠿⠟⠿⠻⠻⠛⠛⠉ ⣠⠾⢑⠰⠈
⠑⢌⠿⣦⡡⣱⣸⣸⣆   ⣰⣕⢔⢔⠡⣼⠞⡡⠁⠁
⠑⢝⢷⣕⡷⣿⡿  ⠠⣿⣯⣯⡳⡽⡋⠌
⠙⢮⣿⣽⣯  ⢨⣿⣿⡷⡫⠃
⠘⠙⠝⠂ ⢘⠋⠃⠁
]],
      },
    },
  },
}
