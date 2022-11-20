
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━❰ Mappings ❱━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- ───────────────────────────────────────────────── --
local on_attach = function(client, bufnr)

	-- lsp support on winbar
	local import_navic, navic = pcall(require, "nvim-navic")
	if import_navic then
		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end
	end

	local function buf_set_keymap(...) api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) api.nvim_buf_set_option(bufnr, ...) end

	---------------------
	-- Avoiding LSP formatting conflicts
	-- ref: https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts
	-- 2nd red: https://github.com/neovim/nvim-lspconfig/issues/1891#issuecomment-1157964108
	-- neovim 0.8
	client.server_capabilities.documentFormattingProvider = false
	client.server_capabilities.documentRangeFormattingProvider = false
	--------------------------

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	local options = {noremap = true, silent = true}

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	-- ───────────────────────────────────────────────── --
	buf_set_keymap('n', '<Space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', options)
	buf_set_keymap('n', '<Space>q', '<cmd>lua vim.diagnostic.set_loclist({})<CR>', options)
	buf_set_keymap('n', '<Space>n', '<cmd>lua vim.diagnostic.goto_next()<CR>', options)
	buf_set_keymap('n', '<Space>b', '<cmd>lua vim.diagnostic.goto_prev()<CR>', options)

	buf_set_keymap('n', '<Space>d', '<Cmd>lua vim.lsp.buf.definition()<CR>', options)
	buf_set_keymap('n', '<Space>D', '<Cmd>lua vim.lsp.buf.declaration()<CR>', options)
	buf_set_keymap('n', '<Space>T', '<cmd>lua vim.lsp.buf.type_definition()<CR>', options)
	buf_set_keymap('n', '<Space>i', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
	buf_set_keymap('n', '<Space>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
	buf_set_keymap('n', '<Space>h', '<Cmd>lua vim.lsp.buf.hover()<CR>', options)
	buf_set_keymap('n', 'K',        '<Cmd>lua vim.lsp.buf.hover()<CR>', options)
	-- using 'filipdutescu/renamer.nvim' for rename
	-- buf_set_keymap('n', '<space>rn',	'<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '<Space>r', '<cmd>Telescope lsp_references<CR>', options)
	buf_set_keymap("n", "<Space>f", '<cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>', options)

	buf_set_keymap('n', '<Space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>',       options)
	buf_set_keymap('x', '<Space>a', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', options)

	-- buf_set_keymap('n', '<leader>wa',   '<cmd>lua vim.lsp.buf.add_workleader_folder()<CR>',          opts)
	-- buf_set_keymap('n', '<leader>wr',   '<cmd>lua vim.lsp.buf.remove_workleader_folder()<CR>',       opts)
	-- buf_set_keymap('n', '<leader>wl',   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workleader_folders()))<CR>', opts)
end
local keymap = vim.api.nvim_set_keymap
keymap('n', '<Space>f', '<ESC>:lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>', {noremap = true, silent = true})


-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━❰ end Mappings ❱━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
