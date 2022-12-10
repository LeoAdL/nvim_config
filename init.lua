---@diagnostic disable: 112, undefined-global: 112
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
if vim.g.vscode then
	-- VSCode extension
	require("leap").add_default_mappings()
	require("flit").setup({})
else
	vim.opt.termguicolors = true
	vim.opt.autochdir = true
	vim.opt.cursorline = true
	vim.opt.cursorlineopt = "number"
	vim.opt.relativenumber = true
	vim.opt.signcolumn = "yes"
	vim.opt.smartindent = true
	vim.g.vimtex_compiler_progname = "nvr"
	require("impatient")
	require("configs") -- plugin independent configs
	require("mappings") -- plugin independent mappings
	require("packer_nvim")
	vim.g.tex_flavor = "latex"
end
