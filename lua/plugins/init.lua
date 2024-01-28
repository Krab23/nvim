return {
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
  { "folke/neodev.nvim",
    config = function()
      require("neodev").setup({
        library = {
          plugins = {
            "nvim-dap.ui"
          },
          types = true
        },
      })
    end
  },
  lazy = false,
}
