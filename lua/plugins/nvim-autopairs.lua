return {
  "windwp/nvim-autopairs",
  lazy = true,
  event = "InsertEnter",
  requires = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nvim-autopairs").setup({
      disable_filetype = { "TelescopePrompt" },
    })
    require("nvim-autopairs.completion.cmp").setup({
      map_cr = true,
      map_complete = true,
      auto_select = true,
      insert = false,
      map_char = {
        all = "(",
        tex = "{",
      },
    })
  end,
}
