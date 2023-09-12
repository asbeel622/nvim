local opt=vim.opt

-- 行号
opt.number= true
opt.relativenumber= true
-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.swf = false
-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
-- vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme catppuccin-macchiato]]
vim.g.code_action_menu_window_border = 'single'
vim.g.code_action_menu_show_details = true
vim.g.code_action_menu_show_diff = true
vim.g.code_action_menu_show_action_kind = true

