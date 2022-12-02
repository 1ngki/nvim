local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'
  use 'nvim-lua/plenary.nvim'

  -- use 'Mofiqul/dracula.nvim'
  use '/Users/1ngki/.local/share/nvim/site/pack/packer/start/dracula_pro'
  -- use ({
  --   'https://gitlab.com/__tpb/monokai-pro.nvim',
  --   as = 'monokai-pro.nvim'
  -- })
  -- use ({
  --   'lalitmee/cobalt2.nvim',
  --   requires = 'tjdevries/colorbuddy.nvim'
  -- })
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use ({
    'akinsho/nvim-bufferline.lua',
    tag = 'v2.*'
  })
  use ({
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig',
    config = function()
      require('nvim-navic').setup({
        highlight = true,
      })
    end,
  })

  use ({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  })
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'
  use ({
    'm-demare/hlargs.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('hlargs').setup({ color = '#ffb86c' })
    end,
  })
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'

  use({
    'gbprod/yanky.nvim',
    config = function()
      require('yanky').setup()
    end,
  })
  use ({
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  })

  use 'karb94/neoscroll.nvim'
  use 'famiu/bufdelete.nvim'

  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'folke/lsp-colors.nvim'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use ({
    'phaazon/hop.nvim',
    branch = 'v2'
  })

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use ({
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  })
  use 'nvim-telescope/telescope-hop.nvim'
  use 'benfowler/telescope-luasnip.nvim'
  use 'kyazdani42/nvim-tree.lua'

  use ({
    'kevinhwang91/nvim-bqf',
    ft = 'qf'
  })
  use 'nvim-pack/nvim-spectre'
  use 'kevinhwang91/nvim-hlslens'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-nvim-lua'
  use ({
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  })
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'dinhhuy258/git.nvim'
  use  ({
    'TimUntersberger/neogit',
    requires = { 'nvim-lua/plenary.nvim' },
    cmd = { 'Neogit' }
  })
  use 'kdheepak/lazygit.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'

  use 'MunifTanjim/prettier.nvim'

  use ({
    'akinsho/toggleterm.nvim',
    tag = '*'
  })

  use 'folke/zen-mode.nvim'

  use ({
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup()
    end,
  })
  use ({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  })

  -- use ({
  --   'mrjones2014/dash.nvim',
  --   run = 'make install',
  -- })

  use ({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'alexghergh/nvim-tmux-navigation'

  use 'wakatime/vim-wakatime'
end)