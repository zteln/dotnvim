vim.pack.add({
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/sindrets/diffview.nvim',
  'https://github.com/lewis6991/gitsigns.nvim'
}, { confirm = false })

require('gitsigns').setup({})
require('neogit').setup({})

vim.keymap.set('n', '<leader>gs', function()
  require('gitsigns').stage_hunk()
end, { noremap = true })

vim.keymap.set('n', '<leader>gr', function()
  require('gitsigns').reset_hunk()
end, { noremap = true })

vim.keymap.set('v', '<leader>gs', function()
  require('gitsigns').stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, { noremap = true })

vim.keymap.set('v', '<leader>gr', function()
  require('gitsigns').reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, { noremap = true })

vim.keymap.set('n', '<leader>gg', function()
  require('neogit').open()
end, { noremap = true })
