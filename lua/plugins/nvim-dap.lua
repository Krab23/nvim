return {
  "mfussenegger/nvim-dap",
  dependencies ={
    "jay-babu/mason-nvim-dap.nvim",
    event = "BufReadPre",
  },
  requires = {
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
    "nvim-telescope/telescope-dap.nvim",
  },
  lazy = true,
  vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>"),
  vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>"),
  vim.keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>"),
  vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>"),
  vim.keymap.set("n", "<F9>", ":lua require'dap'.toggle_breakpoint()<CR>"),
  vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>"),
  vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"),
  vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>"),
  vim.keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>"),
  config = function()
    require("dap").adapters.lldb = {
      type = "executable",
      command = "/usr/bin/lldb-vscode",
      name = "lldb",
    }
    require("dap").configurations.cpp = {
      {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
        runInTerminal = false,
      }
    }
  end,
}
