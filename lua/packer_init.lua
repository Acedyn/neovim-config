-- Install packer if it is not installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
  -- My plugins here
  use {'shaunsingh/nord.nvim'}
  use {'folke/tokyonight.nvim'}
  use {'ellisonleao/gruvbox.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'lukas-reineke/indent-blankline.nvim'}
  
  use {'nvim-lualine/lualine.nvim'}
  use {'romgrk/barbar.nvim'}
  use {'kyazdani42/nvim-tree.lua'}

  use {'acedyn/comfortable-motion.vim'}

  use {'nvim-treesitter/nvim-treesitter'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim'}
  use {'ahmedkhalf/project.nvim'}
  use {'acksld/nvim-neoclip.lua'}

  use {'terrortylor/nvim-comment'}

  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}
  use {'jose-elias-alvarez/null-ls.nvim'}
  use {'folke/trouble.nvim'}

  use {'ms-jpq/coq_nvim', branch = 'coq', run = ':COQdeps'}
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {'ms-jpq/coq.thirdparty', branch = '3p'}

  use {'tpope/vim-fugitive'}
  use {'lewis6991/gitsigns.nvim'}

  use {'windwp/nvim-autopairs'}

  use {'lewis6991/satellite.nvim'}

  use {'numToStr/FTerm.nvim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end})
