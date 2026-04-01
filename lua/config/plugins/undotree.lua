vim.cmd [[packadd nvim.undotree]]

vim.keymap.set('n', '<leader>u', '<CMD>Undotree<CR>', { noremap = true })
