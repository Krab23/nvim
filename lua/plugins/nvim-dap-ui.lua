return {
  "rcarriga/nvim-dap-ui",
  lazy = false,
  requires = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("dapui").setup({
    })
  end,
}
