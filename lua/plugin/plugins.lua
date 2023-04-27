vim.cmd [[packadd packer.nvim]]
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'	--packer管理插件
   use {
    "williamboman/mason.nvim",    --LSP &管理语法
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jay-babu/mason-nvim-dap.nvim",
}
  use { "catppuccin/nvim", as = "catppuccin" }  --环境主题
   use 'folke/tokyonight.nvim'	--主题
   use {
    'nvim-lualine/lualine.nvim',  -- 状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- 状态栏图标
  }
	use {
    'nvim-tree/nvim-tree.lua',  -- 文档树
    requires = {
      'nvim-tree/nvim-web-devicons', -- 文档树图标
    }
  }
  use({
    "aserowy/tmux.nvim",--tmux窗口
    config = function() return require("tmux").setup() end
})
  use "christoomey/vim-tmux-navigator" -- 用ctl-hjkl来定位窗口
  use "nvim-treesitter/nvim-treesitter" -- 语法高亮
  use "p00f/nvim-ts-rainbow" -- 配合treesitter，不同括号颜色区分

    -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径

    -- diagnostics code
  use 'mfussenegger/nvim-dap'
  use "Pocco81/DAPInstall.nvim"
use {
  'lewis6991/gitsigns.nvim',  --git标识
  config = function()
    require('gitsigns').setup()
  end
}

   use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  require('packer').use({
  'weilbith/nvim-code-action-menu', --代码介绍菜单
  cmd = 'CodeActionMenu',
})
  use "lukas-reineke/indent-blankline.nvim" --间距线
    use { 'CRAG666/betterTerm.nvim' } -- code_runner
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }  --代码运行

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)
