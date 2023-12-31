return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      filters = {dotfiles = true},
    })
  end,
  vim.keymap.set("n", "<leader>m",":NvimTreeFocus<CR>", {noremap = true, silent = true}),
  vim.keymap.set("n", "<leader>f",":NvimTreeToggle<CR>", {noremap = true, silent = true}),
}
