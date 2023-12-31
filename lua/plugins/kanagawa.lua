return {
	"rebelot/kanagawa.nvim",
  lazy = false,
	priority = 8888,
	config = function()
    require("kanagawa").setup ({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold= true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = {wave = {},lotus = {}, dragon = {}, all = {} },
      },
      overrides = function (colors)
        return {}
      end,
      theme = "wave",
      background = {
        dark = "dragon",
        light = "lotus",
      },
    })
    vim.cmd("colorscheme kanagawa-wave")
	end
}