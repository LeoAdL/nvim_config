require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
  },
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
}
require('nvim-lightbulb').setup({autocmd = {enabled = true}})
require("startup").setup({theme = "dashboard"}) -- put theme name here
require("telescope").load_extension("file_browser")
require("telescope").load_extension("ui-select")
require('telescope').load_extension('fzf')
require('telescope').load_extension('fzy_native')
require"telescope".load_extension("bibtex")
require("telescope").load_extension("lazygit")

