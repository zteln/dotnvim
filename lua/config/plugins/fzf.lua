vim.pack.add({ 'https://github.com/ibhagwan/fzf-lua' }, { confirm = false })

require('fzf-lua').setup({})

vim.keymap.set('n', '<S-Tab>', function()
  require('fzf-lua').files({})
end, { noremap = true })

vim.keymap.set('n', '<Tab>', function()
  require('fzf-lua').buffers()
end, { noremap = true })

vim.keymap.set('n', '<C-g>', function()
  require('fzf-lua').grep({ search = '' })
end, { noremap = true })
