--Tabs/Indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
--Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false

--Appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.scrolloff = 10
vim.opt.completeopt =  "menuone,noinsert,noselect"

--Behavior
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.mouse:append("a")
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
