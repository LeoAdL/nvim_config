-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
    use {'shaunsingh/nord.nvim'}
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use {'kevinhwang91/nvim-bqf'}
use "nvim-lua/plenary.nvim"
use 'ggandor/leap.nvim'
use 'nvim-tree/nvim-web-devicons'

use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}

use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
})
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
  end
}
use 'j-hui/fidget.nvim'

use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
}
use {
  "ray-x/lsp_signature.nvim"}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
use 'nvim-treesitter/playground'
use 'nvim-treesitter/nvim-treesitter-context'
use 'JoosepAlviste/nvim-ts-context-commentstring'


use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use {'hrsh7th/nvim-cmp'}
use 'saadparwaiz1/cmp_luasnip'

use {
	"windwp/nvim-autopairs"}

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { "nvim-telescope/telescope-file-browser.nvim" }
use {'nvim-telescope/telescope-ui-select.nvim' }
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
use 'norcalli/nvim-colorizer.lua'

use {"lukas-reineke/indent-blankline.nvim"}

use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true}}
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
 use {"ellisonleao/glow.nvim"}
  use {"yamatsum/nvim-cursorline"}
  use {
  'jghauser/mkdir.nvim'
  }
  use {'matbme/JABS.nvim'}
  use {
  "utilyre/barbecue.nvim",
  requires = {
    "neovim/nvim-lspconfig",
    "smiteshp/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional
  },
  config = function()
    require("barbecue").setup()
  end,
}
  use {'hkupty/iron.nvim'}
  use {'lervag/vimtex'}
  use {"rcarriga/nvim-notify"}
	use {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'kyazdani42/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup()
  end
  }
  -- Packer
use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use { "catppuccin/nvim", as = "catppuccin" }
use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
}
use { "nvim-telescope/telescope-bibtex.nvim",
  requires = {
    {'nvim-telescope/telescope.nvim'},
  },
  config = function ()
    require"telescope".load_extension("bibtex")
  end,
}
use {"nvim-telescope/telescope-fzy-native.nvim"}
use 'karb94/neoscroll.nvim'
use "rafamadriz/friendly-snippets"
use {"kdheepak/lazygit.nvim"}
use "EdenEast/nightfox.nvim" -- Packer
use {"rmehri01/onenord.nvim"}
use {"goerz/jupytext.vim"}
use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
use {
  'sudormrfbin/cheatsheet.nvim',

  requires = {
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  }
}
use({"L3MON4D3/LuaSnip"})
use({
  "princejoogie/dir-telescope.nvim",
  -- telescope.nvim is a required dependency
  requires = {"nvim-telescope/telescope.nvim"},
  config = function()
    require("dir-telescope").setup({
      hidden = true,
      respect_gitignore = true,
    })
  end,
})
use { 'adoyle-h/lsp-toggle.nvim' }
use {'keyvchan/telescope-find-pickers.nvim'}
use {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip",  -- if you wish to lazy-load
}
use {'onsails/lspkind.nvim'}
end)

