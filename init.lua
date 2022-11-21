vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.autochdir          = true
vim.opt.cursorline= true
vim.opt.cursorlineopt= "number"
require('configs')                  -- plugin independent configs
require('mappings')                 -- plugin independent mappings
require('packer_nvim')
