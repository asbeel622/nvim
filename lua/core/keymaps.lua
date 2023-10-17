vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i","jk","<ESC>")
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")
keymap.set("n","<leader>sv","<C-w>v")
keymap.set("n","<leader>sh","<C-w>s")
keymap.set("n","<leader>nh",":nohl<CR>")

	-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })


  ------------  语法管理  -------------
vim.keymap.set('n', '<leader>m', ':Mason<CR>')

  ------------  代码提示  -------------
vim.keymap.set('n', '<leader>c', ':CodeActionMenu<CR>')


vim.keymap.set("n", "<M-q>", "<C-\\><C-n>:bdelete! %<CR>",{noremap = true, silent = true})
vim.keymap.set('n', '<A-=>', ':split term://fish<CR>',{ noremap = true, silent = true })
vim.keymap.set('n', '<leader>=', ':vsplit term://fish<CR>',{ noremap = true, silent = true })

  ------------  joshuto ---------------
vim.keymap.set('n', 'R', ':Joshuto<CR>')



