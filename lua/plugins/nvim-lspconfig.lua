return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup({})
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {globals = {"vim"},},
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME0/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          }
        }
      }
    })
    lspconfig.pyright.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.tsserver.setup({})
    vim.keymap.set("n","K", vim.lsp.buf.hover,{})
    vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
    vim.keymap.set({"n","v"},"<leader>ca",vim.lsp.buf.code_action,{})
  end
}
