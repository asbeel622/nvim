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




vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>")
vim.keymap.set("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>")
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr
vim.keymap.set("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>")
vim.keymap.set('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>')
vim.keymap.set("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>")
vim.keymap.set("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>")
vim.keymap.set("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>")
vim.keymap.set("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>")
vim.keymap.set("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>")
vim.keymap.set("n", "K", "<cmd>lua require'dapui'.eval()<cr>")
