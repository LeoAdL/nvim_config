local null_ls = require("null-ls")
local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- apply whatever logic you want (in this example, we'll only use null-ls)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				lsp_formatting(bufnr)
			end,
		})
	end
end

null_ls.setup({
	on_attach = on_attach,
	sources = {
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.latexindent,
		null_ls.builtins.diagnostics.chktex,
		null_ls.builtins.diagnostics.flake8,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.diagnostics.pylint,
		null_ls.builtins.completion.luasnip,
		null_ls.builtins.diagnostics.luacheck,
		null_ls.builtins.formatting.stylua,
	},
})
