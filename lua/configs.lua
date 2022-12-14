-- Load the colorscheme
-- require("nord").set()
require("nord").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	transparent = true, -- Enable this to disable setting the background color
})

vim.cmd([[colorscheme nord]])

require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
require("configs/nvim_cmp")

require("configs/null_ls_vim")
require("configs/nvim_autopairs")
require("configs/telescope")
require("configs/alpha")
require("configs/treesitter")
require("configs/vimtex")
require("configs/nvim_tree")
require("configs/indent_blankline")
require("configs/lualine")
require("configs/notify")
require("configs/iron")
require("configs/trouble")
require("configs/barbar")
-- load snippets from path/of/your/nvim/config/my-cool-snippets
require("leap").add_default_mappings()
require("neoscroll").setup()
require("jabs").setup({})
require("configs/gitsigns")
require("hlargs").setup()
require("configs/gotopreview")
require("configs/TS_Context")
require("flit").setup()
require("configs/vim_illuminate")
