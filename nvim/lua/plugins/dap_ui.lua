return {
  "rcarriga/nvim-dap-ui",
  opts = {
    layouts = {
      {
        elements = {
          "scopes",
          "breakpoints",
          "stacks",
          "watches",
        },
        size = 0.2,
        position = "right",
      },
      {
        elements = {
          { id = "console", size = 0.75 },
        },
        size = 0.50,
        position = "bottom",
      },
      {
        elements = {
          "repl",
        },
        size = 2,
        position = "top",
      },
    },
  },
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close({})
    end
  end,
}
