--" keymaps.vim

-- map the leader key
local options = { noremap = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Show code actions at cursor
vim.keymap.set("n", "<Leader>a", "<CMD>lua vim.lsp.buf.code_action()<CR>", options)

-- Yank whole file
vim.keymap.set("n", "<Leader>c", ':norm ggVG"+y<CR>', options)


-- Mapping for spell check
vim.keymap.set("n", "<F6>", "<CMD>setlocal spell! spelllang=en<CR>", options)

-- Disable Help for F1
vim.keymap.set("n", "<F1>", "<NOP>", options)

vim.keymap.set("n", "<leader><leader>ss", "<CMD> lua require('tusqasi.snippets')<CR>", options)
vim.keymap.set("n", "<leader><leader>sk", "<CMD>luafile ~/.config/nvim/plugin/keymaps.lua<CR>", options)
vim.keymap.set("n", "<leader><leader>x", "<CMD>source %<CR>", options)
vim.keymap.set("n", "<leader><leader>i", "<CMD>lua require('functions').packer_sync()<CR>", options)

vim.keymap.set("n", "<C-/>", "<Nop>", options)

vim.keymap.set("n", "<leader>d", "<CMD>ToggleDiag<CR>", options)

-- quickfix list keys
vim.keymap.set("n", "<leader>j", "<CMD>cnext<CR>>", options)
vim.keymap.set("n", "<leader>k", "<CMD>cprev<CR>>", options)
