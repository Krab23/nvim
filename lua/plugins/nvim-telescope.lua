return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
  },
  vim.keymap.set("n","<leader>ff",":Telescope find_files<CR>",{}),
  vim.keymap.set("n","<leader>fg",":Telescope live_grep<CR>",{}),
  vim.keymap.set("n","<leader>fb",":Telescope buffers<CR>",{}),
}
