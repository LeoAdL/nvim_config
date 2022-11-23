
vim.cmd[[colorscheme nord]]
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


require("mason").setup()
require("mason-lspconfig").setup()
require("configs/lsp_signature")
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = {"./snippets"}})
require("configs/nvim_cmp")

require("configs/null_ls_vim")
require("configs/nvim_autopairs")
require("configs/telescope")
require('configs/alpha')
require("configs/treesitter")
require("configs/hslens")
require("configs/vimtex")
require("configs/nvim_tree")
require("configs/indent_blankline")
require("configs/lualine")
require("configs/notify")
require("configs/iron")
require("configs/magma")
require("configs/trouble")
require("configs/barbar")
-- load snippets from path/of/your/nvim/config/my-cool-snippets
require('leap').add_default_mappings()
require('neoscroll').setup()
require"fidget".setup{}
require 'jabs'.setup {}
require('gitsigns').setup()
