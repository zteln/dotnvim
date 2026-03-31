-- jk to escape  
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

-- window switching
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- movement
vim.keymap.set('n', 'gl', '$', { noremap = true })
vim.keymap.set('n', 'gh', '^', { noremap = true })

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })

-- open stored session
vim.keymap.set('n', '<leader>s', function()
  local current_session_name = require('config.utils').get_current_session_name()
  vim.cmd('source ' .. current_session_name)
end, { noremap = true })
