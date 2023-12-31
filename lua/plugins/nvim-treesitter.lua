local config = function()
  require ("nvim-treesitter.configs").setup({
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "css",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "lua",
      "make",
      "markdown",
      "python",
      "rust",
      "sql",
      "typescript",
      "yaml",
      "zig",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_syntax_highlighting = true,
    },
  })
end

return { 
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = config,
}
