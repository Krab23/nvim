return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "efm","lua_ls","clangd" },
      automatic_installation = true,
    })
  end,
  lazy = false,
  event = "BufReadPre",
  dependencies = {"williamboman/mason.nvim"},
}
