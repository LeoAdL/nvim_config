require('telescope').setup {

	defaults = {
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--hidden'
		},
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				mirror = false,
				prompt_position = "top",
				preview_width = 0.4,
			},
			vertical = { mirror = false, },
			width = 0.8,
			height = 0.9,
            preview_cutoff = 80,
		},
		file_ignore_patterns = {
			"__pycache__/", "__pycache__/*",

			"build/",       "gradle/", "node_modules/", "node_modules/*", "obj/Debug",
			"smalljre_*/*", "target/", "vendor/*",      "bin/Debug",      "venv/",

			".dart_tool/", ".git/", ".github/", ".gradle/",".idea/", ".vscode/",

			"%.sqlite3", "%.ipynb", "%.lock", "%.pdb",   "%.so",
			"%.dll",     "%.class", "%.exe",  "%.cache", "%.pdf",  "%.dylib",
			"%.jar",     "%.docx",  "%.met",  "%.burp",  "%.mp4",  "%.mkv",   "%.rar",
			"%.zip",     "%.7z",    "%.tar",  "%.bz2",   "%.epub", "%.flac",  "%.tar.gz",
		},

		file_sorter = require'telescope.sorters'.get_fuzzy_file,
		generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
		file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
		grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
		qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

		prompt_prefix = "🔎 ",
		selection_caret = "➤ ",
		entry_prefix = "  ",
		winblend = 0,
		border = {},
		borderchars = {'─', '│', '─', '│', '┌', '┐', '┘', '└'}, -- │ ─ ╭ ╮ ╰ ╯
		color_devicons = true,
		use_less = true,
		set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
		path_display = {'truncate'}, -- How file paths are displayed ()

		preview = {
			msg_bg_fillchar = " ",
			treesitter = false,
		},

		live_grep = {
			preview = {
				treesitter = true
			}
		},

	},

	extensions = {

		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
		},

		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				winblend = 15,
				layout_config = {
					prompt_position = "top",
					width = 64,
					height = 15,
				},
				border = {},
				previewer = false,
				shorten_path = false,
			},
		}

	},

}
-- To get telescope-extension loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('luasnip')
require('telescope').load_extension('file_browser')
require('telescope').load_extension("ui-select")
require('nvim-lightbulb').setup({autocmd = {enabled = true}})
require("telescope").load_extension("bibtex")
require("telescope").load_extension("lazygit")
require('telescope').load_extension('find_pickers')
require("telescope").load_extension("notify")
require('lsp-toggle').setup {
  create_cmds = true, -- Whether to create user commands
  telescope = true, -- Whether to load telescope extensions
}
require('telescope').load_extension('lazygit')
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━❰ end configs ❱━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
